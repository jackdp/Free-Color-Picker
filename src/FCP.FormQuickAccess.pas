unit FCP.FormQuickAccess;

interface

uses
  Winapi.Windows, Winapi.Messages,

  System.SysUtils, System.Variants, System.Classes, System.Actions,

  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ActnList,

  JPP.PngButton, JPP.SimplePanel,

  FCP.Types, FCP.Shared, FCP.AppStrings;

type
  TFormQuickAccess = class(TForm)
    pnBottom: TJppSimplePanel;
    btnCancel: TJppPngButton;
    btnOK: TJppPngButton;
    Actions: TActionList;
    actOK: TAction;
    actCancel: TAction;
    me: TMemo;
    btnSort: TJppPngButton;
    actSort: TAction;
    procedure actCancelExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetLang;
    procedure PrepareControls;
    procedure InitControls;
    procedure meChange(Sender: TObject);
  end;

var
  FormQuickAccess: TFormQuickAccess;

implementation

uses
  FCP.FormMain;

{$R *.dfm}



procedure TFormQuickAccess.FormCreate(Sender: TObject);
begin
  Caption := 'Recently opened files';
  Constraints.MinWidth := Width;
  Constraints.MinHeight := Height;
  PrepareModuleStrings_RecentlyOpened;
  PrepareControls;
  InitControls;
end;

procedure TFormQuickAccess.InitControls;
var
  xCount: integer;
begin
  xCount := me.Lines.Count;
  actSort.Enabled := (xCount > 0) and (Trim(me.Text) <> '');
end;

procedure TFormQuickAccess.PrepareControls;
begin
  btnOK.Appearance.Assign(FormMain.btnT1.Appearance);
  btnCancel.Appearance.Assign(FormMain.btnT1.Appearance);
  btnSort.Appearance.Assign(FormMain.btnT1.Appearance);
  me.Align := alClient;
  me.Lines.Clear;
  ApplyFontParams(me.Font, AP.MonospaceFont);
end;

procedure TFormQuickAccess.SetLang;
begin
  Caption := lsRecent.GetString('Caption', Caption);
end;

procedure TFormQuickAccess.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormQuickAccess.actOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormQuickAccess.actSortExecute(Sender: TObject);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Text := me.Text;
    sl.Sort;
    me.Text := sl.Text;
  finally
    sl.Free;
  end;
end;

procedure TFormQuickAccess.meChange(Sender: TObject);
begin
  InitControls;
end;

end.
