unit FCP.FormAutoCapture;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, //System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Menus, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors,

  // JPPack
  JPP.BasicPanel, JPP.PngButton, JPP.Timer, JPP.ColorListBox, JPP.SimplePanel, JPL.IniFile,

  // SpTBX
  SpTBXEditors,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

type

  {$region '     TFormAutoCapture     '}
  TFormAutoCapture = class(TForm)
    pnMain: TJppSimplePanel;
    tmCapture: TJppTimer;
    pnBottom: TJppSimplePanel;
    btnAdd: TJppPngButton;
    btnClose: TJppPngButton;
    Actions: TActionList;
    actEsc: TAction;
    clbColors: TJppColorListBox;
    actClose: TAction;
    actAdd: TAction;
    pnColorPalette: TJppSimplePanel;
    lblCapturingInterval: TLabel;
    spedCapturingInterval: TSpTBXSpinEdit;
    lblMilliseconds: TLabel;
    btnStartCapturing: TJppPngButton;
    btnStopCapturing: TJppPngButton;
    actStartCapturing: TAction;
    actStopCapturing: TAction;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    chColorLimit: TCheckBox;
    spedColorLimit: TSpTBXSpinEdit;
    chAllowDuplicates: TCheckBox;
    actClearColors: TAction;
    btnClearColors: TJppPngButton;
    cbAddPos: TComboBox;
    lblAddPos: TLabel;
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actStartCapturingExecute(Sender: TObject);
    procedure actStopCapturingExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    function GetColorUnderCursor(out PosX, PosY: integer): TColor;
    procedure tmCaptureTimer(Sender: TObject);
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure SetLang;
  private
    LastColor: TColor;
    xCapturedColors: integer;
    sCapturedColors: string;
  end;
  {$endregion TFormAutoCapture}

var
  FormAutoCapture: TFormAutoCapture;

implementation

uses
  FCP.FormMain;

{$R *.dfm}



{$region '                          Create, Close, Destroy                             '}
procedure TFormAutoCapture.FormCreate(Sender: TObject);
begin
  Caption := 'Auto Capture';
  Constraints.MinWidth := Width;
  Constraints.MinHeight := Height;
  LastColor := clNone;
  PrepareModuleStrings_AutoCapture;
  PrepareControls;
  LoadSettingsFromIni;
  InitControls;
end;

procedure TFormAutoCapture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmCapture.Stop;
  SaveSettingsToIni;
end;

procedure TFormAutoCapture.FormDestroy(Sender: TObject);
begin
  tmCapture.Stop;
end;
{$endregion Create, Close, Destroy}


{$region '                       PrepareControls                           '}
procedure TFormAutoCapture.PrepareControls;
begin
  pnMain.Appearance.BorderStyle := psClear;
  clbColors.Clear;
  clbColors.Align := alClient;
  pnMain.Align := alClient;
  btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
  btnStartCapturing.Appearance.Assign(FormMain.btnT1.Appearance);
  btnStopCapturing.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);
  lblColors.Align := alClient;
  actStopCapturing.Enabled := False;
  sCapturedColors := 'Captured Colors';
end;
{$endregion PrepareControls}


{$region '                      InitControls                         '}
procedure TFormAutoCapture.InitControls;
var
  xCount: integer;
begin
  xCount := clbColors.Count;
  spedColorLimit.Enabled := chColorLimit.Checked;
  actClearColors.Enabled := xCount > 0;
  actAdd.Enabled := xCount > 0;
  cbAddPos.Enabled := xCount > 0;
  lblAddPos.Enabled := xCount > 0;
end;

procedure TFormAutoCapture.InitCtrls(Sender: TObject);
begin
  InitControls;
end;
{$endregion InitControls}


{$region '                          SetLang                                  '}
procedure TFormAutoCapture.SetLang;
var
  x: integer;
begin
  Caption := lsAutoCapture.GetString('Caption', 'Auto Capture');

  sCapturedColors := lsAutoCapture.GetComponentProperty('lblColors', 'Caption', lblColors.Caption);
  if clbColors.Count > 0 then lblColors.Caption := sCapturedColors + ' (' + itos(clbColors.Count) + ')'
  else lblColors.Caption := sCapturedColors;

  btnStartCapturing.Caption := lsAutoCapture.GetComponentProperty(actStartCapturing.Name, 'Caption', actStartCapturing.Caption) + ' (' +
    ShortCutToText(actStartCapturing.ShortCut) + ')';

  btnStopCapturing.Caption := lsAutoCapture.GetComponentProperty(actStopCapturing.Name, 'Caption', actStopCapturing.Caption) + ' (' +
    ShortCutToText(actStopCapturing.ShortCut) + ')';

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

end;
{$endregion SetLang}


{$region '                                INI: Load & Save settings                                      '}
procedure TFormAutoCapture.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_AUTO_CAPTURE, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteSpinEditIntValue(spedCapturingInterval);
    TAppHelper.WriteCheckboxState(chColorLimit);
    TAppHelper.WriteSpinEditIntValue(spedColorLimit);
    TAppHelper.WriteCheckboxState(chAllowDuplicates);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormAutoCapture.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;


  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_AUTO_CAPTURE, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadSpinEditIntValue(spedCapturingInterval);
    TAppHelper.ReadCheckboxState(chColorLimit);
    TAppHelper.ReadSpinEditIntValue(spedColorLimit);
    TAppHelper.ReadCheckboxState(chAllowDuplicates);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;
{$endregion INI: Load & Save settings}


function TFormAutoCapture.GetColorUnderCursor(out PosX, PosY: integer): TColor;
begin
  PosX := Mouse.CursorPos.X;
  PosY := Mouse.CursorPos.Y;
  Result := PixelColor(PosX, PosY);
end;

procedure TFormAutoCapture.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormAutoCapture.actStartCapturingExecute(Sender: TObject);
begin
  tmCapture.Stop;
  xCapturedColors := 0;
  tmCapture.Interval := spedCapturingInterval.IntValue;

  actStopCapturing.Enabled := True;
  actStartCapturing.Enabled := False;

  tmCapture.Start;
end;

procedure TFormAutoCapture.actStopCapturingExecute(Sender: TObject);
begin
  tmCapture.Stop;
  actStopCapturing.Enabled := False;
  actStartCapturing.Enabled := True;
  InitControls;
end;

procedure TFormAutoCapture.tmCaptureTimer(Sender: TObject);
var
  cl: TColor;
  bLimitEnabled, bAllowDuplicates: Boolean;
  sName: string;
  x, y: integer;
begin
  bLimitEnabled := chColorLimit.Checked;
  bAllowDuplicates := chAllowDuplicates.Checked;

  cl := GetColorUnderCursor(x, y);

  if LastColor <> cl then
  begin

    LastColor := cl;

    if bAllowDuplicates or ( (not bAllowDuplicates) and (not clbColors.ColorExists(cl)) ) then
    begin
      Inc(xCapturedColors);
      sName := 'AutoCapture (' + itos(x) + ',' + itos(y) + ')';
      clbColors.AddColor(cl, sName);
      clbColors.ScrollToLast;
      actClearColors.Enabled := True;
      lblColors.Caption := sCapturedColors + ' (' + itos(clbColors.Count) + ')';
      if bLimitEnabled and (xCapturedColors >= spedColorLimit.IntValue) then
      begin
        tmCapture.Stop;
        actStopCapturing.Enabled := False;
        actStartCapturing.Enabled := True;
        InitControls;
        Exit;
      end;
    end;

  end;

end;

procedure TFormAutoCapture.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  lblColors.Caption := sCapturedColors;
  //PrepareModuleStrings_AutoCapture;
  InitControls;
end;

procedure TFormAutoCapture.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormAutoCapture.actEscExecute(Sender: TObject);
begin
  Close;
end;

end.
