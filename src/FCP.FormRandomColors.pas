unit FCP.FormRandomColors;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, // System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ActnList,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Math, JPL.IniFile,

  // JPPack
  JPP.SimplePanel, JPP.ColorListBox, JPP.BasicPanel, JPP.PngButton,

  // JPModLib
  JPPegtopTrackBars,

  // SpTBX
  SpTBXEditors,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

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
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actGenerateRandomColorsExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure clbColorsGetColorStrValue(const Index: Integer; const CurrentColor: TColor; var ColorStr: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure UpdateColorCountLabel;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
  private
    bUpdatingControls: Boolean;
  end;
  {$endregion TFormRandomColors}


var
  FormRandomColors: TFormRandomColors;


implementation

uses
  FCP.FormMain;

{$R *.dfm}



{$region '                     Create & Close                       '}
procedure TFormRandomColors.FormCreate(Sender: TObject);
begin
  Caption := 'Random Colors';
  PrepareControls;
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
  PrepareModuleStrings_RandomColors;
  LoadSettingsFromIni;
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
end;
{$endregion PrepareControls}


{$region '                           InitControls                             '}
procedure TFormRandomColors.InitControls;
var
  b: Boolean;
  xCount: integer;
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

    b := rbHslWin.Checked;
    tbRange_HslWin_Hue.Enabled := b;
    tbRange_HslWin_Sat.Enabled := b;
    tbRange_HslWin_Lum.Enabled := b;
    lblRange_HslWin_Hue.Enabled := tbRange_HslWin_Hue.Enabled;
    lblRange_HslWin_Sat.Enabled := tbRange_HslWin_Sat.Enabled;
    lblRange_HslWin_Lum.Enabled := tbRange_HslWin_Lum.Enabled;

    b := rbHslCss.Checked;
    tbRange_HslCss_Hue.Enabled := b;
    tbRange_HslCss_Sat.Enabled := b;
    tbRange_HslCss_Lum.Enabled := b;
    lblRange_HslCss_Hue.Enabled := tbRange_HslCss_Hue.Enabled;
    lblRange_HslCss_Sat.Enabled := tbRange_HslCss_Sat.Enabled;
    lblRange_HslCss_Lum.Enabled := tbRange_HslCss_Lum.Enabled;

    xCount := clbColors.Count;
    actClearColors.Enabled := xCount > 0;
    actAdd.Enabled := xCount > 0;
    cbAddPos.Enabled := xCount > 0;
    lblAddPos.Enabled := xCount > 0;

    clbColors.Repaint;
    UpdateColorCountLabel;

  finally
    bUpdatingControls := False;
  end;
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
begin
  Caption := lsRandom.GetString('Caption', Caption);

  lblAddPos.Caption := lsMain.GetString('lblAddPos', lblAddPos.Caption);
  x := cbAddPos.ItemIndex;
  cbAddPos.Items.Clear;
  cbAddPos.Items.Add(lsMain.GetString('AddPos_Top', 'At the top'));
  cbAddPos.Items.Add(lsMain.GetString('AddPos_End', 'At the end'));
  cbAddPos.ItemIndex := x;

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

    TAppHelper.ReadRadioButtonGroup('ColorMode', [rbRgb, rbHslWin, rbHslCss], rbRgb);

    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);


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

end.
