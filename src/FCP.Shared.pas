unit FCP.Shared;

interface

uses
  Winapi.Windows, Winapi.ShellApi, Winapi.Messages,

  System.SysUtils, System.Classes,

  Vcl.Graphics, Vcl.Forms, Vcl.StdCtrls, Vcl.Clipbrd, Vcl.Controls,

  JPL.Strings, JPL.Math, JPL.Conversion, JPL.IniFile, JPL.Colors, JPL.RTTI, JPL.Dialogs,

  FCP.Types, FCP.ColorPalette, FCP.AppStrings,

  JPP.ColorSwatch, JPP.ColorComboBox, JPP.ColorListBox,

  JPPegtopTrackBars,

  VirtualTrees,

  SpTBXEditors;


type

  TSpTBXSpinEditHelper = class helper for TSpTBXSpinEdit
  public
    function IntValue: integer;
    function ByteValue: Byte;
    function MinIntValue: integer;
    function MaxIntValue: integer;
  end;

  TAppHelper = record
  strict private
    class var FIniSection: TJPIniSection;
  public
    //class function GetValueByID<T>(ID: string; const ArrIDs: TArray<string>; const Values: TArray<T>; const Default: T; IgnoreCase: Boolean = True): T; static;
    class function GetValueByID<T>(ID: string; const ArrIDs: array of string; const Values: array of T; const Default: T; IgnoreCase: Boolean = True): T; static;

    class procedure NilIniSection; static;

    class procedure WriteFormSize(Form: TForm); static;
    class function ReadFormSize(Form: TForm; const MinWidth, MaxWidth, MinHeight, MaxHeight: integer): Boolean; static;
    class procedure WriteCheckboxState(CheckBox: TCheckBox); static;
    class procedure ReadCheckboxState(CheckBox: TCheckBox); static;
    class procedure WriteRadioButtonGroup(const IniID: string; const Group: array of TRadioButton); static;
    class procedure ReadRadioButtonGroup(const IniID: string; const Group: array of TRadioButton; Default: TRadioButton); static;
    class procedure WriteTrackBarPos(TrackBar: TJPPegtopTrackBar); static;
    class procedure ReadTrackBarPos(TrackBar: TJPPegtopTrackBar); static;
    class procedure WriteRangeBarPos(RangeBar: TJPPegtopRangeBar); static;
    class procedure ReadRangeBarPos(RangeBar: TJPPegtopRangeBar); static;
    class procedure WriteColorSwatchColor(ColorSwatch: TJppCustomColorSwatch); static;
    class procedure ReadColorSwatchColor(ColorSwatch: TJppCustomColorSwatch); static;
    class procedure WriteColorComboBox(ColorComboBox: TJppColorComboBox); static;
    class procedure ReadColorComboBox(ColorComboBox: TJppColorComboBox); static;
    class procedure WriteSpinEditIntValue(SpinEdit: TSpTBXSpinEdit); static;
    class procedure ReadSpinEditIntValue(SpinEdit: TSpTBXSpinEdit); static;
    class procedure WriteComboBoxIndex(ComboBox: TCustomComboBox); static;
    class procedure ReadComboBoxIndex(ComboBox: TCustomComboBox; const Default: integer); static;
    class procedure WriteComboBoxIndexName(ComboBox: TCustomComboBox; const Names: array of string); static;
    class procedure ReadComboBoxIndexByName(ComboBox: TCustomComboBox; const Names: array of string; DefaultIndex: integer); static;

    // ColorListBox
    class procedure FillColorPaletteFromListBox(cp: TColorPalette; clb: TJppColorListBox; SelectedOnly: Boolean = False); static;
    class procedure ExportColorPaletteToHtmlFile(const FileName: string; cp: TColorPalette; bShowJson: Boolean = True); static;
    class procedure SaveListBoxColorsToHtmlFile(const FileName: string; clb: TJppColorListBox; bShowJson: Boolean = True; SelectedOnly: Boolean = False); static;
    class procedure SaveListBoxColorsToGPLFile(const FileName: string; clb: TJppColorListBox; const PaletteName: string; SelectedOnly: Boolean = False); static;
    class procedure CopyListBoxColorsToClipboard(clb: TJppColorListBox; const ColorType: TColorType; SelectedOnly: Boolean); static;

    class property IniSection: TJPIniSection read FIniSection write FIniSection;

    class procedure CheckForm(FormClass: TComponentClass); static;
  end;


  TNHelper = record helper for TVirtualNode
  public
    procedure Hide;
    procedure Show;
    function Visible: Boolean;
    function Selected: Boolean;
  end;

//  TNodeHelper = record
//  public
//    class procedure HideNode(Node: PVirtualNode); static;
//    class procedure ShowNode(Node: PVirtualNode); static;
//    class function NodeVisible(Node: PVirtualNode): Boolean; static;
//  end;



procedure GoToURL(const URL: string);
function FontExists(const FontName: string; bIgnoreCase: Boolean = False): Boolean;
procedure ApplyFontParams(Font: TFont; const FontParams: TFontParams);
function IsSupportedGraphicFile(const FileName: string): Boolean;
procedure SwitchFormTop(Form: TForm);
procedure EnableOrDisableControls(const Enable: Boolean; Controls: array of TControl);

function EditColor(var AColor: TColor): Boolean;
function Darker(const cl: TColor; const xPercent: integer): TColor;

procedure DrawHueBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 100; Lum: integer = 50);
procedure DrawHueWinBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 120; Lum: integer = 120; HueMin: integer = 0; HueMax: integer = 239);
procedure DrawHueCssBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 100; Lum: integer = 50; HueMin: integer = 0; HueMax: integer = 360);



implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor, FCP.FormAbout, FCP.FormAutoCapture, FCP.FormCheckUpdate, FCP.FormColorMixer, FCP.FormColorWheel,
  FCP.FormEditColor, FCP.FormEditColorName, FCP.FormGradientColors, FCP.FormModifyPalette, FCP.FormPixelColor,
  FCP.FormQuickAccess, FCP.FormRandomColors, FCP.FormSimilarColors, FCP.FormSortBy, FCP.FormOptions,
  FCP.Bitmap;



{$region '                            routines                                 '}

procedure EnableOrDisableControls(const Enable: Boolean; Controls: array of TControl);
var
  i: integer;
begin
  for i := 0 to High(Controls) do
    Controls[i].Enabled := Enable;
end;


procedure DrawHueWinBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 120; Lum: integer = 120; HueMin: integer = 0; HueMax: integer = 239);
var
  i, Hue, xLeft: integer;
  cl: TColor;
  Bar: TRect;
  Bmp2: TBitmap;
begin
  if HueMax < HueMin then Exit;
  if (Bmp.Width < 2) or (Bmp.Height < 2) then Exit;

  if HueMin = HueMax then
  with Bmp.Canvas do
  begin
    cl := HslWinToColor(HueMin, Sat, Lum);
    Brush.Style := bsSolid;
    Brush.Color := cl;
    Pen.Style := psSolid;
    Pen.Color := cl;
    Rectangle(0, 0, Bmp.Width, Bmp.Height);
  end

  else

  begin

    Bmp2 := TBitmap.Create;
    try

      Bmp2.PixelFormat := pf24bit;
      Bmp2.Height := Bmp.Height;
      Bmp2.Width := HueMax - HueMin;

      with Bmp2.Canvas do
      begin

        Bar.Height := Bmp2.Height;

        xLeft := 0;
        for i := HueMin to HueMax do
        begin
          Hue := i;
          cl := HslWinToColor(Hue, Sat, Lum);
          Bar.Left := xLeft;
          Bar.Width := 1;
          Pen.Color := cl;
          Brush.Color := cl;
          Rectangle(Bar);
          Inc(xLeft);
        end;

      end;

      BitmapResize(Bmp2, Bmp.Width, Bmp.Height, rtLanczos);
      Bmp.Canvas.Draw(0, 0, Bmp2);

    finally
      Bmp2.Free;
    end;

  end;


  if BorderColor <> clNone then
  with Bmp.Canvas do
  begin
    Brush.Style := bsClear;
    Bar.Left := 0;
    Bar.Top := 0;
    Bar.Width := Bmp.Width;
    Bar.Height := Bmp.Height;
    Pen.Style := psSolid;
    Pen.Width := 1;
    Pen.Color := BorderColor;
    Rectangle(Bar);
  end;

end;

procedure DrawHueCssBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 100; Lum: integer = 50; HueMin: integer = 0; HueMax: integer = 360);
var
  i, Hue, xLeft: integer;
  cl: TColor;
  Bar: TRect;
  Bmp2: TBitmap;
begin
  if HueMax < HueMin then Exit;
  if (Bmp.Width < 2) or (Bmp.Height < 2) then Exit;

  if HueMin = HueMax then
  with Bmp.Canvas do
  begin
    cl := HslCssToColor(HueMin, Sat, Lum);
    Brush.Style := bsSolid;
    Brush.Color := cl;
    Pen.Style := psSolid;
    Pen.Color := cl;
    Rectangle(0, 0, Bmp.Width, Bmp.Height);
  end

  else

  begin

    Bmp2 := TBitmap.Create;
    try

      Bmp2.PixelFormat := pf24bit;
      Bmp2.Height := Bmp.Height;
      Bmp2.Width := HueMax - HueMin;

      with Bmp2.Canvas do
      begin
        Bar.Height := Bmp2.Height;
        xLeft := 0;
        for i := HueMin to HueMax do
        begin
          Hue := i;
          cl := HslCssToColor(Hue, Sat, Lum);
          Bar.Left := xLeft;
          Bar.Width := 1;
          Pen.Color := cl;
          Brush.Color := cl;
          Rectangle(Bar);
          Inc(xLeft);
        end;
      end;

      BitmapResize(Bmp2, Bmp.Width, Bmp.Height, rtLanczos);
      Bmp.Canvas.Draw(0, 0, Bmp2);

    finally
      Bmp2.Free;
    end;

  end;


  if BorderColor <> clNone then
  with Bmp.Canvas do
  begin
    Brush.Style := bsClear;
    Bar.Left := 0;
    Bar.Top := 0;
    Bar.Width := Bmp.Width;
    Bar.Height := Bmp.Height;
    Pen.Style := psSolid;
    Pen.Width := 1;
    Pen.Color := BorderColor;
    Rectangle(Bar);
  end;

end;

procedure DrawHueBar(Bmp: TBitmap; BorderColor: TColor = clNone; Sat: integer = 100; Lum: integer = 50);
var
  i, Hue: integer;
  xrw: Single;
  cl: TColor;
  Bar: TRect;
begin
  if (Bmp.Width < 2) or (Bmp.Height < 2) then Exit;

  with Bmp.Canvas do
  begin

    xrw := Bmp.Width / 360;
    Bar.Height := Bmp.Height;

    for i := 0 to 360 do
    begin
      Hue := Round(xrw + i);
      cl := HslCssToColor(Hue, Sat, Lum);
      Bar.Left := Round(xrw * i);
      Bar.Width := 1;
      Pen.Color := cl;
      Brush.Color := cl;
      Rectangle(Bar);
    end;

    if BorderColor <> clNone then
    begin
      Brush.Style := bsClear;
      Bar.Left := 0;
      Bar.Top := 0;
      Bar.Width := Bmp.Width;
      Bar.Height := Bmp.Height;
      Pen.Style := psSolid;
      Pen.Width := 1;
      Pen.Color := BorderColor;
      Rectangle(Bar);
    end;

  end;

end;

function Darker(const cl: TColor; const xPercent: integer): TColor;
begin
  //Result := GetSimilarColor(cl, xPercent, False);
  Result := ColorSetPercentPale(cl, -xPercent);
end;

function EditColor(var AColor: TColor): Boolean;
var
  fs: TFormStyle;
begin
  fs := FormMain.FormStyle;
  FormMain.FormStyle := fsNormal;

  FormEditColor.SetCurrentColor(AColor);

  try
    FormEditColor.ShowModal;
  finally
    FormMain.FormStyle := fs;
  end;

  AColor := FormEditColor.GetCurrentColor;

  // Vcl.Controls: mrOk --> System.UITypes: mrOk = idOk; idOk = 1;
  Result := FormEditColor.ModalResult = {mrOk} 1;
end;


procedure SwitchFormTop(Form: TForm);
begin
  if not Assigned(Form) then Exit;
  Form.FormStyle := fsNormal;
  Form.FormStyle := fsStayOnTop;
end;

function IsSupportedGraphicFile(const FileName: string): Boolean;
const
  ArrExts: array[0..3] of string = ('BMP', 'JPG', 'PNG', 'GIF'); // TIFF ?
var
  Ext: string;
  i: integer;
begin
  Result := False;
  Ext := UpperCase(GetFileExt(FileName, True));
  for i := 0 to High(ArrExts) do
    if ArrExts[i] = Ext then
    begin
      Result := True;
      Break;
    end;
end;

procedure ApplyFontParams(Font: TFont; const FontParams: TFontParams);
begin
  Font.Name := FontParams.Name;
  Font.Size := FontParams.Size;
  Font.Color := FontParams.Color;
  Font.Style := FontParams.Style;
end;

function FontExists(const FontName: string; bIgnoreCase: Boolean = False): Boolean;
var
  sl: TStringList;
begin
  if not bIgnoreCase then
  begin
    Result := Screen.Fonts.IndexOf(FontName) >= 0;
    Exit;
  end;

  sl := TStringList.Create;
  try
    sl.CaseSensitive := False;
    sl.Text := Screen.Fonts.Text;
    Result := sl.IndexOf(FontName) >= 0;
  finally
    sl.Free;
  end;
end;

procedure GoToURL(const URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), '', '', SW_SHOW);
end;

{$endregion routines}




{$region '                     TAppHelper                      '}



//class function TAppHelper.GetValueByID<T>(ID: string; const ArrIDs: TArray<string>; const Values: TArray<T>; const Default: T; IgnoreCase: Boolean = True): T;
class function TAppHelper.GetValueByID<T>(ID: string; const ArrIDs: array of string; const Values: array of T; const Default: T; IgnoreCase: Boolean = True): T;
var
  i: integer;
  sArrID: string;
begin
  Result := Default;
  if Length(ArrIDs) <> Length(Values) then Exit;

  if IgnoreCase then ID := AnsiUpperCase(ID);

  for i := 0 to High(ArrIDs) do
  begin
    sArrID := ArrIDs[i];
    if IgnoreCase then sArrID := AnsiUpperCase(sArrID);
    if sArrID = ID then
    begin
      Result := Values[i];
      Break;
    end;
  end;

end;

class procedure TAppHelper.NilIniSection;
begin
  FIniSection := nil;
end;

class procedure TAppHelper.WriteFormSize(Form: TForm);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteString(Form.Name + '.Size', itos(Form.Width) + 'x' + itos(Form.Height));
end;

class function TAppHelper.ReadFormSize(Form: TForm; const MinWidth, MaxWidth, MinHeight, MaxHeight: integer): Boolean;
var
  xWidth, xHeight: integer;
  s: string;
begin
  Result := False;
  if FIniSection = nil then Exit;
  s := FIniSection.ReadString(Form.Name + '.Size', '');
  if s = '' then Exit;
  if not SplitStr(s, xWidth, xHeight, 'x') then Exit;
  LimitValue(xWidth, MinWidth, MaxWidth);
  LimitValue(xHeight, MinHeight, MaxHeight);
  Form.Width := xWidth;
  Form.Height := xHeight;
end;

class procedure TAppHelper.WriteCheckboxState(CheckBox: TCheckBox);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteBool(CheckBox.Name + '.Checked', CheckBox.Checked);
end;

class procedure TAppHelper.ReadCheckboxState(CheckBox: TCheckBox);
begin
  if FIniSection = nil then Exit;
  CheckBox.Checked := FIniSection.ReadBool(CheckBox.Name + '.Checked', CheckBox.Checked);
end;

class procedure TAppHelper.WriteRadioButtonGroup(const IniID: string; const Group: array of TRadioButton);
var
  rb: TRadioButton;
  i: integer;
begin
  if FIniSection = nil then Exit;
  for i := 0 to High(Group) do
  begin
    rb := Group[i];
    if rb.Checked then
    begin
      FIniSection.WriteString(IniID, rb.Name);
      Break;
    end;
  end;
end;

class procedure TAppHelper.ReadRadioButtonGroup(const IniID: string; const Group: array of TRadioButton; Default: TRadioButton);
var
  rb: TRadioButton;
  i: integer;
  s: string;
  b: Boolean;
begin
  if FIniSection = nil then Exit;
  b := False;
  s := UpperCase(FIniSection.ReadString(IniID, ''));
  if s <> '' then
    for i := 0 to High(Group) do
    begin
      rb := Group[i];
      if UpperCase(rb.Name) = s then
      begin
        b := True;
        rb.Checked := True;
        Break;
      end;
    end;
  if not b then
    if Default <> nil then Default.Checked := True;
end;



class procedure TAppHelper.WriteComboBoxIndex(ComboBox: TCustomComboBox);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteInteger(ComboBox.Name + '.Selected', ComboBox.ItemIndex);
end;

class procedure TAppHelper.ReadComboBoxIndex(ComboBox: TCustomComboBox; const Default: integer);
var
  x: integer;
begin
  if FIniSection = nil then Exit;
  x := FIniSection.ReadInteger(ComboBox.Name + '.Selected', Default);
  if (x < 0) or (x > ComboBox.Items.Count - 1) then x := Default;
  LimitValue(x, -1, ComboBox.Items.Count - 1);
  if x < 0 then Exit;
  ComboBox.ItemIndex := x;
end;

class procedure TAppHelper.WriteComboBoxIndexName(ComboBox: TCustomComboBox; const Names: array of string);
var
  i: integer;
  Arr: array of string;
begin
  if FIniSection = nil then Exit;
  if (ComboBox.Items.Count <= 0) or (ComboBox.ItemIndex < 0) then Exit;
  SetLength(Arr, Length(Names));
  for i := 0 to High(Names) do Arr[i] := Names[i];
  if Length(Arr) < ComboBox.Items.Count then
  begin
    SetLength(Arr, ComboBox.Items.Count);
    for i := Length(Names) to High(Arr) do Arr[i] := itos(i);
  end;
  FIniSection.WriteString(ComboBox.Name, Arr[ComboBox.ItemIndex]);
end;

class procedure TAppHelper.ReadComboBoxIndexByName(ComboBox: TCustomComboBox; const Names: array of string; DefaultIndex: integer);

  function IsValidIndex(const Index: integer): Boolean;
  begin
    if ComboBox.Items.Count <= 0 then Exit(False);
    Result := Index in [0..ComboBox.Items.Count - 1];
  end;

var
  s: string;
  i: integer;
begin
  if FIniSection = nil then Exit;
  if ComboBox.Items.Count <= 0 then Exit;
  s := FIniSection.ReadString(ComboBox.Name, '');
  if s = '' then
  begin
    if IsValidIndex(DefaultIndex) then ComboBox.ItemIndex := DefaultIndex;
    Exit;
  end;

  s := AnsiUpperCase(s);
  for i := 0 to High(Names) do
  begin
    if s = AnsiUpperCase(Names[i]) then
    begin
      if IsValidIndex(i) then ComboBox.ItemIndex := i
      else if IsValidIndex(DefaultIndex) then ComboBox.ItemIndex := DefaultIndex;
      Exit;
    end;
  end;

  if IsValidIndex(DefaultIndex) then ComboBox.ItemIndex := DefaultIndex;
end;

class procedure TAppHelper.WriteColorSwatchColor(ColorSwatch: TJppCustomColorSwatch);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteHtmlColor(ColorSwatch.Name + '.SelectedColor', ColorSwatch.SelectedColor);
end;

class procedure TAppHelper.ReadColorSwatchColor(ColorSwatch: TJppCustomColorSwatch);
begin
  if FIniSection = nil then Exit;
  ColorSwatch.SelectedColor := FIniSection.ReadHtmlColor(ColorSwatch.Name + '.SelectedColor', ColorSwatch.SelectedColor);
end;

class procedure TAppHelper.WriteColorComboBox(ColorComboBox: TJppColorComboBox);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteHtmlColor(ColorComboBox.Name + '.SelectedColor', ColorComboBox.SelectedColor);
end;

class procedure TAppHelper.ReadColorComboBox(ColorComboBox: TJppColorComboBox);
begin
  if FIniSection = nil then Exit;
  ColorComboBox.SelectedColor := FIniSection.ReadHtmlColor(ColorComboBox.Name + '.SelectedColor', ColorComboBox.SelectedColor);
end;

class procedure TAppHelper.WriteSpinEditIntValue(SpinEdit: TSpTBXSpinEdit);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteInteger(SpinEdit.Name + '.IntValue', SpinEdit.IntValue);
end;

class procedure TAppHelper.ReadSpinEditIntValue(SpinEdit: TSpTBXSpinEdit);
begin
  if FIniSection = nil then Exit;
  SpinEdit.Value := FIniSection.ReadIntegerInRange(SpinEdit.Name + '.IntValue', SpinEdit.IntValue, SpinEdit.MinIntValue, SpinEdit.MaxIntValue);
end;

class procedure TAppHelper.WriteTrackBarPos(TrackBar: TJPPegtopTrackBar);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteInteger(TrackBar.Name + '.Position', TrackBar.Position);
end;

class procedure TAppHelper.ReadTrackBarPos(TrackBar: TJPPegtopTrackBar);
begin
  if FIniSection = nil then Exit;
  TrackBar.Position := FIniSection.ReadIntegerInRange(TrackBar.Name + '.Position', TrackBar.Position, TrackBar.Min, TrackBar.Max);
end;

class procedure TAppHelper.WriteRangeBarPos(RangeBar: TJPPegtopRangeBar);
begin
  if FIniSection = nil then Exit;
  FIniSection.WriteString(RangeBar.Name + '.Range', itos(RangeBar.PositionMin) + ':' + itos(RangeBar.PositionMax));
end;

class procedure TAppHelper.ReadRangeBarPos(RangeBar: TJPPegtopRangeBar);
var
  s: string;
  xPosMin, xPosMax: integer;
begin
  if FIniSection = nil then Exit;
  s := FIniSection.ReadString(RangeBar.Name + '.Range', '');
  if s = '' then Exit;
  if not SplitStr(s, xPosMin, xPosMax, ':') then Exit;
  LimitValue(xPosMin, RangeBar.Min, RangeBar.Max);
  LimitValue(xPosMax, RangeBar.Min, RangeBar.Max);
  if xPosMin > xPosMax then xPosMin := xPosMax;
  RangeBar.PositionMin := xPosMin;
  RangeBar.PositionMax := xPosMax;
end;


  {$region '                 TAppHelper - ColorLisBox related                      '}



class procedure TAppHelper.CopyListBoxColorsToClipboard(clb: TJppColorListBox; const ColorType: TColorType; SelectedOnly: Boolean);
var
  cp: TColorPalette;
  cg: TColorGroup;
  s: string;
  i: integer;
  cl: TColor;
begin
  cp := TColorPalette.Create;
  try
    FillColorPaletteFromListBox(cp, clb, SelectedOnly);
    if cp.ColorGroupCount = 0 then Exit;
    cg := cp.ColorGroup[0];
    s := '';
    for i := 0 to cg.Count - 1 do
    begin
      cl := cg.ColorItem[i].Color;
      s := s + ColorToStrEx(cl, ColorType) + ENDL;
    end;
  finally
    cp.Free;
  end;
  s := Trim(s);
  if s <> '' then Clipboard.AsText := s;
end;

class procedure TAppHelper.ExportColorPaletteToHtmlFile(const FileName: string; cp: TColorPalette; bShowJson: Boolean);
begin
  cp.SaveToHtmlFile(FileName, 'Color Palette', bShowJson, True, True, True, True, True, True, True, True, True);
end;

class procedure TAppHelper.SaveListBoxColorsToGPLFile(const FileName: string; clb: TJppColorListBox; const PaletteName: string; SelectedOnly: Boolean = False);
var
  cp: TColorPalette;
begin
  cp := TColorPalette.Create;
  try
    FillColorPaletteFromListBox(cp, clb, SelectedOnly);
    cp.SaveToGimpPaletteFile(FileName, PaletteName);
  finally
    cp.Free;
  end;
end;

class procedure TAppHelper.SaveListBoxColorsToHtmlFile(const FileName: string; clb: TJppColorListBox; bShowJson: Boolean = True; SelectedOnly: Boolean = False);
var
  cp: TColorPalette;
begin
  cp := TColorPalette.Create;
  try
    FillColorPaletteFromListBox(cp, clb, SelectedOnly);
    cp.SaveToHtmlFile(FileName, 'Color Palette', bShowJson, True, True, True, True, True, True, True, True, True);
  finally
    cp.Free;
  end;
end;

class procedure TAppHelper.FillColorPaletteFromListBox(cp: TColorPalette; clb: TJppColorListBox; SelectedOnly: Boolean = False);
var
  cg: TColorGroup;
  i: integer;
  cl: TColor;
  ColorName: string;
begin
  cp.AppName := APP_NAME;
  cp.AppVersion := APP_VER_STR;

  cg := cp.AddGroup(COLOR_GROUP_NAME);

  for i := 0 to clb.Count - 1 do
  begin
    if not clb.IsColorItem(i) then Continue;
    if SelectedOnly and (not clb.Selected[i]) then Continue;
    cl := clb.GetItemColor(i);
    ColorName := clb.GetItemName(i);
    cg.AddColor(cl, ColorName);
  end;
end;
  {$endregion TAppHelper - ColorLisBox related}


class procedure TAppHelper.CheckForm(FormClass: TComponentClass);
begin
  if (FormClass = TFormAbout) and (not Assigned(FormAbout)) then
  begin
    Application.CreateForm(TFormAbout, FormAbout);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormAbout.SetLang;
  end
  else if (FormClass = TFormOptions) and (not Assigned(FormOptions)) then
  begin
    Application.CreateForm(TFormOptions, FormOptions);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormOptions.SetLang;
  end
  else if (FormClass = TFormEditColor) and (not Assigned(FormEditColor)) then
  begin
    Application.CreateForm(TFormEditColor, FormEditColor);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormEditColor.SetLang;
  end
  else if (FormClass = TFormPaletteEditor) and (not Assigned(FormPaletteEditor)) then
  begin
    Application.CreateForm(TFormPaletteEditor, FormPaletteEditor);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormPaletteEditor.SetLang;
  end
  else if (FormClass = TFormAutoCapture) and (not Assigned(FormAutoCapture)) then
  begin
    Application.CreateForm(TFormAutoCapture, FormAutoCapture);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormAutoCapture.SetLang;
  end
  else if (FormClass = TFormCheckUpdate) and (not Assigned(FormCheckUpdate)) then
  begin
    Application.CreateForm(TFormCheckUpdate, FormCheckUpdate);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormCheckUpdate.SetLang;
  end
  else if (FormClass = TFormColorMixer) and (not Assigned(FormColorMixer)) then
  begin
    Application.CreateForm(TFormColorMixer, FormColorMixer);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormColorMixer.SetLang;
  end
  else if (FormClass = TFormColorWheel) and (not Assigned(FormColorWheel)) then
  begin
    Application.CreateForm(TFormColorWheel, FormColorWheel);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormColorWheel.SetLang;
  end
  else if (FormClass = TFormEditColorName) and (not Assigned(FormEditColorName)) then
  begin
    Application.CreateForm(TFormEditColorName, FormEditColorName);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormEditColorName.SetLang;
  end
  else if (FormClass = TFormGradientColors) and (not Assigned(FormGradientColors)) then
  begin
    Application.CreateForm(TFormGradientColors, FormGradientColors);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormGradientColors.SetLang;
  end
  else if (FormClass = TFormModifyPalette) and (not Assigned(FormModifyPalette)) then
  begin
    Application.CreateForm(TFormModifyPalette, FormModifyPalette);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormModifyPalette.SetLang;
  end
  else if (FormClass = TFormPixelColor) and (not Assigned(FormPixelColor)) then
  begin
    Application.CreateForm(TFormPixelColor, FormPixelColor);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormPixelColor.SetLang;
  end
  else if (FormClass = TFormQuickAccess) and (not Assigned(FormQuickAccess)) then
  begin
    Application.CreateForm(TFormQuickAccess, FormQuickAccess);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormQuickAccess.SetLang;
  end
  else if (FormClass = TFormRandomColors) and (not Assigned(FormRandomColors)) then
  begin
    Application.CreateForm(TFormRandomColors, FormRandomColors);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormRandomColors.SetLang;
  end
  else if (FormClass = TFormSimilarColors) and (not Assigned(FormSimilarColors)) then
  begin
    Application.CreateForm(TFormSimilarColors, FormSimilarColors);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormSimilarColors.SetLang;
  end
  else if (FormClass = TFormSortBy) and (not Assigned(FormSortBy)) then
  begin
    Application.CreateForm(TFormSortBy, FormSortBy);
    LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
    FormSortBy.SetLang;
  end
end;

{$endregion TAppHelper}



{$region '                      TSpTBXSpinEditHelper                        '}

function TSpTBXSpinEditHelper.ByteValue: Byte;
var
  x: integer;
begin
  x := Round(Value);
  x := GetIntInRange(x, 0, 255);
  Result := Byte(x);
end;

function TSpTBXSpinEditHelper.IntValue: integer;
begin
  Result := Round(Value);
end;

function TSpTBXSpinEditHelper.MaxIntValue: integer;
begin
  Result := Round(SpinOptions.MaxValue);
end;

function TSpTBXSpinEditHelper.MinIntValue: integer;
begin
  Result := Round(SpinOptions.MinValue);
end;

{$endregion TSpTBXSpinEditHelper}



//{ TNodeHelper }
//
//class procedure TNodeHelper.HideNode(Node: PVirtualNode);
//begin
//  if vsVisible in Node^.States then Node^.States := Node^.States - [vsVisible];
//end;
//
//class procedure TNodeHelper.ShowNode(Node: PVirtualNode);
//begin
//  if not (vsVisible in Node^.States) then Node^.States := Node^.States + [vsVisible];
//end;
//
//class function TNodeHelper.NodeVisible(Node: PVirtualNode): Boolean;
//begin
//  Result := vsVisible in Node^.States;
//end;

{ TNHelper }

procedure TNHelper.Hide;
begin
  if vsVisible in States then States := States - [vsVisible];
end;

function TNHelper.Selected: Boolean;
begin
  Result := vsSelected in States;
end;

procedure TNHelper.Show;
begin
  if not (vsVisible in States) then States := States + [vsVisible];
end;

function TNHelper.Visible: Boolean;
begin
  Result := vsVisible in States;
end;

initialization

  TAppHelper.IniSection := nil;


end.

