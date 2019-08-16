unit FCP.AppStrings;

interface

uses
  Winapi.Windows,
  System.SysUtils, System.Classes, System.IniFiles, System.Generics.Collections,
  Vcl.Menus,
  JPL.Strings, JPL.Conversion, JPL.LangMgr,
  FCP.Types;


const
  LANG_INI_SECTION_MAIN = 'MAIN';
  LANG_INI_SECTION_PALETTE_EDITOR = 'PaletteEditor';
  LANG_INI_SECTION_OPTIONS = 'Options';
  LANG_INI_SECTION_ABOUT = 'About';
  LANG_INI_SECTION_COLOR_EDITOR = 'ColorEditor';
  LANG_INI_SECTION_AUTO_CAPTURE = 'AutoCapture';
  LANG_INI_SECTION_PIXEL_COLOR = 'PixelColor';
  LANG_INI_SECTION_CHECK_UPDATE = 'CheckUpdate';
  LANG_INI_SECTION_RANDOM_COLORS = 'RandomColors';
  LANG_INI_SECTION_SORT = 'Sort';
  LANG_INI_SECTION_GRADIENT = 'Gradient';
  LANG_INI_SECTION_COLOR_NAME = 'EditColorName';
  LANG_INI_SECTION_MIXER = 'ColorMixer';
  LANG_INI_SECTION_MODIFY_PALETTE = 'ModifyPalette';
  LANG_INI_SECTION_COLOR_WHEEL = 'ColorWheel';
  LANG_INI_SECTION_SIMILAR_COLORS = 'SimilarColors';
  LANG_INI_SECTION_RECENTLY_OPENED = 'RecentlyOpened';


procedure InitLangMgr;
procedure PrepareModuleStrings_Main;
procedure PrepareModuleStrings_Options;
procedure PrepareModuleStrings_PaletteEditor;
procedure PrepareModuleStrings_About;
procedure PrepareModuleStrings_AutoCapture;
procedure PrepareModuleStrings_ColorEditor;
procedure PrepareModuleStrings_PixelColor;
procedure PrepareModuleStrings_CheckUpdate;
procedure PrepareModuleStrings_RandomColors;
procedure PrepareModuleStrings_Sort;
procedure PrepareModuleStrings_Gradient;
procedure PrepareModuleStrings_ColorName;
procedure PrepareModuleStrings_ColorMixer;
procedure PrepareModuleStrings_ModifyPalette;
procedure PrepareModuleStrings_ColorWheel;
procedure PrepareModuleStrings_SimilarColors;
procedure PrepareModuleStrings_RecentlyOpened;

var
  LangMgr: TLangMgr;
  lsMain: TLangSection;
  lsOptions: TLangSection;
  lsAbout: TLangSection;
  lsEditor: TLangSection;
  lsColorEditor: TLangSection;
  lsAutoCapture: TLangSection;
  lsPixelColor: TLangSection;
  lsCheckUpdate: TLangSection;
  lsRandom: TLangSection;
  lsSort: TLangSection;
  lsGradient: TLangSection;
  lsColorName: TLangSection;
  lsMixer: TLangSection;
  lsMod: TLangSection;
  lsWheel: TLangSection;
  lsSimilar: TLangSection;
  lsRecent: TLangSection;


implementation

uses
  FCP.FormMain, FCP.FormPaletteEditor, FCP.FormAbout, FCP.FormOptions, FCP.FormEditColor, FCP.FormAutoCapture, FCP.FormPixelColor, FCP.FormCheckUpdate,
  FCP.FormRandomColors, FCP.FormSortBy, FCP.FormGradientColors, FCP.FormEditColorName, FCP.FormColorMixer, FCP.FormModifyPalette, FCP.FormColorWheel,
  FCP.FormSimilarColors, FCP.FormQuickAccess;


procedure InitLangMgr;
begin
  if not Assigned(LangMgr) then LangMgr := TLangMgr.Create;
  LangMgr.AddFilesFromDir(AP.LangDir);
end;


{$region '                              PrepareModuleStrings_Main                                  '}
procedure PrepareModuleStrings_Main;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsMain := LangMgr.AddSection(LANG_INI_SECTION_MAIN);

  with FormMain do
  begin
    lsMain.AddString('ErrCannotLoadPalette', 'Cannot load color palette from file "%s"');
    lsMain.AddString('ColorUnderCursor', 'Color under cursor');
    lsMain.AddString('LastCapturedColor', 'Last captured color:');

    lsMain.ac(mnuFile).ap('Caption', 'File');
    lsMain.ac(mnuZoom).ap('Caption', 'Zoom');
    lsMain.ac(mnuHelp).ap('Caption', 'Help');
    lsMain.ac(mnuPalette).ap('Caption', 'Color palette');

    lsMain.AddAction(actCaptureColor);
    lsMain.AddAction(actStartCapturing);
    lsMain.ac(btnStartCapturing).ap('Caption', 'Start');
    lsMain.AddAction(actStopCapturing);
    lsMain.ac(btnStopCapturing).ap('Caption', 'Stop');
    lsMain.AddAction(actOpenImage);
    lsMain.ac(sbtnOpenImage).ap('Caption', sbtnOpenImage.Caption);
    lsMain.AddAction(actCloseImage);
    lsMain.AddAction(actSwitchOnTop);
    lsMain.AddAction(actExitApplication);

    lsMain.AddAction(actCollapse);
    lsMain.AddAction(actShowFormAutoCapture);

    lsMain.AddAction(actZoom_1);
    lsMain.AddAction(actZoom_2);
    lsMain.AddAction(actZoom_4);
    lsMain.AddAction(actZoom_6);
    lsMain.AddAction(actZoom_8);
    lsMain.AddAction(actZoom_10);
    lsMain.AddAction(actZoom_14);
    lsMain.AddAction(actZoom_18);
    lsMain.AddAction(actZoom_22);
    lsMain.AddAction(actZoom_26);
    lsMain.AddAction(actZoom_30);

    lsMain.AddAction(actAbout);

    lsMain.AddAction(actCopyColor_HTML);
    lsMain.AddAction(actCopyColor_RGB);
    lsMain.AddAction(actCopyColor_RGB_Percent);
    lsMain.AddAction(actCopyColor_HSL_CSS);
    lsMain.AddAction(actCopyColor_HSL_WIN);
    lsMain.AddAction(actCopyColor_CMYK);
    lsMain.AddAction(actCopyColor_PascalHEX);
    lsMain.AddAction(actCopyColor_PascalINT);
    lsMain.AddAction(actCopyColor_CppHex);

    lsMain.AddAction(actCopySelectedColors_RGB);
    lsMain.AddAction(actCopySelectedColors_HTML);
    lsMain.AddAction(actCopySelectedColors_RGB_Percent);
    lsMain.AddAction(actCopySelectedColors_HSL_CSS);
    lsMain.AddAction(actCopySelectedColors_HSL_WIN);
    lsMain.AddAction(actCopySelectedColors_CMYK);
    lsMain.AddAction(actCopySelectedColors_PascalHEX);
    lsMain.AddAction(actCopySelectedColors_PascalINT);
    lsMain.AddAction(actCopySelectedColors_CppHex);

    lsMain.AddAction(actEditPalette);
    lsMain.ac(btnEditPalette).ap('Caption', btnEditPalette.Caption);


    lsMain.AddCheckBox(chCreatePreview);

    lsMain.ac(cbResampler).ap('Hint', cbResampler.Hint);
    lsMain.AddLabel(lblColorPalette);
    lsMain.AddLabel(lblCaptureCopyColorInfo);
    lsMain.ac(pnCaptureColorInfo).ap('Hint', pnCaptureColorInfo.Hint);

    lsMain.AddAction(actSwitchToImageMode);
    lsMain.AddAction(actSwitchToPreviewMode);
    lsMain.ac(pnCursorPosition).ap('Hint', 'Cursor position');

    lsMain.AddAction(actOpenColorPalette);
    lsMain.AddAction(actSaveColorPalette);
    lsMain.AddString('ClearPaletteQuery', 'Are you sure you want to clear the color palette?');
    lsMain.AddAction(actClearPalette);

    lsMain.AddAction(actSavePreviewImage);
    lsMain.AddLabel(lblImageRect, False, True);
    lsMain.AddAction(actGoTo_HomePage);
    lsMain.AddAction(actGoTo_Github);
    lsMain.AddAction(actGoTo_Donation);
    lsMain.AddAction(actExportPaletteToHtml);
    lsMain.AddAction(actExportPaletteToGPL);
    lsMain.AddAction(actOptions);
    lsMain.AddAction(actEditColor);
    lsMain.AddAction(actRestoreMainWindow);
    lsMain.AddAction(actMinimizeToTray);
    lsMain.AddAction(actHelp);

    lsMain.AddAction(actPalette_SelectAll);
    lsMain.AddAction(actPalette_InvertSelection);
    lsMain.AddAction(actPalette_RemoveSelected);
    lsMain.AddAction(actPalette_UnselectAll);
    lsMain.AddAction(actShowFormPixelColor);
    lsMain.AddAction(actMini_HeightMinus);
    lsMain.AddAction(actMini_HeightPlus);
    lsMain.AddAction(actCheckUpdate);

    lsMain.AddAction(actShowFormRandomColors);
    lsMain.AddAction(actShowFormGradientColors);
    lsMain.AddAction(actEditColorName);
    lsMain.AddAction(actShowFormColorMixer);
    lsMain.AddAction(actShowFormColorWheel);
    lsMain.AddAction(actShowFormSimilarColors);

    lsMain.AddString('EditQuickAccessList', 'Edit list of recently opened files...');

    // ----------- COMMON ---------------
    lsMain.AddString('lblAddPos', 'Add to the color palette:');
    lsMain.AddString('AddPos_Top', 'At the top');
    lsMain.AddString('AddPos_End', 'At the end');
    lsMain.AddString('ButtonChangeColor', 'Change color...');
    lsMain.AddString('ButtonCopyColor', 'Copy color to the clipboard');
    lsMain.AddString('ButtonPasteColor', 'Paste color from the clipboard');
    lsMain.AddString('RGB_Red', 'Red');
    lsMain.AddString('RGB_Green', 'Green');
    lsMain.AddString('RGB_Blue', 'Blue');
  end;

end;
{$endregion PrepareModuleStrings_Main}


{$region '                          PrepareModuleStrings_Options                               '}
procedure PrepareModuleStrings_Options;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsOptions := LangMgr.AddSection(LANG_INI_SECTION_OPTIONS);

  with FormOptions do
  begin

    lsOptions.AddString('Caption', 'Options');
    lsOptions.AddLabel(lblLanguage);
    lsOptions.AddAction(actClose);
    lsOptions.ac(chCopyColor_Capture).ap('Caption', chCopyColor_Capture.Caption);
    lsOptions.AddLabel(lblCopyColor);
    lsOptions.AddLabel(lblCopyColorFormat);
    lsOptions.AddLabel(lblColorPalette);
    lsOptions.AddLabel(lblColorPalette_ColorFormat);
    //lsOptions.ac(chColorPalette_ShowNames).ap('Caption', chColorPalette_ShowNames.Caption);
    lsOptions.AddCheckBox(chColorPalette_ShowNames);
    lsOptions.AddCheckBox(chShowBottomPanel);
    lsOptions.AddCheckBox(chShowColorCodesPanel);
    lsOptions.AddCheckBox(chShowRgbGraph);
    lsOptions.AddRadioButton(rbColorPalette_None);
    lsOptions.AddLabel(lblColorRectangle);
    lsOptions.AddLabeledEdit(edColorRectangle_Width);
    lsOptions.AddCheckBox(chColorRectangle_DrawBorder);
    lsOptions.AddCheckBox(chColorRectangle_Connected);
    lsOptions.AddLabeledEdit(edColorPalette_RowHeight);
    lsOptions.ac(ccbColorPalette_BgColor).ap('BoundLabel.Caption', ccbColorPalette_BgColor.BoundLabel.Caption);
    lsOptions.ac(ccbColorPalette_FontColor).ap('BoundLabel.Caption', ccbColorPalette_FontColor.BoundLabel.Caption);
    lsOptions.AddCheckBox(chColorPalette_ShowToolbar);
    lsOptions.AddLabel(lblCapturingInterval);
    lsOptions.AddCheckBox(chAskForName);
    lsOptions.AddLabel(lblAddColorsPosition);
    lsOptions.AddString('AddPos_Top', 'At the top of the color palette');
    lsOptions.AddString('AddPos_End', 'At the end of the color palette');

  end;
end;
{$endregion PrepareModuleStrings_Options}


{$region '                           PrepareModuleStrings_AutoCapture                              '}
procedure PrepareModuleStrings_AutoCapture;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsAutoCapture := LangMgr.AddSection(LANG_INI_SECTION_AUTO_CAPTURE);

  with FormAutoCapture do
  begin
    lsAutoCapture.AddString('Caption', 'Auto Capture');
    lsAutoCapture.AddLabel(lblCapturingInterval);
    lsAutoCapture.ac(spedCapturingInterval).ap('Hint', ''); //The time interval between captures color / The time interval between successive color interceptions
    lsAutoCapture.AddLabel(lblColors);
    lsAutoCapture.AddLabel(lblMilliseconds);
    lsAutoCapture.AddCheckBox(chColorLimit);
    lsAutoCapture.AddCheckBox(chAllowDuplicates);
    lsAutoCapture.AddAction(actStartCapturing);
    lsAutoCapture.AddAction(actStopCapturing);
    lsAutoCapture.AddAction(actAdd);
    lsAutoCapture.AddAction(actClose);
    lsAutoCapture.AddAction(actClearColors);
  end;
end;
{$endregion PrepareModuleStrings_AutoCapture}


{$region '                                PrepareModuleStrings_PixelColor                                '}
procedure PrepareModuleStrings_PixelColor;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsPixelColor := LangMgr.AddSection(LANG_INI_SECTION_PIXEL_COLOR);

  with FormPixelColor do
  begin
    lsPixelColor.AddString('Caption', 'Edit Color');
    lsPixelColor.AddString('ErrInvalidPixelCoordinates', 'Invalid pixel coordinates!');
    lsPixelColor.AddLabel(lblCoordinates);
    lsPixelColor.AddAction(actAddToList);

    lsPixelColor.AddLabel(lblColors);
    lsPixelColor.AddAction(actAdd);
    lsPixelColor.AddAction(actClose);
    lsPixelColor.AddAction(actClearColors);
    lsPixelColor.AddAction(actShowPixelPos);

  end;
end;
{$endregion PrepareModuleStrings_PixelColor}


{$region '                             PrepareModuleStrings_CheckUpdate                                '}
procedure PrepareModuleStrings_CheckUpdate;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsCheckUpdate := LangMgr.AddSection(LANG_INI_SECTION_CHECK_UPDATE);

  with FormCheckUpdate do
  begin

    lsCheckUpdate.AddString('Caption', 'Check for updates');
    lsCheckUpdate.AddLabel(lblUserVersionDesc);
    lsCheckUpdate.AddLabel(lblLatestVersionDesc);
    lsCheckUpdate.AddAction(actClose);
    lsCheckUpdate.AddAction(actCheckNow);
    lsCheckUpdate.AddAction(actGoToDownloadPage);

    lsCheckUpdate.AddString('NoUpdates', 'No updates available.\nYou have the latest version.');
    lsCheckUpdate.AddString('UpdatesAvailable', 'A new version is available.');
    lsCheckUpdate.AddString('CheckingUpdates', 'Checking available updates.\nPlease wait...');
    lsCheckUpdate.AddString('ConnectionFailed', 'Can not connect to the server.\nPlease try again in a few minutes.');
    lsCheckUpdate.AddString('CannotCheck', 'Unable to retrieve version information.\nPlease try again in a few minutes.');

  end;
end;
{$endregion PrepareModuleStrings_CheckUpdate}


{$region '                            PrepareModuleStrings_ColorEditor                               '}
procedure PrepareModuleStrings_ColorEditor;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsColorEditor := LangMgr.AddSection(LANG_INI_SECTION_COLOR_EDITOR);

  with FormEditColor do
  begin
    lsColorEditor.AddString('Caption', 'Edit Color');
    lsColorEditor.AddAction(actOk);
    lsColorEditor.AddAction(actClose);
    lsColorEditor.AddAction(actShowSystemColorDialog);
    lsColorEditor.AddLabel(lblSelectedColor);
    lsColorEditor.AddLabel(lblRgb);
    lsColorEditor.AddLabel(lblRgbRed);
    lsColorEditor.AddLabel(lblRgbGreen);
    lsColorEditor.AddLabel(lblRgbBlue);
    lsColorEditor.AddLabel(lblHsl);
    lsColorEditor.AddLabel(lblHslHue);
    lsColorEditor.AddLabel(lblHslSat);
    lsColorEditor.AddLabel(lblHslLum);
  end;
end;
{$endregion PrepareModuleStrings_ColorEditor}


{$region '                            PrepareModuleStrings_PaletteEditor                               '}
procedure PrepareModuleStrings_PaletteEditor;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsEditor := LangMgr.AddSection(LANG_INI_SECTION_PALETTE_EDITOR);

  with FormPaletteEditor do
  begin

    lsEditor.AddString('Caption', 'Edit Color Palette');

    lsEditor.AddString('colNo', 'No');
    lsEditor.AddString('colColor', 'Color');
    lsEditor.AddString('colName', 'Name');
    lsEditor.AddString('colRgb', 'RGB');
    lsEditor.AddString('colRgbPercent', 'RGB %');
    lsEditor.AddString('colHtml', 'HTML');
    lsEditor.AddString('colHslCss', 'HSL CSS');
    lsEditor.AddString('colHslWin', 'HSL WIN');
    lsEditor.AddString('colCmyk', 'CMYK');
    lsEditor.AddString('colPascalHex', 'Pascal HEX');
    lsEditor.AddString('colPascalInt', 'Pascal INT');
    lsEditor.AddString('colCppHex', 'C++ HEX');

    lsEditor.AddLabel(lblSelectedColor);

    lsEditor.ac(ccbColor).ap('BoundLabel.Caption', 'Color:').ap('ButtonCopyColor.Hint', 'Copy color').ap('ButtonPasteColor.Hint', 'Paste color')
      .ap('ButtonChangeColor.Hint', 'Change color...');
    lsEditor.ac(edColorName).ap('EditLabel.Caption', 'Color name:');

    lsEditor.AddAction(actSaveAndClose);
    lsEditor.AddAction(actSaveSelectedColor);
    lsEditor.AddAction(actCancel);
    lsEditor.AddAction(actOpenPaletteFile);
    lsEditor.AddAction(actOpenAdd);
    lsEditor.AddAction(actSavePaletteToFile);
    lsEditor.AddAction(actSelectAll);
    lsEditor.AddAction(actInvertSelection);
    lsEditor.AddAction(actDeleteSelected);
    lsEditor.AddAction(actAddColorAtEnd);
    lsEditor.AddAction(actAddColorAtTop);

    lsEditor.ac(dlblNo).ap('Caption', 'No:');

    //vst.Header.Columns[0].Text :=
    lsEditor.AddAction(actExportPaletteToHtml);
    lsEditor.AddAction(actExportPaletteToGPL);

    lsEditor.AddAction(actAdvancedColorEditor);
    lsEditor.AddAction(actShowFormSortBy);
    lsEditor.AddAction(actRenumber);

    lsEditor.AddAction(actMoveUp);
    lsEditor.AddAction(actMoveDown);
    lsEditor.AddAction(actMoveToTop);
    lsEditor.AddAction(actMoveToEnd);

    lsEditor.AddAction(actClearColorNames);
    lsEditor.AddAction(actShowFormModifyPalette);

  end;

end;
{$endregion PrepareModuleStrings_PaletteEditor}


{$region '                             PrepareModuleStrings_About                              '}
procedure PrepareModuleStrings_About;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsAbout := LangMgr.AddSection(LANG_INI_SECTION_ABOUT);

  with FormAbout do
  begin

    lsAbout.AddString('Caption', 'About');

  end;
end;
{$endregion PrepareModuleStrings_About}


{$region '                           PrepareModuleStrings_RandomColors                                '}
procedure PrepareModuleStrings_RandomColors;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsRandom := LangMgr.AddSection(LANG_INI_SECTION_RANDOM_COLORS);

  with FormRandomColors do
  begin

    lsRandom.AddString('Caption', 'Random Colors');
    lsRandom.AddLabel(lblColorCount);
    lsRandom.AddString('Colors', 'Colors');
    lsRandom.AddAction(actClearColors);
    lsRandom.AddAction(actAdd);
    lsRandom.AddAction(actGenerateRandomColors);
    lsRandom.AddAction(actClose);

  end;
end;
{$endregion PrepareModuleStrings_RandomColors}


{$region '                              PrepareModuleStrings_Sort                               '}
procedure PrepareModuleStrings_Sort;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsSort := LangMgr.AddSection(LANG_INI_SECTION_SORT);

  with FormSortBy do
  begin

    lsSort.AddString('Caption', 'Sort color palette');
    lsSort.AddLabel(lblSortBy);
    lsSort.AddLabel(lblSortDirection);
    lsSort.AddRadioButton(rbColorName);
    lsSort.AddRadioButton(rbColorValue);
    lsSort.AddRadioButton(rbColorNo);
    lsSort.AddRadioButton(rbRgbRed);
    lsSort.AddRadioButton(rbRgbGreen);
    lsSort.AddRadioButton(rbRgbBlue);
    lsSort.AddRadioButton(rbRgbSum);
    lsSort.AddRadioButton(rbCmykCyan);
    lsSort.AddRadioButton(rbCmykMagenta);
    lsSort.AddRadioButton(rbCmykYellow);
    lsSort.AddRadioButton(rbCmykBlack);
    lsSort.AddRadioButton(rbHslHue);
    lsSort.AddRadioButton(rbHslSat);
    lsSort.AddRadioButton(rbHslLum);
    lsSort.AddRadioButton(rbAscending);
    lsSort.AddRadioButton(rbDescending);
    lsSort.AddAction(actSort);
    lsSort.AddAction(actClose);

  end;
end;
{$endregion PrepareModuleStrings_Sort}


{$region '                                PrepareModuleStrings_Gradient                           '}
procedure PrepareModuleStrings_Gradient;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsGradient := LangMgr.AddSection(LANG_INI_SECTION_GRADIENT);

  with FormGradientColors do
  begin

    lsGradient.AddString('Caption', 'Gradient Colors');
    lsGradient.AddString('Colors', 'Colors');
    lsGradient.AddLabel(lblGradient);
    lsGradient.ac(cswStartColor).ap('BoundLabel.Caption', 'Start color:');
    lsGradient.ac(cswEndColor).ap('BoundLabel.Caption', 'Start color:');
    lsGradient.AddLabel(lblSteps);
    lsGradient.AddAction(actClose);
    lsGradient.AddAction(actAdd);
    lsGradient.AddAction(actAddToColorList);
    lsGradient.AddAction(actClearColors);

  end;
end;
{$endregion PrepareModuleStrings_Gradient}


{$region '                            PrepareModuleStrings_ColorName                                 '}
procedure PrepareModuleStrings_ColorName;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsColorName := LangMgr.AddSection(LANG_INI_SECTION_COLOR_NAME);

  with FormEditColorName do
  begin

    lsColorName.AddString('Caption', 'Edit color name');
    lsColorName.AddAction(actOK);
    lsColorName.ac(btnCancel).ap('Caption', 'Cancel');
    lsColorName.AddLabeledEdit(edColorName);
    lsColorName.ac(cswColor).ap('BoundLabel.Caption', 'Color:');

  end;
end;
{$endregion PrepareModuleStrings_ColorName}


{$region '                              PrepareModuleStrings_ColorMixer                                '}
procedure PrepareModuleStrings_ColorMixer;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsMixer := LangMgr.AddSection(LANG_INI_SECTION_MIXER);

  with FormColorMixer do
  begin

    lsMixer.AddString('Caption', 'Color mixer');
    lsMixer.AddString('Colors', 'Colors');
    lsMixer.AddAction(actAdd);
    lsMixer.AddAction(actAddToColorList);
    lsMixer.AddAction(actClearColors);
    lsMixer.AddAction(actClose);
    lsMixer.ac(cswMixedColor).ap('BoundLabel.Caption', 'Mixed color:');
    lsMixer.ac(ccbFirstColor).ap('BoundLabel.Caption', 'First color:');
    lsMixer.ac(ccbSecondColor).ap('BoundLabel.Caption', 'Second color:');

  end;
end;
{$endregion PrepareModuleStrings_ColorMixer}


{$region '                              PrepareModuleStrings_ModifyPalette                                '}
procedure PrepareModuleStrings_ModifyPalette;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsMod := LangMgr.AddSection(LANG_INI_SECTION_MODIFY_PALETTE);

  with FormModifyPalette do
  begin

    lsMod.AddString('Caption', 'Modify colors');
    lsMod.AddAction(actOK);
    lsMod.ac(btnCancel).ap('Caption', 'Cancel');

    lsMod.AddString('Reset', 'Reset');
    lsMod.AddString('Execute', 'Execute');
    lsMod.AddString('Brightness', 'Brightness');
    lsMod.AddString('Contrast', 'Contrast');
    lsMod.AddString('Pale', 'Pale');

    lsMod.AddAction(actSwitchMode_Basic);
    lsMod.AddAction(actSwitchMode_RGB);
    lsMod.AddLabel(lblOriginalColors);
    lsMod.AddLabel(lblModifiedColors);
    lsMod.AddAction(actRestoreOriginalColors);

    lsMod.AddAction(actModify_Grayscale);
    lsMod.AddAction(actModify_Invert);
    lsMod.ac(cswMix).ap('BoundLabel.Caption', 'Mix with color:');
    lsMod.AddLabel(lblHslChangeValue);
    lsMod.AddCheckBox(chHsl_ChangeHue);
    lsMod.AddCheckBox(chHsl_ChangeSat);
    lsMod.AddCheckBox(chHsl_ChangeLum);

    lsMod.AddLabel(lblRgbInvert);
    lsMod.AddLabel(lblRgbSetValue);
    lsMod.AddLabel(lblRgbChangeValue);

  end;
end;
{$endregion PrepareModuleStrings_ModifyPalette}


{$region '                              PrepareModuleStrings_ColorWheel                                '}
procedure PrepareModuleStrings_ColorWheel;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsWheel := LangMgr.AddSection(LANG_INI_SECTION_COLOR_WHEEL);

  with FormColorWheel do
  begin

    lsWheel.AddString('Caption', 'Color wheel');
    lsWheel.AddString('Colors', 'Colors');
    lsWheel.AddAction(actAdd);
    lsWheel.AddAction(actAddToList_TriadicColors);
    lsWheel.AddAction(actAddToList_TetradicColors);
    lsWheel.AddAction(actClearColors);
    lsWheel.AddAction(actClose);
    lsWheel.AddLabel(lblTriadDist);
    lsWheel.AddLabel(lblTetradDist);
    lsWheel.AddCheckBox(chTriadComplementary);
    lsWheel.AddLabel(lblTriadicColorsTitle);
    lsWheel.AddLabel(lblTetradicColorsTitle);
    lsWheel.AddLabel(lblSelectedColorTitle);
    lsWheel.AddLabel(lblComplementaryColorTitle);
    lsWheel.ac(spedDegDist_Triad).ap('Hint', 'Distance on the color wheel in degrees');
    lsWheel.ac(spedDegDist_Tetrad).ap('Hint', 'Distance on the color wheel in degrees');

    lsWheel.ac(cswTriad1).ap('BoundLabel.Caption', 'Triadic color 1:');
    lsWheel.ac(cswTriad2).ap('BoundLabel.Caption', 'Triadic color 2:');

    lsWheel.ac(cswTetrad1).ap('BoundLabel.Caption', 'Tetradic color 1:');
    lsWheel.ac(cswTetrad2).ap('BoundLabel.Caption', 'Tetradic color 2:');
    lsWheel.ac(cswTetrad3).ap('BoundLabel.Caption', 'Tetradic color 3:');

    lsWheel.AddString('Hue', 'Hue');

  end;
end;
{$endregion PrepareModuleStrings_ColorWheel}


{$region '                              PrepareModuleStrings_SimilarColors                                '}
procedure PrepareModuleStrings_SimilarColors;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsSimilar := LangMgr.AddSection(LANG_INI_SECTION_SIMILAR_COLORS);

  with FormSimilarColors do
  begin

    lsSimilar.AddString('Caption', 'Similar colors');
    lsSimilar.AddString('Colors', 'Colors');
    lsSimilar.AddAction(actAdd);
    lsSimilar.AddAction(actClearColors);
    lsSimilar.AddAction(actClose);
    lsSimilar.AddString('AddToList.Hint', 'Add colors to the color list on the right');
    lsSimilar.AddString('AddToList.Caption', 'Add to list');
    lsSimilar.ac(cswCurrentColor).ap('BoundLabel.Caption', 'Selected color:');
    lsSimilar.AddAction(actAddToList_CurrentColor);
    lsSimilar.AddLabel(lblColorCount);
    lsSimilar.AddLabel(lblStep);
    lsSimilar.AddLabel(lblColorFormat);
    lsSimilar.AddRadioButton(rbRgb);
    lsSimilar.AddRadioButton(rbHtml);
    lsSimilar.AddRadioButton(rbHslCss);
    lsSimilar.AddRadioButton(rbHslWin);
    lsSimilar.ac(cswMixed_Black).ap('BoundLabel.Caption', 'Mixed with black:');
    lsSimilar.ac(cswMixed_Gray).ap('BoundLabel.Caption', 'Mixed with gray:');
    lsSimilar.ac(cswMixed_White).ap('BoundLabel.Caption', 'Mixed with white:');
    lsSimilar.AddLabel(lblDarker);
    lsSimilar.AddLabel(lblLighter);
    lsSimilar.AddLabel(lblSatMore);
    lsSimilar.AddLabel(lblSatLess);
    lsSimilar.AddLabel(lblHuePlus, True, True);
    lsSimilar.AddLabel(lblHueMinus, True, True);

  end;
end;
{$endregion PrepareModuleStrings_SimilarColors}

{$region '                              PrepareModuleStrings_RecentlyOpened                                '}
procedure PrepareModuleStrings_RecentlyOpened;
begin
  if not Assigned(LangMgr) then InitLangMgr;

  lsRecent := LangMgr.AddSection(LANG_INI_SECTION_RECENTLY_OPENED);

  with FormQuickAccess do
  begin

    lsRecent.AddString('Caption', 'Recently opened files');
    lsRecent.AddAction(actOK);
    lsRecent.AddAction(actCancel);
    lsRecent.AddAction(actSort);

  end;
end;
{$endregion PrepareModuleStrings_RecentlyOpened}


initialization

  lsMain := nil;
  lsOptions := nil;
  lsAbout := nil;
  lsEditor := nil;
  lsColorEditor := nil;
  lsAutoCapture := nil;
  lsPixelColor := nil;
  lsCheckUpdate := nil;
  lsRandom := nil;
  lsSort := nil;
  lsGradient := nil;
  lsColorName := nil;
  lsMixer := nil;
  lsMod := nil;
  lsWheel := nil;
  lsSimilar := nil;
  lsRecent := nil;

end.



