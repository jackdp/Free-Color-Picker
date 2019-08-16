unit FCP.FormScreenCursor;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  JPP.Timer;


type

  TFormScreenCursor = class(TForm)
    tmAnim: TJppTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure tmAnimTimer(Sender: TObject);
    procedure SetPosForPixel(const PixelX, PixelY: integer);
    procedure ShowPixel;
  end;


var
  FormScreenCursor: TFormScreenCursor;


implementation

uses
  FCP.FormPixelColor;

{$R *.dfm}


procedure TFormScreenCursor.FormCreate(Sender: TObject);
begin
  Width := 80;
  Height := Width;
end;

procedure TFormScreenCursor.FormPaint(Sender: TObject);
var
  halfW, halfH: integer;
begin
  with Canvas do
  begin

    halfW := Width div 2;
    halfH := Height div 2;

    Brush.Style := bsSolid;
    Brush.Color := clLime;
    Pen.Color := clBlack;
    Pen.Style := psSolid;

    Rectangle(ClientRect);

    Pen.Style := psDot;
    MoveTo(halfW, 0);
    LineTo(halfW, Height);
    MoveTo(0, halfH);
    LineTo(Width, halfH);

  end;
end;

procedure TFormScreenCursor.SetPosForPixel(const PixelX, PixelY: integer);
begin
  Left := PixelX - (Width div 2);
  Top := PixelY - (Height div 2);
end;

procedure TFormScreenCursor.ShowPixel;
begin
  AlphaBlendValue := 220;
  tmAnim.Start;
end;

procedure TFormScreenCursor.tmAnimTimer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue - 15;
  if AlphaBlendValue < 20 then
  begin
    tmAnim.Stop;
    if Assigned(FormPixelColor) and FormPixelColor.Visible then
    begin
      FormPixelColor.tmUpdateColor.Start;
      FormPixelColor.Show;
    end;
    Close;
  end;
end;

end.
