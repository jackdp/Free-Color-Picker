unit FCP.FormGradientColors;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.Actions, // System.IniFiles,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus,

  // JPLib
  JPL.Strings, JPL.Conversion, JPL.Colors, JPL.IniFile,

  // JPPack
  JPP.SimplePanel, JPP.PngButton, JPP.ColorListBox, JPP.BasicPanel, JPP.ColorSwatch,

  // JPModLib
  JPEsGrad,

  // SpTBX
  SpTBXEditors, TB2Item, SpTBXItem,

  // FCP
  FCP.Types, FCP.Shared, FCP.AppStrings;

type
  TFormGradientColors = class(TForm)
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    actAdd: TAction;
    pnBottom: TJppSimplePanel;
    lblAddPos: TLabel;
    btnClose: TJppPngButton;
    btnAdd: TJppPngButton;
    cbAddPos: TComboBox;
    pnMain: TJppSimplePanel;
    pnRight: TJppSimplePanel;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColors: TLabel;
    clbColors: TJppColorListBox;
    cswStartColor: TJppColorSwatchEx;
    cswEndColor: TJppColorSwatchEx;
    spedSteps: TSpTBXSpinEdit;
    lblSteps: TLabel;
    btnAddToColorList: TJppPngButton;
    actAddToColorList: TAction;
    actClearColors: TAction;
    btnClearColors: TJppPngButton;
    pnTop: TJppSimplePanel;
    lblGradient: TLabel;
    Grad: TJPEsGradient;
    actSelectAll: TAction;
    actInvertSelection: TAction;
    actDeleteSelected: TAction;
    popColorList: TSpTBXPopupMenu;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem4: TSpTBXItem;
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actClearColorsExecute(Sender: TObject);
    procedure actAddToColorListExecute(Sender: TObject);
    procedure actDeleteSelectedExecute(Sender: TObject);
    procedure actInvertSelectionExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure cswEndColorBtnChangeColorClick(Sender: TObject);
    procedure cswStartColorBtnChangeColorClick(Sender: TObject);
    procedure cswStartColorSelectedColorChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    procedure UpdateGradient;
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
    procedure spedStepsValueChanged(Sender: TObject);
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure UpdateColorCountLabel;
  private
    bUpdatingControls: Boolean;
  end;

var
  FormGradientColors: TFormGradientColors;

implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;

{$R *.dfm}


{$region '                        Create & Close                               '}
procedure TFormGradientColors.FormCreate(Sender: TObject);
begin
  Caption := 'Gradient Colors';
  Constraints.MinHeight := 318;
  Constraints.MinWidth := Width;
  PrepareControls;
  PrepareModuleStrings_Gradient;
  LoadSettingsFromIni;
  SetLang;
  UpdateGradient;
  InitControls;
end;

procedure TFormGradientColors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;
{$endregion Create & Close}


{$region '                         PrepareControls                            '}
procedure TFormGradientColors.PrepareControls;
begin
  bUpdatingControls := True;
  try

    clbColors.Clear;
    clbColors.Align := alClient;
    lblColors.Align := alClient;
    pnMain.Align := alClient;
    btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
    btnAdd.Appearance.Assign(FormMain.btnT1.Appearance);
    btnAddToColorList.Appearance.Assign(FormMain.btnT1.Appearance);
    btnClearColors.Appearance.Assign(FormMain.btnT1.Appearance);

    spedSteps.SpinOptions.MinValue := JPEsGrad.MinColorBands;
    spedSteps.SpinOptions.MaxValue := JPEsGrad.MaxColorBands;

    cswStartColor.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
    cswStartColor.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));
    cswStartColor.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
    cswStartColor.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswStartColor.ButtonChangeColor.Appearance.ShowCaption := False;
    cswStartColor.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswStartColor.ButtonCopyColor.Appearance.ShowCaption := False;
    cswStartColor.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswStartColor.ButtonPasteColor.Appearance.ShowCaption := False;

    cswEndColor.ButtonCopyColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Copy'));
    cswEndColor.ButtonPasteColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Paste'));
    cswEndColor.ButtonChangeColor.PngImage.Assign(FormMain.PngCollection.GetPngImageByName('Colors'));
    cswEndColor.ButtonChangeColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswEndColor.ButtonChangeColor.Appearance.ShowCaption := False;
    cswEndColor.ButtonCopyColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswEndColor.ButtonCopyColor.Appearance.ShowCaption := False;
    cswEndColor.ButtonPasteColor.Appearance.Assign(FormMain.sbtnT1.Appearance);
    cswEndColor.ButtonPasteColor.Appearance.ShowCaption := False;

  finally
    bUpdatingControls := False;
  end;
end;
{$endregion PrepareControls}


{$region '                        InitControls                        '}
procedure TFormGradientColors.InitControls;
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

  UpdateColorCountLabel;
end;

procedure TFormGradientColors.InitCtrls(Sender: TObject);
begin
  InitControls;
end;

{$endregion InitControls}


{$region '                       SetLang                          '}
procedure TFormGradientColors.SetLang;
var
  x: integer;
begin
  Caption := lsGradient.GetString('Caption', Caption);
  cswStartColor.ButtonChangeColor.Hint := lsMain.GetString('ButtonChangeColor', 'Change color...');
  cswStartColor.ButtonCopyColor.Hint := lsMain.GetString('ButtonCopyColor', 'Copy color to the clipboard');
  cswStartColor.ButtonPasteColor.Hint := lsMain.GetString('ButtonPasteColor', 'Paste color from the clipboard');
  cswEndColor.ButtonChangeColor.Hint := cswStartColor.ButtonChangeColor.Hint;
  cswEndColor.ButtonCopyColor.Hint := cswStartColor.ButtonCopyColor.Hint;
  cswEndColor.ButtonPasteColor.Hint := cswStartColor.ButtonPasteColor.Hint;

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

  UpdateColorCountLabel;
end;
{$endregion SetLang}


{$region '                          INI: Load & Save settings                              '}

procedure TFormGradientColors.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_GRADIENT, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteColorSwatchColor(cswStartColor);
    TAppHelper.WriteColorSwatchColor(cswEndColor);
    TAppHelper.WriteSpinEditIntValue(spedSteps);
    TAppHelper.WriteComboBoxIndexName(cbAddPos, ['AtTop', 'AtEnd']);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormGradientColors.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;
  bUpdatingControls := True;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_GRADIENT, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadColorSwatchColor(cswStartColor);
    TAppHelper.ReadColorSwatchColor(cswEndColor);
    TAppHelper.ReadSpinEditIntValue(spedSteps);
    TAppHelper.ReadComboBoxIndexByName(cbAddPos, ['AtTop', 'AtEnd'], 0);

  finally
    Ini.Free;
    bUpdatingControls := False;
    TAppHelper.NilIniSection;
  end;
end;

{$endregion INI: Load & Save settings}


procedure TFormGradientColors.UpdateGradient;
begin
  Grad.FromColor := cswStartColor.SelectedColor;
  Grad.ToColor := cswEndColor.SelectedColor;
  Grad.ColorBands := spedSteps.IntValue;
end;

procedure TFormGradientColors.actAddExecute(Sender: TObject);
var
  bEnd: Boolean;
begin
  if clbColors.Count = 0 then Exit;
  bEnd := cbAddPos.ItemIndex = 1;
  FormMain.clbColors.AddColorsFromColorListBox(clbColors, bEnd);
  FormMain.UpdateColorPaletteCount;
  if bEnd then FormMain.clbColors.ScrollToLast else FormMain.clbColors.ScrollToFirst;
end;

procedure TFormGradientColors.actClearColorsExecute(Sender: TObject);
begin
  clbColors.Clear;
  InitControls;
end;

procedure TFormGradientColors.actAddToColorListExecute(Sender: TObject);
var
  i: integer;
  cl, clStart, clEnd: TColor;
  sName, sColorStart, sColorEnd: string;
begin
  clbColors.BeginUpdate;
  try

    clStart := Grad.gGradColors[0];
    clEnd := Grad.gGradColors[Grad.ColorBands - 1];
    sColorStart := ColorToRgbIntStr(clStart);
    sColorEnd := ColorToRgbIntStr(clEnd);

    for i := 0 to Grad.ColorBands - 1 do
    begin
      cl := Grad.gGradColors[i];
      sName := 'Color ' + Pad(itos(i + 1), 3, '0');
      sName := sName + ' - Gradient (' + sColorStart + ' - ' + sColorEnd + ')';
      clbColors.AddColor(cl, sName, GetSimilarColor2(AvgColor(clStart, clEnd), 70), GetSimilarColor(clEnd, 70, False));
    end;

  finally
    clbColors.ScrollToLast;
    clbColors.EndUpdate;
  end;

  InitControls;
end;

procedure TFormGradientColors.cswStartColorSelectedColorChanged(Sender: TObject);
begin
  UpdateGradient;
end;

procedure TFormGradientColors.spedStepsValueChanged(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  UpdateGradient;
end;

procedure TFormGradientColors.UpdateColorCountLabel;
begin
  lblColors.Caption := lsGradient.GetString('Colors', 'Colors') + ' (' + itos(clbColors.Count) + ')';
end;

procedure TFormGradientColors.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormGradientColors.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormGradientColors.cswEndColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := cswEndColor.SelectedColor;
  if not EditColor(cl) then Exit;
  cswEndColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormGradientColors.cswStartColorBtnChangeColorClick(Sender: TObject);
var
  cl: TColor;
begin
  cl := cswStartColor.SelectedColor;
  if not EditColor(cl) then Exit;
  cswStartColor.SelectedColor := cl;
  SwitchFormTop(Self);
end;

procedure TFormGradientColors.actSelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitControls;
end;

procedure TFormGradientColors.actInvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitControls;
end;

procedure TFormGradientColors.actDeleteSelectedExecute(Sender: TObject);
begin
  clbColors.RemoveSelectedItems;
  InitControls;
end;

end.
