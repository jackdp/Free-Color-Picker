unit FCP.FormOptions;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ActnList, Vcl.Buttons, Vcl.ComCtrls,

  // JPLib
  JPL.Colors, JPL.Strings, JPL.Win.Shortcuts,

  // JPPack
  JPP.PngButton, JPP.ColorListBox, JPP.ColorComboBox, JPP.SimplePanel, JPP.ColorSwatch,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

type

  {$region '     TFormOptions     '}
  TFormOptions = class(TForm)
    pnLanguage: TJppSimplePanel;
    lblLanguage: TLabel;
    cbLang: TComboBox;
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    btnClose: TJppPngButton;
    pnColorPalette: TJppSimplePanel;
    lblColorPalette: TLabel;
    lblColorPalette_ColorFormat: TLabel;
    rbColorPalette_RGB: TRadioButton;
    rbColorPalette_HTML: TRadioButton;
    rbColorPalette_RGB_HTML: TRadioButton;
    chColorPalette_ShowNames: TCheckBox;
    rbColorPalette_None: TRadioButton;
    pnMain: TJppSimplePanel;
    lblResampler: TLabel;
    cbResampler: TComboBox;
    chShowBottomPanel: TCheckBox;
    chCopyColor_Capture: TCheckBox;
    lblCopyColorFormat: TLabel;
    cbColorFormat_Capture: TComboBox;
    chShowColorCodesPanel: TCheckBox;
    chShowRgbGraph: TCheckBox;
    pnColorRectangle: TJppSimplePanel;
    lblColorRectangle: TLabel;
    edColorRectangle_Width: TLabeledEdit;
    udColorRectangle_Width: TUpDown;
    chColorRectangle_DrawBorder: TCheckBox;
    chColorRectangle_Connected: TCheckBox;
    edColorPalette_RowHeight: TLabeledEdit;
    udColorPalette_RowHeight: TUpDown;
    ccbColorPalette_BgColor: TJppColorComboBox;
    ccbColorPalette_FontColor: TJppColorComboBox;
    chColorPalette_ShowToolbar: TCheckBox;
    lblCopyColor: TLabel;
    cbColorFormat: TComboBox;
    lblCapturingInterval: TLabel;
    edCapturingInterval: TEdit;
    udCapturingInterval: TUpDown;
    lblMs: TLabel;
    chAskForName: TCheckBox;
    cbAddColorsPosition: TComboBox;
    lblAddColorsPosition: TLabel;
    pnPixelIndicator: TJppSimplePanel;
    lblPixelIndicator: TLabel;
    cbPixelIndicator: TComboBox;
    cswPixelIndicator: TJppColorSwatchEx;
    chHtmlExport_AddJson: TCheckBox;
    btnDesktopShortcut: TJppPngButton;
    actCreateDesktopShortcut: TAction;
    procedure actCloseExecute(Sender: TObject);
    procedure actCreateDesktopShortcutExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure cbPixelIndicatorChange(Sender: TObject);
    procedure cbAddColorsPositionChange(Sender: TObject);
    procedure cbColorFormatChange(Sender: TObject);
    procedure cbColorFormat_CaptureChange(Sender: TObject);
    procedure cbLangChange(Sender: TObject);
    procedure cbResamplerChange(Sender: TObject);
    procedure ccbColorPalette_BgColorBtnChangeColorClick(Sender: TObject);
    procedure ccbColorPalette_BgColorColorChanged(Sender: TObject);
    procedure ccbColorPalette_FontColorBtnChangeColorClick(Sender: TObject);
    procedure ccbColorPalette_FontColorColorChanged(Sender: TObject);
    procedure chAskForNameClick(Sender: TObject);
    procedure chColorPalette_ShowToolbarClick(Sender: TObject);
    procedure chColorRectangle_ConnectedClick(Sender: TObject);
    procedure chColorRectangle_DrawBorderClick(Sender: TObject);
    procedure chCopyColor_CaptureClick(Sender: TObject);
    procedure chHtmlExport_AddJsonClick(Sender: TObject);
    procedure chShowBottomPanelClick(Sender: TObject);
    procedure chShowColorCodesPanelClick(Sender: TObject);
    procedure chShowRgbGraphClick(Sender: TObject);
    procedure cswPixelIndicatorSelectedColorChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure InitLanguageCombo;
    procedure SetLang;
    procedure InitColorFormatCombos;
    procedure SetColorFormat(cb: TComboBox; const ct: TColorType);
    procedure InitControls;
    procedure SetColorPaletteParams(Sender: TObject);
    procedure udCapturingIntervalClick(Sender: TObject; Button: TUDBtnType);
    procedure udColorPalette_RowHeightClick(Sender: TObject; Button: TUDBtnType);
    procedure udColorRectangle_WidthClick(Sender: TObject; Button: TUDBtnType);
  private
    bUpdatingControls: Boolean;
  end;
  {$endregion TFormOptions}


var
  FormOptions: TFormOptions;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor, FCP.FormAbout, FCP.FormAutoCapture, FCP.FormEditColor, FCP.FormPixelColor, FCP.FormCheckUpdate,
  FCP.FormSortBy, FCP.FormRandomColors, FCP.FormGradientColors, FCP.FormEditColorName, FCP.FormColorMixer, FCP.FormModifyPalette, FCP.FormColorWheel,
  FCP.FormSimilarColors, FCP.FormQuickAccess;


{$R *.dfm}


procedure TFormOptions.FormCreate(Sender: TObject);
begin
  Caption := 'Options';
  PrepareControls;
  InitControls;
  PrepareModuleStrings_Options;
end;


{$region '                           PrepareControls                           '}
procedure TFormOptions.PrepareControls;

  procedure InitCCB(ccb: TJppColorComboBox);
  begin
    ccb.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    ccb.ButtonChangeColor.Appearance.ShowCaption := False;
    ccb.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    ccb.ButtonCopyColor.Appearance.ShowCaption := False;
    ccb.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    ccb.ButtonPasteColor.Appearance.ShowCaption := False;

    ccb.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
    ccb.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));
    ccb.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
  end;

begin
  bUpdatingControls := True;
  try

    actClose.ShortCut := FormMain.actOptions.ShortCut;
    btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
    InitLanguageCombo;
    InitColorFormatCombos;
    SetColorFormat(cbColorFormat_Capture, AP.CopyOnCaptureColorType);
    SetColorFormat(cbColorFormat, AP.CopyColorType);

    chCopyColor_Capture.Checked := AP.CopyOnCapture;

    cbResampler.Items.Assign(FormMain.cbResampler.Items);
    cbResampler.ItemIndex := FormMain.cbResampler.ItemIndex;

    InitCCB(ccbColorPalette_BgColor);
    InitCCB(ccbColorPalette_FontColor);

    udCapturingInterval.Min := CAPTURING_INTERVAL_MIN;
    udCapturingInterval.Max := CAPTURING_INTERVAL_MAX;
    udCapturingInterval.Position := FormMain.tmColor.Interval;

    case AP.PixelIndicator of
      piSquare: cbPixelIndicator.ItemIndex := 0;
      piSmallCross: cbPixelIndicator.ItemIndex := 1;
      piMediumCross: cbPixelIndicator.ItemIndex := 2;
      piFullCross: cbPixelIndicator.ItemIndex := 3;
    end;

    cswPixelIndicator.SelectedColor := AP.PixelIndicatorColor;
    cswPixelIndicator.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
    cswPixelIndicator.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));

    chHtmlExport_AddJson.Checked := AP.HtmlExport_AddJson;

    btnDesktopShortcut.Appearance.Assign(FormMain.btnT1.Appearance);

  finally
    bUpdatingControls := False;
  end;
end;
{$endregion PrepareControls}


{$region '                         InitControls                           '}
procedure TFormOptions.InitControls;
var
  b: Boolean;
  bRgb, bHtml: Boolean;
begin
  if not Assigned(FormMain) then Exit;
  bUpdatingControls := True;
  try
    chCopyColor_Capture.Checked := AP.CopyOnCapture;
    b := chCopyColor_Capture.Checked;
    lblCopyColorFormat.Enabled := b;
    cbColorFormat_Capture.Enabled := b;

    bRgb := FormMain.clbColors.Appearance.ShowRgbInt;
    bHtml := FormMain.clbColors.Appearance.ShowRgbHex;

    if (bRgb and bHtml) then rbColorPalette_RGB_HTML.Checked := True
    else if bHtml then rbColorPalette_HTML.Checked := True
    else if bRgb then rbColorPalette_RGB.Checked := True
    else rbColorPalette_None.Checked := True;

    chColorPalette_ShowNames.Checked := FormMain.clbColors.Appearance.ShowColorName;

    chShowBottomPanel.Checked := FormMain.pnBottom.Visible;
    chShowColorCodesPanel.Checked := FormMain.pnColorCodes.Visible;
    chShowRgbGraph.Checked := FormMain.pnRgbGraph.Visible;
    chShowRgbGraph.Enabled := chShowColorCodesPanel.Checked;

    udColorRectangle_Width.Position := FormMain.clbColors.Appearance.ColorRectangle.Width;
    chColorRectangle_DrawBorder.Checked := FormMain.clbColors.Appearance.ColorRectangle.BorderWidth > 0;
    chColorRectangle_Connected.Checked := FormMain.clbColors.Appearance.ColorRectangle.PaddingTop = 0;

    udColorPalette_RowHeight.Position := FormMain.clbColors.ItemHeight;
    ccbColorPalette_BgColor.SelectedColor := FormMain.clbColors.Color;
    ccbColorPalette_FontColor.SelectedColor := FormMain.clbColors.Font.Color;

    chColorPalette_ShowToolbar.Checked := FormMain.tbColorPalette.Visible;

    chAskForName.Checked := AP.AskForColorName;
    if AP.AddNewColorsAtTheTop then cbAddColorsPosition.ItemIndex := 0
    else cbAddColorsPosition.ItemIndex := 1;

  finally
    bUpdatingControls := False;
  end;
end;
{$endregion InitControls}


{$region '                           SetLang                            '}
procedure TFormOptions.SetLang;
var
  x: integer;
begin
  bUpdatingControls := True;
  try
    x := LangMgr.ActiveLanguageIndex;
    if (cbLang.Items.Count > 0) and (x in [0..cbLang.Items.Count - 1]) and (cbLang.ItemIndex <> x) then cbLang.ItemIndex := x;

    Caption := lsOptions.GetString('Caption', 'Options');

    ccbColorPalette_BgColor.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
    ccbColorPalette_BgColor.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color');
    ccbColorPalette_BgColor.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color');

    ccbColorPalette_FontColor.ButtonChangeColor.Hint := ccbColorPalette_BgColor.ButtonChangeColor.Hint;
    ccbColorPalette_FontColor.ButtonCopyColor.Hint := ccbColorPalette_BgColor.ButtonCopyColor.Hint;
    ccbColorPalette_FontColor.ButtonPasteColor.Hint := ccbColorPalette_BgColor.ButtonPasteColor.Hint;

    //cbResampler.Hint := lsMain.GetComponentProperty('cbResampler', 'Hint', '');
    //lblResampler.Caption := lsMain.GetComponentProperty('cbResampler', 'Hint', '') + ':';

    x := cbAddColorsPosition.ItemIndex;
    cbAddColorsPosition.Items[0] := lsOptions.GetString('AddPos_Top', 'At the top of the color palette');
    cbAddColorsPosition.Items[1] := lsOptions.GetString('AddPos_End', 'At the end of the color palette');
    cbAddColorsPosition.ItemIndex := x;

    x := cbPixelIndicator.ItemIndex;
    cbPixelIndicator.Items[0] := lsOptions.GetString('PixelIndicator_Square', 'Square');
    cbPixelIndicator.Items[1] := lsOptions.GetString('PixelIndicator_SmallCross', 'Small cross');
    cbPixelIndicator.Items[2] := lsOptions.GetString('PixelIndicator_MediumCross', 'Medium cross');
    cbPixelIndicator.Items[3] := lsOptions.GetString('PixelIndicator_FullCross', 'Full cross');
    cbPixelIndicator.ItemIndex := x;

    cswPixelIndicator.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');

  finally
    bUpdatingControls := False;
  end;
end;
{$endregion SetLang}


{$region '                        Color Format                             '}

procedure TFormOptions.InitColorFormatCombos;
begin
  bUpdatingControls := True;
  try
    with cbColorFormat_Capture.Items do
    begin
      Clear;
      Add('HTML');
      Add('RGB');
      Add('RGB %');
      Add('HSL CSS');
      Add('HSL WIN');
      Add('CMYK');
      Add('Pascal HEX');
      Add('Pascal INT');
      Add('C++ HEX');
    end;

    cbColorFormat.Items.Clear;
    cbColorFormat.Items.Assign(cbColorFormat_Capture.Items);

  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormOptions.cbColorFormat_CaptureChange(Sender: TObject);
var
  ct: TColorType;
begin
  if bUpdatingControls then Exit;
  case cbColorFormat_Capture.ItemIndex of
    0: ct := ctHtml;
    1: ct := ctRgb;
    2: ct := ctRgbPercent;
    3: ct := ctHslCss;
    4: ct := ctHslWin;
    5: ct := ctCmyk;
    6: ct := ctPascalHex;
    7: ct := ctPascalInt;
    8: ct := ctCppHex;
  else
    ct := ctHtml;
  end;
  AP.CopyOnCaptureColorType := ct;
end;

procedure TFormOptions.cbColorFormatChange(Sender: TObject);
var
  ct: TColorType;
begin
  if bUpdatingControls then Exit;
  case cbColorFormat.ItemIndex of
    0: ct := ctHtml;
    1: ct := ctRgb;
    2: ct := ctRgbPercent;
    3: ct := ctHslCss;
    4: ct := ctHslWin;
    5: ct := ctCmyk;
    6: ct := ctPascalHex;
    7: ct := ctPascalInt;
    8: ct := ctCppHex;
  else
    ct := ctHtml;
  end;
  AP.CopyColorType := ct;
end;

procedure TFormOptions.SetColorFormat(cb: TComboBox; const ct: TColorType);
var
  x: integer;
begin
  bUpdatingControls := True;
  try
    case ct of
      ctHtml: x := 0;
      ctRgb: x := 1;
      ctRgbPercent: x := 2;
      ctHslCss: x := 3;
      ctHslWin: x := 4;
      ctCmyk: x := 5;
      ctPascalHex: x := 6;
      ctPascalInt: x := 7;
      ctCppHex: x := 8;
    else
      x := 0;
    end;
    //if x in [0..cbColorFormat_Capture.Items.Count - 1] then cbColorFormat_Capture.ItemIndex := x;
    if x in [0..cb.Items.Count - 1] then cb.ItemIndex := x;
  finally
    bUpdatingControls := False;
  end;
end;



{$endregion Color Format}


{$region '                       Language Combo                           '}

procedure TFormOptions.InitLanguageCombo;
begin
  bUpdatingControls := True;
  try
    LangMgr.ComboBox := cbLang;
    LangMgr.FillComboBox;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormOptions.cbLangChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  LangMgr.SetActiveLanguageByIndex(cbLang.ItemIndex);

  SetLang;
  FormMain.SetLang;
  FormAbout.SetLang;
  FormPaletteEditor.SetLang;
  FormEditColor.SetLang;
  FormAutoCapture.SetLang;
  FormPixelColor.SetLang;
  FormCheckUpdate.SetLang;
  FormSortBy.SetLang;
  FormRandomColors.SetLang;
  FormGradientColors.SetLang;
  FormEditColorName.SetLang;
  FormColorMixer.SetLang;
  FormModifyPalette.SetLang;
  FormColorWheel.SetLang;
  FormSimilarColors.SetLang;
  FormQuickAccess.SetLang;

  AP.LanguageIni := LangMgr.GetLanguageFileNameByIndex(cbLang.ItemIndex);
end;

{$endregion Language Combo}


procedure TFormOptions.SetColorPaletteParams(Sender: TObject);
var
  clb: TJppColorListBox;
begin
  if bUpdatingControls then Exit;

  clb := FormMain.clbColors;

  if rbColorPalette_RGB.Checked then
  begin
    clb.Appearance.ShowRgbInt := True;
    clb.Appearance.ShowRgbHex := False;
  end
  else if rbColorPalette_HTML.Checked then
  begin
    clb.Appearance.ShowRgbInt := False;
    clb.Appearance.ShowRgbHex := True;
  end
  else if rbColorPalette_RGB_HTML.Checked then
  begin
    clb.Appearance.ShowRgbInt := True;
    clb.Appearance.ShowRgbHex := True;
  end
  else
  begin
    clb.Appearance.ShowRgbInt := False;
    clb.Appearance.ShowRgbHex := False;
  end;

  clb.Appearance.ShowColorName := chColorPalette_ShowNames.Checked;
end;

procedure TFormOptions.cbAddColorsPositionChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  AP.AddNewColorsAtTheTop := cbAddColorsPosition.ItemIndex = 0;
end;

procedure TFormOptions.cbResamplerChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.cbResampler.ItemIndex := cbResampler.ItemIndex;
end;

procedure TFormOptions.chAskForNameClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  AP.AskForColorName := chAskForName.Checked;
end;

procedure TFormOptions.chColorPalette_ShowToolbarClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.tbColorPalette.Visible := chColorPalette_ShowToolbar.Checked;
end;

procedure TFormOptions.chColorRectangle_ConnectedClick(Sender: TObject);
var
  x: integer;
begin
  if bUpdatingControls then Exit;
  if chColorRectangle_Connected.Checked then x := 0 else x := 1;
  FormMain.clbColors.Appearance.ColorRectangle.PaddingTop := x;
  FormMain.clbColors.Appearance.ColorRectangle.PaddingBottom := x;
  FormMain.clbColors.Appearance.ColorRectangle.HideTopBorder := x = 0;
end;

procedure TFormOptions.chColorRectangle_DrawBorderClick(Sender: TObject);
var
  x: integer;
begin
  if bUpdatingControls then Exit;
  if chColorRectangle_DrawBorder.Checked then x := 1 else x := 0;
  FormMain.clbColors.Appearance.ColorRectangle.BorderWidth := x;
  FormMain.clbColors.Appearance.ColorRectangle.HideTopBorder := FormMain.clbColors.Appearance.ColorRectangle.PaddingTop = 0;
end;

procedure TFormOptions.chCopyColor_CaptureClick(Sender: TObject);
begin
  AP.CopyOnCapture := chCopyColor_Capture.Checked;
  InitControls;
end;

procedure TFormOptions.chShowBottomPanelClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.pnBottom.Visible := chShowBottomPanel.Checked;
  FormMain.actShowHideBottomPanel.Checked := FormMain.pnBottom.Visible;
end;

procedure TFormOptions.chShowColorCodesPanelClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.pnColorCodes.Visible := chShowColorCodesPanel.Checked;
  FormMain.actShowHideColorCodesPanel.Checked := FormMain.pnColorCodes.Visible;
  InitControls;
end;

procedure TFormOptions.chShowRgbGraphClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.pnRgbGraph.Visible := chShowRgbGraph.Checked;
end;

procedure TFormOptions.udCapturingIntervalClick(Sender: TObject; Button: TUDBtnType);
begin
  if bUpdatingControls then Exit;
  FormMain.tmColor.Interval := udCapturingInterval.Position;
end;

procedure TFormOptions.udColorPalette_RowHeightClick(Sender: TObject; Button: TUDBtnType);
begin
  if bUpdatingControls then Exit;
  FormMain.clbColors.ItemHeight := udColorPalette_RowHeight.Position;
end;

procedure TFormOptions.udColorRectangle_WidthClick(Sender: TObject; Button: TUDBtnType);
begin
  if bUpdatingControls then Exit;
  FormMain.clbColors.Appearance.ColorRectangle.Width := udColorRectangle_Width.Position;
end;

procedure TFormOptions.actCloseExecute(Sender: TObject);
begin
  Close;
end;



procedure TFormOptions.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormOptions.cbPixelIndicatorChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  case cbPixelIndicator.ItemIndex of
    0: AP.PixelIndicator := piSquare;
    1: AP.PixelIndicator := piSmallCross;
    2: AP.PixelIndicator := piMediumCross;
    3: AP.PixelIndicator := piFullCross;
  end;
  FormMain.UpdatePreviewImg;
end;

procedure TFormOptions.ccbColorPalette_BgColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := ccbColorPalette_BgColor.SelectedColor;
  if not EditColor(cl) then Exit;
  ccbColorPalette_BgColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormOptions.ccbColorPalette_FontColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := ccbColorPalette_FontColor.SelectedColor;
  if not EditColor(cl) then Exit;
  ccbColorPalette_FontColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;


procedure TFormOptions.ccbColorPalette_BgColorColorChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.clbColors.Color := ccbColorPalette_BgColor.SelectedColor;
end;

procedure TFormOptions.ccbColorPalette_FontColorColorChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FormMain.clbColors.Appearance.NumericFont.Color := ccbColorPalette_FontColor.SelectedColor;
  FormMain.clbColors.Font.Color := ccbColorPalette_FontColor.SelectedColor;
end;

procedure TFormOptions.chHtmlExport_AddJsonClick(Sender: TObject);
begin
  AP.HtmlExport_AddJson := chHtmlExport_AddJson.Checked;
end;

procedure TFormOptions.cswPixelIndicatorSelectedColorChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  AP.PixelIndicatorColor := cswPixelIndicator.SelectedColor;
  FormMain.UpdatePreviewImg;
end;

procedure TFormOptions.actCreateDesktopShortcutExecute(Sender: TObject);
var
  LnkShortName: string;
begin
  LnkShortName := AppInfo.Name + ' (' + AppInfo.BitsStr + '-bit)' + '.lnk';
  if not ShortcutExists('Desktop', LnkShortName) then CreateShortcut(AppInfo.Name, ParamStr(0), 'Desktop', LnkShortName, AppInfo.FullName + ' (' + AppInfo.BitsStr + '-bit)');
end;

end.
