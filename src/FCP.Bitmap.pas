unit FCP.Bitmap;

interface

uses
  Classes, SysUtils, Graphics,
  JPL.Math,
  GR32, GR32_Resamplers, GR32_Filters;

type
  // Spline - dobry przy powiększaniu
  // Mitchell - dobry przy zmniejszaniu
  // Lanczos - chyba najlepszy, ale też najwolniejszy
  TResamplerType = (rtBox, rtLinear, rtCubic, rtMitchell, rtSpline, rtLanczos);


// Oblicza wysokość obrazka dla podanej szerokości (NewWidth) z zachowaniem proporcji
procedure GetImageSize_FitToWidth(const OldWidth, OldHeight, NewWidth: integer; out NewHeight: integer);

// Procedura oblicza szerokość obrazka dla podanej wysokości (NewHeight) z zachowaniem proporcji
procedure GetImageSize_FitToHeight(const OldWidth, OldHeight: integer; out NewWidth: integer; NewHeight: integer);

procedure GetImageSize_Percent(Percent: Single; const OldWidth, OldHeight: integer; var NewWidth, NewHeight: integer);
procedure GetImageSize_FitToWidthAndHeight(const DestWidth, DestHeight, ImgWidth, ImgHeight: integer; out OutWidth, OutHeight: integer);


procedure BitmapResize(Bmp: TBitmap; const NewWidth, NewHeight: integer; ResamplerType: TResamplerType = rtLanczos);

procedure Bitmap32Resize(Src, Dst: TBitmap32; ResamplerType: TResamplerType = rtLanczos); overload;
procedure Bitmap32Resize(Bmp32: TBitmap32; const NewWidth, NewHeight: integer; ResamplerType: TResamplerType = rtLanczos); overload;
function GetBitmap32KernelInstance(rt: TResamplerType): GR32_Resamplers.TCustomKernel;




implementation



{$region '                   GetImageSize x 4                      '}
procedure GetImageSize_FitToWidthAndHeight(const DestWidth, DestHeight, ImgWidth, ImgHeight: integer; out OutWidth, OutHeight: integer);
begin
  // bez skalowania
  if (ImgWidth <= DestWidth) and (ImgHeight <= DestHeight) then
  begin
    OutWidth := ImgWidth;
    OutHeight := ImgHeight;
  end
  else if (DestWidth / DestHeight) <= (ImgWidth / ImgHeight) then
  begin
    OutWidth := DestWidth;
    GetImageSize_FitToWidth(ImgWidth, ImgHeight, DestWidth, OutHeight);
  end
  else
  begin
    OutHeight := DestHeight;
    GetImageSize_FitToHeight(ImgWidth, ImgHeight, OutWidth, DestHeight);
  end;
  if OutWidth <= 0 then OutWidth := 1;
  if OutHeight <= 0 then OutHeight := 1;
end;

procedure GetImageSize_FitToWidth(const OldWidth, OldHeight, NewWidth: integer; out NewHeight: integer);
var
  xp: Single;
begin
  xp := PercentValue(NewWidth, OldWidth);
  NewHeight := Abs(Round(OldHeight * xp / 100));
  if NewHeight <= 0 then NewHeight := 1;
end;

procedure GetImageSize_FitToHeight(const OldWidth, OldHeight: integer; out NewWidth: integer; NewHeight: integer);
var
  xp: Single;
begin
  xp := PercentValue(NewHeight, OldHeight);
  NewWidth := Abs(Round(OldWidth * xp / 100));
  if NewWidth <= 0 then NewWidth := 1;
end;

procedure GetImageSize_Percent(Percent: Single; const OldWidth, OldHeight: integer; var NewWidth, NewHeight: integer);
var
  xp: Single;
begin
  if Percent < 0 then Percent := Percent * (-1);
  xp := Percent / 100;
  NewWidth := Round(OldWidth * xp);
  NewHeight := Round(OldHeight * xp);
end;
{$endregion GetImageSize x 4}



procedure BitmapResize(Bmp: TBitmap; const NewWidth, NewHeight: integer; ResamplerType: TResamplerType = rtLanczos);
var
  S32: TBitmap32;
begin
  S32 := TBitmap32.Create;
  try
    S32.SetSize(Bmp.Width, Bmp.Height);
    S32.Assign(Bmp);
    Bitmap32Resize(S32, NewWidth, NewHeight, ResamplerType);
    //Konieczne ponowne utworzenie bitmapy!
    Bmp.Free;
    Bmp := TBitmap.Create;
    //Bmp.PixelFormat := pf32bit;
    Bmp.SetSize(S32.Width, S32.Height);
    Bmp.Assign(S32);
  finally
    S32.Free;
  end;
end;

procedure Bitmap32Resize(Src, Dst: TBitmap32; ResamplerType: TResamplerType = rtLanczos); overload;
var
  R: TKernelResampler;
begin
  R := TKernelResampler.Create(Src);
  R.Kernel := GetBitmap32KernelInstance(ResamplerType);
  Dst.Draw(Dst.BoundsRect, Src.BoundsRect, Src);
end;

procedure Bitmap32Resize(Bmp32: TBitmap32; const NewWidth, NewHeight: integer; ResamplerType: TResamplerType = rtLanczos); overload;
var
  TempBmp: TBitmap32;
  ms: TMemoryStream;
begin
  TempBmp := TBitmap32.Create;
  ms := TMemoryStream.Create;
  try
    Bmp32.SaveToStream(ms);
    ms.Position := 0;
    TempBmp.SetSize(Bmp32.Width, Bmp32.Height);
    TempBmp.LoadFromStream(ms);
    Bmp32.SetSize(NewWidth, NewHeight);
    Bitmap32Resize(TempBmp, Bmp32, ResamplerType);
  finally
    TempBmp.Free;
    ms.Free;
  end;
end;

//TResamplerType = (rtBox, rtLinear, rtCubic, rtMitchell, rtSpline, rtLanczos);
function GetBitmap32KernelInstance(rt: TResamplerType): GR32_Resamplers.TCustomKernel;
begin
  case rt of
    rtLanczos: Result := GR32_Resamplers.TLanczosKernel.Create;
    rtBox: Result := GR32_Resamplers.TBoxKernel.Create;
    rtLinear: Result := GR32_Resamplers.TLinearKernel.Create;
    rtCubic: Result := GR32_Resamplers.TCubicKernel.Create;
    rtMitchell: Result := GR32_Resamplers.TMitchellKernel.Create;
    rtSpline: Result := GR32_Resamplers.TSplineKernel.Create;
  else
    Result := GR32_Resamplers.TLanczosKernel.Create;
  end;
end;



end.

