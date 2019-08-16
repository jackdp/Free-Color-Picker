unit FCP.FormColorMixer;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, // System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,

  // JPLib
  JPL.Strings, JPL.Colors, JPL.Conversion, JPL.IniFile,

  // JPPack
  JPP.PngButton, JPP.SimplePanel, JPP.ColorListBox, JPP.BasicPanel, JPP.ColorSwatch, JPP.ColorComboBox,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings, FCP.FormEditColor;

type
  TFormColorMixer = class(TForm)
    pnBottom: TJppSimplePanel;
    lblAddPos: TLabel;
    btnClose: TJppPngButton;
    btnAdd: TJppPngButton;
    cbAddPos: TComboBox;
    btnClearColors: TJppPngButton;
    Actions: TActionList;
    pnRight: TJppSimplePanel;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    clbColors: TJppColorListBox;
    pnMain: TJppSimplePanel;
    cswMixedColor: TJppColorSwatchEx;
    btnAddToColorList: TJppPngButton;
    actAddToColorList: TAction;
    actAdd: TAction;
    actClearColors: TAction;
    actClose: TAction;
    ccbFirstColor: TJppColorComboBox;
    ccbSecondColor: TJppColorComboBox;
    actEsc: TAction;
    pnSquares: TJppSimplePanel;
    pnFirst: TJppSimplePanel;
    pnSecond: TJppSimplePanel;
    pnMid: TJppSimplePanel;
    procedure actAddToColorListExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure ccbFirstColorBtnChangeColorClick(Sender: TObject);
    procedure ccbFirstColorColorChanged(Sender: TObject);
    procedure ccbSecondColorBtnChangeColorClick(Sender: TObject);
    procedure ccbSecondColorColorChanged(Sender: TObject);
    procedure cswMixedColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    procedure MixColors;
    procedure InitControls;
    procedure UpdateColorCountLabel;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
  end;

var
  FormColorMixer: TFormColorMixer;


implementation

uses
  FCP.FormMain;

{$R *.dfm}


{$region '                            Create & Close                           '}
procedure TFormColorMixer.FormCreate(Sender: TObject);
begin
  Caption := 'Color mixer';
  PrepareModuleStrings_ColorMixer;
  PrepareControls;
  LoadSettingsFromIni;
  MixColors;
  InitControls;
end;

procedure TFormColorMixer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;
{$endregion Create & Close}


{$region '                           PrepareControls                             '}
procedure TFormColorMixer.PrepareControls;

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

    ccb.Items.Clear;
    ccb.Items.Assign(FormEditColor.clbColors.Items);
  end;

begin

  clbColors.Clear;
  clbColors.Align := alClient;
  lblColors.Align := alClient;

  pnMain.Align := alClient;
  InitCCB(ccbFirstColor);
  InitCCB(ccbSecondColor);
  ccbFirstColor.SelectedColor := 6333684;
  ccbSecondColor.SelectedColor := 16748574;

  btnAddToColorList.Appearance.Assign(FormMain.btnT1.Appearance);
  btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);

  cswMixedColor.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  cswMixedColor.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);

  pnFirst.Appearance.BorderStyle := psClear;
  pnMid.Appearance.BorderStyle := psClear;
  pnSecond.Appearance.BorderStyle := psClear;
end;
{$endregion PrepareControls}


{$region '                        InitControls                           '}
procedure TFormColorMixer.InitControls;
var
  xCount: integer;
begin
  xCount := clbColors.Items.Count;
  actClearColors.Enabled := xCount > 0;
  actAdd.Enabled := xCount > 0;
  cbAddPos.Enabled := xCount > 0;
  lblAddPos.Enabled := xCount > 0;
  UpdateColorCountLabel;
end;
{$endregion InitControls}


{$region '                            SetLang                                '}
procedure TFormColorMixer.SetLang;
var
  x: integer;
begin
  Caption := lsMixer.GetString('Caption', Caption);

  ccbFirstColor.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  ccbFirstColor.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  ccbFirstColor.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');
  ccbSecondColor.ButtonChangeColor.Hint := ccbFirstColor.ButtonChangeColor.Hint;
  ccbSecondColor.ButtonCopyColor.Hint := ccbFirstColor.ButtonCopyColor.Hint;
  ccbSecondColor.ButtonPasteColor.Hint := ccbFirstColor.ButtonPasteColor.Hint;

  cswMixedColor.ButtonCopyColor.Hint := ccbFirstColor.ButtonCopyColor.Hint;

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

  InitControls;
end;
{$endregion SetLang}


{$region '                                 INI: Load & Save settings                                '}
procedure TFormColorMixer.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin

  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_COLOR_MIXER, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteColorComboBox(ccbFirstColor);
    TAppHelper.WriteColorComboBox(ccbSecondColor);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormColorMixer.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_COLOR_MIXER, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadColorComboBox(ccbFirstColor);
    TAppHelper.ReadColorComboBox(ccbSecondColor);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;
{$endregion INI: Load & Save settings}


procedure TFormColorMixer.MixColors;
begin
  cswMixedColor.SelectedColor := AvgColor(ccbFirstColor.SelectedColor, ccbSecondColor.SelectedColor);
  pnFirst.Appearance.BackgroundColor := ccbFirstColor.SelectedColor;
  pnSecond.Appearance.BackgroundColor := ccbSecondColor.SelectedColor;
  pnMid.Appearance.BackgroundColor := cswMixedColor.SelectedColor;

  pnSquares.Appearance.BackgroundColor := GetSimilarColor2(cswMixedColor.SelectedColor, 60);
  pnSquares.Appearance.BorderColor := GetSimilarColor(pnSquares.Appearance.BackgroundColor, 15, False);
end;

procedure TFormColorMixer.actAddToColorListExecute(Sender: TObject);
var
  sName: string;
begin
  sName := 'Mix (' + ColorToRgbIntStr(ccbFirstColor.SelectedColor) + ' + ' + ColorToRgbIntStr(ccbSecondColor.SelectedColor) + ')';
  clbColors.AddColor(cswMixedColor.SelectedColor, sName);
  clbColors.ScrollToLast;
  InitControls;
end;

procedure TFormColorMixer.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormColorMixer.UpdateColorCountLabel;
begin
  lblColors.Caption := lsMixer.GetString('Colors', 'Colors') + ' (' + itos(clbColors.Count) + ')';
end;

procedure TFormColorMixer.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  InitControls;
end;

procedure TFormColorMixer.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormColorMixer.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormColorMixer.ccbFirstColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := ccbFirstColor.SelectedColor;
  if not EditColor(cl) then Exit;
  ccbFirstColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormColorMixer.ccbSecondColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := ccbSecondColor.SelectedColor;
  if not EditColor(cl) then Exit;
  ccbSecondColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormColorMixer.ccbFirstColorColorChanged(Sender: TObject);
begin
  MixColors;
end;

procedure TFormColorMixer.ccbSecondColorColorChanged(Sender: TObject);
begin
  MixColors;
end;

procedure TFormColorMixer.cswMixedColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;



end.
