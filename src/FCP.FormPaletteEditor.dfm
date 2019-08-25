object FormPaletteEditor: TFormPaletteEditor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FormPaletteEditor'
  ClientHeight = 389
  ClientWidth = 716
  Color = clBtnFace
  Constraints.MinHeight = 230
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnBottom: TJppSimplePanel
    Left = 0
    Top = 306
    Width = 716
    Height = 83
    Align = alBottom
    TabOrder = 1
    Appearance.BackgroundColor = 14342874
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    DesignSize = (
      716
      83)
    object dlblNo: TJppDoubleLabel
      Left = 7
      Top = 24
      Width = 46
      Height = 17
      RightCaption = '0'
      Layout = tlCenter
      Caption = 'dlblNo'
      RightCaptionFont.Charset = DEFAULT_CHARSET
      RightCaptionFont.Color = clWindowText
      RightCaptionFont.Height = -13
      RightCaptionFont.Name = 'Segoe UI'
      RightCaptionFont.Style = [fsBold]
      Spacing = 4
      RightCaptionPosDeltaY = 2
    end
    object sbtnEditColor: TJppBasicSpeedButton
      Left = 508
      Top = 25
      Width = 25
      Height = 22
      Caption = '...'
      Appearance.Normal.Color = clBtnFace
      Appearance.Normal.FontColor = clWindowText
      Appearance.Normal.BorderColor = 12500670
      Appearance.Normal.BorderWidth = 1
      Appearance.Hot.Color = clHighlight
      Appearance.Hot.FontColor = clHighlightText
      Appearance.Hot.BorderColor = clHighlight
      Appearance.Hot.BorderWidth = 1
      Appearance.Down.Color = 11758628
      Appearance.Down.FontColor = clHighlightText
      Appearance.Down.BorderColor = 11758628
      Appearance.Down.BorderWidth = 1
      Appearance.Disabled.Color = 16250871
      Appearance.Disabled.FontColor = clBtnShadow
      Appearance.Disabled.BorderColor = clBtnShadow
      Appearance.Disabled.BorderWidth = 1
      Action = actAdvancedColorEditor
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
    end
    object ccbColor: TJppColorComboBox
      Left = 100
      Top = 25
      Width = 334
      Height = 22
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      Anchors = [akLeft, akTop, akRight]
      Constraints.MinWidth = 150
      DropDownCount = 20
      ItemIndex = 0
      TabOrder = 0
      Items.Strings = (
        '=255,255,255'
        '-=Basic colors'
        'Black=000,000,000'
        'Gray 80%=051,051,051'
        'Gray 50%=128,128,128'
        'Gray 35%=165,165,165'
        'Gray 25%=192,192,192'
        'Gray 15%=217,217,217'
        'Gray 5%=242,242,242'
        'Cream=255,251,240'
        'White=255,255,255'
        'Dark Brown=051,051,000'
        'Maroon=128,000,000'
        'Brown=153,051,000'
        'Red=255,000,000'
        'Orange=255,102,000'
        'Light Orange=255,153,000'
        'Gold=255,204,000'
        'Beige=255,204,153'
        'Yellow=255,255,000'
        'Light Yellow=255,255,153'
        'Olive=128,128,000'
        'Dark Green=000,051,000'
        'Green=000,128,000'
        'Teal=000,128,128'
        'Sea=051,153,102'
        'Light Green=153,204,000'
        'Lime=000,255,000'
        'Money Green=192,220,192'
        'Pale Green=204,255,204'
        'Navy=000,000,128'
        'Indigo=051,051,153'
        'Blue=000,000,255'
        'Light Blue=051,102,255'
        'Azure=000,204,255'
        'Pale Blue=153,204,255'
        'Aqua=000,255,255'
        'Aquamarine=051,204,204'
        'Purple=128,000,128'
        'Fuchsia=255,000,255'
        'Plum=153,051,102'
        '-=System colors'
        'Active Border=180,180,180'
        'Active Caption=153,180,209'
        'Application Workspace=171,171,171'
        'Background=051,045,064'
        'Button Face=240,240,240'
        'Button Highlight=255,255,255'
        'Button Shadow=160,160,160'
        'Button Text=000,000,000'
        'Caption Text=000,000,000'
        'Gradient Active Caption=185,209,234'
        'Gradient Inactive Caption=215,228,242'
        'Gray Text=109,109,109'
        'Highlight Background=051,153,255'
        'Highlight Text=255,255,255'
        'Hot Light=000,102,204'
        'Inactive Border=244,247,252'
        'Inactive Caption=191,205,219'
        'Inactive Caption Text=067,078,084'
        'Info Background=255,255,225'
        'Info Text=000,000,000'
        'Menu Background=240,240,240'
        'Menu Bar=240,240,240'
        'Menu Highlight=051,153,255'
        'Menu Text=000,000,000'
        'Scroll Bar=200,200,200'
        '3D Dark Shadow=105,105,105'
        '3D Light=227,227,227'
        'Window Background=255,255,255'
        'Window Frame=100,100,100'
        'Window Text=000,000,000'
        '-=Standard 16 colors'
        'Black=000,000,000'
        'Maroon=128,000,000'
        'Green=000,128,000'
        'Olive=128,128,000'
        'Navy=000,000,128'
        'Purple=128,000,128'
        'Teal=000,128,128'
        'Silver=192,192,192'
        'Gray=128,128,128'
        'Red=255,000,000'
        'Lime=000,255,000'
        'Yellow=255,255,000'
        'Blue=000,000,255'
        'Fuchsia=255,000,255'
        'Aqua=000,255,255'
        'White=255,255,255'
        '-=Standard 48 colors'
        '=255,128,128'
        '=255,255,128'
        '=128,255,128'
        '=000,255,128'
        '=128,255,255'
        '=000,128,255'
        '=255,128,192'
        '=255,128,255'
        'Red=255,000,000'
        'Yellow=255,255,000'
        '=128,255,000'
        '=000,255,064'
        'Aqua=000,255,255'
        '=000,128,192'
        '=128,128,192'
        'Pink=255,000,255'
        '=128,064,064'
        '=255,128,064'
        'Lime=000,255,000'
        'Teal=000,128,128'
        '=000,064,128'
        '=128,128,255'
        '=128,000,064'
        '=255,000,128'
        'Maroon=128,000,000'
        '=255,128,000'
        'Green=000,128,000'
        '=000,128,064'
        'Blue=000,000,255'
        '=000,000,160'
        'Purple=128,000,128'
        '=128,000,255'
        '=064,000,000'
        '=128,064,000'
        '=000,064,000'
        '=000,064,064'
        'Navy=000,000,128'
        '=000,000,064'
        '=064,000,064'
        '=064,000,128'
        'Black=000,000,000'
        'Olive=128,128,000'
        '=128,128,064'
        'Gray=128,128,128'
        '=064,128,128'
        'Silver=192,192,192'
        '=064,000,064'
        'White=255,255,255'
        '-=Windows 10 theme colors'
        '=255,185,000'
        '=255,140,000'
        '=247,099,012'
        '=202,080,016'
        '=218,059,001'
        '=239,105,080'
        '=209,052,056'
        '=255,067,067'
        '=231,072,086'
        '=232,017,035'
        '=234,000,094'
        '=195,000,082'
        '=227,000,140'
        '=191,000,119'
        '=194,057,179'
        '=154,000,137'
        '=000,120,215'
        '=000,099,177'
        '=142,140,216'
        '=107,105,214'
        '=135,100,184'
        '=116,077,169'
        '=177,070,194'
        '=136,023,152'
        '=000,153,188'
        '=045,125,154'
        '=000,183,195'
        '=003,131,135'
        '=000,178,148'
        '=001,133,116'
        '=000,204,106'
        '=016,137,062'
        '=122,117,116'
        '=093,090,088'
        '=104,118,138'
        '=081,092,107'
        '=086,124,115'
        '=072,104,096'
        '=073,130,005'
        '=016,124,016'
        '=118,118,118'
        '=076,074,072'
        '=105,121,126'
        '=074,084,089'
        '=100,124,100'
        '=082,094,084'
        '=132,117,069'
        '=126,115,095'
        
          '-=Web gray and black colors@@BgColor=4,4,4@BgColorTo=29,29,29@Fo' +
          'ntColor=250,250,250'
        'Gainsboro=220,220,220@@BgColor=50,50,50@FontColor=250,250,250'
        'LightGrey=211,211,211@@BgColor=50,50,50@FontColor=250,250,250'
        'Silver=192,192,192@@BgColor=50,50,50@FontColor=250,250,250'
        'DarkGray=169,169,169@@BgColor=50,50,50@FontColor=250,250,250'
        'Gray=128,128,128@@BgColor=50,50,50@FontColor=250,250,250'
        'DimGray=105,105,105@@BgColor=50,50,50@FontColor=250,250,250'
        
          'LightSlateGray=119,136,153@@BgColor=50,50,50@FontColor=250,250,2' +
          '50'
        'SlateGray=112,128,144@@BgColor=50,50,50@FontColor=250,250,250'
        
          'DarkSlateGray=047,079,079@@BgColor=50,50,50@FontColor=250,250,25' +
          '0'
        'Black=000,000,000@@BgColor=50,50,50@FontColor=250,250,250'
        
          '-=Web white colors@@BgColor=254,254,254@BgColorTo=244,244,244@Fo' +
          'ntColor=0,0,0'
        'White=255,255,255'
        'Snow=255,250,250'
        'Honeydew=240,255,240'
        'MintCream=245,255,250'
        'Azure=240,255,255'
        'AliceBlue=240,248,255'
        'GhostWhite=248,248,255'
        'WhiteSmoke=245,245,245'
        'Seashell=255,245,238'
        'Beige=245,245,220'
        'OldLace=253,245,230'
        'FloralWhite=255,250,240'
        'Ivory=255,255,240'
        'AntiqueWhite=250,235,215'
        'Linen=250,240,230'
        'LavenderBlush=255,240,245'
        'MistyRose=255,228,225'
        
          '-=Web pink colors@@BgColor=254,231,237@BgColorTo=244,208,213@Fon' +
          'tColor=83,0,13'
        'Pink=255,192,203@@BgColor=255,215,221@FontColor=83,0,13'
        'LightPink=255,182,193@@BgColor=255,215,221@FontColor=83,0,13'
        'HotPink=255,105,180@@BgColor=255,215,221@FontColor=83,0,13'
        'DeepPink=255,020,147@@BgColor=255,215,221@FontColor=83,0,13'
        'PaleVioletRed=219,112,147@@BgColor=255,215,221@FontColor=83,0,13'
        
          'MediumVioletRed=199,021,133@@BgColor=255,215,221@FontColor=83,0,' +
          '13'
        
          '-=Web red colors@@BgColor=232,069,063@BgColorTo=196,059,054@Font' +
          'Color=255,234,234'
        
          'LightSalmon=255,160,122@@BgColor=209,063,058@FontColor=255,234,2' +
          '34'
        'Salmon=250,128,114@@BgColor=209,063,058@FontColor=255,234,234'
        
          'DarkSalmon=233,150,122@@BgColor=209,063,058@FontColor=255,234,23' +
          '4'
        
          'LightCoral=240,128,128@@BgColor=209,063,058@FontColor=255,234,23' +
          '4'
        'IndianRed=205,092,092@@BgColor=209,063,058@FontColor=255,234,234'
        'Crimson=205,092,092@@BgColor=209,063,058@FontColor=255,234,234'
        'FireBrick=178,034,034@@BgColor=209,063,058@FontColor=255,234,234'
        'DarkRed=139,000,000@@BgColor=209,063,058@FontColor=255,234,234'
        'Red=255,000,000@@BgColor=209,063,058@FontColor=255,234,234'
        
          '-=Web orange colors@@BgColor=254,221,124@BgColorTo=240,199,112@F' +
          'ontColor=64,41,0'
        'OrangeRed=255,069,000@@BgColor=250,206,116@FontColor=64,41,0'
        'Tomato=255,099,071@@BgColor=250,206,116@FontColor=64,41,0'
        'Coral=255,127,080@@BgColor=250,206,116@FontColor=64,41,0'
        'DarkOrange=255,140,000@@BgColor=250,206,116@FontColor=64,41,0'
        'Orange=255,165,000@@BgColor=250,206,116@FontColor=64,41,0'
        
          '-=Web yellow colors@@BgColor=254,254,226@BgColorTo=243,241,204@F' +
          'ontColor=43,41,0'
        'Yellow=255,255,000@@BgColor=254,251,211@FontColor=43,41,0'
        'LightYellow=255,255,224@@BgColor=254,251,211@FontColor=43,41,0'
        'LemonChiffon=255,250,205@@BgColor=254,251,211@FontColor=43,41,0'
        
          'LightGoldenrodYellow=250,250,210@@BgColor=254,251,211@FontColor=' +
          '43,41,0'
        'PapayaWhip=255,239,213@@BgColor=254,251,211@FontColor=43,41,0'
        'Moccasin=255,228,181@@BgColor=254,251,211@FontColor=43,41,0'
        'PeachPuff=255,218,185@@BgColor=254,251,211@FontColor=43,41,0'
        'PaleGoldenrod=238,232,170@@BgColor=254,251,211@FontColor=43,41,0'
        'Khaki=240,230,140@@BgColor=254,251,211@FontColor=43,41,0'
        'DarkKhaki=189,183,107@@BgColor=254,251,211@FontColor=43,41,0'
        'Gold=255,215,000@@BgColor=254,251,211@FontColor=43,41,0'
        
          '-=Web brown colors@@BgColor=129,095,061@BgColorTo=104,076,049@Fo' +
          'ntColor=230,215,202'
        'Cornsilk=255,248,220@@BgColor=114,084,054@FontColor=230,215,202'
        
          'BlanchedAlmond=255,235,205@@BgColor=114,084,054@FontColor=230,21' +
          '5,202'
        'Bisque=255,228,196@@BgColor=114,084,054@FontColor=230,215,202'
        
          'NavajoWhite=255,222,173@@BgColor=114,084,054@FontColor=230,215,2' +
          '02'
        'Wheat=245,222,179@@BgColor=114,084,054@FontColor=230,215,202'
        'BurlyWood=222,184,135@@BgColor=114,084,054@FontColor=230,215,202'
        'Tan=210,180,140@@BgColor=114,084,054@FontColor=230,215,202'
        'RosyBrown=188,143,143@@BgColor=114,084,054@FontColor=230,215,202'
        
          'SandyBrown=244,164,096@@BgColor=114,084,054@FontColor=230,215,20' +
          '2'
        'Goldenrod=218,165,032@@BgColor=114,084,054@FontColor=230,215,202'
        
          'DarkGoldenrod=184,134,011@@BgColor=114,084,054@FontColor=230,215' +
          ',202'
        'Peru=205,133,063@@BgColor=114,084,054@FontColor=230,215,202'
        'Chocolate=210,105,030@@BgColor=114,084,054@FontColor=230,215,202'
        
          'SaddleBrown=139,069,019@@BgColor=114,084,054@FontColor=230,215,2' +
          '02'
        'Sienna=160,082,045@@BgColor=114,084,054@FontColor=230,215,202'
        'Brown=165,042,042@@BgColor=114,084,054@FontColor=230,215,202'
        'Maroon=128,000,000@@BgColor=114,084,054@FontColor=230,215,202'
        
          '-=Web green colors@@BgColor=076,142,102@BgColorTo=061,114,082@Fo' +
          'ntColor=204,234,214'
        
          'DarkOliveGreen=085,107,047@@BgColor=067,126,090@FontColor=204,23' +
          '4,214'
        'Olive=128,128,000@@BgColor=067,126,090@FontColor=204,234,214'
        'OliveDrab=107,142,035@@BgColor=067,126,090@FontColor=204,234,214'
        
          'YellowGreen=154,205,050@@BgColor=067,126,090@FontColor=204,234,2' +
          '14'
        'LimeGreen=050,205,050@@BgColor=067,126,090@FontColor=204,234,214'
        'Lime=000,255,000@@BgColor=067,126,090@FontColor=204,234,214'
        'LawnGreen=124,252,000@@BgColor=067,126,090@FontColor=204,234,214'
        
          'Chartreuse=127,255,000@@BgColor=067,126,090@FontColor=204,234,21' +
          '4'
        
          'GreenYellow=173,255,047@@BgColor=067,126,090@FontColor=204,234,2' +
          '14'
        
          'SpringGreen=000,255,127@@BgColor=067,126,090@FontColor=204,234,2' +
          '14'
        
          'MediumSpringGreen=000,250,154@@BgColor=067,126,090@FontColor=204' +
          ',234,214'
        
          'LightGreen=144,238,144@@BgColor=067,126,090@FontColor=204,234,21' +
          '4'
        'PaleGreen=152,251,152@@BgColor=067,126,090@FontColor=204,234,214'
        
          'DarkSeaGreen=143,188,143@@BgColor=067,126,090@FontColor=204,234,' +
          '214'
        
          'MediumAquamarine=102,205,170@@BgColor=067,126,090@FontColor=204,' +
          '234,214'
        
          'MediumSeaGreen=060,179,113@@BgColor=067,126,090@FontColor=204,23' +
          '4,214'
        'SeaGreen=046,139,087@@BgColor=067,126,090@FontColor=204,234,214'
        
          'ForestGreen=034,139,034@@BgColor=067,126,090@FontColor=204,234,2' +
          '14'
        'Green=000,128,000@@BgColor=067,126,090@FontColor=204,234,214'
        'DarkGreen=000,100,000@@BgColor=067,126,090@FontColor=204,234,214'
        
          '-=Web cyan colors@@BgColor=211,254,254@BgColorTo=191,239,242@Fon' +
          'tColor=14,78,88'
        'Aqua=000,255,255@@BgColor=197,249,252@FontColor=14,78,88'
        'Cyan=000,255,255@@BgColor=197,249,252@FontColor=14,78,88'
        'LightCyan=224,255,255@@BgColor=197,249,252@FontColor=14,78,88'
        
          'PaleTurquoise=175,238,238@@BgColor=197,249,252@FontColor=14,78,8' +
          '8'
        'Aquamarine=127,255,212@@BgColor=197,249,252@FontColor=14,78,88'
        'Turquoise=064,224,208@@BgColor=197,249,252@FontColor=14,78,88'
        
          'MediumTurquoise=072,209,204@@BgColor=197,249,252@FontColor=14,78' +
          ',88'
        
          'DarkTurquoise=000,206,209@@BgColor=197,249,252@FontColor=14,78,8' +
          '8'
        
          'LightSeaGreen=032,178,170@@BgColor=197,249,252@FontColor=14,78,8' +
          '8'
        'CadetBlue=095,158,160@@BgColor=197,249,252@FontColor=14,78,88'
        'DarkCyan=000,139,139@@BgColor=197,249,252@FontColor=14,78,88'
        'Teal=000,128,128@@BgColor=197,249,252@FontColor=14,78,88'
        
          '-=Web blue colors@@BgColor=032,095,203@BgColorTo=026,076,163@Fon' +
          'tColor=207,228,250'
        
          'LightSteelBlue=176,196,222@@BgColor=028,084,179@FontColor=207,22' +
          '8,250'
        
          'PowderBlue=176,224,230@@BgColor=028,084,179@FontColor=207,228,25' +
          '0'
        'LightBlue=173,216,230@@BgColor=028,084,179@FontColor=207,228,250'
        'SkyBlue=135,206,235@@BgColor=028,084,179@FontColor=207,228,250'
        
          'LightSkyBlue=135,206,250@@BgColor=028,084,179@FontColor=207,228,' +
          '250'
        
          'DeepSkyBlue=000,191,255@@BgColor=028,084,179@FontColor=207,228,2' +
          '50'
        
          'DodgerSkyBlue=030,144,255@@BgColor=028,084,179@FontColor=207,228' +
          ',250'
        
          'CornflowerBlue=100,149,237@@BgColor=028,084,179@FontColor=207,22' +
          '8,250'
        'SteelBlue=070,130,180@@BgColor=028,084,179@FontColor=207,228,250'
        'RoyalBlue=065,105,225@@BgColor=028,084,179@FontColor=207,228,250'
        'Blue=000,000,255@@BgColor=028,084,179@FontColor=207,228,250'
        
          'MediumBlue=000,000,205@@BgColor=028,084,179@FontColor=207,228,25' +
          '0'
        'DarkBlue=000,000,139@@BgColor=028,084,179@FontColor=207,228,250'
        'Navy=000,000,128@@BgColor=028,084,179@FontColor=207,228,250'
        
          'MidnightBlue=025,025,112@@BgColor=028,084,179@FontColor=207,228,' +
          '250'
        
          '-=Web purple, violet, magenta colors@@BgColor=151,094,162@BgColo' +
          'rTo=127,080,137@FontColor=238,220,245'
        'Lavender=230,230,250@@BgColor=136,085,147@FontColor=238,220,245'
        'Thistle=216,191,216@@BgColor=136,085,147@FontColor=238,220,245'
        'Plum=221,160,221@@BgColor=136,085,147@FontColor=238,220,245'
        'Violet=238,130,238@@BgColor=136,085,147@FontColor=238,220,245'
        'Orchid=218,112,214@@BgColor=136,085,147@FontColor=238,220,245'
        'Fuchsia=255,000,255@@BgColor=136,085,147@FontColor=238,220,245'
        'Magenta=255,000,255@@BgColor=136,085,147@FontColor=238,220,245'
        
          'MediumOrchid=186,085,211@@BgColor=136,085,147@FontColor=238,220,' +
          '245'
        
          'MediumPurple=147,112,219@@BgColor=136,085,147@FontColor=238,220,' +
          '245'
        
          'BlueViolet=138,043,226@@BgColor=136,085,147@FontColor=238,220,24' +
          '5'
        
          'DarkViolet=148,000,211@@BgColor=136,085,147@FontColor=238,220,24' +
          '5'
        
          'DarkOrchid=153,050,204@@BgColor=136,085,147@FontColor=238,220,24' +
          '5'
        
          'DarkMagenta=139,000,139@@BgColor=136,085,147@FontColor=238,220,2' +
          '45'
        'Purple=128,000,128@@BgColor=136,085,147@FontColor=238,220,245'
        'Indigo=075,000,130@@BgColor=136,085,147@FontColor=238,220,245'
        
          'DarkSlateBlue=072,061,139@@BgColor=136,085,147@FontColor=238,220' +
          ',245'
        'SlateBlue=106,090,205@@BgColor=136,085,147@FontColor=238,220,245'
        
          'MediumSlateBlue=117,099,226@@BgColor=136,085,147@FontColor=238,2' +
          '20,245')
      SelectedColor = clWhite
      BoundLabel.Width = 31
      BoundLabel.Height = 13
      BoundLabel.Caption = 'Color:'
      BoundLabel.FocusControl = ccbColor
      BoundLabelSpacing = 3
      ButtonsSpacing = 2
      ButtonChangeColor.Left = 436
      ButtonChangeColor.Top = 25
      ButtonChangeColor.Width = 22
      ButtonChangeColor.Height = 22
      ButtonChangeColor.Hint = 'Change color...'
      ButtonChangeColor.Caption = '...'
      ButtonChangeColor.Appearance.Normal.Color = clBtnFace
      ButtonChangeColor.Appearance.Normal.FontColor = clWindowText
      ButtonChangeColor.Appearance.Normal.BorderColor = 13421772
      ButtonChangeColor.Appearance.Normal.BorderWidth = 1
      ButtonChangeColor.Appearance.Hot.Color = clHighlight
      ButtonChangeColor.Appearance.Hot.FontColor = clHighlightText
      ButtonChangeColor.Appearance.Hot.BorderColor = clHighlight
      ButtonChangeColor.Appearance.Hot.BorderWidth = 1
      ButtonChangeColor.Appearance.Down.Color = 11758628
      ButtonChangeColor.Appearance.Down.FontColor = clHighlightText
      ButtonChangeColor.Appearance.Down.BorderColor = 11758628
      ButtonChangeColor.Appearance.Down.BorderWidth = 1
      ButtonChangeColor.Appearance.Disabled.Color = 16250871
      ButtonChangeColor.Appearance.Disabled.FontColor = clBtnShadow
      ButtonChangeColor.Appearance.Disabled.BorderColor = clBtnShadow
      ButtonChangeColor.Appearance.Disabled.BorderWidth = 1
      ButtonChangeColor.AutoWidth = False
      ButtonChangeColor.ParentShowHint = False
      ButtonChangeColor.ShowHint = True
      ButtonChangeColor.Visible = True
      ButtonCopyColor.Left = 460
      ButtonCopyColor.Top = 25
      ButtonCopyColor.Width = 22
      ButtonCopyColor.Height = 22
      ButtonCopyColor.Hint = 'Copy color'
      ButtonCopyColor.Caption = 'C'
      ButtonCopyColor.Appearance.Normal.Color = clBtnFace
      ButtonCopyColor.Appearance.Normal.FontColor = clWindowText
      ButtonCopyColor.Appearance.Normal.BorderColor = 13421772
      ButtonCopyColor.Appearance.Normal.BorderWidth = 1
      ButtonCopyColor.Appearance.Hot.Color = clHighlight
      ButtonCopyColor.Appearance.Hot.FontColor = clHighlightText
      ButtonCopyColor.Appearance.Hot.BorderColor = clHighlight
      ButtonCopyColor.Appearance.Hot.BorderWidth = 1
      ButtonCopyColor.Appearance.Down.Color = 11758628
      ButtonCopyColor.Appearance.Down.FontColor = clHighlightText
      ButtonCopyColor.Appearance.Down.BorderColor = 11758628
      ButtonCopyColor.Appearance.Down.BorderWidth = 1
      ButtonCopyColor.Appearance.Disabled.Color = 16250871
      ButtonCopyColor.Appearance.Disabled.FontColor = clBtnShadow
      ButtonCopyColor.Appearance.Disabled.BorderColor = clBtnShadow
      ButtonCopyColor.Appearance.Disabled.BorderWidth = 1
      ButtonCopyColor.AutoWidth = False
      ButtonCopyColor.ParentShowHint = False
      ButtonCopyColor.ShowHint = True
      ButtonCopyColor.Visible = True
      ButtonPasteColor.Left = 484
      ButtonPasteColor.Top = 25
      ButtonPasteColor.Width = 22
      ButtonPasteColor.Height = 22
      ButtonPasteColor.Hint = 'Paste color'
      ButtonPasteColor.Caption = 'P'
      ButtonPasteColor.Appearance.Normal.Color = clBtnFace
      ButtonPasteColor.Appearance.Normal.FontColor = clWindowText
      ButtonPasteColor.Appearance.Normal.BorderColor = 13421772
      ButtonPasteColor.Appearance.Normal.BorderWidth = 1
      ButtonPasteColor.Appearance.Hot.Color = clHighlight
      ButtonPasteColor.Appearance.Hot.FontColor = clHighlightText
      ButtonPasteColor.Appearance.Hot.BorderColor = clHighlight
      ButtonPasteColor.Appearance.Hot.BorderWidth = 1
      ButtonPasteColor.Appearance.Down.Color = 11758628
      ButtonPasteColor.Appearance.Down.FontColor = clHighlightText
      ButtonPasteColor.Appearance.Down.BorderColor = 11758628
      ButtonPasteColor.Appearance.Down.BorderWidth = 1
      ButtonPasteColor.Appearance.Disabled.Color = 16250871
      ButtonPasteColor.Appearance.Disabled.FontColor = clBtnShadow
      ButtonPasteColor.Appearance.Disabled.BorderColor = clBtnShadow
      ButtonPasteColor.Appearance.Disabled.BorderWidth = 1
      ButtonPasteColor.AutoWidth = False
      ButtonPasteColor.ParentShowHint = False
      ButtonPasteColor.ShowHint = True
      ButtonPasteColor.Visible = True
      Appearance.ShowRgbHex = True
      Appearance.RgbIntParams.RgbSeparator = ','
      Appearance.RgbHexParams.Prefix = '#'
      Appearance.BgrHexParams.Prefix = '$00'
      Appearance.DataSeparator = ' - '
      Appearance.NumericFont.Charset = DEFAULT_CHARSET
      Appearance.NumericFont.Color = clWindowText
      Appearance.NumericFont.Height = -12
      Appearance.NumericFont.Name = 'Consolas'
      Appearance.NumericFont.Style = []
      Appearance.NumericTextPosDeltaY = 0
      Appearance.SeparatorItem.Background.Gradient.SpeedPercent = 100
      Appearance.SeparatorItem.Background.Gradient.ColorFrom = 9211020
      Appearance.SeparatorItem.Background.Gradient.ColorTo = 8553090
      Appearance.SeparatorItem.Background.Color = 14803425
      Appearance.SeparatorItem.Background.DrawBorders = False
      Appearance.SeparatorItem.Font.Charset = DEFAULT_CHARSET
      Appearance.SeparatorItem.Font.Color = 15921906
      Appearance.SeparatorItem.Font.Height = -11
      Appearance.SeparatorItem.Font.Name = 'Tahoma'
      Appearance.SeparatorItem.Font.Style = [fsBold]
      Appearance.SelectedItem.Background.Gradient.SpeedPercent = 100
      Appearance.SelectedItem.Background.Gradient.ColorFrom = clHighlight
      Appearance.SelectedItem.Background.Gradient.ColorTo = 16747029
      Appearance.SelectedItem.Background.Color = clHighlight
      Appearance.SelectedItem.Background.Borders.Left.Color = 16745997
      Appearance.SelectedItem.Background.Borders.Right.Color = 16745997
      Appearance.SelectedItem.Background.Borders.Top.Color = clHighlight
      Appearance.SelectedItem.Background.Borders.Bottom.Color = 16745997
      Appearance.ChangeColorItem.Background.Gradient.SpeedPercent = 100
      Appearance.ChangeColorItem.Background.Gradient.ColorFrom = clWhite
      Appearance.ChangeColorItem.Background.Gradient.ColorTo = clBtnFace
      Appearance.ChangeColorItem.Font.Charset = DEFAULT_CHARSET
      Appearance.ChangeColorItem.Font.Color = clWindowText
      Appearance.ChangeColorItem.Font.Height = -11
      Appearance.ChangeColorItem.Font.Name = 'Tahoma'
      Appearance.ChangeColorItem.Font.Style = []
      Appearance.ChangeColorItem.Alignment = taLeftJustify
      Appearance.ChangeColorItem.CaptionMargin = 6
      Appearance.ChangeColorItem.Caption = 'Change color...'
      ColorListSet = [cltBasic, cltStandard16, cltStandard48, cltWin10Theme, cltSystem, cltWebGrayBlack, cltWebWhite, cltWebPink, cltWebRed, cltWebOrange, cltWebYellow, cltWebBrown, cltWebGreen, cltWebCyan, cltWebBlue, cltWebPurpleVioletMagenta]
    end
    object edColorName: TLabeledEdit
      Left = 100
      Top = 53
      Width = 334
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      Constraints.MinWidth = 150
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = 'Color name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
    end
    object pnTop_Caption: TJppSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 1
      Width = 716
      Height = 17
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 4
      Appearance.BackgroundColor = 13619151
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object lblSelectedColor: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 0
        Width = 72
        Height = 16
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Caption = 'Selected color'
        Color = 13619151
        ParentColor = False
        Transparent = False
        Layout = tlCenter
        ExplicitHeight = 13
      end
    end
    object pnRight_Buttons: TJppSimplePanel
      Left = 596
      Top = 18
      Width = 120
      Height = 65
      Align = alRight
      TabOrder = 3
      Appearance.BackgroundColor = 13816530
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawBottomBorder = False
      Appearance.DrawRightBorder = False
      object btnOK: TJppPngButton
        Left = 18
        Top = 5
        Width = 84
        Height = 25
        Action = actSaveAndClose
        Caption = 'OK'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Appearance.Normal.Border.Color = 7368816
        Appearance.Normal.Color = 15987699
        Appearance.Normal.Font.Charset = DEFAULT_CHARSET
        Appearance.Normal.Font.Color = clBlack
        Appearance.Normal.Font.Height = -11
        Appearance.Normal.Font.Name = 'Tahoma'
        Appearance.Normal.Font.Style = []
        Appearance.Normal.UpperGradient.SpeedPercent = 100
        Appearance.Normal.UpperGradient.ColorFrom = 15856113
        Appearance.Normal.UpperGradient.ColorTo = 15461355
        Appearance.Normal.BottomGradient.SpeedPercent = 100
        Appearance.Normal.BottomGradient.ColorFrom = 14540253
        Appearance.Normal.BottomGradient.ColorTo = 13619151
        Appearance.Normal.UpperGradientPercent = 46
        Appearance.Hot.Border.Color = 11632444
        Appearance.Hot.Color = 16578024
        Appearance.Hot.Font.Charset = DEFAULT_CHARSET
        Appearance.Hot.Font.Color = clBlack
        Appearance.Hot.Font.Height = -11
        Appearance.Hot.Font.Name = 'Tahoma'
        Appearance.Hot.Font.Style = []
        Appearance.Hot.UpperGradient.SpeedPercent = 100
        Appearance.Hot.UpperGradient.ColorFrom = 16643818
        Appearance.Hot.UpperGradient.ColorTo = 16576729
        Appearance.Hot.BottomGradient.SpeedPercent = 100
        Appearance.Hot.BottomGradient.ColorFrom = 16639678
        Appearance.Hot.BottomGradient.ColorTo = 16112039
        Appearance.Hot.UpperGradientPercent = 46
        Appearance.Down.Border.Color = 5849118
        Appearance.Down.Color = 15852229
        Appearance.Down.Font.Charset = DEFAULT_CHARSET
        Appearance.Down.Font.Color = clBlack
        Appearance.Down.Font.Height = -11
        Appearance.Down.Font.Name = 'Tahoma'
        Appearance.Down.Font.Style = []
        Appearance.Down.UpperGradient.SpeedPercent = 100
        Appearance.Down.UpperGradient.ColorFrom = 16577765
        Appearance.Down.UpperGradient.ColorTo = 16180676
        Appearance.Down.BottomGradient.SpeedPercent = 100
        Appearance.Down.BottomGradient.ColorFrom = 15716760
        Appearance.Down.BottomGradient.ColorTo = 14662002
        Appearance.Down.UpperGradientPercent = 52
        Appearance.Disabled.Border.Color = 11907757
        Appearance.Disabled.Color = 16053492
        Appearance.Disabled.Font.Charset = DEFAULT_CHARSET
        Appearance.Disabled.Font.Color = 10526880
        Appearance.Disabled.Font.Height = -11
        Appearance.Disabled.Font.Name = 'Tahoma'
        Appearance.Disabled.Font.Style = []
        Appearance.Disabled.UpperGradient.SpeedPercent = 100
        Appearance.Disabled.UpperGradient.ColorFrom = 16053492
        Appearance.Disabled.UpperGradient.ColorTo = 16053492
        Appearance.Disabled.BottomGradient.SpeedPercent = 100
        Appearance.Disabled.BottomGradient.ColorFrom = 16053492
        Appearance.Disabled.BottomGradient.ColorTo = 16053492
        Appearance.Disabled.UpperGradientPercent = 46
        Appearance.Focused.Border.Color = 13675044
        Appearance.Focused.Color = 15987699
        Appearance.Focused.Font.Charset = DEFAULT_CHARSET
        Appearance.Focused.Font.Color = clBlack
        Appearance.Focused.Font.Height = -11
        Appearance.Focused.Font.Name = 'Tahoma'
        Appearance.Focused.Font.Style = []
        Appearance.Focused.UpperGradient.SpeedPercent = 100
        Appearance.Focused.UpperGradient.ColorFrom = 15856113
        Appearance.Focused.UpperGradient.ColorTo = 15461355
        Appearance.Focused.BottomGradient.SpeedPercent = 100
        Appearance.Focused.BottomGradient.ColorFrom = 14540253
        Appearance.Focused.BottomGradient.ColorTo = 13619151
        Appearance.Focused.UpperGradientPercent = 46
        Appearance.FocusRect.Pen.Color = 13675044
        Appearance.BorderWhenDefault.Color = 13675044
      end
      object btnCancel: TJppPngButton
        Left = 18
        Top = 34
        Width = 84
        Height = 25
        Action = actCancel
        Caption = 'Cancel'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00F110ED1AC04CA97A9E757ABD8D8964DD8D8964DD9E75
          7ABDC04CA97AF110ED1AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FE01FE01C14AAB78819853F57E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E
          4EFE7E9E4EFE819853F5C14AAB78FE01FE01FF00FF00FF00FF00FF00FF00FE01
          FE01AC648DA27E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFD7E9E4EFE7E9E4EFE7E9E
          4EFE7E9E4EFE7E9E4EFE7E9E4EFEAC648DA2FE01FE01FF00FF00FF00FF00C14A
          AB787E9E4EFE7E9E4EFE7E9E4EFE8CA561FBE2E2D8F897AC71F97E9E4EFE7E9E
          4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFEC14AAB78FF00FF00F110ED1A8198
          53F57E9E4EFE7E9E4EFE8AA460FBE9E9E2FAFDFCFDFEF3F1EFFB95AC6FFA7E9E
          4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE819853F5F110ED1AC04CA97A7E9E
          4EFE7E9E4EFE89A35EFBE7E8E0FAFDFCFDFEFDFCFDFEFDFCFDFEF2F1EEFB94AB
          6DFA7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFEC04CA97A9E757ABD7E9E
          4EFE88A25CFBE6E6DDFAFDFCFDFEFDFCFDFEFBF8FAFCFDFCFDFEFDFCFDFEF1F0
          EDFB93AB6CFA7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE9E757ABD8D8964DD849F
          57FBE4E5DAFAFDFCFDFEFDFCFDFEEBEAE5FA92A86BF8E0E2D5F9FDFCFDFEFDFC
          FDFEF0F0ECFB92AA6BFA7E9E4EFE7E9E4EFE7E9E4EFE8D8964DD8D8964DD7E9E
          4EFDC7CDB2F8FDFCFDFEECECE6FA8DA763FA7D9E4DFD84A158FBE1E3D6F9FDFC
          FDFEFDFCFDFEF0EFEBFB92A96AFA7E9E4EFE7E9E4EFE8D8A64DD9E747BBC7E9E
          4EFE7E9E4EFDC0C8A9F78FA866FA7D9E4DFD7D9E4DFD7D9E4DFD85A159FBE2E3
          D8F9FDFCFDFEFDFCFDFEEFEEEAFA91A969FA7E9E4EFE9E747BBCC04CA97A7E9E
          4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE86A1
          5AFBE3E4D9FAFDFCFDFEFDFCFDFEE2E1D8F77E9E4EFDC14BAA79F20FED198198
          53F57E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E
          4EFE87A25BFBE4E5DAFAF0F0ECFB92AA6AFA819853F5F20FED19FF00FF00C14A
          AB787E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E
          4EFE7E9E4EFE87A25CFB92AA6BFA7E9E4EFEC14AAB78FF00FF00FF00FF00FE01
          FE01AC648DA27E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E
          4EFE7E9E4EFE7E9E4EFE7E9E4EFEAC648DA2FE01FE01FF00FF00FF00FF00FF00
          FF00FE01FE01C14AAB78819853F57E9E4EFE7E9E4EFE7E9E4EFE7E9E4EFE7E9E
          4EFE7E9E4EFE819853F5C14AAB78FE01FE01FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00F110ED1AC04CA97A9E757ABD8D8964DD8D8964DD9E75
          7ABDC04CA97AF20FED19FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Appearance.Normal.Border.Color = 7368816
        Appearance.Normal.Color = 15987699
        Appearance.Normal.Font.Charset = DEFAULT_CHARSET
        Appearance.Normal.Font.Color = clBlack
        Appearance.Normal.Font.Height = -11
        Appearance.Normal.Font.Name = 'Tahoma'
        Appearance.Normal.Font.Style = []
        Appearance.Normal.UpperGradient.SpeedPercent = 100
        Appearance.Normal.UpperGradient.ColorFrom = 15856113
        Appearance.Normal.UpperGradient.ColorTo = 15461355
        Appearance.Normal.BottomGradient.SpeedPercent = 100
        Appearance.Normal.BottomGradient.ColorFrom = 14540253
        Appearance.Normal.BottomGradient.ColorTo = 13619151
        Appearance.Normal.UpperGradientPercent = 46
        Appearance.Hot.Border.Color = 11632444
        Appearance.Hot.Color = 16578024
        Appearance.Hot.Font.Charset = DEFAULT_CHARSET
        Appearance.Hot.Font.Color = clBlack
        Appearance.Hot.Font.Height = -11
        Appearance.Hot.Font.Name = 'Tahoma'
        Appearance.Hot.Font.Style = []
        Appearance.Hot.UpperGradient.SpeedPercent = 100
        Appearance.Hot.UpperGradient.ColorFrom = 16643818
        Appearance.Hot.UpperGradient.ColorTo = 16576729
        Appearance.Hot.BottomGradient.SpeedPercent = 100
        Appearance.Hot.BottomGradient.ColorFrom = 16639678
        Appearance.Hot.BottomGradient.ColorTo = 16112039
        Appearance.Hot.UpperGradientPercent = 46
        Appearance.Down.Border.Color = 5849118
        Appearance.Down.Color = 15852229
        Appearance.Down.Font.Charset = DEFAULT_CHARSET
        Appearance.Down.Font.Color = clBlack
        Appearance.Down.Font.Height = -11
        Appearance.Down.Font.Name = 'Tahoma'
        Appearance.Down.Font.Style = []
        Appearance.Down.UpperGradient.SpeedPercent = 100
        Appearance.Down.UpperGradient.ColorFrom = 16577765
        Appearance.Down.UpperGradient.ColorTo = 16180676
        Appearance.Down.BottomGradient.SpeedPercent = 100
        Appearance.Down.BottomGradient.ColorFrom = 15716760
        Appearance.Down.BottomGradient.ColorTo = 14662002
        Appearance.Down.UpperGradientPercent = 52
        Appearance.Disabled.Border.Color = 11907757
        Appearance.Disabled.Color = 16053492
        Appearance.Disabled.Font.Charset = DEFAULT_CHARSET
        Appearance.Disabled.Font.Color = 10526880
        Appearance.Disabled.Font.Height = -11
        Appearance.Disabled.Font.Name = 'Tahoma'
        Appearance.Disabled.Font.Style = []
        Appearance.Disabled.UpperGradient.SpeedPercent = 100
        Appearance.Disabled.UpperGradient.ColorFrom = 16053492
        Appearance.Disabled.UpperGradient.ColorTo = 16053492
        Appearance.Disabled.BottomGradient.SpeedPercent = 100
        Appearance.Disabled.BottomGradient.ColorFrom = 16053492
        Appearance.Disabled.BottomGradient.ColorTo = 16053492
        Appearance.Disabled.UpperGradientPercent = 46
        Appearance.Focused.Border.Color = 13675044
        Appearance.Focused.Color = 15987699
        Appearance.Focused.Font.Charset = DEFAULT_CHARSET
        Appearance.Focused.Font.Color = clBlack
        Appearance.Focused.Font.Height = -11
        Appearance.Focused.Font.Name = 'Tahoma'
        Appearance.Focused.Font.Style = []
        Appearance.Focused.UpperGradient.SpeedPercent = 100
        Appearance.Focused.UpperGradient.ColorFrom = 15856113
        Appearance.Focused.UpperGradient.ColorTo = 15461355
        Appearance.Focused.BottomGradient.SpeedPercent = 100
        Appearance.Focused.BottomGradient.ColorFrom = 14540253
        Appearance.Focused.BottomGradient.ColorTo = 13619151
        Appearance.Focused.UpperGradientPercent = 46
        Appearance.FocusRect.Pen.Color = 13675044
        Appearance.BorderWhenDefault.Color = 13675044
      end
    end
    object btnSaveSelectedColor: TJppPngButton
      Left = 492
      Top = 53
      Width = 96
      Height = 25
      Action = actSaveSelectedColor
      Anchors = [akTop, akRight]
      Caption = 'Save'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Appearance.Normal.Border.Color = 7368816
      Appearance.Normal.Color = 15987699
      Appearance.Normal.Font.Charset = DEFAULT_CHARSET
      Appearance.Normal.Font.Color = clBlack
      Appearance.Normal.Font.Height = -11
      Appearance.Normal.Font.Name = 'Tahoma'
      Appearance.Normal.Font.Style = []
      Appearance.Normal.UpperGradient.SpeedPercent = 100
      Appearance.Normal.UpperGradient.ColorFrom = 15856113
      Appearance.Normal.UpperGradient.ColorTo = 15461355
      Appearance.Normal.BottomGradient.SpeedPercent = 100
      Appearance.Normal.BottomGradient.ColorFrom = 14540253
      Appearance.Normal.BottomGradient.ColorTo = 13619151
      Appearance.Normal.UpperGradientPercent = 46
      Appearance.Hot.Border.Color = 11632444
      Appearance.Hot.Color = 16578024
      Appearance.Hot.Font.Charset = DEFAULT_CHARSET
      Appearance.Hot.Font.Color = clBlack
      Appearance.Hot.Font.Height = -11
      Appearance.Hot.Font.Name = 'Tahoma'
      Appearance.Hot.Font.Style = []
      Appearance.Hot.UpperGradient.SpeedPercent = 100
      Appearance.Hot.UpperGradient.ColorFrom = 16643818
      Appearance.Hot.UpperGradient.ColorTo = 16576729
      Appearance.Hot.BottomGradient.SpeedPercent = 100
      Appearance.Hot.BottomGradient.ColorFrom = 16639678
      Appearance.Hot.BottomGradient.ColorTo = 16112039
      Appearance.Hot.UpperGradientPercent = 46
      Appearance.Down.Border.Color = 5849118
      Appearance.Down.Color = 15852229
      Appearance.Down.Font.Charset = DEFAULT_CHARSET
      Appearance.Down.Font.Color = clBlack
      Appearance.Down.Font.Height = -11
      Appearance.Down.Font.Name = 'Tahoma'
      Appearance.Down.Font.Style = []
      Appearance.Down.UpperGradient.SpeedPercent = 100
      Appearance.Down.UpperGradient.ColorFrom = 16577765
      Appearance.Down.UpperGradient.ColorTo = 16180676
      Appearance.Down.BottomGradient.SpeedPercent = 100
      Appearance.Down.BottomGradient.ColorFrom = 15716760
      Appearance.Down.BottomGradient.ColorTo = 14662002
      Appearance.Down.UpperGradientPercent = 52
      Appearance.Disabled.Border.Color = 11907757
      Appearance.Disabled.Color = 16053492
      Appearance.Disabled.Font.Charset = DEFAULT_CHARSET
      Appearance.Disabled.Font.Color = 10526880
      Appearance.Disabled.Font.Height = -11
      Appearance.Disabled.Font.Name = 'Tahoma'
      Appearance.Disabled.Font.Style = []
      Appearance.Disabled.UpperGradient.SpeedPercent = 100
      Appearance.Disabled.UpperGradient.ColorFrom = 16053492
      Appearance.Disabled.UpperGradient.ColorTo = 16053492
      Appearance.Disabled.BottomGradient.SpeedPercent = 100
      Appearance.Disabled.BottomGradient.ColorFrom = 16053492
      Appearance.Disabled.BottomGradient.ColorTo = 16053492
      Appearance.Disabled.UpperGradientPercent = 46
      Appearance.Focused.Border.Color = 13675044
      Appearance.Focused.Color = 15987699
      Appearance.Focused.Font.Charset = DEFAULT_CHARSET
      Appearance.Focused.Font.Color = clBlack
      Appearance.Focused.Font.Height = -11
      Appearance.Focused.Font.Name = 'Tahoma'
      Appearance.Focused.Font.Style = []
      Appearance.Focused.UpperGradient.SpeedPercent = 100
      Appearance.Focused.UpperGradient.ColorFrom = 15856113
      Appearance.Focused.UpperGradient.ColorTo = 15461355
      Appearance.Focused.BottomGradient.SpeedPercent = 100
      Appearance.Focused.BottomGradient.ColorFrom = 14540253
      Appearance.Focused.BottomGradient.ColorTo = 13619151
      Appearance.Focused.UpperGradientPercent = 46
      Appearance.FocusRect.Pen.Color = 13675044
      Appearance.BorderWhenDefault.Color = 13675044
    end
  end
  object pnMain: TJppSimplePanel
    Left = 37
    Top = 32
    Width = 553
    Height = 163
    TabOrder = 0
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    DoubleBuffered = False
    ParentDoubleBuffered = False
    object vst: TVirtualStringTree
      Left = 12
      Top = 11
      Width = 499
      Height = 105
      BorderStyle = bsNone
      Color = clBtnFace
      Colors.FocusedSelectionColor = 13987089
      Colors.FocusedSelectionBorderColor = 13987089
      Colors.GridLineColor = 15724527
      Colors.HeaderHotColor = 8606245
      Colors.SelectionRectangleBorderColor = clAqua
      Colors.SelectionTextColor = clWhite
      Colors.TreeLineColor = clLime
      Colors.UnfocusedColor = clBlack
      Colors.UnfocusedSelectionColor = 16305317
      Colors.UnfocusedSelectionBorderColor = 16305317
      DefaultNodeHeight = 19
      DragMode = dmAutomatic
      DragType = dtVCL
      Header.AutoSizeIndex = 0
      Header.DefaultHeight = 22
      Header.Height = 22
      Header.Options = [hoColumnResize, hoDrag, hoHotTrack, hoOwnerDraw, hoShowHint, hoShowImages, hoShowSortGlyphs, hoVisible]
      Header.PopupMenu = popVstHeader
      Header.Style = hsFlatButtons
      LineStyle = lsSolid
      PopupMenu = popVst
      TabOrder = 0
      TreeOptions.MiscOptions = [toAcceptOLEDrop, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toFullRowDrag, toEditOnClick]
      TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowHorzGridLines, toShowVertGridLines, toUseBlendedImages, toFullVertGridLines]
      TreeOptions.SelectionOptions = [toFullRowSelect, toMultiSelect]
      OnAdvancedHeaderDraw = vstAdvancedHeaderDraw
      OnAfterCellPaint = vstAfterCellPaint
      OnAfterColumnWidthTracking = vstAfterColumnWidthTracking
      OnBeforeCellPaint = vstBeforeCellPaint
      OnChange = vstChange
      OnClick = InitCtrls
      OnColumnVisibilityChanged = vstColumnVisibilityChanged
      OnCompareNodes = vstCompareNodes
      OnDragAllowed = vstDragAllowed
      OnDragOver = vstDragOver
      OnDragDrop = vstDragDrop
      OnFreeNode = vstFreeNode
      OnGetText = vstGetText
      OnPaintText = vstPaintText
      OnGetNodeDataSize = vstGetNodeDataSize
      OnHeaderClick = vstHeaderClick
      OnHeaderDrawQueryElements = vstHeaderDrawQueryElements
      Columns = <
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 0
          Text = 'No'
          Width = 40
        end
        item
          MaxWidth = 200
          MinWidth = 30
          Position = 1
          Text = 'Color'
          Width = 60
        end
        item
          Color = clWhite
          MaxWidth = 1000
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 2
          Text = 'Name'
          Width = 140
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 3
          Text = 'RGB'
          Width = 100
        end
        item
          Alignment = taCenter
          Color = clWindow
          MaxWidth = 80
          MinWidth = 36
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 4
          Text = 'Red'
          Width = 44
        end
        item
          Alignment = taCenter
          Color = clWindow
          MaxWidth = 80
          MinWidth = 36
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 5
          Text = 'Green'
          Width = 44
        end
        item
          Alignment = taCenter
          Color = clWindow
          MaxWidth = 80
          MinWidth = 36
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 6
          Text = 'Blue'
          Width = 44
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 7
          Text = 'RGB %'
          Width = 100
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 8
          Text = 'HTML'
          Width = 90
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 9
          Text = 'HSL CSS'
          Width = 100
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 10
          Text = 'Hue - HSL CSS'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 11
          Text = 'Sat - HSL CSS'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 12
          Text = 'Lum - HSL CSS'
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 13
          Text = 'HSL WIN'
          Width = 100
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 14
          Text = 'Hue - HSL WIN'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 15
          Text = 'Sat - HSL WIN'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 16
          Text = 'Lum - HSL WIN'
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 17
          Text = 'CMYK'
          Width = 120
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 18
          Text = 'Cyan'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 19
          Text = 'Magenta'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 20
          Text = 'Yellow'
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 21
          Text = 'Black'
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 22
          Text = 'Pascal HEX'
          Width = 90
        end
        item
          Alignment = taRightJustify
          CaptionAlignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
          Position = 23
          Text = 'Pascal INT'
          Width = 90
        end
        item
          Alignment = taCenter
          Color = clWhite
          MaxWidth = 200
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coResizable, coShowDropMark, coVisible, coAllowFocus, coEditable, coStyleColor]
          Position = 24
          Text = 'C++ Hex'
          Width = 90
        end>
    end
  end
  object dockMain: TSpTBXDock
    Left = 0
    Top = 0
    Width = 716
    Height = 26
    AllowDrag = False
    object SpTBXToolbar1: TSpTBXToolbar
      Left = 0
      Top = 0
      FullSize = True
      Images = FormMain.pilMain
      ParentShowHint = False
      ShowHint = True
      ShrinkMode = tbsmNone
      Stretch = True
      TabOrder = 0
      Caption = 'SpTBXToolbar1'
      object SpTBXItem5: TSpTBXItem
        Action = actOpenPaletteFile
      end
      object SpTBXItem32: TSpTBXItem
        Action = actOpenAdd
      end
      object SpTBXItem4: TSpTBXItem
        Action = actSavePaletteToFile
      end
      object SpTBXSubmenuItem1: TSpTBXSubmenuItem
        Caption = 'Export palette'
        ImageIndex = 20
        Options = [tboDropdownArrow, tboNoAutoHint]
        object SpTBXItem8: TSpTBXItem
          Action = actExportPaletteToHtml
        end
        object SpTBXItem9: TSpTBXItem
          Action = actExportPaletteToGPL
        end
      end
      object SpTBXSeparatorItem11: TSpTBXSeparatorItem
      end
      object SpTBXItem37: TSpTBXItem
        Action = actColorWheel
      end
      object SpTBXItem7: TSpTBXItem
        Action = actShowFormModifyPalette
      end
      object SpTBXSeparatorItem3: TSpTBXSeparatorItem
      end
      object SpTBXItem34: TSpTBXItem
        Action = actAddColorAtTop
      end
      object SpTBXItem6: TSpTBXItem
        Action = actAddColorAtEnd
      end
      object SpTBXItem1: TSpTBXItem
        Action = actDeleteSelected
        Margins = 4
      end
      object SpTBXItem26: TSpTBXItem
        Action = actClearColorNames
      end
      object SpTBXSeparatorItem2: TSpTBXSeparatorItem
      end
      object SpTBXItem3: TSpTBXItem
        Action = actSelectAll
        Margins = 4
      end
      object SpTBXItem2: TSpTBXItem
        Action = actInvertSelection
        Margins = 4
      end
      object SpTBXSeparatorItem9: TSpTBXSeparatorItem
      end
      object SpTBXItem25: TSpTBXItem
        Action = actMoveToEnd
      end
      object SpTBXItem23: TSpTBXItem
        Action = actMoveDown
      end
      object SpTBXItem22: TSpTBXItem
        Action = actMoveUp
      end
      object SpTBXItem24: TSpTBXItem
        Action = actMoveToTop
      end
      object SpTBXSeparatorItem7: TSpTBXSeparatorItem
      end
      object SpTBXItem20: TSpTBXItem
        Action = actRenumber
      end
      object SpTBXItem18: TSpTBXItem
        Action = actShowFormSortBy
      end
      object SpTBXSeparatorItem6: TSpTBXSeparatorItem
      end
      object SpTBXItem16: TSpTBXItem
        Action = actClearColorList
      end
    end
  end
  object Actions: TActionList
    Images = FormMain.pilMain
    Left = 318
    Top = 157
    object actSaveAndClose: TAction
      Caption = 'OK'
      Hint = 'Save all changes and close'
      ImageIndex = 1
      OnExecute = actSaveAndCloseExecute
    end
    object actSaveSelectedColor: TAction
      Caption = 'Save'
      Hint = 'Save selected color'
      ImageIndex = 8
      ShortCut = 16467
      OnExecute = actSaveSelectedColorExecute
    end
    object actSelectAll: TAction
      Caption = 'Select all'
      Hint = 'Select all'
      ImageIndex = 9
      OnExecute = actSelectAllExecute
    end
    object actInvertSelection: TAction
      Caption = 'Invert selection'
      Hint = 'Invert selection'
      ImageIndex = 10
      ShortCut = 16457
      OnExecute = actInvertSelectionExecute
    end
    object actDeleteSelected: TAction
      Caption = 'Delete selected colors'
      Hint = 'Delete selected colors'
      ImageIndex = 7
      ShortCut = 46
      OnExecute = actDeleteSelectedExecute
    end
    object actCancel: TAction
      Caption = 'Cancel'
      Hint = 'Cancel all changes and close'
      OnExecute = actCancelExecute
    end
    object actOpenPaletteFile: TAction
      Caption = 'Open'
      Hint = 'Load color palette from file...'
      ImageIndex = 5
      ShortCut = 16463
      OnExecute = actOpenPaletteFileExecute
    end
    object actOpenAdd: TAction
      Caption = 'Add colors to the current palette from the files...'
      Hint = 'Add colors to the current palette from the files...'
      ImageIndex = 46
      ShortCut = 24655
      OnExecute = actOpenAddExecute
    end
    object actSavePaletteToFile: TAction
      Caption = 'Save palette'
      Hint = 'Save color palette as...'
      ImageIndex = 12
      ShortCut = 24659
      OnExecute = actSavePaletteToFileExecute
    end
    object actAddColorAtTop: TAction
      Caption = 'Add a new color to the top of the list'
      Hint = 'Add a new color to the top of the list'
      ImageIndex = 48
      ShortCut = 24621
      OnExecute = actAddColorAtTopExecute
    end
    object actAddColorAtEnd: TAction
      Caption = 'Add a new color to the end of the list'
      Hint = 'Add a new color to the end of the list'
      ImageIndex = 47
      ShortCut = 8237
      OnExecute = actAddColorAtEndExecute
    end
    object actExportPaletteToHtml: TAction
      Caption = 'Export color palette to HTML file...'
      Hint = 'Export color palette to HTML file...'
      ImageIndex = 20
      OnExecute = actExportPaletteToHtmlExecute
    end
    object actExportPaletteToGPL: TAction
      Caption = 'Export the color palette to the GIMP palette file...'
      Hint = 'Export the color palette to the GIMP palette file...'
      ImageIndex = 20
      OnExecute = actExportPaletteToGPLExecute
    end
    object actAdvancedColorEditor: TAction
      Caption = '...'
      Hint = 'Advanced color editor...'
      ImageIndex = 28
      ShortCut = 16453
      OnExecute = actAdvancedColorEditorExecute
    end
    object actClearColorList: TAction
      Caption = 'Clear color palette...'
      Hint = 'Clear color palette...'
      ImageIndex = 31
      OnExecute = actClearColorListExecute
    end
    object actShowFormSortBy: TAction
      Caption = 'Advanced sorting...'
      Hint = 'Advanced sorting...'
      ImageIndex = 36
      ShortCut = 24660
      OnExecute = actShowFormSortByExecute
    end
    object actRenumber: TAction
      Caption = 'Number all colors ascending'
      Hint = 'Number all colors ascending'
      ImageIndex = 40
      OnExecute = actRenumberExecute
    end
    object actMoveUp: TAction
      Caption = 'Move up'
      Hint = 'Move up'
      ImageIndex = 42
      ShortCut = 16422
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Caption = 'Move down'
      Hint = 'Move down'
      ImageIndex = 41
      ShortCut = 16424
      OnExecute = actMoveDownExecute
    end
    object actMoveToTop: TAction
      Caption = 'Move to top'
      Hint = 'Move to top'
      ImageIndex = 44
      ShortCut = 24614
      OnExecute = actMoveToTopExecute
    end
    object actMoveToEnd: TAction
      Caption = 'Move to end'
      Hint = 'Move to end'
      ImageIndex = 43
      ShortCut = 24616
      OnExecute = actMoveToEndExecute
    end
    object actClearColorNames: TAction
      Caption = 'Clear the names of the selected colors'
      Hint = 'Clear the names of the selected colors'
      ImageIndex = 45
      OnExecute = actClearColorNamesExecute
    end
    object actShowFormModifyPalette: TAction
      Caption = 'Modify colors...'
      Hint = 'Modify colors...'
      ImageIndex = 51
      ShortCut = 16452
      OnExecute = actShowFormModifyPaletteExecute
    end
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actColorWheel: TAction
      Caption = 'Color wheel...'
      Hint = 'Color wheel...'
      ImageIndex = 56
      ShortCut = 24663
      OnExecute = actColorWheelExecute
    end
  end
  object dlgOpenPalette: TOpenDialog
    DefaultExt = '.colors'
    Filter = 
      'All supported files (*.colors;*.gpl)|*.colors;*.gpl|COLORS palet' +
      'te files (*.colors)|*.colors|GIMP palette files (*.gpl)|*.gpl'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 247
    Top = 212
  end
  object dlgSavePalette: TSaveDialog
    DefaultExt = '.colors'
    Filter = 'Color palette files (*.colors)|*.colors'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 155
    Top = 172
  end
  object dlgExport: TSaveDialog
    DefaultExt = '.html'
    Filter = 'HTML files (*.html)|*.html'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 162
    Top = 226
  end
  object popVstHeader: TVTHeaderPopupMenu
    Options = []
    OnAddHeaderPopupItem = popVstHeaderAddHeaderPopupItem
    Left = 47
    Top = 222
  end
  object popVst: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 461
    Top = 209
    object SpTBXItem11: TSpTBXItem
      Action = actOpenPaletteFile
    end
    object SpTBXItem33: TSpTBXItem
      Action = actOpenAdd
    end
    object SpTBXItem12: TSpTBXItem
      Action = actSavePaletteToFile
    end
    object SpTBXSeparatorItem4: TSpTBXSeparatorItem
    end
    object SpTBXItem38: TSpTBXItem
      Action = actColorWheel
    end
    object SpTBXItem36: TSpTBXItem
      Action = actShowFormModifyPalette
    end
    object SpTBXSeparatorItem12: TSpTBXSeparatorItem
    end
    object SpTBXItem35: TSpTBXItem
      Action = actAddColorAtTop
    end
    object SpTBXItem13: TSpTBXItem
      Action = actAddColorAtEnd
    end
    object SpTBXItem15: TSpTBXItem
      Action = actDeleteSelected
    end
    object SpTBXItem27: TSpTBXItem
      Action = actClearColorNames
    end
    object SpTBXSeparatorItem5: TSpTBXSeparatorItem
    end
    object SpTBXItem10: TSpTBXItem
      Action = actSelectAll
    end
    object SpTBXItem14: TSpTBXItem
      Action = actInvertSelection
    end
    object SpTBXSeparatorItem10: TSpTBXSeparatorItem
    end
    object SpTBXItem31: TSpTBXItem
      Action = actMoveToEnd
    end
    object SpTBXItem30: TSpTBXItem
      Action = actMoveDown
    end
    object SpTBXItem29: TSpTBXItem
      Action = actMoveUp
    end
    object SpTBXItem28: TSpTBXItem
      Action = actMoveToTop
    end
    object SpTBXSeparatorItem8: TSpTBXSeparatorItem
    end
    object SpTBXItem21: TSpTBXItem
      Action = actRenumber
    end
    object SpTBXItem19: TSpTBXItem
      Action = actShowFormSortBy
    end
    object SpTBXSeparatorItem1: TSpTBXSeparatorItem
    end
    object SpTBXItem17: TSpTBXItem
      Action = actClearColorList
    end
  end
end
