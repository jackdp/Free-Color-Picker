unit FCP.FormSimilarColors;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.IniFile,

  // JPPack
  JPP.ColorListBox, JPP.BasicPanel, JPP.PngButton, JPP.ColorSwatch, JPP.SimplePanel, JPP.Timer, JPP.BasicSpeedButton,

  // SpTBX
  SpTBXEditors, TB2Item, SpTBXItem,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

type
  TFormSimilarColors = class(TForm)
    pnMain: TJppSimplePanel;
    pnRight: TJppSimplePanel;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    clbColors: TJppColorListBox;
    pnBottom: TJppSimplePanel;
    lblAddPos: TLabel;
    btnClose: TJppPngButton;
    btnAdd: TJppPngButton;
    cbAddPos: TComboBox;
    btnClearColors: TJppPngButton;
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    pnTop: TJppSimplePanel;
    cswCurrentColor: TJppColorSwatchEx;
    pnDarker: TJppSimplePanel;
    lblDarker: TLabel;
    clbDarker: TJppColorListBox;
    pnLighter: TJppSimplePanel;
    lblLighter: TLabel;
    clbLighter: TJppColorListBox;
    pnSatMore: TJppSimplePanel;
    lblSatMore: TLabel;
    clbSatMore: TJppColorListBox;
    pnSatLess: TJppSimplePanel;
    lblSatLess: TLabel;
    clbSatLess: TJppColorListBox;
    pnHuePlus: TJppSimplePanel;
    lblHuePlus: TLabel;
    clbHuePlus: TJppColorListBox;
    spedColorCount: TSpTBXSpinEdit;
    spedStep: TSpTBXSpinEdit;
    lblColorCount: TLabel;
    lblStep: TLabel;
    tmGenerateColors: TJppTimer;
    pnHueMinus: TJppSimplePanel;
    lblHueMinus: TLabel;
    clbHueMinus: TJppColorListBox;
    pnColorFormat: TJppSimplePanel;
    lblColorFormat: TLabel;
    rbHslCss: TRadioButton;
    rbHslWin: TRadioButton;
    rbRgb: TRadioButton;
    rbHtml: TRadioButton;
    pnMixedColors: TJppSimplePanel;
    cswMixed_Black: TJppColorSwatchEx;
    cswMixed_Gray: TJppColorSwatchEx;
    cswMixed_White: TJppColorSwatchEx;
    actAddtoList_Darker: TAction;
    pnDarker_Bottom: TJppSimplePanel;
    btnAddToList_Darker: TJppPngButton;
    pnLighter_Bottom: TJppSimplePanel;
    btnAddToList_Lighter: TJppPngButton;
    pnSatMore_Bottom: TJppSimplePanel;
    btnAddToList_SatMore: TJppPngButton;
    pnSatLess_Bottom: TJppSimplePanel;
    btnAddToList_SatLess: TJppPngButton;
    pnHuePlus_Bottom: TJppSimplePanel;
    btnAddToList_HuePlus: TJppPngButton;
    pnHueMinus_Bottom: TJppSimplePanel;
    btnAddToList_HueMinus: TJppPngButton;
    actClearColors: TAction;
    actAdd: TAction;
    actAddToList_Lighter: TAction;
    actAddToList_SatMore: TAction;
    actAddToList_SatLess: TAction;
    actAddToList_HuePlus: TAction;
    actAddToList_HueMinus: TAction;
    btnAddToList_Mixed: TJppPngButton;
    actAddToList_Mixed: TAction;
    cswCurrentColor_2: TJppColorSwatchEx;
    sbtnAddToList_CurrentColor: TJppBasicSpeedButton;
    actAddToList_CurrentColor: TAction;
    popColorList: TSpTBXPopupMenu;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem4: TSpTBXItem;
    procedure actAddExecute(Sender: TObject);
    procedure actAddToList_CurrentColorExecute(Sender: TObject);
    procedure actAddtoList_DarkerExecute(Sender: TObject);
    procedure actAddToList_HueMinusExecute(Sender: TObject);
    procedure actAddToList_HuePlusExecute(Sender: TObject);
    procedure actAddToList_LighterExecute(Sender: TObject);
    procedure actAddToList_MixedExecute(Sender: TObject);
    procedure actAddToList_SatLessExecute(Sender: TObject);
    procedure actAddToList_SatMoreExecute(Sender: TObject);
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure cswCurrentColor_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor_2SelectedColorChanged(Sender: TObject);
    procedure cswCurrentColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor_2BtnChangeColorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure SetLang;
    procedure GenerateColors_Darker;
    procedure GenerateColors_Lighter;
    procedure GenerateColors_SatMore;
    procedure GenerateColors_SatLess;
    procedure GenerateColors_HuePlus;
    procedure GenerateColors_HueMinus;
    procedure GenerateColors_Mixed;
    procedure GenerateAllColors;
    procedure spedColorCountValueChanged(Sender: TObject);
    procedure spedStepValueChanged(Sender: TObject);
    procedure tmGenerateColorsTimer(Sender: TObject);
    procedure GetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
    procedure rbHslCssClick(Sender: TObject);
    procedure UpdateColorCountLabel;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
  private type
    TGenColorType = (gctDarker, gctLighter, gctSatMore, gctSatLess, gctHuePlus, gctHueMinus);
  public
    procedure GenerateColors(clb: TJppColorListBox; const ColorType: TGenColorType);
    procedure AddToList(clb: TJppColorListBox; const ColorType: TGenColorType);
  private
    bUpdatingControls: Boolean;
    FCurrentColor: TColor;
    procedure SetCurrentColor(const Value: TColor);
  public
    property CurrentColor: TColor read FCurrentColor write SetCurrentColor;
  end;

var
  FormSimilarColors: TFormSimilarColors;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;


{$R *.dfm}



procedure TFormSimilarColors.FormCreate(Sender: TObject);
begin
  Caption := 'Similar colors';
  Constraints.MinWidth := Width;
  //Constraints.MaxWidth := Width;
  Constraints.MinHeight := 400;
  PrepareModuleStrings_SimilarColors;
  PrepareControls;
  LoadSettingsFromIni;
  SetCurrentColor(cswCurrentColor_2.SelectedColor);
  GenerateAllColors;
end;

procedure TFormSimilarColors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;


{$region '                       PrepareControls                           '}
procedure TFormSimilarColors.PrepareControls;
begin
  pnMain.Align := alClient;
  clbColors.Clear;
  clbColors.Align := alClient;
  lblColors.Align := alClient;

  clbDarker.Align := alClient;
  clbDarker.Clear;
  clbLighter.Align := alClient;
  clbLighter.Clear;
  clbSatMore.Align := alClient;
  clbSatMore.Clear;
  clbSatLess.Align := alClient;
  clbSatLess.Clear;
  clbHuePlus.Align := alClient;
  clbHuePlus.Clear;
  clbHueMinus.Align := alClient;
  clbHueMinus.Clear;

  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);

  btnAddToList_Darker.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_Lighter.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_SatMore.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_SatLess.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_HuePlus.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_HueMinus.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_Mixed.Appearance.Assign(FormMain.btnT1.Appearance);

  cswCurrentColor_2.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswCurrentColor_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswCurrentColor_2.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswCurrentColor_2.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
  cswCurrentColor_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswCurrentColor_2.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));

  cswMixed_Black.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswMixed_Gray.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswMixed_White.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswMixed_Black.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswMixed_Gray.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswMixed_White.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));

  sbtnAddToList_CurrentColor.Appearance.Assign(FormMain.sbtnT1.Appearance);

  clbDarker.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbLighter.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbSatMore.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbSatLess.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbHuePlus.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbHueMinus.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbColors.Appearance.NumericFont.Name := AP.MonospaceFont.Name;

end;
{$endregion PrepareControls}


{$region '                    InitControls                      '}
procedure TFormSimilarColors.InitControls;
var
  xCount: integer;
begin
  bUpdatingControls := True;
  try
    xCount := clbColors.Count;
    actClearColors.Enabled := xCount > 0;
    actAdd.Enabled := xCount > 0;
    cbAddPos.Enabled := actAdd.Enabled;
    lblAddPos.Enabled := actAdd.Enabled;

    actSelectAll.Enabled := (clbColors.SelCount <> xCount) and (xCount > 0);
    actInvertSelection.Enabled := xCount > 0;
    actDeleteSelected.Enabled := clbColors.SelCount > 0;

    UpdateColorCountLabel;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormSimilarColors.InitCtrls(Sender: TObject);
begin
  InitControls;
end;

{$endregion InitControls}


{$region '                      SetLang                         '}
procedure TFormSimilarColors.SetLang;
var
  s: string;
  x: integer;
begin
  Caption := lsSimilar.GetString('Caption', Caption);

  cswCurrentColor_2.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  cswCurrentColor_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswCurrentColor_2.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');

  cswMixed_Black.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswMixed_Gray.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswMixed_White.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');

  s := lsSimilar.GetString('AddToList.Caption', 'Add to list');
  actAddtoList_Darker.Caption := s;
  actAddToList_Lighter.Caption := s;
  actAddToList_SatMore.Caption := s;
  actAddToList_SatLess.Caption := s;
  actAddToList_HuePlus.Caption := s;
  actAddToList_HueMinus.Caption := s;
  actAddToList_Mixed.Caption := s;

  s := lsSimilar.GetString('AddToList.Hint', 'Add colors to the color list on the right');
  actAddtoList_Darker.Hint := s;
  actAddToList_Lighter.Hint := s;
  actAddToList_SatMore.Hint := s;
  actAddToList_SatLess.Hint := s;
  actAddToList_HuePlus.Hint := s;
  actAddToList_HueMinus.Hint := s;
  actAddToList_Mixed.Hint := s;

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

  TAppHelper.CheckForm(TFormPaletteEditor);
  actSelectAll.Caption := FormPaletteEditor.actSelectAll.Caption;
  actSelectAll.Hint := FormPaletteEditor.actSelectAll.Hint;
  actInvertSelection.Caption := FormPaletteEditor.actInvertSelection.Caption;
  actInvertSelection.Hint := FormPaletteEditor.actInvertSelection.Hint;
  actDeleteSelected.Caption := FormPaletteEditor.actDeleteSelected.Caption;
  actDeleteSelected.Hint := FormPaletteEditor.actDeleteSelected.Hint;

  //lblHuePlus.Hint := lsSimilar.GetComponentProperty('lblHuePlus', 'Hint', 'aaa');
end;
{$endregion SetLang}


{$region '                    Adding colors                          '}
procedure TFormSimilarColors.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormSimilarColors.actAddToList_CurrentColorExecute(Sender: TObject);
begin
  clbColors.AddColor(cswCurrentColor_2.SelectedColor, 'Base color: ' + ColorToRgbIntStr(cswCurrentColor_2.SelectedColor));
  InitControls;
end;

procedure TFormSimilarColors.actAddtoList_DarkerExecute(Sender: TObject);
begin
  AddToList(clbDarker, gctDarker);
end;

procedure TFormSimilarColors.actAddToList_HueMinusExecute(Sender: TObject);
begin
  AddToList(clbHueMinus, gctHueMinus);
end;

procedure TFormSimilarColors.actAddToList_HuePlusExecute(Sender: TObject);
begin
  AddToList(clbHuePlus, gctHuePlus);
end;

procedure TFormSimilarColors.actAddToList_LighterExecute(Sender: TObject);
begin
  AddToList(clbLighter, gctLighter);
end;

procedure TFormSimilarColors.actAddToList_SatLessExecute(Sender: TObject);
begin
  AddToList(clbSatLess, gctSatLess);
end;

procedure TFormSimilarColors.actAddToList_SatMoreExecute(Sender: TObject);
begin
  AddToList(clbSatMore, gctSatMore);
end;

procedure TFormSimilarColors.AddToList(clb: TJppColorListBox; const ColorType: TGenColorType);
var
  i: integer;
  ColorName, sCurrentColor: string;
  cl: TColor;
begin
  if clb.Count = 0 then Exit;
  sCurrentColor := ColorToRgbIntStr(FCurrentColor);
  clbColors.BeginUpdate;
  clbColors.Items.BeginUpdate;
  try
    for i := 0 to clb.Count - 1 do
    begin
      if not clb.IsColorItem(i) then Continue;
      cl := clb.GetItemColor(i);

      case ColorType of
        gctDarker: ColorName := 'Darker ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
        gctLighter: ColorName := 'Lighter ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
        gctSatMore: ColorName := 'Saturation[+] ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
        gctSatLess: ColorName := 'Saturation[-] ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
        gctHuePlus: ColorName := 'Hue[+] ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
        gctHueMinus: ColorName := 'Hue[-] ' + Pad(itos(i + 1), 2, '0') + ' for ' + sCurrentColor;
      else
        ColorName := '';
      end;

      clbColors.AddColor(cl, ColorName);
    end;

  finally
    clbColors.ScrollToLast;
    clbColors.Items.EndUpdate;
    clbColors.EndUpdate;
  end;
  InitControls;
end;

procedure TFormSimilarColors.actAddToList_MixedExecute(Sender: TObject);
var
  ColorName, sCurrentColor: string;
  cl: TColor;
begin
  sCurrentColor := ColorToRgbIntStr(FCurrentColor);
  clbColors.BeginUpdate;
  clbColors.Items.BeginUpdate;
  try

    cl := cswMixed_Black.SelectedColor;
    ColorName := 'Mixed ' + sCurrentColor + ' + Black';
    clbColors.AddColor(cl, ColorName);

    cl := cswMixed_Gray.SelectedColor;
    ColorName := 'Mixed ' + sCurrentColor + ' + Gray';
    clbColors.AddColor(cl, ColorName);

    cl := cswMixed_White.SelectedColor;
    ColorName := 'Mixed ' + sCurrentColor + ' + White';
    clbColors.AddColor(cl, ColorName);

  finally
    clbColors.ScrollToLast;
    clbColors.Items.EndUpdate;
    clbColors.EndUpdate;
  end;
  InitControls;
end;
{$endregion Adding colors}



{$region '                   Generate colors                      '}
procedure TFormSimilarColors.GenerateAllColors;
begin
  GenerateColors_Darker;
  GenerateColors_Lighter;
  GenerateColors_SatMore;
  GenerateColors_SatLess;
  GenerateColors_HuePlus;
  GenerateColors_HueMinus;
  GenerateColors_Mixed;
  InitControls;
end;

procedure TFormSimilarColors.GenerateColors(clb: TJppColorListBox; const ColorType: TGenColorType);
var
  i, xDelta, xStep: integer;
  cl: TColor;
  clLastDarker, clLastLighter, clLastSatMore, clLastSatLess, clLastHuePlus, clLastHueMinus: TColor;
  bCanAdd: Boolean;
begin
  clb.BeginUpdate;
  clb.Items.BeginUpdate;
  try
    clb.Clear;
    xStep := spedStep.IntValue;
    clLastDarker := clNone;
    clLastLighter := clNone;
    clLastSatMore := clNone;
    clLastSatLess := clNone;
    clLastHuePlus := clNone;
    clLastHueMinus := clNone;

    for i := 1 to spedColorCount.IntValue do
    begin

      case ColorType of

        gctDarker:
          begin
            xDelta := -i * xStep;
            cl := SetHslCssDelta(FCurrentColor, 0, 0, xDelta);
            bCanAdd := cl <> clLastDarker;
            clLastDarker := cl;
          end;

        gctLighter:
          begin
            xDelta := i * xStep;
            cl := SetHslCssDelta(FCurrentColor, 0, 0, xDelta);
            bCanAdd := cl <> clLastLighter;
            clLastLighter := cl;
          end;

        gctSatMore:
          begin
            xDelta := i * xStep;
            cl := SetHslCssDelta(FCurrentColor, 0, xDelta, 0);
            bCanAdd := cl <> clLastSatMore;
            clLastSatMore := cl;
          end;

        gctSatLess:
          begin
            xDelta := -i * xStep;
            cl := SetHslCssDelta(FCurrentColor, 0, xDelta, 0);
            bCanAdd := cl <> clLastSatLess;
            clLastSatLess := cl;
          end;

        gctHuePlus:
          begin
            xDelta := i * xStep;
            cl := HslCssShiftHue(FCurrentColor, xDelta);
            bCanAdd := cl <> clLastHuePlus;
            clLastHuePlus := cl;
          end;

        gctHueMinus:
          begin
            xDelta := -i * xStep;
            cl := HslCssShiftHue(FCurrentColor, xDelta);
            bCanAdd := cl <> clLastHueMinus;
            clLastHueMinus := cl;
          end;

      else
        cl := clNone;
        bCanAdd := False;
      end;

      if bCanAdd then clb.AddColor(cl, '');

    end; // for

  finally
    clb.EndUpdate;
    clb.Items.EndUpdate;
  end;

  InitControls;
end;

procedure TFormSimilarColors.GenerateColors_HueMinus;
begin
  GenerateColors(clbHueMinus, gctHueMinus);
end;

procedure TFormSimilarColors.GenerateColors_HuePlus;
begin
  GenerateColors(clbHuePlus, gctHuePlus);
end;

procedure TFormSimilarColors.GenerateColors_SatLess;
begin
  GenerateColors(clbSatLess, gctSatLess);
end;

procedure TFormSimilarColors.GenerateColors_SatMore;
begin
  GenerateColors(clbSatMore, gctSatMore);
end;

procedure TFormSimilarColors.GenerateColors_Darker;
begin
  GenerateColors(clbDarker, gctDarker);
end;

procedure TFormSimilarColors.GenerateColors_Lighter;
begin
  GenerateColors(clbLighter, gctLighter);
end;

procedure TFormSimilarColors.GenerateColors_Mixed;
begin
  cswMixed_Black.SelectedColor := AvgColor(FCurrentColor, clBlack);
  cswMixed_Gray.SelectedColor := AvgColor(FCurrentColor, clGray);
  cswMixed_White.SelectedColor := AvgColor(FCurrentColor, clWhite);
end;

procedure TFormSimilarColors.tmGenerateColorsTimer(Sender: TObject);
begin
  GenerateAllColors;
end;
{$endregion Generate colors}


{$region '                        INI: Load & Save settings                        '}
procedure TFormSimilarColors.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_SIMILAR_COLORS, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteColorSwatchColor(cswCurrentColor);
    TAppHelper.WriteSpinEditIntValue(spedColorCount);
    TAppHelper.WriteSpinEditIntValue(spedStep);
    TAppHelper.WriteRadioButtonGroup('ColorFormat', [rbRgb, rbHtml, rbHslCss, rbHslWin]);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormSimilarColors.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;

  bUpdatingControls := True;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_SIMILAR_COLORS, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;


    TAppHelper.ReadColorSwatchColor(cswCurrentColor);
    cswCurrentColor_2.SelectedColor := cswCurrentColor.SelectedColor;
    TAppHelper.ReadSpinEditIntValue(spedColorCount);
    TAppHelper.ReadSpinEditIntValue(spedStep);
    TAppHelper.ReadRadioButtonGroup('ColorFormat', [rbRgb, rbHtml, rbHslCss, rbHslWin], rbHslCss);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
    bUpdatingControls := False;
  end;
end;

{$endregion INI: Load & Save settings}

procedure TFormSimilarColors.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  InitControls;
end;

procedure TFormSimilarColors.GetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
begin
  if rbHslCss.Checked then ColorStr := ColorToHslCssStr(CurrentColor, True, 3, ' ')
  else if rbHslWin.Checked then ColorStr := ColorToHslWinStr(CurrentColor, False, 3, ' ')
  else if rbRgb.Checked then ColorStr := ColorToRgbIntStr(CurrentColor, 3, '0', ',')
  else if rbHtml.Checked then ColorStr := InsertNumSep(ColorToHtmlColorStr(CurrentColor, '#'), ' ', 2, 2);
end;

procedure TFormSimilarColors.SetCurrentColor(const Value: TColor);
begin
  if FCurrentColor = Value then Exit;
  FCurrentColor := Value;
  bUpdatingControls := True;
  try
    cswCurrentColor_2.SelectedColor := FCurrentColor;
    cswCurrentColor.SelectedColor := FCurrentColor;
  finally
    bUpdatingControls := False;
  end;
  GenerateAllColors;
end;

procedure TFormSimilarColors.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSimilarColors.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSimilarColors.cswCurrentColor_2SelectedColorChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  FCurrentColor := cswCurrentColor_2.SelectedColor;
  cswCurrentColor.SelectedColor := FCurrentColor;
  GenerateAllColors;
end;

procedure TFormSimilarColors.cswCurrentColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormSimilarColors.cswCurrentColor_2BtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := cswCurrentColor.SelectedColor;
  if not EditColor(cl) then Exit;
  //cswCurrentColor.SelectedColor := cl;
  SwitchFormTop(Self);
  CurrentColor := cl;
end;

procedure TFormSimilarColors.cswCurrentColor_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := ColorToHslCssStr(AColor, True, 3, ' ');
end;

procedure TFormSimilarColors.cswCurrentColor_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := ColorToHslWinStr(AColor, False, 3, ' ');
end;

procedure TFormSimilarColors.rbHslCssClick(Sender: TObject);
begin
  clbDarker.Repaint;
  clbLighter.Repaint;
  clbSatMore.Repaint;
  clbSatLess.Repaint;
  clbHuePlus.Repaint;
  clbHueMinus.Repaint;
end;

procedure TFormSimilarColors.spedColorCountValueChanged(Sender: TObject);
begin
  tmGenerateColors.Stop;
  tmGenerateColors.Start;
end;

procedure TFormSimilarColors.spedStepValueChanged(Sender: TObject);
begin
  tmGenerateColors.Stop;
  tmGenerateColors.Start;
end;

procedure TFormSimilarColors.UpdateColorCountLabel;
begin
  lblColors.Caption := lsSimilar.GetString('Colors', 'Colors') + ' (' + itos(clbColors.Count) + ')';
end;

procedure TFormSimilarColors.actSelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitControls;
end;

procedure TFormSimilarColors.actInvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitControls;
end;

procedure TFormSimilarColors.actDeleteSelectedExecute(Sender: TObject);
begin
  clbColors.RemoveSelectedItems;
  InitControls;
end;

end.
