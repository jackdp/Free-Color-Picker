unit FCP.FormCheckUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.ShellApi, Winapi.WinInet,

  System.SysUtils, System.Variants, System.Classes, System.Actions, System.IniFiles,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ActnList, Vcl.ExtCtrls,

  JPL.Dialogs, JPL.Win.System, JPL.Win.FileSystem, JPL.Files, JPL.Strings,

  JPP.PngButton, JPP.SimplePanel,

  FCP.Types, FCP.AppStrings;

const
  WI_READY = 10;
  WI_OK = 0;
  WI_INTERNET_OPEN_ERROR = 1;
  WI_INTERNET_OPEN_URL_ERROR = 2;
  WI_ABORTED = 3;
  WI_SETFILEPOS_ERROR = 4;
  UA_MSIE7 = 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)';

type

  THttpStatusProc = function(BytesRead, BytesReadAll: DWORD): Boolean; stdcall;

  TStatusColors = record
    Background: TColor;
    Font: TColor;
  end;

  TFormCheckUpdate = class(TForm)
    pnBottom: TJppSimplePanel;
    btnClose: TJppPngButton;
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    lblUserVersionDesc: TLabel;
    lblUserVersion: TLabel;
    lblLatestVersionDesc: TLabel;
    lblLatestVersion: TLabel;
    actCheckNow: TAction;
    actGoToDownloadPage: TAction;
    btnCheckNow: TJppPngButton;
    btnGoToDownloadPage: TJppPngButton;
    me: TMemo;
    tmCheckUpdate: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure actEscExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure SetLang;
    procedure actCheckNowExecute(Sender: TObject);
    procedure actGoToDownloadPageExecute(Sender: TObject);
    procedure SetStatusColors(Colors: TStatusColors);
    procedure tmCheckUpdateTimer(Sender: TObject);
    procedure ClearStatus;
  private
    StatusNone: TStatusColors;
    StatusFailed: TStatusColors;
    StatusNoUpdates: TStatusColors;
    StatusUpdateAvailable: TStatusColors;
  end;

var
  FormCheckUpdate: TFormCheckUpdate;


function GetHtmlPageText(const URL: string): string;


implementation


uses
  FCP.FormMain;

{$R *.dfm}



{$region '             GetHtmlPageText             '}
function GetHtmlPageText(const URL: string): string;
var
  hOpen, hOpenUrl: HINTERNET;
  buffer: array[0..1023] of AnsiChar; // 10 KB
  ms: TMemoryStream;
  dwX: DWORD;
  dwFlags: DWORD;
  Headers, s: string;
//  me: TMemo;
begin;
//  me := FormCheckUpdate.me;

  Result := '';

  hOpen := InternetOpen(
    UA_MSIE7,
    INTERNET_OPEN_TYPE_PRECONFIG,
    '', '', 0
    );

//  me.Lines.Add('InternetOpen OK');

  if hOpen = nil then Exit;

  dwFlags := INTERNET_FLAG_RELOAD or INTERNET_FLAG_HYPERLINK;
  Headers := 'Accept: */*';
  hOpenUrl := InternetOpenURL(
    hOpen, PChar(URL), PChar(Headers), Length(Headers),
    dwFlags, 0
  );

//  me.Lines.Add('InternetOpenURL OK');

  if hOpenUrl = nil then
  begin
    InternetCloseHandle(hOpen);
    Exit;
  end;

  dwX := 0;

  ms := TMemoryStream.Create;
  try

    FillChar(buffer, SizeOf(buffer), 0);
    if InternetReadFile(hOpenUrl, @buffer, SizeOf(buffer), dwX) then
    begin
      ms.Write(buffer, dwX);
      s := string(buffer);
      Result := s;
    end;

  finally
    if Assigned(ms) then try ms.Free; except end;
  end;


  InternetCloseHandle(hOpenUrl);
  InternetCloseHandle(hOpen);

end;
{$endregion GetHtmlPageText}


procedure TFormCheckUpdate.FormCreate(Sender: TObject);
begin
  Caption := 'Check for updates';
  PrepareModuleStrings_CheckUpdate;
  PrepareControls;
  SetLang;
end;

{$region '                   PrepareControls                     '}
procedure TFormCheckUpdate.PrepareControls;
begin
  btnCheckNow.Appearance.Assign(FormMain.btnT1.Appearance);
  btnGoToDownloadPage.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);

  lblUserVersion.Caption := AppInfo.VersionStr;
  lblLatestVersion.Caption := '';
  me.Lines.Clear;
  me.Font.Name := AP.MonospaceFont.Name;
  me.Font.Size := AP.MonospaceFont.Size;
  actGoToDownloadPage.Visible := False;

  StatusNone.Background := clWindow; // clBtnFace; // FormCheckUpdate.Color;
  StatusNone.Font := clWindowText;

  StatusFailed.Background := $00DADAFA;
  StatusFailed.Font := $000B0B4F;

  StatusNoUpdates.Background := StatusNone.Background;
  StatusNoUpdates.Font := StatusNone.Font;

  StatusUpdateAvailable.Background := $00E3F0E6;
  StatusUpdateAvailable.Font := $001A2F1D;

  SetStatusColors(StatusNone);
end;
{$endregion PrepareControls}


procedure TFormCheckUpdate.SetLang;
begin
  Caption := lsCheckUpdate.GetString('Caption', Caption);
end;

{$region '                      CheckNow                          '}
procedure TFormCheckUpdate.actCheckNowExecute(Sender: TObject);
var
  Ini: TMemIniFile;
  s, fName, Section: string;
  sl: TStringList;
begin
  me.Lines.Clear;
  SetStatusColors(StatusNone);
  actCheckNow.Enabled := False;
  actGoToDownloadPage.Visible := False;
  lblLatestVersion.Caption := '';
  Section := 'VersionInfo';
  Randomize;
  fName := rbs(TempDir) + '\ver_fcp_' + GetRandomHexStr(4) + '.ini';
  Ini := TMemIniFile.Create(fName);
  sl := TStringList.Create;
  try

    me.Text := lsCheckUpdate.GetString('CheckingUpdates');
    s := GetHtmlPageText(AppInfo.VerIniUrl);
    if s = '' then
    begin
      me.Text := lsCheckUpdate.GetString('ConnectionFailed');
      SetStatusColors(StatusFailed);
      Exit;
    end;

    sl.Text := s;
    me.Lines.Add(sl.Text);

    Ini.SetStrings(sl);

    if not Ini.SectionExists(Section) then
    begin
      me.Text := lsCheckUpdate.GetString('CannotCheck');
      SetStatusColors(StatusFailed);
      Exit;
    end;

    s := Ini.ReadString(Section, 'LastVersion', '');
    if s = '' then
    begin
      me.Text := lsCheckUpdate.GetString('CannotCheck');
      SetStatusColors(StatusFailed);
      Exit;
    end;

    lblLatestVersion.Caption := s;

    // brak nowej wersji
    if s = AppInfo.VersionStr then
    begin
      SetStatusColors(StatusNoUpdates);
      me.Text := lsCheckUpdate.GetString('NoUpdates');
      lblLatestVersion.Caption := s;
    end

    // dostêpna jest nowa wersja
    else if s > AppInfo.VersionStr then
    begin
      SetStatusColors(StatusUpdateAvailable);
      me.Text := lsCheckUpdate.GetString('UpdatesAvailable');
      me.Lines.Add('');
      me.Lines.Add('LatestVersion=' + s);
      me.Lines.Add('ReleaseDate=' + Ini.ReadString(Section, 'ReleaseDate', ''));
      lblLatestVersion.Caption := s;
      actGoToDownloadPage.Visible := True;
    end;


  finally
    sl.Free;
    Ini.Free;
    actCheckNow.Enabled := True;
    if FileExists(fName) then DelFile(fName);
  end;
end;
{$endregion CheckNow}


procedure TFormCheckUpdate.SetStatusColors(Colors: TStatusColors);
begin
  me.Font.Color := Colors.Font;
  me.Color := Colors.Background;
end;

procedure TFormCheckUpdate.ClearStatus;
begin
  SetStatusColors(StatusNone);
  me.Lines.Clear;
  actGoToDownloadPage.Visible := False;
end;

procedure TFormCheckUpdate.tmCheckUpdateTimer(Sender: TObject);
begin
  tmCheckUpdate.Enabled := False;
  actCheckNow.Execute;
end;

procedure TFormCheckUpdate.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormCheckUpdate.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormCheckUpdate.actGoToDownloadPageExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar(AppInfo.DownloadPage), '', '', SW_SHOW);
end;



end.
