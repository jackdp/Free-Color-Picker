unit FCP.FormRandomColors;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, // System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ActnList, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Math, JPL.IniFile,

  // JPPack
  JPP.SimplePanel, JPP.ColorListBox, JPP.BasicPanel, JPP.PngButton, JPP.BasicSpeedButton,

  // JPModLib
  JPPegtopTrackBars,

  // SpTBX
  SpTBXEditors, TB2Item, SpTBXItem, SpTBXControls, TB2Dock, TB2Toolbar,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings, FCP.Bitmap;

type

  {$region '     TFormRandomColors     '}
  TFormRandomColors = class(TForm)
    pnBottom: TJppSimplePanel;
    pnRight: TJppSimplePanel;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    clbColors: TJppColorListBox;
    btnClearColors: TJppPngButton;
    btnClose: TJppPngButton;
    btnAdd: TJppPngButton;
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    actClearColors: TAction;
    actAdd: TAction;
    pnRanges: TJppSimplePanel;
    rbRgb: TRadioButton;
    tbRange_RgbRed: TJPPegtopRangeBar;
    lblRange_RgbRed: TLabel;
    tbRange_RgbGreen: TJPPegtopRangeBar;
    lblRange_RgbGreen: TLabel;
    tbRange_RgbBlue: TJPPegtopRangeBar;
    lblRange_RgbBlue: TLabel;
    rbHslWin: TRadioButton;
    actGenerateRandomColors: TAction;
    btnGenerateRandomColors: TJppPngButton;
    tbRange_HslWin_Hue: TJPPegtopRangeBar;
    shRgb: TShape;
    shHslWin: TShape;
    lblRange_HslWin_Hue: TLabel;
    lblRange_HslWin_Sat: TLabel;
    tbRange_HslWin_Sat: TJPPegtopRangeBar;
    tbRange_HslWin_Lum: TJPPegtopRangeBar;
    lblRange_HslWin_Lum: TLabel;
    shHslCss: TShape;
    rbHslCss: TRadioButton;
    tbRange_HslCss_Hue: TJPPegtopRangeBar;
    tbRange_HslCss_Sat: TJPPegtopRangeBar;
    tbRange_HslCss_Lum: TJPPegtopRangeBar;
    lblRange_HslCss_Hue: TLabel;
    lblRange_HslCss_Sat: TLabel;
    lblRange_HslCss_Lum: TLabel;
    cbAddPos: TComboBox;
    lblAddPos: TLabel;
    spedColorCount: TSpTBXSpinEdit;
    lblColorCount: TLabel;
    imgHue_Css: TImage;
    imgHue_Win: TImage;
    popPresets_HslCss_Pastels: TSpTBXPopupMenu;
    actPreset_HslCss_Pastels_BlueLight: TAction;
    SpTBXItem1: TSpTBXItem;
    btnPresets_HslCss_Pastels: TSpTBXButton;
    actPreset_HslCss_Pastels_RedLight: TAction;
    SpTBXItem2: TSpTBXItem;
    actPreset_HslCss_Pastels_GreenLight: TAction;
    SpTBXItem3: TSpTBXItem;
    popPresets_HslCss_Intensive: TSpTBXPopupMenu;
    btnPresets_HslCss_Intensive: TSpTBXButton;
    actPreset_HslCss_Intensive_Red: TAction;
    SpTBXItem4: TSpTBXItem;
    SpTBXItem5: TSpTBXItem;
    SpTBXItem6: TSpTBXItem;
    actPreset_HslCss_Intensive_Green: TAction;
    actPreset_HslCss_Intensive_Blue: TAction;
    actPreset_HslCss_Pastels_BlueDark: TAction;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem7: TSpTBXItem;
    SpTBXItem8: TSpTBXItem;
    SpTBXItem9: TSpTBXItem;
    actPreset_HslCss_Pastels_RedDark: TAction;
    actPreset_HslCss_Pastels_GreenDark: TAction;
    sbtnLockUnlockRange_HslCss_Hue: TJppBasicSpeedButton;
    actLockUnlockRange_HslCss_Hue: TAction;
    actPreset_HslCss_Pastels_YellowLight: TAction;
    SpTBXItem10: TSpTBXItem;
    SpTBXItem11: TSpTBXItem;
    SpTBXItem12: TSpTBXItem;
    SpTBXItem13: TSpTBXItem;
    actPreset_HslCss_Pastels_CyanLight: TAction;
    actPreset_HslCss_Pastels_VioletLight: TAction;
    actPreset_HslCss_Pastels_PinkLight: TAction;
    actPreset_HslCss_Pastels_YellowDark: TAction;
    SpTBXItem14: TSpTBXItem;
    SpTBXItem15: TSpTBXItem;
    SpTBXItem16: TSpTBXItem;
    SpTBXItem17: TSpTBXItem;
    actPreset_HslCss_Pastels_CyanDark: TAction;
    actPreset_HslCss_Pastels_VioletDark: TAction;
    actPreset_HslCss_Pastels_PinkDark: TAction;
    actLockUnlockRange_HslCss_Sat: TAction;
    actLockUnlockRange_HslCss_Lum: TAction;
    sbtnLockUnlockRange_HslCss_Sat: TJppBasicSpeedButton;
    sbtnLockUnlockRange_HslCss_Lum: TJppBasicSpeedButton;
    actPreset_HslCss_Intensive_Yellow: TAction;
    SpTBXItem18: TSpTBXItem;
    SpTBXItem19: TSpTBXItem;
    SpTBXItem20: TSpTBXItem;
    SpTBXItem21: TSpTBXItem;
    actPreset_HslCss_Intensive_Cyan: TAction;
    actPreset_HslCss_Intensive_Violet: TAction;
    actPreset_HslCss_Intensive_Pink: TAction;
    sbtnLockUnlockRange_HslWin_Hue: TJppBasicSpeedButton;
    sbtnLockUnlockRange_HslWin_Sat: TJppBasicSpeedButton;
    sbtnLockUnlockRange_HslWin_Lum: TJppBasicSpeedButton;
    actLockUnlockRange_HslWin_Hue: TAction;
    actLockUnlockRange_HslWin_Sat: TAction;
    actLockUnlockRange_HslWin_Lum: TAction;
    btnPresets_HslCss_Dark: TSpTBXButton;
    popPresets_HslCss_Dark: TSpTBXPopupMenu;
    actPreset_HslCss_Dark_Red: TAction;
    SpTBXItem22: TSpTBXItem;
    SpTBXItem23: TSpTBXItem;
    SpTBXItem24: TSpTBXItem;
    actPreset_HslCss_Dark_Green: TAction;
    actPreset_HslCss_Dark_Blue: TAction;
    actPreset_HslCss_Dark_Yellow: TAction;
    SpTBXItem25: TSpTBXItem;
    SpTBXItem26: TSpTBXItem;
    SpTBXItem27: TSpTBXItem;
    SpTBXItem28: TSpTBXItem;
    actPreset_HslCss_Dark_Cyan: TAction;
    actPreset_HslCss_Dark_Violet: TAction;
    actPreset_HslCss_Dark_Pink: TAction;
    btnPresets_HslCss_Light: TSpTBXButton;
    popPresets_HslCss_Light: TSpTBXPopupMenu;
    actPreset_HslCss_Light_Red: TAction;
    SpTBXItem29: TSpTBXItem;
    SpTBXItem30: TSpTBXItem;
    SpTBXItem31: TSpTBXItem;
    SpTBXItem32: TSpTBXItem;
    SpTBXItem33: TSpTBXItem;
    SpTBXItem34: TSpTBXItem;
    SpTBXItem35: TSpTBXItem;
    actPreset_HslCss_Light_Green: TAction;
    actPreset_HslCss_Light_Blue: TAction;
    actPreset_HslCss_Light_Yellow: TAction;
    actPreset_HslCss_Light_Cyan: TAction;
    actPreset_HslCss_Light_Violet: TAction;
    actPreset_HslCss_Light_Pink: TAction;
    btnPresets_HslCss_Grayscale: TSpTBXButton;
    popPresets_HslCss_Grayscale: TSpTBXPopupMenu;
    actPreset_HslCss_Grayscale_VeryDark: TAction;
    SpTBXItem36: TSpTBXItem;
    SpTBXItem37: TSpTBXItem;
    SpTBXItem38: TSpTBXItem;
    SpTBXItem39: TSpTBXItem;
    SpTBXItem40: TSpTBXItem;
    actPreset_HslCss_Grayscale_Dark: TAction;
    actPreset_HslCss_Grayscale_Medium: TAction;
    actPreset_HslCss_Grayscale_Light: TAction;
    actPreset_HslCss_Grayscale_VeryLight: TAction;
    sbtnLockUnlockRange_Rgb_Red: TJppBasicSpeedButton;
    actLockUnlockRange_Rgb_Red: TAction;
    actLockUnlockRange_Rgb_Green: TAction;
    actLockUnlockRange_Rgb_Blue: TAction;
    sbtnLockUnlockRange_Rgb_Green: TJppBasicSpeedButton;
    sbtnLockUnlockRange_Rgb_Blue: TJppBasicSpeedButton;
    popPresets_Rgb: TSpTBXPopupMenu;
    btnPresets_Rgb: TSpTBXButton;
    actPreset_Rgb_VeryDark: TAction;
    SpTBXItem41: TSpTBXItem;
    SpTBXItem42: TSpTBXItem;
    SpTBXItem43: TSpTBXItem;
    SpTBXItem44: TSpTBXItem;
    SpTBXItem45: TSpTBXItem;
    actPreset_Rgb_Dark: TAction;
    actPreset_Rgb_Medium: TAction;
    actPreset_Rgb_Light: TAction;
    actPreset_Rgb_VeryLight: TAction;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    popColorList: TSpTBXPopupMenu;
    SpTBXItem46: TSpTBXItem;
    SpTBXItem47: TSpTBXItem;
    SpTBXItem48: TSpTBXItem;
    SpTBXItem49: TSpTBXItem;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    dockMenu: TSpTBXDock;
    tbMain: TSpTBXToolbar;
    SpTBXItem50: TSpTBXItem;
    SpTBXItem51: TSpTBXItem;
    SpTBXItem52: TSpTBXItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    SpTBXItem53: TSpTBXItem;
    shLine: TShape;
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actGenerateRandomColorsExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_BlueExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_CyanExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_GreenExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_PinkExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_RedExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_VioletExecute(Sender: TObject);
    procedure actPreset_HslCss_Dark_YellowExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_GreenExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_BlueExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_CyanExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_PinkExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_RedExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_VioletExecute(Sender: TObject);
    procedure actPreset_HslCss_Intensive_YellowExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_BlueDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_BlueLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_CyanDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_CyanLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_GreenDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_GreenLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_PinkDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_PinkLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_RedDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_RedLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_VioletDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_VioletLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_YellowDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Pastels_YellowLightExecute(Sender: TObject);
    procedure actLockUnlockRange_HslCss_HueExecute(Sender: TObject);
    procedure actLockUnlockRange_HslCss_LumExecute(Sender: TObject);
    procedure actLockUnlockRange_HslCss_SatExecute(Sender: TObject);
    procedure actLockUnlockRange_HslWin_HueExecute(Sender: TObject);
    procedure actLockUnlockRange_HslWin_LumExecute(Sender: TObject);
    procedure actLockUnlockRange_HslWin_SatExecute(Sender: TObject);
    procedure actLockUnlockRange_Rgb_BlueExecute(Sender: TObject);
    procedure actLockUnlockRange_Rgb_GreenExecute(Sender: TObject);
    procedure actLockUnlockRange_Rgb_RedExecute(Sender: TObject);
    procedure actPreset_HslCss_Grayscale_DarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Grayscale_LightExecute(Sender: TObject);
    procedure actPreset_HslCss_Grayscale_MediumExecute(Sender: TObject);
    procedure actPreset_HslCss_Grayscale_VeryDarkExecute(Sender: TObject);
    procedure actPreset_HslCss_Grayscale_VeryLightExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_BlueExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_CyanExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_GreenExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_PinkExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_RedExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_VioletExecute(Sender: TObject);
    procedure actPreset_HslCss_Light_YellowExecute(Sender: TObject);
    procedure actPreset_Rgb_DarkExecute(Sender: TObject);
    procedure actPreset_Rgb_LightExecute(Sender: TObject);
    procedure actPreset_Rgb_MediumExecute(Sender: TObject);
    procedure actPreset_Rgb_VeryDarkExecute(Sender: TObject);
    procedure actPreset_Rgb_VeryLightExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure clbColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure InitColorListActions;
    procedure InitColorListActns(Sender: TObject);
    procedure UpdateColorCountLabel;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure DrawImgHue_Css(Sat: integer = -1; Lum: integer = -1);
    procedure DrawImgHue_Win(Sat: integer = -1; Lum: integer = -1);
    procedure tbRange_HslCss_HueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure tbRange_HslWin_HueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure SetRangeBarMinMax(RangeBar: TJPPegtopRangeBar; const PosMin, PosMax: integer);
  private
    bUpdatingControls: Boolean;
  end;
  {$endregion TFormRandomColors}


var
  FormRandomColors: TFormRandomColors;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;

{$R *.dfm}



{$region '                     Create & Close                       '}
procedure TFormRandomColors.FormCreate(Sender: TObject);
begin
  Caption := 'Random Colors';
  PrepareControls;
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  Constraints.MaxWidth := Width;
  PrepareModuleStrings_RandomColors;
  LoadSettingsFromIni;
  DrawImgHue_Css;
  DrawImgHue_Win;
  InitControls;
  SetLang;
end;

procedure TFormRandomColors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;
{$endregion Create & Close}


{$region '                       PrepareControls                     '}
procedure TFormRandomColors.PrepareControls;
begin
  pnRanges.Appearance.DrawBottomBorder := False;
  clbColors.Align := alClient;
  clbColors.Clear;
  lblColors.Align := alClient;
  pnRanges.Align := alClient;
  btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
  btnGenerateRandomColors.Appearance.Assign(FormMain.btnT1.Appearance);

  sbtnLockUnlockRange_HslCss_Hue.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_HslCss_Sat.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_HslCss_Lum.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  sbtnLockUnlockRange_HslWin_Hue.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_HslWin_Sat.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_HslWin_Lum.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  sbtnLockUnlockRange_Rgb_Red.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_Rgb_Green.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  sbtnLockUnlockRange_Rgb_Blue.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  DrawImgHue_Css;
  DrawImgHue_Win;

 tbMain.FullSize := True;
 shLine.Height := 1;
end;

{$endregion PrepareControls}


{$region '                           InitControls                             '}


procedure TFormRandomColors.InitControls;
var
  b: Boolean;
  Sat: integer;
begin
  bUpdatingControls := True;
  try

    tbRange_RgbRed.Enabled := False;
    tbRange_RgbGreen.Enabled := False;
    tbRange_RgbBlue.Enabled := False;

    b := rbRgb.Checked;
    tbRange_RgbRed.Enabled := b;
    tbRange_RgbGreen.Enabled := b;
    tbRange_RgbBlue.Enabled := b;
    lblRange_RgbRed.Enabled := tbRange_RgbRed.Enabled;
    lblRange_RgbGreen.Enabled := tbRange_RgbGreen.Enabled;
    lblRange_RgbBlue.Enabled := tbRange_RgbBlue.Enabled;
    sbtnLockUnlockRange_Rgb_Red.Enabled := b;
    sbtnLockUnlockRange_Rgb_Green.Enabled := b;
    sbtnLockUnlockRange_Rgb_Blue.Enabled := b;
    btnPresets_Rgb.Enabled := b;

    b := rbHslWin.Checked;
    tbRange_HslWin_Hue.Enabled := b;
    tbRange_HslWin_Sat.Enabled := b;
    tbRange_HslWin_Lum.Enabled := b;
    lblRange_HslWin_Hue.Enabled := tbRange_HslWin_Hue.Enabled;
    lblRange_HslWin_Sat.Enabled := tbRange_HslWin_Sat.Enabled;
    lblRange_HslWin_Lum.Enabled := tbRange_HslWin_Lum.Enabled;
    actLockUnlockRange_HslWin_Hue.Enabled := b;
    actLockUnlockRange_HslWin_Sat.Enabled := b;
    actLockUnlockRange_HslWin_Lum.Enabled := b;
    if b then
    begin
      if tbRange_HslCss_Hue.PositionMin = tbRange_HslCss_Hue.PositionMax then Sat := tbRange_HslCss_Hue.PositionMin
      else Sat := 30;
      DrawImgHue_Css(Sat, 80);
      DrawImgHue_Win;
    end;


    b := rbHslCss.Checked;
    tbRange_HslCss_Hue.Enabled := b;
    tbRange_HslCss_Sat.Enabled := b;
    tbRange_HslCss_Lum.Enabled := b;
    lblRange_HslCss_Hue.Enabled := tbRange_HslCss_Hue.Enabled;
    lblRange_HslCss_Sat.Enabled := tbRange_HslCss_Sat.Enabled;
    lblRange_HslCss_Lum.Enabled := tbRange_HslCss_Lum.Enabled;
    btnPresets_HslCss_Pastels.Enabled := b;
    btnPresets_HslCss_Intensive.Enabled := b;
    btnPresets_HslCss_Dark.Enabled := b;
    btnPresets_HslCss_Light.Enabled := b;
    btnPresets_HslCss_Grayscale.Enabled := b;
    actLockUnlockRange_HslCss_Hue.Enabled := b;
    actLockUnlockRange_HslCss_Sat.Enabled := b;
    actLockUnlockRange_HslCss_Lum.Enabled := b;
    if b then
    begin
      DrawImgHue_Css;
      if tbRange_HslWin_Hue.PositionMin = tbRange_HslWin_Hue.PositionMax then Sat := tbRange_HslWin_Hue.PositionMin
      else Sat := 80;
      DrawImgHue_Win(Sat, 200);
    end;

    InitColorListActions;

    clbColors.Repaint;
    UpdateColorCountLabel;

  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormRandomColors.InitColorListActions;
var
  xCount: integer;
begin
  xCount := clbColors.Count;
  actClearColors.Enabled := xCount > 0;
  actAdd.Enabled := xCount > 0;
  cbAddPos.Enabled := xCount > 0;
  lblAddPos.Enabled := xCount > 0;

  actSelectAll.Enabled := (clbColors.SelCount <> xCount) and (xCount > 0);
  actInvertSelection.Enabled := xCount > 0;
  actDeleteSelected.Enabled := clbColors.SelCount > 0;
end;

procedure TFormRandomColors.InitColorListActns(Sender: TObject);
begin
  InitColorListActions;
end;

procedure TFormRandomColors.InitCtrls(Sender: TObject);
begin
  InitControls;
end;
{$endregion InitControls}


{$region '                      SetLang                       '}
procedure TFormRandomColors.SetLang;
var
  x: integer;
  s: string;
begin
  Caption := lsRandom.GetString('Caption', Caption);

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

  tbRange_RgbRed.LabelCaption := lsMain.GetString('RGB_Red', 'Red') + ': <min> - <max>';
  tbRange_RgbGreen.LabelCaption := lsMain.GetString('RGB_Green', 'Green') + ': <min> - <max>';
  tbRange_RgbBlue.LabelCaption := lsMain.GetString('RGB_Blue', 'Blue') + ': <min> - <max>';

  tbRange_HslWin_Hue.LabelCaption := lsMain.GetString('HSL_Hue', 'Hue') + ': <min> - <max>';
  tbRange_HslWin_Sat.LabelCaption := lsMain.GetString('HSL_Sat', 'Saturation') + ': <min> - <max>';
  tbRange_HslWin_Lum.LabelCaption := lsMain.GetString('HSL_Lum', 'Luminance') + ': <min> - <max>';

  tbRange_HslCss_Hue.LabelCaption := lsMain.GetString('HSL_Hue', 'Hue') + ': <min> - <max>';
  tbRange_HslCss_Sat.LabelCaption := lsMain.GetString('HSL_Sat', 'Saturation') + ': <min> - <max>';
  tbRange_HslCss_Lum.LabelCaption := lsMain.GetString('HSL_Lum', 'Luminance') + ': <min> - <max>';

  s := lsRandom.GetString('LockUnlockRange', 'Lock / unlock range');
  actLockUnlockRange_Rgb_Red.Hint := s;
  actLockUnlockRange_Rgb_Green.Hint := s;
  actLockUnlockRange_Rgb_Blue.Hint := s;
  actLockUnlockRange_HslCss_Hue.Hint := s;
  actLockUnlockRange_HslCss_Sat.Hint := s;
  actLockUnlockRange_HslCss_Lum.Hint := s;
  actLockUnlockRange_HslWin_Hue.Hint := s;
  actLockUnlockRange_HslWin_Sat.Hint := s;
  actLockUnlockRange_HslWin_Lum.Hint := s;

  actSelectAll.Caption := FormPaletteEditor.actSelectAll.Caption;
  actSelectAll.Hint := FormPaletteEditor.actSelectAll.Hint;
  actInvertSelection.Caption := FormPaletteEditor.actInvertSelection.Caption;
  actInvertSelection.Hint := FormPaletteEditor.actInvertSelection.Hint;
  actDeleteSelected.Caption := FormPaletteEditor.actDeleteSelected.Caption;
  actDeleteSelected.Hint := FormPaletteEditor.actDeleteSelected.Hint;


  InitControls;
end;


{$endregion SetLang}


{$region '                           INI: Load & Save settings                             '}

procedure TFormRandomColors.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_RANDOM_COLORS, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteRangeBarPos(tbRange_RgbRed);
    TAppHelper.WriteRangeBarPos(tbRange_RgbGreen);
    TAppHelper.WriteRangeBarPos(tbRange_RgbBlue);

    TAppHelper.WriteRangeBarPos(tbRange_HslWin_Hue);
    TAppHelper.WriteRangeBarPos(tbRange_HslWin_Sat);
    TAppHelper.WriteRangeBarPos(tbRange_HslWin_Lum);

    TAppHelper.WriteRangeBarPos(tbRange_HslCss_Hue);
    TAppHelper.WriteRangeBarPos(tbRange_HslCss_Sat);
    TAppHelper.WriteRangeBarPos(tbRange_HslCss_Lum);

    TAppHelper.WriteSpinEditIntValue(spedColorCount);

    TAppHelper.WriteRadioButtonGroup('ColorMode', [rbRgb, rbHslWin, rbHslCss]);

    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Section.WriteBool('tbRange_RgbRed_Locked', tbRange_RgbRed.Constrained);
    Section.WriteBool('tbRange_RgbGreen_Locked', tbRange_RgbGreen.Constrained);
    Section.WriteBool('tbRange_RgbBlue_Locked', tbRange_RgbBlue.Constrained);

    Section.WriteBool('tbRange_HslWin_Hue_Locked', tbRange_HslWin_Hue.Constrained);
    Section.WriteBool('tbRange_HslWin_Sat_Locked', tbRange_HslWin_Sat.Constrained);
    Section.WriteBool('tbRange_HslWin_Lum_Locked', tbRange_HslWin_Lum.Constrained);

    Section.WriteBool('tbRange_HslCss_Hue_Locked', tbRange_HslCss_Hue.Constrained);
    Section.WriteBool('tbRange_HslCss_Sat_Locked', tbRange_HslCss_Sat.Constrained);
    Section.WriteBool('tbRange_HslCss_Lum_Locked', tbRange_HslCss_Lum.Constrained);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;


procedure TFormRandomColors.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  bUpdatingControls := True;
  try

    Section := Ini.GetSection(INI_SECTION_RANDOM_COLORS, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadRangeBarPos(tbRange_RgbRed);
    TAppHelper.ReadRangeBarPos(tbRange_RgbGreen);
    TAppHelper.ReadRangeBarPos(tbRange_RgbBlue);

    TAppHelper.ReadRangeBarPos(tbRange_HslWin_Hue);
    TAppHelper.ReadRangeBarPos(tbRange_HslWin_Sat);
    TAppHelper.ReadRangeBarPos(tbRange_HslWin_Lum);

    TAppHelper.ReadRangeBarPos(tbRange_HslCss_Hue);
    TAppHelper.ReadRangeBarPos(tbRange_HslCss_Sat);
    TAppHelper.ReadRangeBarPos(tbRange_HslCss_Lum);

    TAppHelper.ReadSpinEditIntValue(spedColorCount);

    TAppHelper.ReadRadioButtonGroup('ColorMode', [rbRgb, rbHslWin, rbHslCss], rbHslCss);

    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

    tbRange_RgbRed.Constrained := Section.ReadBool('tbRange_RgbRed_Locked', False);
    tbRange_RgbGreen.Constrained := Section.ReadBool('tbRange_RgbGreen_Locked', False);
    tbRange_RgbBlue.Constrained := Section.ReadBool('tbRange_RgbBlue_Locked', False);

    tbRange_HslWin_Hue.Constrained := Section.ReadBool('tbRange_HslWin_Hue_Locked', False);
    tbRange_HslWin_Sat.Constrained := Section.ReadBool('tbRange_HslWin_Sat_Locked', False);
    tbRange_HslWin_Lum.Constrained := Section.ReadBool('tbRange_HslWin_Lum_Locked', False);

    tbRange_HslCss_Hue.Constrained := Section.ReadBool('tbRange_HslCss_Hue_Locked', False);
    tbRange_HslCss_Sat.Constrained := Section.ReadBool('tbRange_HslCss_Sat_Locked', False);
    tbRange_HslCss_Lum.Constrained := Section.ReadBool('tbRange_HslCss_Lum_Locked', False);

  finally
    bUpdatingControls := False;
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

{$endregion INI: Load & Save settings}


{$region '                           GenerateRandomColors                               '}
procedure TFormRandomColors.actGenerateRandomColorsExecute(Sender: TObject);
var
  i, xn: integer;
  cl, clBg, clFont: TColor;
  Red, Green, Blue, RedMin, RedMax, GreenMin, GreenMax, BlueMin, BlueMax: Byte;
  Hue, Sat, Lum, HueMin, HueMax, SatMin, SatMax, LumMin, LumMax: integer;
  ColorName, Sep: string;
begin
  Randomize;
  clbColors.BeginUpdate;
  try

    xn := spedColorCount.IntValue;
    Sep := ', ';

    if rbRgb.Checked then
    begin

      RedMin := tbRange_RgbRed.PositionMin;
      RedMax := tbRange_RgbRed.PositionMax;
      GreenMin := tbRange_RgbGreen.PositionMin;
      GreenMax := tbRange_RgbGreen.PositionMax;
      BlueMin := tbRange_RgbBlue.PositionMin;
      BlueMax := tbRange_RgbBlue.PositionMax;

      clBg := RGB( RandomByte(RedMin, RedMax, RedMin), RandomByte(GreenMin, GreenMax, GreenMin), RandomByte(BlueMin, BlueMax, BlueMin) );
      clFont := GetSimilarColor(clBg, 70, False);
      clBg := GetSimilarColor2(clBg, 70);

      for i := 1 to xn do
      begin
        Red := RandomByte(RedMin, RedMax, RedMin);
        Green := RandomByte(GreenMin, GreenMax, GreenMin);
        Blue := RandomByte(BlueMin, BlueMax, BlueMin);
        cl := RGB(Red, Green, Blue);
        ColorName :=
          'Random RGB: ' +
          itos(RedMin) + '-' + itos(RedMax) + Sep +
          itos(GreenMin) + '-' + itos(GreenMax) + Sep +
          itos(BlueMin) + '-' + itos(BlueMax);
        clbColors.AddColor(cl, ColorName, clBg, clFont);
      end;



    end

    else if rbHslWin.Checked then
    begin

      HueMin := tbRange_HslWin_Hue.PositionMin;
      HueMax := tbRange_HslWin_Hue.PositionMax;
      SatMin := tbRange_HslWin_Sat.PositionMin;
      SatMax := tbRange_HslWin_Sat.PositionMax;
      LumMin := tbRange_HslWin_Lum.PositionMin;
      LumMax := tbRange_HslWin_Lum.PositionMax;

      clBg := HslWinToColor( RandomByte(HueMin, HueMax, HueMin), RandomByte(SatMin, SatMax, SatMin), RandomByte(LumMin, LumMax, LumMin) );
      clFont := GetSimilarColor(clBg, 70, False);
      clBg := GetSimilarColor2(clBg, 70);

      for i := 1 to xn do
      begin
        Hue := RandomByte(HueMin, HueMax, HueMin);
        Sat := RandomByte(SatMin, SatMax, SatMin);
        Lum := RandomByte(LumMin, LumMax, LumMin);
        cl := HslWinToColor(Hue, Sat, Lum);
        ColorName :=
          'Random HSL WIN: ' +
          itos(HueMin) + '-' + itos(HueMax) + Sep +
          itos(SatMin) + '-' + itos(SatMax) + Sep +
          itos(LumMin) + '-' + itos(LumMax);
        clbColors.AddColor(cl, ColorName, clBg, clFont);
      end;

    end

    else if rbHslCss.Checked then
    begin

      HueMin := tbRange_HslCss_Hue.PositionMin;
      HueMax := tbRange_HslCss_Hue.PositionMax;
      SatMin := tbRange_HslCss_Sat.PositionMin;
      SatMax := tbRange_HslCss_Sat.PositionMax;
      LumMin := tbRange_HslCss_Lum.PositionMin;
      LumMax := tbRange_HslCss_Lum.PositionMax;

      clBg := HslCssToColor( RandomByte(HueMin, HueMax, HueMin), RandomByte(SatMin, SatMax, SatMin), RandomByte(LumMin, LumMax, LumMin) );
      clFont := GetSimilarColor(clBg, 70, False);
      clBg := GetSimilarColor2(clBg, 70);

      for i := 1 to xn do
      begin
        Hue := RandomInt(HueMin, HueMax, HueMin);
        Sat := RandomByte(SatMin, SatMax, SatMin);
        Lum := RandomByte(LumMin, LumMax, LumMin);
        cl := HslCssToColor(Hue, Sat, Lum);
        ColorName :=
          'Random HSL CSS: ' +
          itos(HueMin) + '-' + itos(HueMax) + Sep +
          itos(SatMin) + '-' + itos(SatMax) + Sep +
          itos(LumMin) + '-' + itos(LumMax);
        clbColors.AddColor(cl, ColorName, clBg, clFont);
      end;

    end;


  finally
    clbColors.ScrollToLast;
    clbColors.EndUpdate;

    InitControls;
  end;
end;
{$endregion GenerateRandomColors}


procedure TFormRandomColors.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormRandomColors.clbColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
begin
  if rbRgb.Checked then ColorStr := ColorToRgbIntStr(CurrentColor)
  else if rbHslWin.Checked then ColorStr := ColorToHslWinStr(CurrentColor, False, 3, '0')
  else if rbHslCss.Checked then ColorStr := ColorToHslCssStr(CurrentColor, True, 3, '0');
end;




procedure TFormRandomColors.DrawImgHue_Css(Sat: integer = -1; Lum: integer = -1);
var
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.PixelFormat := pf24bit;
    Bmp.SetSize(imgHue_Css.Width, imgHue_Css.Height);

    if Sat < 0 then Sat := tbRange_HslCss_Sat.PositionMin + (tbRange_HslCss_Sat.PositionMax - tbRange_HslCss_Sat.PositionMin) div 2;
    if Lum < 0 then Lum := tbRange_HslCss_Lum.PositionMin + (tbRange_HslCss_Lum.PositionMax - tbRange_HslCss_Lum.PositionMin) div 2;

    DrawHueCssBar(Bmp, clGray, Sat, Lum, tbRange_HslCss_Hue.PositionMin, tbRange_HslCss_Hue.PositionMax);

    imgHue_Css.Canvas.Draw(0, 0, Bmp);
  finally
    Bmp.Free;
  end;
end;

procedure TFormRandomColors.DrawImgHue_Win(Sat: integer = -1; Lum: integer = -1);
var
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.PixelFormat := pf24bit;
    Bmp.SetSize(imgHue_Win.Width, imgHue_Win.Height);

    if Sat < 0 then Sat := tbRange_HslWin_Sat.PositionMin + (tbRange_HslWin_Sat.PositionMax - tbRange_HslWin_Sat.PositionMin) div 2;
    if Lum < 0 then Lum := tbRange_HslWin_Lum.PositionMin + (tbRange_HslWin_Lum.PositionMax - tbRange_HslWin_Lum.PositionMin) div 2;

    DrawHueWinBar(Bmp, clGray, Sat, Lum, tbRange_HslWin_Hue.PositionMin, tbRange_HslWin_Hue.PositionMax);

    imgHue_Win.Canvas.Draw(0, 0, Bmp);
  finally
    Bmp.Free;
  end;
end;

procedure TFormRandomColors.tbRange_HslCss_HueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  DrawImgHue_Css;
end;

procedure TFormRandomColors.tbRange_HslWin_HueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  DrawImgHue_Win;
end;






procedure TFormRandomColors.UpdateColorCountLabel;
var
  s: string;
begin
  s := lsRandom.GetString('Colors', 'Colors');
  if rbRgb.Checked then s := s + ' - RGB'
  else if rbHslWin.Checked then s := s + ' - HSL WIN'
  else if rbHslCss.Checked then s := s + ' - HSL CSS';
  s := s + ' (' + itos(clbColors.Count) + ')';
  lblColors.Caption := s;
end;

procedure TFormRandomColors.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormRandomColors.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormRandomColors.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  InitControls;
end;






procedure TFormRandomColors.actLockUnlockRange_HslCss_HueExecute(Sender: TObject);
begin
  tbRange_HslCss_Hue.Constrained := not tbRange_HslCss_Hue.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_HslCss_LumExecute(Sender: TObject);
begin
  tbRange_HslCss_Lum.Constrained := not tbRange_HslCss_Lum.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_HslCss_SatExecute(Sender: TObject);
begin
  tbRange_HslCss_Sat.Constrained := not tbRange_HslCss_Sat.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_HslWin_HueExecute(Sender: TObject);
begin
  tbRange_HslWin_Hue.Constrained := not tbRange_HslWin_Hue.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_HslWin_LumExecute(Sender: TObject);
begin
  tbRange_HslWin_Lum.Constrained := not tbRange_HslWin_Lum.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_HslWin_SatExecute(Sender: TObject);
begin
  tbRange_HslWin_Sat.Constrained := not tbRange_HslWin_Sat.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_Rgb_BlueExecute(Sender: TObject);
begin
  tbRange_RgbBlue.Constrained := not tbRange_RgbBlue.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_Rgb_GreenExecute(Sender: TObject);
begin
  tbRange_RgbGreen.Constrained := not tbRange_RgbGreen.Constrained;
end;

procedure TFormRandomColors.actLockUnlockRange_Rgb_RedExecute(Sender: TObject);
begin
  tbRange_RgbRed.Constrained := not tbRange_RgbRed.Constrained;
end;


{$region '                    Presets                    '}

procedure TFormRandomColors.actPreset_HslCss_Dark_BlueExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 204, 258);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 18, 38);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_CyanExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 182, 195);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 26, 46);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_GreenExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 95, 140);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 15, 35);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_PinkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 306, 334);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 90);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 26, 46);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_RedExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 10);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 32, 52);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_VioletExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 264, 285);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 30, 50);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Dark_YellowExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 40, 50);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 80, 95);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 15, 35);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.SetRangeBarMinMax(RangeBar: TJPPegtopRangeBar; const PosMin, PosMax: integer);
begin
  RangeBar.PositionMin := PosMin;
  RangeBar.PositionMax := PosMax;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_GreenExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 95, 140);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 40, 60);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_BlueExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 188, 250);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 40, 60);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_CyanExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 175, 186);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 50, 70);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_PinkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 300, 324);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 50, 70);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_RedExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 10);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 40, 60);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_VioletExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 264, 285);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 50, 70);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Intensive_YellowExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 48, 58);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 85, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 50, 70);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_BlueDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 195, 215);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 40, 60);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 60, 75);
  DrawImgHue_Css;
end;



procedure TFormRandomColors.actPreset_HslCss_Pastels_BlueLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 195, 215);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_CyanDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 178, 198);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 60, 75);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_CyanLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 180, 200);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_GreenDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 122, 142);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 30, 50);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 60, 75);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_GreenLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 122, 142);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_PinkDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 308, 338);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 40, 60);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 65, 80);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_PinkLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 300, 320);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_RedDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 20);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 60, 75);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_RedLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 20);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_VioletDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 232, 269);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 65, 80);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_VioletLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 235, 255);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 83, 98);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_YellowDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 42, 56);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 60, 75);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Pastels_YellowLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 50, 70);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;


procedure TFormRandomColors.actPreset_HslCss_Grayscale_DarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 25, 40);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Grayscale_LightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 75, 85);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Grayscale_MediumExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 50, 65);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Grayscale_VeryDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 0, 20);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Grayscale_VeryLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 0, 0);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 88, 98);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_BlueExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 195, 222);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 77, 92);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_CyanExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 180, 200);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_GreenExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 122, 142);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_PinkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 300, 320);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_RedExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 0, 20);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_VioletExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 235, 255);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_HslCss_Light_YellowExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_HslCss_Hue, 45, 65);
  SetRangeBarMinMax(tbRange_HslCss_Sat, 96, 100);
  SetRangeBarMinMax(tbRange_HslCss_Lum, 80, 95);
  DrawImgHue_Css;
end;

procedure TFormRandomColors.actPreset_Rgb_DarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_RgbRed, 36, 76);
  SetRangeBarMinMax(tbRange_RgbGreen, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
  SetRangeBarMinMax(tbRange_RgbBlue, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
end;

procedure TFormRandomColors.actPreset_Rgb_LightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_RgbRed, 178, 218);
  SetRangeBarMinMax(tbRange_RgbGreen, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
  SetRangeBarMinMax(tbRange_RgbBlue, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
end;

procedure TFormRandomColors.actPreset_Rgb_MediumExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_RgbRed, 106, 146);
  SetRangeBarMinMax(tbRange_RgbGreen, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
  SetRangeBarMinMax(tbRange_RgbBlue, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
end;

procedure TFormRandomColors.actPreset_Rgb_VeryDarkExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_RgbRed, 0, 40);
  SetRangeBarMinMax(tbRange_RgbGreen, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
  SetRangeBarMinMax(tbRange_RgbBlue, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
end;

procedure TFormRandomColors.actPreset_Rgb_VeryLightExecute(Sender: TObject);
begin
  SetRangeBarMinMax(tbRange_RgbRed, 215, 255);
  SetRangeBarMinMax(tbRange_RgbGreen, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
  SetRangeBarMinMax(tbRange_RgbBlue, tbRange_RgbRed.PositionMin, tbRange_RgbRed.PositionMax);
end;

procedure TFormRandomColors.actSelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitColorListActions;
end;

procedure TFormRandomColors.actInvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitColorListActions;
end;

procedure TFormRandomColors.actDeleteSelectedExecute(Sender: TObject);
begin
  clbColors.RemoveSelectedItems;
  InitColorListActions;
end;



{$endregion Presets}

end.
