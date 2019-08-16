unit FCP.FormAbout;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ActnList,

  // JPLib
  JPL.Strings,

  // JPPack
  JPP.SimplePanel,

  // other
  DzHTMLText2,

  // FCP
  FCP.Types, FCP.AppStrings;

type
  TFormAbout = class(TForm)
    htt: TDzHTMLText2;
    Actions: TActionList;
    actEsc: TAction;
    sbox: TScrollBox;
    pnBottom: TJppSimplePanel;
    lblLinkTarget: TLabel;
    procedure actEscExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure httLinkEnter(Sender: TObject; LinkID: Integer; LinkData: TDHLinkData);
    procedure httLinkLeave(Sender: TObject; LinkID: Integer; LinkData: TDHLinkData);
    procedure FixHtmText;
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure SetLang;
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}



procedure TFormAbout.FormCreate(Sender: TObject);
begin
  PrepareModuleStrings_About;
  FixHtmText;
  sbox.Align := alClient;
  sbox.BorderStyle := bsNone;
  htt.Align := alTop;
  lblLinkTarget.Caption := '';
  lblLinkTarget.Align := alClient;
  Constraints.MinHeight := 360;
  Constraints.MinWidth := 360;
  {$IFDEF DCC}Width := Width + 1;{$ENDIF} // force recreate htt bitmap
end;

procedure TFormAbout.FixHtmText;
var
  s: string;
begin
  s := htt.Text;

  s := ReplaceAll(s, '%APP_NAME%', AppInfo.Name);
  s := ReplaceAll(s, '%APP_VERSION%', AppInfo.VersionStr + '  ' + AppInfo.BitsStr + '-bit');
  s := ReplaceAll(s, '%APP_DATE%', AppInfo.DateStr);
  s := ReplaceAll(s, '%APP_URL%', AppInfo.HomePage);
  s := ReplaceAll(s, '%APP_LICENSE%', AppInfo.LicenseName);
  s := ReplaceAll(s, '%GITHUB_URL%', AppInfo.GitHubUrl);
  s := ReplaceAll(s, '%DONATION%', lsMain.GetComponentProperty('actGoTo_Donation', 'Caption'));

  htt.Text := s;
end;

procedure TFormAbout.httLinkEnter(Sender: TObject; LinkID: Integer; LinkData: TDHLinkData);
begin
  lblLinkTarget.Caption := LinkData.Target;
  htt.Hint := LinkData.Target;
end;

procedure TFormAbout.httLinkLeave(Sender: TObject; LinkID: Integer; LinkData: TDHLinkData);
begin
  lblLinkTarget.Caption := '';
end;

procedure TFormAbout.SetLang;
begin
  Caption := lsAbout.GetString('Caption', 'About');
end;

procedure TFormAbout.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormAbout.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  if WheelDelta < 0 then sbox.VertScrollBar.Position := sbox.VertScrollBar.Position + 22
  else sbox.VertScrollBar.Position := sbox.VertScrollBar.Position - 22;
end;

end.
