unit FCP.ColorPalette;

{
  Unit from my Colors app. (http://www.pazera-software.com/products/colors/)
  TColorPalette supports many color groups, but Color Picker uses only one.
}

interface

uses
  Winapi.Windows,
  System.SysUtils, System.Classes, System.UITypes, System.StrUtils, System.Types, System.Generics.Collections, System.IniFiles,
  Vcl.Graphics,

  JsonDataObjects,
  JP.JsonDataObjects,

  JPL.Conversion, JPL.Strings, JPL.Colors, JPL.Colors.ColorClass, JPL.Dialogs;

const
  PALETTE_FORMAT_VERSION = '1.0';

type

  TPaletteDataType = (pdtUnknown, pdtJson, pdtIni, pdtGimp);

  TColorItem = record
    Color: TColor;
    Name: string;
  end;

  TColorList = TList<TColorItem>;


  {$Region '     TColorGroup     '}
  TColorGroup = class
  private
    FGroupName: string;
    FColorList: TColorList;
    FExportColorType: TColorType;
    FIniSectionPrefix: string;
    FCollapsed: Boolean;
    FBackgroundColor: TColor;
    FFontColor: TColor;
    procedure SetGroupName(const Value: string);
    function GetCount: integer;
    function GetColorItem(Index: integer): TColorItem;
    procedure SetColorItem(Index: integer; const Value: TColorItem);
    procedure SetExportColorType(const Value: TColorType);
    procedure SetIniSectionPrefix(const Value: string);
    procedure SetCollapsed(const Value: Boolean);
    procedure SetBackgroundColor(const Value: TColor);
    procedure SetFontColor(const Value: TColor);
  public
    constructor Create; overload;
    constructor Create(const GroupName: string); overload;
    destructor Destroy; override;

    procedure Clear;
    procedure AddColor(const Color: TColor; ColorName: string);
    function AsIniStr: string;
    procedure SaveToJsonObject(Obj: TJsonObject);
    procedure SaveToIni(Ini: TMemIniFile);
    procedure SaveToIniFile(const FileName: string);
    procedure LoadFromIni(Ini: TMemIniFile; bClear: Boolean = True);
    procedure LoadFromIniFile(const FileName: string; bClear: Boolean = True);

    property GroupName: string read FGroupName write SetGroupName;
    property Count: integer read GetCount;
    property ColorItem[Index: integer]: TColorItem read GetColorItem write SetColorItem; default;
    property ExportColorType: TColorType read FExportColorType write SetExportColorType;
    property IniSectionPrefix: string read FIniSectionPrefix write SetIniSectionPrefix;
    property Collapsed: Boolean read FCollapsed write SetCollapsed;
    property BackgroundColor: TColor read FBackgroundColor write SetBackgroundColor;
    property FontColor: TColor read FFontColor write SetFontColor;
  end;
  {$endregion TColorGroup}


  TColorGroups = TList<TColorGroup>;


  {$Region '     TColorPalette     '}
  TColorPalette = class
  private
    FColorGroups: TColorGroups;
    FPaletteName: string;
    FAuthor: string;
    FComment: string;
    FFormatVersion: string;
    FAppName: string;
    FAppVersion: string;
    FPaletteDataType: TPaletteDataType;
    procedure SetPaletteName(const Value: string);
    procedure SetAuthor(const Value: string);
    procedure SetComment(const Value: string);
    procedure SetFormatVersion(const Value: string);
    procedure SetAppName(const Value: string);
    procedure SetAppVersion(const Value: string);
    function GetAllColorCount: integer;
    function GetFileText(const FileName: string): string;
    function GetColorGroupCount: integer;
    function GetColorGroup(Index: integer): TColorGroup;
    procedure SetColorGroup(Index: integer; const Value: TColorGroup);
  public
    constructor Create;
    destructor Destroy; override;

    procedure Clear;

    function AddGroup(const GroupName: string): TColorGroup;
    procedure SaveToJsonObject(Obj: TJsonObject);
    procedure SaveToJsonFile(const FileName: string; bCompact: Boolean = False);
    function AsJsonStr(bCompact: Boolean = False): string;

    function LoadFromJsonObject(Obj: TJsonObject): Boolean;
    function LoadFromJsonFile(const FileName: string): Boolean;
    function LoadFromJsonStr(const JsonStr: string; bUTF8: Boolean = True): Boolean;

    procedure LoadFromIniFile(const FileName: string);
    procedure LoadFromIniStr(const IniStr: string);
    procedure SaveToIniFile(const FileName: string);
    function AsHtmlStr(Title: string; bShowJson: Boolean; bHtml: Boolean = True; bRgbInt: Boolean = False; bRgbPercent: Boolean = False;
      bHslCss: Boolean = False; bHslWin: Boolean = False; bCmyk: Boolean = False; bPascalInt: Boolean = False; bPascalHex: Boolean = False; bBgrHex: Boolean = False): string;
    procedure SaveToHtmlFile(const FileName: string; Title: string; bShowJson: Boolean; bHtml: Boolean = True; bRgbInt: Boolean = False; bRgbPercent: Boolean = False;
      bHslCss: Boolean = False; bHslWin: Boolean = False; bCmyk: Boolean = False; bPascalInt: Boolean = False; bPascalHex: Boolean = False; bBgrHex: Boolean = False);
    function AsGimpPalette(const PaletteName: string): string;
    procedure SaveToGimpPaletteFile(const FileName, PaletteName: string);

    procedure ImportFromGimpPaletteStr(const GimpPaletteStr: string);
    procedure ImportFromGimpPaletteFile(const FileName: string);

    function TryLoadFromFile(const FileName: string): Boolean;

    // Wykrycie typu danych (palety kolorów) w podanym tekœcie / pliku : Unknown, INI lub JSON
    function DetectPaletteDataType(const Text: string; LinesToCheck: integer = 40): TPaletteDataType;
    function DetectPaletteDataTypeFromFile(const FileName: string): TPaletteDataType;

    // JSON: FormatInfo
    property FormatVersion: string read FFormatVersion write SetFormatVersion;

    // JSON: AppInfo
    property AppName: string read FAppName write SetAppName;
    property AppVersion: string read FAppVersion write SetAppVersion;

    // JSON: PaletteInfo
    property PaletteName: string read FPaletteName write SetPaletteName;
    property Author: string read FAuthor write SetAuthor;
    property Comment: string read FComment write SetComment;

    property AllColorCount: integer read GetAllColorCount;

    property PaletteDataType: TPaletteDataType read FPaletteDataType;

    property ColorGroupCount: integer read GetColorGroupCount;
    property ColorGroup[Index: integer]: TColorGroup read GetColorGroup write SetColorGroup;
  end;
  {$endregion TColorPalette}


implementation



{$region '                          TColorPalette                         '}


  {$Region '                 TColorPalette: Create, Clear, Destroy                       '}
constructor TColorPalette.Create;
begin
  inherited;
  FColorGroups := TColorGroups.Create;
  Clear;
end;

procedure TColorPalette.Clear;
begin
  FPaletteName := '';
  FAuthor := '';
  FComment := '';
  FFormatVersion := PALETTE_FORMAT_VERSION;
  FAppName := '';
  FAppVersion := '';
  FColorGroups.Clear;
  FPaletteDataType := pdtUnknown;
end;

destructor TColorPalette.Destroy;
var
  i: integer;
  cg: TColorGroup;
begin
  for i := 0 to FColorGroups.Count - 1 do
    if Assigned(FColorGroups[i]) then
    begin
      cg := FColorGroups[i];
      FreeAndNil(cg);
    end;
  FColorGroups.Free;
  inherited;
end;
  {$endregion TColorPalette: Create, Clear, Destroy}


  {$Region '                TColorPalette: AsHtmlStr, SaveToHtmlFile                          '}
function TColorPalette.AsHtmlStr(Title: string; bShowJson: Boolean; bHtml: Boolean = True; bRgbInt: Boolean = False; bRgbPercent: Boolean = False;
  bHslCss: Boolean = False; bHslWin: Boolean = False; bCmyk: Boolean = False; bPascalInt: Boolean = False; bPascalHex: Boolean = False; bBgrHex: Boolean = False): string;
var
  sl: TStringList;
  cg: TColorGroup;
  ci: TColorItem;
  xNo: integer;
  cc: TColorClass;
  s: string;

  procedure A(const s: string);
  begin
    sl.Add(s);
  end;


begin
  sl := TStringList.Create;
  cc := TColorClass.Create;
  try

    A('<!DOCTYPE html>');
    A('<html>');
    A('<head>');
    A('<title>' + Title + '</title>');
    A('<meta name="viewport" content="width=device-width, initial-scale=1.0">');
    A('<style>');
    A('body { font-family: sans-serif; font-size: 11pt; margin: 14px; }');
    A('h1 { font-size: 16pt; }');
    A('h2 { font-size: 14pt; margin-bottom: 4px; }');
    A('table, th, td { border: 1px solid #cdcdcd; border-collapse: collapse; }');
    A('th { font-size: 10pt; background-color: #eeeeee; padding: 4px; }');
    A('td { padding: 2px; padding-left: 4px; padding-right: 4px; }');

    A('.td_no { font-size: 7pt; text-align: center; }');                           // Number
    A('.td_id { font-size: 10pt; font-family: Tahoma,sans-serif; }');                     // Color ID (name)
    A('.td_clv { font-size: 10pt; font-family: monospace; text-align: center; }'); // Color value
    A('.td_cl { width: 60px; }');                                                  // Color

    A('.div_table { float: left; padding: 4px; }');
    if bShowJson then A('.div_json { float: left; padding: 4px; }');
    A('</style>');
    A('</head>');
    A('<body>');

    A('<h1>' + Title + '</h1>');

    A('<div class="div_table">');
    A('<h2>Color table</h2>');
    A('<table>');

    s := '<th>No</th><th>Name</th><th>Color</th>';
    if bHtml then s := s + '<th>HTML</th>';
    if bRgbInt then s := s + '<th>RGB int  </th>';
    if bRgbPercent then s := s + '<th>RGB %  </th>';
    if bHslCss then s := s + '<th>HSL CSS</th>';
    if bHslWin then s := s + '<th>HSL Win</th>';
    if bCmyk then s := s + '<th>CMYK</th>';
    if bPascalInt then s := s + '<th>Pascal INT</th>';
    if bPascalHex then s := s + '<th>Pascal HEX</th>';
    if bBgrHex then s := s + '<th>BGR hex</th>';
    A(s);

    xNo := 0;
    for cg in FColorGroups do
    begin

      for ci in cg.FColorList do
      begin
        Inc(xNo);
        cc.Color := ci.Color;
        A('<tr>');
        A('  <td class="td_no">' + itos(xNo) + '</td>');
        A('  <td class="td_id">' + ci.Name + '</td>');
        A('  <td class="td_cl" style="background-color: ' + cc.HtmlColorStr + ';"></td>');
        if bHtml then A('  <td class="td_clv">' + cc.HtmlColorStr + '</td>');
        if bRgbInt then A('  <td class="td_clv">' + cc.RgbIntStr + '</td>');
        if bRgbPercent then A('  <td class="td_clv">' + cc.RgbPercentIntStr + '</td>');
        if bHslCss then A('  <td class="td_clv">' + cc.HslCssStr + '</td>');
        if bHslWin then A('  <td class="td_clv">' + cc.HslSysStr + '</td>');
        if bCmyk then A('  <td class="td_clv">' + cc.CmykStr + '</td>');
        if bPascalInt then A('  <td class="td_clv">' + cc.PascalIntStr + '</td>');
        if bPascalHex then A('  <td class="td_clv">' + cc.PascalHexStr + '</td>');
        if bBgrHex then A('  <td class="td_clv">' + cc.BgrHex + '</td>');
        A('</tr>');
      end;

    end;

    A('</table>');
    A('</div> <!-- div_table -->');


    if bShowJson then
    begin
      A('<div class="div_json">');
      A('<h2>JSON</h2>');
      A('<textarea rows="50" cols="54">');

      s := AsJsonStr(False);
      s := ReplaceAll(s, TAB, '  ');
      A(s);

      A('</textarea>');
      A('</div> <!-- div_json -->');
    end;


    A('</body>');
    A('</html>');

    Result := sl.Text;

  finally
    cc.Free;
    sl.Free;
  end;
end;

procedure TColorPalette.SaveToHtmlFile(const FileName: string; Title: string; bShowJson: Boolean; bHtml: Boolean = True; bRgbInt: Boolean = False; bRgbPercent: Boolean = False;
  bHslCss: Boolean = False; bHslWin: Boolean = False; bCmyk: Boolean = False; bPascalInt: Boolean = False; bPascalHex: Boolean = False; bBgrHex: Boolean = False);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Text := AsHtmlStr(Title, bShowJson, bHtml, bRgbInt, bRgbPercent, bHslCss, bHslWin, bCmyk, bPascalInt, bPascalHex, bBgrHex);
    sl.SaveToFile(FileName, TEncoding.UTF8);
  finally
    sl.Free;
  end;
end;
  {$endregion TColorPalette: AsHtmlStr, SaveToHtmlFile}


  {$Region '                    TColorPalette: DetectPaletteDataType                         '}
function TColorPalette.DetectPaletteDataType(const Text: string; LinesToCheck: integer = 40): TPaletteDataType;
var
  sl: TStringList;
  i, xLine: integer;
  Line: string;
begin
  Result := pdtUnknown;

  sl := TStringList.Create;
  try

    xLine := 1;
    sl.Text := Text;
    for i := 0 to sl.Count - 1 do
    begin

      Line := Trim(sl[i]);
      if UpperCase(Line) = 'GIMP PALETTE' then
      begin
        Result := pdtGimp;
        Exit;
      end;

      if Line = '' then Continue;
      if Copy(Line, 1, 1) = ';' then Continue; // ewentualny komentarz INI
      if Copy(Line, 1, 2) = '//' then Continue; // ewentualny komentarz JSON

      if AnsiStartsStr('[', Line) and AnsiEndsStr(']', Line) then
      begin
        Result := pdtIni;
        Break;
      end;

      if
        (AnsiStartsStr('"FormatInfo"', Line)) or
        (AnsiStartsStr('"AppInfo"', Line)) or
        (AnsiStartsStr('"PaletteInfo"', Line)) or
        (AnsiStartsStr('"Palette"', Line)) then
      begin
        Result := pdtJson;
        Break;
      end;


      Inc(xLine);
      if xLine > LinesToCheck then Break;

    end; // for i

  finally
    sl.Free;
  end;
end;
  {$endregion TColorPalette: DetectPaletteDataType}


function TColorPalette.DetectPaletteDataTypeFromFile(const FileName: string): TPaletteDataType;
begin
  Result := DetectPaletteDataType(GetFileText(FileName));
end;

function TColorPalette.GetAllColorCount: integer;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FColorGroups.Count - 1 do
    Result := Result + FColorGroups[i].Count;
end;


function TColorPalette.GetColorGroup(Index: integer): TColorGroup;
begin
  Result := FColorGroups.Items[Index];
end;

function TColorPalette.GetColorGroupCount: integer;
begin
  Result := FColorGroups.Count;
end;

function TColorPalette.GetFileText(const FileName: string): string;
var
  sl: TStringList;
begin
  if not FileExists(FileName) then Exit('');
  sl := TStringList.Create;
  try

    try
      sl.LoadFromFile(FileName, TEncoding.UTF8);
      Result := sl.Text;
    except
      Result := '';
    end;

  finally
    sl.Free;
  end;
end;


  {$region '                    TColorPalette: Load from JSON Object / File / INI                         '}

function TColorPalette.TryLoadFromFile(const FileName: string): Boolean;
var
  s: string;
begin
  Clear;

  //Result := False;
  s := GetFileText(FileName);
  FPaletteDataType := DetectPaletteDataType(s);

  case FPaletteDataType of
    pdtIni: LoadFromIniStr(s);
    pdtJson: LoadFromJsonStr(s, True);
    pdtGimp: ImportFromGimpPaletteStr(s);
  else
    // unknown data type
  end;

  Result := FPaletteDataType <> pdtUnknown;
  //IntMsg(Integer(FPaletteDataType));
end;


procedure TColorPalette.LoadFromIniFile(const FileName: string);
var
  Ini: TMemIniFile;
  sl: TStringList;
begin
  Clear;

  Ini := TMemIniFile.Create(FileName);
  sl := TStringList.Create;
  try
    Ini.GetStrings(sl);
    LoadFromIniStr(sl.Text);
  finally
    sl.Free;
    Ini.Free;
  end;

end;

procedure TColorPalette.LoadFromIniStr(const IniStr: string);
var
  Ini: TMemIniFile;
  sl, slSections: TStringList;
  i: integer;
  sColorName, sColor, Section: string;
  Color: TColor;
  cg: TColorGroup;
begin
  Clear;

  Ini := TMemIniFile.Create('');
  sl := TStringList.Create;
  slSections := TStringList.Create;
  try
    sl.Text := IniStr;
    Ini.SetStrings(sl);
    cg := AddGroup('');

    Ini.ReadSections(slSections);
    for i := 0 to slSections.Count - 1 do
    begin
      Section := slSections[i];
      if not Ini.ValueExists(Section, 'Color') then Continue;
      sColor := Ini.ReadString(Section, 'Color', '');
      if sColor = '' then Continue;
      if not TryGetColor(sColor, Color) then Continue;
      sColorName := Ini.ReadString(Section, 'Name', '');
      cg.AddColor(Color, sColorName);
    end;

  finally
    slSections.Free;
    sl.Free;
    Ini.Free;
  end;

  FPaletteDataType := pdtIni;
end;

function TColorPalette.LoadFromJsonFile(const FileName: string): Boolean;
var
  Obj: TJsonObject;
begin
  Clear;

  if not FileExists(FileName) then Exit(False);
  Obj := TJsonObject.Create;
  try

    try
      Obj.LoadFromFile(FileName);
      Result := LoadFromJsonObject(Obj);
    except
      on E: Exception do
      begin
        //Msg(E.Message);
        Result := False;
      end;
    end;

  finally
    Obj.Free;
  end;
end;

function TColorPalette.LoadFromJsonStr(const JsonStr: string; bUTF8: Boolean = True): Boolean;
var
  Obj: TJsonObject;
begin
  Clear;

  Obj := TJsonObject.Create;
  try

    try
      if bUTF8 then Obj.FromUtf8JSON(UTF8String(JsonStr))
      else Obj.FromJSON(JsonStr);
    except
      Result := False;
    end;

    Result := LoadFromJsonObject(Obj);

  finally
    Obj.Free;
  end;
end;

function TColorPalette.LoadFromJsonObject(Obj: TJsonObject): Boolean;
var
  {joFormatInfo,} joAppInfo, joPaletteInfo, joPalette, joGroup: TJsonObject;
  sGroupJsonName, sColorGroupName: string;
  jaColors, jaColorItem: TJsonArray;
  i, x, xCount: integer;
  cg: TColorGroup;
  sColorName, sColorValue: string;
  Color: TColor;
  bCollapsed: Boolean;
  clBg, clFont: TColor;
begin
  Clear;
  //Result := False;

  //if not Obj.TryGetObject('FormatInfo', joFormatInfo) then Exit;
  //Msg(joFormatInfo.S['Version']);

  FPaletteDataType := pdtUnknown;

  if Obj.TryGetObject('AppInfo', joAppInfo) then
  begin
    FAppName := joAppInfo.S['Name'];
    FAppVersion := joAppInfo.S['Version'];
  end;

  if Obj.TryGetObject('PaletteInfo', joPaletteInfo) then
  begin
    FAuthor := joPaletteInfo.S['Author'];
    FPaletteName := joPaletteInfo.S['Name'];
    FComment := joPaletteInfo.S['Comment'];
  end;


  if Obj.TryGetObject('Palette', joPalette) then
  for i := 0 to joPalette.Count - 1 do
  begin

    if joPalette.Items[i].Typ <> jdtObject then Continue;
    sGroupJsonName := joPalette.Names[i];
    joGroup := joPalette.O[sGroupJsonName];

    if joGroup.NameTypeExists('Name', jdtString) then sColorGroupName := joGroup.S['Name']
    else sColorGroupName := 'Color Group';

    if joGroup.NameTypeExists('Collapsed', jdtBool) then bCollapsed := joGroup.B['Collapsed']
    else bCollapsed := False;

    if joGroup.NameTypeExists('BackgroundColor', jdtString) then sColorValue := joGroup.S['BackgroundColor']
    else sColorValue := 'NONE';
    if not TryHtmlStrToColor(sColorValue, clBg) then clBg := clNone;

    if joGroup.NameTypeExists('FontColor', jdtString) then sColorValue := joGroup.S['FontColor']
    else sColorValue := 'NONE';
    if not TryHtmlStrToColor(sColorValue, clFont) then clFont := clNone;


    cg := AddGroup(sColorGroupName);
    cg.Collapsed := bCollapsed;
    cg.BackgroundColor := clBg;
    cg.FontColor := clFont;

    if not joGroup.TryGetArray('Colors', jaColors) then Continue;

    // iteracja tablicy "Colors"
    for x := 0 to jaColors.Count - 1 do
    begin

      if jaColors.Types[x] <> jdtArray then Continue;
      jaColorItem := jaColors.A[x];
      xCount := jaColorItem.Count;
      if xCount < 1 then Continue;

      sColorValue := jaColorItem.Values[0];
      if xCount > 1 then sColorName := jaColorItem.Values[1] else sColorName := '';

      if not TryGetColor(sColorValue, Color) then Continue;

      cg.AddColor(Color, sColorName);

    end; // for x

  end; // for i


  Result := True;
  FPaletteDataType := pdtJson;
end;


  {$endregion TColorPalette: Load from JSON Object / File}


  {$region '                 TColorPalette: Save to JSON / INI                            '}

procedure TColorPalette.SaveToIniFile(const FileName: string);
var
  Ini: TMemIniFile;
  i, x, xNo: integer;
  ci: TColorItem;
  Section: string;
  cg: TColorGroup;
begin
  Ini := TMemIniFile.Create(FileName, TEncoding.UTF8);
  try
    xNo := 0;
    for i := 0 to FColorGroups.Count - 1 do
    begin
      cg := FColorGroups[i];
      for x := 0 to cg.Count - 1 do
      begin
        ci := cg[x];
        Inc(xNo);
        Section := 'Color_' + IntToStr(xNo);
        Ini.WriteString(Section, 'Color', ColorToHtmlColorStr(ci.Color, '#', False));
        Ini.WriteString(Section, 'Name', ci.Name);
      end;
    end;
    Ini.UpdateFile;
  finally
    Ini.Free
  end;
end;

function TColorPalette.AsJsonStr(bCompact: Boolean): string;
var
  Obj: TJsonObject;
begin
  Obj := TJsonObject.Create;
  try
    SaveToJsonObject(Obj);
    Result := Obj.ToJSON(bCompact);
  finally
    Obj.Free;
  end;
end;

procedure TColorPalette.SaveToJsonFile(const FileName: string; bCompact: Boolean);
var
  Obj: TJsonObject;
begin
  Obj := TJsonObject.Create;
  try
    SaveToJsonObject(Obj);
    Obj.SaveToFile(FileName, bCompact);
  finally
    Obj.Free;
  end;
end;

procedure TColorPalette.SaveToJsonObject(Obj: TJsonObject);
var
  ObjPaletteInfo, ObjAppInfo, ObjFormatInfo, ObjGroups, ObjGroup: TJsonObject;
  i: integer;
begin
  ObjFormatInfo := Obj.O['FormatInfo'];
  ObjFormatInfo.S['Version'] := FFormatVersion;

  ObjAppInfo := Obj.O['AppInfo'];
  ObjAppInfo.S['Name'] := FAppName;
  ObjAppInfo.S['Version'] := FAppVersion;

  ObjPaletteInfo := Obj.O['PaletteInfo'];
  ObjPaletteInfo.S['Author'] := FAuthor;
  ObjPaletteInfo.S['Name'] := FPaletteName;
  ObjPaletteInfo.S['Comment'] := FComment;

  ObjGroups := Obj.O['Palette'];
  for i := 0 to FColorGroups.Count - 1 do
  begin
    ObjGroup := ObjGroups.O['ColorGroup_' + IntToStr(i)];
    FColorGroups[i].SaveToJsonObject(ObjGroup);
  end;
end;

  {$endregion TColorPalette: Save to JSON / Ini}


procedure TColorPalette.SetAppName(const Value: string);
begin
  FAppName := Value;
end;

procedure TColorPalette.SetAppVersion(const Value: string);
begin
  FAppVersion := Value;
end;

procedure TColorPalette.SetAuthor(const Value: string);
begin
  FAuthor := Value;
end;

procedure TColorPalette.SetColorGroup(Index: integer; const Value: TColorGroup);
begin

end;

procedure TColorPalette.SetComment(const Value: string);
begin
  FComment := Value;
end;

procedure TColorPalette.SetFormatVersion(const Value: string);
begin
  FFormatVersion := Value;
end;

procedure TColorPalette.SetPaletteName(const Value: string);
begin
  FPaletteName := Value;
end;


function TColorPalette.AddGroup(const GroupName: string): TColorGroup;
var
  cg: TColorGroup;
begin
  cg := TColorGroup.Create;
  cg.GroupName := GroupName;
  FColorGroups.Add(cg);
  Result := cg;
end;


  {$Region '                     TColorPalette: GIMP color palette (GPL) related                         '}
function TColorPalette.AsGimpPalette(const PaletteName: string): string;
var
  cg: TColorGroup;
  ci: TColorItem;
  cc: TColorClass;
  sl: TStringList;
  Line, sRed, sGreen, sBlue: string;

  procedure A(const s: string);
  begin
    sl.Add(s);
  end;

begin
  sl := TStringList.Create;
  cc := TColorClass.Create;
  try

    A('GIMP Palette');
    A('Name: ' + PaletteName);
    A('#');
    for cg in FColorGroups do
    begin

      for ci in cg.FColorList do
      begin
        cc.Color := ci.Color;

        sRed := Pad(itos(cc.Red), 3, ' ');
        sGreen := Pad(itos(cc.Green), 3, ' ');
        sBlue := Pad(itos(cc.Blue), 3, ' ');

        Line := sRed + ' ' + sGreen + ' ' + sBlue;
        if ci.Name <> '' then Line := Line + TAB + ci.Name;
        A(Line);
      end;

    end;

    Result := sl.Text;

  finally
    sl.Free;
    cc.Free;
  end;
end;

procedure TColorPalette.SaveToGimpPaletteFile(const FileName, PaletteName: string);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Text := AsGimpPalette(PaletteName);
    sl.SaveToFile(FileName, TEncoding.UTF8);
  finally
    sl.Free;
  end;
end;

procedure TColorPalette.ImportFromGimpPaletteFile(const FileName: string);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile(FileName);
    ImportFromGimpPaletteStr(sl.Text);
  finally
    sl.Free;
  end;
end;

function _GPL_GetColor(Line: string; out r, g, b: Byte; out ColorName: string): Boolean;
var
  xp: integer;
  sVal: string;
begin
  Result := False;

  // ----- RED ------
  Line := Trim(Line);
  xp := Pos(' ', Line);
  if xp <= 0 then Exit;
  sVal := Copy(Line, 1, xp - 1);
  if not TryStrToByte(sVal, r) then Exit;

  // ----- GREEN ------
  Line := Trim(Copy(Line, xp + 1, Length(Line)));
  xp := Pos(' ', Line);
  if xp <= 0 then Exit;
  sVal := Copy(Line, 1, xp - 1);
  if not TryStrToByte(sVal, g) then Exit;

  // ----- BLUE ------
  Line := Trim(Copy(Line, xp + 1, Length(Line)));
  xp := Pos(TAB, Line);
  if xp <= 0 then xp := Pos(' ', Line);
  if xp <= 0 then
  begin
    sVal := Line;
    if not TryStrToByte(sVal, b) then Exit;
    Line := '';
  end
  else
  begin
    sVal := Copy(Line, 1, xp - 1);
    if not TryStrToByte(sVal, b) then Exit;
    Line := Trim(Copy(Line, xp + 1, Length(Line)));
  end;

  Result := True;

  ColorName := Line;
end;

procedure TColorPalette.ImportFromGimpPaletteStr(const GimpPaletteStr: string);
var
  sl: TStringList;
  Line, ULine, s: string;
  i: integer;
  //bHead: Boolean;
  r, g, b: Byte;
  ColorName: string;
  cg: TColorGroup;
begin
  FColorGroups.Clear;
  cg := AddGroup('GIMP Palette');

  sl := TStringList.Create;
  try
    sl.Text := Trim(GimpPaletteStr);
    //bHead := True;

    for i := 0 to sl.Count - 1 do
    begin

      Line := Trim(sl[i]);

      if (i = 0) and (UpperCase(Line) <> 'GIMP PALETTE') then Exit; // invalid file
      if Line = '' then Continue;
      if Line[1] = '#' then Continue;
      ULine := UpperCase(Line);
      if Copy(ULine, 1, 5) = 'NAME:' then
      begin
        s := Trim(Copy(Line, 6, Length(Line)));
        Self.PaletteName := s;
        Continue;
      end;

      if _GPL_GetColor(Line, r, g, b, ColorName) then cg.AddColor(RGB(r, g, b), ColorName);

//      if (i = 0) and (UpperCase(Line) <> 'GIMP PALETTE') then Exit; // invalid file
//      if Line = '' then Continue;
//      if Line[1] = '#' then
//      begin
//        bHead := False;
//        Continue;
//      end;
//      ULine := UpperCase(Line);
//      if bHead and (Copy(ULine, 1, 5) = 'NAME:') then
//      begin
//        s := Trim(Copy(Line, 6, Length(Line)));
//        Self.PaletteName := s;
//      end;
//
//      if (not bHead) and _GPL_GetColor(Line, r, g, b, ColorName) then cg.AddColor(RGB(r, g, b), ColorName);

    end; // for i



  finally
    sl.Free;
  end;
end;
  {$endregion TColorPalette: GIMP color palette (GPL) related}


{$endregion TColorPalette}




{$region '                         TColorGroup                           '}


  {$Region '                  TColorGroup: Create, Clear, Destroy                     '}
constructor TColorGroup.Create;
begin
  inherited;
  FColorList := TColorList.Create;
  FExportColorType := ctHtml;
  FIniSectionPrefix := 'Color_';
  FCollapsed := False;
  FBackgroundColor := clNone;
  FFontColor := clNone;
end;

constructor TColorGroup.Create(const GroupName: string);
begin
  Create;
  FGroupName := GroupName;
end;

destructor TColorGroup.Destroy;
begin
  FColorList.Free;
  inherited;
end;

procedure TColorGroup.Clear;
begin
  FColorList.Clear;
  FColorList.Pack;
end;
  {$endregion TColorGroup: Create, Clear, Destroy}


procedure TColorGroup.AddColor(const Color: TColor; ColorName: string);
var
  ci: TColorItem;
begin
  ci.Color := ColorToRGB(Color);
  ci.Name := ColorName;
  FColorList.Add(ci);
end;

function TColorGroup.AsIniStr: string;
var
  sColor, sSection, sr: string;
  i: integer;
  ci: TColorItem;
begin
  sr := '';
  for i := 0 to FColorList.Count - 1 do
  begin
    ci := FColorList[i];
    sColor := ColorToStrEx(ci.Color, FExportColorType);
    sSection := FIniSectionPrefix + IntToStr(i + 1);
    sr := sr +
      '[' + sSection + ']' + ENDL +
      'Name=' + ci.Name + ENDL +
      'Color=' + sColor + ENDL;
  end;

  Result := sr;
end;


function TColorGroup.GetColorItem(Index: integer): TColorItem;
begin
  Result := FColorList[Index];
end;

function TColorGroup.GetCount: integer;
begin
  Result := FColorList.Count;
end;

  {$region '                      TColorGroup: Load & Save (INI, JSON)                       '}
procedure TColorGroup.LoadFromIni(Ini: TMemIniFile; bClear: Boolean = True);
var
  slSections: TStringList;
  i: integer;
  Section, sColor, sColorName: string;
  Color: TColor;
begin
  if bClear then FColorList.Clear;
  slSections := TStringList.Create;
  try
    Ini.ReadSections(slSections);
    for i := 0 to slSections.Count - 1 do
    begin
      Section := slSections[i];
      if not Ini.ValueExists(Section, 'Color') then Continue;
      sColor := Ini.ReadString(Section, 'Color', '');
      if sColor = '' then Continue;
      if not TryGetColor(sColor, Color) then Continue;
      sColorName := Ini.ReadString(Section, 'Name', '');
      AddColor(Color, sColorName);
    end;
  finally
    slSections.Free;
  end;
end;

procedure TColorGroup.LoadFromIniFile(const FileName: string; bClear: Boolean);
var
  Ini: TMemIniFile;
begin
  if bClear then FColorList.Clear;
  if not FileExists(FileName) then Exit;
  Ini := TMemIniFile.Create(FileName, TEncoding.UTF8);
  try
    LoadFromIni(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TColorGroup.SaveToIni(Ini: TMemIniFile);
var
  i: integer;
  ci: TColorItem;
  Section: string;
begin
  Ini.Clear;
  for i := 0 to FColorList.Count - 1 do
  begin
    ci := FColorList[i];
    Section := 'Color_' + IntToStr(i + 1);
    Ini.WriteString(Section, 'Color', ColorToHtmlColorStr(ci.Color, '#', False));
    Ini.WriteString(Section, 'Name', ci.Name);
  end;
end;

procedure TColorGroup.SaveToIniFile(const FileName: string);
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(FileName, TEncoding.UTF8);
  try
    SaveToIni(Ini);
    Ini.UpdateFile;
  finally
    Ini.Free;
  end;
end;

procedure TColorGroup.SaveToJsonObject(Obj: TJsonObject);
var
  i: integer;
  ci: TColorItem;
  ArrColors, ArrCI: TJsonArray;
  sColor: string;
begin
  Obj.S['Name'] := FGroupName;
  Obj.B['Collapsed'] := FCollapsed;

  if FBackgroundColor = clNone then sColor := ''
  else sColor := ColorToStrEx(FBackgroundColor, ctHtml);
  Obj.S['BackgroundColor'] := sColor;

  if FFontColor = clNone then sColor := ''
  else sColor := ColorToStrEx(FFontColor, ctHtml);
  Obj.S['FontColor'] := sColor;

  ArrColors := Obj.A['Colors'];
  for i := 0 to FColorList.Count - 1 do
  begin
    ci := FColorList[i];
    sColor := ColorToStrEx(ci.Color, FExportColorType);
    ArrCI := ArrColors.AddArray;
    ArrCI.Add(sColor);
    ArrCI.Add(ci.Name);
  end;
end;
  {$endregion TColorGroup: Load & Save (INI, JSON)}


procedure TColorGroup.SetBackgroundColor(const Value: TColor);
begin
  FBackgroundColor := Value;
end;

procedure TColorGroup.SetCollapsed(const Value: Boolean);
begin
  FCollapsed := Value;
end;

procedure TColorGroup.SetColorItem(Index: integer; const Value: TColorItem);
begin
  FColorList[Index] := Value;
end;

procedure TColorGroup.SetExportColorType(const Value: TColorType);
begin
  FExportColorType := Value;
end;

procedure TColorGroup.SetFontColor(const Value: TColor);
begin
  FFontColor := Value;
end;

procedure TColorGroup.SetGroupName(const Value: string);
begin
  FGroupName := Value;
end;

procedure TColorGroup.SetIniSectionPrefix(const Value: string);
begin
  FIniSectionPrefix := Value;
end;

{$endregion TColorGroup}






end.
