unit FCP.Types;

interface

uses
  Winapi.Windows,
  System.SysUtils, System.Classes,
  Vcl.Graphics,
  JPL.Colors;

const

  APP_NAME = 'Free Color Picker';
  APP_VER_STR = '1.2.1';
  APP_FULL_NAME = APP_NAME + ' ' + APP_VER_STR;

  COLOR_GROUP_NAME = 'FCP Colors';

  INI_SECTION_MAIN = 'MAIN';
  INI_SECTION_PALETTE_EDITOR = 'PaletteEditor';
  INI_SECTION_COLOR_EDITOR = 'ColorEditor';
  INI_SECTION_AUTO_CAPTURE = 'AutoCapture';
  INI_SECTION_PIXEL_COLOR = 'PixelColor';
  INI_SECTION_RANDOM_COLORS = 'RandomColors';
  INI_SECTION_SORT = 'Sort';
  INI_SECTION_GRADIENT = 'Gradient';
  INI_SECTION_COLOR_MIXER = 'ColorMixer';
  INI_SECTION_MODIFY_PALETTE = 'ModifyPaletteColors';
  INI_SECTION_COLOR_WHEEL = 'ColorWheel';
  INI_SECTION_SIMILAR_COLORS = 'SimilarColors';
  INI_SECTION_RECENTLY_OPENED = 'RecentlyOpened';

  SC_DRAGMOVE = $F012;

  CAPTURING_INTERVAL_MIN = 50;
  CAPTURING_INTERVAL_MAX = 2000;

  TAG_RECENTLY_OPENED_EDIT_LIST = 10;
  TAG_RECENTLY_OPENED_LAST_SEPARATOR = 100;
  ICON_INDEX_COLORS_FILE = 19;
  ICON_INDEX_GPL_FILE = 58;

  PIXEL_INDICATOR_SMALL_CROSS = 30;
  PIXEL_INDICATOR_MEDIUM_CROSS = 50;


type

  TAppMode = (amPreview, amImage);

  TAppInfo = record
    AppID: Byte;
    Name: string;
    VersionStr: string;
    FullName: string;
    Author: string;
    LicenseName: string;
    DateStr: string;
    HomePage: string;
    HelpPage: string;
    DownloadPage: string;
    FacebookUrl: string;
    TwitterUrl: string;
    DonationUrl: string;
    GitHubUrl: string;
    Bits: Byte;
    BitsStr: string;
    VerIniUrl: string;
  end;

  TFontParams = record
    Name: string;
    Size: integer;
    Color: TColor;
    Style: TFontStyles;
    PosYDelta: integer;
  end;

  TMonospaceFontParams = TFontParams;

  TColorParams = record
    Color: TColor;
    PosX: integer;
    PosY: integer;
  end;

  PVSTData = ^TVSTData;
  TVSTData = record
    No: integer;
    Color: TColor;
    ColorName: string;
  end;

  TPixelIndicator = (piSquare, piSmallCross, piMediumCross, piFullCross);

  ////////////////////////////////////////////////////////////////
  TAppParams = record
    ConfigDir: string;
    PalettesDir: string;
    PicturesDir: string;
    LangDir: string;
    LanguageIni: string;
    IniFile: string;
    LastPaletteFile: string;
    MonospaceFont: TMonospaceFontParams;
    CopyOnCapture: Boolean;
    CopyOnCaptureColorType: TColorType;
    CopyColorType: TColorType;
    ShowColorCodesOnTitleBar: Boolean;
    AskForColorName: Boolean;
    AddNewColorsAtTheTop: Boolean;
    PixelIndicator: TPixelIndicator;
    PixelIndicatorColor: TColor;
    HtmlExport_AddJson: Boolean;
    ColorRectangle_BorderColor: TColor;
    ColorRectangle_AutoBorderColor: Boolean;
  end;
  ////////////////////////////////////////////////////////////////


var
  AP: TAppParams;
  AppInfo: TAppInfo;


implementation



initialization

  AppInfo.AppID := 46; // This is my 46th free program published on pazera-software.com (some have already been discontinued)
  AppInfo.Name := APP_NAME;
  AppInfo.VersionStr := APP_VER_STR;
  AppInfo.FullName := APP_FULL_NAME;
  AppInfo.Author := 'Jacek Pazera';
  AppInfo.LicenseName := 'Freeware';
  AppInfo.DateStr := '07.02.2021';

  AppInfo.HomePage := 'https://www.pazera-software.com/products/free-color-picker/';
  AppInfo.DownloadPage := 'https://www.pazera-software.com/products/free-color-picker/';
  AppInfo.HelpPage := AppInfo.HomePage + 'help.php';
  AppInfo.VerIniUrl := AppInfo.HomePage + 'ver.ini';
  AppInfo.FacebookUrl := 'https://www.facebook.com/Pazera.Software';
  AppInfo.TwitterUrl := 'https://twitter.com/PazeraSoftware';
  AppInfo.DonationUrl := 'https://www.pazera-software.com/donation/';
  AppInfo.GitHubUrl := 'https://github.com/jackdp/Free-Color-Picker';


  {$IFDEF WIN64}
  AppInfo.Bits := 64;
  AppInfo.BitsStr := '64';
  {$ELSE}
  AppInfo.Bits := 32;
  AppInfo.BitsStr := '32';
  {$ENDIF}

finalization


end.
