unit FCP.FormPaletteEditor;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages, Winapi.ActiveX,

  // System
  System.SysUtils, System.Variants, System.Classes, {System.IniFiles,} System.Actions,

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
  COL_COLOR_RGB_PERCENT = 4;
  COL_COLOR_HTML = 5;
  COL_COLOR_HSL_CSS = 6;
  COL_COLOR_HSL_WIN = 7;
  COL_COLOR_CMYK = 8;
  COL_COLOR_PASCAL_HEX = 9;
  COL_COLOR_PASCAL_INT = 10;
  COL_COLOR_CPP_HEX = 11;

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

      BgColor := RGB3(210);
      if PaintInfo.IsHoverIndex then BgColor := RGB3(230);
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


procedure TFormPaletteEditor.vstAfterCellPaint(Sender: TBaseVirtualTree; TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; CellRect: TRect);
var
  Color: TColor;
  vd: PVSTData;
  dx: integer;
begin
  if not Assigned(Node) then Exit;
  if not vstGetNodeData(Node, vd) then Exit;


  if Column = COL_COLOR then
    with TargetCanvas do
    begin
      //Color := vst.Header.Columns[COL_COLOR].Color;
      //Brush.Color := Color;
      //Pen.Color := Color;
      //Rectangle(CellRect);

      dx := 1;
      InflateRect(CellRect, dx, dx);
      Color := vstGetNodeColorValue(Node, clNone);
      if Color = clNone then Exit;
      Brush.Color := Color;
      Pen.Style := psSolid;
      //Pen.Color := Color;// AvgColor(Color, clGray);
      Pen.Color := vst.Colors.GridLineColor;
      Rectangle(CellRect);
    end;

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

procedure TFormPaletteEditor.vstDragAllowed(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := (Sender = vst);
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
    COL_COLOR_HTML: CellText := ColorToHtmlColorStr(AColor);
    COL_COLOR_RGB: CellText := ColorToRgbIntStr(AColor, 3, '0', ',');
    COL_COLOR_RGB_PERCENT: CellText := ColorToRgbPercentStr(AColor, 3, '0', ',', False);
    COL_COLOR_HSL_CSS: CellText := ColorToHslCssStr(AColor);
    COL_COLOR_HSL_WIN: CellText := ColorToHslStr(AColor, 239, 240, 240, 3, '0', ',');
    COL_COLOR_CMYK: CellText := ColorToCmykStr(AColor, 3);
    COL_COLOR_PASCAL_HEX: CellText := ColorToDelphiHex(AColor, '$');
    COL_COLOR_PASCAL_INT: CellText := ColorToDelphiIntStr(AColor);
    COL_COLOR_CPP_HEX: CellText := ColorToDelphiHex(AColor, '0x');
  end;

end;

procedure TFormPaletteEditor.vstHeaderDrawQueryElements(Sender: TVTHeader; var PaintInfo: THeaderPaintInfo; var Elements: THeaderPaintElements);
begin
  Include(Elements, hpeBackground);
end;



procedure TFormPaletteEditor.vstPaintText(Sender: TBaseVirtualTree; const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType);
begin
  if (Column in [COL_COLOR_RGB..COL_COLOR_CPP_HEX]) then
  with TargetCanvas do
  begin
    Font.Name := AP.MonospaceFont.Name;
    Font.Size := AP.MonospaceFont.Size;
  end;
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
begin
  if bUpdatingControls then Exit;

  vd1 := vst.GetNodeData(Node1);
  vd2 := vst.GetNodeData(Node2);

  if Column = COL_NO then
  begin
    if vd1^.No < vd2^.No then Result := -1
    else if vd1^.No > vd2^.No then Result := 1
    else Result := 0;
  end

  else if Column = COL_NAME then
  begin
    Result := CompareText(vd1^.ColorName, vd2^.ColorName);
  end

  else if Column = COL_COLOR then
  begin
    if vd1^.Color < vd2^.Color then Result := -1
    else if vd1^.Color > vd2^.Color then Result := 1
    else Result := 0;
  end;


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
    COL_COLOR_RGB_PERCENT: IniID := 'colRgbPercent';
    COL_COLOR_HTML: IniID := 'colHtml';
    COL_COLOR_HSL_CSS: IniID := 'colHslCss';
    COL_COLOR_HSL_WIN: IniID := 'colHslWin';
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
