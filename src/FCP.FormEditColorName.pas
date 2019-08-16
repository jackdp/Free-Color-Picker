unit FCP.FormEditColorName;

interface

uses
  Winapi.Windows, Winapi.Messages,

  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Actions,

  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ActnList,

  JPL.Strings, JPL.Colors,

  JPP.PngButton, JPP.Edit, JPP.SimplePanel, JPP.ColorSwatch,

  FCP.AppStrings;

type
  TFormEditColorName = class(TForm)
    pnBottom: TJppSimplePanel;
    btnCancel: TJppPngButton;
    btnOK: TJppPngButton;
    pnMain: TJppSimplePanel;
    Actions: TActionList;
    actEsc: TAction;
    cswColor: TJppColorSwatchEx;
    edColorName: TJppEdit;
    actOK: TAction;
    actF2: TAction;

    procedure SetColorName(const Value: string);
    function GetColorName: string;
    function GetColorSwatchColor: TColor;
    procedure SetColorSwatchColor(const Value: TColor);

    procedure actEscExecute(Sender: TObject);
    procedure actF2Execute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure cswColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrepareControls;
    procedure SetLang;

  public
    property ColorName: string read GetColorName write SetColorName;
    property ColorSwatchColor: TColor read GetColorSwatchColor write SetColorSwatchColor;
  end;

var
  FormEditColorName: TFormEditColorName;


implementation

uses
  FCP.FormMain;


{$R *.dfm}




procedure TFormEditColorName.FormCreate(Sender: TObject);
begin
  Caption := 'Edit color name';
  PrepareModuleStrings_ColorName;
  PrepareControls;
end;

procedure TFormEditColorName.PrepareControls;
begin
  pnMain.Appearance.BorderStyle := psClear;
  pnMain.Align := alClient;
  btnOK.Appearance.Assign(FormMain.btnT1.Appearance);
  btnCancel.Appearance.Assign(FormMain.btnT1.Appearance);
end;

procedure TFormEditColorName.SetLang;
begin
  Caption := lsColorName.GetString('Caption', Caption);
end;

procedure TFormEditColorName.SetColorName(const Value: string);
begin
  edColorName.Text := Value;
end;



procedure TFormEditColorName.actEscExecute(Sender: TObject);
begin
  btnCancel.Click;
end;

procedure TFormEditColorName.actF2Execute(Sender: TObject);
begin
  btnCancel.Click;
end;

procedure TFormEditColorName.actOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormEditColorName.cswColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, ' ', 2, 2);
end;

procedure TFormEditColorName.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then ModalResult := mrOk;
end;

function TFormEditColorName.GetColorName: string;
begin
  Result := edColorName.Text;
end;

procedure TFormEditColorName.SetColorSwatchColor(const Value: TColor);
begin
  cswColor.SelectedColor := Value;
end;

function TFormEditColorName.GetColorSwatchColor: TColor;
begin
  Result := cswColor.SelectedColor;
end;

end.
