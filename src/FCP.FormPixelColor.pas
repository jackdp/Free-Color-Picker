unit FCP.FormPixelColor;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, // System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ActnList, Vcl.Buttons, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Dialogs, JPL.Math, JPL.IniFile,

  // JPPack
  JPP.BasicSpeedButton, JPP.Panel, JPP.PngButton, JPP.BasicPanel, JPP.ColorListBox, JPP.Timer, JPP.ColorSwatch, JPP.SimplePanel,

  // SpTBX
  SpTBXEditors, TB2Item, SpTBXItem,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings, FCP.FormScreenCursor;


type

  {$region '     TFormPixelColor     '}
  TFormPixelColor = class(TForm)
    pnMain: TJppSimplePanel;
    lblCoordinates: TLabel;
    Actions: TActionList;
    actAddToList: TAction;
    btnAddToList: TJppPngButton;
    pnBottom: TJppSimplePanel;
    btnAdd: TJppPngButton;
    btnClose: TJppPngButton;
    btnClearColors: TJppPngButton;
    pnColorPalette: TJppSimplePanel;
    clbColors: TJppColorListBox;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    actAdd: TAction;
    actClose: TAction;
    actEsc: TAction;
    actClearColors: TAction;
    spedPixelX: TSpTBXSpinEdit;
    lblX: TLabel;
    spedPixelY: TSpTBXSpinEdit;
    lblY: TLabel;
    tmUpdateColor: TJppTimer;
    actShowPixelPos: TAction;
    btnShowPixelPos: TJppPngButton;
    lblError: TLabel;
    cswCursorColor: TJppColorSwatch;
    cbAddPos: TComboBox;
    lblAddPos: TLabel;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    popColorList: TSpTBXPopupMenu;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem4: TSpTBXItem;
    procedure actClearColorsExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actAddToListExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actShowPixelPosExecute(Sender: TObject);
    procedure cswCursorColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure SetLang;
    function GetPixelColor(out ErrStr: string): TColor;
    //procedure UpdateColorSwatch(const cl: TColor);
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure tmUpdateColorTimer(Sender: TObject);
    procedure StartTimer(Sender: TObject);
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
  private
    bUpdatingControls: Boolean;
    sCapturedColors: string;
  end;
  {$endregion TFormPixelColor}


var
  FormPixelColor: TFormPixelColor;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;


{$R *.dfm}


{$region '                       Create & Close                           '}
procedure TFormPixelColor.FormCreate(Sender: TObject);
begin
  Caption := 'Pixel Color';
  Constraints.MinWidth := Width;
  Constraints.MaxWidth := Width;
  Constraints.MinHeight := Height;
  PrepareModuleStrings_PixelColor;
  PrepareControls;
  LoadSettingsFromIni;
  tmUpdateColor.Start;
  InitControls;
end;

procedure TFormPixelColor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmUpdateColor.Stop;
  SaveSettingsToIni;
end;
{$endregion Create & Close}


{$region '                        PrepareControls                           '}
procedure TFormPixelColor.PrepareControls;
begin
  bUpdatingControls := True;
  try
    spedPixelX.Value := Screen.Width div 2;
    spedPixelY.Value := Screen.Height div 2;
    spedPixelX.SpinOptions.MaxValue := Screen.Width;
    spedPixelY.SpinOptions.MaxValue := Screen.Height;

    lblError.Hide;
    pnMain.Align := alClient;
    pnMain.Appearance.BorderStyle := psClear;
    btnAddToList.Appearance.Assign(FormMain.btnT1.Appearance);
    btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
    btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
    btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);
    btnShowPixelPos.Appearance.Assign(FormMain.btnT1.Appearance);

    lblColors.Align := alClient;
    clbColors.Align := alClient;
    clbColors.Clear;

    sCapturedColors := 'Captured Colors';
  finally
    bUpdatingControls := False;
  end;
end;
{$endregion PrepareControls}


{$region '                       InitControls                    '}
procedure TFormPixelColor.InitControls;
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

procedure TFormPixelColor.InitCtrls(Sender: TObject);
begin
  InitControls;
end;

{$endregion InitControls}


{$region '                         SetLang                        '}
procedure TFormPixelColor.SetLang;
var
  x: integer;
begin
  Caption := lsPixelColor.GetString('Caption', Caption);

  sCapturedColors := lsPixelColor.GetComponentProperty('lblColors', 'Caption', lblColors.Caption);
  if clbColors.Count > 0 then lblColors.Caption := sCapturedColors + ' (' + itos(clbColors.Count) + ')'
  else lblColors.Caption := sCapturedColors;

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


{$region '                      INI: Load & Save settings                         '}
procedure TFormPixelColor.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_PIXEL_COLOR, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteSpinEditIntValue(spedPixelX);
    TAppHelper.WriteSpinEditIntValue(spedPixelY);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;
  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormPixelColor.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_PIXEL_COLOR, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadSpinEditIntValue(spedPixelX);
    TAppHelper.ReadSpinEditIntValue(spedPixelY);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;
{$endregion INI: Load & Save settings}


function TFormPixelColor.GetPixelColor(out ErrStr: string): TColor;
var
  x, y: integer;
begin
  Result := clNone;
  ErrStr := '';

  x := spedPixelX.IntValue;
  y := spedPixelY.IntValue;

  if (x > Screen.Width) or (y > Screen.Height) then
  begin
    ErrStr := lsPixelColor.GetString('ErrInvalidPixelCoordinates', 'Invalid pixel coordinates!');
    Exit;
  end;

  Result := PixelColor(x, y);
end;

procedure TFormPixelColor.actAddToListExecute(Sender: TObject);
var
  cl: TColor;
  ColorName: string;
begin
  cl := cswCursorColor.SelectedColor;
  ColorName := 'Pixel color (' + itos(cswCursorColor.Tag) + ',' + itos(cswCursorColor.TagExt.IntValue) + ')';
  clbColors.InsertColor(0, cl, ColorName);
  lblColors.Caption := sCapturedColors + ' (' + itos(clbColors.Count) + ')';
  clbColors.ScrollToLast;
  InitControls;
end;

procedure TFormPixelColor.actAddExecute(Sender: TObject);
begin
  if clbColors.Count = 0 then Exit;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, cbAddPos.ItemIndex = 1);
  FormMain.UpdateColorPaletteCount;
end;

procedure TFormPixelColor.StartTimer(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  tmUpdateColor.Start;
end;

procedure TFormPixelColor.tmUpdateColorTimer(Sender: TObject);
var
  cl: TColor;
  s: string;
begin
  lblError.Hide;
  cl := GetPixelColor(s);
  if s <> '' then
  begin
    lblError.Caption := s;
    lblError.Show;
  end;
  if cl = clNone then Exit;
  cswCursorColor.SelectedColor := cl;
  cswCursorColor.Tag := spedPixelX.IntValue;
  cswCursorColor.TagExt.IntValue := spedPixelY.IntValue;
end;

procedure TFormPixelColor.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  lblColors.Caption := sCapturedColors;
  //PrepareModuleStrings_PixelColor; //<-- po co?
  InitControls;
end;

procedure TFormPixelColor.actShowPixelPosExecute(Sender: TObject);
var
  x, y: integer;
begin
  tmUpdateColorTimer(Self);
  tmUpdateColor.Stop;
  x := spedPixelX.IntValue;
  y := spedPixelY.IntValue;
  FormScreenCursor.SetPosForPixel(x, y);
  FormScreenCursor.ShowPixel;
  FormScreenCursor.Show;
end;

procedure TFormPixelColor.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormPixelColor.actCloseExecute(Sender: TObject);
begin
  Close;
end;



procedure TFormPixelColor.cswCursorColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormPixelColor.actSelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitControls;
end;

procedure TFormPixelColor.actInvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitControls;
end;

procedure TFormPixelColor.actDeleteSelectedExecute(Sender: TObject);
begin
  clbColors.RemoveSelectedItems;
  InitControls;
end;

end.
