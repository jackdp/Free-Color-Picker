unit FCP.FormModifyPalette;

interface

uses

  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ActnList,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Colors.List, JPL.IniFile, JPL.Math,

  // JPPack
  JPP.PngButton, JPP.ColorListBox, JPP.SimplePanel, JPP.BasicPanel, JPP.BasicSpeedButton, JPP.PngCollection, JPP.ColorSwatch, JPP.Timer,
  //JPP.MemIniFile,

  // JPModLib
  JPPegtopTrackBars,

  // SpTBX
  SpTBXEditors,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings,

  mbTrackBarPicker, HColorPicker;


type

  {$region '     TFormModifyPalette     '}
  TFormModifyPalette = class(TForm)
    pnOriginalColors: TJppSimplePanel;
    Actions: TActionList;
    actEsc: TAction;
    pnBottom: TJppSimplePanel;
    btnCancel: TJppPngButton;
    btnOK: TJppPngButton;
    actOK: TAction;
    actSwitchMode_Basic: TAction;
    clbOriginalColors: TJppColorListBox;
    pnOriginalColorsTitle: TJppBasicPanel;
    lblOriginalColors: TLabel;
    pnModifiedColors: TJppSimplePanel;
    clbModifiedColors: TJppColorListBox;
    pnModifiedColorsTitle: TJppBasicPanel;
    lblModifiedColors: TLabel;
    actModify_Grayscale: TAction;
    actRestoreOriginalColors: TAction;
    pnMods: TJppSimplePanel;
    btnRestoreOriginalColors: TJppPngButton;
    actModify_Invert: TAction;
    actModify_Brightness: TAction;
    actReset_Brightness: TAction;
    actModify_Contrast: TAction;
    actReset_Contrast: TAction;
    pngc: TJppPngCollection;
    actModify_Pale: TAction;
    actReset_Pale: TAction;
    actModify_Mix: TAction;
    tmInitControls: TJppTimer;
    ntb: TNotebook;
    pnGrayscaleInvert: TJppSimplePanel;
    btnModify_Grayscale: TJppPngButton;
    btnModify_Invert: TJppPngButton;
    pnBrightness: TJppSimplePanel;
    sbtnReset_Brightness: TJppBasicSpeedButton;
    imgBrightness: TImage;
    tbBrightness: TJPPegtopTrackBar;
    btnModify_Brightness: TJppPngButton;
    pnContrast: TJppSimplePanel;
    sbtnReset_Contrast: TJppBasicSpeedButton;
    imgContrast: TImage;
    tbContrast: TJPPegtopTrackBar;
    btnModify_Contrast: TJppPngButton;
    pnPale: TJppSimplePanel;
    sbtnReset_Pale: TJppBasicSpeedButton;
    imgPale: TImage;
    tbPale: TJPPegtopTrackBar;
    btnModify_Pale: TJppPngButton;
    pnMix: TJppSimplePanel;
    imgMix: TImage;
    btnModify_Mix: TJppPngButton;
    cswMix: TJppColorSwatchEx;
    pnSwitchModeButtonsBg: TJppSimplePanel;
    sbtnSwitchMode_Basic: TJppBasicSpeedButton;
    actSwitchMode_RGB: TAction;
    actSwitchMode_HslWin: TAction;
    sbtnSwitchMode_Rgb: TJppBasicSpeedButton;
    sbtnSwitchMode_HslWin: TJppBasicSpeedButton;
    pnRgbSet: TJppSimplePanel;
    btnModify_SetRgbValue: TJppPngButton;
    pnRgbInvert: TJppSimplePanel;
    btnModify_InvertRgbChannels: TJppPngButton;
    lblRgbInvert: TLabel;
    chRgb_InvertRed: TCheckBox;
    chRgb_InvertGreen: TCheckBox;
    chRgb_InvertBlue: TCheckBox;
    actModify_InvertRgbChannels: TAction;
    chRgb_SetRed: TCheckBox;
    spedRgb_SetRed: TSpTBXSpinEdit;
    lblRgbSetValue: TLabel;
    chRgb_SetGreen: TCheckBox;
    spedRgb_SetGreen: TSpTBXSpinEdit;
    chRgb_SetBlue: TCheckBox;
    spedRgb_SetBlue: TSpTBXSpinEdit;
    actModify_SetRgbValue: TAction;
    pnRgbChange: TJppSimplePanel;
    lblRgbChangeValue: TLabel;
    btnModify_ChangeRgbValue: TJppPngButton;
    chRgb_ChangeRed: TCheckBox;
    spedRgb_ChangeRed: TSpTBXSpinEdit;
    chRgb_ChangeGreen: TCheckBox;
    spedRgb_ChangeGreen: TSpTBXSpinEdit;
    chRgb_ChangeBlue: TCheckBox;
    spedRgb_ChangeBlue: TSpTBXSpinEdit;
    actModify_ChangeRgbValue: TAction;
    pnHslWinSet: TJppSimplePanel;
    lblHslWinSetValue: TLabel;
    btnModify_SetHslWinHue: TJppPngButton;
    chHslWin_SetHue: TCheckBox;
    spedHslWin_SetHue: TSpTBXSpinEdit;
    chHslWin_SetSat: TCheckBox;
    spedHslWin_SetSat: TSpTBXSpinEdit;
    chHslWin_SetLum: TCheckBox;
    spedHslWin_SetLum: TSpTBXSpinEdit;
    pnHslWinTitle: TJppBasicPanel;
    lblHslWinTitle: TLabel;
    actModify_SetHslWin: TAction;
    cpHueWin: THColorPicker;
    tbHslWinSat: TJPPegtopTrackBar;
    tbHslWinLum: TJPPegtopTrackBar;
    tbRgbRed: TJPPegtopColorTrackBar;
    tbRgbGreen: TJPPegtopColorTrackBar;
    tbRgbBlue: TJPPegtopColorTrackBar;
    actModify_ChangeHsl: TAction;
    pnHslWinChange: TJppSimplePanel;
    lblHslChangeValue: TLabel;
    btnModify_ChangeHsl: TJppPngButton;
    chHsl_ChangeHue: TCheckBox;
    spedHsl_ChangeHue: TSpTBXSpinEdit;
    chHsl_ChangeSat: TCheckBox;
    spedHsl_ChangeSat: TSpTBXSpinEdit;
    chHsl_ChangeLum: TCheckBox;
    spedHsl_ChangeLum: TSpTBXSpinEdit;
    sbtnReset_Hsl: TJppBasicSpeedButton;
    actReset_Hsl: TAction;
    actF3: TAction;
    btn1: TButton;
    procedure actEscExecute(Sender: TObject);
    procedure actF3Execute(Sender: TObject);
    procedure actModify_BrightnessExecute(Sender: TObject);
    procedure actModify_ChangeHslExecute(Sender: TObject);
    procedure actModify_ChangeRgbValueExecute(Sender: TObject);
    procedure actModify_GrayscaleExecute(Sender: TObject);
    procedure actModify_InvertExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actReset_BrightnessExecute(Sender: TObject);
    procedure actReset_ContrastExecute(Sender: TObject);
    procedure actReset_PaleExecute(Sender: TObject);
    procedure actModify_ContrastExecute(Sender: TObject);
    procedure actModify_InvertRgbChannelsExecute(Sender: TObject);
    procedure actModify_MixExecute(Sender: TObject);
    procedure actModify_PaleExecute(Sender: TObject);
    procedure actModify_SetHslWinExecute(Sender: TObject);
    procedure actModify_SetRgbValueExecute(Sender: TObject);
    procedure actReset_HslExecute(Sender: TObject);
    procedure actRestoreOriginalColorsExecute(Sender: TObject);
    procedure actSwitchMode_BasicExecute(Sender: TObject);
    procedure actSwitchMode_HslWinExecute(Sender: TObject);
    procedure actSwitchMode_RGBExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure SetLang;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure StartInitControlsTimer(Sender: TObject);
    procedure AssignColorsFromArray(const Arr: TColorListArray);
    procedure AssignModifiedColorsFromArray(const Arr: TColorListArray);
    procedure btn1Click(Sender: TObject);
    procedure clbModifiedColorsClick(Sender: TObject);
    procedure clbModifiedColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
    procedure clbModifiedColorsScroll(Sender: TObject);
    procedure clbOriginalColorsClick(Sender: TObject);
    procedure clbOriginalColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
    procedure clbOriginalColorsScroll(Sender: TObject);
    procedure cpHueWinChange(Sender: TObject);
    procedure cswMixBtnChangeColorClick(Sender: TObject);
    procedure cswMixGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SyncColorListBox(const bFromOriginalToMod: Boolean);
    procedure SaveModifiedColorsToArray(var Arr: TColorListArray);
    procedure tbBrightnessScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure UpdateSwitchButtons;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure spedHslWin_SetHueValueChanged(Sender: TObject);
    procedure spedHslWin_SetLumValueChanged(Sender: TObject);
    procedure spedHslWin_SetSatValueChanged(Sender: TObject);
    procedure spedRgb_SetBlueValueChanged(Sender: TObject);
    procedure spedRgb_SetGreenValueChanged(Sender: TObject);
    procedure spedRgb_SetRedValueChanged(Sender: TObject);
    procedure tbHslWinLumScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure tbHslWinSatScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure tbRgbBlueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure tbRgbGreenScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
    procedure tbRgbRedScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
  private
    type TModType = (mtGrayscale, mtInvert, mtBrightness, mtContrast, mtPale, mtMix, mtInvertRgb, mtSetRgbValue, mtChangeRgbValue, mtHslWinSet, mtHslChange);
    const
      PAGE_INDEX_BASIC = 0;
      PAGE_INDEX_RGB = 1;
      PAGE_INDEX_HSL_WIN = 2;
  public
    procedure PerformMod(const ModType: TModType);
  private
    bUpdatingControls: Boolean;
  end;
  {$endregion TFormModifyPalette}


var
  FormModifyPalette: TFormModifyPalette;


implementation

uses
  FCP.FormMain;

{$R *.dfm}




procedure TFormModifyPalette.FormCreate(Sender: TObject);
begin
  Caption := 'Modify colors';
  Constraints.MinWidth := Width;
  Constraints.MaxWidth := Width;
  Constraints.MinHeight := 466;
  Height := Constraints.MinHeight;
  PrepareModuleStrings_ModifyPalette;
  PrepareControls;
  LoadSettingsFromIni;
  InitControls;
end;

procedure TFormModifyPalette.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;


{$region '                       PrepareControls                           '}

procedure TFormModifyPalette.PrepareControls;
var
  App: TJppButtonAppearance;
begin
  ntb.Align := alClient;
  lblOriginalColors.Align := alClient;
  clbOriginalColors.Align := alClient;
  clbOriginalColors.Clear;

  lblModifiedColors.Align := alClient;
  clbModifiedColors.Align := alClient;
  clbModifiedColors.Clear;

  pnMods.Align := alClient;

  App := FormMain.btnT1.Appearance;
  btnCancel.Appearance.Assign(App);
  btnOK.Appearance.Assign(App);
  btnRestoreOriginalColors.Appearance.Assign(App);
  btnModify_Grayscale.Appearance.Assign(App);
  btnModify_Invert.Appearance.Assign(App);

  btnModify_Brightness.Appearance.Assign(App);
  btnModify_Brightness.Appearance.ShowCaption := False;
  App := btnModify_Brightness.Appearance;
  btnModify_Contrast.Appearance.Assign(App);
  btnModify_Pale.Appearance.Assign(App);
  btnModify_Mix.Appearance.Assign(App);
  btnModify_InvertRgbChannels.Appearance.Assign(App);
  btnModify_SetRgbValue.Appearance.Assign(App);
  btnModify_ChangeRgbValue.Appearance.Assign(App);
  btnModify_SetHslWinHue.Appearance.Assign(App);
  btnModify_ChangeHsl.Appearance.Assign(App);


  sbtnReset_Contrast.Appearance.Assign(sbtnReset_Brightness.Appearance);
  sbtnReset_Pale.Appearance.Assign(sbtnReset_Brightness.Appearance);
  sbtnReset_Hsl.Appearance.Assign(sbtnReset_Brightness.Appearance);


  imgBrightness.Picture.Assign(pngc.GetPngImageByName('Brightness'));
  imgContrast.Picture.Assign(pngc.GetPngImageByName('Contrast'));
  imgPale.Picture.Assign(pngc.GetPngImageByName('Pale'));
  imgMix.Picture.Assign(pngc.GetPngImageByName('Mix'));

  cswMix.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
  cswMix.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswMix.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));
  cswMix.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswMix.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);
  cswMix.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  sbtnSwitchMode_Rgb.Appearance.Assign(sbtnSwitchMode_Basic.Appearance);
  sbtnSwitchMode_HslWin.Appearance.Assign(sbtnSwitchMode_Basic.Appearance);

  tbRgbRed.Position := spedRgb_SetRed.IntValue;
  tbRgbGreen.Position := spedRgb_SetGreen.IntValue;
  tbRgbBlue.Position := spedRgb_SetBlue.IntValue;

  tbHslWinSat.Position := spedHslWin_SetSat.IntValue;
  tbHslWinLum.Position := spedHslWin_SetLum.IntValue;

  lblHslWinTitle.Align := alClient;

  UpdateSwitchButtons;

  ApplyFontParams(clbOriginalColors.Appearance.NumericFont, AP.MonospaceFont);
  ApplyFontParams(clbModifiedColors.Appearance.NumericFont, AP.MonospaceFont);
end;
{$endregion PrepareControls}


{$region '                           InitControls                          '}
procedure TFormModifyPalette.InitControls;
//var
//  bUC: Boolean;
begin
  if bUpdatingControls then Exit;
  //bUC := bUpdatingControls;
  bUpdatingControls := True;
  try

    actModify_Brightness.Enabled := tbBrightness.Position <> 0;
    actReset_Brightness.Enabled := tbBrightness.Position <> 0;
    actModify_Contrast.Enabled := tbContrast.Position <> 0;
    actReset_Contrast.Enabled := tbContrast.Position <> 0;
    actModify_Pale.Enabled := tbPale.Position <> 0;
    actReset_Pale.Enabled := tbPale.Position <> 0;

    actModify_InvertRgbChannels.Enabled := chRgb_InvertRed.Checked or chRgb_InvertGreen.Checked or chRgb_InvertBlue.Checked;

    spedRgb_SetRed.Enabled := chRgb_SetRed.Checked;
    spedRgb_SetGreen.Enabled := chRgb_SetGreen.Checked;
    spedRgb_SetBlue.Enabled := chRgb_SetBlue.Checked;
    tbRgbRed.Enabled := chRgb_SetRed.Checked;
    tbRgbGreen.Enabled := chRgb_SetGreen.Checked;
    tbRgbBlue.Enabled := chRgb_SetBlue.Checked;
    actModify_SetRgbValue.Enabled := chRgb_SetRed.Checked or chRgb_SetGreen.Checked or chRgb_SetBlue.Checked;

    spedRgb_ChangeRed.Enabled := chRgb_ChangeRed.Checked;
    spedRgb_ChangeGreen.Enabled := chRgb_ChangeGreen.Checked;
    spedRgb_ChangeBlue.Enabled := chRgb_ChangeBlue.Checked;
    actModify_ChangeRgbValue.Enabled :=
      (chRgb_ChangeRed.Checked and (spedRgb_ChangeRed.Value <> 0)) or
      (chRgb_ChangeGreen.Checked and (spedRgb_ChangeGreen.Value <> 0)) or
      (chRgb_ChangeBlue.Checked and (spedRgb_ChangeBlue.Value <> 0));

    spedHslWin_SetHue.Enabled := chHslWin_SetHue.Checked;
    spedHslWin_SetSat.Enabled := chHslWin_SetSat.Checked;
    spedHslWin_SetLum.Enabled := chHslWin_SetLum.Checked;
    cpHueWin.Enabled := chHslWin_SetHue.Checked;
    tbHslWinSat.Enabled := chHslWin_SetSat.Checked;
    tbHslWinLum.Enabled := chHslWin_SetLum.Checked;
    if not cpHueWin.Enabled then cpHueWin.Saturation := 70 else cpHueWin.Saturation := 255;
    actModify_SetHslWin.Enabled := chHslWin_SetHue.Checked or chHslWin_SetSat.Checked or chHslWin_SetLum.Checked;

    spedHsl_ChangeHue.Enabled := chHsl_ChangeHue.Checked;
    spedHsl_ChangeSat.Enabled := chHsl_ChangeSat.Checked;
    spedHsl_ChangeLum.Enabled := chHsl_ChangeLum.Checked;
    actModify_ChangeHsl.Enabled :=
      (chHsl_ChangeHue.Checked and (spedHsl_ChangeHue.IntValue <> 0)) or
      (chHsl_ChangeSat.Checked and (spedHsl_ChangeSat.IntValue <> 0)) or
      (chHsl_ChangeLum.Checked and (spedHsl_ChangeLum.IntValue <> 0));
    actReset_Hsl.Enabled := actModify_ChangeHsl.Enabled;

  finally
    bUpdatingControls := False;//bUC;
  end;
end;

procedure TFormModifyPalette.InitCtrls(Sender: TObject);
begin
  InitControls;
end;

procedure TFormModifyPalette.StartInitControlsTimer(Sender: TObject);
begin
  tmInitControls.Stop;
  tmInitControls.Start;
end;
{$endregion InitControls}


procedure TFormModifyPalette.SetLang;
var
  s, sRed, sGreen, sBlue: string;
begin
  Caption := lsMod.GetString('Caption', Caption);

  sbtnSwitchMode_Basic.Caption := actSwitchMode_Basic.Caption;
  sbtnSwitchMode_Rgb.Caption := actSwitchMode_RGB.Caption;

  s := lsMod.GetString('Reset', 'Reset');
  actReset_Brightness.Caption := s;
  actReset_Contrast.Caption := s;
  actReset_Pale.Caption := s;
  actReset_Hsl.Caption := s;

  sbtnReset_Brightness.Caption := s;
  sbtnReset_Contrast.Caption := s;
  sbtnReset_Pale.Caption := s;
  sbtnReset_Hsl.Caption := s;

  s := lsMod.GetString('Execute', 'Execute');
  actModify_Brightness.Hint := s;
  actModify_Contrast.Hint := s;
  actModify_Pale.Hint := s;
  actModify_Mix.Hint := s;
  actModify_ChangeHsl.Hint := s;
  actModify_InvertRgbChannels.Hint := s;
  actModify_SetRgbValue.Hint := s;
  actModify_ChangeRgbValue.Hint := s;

  tbBrightness.LabelCaption := lsMod.GetString('Brightness', 'Brightness') + ': <pos>%';
  tbContrast.LabelCaption := lsMod.GetString('Contrast', 'Contrast') + ': <pos>%';
  tbPale.LabelCaption := lsMod.GetString('Pale', 'Pale') + ': <pos>%';

  cswMix.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  cswMix.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswMix.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');

  sRed := lsMain.GetString('RGB_Red', 'Red');
  sGreen := lsMain.GetString('RGB_Green', 'Green');
  sBlue := lsMain.GetString('RGB_Blue', 'Blue');
  chRgb_InvertRed.Caption := sRed;
  chRgb_InvertGreen.Caption := sGreen;
  chRgb_InvertBlue.Caption := sBlue;
  chRgb_SetRed.Caption := sRed;
  chRgb_SetGreen.Caption := sGreen;
  chRgb_SetBlue.Caption := sBlue;
  chRgb_ChangeRed.Caption := sRed;
  chRgb_ChangeGreen.Caption := sGreen;
  chRgb_ChangeBlue.Caption := sBlue;

end;



{$region '                       Color arrays related: Assign, Save                        '}
procedure TFormModifyPalette.AssignColorsFromArray(const Arr: TColorListArray);
var
  i: integer;
  Item: TColorListItem;
begin
  clbOriginalColors.BeginUpdate;
  clbModifiedColors.BeginUpdate;
  try

    clbOriginalColors.Clear;
    clbModifiedColors.Clear;

    for i := 0 to High(Arr) do
    begin
      Item := Arr[i];
      clbOriginalColors.AddColor(Item.Color, Item.ColorName);
    end;

    clbModifiedColors.AddColorsFromColorListBox(clbOriginalColors);

  finally
    clbModifiedColors.EndUpdate;
    clbOriginalColors.EndUpdate;
  end;
end;

procedure TFormModifyPalette.AssignModifiedColorsFromArray(const Arr: TColorListArray);
var
  i: integer;
  Item: TColorListItem;
begin
  clbModifiedColors.BeginUpdate;
  clbModifiedColors.Items.BeginUpdate;
  try

    clbModifiedColors.Clear;

    for i := 0 to High(Arr) do
    begin
      Item := Arr[i];
      clbModifiedColors.AddColor(Item.Color, Item.ColorName);
    end;

  finally
    clbModifiedColors.Items.EndUpdate;
    clbModifiedColors.EndUpdate;
  end;
end;

procedure TFormModifyPalette.SaveModifiedColorsToArray(var Arr: TColorListArray);
var
  i: integer;
begin
  SetLength(Arr, 0);
  for i := 0 to clbModifiedColors.Count - 1 do
  begin
    SetLength(Arr, Length(Arr) + 1);
    Arr[High(Arr)].Color := clbModifiedColors.GetItemColor(i);
  end;
end;

{$endregion Color arrays related: Assign, Save}


{$region '                       Color modifications                             '}
procedure TFormModifyPalette.PerformMod(const ModType: TModType);
var
  Arr: TColorListArray;
  List: TColorList;
  bRed, bGreen, bBlue: Boolean;
  btRed, btGreen, btBlue: Byte;
  xRed, xGreen, xBlue: integer;
  xHue, xSat, xLum: integer;
begin
  SaveModifiedColorsToArray(Arr);

  List := TColorList.Create;
  try
    List.AddColorsFromArray(Arr);

    case ModType of

      // ---------- Basic -------------

      mtGrayscale: List.Modify_Grayscale;
      mtInvert: List.Modify_Invert;
      mtBrightness: if tbBrightness.Position <> 0 then List.Modify_Brightness(tbBrightness.Position);
      mtContrast: if tbContrast.Position <> 0 then List.Modify_Contrast(tbContrast.Position);
      mtPale: if tbPale.Position <> 0 then List.Modify_Pale(tbPale.Position);
      mtMix: List.Modify_MixWithColor(cswMix.SelectedColor);

      // ------------ RGB ---------------
      mtInvertRgb:
        begin
          bRed := chRgb_InvertRed.Checked;
          bGreen := chRgb_InvertGreen.Checked;
          bBlue := chRgb_InvertBlue.Checked;
          if bRed or bGreen or bBlue then List.Modify_InvertRgbChannels(bRed, bGreen, bBlue);
        end;

      mtSetRgbValue:
        begin
          if chRgb_SetRed.Checked then
          begin
            btRed := spedRgb_SetRed.ByteValue;
            List.Modify_SetRedChannel(btRed);
          end;
          if chRgb_SetGreen.Checked then
          begin
            btGreen := spedRgb_SetGreen.ByteValue;
            List.Modify_SetGreenChannel(btGreen);
          end;
          if chRgb_SetBlue.Checked then
          begin
            btBlue := spedRgb_SetBlue.ByteValue;
            List.Modify_SetBlueChannel(btBlue);
          end;
        end;

      mtChangeRgbValue:
        begin
          if chRgb_ChangeRed.Checked then xRed := spedRgb_ChangeRed.IntValue else xRed := 0;
          if chRgb_ChangeGreen.Checked then xGreen := spedRgb_ChangeGreen.IntValue else xGreen := 0;
          if chRgb_ChangeBlue.Checked then xBlue := spedRgb_ChangeBlue.IntValue else xBlue := 0;
          if (xRed <> 0) or (xGreen <> 0) or (xBlue <> 0) then List.Modify_ChangeRGBChannels(xRed, xGreen, xBlue);
        end;

      mtHslWinSet:
        begin
          if chHslWin_SetLum.Checked then List.Modify_SetLumWinValue(spedHslWin_SetLum.IntValue);
          if chHslWin_SetSat.Checked then List.Modify_SetSatWinValue(spedHslWin_SetSat.IntValue);
          if chHslWin_SetHue.Checked then List.Modify_SetHueWinValue(spedHslWin_SetHue.IntValue);
        end;

      mtHslChange:
        begin
          if chHsl_ChangeHue.Checked then xHue := spedHsl_ChangeHue.IntValue else xHue := 0;
          if chHsl_ChangeSat.Checked then xSat := spedHsl_ChangeSat.IntValue else xSat := 0;
          if chHsl_ChangeLum.Checked then xLum := spedHsl_ChangeLum.IntValue else xLum := 0;
          if (xHue <> 0) or (xSat <> 0) or (xLum <> 0) then List.Modify_SetHslCssDelta(xHue, xSat, xLum);
        end;

    end; // case

    List.SaveColorsToArray(Arr);
  finally
    List.Free;
  end;

  AssignModifiedColorsFromArray(Arr);
  SyncColorListBox(True);
  InitControls;
end;


procedure TFormModifyPalette.actModify_GrayscaleExecute(Sender: TObject);
begin
  PerformMod(mtGrayscale);
end;

procedure TFormModifyPalette.actModify_InvertExecute(Sender: TObject);
begin
  PerformMod(mtInvert);
end;

procedure TFormModifyPalette.actModify_BrightnessExecute(Sender: TObject);
begin
  PerformMod(mtBrightness);
end;

procedure TFormModifyPalette.actModify_ContrastExecute(Sender: TObject);
begin
  PerformMod(mtContrast);
end;

procedure TFormModifyPalette.actModify_PaleExecute(Sender: TObject);
begin
  PerformMod(mtPale);
end;

procedure TFormModifyPalette.actModify_MixExecute(Sender: TObject);
begin
  PerformMod(mtMix);
end;

procedure TFormModifyPalette.actModify_InvertRgbChannelsExecute(Sender: TObject);
begin
  PerformMod(mtInvertRgb);
end;

procedure TFormModifyPalette.actModify_SetRgbValueExecute(Sender: TObject);
begin
  PerformMod(mtSetRgbValue);
end;

procedure TFormModifyPalette.actModify_ChangeRgbValueExecute(Sender: TObject);
begin
  PerformMod(mtChangeRgbValue);
end;

procedure TFormModifyPalette.actModify_SetHslWinExecute(Sender: TObject);
begin
  PerformMod(mtHslWinSet);
end;

procedure TFormModifyPalette.actModify_ChangeHslExecute(Sender: TObject);
begin
  PerformMod(mtHslChange);
end;

{$endregion Color modifications}


procedure TFormModifyPalette.actRestoreOriginalColorsExecute(Sender: TObject);
begin
  clbModifiedColors.BeginUpdate;
  clbModifiedColors.Items.BeginUpdate;
  try
    clbModifiedColors.Clear;
    clbModifiedColors.AddColorsFromColorListBox(clbOriginalColors);
  finally
    clbModifiedColors.Items.EndUpdate;
    clbModifiedColors.EndUpdate;
  end;
  SyncColorListBox(True);
  InitControls;
end;




{$region '                        INI: Load & Save settings                            '}
procedure TFormModifyPalette.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
  s: string;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_MODIFY_PALETTE, True);
    if Section = nil then Exit;

    TAppHelper.IniSection := Section;

    case ntb.PageIndex of
      PAGE_INDEX_BASIC: s := 'Basic';
      PAGE_INDEX_RGB: s := 'RGB';
      PAGE_INDEX_HSL_WIN: s := 'HSL WIN';
    end;

    // Basic
    Section.WriteString('Mode', s);
    TAppHelper.WriteTrackBarPos(tbBrightness);
    TAppHelper.WriteTrackBarPos(tbContrast);
    TAppHelper.WriteTrackBarPos(tbPale);
    TAppHelper.WriteColorSwatchColor(cswMix);


    // RGB
    TAppHelper.WriteCheckboxState(chRgb_InvertRed);
    TAppHelper.WriteCheckboxState(chRgb_InvertGreen);
    TAppHelper.WriteCheckboxState(chRgb_InvertBlue);

    TAppHelper.WriteCheckboxState(chRgb_SetRed);
    TAppHelper.WriteCheckboxState(chRgb_SetGreen);
    TAppHelper.WriteCheckboxState(chRgb_SetBlue);
    TAppHelper.WriteSpinEditIntValue(spedRgb_SetRed);
    TAppHelper.WriteSpinEditIntValue(spedRgb_SetGreen);
    TAppHelper.WriteSpinEditIntValue(spedRgb_SetBlue);

    TAppHelper.WriteCheckboxState(chRgb_ChangeRed);
    TAppHelper.WriteCheckboxState(chRgb_ChangeGreen);
    TAppHelper.WriteCheckboxState(chRgb_ChangeBlue);
    TAppHelper.WriteSpinEditIntValue(spedRgb_ChangeRed);
    TAppHelper.WriteSpinEditIntValue(spedRgb_ChangeGreen);
    TAppHelper.WriteSpinEditIntValue(spedRgb_ChangeBlue);

//    TAppHelper.WriteCheckboxState(chHslWin_SetHue);
//    TAppHelper.WriteCheckboxState(chHslWin_SetSat);
//    TAppHelper.WriteCheckboxState(chHslWin_SetLum);
//    TAppHelper.WriteSpinEditIntValue(spedHslWin_SetHue);
//    TAppHelper.WriteSpinEditIntValue(spedHslWin_SetSat);
//    TAppHelper.WriteSpinEditIntValue(spedHslWin_SetLum);

    TAppHelper.WriteCheckboxState(chHsl_ChangeHue);
    TAppHelper.WriteCheckboxState(chHsl_ChangeSat);
    TAppHelper.WriteCheckboxState(chHsl_ChangeLum);
    TAppHelper.WriteSpinEditIntValue(spedHsl_ChangeHue);
    TAppHelper.WriteSpinEditIntValue(spedHsl_ChangeSat);
    TAppHelper.WriteSpinEditIntValue(spedHsl_ChangeLum);


    Ini.UpdateFile;


  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;


procedure TFormModifyPalette.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
  s: string;
begin
  if not FileExists(AP.IniFile) then Exit;

  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  bUpdatingControls := True;
  try

    Section := Ini.GetSection(INI_SECTION_MODIFY_PALETTE, False);
    if Section = nil then Exit;
    TAppHelper.IniSection := Section;

    s := RemoveSpaces(Section.ReadString('Mode', 'Basic'));
    ntb.PageIndex := TAppHelper.GetValueByID<integer>(s, ['BASIC', 'RGB', 'HSLWIN'], [PAGE_INDEX_BASIC, PAGE_INDEX_RGB, PAGE_INDEX_HSL_WIN], PAGE_INDEX_BASIC);
    UpdateSwitchButtons;


    TAppHelper.ReadTrackBarPos(tbBrightness);
    TAppHelper.ReadTrackBarPos(tbContrast);
    TAppHelper.ReadTrackBarPos(tbPale);
    TAppHelper.ReadColorSwatchColor(cswMix);

    TAppHelper.ReadCheckboxState(chRgb_InvertRed);
    TAppHelper.ReadCheckboxState(chRgb_InvertGreen);
    TAppHelper.ReadCheckboxState(chRgb_InvertBlue);

    TAppHelper.ReadCheckboxState(chRgb_SetRed);
    TAppHelper.ReadCheckboxState(chRgb_SetGreen);
    TAppHelper.ReadCheckboxState(chRgb_SetBlue);
    TAppHelper.ReadSpinEditIntValue(spedRgb_SetRed);
    TAppHelper.ReadSpinEditIntValue(spedRgb_SetGreen);
    TAppHelper.ReadSpinEditIntValue(spedRgb_SetBlue);
    tbRgbRed.Position := spedRgb_SetRed.IntValue;
    tbRgbGreen.Position := spedRgb_SetGreen.IntValue;
    tbRgbBlue.Position := spedRgb_SetBlue.IntValue;

    TAppHelper.ReadCheckboxState(chRgb_ChangeRed);
    TAppHelper.ReadCheckboxState(chRgb_ChangeGreen);
    TAppHelper.ReadCheckboxState(chRgb_ChangeBlue);
    TAppHelper.ReadSpinEditIntValue(spedRgb_ChangeRed);
    TAppHelper.ReadSpinEditIntValue(spedRgb_ChangeGreen);
    TAppHelper.ReadSpinEditIntValue(spedRgb_ChangeBlue);

//    TAppHelper.ReadCheckboxState(chHslWin_SetHue);
//    TAppHelper.ReadCheckboxState(chHslWin_SetSat);
//    TAppHelper.ReadCheckboxState(chHslWin_SetLum);
//    TAppHelper.ReadSpinEditIntValue(spedHslWin_SetHue);
//    TAppHelper.ReadSpinEditIntValue(spedHslWin_SetSat);
//    TAppHelper.ReadSpinEditIntValue(spedHslWin_SetLum);
//
//    cpHueWin.Hue := spedHslWin_SetHue.IntValue;
//    tbHslWinSat.Position := spedHslWin_SetSat.IntValue;
//    tbHslWinLum.Position := spedHslWin_SetLum.IntValue;

    TAppHelper.ReadCheckboxState(chHsl_ChangeHue);
    TAppHelper.ReadCheckboxState(chHsl_ChangeSat);
    TAppHelper.ReadCheckboxState(chHsl_ChangeLum);
    TAppHelper.ReadSpinEditIntValue(spedHsl_ChangeHue);
    TAppHelper.ReadSpinEditIntValue(spedHsl_ChangeSat);
    TAppHelper.ReadSpinEditIntValue(spedHsl_ChangeLum);

  finally
    bUpdatingControls := False;
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;
{$endregion INI: Load & Save settings}


{$region '                      SYNC ColorListBoxes                      '}

procedure TFormModifyPalette.clbModifiedColorsScroll(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  clbOriginalColors.TopIndex := clbModifiedColors.TopIndex;
end;

procedure TFormModifyPalette.clbOriginalColorsScroll(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  clbModifiedColors.TopIndex := clbOriginalColors.TopIndex;
end;

procedure TFormModifyPalette.SyncColorListBox(const bFromOriginalToMod: Boolean);
var
  bUC: Boolean;
  clb1, clb2: TJppColorListBox;
begin
  bUC := bUpdatingControls;
  bUpdatingControls := True;
  try

    if bFromOriginalToMod then
    begin
      clb1 := clbOriginalColors;
      clb2 := clbModifiedColors;
    end
    else
    begin
      clb1 := clbModifiedColors;
      clb2 := clbOriginalColors;
    end;

    if clb1.Items.Count <> clb2.Items.Count then Exit;
    if clb1.ItemIndex < 0 then Exit;

    clb2.ItemIndex := clb1.ItemIndex;
    clb2.TopIndex := clb1.TopIndex;

  finally
    bUpdatingControls := bUC;
  end;
end;

procedure TFormModifyPalette.clbModifiedColorsClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  SyncColorListBox(False);
end;

procedure TFormModifyPalette.clbOriginalColorsClick(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  SyncColorListBox(True);
end;

{$endregion SYNC ColorListBoxes}


procedure TFormModifyPalette.actOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormModifyPalette.actEscExecute(Sender: TObject);
begin
  btnCancel.Click;
end;

procedure TFormModifyPalette.actF3Execute(Sender: TObject);
begin
  FormMain.actCopyColor.Execute;
end;

procedure TFormModifyPalette.actReset_BrightnessExecute(Sender: TObject);
begin
  tbBrightness.Position := 0;
  InitControls;
end;

procedure TFormModifyPalette.actReset_ContrastExecute(Sender: TObject);
begin
  tbContrast.Position := 0;
  InitControls;
end;

procedure TFormModifyPalette.actReset_HslExecute(Sender: TObject);
begin
  spedHsl_ChangeHue.Value := 0;
  spedHsl_ChangeSat.Value := 0;
  spedHsl_ChangeLum.Value := 0;
  InitControls;
end;

procedure TFormModifyPalette.actReset_PaleExecute(Sender: TObject);
begin
  tbPale.Position := 0;
  InitControls;
end;

procedure TFormModifyPalette.actSwitchMode_BasicExecute(Sender: TObject);
begin
  ntb.PageIndex := PAGE_INDEX_BASIC;
  UpdateSwitchButtons;
  clbOriginalColors.Repaint;
  clbModifiedColors.Repaint;
end;

procedure TFormModifyPalette.actSwitchMode_HslWinExecute(Sender: TObject);
begin
  ntb.PageIndex := PAGE_INDEX_HSL_WIN;
  UpdateSwitchButtons;
  clbOriginalColors.Repaint;
  clbModifiedColors.Repaint;
end;

procedure TFormModifyPalette.actSwitchMode_RGBExecute(Sender: TObject);
begin
  ntb.PageIndex := PAGE_INDEX_RGB;
  UpdateSwitchButtons;
  clbOriginalColors.Repaint;
  clbModifiedColors.Repaint;
end;



procedure TFormModifyPalette.cswMixBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := cswMix.SelectedColor;
  FormStyle := fsNormal;
  if not EditColor(cl) then Exit;
  cswMix.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormModifyPalette.cswMixGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormModifyPalette.tbBrightnessScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  //tmInitControls.Start;
  StartInitControlsTimer(Sender);
end;

procedure TFormModifyPalette.UpdateSwitchButtons;
begin
  sbtnSwitchMode_Basic.Appearance.Normal.TransparentBorder := True;
  sbtnSwitchMode_Basic.Appearance.Normal.TransparentBackground := True;
  sbtnSwitchMode_Rgb.Appearance.Normal.TransparentBorder := True;
  sbtnSwitchMode_Rgb.Appearance.Normal.TransparentBackground := True;
  sbtnSwitchMode_HslWin.Appearance.Normal.TransparentBorder := True;
  sbtnSwitchMode_HslWin.Appearance.Normal.TransparentBackground := True;

  sbtnSwitchMode_Basic.Appearance.Normal.FontColor := clBlack;
  sbtnSwitchMode_Rgb.Appearance.Normal.FontColor := clBlack;
  sbtnSwitchMode_HslWin.Appearance.Normal.FontColor := clBlack;

  if ntb.PageIndex = PAGE_INDEX_BASIC then // Basic
  begin
    sbtnSwitchMode_Basic.Appearance.Normal.TransparentBorder := False;
    sbtnSwitchMode_Basic.Appearance.Normal.TransparentBackground := False;
    sbtnSwitchMode_Basic.Appearance.Normal.FontColor := clWhite;
  end
  else if ntb.PageIndex = PAGE_INDEX_RGB then // RGB
  begin
    sbtnSwitchMode_Rgb.Appearance.Normal.TransparentBorder := False;
    sbtnSwitchMode_Rgb.Appearance.Normal.TransparentBackground := False;
    sbtnSwitchMode_Rgb.Appearance.Normal.FontColor := clWhite;
  end
  else if ntb.PageIndex = PAGE_INDEX_HSL_WIN then // HSL Win
  begin
    sbtnSwitchMode_HslWin.Appearance.Normal.TransparentBorder := False;
    sbtnSwitchMode_HslWin.Appearance.Normal.TransparentBackground := False;
    sbtnSwitchMode_HslWin.Appearance.Normal.FontColor := clWhite;
  end;
end;


{$region '                      RGB Controls                            '}

procedure TFormModifyPalette.spedRgb_SetRedValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbRgbRed.Position := spedRgb_SetRed.IntValue;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.tbRgbRedScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    spedRgb_SetRed.Value := tbRgbRed.Position;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.spedRgb_SetGreenValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbRgbGreen.Position := spedRgb_SetGreen.IntValue;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.tbRgbGreenScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    spedRgb_SetGreen.Value := tbRgbGreen.Position;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.spedRgb_SetBlueValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbRgbBlue.Position := spedRgb_SetBlue.IntValue;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.tbRgbBlueScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    spedRgb_SetBlue.Value := tbRgbBlue.Position;
  finally
    bUpdatingControls := False;
  end;
end;

{$endregion RGB controls}


{$region '                   HSL WIN Controls                    '}


procedure TFormModifyPalette.spedHslWin_SetHueValueChanged(Sender: TObject);
var
  xr: Double;
begin
  if bUpdatingControls then Exit;
  xr := PercentValue(spedHslWin_SetHue.IntValue, HSL_MAX_WIN_HUE);
  xr := PercentOf(xr, 360);
  bUpdatingControls := True;
  try
    cpHueWin.Hue := Round(xr);
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.cpHueWinChange(Sender: TObject);
var
  xr: Double;
begin
  if bUpdatingControls then Exit;
  xr := PercentValue(cpHueWin.Hue, 360);
  xr := PercentOf(xr, HSL_MAX_WIN_HUE);
  bUpdatingControls := True;
  try
    spedHslWin_SetHue.Value := Round(xr);
  finally
    bUpdatingControls := False;
  end;
end;




procedure TFormModifyPalette.spedHslWin_SetSatValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbHslWinSat.Position := spedHslWin_SetSat.IntValue;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.tbHslWinSatScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  bUpdatingControls := True;
  try
    spedHslWin_SetSat.Value := tbHslWinSat.Position;
  finally
    bUpdatingControls := False;
  end;
end;



procedure TFormModifyPalette.spedHslWin_SetLumValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  bUpdatingControls := True;
  try
    tbHslWinLum.Position := spedHslWin_SetLum.IntValue;
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormModifyPalette.tbHslWinLumScroll(Sender: TObject; ScrollCode: TJPPegtopScrollCode; var ScrollPos: Integer);
begin
  bUpdatingControls := True;
  try
    spedHslWin_SetLum.Value := tbHslWinLum.Position;
  finally
    bUpdatingControls := False;
  end;
end;



{$endregion HSL WIN Controls}





procedure TFormModifyPalette.clbOriginalColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
begin
  case ntb.PageIndex of
    PAGE_INDEX_BASIC, PAGE_INDEX_RGB: ColorStr := ColorToRgbIntStr(CurrentColor);
    PAGE_INDEX_HSL_WIN: ColorStr := ColorToHslWinStr(CurrentColor, False, 3, ' ');
  end;
end;

procedure TFormModifyPalette.clbModifiedColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
begin
  case ntb.PageIndex of
    PAGE_INDEX_BASIC, PAGE_INDEX_RGB: ColorStr := ColorToRgbIntStr(CurrentColor);
    PAGE_INDEX_HSL_WIN: ColorStr := ColorToHslWinStr(CurrentColor, False, 3, ' ');
  end;
end;

procedure TFormModifyPalette.btn1Click(Sender: TObject);
begin
  ntb.ActivePage := 'HSL_WIN';
end;

end.
