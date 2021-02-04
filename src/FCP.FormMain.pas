unit FCP.FormMain;

interface

uses
  // Win API
  Winapi.Windows, Winapi.Messages,

  // System
  System.SysUtils, System.Variants, System.Classes, System.UITypes, //{System.IniFiles,} System.Actions,

  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus,
  Vcl.Clipbrd, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg,
  Vcl.ComCtrls, Vcl.TabNotBk, Vcl.ExtDlgs,

  //SpTBX
  TB2Item, SpTBXItem, TB2Dock, TB2Toolbar, SpTBXSkins, SpTBXDefaultSkins, SpTBXEditors,

  // JPLib
  JPL.Strings, JPL.Strings.Ext, JPL.Conversion, JPL.Colors, JPL.Colors.ColorClass, JPL.Dialogs, JPL.LangMgr, JPL.Math, JPL.FileSearch,
  JPL.MemIniFile,

  // JPPack
  JPP.Graphics, JPP.Panel, JPP.PngButton, JPP.BasicSpeedButton, JPP.ColorListBox, JPP.BasicPanel, JPP.PngCollection,
  JPP.DoubleLabel, JPP.DoubleLineLabel, JPP.ColorSwatch, JPP.SimplePanel, JPP.Common.Procs, JPP.ColorControls.Common,

  // Graphics32
  GR32, GR32_Resamplers, GR32_Filters,

  // Application units
  FCP.Types, FCP.Bitmap, FCP.Shared, FCP.ColorPalette, FCP.FormAbout, FCP.FormOptions, FCP.FormPaletteEditor, FCP.FormEditColor, FCP.AppStrings,
  FCP.FormAutoCapture, FCP.FormPixelColor, FCP.FormCheckUpdate, FCP.FormSortBy, FCP.FormRandomColors, FCP.FormGradientColors, FCP.FormEditColorName,
  FCP.FormColorMixer, FCP.FormModifyPalette, FCP.FormColorWheel, FCP.FormSimilarColors, FCP.FormQuickAccess,

  // other
  PngImageList, VirtualTrees, PJDropFiles, JPP.HtmlHint, System.Actions;

type

  {$region '     TFormMain     '}
  TFormMain = class(TForm)
    pnBottom: TJppSimplePanel;
    Actions: TActionList;
    actClose: TAction;
    actEsc: TAction;
    actCaptureColor: TAction;
    pnImg: TJppSimplePanel;
    pnPalette: TJppSimplePanel;
    tmColor: TTimer;
    actZoom_1: TAction;
    actZoom_2: TAction;
    actZoom_4: TAction;
    actZoom_6: TAction;
    actZoom_8: TAction;
    actZoom_10: TAction;
    actZoom_14: TAction;
    actZoom_18: TAction;
    actZoom_22: TAction;
    actZoom_26: TAction;
    actZoom_30: TAction;
    actCreatePreview: TAction;
    pilMain: TPngImageList;
    pnTemplates: TPanel;
    sbtnT1: TJppBasicSpeedButton;
    clbColors: TJppColorListBox;
    pnZoom: TJppSimplePanel;
    lblImageRect: TLabel;
    pnPreviewTop: TJppSimplePanel;
    chCreatePreview: TCheckBox;
    actStartCapturing: TAction;
    actStopCapturing: TAction;
    btnT1: TJppPngButton;
    pnCaptureColorInfo: TJppBasicPanel;
    lblCaptureCopyColorInfo: TLabel;
    actCopyColor_HTML: TAction;
    actCopyColor_RGB: TAction;
    actCopyColor_HSL_CSS: TAction;
    actCopyColor_HSL_WIN: TAction;
    actCopyColor_CMYK: TAction;
    actCopyColor_PascalHEX: TAction;
    cbResampler: TComboBox;
    actSwitchOnTop: TAction;
    pnColorPaletteTitle: TJppBasicPanel;
    lblColorPalette: TLabel;
    actAbout: TAction;
    pnCursorPosition: TJppSimplePanel;
    dlblPosX: TJppDoubleLabel;
    dlblPosY: TJppDoubleLabel;
    ntb: TNotebook;
    sbtnSwitchToImageMode: TJppBasicSpeedButton;
    pnImageTop: TJppSimplePanel;
    sbtnSwitchToPreviewMode: TJppBasicSpeedButton;
    actSwitchToPreviewMode: TAction;
    actSwitchToImageMode: TAction;
    pnImgPreviewBg: TJppSimplePanel;
    img: TImage;
    dlgOpenImage: TOpenPictureDialog;
    sbtnOpenImage: TJppBasicSpeedButton;
    actOpenImage: TAction;
    dlgSaveImage: TSavePictureDialog;
    sbox: TScrollBox;
    imgPicture: TImage;
    lblCurrentImage: TLabel;
    actEditPalette: TAction;
    sbtnEditColorPalette2: TJppBasicSpeedButton;
    PngCollection: TJppPngCollection;
    popupImg: TSpTBXPopupMenu;
    popZoom30: TSpTBXItem;
    popZoom26: TSpTBXItem;
    popZoom22: TSpTBXItem;
    popZoom18: TSpTBXItem;
    popZoom14: TSpTBXItem;
    popZoom10: TSpTBXItem;
    popZoom8: TSpTBXItem;
    popZoom6: TSpTBXItem;
    popZoom4: TSpTBXItem;
    popZoom2: TSpTBXItem;
    popZoom1: TSpTBXItem;
    sep3: TSpTBXSeparatorItem;
    popSwitchOnTop: TSpTBXItem;
    dockMenu: TSpTBXDock;
    tbMainMenu: TSpTBXToolbar;
    mnuFile: TSpTBXSubmenuItem;
    SpTBXItem6: TSpTBXItem;
    SpTBXItem7: TSpTBXItem;
    mnuZoom: TSpTBXSubmenuItem;
    SpTBXItem8: TSpTBXItem;
    SpTBXItem9: TSpTBXItem;
    SpTBXItem10: TSpTBXItem;
    SpTBXItem11: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    SpTBXItem12: TSpTBXItem;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    SpTBXItem13: TSpTBXItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    SpTBXItem14: TSpTBXItem;
    actExitApplication: TAction;
    btnStartCapturing: TSpTBXItem;
    btnStopCapturing: TSpTBXItem;
    SpTBXItem17: TSpTBXItem;
    SpTBXSeparatorItem4: TSpTBXSeparatorItem;
    SpTBXSeparatorItem5: TSpTBXSeparatorItem;
    btnEditPalette: TSpTBXItem;
    SpTBXItem19: TSpTBXItem;
    SpTBXItem20: TSpTBXItem;
    SpTBXItem21: TSpTBXItem;
    SpTBXItem22: TSpTBXItem;
    SpTBXItem23: TSpTBXItem;
    SpTBXItem24: TSpTBXItem;
    SpTBXItem25: TSpTBXItem;
    SpTBXSeparatorItem6: TSpTBXSeparatorItem;
    mnuHelp: TSpTBXSubmenuItem;
    SpTBXItem26: TSpTBXItem;
    popupCopyColors: TSpTBXPopupMenu;
    popCopyColor_PascalHEX: TSpTBXItem;
    popCopyColor_CMYK: TSpTBXItem;
    popCopyColor_HSL_WIN: TSpTBXItem;
    popCopyColor_HSL_CSS: TSpTBXItem;
    popCopyColor_RGB: TSpTBXItem;
    popCopyColor_HTML: TSpTBXItem;
    splMain: TSplitter;
    actSavePreviewImage: TAction;
    SpTBXItem1: TSpTBXItem;
    actGoTo_HomePage: TAction;
    SpTBXItem2: TSpTBXItem;
    SpTBXSeparatorItem7: TSpTBXSeparatorItem;
    actGoTo_Github: TAction;
    SpTBXItem3: TSpTBXItem;
    actGoTo_Facebook: TAction;
    SpTBXItem4: TSpTBXItem;
    mnuPalette: TSpTBXSubmenuItem;
    SpTBXSeparatorItem8: TSpTBXSeparatorItem;
    SpTBXItem5: TSpTBXItem;
    actClearPalette: TAction;
    SpTBXItem15: TSpTBXItem;
    SpTBXSeparatorItem9: TSpTBXSeparatorItem;
    actOpenColorPalette: TAction;
    SpTBXItem16: TSpTBXItem;
    SpTBXSeparatorItem10: TSpTBXSeparatorItem;
    actSaveColorPalette: TAction;
    SpTBXItem18: TSpTBXItem;
    actExportPaletteToHtml: TAction;
    SpTBXItem27: TSpTBXItem;
    actExportPaletteToGPL: TAction;
    SpTBXItem28: TSpTBXItem;
    SpTBXItem29: TSpTBXItem;
    SpTBXSeparatorItem11: TSpTBXSeparatorItem;
    actOptions: TAction;
    SpTBXItem30: TSpTBXItem;
    popColorPalette: TSpTBXPopupMenu;
    SpTBXItem31: TSpTBXItem;
    SpTBXItem32: TSpTBXItem;
    SpTBXItem33: TSpTBXItem;
    SpTBXSeparatorItem12: TSpTBXSeparatorItem;
    SpTBXItem34: TSpTBXItem;
    SpTBXSeparatorItem13: TSpTBXSeparatorItem;
    SpTBXItem35: TSpTBXItem;
    SpTBXItem36: TSpTBXItem;
    SpTBXSeparatorItem14: TSpTBXSeparatorItem;
    SpTBXSeparatorItem15: TSpTBXSeparatorItem;
    pnColorCodes: TJppSimplePanel;
    pnColorUnderCursor: TJppSimplePanel;
    pnColor: TJppSimplePanel;
    pnSelectedColor1: TJppSimplePanel;
    dlblHslCss: TJppDoubleLineLabel;
    dlblHslWin: TJppDoubleLineLabel;
    pnRgbBg: TJppSimplePanel;
    pnSelectedColor2: TJppSimplePanel;
    dlblPascalHex: TJppDoubleLineLabel;
    popCopyColor_RGB_Percent: TSpTBXItem;
    actCopyColor_RGB_Percent: TAction;
    dlblCmyk: TJppDoubleLineLabel;
    dlblPascalInt: TJppDoubleLineLabel;
    actCopyColor_PascalINT: TAction;
    popCopyColor_PascalINT: TSpTBXItem;
    dlblCppHex: TJppDoubleLineLabel;
    actCopyColor_CppHex: TAction;
    SpTBXItem37: TSpTBXItem;
    dropFile: TPJFormDropFiles;
    dockColorPalette: TSpTBXDock;
    tbColorPalette: TSpTBXToolbar;
    SpTBXItem38: TSpTBXItem;
    SpTBXItem39: TSpTBXItem;
    SpTBXItem40: TSpTBXItem;
    SpTBXSeparatorItem16: TSpTBXSeparatorItem;
    SpTBXItem41: TSpTBXItem;
    SpTBXSeparatorItem17: TSpTBXSeparatorItem;
    SpTBXItem42: TSpTBXItem;
    SpTBXItem43: TSpTBXItem;
    SpTBXSeparatorItem18: TSpTBXSeparatorItem;
    pnRgbGraph: TJppPanel;
    dlblRgb: TJppDoubleLineLabel;
    dlblHtml: TJppDoubleLineLabel;
    dlblRgbPercent: TJppDoubleLineLabel;
    SpTBXSeparatorItem19: TSpTBXSeparatorItem;
    actCollapse: TAction;
    SpTBXItem44: TSpTBXItem;
    SpTBXSeparatorItem20: TSpTBXSeparatorItem;
    actShowFormAutoCapture: TAction;
    pnMini: TJppSimplePanel;
    pnMiniImgBg: TJppSimplePanel;
    imgMini: TImage;
    actMini_HeightPlus: TAction;
    actMini_HeightMinus: TAction;
    SpTBXItem46: TSpTBXItem;
    SpTBXSeparatorItem21: TSpTBXSeparatorItem;
    popupMini: TSpTBXPopupMenu;
    SpTBXItem47: TSpTBXItem;
    SpTBXItem48: TSpTBXItem;
    SpTBXSeparatorItem22: TSpTBXSeparatorItem;
    SpTBXItem49: TSpTBXItem;
    SpTBXItem50: TSpTBXItem;
    actEditColor: TAction;
    SpTBXItem51: TSpTBXItem;
    SpTBXItem52: TSpTBXItem;
    SpTBXItem53: TSpTBXItem;
    sbtnMini_Fold: TJppBasicSpeedButton;
    TrayIcon: TTrayIcon;
    popupTray: TSpTBXPopupMenu;
    actRestoreMainWindow: TAction;
    actMinimizeToTray: TAction;
    SpTBXItem54: TSpTBXItem;
    SpTBXItem55: TSpTBXItem;
    SpTBXSeparatorItem23: TSpTBXSeparatorItem;
    SpTBXItem56: TSpTBXItem;
    SpTBXSeparatorItem24: TSpTBXSeparatorItem;
    pnMini_Right: TJppSimplePanel;
    btnMini_HeightMinus: TJppBasicSpeedButton;
    btnMini_HeightPlus: TJppBasicSpeedButton;
    actPalette_SelectAll: TAction;
    actPalette_InvertSelection: TAction;
    actPalette_RemoveSelected: TAction;
    SpTBXItem57: TSpTBXItem;
    SpTBXItem58: TSpTBXItem;
    SpTBXItem59: TSpTBXItem;
    SpTBXSeparatorItem25: TSpTBXSeparatorItem;
    SpTBXItem60: TSpTBXItem;
    SpTBXItem61: TSpTBXItem;
    SpTBXItem62: TSpTBXItem;
    SpTBXSeparatorItem26: TSpTBXSeparatorItem;
    actPalette_UnselectAll: TAction;
    SpTBXItem63: TSpTBXItem;
    SpTBXItem64: TSpTBXItem;
    SpTBXItem65: TSpTBXItem;
    actShowFormPixelColor: TAction;
    SpTBXItem45: TSpTBXItem;
    actCheckUpdate: TAction;
    SpTBXSeparatorItem27: TSpTBXSeparatorItem;
    SpTBXItem66: TSpTBXItem;
    cswCursorColor: TJppColorSwatch;
    TBControlItem2: TTBControlItem;
    cswMiniLast: TJppColorSwatchEx;
    SpTBXItem67: TSpTBXItem;
    actCopySelectedColors_RGB: TAction;
    SpTBXSeparatorItem28: TSpTBXSeparatorItem;
    actCopySelectedColors_HTML: TAction;
    SpTBXItem68: TSpTBXItem;
    SpTBXItem69: TSpTBXItem;
    SpTBXItem70: TSpTBXItem;
    SpTBXSeparatorItem29: TSpTBXSeparatorItem;
    actCopySelectedColors_RGB_Percent: TAction;
    actCopySelectedColors_HSL_CSS: TAction;
    actCopySelectedColors_HSL_WIN: TAction;
    SpTBXItem71: TSpTBXItem;
    SpTBXItem72: TSpTBXItem;
    SpTBXItem73: TSpTBXItem;
    SpTBXItem74: TSpTBXItem;
    SpTBXItem75: TSpTBXItem;
    SpTBXItem76: TSpTBXItem;
    actCopySelectedColors_CMYK: TAction;
    actCopySelectedColors_PascalHEX: TAction;
    actCopySelectedColors_PascalINT: TAction;
    actCopySelectedColors_CppHex: TAction;
    SpTBXItem77: TSpTBXItem;
    SpTBXItem78: TSpTBXItem;
    SpTBXItem79: TSpTBXItem;
    SpTBXItem80: TSpTBXItem;
    SpTBXItem81: TSpTBXItem;
    SpTBXItem82: TSpTBXItem;
    SpTBXItem83: TSpTBXItem;
    SpTBXItem84: TSpTBXItem;
    mnuTools: TSpTBXSubmenuItem;
    SpTBXSeparatorItem30: TSpTBXSeparatorItem;
    actShowFormRandomColors: TAction;
    SpTBXItem85: TSpTBXItem;
    actShowFormGradientColors: TAction;
    SpTBXItem86: TSpTBXItem;
    actCopyColor: TAction;
    SpTBXItem87: TSpTBXItem;
    actGoTo_Donation: TAction;
    actHelp: TAction;
    SpTBXItem88: TSpTBXItem;
    SpTBXSeparatorItem31: TSpTBXSeparatorItem;
    actCloseImage: TAction;
    sbtnCloseImage: TJppBasicSpeedButton;
    SpTBXItem89: TSpTBXItem;
    actEditColorName: TAction;
    SpTBXItem90: TSpTBXItem;
    SpTBXItem91: TSpTBXItem;
    SpTBXItem92: TSpTBXItem;
    actShowFormColorMixer: TAction;
    SpTBXItem93: TSpTBXItem;
    actShowFormColorWheel: TAction;
    SpTBXItem94: TSpTBXItem;
    actPalette_ColorWheel: TAction;
    SpTBXItem95: TSpTBXItem;
    SpTBXSeparatorItem32: TSpTBXSeparatorItem;
    SpTBXItem96: TSpTBXItem;
    SpTBXSeparatorItem33: TSpTBXSeparatorItem;
    actShowFormSimilarColors: TAction;
    SpTBXItem97: TSpTBXItem;
    actShowFormQuickAccess: TAction;
    mnuPaletteFiles: TSpTBXSubmenuItem;
    actShowHideColorCodesPanel: TAction;
    popShowHideColorCodesPanel: TSpTBXItem;
    SpTBXItem99: TSpTBXItem;
    actShowHideBottomPanel: TAction;
    popShowHideBottomPanel: TSpTBXItem;
    SpTBXItem98: TSpTBXItem;
    actSetSize_Small: TAction;
    actSetSize_Medium: TAction;
    actSetSize_Large: TAction;
    SpTBXSeparatorItem35: TSpTBXSeparatorItem;
    SpTBXSeparatorItem36: TSpTBXSeparatorItem;
    SpTBXItem100: TSpTBXItem;
    SpTBXItem101: TSpTBXItem;
    SpTBXItem102: TSpTBXItem;
    SpTBXSeparatorItem37: TSpTBXSeparatorItem;
    SpTBXSeparatorItem38: TSpTBXSeparatorItem;
    SpTBXItem103: TSpTBXItem;
    SpTBXItem104: TSpTBXItem;
    SpTBXItem105: TSpTBXItem;
    actReloadCurrentLanguageFile: TAction;
    shLine: TShape;
    AppHint: TJppHtmlHint;
    actPalette_SimilarColors: TAction;
    popPalette_SimilarColors: TSpTBXItem;
    SpTBXItem106: TSpTBXItem;
    actShowHidePalette: TAction;
    mnuShowHideoPalette: TSpTBXItem;
    popShowHidePalette: TSpTBXItem;
    meColorsT: TMemo;
    clbT: TJppColorListBox;
    popP_ShowHidePalette: TSpTBXItem;
    SpTBXSeparatorItem34: TSpTBXSeparatorItem;
    procedure actAboutExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actEscExecute(Sender: TObject);
    procedure SaveSettingsToIni;
    procedure LoadSettingsFromIni;

    function FirstRun: Boolean;
    procedure InitLang;
    procedure SetLang;

    procedure actCaptureColorExecute(Sender: TObject);
    procedure actCheckUpdateExecute(Sender: TObject);
    procedure actClearPaletteExecute(Sender: TObject);
    procedure actCloseImageExecute(Sender: TObject);
    procedure actCopyColorExecute(Sender: TObject);
    procedure actCopyColor_CMYKExecute(Sender: TObject);
    procedure actCopyColor_CppHexExecute(Sender: TObject);
    procedure actCopyColor_HSL_CSSExecute(Sender: TObject);
    procedure actCopyColor_HSL_WINExecute(Sender: TObject);
    procedure actCopyColor_HTMLExecute(Sender: TObject);
    procedure actCopyColor_PascalHEXExecute(Sender: TObject);
    procedure actCopyColor_PascalINTExecute(Sender: TObject);
    procedure actCopyColor_RGBExecute(Sender: TObject);
    procedure actCopyColor_RGB_PercentExecute(Sender: TObject);
    procedure actCopySelectedColors_CMYKExecute(Sender: TObject);
    procedure actCopySelectedColors_CppHexExecute(Sender: TObject);
    procedure actCopySelectedColors_HSL_CSSExecute(Sender: TObject);
    procedure actCopySelectedColors_HSL_WINExecute(Sender: TObject);
    procedure actCopySelectedColors_HTMLExecute(Sender: TObject);
    procedure actCopySelectedColors_PascalHEXExecute(Sender: TObject);
    procedure actCopySelectedColors_PascalINTExecute(Sender: TObject);
    procedure actCopySelectedColors_RGBExecute(Sender: TObject);
    procedure actCopySelectedColors_RGB_PercentExecute(Sender: TObject);
    procedure tmColorTimer(Sender: TObject);
    procedure UpdatePreviewImg;
    procedure CreatePreviewImage(const Image: TImage);
    procedure AddCurrentColorToMainList;
    procedure actZoom_1Execute(Sender: TObject);
    procedure actZoom_2Execute(Sender: TObject);
    procedure actZoom_4Execute(Sender: TObject);
    procedure actZoom_6Execute(Sender: TObject);
    procedure actZoom_8Execute(Sender: TObject);
    procedure actZoom_10Execute(Sender: TObject);
    procedure actZoom_14Execute(Sender: TObject);
    procedure actZoom_18Execute(Sender: TObject);
    procedure actZoom_22Execute(Sender: TObject);
    procedure actZoom_26Execute(Sender: TObject);
    procedure actZoom_30Execute(Sender: TObject);
    procedure IniZoomPopup;
    procedure InitZoomMenu;
    procedure actCreatePreviewExecute(Sender: TObject);
    procedure actEditColorExecute(Sender: TObject);
    procedure actEditColorNameExecute(Sender: TObject);
    procedure actEditPaletteExecute(Sender: TObject);
    procedure actExitApplicationExecute(Sender: TObject);
    procedure actExportPaletteToGPLExecute(Sender: TObject);
    procedure actExportPaletteToHtmlExecute(Sender: TObject);
    procedure actCollapseExecute(Sender: TObject);
    procedure actGoTo_DonationExecute(Sender: TObject);
    procedure UpdateSelectedColorControls;
    procedure UpdateRgbGraph(const AColor: TColor);
    procedure FormResize(Sender: TObject);
    procedure actGoTo_FacebookExecute(Sender: TObject);
    procedure actGoTo_GithubExecute(Sender: TObject);
    procedure actGoTo_HomePageExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actPalette_InvertSelectionExecute(Sender: TObject);
    procedure actMinimizeToTrayExecute(Sender: TObject);
    procedure actMini_HeightPlusExecute(Sender: TObject);
    procedure actMini_HeightMinusExecute(Sender: TObject);
    procedure actOpenColorPaletteExecute(Sender: TObject);
    procedure actOpenImageExecute(Sender: TObject);
    procedure actOptionsExecute(Sender: TObject);
    procedure actPalette_ColorWheelExecute(Sender: TObject);
    procedure actPalette_RemoveSelectedExecute(Sender: TObject);
    procedure actSaveColorPaletteExecute(Sender: TObject);
    procedure actSavePreviewImageExecute(Sender: TObject);
    procedure actShowFormAutoCaptureExecute(Sender: TObject);
    procedure actRestoreMainWindowExecute(Sender: TObject);
    procedure actPalette_SelectAllExecute(Sender: TObject);
    procedure actPalette_UnselectAllExecute(Sender: TObject);
    procedure actReloadCurrentLanguageFileExecute(Sender: TObject);
    procedure actSetSize_LargeExecute(Sender: TObject);
    procedure actSetSize_MediumExecute(Sender: TObject);
    procedure actSetSize_SmallExecute(Sender: TObject);
    procedure actShowFormColorMixerExecute(Sender: TObject);
    procedure actShowFormColorWheelExecute(Sender: TObject);
    procedure actShowFormGradientColorsExecute(Sender: TObject);
    procedure actShowFormPixelColorExecute(Sender: TObject);
    procedure actShowFormQuickAccessExecute(Sender: TObject);
    procedure actShowFormRandomColorsExecute(Sender: TObject);
    procedure actShowFormSimilarColorsExecute(Sender: TObject);
    procedure actShowHideBottomPanelExecute(Sender: TObject);
    procedure actShowHideColorCodesPanelExecute(Sender: TObject);
    procedure actStartCapturingExecute(Sender: TObject);
    procedure actStopCapturingExecute(Sender: TObject);
    procedure actSwitchOnTopExecute(Sender: TObject);
    procedure actSwitchToImageModeExecute(Sender: TObject);
    procedure actSwitchToPreviewModeExecute(Sender: TObject);
    //procedure SetZoomCombo(const xZoomFactor: integer);
    function ResamplerStrToIndex(s: string): integer;
    procedure InitAppParams;
    procedure PrepareControls;
    procedure InitControls;
    procedure InitCtrls(Sender: TObject);
    procedure ApplyMonospaceFont;
    procedure cbResamplerChange(Sender: TObject);
    procedure PrepareSkins;
    procedure PerformOpenImage(const FileName: string);
    procedure CenterImg;
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure imgPictureMouseEnter(Sender: TObject);
    procedure imgPictureMouseLeave(Sender: TObject);
    procedure AssignColorPalette(const cp: TColorPalette; bClearCurrentPalette: Boolean = True);
    procedure dropFileDropFiles(Sender: TObject);
    function LoadPalette(const FileName: string; bClearPalette: Boolean): Boolean;
    procedure mnuPalettePopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure mnuZoomPopup(Sender: TTBCustomItem; FromLink: Boolean);
    procedure MoveFoldedForm(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure popColorPalettePopup(Sender: TObject);
    procedure popupImgPopup(Sender: TObject);
    procedure ExportColorsToHtmlFile(const FileName: string);
    procedure TrayIconClick(Sender: TObject);
    procedure UpdateColorPaletteCount;
    procedure CopySelectedColorsToClipboard(const ColorType: TColorType);
    procedure cswCursorColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
    procedure CreatePaletteFilesSubmenu;
    procedure MenuPaletteFileClick(Sender: TObject);
    procedure GetLastOpenedFileList(sl: TStringList);
    function RecentFileAlreadyOnList(const FileName: string): Boolean;
    procedure splMainMoved(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPalette_SimilarColorsExecute(Sender: TObject);
    procedure actShowHidePaletteExecute(Sender: TObject);
  protected
    procedure SaveColorsToPaletteFile(const FileName: string);
    procedure SaveColorsToColorPalette(cp: TColorPalette; SelectedOnly: Boolean = False);
  private const
    IND_RESAMPLER_BOX = 0;
    IND_RESAMPLER_LINEAR = 1;
    IND_RESAMPLER_CUBIC = 2;
    IND_RESAMPLER_MITCHELL = 3;
    IND_RESAMPLER_SPLINE = 4;
    IND_RESAMPLER_LANCZOS = 5;
  private
    LastCursorPosX: integer;
    LastCursorPosY: integer;
    ZoomFactor: integer;
    ZoomMin: integer;
    ZoomMax: integer;
    bCaptureImg: Boolean;
  public
    SelectedColor: TColorParams;
  private
    bUpdatingControls: Boolean;
    CurrentImageFile: string;
    AppMode: TAppMode;
    bMouseOverImg: Boolean;
    MouseScrollStep: integer;

    Constraints_MinHeight: integer;
    Folded: Boolean;
    UnfoldedHeight: integer;
    UnfoldedWidth: integer;
    FoldedWidth: integer;
    FoldedHeight: integer;
  private const
    MinFoldedHeight: Byte = 72;
    MaxFoldedHeight: Byte = 180;
    MinFoldedWidth: integer = 450;// 396;
    MaxFoldedWidth: integer = 460;
    FoldedSizeStep: Byte = 1;
  end;
  {$endregion TFormMain}


var
  FormMain: TFormMain;


implementation

{$R *.dfm}
{$R skins.res}




{$region '                     Create, Close, Destroy                          '}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  InitAppParams;

  SpTBXHintWindowClass := TJppHtmlHintWindow;
  Application.HintHidePause := 6000;
  AppMode := amPreview;
  MouseScrollStep := 6;

  PrepareControls;
  PrepareSkins;

  ZoomMin := 1;
  ZoomMax := 30;
  ZoomFactor := 4;

  bCaptureImg := True;

  InitLang;
  InitLangMgr;
  PrepareModuleStrings_Main;

  Folded := False;
  FoldedWidth := 400;
  FoldedHeight := 72;

  CreatePaletteFilesSubmenu;
  LoadSettingsFromIni;
  LoadPalette(AP.LastPaletteFile, True);
  if FileExists(AP.LastPaletteFile) then mnuPaletteFiles.Caption := AP.LastPaletteFile;

  actSwitchToPreviewMode.Execute;

  tmColor.Enabled := True;
  InitControls;

  Constraints_MinHeight := Constraints.MinHeight;
  UnfoldedHeight := Height;

  {$IFDEF DEBUG}Caption := Caption + '    // DEBUG'; {$ENDIF}

  if clbColors.Items.Count > 0 then cswMiniLast.SelectedColor := clbColors.GetItemColor(0);

  if Folded then
  begin
    Folded := False;
    actCollapse.Execute;
  end;

  if (ParamCount > 0) and (FileExists(ParamStr(1))) then LoadPalette(ParamStr(1), True);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FormPaletteEditor) and FormPaletteEditor.Visible then FormPaletteEditor.Close;      // force save settings to INI
  if Assigned(FormAutoCapture) and FormAutoCapture.Visible then FormAutoCapture.Close;            // force save settings to INI
  if Assigned(FormPixelColor) and FormPixelColor.Visible then FormPixelColor.Close;               // force save settings to INI
  if Assigned(FormRandomColors) and FormRandomColors.Visible then FormRandomColors.Close;         // force save settings to INI
  if Assigned(FormGradientColors) and FormGradientColors.Visible then FormGradientColors.Close;   // force save settings to INI
  if Assigned(FormColorMixer) and (FormColorMixer.Visible) then FormColorMixer.Close;             // force save settings to INI
  if Assigned(FormColorWheel) and (FormColorWheel.Visible) then FormColorWheel.Close;             // force save settings to INI
  if Assigned(FormSimilarColors) and (FormSimilarColors.Visible) then FormSimilarColors.Close;    // force save settings to INI

  tmColor.Enabled := False;
  SaveSettingsToIni;
  SaveColorsToPaletteFile(AP.LastPaletteFile);

  if Assigned(LangMgr) then LangMgr.Free;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  SaveSettingsToIni;
end;

procedure TFormMain.actCloseExecute(Sender: TObject);
begin
  tmColor.Enabled := False;
  Close;
end;

{$endregion Create, Close, Destroy}


{$REGION '                               PrepareControls                        '}

procedure TFormMain.PrepareControls;
begin
  Caption := AppInfo.FullName;
  Application.Title := AppInfo.Name;

  TrayIcon.Icon.Assign(Application.Icon);
  TrayIcon.Hint := AppInfo.FullName;

  pnMini.Hide;
  pnMiniImgBg.Align := alClient;
  imgMini.Align := alClient;
  pnMini_Right.Appearance.BorderStyle := psClear;

  Constraints.MinWidth := 200; // 474;
  Constraints.MinHeight := 240; //278; //362;

  pnColor.Align := alClient;
  ntb.Align := alClient;

  sbox.Align := alClient;
  sbox.BorderStyle := bsNone;

  lblCaptureCopyColorInfo.Align := alClient;
  pnImg.Align := alClient;
  pnImgPreviewBg.Align := alClient;
  img.Align := alClient;

  lblCurrentImage.Caption := '';
  lblColorPalette.Align := alClient;



  chCreatePreview.Caption := actCreatePreview.Caption;
  sbtnOpenImage.Appearance.Assign(sbtnT1.Appearance);
  sbtnCloseImage.Appearance.Assign(sbtnT1.Appearance);

  sbtnEditColorPalette2.Appearance.Assign(sbtnT1.Appearance);
  sbtnEditColorPalette2.Appearance.ShowCaption := False;

  sbtnSwitchToPreviewMode.Appearance.Assign(sbtnSwitchToImageMode.Appearance);

  sbtnMini_Fold.Appearance.Assign(sbtnT1.Appearance, True);

  SetJppPngButtonFonts(btnT1, Font.Name, Font.Size);

  dlblHtml.RightCaption := '';
  dlblRgb.RightCaption := '';
  dlblRgbPercent.RightCaption := '';
  dlblHslCss.RightCaption := '';
  dlblHslWin.RightCaption := '';
  dlblCmyk.RightCaption := '';

  dlblPosX.RightCaption := '';
  dlblPosY.RightCaption := '';

  ApplyMonospaceFont;

  clbColors.Align := alClient;
  clbColors.Items.Clear;

  dlgOpenImage.InitialDir := AP.PicturesDir;
  dlgSaveImage.InitialDir := AP.PicturesDir;

  actShowHideColorCodesPanel.Checked := pnColorCodes.Visible;
  shLine.Height := 1;
end;
{$ENDREGION PrepareControls}




function TFormMain.FirstRun: Boolean;
var
  Ini: TJppMemIniFile;
begin
  if not FileExists(AP.IniFile) then Exit(True);

  Ini := TJppMemIniFile.Create(AP.IniFile);
  try
    Result := Ini.ReadInteger(INI_SECTION_MAIN, 'Left', 0) > 0;
  finally
    Ini.Free;
  end;
end;

{$REGION '                            LANGUAGE                               '}

  {$REGION '             InitLang              '}
procedure TFormMain.InitLang;
var
  fName: string;
begin
  fName := '';
  if FirstRun then
  begin

    case SysLocale.PriLangID of
      LANG_POLISH: fName := 'Polish.ini';
      LANG_ALBANIAN: fName := 'Albanian.ini';
      LANG_ARABIC: fName := 'Arabic.ini';
      LANG_BELARUSIAN: fName := 'Belarusian.ini';
      LANG_BULGARIAN: fName := 'Bulgarian.ini';
      LANG_CHINESE: fName := 'Chinese_Simplified.ini';
      LANG_CROATIAN: fName := 'Croatian.ini'; // LANG_SERBIAN = LANG_CROATIAN = $1A
      LANG_CZECH: fName := 'Czech.ini';
      LANG_DANISH: fName := 'Danish.ini';
      LANG_DUTCH: fName := 'Dutch.ini';
      LANG_ESTONIAN: fName := 'Estonian.ini';
      LANG_FINNISH: fName := 'Finnish.ini';
      LANG_FRENCH: fName := 'French.ini';
      LANG_GERMAN: fName := 'German.ini';
      LANG_GREEK: fName := 'Greek.ini';
      LANG_HEBREW: fName := 'Hebrew.ini';
      LANG_HUNGARIAN: fName := 'Hungarian.ini';
      LANG_ICELANDIC: fName := 'Icelandic.ini';
      LANG_ITALIAN: fName := 'Italian.ini';
      LANG_JAPANESE: fName := 'Japanese.ini';
      LANG_KOREAN: fName := 'Korean.ini';
      LANG_LATVIAN: fName := 'Latvian.ini';
      LANG_LITHUANIAN: fName := 'Lithuanian.ini';
      LANG_NORWEGIAN: fName := 'Norwegian.ini';
      LANG_PORTUGUESE: fName := 'Portuguese_BR.ini';
      LANG_ROMANIAN: fName := 'Romanian.ini';
      LANG_RUSSIAN: fName := 'Russian.ini';
      //LANG_SERBIAN: fName := 'Serbian.ini';  LANG_SERBIAN = LANG_CROATIAN
      LANG_SLOVAK: fName := 'Slovak.ini';
      LANG_SLOVENIAN: fName := 'Slovenian.ini';
      LANG_SPANISH: fName := 'Spanish.ini';
      LANG_SWEDISH: fName := 'Swedish.ini';
      LANG_THAI: fName := 'Thai.ini';
      LANG_TURKISH: fName := 'Turkish.ini';
      LANG_UKRAINIAN: fName := 'Ukrainian.ini';
      LANG_VIETNAMESE: fName := 'Vietnamese.ini';
      else fName := 'English.ini';
    end;

    if fName <> '' then fName := AP.LangDir + '\' + fName;
    if FileExists(fName) then AP.LanguageIni := fName;

  end;

end;
  {$ENDREGION InitLang}


  {$region '                SetLang                 '}
procedure TFormMain.SetLang;
var
  i: integer;
begin
  sbtnSwitchToImageMode.Caption := actSwitchToImageMode.Caption;
  sbtnSwitchToPreviewMode.Caption := actSwitchToPreviewMode.Caption;

  btnStartCapturing.Caption := btnStartCapturing.Caption + ' (' + ShortCutToText(actStartCapturing.ShortCut) + ')';
  btnStopCapturing.Caption := btnStopCapturing.Caption + ' (' + ShortCutToText(actStopCapturing.ShortCut) + ')';

  chCreatePreview.Caption := lsMain.GetComponentProperty(chCreatePreview.Name, 'Caption', 'Create preview image') + ' (' + ShortCutToText(actCreatePreview.ShortCut) + ')';

  pnColor.Hint := lsMain.GetString('ColorUnderCursor', 'Color under cursor');

  cswMiniLast.BoundLabel.Caption := lsMain.GetString('LastCapturedColor', cswMiniLast.BoundLabel.Caption);

  sbtnCloseImage.Caption := actCloseImage.Caption;
  actPalette_ColorWheel.Caption := actShowFormColorWheel.Caption;

  actShowFormQuickAccess.Caption := lsMain.GetString('EditQuickAccessList', 'Edit list of recently opened files...');
  for i := 0 to mnuPaletteFiles.Count - 1 do
  begin
    if mnuPaletteFiles.Items[i].Tag = TAG_RECENTLY_OPENED_EDIT_LIST then
    begin
      mnuPaletteFiles.Items[i].Caption := actShowFormQuickAccess.Caption;
      Break;
    end;
  end;

  dlgOpenImage.Title := lsMain.GetString('OpenPictureDialog_Title', 'Select image file');
  dlgSaveImage.Title := lsMain.GetString('SavePictureDialog_Title', 'Save image as');

  dlgOpenImage.Filter :=
    lsMain.GetString('DialogFilter_AllSupported', 'All supported files (PNG, JPG, BMP, GIF)') + '|*.png;*.jpg;*.jpeg;*.gif;*.bmp|' +
    lsMain.GetString('DialogFilter_PNG', 'Portable Network Graphics (*.png)') + '|*.png|' +
    lsMain.GetString('DialogFilter_JPG', 'JPEG Image File (*.jpg, *.jpeg)') + '|*.jpg;*.jpeg|' +
    lsMain.GetString('DialogFilter_GIF', 'CompuServe GIF Image (*.gif)') + '|*.gif|' +
    lsMain.GetString('DialogFilter_BMP', 'Bitmap') + '|*.bmp';

  dlgSaveImage.Filter := lsMain.GetString('DialogFilter_PNG', 'Portable Network Graphics (*.png)') + '|*.png';

  actPalette_SimilarColors.Caption := actShowFormSimilarColors.Caption;

  UpdateColorPaletteCount;
end;


{$endregion SetLang}

{$ENDREGION LANGUAGE}


{$REGION '                         PrepareSkins                           '}

procedure TFormMain.PrepareSkins;
var
  slSkin: TStringList;

  procedure AddSkinFromResource(const ResourceName: string);
  var
    rs: TResourceStream;
    ms: TMemoryStream;
  begin
    if FindResource(hInstance, PChar(ResourceName), RT_RCDATA) = 0 then Exit;
    rs := TResourceStream.Create(hInstance, ResourceName, RT_RCDATA);
    ms := TMemoryStream.Create;
    slSkin := TStringList.Create;
    try
      ms.LoadFromStream(rs);
      ms.Position := 0;
      slSkin.LoadFromStream(ms);
      SkinManager.AddSkin(slSkin);
    finally
      rs.Free;
      ms.Free;
      slSkin.Free;
    end;
  end;

begin
  if FileExists(AP.ConfigDir + '\main.skn') then
  begin
    slSkin := TStringList.Create;
    try
      slSkin.LoadFromFile(AP.ConfigDir + '\main.skn');
      SkinManager.AddSkin(slSkin);
    finally
      slSkin.Free;
    end;
  end
  else AddSkinFromResource('SKMN'); // main

  SkinManager.SetSkin('main');
end;

{$ENDREGION PrepareSkins}


{$region '                      InitAppParams                        '}
procedure TFormMain.InitAppParams;
begin
  AP.ConfigDir := ExtractFileDir(ParamStr(0));
  AP.PalettesDir := AP.ConfigDir + PathDelim + 'palettes';
  AP.PicturesDir := AP.ConfigDir + PathDelim + 'pictures';
  AP.LangDir := AP.ConfigDir + PathDelim + 'lang';
  AP.LanguageIni := '';
  AP.IniFile := AP.ConfigDir + PathDelim + ExtractFileName(ChangeFileExt(ParamStr(0), '.ini'));
  AP.LastPaletteFile := '';
  if not DirectoryExists(AP.PalettesDir) then CreateDir(AP.PalettesDir);
  if DirectoryExists(AP.PalettesDir) then AP.LastPaletteFile := AP.PalettesDir + PathDelim + '_last.colors';

  AP.MonospaceFont.Size := 9;
  AP.MonospaceFont.Style := [];
  AP.MonospaceFont.Color := clBlack;
  AP.MonospaceFont.Name := GetFontName(['Fira Mono', 'Roboto Mono', 'Consolas']);

  AP.MonospaceFont.PosYDelta := 1;

  AP.ShowColorCodesOnTitleBar := True;

  // After pressing F4
  AP.CopyOnCapture := True;
  AP.CopyOnCaptureColorType := ctHtml;
  AP.AskForColorName := False;
  AP.AddNewColorsAtTheTop := True;

  // F3
  AP.CopyColorType := ctHtml;

  // Pixel indicator
  AP.PixelIndicator := piSquare;
  AP.PixelIndicatorColor := RGB(255, 102, 000);

  AP.HtmlExport_AddJson := True;

  AP.ColorRectangle_BorderColor := clBlack;
  AP.ColorRectangle_AutoBorderColor := True;

end;
{$endregion InitAppParams}


{$region '                         InitControls                         '}
procedure TFormMain.InitControls;
var
  bPreview, bImage, b: Boolean;
  xSelected, xCount: integer;
begin
  actStartCapturing.Enabled := not tmColor.Enabled; // = False;
  actStopCapturing.Enabled := tmColor.Enabled; // = True;

  bPreview := AppMode = amPreview;
  bImage := AppMode = amImage;

  actSwitchToImageMode.Checked := bImage;
  actSwitchToPreviewMode.Checked := bPreview;
  actSavePreviewImage.Enabled := bPreview;

  xSelected := clbColors.SelCount;
  xCount := clbColors.Count;
  actPalette_RemoveSelected.Enabled := xSelected > 0;
  actPalette_InvertSelection.Enabled := xCount > 0;
  actPalette_SelectAll.Enabled := (xCount > 0) and (xSelected < xCount);
  actEditColorName.Enabled := xSelected > 0;

  b := xSelected > 0;
  actPalette_UnselectAll.Enabled := b;
  actEditColor.Enabled := b;
  actCopySelectedColors_HTML.Enabled := b;
  actCopySelectedColors_RGB.Enabled := b;
  actCopySelectedColors_RGB_Percent.Enabled := b;
  actCopySelectedColors_HSL_CSS.Enabled := b;
  actCopySelectedColors_HSL_WIN.Enabled := b;
  actCopySelectedColors_CMYK.Enabled := b;
  actCopySelectedColors_PascalHEX.Enabled := b;
  actCopySelectedColors_PascalINT.Enabled := b;
  actCopySelectedColors_CppHex.Enabled := b;
  actPalette_ColorWheel.Enabled := b;
  actPalette_SimilarColors.Enabled := b;

  actCloseImage.Enabled := (CurrentImageFile <> '') and (imgPicture.Picture <> nil);

  actShowHidePalette.Enabled := not Folded;
end;

procedure TFormMain.InitCtrls(Sender: TObject);
begin
  InitControls;
end;
{$endregion InitControls}


{$region '                      ApplyMonospaceFont                    '}
procedure TFormMain.ApplyMonospaceFont;
var
  xd: integer;
  cl: TColor;
begin
  cl := dlblHtml.RightCaptionFont.Color;
  ApplyFontParams(dlblHtml.RightCaptionFont, AP.MonospaceFont);
  dlblHtml.RightCaptionFont.Color := cl; // $00EBC5FC;
  dlblHtml.RightCaptionFont.Style := [fsBold];

  cl := dlblRgb.RightCaptionFont.Color;
  ApplyFontParams(dlblRgb.RightCaptionFont, AP.MonospaceFont);
  dlblRgb.RightCaptionFont.Color := cl; // $00F7CD77;
  dlblRgb.RightCaptionFont.Style := [fsBold];

  ApplyFontParams(dlblRgbPercent.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblHslCss.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblHslWin.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblCmyk.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblPascalHex.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblPascalInt.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblCppHex.RightCaptionFont, AP.MonospaceFont);

  ApplyFontParams(dlblPosX.RightCaptionFont, AP.MonospaceFont);
  ApplyFontParams(dlblPosY.RightCaptionFont, AP.MonospaceFont);

  xd := AP.MonospaceFont.PosYDelta;
  //if AP.MonospaceFont.Size > 8 then
  begin
    dlblHtml.RightCaptionPosDeltaY := xd;
    dlblRgb.RightCaptionPosDeltaY := xd;
    dlblRgbPercent.RightCaptionPosDeltaY := xd;
    dlblHslCss.RightCaptionPosDeltaY := xd;
    dlblHslWin.RightCaptionPosDeltaY := xd;
    dlblPosX.RightCaptionPosDeltaY := xd;
    dlblPosY.RightCaptionPosDeltaY := xd;
    dlblCmyk.RightCaptionPosDeltaY := xd;
    dlblPascalHex.RightCaptionPosDeltaY := xd;
    dlblPascalInt.RightCaptionPosDeltaY := xd;
    dlblCppHex.RightCaptionPosDeltaY := xd;
    //clbColors.Appearance.NumericTextPosDeltaY := xd;
  end;
  clbColors.Appearance.NumericFont.Name := AP.MonospaceFont.Name;
  clbColors.Appearance.NumericFont.Size := AP.MonospaceFont.Size;
end;
{$endregion ApplyMonospaceFont}


{$region '                   UpdateSelectedColorControls                       '}
procedure TFormMain.UpdateSelectedColorControls;
var
  cl, clAvg: TColor;
  s: string;
  cc: TColorClass;
begin
  cl := SelectedColor.Color;
  clAvg := AvgColor(cl, clGray);

  pnColor.Appearance.BackgroundColor := cl;
  pnColor.Appearance.BorderColor := clAvg;

  cc := TColorClass.Create(cl);
  try
    s := cc.HtmlColorStr;
    s := InsertNumSep(s, ' ', 2, 2);
    dlblHtml.RightCaption := s; // + ' ';

    s := ColorToRgbIntStr(cl, 1 {3}, '0', ',');
    //s := cc.RgbIntStr;
    dlblRgb.RightCaption := s; // + ' ';

    s := cc.RgbPercentIntStr;
    s := ColorToRgbPercentStr(cl, 1, '0', ',', False);
    dlblRgbPercent.RightCaption := s;

    dlblHslCss.RightCaption := cc.HslCssStr;
    dlblHslWin.RightCaption := ColorToHslStr(cl, 239, 240, 240, 1, '0', ','); //cc.HslSysStr;
    dlblCmyk.RightCaption := cc.CmykStr;
    dlblPascalHex.RightCaption := cc.PascalHexStr;
    dlblPascalInt.RightCaption := InsertNumSep(cc.PascalIntStr, ' ', 3);
    dlblCppHex.RightCaption := cc.CppHex;

  finally
    cc.Free;
  end;

  UpdateRgbGraph(cl);
  cswCursorColor.SelectedColor := cl;

  if AP.ShowColorCodesOnTitleBar then
  begin
    Caption := AppInfo.FullName + '  ::  HSL ' + dlblHslCss.RightCaption + '  ::  CMYK ' + dlblCmyk.RightCaption;
    //Application.Title := Caption;// dlblHtml.RightCaption;
  end;
end;
{$endregion UpdateSelectedColorControls}


{$region '                      UpdateRgbGraph                      '}
procedure TFormMain.UpdateRgbGraph(const AColor: TColor);
var
  r, g, b: Byte;
  barRed, barGreen, barBlue: TJppPanelHorizontalBar;
  xBarWidth: integer;
  dx: integer;

  procedure SetBarParams(Bar: TJppPanelHorizontalBar; const ColorValue: Byte);
  var
    xValueWidth, rm: integer;
    Percent: Single;
  begin
    Percent := PercentValue(ColorValue, 255);
    xValueWidth := Round(PercentOf(Percent, xBarWidth));

    rm := xBarWidth - xValueWidth + (dx div 2);
    Bar.RightMargin := rm;
    Bar.Visible := xValueWidth > 0;
  end;

begin
  if AColor = clNone then Exit;

  GetRgbChannels(AColor, r, g, b);

  barRed := pnRgbGraph.HorizontalBars[0];
  dx := 2 * barRed.LeftMargin;
  xBarWidth := pnRgbGraph.Width - dx;
  SetBarParams(barRed, r);

  barGreen := pnRgbGraph.HorizontalBars[1];
  SetBarParams(barGreen, g);

  barBlue := pnRgbGraph.HorizontalBars[2];
  SetBarParams(barBlue, b);

  pnRgbGraph.Repaint;
end;
{$endregion UpdateRgbGraph}


{$REGION '                   Load / Save / Assign - Color palette                        '}

procedure TFormMain.actOpenColorPaletteExecute(Sender: TObject);
var
  dlg: TOpenDialog;
  s: string;
begin
  TAppHelper.CheckForm(TFormPaletteEditor);
  dlg := FormPaletteEditor.dlgOpenPalette;
  if not dlg.Execute then Exit;

  dlg.InitialDir := ExtractFileDir(dlg.FileName);

  if not LoadPalette(dlg.FileName, True) then
  begin
    s := lsMain.GetString('ErrCannotLoadPalette', 'Cannot load color palette from file "%s"');
    s := fixs(s, dlg.FileName);
    MsgError(s);
  end;

  InitControls;
end;

procedure TFormMain.actSaveColorPaletteExecute(Sender: TObject);
var
  dlg: TSaveDialog;
begin
  TAppHelper.CheckForm(TFormPaletteEditor);
  dlg := FormPaletteEditor.dlgSavePalette;
  if not dlg.Execute then Exit;
  SaveColorsToPaletteFile(dlg.FileName);
end;

function TFormMain.LoadPalette(const FileName: string; bClearPalette: Boolean): Boolean;
var
  cp: TColorPalette;
  sl: TStringList;
  i: integer;
  fName, Ext: string;
  Item: TSpTBXItem;
begin
  Result := False;
  if FileName = '' then Exit;

  clbColors.BeginUpdate;
  clbColors.Items.BeginUpdate;
  cp := TColorPalette.Create;
  try
    if not cp.TryLoadFromFile(FileName) then Exit;
    AssignColorPalette(cp, bClearPalette);
    Result := True;
  finally
    cp.Free;
    clbColors.Items.EndUpdate;
    clbColors.EndUpdate;
  end;

  mnuPaletteFiles.Caption := FileName;

  sl := TStringList.Create;
  try

    for i := 0 to mnuPaletteFiles.Count - 1 do
    begin
      fName := mnuPaletteFiles.Items[i].Caption;
      if ExtractFileDir(fName) = '' then fName := AP.PalettesDir + PathDelim + fName;
      sl.Add(fName);
    end;

    if sl.IndexOf(FileName) < 0 then
    begin
      Ext := UpperCase(GetFileExt(FileName, True));
      Item := TSpTBXItem.Create(mnuPaletteFiles);
      if Ext = 'COLORS' then Item.ImageIndex := ICON_INDEX_COLORS_FILE
      else if Ext = 'GPL' then Item.ImageIndex := ICON_INDEX_GPL_FILE;
      Item.Caption := FileName;
      Item.OnClick := MenuPaletteFileClick;
      mnuPaletteFiles.Add(Item);
    end;

  finally
    sl.Free;
  end;

  UpdateColorPaletteCount;
end;

procedure TFormMain.AssignColorPalette(const cp: TColorPalette; bClearCurrentPalette: Boolean = True);
var
  cg: TColorGroup;
  x, y: integer;
  cl: TColor;
  ColorName: string;
begin
  clbColors.BeginUpdate;
  try
    if bClearCurrentPalette then clbColors.Items.Clear;
    if cp.ColorGroupCount = 0 then Exit;

    for x := 0 to cp.ColorGroupCount - 1 do
    begin
      cg := cp.ColorGroup[x];
      for y := 0 to cg.Count - 1 do
      begin
        cl := cg.ColorItem[y].Color;
        ColorName := cg.ColorItem[y].Name;
        clbColors.AddColor(cl, ColorName);
      end;
    end;

  finally
    clbColors.EndUpdate;
  end;

  UpdateColorPaletteCount;
end;

procedure TFormMain.SaveColorsToColorPalette(cp: TColorPalette; SelectedOnly: Boolean = False);
begin
  TAppHelper.FillColorPaletteFromListBox(cp, clbColors, SelectedOnly);
end;

procedure TFormMain.ExportColorsToHtmlFile(const FileName: string);
begin
  TAppHelper.SaveListBoxColorsToHtmlFile(FileName, clbColors, False);
end;

procedure TFormMain.SaveColorsToPaletteFile(const FileName: string);
var
  cp: TColorPalette;
begin
  if FileName = '' then Exit;

  cp := TColorPalette.Create;
  try
    SaveColorsToColorPalette(cp);
    cp.SaveToJsonFile(FileName, False);
  finally
    cp.Free;
  end;
end;

procedure TFormMain.UpdateColorPaletteCount;
begin
  if lblColorPalette.Width < 100 then lblColorPalette.Caption := itos(clbColors.Count)
  else lblColorPalette.Caption := lsMain.GetComponentProperty('lblColorPalette', 'Caption', 'Color Palette') + ' (' + itos(clbColors.Count) + ')';
end;


{$ENDREGION Load / Save / Assign - Color palette}



{$REGION '                       INI: Load & Save settings                               '}

procedure TFormMain.SaveSettingsToIni;
var
  Ini: TJppMemIniFile;
  s: string;
  sl: TStringList;
  i: integer;
begin
  Ini := TJppMemIniFile.Create(AP.IniFile, TEncoding.UTF8);
  try

    Ini.CurrentSection := INI_SECTION_MAIN;

    Ini.WriteString('LanguageIni', ExtractFileName(AP.LanguageIni));

    Ini.WriteBool('Folded', Folded);

    Ini.WriteInteger('Left', Left);
    Ini.WriteInteger('Top', Top);
    if not Folded then
    begin
      Ini.WriteInteger('Width', Width);
      Ini.WriteInteger('Height', Height);
    end;
    Ini.WriteInteger('FoldedWidth', FoldedWidth);
    Ini.WriteInteger('FoldedHeight', FoldedHeight);

    Ini.WriteInteger('pnPalette.Width', pnPalette.Width);
    Ini.WriteBool('PaletteVisible', pnPalette.Visible);

    Ini.WriteInteger('ZoomFactor', ZoomFactor);
    Ini.WriteBool('CreatePreview', chCreatePreview.Checked);

    case cbResampler.ItemIndex of
      IND_RESAMPLER_BOX: s := 'Box';
      IND_RESAMPLER_LINEAR: s := 'Linear';
      IND_RESAMPLER_CUBIC: s := 'Cubic';
      IND_RESAMPLER_MITCHELL: s := 'Mitchell';
      IND_RESAMPLER_SPLINE: s := 'Spline';
      IND_RESAMPLER_LANCZOS: s := 'Lanczos';
      else s := '';
    end;
    Ini.WriteString('Resampler', s);

    Ini.WriteBool('OnTop', actSwitchOnTop.Checked);

    Ini.WriteString('MonospaceFont_Name', AP.MonospaceFont.Name);
    Ini.WriteInteger('MonospaceFont_Size', AP.MonospaceFont.Size);
    Ini.WriteInteger('MonospaceFont_PosYDelta', AP.MonospaceFont.PosYDelta);

    Ini.WriteString('dlOpenPictureDir', dlgOpenImage.InitialDir);
    Ini.WriteString('dlgSavePictureDir', dlgSaveImage.InitialDir);

    Ini.WriteBool('CopyOnCapture', AP.CopyOnCapture);
    Ini.WriteString('CopyOnCaptureColorType', ColorTypeToStr(AP.CopyOnCaptureColorType));
    Ini.WriteString('CopyColorType', ColorTypeToStr(AP.CopyColorType));
    Ini.WriteBool('AskForColorName', AP.AskForColorName);
    Ini.WriteBool('AddNewColorsAtTheTop', AP.AddNewColorsAtTheTop);

    s := '';
    if clbColors.Appearance.ShowRgbInt then s := s + 'RGB,';
    if clbColors.Appearance.ShowRgbHex then s := s + 'HTML';
    s := TrimFromEnd(s, ',');
    if s = '' then s := 'None';
    Ini.WriteString('ColorPalette_ColorFormat', s);

    Ini.WriteBool('ColorPalette_ShowNames', clbColors.Appearance.ShowColorName);

    Ini.WriteBool('ShowBottomPanel', pnBottom.Visible);
    Ini.WriteBool('ShowColorCodesPanel', pnColorCodes.Visible);
    Ini.WriteBool('ShowRGBGraph', pnRgbGraph.Visible);

    Ini.WriteInteger('ColorRectangleWidth', clbColors.Appearance.ColorRectangle.Width);
    Ini.WriteBool('ShowColorRectangleBorder', clbColors.Appearance.ColorRectangle.BorderWidth > 0);
    Ini.WriteBool('ColorRectanglesConnected', clbColors.Appearance.ColorRectangle.PaddingTop = 0);
    Ini.WriteBool('ColorRectangle_AutoBorderColor', AP.ColorRectangle_AutoBorderColor);
    Ini.WriteColor('ColorRectangle_BorderColor', AP.ColorRectangle_BorderColor);
    //if clbColors.Appearance.ColorRectangle.BorderMode = bmSimpleColor then


    Ini.WriteInteger('ColorPaletteRowHeight', clbColors.ItemHeight);
    Ini.WriteString('ColorPaletteBgColor', ColorToHtmlColorStr(clbColors.Color));
    Ini.WriteString('ColorPaletteFontColor', ColorToHtmlColorStr(clbColors.Font.Color));
    Ini.WriteBool('ShowColorPaletteToolbar', tbColorPalette.Visible);

    Ini.WriteInteger('CapturingInterval', tmColor.Interval);

    Ini.WriteBool('ShowColorCodesOnTitleBar', AP.ShowColorCodesOnTitleBar);

    case AP.PixelIndicator of
      piSquare: s := 'Square';
      piSmallCross: s := 'SmallCross';
      piMediumCross: s := 'MediumCross';
      piFullCross: s := 'FullCross';
    else
      s := 'Square';
    end;
    Ini.WriteString('PixelIndicator', s);

    Ini.WriteString('PixelIndicatorColor', ColorToHtmlColorStr(AP.PixelIndicatorColor, '#'));

    Ini.WriteBool('HtmlExport_AddJson', AP.HtmlExport_AddJson);

    // -------------- Quick Access: The last opened files ----------------
    sl := TStringList.Create;
    try
      GetLastOpenedFileList(sl);
      for i := 0 to sl.Count - 1 do
      begin
        if Trim(sl[i]) = '' then Continue;
        Ini.WriteString(INI_SECTION_RECENTLY_OPENED, itos(i), sl[i]);
      end;
    finally
      sl.Free;
    end;

    try
      Ini.UpdateFile;
    except
      // Do not display exceptions when the INI file is on a read-only medium
    end;

  finally
    Ini.Free;
  end;
end;

procedure TFormMain.LoadSettingsFromIni;
var
  Ini: TJppMemIniFile;
  Section, s, Ext: string;
  bUD: Boolean;
  x, i: integer;
  b: Boolean;
  ColorType: TColorType;
  cl: TColor;
  sl: TStringList;
  Item: TSpTBXItem;
begin
  if not FileExists(AP.IniFile) then Exit;

  bUD := bUpdatingControls;
  try

    Ini := TJppMemIniFile.Create(AP.IniFile, TEncoding.UTF8);
    try

      Section := INI_SECTION_MAIN;
      Ini.CurrentSection := INI_SECTION_MAIN;

      actEsc.Enabled := Ini.ReadBool(Section, 'EscExit', False);

      //if AP.LanguageIni = '' then
      begin
        s := AP.LangDir + PathDelim + Ini.ReadString(Section, 'LanguageIni', AP.LanguageIni);
        if FileExists(s) then AP.LanguageIni := s;
      end;
      //if Assigned(LangMgr) and (FileExists(AP.LanguageIni)) then LangMgr.SetActiveLanguageByIniFileName(AP.LanguageIni); // <-- moved to DPR
      //ShowMessage(AP.LanguageIni);

      x := Ini.ReadInteger(Section, 'Left', Left);
      x := GetIntInRange(x, -60, Screen.Width - 200);
      Left := x;

      x := Ini.ReadInteger(Section, 'Top', Top);
      x := GetIntInRange(x, 0, Screen.Height - 200);
      Top := x;

      b := Ini.ReadBool(Section, 'CreatePreview', actCreatePreview.Checked);
      actCreatePreview.Checked := b;
      bCaptureImg := b;

      x := Ini.ReadInteger(Section, 'Width', Width);
      x := GetIntInRange(x, 100, Screen.Width);
      Width := x;

      x := Ini.ReadInteger(Section, 'Height', Height);
      x := GetIntInRange(x, 100, Screen.Height);
      Height := x;

      x := Ini.ReadInteger(Section, 'pnPalette.Width', pnPalette.Width);
      x := GetIntInRange(x, pnPalette.Constraints.MinWidth, 500);
      pnPalette.Width := x;

      b := Ini.ReadBool('PaletteVisible', pnPalette.Visible);
      if not b then actShowHidePalette.Execute;
      actShowHidePalette.Checked := pnPalette.Visible;

      x := Ini.ReadInteger(Section, 'ZoomFactor', ZoomFactor);
      if x < 1 then x := 1;
      if x > 1 then
      begin
        if Odd(x) then x := x + 1;
        x := GetIntInRange(x, ZoomMin, ZoomMax);
      end;
      ZoomFactor := x;
      //SetZoomCombo(ZoomFactor);

      s := Ini.ReadString(Section, 'Resampler', 'Box');
      x := ResamplerStrToIndex(s);
      x := GetIntInRange(x, 0, cbResampler.Items.Count - 1);
      cbResampler.ItemIndex := x;

      b := Ini.ReadBool(Section, 'OnTop', True);
      actSwitchOnTop.Checked := b;
      if b then FormStyle := fsStayOnTop
      else FormStyle := fsNormal;

      s := Ini.ReadString(Section, 'MonospaceFont_Name', AP.MonospaceFont.Name);
      if not FontExists(s, True) then s := AP.MonospaceFont.Name;
      AP.MonospaceFont.Name := s;

      x := Ini.ReadInteger(Section, 'MonospaceFont_Size', AP.MonospaceFont.Size);
      x := GetIntInRange(x, 7, 9);
      AP.MonospaceFont.Size := x;

      x := Ini.ReadInteger(Section, 'MonospaceFont_PosYDelta', AP.MonospaceFont.PosYDelta);
      x := GetIntInRange(x, -2, 2);
      AP.MonospaceFont.PosYDelta := x;

      ApplyMonospaceFont;

      s := Ini.ReadString(Section, 'dlOpenPictureDir', '');
      if DirectoryExists(s) then dlgOpenImage.InitialDir := s;

      s := Ini.ReadString(Section, 'dlgSavePictureDir', '');
      if DirectoryExists(s) then dlgSaveImage.InitialDir := s;

      AP.CopyOnCapture := Ini.ReadBool(Section, 'CopyOnCapture', AP.CopyOnCapture);

      ColorType := StrToColorType(Ini.ReadString(Section, 'CopyOnCaptureColorType', 'HTML'));
      if ColorType = ctUnknown then ColorType := ctHtml;
      AP.CopyOnCaptureColorType := ColorType;

      ColorType := StrToColorType(Ini.ReadString(Section, 'CopyColorType', 'HTML'));
      if ColorType = ctUnknown then ColorType := ctHtml;
      AP.CopyColorType := ColorType;

      AP.AskForColorName := Ini.ReadBool(Section, 'AskForColorName', AP.AskForColorName);
      AP.AddNewColorsAtTheTop := Ini.ReadBool(Section, 'AddNewColorsAtTheTop', AP.AddNewColorsAtTheTop);

      s := Ini.ReadString(Section, 'ColorPalette_ColorFormat', 'HTML');
      s := UpperCase(RemoveAll(s, ' '));
      clbColors.Appearance.ShowRgbHex := Pos('HTML', s) > 0;
      clbColors.Appearance.ShowRgbInt := Pos('RGB', s) > 0;
      //if (not clbColors.Appearance.ShowRgbHex) and (not clbColors.Appearance.ShowRgbInt) then clbColors.Appearance.ShowRgbInt := True;

      clbColors.Appearance.ShowColorName := Ini.ReadBool(Section, 'ColorPalette_ShowNames', clbColors.Appearance.ShowColorName);

      pnBottom.Visible := Ini.ReadBool(Section, 'ShowBottomPanel', pnBottom.Visible);
      pnColorCodes.Visible := Ini.ReadBool(Section, 'ShowColorCodesPanel', pnColorCodes.Visible);
      pnRgbGraph.Visible := Ini.ReadBool(Section, 'ShowRGBGraph', pnRgbGraph.Visible);

      // ------------- Color rectangle ----------------
      x := Ini.ReadInteger(Section, 'ColorRectangleWidth', clbColors.Appearance.ColorRectangle.Width);
      x := GetIntInRange(x, 10, 256);
      clbColors.Appearance.ColorRectangle.Width := x;

      b := Ini.ReadBool(Section, 'ShowColorRectangleBorder', clbColors.Appearance.ColorRectangle.BorderWidth > 0);
      if b then x := 1 else x := 0;
      clbColors.Appearance.ColorRectangle.BorderWidth := x;

      b := Ini.ReadBool(Section, 'ColorRectanglesConnected', clbColors.Appearance.ColorRectangle.PaddingTop = 0);
      if b then x := 0 else x := 1;
      clbColors.Appearance.ColorRectangle.PaddingTop := x;
      clbColors.Appearance.ColorRectangle.PaddingBottom := x;

      clbColors.Appearance.ColorRectangle.HideTopBorder := clbColors.Appearance.ColorRectangle.PaddingTop = 0;

      AP.ColorRectangle_BorderColor := Ini.ReadColor('ColorRectangle_BorderColor', AP.ColorRectangle_BorderColor);
      if Ini.ReadBool('ColorRectangle_AutoBorderColor', True) then
      begin
        AP.ColorRectangle_AutoBorderColor := True;
        clbColors.Appearance.ColorRectangle.BorderColor := clGray;
        clbColors.Appearance.ColorRectangle.BorderMode := bmAverageColor;
      end
      else
      begin
        AP.ColorRectangle_AutoBorderColor := False;
        clbColors.Appearance.ColorRectangle.BorderColor := AP.ColorRectangle_BorderColor;
        clbColors.Appearance.ColorRectangle.BorderMode := bmSimpleColor;
      end;


      x := Ini.ReadInteger(Section, 'ColorPaletteRowHeight', clbColors.ItemHeight);
      x := GetIntInRange(x, 10, 64);
      clbColors.ItemHeight := x;

      s := ColorToHtmlColorStr(clbColors.Color);
      s := Ini.ReadString(Section, 'ColorPaletteBgColor', s);
      if TryHtmlStrToColor(s, cl) then clbColors.Color := cl;

      s := ColorToHtmlColorStr(clbColors.Font.Color);
      s := Ini.ReadString(Section, 'ColorPaletteFontColor', s);
      if TryHtmlStrToColor(s, cl) then
      begin
        clbColors.Font.Color := cl;
        clbColors.Appearance.NumericFont.Color := cl;
      end;

      tbColorPalette.Visible := Ini.ReadBool(Section, 'ShowColorPaletteToolbar', tbColorPalette.Visible);


      Folded := Ini.ReadBool(Section, 'Folded', Folded);

      x := Ini.ReadInteger(Section, 'FoldedHeight', FoldedHeight);
      x := GetIntInRange(x, MinFoldedHeight, MaxFoldedHeight);
      FoldedHeight := x;

      x := Ini.ReadInteger(Section, 'FoldedWidth', FoldedWidth);
      x := GetIntInRange(x, MinFoldedWidth, MaxFoldedWidth);
      FoldedWidth := x;

      x := Ini.ReadInteger(Section, 'CapturingInterval', tmColor.Interval);
      x := GetIntInRange(x, CAPTURING_INTERVAL_MIN, CAPTURING_INTERVAL_MAX);
      tmColor.Interval := x;

      AP.ShowColorCodesOnTitleBar := Ini.ReadBool(Section, 'ShowColorCodesOnTitleBar', AP.ShowColorCodesOnTitleBar);

      s := Ini.ReadString(Section, 'PixelIndicator', 'Square');
      AP.PixelIndicator :=
        TAppHelper.GetValueByID<TPixelIndicator>(s, ['Square', 'SmallCross', 'MediumCross', 'FullCross'], [piSquare, piSmallCross, piMediumCross, piFullCross], piSquare, True);

      s := Ini.ReadString(Section, 'PixelIndicatorColor', '#FF6600');
      TryGetColor(s, AP.PixelIndicatorColor);

      AP.HtmlExport_AddJson := Ini.ReadBool(Section, 'HtmlExport_AddJson', AP.HtmlExport_AddJson);

      // ------------- Quick Access: Last opened files -------------
      Section := INI_SECTION_RECENTLY_OPENED;
      if not Ini.SectionExists(Section) then Exit;
      sl := TStringList.Create;
      try
        Ini.ReadSection(Section, sl);
        for i := 0 to sl.Count - 1 do
        begin
          s := Ini.ReadString(Section, sl[i], '');
          if s = '' then Continue;
          if not FileExists(s) then Continue;
          if RecentFileAlreadyOnList(s) then Continue;
          Item := TSpTBXItem.Create(mnuPaletteFiles);
          Item.Caption := s;
          Item.OnClick := MenuPaletteFileClick;
          Ext := UpperCase(GetFileExt(s, True));
          if Ext = 'COLORS' then Item.ImageIndex := ICON_INDEX_COLORS_FILE
          else if Ext = 'GPL' then Item.ImageIndex := ICON_INDEX_GPL_FILE;
          mnuPaletteFiles.Add(Item);
        end;
      finally
        sl.Free;
      end;

    finally
      Ini.Free;
    end;

  finally
    bUpdatingControls := bUD;
  end;

end;



{$ENDREGION INI: Load & Save settings}




function TFormMain.ResamplerStrToIndex(s: string): integer;
begin
  Result := -1;
  s := UpperCase(s);
  s := RemoveAll(s, ' ');
  if s = 'BOX' then Result := IND_RESAMPLER_BOX
  else if s = 'LINEAR' then Result := IND_RESAMPLER_LINEAR
  else if s = 'CUBIC' then Result := IND_RESAMPLER_CUBIC
  else if s = 'MITCHELL' then Result := IND_RESAMPLER_MITCHELL
  else if s = 'SPLINE' then Result := IND_RESAMPLER_SPLINE
  else if s = 'LANCZOS' then Result := IND_RESAMPLER_LANCZOS;
end;

//procedure TFormMain.SetZoomCombo(const xZoomFactor: integer);
//var
//  s: string;
//  i: integer;
//  buc: Boolean;
//begin
//  s := xZoomFactor.ToString + 'x';
//  buc := bUpdatingControls;
//  bUpdatingControls := True;
//  try
//    for i := 0 to cbZoom.Items.Count - 1 do
//      if LowerCase(cbZoom.Items[i]) = s then
//      begin
//        cbZoom.ItemIndex := i;
//        Break;
//      end;
//  finally
//    bUpdatingControls := buc;
//  end;
//  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
//end;


procedure TFormMain.AddCurrentColorToMainList;
var
  cl: TColor;
  sName: string;
begin
  cl := pnColor.Appearance.BackgroundColor;
  sName := '';

  if AP.AskForColorName then
  begin
    TAppHelper.CheckForm(TFormEditColorName);
    FormEditColorName.ColorSwatchColor := cl;
    FormEditColorName.ColorName := '';
    FormEditColorName.ActiveControl := FormEditColorName.edColorName;
    FormEditColorName.ShowModal;
    FormEditColorName.ActiveControl := FormEditColorName.edColorName;
    if FormEditColorName.ModalResult <> mrOk then Exit;
    sName := FormEditColorName.ColorName;
  end;

  if AP.AddNewColorsAtTheTop then
  begin
    clbColors.InsertColor(0, cl, sName);
    clbColors.ScrollToFirst;
  end
  else
  begin
    clbColors.AddColor(cl, sName);
    clbColors.ScrollToLast;
  end;

end;


procedure TFormMain.actCaptureColorExecute(Sender: TObject);
var
  cl: TColor;
  s: string;
begin
  AddCurrentColorToMainList;

  cl := pnColor.Appearance.BackgroundColor;
  if AP.CopyOnCapture then
  begin
    s := ColorToStrEx(cl, AP.CopyOnCaptureColorType);
    Clipboard.AsText := s;
  end;

  cswMiniLast.SelectedColor := cl;
  UpdateColorPaletteCount;
end;


procedure TFormMain.actClearPaletteExecute(Sender: TObject);
var
  s: string;
begin
  s := lsMain.GetString('ClearPaletteQuery', 'Are you sure you want to clear the color palette?');
  if MessageBox(Handle, PChar(s), PChar(AppInfo.Name), MB_YESNO or MB_ICONQUESTION) = ID_YES then clbColors.Clear;
  UpdateColorPaletteCount;
  InitControls;
end;

procedure TFormMain.actCreatePreviewExecute(Sender: TObject);
begin
  bCaptureImg := not bCaptureImg;
  actCreatePreview.Checked := bCaptureImg;
  chCreatePreview.Checked := bCaptureImg;
  if bCaptureImg then UpdatePreviewImg;
end;


// F3 - Copy color to the clipboard
procedure TFormMain.actCopyColorExecute(Sender: TObject);
var
  cl: TColor;
  s: string;
begin
  cl := PixelColor(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  s := ColorToStrEx(cl, AP.CopyColorType);
  Clipboard.AsText := s;
end;


procedure TFormMain.actEditColorExecute(Sender: TObject);
var
  cl: TColor;
  fs: TFormStyle;
  xInd: integer;
begin
  if clbColors.Count = 0 then Exit;

  if clbColors.ItemIndex < 0 then
  begin
    xInd := 0;
    clbColors.ItemIndex := xInd;
  end;
  xInd := clbColors.ItemIndex;
  if not clbColors.IsColorItem(xInd) then Exit;

  TAppHelper.CheckForm(TFormEditColor);

  cl := clbColors.SelectedColor;
  FormEditColor.SetCurrentColor(cl);

  fs := FormStyle;
  try
    Self.FormStyle := fsNormal;
    FormEditColor.ShowModal;
    if FormEditColor.ModalResult <> mrOk then Exit;

    cl := FormEditColor.GetCurrentColor;
    clbColors.SetItemColor(xInd, cl);
    clbColors.Selected[xInd] := True;

  finally
    FormStyle := fs;
  end;
end;

procedure TFormMain.actEditPaletteExecute(Sender: TObject);
var
  cp: TColorPalette;
begin
  TAppHelper.CheckForm(TFormPaletteEditor);
  cp := TColorPalette.Create;
  try
    SaveColorsToColorPalette(cp);
    FormPaletteEditor.AddColorsFromColorPalette(cp, True);
    FormPaletteEditor.vst.SortTree(COL_NO, sdAscending);
  finally
    cp.Free;
  end;

  FormPaletteEditor.vstUpdateFilterStats;
  FormPaletteEditor.Show;
  FormPaletteEditor.SelectFirst;
  FormPaletteEditor.vst.SetFocus;
end;


{$region '                   Export palette: GPL, HTML                         '}
procedure TFormMain.actExportPaletteToGPLExecute(Sender: TObject);
var
  dlg: TSaveDialog;
begin
  TAppHelper.CheckForm(TFormPaletteEditor);
  dlg := FormPaletteEditor.dlgExport;
  dlg.DefaultExt := '.gpl';
  dlg.Filter := 'GIMP palette files (*.gpl)|*.gpl';
  if not dlg.Execute then Exit;
  TAppHelper.SaveListBoxColorsToGPLFile(dlg.FileName, clbColors, AppInfo.FullName + ' Color Palette');
end;

procedure TFormMain.actExportPaletteToHtmlExecute(Sender: TObject);
var
  dlg: TSaveDialog;
begin
  TAppHelper.CheckForm(TFormPaletteEditor);
  dlg := FormPaletteEditor.dlgExport;
  dlg.DefaultExt := '.html';
  dlg.Filter := 'HTML files (*.html)|*.html';
  if not dlg.Execute then Exit;
  dlg.InitialDir := ExtractFileDir(dlg.FileName);
  TAppHelper.SaveListBoxColorsToHtmlFile(dlg.FileName, clbColors, AP.HtmlExport_AddJson);
end;
{$endregion Export palette: GPL, HTML}


procedure TFormMain.actSavePreviewImageExecute(Sender: TObject);
var
  Png: TPngImage;
begin
  // if not dlgSaveImage.Execute then Exit;
  Png := TPngImage.Create;
  try
    Png.Assign(img.Picture.Bitmap);
    if not dlgSaveImage.Execute then Exit;
    Png.SaveToFile(dlgSaveImage.FileName);
    dlgSaveImage.InitialDir := ExtractFileDir(dlgSaveImage.FileName);
  finally
    Png.Free;
  end;
end;

procedure TFormMain.actEditColorNameExecute(Sender: TObject);
var
  ItemData: TJppColorListBoxItemData;
  xInd: integer;
begin
  xInd := clbColors.ItemIndex;
  if xInd < 0 then Exit;
  if not clbColors.IsColorItem(xInd) then Exit;

  TAppHelper.CheckForm(TFormEditColorName);
  clbColors.GetItemInfo(xInd, ItemData);
  FormEditColorName.ColorSwatchColor := ItemData.Color;
  FormEditColorName.ColorName := ItemData.Name;
  FormEditColorName.ActiveControl := FormEditColorName.edColorName;

  FormEditColorName.ShowModal;

  if FormEditColorName.ModalResult <> mrOk then Exit;
  clbColors.SetItemName(xInd, FormEditColorName.ColorName);
  clbColors.Selected[xInd] := True;
end;

procedure TFormMain.actPalette_ColorWheelExecute(Sender: TObject);
var
  ItemData: TJppColorListBoxItemData;
  xInd: integer;
begin
  xInd := clbColors.ItemIndex;
  if xInd < 0 then Exit;
  if not clbColors.IsColorItem(xInd) then Exit;

  TAppHelper.CheckForm(TFormColorWheel);
  clbColors.GetItemInfo(xInd, ItemData);
  FormColorWheel.CurrentColor := ItemData.Color;

  FormColorWheel.Show;
end;


{$region '                       Image (imgPicture) related                         '}

procedure TFormMain.actOpenImageExecute(Sender: TObject);
begin
  if not dlgOpenImage.Execute then Exit;
  dlgOpenImage.InitialDir := ExtractFileDir(dlgOpenImage.FileName);
  actSwitchToImageMode.Execute;
  PerformOpenImage(dlgOpenImage.FileName);
end;

procedure TFormMain.actCloseImageExecute(Sender: TObject);
begin
  imgPicture.Picture := nil;
  imgPicture.Width := 10;
  imgPicture.Height := 10;
  //sbox.Realign;
  CurrentImageFile := '';
  lblCurrentImage.Caption := '';
  InitControls;
end;

procedure TFormMain.PerformOpenImage(const FileName: string);
var
  Bmp: TBitmap;
  rt: TResamplerType;
  Picture: TPicture;
begin
  sbox.HorzScrollBar.Position := 0;
  sbox.VertScrollBar.Position := 0;
  lblCurrentImage.Caption := '';

  if not FileExists(FileName) then Exit;

  Picture := TPicture.Create;
  try

    Picture.LoadFromFile(FileName);

    if ZoomFactor > 1 then
    begin

      Bmp := TBitmap.Create;
      try
        Bmp.Width := Picture.Graphic.Width;
        Bmp.Height := Picture.Graphic.Height;
        //        Bmp.PixelFormat := pf32bit;
        //        Bmp.Transparent := True;
        Bmp.Assign(Picture.Graphic);

        case cbResampler.ItemIndex of
          IND_RESAMPLER_BOX: rt := rtBox;
          IND_RESAMPLER_LINEAR: rt := rtLinear;
          IND_RESAMPLER_CUBIC: rt := rtCubic;
          IND_RESAMPLER_MITCHELL: rt := rtMitchell;
          IND_RESAMPLER_SPLINE: rt := rtSpline;
          IND_RESAMPLER_LANCZOS: rt := rtLanczos;
          else rt := rtBox;
        end;
        BitmapResize(Bmp, Bmp.Width * ZoomFactor, Bmp.Height * ZoomFactor, rt);

        imgPicture.Picture.Assign(Bmp);
        imgPicture.Width := Bmp.Width;
        imgPicture.Height := Bmp.Height;

      finally
        Bmp.Free;
      end;

    end

    else

    begin
      imgPicture.Width := Picture.Width;
      imgPicture.Height := Picture.Height;
      imgPicture.Picture.Assign(Picture);
    end;

  finally
    Picture.Free;
  end;

  CurrentImageFile := FileName;
  lblCurrentImage.Caption := '  ' + FileName;
  CenterImg;
  InitControls;
  //sbox.Realign;
end;

procedure TFormMain.CenterImg;
var
  xLeft, xTop: integer;
begin
  xLeft := 0;
  if imgPicture.Width < sbox.Width then
  begin
    xLeft := (sbox.Width - imgPicture.Width) div 2;
  end;

  xTop := 0;
  if imgPicture.Height < sbox.Height then
  begin
    xTop := (sbox.Height - imgPicture.Height) div 2;
  end;

  imgPicture.Left := xLeft;
  imgPicture.Top := xTop;
end;

{$endregion Image (imgPicture) related}


{$REGION '                              Create Preview Image                                  '}

procedure TFormMain.CreatePreviewImage(const Image: TImage);
var
  Bmp: TBitmap;
  Canv: TCanvas;
  RectSrc, RectDest: TRect;
  xLeft, xTop, xRight, xBottom: integer;
  xImgWidth, xImgHeight, xHalfImgWidth, xHalfImgHeight: integer;
  cx, cy: integer;
  clPointer: TColor;
  xFactor, xd: integer;
  rt: FCP.Bitmap.TResamplerType;
  xHalfBmpWidth, xHalfBmpHeight, dx, dy: integer;
begin

  xFactor := ZoomFactor;

  Canv := TCanvas.Create;
  Bmp := TBitmap.Create;
  Canv.Handle := GetWindowDC(GetDesktopWindow);
  try

    xImgWidth := Image.Width;
    xImgHeight := Image.Height;
    xHalfImgWidth := xImgWidth div 2;
    xHalfImgHeight := xImgHeight div 2;

    cx := Mouse.CursorPos.x;
    cy := Mouse.CursorPos.y;

    xLeft := cx - xHalfImgWidth div xFactor;
    xRight := cx + xHalfImgWidth div xFactor;
    xTop := cy - xHalfImgHeight div xFactor;
    xBottom := cy + xHalfImgHeight div xFactor;

    if lblImageRect.Visible then
        lblImageRect.Caption := '(' + itos(xLeft) + ',' + itos(xTop) + ') (' + itos(xRight) + ',' + itos(xBottom) + ')' + ENDL + 'W: ' +
        itos(xRight - xLeft) + '   H: ' + itos(xBottom - xTop);
    //'  IMAGE RECT:   Left: ' + xLeft.ToString + '  Top: ' + xTop.ToString + '  Right: ' + xRight.ToString + '  Bottom: ' + xBottom.ToString;

    RectSrc := Rect(xLeft, xTop, xRight, xBottom);

    RectDest := Rect(0, 0, RectSrc.Width, RectSrc.Height);
    Bmp.Width := RectSrc.Width;
    Bmp.Height := RectSrc.Height;

    // -------- Background -----------
    with Bmp.Canvas do
    begin
      Brush.Color := RGB3(31);
      Pen.Style := psClear;
      Brush.Style := bsSolid;
      Rectangle(0, 0, Bmp.Width, Bmp.Height);
      Brush.Color := RGB3(34);
      Brush.Style := bsDiagCross;
      Rectangle(0, 0, Bmp.Width, Bmp.Height);
      CopyRect(RectDest, Canv, RectSrc);

      Brush.Style := bsCross;
      Rectangle(0, 0, Bmp.Width, Bmp.Height);
      CopyRect(RectDest, Canv, RectSrc);
    end;

    // ----------- Bitmap -------------
    case cbResampler.ItemIndex of
      IND_RESAMPLER_BOX: rt := rtBox;
      IND_RESAMPLER_LINEAR: rt := rtLinear;
      IND_RESAMPLER_CUBIC: rt := rtCubic;
      IND_RESAMPLER_MITCHELL: rt := rtMitchell;
      IND_RESAMPLER_SPLINE: rt := rtSpline;
      IND_RESAMPLER_LANCZOS: rt := rtLanczos;
      else rt := rtBox;
    end;
    BitmapResize(Bmp, Image.Width, Image.Height, rt);


    // -------------- Pixel indicator ----------------
    xd := xFactor;
    clPointer := AP.PixelIndicatorColor;
    with Bmp.Canvas do
    begin

      // --------- Square ----------
      Pen.Color := clPointer;
      Pen.Style := psSolid;
      Brush.Style := bsClear;
      xHalfBmpWidth := Bmp.Width div 2;
      xHalfBmpHeight := Bmp.Height div 2;
      Rectangle(xHalfBmpWidth - 1, xHalfBmpHeight - 1, xHalfBmpWidth + xd + 1, xHalfBmpHeight + xd + 1);

      if AP.PixelIndicator <> piSquare then
      begin

      // ---------- Lines -----------
      Pen.Style := psDot;
      Pen.Color := clPointer;

      case AP.PixelIndicator of
        piSmallCross:
          begin
            dx := PIXEL_INDICATOR_SMALL_CROSS;
            dy := dx;
          end;
        piMediumCross:
          begin
            dx := PIXEL_INDICATOR_MEDIUM_CROSS;
            dy := dx;
          end;
        piFullCross:
          begin
            dx := xHalfBmpWidth;
            dy := xHalfBmpHeight;
          end;
      else
        dx := 30;
        dy := dx;
      end;



      // linia pionowa u góry
      MoveTo(xHalfBmpWidth + (xd div 2), xHalfBmpHeight - 2);
      LineTo(xHalfBmpWidth + (xd div 2), xHalfBmpHeight - dy);

      MoveTo(xHalfBmpWidth + (xd div 2) - 1, xHalfBmpHeight - 2);
      LineTo(xHalfBmpWidth + (xd div 2) - 1, xHalfBmpHeight - dy);

      // linia pionowa u do³u
      MoveTo(xHalfBmpWidth + (xd div 2) - 1, xHalfBmpHeight + (xd) + 1);
      LineTo(xHalfBmpWidth + (xd div 2) - 1, xHalfBmpHeight + (xd) + 1 + dy);

      MoveTo(xHalfBmpWidth + (xd div 2), xHalfBmpHeight + (xd) + 1);
      LineTo(xHalfBmpWidth + (xd div 2), xHalfBmpHeight + (xd) + 1 + dy);

      // linia pozioma z lewej
      MoveTo(xHalfBmpWidth - 2, xHalfBmpHeight + (xd div 2));
      LineTo(xHalfBmpWidth - 2 - dx, xHalfBmpHeight + (xd div 2));

      MoveTo(xHalfBmpWidth - 2, xHalfBmpHeight + (xd div 2) - 1);
      LineTo(xHalfBmpWidth - 2 - dx, xHalfBmpHeight + (xd div 2) - 1);

      // linia pozioma z prawej
      MoveTo(xHalfBmpWidth + xd + 1, xHalfBmpHeight + (xd div 2));
      LineTo(xHalfBmpWidth + xd + 1 + dx, xHalfBmpHeight + (xd div 2));

      MoveTo(xHalfBmpWidth + xd + 1, xHalfBmpHeight + (xd div 2) - 1);
      LineTo(xHalfBmpWidth + xd + 1 + dx, xHalfBmpHeight + (xd div 2) - 1);
      end;

    end; // with Bmp.Canvas



    Image.Picture.Assign(Bmp);

  finally
    ReleaseDC(0, Canv.Handle);
    Bmp.Free;
    Canv.Free;
  end;
end;

procedure TFormMain.UpdatePreviewImg;
begin
  if pnMini.Visible then CreatePreviewImage(imgMini);
  if ntb.ActivePage <> 'Preview' then Exit;
  CreatePreviewImage(img);
end;

{$ENDREGION Create Preview Image}


procedure TFormMain.actSwitchOnTopExecute(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  if FormStyle = fsStayOnTop then FormStyle := fsNormal
  else FormStyle := fsStayOnTop;
  actSwitchOnTop.Checked := FormStyle = fsStayOnTop;
  //chSwitchOnTop.Checked := FormStyle = fsStayOnTop;

  SwitchFormTop(FormPaletteEditor);
  SwitchFormTop(FormAbout);
  SwitchFormTop(FormEditColor);
  SwitchFormTop(FormOptions);
  SwitchFormTop(FormAutoCapture);
  SwitchFormTop(FormPixelColor);
  SwitchFormTop(FormSortBy);
  SwitchFormTop(FormRandomColors);
  SwitchFormTop(FormGradientColors);
  SwitchFormTop(FormEditColorName);
  SwitchFormTop(FormColorMixer);
  SwitchFormTop(FormColorWheel);
  SwitchFormtop(FormSimilarColors);
end;


procedure TFormMain.tmColorTimer(Sender: TObject);
var
  bUpdatePreview: Boolean;
  x, y: integer;
  cl: TColor;
begin
  x := Mouse.CursorPos.x;
  y := Mouse.CursorPos.y;

  if (LastCursorPosX = x) and (LastCursorPosY = y) then Exit;

  cl := PixelColor(x, y);
  bUpdatePreview := ((LastCursorPosX <> x) or (LastCursorPosY <> y)) and bCaptureImg;
  LastCursorPosX := x;
  LastCursorPosY := y;

  dlblPosX.RightCaption := IntToStrEx(x);
  dlblPosY.RightCaption := IntToStrEx(y);

  SelectedColor.Color := cl;
  SelectedColor.PosX := x;
  SelectedColor.PosY := y;
  UpdateSelectedColorControls;

  if bUpdatePreview then UpdatePreviewImg; //pnRgb.Appearance.BackgroundColor := cl;
end;


{$region '                        ZOOM related                        '}
procedure TFormMain.IniZoomPopup;
var
  i: integer;
  Item: TSpTBXItem;
begin
  for i := 0 to popupImg.Items.Count - 1 do
  begin
    if not(popupImg.Items[i] is TSpTBXItem) then Continue;
    Item := popupImg.Items[i] as TSpTBXItem;
    Item.Checked := Item.Tag = ZoomFactor;
  end;
end;

procedure TFormMain.InitZoomMenu;
var
  i: integer;
  Item: TSpTBXItem;
begin
  for i := 0 to mnuZoom.Count - 1 do
  begin
    if not(mnuZoom.Items[i] is TSpTBXItem) then Continue;
    Item := mnuZoom.Items[i] as TSpTBXItem;
    Item.Checked := Item.Tag = ZoomFactor;
  end;
end;

procedure TFormMain.mnuZoomPopup(Sender: TTBCustomItem; FromLink: Boolean);
begin
  InitZoomMenu;
end;

procedure TFormMain.actZoom_10Execute(Sender: TObject);
begin
  ZoomFactor := 10;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_14Execute(Sender: TObject);
begin
  ZoomFactor := 14;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_18Execute(Sender: TObject);
begin
  ZoomFactor := 18;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_1Execute(Sender: TObject);
begin
  ZoomFactor := 1;
  //SetZoomCombo(ZoomFactor);
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_22Execute(Sender: TObject);
begin
  ZoomFactor := 22;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_26Execute(Sender: TObject);
begin
  ZoomFactor := 26;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_2Execute(Sender: TObject);
begin
  ZoomFactor := 2;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_30Execute(Sender: TObject);
begin
  ZoomFactor := 30;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_4Execute(Sender: TObject);
begin
  ZoomFactor := 4;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_6Execute(Sender: TObject);
begin
  ZoomFactor := 6;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;

procedure TFormMain.actZoom_8Execute(Sender: TObject);
begin
  ZoomFactor := 8;
  if bCaptureImg then UpdatePreviewImg;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
end;
{$endregion ZOOM related}


procedure TFormMain.actSwitchToImageModeExecute(Sender: TObject);
begin
  pnPreviewTop.Hide;
  pnImageTop.Show;
  ntb.ActivePage := 'Image';
  AppMode := amImage;
  lblImageRect.Visible := False;
  InitControls;
end;

procedure TFormMain.actSwitchToPreviewModeExecute(Sender: TObject);
begin
  pnImageTop.Hide;
  pnPreviewTop.Show;
  ntb.ActivePage := 'Preview';
  AppMode := amPreview;
  lblImageRect.Visible := True;
  InitControls;
end;

procedure TFormMain.cbResamplerChange(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  if AppMode = amImage then PerformOpenImage(CurrentImageFile);
  TAppHelper.CheckForm(TFormOptions);
  if Assigned(FormOptions) and FormOptions.Visible then
  begin
    bUpdatingControls := True;
    try
      FormOptions.cbResampler.ItemIndex := cbResampler.ItemIndex;
    finally
      bUpdatingControls := False;
    end;
  end;
end;

procedure TFormMain.dropFileDropFiles(Sender: TObject);
var
  s, sErr, fName: string;
  i: integer;
  sl: TStringList;
begin
  if dropFile.FileName = '' then Exit;
  if dropFile.Count <= 0 then Exit;

  fName := dropFile.Files[0];
  if IsSupportedGraphicFile(fName) then
  begin
    dlgOpenImage.InitialDir := ExtractFileDir(fName);
    actSwitchToImageMode.Execute;
    PerformOpenImage(fName);
    Exit;
  end;

  sErr := '';
  clbColors.Clear;

  sl := TStringList.Create;
  try

    for i := 0 to dropFile.Count - 1 do sl.Add(dropFile.Files[i]);
    sl.Sort;

    for i := 0 to sl.Count - 1 do
    begin
      fName := sl[i];
      if not LoadPalette(fName, False) then
      begin
        s := lsMain.GetString('ErrCannotLoadPalette', 'Cannot load color palette from file "%s"');
        s := fixs(s, fName);
        sErr := sErr + s + ENDL;
      end;
    end;

  finally
    sl.Free;
  end;

  if sErr <> '' then MsgError(Trim(sErr));
end;


procedure TFormMain.actCollapseExecute(Sender: TObject);
begin

  if Folded then
  begin
    // Unfold
    Folded := False;
    pnMini.Visible := False;
    Height := UnfoldedHeight;
    Width := UnfoldedWidth;
    Constraints.MinHeight := Constraints_MinHeight;
    BorderStyle := bsSizeable;
    dockMenu.BoundLines := [];
  end
  else
  begin
    // Fold
    Folded := True;
    UnfoldedHeight := Height;
    UnfoldedWidth := Width;
    dockMenu.BoundLines := [blTop, blLeft];

    pnMini.Visible := True;
    BorderStyle := bsNone;
    Constraints.MinHeight := 0;

    Height := FoldedHeight;
    pnMini.Height := Height - tbMainMenu.Height - 1 {};

    Width := FoldedWidth;

    actMini_HeightMinus.Enabled := (Height > MinFoldedHeight);
    actMini_HeightPlus.Enabled := (Height < MaxFoldedHeight);
  end;

  mnuHelp.Visible := not Folded;
  btnStartCapturing.Visible := not Folded;
  btnStopCapturing.Visible := not Folded;

  actShowHideColorCodesPanel.Enabled := not Folded;
  actShowHideBottomPanel.Enabled := not Folded;
  actShowHidePalette.Enabled := not Folded;

  InitControls;
end;


procedure TFormMain.actMini_HeightPlusExecute(Sender: TObject);
begin
  if not Folded then Exit;
  actMini_HeightMinus.Enabled := True;
  if Height >= MaxFoldedHeight then
  begin
    actMini_HeightPlus.Enabled := False;
    Exit;
  end;
  pnMini.Height := pnMini.Height + FoldedSizeStep;
  Height := Height + FoldedSizeStep;
  FoldedHeight := Height;
  actMini_HeightPlus.Enabled := (Height < MaxFoldedHeight);
end;

procedure TFormMain.actMini_HeightMinusExecute(Sender: TObject);
begin
  if not Folded then Exit;
  actMini_HeightPlus.Enabled := True;
  if Height <= MinFoldedHeight then
  begin
    actMini_HeightMinus.Enabled := False;
    Exit;
  end;
  pnMini.Height := pnMini.Height - FoldedSizeStep;
  Height := Height - FoldedSizeStep;
  FoldedHeight := Height;
  actMini_HeightMinus.Enabled := (Height > MinFoldedHeight);
end;


{$region '                 Copy colors                  '}

procedure TFormMain.actCopyColor_CMYKExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblCmyk.RightCaption;
end;

procedure TFormMain.actCopyColor_CppHexExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblCppHex.RightCaption;
end;

procedure TFormMain.actCopyColor_HSL_CSSExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblHslCss.RightCaption;
end;

procedure TFormMain.actCopyColor_HSL_WINExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblHslWin.RightCaption;
end;

procedure TFormMain.actCopyColor_HTMLExecute(Sender: TObject);
var
  s: string;
begin
  s := dlblHtml.RightCaption;
  s := RemoveAll(s, ' ');
  Clipboard.AsText := s;
end;

procedure TFormMain.actCopyColor_PascalHEXExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblPascalHex.RightCaption;
end;

procedure TFormMain.actCopyColor_PascalINTExecute(Sender: TObject);
begin
  Clipboard.AsText := RemoveSpaces(dlblPascalInt.RightCaption);
end;

procedure TFormMain.actCopyColor_RGBExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblRgb.RightCaption;
end;

procedure TFormMain.actCopyColor_RGB_PercentExecute(Sender: TObject);
begin
  Clipboard.AsText := dlblRgbPercent.RightCaption;
end;



procedure TFormMain.CopySelectedColorsToClipboard(const ColorType: TColorType);
begin
  TAppHelper.CopyListBoxColorsToClipboard(clbColors, ColorType, True);
end;

procedure TFormMain.actCopySelectedColors_RGBExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctRgb);
end;

procedure TFormMain.actCopySelectedColors_HTMLExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctHtml);
end;

procedure TFormMain.actCopySelectedColors_RGB_PercentExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctRgbPercent);
end;

procedure TFormMain.actCopySelectedColors_HSL_CSSExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctHslCss);
end;

procedure TFormMain.actCopySelectedColors_HSL_WINExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctHslWin);
end;

procedure TFormMain.actCopySelectedColors_CMYKExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctCmyk);
end;

procedure TFormMain.actCopySelectedColors_PascalHEXExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctPascalHex);
end;

procedure TFormMain.actCopySelectedColors_PascalINTExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctPascalInt);
end;

procedure TFormMain.actCopySelectedColors_CppHexExecute(Sender: TObject);
begin
  CopySelectedColorsToClipboard(ctCppHex);
end;


{$endregion Copy colors}


{$region '                        mniej istotne                       '}

procedure TFormMain.actCheckUpdateExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormCheckUpdate);
  FormCheckUpdate.Show;
  FormCheckUpdate.actCheckNow.Execute;
end;

procedure TFormMain.actGoTo_FacebookExecute(Sender: TObject);
begin
  GoToURL(AppInfo.FacebookUrl);
end;

procedure TFormMain.actGoTo_GithubExecute(Sender: TObject);
begin
  GoToURL(AppInfo.GitHubUrl);
end;

procedure TFormMain.actGoTo_DonationExecute(Sender: TObject);
begin
  GoToURL(AppInfo.DonationUrl);
end;

procedure TFormMain.actGoTo_HomePageExecute(Sender: TObject);
begin
  GoToURL(AppInfo.HomePage);
end;

procedure TFormMain.actOptionsExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormOptions);
  bUpdatingControls := True;
  try
    FormOptions.cbResampler.ItemIndex := cbResampler.ItemIndex;
  finally
    bUpdatingControls := False;
  end;
  FormOptions.Show;
  FormOptions.InitControls;
end;

procedure TFormMain.actStartCapturingExecute(Sender: TObject);
begin
  tmColor.Enabled := True;
  InitControls;
end;

procedure TFormMain.actStopCapturingExecute(Sender: TObject);
begin
  tmColor.Enabled := False;
  InitControls;
end;

procedure TFormMain.actShowFormAutoCaptureExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormAutoCapture);
  FormAutoCapture.Show;
end;

procedure TFormMain.actRestoreMainWindowExecute(Sender: TObject);
begin
  Show;
  TrayIcon.Visible := False;
end;

procedure TFormMain.actMinimizeToTrayExecute(Sender: TObject);
begin
  TrayIcon.Visible := True;
  Hide;
end;

procedure TFormMain.MoveFoldedForm(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if not Folded then Exit;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TFormMain.TrayIconClick(Sender: TObject);
begin
  actRestoreMainWindow.Execute;
end;

procedure TFormMain.actPalette_SelectAllExecute(Sender: TObject);
begin
  clbColors.SelectAll;
  InitControls;
end;

procedure TFormMain.actPalette_SimilarColorsExecute(Sender: TObject);
var
  xInd: integer;
  cl: TColor;
begin
  TAppHelper.CheckForm(TFormSimilarColors);

  if clbColors.Count = 0 then Exit;

  if clbColors.ItemIndex < 0 then
  begin
    xInd := 0;
    clbColors.ItemIndex := xInd;
  end;
  xInd := clbColors.ItemIndex;
  if not clbColors.IsColorItem(xInd) then Exit;

  cl := clbColors.SelectedColor;

  FormSimilarColors.CurrentColor := cl;
  FormSimilarColors.Show;
end;

procedure TFormMain.actPalette_InvertSelectionExecute(Sender: TObject);
begin
  clbColors.InvertSelection;
  InitControls;
end;

procedure TFormMain.actPalette_RemoveSelectedExecute(Sender: TObject);
begin
  if ActiveControl <> clbColors then Exit;
  clbColors.RemoveSelectedItems;
  UpdateColorPaletteCount;
  InitControls;
end;

procedure TFormMain.actPalette_UnselectAllExecute(Sender: TObject);
begin
  clbColors.UnselectAll;
  InitControls;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  Repaint;
  if AppMode = amImage then CenterImg;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  UpdateColorPaletteCount;
end;

procedure TFormMain.GetLastOpenedFileList(sl: TStringList);
var
  i: integer;
  fName: string;
begin
  sl.Clear;
  for i := 0 to mnuPaletteFiles.Count - 1 do
  begin
    fName := mnuPaletteFiles.Items[i].Caption;
    if ExtractFileDir(fName) = '' then Continue;
    sl.Add(fName);
  end;
end;

procedure TFormMain.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if AppMode <> amImage then Exit;
  if bMouseOverImg then sbox.VertScrollBar.Position := sbox.VertScrollBar.Position + MouseScrollStep;
end;

procedure TFormMain.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if AppMode <> amImage then Exit;
  if bMouseOverImg then sbox.VertScrollBar.Position := sbox.VertScrollBar.Position - MouseScrollStep;
end;

procedure TFormMain.imgPictureMouseEnter(Sender: TObject);
begin
  bMouseOverImg := True;
end;

procedure TFormMain.imgPictureMouseLeave(Sender: TObject);
begin
  bMouseOverImg := False;
end;

procedure TFormMain.popupImgPopup(Sender: TObject);
begin
  IniZoomPopup;
  popSwitchOnTop.Checked := actSwitchOnTop.Checked;
  actShowHideColorCodesPanel.Checked := pnColorCodes.Visible;
  popShowHideColorCodesPanel.Checked := pnColorCodes.Visible;
  actShowHideBottomPanel.Checked := pnBottom.Visible;
  popShowHideBottomPanel.Checked := pnBottom.Visible;
  actShowHidePalette.Checked := pnPalette.Visible;
  popShowHidePalette.Checked := pnPalette.Visible;
end;

procedure TFormMain.actShowFormColorMixerExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormColorMixer);
  FormColorMixer.Show;
end;

procedure TFormMain.actShowFormGradientColorsExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormGradientColors);
  FormGradientColors.Show;
end;

procedure TFormMain.actShowFormPixelColorExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormPixelColor);
  FormPixelColor.Show;
  FormPixelColor.tmUpdateColor.Start;
end;

procedure TFormMain.actShowFormRandomColorsExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormRandomColors);
  FormRandomColors.Show;
end;

procedure TFormMain.cswCursorColorGetBottomColorStrValue(const AColor: TColor; var ColorStr, Prefix, Suffix: string);
begin
  ColorStr := InsertNumSep(ColorStr, '  ', 2, 2);
end;

procedure TFormMain.mnuPalettePopup(Sender: TTBCustomItem; FromLink: Boolean);
begin
  InitControls;
end;

procedure TFormMain.popColorPalettePopup(Sender: TObject);
begin
  InitControls;
end;

procedure TFormMain.actAboutExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormAbout);
  FormAbout.Show;
end;

procedure TFormMain.actHelpExecute(Sender: TObject);
begin
  GoToURL(AppInfo.HelpPage);
end;

procedure TFormMain.actExitApplicationExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.actEscExecute(Sender: TObject);
begin
  actClose.Execute;
end;




procedure TFormMain.actShowFormColorWheelExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormColorWheel);
  FormColorWheel.Show;
end;



procedure TFormMain.actShowFormSimilarColorsExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormSimilarColors);
  FormSimilarColors.Show;
end;


procedure TFormMain.MenuPaletteFileClick(Sender: TObject);
var
  fName: string;
begin
  if not (Sender is TSpTBXItem) then Exit;
  fName := (Sender as TSpTBXItem).Caption;
  if ExtractFileDir(fName) = '' then fName := AP.PalettesDir + PathDelim + fName;
  LoadPalette(fName, True);
  mnuPaletteFiles.Caption := fName;
end;

procedure TFormMain.CreatePaletteFilesSubmenu;
var
  bUC: Boolean;
  sl: TStringList;
  x: integer;
  Item: TSpTbxItem;
  Separator: TSpTBXSeparatorItem;
begin
  bUC := bUpdatingControls;
  bUpdatingControls := True;
  sl := TStringList.Create;
  try

    // -------------- COLORS ------------------
    JPGetFileList('*.colors', AP.PalettesDir, sl, 0);
    x := sl.IndexOf(AP.LastPaletteFile);
    if x > 0 then sl.Delete(x);
    sl.Sort;
    sl.Insert(0, AP.LastPaletteFile);

    Item := TSpTBXItem.Create(mnuPaletteFiles);
    Item.Caption := actShowFormQuickAccess.Caption;
    Item.Tag := TAG_RECENTLY_OPENED_EDIT_LIST;
    Item.OnClick := actShowFormQuickAccessExecute;
    mnuPaletteFiles.Add(Item);

    for x := 0 to sl.Count - 1 do
    begin
      Item := TSpTBXItem.Create(mnuPaletteFiles);
      Item.Caption := ExtractFileName(sl[x]);
      Item.ImageIndex := ICON_INDEX_COLORS_FILE;
      Item.OnClick := MenuPaletteFileClick;
      mnuPaletteFiles.Add(Item);
      if x = 0 then
      begin
        Separator := TSpTBXSeparatorItem.Create(mnuPaletteFiles);
        mnuPaletteFiles.Add(Separator);
      end;
    end;

    // --------------- GIMP GPL ----------------
    sl.Clear;
    JPGetFileList('*.gpl', AP.PalettesDir, sl, 0);
    sl.Sort;

    if sl.Count > 0 then
    begin
//      Separator := TSpTBXSeparatorItem.Create(mnuPaletteFiles);
//      mnuPaletteFiles.Add(Separator);

      for x := 0 to sl.Count - 1 do
      begin
        Item := TSpTBXItem.Create(mnuPaletteFiles);
        Item.Caption := ExtractFileName(sl[x]);
        Item.OnClick := MenuPaletteFileClick;
        mnuPaletteFiles.Add(Item);
      end;
    end;

    Separator := TSpTBXSeparatorItem.Create(mnuPaletteFiles);
    Separator.Tag := TAG_RECENTLY_OPENED_LAST_SEPARATOR;
    mnuPaletteFiles.Add(Separator);

  finally
    sl.Free;
    bUpdatingControls := bUC;
  end;
end;



procedure TFormMain.actShowFormQuickAccessExecute(Sender: TObject);
var
  sl: TStringList;
  i: integer;
  Item: TTBCustomItem; // TSpTBXItem;
  Item2: TSpTBXItem;
  fName, Ext: string;
  fs: TFormStyle;
begin
  TAppHelper.CheckForm(TFormQuickAccess);
  sl := TStringList.Create;
  try
    GetLastOpenedFileList(sl);
    FormQuickAccess.me.Text := sl.Text;
    FormQuickAccess.InitControls;
    fs := FormStyle;
    try
      FormStyle := fsNormal;
      FormQuickAccess.ShowModal;
    finally
      FormStyle := fs;
    end;
    if FormQuickAccess.ModalResult <> mrOk then Exit;

    sl.Clear;
    sl.Text := FormQuickAccess.me.Text;

    for i := mnuPaletteFiles.Count - 1 downto 0 do
    begin
      //if not (mnuPaletteFiles.Items[i] is TSpTBXItem) then Continue;
      Item := mnuPaletteFiles.Items[i]; // as TSpTBXItem;
      if Item.Tag = TAG_RECENTLY_OPENED_LAST_SEPARATOR then Break;
      Item.Free;
    end;

    for i := 0 to sl.Count - 1 do
    begin
      fName := Trim(sl[i]);
      if fName = '' then Continue;
      if not FileExists(fName) then Continue;
      if RecentFileAlreadyOnList(fName) then Continue;
      Item2 := TSpTBXItem.Create(mnuPaletteFiles);
      Item2.Caption := fName;
      Ext := UpperCase(GetFileExt(fName, True));
      if Ext = 'COLORS' then Item2.ImageIndex := ICON_INDEX_COLORS_FILE
      else if Ext = 'GPL' then Item2.ImageIndex := ICON_INDEX_GPL_FILE;
      Item2.OnClick := MenuPaletteFileClick;
      mnuPaletteFiles.Add(Item2);
    end;

  finally
    sl.Free;
  end;
end;

procedure TFormMain.actShowHideBottomPanelExecute(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  pnBottom.Visible := not pnBottom.Visible;
  actShowHideBottomPanel.Checked := pnBottom.Visible;

  if Assigned(FormOptions) and FormOptions.Visible then
  begin
    bUpdatingControls := True;
    try
      FormOptions.chShowBottomPanel.Checked := pnBottom.Visible;
    finally
      bUpdatingControls := False;
    end;
  end;
end;

procedure TFormMain.actShowHideColorCodesPanelExecute(Sender: TObject);
begin
  if bUpdatingControls then Exit;
  pnColorCodes.Visible := not pnColorCodes.Visible;
  actShowHideColorCodesPanel.Checked := pnColorCodes.Visible;
  popShowHideColorCodesPanel.Checked := pnColorCodes.Visible;

  if Assigned(FormOptions) and FormOptions.Visible then
  begin
    bUpdatingControls := True;
    try
      FormOptions.chShowColorCodesPanel.Checked := pnColorCodes.Visible;
    finally
      bUpdatingControls := False;
    end;
  end;
end;


procedure TFormMain.actShowHidePaletteExecute(Sender: TObject);
begin
  if Folded then Exit;
  pnPalette.Visible := not pnPalette.Visible;
  splMain.Visible := pnPalette.Visible;
  if splMain.Visible then splMain.Left := pnPalette.Left - splMain.Width - 10;
  actShowHidePalette.Checked := pnPalette.Visible;
  UpdateColorPaletteCount;

  if Assigned(FormOptions) and FormOptions.Visible then
  begin
    bUpdatingControls := True;
    try
      FormOptions.chColorPalette_Visible.Checked := pnPalette.Visible;
    finally
      bUpdatingControls := False;
    end;
  end;
end;

function TFormMain.RecentFileAlreadyOnList(const FileName: string): Boolean;
var
  i: integer;
  UFileName: string;
begin
  Result := False;
  UFileName := AnsiUpperCase(FileName);
  for i := 0 to mnuPaletteFiles.Count - 1 do
  begin
    if AnsiUpperCase(mnuPaletteFiles.Items[i].Caption) = UFileName then
    begin
      Result := True;
      Break;
    end;
  end;
end;


procedure TFormMain.actSetSize_SmallExecute(Sender: TObject);
begin
  if Folded then actCollapse.Execute;
  WindowState := wsNormal;
  pnPalette.Width := 138;
  Width := 514;
  Height := 240;
end;

procedure TFormMain.actSetSize_MediumExecute(Sender: TObject);
begin
  if Folded then actCollapse.Execute;
  WindowState := wsNormal;
  pnPalette.Width := 138;
  Width := 580;
  Height := 370;
end;

procedure TFormMain.actSetSize_LargeExecute(Sender: TObject);
begin
  if Folded then actCollapse.Execute;
  WindowState := wsNormal;
  pnPalette.Width := 138;
  Width := 810;
  Height := 528;
end;


procedure TFormMain.actReloadCurrentLanguageFileExecute(Sender: TObject);
begin
  TAppHelper.CheckForm(TFormOptions);
  //if not Assigned(FormOptions) then Exit;
  FormOptions.cbLangChange(Self);
end;


procedure TFormMain.splMainMoved(Sender: TObject);
begin
  UpdateColorPaletteCount;
end;



{$endregion mniej istotne}

end.
