unit FCP.FormColorWheel;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Math, JPL.IniFile,

  // JPPack
  JPP.ColorSwatch, JPP.BasicSpeedButton, JPP.PngButton, JPP.SimplePanel, JPP.ColorComboBox, JPP.Panel, JPP.ColorListBox, JPP.BasicPanel,

  // JPModLib
  JPPegtopTrackBars,

  // GDI+
  GdiPlus, GdiPlusHelpers,

  // SpTBX
  SpTBXEditors, TB2Item, SpTBXItem,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

type
  TFormColorWheel = class(TForm)
    Actions: TActionList;
    actEsc: TAction;
    pnMain: TJppSimplePanel;
    pnColors: TJppSimplePanel;
    pnTriad: TJppSimplePanel;
    imgTriad: TImage;
    pnTetrad: TJppSimplePanel;
    imgTetrad: TImage;
    lblTriadicColorsTitle: TLabel;
    lblTetradicColorsTitle: TLabel;
    pnTriad_Distance: TJppSimplePanel;
    spedDegDist_Triad: TSpTBXSpinEdit;
    lblTriadDist: TLabel;
    chTriadComplementary: TCheckBox;
    cswTriad1: TJppColorSwatchEx;
    cswTriad2: TJppColorSwatchEx;
    pnTetrad_Distance: TJppSimplePanel;
    spedDegDist_Tetrad: TSpTBXSpinEdit;
    lblTetradDist: TLabel;
    cswTetrad1: TJppColorSwatchEx;
    cswTetrad2: TJppColorSwatchEx;
    cswTetrad3: TJppColorSwatchEx;
    pnComplementaryColor: TJppSimplePanel;
    cswComp: TJppColorSwatchEx;
    pnCurrentColor: TJppSimplePanel;
    lblSelectedColorTitle: TLabel;
    cswCurrentColor: TJppColorSwatchEx;
    cswCurrentColor2: TJppColorSwatchEx;
    cswCurrentColor3: TJppColorSwatchEx;
    tbHue: TJPPegtopTrackBar;
    cswTriad1_2: TJppColorSwatchEx;
    cswTriad2_2: TJppColorSwatchEx;
    cswTetrad1_2: TJppColorSwatchEx;
    cswTetrad2_2: TJppColorSwatchEx;
    cswTetrad3_2: TJppColorSwatchEx;
    cswComp_2: TJppColorSwatchEx;
    lblComplementaryColorTitle: TLabel;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    clbColors: TJppColorListBox;
    btnAddToList_TriadicColors: TJppPngButton;
    btnAddToList_TetradicColors: TJppPngButton;
    actAddToList_TriadicColors: TAction;
    actAddToList_TetradicColors: TAction;
    pnButtons: TJppSimplePanel;
    btnClearColors: TJppPngButton;
    btnClose: TJppPngButton;
    lblAddPos: TLabel;
    cbAddPos: TComboBox;
    btnAdd: TJppPngButton;
    actClearColors: TAction;
    actClose: TAction;
    actAdd: TAction;
    imgHue: TImage;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    popColorList: TSpTBXPopupMenu;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem4: TSpTBXItem;
    procedure actAddExecute(Sender: TObject);
    procedure actAddToList_TetradicColorsExecute(Sender: TObject);
    procedure actAddToList_TriadicColorsExecute(Sender: TObject);
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure chTriadComplementaryClick(Sender: TObject);
    procedure cswCompGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColorSelectedColorChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cswCurrentColor2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor3GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColor3GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswCurrentColorBtnChangeColorClick(Sender: TObject);
    procedure cswTetrad1GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad1_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad1_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad2_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad2_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad3GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad3_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTetrad3_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad1GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad1_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad1_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad2_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure cswTriad2_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbHueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure UpdateColorControls;
    procedure PrepareControls;
    procedure SetLang;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure UpdateColorCountLabel;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure spedDegDist_TetradValueChanged(Sender: TObject);
    procedure spedDegDist_TriadValueChanged(Sender: TObject);
    //procedure DrawHueBar(Bmp: TBitmap; BorderColor: TColor = clNone);  // moved to FCP.Shared
    procedure DrawImgHue;
  private
    bUpdatingControls: Boolean;
    FCurrentColor: TColor;
    procedure SetCurrentColor(const Value: TColor);
  public
    property CurrentColor: TColor read FCurrentColor write SetCurrentColor;
  end;




procedure DrawColorWheel(Image: TImage; const CurrentColor: TColor; bTriadic, bTetradic: Boolean; DegShift: integer;
  bDrawAxes: Boolean; bDrawDiagonals, bShowComplementaryColor: Boolean);

var
  FormColorWheel: TFormColorWheel;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;

{$R *.dfm}



procedure TFormColorWheel.FormCreate(Sender: TObject);
begin
  Caption := 'Color Wheel';
  PrepareModuleStrings_ColorWheel;
  PrepareControls;
  LoadSettingsFromIni;
  SetCurrentColor(cswCurrentColor.SelectedColor);
  InitControls;
end;

procedure TFormColorWheel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;


{$region '                   PrepareControls                       '}
procedure TFormColorWheel.PrepareControls;
begin
  pnMain.Align := alClient;
  pnMain.Appearance.BorderStyle := psClear;
  //pnComplementaryColor.Appearance.DrawBottomBorder := False;
  lblColors.Align := alClient;
  clbColors.Align := alClient;
  clbColors.Clear;

  cswCurrentColor.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
  cswCurrentColor.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswCurrentColor.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));

  cswTriad1_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswTriad2_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswTetrad1_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswTetrad2_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswTetrad3_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswComp_2.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));

  cswCurrentColor.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswCurrentColor.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswCurrentColor.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  cswTriad1_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswTriad2_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswTetrad1_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswTetrad2_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswTetrad3_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswComp_2.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  btnAddToList_TriadicColors.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAddToList_TetradicColors.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);

  DrawImgHue;
end;
{$endregion PrepareControls}


{$region '                       SetLang                        '}
procedure TFormColorWheel.SetLang;
var
  x: integer;
begin
  Caption := lsWheel.GetString('Caption', Caption);
  cswCurrentColor.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  cswCurrentColor.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswCurrentColor.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');

  cswTriad1_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswTriad2_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswTetrad1_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswTetrad2_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswTetrad3_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswComp_2.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');

  tbHue.LabelCaption := lsWheel.GetString('Hue', 'Hue') + ': <pos>' + DEG;

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

  actSelectAll.Caption := FormPaletteEditor.actSelectAll.Caption;
  actSelectAll.Hint := FormPaletteEditor.actSelectAll.Hint;
  actInvertSelection.Caption := FormPaletteEditor.actInvertSelection.Caption;
  actInvertSelection.Hint := FormPaletteEditor.actInvertSelection.Hint;
  actDeleteSelected.Caption := FormPaletteEditor.actDeleteSelected.Caption;
  actDeleteSelected.Hint := FormPaletteEditor.actDeleteSelected.Hint;

  InitControls;
end;
{$endregion SetLang}


procedure TFormColorWheel.InitControls;
var
  xCount: integer;
begin
  bUpdatingControls := True;
  try
    xCount := clbColors.Count;
    actClearColors.Enabled := xCount > 0;
    actAdd.Enabled := xCount > 0;
    cbAddPos.Enabled := xCount > 0;
    lblAddPos.Enabled := xCount > 0;

    actSelectAll.Enabled := (clbColors.SelCount <> xCount) and (xCount > 0);
    actInvertSelection.Enabled := xCount > 0;
    actDeleteSelected.Enabled := clbColors.SelCount > 0;

    UpdateColorCountLabel;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormColorWheel.InitCtrls(Sender: TObject);
begin
  InitControls;
end;

procedure TFormColorWheel.actAddToList_TriadicColorsExecute(Sender: TObject);
var
  cl, clBg, clFont: TColor;
  ColorName, sDist, sCurrentColor: string;
begin
  clbColors.BeginUpdate;
  try

    clBg := cswCurrentColor.SelectedColor;
    clFont := GetSimilarColor(clBg, 70, False);
    clBg := GetSimilarColor2(clBg, 70);

    sDist := spedDegDist_Triad.IntValue.ToString;
    sCurrentColor := ColorToRgbIntStr(cswCurrentColor.SelectedColor);

    cl := cswTriad1.SelectedColor;
    ColorName := 'Triadic1 for (' + sCurrentColor + '), dist: ' + sDist;
    clbColors.AddColor(cl, ColorName, clBg, clFont);

    cl := cswTriad2.SelectedColor;
    ColorName := 'Triadic2 for (' + sCurrentColor + '), dist: ' + sDist;
    clbColors.AddColor(cl, ColorName, clBg, clFont);


  finally
    clbColors.ScrollToLast;
    clbColors.EndUpdate;
    InitControls;
  end;
end;

procedure TFormColorWheel.actAddToList_TetradicColorsExecute(Sender: TObject);
var
  cl, clBg, clFont: TColor;
  ColorName, sDist, sCurrentColor: string;
begin
  clbColors.BeginUpdate;
  try

    clBg := cswCurrentColor.SelectedColor;
    clFont := GetSimilarColor(clBg, 70, False);
    clBg := GetSimilarColor2(clBg, 70);

    sDist := spedDegDist_Tetrad.IntValue.ToString;
    sCurrentColor := ColorToRgbIntStr(cswCurrentColor.SelectedColor);

    cl := cswTetrad1.SelectedColor;
    ColorName := 'Tetradic1 for (' + sCurrentColor + '), dist: ' + sDist;
    clbColors.AddColor(cl, ColorName, clBg, clFont);

    cl := cswTetrad2.SelectedColor;
    ColorName := 'Tetradic2 for (' + sCurrentColor + '), dist: ' + sDist;
    clbColors.AddColor(cl, ColorName, clBg, clFont);

    cl := cswTetrad3.SelectedColor;
    ColorName := 'Tetradic3 for (' + sCurrentColor + '), dist: ' + sDist;
    clbColors.AddColor(cl, ColorName, clBg, clFont);

  finally
    clbColors.ScrollToLast;
    clbColors.EndUpdate;
    InitControls;
  end;
end;

procedure TFormColorWheel.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormColorWheel.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  InitControls;
end;

procedure TFormColorWheel.actCloseExecute(Sender: TObject);
begin
  Close;
end;


{$region '                    INI: Load & Save settings                        '}
procedure TFormColorWheel.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_COLOR_WHEEL, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteSpinEditIntValue(spedDegDist_Triad);
    TAppHelper.WriteCheckboxState(chTriadComplementary);
    TAppHelper.WriteSpinEditIntValue(spedDegDist_Tetrad);
    TAppHelper.WriteColorSwatchColor(cswCurrentColor);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormColorWheel.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;

  bUpdatingControls := True;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_COLOR_WHEEL, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadSpinEditIntValue(spedDegDist_Triad);
    TAppHelper.ReadCheckboxState(chTriadComplementary);
    TAppHelper.ReadSpinEditIntValue(spedDegDist_Tetrad);
    TAppHelper.ReadColorSwatchColor(cswCurrentColor);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
    bUpdatingControls := False;
  end;
end;
{$endregion INI: Load & Save settings}


procedure TFormColorWheel.SetCurrentColor(const Value: TColor);
begin
  if FCurrentColor = Value then Exit;
  FCurrentColor := Value;

  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    cswCurrentColor.SelectedColor := FCurrentColor;
    tbHue.Position := GetHueCssValue(FCurrentColor);
  finally
    bUpdatingControls := False;
  end;
  UpdateColorControls;
end;

procedure TFormColorWheel.cswCurrentColorSelectedColorChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbHue.Position := GetHueCssValue(cswCurrentColor.SelectedColor);
  finally
    bUpdatingControls := False;
  end;
  UpdateColorControls;
end;

procedure TFormColorWheel.tbHueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  UpdateColorControls;
end;


{$region '                      GetColorStrValue                   '}
procedure TFormColorWheel.cswCompGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswCurrentColor2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HTML: ' + InsertNumSep(ColorToHtmlColorStr(AColor, '#'), ' ', 2, 2);
end;

procedure TFormColorWheel.cswCurrentColor2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'RGB: ' + ColorToRgbIntStr(AColor, 3, '0', ',');
end;

procedure TFormColorWheel.cswCurrentColor3GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswCurrentColor3GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad1GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswTetrad1_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad1_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswTetrad2_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad2_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad3GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswTetrad3_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswTetrad3_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

procedure TFormColorWheel.cswTriad1GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswTriad1_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswTriad1_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

procedure TFormColorWheel.cswTriad2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormColorWheel.cswTriad2_2GetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL WIN: ' + ColorToHslWinStr(AColor, False, 0, ' ');
end;

procedure TFormColorWheel.cswTriad2_2GetTopColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := 'HSL CSS: ' + ColorToHslCssStr(AColor, True, 0, ' ');
end;

{$endregion GetColorStrValue}


procedure TFormColorWheel.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormColorWheel.chTriadComplementaryClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  UpdateColorControls;
end;

procedure TFormColorWheel.cswCurrentColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := cswCurrentColor.SelectedColor;
  if not EditColor(cl) then Exit;
  cswCurrentColor.SelectedColor := cl;
  SwitchFormTop(Self);
  CurrentColor := cl;
end;

procedure TFormColorWheel.spedDegDist_TetradValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  UpdateColorControls;
end;

procedure TFormColorWheel.spedDegDist_TriadValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  UpdateColorControls;
end;



procedure TFormColorWheel.DrawImgHue;
var
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.PixelFormat := pf24bit;
    Bmp.SetSize(imgHue.Width, imgHue.Height);
    DrawHueBar(Bmp, clGray);
    imgHue.Canvas.Draw(0, 0, Bmp);
  finally
    Bmp.Free;
  end;
end;

procedure TFormColorWheel.UpdateColorCountLabel;
begin
  lblColors.Caption := lsWheel.GetString('Colors', 'Colors') + ' (' + clbColors.Count.toString + ')';
end;


{$region '                     UpdateColorControls                     '}
procedure TFormColorWheel.UpdateColorControls;
var
  DegDist: integer;
begin
  bUpdatingControls := True;
  try

    //CurrentColor := cswCurrentColor.SelectedColor;
    CurrentColor := SetHueCssValue(CurrentColor, tbHue.Position);
    cswCurrentColor.SelectedColor := CurrentColor;
    cswCurrentColor2.SelectedColor := CurrentColor;
    cswCurrentColor3.SelectedColor := CurrentColor;

    cswComp.SelectedColor := ComplementaryColor(CurrentColor);
    cswComp_2.SelectedColor := cswComp.SelectedColor;


    DegDist := Round(spedDegDist_Triad.Value);
    cswTriad1.SelectedColor := TriadicColor1(CurrentColor, DegDist);
    cswTriad1_2.SelectedColor := cswTriad1.SelectedColor;

    cswTriad2.SelectedColor := TriadicColor2(CurrentColor, DegDist);
    cswTriad2_2.SelectedColor := cswTriad2.SelectedColor;


    DegDist := Round(spedDegDist_Tetrad.Value);
    cswTetrad1.SelectedColor := TetradicColor1(CurrentColor, DegDist);
    cswTetrad1_2.SelectedColor := cswTetrad1.SelectedColor;

    cswTetrad2.SelectedColor := TetradicColor2(CurrentColor);
    cswTetrad2_2.SelectedColor := cswTetrad2.SelectedColor;

    cswTetrad3.SelectedColor := TetradicColor3(CurrentColor, DegDist);
    cswTetrad3_2.SelectedColor := cswTetrad3.SelectedColor;

  finally
    bUpdatingControls := False;
  end;

  DrawColorWheel(imgTriad, cswCurrentColor.SelectedColor, True, False, Round(spedDegDist_Triad.Value), True, False, chTriadComplementary.Checked);
  DrawColorWheel(imgTetrad, cswCurrentColor.SelectedColor, False, True, Round(spedDegDist_Tetrad.Value), True, False, False);

end;

{$endregion UpdateColorControls}



{$region '                                   DrawColorWheel                                       '}
procedure DrawColorWheel(Image: TImage; const CurrentColor: TColor; bTriadic, bTetradic: Boolean; DegShift: integer;
  bDrawAxes: Boolean; bDrawDiagonals, bShowComplementaryColor: Boolean);
const
  DEG = '°';
var
  bmp: TBitmap;
  xWidth, xHeight, i, xPies: integer;
  gr: IGPGraphics;
  Pen: IGPPen;
  Brush: IGPBrush;
  Margin, Radius, Hue, Sweep: Single;
  halfW, halfH: Single;
  SelColHue, SelColSat, SelColLum, CompColHue: integer;
  RectF: TGPRectF;
  AngleStart, AngleSweep, DeltaHue: Single;
  cl, clBg, clCurrent, clTriad1, clTriad2, clComplementary, clTetrad1, clTetrad2, clTetrad3: TColor;
  //pt1, pt2: TGPPointF;
  dxr, fi: Single;
  s: string;
  xt, yt, xDegShift: integer;
const
  DashValues: array [0..1] of Single = (4, 4);

  function GPColor(Color: TColor; Alpha: Byte = 255): TGPColor;
  begin
    Result.Initialize(Alpha, GetRValue(Color), GetGValue(Color), GetBValue(Color));
  end;


  {$region '     DrawHueLine     '}
  procedure DrawHueLine(const HueValue: Single; const AColor: TColor; const LineWidth: Single; bDashed: Boolean = False);
  var
    pt1, pt2: TGPPointF;
  begin
    gr.ResetTransform;
    gr.TranslateTransform(halfW, halfH);
    gr.ScaleTransform(1, -1);

    Pen.Color := GPColor(AColor, 220);
    Pen.Width := LineWidth;
    if bDashed then Pen.SetDashPattern(DashValues)
    else Pen.DashStyle := DashStyleSolid;
    pt1.X := 0;
    pt2.Y := 0;

    fi := 90 - HueValue;
    dxr := Radius + 0;
    pt2.X := dxr * CosDeg(fi);
    pt2.Y := dxr * SinDeg(fi);
    gr.DrawLine(Pen, pt1, pt2);
  end;
  {$endregion DrawHueLine}


  {$region '     DrawHuePolygon     '}
  procedure DrawHuePolygon(const Arr: array of Single; const AColor: TColor; const LineWidth: Single);
  var
    Points: array of TGPPointF;
    i: integer;
  begin

    if Length(Arr) = 0 then Exit;
    SetLength(Points, Length(Arr));

    for i := 0 to High(Arr) do
    begin
      fi := 90 - Arr[i];
      Points[i].X := Radius * CosDeg(fi);
      Points[i].Y := Radius * SinDeg(fi);
    end;

    Pen.Color := GPColor(AColor, 255);
    Pen.Width := LineWidth;
    Pen.SetDashPattern(DashValues);

    gr.DrawPolygon(Pen, Points);
  end;
  {$endregion DrawHuePolygon}


  {$region '     DrawHuePoint     '}
  procedure DrawHuePoint(const Hue: Single; AColor: TColor);
//  var
//    FontFamily: IGPFontFamily;
//    Font: IGPFont;
  var
    pt1: TGPPointF;
  begin
    gr.ResetTransform;
    gr.TranslateTransform(halfW, halfH);
    gr.ScaleTransform(1, -1);

    // ------ punkt œrodkowy okrêgu ---------------
    fi := 90 - Hue;
    pt1.X := Radius * CosDeg(fi);
    pt1.Y := Radius * SinDeg(fi);

    dxr := 4;
    RectF.X := pt1.X - dxr;
    RectF.Y := pt1.Y - dxr;
    RectF.Width := dxr * 2;
    RectF.Height := dxr * 2;

    Brush := nil;
    Brush := TGPSolidBrush.Create(GPColor(AColor, 140));
    Pen.Width := 2;
    Pen.Color := GPColor(clBlack, 255);
    Pen.DashStyle := DashStyleSolid;
    gr.DrawEllipse(Pen, RectF);
    gr.FillEllipse(Brush, RectF);

  end;
  {$endregion DrawHuePoint}


begin
  bmp := TBitmap.Create;
  try

    xWidth := Image.Width;
    xHeight := Image.Height;
    bmp.SetSize(xWidth, xHeight);
    bmp.PixelFormat := pf32bit;
    halfW := xWidth / 2;
    halfH := xHeight / 2;
    Margin := 38;

    xPies := 360;
    clCurrent := CurrentColor;
    clComplementary := ComplementaryColor(clCurrent);
    clBg := clWhite; //ColorSetPercentPale(clCurrent, 80);



    gr := TGPGraphics.Create(bmp.Canvas.Handle);
    gr.SmoothingMode := SmoothingModeAntiAlias;
    gr.ResetTransform;


    // ------------- background ----------------
    RectF.InitializeFromLTRB(0, 0, xWidth, xHeight);
    Brush := TGPSolidBrush.Create(GPColor(clBg));
    gr.FillRectangle(Brush, RectF);

    // ------------ frame -------------
    RectF.Width := RectF.Width - 1;
    RectF.Height := RectF.Height - 1;
    Pen := TGPPen.Create(GPColor($00A8A8A8), 1);
    //gr.DrawRectangle(Pen, RectF);



    // ----------- okr¹g --------------
    Pen.DashStyle := DashStyleSolid;
    Pen.Color := GPColor(clGray);
    Pen.Width := 1;
    RectF.InitializeFromLTRB(Margin, Margin, xWidth - Margin, xHeight - Margin);
    gr.DrawEllipse(Pen, RectF);




    // ----------- transformacja uk³adu wspó³rzêdnych -------------
    gr.TranslateTransform(halfW, halfH); // przesuniêcie pocz¹tku uk³adu wspó³rzêdnych na œrodek
    gr.RotateTransform(-90); // 0 stopni u góry



    // --------------------- Pies ---------------------------
    gr.SmoothingMode := SmoothingModeNone;
    Radius := halfW - Margin;
    DeltaHue := 360 / xPies;
    Sweep := DeltaHue;

    RectF.X := -Radius;
    RectF.Y := -Radius;
    RectF.Width := Radius * 2;
    RectF.Height := RectF.Width;

    SetHslCssMaxValues;
    ColortoHSLRange(clCurrent, SelColHue, SelColSat, SelColLum);
    CompColHue := GetHueCssValue(clComplementary);

    for i := 0 to xPies - 1 do
    begin
      Hue := i * DeltaHue;
      cl := HslCssToColor(Hue, SelColSat, SelColLum);
      Brush := nil;
      Brush := TGPSolidBrush.Create(GPColor(cl, 255));
      AngleStart := Hue;   // k¹t pocz¹tkowy
      AngleSweep := Sweep; // rozpiêtoœæ k¹towa
      gr.FillPie(Brush, RectF, AngleStart, AngleSweep);
    end;



    gr.SmoothingMode := SmoothingModeAntiAlias;


    // ------------------ inner circle ------------------------
    Brush := nil;
    Brush := TGPSolidBrush.Create(GPColor(clWhite, 120));
    Pen.Color := GPColor(clGray, 100);
    dxr := Radius - (halfW / 2);
    RectF.InitializeFromLTRB(-dxr, dxr, dxr, -dxr);
    gr.FillEllipse(Brush, RectF);
    gr.DrawEllipse(Pen, RectF);



    gr.ResetTransform;
    Pen.SetDashPattern(DashValues);

    Pen.Color := GPColor(clSilver, 150);
    // ---------------- osie ------------------
    if bDrawAxes then
    begin
      gr.DrawLine(Pen, 0, xHeight / 2, xWidth, xHeight / 2); // X axis
      gr.DrawLine(Pen, xWidth / 2, xHeight, xWidth / 2, 0);  // Y axis
    end;

    // ------------ przek¹tne -------------
    if bDrawDiagonals then
    begin
      gr.DrawLine(Pen, 0, 0, xWidth, xHeight);
      gr.DrawLine(Pen, xWidth, 0, 0, xHeight);
    end;



    gr.ResetTransform;
    gr.TranslateTransform(halfW, halfH);
    gr.ScaleTransform(1, -1);

    xDegShift := DegShift;

    if bTriadic then
    begin
      GetTriadicColors(clCurrent, clTriad1, clTriad2, xDegShift);

      DrawHueLine(SelColHue, InvertColor(clCurrent), 3);
      DrawHueLine(SelColHue + 180 - xDegShift, InvertColor(clTriad1), 1, True);
      DrawHueLine(SelColHue + 180 + xDegShift, InvertColor(clTriad2), 1, True);

      DrawHuePolygon([SelColHue, SelColHue + 180 - xDegShift, SelColHue + 180 + xDegShift], RGB3(22), 1.4);

      DrawHuePoint(SelColHue, clCurrent);
      DrawHuePoint(SelColHue + 180 - xDegShift, clTriad1);
      DrawHuePoint(SelColHue + 180 + xDegShift, clTriad2);
      if bShowComplementaryColor then DrawHuePoint(CompColHue, clComplementary);
    end;

    if bTetradic then
    begin
      GetTetradicColors(clCurrent, clTetrad1, clTetrad2, clTetrad3, xDegShift);

      DrawHueLine(SelColHue, InvertColor(clCurrent), 3);
      DrawHueLine(SelColHue + xDegShift, InvertColor(clTetrad1), 1, True);
      DrawHueLine(SelColHue + 180, InvertColor(clTetrad2), 1, True);
      DrawHueLine(SelColHue + 180 + xDegShift, InvertColor(clTetrad3), 1, True);

      DrawHuePolygon([SelColHue, SelColHue + xDegShift, SelColHue + 180, SelColHue + 180 + xDegShift], RGB3(22), 1.4);

      DrawHuePoint(SelColHue, clCurrent);
      DrawHuePoint(SelColHue + xDegShift, clTetrad1);
      DrawHuePoint(SelColHue + 180, clTetrad2);
      DrawHuePoint(SelColHue + 180 + xDegShift, clTetrad3);

    end;

    gr.ResetTransform;


    // -----------------------------------------------------------------------------

    with bmp.Canvas do
    begin
      Font.Color := clBlack;
      Font.Name := 'Tahoma';
      Font.Size := 8;

      s := '0' + DEG;
      xt := Round(halfW) - (TextWidth(s) div 2);
      yt := 5;
      TextOut(xt, yt, s);

      s := '90' + DEG;
      xt := Image.Width - TextWidth(s) - 4;
      yt := Round(halfH) - (TextHeight(s) div 2);
      TextOut(xt, yt, s);

      s := '180' + DEG;
      xt := Round(halfW) - (TextWidth(s) div 2);
      yt := Image.Height - TextHeight(s) - 4;
      TextOut(xt, yt, s);

      s := '270' + DEG;
      xt := 4;
      yt := Round(halfH) - (TextHeight(s) div 2);
      TextOut(xt, yt, s);
    end;


    Image.Picture.Assign(bmp);

  finally
    bmp.Free;
  end;

end;

{$endregion DrawColorWheel}


procedure TFormColorWheel.actSelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitControls;
end;

procedure TFormColorWheel.actInvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitControls;
end;

procedure TFormColorWheel.actDeleteSelectedExecute(Sender: TObject);
begin
  clbColors.RemoveSelectedItems;
  InitControls;
end;

end.
