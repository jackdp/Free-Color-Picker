unit FCP.FormSortBy;

interface

uses
  Winapi.Windows, Winapi.Messages,

  System.SysUtils, System.Variants, System.Classes, System.Actions,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,

  JPL.Colors.List, JPL.IniFile,

  JPP.SimplePanel, JPP.PngButton,

  FCP.Types, FCP.Shared, FCP.AppStrings;

type
  TFormSortBy = class(TForm)
    pnBottom: TJppSimplePanel;
    Actions: TActionList;
    actEsc: TAction;
    actClose: TAction;
    actSort: TAction;
    btnSort: TJppPngButton;
    btnClose: TJppPngButton;
    pnSortBy: TJppSimplePanel;
    rbColorName: TRadioButton;
    rbColorNo: TRadioButton;
    rbColorValue: TRadioButton;
    lblSortBy: TLabel;
    rbRgbRed: TRadioButton;
    rbRgbGreen: TRadioButton;
    rbRgbBlue: TRadioButton;
    rbCmykCyan: TRadioButton;
    rbCmykMagenta: TRadioButton;
    rbCmykYellow: TRadioButton;
    rbCmykBlack: TRadioButton;
    rbHslHue: TRadioButton;
    rbHslSat: TRadioButton;
    rbRgbSum: TRadioButton;
    rbHslLum: TRadioButton;
    pnSortDirection: TJppSimplePanel;
    lblSortDirection: TLabel;
    rbAscending: TRadioButton;
    rbDescending: TRadioButton;
    procedure actCloseExecute(Sender: TObject);
    procedure actEscExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    function SortingMode: TColorListSortMode;
    function Ascending: Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetSortParams(var sm: TColorListSortMode; var bAscending: Boolean);
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;
  end;

var
  FormSortBy: TFormSortBy;

implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor;

{$R *.dfm}




procedure TFormSortBy.FormCreate(Sender: TObject);
begin
  Caption := 'Sort color palette';
  PrepareModuleStrings_Sort;
  PrepareControls;
  LoadSettingsFromIni;
  SetLang;
end;

procedure TFormSortBy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettingsToIni;
end;

procedure TFormSortBy.PrepareControls;
begin
  pnSortDirection.Align := alClient;
  btnSort.Appearance.Assign(FormMain.btnT1.Appearance);
  btnClose.Appearance.Assign(FormMain.btnT1.Appearance);
end;

procedure TFormSortBy.SetLang;
begin
  Caption := lsSort.GetString('Caption', Caption);
end;

function TFormSortBy.SortingMode: TColorListSortMode;
begin
  if rbColorName.Checked then Result := clsmColorName
  else if rbColorNo.Checked then Result := clsmNumber
  else if rbColorValue.Checked then Result := clsmColorValue
  else if rbRgbRed.Checked then Result := clsmRed
  else if rbRgbGreen.Checked then Result := clsmGreen
  else if rbRgbBlue.Checked then Result := clsmBlue
  else if rbCmykCyan.Checked then Result := clsmCmykCyan
  else if rbCmykMagenta.Checked then Result := clsmCmykMagenta
  else if rbCmykYellow.Checked then Result := clsmCmykYellow
  else if rbCmykBlack.Checked then Result := clsmCmykBlack
  else if rbHslHue.Checked then Result := clsmHslHue
  else if rbHslSat.Checked then Result := clsmHslSat
  else if rbHslLum.Checked then Result := clsmHslLum
  else Result := clsmRed;
end;

procedure TFormSortBy.GetSortParams(var sm: TColorListSortMode; var bAscending: Boolean);
begin
  sm := SortingMode;
  bAscending := Ascending;
end;



{$region '                         INI: Load & Save settings                        '}

procedure TFormSortBy.SaveSettingsToIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try
    Section := Ini.GetSection(INI_SECTION_SORT, True);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.WriteRadioButtonGroup('SortingMode',
    [
      rbRgbRed, rbRgbGreen, rbRgbBlue, rbRgbSum,
      rbColorName, rbColorNo, rbColorValue,
      rbCmykCyan, rbCmykMagenta, rbCmykYellow, rbCmykBlack,
      rbHslHue, rbHslSat, rbHslLum
    ]);

    TAppHelper.WriteRadioButtonGroup('SortDirection', [rbAscending, rbDescending]);

    Ini.UpdateFile;

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

procedure TFormSortBy.LoadSettingsFromIni;
var
  Ini: TJPIniFile;
  Section: TJPIniSection;
begin
  if not FileExists(AP.IniFile) then Exit;
  Ini := TJPIniFile.Create(AP.IniFile, TEncoding.UTF8, True);
  try

    Section := Ini.GetSection(INI_SECTION_SORT, False);
    TAppHelper.IniSection := Section;
    if Section = nil then Exit;

    TAppHelper.ReadRadioButtonGroup('SortDirection', [rbAscending, rbDescending], rbAscending);
    TAppHelper.ReadRadioButtonGroup('SortingMode',
    [
      rbRgbRed, rbRgbGreen, rbRgbBlue, rbRgbSum,
      rbColorName, rbColorNo, rbColorValue,
      rbCmykCyan, rbCmykMagenta, rbCmykYellow, rbCmykBlack,
      rbHslHue, rbHslSat, rbHslLum
    ], rbColorNo);

  finally
    Ini.Free;
    TAppHelper.NilIniSection;
  end;
end;

{$endregion INI: Load & Save settings}


procedure TFormSortBy.actEscExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSortBy.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSortBy.actSortExecute(Sender: TObject);
begin
  FormPaletteEditor.SortBy(SortingMode, Ascending);
end;

function TFormSortBy.Ascending: Boolean;
begin
  Result := rbAscending.Checked;
end;



end.
