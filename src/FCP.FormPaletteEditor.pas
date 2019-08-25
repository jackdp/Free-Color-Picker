unit FCP.FormPaletteEditor;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages, Winapi.ActiveX,

  // System
  System.SysUtils, System.Variants, System.Classes, {System.IniFiles,} System.Actions, System.UITypes,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ActnList, Vcl.Buttons, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.Colors.ColorClass, JPL.LangMgr, JPL.Colors.List, JPL.Dialogs, JPL.IniFile,

  // JPPack
  JPP.Panel, JPP.BasicSpeedButton, JPP.BasicPanel, JPP.ColorComboBox, JPP.PngButton, JPP.DoubleLabel, JPP.SimplePanel,

  // SpTBX
  TB2Item, SpTBXItem, TB2Dock, TB2Toolbar,

  // Virtual TreeView
  VirtualTrees, VirtualTrees.HeaderPopup,

  // FCP
  FCP.Types, FCP.ColorPalette, FCP.AppStrings, FCP.FormEditColor, FCP.Shared, FCP.FormSortBy, FCP.FormModifyPalette, FCP.FormColorWheel;



const
  COL_NO = 0;
  COL_COLOR = 1;
  COL_NAME = 2;

  COL_COLOR_RGB = 3;
  COL_COLOR_RGB_RED = 4;
  COL_COLOR_RGB_GREEN = 5;
  COL_COLOR_RGB_BLUE = 6;
  COL_COLOR_RGB_PERCENT = 7;

  COL_COLOR_HTML = 8;

  COL_COLOR_HSL_CSS = 9;
  COL_COLOR_HSL_CSS_HUE = 10;
  COL_COLOR_HSL_CSS_SAT = 11;
  COL_COLOR_HSL_CSS_LUM = 12;

  COL_COLOR_HSL_WIN = 13;
  COL_COLOR_HSL_WIN_HUE = 14;
  COL_COLOR_HSL_WIN_SAT = 15;
  COL_COLOR_HSL_WIN_LUM = 16;

  COL_COLOR_CMYK = 17;
  COL_COLOR_CMYK_CYAN = 18;
  COL_COLOR_CMYK_MAGENTA = 19;
  COL_COLOR_CMYK_YELLOW = 20;
  COL_COLOR_CMYK_BLACK = 21;

  COL_COLOR_PASCAL_HEX = 22;
  COL_COLOR_PASCAL_INT = 23;
  COL_COLOR_CPP_HEX = 24;

type


  TVstColumnParams = record
    IniID: string;
    Visible: Boolean;
    Position: integer;
    Width: integer;
    procedure AssignColumn(const Column: TVirtualTreeColumn);
    function ToIniStr: string;
    procedure ApplyIniStr(const Column: TVirtualTreeColumn; const IniValue: string; const MaxPos: integer);
  end;

  TVstColumnColors = record
    Header: TColor;
    Background: TColor;
    Text: TColor;
  end;

  {$region '     TFormPaletteEditor     '}
  TFormPaletteEditor = class(TForm)
    vst: TVirtualStringTree;
    pnBottom: TJppSimplePanel;
    ccbColor: TJppColorComboBox;
    edColorName: TLabeledEdit;
    Actions: TActionList;
    actSaveAndClose: TAction;
    pnTop_Caption: TJppSimplePanel;
    lblSelectedColor: TLabel;
    actSaveSelectedColor: TAction;
    pnRight_Buttons: TJppSimplePanel;
    btnOK: TJppPngButton;
    btnSaveSelectedColor: TJppPngButton;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    pnMain: TJppSimplePanel;
    dockMain: TSpTBXDock;
    SpTBXToolbar1: TSpTBXToolbar;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    actCancel: TAction;
    btnCancel: TJppPngButton;
    actOpenPaletteFile: TAction;
    actSavePaletteToFile: TAction;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    SpTBXItem4: TSpTBXItem;
    SpTBXItem5: TSpTBXItem;
    dlgOpenPalette: TOpenDialog;
    dlgSavePalette: TSaveDialog;
    dlblNo: TJppDoubleLabel;
    actAddColorAtEnd: TAction;
    SpTBXItem6: TSpTBXItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    actExportPaletteToHtml: TAction;
    dlgExport: TSaveDialog;
    SpTBXSubmenuItem1: TSpTBXSubmenuItem;
    SpTBXItem8: TSpTBXItem;
    actExportPaletteToGPL: TAction;
    SpTBXItem9: TSpTBXItem;
    popVstHeader: TVTHeaderPopupMenu;
    popVst: TSpTBXPopupMenu;
    SpTBXItem10: TSpTBXItem;
    SpTBXItem11: TSpTBXItem;
    SpTBXItem12: TSpTBXItem;
    SpTBXSeparatorItem4: TSpTBXSeparatorItem;
    SpTBXItem13: TSpTBXItem;
    SpTBXSeparatorItem5: TSpTBXSeparatorItem;
    SpTBXItem14: TSpTBXItem;
    SpTBXItem15: TSpTBXItem;
    actAdvancedColorEditor: TAction;
    sbtnEditColor: TJppBasicSpeedButton;
    actClearColorList: TAction;
    SpTBXSeparatorItem7: TSpTBXSeparatorItem;
    SpTBXItem16: TSpTBXItem;
    actShowFormSortBy: TAction;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem17: TSpTBXItem;
    SpTBXItem18: TSpTBXItem;
    SpTBXSeparatorItem6: TSpTBXSeparatorItem;
    SpTBXItem19: TSpTBXItem;
    SpTBXSeparatorItem8: TSpTBXSeparatorItem;
    actRenumber: TAction;
    SpTBXItem20: TSpTBXItem;
    SpTBXItem21: TSpTBXItem;
    actMoveUp: TAction;
    SpTBXItem22: TSpTBXItem;
    SpTBXSeparatorItem9: TSpTBXSeparatorItem;
    actMoveDown: TAction;
    SpTBXItem23: TSpTBXItem;
    actMoveToTop: TAction;
    SpTBXItem24: TSpTBXItem;
    actMoveToEnd: TAction;
    SpTBXItem25: TSpTBXItem;
    actClearColorNames: TAction;
    SpTBXItem26: TSpTBXItem;
    SpTBXItem27: TSpTBXItem;
    SpTBXItem28: TSpTBXItem;
    SpTBXItem29: TSpTBXItem;
    SpTBXItem30: TSpTBXItem;
    SpTBXItem31: TSpTBXItem;
    SpTBXSeparatorItem10: TSpTBXSeparatorItem;
    actOpenAdd: TAction;
    SpTBXItem32: TSpTBXItem;
    SpTBXItem33: TSpTBXItem;
    actAddColorAtTop: TAction;
    SpTBXItem34: TSpTBXItem;
    SpTBXItem35: TSpTBXItem;
    actShowFormModifyPalette: TAction;
    SpTBXItem7: TSpTBXItem;
    SpTBXSeparatorItem11: TSpTBXSeparatorItem;
    actEsc: TAction;
    SpTBXItem36: TSpTBXItem;
    SpTBXSeparatorItem12: TSpTBXSeparatorItem;
    actColorWheel: TAction;
    SpTBXItem37: TSpTBXItem;
    SpTBXItem38: TSpTBXItem;
    procedure actAddColorAtEndExecute(Sender: TObject);
    procedure actAddColorAtTopExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actClearColorListExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actAdvancedColorEditorExecute(Sender: TObject);
    procedure actClearColorNamesExecute(Sender: TObject);
    procedure actColorWheelExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actExportPaletteToGPLExecute(Sender: TObject);
    procedure actExportPaletteToHtmlExecute(Sender: TObject);
    procedure actMoveDownExecute(Sender: TObject);
    procedure actMoveToEndExecute(Sender: TObject);
    procedure actMoveToTopExecute(Sender: TObject);
    procedure actMoveUpExecute(Sender: TObject);
    procedure actOpenAddExecute(Sender: TObject);
    procedure actOpenPaletteFileExecute(Sender: TObject);
    procedure actRenumberExecute(Sender: TObject);
    procedure actSaveAndCloseExecute(Sender: TObject);
    procedure actSavePaletteToFileExecute(Sender: TObject);
    procedure actSaveSelectedColorExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actShowFormModifyPaletteExecute(Sender: TObject);
    procedure actShowFormSortByExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrepareControls;
    procedure SelectFirst;
    procedure SelectLast;
    procedure SetLang;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);

    procedure FillColorPalette(const cp: TColorPalette);

    procedure SaveToVSTItemArray(var Arr: TColorListArray);
    procedure LoadFromVSTItemArray(var Arr: TColorListArray; bClear: Boolean = True);
    procedure UpdateVSTColorsFromArray(const Arr: TColorListArray);

    procedure SortBy_RedChannel(const Ascending: Boolean);
    procedure SortBy_GreenChannel(const Ascending: Boolean);
    procedure SortBy_BlueChannel(const Ascending: Boolean);
    procedure SortBy(const SortMode: TColorListSortMode; Ascending: Boolean = True);

    procedure AddColorsFromColorPalette(const cp: TColorPalette; bClear: Boolean);
    function AddColor(const ColorName: string; const AColor: TColor; ColorNo: integer = -1; bAtEnd: Boolean = True): PVirtualNode;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure popVstHeaderAddHeaderPopupItem(const Sender: TBaseVirtualTree; const Column: TColumnIndex; var Cmd: TAddPopupItemType);

    procedure vstAdvancedHeaderDraw(Sender: TVTHeader; var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
    procedure vstAfterCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; CellRect: TRect);
    procedure vstAfterColumnWidthTracking(Sender: TVTHeader; Column: TColumnIndex);
    procedure vstBeforeCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; CellPaintMode: TVTCellPaintMode;
        CellRect: TRect; var ContentRect: TRect);
    procedure vstChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vstDragAllowed(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
    procedure vstDragDrop(Sender: TBaseVirtualTree; Source: TObject; DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState; Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure vstDragOver(Sender: TBaseVirtualTree; Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
    procedure vstGetNodeDataSize(Sender: TBaseVirtualTree; var NodeDataSize: Integer);
    procedure vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    function vstGetNodeData(Node: PVirtualNode; var VSTDataPtr: PVSTData): Boolean;
    function vstGetNodeColorValue(Node: PVirtualNode; clInvalid: TColor): TColor;
    procedure vstHeaderDrawQueryElements(Sender: TVTHeader; var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
    procedure vstPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
    procedure vstColumnVisibilityChanged(const Sender: TBaseVirtualTree; const Column: TColumnIndex; Visible: Boolean);
    procedure vstCompareNodes(Sender: TBaseVirtualTree; Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vstHeaderClick(Sender: TVTHeader; HitInfo: TVTHeaderHitInfo);
    procedure vstMoveUp;
    procedure vstMoveDown;
    procedure vstMoveToTop;
    procedure vstMoveToEnd;
  private
    bUpdatingControls: Boolean;
    SortDirection: TSortDirection;
    ccRgb_Red, ccRgb_Green, ccRgb_Blue, ccHtml: TVstColumnColors;
    ccHslCss, ccHslCss_Hue, ccHslCss_Sat, ccHslCss_Lum: TVstColumnColors;
    ccHslWin, ccHslWin_Hue, ccHslWin_Sat, ccHslWin_Lum: TVstColumnColors;
    ccCmykCyan, ccCmykMagenta, ccCmykYellow, ccCmykBlack: TVstColumnColors;
  end;
  {$endregion TFormPaletteEditor}


var
  FormPaletteEditor: TFormPaletteEditor;

implementation

uses
  FCP.FormMain;

{$R *.dfm}



{$region '                            Create & Close                              '}
procedure TFormPaletteEditor.FormCreate(Sender: TObject);
begin
  Caption := 'Edit Color Palette';
  PrepareControls;
  PrepareModuleStrings_PaletteEditor;
  SortDirection := sdAscending;

  LoadSettingsFromIni;
  InitControls;
end;

procedure TFormPaletteEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FormSortBy) and (FormSortBy.Visible) then FormSortBy.Close;
  SaveSettingsToIni;
end;
{$endregion Create & Close}


{$region '                           PrepareControls                            '}
procedure TFormPaletteEditor.PrepareControls;

//  procedure AssignColors(var cc: TVstColumnColors; const clHeader, clBackground, clText: TColor); overload;
//  begin
//    cc.Header := clHeader;
//    cc.Background := clBackground;
//    cc.Text := clText;
//  end;

  procedure AssignColors(var cc: TVstColumnColors; const clBackground: TColor; xpHeader: integer = 50; xpText: integer = 300); overload;
  begin
    cc.Header := Darker(clBackground, xpHeader);
    cc.Background := clBackground;
    cc.Text := Darker(AvgColor(clBackground, clSilver), xpText);
  end;

begin
  pnMain.Align := alClient;

  vst.RootNodeCount := 0;
  vst.Align := alClient;

  ccbColor.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
  ccbColor.ButtonChangeColor.Appearance.ShowCaption := False;
  ccbColor.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
  ccbColor.ButtonCopyColor.Appearance.ShowCaption := False;
  ccbColor.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
  ccbColor.ButtonPasteColor.Appearance.ShowCaption := False;

  ccbColor.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
  ccbColor.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));
  ccbColor.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));

  ccbColor.SelectedColor := clBlack;

  btnSaveSelectedColor.Appearance.Assign(FormMain.btnT1.Appearance);
  btnOK.Appearance.Assign(FormMain.btnT1.Appearance);
  btnCancel.Appearance.Assign(FormMain.btnT1.Appearance);
  sbtnEditColor.Appearance.Assign(FormMain.sbtnT1.Appearance, True);


  dlgOpenPalette.InitialDir := AP.PalettesDir;
  dlgSavePalette.InitialDir := AP.PalettesDir;
  dlgExport.InitialDir := dlgSavePalette.InitialDir;


  // ---------------- Column colors -------------------
  AssignColors(ccRgb_Red, RGB(255,215,215));
  vst.Header.Columns[COL_COLOR_RGB_RED].Color := ccRgb_Red.Background;

  AssignColors(ccRgb_Green, RGB(213,238,224));
  vst.Header.Columns[COL_COLOR_RGB_GREEN].Color := ccRgb_Green.Background;

  AssignColors(ccRgb_Blue, RGB(207,230,254));
  vst.Header.Columns[COL_COLOR_RGB_BLUE].Color := ccRgb_Blue.Background;

  AssignColors(ccHtml, 9395330, -40, -300);
  vst.Header.Columns[COL_COLOR_HTML].Color := ccHtml.Background;

  AssignColors(ccHslCss, 15331571, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_CSS].Color := ccHslCss.Background;
  AssignColors(ccHslCss_Hue, 15331571, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_CSS_HUE].Color := ccHslCss_Hue.Background;
  AssignColors(ccHslCss_Sat, 15331571, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_CSS_SAT].Color := ccHslCss_Sat.Background;
  AssignColors(ccHslCss_Lum, 15331571, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_CSS_LUM].Color := ccHslCss_Lum.Background;

  AssignColors(ccHslWin, 16314855, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_WIN].Color := ccHslWin.Background;
  AssignColors(ccHslWin_Hue, 16314855, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_WIN_HUE].Color := ccHslWin_Hue.Background;
  AssignColors(ccHslWin_Sat, 16314855, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_WIN_SAT].Color := ccHslWin_Sat.Background;
  AssignColors(ccHslWin_Lum, 16314855, 80, 400);
  vst.Header.Columns[COL_COLOR_HSL_WIN_LUM].Color := ccHslWin_Lum.Background;

  AssignColors(ccCmykCyan, 16513205);
  vst.Header.Columns[COL_COLOR_CMYK_CYAN].Color := ccCmykCyan.Background;
  AssignColors(ccCmykMagenta, 16765695);
  vst.Header.Columns[COL_COLOR_CMYK_MAGENTA].Color := ccCmykMagenta.Background;
  AssignColors(ccCmykYellow, 11599871);
  vst.Header.Columns[COL_COLOR_CMYK_YELLOW].Color := ccCmykYellow.Background;
  AssignColors(ccCmykBlack, RGB3(110), -26, -300);
  vst.Header.Columns[COL_COLOR_CMYK_BLACK].Color := ccCmykBlack.Background;

end;
{$endregion PrepareControls}


{$region '                             InitControls                             '}
procedure TFormPaletteEditor.InitControls;
var
  b: Boolean;
  xCount, xSelCount: integer;
begin
  xCount := vst.RootNodeCount;
  xSelCount := vst.SelectedCount;

  b := xSelCount > 0;
  actSaveSelectedColor.Enabled := b;
  ccbColor.Enabled := b;
  actAdvancedColorEditor.Enabled := b;
  edColorName.Enabled := b;
  dlblNo.Enabled := b;

  actDeleteSelected.Enabled := b;
  actClearColorList.Enabled := xCount > 0;
  actInvertSelection.Enabled := xCount > 0;
  actSelectAll.Enabled := xSelCount < xCount;

  actClearColorNames.Enabled := xSelCount > 0;

  actColorWheel.Enabled := b;

  actMoveUp.Enabled := (xSelCount = 1) and (vst.FocusedNode <> nil) and (vst.FocusedNode.Index > 0);
  actMoveDown.Enabled := (xSelCount = 1) and (vst.FocusedNode <> nil) and (integer(vst.FocusedNode.Index) < (xCount - 1));

  actMoveToTop.Enabled := actMoveUp.Enabled;
  actMoveToEnd.Enabled := actMoveDown.Enabled;
end;

procedure TFormPaletteEditor.InitCtrls(Sender: TObject);
begin
  InitControls;
end;
{$endregion InitControls}


{$region '                            SetLang                              '}
procedure TFormPaletteEditor.SetLang;
var
  i: integer;
begin
  Caption := lsEditor.GetString('Caption', Caption);

  ccbColor.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  ccbColor.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  ccbColor.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');

  vst.Header.Columns[COL_NO].Text := lsEditor.GetString('colNo', 'No');
  vst.Header.Columns[COL_COLOR].Text := lsEditor.GetString('colColor', 'Color');
  vst.Header.Columns[COL_NAME].Text := lsEditor.GetString('colName', 'Name');
  vst.Header.Columns[COL_COLOR_RGB].Text := lsEditor.GetString('colRgb', 'RGB');
  vst.Header.Columns[COL_COLOR_RGB_PERCENT].Text := lsEditor.GetString('colRgbPercent', 'RGB %');
  vst.Header.Columns[COL_COLOR_HTML].Text := lsEditor.GetString('colHtml', 'HTML');
  vst.Header.Columns[COL_COLOR_HSL_CSS].Text := lsEditor.GetString('colHslCss', 'HSL CSS');
  vst.Header.Columns[COL_COLOR_HSL_WIN].Text := lsEditor.GetString('colHslWin', 'HSL WIN');
  vst.Header.Columns[COL_COLOR_CMYK].Text := lsEditor.GetString('colCmyk', 'CMYK');
  vst.Header.Columns[COL_COLOR_PASCAL_HEX].Text := lsEditor.GetString('colPascalHex', 'Pascal HEX');
  vst.Header.Columns[COL_COLOR_PASCAL_INT].Text := lsEditor.GetString('colPascalInt', 'Pascal INT');
  vst.Header.Columns[COL_COLOR_CPP_HEX].Text := lsEditor.GetString('colCppHex', 'C++ Hex');

  vst.Header.Columns[COL_COLOR_RGB_RED].Text := lsMain.GetString('RGB_Red', 'Red');
  vst.Header.Columns[COL_COLOR_RGB_GREEN].Text := lsMain.GetString('RGB_Green', 'Green');
  vst.Header.Columns[COL_COLOR_RGB_BLUE].Text := lsMain.GetString('RGB_Blue', 'Blue');

  actClearColorList.Caption := lsMain.GetComponentProperty('actClearPalette', 'Caption');
  actClearColorList.Hint := lsMain.GetComponentProperty('actClearPalette', 'Hint');

  for i := 0 to ccbColor.Items.Count - 1 do
    if ccbColor.IsChangeColorItem(i) then
    begin
      ccbColor.Items[i] := '@=' + ccbColor.ButtonChangeColor.Hint;
      Break;
    end;

  actColorWheel.Caption := FormMain.actPalette_ColorWheel.Caption;
  actColorWheel.Hint := actColorWheel.Caption; // FormMain.actPalette_ColorWheel.Hint;

end;


{$endregion SetLang}


procedure TFormPaletteEditor.FillColorPalette(const cp: TColorPalette);
var
  cg: TColorGroup;
  Node: PVirtualNode;
  vd: PVSTData;
begin
  cp.AppName := APP_NAME;
  cp.AppVersion := APP_VER_STR;

  cg := cp.AddGroup(COLOR_GROUP_NAME);

  Node := vst.GetFirst;
  while Node <> nil do
  begin
    vd := vst.GetNodeData(Node);
    if vd <> nil then cg.AddColor(vd^.Color, vd^.ColorName);
    Node := vst.GetNext(Node);
  end;

end;

procedure TFormPaletteEditor.actRenumberExecute(Sender: TObject);
var
  vd: PVSTData;
  Node: PVirtualNode;
  xNo: integer;
begin
  xNo := 0;
  Node := vst.GetFirst;
  while Node <> nil do
  begin
    vd := vst.GetNodeData(Node);
    if vd = nil then
    begin
      Node := Node.NextSibling;
      Continue;
    end;
    Inc(xNo);
    vd^.No := xNo;
    Node := vst.GetNext(Node);
  end;

  vst.Refresh;
end;


{$region '                                  Sorting                                  '}

procedure TFormPaletteEditor.SortBy_RedChannel(const Ascending: Boolean);
begin
  SortBy(clsmRed, Ascending);
end;

procedure TFormPaletteEditor.SortBy_GreenChannel(const Ascending: Boolean);
begin
  SortBy(clsmGreen, Ascending);
end;

procedure TFormPaletteEditor.SortBy_BlueChannel(const Ascending: Boolean);
begin
  SortBy(clsmBlue, Ascending);
end;

procedure TFormPaletteEditor.SortBy(const SortMode: TColorListSortMode; Ascending: Boolean = True);
var
  Arr: TColorListArray;
  List: JPL.Colors.List.TColorList;
begin
  SaveToVSTItemArray(Arr);
  List := JPL.Colors.List.TColorList.Create;
  try
    List.AddColorsFromArray(Arr);
    case SortMode of
      clsmRed: List.SortByRedChannel(Ascending);
      clsmGreen: List.SortByGreenChannel(Ascending);
      clsmBlue: List.SortByBlueChannel(Ascending);
      clsmRgbSum: List.SortByRgbSum(Ascending);
      clsmColorName: List.SortByColorName(Ascending);
      clsmNumber: List.SortByNumber(Ascending);
      clsmColorValue: List.SortByColorValue(Ascending);
      clsmCmykCyan: List.SortByCMYK_Cyan(Ascending);
      clsmCmykMagenta: List.SortByCMYK_Magenta(Ascending);
      clsmCmykYellow: List.SortByCMYK_Yellow(Ascending);
      clsmCmykBlack: List.SortByCMYK_Black(Ascending);
      clsmHslHue: List.SortByHSL_Hue(Ascending);
      clsmHslSat: List.SortByHSL_Sat(Ascending);
      clsmHslLum: List.SortByHSL_Lum(Ascending);
    end;
    List.SaveColorsToArray(Arr);
    LoadFromVSTItemArray(Arr, True);
  finally
    List.Free;
  end;
end;


{$endregion Sorting}


procedure TFormPaletteEditor.SaveToVSTItemArray(var Arr: TColorListArray);
var
  Node: PVirtualNode;
  vd: PVSTData;
  xInd: integer;
begin
  Node := vst.GetFirst;
  while Node <> nil do
  begin
    vd := vst.GetNodeData(Node);
    if vd <> nil then
    begin
      SetLength(Arr, Length(Arr) + 1);
      xInd := High(Arr);
      Arr[xInd].No := vd^.No;
      Arr[xInd].ColorName := vd^.ColorName;
      Arr[xInd].Color := vd^.Color;
    end;
    Node := vst.GetNext(Node);
  end;

end;

procedure TFormPaletteEditor.LoadFromVSTItemArray(var Arr: TColorListArray; bClear: Boolean = True);
var
  i: integer;
  Item: TColorListItem;
begin
  vst.BeginUpdate;
  try
    if bClear then vst.RootNodeCount := 0;

    for i := 0 to High(Arr) do
    begin
      Item := Arr[i];
      AddColor(Item.ColorName, Item.Color, Item.No);
    end;

  finally
    vst.EndUpdate;
  end;
end;

procedure TFormPaletteEditor.UpdateVSTColorsFromArray(const Arr: TColorListArray);
var
  xInd: integer;
  Node: PVirtualNode;
  vd: PVSTData;
begin
  if Length(Arr) <> integer(vst.RootNodeCount) then Exit;
  xInd := -1;
  vst.BeginUpdate;
  try

    Node := vst.GetFirst;
    while Node <> nil do
    begin

      Inc(xInd);
      if xInd > High(Arr) then Break; // tak na wszelki wypadek

      vd := vst.GetNodeData(Node);
      if vd = nil then // <-- to nie powinno się zdarzyć
      begin
        Node := vst.GetNext(Node);
        Continue;
      end;

      vd^.Color := Arr[xInd].Color;

      Node := vst.GetNext(Node);

    end;

  finally
    vst.EndUpdate;
  end;

  vst.Refresh;
end;

{$region '                             INI - Load & Save settings                                  '}

procedure TFormPaletteEditor.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
  i: integer;
  Column: TVirtualTreeColumn;
  vcp: TVstColumnParams;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_PALETTE_EDITOR, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteFormSize(Self);

    // ------------- Columns -------------------
    for i := 0 to vst.Header.Columns.Count - 1 do
    begin
      Column := vst.Header.Columns[i];
      if Column.Tag <> 0 then Continue;
      vcp.AssignColumn(Column);
      if vcp.IniID = '' then Continue;
      Section.WriteString(vcp.IniID, vcp.ToIniStr);
    end;


    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;


procedure TFormPaletteEditor.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
  s: string;
  i: integer;
  Column: TVirtualTreeColumn;
  vcp: TVstColumnParams;
begin
  if not FileExists(AP.IniFile) then Exit;

  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_PALETTE_EDITOR, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadFormSize(Self, Constraints.MinWidth, Screen.Width - 100, Constraints.MinHeight, Screen.Height - 100);

    // ------------------ Columns -------------------
    for i := 0 to vst.Header.Columns.Count - 1 do
    begin
      Column := vst.Header.Columns[i];
      if Column.Tag <> 0 then Continue;
      vcp.AssignColumn(Column);
      if not Section.KeyExists(vcp.IniID) then Continue;
      s := Section.ReadString(vcp.IniID, vcp.ToIniStr);
      vcp.ApplyIniStr(Column, s, vst.Header.Columns.Count - 1);
    end;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

{$endregion INI - Load & Save settings}


procedure TFormPaletteEditor.actSaveAndCloseExecute(Sender: TObject);
var
  cp: TColorPalette;
begin
  cp := TColorPalette.Create;
  try
    FillColorPalette(cp);
    FormMain.AssignColorPalette(cp, True);
  finally
    cp.Free;
  end;

  Close;
end;

procedure TFormPaletteEditor.actSaveSelectedColorExecute(Sender: TObject);
var
  Node: PVirtualNode;
  vd: PVSTData;
begin
  Node := vst.FocusedNode;
  if Node = nil then Exit;
  vd := vst.GetNodeData(Node);
  if vd = nil then Exit;
  vd^.Color := ccbColor.SelectedColor;
  vd^.ColorName := Trim(edColorName.Text);
  vst.Refresh;
end;

procedure TFormPaletteEditor.actSelectAllExecute(Sender: TObject);
begin
  vst.SelectAll(False);
end;

procedure TFormPaletteEditor.actInvertSelectionExecute(Sender: TObject);
begin
  vst.InvertSelection(False);
end;

procedure TFormPaletteEditor.actDeleteSelectedExecute(Sender: TObject);
begin
  if not vst.Focused then Exit;
  vst.DeleteSelectedNodes;
end;

{$region '                                Adding colors                                       '}
procedure TFormPaletteEditor.AddColorsFromColorPalette(const cp: TColorPalette; bClear: Boolean);
var
  i, y: integer;
  cg: TColorGroup;
  ColorItem: TColorItem;
begin
  vst.BeginUpdate;
  try

    if bClear then vst.RootNodeCount := 0;

    for i := 0 to cp.ColorGroupCount - 1 do
    begin
      cg := cp.ColorGroup[i];
      for y := 0 to cg.Count - 1 do
      begin
        ColorItem := cg[y];
        AddColor(ColorItem.Name, ColorItem.Color);
      end;
    end;

  finally
    vst.EndUpdate;
  end;
end;

function TFormPaletteEditor.AddColor(const ColorName: string; const AColor: TColor; ColorNo: integer = -1; bAtEnd: Boolean = True): PVirtualNode;
var
  vd: PVSTData;
  Node: PVirtualNode;
begin
  Result := nil;
  if bAtEnd then Node := vst.AddChild(nil)
  else Node := vst.InsertNode(vst.GetFirst, amInsertBefore);
  if Node = nil then Exit;
  vd := vst.GetNodeData(Node);
  if vd = nil then Exit;

  if ColorNo = -1 then vd^.No := vst.RootNodeCount else vd^.No := ColorNo;
  vd^.Color := AColor;
  vd.ColorName := ColorName;
  Result := Node;
end;


procedure TFormPaletteEditor.actAddColorAtEndExecute(Sender: TObject);
var
  Node: PVirtualNode;
begin
  bUpdatingControls := True;
  try
    vst.ClearSelection;
    Node := AddColor('', clWhite, -1, True);
    if Node = nil then Exit;
    vst.Selected[Node] := True;
    vst.ScrollIntoView(Node, True);
  finally
    bUpdatingControls := False;
  end;
end;

procedure TFormPaletteEditor.actAddColorAtTopExecute(Sender: TObject);
var
  Node: PVirtualNode;
begin
  bUpdatingControls := True;
  try
    vst.ClearSelection;
    Node := AddColor('', clWhite, -1, False);
    if Node = nil then Exit;
    vst.Selected[Node] := True;
    vst.ScrollIntoView(Node, True);
  finally
    bUpdatingControls := False;
  end;
end;

{$endregion Adding colors}



{$region '                                            VST related                                             '}

procedure TFormPaletteEditor.SelectFirst;
begin
  if vst.RootNodeCount = 0 then Exit;
  vst.Selected[vst.GetFirst] := True;
  vst.FocusedNode := vst.GetFirst;
end;

procedure TFormPaletteEditor.SelectLast;
begin
  if vst.RootNodeCount = 0 then Exit;
  vst.Selected[vst.GetLast] := True;
  vst.FocusedNode := vst.GetLast;
end;


procedure TFormPaletteEditor.vstAdvancedHeaderDraw(Sender: TVTHeader; var PaintInfo: THeaderPaintInfo; const Elements: THeaderPaintElements);
var
  R: TRect;
  Column: TVirtualTreeColumn;
  BgColor, FrameColor: TColor;
begin
  if PaintInfo.Column = nil then Exit;


  if hpeBackground in Elements then
    with PaintInfo.TargetCanvas do
    begin
      R := PaintInfo.PaintRectangle;
      Column := PaintInfo.Column;

      case Column.Index of
        COL_COLOR_RGB_RED: BgColor := ccRgb_Red.Header;
        COL_COLOR_RGB_GREEN: BgColor := ccRgb_Green.Header;
        COL_COLOR_RGB_BLUE: BgColor := ccRgb_Blue.Header;
        COL_COLOR_HTML: BgColor := ccHtml.Header;

        COL_COLOR_HSL_CSS: BgColor := ccHslCss.Header;
        COL_COLOR_HSL_CSS_HUE: BgColor := ccHslCss_Hue.Header;
        COL_COLOR_HSL_CSS_SAT: BgColor := ccHslCss_Sat.Header;
        COL_COLOR_HSL_CSS_LUM: BgColor := ccHslCss_Lum.Header;

        COL_COLOR_HSL_WIN: BgColor := ccHslWin.Header;
        COL_COLOR_HSL_WIN_HUE: BgColor := ccHslWin_Hue.Header;
        COL_COLOR_HSL_WIN_SAT: BgColor := ccHslWin_Sat.Header;
        COL_COLOR_HSL_WIN_LUM: BgColor := ccHslWin_Lum.Header;

        COL_COLOR_CMYK_CYAN: BgColor := ccCmykCyan.Header;
        COL_COLOR_CMYK_MAGENTA: BgColor := ccCmykMagenta.Header;
        COL_COLOR_CMYK_YELLOW: BgColor := ccCmykYellow.Header;
        COL_COLOR_CMYK_BLACK: BgColor := ccCmykBlack.Header;
      else
        BgColor := RGB3(210);
      end;

      if (PaintInfo.IsHoverIndex) and (coAllowClick in Column.Options) then BgColor := GetSimilarColor(BgColor, 10, True);

      FrameColor := RGB3(170);

      Brush.Color := BgColor;
      Pen.Style := psClear;
      Rectangle(R);

      // Frame
      Pen.Style := psSolid;
      Pen.Color := FrameColor;
      Pen.Width := 2;

      // right border
      MoveTo(R.Left + R.Width, R.Top);
      LineTo(R.Left + R.Width, R.Top + R.Height);

      // upper border
      MoveTo(R.Left, R.Top);
      LineTo(R.Left + R.Width, R.Top);

      // bottom border
      MoveTo(R.Left - 1, R.Top + R.Height);
      LineTo(R.Left + R.Width, R.Top + R.Height);

      if Column.Position = 0 then
      begin
        MoveTo(R.Left, R.Top);
        LineTo(R.Left, R.Top + R.Height);
      end;

    end;
end;


procedure TFormPaletteEditor.vstBeforeCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; CellPaintMode:
    TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
var
  clGrid: TColor;
  R: TRect;
  bSelected: Boolean;
  dx: integer;
  //clOriginalBg, clOriginalBorder: TColor;
begin
  if CellPaintMode <> cpmPaint then Exit;

  bSelected := vsSelected in Node^.States;
  R := CellRect;
  InflateRect(R, 1, 1);

  if vst.Focused then
    if bSelected then clGrid := vst.Colors.FocusedSelectionBorderColor else clGrid := vst.Colors.GridLineColor
  else
    if bSelected then clGrid := vst.Colors.UnfocusedSelectionBorderColor else clGrid := vst.Colors.GridLineColor;

  dx := 50;

  case Column of

    COL_COLOR_RGB_RED: if not bSelected then clGrid := Darker(ccRgb_Red.Background, dx);
    COL_COLOR_RGB_GREEN: if not bSelected then clGrid := Darker(ccRgb_Green.Background, dx);
    COL_COLOR_RGB_BLUE: if not bSelected then clGrid := Darker(ccRgb_Blue.Background, dx);

    COL_COLOR_HTML: if not bSelected then clGrid := Darker(ccHtml.Background, dx-30);

    COL_COLOR_HSL_CSS: if not bSelected then clGrid := Darker(ccHslCss.Background, dx+50);
    COL_COLOR_HSL_CSS_HUE: if not bSelected then clGrid := Darker(ccHslCss_Hue.Background, dx+50);
    COL_COLOR_HSL_CSS_SAT: if not bSelected then clGrid := Darker(ccHslCss_Sat.Background, dx+50);
    COL_COLOR_HSL_CSS_LUM: if not bSelected then clGrid := Darker(ccHslCss_Lum.Background, dx+50);

    COL_COLOR_HSL_WIN: if not bSelected then clGrid := Darker(ccHslWin.Background, dx+50);
    COL_COLOR_HSL_WIN_HUE: if not bSelected then clGrid := Darker(ccHslWin_Hue.Background, dx+50);
    COL_COLOR_HSL_WIN_SAT: if not bSelected then clGrid := Darker(ccHslWin_Sat.Background, dx+50);
    COL_COLOR_HSL_WIN_LUM: if not bSelected then clGrid := Darker(ccHslWin_Lum.Background, dx+50);

    COL_COLOR_CMYK_CYAN: if not bSelected then clGrid := Darker(ccCmykCyan.Background, dx+20);
    COL_COLOR_CMYK_MAGENTA: if not bSelected then clGrid := Darker(ccCmykMagenta.Background, dx+20);
    COL_COLOR_CMYK_YELLOW: if not bSelected then clGrid := Darker(AvgColor(ccCmykYellow.Background, RGB3(220)), dx-30);
    COL_COLOR_CMYK_BLACK: if not bSelected then clGrid := Darker(ccCmykBlack.Background, dx-30);

  end; // case

  if bSelected then
  begin
    clGrid := Darker(clGrid, 20);
  end;


  with TargetCanvas do
  begin
    Brush.Style := bsClear;
    Pen.Style := psSolid;
    Pen.Color := clGrid;
    Rectangle(R);
  end;



//    clOriginalBg := $00D56D11;
//    clOriginalBorder := $00D56D11;
////      vst.Colors.FocusedSelectionColor := clOriginalBg;
////      vst.Colors.FocusedSelectionBorderColor := clOriginalBorder;
//
//  if bSelected then
//  begin
//
//
//    case Column of
//      COL_COLOR_RGB_RED:
//        begin
//          vst.Colors.FocusedSelectionColor := AvgColor(clOriginalBg, ccRgb_Red.Background);// else vst.Colors.FocusedSelectionColor := clOriginalBg;
//          vst.Colors.FocusedSelectionBorderColor := vst.Colors.FocusedSelectionColor;
//        end;
//    else
////      vst.Colors.FocusedSelectionColor := clOriginalBg;
////      vst.Colors.FocusedSelectionBorderColor := clOriginalBorder;
//    end;
//  end;

//  if bSelected then
//  with TargetCanvas do
//  begin
//    Brush.Style := bsSolid;
//    Brush.Color := clRed;
//    Rectangle(R);
//  end;

end;

procedure TFormPaletteEditor.vstPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
var
  clText: TColor;
begin
  //if (Column in [COL_COLOR_RGB..COL_COLOR_CPP_HEX]) then
  if Column > COL_NAME then
  with TargetCanvas do
  begin
    Font.Name := AP.MonospaceFont.Name;
    Font.Size := AP.MonospaceFont.Size;
  end;

  if vst.Selected[Node] then Exit;

  clText := clNone;
  case Column of
    COL_COLOR_RGB_RED: clText := ccRgb_Red.Text;
    COL_COLOR_RGB_GREEN: clText := ccRgb_Green.Text;
    COL_COLOR_RGB_BLUE: clText := ccRgb_Blue.Text;
    COL_COLOR_HTML: clText := ccHtml.Text;

    COL_COLOR_HSL_CSS: clText := ccHslCss.Text;
    COL_COLOR_HSL_CSS_HUE: clText := ccHslCss_Hue.Text;
    COL_COLOR_HSL_CSS_SAT: clText := ccHslCss_Sat.Text;
    COL_COLOR_HSL_CSS_LUM: clText := ccHslCss_Lum.Text;

    COL_COLOR_HSL_WIN: clText := ccHslWin.Text;
    COL_COLOR_HSL_WIN_HUE: clText := ccHslWin_Hue.Text;
    COL_COLOR_HSL_WIN_SAT: clText := ccHslWin_Sat.Text;
    COL_COLOR_HSL_WIN_LUM: clText := ccHslWin_Lum.Text;

    COL_COLOR_CMYK_CYAN: clText := ccCmykCyan.Text;
    COL_COLOR_CMYK_MAGENTA: clText := ccCmykMagenta.Text;
    COL_COLOR_CMYK_YELLOW: clText := ccCmykYellow.Text;
    COL_COLOR_CMYK_BLACK: clText := ccCmykBlack.Text;
  end;

  if clText <> clNone then TargetCanvas.Font.Color := clText;
end;

procedure TFormPaletteEditor.vstAfterCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; CellRect: TRect);
var
  Color: TColor;
  vd: PVSTData;
  R: TRect;
begin
  if not Assigned(Node) then Exit;
  if not vstGetNodeData(Node, vd) then Exit;

  R := CellRect;
  InflateRect(R, 1, 1);
  R.Left := R.Left + 1;

  if Column = COL_COLOR then
    with TargetCanvas do
    begin
      Color := vstGetNodeColorValue(Node, clNone);
      if Color = clNone then Exit;
      Brush.Color := Color;
      Pen.Style := psSolid;
      Pen.Color := AvgColor(Color, clGray);
      Rectangle(R);
    end;

//  if vsSelected in Node^.States then
//  with TargetCanvas do
//  begin
//    Brush.Style := bsSolid;
//    Brush.Color := clGray;
//    Rectangle(R);
//  end;

end;

procedure TFormPaletteEditor.vstAfterColumnWidthTracking(Sender: TVTHeader; Column: TColumnIndex);
begin
  vst.Repaint;
end;

procedure TFormPaletteEditor.vstChange(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  vd: PVSTData;
begin
  if vstGetNodeData(Node, vd) then
  begin
    if vd^.Color = clNone then Exit;
    ccbColor.SelectedColor := vd^.Color;
    edColorName.Text := vd^.ColorName;
    dlblNo.RightCaption := itos(vd^.No);
  end;
  vst.Refresh;
  InitControls;
end;


procedure TFormPaletteEditor.vstMoveDown;
var
  NodeSrc, NodeDest: PVirtualNode;
  AttachMode: TVTNodeAttachMode;
begin
  NodeSrc := vst.FocusedNode;
  if NodeSrc = nil then Exit;
  NodeDest := vst.GetNext(NodeSrc);
  if NodeDest = nil then Exit;

  AttachMode := amInsertAfter;
  vst.MoveTo(NodeSrc, NodeDest, AttachMode, False);
  vst.ScrollIntoView(NodeSrc, False);
  vst.Refresh;
  InitControls;
end;

procedure TFormPaletteEditor.vstMoveToEnd;
var
  NodeSrc, NodeDest: PVirtualNode;
  AttachMode: TVTNodeAttachMode;
begin
  NodeSrc := vst.FocusedNode;
  if NodeSrc = nil then Exit;
  NodeDest := vst.GetLast;
  if NodeDest = nil then Exit;

  AttachMode := amInsertAfter;
  vst.MoveTo(NodeSrc, NodeDest, AttachMode, False);
  vst.ScrollIntoView(NodeSrc, False);
  vst.Refresh;
  InitControls;
end;

procedure TFormPaletteEditor.vstMoveToTop;
var
  NodeSrc, NodeDest: PVirtualNode;
  AttachMode: TVTNodeAttachMode;
begin
  NodeSrc := vst.FocusedNode;
  if NodeSrc = nil then Exit;
  NodeDest := vst.GetFirst;
  if NodeDest = nil then Exit;

  AttachMode := amInsertBefore;
  vst.MoveTo(NodeSrc, NodeDest, AttachMode, False);
  vst.ScrollIntoView(NodeSrc, False);
  vst.Refresh;
  InitControls;
end;

procedure TFormPaletteEditor.vstMoveUp;
var
  NodeSrc, NodeDest: PVirtualNode;
  AttachMode: TVTNodeAttachMode;
begin
  NodeSrc := vst.FocusedNode;
  if NodeSrc = nil then Exit;
  NodeDest := vst.GetPrevious(NodeSrc);
  if NodeDest = nil then Exit;

  AttachMode := amInsertBefore;
  vst.MoveTo(NodeSrc, NodeDest, AttachMode, False);
  vst.ScrollIntoView(NodeSrc, False);
  vst.Refresh;
  InitControls;
end;

//TVTNodeAttachMode = (
//  amNoWhere,        // just for simplified tests, means to ignore the Add/Insert command
//  amInsertBefore,   // insert node just before destination (as sibling of destination)
//  amInsertAfter,    // insert node just after destionation (as sibling of destination)
//  amAddChildFirst,  // add node as first child of destination
//  amAddChildLast    // add node as last child of destination
//);

//// modes to determine drop position further
//TDropMode = (
//  dmNowhere,
//  dmAbove,
//  dmOnNode,
//  dmBelow
//);
procedure TFormPaletteEditor.vstDragDrop(Sender: TBaseVirtualTree; Source: TObject; DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState; Pt:
    TPoint; var Effect: Integer; Mode: TDropMode);
var
  NodeSrc, NodeDest: PVirtualNode;
  AttachMode: TVTNodeAttachMode;
begin
  // NodeSrc - gałąź przeciągana
  // NodeDset - gałąź, na której nastąpiło "drop".
  NodeSrc := TVirtualStringTree(Source).FocusedNode;
  NodeDest := Sender.DropTargetNode;

  if NodeSrc = NodeDest then Exit;

    case Mode of
      dmNowhere: AttachMode := amNoWhere;
      dmAbove: AttachMode := amInsertBefore;
      dmBelow: AttachMode := amInsertAfter;
      dmOnNode: AttachMode := amInsertBefore; // amAddChildLast;
    else
      AttachMode := amNoWhere;
    end;

    Sender.MoveTo(NodeSrc, NodeDest, AttachMode, False);

    vst.Refresh;
end;

procedure TFormPaletteEditor.vstDragOver(Sender: TBaseVirtualTree; Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode; var
    Effect: Integer; var Accept: Boolean);
begin
  Accept := Mode <> dmNowhere; //Mode in [dmAbove, dmBelow];
end;

procedure TFormPaletteEditor.vstDragAllowed(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Sender = vst);
end;


function TFormPaletteEditor.vstGetNodeColorValue(Node: PVirtualNode; clInvalid: TColor): TColor;
var
  vd: PVSTData;
begin
  Result := clInvalid;
  if not vstGetNodeData(Node, vd) then Exit;
  Result := vd^.Color;
end;

function TFormPaletteEditor.vstGetNodeData(Node: PVirtualNode; var VSTDataPtr: PVSTData): Boolean;
begin
  Result := False;
  if not Assigned(Node) then Exit;
  VSTDataPtr := vst.GetNodeData(Node);
  Result := Assigned(VSTDataPtr);
end;

procedure TFormPaletteEditor.vstGetNodeDataSize(Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TVSTData);
end;

procedure TFormPaletteEditor.vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  vd: PVSTData;
  AColor: TColor;
begin
  CellText := '';
  if not vstGetNodeData(Node, vd) then Exit;

  AColor := vd^.Color;

  case Column of
    COL_NO: CellText := IntToStrEx(vd^.No);
    COL_NAME: CellText := vd^.ColorName;
  end;

  if AColor = clNone then Exit;

  case Column of

    COL_COLOR_RGB: CellText := ColorToRgbIntStr(AColor, 3, ' ', ' ');
    COL_COLOR_RGB_RED: CellText := itos(GetRValue(AColor));
    COL_COLOR_RGB_GREEN: CellText := itos(GetGValue(AColor));
    COL_COLOR_RGB_BLUE: CellText := itos(GetBValue(AColor));
    COL_COLOR_RGB_PERCENT: CellText := ColorToRgbPercentStr(AColor, 3, ' ', ' ', False);

    COL_COLOR_HTML: CellText := InsertNumSep(ColorToHtmlColorStr(AColor), ' ', 2, 2);

    COL_COLOR_HSL_CSS: CellText := ColorToHslCssStr(AColor, True, 3, ' ', ' ');
    COL_COLOR_HSL_CSS_HUE: CellText := itos(GetHueCssValue(AColor)) + DEG;
    COL_COLOR_HSL_CSS_SAT: CellText := itos(GetSatCssValue(AColor)) + '%';
    COL_COLOR_HSL_CSS_LUM: CellText := itos(GetLumCssValue(AColor)) + '%';

    COL_COLOR_HSL_WIN: CellText := ColorToHslWinStr(AColor, False, 3, ' ', ' ');
    COL_COLOR_HSL_WIN_HUE: CellText := itos(GetHueWinValue(AColor));
    COL_COLOR_HSL_WIN_SAT: CellText := itos(GetSatWinValue(AColor));
    COL_COLOR_HSL_WIN_LUM: CellText := itos(GetLumWinValue(AColor));

    COL_COLOR_CMYK: CellText := ColorToCmykStr(AColor, 3, ' ', ' ');
    COL_COLOR_CMYK_CYAN: CellText := itos(GetCmykCyanValue(AColor));
    COL_COLOR_CMYK_MAGENTA: CellText := itos(GetCmykMagentaValue(AColor));
    COL_COLOR_CMYK_YELLOW: CellText := itos(GetCmykYellowValue(AColor));
    COL_COLOR_CMYK_BLACK: CellText := itos(GetCmykBlackValue(AColor));

    COL_COLOR_PASCAL_HEX: CellText := InsertNumSep(ColorToDelphiHex(AColor, '$'), ' ', 2, 3);
    COL_COLOR_PASCAL_INT: CellText := InsertNumSep(ColorToDelphiIntStr(AColor), ' ', 3);
    COL_COLOR_CPP_HEX: CellText := InsertNumSep(ColorToDelphiHex(AColor, '0x'), ' ', 2, 3);
  end;

end;

procedure TFormPaletteEditor.vstHeaderDrawQueryElements(Sender: TVTHeader; var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
begin
  Include(Elements, hpeBackground);
end;





procedure TFormPaletteEditor.vstHeaderClick(Sender: TVTHeader; HitInfo: TVTHeaderHitInfo);
begin
  if bUpdatingControls then Exit;
  if SortDirection = sdAscending then SortDirection := sdDescending
  else SortDirection := sdAscending;
  vst.SortTree(HitInfo.Column, SortDirection);
end;

procedure TFormPaletteEditor.vstCompareNodes(Sender: TBaseVirtualTree; Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  vd1, vd2: PVSTData;
  cl1, cl2: TColor;
  //Red1, Red2, Green1, Green2, Blue1, Blue2: Byte;

  function CompareBytes(const bt1, bt2: integer): integer;
  begin
    if bt1 < bt2 then Result := -1
    else if bt1 > bt2 then Result := 1
    else Result := 0;
  end;

  function CompareIntegers(const x1, x2: integer): integer;
  begin
    if x1 < x2 then Result := -1
    else if x1 > x2 then Result := 1
    else Result := 0;
  end;

begin
  if bUpdatingControls then Exit;

  vd1 := vst.GetNodeData(Node1);
  vd2 := vst.GetNodeData(Node2);
  cl1 := vd1^.Color;
  cl2 := vd2^.Color;

  case Column of

    COL_NO:
      begin
        if vd1^.No < vd2^.No then Result := -1
        else if vd1^.No > vd2^.No then Result := 1
        else Result := 0;
      end;

    COL_NAME: Result := CompareText(vd1^.ColorName, vd2^.ColorName);

    COL_COLOR, COL_COLOR_PASCAL_HEX, COL_COLOR_PASCAL_INT, COL_COLOR_CPP_HEX: Result := CompareIntegers(cl1, cl2);

    COL_COLOR_RGB_RED: Result := CompareBytes(GetRValue(cl1), GetRValue(cl2));
    COL_COLOR_RGB_GREEN: Result := CompareBytes(GetGValue(cl1), GetGValue(cl2));
    COL_COLOR_RGB_BLUE: Result := CompareBytes(GetBValue(cl1), GetBValue(cl2));

    COL_COLOR_HSL_CSS_HUE: Result := CompareIntegers(GetHueCssValue(cl1), GetHueCssValue(cl2));
    COL_COLOR_HSL_CSS_SAT: Result := CompareIntegers(GetSatCssValue(cl1), GetSatCssValue(cl2));
    COL_COLOR_HSL_CSS_LUM: Result := CompareIntegers(GetLumCssValue(cl1), GetLumCssValue(cl2));

    COL_COLOR_HSL_WIN_HUE: Result := CompareIntegers(GetHueWinValue(cl1), GetHueWinValue(cl2));
    COL_COLOR_HSL_WIN_SAT: Result := CompareIntegers(GetSatWinValue(cl1), GetSatWinValue(cl2));
    COL_COLOR_HSL_WIN_LUM: Result := CompareIntegers(GetLumWinValue(cl1), GetLumWinValue(cl2));

    COL_COLOR_CMYK_CYAN: Result := CompareIntegers(GetCmykCyanValue(cl1), GetCmykCyanValue(cl2));
    COL_COLOR_CMYK_MAGENTA: Result := CompareIntegers(GetCmykMagentaValue(cl1), GetCmykMagentaValue(cl2));
    COL_COLOR_CMYK_YELLOW: Result := CompareIntegers(GetCmykYellowValue(cl1), GetCmykYellowValue(cl2));
    COL_COLOR_CMYK_BLACK: Result := CompareIntegers(GetCmykBlackValue(cl1), GetCmykBlackValue(cl2));

  end; // case


end;

procedure TFormPaletteEditor.vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  vd: PVSTData;
begin
  vd := vst.GetNodeData(Node);
  if not Assigned(vd) then Exit;
  vd^.ColorName := ''; // Bez "wyzerowania" stringa - memory leak!
end;


procedure TFormPaletteEditor.popVstHeaderAddHeaderPopupItem(const Sender: TBaseVirtualTree; const Column: TColumnIndex; var Cmd: TAddPopupItemType);
begin
  if (Column = COL_COLOR) then Cmd := apHidden;
end;

procedure TFormPaletteEditor.vstColumnVisibilityChanged(const Sender: TBaseVirtualTree; const Column: TColumnIndex; Visible: Boolean);
begin
  // Hack: Force update VST header
  // Bez hacka, po ukryciu kolumny, pozostaje widoczny jej nagłówek.
  // Za cholerę nie da się go ukryć. Invalidate, Repaint, Refresh, Realign ... - nic nie działa!

  vst.Header.Options := vst.Header.Options - [hoOwnerDraw];
  vst.Repaint;
  vst.Header.Options := vst.Header.Options + [hoOwnerDraw];
end;

{$endregion VST related}

procedure TFormPaletteEditor.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormPaletteEditor.actClearColorListExecute(Sender: TObject);
var
  s: string;
begin
  s := lsMain.GetString('ClearPaletteQuery', 'Are you sure you want to clear the color palette?');
  if MessageBox(Handle, PChar(s), PChar(AppInfo.Name), MB_YESNO or MB_ICONQUESTION) = ID_YES then vst.Clear;
  InitControls;
end;

procedure TFormPaletteEditor.actAdvancedColorEditorExecute(Sender: TObject);
var
  cl: TColor;
  fs: TFormStyle;
begin
  cl := ccbColor.SelectedColor;
  FormEditColor.SetCurrentColor(cl);
  fs := FormMain.FormStyle;
  FormMain.FormStyle := fsNormal;

  try
    FormEditColor.ShowModal;
  finally
    FormMain.FormStyle := fs;
  end;

  SwitchFormTop(Self);

  if FormEditColor.ModalResult <> mrOk then Exit;
  cl := FormEditColor.GetCurrentColor;
  ccbColor.SelectedColor := cl;
end;

procedure TFormPaletteEditor.actClearColorNamesExecute(Sender: TObject);
var
  vd: PVSTData;
  Node: PVirtualNode;
begin
  Node := vst.GetFirst;
  while Node <> nil do
  begin

    if not vst.Selected[Node] then
    begin
      Node := Node.NextSibling;
      Continue;
    end;

    vd := vst.GetNodeData(Node);
    if vd = nil then
    begin
      Node := Node.NextSibling;
      Continue;
    end;

    vd^.ColorName := '';
    Node := vst.GetNext(Node);
  end;

  vst.Refresh;
end;

procedure TFormPaletteEditor.actColorWheelExecute(Sender: TObject);
var
  cl: TColor;
begin
  if vst.FocusedNode = nil then Exit;
  cl := vstGetNodeColorValue(vst.FocusedNode, clNone);
  if cl = clNone then Exit;
  FormColorWheel.CurrentColor := cl;
  FormColorWheel.Show;
end;




{$region '                            Palette: Open / Save / Export                                '}

procedure TFormPaletteEditor.actOpenPaletteFileExecute(Sender: TObject);
var
  cp: TColorPalette;
  s: string;
begin
  dlgOpenPalette.Options := dlgOpenPalette.Options - [ofAllowMultiSelect];
  if not dlgOpenPalette.Execute then Exit;
  cp := TColorPalette.Create;
  try
   if cp.TryLoadFromFile(dlgOpenPalette.FileName) then Self.AddColorsFromColorPalette(cp, True)
   else
   begin
     s := lsMain.GetString('ErrCannotLoadPalette', 'Cannot load color palette from file "%s"');
     s := fixs(s, dlgOpenPalette.FileName);
     MsgError(s);
   end;
  finally
    cp.Free;
  end;
end;

procedure TFormPaletteEditor.actOpenAddExecute(Sender: TObject);
var
  cp: TColorPalette;
  s, sErr, fName: string;
  i: integer;
  sl: TStringList; //<-- needed for sorting
begin
  dlgOpenPalette.Options := dlgOpenPalette.Options + [ofAllowMultiSelect];
  sl := TStringList.Create;
  try

    if not dlgOpenPalette.Execute then Exit;

    sl.Assign(dlgOpenPalette.Files);
    sl.Sort;
    sErr := '';
    for i := 0 to sl.Count - 1 do
    begin

      fName := sl[i];

      cp := TColorPalette.Create;
      try
       if cp.TryLoadFromFile(fName) then Self.AddColorsFromColorPalette(cp, False)
       else
       begin
         s := lsMain.GetString('ErrCannotLoadPalette', 'Cannot load color palette from file "%s"');
         s := fixs(s, fName);
         sErr := sErr + ENDL + s + ENDL + '---------------------------------------';
       end;
      finally
        cp.Free;
      end;

    end;

  finally
    dlgOpenPalette.Options := dlgOpenPalette.Options - [ofAllowMultiSelect];
    sl.Free;
  end;

  if sErr <> '' then MsgError(sErr);
end;

procedure TFormPaletteEditor.actSavePaletteToFileExecute(Sender: TObject);
var
  cp: TColorPalette;
begin
  if not dlgSavePalette.Execute then Exit;
  cp := TColorPalette.Create;
  try
    FillColorPalette(cp);
    cp.SaveToJsonFile(dlgSavePalette.FileName);
    dlgExport.InitialDir := ExtractFileDir(dlgSavePalette.FileName);
  finally
    cp.Free;
  end;
end;

procedure TFormPaletteEditor.actExportPaletteToGPLExecute(Sender: TObject);
var
  cp: TColorPalette;
begin
  dlgExport.DefaultExt := '.gpl';
  dlgExport.Filter := 'GIMP palette files (*.gpl)|*.gpl';
  if not dlgExport.Execute then Exit;
  cp := TColorPalette.Create;
  try
    FillColorPalette(cp);
    cp.SaveToGimpPaletteFile(dlgExport.FileName, AppInfo.FullName + ' Color Palette');
  finally
    cp.Free;
  end;
end;

procedure TFormPaletteEditor.actExportPaletteToHtmlExecute(Sender: TObject);
var
  cp: TColorPalette;
begin
  dlgExport.DefaultExt := '.html';
  dlgExport.Filter := 'HTML files (*.html)|*.html';
  if not dlgExport.Execute then Exit;
  dlgExport.InitialDir := ExtractFileDir(dlgExport.FileName);
  cp := TColorPalette.Create;
  try
    FillColorPalette(cp);
    cp.SaveToHtmlFile(dlgExport.FileName, AppInfo.FullName + ' Color Palette', True, True, True, True, True, True, True, True, True);
  finally
    cp.Free;
  end;
end;


{$endregion Palette: Open / Save / Export}


procedure TFormPaletteEditor.actShowFormSortByExecute(Sender: TObject);
var
  fs: TFormStyle;
begin
  fs := FormMain.FormStyle;
  try
    FormMain.FormStyle := fsNormal;
    FormSortBy.ShowModal;
  finally
    FormMain.FormStyle := fs;
  end;
  SwitchFormTop(Self);
end;

procedure TFormPaletteEditor.actMoveDownExecute(Sender: TObject);
begin
  vstMoveDown;
end;

procedure TFormPaletteEditor.actMoveToEndExecute(Sender: TObject);
begin
  vstMoveToEnd;
end;

procedure TFormPaletteEditor.actMoveToTopExecute(Sender: TObject);
begin
  vstMoveToTop;
end;

procedure TFormPaletteEditor.actMoveUpExecute(Sender: TObject);
begin
  vstMoveUp;
end;

procedure TFormPaletteEditor.actShowFormModifyPaletteExecute(Sender: TObject);
var
  fs: TFormStyle;
  Arr: TColorListArray;
begin
  SaveToVSTItemArray(Arr);

  fs := FormMain.FormStyle;
  FormMain.FormStyle := fsNormal;

  FormModifyPalette.AssignColorsFromArray(Arr);

  try
    FormModifyPalette.ShowModal;
  finally
    FormMain.FormStyle := fs;
  end;
  SwitchFormTop(Self);

  if FormModifyPalette.ModalResult <> mrOk then Exit;

  FormModifyPalette.SaveModifiedColorsToArray(Arr);
  UpdateVSTColorsFromArray(Arr);
end;

procedure TFormPaletteEditor.actEscExecute(Sender: TObject);
begin
  Close;
end;




{$region '                                    TVstColumnParams                                     '}

procedure TVstColumnParams.ApplyIniStr(const Column: TVirtualTreeColumn; const IniValue: string; const MaxPos: integer);
var
  Arr: TArray<string>;
  s: string;
  xPos, xWidth: integer;
begin
  // [0] - Visible ( 1 or 0 )
  // [1] - Position
  // [2] - Width

  try

    if Trim(IniValue) = '' then Exit;
    SplitStrToArray(IniValue, Arr, ',');
    if Length(Arr) <> 3 then Exit;

    s := Trim(Arr[0]);
    if s = '1' then Visible := True
    else if s = '0' then Visible := False
    else Exit;


    s := Trim(Arr[1]);
    if not TryStrToInt(s, xPos) then Exit;
    if (xPos < 0) or (xPos > MaxPos) then Exit;

    s := Trim(Arr[2]);
    if not TryStrToInt(s, xWidth) then Exit;

    if Visible then Column.Options := Column.Options + [coVisible] else Column.Options := Column.Options - [coVisible];
    Column.Position := xPos;
    Column.Width := xWidth;


  finally
    SetLength(Arr, 0);
  end;
end;

procedure TVstColumnParams.AssignColumn(const Column: TVirtualTreeColumn);
begin
  Visible := coVisible in Column.Options;
  Position := Column.Position;
  Width := Column.Width;

  case Column.Index of
    COL_NO: IniID := 'colNo';
    COL_NAME: IniID := 'colName';
    COL_COLOR: IniID := 'colColor';

    COL_COLOR_RGB: IniID := 'colRgb';
    COL_COLOR_RGB_RED: IniID := 'colRgb_Red';
    COL_COLOR_RGB_GREEN: IniID := 'colRgb_Green';
    COL_COLOR_RGB_BLUE: IniID := 'colRgb_Blue';
    COL_COLOR_RGB_PERCENT: IniID := 'colRgbPercent';

    COL_COLOR_HTML: IniID := 'colHtml';

    COL_COLOR_HSL_CSS: IniID := 'colHslCss';
    COL_COLOR_HSL_CSS_HUE: IniID := 'colHslCss_Hue';
    COL_COLOR_HSL_CSS_SAT: IniID := 'colHslCss_Sat';
    COL_COLOR_HSL_CSS_LUM: IniID := 'colHslCss_Lum';

    COL_COLOR_HSL_WIN: IniID := 'colHslWin';
    COL_COLOR_HSL_WIN_HUE: IniID := 'colHslWin_Hue';
    COL_COLOR_HSL_WIN_SAT: IniID := 'colHslWin_Sat';
    COL_COLOR_HSL_WIN_LUM: IniID := 'colHslWin_Lum';

    COL_COLOR_CMYK: IniID := 'colCmyk';
    COL_COLOR_PASCAL_HEX: IniID := 'colPascalHex';
    COL_COLOR_PASCAL_INT: IniID := 'colPascalInt';
    COL_COLOR_CPP_HEX: IniID := 'colCppHex';
  else
    IniID := '';
  end;

end;

function TVstColumnParams.ToIniStr: string;
var
  s: string;
begin
  if Visible then s := '1,' else s := '0,';
  s := s + itos(Position) + ',' + itos(Width);
  Result := s;
end;

{$endregion TVstColumnParams}




end.
