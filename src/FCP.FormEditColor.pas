unit FCP.FormEditColor;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ActnList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Clipbrd,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Colors.ColorClass, JPL.LangMgr,

  // JPPack
  JPP.BasicPanel, JPP.Panel, JPP.ColorListBox, JPP.BasicSpeedButton, JPP.Timer, JPP.PngButton, JPP.SimplePanel, JPP.Edit,

  // JPModLib
  JPPegtopTrackBars,

  // Graphics32
  GR32, GR32_ColorPicker,

  // Color Lib
  LColorPicker, mbTrackBarPicker,

  // SpTBX
  SpTBXEditors,

  // FCP
  FCP.Shared, FCP.AppStrings;

type

  {$region '     TFormEditColor     '}
  TFormEditColor = class(TForm)
    clbColors: TJppColorListBox;
    Actions: TActionList;
    actEsc: TAction;
    pnRgbSliders: TJppSimplePanel;
    tbRgbRed: TJPPegtopColorTrackBar;
    tbRgbGreen: TJPPegtopColorTrackBar;
    tbRgbBlue: TJPPegtopColorTrackBar;
    spedRgbRed: TSpTBXSpinEdit;
    spedRgbGreen: TSpTBXSpinEdit;
    spedRgbBlue: TSpTBXSpinEdit;
    lblRgbRed: TLabel;
    lblRgbGreen: TLabel;
    lblRgbBlue: TLabel;
    lblRgb: TLabel;
    pnHsPickerBg: TJppSimplePanel;
    cpHS: TColorPickerHS;
    LPicker: TLColorPicker;
    pnHslSliders: TJppSimplePanel;
    lblHslHue: TLabel;
    lblHslSat: TLabel;
    lblHslLum: TLabel;
    lblHsl: TLabel;
    spedHslHue: TSpTBXSpinEdit;
    spedHslSat: TSpTBXSpinEdit;
    spedHslLum: TSpTBXSpinEdit;
    tbHslHue: TJPPegtopTrackBar;
    tbHslSat: TJPPegtopTrackBar;
    tbHslLum: TJPPegtopTrackBar;
    pnRight: TJppSimplePanel;
    pnRgbPercent: TJppSimplePanel;
    edRgbPercent: TJppEdit;
    sbtnSetColor_RgbPercent: TJppBasicSpeedButton;
    actSetColor_RgbPercent: TAction;
    actCopyColor_RgbPercent: TAction;
    sbtnCopyColor_RgbPercent: TJppBasicSpeedButton;
    pnHslCss: TJppSimplePanel;
    sbtnSetColor_HslCss: TJppBasicSpeedButton;
    sbtnCopyColor_HslCss: TJppBasicSpeedButton;
    edHslCss: TJppEdit;
    actSetColor_HslCss: TAction;
    actCopyColor_HslCss: TAction;
    pnHtml: TJppSimplePanel;
    sbtnSetColor_Html: TJppBasicSpeedButton;
    sbtnCopyColor_Html: TJppBasicSpeedButton;
    edHtml: TJppEdit;
    actSetColor_Html: TAction;
    actCopyColor_Html: TAction;
    pnCmyk: TJppSimplePanel;
    sbtnSetColor_Cmyk: TJppBasicSpeedButton;
    sbtnCopyColor_Cmyk: TJppBasicSpeedButton;
    edCmyk: TJppEdit;
    actSetColor_Cmyk: TAction;
    actCopyColor_Cmyk: TAction;
    pnPascalHex: TJppSimplePanel;
    sbtnSetColor_PascalHex: TJppBasicSpeedButton;
    sbtnCopyColor_PascalHex: TJppBasicSpeedButton;
    edPascalHex: TJppEdit;
    actSetColor_PascalHex: TAction;
    actCopyColor_PascalHex: TAction;
    pnPascalInt: TJppSimplePanel;
    sbtnSetColor_PascalInt: TJppBasicSpeedButton;
    sbtnCopyColor_PascalInt: TJppBasicSpeedButton;
    edPascalInt: TJppEdit;
    actSetColor_PascalInt: TAction;
    actCopyColor_PascalInt: TAction;
    pnCppHex: TJppSimplePanel;
    sbtnSetColor_CppHex: TJppBasicSpeedButton;
    sbtnCopyColor_CppHex: TJppBasicSpeedButton;
    edCppHex: TJppEdit;
    actSetColor_CppHex: TAction;
    actCopyColor_CppHex: TAction;
    pnSelectedColorBg: TJppSimplePanel;
    pnColor: TJppSimplePanel;
    pnSelectedColor_Title: TJppBasicPanel;
    lblSelectedColor: TLabel;
    btnColorDialog: TJppPngButton;
    actShowSystemColorDialog: TAction;
    dlgColor: TColorDialog;
    btnOk: TJppPngButton;
    btnClose: TJppPngButton;
    actOk: TAction;
    actClose: TAction;
    pnRgb: TJppSimplePanel;
    edRgb: TJppEdit;
    actSetColor_Rgb: TAction;
    sbtnSetColor_Rgb: TJppBasicSpeedButton;
    actCopyColor_Rgb: TAction;
    sbtnCopyColor_Rgb: TJppBasicSpeedButton;
    pnHslWin: TJppSimplePanel;
    sbtnSetColor_HslWin: TJppBasicSpeedButton;
    sbtnCopyColor_HslWin: TJppBasicSpeedButton;
    edHslWin: TJppEdit;
    actSetColor_HslWin: TAction;
    actCopyColor_HslWin: TAction;
    actF3: TAction;
    pnColorList: TJppSimplePanel;

    procedure actCloseExecute(Sender: TObject);
    procedure actCopyColor_CmykExecute(Sender: TObject);
    procedure actCopyColor_CppHexExecute(Sender: TObject);
    procedure actCopyColor_HslCssExecute(Sender: TObject);
    procedure actCopyColor_HslWinExecute(Sender: TObject);
    procedure actCopyColor_HtmlExecute(Sender: TObject);
    procedure actCopyColor_PascalHexExecute(Sender: TObject);
    procedure actCopyColor_PascalIntExecute(Sender: TObject);
    procedure actCopyColor_RgbExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure SetLang;

    procedure actCopyColor_RgbPercentExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actF3Execute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actSetColor_CmykExecute(Sender: TObject);
    procedure actSetColor_CppHexExecute(Sender: TObject);
    procedure actSetColor_HslCssExecute(Sender: TObject);
    procedure actSetColor_HslWinExecute(Sender: TObject);
    procedure actSetColor_HtmlExecute(Sender: TObject);
    procedure actSetColor_PascalHexExecute(Sender: TObject);
    procedure actSetColor_PascalIntExecute(Sender: TObject);
    procedure actSetColor_RgbExecute(Sender: TObject);
    procedure actSetColor_RgbPercentExecute(Sender: TObject);
    procedure actShowSystemColorDialogExecute(Sender: TObject);
    procedure clbColorsClick(Sender: TObject);
    procedure cpHSChanged(Sender: TObject);
    procedure tbRgbRedScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure LPickerChange(Sender: TObject);
    procedure spedRgbRedChange(Sender: TObject);
    procedure spedRgbRedValueChanged(Sender: TObject);

    function GetColorFromRgbControls(const bFromTrackBars: Boolean): TColor;
    function GetColorFromHslControls(const bFromTrackBars: Boolean): TColor;
    procedure SetRgbControls(const cl: TColor; bTracks, bEdits: Boolean);
    procedure SetHslControls(const cl: TColor; bTracks, bEdits: Boolean; SetHue: Boolean = True; SetSat: Boolean = True; SetLum: Boolean = True);
    procedure UpdateCurrentColorPanel(const cl: TColor);
    procedure SetCurrentColor(const cl: TColor);

    procedure spedHslHueChange(Sender: TObject);
    procedure spedHslHueValueChanged(Sender: TObject);
    procedure tbHslHueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);

    function GetCurrentColor: TColor;

  private
    bUpdatingControls: Boolean;
    CurrentColor: TColor;
  end;
  {$endregion TFormEditColor}


var
  FormEditColor: TFormEditColor;


implementation

uses
  FCP.FormMain;

{$R *.dfm}



procedure TFormEditColor.FormCreate(Sender: TObject);
begin
  Caption := 'Edit Color';
  PrepareModuleStrings_ColorEditor;
  PrepareControls;
  SetLang;
  //Constraints.MaxWidth := Width;
  Constraints.MinWidth := 740;
  Constraints.MinHeight := Height; // 320;
  SetCurrentColor(clWhite);
end;

{$region '                           PrepareControls                             '}
procedure TFormEditColor.PrepareControls;
var
  sbtn: TJppBasicSpeedButton;
begin
  clbColors.Align := alClient;

  lblSelectedColor.Align := alClient;
  sbtn := FormMain.sbtnT1;
  sbtnSetColor_Rgb.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_Rgb.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_RgbPercent.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_RgbPercent.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_HslCss.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_HslCss.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_HslWin.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_HslWin.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_Html.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_Html.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_Cmyk.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_Cmyk.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_PascalHex.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_PascalHex.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_PascalInt.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_PascalInt.Appearance.Assign(sbtn.Appearance, True);
  sbtnSetColor_CppHex.Appearance.Assign(sbtn.Appearance, True);
  sbtnCopyColor_CppHex.Appearance.Assign(sbtn.Appearance, True);

  btnColorDialog.Appearance.Assign(FormMain.btnT1.Appearance);
  btnOk.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);

  //edHtml.Appearance.Assign(edRgb.Appearance);
  edRgbPercent.Appearance.Assign(edRgb.Appearance);
  edHslCss.Appearance.Assign(edRgb.Appearance);
  edHslWin.Appearance.Assign(edRgb.Appearance);
  edCmyk.Appearance.Assign(edRgb.Appearance);
  edPascalHex.Appearance.Assign(edRgb.Appearance);
  edPascalInt.Appearance.Assign(edRgb.Appearance);
  edCppHex.Appearance.Assign(edRgb.Appearance);

  pnHtml.Appearance.DrawBottomBorder := False;
  pnRgb.Appearance.Assign(pnHtml.Appearance);
  pnRgbPercent.Appearance.Assign(pnHtml.Appearance);
  pnHslCss.Appearance.Assign(pnHtml.Appearance);
  pnHslWin.Appearance.Assign(pnHtml.Appearance);
  pnCmyk.Appearance.Assign(pnHtml.Appearance);
  pnPascalHex.Appearance.Assign(pnHtml.Appearance);
  pnPascalInt.Appearance.Assign(pnHtml.Appearance);
  pnCppHex.Appearance.Assign(pnHtml.Appearance);
  pnCppHex.Appearance.DrawBottomBorder := True;

end;
{$endregion PrepareControls}


procedure TFormEditColor.SetLang;
begin
  Caption := lsColorEditor.GetString('Caption', 'Edit Color');
  lblRgb.Caption := '  ' + lblRgb.Caption;
  lblHsl.Caption := '  ' + lblHsl.Caption;
end;


{$region '                       UpdateCurrentColorPanel                          '}
procedure TFormEditColor.UpdateCurrentColorPanel(const cl: TColor);
var
  clb: TColor;
  cc: TColorClass;
  s: string;
begin
  pnColor.Appearance.BackgroundColor := cl;
  clb := AvgColor(cl, clGray);
  pnColor.Appearance.BorderColor := clb;

  cc := TColorClass.Create(cl);
  try

    edRgbPercent.Text := ColorToRgbPercentStr(cl, 1, '0', ',', False); // cc.RgbPercentIntStr;
    edHslCss.Text := cc.HslCssStr;
    edHslWin.Text := cc.HslSysStr;

    s := cc.HtmlColorStr;
    s := InsertNumSep(s, ' ', 2, 2);
    edHtml.Text := s;

    edRgb.Text := cc.RgbIntStr;
    edCmyk.Text := cc.CmykStr;

    edPascalHex.Text := cc.PascalHexStr;
    edPascalInt.Text := InsertNumSep(cc.PascalIntStr, ' ', 3);
    edCppHex.Text := cc.CppHex;

  finally
    cc.Free;
  end;
end;
{$endregion UpdateCurrentColorPanel}


procedure TFormEditColor.SetCurrentColor(const cl: TColor);
begin
  bUpdatingControls := True;
  try
    CurrentColor := cl;
    SetRgbControls(cl, True, True);
    SetHslControls(cl, True, True);
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    UpdateCurrentColorPanel(CurrentColor);
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormEditColor.clbColorsClick(Sender: TObject);
begin
  CurrentColor := clbColors.SelectedColor;

  bUpdatingControls := True;
  try
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    SetRgbControls(CurrentColor, True, True);
    SetHslControls(CurrentColor, True, True);
  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;


{$region '                                 HSL                                   '}

function TFormEditColor.GetColorFromHslControls(const bFromTrackBars: Boolean): TColor;
var
  h, s, l: integer;
begin
  if bFromTrackBars then
  begin
    h := tbHslHue.Position;
    s := tbHslSat.Position;
    l := tbHslLum.Position;
  end
  else
  begin
    h := spedHslHue.IntValue;
    s := spedHslSat.IntValue;
    l := spedHslLum.IntValue;
  end;
  Result := HslSysToColor(h, s, l);
end;

procedure TFormEditColor.SetHslControls(const cl: TColor; bTracks, bEdits: Boolean; SetHue: Boolean = True; SetSat: Boolean = True; SetLum: Boolean = True);
var
  Hue, Sat, Lum: integer;
  bUC: Boolean;
begin
  ColorToHslSys(cl, Hue, Sat, Lum);
  bUC := bUpdatingControls;
  bUpdatingControls := True;
  try

    if bTracks then
    begin
      if SetHue then tbHslHue.Position := Hue;
      if SetSat then tbHslSat.Position := Sat;
      if SetLum then tbHslLum.Position := Lum;
    end;

    if bEdits then
    begin
      if SetHue then spedHslHue.Value := Hue;
      if SetSat then spedHslSat.Value := Sat;
      if SetLum then spedHslLum.Value := Lum;
    end;

  finally
    bUpdatingControls := bUC;
  end;
end;


procedure TFormEditColor.cpHSChanged(Sender: TObject);
var
  Lum: integer;
begin
  if bUpdatingControls then Exit;
  CurrentColor := WinColor(cpHS.SelectedColor);

  bUpdatingControls := True;
  try
    Lum := LPicker.Luminance;
    LPicker.SelectedColor := CurrentColor;
    LPicker.Luminance := Lum;
    SetRgbControls(CurrentColor, True, True);
    SetHslControls(CurrentColor, True, True);
  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;

procedure TFormEditColor.LPickerChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;

  // TODO: LPicker - Exception on program start
  // Czasami przy starcie programu tutaj powstaje wyj¹tek. Dlaczego?

  try

    bUpdatingControls := True;
    try
      CurrentColor := LPicker.SelectedColor;
      SetRgbControls(CurrentColor, True, True);
      SetHslControls(CurrentColor, True, True);
    finally
      bUpdatingControls := False;
    end;

    UpdateCurrentColorPanel(CurrentColor);

  except
  end;

end;

procedure TFormEditColor.tbHslHueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  CurrentColor := GetColorFromHslControls(True);

  bUpdatingControls := True;
  try
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    SetRgbControls(CurrentColor, True, True);

    if Sender = tbHslHue then spedHslHue.Value := tbHslHue.Position
    else if Sender = tbHslSat then spedHslSat.Value := tbHslSat.Position
    else if Sender = tbHslLum then spedHslLum.Value := tbHslLum.Position;

  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;

procedure TFormEditColor.spedHslHueChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  CurrentColor := GetColorFromHslControls(False);

  bUpdatingControls := True;
  try
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    SetRgbControls(CurrentColor, True, True);

    if Sender = spedHslHue then tbHslHue.Position := spedHslHue.IntValue
    else if Sender = spedHslSat then tbHslSat.Position := spedHslSat.IntValue
    else if Sender = spedHslLum then tbHslLum.Position := spedHslLum.IntValue;

  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;

procedure TFormEditColor.spedHslHueValueChanged(Sender: TObject);
begin
  spedHslHueChange(Sender);
end;


{$endregion HSL}


{$region '                                 RGB                                   '}

function TFormEditColor.GetColorFromRgbControls(const bFromTrackBars: Boolean): TColor;
begin
  if bFromTrackBars then Result := RGB(tbRgbRed.Position, tbRgbGreen.Position, tbRgbBlue.Position)
  else Result := RGB(spedRgbRed.ByteValue, spedRgbGreen.ByteValue, spedRgbBlue.ByteValue);
end;

procedure TFormEditColor.SetRgbControls(const cl: TColor; bTracks, bEdits: Boolean);
var
  r, g, b: Byte;
  bUC: Boolean;
begin
  GetRgbChannels(cl, r, g, b);
  bUC := bUpdatingControls;
  bUpdatingControls := True;
  try

    if bTracks then
    begin
      tbRgbRed.Position := r;
      tbRgbGreen.Position := g;
      tbRgbBlue.Position := b;
    end;

    if bEdits then
    begin
      spedRgbRed.Value := r;
      spedRgbGreen.Value := g;
      spedRgbBlue.Value := b;
    end;

  finally
    bUpdatingControls := bUC;
  end;
end;


procedure TFormEditColor.tbRgbRedScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  CurrentColor := GetColorFromRgbControls(True);

  bUpdatingControls := True;
  try
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    SetRgbControls(CurrentColor, False, True);
    SetHslControls(CurrentColor, True, True);
  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;

procedure TFormEditColor.spedRgbRedChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  CurrentColor := GetColorFromRgbControls(False);

  bUpdatingControls := True;
  try
    cpHS.SelectedColor := Color32(CurrentColor);
    LPicker.SelectedColor := CurrentColor;
    SetRgbControls(CurrentColor, True, False);
    SetHslControls(CurrentColor, True, True);
  finally
    bUpdatingControls := False;
  end;

  UpdateCurrentColorPanel(CurrentColor);
end;

procedure TFormEditColor.spedRgbRedValueChanged(Sender: TObject);
begin
  spedRgbRedChange(Sender);
end;



{$endregion RGB}


{$region '                      Copy & Set Color                       '}

procedure TFormEditColor.actSetColor_HtmlExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryHtmlStrToColor(RemoveSpaces(edHtml.Text), cl) then SetCurrentColor(cl)
  else edHtml.FlashBackground;
end;


procedure TFormEditColor.actCopyColor_HtmlExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edHtml.Text);
end;

procedure TFormEditColor.actSetColor_RgbExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryRgbStrToColor(edRgb.Text, cl) then SetCurrentColor(cl)
  else edRgb.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_RgbExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edRgb.Text);
end;

procedure TFormEditColor.actSetColor_RgbPercentExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryRgbPercentStrToColor(edRgbPercent.Text, cl) then SetCurrentColor(cl)
  else edRgbPercent.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_RgbPercentExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edRgbPercent.Text);
end;


procedure TFormEditColor.actSetColor_HslWinExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryHslWinStrToColor(edHslWin.Text, cl) then SetCurrentColor(cl)
  else edHslWin.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_HslWinExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edHslWin.Text);
end;

procedure TFormEditColor.actSetColor_HslCssExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryHslCssStrToColor(edHslCss.Text, cl) then SetCurrentColor(cl)
  else edHslCss.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_HslCssExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edHslCss.Text);
end;


procedure TFormEditColor.actSetColor_CmykExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryCmykStrToColor(edCmyk.Text, cl) then SetCurrentColor(cl)
  else edCmyk.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_CmykExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edCmyk.Text);
end;

procedure TFormEditColor.actSetColor_PascalHexExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryDelphiHexStrToColor(RemoveSpaces(edPascalHex.Text), cl) then SetCurrentColor(cl)
  else edPascalHex.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_PascalHexExecute(Sender: TObject);
begin
  Clipboard.AsText := edPascalHex.Text;
end;

procedure TFormEditColor.actSetColor_PascalIntExecute(Sender: TObject);
var
  cl: TColor;
begin
  if TryDelphiIntStrToColor(RemoveSpaces(edPascalInt.Text), cl) then SetCurrentColor(cl)
  else edPascalInt.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_PascalIntExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edPascalInt.Text);
end;

procedure TFormEditColor.actSetColor_CppHexExecute(Sender: TObject);
var
  cl: TColor;
  s: string;
begin
  s := RemoveSpaces(edCppHex.Text);
  s := StringReplace(s, '0x', '$', [rfIgnoreCase]);
  if TryDelphiHexStrToColor(s, cl) then SetCurrentColor(cl)
  else edCppHex.FlashBackground;
end;

procedure TFormEditColor.actCopyColor_CppHexExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(edCppHex.Text);
end;

{$endregion Copy & Set Color}


procedure TFormEditColor.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormEditColor.actOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
  //Close;
end;

procedure TFormEditColor.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormEditColor.actF3Execute(Sender: TObject);
begin
  FormMain.actCopyColor.Execute;
end;

procedure TFormEditColor.actShowSystemColorDialogExecute(Sender: TObject);
begin
  dlgColor.Color := CurrentColor;
  if dlgColor.Execute then SetCurrentColor(dlgColor.Color);
end;

function TFormEditColor.GetCurrentColor: TColor;
begin
  Result := CurrentColor;
end;



end.
