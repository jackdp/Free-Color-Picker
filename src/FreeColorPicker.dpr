program FreeColorPicker;

{$IF CompilerVersion >= 21.0}
  {$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}

{$SetPEFlags 1} // IMAGE_FILE_RELOCS_STRIPPED
{$SetPeFlags $20} // IMAGE_FILE_LARGE_ADDRESS_AWARE


uses
  SysUtils,
  Vcl.Forms,
  FCP.FormMain in 'FCP.FormMain.pas',
  FCP.Types in 'FCP.Types.pas',
  FCP.Shared in 'FCP.Shared.pas',
  FCP.FormAbout in 'FCP.FormAbout.pas',
  FCP.FormPaletteEditor in 'FCP.FormPaletteEditor.pas',
  FCP.Bitmap in 'FCP.Bitmap.pas',
  FCP.AppStrings in 'FCP.AppStrings.pas',
  FCP.FormOptions in 'FCP.FormOptions.pas',
  FCP.ColorPalette in 'FCP.ColorPalette.pas',
  FCP.FormEditColor in 'FCP.FormEditColor.pas',
  FCP.FormAutoCapture in 'FCP.FormAutoCapture.pas',
  FCP.FormPixelColor in 'FCP.FormPixelColor.pas' {FormPixelColor},
  FCP.FormCheckUpdate in 'FCP.FormCheckUpdate.pas' {FormCheckUpdate},
  FCP.FormScreenCursor in 'FCP.FormScreenCursor.pas' {FormScreenCursor},
  FCP.FormSortBy in 'FCP.FormSortBy.pas' {FormSortBy},
  FCP.FormRandomColors in 'FCP.FormRandomColors.pas' {FormRandomColors},
  FCP.FormGradientColors in 'FCP.FormGradientColors.pas' {FormGradientColors},
  FCP.FormEditColorName in 'FCP.FormEditColorName.pas' {FormEditColorName},
  FCP.FormColorMixer in 'FCP.FormColorMixer.pas' {FormColorMixer},
  FCP.FormModifyPalette in 'FCP.FormModifyPalette.pas' {FormModifyPalette},
  FCP.FormColorWheel in 'FCP.FormColorWheel.pas' {FormColorWheel},
  FCP.FormSimilarColors in 'FCP.FormSimilarColors.pas' {FormSimilarColors},
  FCP.FormQuickAccess in 'FCP.FormQuickAccess.pas' {FormQuickAccess};

{$R *.res}

begin

  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.CreateForm(TFormPaletteEditor, FormPaletteEditor);
  Application.CreateForm(TFormEditColor, FormEditColor);
  Application.CreateForm(TFormOptions, FormOptions);
  Application.CreateForm(TFormAutoCapture, FormAutoCapture);
  Application.CreateForm(TFormPixelColor, FormPixelColor);
  Application.CreateForm(TFormCheckUpdate, FormCheckUpdate);
  Application.CreateForm(TFormScreenCursor, FormScreenCursor);
  Application.CreateForm(TFormSortBy, FormSortBy);
  Application.CreateForm(TFormRandomColors, FormRandomColors);
  Application.CreateForm(TFormGradientColors, FormGradientColors);
  Application.CreateForm(TFormEditColorName, FormEditColorName);
  Application.CreateForm(TFormColorMixer, FormColorMixer);
  Application.CreateForm(TFormModifyPalette, FormModifyPalette);
  Application.CreateForm(TFormColorWheel, FormColorWheel);
  Application.CreateForm(TFormSimilarColors, FormSimilarColors);
  Application.CreateForm(TFormQuickAccess, FormQuickAccess);
  //////////////////////////////////////// LANGUAGE /////////////////////////////////////////
  if Assigned(LangMgr) and (FileExists(AP.LanguageIni)) then LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni);
  FormMain.SetLang;
  FormOptions.SetLang;
  FormPaletteEditor.SetLang;
  FormAbout.SetLang;
  FormEditColor.SetLang;
  FormAutoCapture.SetLang;
  FormPixelColor.SetLang;
  FormCheckUpdate.SetLang;
  FormSortBy.SetLang;
  FormRandomColors.SetLang;
  FormGradientColors.SetLang;
  FormEditColorName.SetLang;
  FormColorMixer.SetLang;
  FormModifyPalette.SetLang;
  FormColorWheel.SetLang;
  FormSimilarColors.SetLang;
  FormQuickAccess.SetLang;
  ///////////////////////////////////////////////////////////////////////////////////////////

  Application.Run;
end.
