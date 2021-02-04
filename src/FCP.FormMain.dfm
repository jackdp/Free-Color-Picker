object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Free Color Picker'
  ClientHeight = 481
  ClientWidth = 726
  Color = 13487565
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object splMain: TSplitter
    AlignWithMargins = True
    Left = 561
    Top = 76
    Width = 4
    Height = 370
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alRight
    AutoSnap = False
    Color = 14211288
    MinSize = 14
    ParentColor = False
    ResizeStyle = rsUpdate
    OnMoved = splMainMoved
    ExplicitLeft = 696
    ExplicitTop = 27
    ExplicitHeight = 575
  end
  object pnTemplates: TPanel
    Left = 33
    Top = 382
    Width = 469
    Height = 60
    TabOrder = 4
    Visible = False
    object sbtnT1: TJppBasicSpeedButton
      Left = 6
      Top = 4
      Width = 51
      Height = 23
      Hint = 'Set color'
      Caption = 'sbtnT1'
      Appearance.Normal.Color = 14342874
      Appearance.Normal.FontColor = clBlack
      Appearance.Normal.BorderColor = 1408452
      Appearance.Normal.BorderWidth = 1
      Appearance.Normal.TransparentBorder = True
      Appearance.Normal.TransparentBackground = True
      Appearance.Hot.Color = 16309430
      Appearance.Hot.FontColor = clBlack
      Appearance.Hot.BorderColor = 12219154
      Appearance.Hot.BorderWidth = 1
      Appearance.Down.Color = 16041864
      Appearance.Down.FontColor = clBlack
      Appearance.Down.BorderColor = 10445327
      Appearance.Down.BorderWidth = 1
      Appearance.Disabled.Color = 13421772
      Appearance.Disabled.FontColor = 7303023
      Appearance.Disabled.BorderColor = 12566463
      Appearance.Disabled.BorderWidth = 1
      Appearance.Disabled.TransparentBorder = True
      Appearance.Disabled.TransparentBackground = True
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object btnT1: TJppPngButton
      Left = 6
      Top = 32
      Width = 69
      Height = 22
      Caption = 'btnT1'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E112E130C828C85FF703F70BFF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00B434B47FC1C0C1FEB64BB694F703F70BFF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ED08ED1AA869A8C0DADADAFFAB47AB9BF602F60BFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EC07EC1AB070B0BFDADADAFFB146B194B20D
        B25AFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00EA05EA1AA566A5C0A9A8A9FE0E0D
        0EFED007D036FD00FD02FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A510A56A161516FE0100
        01FE270327DBCE05CE36FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AB08AB5C3B2D
        3BF1050105FBAD07AD59FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F901F907C01D
        C05C94069471EB03EB17FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      TabOrder = 0
      Visible = False
      Appearance.Normal.Border.Color = 11053224
      Appearance.Normal.Color = 14737632
      Appearance.Normal.Font.Charset = DEFAULT_CHARSET
      Appearance.Normal.Font.Color = clBlack
      Appearance.Normal.Font.Height = -11
      Appearance.Normal.Font.Name = 'Segoe UI'
      Appearance.Normal.Font.Style = []
      Appearance.Normal.UpperGradient.SpeedPercent = 100
      Appearance.Normal.UpperGradient.ColorFrom = 15790320
      Appearance.Normal.UpperGradient.ColorTo = 15329769
      Appearance.Normal.BottomGradient.SpeedPercent = 100
      Appearance.Normal.BottomGradient.ColorFrom = 13948116
      Appearance.Normal.BottomGradient.ColorTo = 12566463
      Appearance.Normal.GradientEnabled = False
      Appearance.Normal.UpperGradientPercent = 100
      Appearance.Hot.Border.Color = 12219154
      Appearance.Hot.Color = 16309430
      Appearance.Hot.Font.Charset = DEFAULT_CHARSET
      Appearance.Hot.Font.Color = clBlack
      Appearance.Hot.Font.Height = -11
      Appearance.Hot.Font.Name = 'Tahoma'
      Appearance.Hot.Font.Style = []
      Appearance.Hot.UpperGradient.SpeedPercent = 100
      Appearance.Hot.UpperGradient.ColorFrom = 16443083
      Appearance.Hot.UpperGradient.ColorTo = 16111017
      Appearance.Hot.BottomGradient.SpeedPercent = 100
      Appearance.Hot.BottomGradient.ColorFrom = 15263976
      Appearance.Hot.BottomGradient.ColorTo = 13619151
      Appearance.Hot.UpperGradientPercent = 100
      Appearance.Hot.BorderToGradientMargin = 0
      Appearance.Down.Border.Color = 10445327
      Appearance.Down.Color = 16376257
      Appearance.Down.Font.Charset = DEFAULT_CHARSET
      Appearance.Down.Font.Color = clBlack
      Appearance.Down.Font.Height = -11
      Appearance.Down.Font.Name = 'Tahoma'
      Appearance.Down.Font.Style = []
      Appearance.Down.UpperGradient.SpeedPercent = 100
      Appearance.Down.UpperGradient.ColorFrom = 16308397
      Appearance.Down.UpperGradient.ColorTo = 15778436
      Appearance.Down.BottomGradient.SpeedPercent = 100
      Appearance.Down.BottomGradient.ColorFrom = 12961221
      Appearance.Down.BottomGradient.ColorTo = 12171705
      Appearance.Down.UpperGradientPercent = 100
      Appearance.Down.BorderToGradientMargin = 0
      Appearance.Disabled.Border.Color = 12171705
      Appearance.Disabled.Color = 14803425
      Appearance.Disabled.Font.Charset = DEFAULT_CHARSET
      Appearance.Disabled.Font.Color = 9079434
      Appearance.Disabled.Font.Height = -11
      Appearance.Disabled.Font.Name = 'Tahoma'
      Appearance.Disabled.Font.Style = []
      Appearance.Disabled.UpperGradient.SpeedPercent = 100
      Appearance.Disabled.UpperGradient.ColorFrom = 13421772
      Appearance.Disabled.UpperGradient.ColorTo = 13421772
      Appearance.Disabled.BottomGradient.SpeedPercent = 100
      Appearance.Disabled.BottomGradient.ColorFrom = 15132390
      Appearance.Disabled.BottomGradient.ColorTo = 15132390
      Appearance.Disabled.UpperGradientPercent = 100
      Appearance.Disabled.BorderToGradientMargin = 0
      Appearance.Focused.Border.Color = 10707984
      Appearance.Focused.Border.Width = 2
      Appearance.Focused.Color = 15395562
      Appearance.Focused.Font.Charset = DEFAULT_CHARSET
      Appearance.Focused.Font.Color = clBlack
      Appearance.Focused.Font.Height = -11
      Appearance.Focused.Font.Name = 'Tahoma'
      Appearance.Focused.Font.Style = []
      Appearance.Focused.UpperGradient.SpeedPercent = 100
      Appearance.Focused.UpperGradient.ColorFrom = 16708322
      Appearance.Focused.UpperGradient.ColorTo = 16640462
      Appearance.Focused.BottomGradient.SpeedPercent = 100
      Appearance.Focused.BottomGradient.ColorFrom = 15790320
      Appearance.Focused.BottomGradient.ColorTo = 14408667
      Appearance.Focused.UpperGradientPercent = 100
      Appearance.Focused.BorderToGradientMargin = 1
      Appearance.FocusRect.Pen.Color = 7757844
      Appearance.BorderWhenDefault.Color = 13675044
    end
    object meColorsT: TMemo
      Left = 104
      Top = 9
      Width = 79
      Height = 40
      Lines.Strings = (
        '-=Basic '
        'colors'
        'Black=000,00'
        '0,000'
        'Gray '
        '80%=051,05'
        '1,051'
        'Gray '
        '50%=128,12'
        '8,128'
        'Gray '
        '35%=165,16'
        '5,165'
        'Gray '
        '25%=192,19'
        '2,192'
        'Gray '
        '15%=217,21'
        '7,217'
        'Gray '
        '5%=242,242,'
        '242'
        'Cream=255,2'
        '51,240'
        'White=255,2'
        '55,255'
        'Dark '
        'Brown=051,'
        '051,000'
        'Maroon=128'
        ',000,000'
        'Brown=153,'
        '051,000'
        'Red=255,000'
        ',000'
        'Orange=255'
        ',102,000'
        'Light '
        'Orange=255'
        ',153,000'
        'Gold=255,20'
        '4,000'
        'Beige=255,2'
        '04,153'
        'Yellow=255,2'
        '55,000'
        'Light '
        'Yellow=255,2'
        '55,153'
        'Olive=128,12'
        '8,000'
        'Dark '
        'Green=000,0'
        '51,000'
        'Green=000,1'
        '28,000'
        'Teal=000,128'
        ',128'
        'Sea=051,153'
        ',102'
        'Light '
        'Green=153,2'
        '04,000'
        'Lime=000,25'
        '5,000'
        'Money '
        'Green=192,2'
        '20,192'
        'Pale '
        'Green=204,2'
        '55,204'
        'Navy=000,00'
        '0,128'
        'Indigo=051,'
        '051,153'
        'Blue=000,00'
        '0,255'
        'Light '
        'Blue=051,10'
        '2,255'
        'Azure=000,2'
        '04,255'
        'Pale '
        'Blue=153,20'
        '4,255'
        'Aqua=000,2'
        '55,255'
        'Aquamarine'
        '=051,204,20'
        '4'
        'Purple=128,'
        '000,128'
        'Fuchsia=255'
        ',000,255'
        'Plum=153,05'
        '1,102'
        '-=System '
        'colors'
        'Active '
        'Border=180,'
        '180,180'
        'Active '
        'Caption=153'
        ',180,209'
        'Application '
        'Workspace='
        '171,171,171'
        'Background'
        '=051,045,06'
        '4'
        'Button '
        'Face=240,24'
        '0,240'
        'Button '
        'Highlight=2'
        '55,255,255'
        'Button '
        'Shadow=16'
        '0,160,160'
        'Button '
        'Text=000,000'
        ',000'
        'Caption '
        'Text=000,000'
        ',000'
        'Gradient '
        'Active '
        'Caption=185'
        ',209,234'
        'Gradient '
        'Inactive '
        'Caption=215'
        ',228,242'
        'Gray '
        'Text=109,109'
        ',109'
        'Highlight '
        'Background'
        '=051,153,25'
        '5'
        'Highlight '
        'Text=255,255'
        ',255'
        'Hot '
        'Light=000,10'
        '2,204'
        'Inactive '
        'Border=244,'
        '247,252'
        'Inactive '
        'Caption=191'
        ',205,219'
        'Inactive '
        'Caption '
        'Text=067,078'
        ',084'
        'Info '
        'Background'
        '=255,255,22'
        '5'
        'Info '
        'Text=000,000'
        ',000'
        'Menu '
        'Background'
        '=240,240,24'
        '0'
        'Menu '
        'Bar=240,240,'
        '240'
        'Menu '
        'Highlight=0'
        '51,153,255'
        'Menu '
        'Text=000,000'
        ',000'
        'Scroll '
        'Bar=200,200,'
        '200'
        '3D Dark '
        'Shadow=10'
        '5,105,105'
        '3D '
        'Light=227,22'
        '7,227'
        'Window '
        'Background'
        '=255,255,25'
        '5'
        'Window '
        'Frame=100,1'
        '00,100'
        'Window '
        'Text=000,000'
        ',000'
        '-=Standard '
        '16 colors'
        'Black=000,00'
        '0,000'
        'Maroon=128'
        ',000,000'
        'Green=000,1'
        '28,000'
        'Olive=128,12'
        '8,000'
        'Navy=000,00'
        '0,128'
        'Purple=128,'
        '000,128'
        'Teal=000,128'
        ',128'
        'Silver=192,1'
        '92,192'
        'Gray=128,12'
        '8,128'
        'Red=255,000'
        ',000'
        'Lime=000,25'
        '5,000'
        'Yellow=255,2'
        '55,000'
        'Blue=000,00'
        '0,255'
        'Fuchsia=255'
        ',000,255'
        'Aqua=000,2'
        '55,255'
        'White=255,2'
        '55,255'
        '-=Standard '
        '48 colors'
        '=255,128,12'
        '8'
        '=255,255,12'
        '8'
        '=128,255,12'
        '8'
        '=000,255,12'
        '8'
        '=128,255,25'
        '5'
        '=000,128,25'
        '5'
        '=255,128,19'
        '2'
        '=255,128,25'
        '5'
        'Red=255,000'
        ',000'
        'Yellow=255,2'
        '55,000'
        '=128,255,00'
        '0'
        '=000,255,06'
        '4'
        'Aqua=000,2'
        '55,255'
        '=000,128,19'
        '2'
        '=128,128,19'
        '2'
        'Pink=255,00'
        '0,255'
        '=128,064,06'
        '4'
        '=255,128,06'
        '4'
        'Lime=000,25'
        '5,000'
        'Teal=000,128'
        ',128'
        '=000,064,12'
        '8'
        '=128,128,25'
        '5'
        '=128,000,06'
        '4'
        '=255,000,12'
        '8'
        'Maroon=128'
        ',000,000'
        '=255,128,00'
        '0'
        'Green=000,1'
        '28,000'
        '=000,128,06'
        '4'
        'Blue=000,00'
        '0,255'
        '=000,000,16'
        '0'
        'Purple=128,'
        '000,128'
        '=128,000,25'
        '5'
        '=064,000,00'
        '0'
        '=128,064,00'
        '0'
        '=000,064,00'
        '0'
        '=000,064,06'
        '4'
        'Navy=000,00'
        '0,128'
        '=000,000,06'
        '4'
        '=064,000,06'
        '4'
        '=064,000,12'
        '8'
        'Black=000,00'
        '0,000'
        'Olive=128,12'
        '8,000'
        '=128,128,06'
        '4'
        'Gray=128,12'
        '8,128'
        '=064,128,12'
        '8'
        'Silver=192,1'
        '92,192'
        '=064,000,06'
        '4'
        'White=255,2'
        '55,255'
        '-=Windows '
        '10 theme '
        'colors'
        '=255,185,00'
        '0'
        '=255,140,00'
        '0'
        '=247,099,01'
        '2'
        '=202,080,01'
        '6'
        '=218,059,00'
        '1'
        '=239,105,08'
        '0'
        '=209,052,05'
        '6'
        '=255,067,06'
        '7'
        '=231,072,08'
        '6'
        '=232,017,03'
        '5'
        '=234,000,09'
        '4'
        '=195,000,08'
        '2'
        '=227,000,14'
        '0'
        '=191,000,11'
        '9'
        '=194,057,17'
        '9'
        '=154,000,13'
        '7'
        '=000,120,21'
        '5'
        '=000,099,17'
        '7'
        '=142,140,21'
        '6'
        '=107,105,21'
        '4'
        '=135,100,18'
        '4'
        '=116,077,16'
        '9'
        '=177,070,19'
        '4'
        '=136,023,15'
        '2'
        '=000,153,18'
        '8'
        '=045,125,15'
        '4'
        '=000,183,19'
        '5'
        '=003,131,13'
        '5'
        '=000,178,14'
        '8'
        '=001,133,11'
        '6'
        '=000,204,10'
        '6'
        '=016,137,06'
        '2'
        '=122,117,11'
        '6'
        '=093,090,08'
        '8'
        '=104,118,13'
        '8'
        '=081,092,10'
        '7'
        '=086,124,11'
        '5'
        '=072,104,09'
        '6'
        '=073,130,00'
        '5'
        '=016,124,01'
        '6'
        '=118,118,11'
        '8'
        '=076,074,07'
        '2'
        '=105,121,12'
        '6'
        '=074,084,08'
        '9'
        '=100,124,10'
        '0'
        '=082,094,08'
        '4'
        '=132,117,06'
        '9'
        '=126,115,09'
        '5'
        '-=Web gray '
        'and black '
        'colors@@Bg'
        'Color=4,4,4'
        '@BgColorTo'
        '=29,29,29@F'
        'ontColor=25'
        '0,250,250'
        'Gainsboro='
        '220,220,220'
        '@@BgColor'
        '=50,50,50@F'
        'ontColor=25'
        '0,250,250'
        'LightGrey=2'
        '11,211,211@'
        '@BgColor=5'
        '0,50,50@Fon'
        'tColor=250,2'
        '50,250'
        'Silver=192,1'
        '92,192@@B'
        'gColor=50,5'
        '0,50@FontC'
        'olor=250,25'
        '0,250'
        'DarkGray=16'
        '9,169,169@'
        '@BgColor=5'
        '0,50,50@Fon'
        'tColor=250,2'
        '50,250'
        'Gray=128,12'
        '8,128@@Bg'
        'Color=50,50,'
        '50@FontCol'
        'or=250,250,2'
        '50'
        'DimGray=10'
        '5,105,105@'
        '@BgColor=5'
        '0,50,50@Fon'
        'tColor=250,2'
        '50,250'
        'LightSlateGr'
        'ay=119,136,1'
        '53@@BgCol'
        'or=50,50,50'
        '@FontColor'
        '=250,250,25'
        '0'
        'SlateGray=1'
        '12,128,144@'
        '@BgColor=5'
        '0,50,50@Fon'
        'tColor=250,2'
        '50,250'
        'DarkSlateGra'
        'y=047,079,07'
        '9@@BgColo'
        'r=50,50,50@'
        'FontColor=2'
        '50,250,250'
        'Black=000,00'
        '0,000@@Bg'
        'Color=50,50,'
        '50@FontCol'
        'or=250,250,2'
        '50'
        '-=Web '
        'white '
        'colors@@Bg'
        'Color=254,2'
        '54,254@BgC'
        'olorTo=244,'
        '244,244@Fo'
        'ntColor=0,0,'
        '0'
        'White=255,2'
        '55,255'
        'Snow=255,2'
        '50,250'
        'Honeydew='
        '240,255,240'
        'MintCream='
        '245,255,250'
        'Azure=240,2'
        '55,255'
        'AliceBlue=24'
        '0,248,255'
        'GhostWhite'
        '=248,248,25'
        '5'
        'WhiteSmoke'
        '=245,245,24'
        '5'
        'Seashell=25'
        '5,245,238'
        'Beige=245,2'
        '45,220'
        'OldLace=253'
        ',245,230'
        'FloralWhite'
        '=255,250,24'
        '0'
        'Ivory=255,25'
        '5,240'
        'AntiqueWhit'
        'e=250,235,2'
        '15'
        'Linen=250,2'
        '40,230'
        'LavenderBlus'
        'h=255,240,2'
        '45'
        'MistyRose=2'
        '55,228,225'
        '-=Web pink '
        'colors@@Bg'
        'Color=254,2'
        '31,237@BgC'
        'olorTo=244,'
        '208,213@Fo'
        'ntColor=83,'
        '0,13'
        'Pink=255,19'
        '2,203@@Bg'
        'Color=255,2'
        '15,221@Fon'
        'tColor=83,0,'
        '13'
        'LightPink=2'
        '55,182,193@'
        '@BgColor=2'
        '55,215,221@'
        'FontColor=8'
        '3,0,13'
        'HotPink=255'
        ',105,180@@'
        'BgColor=255'
        ',215,221@Fo'
        'ntColor=83,'
        '0,13'
        'DeepPink=2'
        '55,020,147@'
        '@BgColor=2'
        '55,215,221@'
        'FontColor=8'
        '3,0,13'
        'PaleVioletRe'
        'd=219,112,1'
        '47@@BgCol'
        'or=255,215,2'
        '21@FontCol'
        'or=83,0,13'
        'MediumViol'
        'etRed=199,0'
        '21,133@@B'
        'gColor=255,'
        '215,221@Fo'
        'ntColor=83,'
        '0,13'
        '-=Web red '
        'colors@@Bg'
        'Color=232,0'
        '69,063@BgC'
        'olorTo=196,'
        '059,054@Fo'
        'ntColor=255'
        ',234,234'
        'LightSalmon'
        '=255,160,12'
        '2@@BgColo'
        'r=209,063,05'
        '8@FontColo'
        'r=255,234,23'
        '4'
        'Salmon=250,'
        '128,114@@B'
        'gColor=209,'
        '063,058@Fo'
        'ntColor=255'
        ',234,234'
        'DarkSalmon'
        '=233,150,12'
        '2@@BgColo'
        'r=209,063,05'
        '8@FontColo'
        'r=255,234,23'
        '4'
        'LightCoral=2'
        '40,128,128@'
        '@BgColor=2'
        '09,063,058@'
        'FontColor=2'
        '55,234,234'
        'IndianRed=2'
        '05,092,092@'
        '@BgColor=2'
        '09,063,058@'
        'FontColor=2'
        '55,234,234'
        'Crimson=20'
        '5,092,092@'
        '@BgColor=2'
        '09,063,058@'
        'FontColor=2'
        '55,234,234'
        'FireBrick=17'
        '8,034,034@'
        '@BgColor=2'
        '09,063,058@'
        'FontColor=2'
        '55,234,234'
        'DarkRed=13'
        '9,000,000@'
        '@BgColor=2'
        '09,063,058@'
        'FontColor=2'
        '55,234,234'
        'Red=255,000'
        ',000@@BgC'
        'olor=209,06'
        '3,058@Font'
        'Color=255,2'
        '34,234'
        '-=Web '
        'orange '
        'colors@@Bg'
        'Color=254,2'
        '21,124@BgC'
        'olorTo=240,'
        '199,112@Fo'
        'ntColor=64,'
        '41,0'
        'OrangeRed='
        '255,069,000'
        '@@BgColor'
        '=250,206,11'
        '6@FontColo'
        'r=64,41,0'
        'Tomato=255,'
        '099,071@@B'
        'gColor=250,'
        '206,116@Fo'
        'ntColor=64,'
        '41,0'
        'Coral=255,1'
        '27,080@@B'
        'gColor=250,'
        '206,116@Fo'
        'ntColor=64,'
        '41,0'
        'DarkOrange'
        '=255,140,00'
        '0@@BgColo'
        'r=250,206,11'
        '6@FontColo'
        'r=64,41,0'
        'Orange=255'
        ',165,000@@'
        'BgColor=250'
        ',206,116@Fo'
        'ntColor=64,'
        '41,0'
        '-=Web '
        'yellow '
        'colors@@Bg'
        'Color=254,2'
        '54,226@BgC'
        'olorTo=243,'
        '241,204@Fo'
        'ntColor=43,'
        '41,0'
        'Yellow=255,2'
        '55,000@@B'
        'gColor=254,'
        '251,211@Fo'
        'ntColor=43,'
        '41,0'
        'LightYellow='
        '255,255,224'
        '@@BgColor'
        '=254,251,21'
        '1@FontColo'
        'r=43,41,0'
        'LemonChiffo'
        'n=255,250,2'
        '05@@BgCol'
        'or=254,251,2'
        '11@FontCol'
        'or=43,41,0'
        'LightGolden'
        'rodYellow=2'
        '50,250,210@'
        '@BgColor=2'
        '54,251,211@'
        'FontColor=4'
        '3,41,0'
        'PapayaWhip'
        '=255,239,21'
        '3@@BgColo'
        'r=254,251,21'
        '1@FontColo'
        'r=43,41,0'
        'Moccasin=2'
        '55,228,181@'
        '@BgColor=2'
        '54,251,211@'
        'FontColor=4'
        '3,41,0'
        'PeachPuff=2'
        '55,218,185@'
        '@BgColor=2'
        '54,251,211@'
        'FontColor=4'
        '3,41,0'
        'PaleGoldenr'
        'od=238,232,'
        '170@@BgCo'
        'lor=254,251,'
        '211@FontCo'
        'lor=43,41,0'
        'Khaki=240,2'
        '30,140@@B'
        'gColor=254,'
        '251,211@Fo'
        'ntColor=43,'
        '41,0'
        'DarkKhaki=1'
        '89,183,107@'
        '@BgColor=2'
        '54,251,211@'
        'FontColor=4'
        '3,41,0'
        'Gold=255,21'
        '5,000@@Bg'
        'Color=254,2'
        '51,211@Fon'
        'tColor=43,41'
        ',0'
        '-=Web '
        'brown '
        'colors@@Bg'
        'Color=129,0'
        '95,061@BgC'
        'olorTo=104,'
        '076,049@Fo'
        'ntColor=230'
        ',215,202'
        'Cornsilk=25'
        '5,248,220@'
        '@BgColor=1'
        '14,084,054@'
        'FontColor=2'
        '30,215,202'
        'BlanchedAlm'
        'ond=255,23'
        '5,205@@Bg'
        'Color=114,0'
        '84,054@Fon'
        'tColor=230,2'
        '15,202'
        'Bisque=255,'
        '228,196@@B'
        'gColor=114,'
        '084,054@Fo'
        'ntColor=230'
        ',215,202'
        'NavajoWhite'
        '=255,222,17'
        '3@@BgColo'
        'r=114,084,05'
        '4@FontColo'
        'r=230,215,20'
        '2'
        'Wheat=245,'
        '222,179@@B'
        'gColor=114,'
        '084,054@Fo'
        'ntColor=230'
        ',215,202'
        'BurlyWood='
        '222,184,135'
        '@@BgColor'
        '=114,084,05'
        '4@FontColo'
        'r=230,215,20'
        '2'
        'Tan=210,180'
        ',140@@BgC'
        'olor=114,08'
        '4,054@Font'
        'Color=230,2'
        '15,202'
        'RosyBrown='
        '188,143,143'
        '@@BgColor'
        '=114,084,05'
        '4@FontColo'
        'r=230,215,20'
        '2'
        'SandyBrown'
        '=244,164,09'
        '6@@BgColo'
        'r=114,084,05'
        '4@FontColo'
        'r=230,215,20'
        '2'
        'Goldenrod='
        '218,165,032'
        '@@BgColor'
        '=114,084,05'
        '4@FontColo'
        'r=230,215,20'
        '2'
        'DarkGoldenr'
        'od=184,134,'
        '011@@BgCo'
        'lor=114,084,'
        '054@FontCo'
        'lor=230,215,'
        '202'
        'Peru=205,13'
        '3,063@@Bg'
        'Color=114,0'
        '84,054@Fon'
        'tColor=230,2'
        '15,202'
        'Chocolate=2'
        '10,105,030@'
        '@BgColor=1'
        '14,084,054@'
        'FontColor=2'
        '30,215,202'
        'SaddleBrow'
        'n=139,069,0'
        '19@@BgCol'
        'or=114,084,0'
        '54@FontCol'
        'or=230,215,2'
        '02'
        'Sienna=160,'
        '082,045@@B'
        'gColor=114,'
        '084,054@Fo'
        'ntColor=230'
        ',215,202'
        'Brown=165,'
        '042,042@@B'
        'gColor=114,'
        '084,054@Fo'
        'ntColor=230'
        ',215,202'
        'Maroon=128'
        ',000,000@@'
        'BgColor=114'
        ',084,054@Fo'
        'ntColor=230'
        ',215,202'
        '-=Web '
        'green '
        'colors@@Bg'
        'Color=076,1'
        '42,102@BgC'
        'olorTo=061,'
        '114,082@Fo'
        'ntColor=204'
        ',234,214'
        'DarkOliveGr'
        'een=085,107'
        ',047@@BgC'
        'olor=067,12'
        '6,090@Font'
        'Color=204,2'
        '34,214'
        'Olive=128,12'
        '8,000@@Bg'
        'Color=067,1'
        '26,090@Fon'
        'tColor=204,2'
        '34,214'
        'OliveDrab=1'
        '07,142,035@'
        '@BgColor=0'
        '67,126,090@'
        'FontColor=2'
        '04,234,214'
        'YellowGreen'
        '=154,205,05'
        '0@@BgColo'
        'r=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'LimeGreen='
        '050,205,050'
        '@@BgColor'
        '=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'Lime=000,25'
        '5,000@@Bg'
        'Color=067,1'
        '26,090@Fon'
        'tColor=204,2'
        '34,214'
        'LawnGreen='
        '124,252,000'
        '@@BgColor'
        '=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'Chartreuse='
        '127,255,000'
        '@@BgColor'
        '=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'GreenYellow'
        '=173,255,04'
        '7@@BgColo'
        'r=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'SpringGreen'
        '=000,255,12'
        '7@@BgColo'
        'r=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'MediumSpri'
        'ngGreen=00'
        '0,250,154@'
        '@BgColor=0'
        '67,126,090@'
        'FontColor=2'
        '04,234,214'
        'LightGreen='
        '144,238,144'
        '@@BgColor'
        '=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'PaleGreen=1'
        '52,251,152@'
        '@BgColor=0'
        '67,126,090@'
        'FontColor=2'
        '04,234,214'
        'DarkSeaGree'
        'n=143,188,1'
        '43@@BgCol'
        'or=067,126,0'
        '90@FontCol'
        'or=204,234,2'
        '14'
        'MediumAqu'
        'amarine=102'
        ',205,170@@'
        'BgColor=067'
        ',126,090@Fo'
        'ntColor=204'
        ',234,214'
        'MediumSea'
        'Green=060,1'
        '79,113@@B'
        'gColor=067,'
        '126,090@Fo'
        'ntColor=204'
        ',234,214'
        'SeaGreen=0'
        '46,139,087@'
        '@BgColor=0'
        '67,126,090@'
        'FontColor=2'
        '04,234,214'
        'ForestGreen'
        '=034,139,03'
        '4@@BgColo'
        'r=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        'Green=000,1'
        '28,000@@B'
        'gColor=067,'
        '126,090@Fo'
        'ntColor=204'
        ',234,214'
        'DarkGreen='
        '000,100,000'
        '@@BgColor'
        '=067,126,09'
        '0@FontColo'
        'r=204,234,21'
        '4'
        '-=Web cyan '
        'colors@@Bg'
        'Color=211,2'
        '54,254@BgC'
        'olorTo=191,'
        '239,242@Fo'
        'ntColor=14,'
        '78,88'
        'Aqua=000,2'
        '55,255@@B'
        'gColor=197,'
        '249,252@Fo'
        'ntColor=14,'
        '78,88'
        'Cyan=000,25'
        '5,255@@Bg'
        'Color=197,2'
        '49,252@Fon'
        'tColor=14,78'
        ',88'
        'LightCyan=2'
        '24,255,255@'
        '@BgColor=1'
        '97,249,252@'
        'FontColor=1'
        '4,78,88'
        'PaleTurquois'
        'e=175,238,2'
        '38@@BgCol'
        'or=197,249,2'
        '52@FontCol'
        'or=14,78,88'
        'Aquamarine'
        '=127,255,21'
        '2@@BgColo'
        'r=197,249,25'
        '2@FontColo'
        'r=14,78,88'
        'Turquoise=0'
        '64,224,208@'
        '@BgColor=1'
        '97,249,252@'
        'FontColor=1'
        '4,78,88'
        'MediumTurq'
        'uoise=072,2'
        '09,204@@B'
        'gColor=197,'
        '249,252@Fo'
        'ntColor=14,'
        '78,88'
        'DarkTurquoi'
        'se=000,206,2'
        '09@@BgCol'
        'or=197,249,2'
        '52@FontCol'
        'or=14,78,88'
        'LightSeaGre'
        'en=032,178,'
        '170@@BgCo'
        'lor=197,249,'
        '252@FontCo'
        'lor=14,78,88'
        'CadetBlue=0'
        '95,158,160@'
        '@BgColor=1'
        '97,249,252@'
        'FontColor=1'
        '4,78,88'
        'DarkCyan=0'
        '00,139,139@'
        '@BgColor=1'
        '97,249,252@'
        'FontColor=1'
        '4,78,88'
        'Teal=000,128'
        ',128@@BgC'
        'olor=197,24'
        '9,252@Font'
        'Color=14,78,'
        '88'
        '-=Web blue '
        'colors@@Bg'
        'Color=032,0'
        '95,203@BgC'
        'olorTo=026,'
        '076,163@Fo'
        'ntColor=207'
        ',228,250'
        'LightSteelBlu'
        'e=176,196,2'
        '22@@BgCol'
        'or=028,084,1'
        '79@FontCol'
        'or=207,228,2'
        '50'
        'PowderBlue'
        '=176,224,23'
        '0@@BgColo'
        'r=028,084,17'
        '9@FontColo'
        'r=207,228,25'
        '0'
        'LightBlue=1'
        '73,216,230@'
        '@BgColor=0'
        '28,084,179@'
        'FontColor=2'
        '07,228,250'
        'SkyBlue=135'
        ',206,235@@'
        'BgColor=028'
        ',084,179@Fo'
        'ntColor=207'
        ',228,250'
        'LightSkyBlue'
        '=135,206,25'
        '0@@BgColo'
        'r=028,084,17'
        '9@FontColo'
        'r=207,228,25'
        '0'
        'DeepSkyBlue'
        '=000,191,25'
        '5@@BgColo'
        'r=028,084,17'
        '9@FontColo'
        'r=207,228,25'
        '0'
        'DodgerSkyBl'
        'ue=030,144,'
        '255@@BgCo'
        'lor=028,084,'
        '179@FontCo'
        'lor=207,228,'
        '250'
        'CornflowerBl'
        'ue=100,149,'
        '237@@BgCo'
        'lor=028,084,'
        '179@FontCo'
        'lor=207,228,'
        '250'
        'SteelBlue=07'
        '0,130,180@'
        '@BgColor=0'
        '28,084,179@'
        'FontColor=2'
        '07,228,250'
        'RoyalBlue=0'
        '65,105,225@'
        '@BgColor=0'
        '28,084,179@'
        'FontColor=2'
        '07,228,250'
        'Blue=000,00'
        '0,255@@Bg'
        'Color=028,0'
        '84,179@Fon'
        'tColor=207,2'
        '28,250'
        'MediumBlue'
        '=000,000,20'
        '5@@BgColo'
        'r=028,084,17'
        '9@FontColo'
        'r=207,228,25'
        '0'
        'DarkBlue=00'
        '0,000,139@'
        '@BgColor=0'
        '28,084,179@'
        'FontColor=2'
        '07,228,250'
        'Navy=000,00'
        '0,128@@Bg'
        'Color=028,0'
        '84,179@Fon'
        'tColor=207,2'
        '28,250'
        'MidnightBlu'
        'e=025,025,1'
        '12@@BgCol'
        'or=028,084,1'
        '79@FontCol'
        'or=207,228,2'
        '50'
        '-=Web '
        'purple, '
        'violet, '
        'magenta '
        'colors@@Bg'
        'Color=151,0'
        '94,162@BgC'
        'olorTo=127,'
        '080,137@Fo'
        'ntColor=238'
        ',220,245'
        'Lavender=23'
        '0,230,250@'
        '@BgColor=1'
        '36,085,147@'
        'FontColor=2'
        '38,220,245'
        'Thistle=216,'
        '191,216@@B'
        'gColor=136,'
        '085,147@Fo'
        'ntColor=238'
        ',220,245'
        'Plum=221,16'
        '0,221@@Bg'
        'Color=136,0'
        '85,147@Fon'
        'tColor=238,2'
        '20,245'
        'Violet=238,1'
        '30,238@@B'
        'gColor=136,'
        '085,147@Fo'
        'ntColor=238'
        ',220,245'
        'Orchid=218,'
        '112,214@@B'
        'gColor=136,'
        '085,147@Fo'
        'ntColor=238'
        ',220,245'
        'Fuchsia=255'
        ',000,255@@'
        'BgColor=136'
        ',085,147@Fo'
        'ntColor=238'
        ',220,245'
        'Magenta=25'
        '5,000,255@'
        '@BgColor=1'
        '36,085,147@'
        'FontColor=2'
        '38,220,245'
        'MediumOrch'
        'id=186,085,2'
        '11@@BgCol'
        'or=136,085,1'
        '47@FontCol'
        'or=238,220,2'
        '45'
        'MediumPurp'
        'le=147,112,2'
        '19@@BgCol'
        'or=136,085,1'
        '47@FontCol'
        'or=238,220,2'
        '45'
        'BlueViolet=1'
        '38,043,226@'
        '@BgColor=1'
        '36,085,147@'
        'FontColor=2'
        '38,220,245'
        'DarkViolet='
        '148,000,211'
        '@@BgColor'
        '=136,085,14'
        '7@FontColo'
        'r=238,220,24'
        '5'
        'DarkOrchid='
        '153,050,204'
        '@@BgColor'
        '=136,085,14'
        '7@FontColo'
        'r=238,220,24'
        '5'
        'DarkMagent'
        'a=139,000,1'
        '39@@BgCol'
        'or=136,085,1'
        '47@FontCol'
        'or=238,220,2'
        '45'
        'Purple=128,'
        '000,128@@B'
        'gColor=136,'
        '085,147@Fo'
        'ntColor=238'
        ',220,245'
        'Indigo=075,'
        '000,130@@B'
        'gColor=136,'
        '085,147@Fo'
        'ntColor=238'
        ',220,245'
        'DarkSlateBlu'
        'e=072,061,1'
        '39@@BgCol'
        'or=136,085,1'
        '47@FontCol'
        'or=238,220,2'
        '45'
        'SlateBlue=10'
        '6,090,205@'
        '@BgColor=1'
        '36,085,147@'
        'FontColor=2'
        '38,220,245'
        'MediumSlate'
        'Blue=117,09'
        '9,226@@Bg'
        'Color=136,0'
        '85,147@Fon'
        'tColor=238,2'
        '20,245')
      TabOrder = 1
    end
    object clbT: TJppColorListBox
      AlignWithMargins = True
      Left = 217
      Top = 6
      Width = 224
      Height = 43
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      ItemHeight = 15
      TabOrder = 2
      BorderStyle = bsNone
      Items.Strings = (
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
      Appearance.ColorRectangle.Visible = False
      Appearance.ColorRectangle.PaddingTop = 0
      Appearance.ColorRectangle.PaddingBottom = 0
      Appearance.ShowColorName = False
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
      Appearance.ChangeColorItem.Caption = 'Select color...'
      ColorListSet = [cltBasic, cltStandard16, cltStandard48, cltWin10Theme, cltSystem, cltWebGrayBlack, cltWebWhite, cltWebPink, cltWebRed, cltWebOrange, cltWebYellow, cltWebBrown, cltWebGreen, cltWebCyan, cltWebBlue, cltWebPurpleVioletMagenta]
      Options = []
      SelectedColor = clNone
    end
  end
  object pnBottom: TJppSimplePanel
    AlignWithMargins = True
    Left = 1
    Top = 446
    Width = 724
    Height = 34
    Margins.Left = 1
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    TabOrder = 2
    Appearance.BackgroundColor = 14342874
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    object lblImageRect: TLabel
      AlignWithMargins = True
      Left = 462
      Top = 0
      Width = 114
      Height = 31
      Hint = 
        'The size and screen coordinates of the rectangle with the previe' +
        'w image'
      Margins.Left = 0
      Margins.Top = 0
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = '  IMAGE RECT'
      Color = 13487565
      ParentColor = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      Layout = tlBottom
      ExplicitLeft = 631
      ExplicitHeight = 33
    end
    object pnZoom: TJppSimplePanel
      AlignWithMargins = True
      Left = 81
      Top = 1
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      TabOrder = 0
      Appearance.BackgroundColor = 14342874
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawBottomBorder = False
      Appearance.DrawLeftBorder = False
      object cbResampler: TComboBox
        Left = 10
        Top = 6
        Width = 66
        Height = 21
        Hint = 'The algorithm used to enlarge the image'
        Style = csDropDownList
        ItemIndex = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'Box'
        OnChange = cbResamplerChange
        Items.Strings = (
          'Box'
          'Linear'
          'Cubic'
          'Mitchell'
          'Spline'
          'Lanczos')
      end
    end
    object pnCaptureColorInfo: TJppBasicPanel
      AlignWithMargins = True
      Left = 581
      Top = 3
      Width = 141
      Height = 29
      Hint = 
        'To add a color under the cursor to the color palette, press F4'#13#10 +
        'To copy the color code under the cursor, press F3'
      Margins.Left = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alRight
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Appearance.UpperGradient.BalanceMode = bmMirror
      Appearance.UpperGradient.Orientation = dgdAngle
      Appearance.UpperGradient.SpeedPercent = 100
      Appearance.UpperGradient.ColorFrom = 11924733
      Appearance.UpperGradient.ColorTo = 13826815
      Appearance.BottomGradient.SpeedPercent = 100
      Appearance.BottomGradient.ColorFrom = 11006974
      Appearance.BottomGradient.ColorTo = 13892094
      Appearance.UpperGradientPercent = 100
      Appearance.Borders.Left.Pen.Color = 11053224
      Appearance.Borders.Right.Pen.Color = 11053224
      Appearance.Borders.Top.Pen.Color = 11053224
      Appearance.Borders.Bottom.Pen.Color = 11053224
      object lblCaptureCopyColorInfo: TLabel
        Left = 0
        Top = 0
        Width = 141
        Height = 26
        Align = alTop
        Alignment = taCenter
        Caption = 'F4 - Capture color'#13#10'F3 - Copy color'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 87
      end
    end
    object pnCursorPosition: TJppSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 1
      Width = 81
      Height = 33
      Hint = 'Cursor position'
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Appearance.BackgroundColor = 15461355
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawBottomBorder = False
      Appearance.DrawLeftBorder = False
      object dlblPosX: TJppDoubleLabel
        Left = 8
        Top = 2
        Width = 46
        Height = 14
        RightCaption = 'XPos'
        Caption = 'X ='
        RightCaptionFont.Charset = DEFAULT_CHARSET
        RightCaptionFont.Color = clWindowText
        RightCaptionFont.Height = -11
        RightCaptionFont.Name = 'Tahoma'
        RightCaptionFont.Style = []
      end
      object dlblPosY: TJppDoubleLabel
        Left = 8
        Top = 16
        Width = 45
        Height = 14
        RightCaption = 'YPos'
        Caption = 'Y ='
        RightCaptionFont.Charset = DEFAULT_CHARSET
        RightCaptionFont.Color = clWindowText
        RightCaptionFont.Height = -11
        RightCaptionFont.Name = 'Tahoma'
        RightCaptionFont.Style = []
      end
    end
  end
  object pnPalette: TJppSimplePanel
    Left = 565
    Top = 75
    Width = 161
    Height = 371
    Margins.Left = 0
    Margins.Top = 1
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alRight
    Constraints.MinWidth = 45
    TabOrder = 0
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawRightBorder = False
    object shLine: TShape
      Left = 0
      Top = 46
      Width = 161
      Height = 10
      Align = alTop
      Pen.Color = 11053224
      ExplicitLeft = 101
      ExplicitTop = 380
      ExplicitWidth = 203
    end
    object clbColors: TJppColorListBox
      AlignWithMargins = True
      Left = 1
      Top = 56
      Width = 160
      Height = 136
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PopupMenu = popColorPalette
      TabOrder = 0
      OnClick = InitCtrls
      Multiselect = True
      BorderStyle = bsNone
      Items.Strings = (
        'LightSalmon=255,160,122'
        'Salmon=250,128,114'
        'DarkSalmon=233,150,122')
      Appearance.ColorRectangle.Width = 26
      Appearance.ColorRectangle.PaddingTop = 0
      Appearance.ColorRectangle.PaddingBottom = 0
      Appearance.ColorRectangle.BorderMode = bmSimpleColor
      Appearance.ColorRectangle.BorderColor = clBlack
      Appearance.ColorRectangle.LeftMargin = 0
      Appearance.ColorRectangle.HideTopBorder = True
      Appearance.ShowColorName = False
      Appearance.RgbIntParams.RgbSeparator = ','
      Appearance.RgbHexParams.RgbSeparator = ' '
      Appearance.RgbHexParams.Prefix = '#'
      Appearance.BgrHexParams.Prefix = '$00'
      Appearance.DataSeparator = ' - '
      Appearance.NumericFont.Charset = DEFAULT_CHARSET
      Appearance.NumericFont.Color = clBlack
      Appearance.NumericFont.Height = -11
      Appearance.NumericFont.Name = 'Lucida Console'
      Appearance.NumericFont.Style = []
      Appearance.NumericFontSelectedColor = clWhite
      Appearance.TextMargin = 5
      Appearance.NumericTextPosDeltaY = 0
      Appearance.SeparatorItem.Background.Gradient.SpeedPercent = 100
      Appearance.SeparatorItem.Background.Gradient.ColorFrom = clWhite
      Appearance.SeparatorItem.Background.Gradient.ColorTo = clBtnFace
      Appearance.SeparatorItem.Font.Charset = DEFAULT_CHARSET
      Appearance.SeparatorItem.Font.Color = clWindowText
      Appearance.SeparatorItem.Font.Height = -11
      Appearance.SeparatorItem.Font.Name = 'Tahoma'
      Appearance.SeparatorItem.Font.Style = []
      Appearance.SelectedItem.Background.Gradient.SpeedPercent = 100
      Appearance.SelectedItem.Background.Gradient.ColorFrom = 15563798
      Appearance.SelectedItem.Background.Gradient.ColorTo = 15300626
      Appearance.SelectedItem.Background.Color = clHighlight
      Appearance.SelectedItem.Background.Borders.Left.Color = 16745997
      Appearance.SelectedItem.Background.Borders.Right.Color = 16745997
      Appearance.SelectedItem.Background.Borders.Top.Color = clHighlight
      Appearance.SelectedItem.Background.Borders.Bottom.Color = 16745997
      Appearance.SelectedItem.Background.DrawBorders = False
      Appearance.SelectedItem.FontColor = clWhite
      Appearance.LeftMargin = 3
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
      Appearance.ChangeColorItem.Caption = 'Select color...'
      ColorListSet = [cltWebRed]
      Options = []
      SelectedColor = 8036607
    end
    object pnColorPaletteTitle: TJppBasicPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 160
      Height = 20
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
      Appearance.UpperGradient.SpeedPercent = 100
      Appearance.UpperGradient.ColorFrom = 14408667
      Appearance.UpperGradient.ColorTo = 13619151
      Appearance.BottomGradient.SpeedPercent = 100
      Appearance.BottomGradient.ColorFrom = 13619151
      Appearance.BottomGradient.ColorTo = 13619151
      Appearance.Borders.Left.Pen.Color = clBtnHighlight
      Appearance.Borders.Left.Visible = False
      Appearance.Borders.Right.Pen.Color = clBtnShadow
      Appearance.Borders.Right.Visible = False
      Appearance.Borders.Top.Pen.Color = 11053224
      Appearance.Borders.Bottom.Pen.Color = 11053224
      object lblColorPalette: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 67
        Height = 13
        Alignment = taCenter
        Caption = 'Color Palette'
        Color = 14211288
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object sbtnEditColorPalette2: TJppBasicSpeedButton
        Left = 140
        Top = 0
        Width = 20
        Height = 20
        Caption = 'Edit palette'
        Appearance.Normal.Color = clBtnFace
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = clWindowFrame
        Appearance.Normal.BorderWidth = 1
        Appearance.Normal.TransparentBorder = True
        Appearance.Normal.TransparentBackground = True
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
        Appearance.ShowCaption = False
        Action = actEditPalette
        Align = alRight
        ParentShowHint = False
        ShowHint = True
        Visible = False
        ExplicitLeft = 131
      end
    end
    object dockColorPalette: TSpTBXDock
      AlignWithMargins = True
      Left = 1
      Top = 20
      Width = 160
      Height = 26
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AllowDrag = False
      LimitToOneRow = True
      object tbColorPalette: TSpTBXToolbar
        Left = 0
        Top = 0
        FullSize = True
        Images = pilMain
        ParentShowHint = False
        ShowCaption = False
        ShowHint = True
        TabOrder = 0
        Caption = 'tbColorPalette'
        Customizable = False
        object SpTBXItem92: TSpTBXItem
          Action = actEditColorName
        end
        object SpTBXItem52: TSpTBXItem
          Action = actEditColor
        end
        object SpTBXItem40: TSpTBXItem
          Action = actEditPalette
          CustomHeight = 19
        end
        object SpTBXSeparatorItem16: TSpTBXSeparatorItem
        end
        object SpTBXItem38: TSpTBXItem
          Action = actOpenColorPalette
          CustomHeight = 19
        end
        object SpTBXItem39: TSpTBXItem
          Action = actSaveColorPalette
          CustomHeight = 19
        end
        object SpTBXSeparatorItem20: TSpTBXSeparatorItem
        end
        object SpTBXItem65: TSpTBXItem
          Action = actPalette_RemoveSelected
        end
      end
    end
  end
  object pnImg: TJppSimplePanel
    Left = 6
    Top = 72
    Width = 554
    Height = 313
    TabOrder = 1
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    object pnPreviewTop: TJppSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 1
      Width = 554
      Height = 23
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 0
      Appearance.BackgroundColor = 15191220
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      object sbtnSwitchToImageMode: TJppBasicSpeedButton
        AlignWithMargins = True
        Left = 311
        Top = -1
        Width = 130
        Height = 22
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Switch to Image mode'
        Appearance.Normal.Color = 4868682
        Appearance.Normal.FontColor = clWhite
        Appearance.Normal.BorderColor = clWindowFrame
        Appearance.Normal.BorderWidth = 0
        Appearance.Hot.Color = clBlack
        Appearance.Hot.FontColor = clWhite
        Appearance.Hot.BorderColor = clBlack
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 9917440
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 9917440
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = 16250871
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnShadow
        Appearance.Disabled.BorderWidth = 1
        Action = actSwitchToImageMode
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object chCreatePreview: TCheckBox
        AlignWithMargins = True
        Left = 4
        Top = 3
        Width = 254
        Height = 17
        Margins.Left = 4
        Margins.Right = 5
        Action = actCreatePreview
        Align = alLeft
        ParentShowHint = False
        ShowHint = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object ntb: TNotebook
      AlignWithMargins = True
      Left = 13
      Top = 51
      Width = 183
      Height = 107
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      TabOrder = 1
      object TPage
        Left = 0
        Top = 0
        Caption = 'Preview'
        object pnImgPreviewBg: TJppSimplePanel
          Left = 9
          Top = 6
          Width = 144
          Height = 82
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          TabOrder = 0
          Appearance.BackgroundColor = 7960953
          Appearance.BorderStyle = psClear
          object img: TImage
            Left = 12
            Top = 11
            Width = 83
            Height = 43
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 0
            Center = True
            PopupMenu = popupImg
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Image'
        object lblCurrentImage: TLabel
          Left = 0
          Top = 0
          Width = 183
          Height = 17
          Align = alTop
          AutoSize = False
          Caption = 'lblCurrentImage'
          Color = 14408667
          EllipsisPosition = epPathEllipsis
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ShowAccelChar = False
          Transparent = False
          Layout = tlCenter
          ExplicitWidth = 286
        end
        object sbox: TScrollBox
          Left = 10
          Top = 20
          Width = 162
          Height = 77
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Color = 2434341
          ParentColor = False
          TabOrder = 0
          object imgPicture: TImage
            Left = 1
            Top = 1
            Width = 83
            Height = 43
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 0
            Margins.Bottom = 0
            PopupMenu = popupImg
            Transparent = True
            OnMouseEnter = imgPictureMouseEnter
            OnMouseLeave = imgPictureMouseLeave
          end
        end
      end
    end
    object pnImageTop: TJppSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 25
      Width = 554
      Height = 23
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 2
      Appearance.BackgroundColor = 13234684
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      object sbtnSwitchToPreviewMode: TJppBasicSpeedButton
        AlignWithMargins = True
        Left = 425
        Top = -3
        Width = 142
        Height = 24
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Switch to Preview mode'
        Appearance.Normal.Color = clBtnFace
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = clWindowFrame
        Appearance.Normal.BorderWidth = 1
        Appearance.Hot.Color = clHighlight
        Appearance.Hot.FontColor = clHighlightText
        Appearance.Hot.BorderColor = clHighlight
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 9917440
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 9917440
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = 16250871
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnShadow
        Appearance.Disabled.BorderWidth = 1
        AutoWidthMargin = 8
        Action = actSwitchToPreviewMode
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object sbtnOpenImage: TJppBasicSpeedButton
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 108
        Height = 20
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 2
        Caption = 'Open image...'
        Appearance.Normal.Color = clBtnFace
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = clWindowFrame
        Appearance.Normal.BorderWidth = 1
        Appearance.Normal.TransparentBackground = True
        Appearance.Hot.Color = clHighlight
        Appearance.Hot.FontColor = clHighlightText
        Appearance.Hot.BorderColor = clHighlight
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 9917440
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 9917440
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = 16250871
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnShadow
        Appearance.Disabled.BorderWidth = 1
        AutoWidthMargin = 8
        Action = actOpenImage
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 0
      end
      object sbtnCloseImage: TJppBasicSpeedButton
        AlignWithMargins = True
        Left = 112
        Top = 1
        Width = 98
        Height = 20
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 2
        Caption = 'Close image'
        Appearance.Normal.Color = clBtnFace
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = clWindowFrame
        Appearance.Normal.BorderWidth = 1
        Appearance.Normal.TransparentBackground = True
        Appearance.Hot.Color = clHighlight
        Appearance.Hot.FontColor = clHighlightText
        Appearance.Hot.BorderColor = clHighlight
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 9917440
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 9917440
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = 16250871
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnShadow
        Appearance.Disabled.BorderWidth = 1
        AutoWidthMargin = 8
        Action = actCloseImage
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
      end
    end
    object pnColorCodes: TJppSimplePanel
      AlignWithMargins = True
      Left = 0
      Top = 252
      Width = 553
      Height = 61
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alBottom
      TabOrder = 3
      Appearance.BackgroundColor = 14342874
      Appearance.BorderColor = 11053224
      Appearance.DrawBottomBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object pnColorUnderCursor: TJppSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 1
        Width = 82
        Height = 60
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        PopupMenu = popupCopyColors
        TabOrder = 0
        Appearance.BackgroundColor = 14342874
        Appearance.BorderColor = 11053224
        Appearance.DrawTopBorder = False
        Appearance.DrawBottomBorder = False
        Appearance.DrawLeftBorder = False
        object pnColor: TJppSimplePanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 14
          Margins.Right = 4
          Margins.Bottom = 2
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object pnRgbGraph: TJppPanel
          AlignWithMargins = True
          Left = 0
          Top = 36
          Width = 81
          Height = 24
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          VerticalLines = <>
          HorizontalLines = <>
          Captions = <>
          HorizontalBars = <
            item
              Border.Color = 3028689
              Height = 5
              PosY = 2
              BackgroundColor = 855538
              Gradient.SpeedPercent = 100
              Gradient.ColorFrom = clWhite
              Gradient.ColorTo = clBtnFace
              DrawGradient = False
              LeftMargin = 4
              RightMargin = 4
            end
            item
              Border.Color = 5084471
              Height = 5
              PosY = 9
              BackgroundColor = 4433446
              Gradient.SpeedPercent = 100
              Gradient.ColorFrom = clWhite
              Gradient.ColorTo = clBtnFace
              DrawGradient = False
              LeftMargin = 4
              RightMargin = 4
            end
            item
              Border.Color = 13791021
              Height = 5
              PosY = 16
              BackgroundColor = 15634705
              Gradient.SpeedPercent = 100
              Gradient.ColorFrom = clWhite
              Gradient.ColorTo = clBtnFace
              DrawGradient = False
              LeftMargin = 4
              RightMargin = 4
            end>
          Align = alBottom
          TabOrder = 1
          Appearance.UpperGradient.SpeedPercent = 100
          Appearance.UpperGradient.ColorFrom = 16579836
          Appearance.UpperGradient.ColorTo = 15000804
          Appearance.BottomGradient.SpeedPercent = 100
          Appearance.BottomGradient.ColorFrom = 15000804
          Appearance.BottomGradient.ColorTo = 14211288
          Appearance.Borders.Left.Pen.Color = clBtnHighlight
          Appearance.Borders.Left.Visible = False
          Appearance.Borders.Right.Pen.Color = clBtnShadow
          Appearance.Borders.Right.Visible = False
          Appearance.Borders.Top.Pen.Color = clBtnHighlight
          Appearance.Borders.Top.Visible = False
          Appearance.Borders.Bottom.Pen.Color = clBtnShadow
          Appearance.BackgroundColor = 14342874
          Appearance.DrawGradient = False
          Appearance.DrawBorder = False
        end
      end
      object pnSelectedColor1: TJppSimplePanel
        AlignWithMargins = True
        Left = 216
        Top = 1
        Width = 140
        Height = 60
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        PopupMenu = popupCopyColors
        TabOrder = 1
        Appearance.BackgroundColor = 15132390
        Appearance.BorderColor = 11053224
        Appearance.DrawTopBorder = False
        Appearance.DrawBottomBorder = False
        Appearance.DrawLeftBorder = False
        object dlblHslCss: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'HSL CSS'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitTop = 22
        end
        object dlblHslWin: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'HSL WIN'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitLeft = 3
          ExplicitTop = 112
          ExplicitWidth = 148
        end
        object dlblCmyk: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 40
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'CMYK'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitTop = 67
        end
      end
      object pnRgbBg: TJppSimplePanel
        AlignWithMargins = True
        Left = 82
        Top = 1
        Width = 134
        Height = 60
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        PopupMenu = popupCopyColors
        TabOrder = 2
        Appearance.BackgroundColor = 15132390
        Appearance.BorderColor = 11053224
        Appearance.DrawTopBorder = False
        Appearance.DrawBottomBorder = False
        Appearance.DrawLeftBorder = False
        object dlblRgb: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Width = 124
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = '128,128,128 '
          Layout = tlCenter
          Align = alTop
          Caption = 'RGB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = 10119946
          RightCaptionFont.Height = -12
          RightCaptionFont.Name = 'Consolas'
          RightCaptionFont.Style = [fsBold]
          AutoHeight = False
        end
        object dlblHtml: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 124
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = '#AB BC CD '
          Layout = tlCenter
          Align = alTop
          Caption = 'HTML'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = 6948501
          RightCaptionFont.Height = -12
          RightCaptionFont.Name = 'Consolas'
          RightCaptionFont.Style = [fsBold]
          AutoHeight = False
        end
        object dlblRgbPercent: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 40
          Width = 124
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'RGB %'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitTop = 59
        end
      end
      object pnSelectedColor2: TJppSimplePanel
        AlignWithMargins = True
        Left = 356
        Top = 1
        Width = 140
        Height = 60
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        PopupMenu = popupCopyColors
        TabOrder = 3
        Appearance.BackgroundColor = 15132390
        Appearance.BorderColor = 11053224
        Appearance.DrawTopBorder = False
        Appearance.DrawBottomBorder = False
        Appearance.DrawLeftBorder = False
        object dlblPascalHex: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'Pascal HEX'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitLeft = 3
          ExplicitTop = 144
          ExplicitWidth = 148
        end
        object dlblPascalInt: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 22
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          LineSeparation = 3
          Align = alTop
          Caption = 'Pascal INT'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitTop = 44
        end
        object dlblCppHex: TJppDoubleLineLabel
          AlignWithMargins = True
          Left = 5
          Top = 40
          Width = 130
          Height = 14
          Margins.Left = 5
          Margins.Top = 4
          Margins.Right = 5
          Margins.Bottom = 0
          RightCaption = 'RightCaption'
          Align = alTop
          Caption = 'C++ HEX'
          RightCaptionFont.Charset = DEFAULT_CHARSET
          RightCaptionFont.Color = clBlack
          RightCaptionFont.Height = -11
          RightCaptionFont.Name = 'Tahoma'
          RightCaptionFont.Style = []
          AutoHeight = False
          ExplicitTop = 64
        end
      end
    end
  end
  object dockMenu: TSpTBXDock
    Left = 0
    Top = 0
    Width = 726
    Height = 28
    AllowDrag = False
    object tbMainMenu: TSpTBXToolbar
      Left = 0
      Top = 0
      CloseButton = False
      DockPos = 0
      FullSize = True
      Images = pilMain
      ParentShowHint = False
      ProcessShortCuts = True
      ShowHint = True
      Stretch = True
      TabOrder = 0
      OnMouseMove = MoveFoldedForm
      Caption = 'tbMainMenu'
      Customizable = False
      MenuBar = True
      object mnuFile: TSpTBXSubmenuItem
        Caption = 'File'
        object SpTBXItem6: TSpTBXItem
          Action = actStartCapturing
        end
        object SpTBXItem7: TSpTBXItem
          Action = actStopCapturing
        end
        object SpTBXItem46: TSpTBXItem
          Action = actCaptureColor
        end
        object SpTBXSeparatorItem21: TSpTBXSeparatorItem
        end
        object SpTBXItem1: TSpTBXItem
          Action = actSavePreviewImage
        end
        object SpTBXSeparatorItem18: TSpTBXSeparatorItem
        end
        object SpTBXItem43: TSpTBXItem
          Action = actSwitchToImageMode
        end
        object SpTBXItem42: TSpTBXItem
          Action = actSwitchToPreviewMode
        end
        object SpTBXSeparatorItem2: TSpTBXSeparatorItem
        end
        object SpTBXItem13: TSpTBXItem
          Action = actOpenImage
        end
        object SpTBXItem89: TSpTBXItem
          Action = actCloseImage
        end
        object SpTBXSeparatorItem1: TSpTBXSeparatorItem
        end
        object SpTBXItem30: TSpTBXItem
          Action = actOptions
        end
        object SpTBXSeparatorItem37: TSpTBXSeparatorItem
        end
        object SpTBXItem44: TSpTBXItem
          Action = actCollapse
        end
        object SpTBXItem105: TSpTBXItem
          Action = actSetSize_Small
        end
        object SpTBXItem104: TSpTBXItem
          Action = actSetSize_Medium
        end
        object SpTBXItem103: TSpTBXItem
          Action = actSetSize_Large
        end
        object SpTBXSeparatorItem38: TSpTBXSeparatorItem
        end
        object mnuShowHideoPalette: TSpTBXItem
          Action = actShowHidePalette
        end
        object SpTBXItem99: TSpTBXItem
          Action = actShowHideColorCodesPanel
        end
        object SpTBXItem98: TSpTBXItem
          Action = actShowHideBottomPanel
        end
        object SpTBXSeparatorItem3: TSpTBXSeparatorItem
        end
        object SpTBXItem12: TSpTBXItem
          Action = actSwitchOnTop
        end
        object SpTBXItem56: TSpTBXItem
          Action = actMinimizeToTray
        end
        object SpTBXSeparatorItem24: TSpTBXSeparatorItem
        end
        object SpTBXItem14: TSpTBXItem
          Action = actExitApplication
        end
      end
      object mnuPaletteFiles: TSpTBXSubmenuItem
        Caption = 'Recent files'
        ImageIndex = 57
        Options = [tboDropdownArrow]
      end
      object SpTBXSeparatorItem8: TSpTBXSeparatorItem
      end
      object btnStartCapturing: TSpTBXItem
        Action = actStartCapturing
      end
      object btnStopCapturing: TSpTBXItem
        Action = actStopCapturing
      end
      object SpTBXSeparatorItem4: TSpTBXSeparatorItem
      end
      object mnuPalette: TSpTBXSubmenuItem
        Caption = 'Palette'
        ImageIndex = 19
        Options = [tboDropdownArrow, tboNoAutoHint]
        OnPopup = mnuPalettePopup
        object SpTBXItem91: TSpTBXItem
          Action = actEditColorName
        end
        object SpTBXItem51: TSpTBXItem
          Action = actEditColor
        end
        object SpTBXItem5: TSpTBXItem
          Action = actEditPalette
        end
        object SpTBXSeparatorItem33: TSpTBXSeparatorItem
        end
        object SpTBXItem96: TSpTBXItem
          Action = actPalette_ColorWheel
        end
        object SpTBXItem106: TSpTBXItem
          Action = actPalette_SimilarColors
        end
        object SpTBXSeparatorItem10: TSpTBXSeparatorItem
        end
        object SpTBXItem16: TSpTBXItem
          Action = actOpenColorPalette
        end
        object SpTBXItem18: TSpTBXItem
          Action = actSaveColorPalette
        end
        object SpTBXSeparatorItem15: TSpTBXSeparatorItem
        end
        object SpTBXItem27: TSpTBXItem
          Action = actExportPaletteToHtml
        end
        object SpTBXItem28: TSpTBXItem
          Action = actExportPaletteToGPL
        end
        object SpTBXSeparatorItem9: TSpTBXSeparatorItem
        end
        object SpTBXItem58: TSpTBXItem
          Action = actPalette_SelectAll
        end
        object SpTBXItem57: TSpTBXItem
          Action = actPalette_InvertSelection
        end
        object SpTBXItem64: TSpTBXItem
          Action = actPalette_UnselectAll
        end
        object SpTBXItem59: TSpTBXItem
          Action = actPalette_RemoveSelected
        end
        object SpTBXSeparatorItem29: TSpTBXSeparatorItem
        end
        object SpTBXItem69: TSpTBXItem
          Action = actCopySelectedColors_HTML
        end
        object SpTBXItem70: TSpTBXItem
          Action = actCopySelectedColors_RGB
        end
        object SpTBXItem76: TSpTBXItem
          Action = actCopySelectedColors_RGB_Percent
        end
        object SpTBXItem75: TSpTBXItem
          Action = actCopySelectedColors_HSL_CSS
        end
        object SpTBXItem74: TSpTBXItem
          Action = actCopySelectedColors_HSL_WIN
        end
        object SpTBXItem84: TSpTBXItem
          Action = actCopySelectedColors_CMYK
        end
        object SpTBXItem83: TSpTBXItem
          Action = actCopySelectedColors_PascalHEX
        end
        object SpTBXItem82: TSpTBXItem
          Action = actCopySelectedColors_PascalINT
        end
        object SpTBXItem81: TSpTBXItem
          Action = actCopySelectedColors_CppHex
        end
        object SpTBXSeparatorItem25: TSpTBXSeparatorItem
        end
        object SpTBXItem15: TSpTBXItem
          Action = actClearPalette
        end
      end
      object mnuZoom: TSpTBXSubmenuItem
        Caption = 'Zoom'
        ImageIndex = 18
        Options = [tboDropdownArrow, tboNoAutoHint]
        OnPopup = mnuZoomPopup
        object SpTBXItem8: TSpTBXItem
          Tag = 1
          Action = actZoom_1
        end
        object SpTBXItem9: TSpTBXItem
          Tag = 2
          Action = actZoom_2
        end
        object SpTBXItem10: TSpTBXItem
          Tag = 4
          Action = actZoom_4
        end
        object SpTBXItem11: TSpTBXItem
          Tag = 6
          Action = actZoom_6
        end
        object SpTBXItem19: TSpTBXItem
          Tag = 8
          Action = actZoom_8
        end
        object SpTBXItem20: TSpTBXItem
          Tag = 10
          Action = actZoom_10
        end
        object SpTBXItem21: TSpTBXItem
          Tag = 14
          Action = actZoom_14
        end
        object SpTBXItem22: TSpTBXItem
          Tag = 18
          Action = actZoom_18
        end
        object SpTBXItem23: TSpTBXItem
          Tag = 22
          Action = actZoom_22
        end
        object SpTBXItem24: TSpTBXItem
          Tag = 26
          Action = actZoom_26
        end
        object SpTBXItem25: TSpTBXItem
          Tag = 30
          Action = actZoom_30
        end
      end
      object mnuTools: TSpTBXSubmenuItem
        Caption = 'Tools'
        ImageIndex = 34
        Options = [tboDropdownArrow, tboNoAutoHint]
        object SpTBXItem50: TSpTBXItem
          Action = actShowFormAutoCapture
        end
        object SpTBXItem45: TSpTBXItem
          Action = actShowFormPixelColor
        end
        object SpTBXItem85: TSpTBXItem
          Action = actShowFormRandomColors
        end
        object SpTBXItem86: TSpTBXItem
          Action = actShowFormGradientColors
        end
        object SpTBXItem93: TSpTBXItem
          Action = actShowFormColorMixer
        end
        object SpTBXItem94: TSpTBXItem
          Action = actShowFormColorWheel
        end
        object SpTBXItem97: TSpTBXItem
          Action = actShowFormSimilarColors
        end
      end
      object SpTBXSeparatorItem30: TSpTBXSeparatorItem
      end
      object SpTBXItem41: TSpTBXItem
        Action = actOptions
      end
      object SpTBXSeparatorItem6: TSpTBXSeparatorItem
        Visible = False
      end
      object btnEditPalette: TSpTBXItem
        Action = actEditPalette
        Visible = False
      end
      object SpTBXSeparatorItem5: TSpTBXSeparatorItem
      end
      object mnuHelp: TSpTBXSubmenuItem
        Caption = 'Help'
        ImageIndex = 17
        Options = [tboDropdownArrow, tboNoAutoHint]
        object SpTBXItem88: TSpTBXItem
          Action = actHelp
        end
        object SpTBXSeparatorItem31: TSpTBXSeparatorItem
        end
        object SpTBXItem2: TSpTBXItem
          Action = actGoTo_HomePage
        end
        object SpTBXItem3: TSpTBXItem
          Action = actGoTo_Github
        end
        object SpTBXItem4: TSpTBXItem
          Action = actGoTo_Facebook
        end
        object SpTBXItem87: TSpTBXItem
          Action = actGoTo_Donation
        end
        object SpTBXSeparatorItem27: TSpTBXSeparatorItem
        end
        object SpTBXItem66: TSpTBXItem
          Action = actCheckUpdate
        end
        object SpTBXSeparatorItem7: TSpTBXSeparatorItem
        end
        object SpTBXItem26: TSpTBXItem
          Action = actAbout
        end
      end
      object SpTBXSeparatorItem17: TSpTBXSeparatorItem
      end
      object SpTBXItem17: TSpTBXItem
        Action = actSwitchOnTop
      end
      object SpTBXSeparatorItem19: TSpTBXSeparatorItem
      end
      object TBControlItem2: TTBControlItem
        Control = cswCursorColor
      end
      object cswCursorColor: TJppColorSwatch
        Left = 347
        Top = 0
        Width = 105
        Height = 24
        TabOrder = 0
        OnMouseMove = MoveFoldedForm
        Appearance.DrawTopBorder = False
        Appearance.DrawBottomBorder = False
        Appearance.DrawLeftBorder = False
        Appearance.DrawRightBorder = False
        Appearance.TopColorValue.Font.Charset = DEFAULT_CHARSET
        Appearance.TopColorValue.Font.Color = 16053492
        Appearance.TopColorValue.Font.Height = -11
        Appearance.TopColorValue.Font.Name = 'Tahoma'
        Appearance.TopColorValue.Font.Style = []
        Appearance.TopColorValue.TextPosYDelta = -1
        Appearance.TopColorValue.BackgroundColor = 5263440
        Appearance.BottomColorValue.ColorType = ctHtml
        Appearance.BottomColorValue.Font.Charset = DEFAULT_CHARSET
        Appearance.BottomColorValue.Font.Color = 16053492
        Appearance.BottomColorValue.Font.Height = -11
        Appearance.BottomColorValue.Font.Name = 'Tahoma'
        Appearance.BottomColorValue.Font.Style = []
        Appearance.BottomColorValue.TextPosYDelta = -1
        Appearance.BottomColorValue.BackgroundColor = 9211020
        Appearance.ColorRect.Width = 24
        OnGetBottomColorStrValue = cswCursorColorGetBottomColorStrValue
      end
    end
  end
  object pnMini: TJppSimplePanel
    Left = 0
    Top = 28
    Width = 726
    Height = 47
    Align = alTop
    PopupMenu = popupMini
    TabOrder = 5
    OnMouseMove = MoveFoldedForm
    Appearance.BackgroundColor = 14342874
    Appearance.BorderColor = 11053224
    DesignSize = (
      726
      47)
    object sbtnMini_Fold: TJppBasicSpeedButton
      Left = 467
      Top = 6
      Width = 24
      Height = 25
      Caption = 'Collapse / Expand'
      Appearance.Normal.Color = clBtnFace
      Appearance.Normal.FontColor = clWindowText
      Appearance.Normal.BorderColor = clWindowFrame
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
      Appearance.ShowCaption = False
      Action = actCollapse
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      Visible = False
      ExplicitLeft = 510
    end
    object pnMiniImgBg: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 330
      Height = 45
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawBottomBorder = False
      Appearance.DrawLeftBorder = False
      object imgMini: TImage
        AlignWithMargins = True
        Left = 21
        Top = 4
        Width = 87
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 0
        Center = True
        PopupMenu = popupMini
        OnMouseMove = MoveFoldedForm
      end
    end
    object pnMini_Right: TJppSimplePanel
      AlignWithMargins = True
      Left = 591
      Top = 1
      Width = 134
      Height = 45
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      ParentBackground = True
      TabOrder = 1
      OnMouseMove = MoveFoldedForm
      DesignSize = (
        134
        45)
      object btnMini_HeightMinus: TJppBasicSpeedButton
        Left = 106
        Top = 4
        Width = 24
        Height = 16
        Caption = 'Decrease height'
        Appearance.Normal.Color = 13948116
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = 12040119
        Appearance.Normal.BorderWidth = 1
        Appearance.Hot.Color = clHighlight
        Appearance.Hot.FontColor = clHighlightText
        Appearance.Hot.BorderColor = clHighlight
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 11758628
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 11758628
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = clBtnFace
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnFace
        Appearance.Disabled.BorderWidth = 1
        Appearance.ShowCaption = False
        Action = actMini_HeightMinus
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 102
      end
      object btnMini_HeightPlus: TJppBasicSpeedButton
        Left = 106
        Top = 21
        Width = 24
        Height = 16
        Caption = 'Increase height'
        Appearance.Normal.Color = 13948116
        Appearance.Normal.FontColor = clWindowText
        Appearance.Normal.BorderColor = 12040119
        Appearance.Normal.BorderWidth = 1
        Appearance.Hot.Color = clHighlight
        Appearance.Hot.FontColor = clHighlightText
        Appearance.Hot.BorderColor = clHighlight
        Appearance.Hot.BorderWidth = 1
        Appearance.Down.Color = 11758628
        Appearance.Down.FontColor = clHighlightText
        Appearance.Down.BorderColor = 11758628
        Appearance.Down.BorderWidth = 1
        Appearance.Disabled.Color = clBtnFace
        Appearance.Disabled.FontColor = clBtnShadow
        Appearance.Disabled.BorderColor = clBtnFace
        Appearance.Disabled.BorderWidth = 1
        Appearance.ShowCaption = False
        Action = actMini_HeightPlus
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 102
      end
      object cswMiniLast: TJppColorSwatchEx
        Left = 3
        Top = 13
        Width = 100
        Height = 24
        TabOrder = 0
        OnMouseMove = MoveFoldedForm
        Appearance.BorderColor = 12698049
        Appearance.TopColorValue.Font.Charset = DEFAULT_CHARSET
        Appearance.TopColorValue.Font.Color = clWindowText
        Appearance.TopColorValue.Font.Height = -9
        Appearance.TopColorValue.Font.Name = 'Verdana'
        Appearance.TopColorValue.Font.Style = []
        Appearance.TopColorValue.BackgroundColor = clBtnFace
        Appearance.BottomColorValue.ColorType = ctHtml
        Appearance.BottomColorValue.Font.Charset = DEFAULT_CHARSET
        Appearance.BottomColorValue.Font.Color = clWindowText
        Appearance.BottomColorValue.Font.Height = -9
        Appearance.BottomColorValue.Font.Name = 'Verdana'
        Appearance.BottomColorValue.Font.Style = []
        Appearance.BottomColorValue.TextPosYDelta = -1
        Appearance.BottomColorValue.BackgroundColor = clBtnFace
        Appearance.ColorRect.Width = 24
        OnGetBottomColorStrValue = cswCursorColorGetBottomColorStrValue
        BoundLabel.Width = 79
        BoundLabel.Height = 11
        BoundLabel.Caption = 'Last captured color:'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -9
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.ParentFont = False
        BoundLabel.OnMouseMove = MoveFoldedForm
        BoundLabel.FocusControl = cswMiniLast
        BoundLabelPosition = lpAbove
        BoundLabelSpacing = 0
        ButtonsSpacing = 2
        ButtonChangeColor.Left = 105
        ButtonChangeColor.Top = 13
        ButtonChangeColor.Width = 25
        ButtonChangeColor.Height = 25
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
        ButtonChangeColor.Visible = False
        ButtonCopyColor.Left = 105
        ButtonCopyColor.Top = 13
        ButtonCopyColor.Width = 25
        ButtonCopyColor.Height = 25
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
        ButtonCopyColor.Visible = False
        ButtonPasteColor.Left = 105
        ButtonPasteColor.Top = 13
        ButtonPasteColor.Width = 25
        ButtonPasteColor.Height = 25
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
        ButtonPasteColor.Visible = False
      end
    end
  end
  object Actions: TActionList
    Images = pilMain
    Left = 232
    Top = 234
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actCaptureColor: TAction
      Caption = 'Capture color'
      ShortCut = 115
      OnExecute = actCaptureColorExecute
    end
    object actCopyColor: TAction
      Caption = 'actCopyColor'
      ShortCut = 114
      OnExecute = actCopyColorExecute
    end
    object actZoom_1: TAction
      Category = 'Zoom'
      Caption = 'Zoom 1x'
      ShortCut = 16433
      OnExecute = actZoom_1Execute
    end
    object actZoom_2: TAction
      Category = 'Zoom'
      Caption = 'Zoom 2x'
      ShortCut = 16434
      OnExecute = actZoom_2Execute
    end
    object actZoom_4: TAction
      Category = 'Zoom'
      Caption = 'Zoom 4x'
      ShortCut = 16436
      OnExecute = actZoom_4Execute
    end
    object actZoom_6: TAction
      Category = 'Zoom'
      Caption = 'Zoom 6x'
      ShortCut = 16438
      OnExecute = actZoom_6Execute
    end
    object actZoom_8: TAction
      Category = 'Zoom'
      Caption = 'Zoom 8x'
      ShortCut = 16440
      OnExecute = actZoom_8Execute
    end
    object actZoom_10: TAction
      Category = 'Zoom'
      Caption = 'Zoom 10x'
      OnExecute = actZoom_10Execute
    end
    object actZoom_14: TAction
      Category = 'Zoom'
      Caption = 'Zoom 14x'
      OnExecute = actZoom_14Execute
    end
    object actZoom_18: TAction
      Category = 'Zoom'
      Caption = 'Zoom 18x'
      OnExecute = actZoom_18Execute
    end
    object actZoom_22: TAction
      Category = 'Zoom'
      Caption = 'Zoom 22x'
      OnExecute = actZoom_22Execute
    end
    object actZoom_26: TAction
      Category = 'Zoom'
      Caption = 'Zoom 26x'
      OnExecute = actZoom_26Execute
    end
    object actZoom_30: TAction
      Tag = 30
      Category = 'Zoom'
      Caption = 'Zoom 30x'
      OnExecute = actZoom_30Execute
    end
    object actCreatePreview: TAction
      Caption = 'Create preview image (F12)'
      Checked = True
      Hint = 'Create preview image'
      ShortCut = 123
      OnExecute = actCreatePreviewExecute
    end
    object actStartCapturing: TAction
      Caption = 'Start'
      Hint = 'Start capturing the color under the cursor'
      ImageIndex = 0
      ShortCut = 120
      OnExecute = actStartCapturingExecute
    end
    object actStopCapturing: TAction
      Caption = 'Stop'
      Hint = 'Stop capturing'
      ImageIndex = 2
      ShortCut = 121
      OnExecute = actStopCapturingExecute
    end
    object actCopyColor_HTML: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - HTML'
      ImageIndex = 22
      OnExecute = actCopyColor_HTMLExecute
    end
    object actCopyColor_RGB: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - RGB'
      ImageIndex = 22
      OnExecute = actCopyColor_RGBExecute
    end
    object actCopyColor_RGB_Percent: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - RGB %'
      ImageIndex = 22
      OnExecute = actCopyColor_RGB_PercentExecute
    end
    object actCopyColor_HSL_CSS: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - HSL CSS'
      ImageIndex = 22
      OnExecute = actCopyColor_HSL_CSSExecute
    end
    object actCopyColor_HSL_WIN: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - HSL WIN'
      ImageIndex = 22
      OnExecute = actCopyColor_HSL_WINExecute
    end
    object actCopyColor_CMYK: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - CMYK'
      ImageIndex = 22
      OnExecute = actCopyColor_CMYKExecute
    end
    object actCopyColor_PascalHEX: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - Pascal HEX'
      ImageIndex = 22
      OnExecute = actCopyColor_PascalHEXExecute
    end
    object actCopyColor_PascalINT: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - Pascal INT'
      ImageIndex = 22
      OnExecute = actCopyColor_PascalINTExecute
    end
    object actCopyColor_CppHex: TAction
      Category = 'Copy_Color'
      Caption = 'Copy color to the Clipboard - C++ HEX'
      ImageIndex = 22
      OnExecute = actCopyColor_CppHexExecute
    end
    object actSwitchOnTop: TAction
      Caption = 'Stay on top'
      ImageIndex = 3
      ShortCut = 16468
      OnExecute = actSwitchOnTopExecute
    end
    object actAbout: TAction
      Caption = 'About'
      Hint = 'About...'
      ImageIndex = 4
      ShortCut = 24688
      OnExecute = actAboutExecute
    end
    object actSwitchToPreviewMode: TAction
      Caption = 'Switch to Preview mode'
      Hint = 'Switch to Preview mode'
      ShortCut = 117
      OnExecute = actSwitchToPreviewModeExecute
    end
    object actSwitchToImageMode: TAction
      Caption = 'Switch to Image mode'
      Hint = 'Switch to Image mode'
      ShortCut = 118
      OnExecute = actSwitchToImageModeExecute
    end
    object actOpenImage: TAction
      Caption = 'Open image...'
      Hint = 'Open image file...'
      ImageIndex = 5
      ShortCut = 16463
      OnExecute = actOpenImageExecute
    end
    object actCloseImage: TAction
      Caption = 'Close image'
      Hint = 'Close image'
      ImageIndex = 2
      OnExecute = actCloseImageExecute
    end
    object actEditColor: TAction
      Category = 'Palette'
      Caption = 'Edit selected color...'
      Hint = 'Edit selected color...'
      ImageIndex = 28
      ShortCut = 16453
      OnExecute = actEditColorExecute
    end
    object actEditPalette: TAction
      Category = 'Palette'
      Caption = 'Edit palette'
      Hint = 'Edit color palette...'
      ImageIndex = 6
      ShortCut = 24645
      OnExecute = actEditPaletteExecute
    end
    object actExitApplication: TAction
      Caption = 'Exit'
      ImageIndex = 11
      OnExecute = actExitApplicationExecute
    end
    object actSavePreviewImage: TAction
      Caption = 'Save preview image as a PNG file...'
      Hint = 'Save preview image as a PNG file...'
      ImageIndex = 12
      ShortCut = 16467
      OnExecute = actSavePreviewImageExecute
    end
    object actGoTo_HomePage: TAction
      Caption = 'Home page'
      ImageIndex = 16
      OnExecute = actGoTo_HomePageExecute
    end
    object actHelp: TAction
      Caption = 'Help'
      ImageIndex = 17
      ShortCut = 112
      OnExecute = actHelpExecute
    end
    object actGoTo_Github: TAction
      Caption = 'Github'
      ImageIndex = 15
      OnExecute = actGoTo_GithubExecute
    end
    object actGoTo_Facebook: TAction
      Caption = 'Facebook'
      ImageIndex = 14
      OnExecute = actGoTo_FacebookExecute
    end
    object actGoTo_Donation: TAction
      Caption = 'Support for the author'
      ImageIndex = 39
      OnExecute = actGoTo_DonationExecute
    end
    object actClearPalette: TAction
      Category = 'Palette'
      Caption = 'Clear color palette...'
      Hint = 'Clear color palette...'
      ImageIndex = 31
      OnExecute = actClearPaletteExecute
    end
    object actOpenColorPalette: TAction
      Category = 'Palette'
      Caption = 'Load a color palette from a file...'
      Hint = 'Load a color palette from a file...'
      ImageIndex = 5
      ShortCut = 16460
      OnExecute = actOpenColorPaletteExecute
    end
    object actSaveColorPalette: TAction
      Category = 'Palette'
      Caption = 'Save color palette...'
      Hint = 'Save color palette...'
      ImageIndex = 12
      ShortCut = 24659
      OnExecute = actSaveColorPaletteExecute
    end
    object actExportPaletteToHtml: TAction
      Category = 'Palette'
      Caption = 'Export color palette to HTML file...'
      Hint = 'Export color palette to HTML file...'
      ImageIndex = 20
      OnExecute = actExportPaletteToHtmlExecute
    end
    object actExportPaletteToGPL: TAction
      Category = 'Palette'
      Caption = 'Export the color palette to the GIMP palette file...'
      Hint = 'Export the color palette to the GIMP palette file...'
      ImageIndex = 20
      OnExecute = actExportPaletteToGPLExecute
    end
    object actOptions: TAction
      Caption = 'Options...'
      Hint = 'Options...'
      ImageIndex = 21
      ShortCut = 119
      OnExecute = actOptionsExecute
    end
    object actCollapse: TAction
      Caption = 'Collapse / Expand'
      Hint = 'Collapse / Expand'
      ImageIndex = 27
      ShortCut = 122
      OnExecute = actCollapseExecute
    end
    object actShowFormAutoCapture: TAction
      Caption = 'Automatic color capture...'
      Hint = 'Automatic color capture...'
      ImageIndex = 29
      ShortCut = 24641
      OnExecute = actShowFormAutoCaptureExecute
    end
    object actMini_HeightPlus: TAction
      Caption = 'Increase height'
      Hint = 'Increase height'
      ImageIndex = 26
      ShortCut = 24616
      OnExecute = actMini_HeightPlusExecute
    end
    object actMini_HeightMinus: TAction
      Caption = 'Decrease height'
      Hint = 'Decrease height'
      ImageIndex = 25
      ShortCut = 24614
      OnExecute = actMini_HeightMinusExecute
    end
    object actRestoreMainWindow: TAction
      Caption = 'Restore the main window'
      Hint = 'Restore the main window'
      OnExecute = actRestoreMainWindowExecute
    end
    object actMinimizeToTray: TAction
      Caption = 'Minimize to system tray'
      Hint = 'Minimize to system tray'
      ImageIndex = 30
      ShortCut = 24653
      OnExecute = actMinimizeToTrayExecute
    end
    object actPalette_SelectAll: TAction
      Category = 'Palette'
      Caption = 'Select all'
      Hint = 'Select all'
      ImageIndex = 9
      OnExecute = actPalette_SelectAllExecute
    end
    object actPalette_InvertSelection: TAction
      Category = 'Palette'
      Caption = 'Invert selection'
      Hint = 'Invert selection'
      ImageIndex = 10
      OnExecute = actPalette_InvertSelectionExecute
    end
    object actPalette_RemoveSelected: TAction
      Category = 'Palette'
      Caption = 'Remove selected colors'
      Hint = 'Remove selected colors'
      ImageIndex = 83
      ShortCut = 46
      OnExecute = actPalette_RemoveSelectedExecute
    end
    object actPalette_UnselectAll: TAction
      Category = 'Palette'
      Caption = 'Unselect all'
      Hint = 'Unselect all'
      ImageIndex = 32
      OnExecute = actPalette_UnselectAllExecute
    end
    object actShowFormPixelColor: TAction
      Caption = 'Get pixel color...'
      Hint = 'Get pixel color...'
      ImageIndex = 35
      ShortCut = 16464
      OnExecute = actShowFormPixelColorExecute
    end
    object actCheckUpdate: TAction
      Caption = 'Check for updates...'
      Hint = 'Check for updates...'
      ImageIndex = 33
      ShortCut = 24661
      OnExecute = actCheckUpdateExecute
    end
    object actCopySelectedColors_RGB: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - RGB'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_RGBExecute
    end
    object actCopySelectedColors_HTML: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - HTML'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_HTMLExecute
    end
    object actCopySelectedColors_RGB_Percent: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - RGB %'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_RGB_PercentExecute
    end
    object actCopySelectedColors_HSL_CSS: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - HSL CSS'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_HSL_CSSExecute
    end
    object actCopySelectedColors_HSL_WIN: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - HSL WIN'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_HSL_WINExecute
    end
    object actCopySelectedColors_CMYK: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - CMYK'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_CMYKExecute
    end
    object actCopySelectedColors_PascalHEX: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - Pascal HEX'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_PascalHEXExecute
    end
    object actCopySelectedColors_PascalINT: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - Pascal INT'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_PascalINTExecute
    end
    object actCopySelectedColors_CppHex: TAction
      Category = 'Copy_Color'
      Caption = 'Copy selected colors - C++ HEX'
      ImageIndex = 22
      OnExecute = actCopySelectedColors_CppHexExecute
    end
    object actShowFormRandomColors: TAction
      Caption = 'Random colors...'
      Hint = 'Random colors...'
      ImageIndex = 54
      ShortCut = 16466
      OnExecute = actShowFormRandomColorsExecute
    end
    object actShowFormGradientColors: TAction
      Caption = 'Gradient colors...'
      Hint = 'Gradient colors...'
      ImageIndex = 38
      ShortCut = 16455
      OnExecute = actShowFormGradientColorsExecute
    end
    object actEditColorName: TAction
      Category = 'Palette'
      Caption = 'Edit selected color name...'
      Hint = 'Edit selected color name...'
      ImageIndex = 49
      ShortCut = 113
      OnExecute = actEditColorNameExecute
    end
    object actShowFormColorMixer: TAction
      Caption = 'Color mixer...'
      Hint = 'Color mixer...'
      ImageIndex = 50
      ShortCut = 16461
      OnExecute = actShowFormColorMixerExecute
    end
    object actShowFormColorWheel: TAction
      Caption = 'Color wheel...'
      Hint = 'Color wheel...'
      ImageIndex = 56
      ShortCut = 16471
      OnExecute = actShowFormColorWheelExecute
    end
    object actPalette_ColorWheel: TAction
      Category = 'Palette'
      Caption = 'Color wheel...'
      Hint = 'Color wheel...'
      ImageIndex = 56
      ShortCut = 24663
      OnExecute = actPalette_ColorWheelExecute
    end
    object actShowFormSimilarColors: TAction
      Caption = 'Similar colors...'
      Hint = 'Similar colors...'
      ShortCut = 16465
      OnExecute = actShowFormSimilarColorsExecute
    end
    object actShowFormQuickAccess: TAction
      Caption = 'Edit list of recently opened files...'
      Hint = 'Edit list of recently opened files...'
      OnExecute = actShowFormQuickAccessExecute
    end
    object actShowHideColorCodesPanel: TAction
      Caption = 'Show panel with color codes'
      OnExecute = actShowHideColorCodesPanelExecute
    end
    object actShowHideBottomPanel: TAction
      Caption = 'Show bottom panel'
      OnExecute = actShowHideBottomPanelExecute
    end
    object actSetSize_Small: TAction
      Caption = 'Small size'
      ShortCut = 24625
      OnExecute = actSetSize_SmallExecute
    end
    object actSetSize_Medium: TAction
      Caption = 'Medium size'
      ShortCut = 24626
      OnExecute = actSetSize_MediumExecute
    end
    object actSetSize_Large: TAction
      Caption = 'The large size'
      ShortCut = 24627
      OnExecute = actSetSize_LargeExecute
    end
    object actReloadCurrentLanguageFile: TAction
      Caption = 'actReloadCurrentLanguageFile'
      ShortCut = 24699
      OnExecute = actReloadCurrentLanguageFileExecute
    end
    object actPalette_SimilarColors: TAction
      Category = 'Palette'
      Caption = 'Similar colors...'
      ShortCut = 24657
      OnExecute = actPalette_SimilarColorsExecute
    end
    object actShowHidePalette: TAction
      Caption = 'Show color palette'
      ShortCut = 16507
      OnExecute = actShowHidePaletteExecute
    end
  end
  object tmColor: TTimer
    Enabled = False
    Interval = 150
    OnTimer = tmColorTimer
    Left = 225
    Top = 138
  end
  object pilMain: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'picker_16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001FE4944415478DA63642012C8
          DBC733C89807CA3332324E0072DD80F8D1FFFF0C498CF83489EBBB314818B8B3
          3131B3B2708BCACB0385F6000D9084C9FFFFFFFF165E03F4E37A99782555AE01
          996240FC15A8591A591EE8826F840C60061A7017A8510E9B3CD005ABF01A60EC
          97C1C0AFEEA8FA9B89632F0323A30C9AE6DB4017D8E1344051519121303090F7
          3F2B57D983FF72CBDF308A6D6760649285F91D483ABFBA72F029232ECD414141
          DC2C2C2CDB80CEB7FDF39F69DB4306B9B2170C92DB802E91031AF0F2FBDBA792
          67E766336018202525C5101919C901D4BC15A8D91126FEE73FF3B42B0C5A3D5F
          1878E600B9673E3FBB5571717129AA018282820C3131314C5C5C5CAB809A8390
          FC7B0648799CBCF3EEDD2B6084FCFFF78FE1F9C59D0C1FEE9D4318C0CACACA10
          1B1BCB202A2ADA07D45C80A4F93010FB9E3A75EAD381030730BC0B37C0D7D797
          414B4B2B0AC85C0C348011AA790310471F3C78F0FBC99327B1063658A1B6B636
          83B7B7B72A50DF5920E681E8FD3FF1DFBF7F253B76ECF877F9F2659C51CD2824
          24C4101717C7C6CECE7E14A8D918A8F10B1067FCF8F163D9C68D1B191E3E7C88
          2FA93030A6A4A430080B0B4F066ACE066A3C0FC4912F5EBCB805D2FCF1E34706
          4280B1BCBCBC04A8B90BA8713A10170103EBE7E1C38719FEFEFD4B5033CC80DB
          407A1AD0C9FD5BB76E65B873E70E511A610000A0CAD2AA1FCCCA490000000049
          454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-ok_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000027F4944415478DA636480020E
          415E06AD28170609630D292606E604A09033102B40A51F00F1DE7F0C7FE7BFB9
          76FFF9D5C53B19BEBE7C0F96600411FC0A920CA605118C1C7C5CE540A15A4646
          464E062CE0FFFFFFDF8164F3EF1F3F3ACF4E5DFFFFCDD57B0C8CECFC3C0C764D
          C98CECBCBC0B811A63188800408396FCF9F923FE70D3FCFF8CC659410C92265A
          1540CD6D8434F2B071FCE5E7E0FEFFF4D35B16A02155EFEE3CEE60F49E5329C9
          C8C47C0797B361801BA8B9D135EEBF30172F63F5CE05FF9F7E7CF39BE1FF3F15
          469F79355540CD2DF83473B1B28335AB8A48B380F8B75E3FF959B67D0E1BD015
          352003F6000D7002792D52DFF1D7DEBBE7995F7E79CF8CA4F95FA34BDC3F3551
          195610FFEDB74F7F6A762E6078FEF91DC81BFB4006DC051AA0906CE2F1DB57CB
          820DA8F94FD5CEF90C6FBE7E64E66465FBD700D4AC212A0BD6FCEEDBE7BF40CD
          FF9F7D7E0B76C97F86FFF7C10670B0B0C9B57A24FE571196024B3CFFF4EE4FF3
          BE25FF72AD021835C5E4C09ADF7F8768060520526C800DD80B7481230F1BE7DF
          66B7F8FF8A421260057FFFFDFBC7CCC4C404627FF8FEE56FCDAE05FF9F7C7CC3
          821C364003F6A304221F3BD7DF16F784FF72026270851F7F7C05DBFCF8E36B16
          F4C00507A2D7DC4A292646E6DBB06814E0E0061A92F85F865F84E5D38F6F7F6B
          81363FFCF00A9BE6EFFFFFFF5365342B8E6410D35602262426784212E4E4FD5B
          E910FE77FA892D8CF7DFBF60C5911AAB3E3E7ED9C1C8252EC4605B9FC8C8CAC1
          899E94FFC3F20AB6A4FCF7CFEFF8E31D8BFF831588682B31186707030D61232A
          33FDFDFDB7F3E2FCCDFF9F9DB88AB081474A844137C1934150590618264C0940
          83B065E7059F9FBC7E7679C136860FF79E8125003CEA285CE81A46D800000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-cancel_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002614944415478DA8D93DF4F52
          6118C79FE71C90130A13755D28944CA12E026CDA66AD8BEA2AEDEF48AC39B7D6
          E6665C181772E35ACB5502ADAD9BD65F50EBCAEA169B2D29E72C0685BA95BF4A
          183B04E7BC3DEF7B0E0D586EBEDBC338CFE1F9BCCFF7CBF32098A7DFA1C0F419
          0F045CF610008E51EA32452F055264291681B144A6A0A6639FF290FE551275FC
          250C7739606ED0ABD864E93E25AE03A204FF3B0C74062CAE69FAED683A5F7EBD
          B50FC86F7E76C1AFB4C8D22B44BC0447388CB1454DD7AF4DA432657C7ADE476D
          B72E507198BF7404CF55FFECFE84F2464EAE2FB2B97BB596CEE3505859B29890
          C7F9A23A81A9D15010415A2631525B70A8DA3F332F698503B61E09EB04B198C5
          55FF6C42921D4EFC1A9DD48B2BEF2D04D089729600030FE9F69BE2873D27ABFE
          5802ADAE2EB9B2B7A3ADDF19D379DE1F4B4AD60ECAEDF35C989537BFD5BA7884
          4BA303AB64DAE95AAB0ADDE69BE5904E01E139A37857FB120933D5ECCA04AC71
          4089004ABD5EC5ED25485C40F8B3513C4EC5594B93992A9750C22680AD8734C7
          E2428A01686CBD19B08A7512840F5C82A95948A87912698408090D26769FA09B
          9358D3DC60A2E909E55879EB7BCDC4054C8D840204F8C0A78F66A0D237332F6B
          C5034686E96ADED0AC78B827F437B63931139DD46816AC7C2A75A60FE28B8BA7
          A0CF79EC5F171C428384870C1213C5C6ED896DB5720383ED76480CFB680DF025
          41AE1C7194DFD1C7C8D4724E15CB74B5DB0577831E9B2449F7E8711C0F5D2646
          CB044FA8FD5B0FD636D5E7D96D631BF919EA6885E98007DC765BC0DC0BDE8D57
          EC20408EE20D7D49EEA8958F739F37E0ED8FDFA2EE2F9B47394261280E000000
          000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'pin-green_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002524944415478DA6364200258
          D72432082A49DF04322FFCFDF327F6CCA455BF5E5FB907966324A49985939DC1
          B12D93874380F71388FF9FE1FFA6BFBFFE849D9DB6F6D7AB8BB7F11B00D26C5E
          12C520A8289DCAC8C8381326FEFFFFFFCD7F7FFF0EBD306FF32F4664C5EA01B6
          0C4C2C2C0CEFEE3C617875F92E837941048380927402D09AD98C0C8CCCC886FF
          FBFF6FEBBFBF7F43E0065894C5308868C827007D15087466F7BF3F7F8F32B3B0
          A403A5A6006D67C2E642A04B36C00D70EECD13E014E47B0654CC01F5EB6FA0AD
          ACF8BC0834E0069A0B14FC81CE5D854F23D0E03F409D297F7FFF59F9FDDDE79F
          286160010C300145E960207719D025AC586CFC0BC4715FDFBD5F7EB27D09C3F7
          779F50630164887B7932039B8440F86F76A6C54097B0A0EAFF9FF8FDFDA745C7
          BB96307C7BF90E331D282A2A3284848488FC67615AFE4C9C79E7273EA636A04B
          58A04EFF013482FB50FD9CFF9F1EBF84EB811B202020C0101F1FCFC2C1C1B103
          A8C9E92FE3FF4B0FA599DBBE71332D02BA840DEA04BB2B4B771C79B0F70CAA01
          ACACAC0CB1B1B10CA2A2A27D40CD05408577FE333084BC14F87FE9AD389B2F50
          C92AA0383B507CCB8BF3B7FCCE4C5E856A4040400083BABA7A3490B908883703
          15C65FB972E5E3FE2387188CF24241F9C00328BE0288139E9DBAB6E1DC8C7508
          032C2C2C18ECEDED8D80ECFD40DCFEE7CF9FCEBD7BF7FEBF70E1023C608DB343
          1878A544D87F7CFCF2F3F484950C3F3F7E4118505A5A2AC2C4C4B40DC8AEF8F8
          F1E3BE0D1B3630BC78F1828158C0585656D608A4673D78F0E0E9E6CD9B19BE7F
          FF4EB46610000048D7F46F50B30CBA0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-info_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001894944415478DA636480022E
          51790665F71C063E29357D46468634A09023102B42A5EF03F1FEFFFF19667D7D
          F3F8E2DD9D53183E3FBD0196600411028A860C9A41551CCC2C6CFD40A154A001
          4C0C5800D0807F4072F6BF7FFF0A6F6F9DF0E3F5B5830C8C209BF5E37A409AB7
          3132323A301001FEFFFF7FE0FFBF7F5E5756D6FD60D48BE964E093D6980ED49C
          8EAE705B9DFB1F10EDD9B89319E82A463443667E7FFF3C93D1BA6C833E1313E3
          59A0D39948310068C43F203466B429DF3805687B16314EC7E295692003AE010D
          D0C0A600BF0BC006DC001AB0E91B5092039B01075ABDC1B47DD5D6FFD80D60F8
          0132E03B50929D1C0318FE33FCC4EB05C22E007B61E354A00199641A309DD1A6
          6CA33E0323E3596CA90F9F01D05469CC68983499815B548EAC84F4F3F3BB4C46
          5E690D06BDA8760E4626A6ED4043EC19880040CD0781D8F3FAFA8E1F605345B5
          EC19D4BC0B408600331303303331E2CD4C4046E1BDFDF37F3C3BBD11E12C7E39
          5D06658F1C064E0109DCD9998161D6AF2FEF2FDEDB3583E1EDED136009008538
          BB8AFD8985BE0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'open_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001874944415478DA636420006C
          EA93C50515A49EC3F8FFFFFFBFF19F812194E1DFBFAB8C4C4C758C840C304CF5
          67E0911201B2181938047818D8F979FC819CE9401CCDC8C8B897A001C84033DC
          8541C9DD1CE80C0617A0E695402CC8E86024C4A02ECF0D550233EF3FD085FF19
          769D7CC3F0F0C50FB80126B9A10C1246EAF58C0C8CF53031C6F44059065D65DE
          170C8C8C627095FFFFFF039253BEFDF85BB062F77386D71F7E818579248419F4
          937C1998589919BE7EFBCBF0EEF31FA8012A7CFFB0391918609B80D479A05391
          0581EE6378F9F0F9F7193D4BEF830C90031AC08BD5009CE0FFFFBF8F5E7C67ED
          5A023460639733C38FDFDFEAFFFE23DE0C2646C67F5CEC5CCD87CEBF67607CBE
          3909D5FF443BE2FFB38B77DEC8303EDB9CF41AE84761320C780334400C64C055
          A0019A641870EBC495171A2003F6030DB027C380E33B4E3CB40619B002684018
          19066C59BCE3861FC88049400372C83060D1E4D517134006D4000D6822C380FE
          D605A78B4106840213DA0A60AA263A63FD07A1FFFFB34BA71C9901006324A437
          C5F843FA0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'colors-edit_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001844944415478DA63CCCEC95F
          C0C0C010CDC8C8C8C44024F8FFFFFF3F20B5F4E5CB17098C40037EF7F57631B2
          B0B010AB9FE1CF9F3F0C45C565FF5FBD7AC9CA98935BF077E284DEFF018B1A18
          D115FA727F66F0E3FE826180A8C7CC7FF905C54C40039847AA019C363D2B7AE7
          AE2B3877FDC16BB80155B316631820C1FEE7BF04C75F14714196CF6B9F3328C4
          2FBAC8BEFFF79F7F3D7003964E3A8661C04316B6FF8F59D8E0E2FFFEFD5BFDE5
          F39B82971FBF27FDFEC7F80A28944DB40140CD6BDE7CFC94FFF6D3E71D40AE1E
          30313500710751060035AF056ACE036ADE0E14D6076ABCC3F09FC1F1E1D1E54F
          091AF09089651D16CD4EAFAE1E78726BDB0406BC06BC6665DD78E2F38FCC171F
          3F81341B0035DF05D28E60CD5B2780320503CEBCF0F7EFDF378B365FD55A72E6
          89C19F7FFF5602853E00B1D3AB2B071E836C06690601465CB9918B4FB0E31E87
          D19D175FFEE503B925407C1368F36398CD30C018121ACE00D40CC6C8E08FB026
          C36B5EBD2540479E043A7DC193E36B3F3F3CB20445330800002E8D366E592987
          300000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-remove_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001764944415478DA6364800215
          1E0E866A5D59066D012E7D0646C634A09023102B42A5EF03F17E86FFFF67DDFF
          F2E362EBE5C70C973E7C034B3082080B115E866E63450E7666A67E4646C654A0
          10130376F0EFFFFFFFB3FFFEFB5FD878E9D18F1DCFDE3330AAF072302CB052E3
          606366DA06D4ECC04004001A72E0EFFFFF5EB9A7EEFE609C6BA9CAA02BC83D1D
          A8399D18CD4886CC7CFCF54726E3294F7D7D4626C6B340DF30916200D0089077
          8C194F79194C01DA9E459A66B82BA6810CB8063440834C036E309EF632F8068C
          360E9080C1DAE37F99585999F169FAF7FBF7DF0B41164C403D8C40137E800CF8
          0EE4B09369C04FCABD0034602AD0804C320D980E8C460368343290188DC054F9
          0F188DCB6DD41994F938C94A48AF7FFCCE64D413E0669869A9C2C1CCC8B81D68
          883D91BA0F020DF02C3BF7E00738337948093234EACB71000D202A3331FEFF5F
          38E1C6B31F4BEFBF86E446103011E20166671906692E763CD99961D6DB9FBF2E
          765D7DC2B0FFE527B0040092A7A64021FBF3200000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'save_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000E94944415478DA63EC0C9CB7
          9B9181D1890148301009FEFFFFFF0348A5BDFEFC62096357D0FCDF400E3348A2
          78751C5106F4862CFA0F32E6DF7F86429001FF6012B80C282A2EFB0FA2FB7ABB
          401423D800908BFF33FC25CA80FC8262303D7142EF7F1403401C8A5C806E40EA
          B4A0FF7CA23C7803F3FDF34FFFE7E56E60C06A0039807A0664CF0FFFCBC1C3CE
          4C8CA6EF9F7FFE9F96B812EC0DB801C000FC05A4D888B519169018063C79F2E4
          FFC58B97B006A4BEBEDE7F19191946BC060C4D17FC01F29932E784FDE6E2E7F8
          4F642C300363810994941881D9792BD0200F52B23318FC07664786FF670142CE
          979413B3E4A40000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'select-all_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000F24944415478DA63B429DF58
          CEC0C050CFC8C8C8C10005FFFFFFFF01A41AFFFF67E8646464C029FFE1E1C54E
          46A001DF9025D1147101314EF9CF2FEE7031DA566CFA0712D8D5E0F1978D9599
          F9D7EFBF7F5DEB7730016D6604BA0044E394FFFCFC0E13DC8003ADDE70D3EDAB
          B6FE07290032998018A73CD0054C94BB809230F8020A03FCB1F01F180B8C38E5
          3F3EBEDAC9685DB6818111EA612003280B42FF418A185E5ED9C720AEE38453FE
          D6D6890C8C03990EBE7F7971979BFC58008A01A39199FC74806E00D92EA02C1D
          DCA5423AD08968626061E70645321881E21944FCFDFD93E1E5A55D0C62C07480
          4BFEC181050C00BEA322343113396D0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'select-invert_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001544944415478DA9D523D4BC3
          5014BD37F18BE417E8547F839D449120626BFE8C5B8B4B6DD12193F80F74737D
          AFC4D60E923D53C00E428416513A2A4A3586E4799B680DB6AFDADE0C817B2EE7
          1DCE39B851622500A820E2127C8D10E29D7ED5FC0A58460EA5B8E7791612413F
          0B668F884023827EB158985769BEB188A6D16886BEEF6BB859E6F160D93A2C44
          0B74F61146D14EA5A92002E6974131563136CDBDDFFC60DB978208D42181736C
          0EC1AD035B4C4D30B382BF3D50C883DD311E5CA51ECC9E0256DBED1B0BF74F59
          B224C53FAFD337985BF71AD6D6B70914A3B840E0E727808C71A902F741584E17
          A4F853977A4004D29CDD47A1391D9079F4F6DABBD391F3BAD46552A09282F129
          D1EEA54729FC9760A427D3124815305697E69C7A20A43D210FB4092920A5104F
          4CE1F9BE6D61AD7604BAAE011D64D9210802B8E02D887306CC2DEA4953922A88
          B409511840C739834F02FE3423F85862200000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'close-window_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000019F4944415478DA6364636264
          C854936090E3E6600001464646067CE03F1082D0AB1FBF18A6DE7CCEC098AF21
          C910AD24EE0B949B01D42CC94004F8FFFFFF732095B1F3E9BBCD8C7DC68A0C36
          E2FC4F89D58C64CAF3EB1FBF4933F6992832D88A0BFC234933D42FD73F7E6506
          1AA00434801F6E808095F32F31DF0886BBCD854C7FBF7E6606893173F3FE55AA
          EDFFF77AF30A860FC7F6B2210CF88669805AFBEC5F3CDA866C5FEF5CFB73A726
          0B2CA6D2328D815B458BE5CBD5F3BF6E55A6E237809987F7AF6AF3F4FF5CCA1A
          2C5F6F5FFB0312E356D562F976F7FA9FDBB5598C7FBF405C85D30088217C4043
          A6810D01F1BFDDBD01D5FC8919350C7019C0CD0B3140451362C01DA8EDD030C1
          EF05A06695E6A9FF417E06690489810C0287496D36C2105C06A8B6CDFAC5AB63
          C406B51522D63C0D6CC8E72BE77EDDAE4AC31F8802D62EC0680C0746631113CC
          CFA03051AEEDFBF76AF34A860F47F7A01AD00B4C48769424A45E63504A243D29
          FF8725E5726D6986607951B232D3C1171F3633F2B03031946BCB30C8F1703080
          333281EC0CD40DCACD0CAFBEFF62E8BCFA8401008F17F11AE6375E4200000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'save-as_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002314944415478DA638CB7C863
          6064000246308917FCFFFF9FE1C7EF6F0CDBAEAC66F8FCF323588CB13370DE6E
          46064627A029044D001AF00348A5BDFCFB78C9638EEBEC40FE4FC6AEA0F9BF81
          82CC2005C5ABE3F01AD01BB2E8FF3F86BF0BDFF13F49FDCAF3FE2C50E828C880
          7F3005E806141597FD07D17DBD5D60D7F6C72C5AF886F549CD17DEB74BFE33FE
          DF0214F325C980A5B357CB9EBA7C623703138306D0F95BFEFEFDEB876240EAB4
          A0FF7CA23C58C3E2C3870F9FDBDABB9EFEFCF913A4F92C10BB9E3D7BFA038A01
          D800131BC34231078EEA8B772EEC066AD664F8CF7096ED2797CFD7E73F5FCEDC
          D2CB80D780FF4CFF16BDE57C5AF995EFED1E46264690E6735CDF04BC053F4ACF
          7CFEEE49C0A4FD8D0803721644FC67E766833BFFEBE76F0BE74E5C5C75E7D5CD
          DD40CD5A8C8C8CE76485E47DFE5FE599CEF897D9FFC9FB074C28062007203070
          F61C3A7CC467F3E6AD47816C63A0E6F3464686DE81FEFE336625ADF305A5199C
          060003E7DFDD7BF70C67CF9E9BFFFDDBF7EB4CCCCC4140CDC121C181D3B9B8B8
          FC416901AF01BF7FFF5E3E7FC1A24957AE5C3DCCCACA3AC9DECEB6D6C5C56919
          48332C31E135E0E3C78FEEFD1326490B09099D7274B017D2D0D4E86165613143
          4E8DE806FC01C556F6FCF0FF1C3CEC8CBF7FFDDEF9F4C18B9912B2A2291C9C1C
          9EA00404D3FCE3EBAFFF53E35780459EBCBFCF3C697F1338336D051AE8414C66
          820412309818FE9F05BAC06CF201A001B90E7544676768283380D2F7AD975718
          765E5FC70000082D34E6704F0F8C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-add_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000018A4944415478DA636480025E
          193106BD042F060125697D4606C634A090230323832258F23FC37D20B9FF3FC3
          FF599F9FBDBE7879C13686F7779E80A5184184A88E1283496E1807332B4B3F23
          23432A509889012BF8FFEFFF7F86D9FFFFFD2BBC3077D38FA7C7AF3030826CB6
          A94D046A66DDC6C8C8E8C04004F8FFFFFF01A0215E277A96FE60B4AE4E601054
          96990ED49C8EAE706554F57F101DBEAC95118B2133BFBE7C97C9E83DB75A9F91
          89F12C2316676F886B001B10B0A801D300A07718FE311833FACCAB9902B43D0B
          9B53F1190075C5349001D78006689069C00D469FF935DF80CEE780F9999D8515
          6F00FEFCF31B1E26406FFC0019F01D68003B9906FCA48217E6D54C051A9049A6
          01D319BDE755EB3331329E6520311A41A912982C8D19ED9AD318F8A4C5C84A48
          3F3E7CCE6414549161B0AA88E3606462DA0E34C49E810800D47C1018809E67A7
          ACF9013659DA5287C120D90F64087199E9FFFFC2EBABF6FCB8B7F32403DC69C2
          1AF20C7A89DE0CDC2282FA0C8CB8B3F3CF8F5F2E5E59BC83E1C5B99B60290042
          4AC99E588DD1610000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'facebook@16px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002484944415478DA636480022E
          117906158F6C063E690D5D46468674A090130303A32244F6FF7D20B1EFFF7F86
          995FDF3CBC7C67FB5486CFCF6E8065184184A0A221836650353B332B5B2F909B
          C1C8C8C8C48005FCFFFFFF1F909AF1EFEFBFE25BDB26FC7C7DF5000323C86683
          F81EA066F6AD408D4EC81A942578FF18280AFFE36063FE7FE2E62BA6BB2F3EB3
          420DDAF7EFDF5FEF2B2BEA7E32EAC57631F04B6B4C016ACE42D66CAC2CF2BB2B
          DE9485898911ECCAAEF5977E6D3FFB840DC935D3BEBD7B96C36853BE09E4E7F3
          E8CE2E09D0FDE56D22CBF6EEF3CFBF1B4E3EFC77ECC64B06980B60DE01868921
          A36DC5A6C940CDD9E8FE6D8830FC69AF23C90ED4F8B77AC959661C61321564C0
          55A0019AC812999E1ABF3D8D649979395999BEFCF8FDFFE9DB6F8C8BF7DFFE73
          F4C62B163403AE030DD8FC0DE8050E64899668E35FD69AE26CC862A50B4EFD3E
          73E70D2BAA010C3FB01A20C0CDF6A72248EF8FB9BA18C7E16B2F7E4EDD769DE9
          EDE71F2C7FFEFE67C462C0A66B402F68E00A83BD179FFD6C597D811D4718DC00
          19801185C8061CB8FCFC67E3CAF3B80C98068E4660549F07A649266C061CBAFA
          E267FDF2739806FC67F8078C474346A3E4C90CDCA2F25381AEC8C466C0916B2F
          7ED52E3BC786C5F6E93F3FBFCB66E495D660D08BEE606762624249CA91764ABF
          75E40459AF3FF9F067C981BBE8D107CC58FFBDAFAD6FFF090E55516D070635EF
          7CA021CC7D406E3A81CC34134817DDDF37FFE7D3D31B18E0D1C227A7CBA00ACC
          CE9C82527AC0684D63C09E9D67FDFCF2EED2DDDDD319DEDD3A09960100F20F14
          AAC4C53EC90000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'github@16px'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002494944415478DA8D933D881A
          5110C7DF5BDD55110441B15014414191042287AD78208876B6220A422EC90584
          0454B0B2B110724D72172FA585D8D9F85128622958041234C1269D95889F21FB
          E16EE6995572172FC983B7CBCEECFCDEFC67E661242F83C18042A110329BCD8F
          30C617603A876D97DDDF60F72449BA9DCD669FDBED369A4EA77B07260FBBDD8E
          A2D1A88AA6E937F0F90C00143AB10020C2ABBCDBED5EB75A2D76341A214C4E4E
          241224B80981E7E83F16807AA228466AB51A8BE3F13849FB1D04BF20CE4020C0
          7A3C1E6A3018486AB51A29954A6AB95C8A369B0DB9DD6EA9582C32F02F06C8CD
          7C3E7F89B3D92CD1FCF190763018E4FC7E3F73EA649EE78542A1A020D2891CD8
          4F702E977B0BC19787ECD2E9B460341AE987D2AF56ABFC783CA66529D7043002
          809B18743A9D90C964947FD30FD2B846A3C1C8802F04F01D006A6200CD423E9F
          57108D0F01FAFD3ED7ED760F801F770064259349CEE1709CAC01545E2A97CB02
          CC00FD3B600C001731984C266EBBDD5291484474B95C0A68AD42FE51820112E0
          6404BD3FD607CC5F09E0D842ABD5CA7BBDDE5DBD5E679C4E270FD9904CF06432
          612B958AEAC43CDCFCD146682177767686B45AAD8261987D06ABD58A2F954AF4
          BDE05F6D4CA55208DA760D80E707270C8FE0F3F9847038AC9601020094F700EF
          D7EBF525862944B1584C4551D49D51B6582C3C40248D46432D168B5DB3D9640E
          77878C32EC084865F706185D048523902BF8BCF8C765BA85F7AB5EAFC70E8743
          74EC3714707F9DF57AFD63003C45A7AFF387CD66F3A9D3E92028ECDEF113BB5D
          17B10EEFCC3B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'home_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001684944415478DA6364C002B8
          B9B91962626218F8F9F95B815CB1DFBF7FA7EFBFFDFDDF2F7661060646460686
          FF0C0CDFDF3F67B8BF6F2E032336CD5151510C424242CD8C8C8CD520B1FFFFFF
          CF7DCA2095F68041E107508C15C8FFF3E5C51DB60B0B8B510D40D25C0754D880
          2CF7F33FEBF49B0C6A973F33F04D01BA82E9F3F33B4C171616210C00698E8C8C
          64101616AE026A6EC1E6B5EFFFD927DD6650B9F599817FF2E7177798E1062069
          2E05723B80063032E000DFFFB3F5DC615079F8ECC5EBA9E7415E606767070718
          507321505F0F3ECD30F0FB3F53DBBBEF8C351B164F63608C8B8B63909090C801
          EA9B488C6618000664C3972F5F9A18CBCBCB1381FC39A468861A008C4C8652C6
          F8F878B080A0A020030707C73F623403D305D39B376FC06CB8AD2121210C2A2A
          2A4419F0E2C50BA6050B16D0D8009033DFBE7D0B660B0808A0788F28039015E1
          931B44060407078314FD012607267C0600A3FF1F508E65E1C2856039005C0CC1
          797E058E720000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-help_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002324944415478DA636480022E
          51790665F71C063E29357D46468634A09023102B42A5EF03F1FEFFFF19667D7D
          F3F8E2DD9D53183E3FBD0196600411028A860C9A41551CCC2C6CFD40A154A001
          4C0C5800D0807F4072F6BF7FFF0A6F6F9DF0E3F5B5830C8C209BF5E37A409AB7
          3132323A206B009AFE0F44003532A11AF4FFC0FF7FFFBCAEACACFBC1A817D3C9
          C027AD311DA8391DA6405F41E877BC932A83AE821013503FE3F19BAFFE74AFBF
          C4FCE9DB6F662443667E7FFF3C93D1BA6C833E1313E359A03AB02D82DC6CBFD7
          56B83003BDC178FBF9A7DFFC5C6C4CE2029C2C87AE3EFF55B7EC1C1B923BFE01
          A131A34DF9C62940DBB3909D18602EFFFBD6B38F0C571F7D60E16065FEB7AECA
          85819991E1AF47E34E3634AF4C0319700D688006030E2027C2FD675E9E1DD3CB
          0FDFFF44F71D4037E006D0804DDF80CEE5C0A6599897FDEFE434CBFF92825CCC
          2DAB2EFCDE7BE9199A010C3F40067C071AC08ECD80DE24F35FC6CA226CF3F6DC
          FCB568FF1D360C05FF197EE2F5C28E068FDFDF7EFE610CE9D8CBF4EFFF7F8CB4
          01F5C2C6A940033219C8004003A633DA946DD46760643C8B2DF5E5FB68FF05D1
          13B75C65C6D40C4E95C68C86499319B845E55012120CEC6EF4041BE05ABF1D8B
          01FF67FEFCFC2E9391575A83412FAA9D839189693BD0107B229D7E10883DAFAF
          EFF801CE4CA25AF60C6ADE05204380998901989918F1662620A3F0DEFEF93F9E
          9DDE08C98D20C02FA7CBA0EC91C3C02920813B3B3330CCFAF5E5FDC57BBB6630
          BCBD7D022C0100C4E1E88A908F279B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'view-zoom_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000029B4944415478DA8D934B4C93
          41108067B6ADF409528A2834122A5640C4A48298F84AD47882E841B8684FA8F1
          404C54028828288A4921EA458C2644254139A9444E24CA41230A9184148940A5
          540179591EA53CDAF2AFF3D3B4548CC149E6DF7F6767BF9D9D99452091A9A3C0
          9875012236A76E6788F9643A0880D100FC17FDBFE71C6AE6261C1DBD4D77C13D
          66875041992A12D2CCD5200FD795204239224A61951040A06F956FC15D626D28
          E5EED1FE1540CA89328834988A18C3DB9C7337D9C4B19EFBBC832895E9097892
          6C97695491DD32EF1C2EEEA8CD072E2CF9017B0B5F2522B22E3AC1CB811F728F
          0DB4F7BFA98599EF56506D4C04C3E13C08D7276720E05BF2579066F634DDFB3C
          FEA5C50FD857D468217A01D14B67C7EC95D66725B0B438B712A2440629391465
          FC0EBA22DE24BFC7E3DDEFF27A5E570701ADB49029084282F5F955C7CC0FEBEA
          1480421B07A6D3F7E3196376027C73FDB46DEDACBB1404F411608BCFB3206DBD
          932BC03F64D7D9874CA9DDE423C08C6BC4B6BEF3E90AE02301768B1174D61538
          66476C7F6D5EA7D141FAB947F11289548C608022308446504D808B620EA607BB
          2BBB1AAE015FF286141A21E97831E88C7B0239A89FE8FB64FEFAA23250854623
          F98817F78855987674B5DB9A1FC0827368F964C391331065CC5CAE02A9927CF6
          DB5B9E7C186A7BE907A49DB280266EDB15EAC08AD03E589C1A1D0C8B88D62393
          04FBC0DF54BCC2333B5926566B7E7218504E19DE69AE02995C758378E4081258
          434221281A941B1220E9582128B5B1269A9EF7BF058821758A6F81B486766521
          63057F429C6518CC15934074F201D026664058448C983BE064F7BAA7C035DC0B
          B1E9D9205368969B2E04528E6B851B1035B5756AEE7590CAD516647E0801DAFE
          1B1084E41044A9BE45D3A35CE0D9BF01160E281A7C0CC84A0000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'colors_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000007B4944415478DA63CCCEC95F
          C0C0C010C3C8C8C8C44002F8FFFFFF3F20B5841168C09FBEDE2E4616161652F4
          33FCF9F387A1A8B8EC3F634E6EC1BF89137AFF072C6A60C4A670B6D873AC0688
          7ACCFC975F50CC346A00350D583AE91856030E73F0FC074A60C84D4FD31B3580
          6A06509C9980062C04F2A3C9CCCE4B014AF8ADB68C3B93EF0000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'colors-save_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001714944415478DA63CCCEC95F
          C0C0C010CDC8C8C8C44024F8FFFFFF3F20B5F4E5CB17098C40037EF7F57631B2
          B0B010AB9FE1CF9F3F0C45C565FF5FBD7AC9CA98935BF077E284DEFF018B1A18
          D115FA727F66F0E3FE826180A8C7CC7FF905C54C400398470D4032A06AD6620C
          0324595E551B7C7BDFCBF09BED37133333588C899D9FE127970AC3C5EB4F181F
          DE7BF41F6EC0D249C7300CF8F2FA3DE7E71B6F9EC86A4988C86A4BA0C83DBEFA
          E21F1097E235E0EB93F7CC9FEFBFFD6719AACF6015A60F16DBB57BCF7F10CDF3
          5E94E1F8AA8B0C441960E0AEFEDE39C59C1FE4837BF7EF830CF87777D78BF797
          F6DC1621CA00063C00AF017FDF7D657E7DF5F9BFBCC591DF5939583991E57E7E
          FFFD7D4AEC720EBC7961D3F4032CB7F73DFA57BC3AEEEFFEFDFB99BE7DFB0EB6
          849393F3BF939323636FC8A2FF8CF872A302AB06F3BF07EC6003805C667479B0
          0121A1E10C40CD608C61C07F6D06E1DF522F4DFDB4B9805E604596FBFDF3F79F
          331BAFFD0100283D09A1915AAC5E0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'gear_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000025B4944415478DA95534D8852
          5118FD9EFF3F8CA020AED45A04A9B9D45232124A98C46216C5600865D4224542
          421741B4D616051189451258A42D0A119A0894511CD3605A8DB8310857E6226B
          A136A99DEBBC405CD907E7DD9F73EE79F7DEEFBB1CF121954A492412D1683422
          8944429148E418A63F0302E054369BAD77BB5D5A0E8E7D4C261379BDDE35A150
          681D0C06B5BDBD3D72381C418EE39E327E369B451B8DC603A5524946A35187F1
          8F72B93C66BAB941341A558AC5E20FE89E009E036F813B3038CE1B349909C66C
          57F7814FD3E9D4974EA7877383582C7608640B90D28A01C3D3994C667B6EE0F7
          FB49AFD7DF864162C5C5AFC6E3F1E5542A459C5AAD26ABD5CACE7C1106AF1744
          0D341940025C076759E0D6777777B74AA51271F178DC813986ABFF4410947146
          4FB3D9FC833ED9ED76A54020A82FF0DB681EB3BB6106BF418896B6B851A954DE
          D56AB5F9D8E97492CBE5BA09DDA325DD88198C40489688738542E13D4B130BB3
          D94C3E9FEF1A74E925DD844306AC7CBA6EA135F3C41B14D4A562B13817A24684
          3299AC04FE24CF33E71CB0C369B55AB2D96CEC226F40F064C13D073CC39C18C3
          085ACF027701BB2BB45A2DE2507D140C0649A3D1BC846873C5345EE9743A2FF2
          F93C71AC3C43A1D059DCF2D67F14D14FE0482291F8CE29140A0A87C36AFCFD23
          B8A3401CE43EC631E030BFE00B9A87C006E6CE23C53B983B934C260F4A99DD81
          DBED5E4357DDEBF5BEF5FB7DB2582CF720BECB1B6CB6DBED9CC16020B95CBE3E
          994CAAF57AFD57B55A3D784C2C40108E41C3E190743A1D0502010F0C581AF661
          60C1C3F9CA9EBA4AA5221810FB098BBFA6631A13BE27A48E0000000049454E44
          AE426082}
      end
      item
        Background = clWindow
        Name = 'clipboard-copy_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000017F4944415478DA9D92316BC2
          501080EF3DFD2525FE01E92CDD0B5D123A74AB3FA16BE6E0A2C5BF60C9A288A4
          429B169780A9A0D642A0D2A101AD881574A83A0423497A0904A27915EDC18370
          47BEF7DDBD23E572B90300A71009CFF3BEF0088661F40A85026C361BF82B0802
          5C4110BC68B25AAD124AE9C2719C8B7EBFDFCCE7F36059D671804C26E3B55A2D
          CBB66DE109A3542AED07DC544CE2276E2F394FD3B4EBF57A7D379D4E61B95CC2
          783C86C16010FC309FCF41D77540BB980109A9ED763B51AFD7BBF89966CD0661
          BD5AAD1640980678434255555792A4ADD6445124C964728143BD180E874D4551
          D8068F0D8DBE680D26209BCD7AB22C5BD8223F994C9E63067E9C389FF4FB5D0F
          0067E24390D7A47317011473EE68342238541B5FE68A69202B0DFAD1D56206C5
          621166B31989CCE4E72883E825614B4C83CABD4A8D8E1E33D88D10105BE5D56A
          454DD3DC32D88D70262497CBC58AB87DFEEA1E66C02A604BC071DC6106AC22CF
          F3904AA5FE6FE003D0E0951092DE07C0677CFB05E32937EA1B0F11A500000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Rainbow'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000029B4944415478DA
          A5D3DF4F8D711CC0F1F7E79C3AD529B588942CA9316592ACFCA8ADA6B5C36C71
          A3AEC2C60597DD9A3B73C925EB0ADD54370A5B6D195A88B1CE88A2947EEA27A7
          9D52EA9CFAF8D4F31FF0DC3DCFF3795EDFCFAF477C3EDF08B0937FBB46C5006D
          0E3E552EC3D869A88F873ABC0C52CE1A97C05F8AD442EA633817806AFE90C533
          5CD45251A6B201342EBE44CFC378393C4C8006038628614DAB958FC5220F8494
          16A898832A0376D36E409D5616AD38C0FD50175A059325F0C43268269A118E1B
          50A9D27344A817929FC1C9209C35209D4E5CDAA817F2171DE02EBDE819982E82
          B63868218A710A0DA850E9CB179A84A40E289B87532C5BC3DE23DAA457B2E71D
          E0B66708F5C16C01B4C762154631499E013E95815CA115B6BC85E2053861402A
          1F0C68D59A8C8003DC8C9D424BE1D74178E38557789866BF01252AC339C27348
          EC82C245286285643E1BF042AF6D9F7180EB0941F418CCE540570C9660243FD9
          6BC05195F13DC26B88FF04794B50604012FD0674EA8D840907A8D91A520E4130
          0B7AA2A0DB8080F55AB1942677217E88EB83EC3F708030893623C1CFADC85107
          B89A1A8966C3EF74F866C057220892866AB6CAEC0EA107BCC390B58CE5152681
          31D05EBD13FEEE0017D3E3D14C584A81110F0CE366C12A55CD5499DB260C40F4
          0F5BD71064B04A1C53060CEABDF97E07A8CAB2E034584E82A90898B0355962B3
          013B5416368BCD14CF0C248721C500AF15888E6BC374AF0354ECDB85DAC721DB
          C280DBA66115AE6059E91695A54DC22C44D81225AEDA386DC13DD842E84F7D34
          DCED00E5B9FBAC4B10B6092CBAB0F4B173620C88530945CB7ABCDB26E05588B5
          D646D836A20BDAF6C5EF00C587F3B0C6A396BE6589956AE7D80D91CA9A5BD61F
          B8EC855B37C2ACC0D5F528EDF0BFDB00FEEB77FE0B908E2B563CC6F534000000
          0049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'action-play_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001154944415478DA63D40AAE61
          10523173FAF5F5FDBE2727D731BC38BF83E1DF9F9F0CC402469001C2AA66FFFE
          FFFF7F0EC86FFAF5F5C3A6A740839E136910A35608D00015B37F3001520DC230
          009B414F4EAE077A6D3B5683701A80308801645033308C366273114103905C74
          1EEA2214838836008B4140AFADFB4FB201A80631365262C0672035851C2F7C02
          52538174DF97E777DF9212881F4136FEFBF7BFFFF38B3BEF1E1F5BC1F0E1EE19
          62A2F1FF0720351988277C7874F9FDE3636B183E3EBC0097C79790DE03A94940
          3C11A8F1C3E3232B183E3EBE826101B6A4FC0EA409C89AF4E1D1958F8F801A3F
          61D18830009199DE829CF91FE8DC8F0F2F7F7A7414BF46140384544C72804976
          E1C747573E13AB110600C11DF164A6B803950000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'expand-less-black'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000714944415478DA6364A01030
          8E1A40D0000B287D821C03CC81780794ED01C4274931C00C887702F14128DF1E
          88DD81F814310698416D3E04C46150B155406C0775C92942066C03E25F401C0A
          C4BFA162AC40BC1A88D980D88B9001BC40FC0349330392211C40FC99D840240A
          8C1AC0C000005CC81111E90D17B60000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'expand-more-black'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000714944415478DA6364A01030
          8E1A80D5005E20FE01C4BFD1C459819803883F1332601B10FF04E2302443409A
          5701313B107B1132C002887700F17EA8210C50CD8E40EC01C4278809034B20DE
          0E358401AAD913888F9312885650EF30409D7D8CD840443784019766620C2008
          460D60600000AE541111B4652D5A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'fold / unfold'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000DD4944415478DA63D40AAE66
          606060042392C07F08C16853BEF1082323A31589DA2166FCFF7F8CD1B662D33F
          7234C300E506E4E416FC9B38A1F73F399AF30B8A19711AF0F7EF5F86850B1783
          D9F1F1B10CCCCCCCC41B00D2BC60C122868B972E83F9FA7A7A0C09099886E034
          E0C4C9530CCB97AF4489D8A8C8F0FFE6E666C47B81A43020370680E9E03F6D62
          015B184402C3C082D830F8F3E70FC30260145E82C6829E9E2E4302302A595858
          880F44A021FF172E5A0276457C5CCC7FA0668CEC063760427FCF7F6086223500
          190A0A4B1819B373F28F02355B92190BC701F43E8A0FF81B016B000000004945
          4E44AE426082}
      end
      item
        Background = clWindow
        Name = 'document-color-green-edit_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002084944415478DA63F4F2F665
          505454DAC9C0C0E0CC08040C58C0FFFFFF3F02A9D20FEFDFCF5DBF7E2DC3B76F
          5FE1728C5EDE7E2003FE4C9CD0C380433F437E4131A3A0A0E0BF77EFDE65BF7F
          FF7ED606244318BD7DC006FC9D38A1F73F030E0032A0AEB6EAFFE429D3FEBF7B
          F73E0B68C86C9821441B30A1BFE7FFDB77EF18264F9EF61F6840DAFDFB77E76F
          DBBA8581D1D7D79F415E4111AF01404D0C77EEDE85FB0F18261F5EBD7A29BC7A
          D50A06C690D62286F2E0C43A2355AD7A062201D0450C2F5FBE60061BE03BBFF6
          2FB2A42FF767063FEE2F281A443D66825C0777417169D5CA873F78A2AE3E7A47
          BA013F7FFD593B69D5C1F8ADD7BEEDFFCFC0D84392013F7FFF5DBDECD0DD8215
          87EF26FDF8F5F715502C9B6803809AD72E3D78271F68C08E3F7FFFEB0103B201
          883B18CBA72F40314082FDCF7F098EBF2829CADB3F6ECDCA23F7419AB70335EB
          0335DE61F8CFE0F8F0E8F2A78C8BFA0FA318F09085EDFF631636B8018C0CFFD7
          F2B2FFCA3B7BF735B266A757570F3CB9B56D02035E03808A37BEFDF829F3F5C7
          4FDB815C0320FF2E9076046BDE3A01A400B70140C5AF3F7DFBAEF5FCED3B837F
          FFFEAD044A7D0062A757570E3C06D90CD20C76212E03FEFEFDDBF1F0E5EB3B3F
          7EFDCA070A9700F14DA0CD8F6136C3BDD8583407CE0109BF62666178C9CCCAF0
          875390E1DDB73F4BFE33FC3F0974CD8227C7D77E7E7864098A66100000ED0F54
          07858D1CB00000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'image-colors-time_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000003234944415478DA85927F4853
          5114C7CF7D6F6F6FB3A91BC3D6CA21DA184A4E04FB616523AD655048465460C3
          94202B248B30A8A4329422FA417F142B1964110545B522D1DAF2473F946A9615
          F9232B9BA6A668A973737BEFDDEE5BAC46501D3870EFE19ECF39E79E2F82309B
          93BD19E6AEDF154D4B981272CD21AE21DE47FCA620F0675A6F9F9B7C75EB6C78
          0AA0D0419FB106966CA98C4708EE2384E2E10FC318BF236E7E72B1BCBFE3E1B5
          3F0088820DA79C689A6A7A0B494E83BF180138BD6323E6AB254B01F3DC6F8072
          961ED656DA9791E43AF88F11C8BC3BE51B5D43DD6D3F012C45C141D36AF0ACDF
          572A03BA3C92E382D0318904BBA31478282A024DB10C8961904D7138C2375E3C
          F0A6EA42C3F1B3C079FD802E2D5A0EE699716B3ECD32567D884D55852ACDD4AB
          030653029CE80BC0B3319E09C5357CCBA092EFB0F4B576386AF658010DAE2B48
          258D3C1D8D9A01AEA415D2E0481A4520233799A628444D72425769DBD0B1D181
          2FB5D2A9F1C148E6B346AA18310932CA7E63EB89490228BC4E66CFC5A4C7E749
          2BB9EF9131CC8255897E4D9C4ACA715C8DEB656B41635363B177626C13F98058
          C2770B0CBACC47D0471BEFDEF78A80610208B6EE63E4BC2BD18C33779A81A2A9
          1ED78BE78BEBEA6AEC7ABD7E7E6666269E1064A0A07CE0703850676767B32008
          CBD0D775859380101B9A91A7684E5599CE7F43493B6C571FC66BB5DAFD168B05
          932270DAFE0695E424639208D5D5D522E4B0D881B8FBB9E1AB8A2EF4043A3855
          C295C7D14D454545713A9D2E18DF6D6B46270BD3B178EEE9E901ABD5FA4104E4
          13802D1CC0A6FAFDAFD5ACE2CE47B5B7ACAC8C92CBE5C1B8E5543D3ABF3D03CB
          5909783C1EA8A8A8F0A3F69C3C5049591B81E487CBE5BD86D1D9A7291F156DDB
          F6AB835A572F34BCED4747F2D270AFDB2D76D08D4C315AA85A9805D152B680BC
          29268A318A1B1965E80D976255A9B393120F887F4011C189D6F669043CBE00B4
          3FBD87BABABA0E0555A79547C00E8311964CD78252CA8AA2C1238100F7C09820
          E724F40383C1909E959585D56A350C0F0F83D3E914931F1359AF40F00F4B4949
          81ECEC6C19A9BE975CF388077540FC32493E5E5F5FEFFB01E1924828CFC2C586
          0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'MinimzeToTray'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE9000000097048597300000EC300000EC301C7
          6FA8640000001974455874536F667477617265007061696E742E6E657420342E
          302E3231F1206995000001134944415478DA6374727262A004300E2E03A2A3A3
          53815428C3FFFF254B972DBB44B2011111116F81941010BFF9F7EF9FCBAA55AB
          2E22C9F500A974A0E1592B56AE5C8CD580D090909AFF0C0CCD60CEFFFF6043D6
          AD5F0F36242438F83E0323A3C2FFFFFFD7AD5DBB36186718F8FBFB370135D742
          B96FFE020DD9B265CB457F3FBF8740BE1C10AFDFB8695310DE40F4F2F46CFA8F
          64C8BFFFFF5D98181937C10CD8BE63077E0340C0D9D919C51020E604626E9001
          FBF6ED236C0008D8D8D83401A95A34E1F5478E1CC16E80B1B131233313531D30
          B07441720C10C21D6A33246C81069C3A750ABB014686865A40CD570944FDFA73
          E7CE6137C0405F9F0D18606B814C533C06CCBB74E952155161400C1878030091
          D07571F126F0770000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-remove-warning_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002684944415478DA636480023F
          1921865C0D29667E56E6080646C628A09009230383C07F06860F40F61986FFFF
          977DFFFB6FC5CCDB2FFEAEB8FF9AE11F541F2388C8D790628856125505725730
          32321A30E000FFFFFFBF002423B63F7D7FBBF1E223B0218C209B6BF464551919
          180F036D166520008086BC0652B6336F3EBB3DF7EE2B06C6DD2E3ACCFC6C2CA7
          F0D98CCD253FFFFE330B3E70ED2FE3294FFD284626A6C5C46A861BF2EF7FECB4
          9BCF96319EF232D802B4DD936403FEFFDF7EFCD5271F90012F8006883273F1FC
          1572F6656264C4A78981E1DDDECDFFFE7EFBC20C0A8BEB1FBF49309EF632F809
          0C3C162E658D3F1AFD4B5870E9FDFBFD7DDAD75BC7963D5D303FE2FBDD077380
          A6FD051AC00E72C14BA00B449879787F89FA847F83C62C0A6015145AC722F87C
          DAEFF75776FF78FCC9FDEDCE7B05FF7EFD75031A200E32602BD0000F3CDEFDC6
          A92AAA2DEC24BB989199D1F6FFDF7F47DF1D7C14F9F5FA9BFED36F3E87826221
          1A180B8B70E96664636E12F556BECE2EC9BBA27CC5B79FEDE19C6C7F3FFC887E
          BBF7C18E6947EE7E603CE8A6CBCCC9C28C2B1D3CE6D6113116B4913BC3C8C428
          9FB7E8DBEFFE184E1626468627FFFEFCD50C2ADBFA8D314A5194A140530A948C
          0F33A2A544665EB668513F5515567E8E26101F66003330AE80B1D078EADA8B46
          4626A044BDBE1C83A794902A30FC10798191E118BF957424AF9EF875A0183748
          E8C0F5DF3FED3558D8807C9001DF8058131CE420431294C5191255C499D99918
          C1B9914D94AB49D44F2D879983251AE6A28675DFBFD4077270830C8026A61528
          7126CEC10A74892083B60017838DB73A8382B9CC2DA05A153CA9F101008100F0
          D9B651C0470000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'select-none_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000D34944415478DACD52410A82
          50149C4704A1B77253E6815A86D1C65DDEC023A461A68177106A955E23B2A8DF
          240611FD550B1DF8BC0733FFC19B371286D10CC05C444668A194BAB0B8EC3C40
          B47C51149E70C0D9B627C301F116DC8924D9DDD81A7C5ABE2C4B43A268F3709C
          29BE11C75BC5F2FAA4E53960D0830161B8E18EE31F3BA6F440D103D1F28D07FA
          2B88CBEA8940CB1F8F074FD6EB081411D2D646C007E4790ECBB2B4BCEFAF201D
          E620BD56D5C9ECC119BBCC013D28CDFF73B0582C619A066F2CF810A0AE6B64D9
          BEC9818E0F82004F2A5C2233C7DC90A30000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'internet-gray-update_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002FF4944415478DA7D536B4893
          51187EBF7DBB6F4D5639A225EA2C412762C369E02525256C453F120BA2C87E08
          D1428C520829888828BA5084E10F090A2F4156C8FE24CC1FAB4692D06559A6F5
          47BA984E77719BBB7CDFD773D6B47F1D78BEF3BDEF79CF73DEF739EFE128334A
          4B4BA9AEAE8ED768342D300F03E5801108006F2449EA4F2693831E8F47989898
          20D8E97D1CFBD4D7D793DD6E2FE0386E10B06171056E0178041C0512F06BE07F
          0B1C9A9C9C9C76B95C6912CE6AB592C3E1609B3D085C07746321857927E616F8
          5FE0FF3E23C07C1988C05F834CA6BD5E2F714EA793D7E9745E2C1403BB45517C
          89E0C7087285C3E13E83C1D00D7F112B0BFE1D9847812F28A7A2B7B757E0BABA
          BA0E62A11F1BCE00370541209EE7E7F05F1B0804A68C46633D36F4A552A97CB9
          5C4E883D05DCC24147DC6E773F23788600C7AA98D2AA3A4C208C8CCDB492989D
          59124499BCD9B710196104DFE1F880945AE3F138A19C0AD8D771620DB3552A15
          F10AE59DB8527F2EA1D2FF663CCA64CC12346CFE19CC326F6704116C181A1F1F
          3F3E3636469D9D9D8DB0AFCDCCCC940D0F0FD3DEB60ECA2AAEB0C4B4EB2F8932
          7E17D6448EA4E7C86B00293E59CB201A8DB686422132994C7656632291A8F287
          A3A1E5CA039B2419CF449E635A3002A0155515A120C57F3558511B1A67732A4F
          A2F8AD124955C94824AAD4E96FE300E79A4E2060773D807D67811B995B6059ED
          59D49ADE2D6C29CB0763E89BFBA97FF6D528559DBECA29B4BA42FA2BB0C8B5B7
          B7CBD46A354BD10A34C1C91A6A10F0F89612777FC4578547EEA24053230F4963
          CCA6DCDAA6F4D570369B8D1A1A1A2C994ECC022E806419F3BEF98DDBF62E6DB0
          7C46A00A25A03E3A1F9CFDFA8057A9496F32DF0343769A1EAD4C686946320094
          8320CEE4F01BF3740BD985B13481443EB87AE067AD7D0225B441B0FD5CA661D8
          63A2EAEA6A9942A1685E7D8D8BC63CF33C08107805F631C4E5A68526690E9F8E
          58D03FF8AF400CAD564B252525949393437ABD9E9205E51435175D44EF0C2557
          229FE42A0D7B137249143EFE7AFF3AE51BEAA13F753962A85E22ECC300000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'gears_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000027F4944415478DA85924D6813
          4114C7DFEC6EB2D1A69834148C15621B5308189A940862134482468B28345623
          424B155184EA41F0E3E04D3D6911D49307258740A982B12A2851A90842847CD4
          8694A628926A21D840DA5262ECEEFA9F9A8BFDD081C7FBEF9BFFFBCDCCCE30C2
          D87EF68145AE6F780B791AB103D139373DB92713B940FF1BACADF726D535B698
          05512C32C6445ED4346D5C5516DD8B0BB3FAC287A1F9E9D48BB501BE4BB15164
          2B9A1BD0F81CDA0CDD015D811E99994CECCF3DBEFE4FC04934DC47C3E0AFCAFC
          3126484CD21BD2986B268D76157323A989E181B5011D176361416051001EFD9C
          2B1D1175B22819EA38C00E40DFECD7E4A0BD3A4A82202C35C4E3712A97CB7FED
          E013F22648134EFF067A0376E4254DFD2C909A3156A642DB0CDF0EA33E88E84B
          2412916AB54A8AA250329924861B90F475269909C27718D6D5C0C566FAD2DF48
          3F4E314DBD2231E532A047F92E11E7A1AF22C7C6C6C65E32EE6EEBB925D65BB7
          C651BC814F49645ABF9B32C5F5ACD2B3FCCCF0A80008C8AFF2F9FCBE25C0464F
          27995B3C44AA4AB25E479B9BACD4AA9B6AD53365BCD65444FA88D8896633AFA9
          AADA9ECD66D36CF90A5D5D5DE470387A2143301F407301D15E2A95662C164B13
          EA99DA9547F891560042A1100728FC07D7567F5828144E44A3510A87C364B3D9
          9E0070B036A7AD0AB0DBEDDD301DE74678F2D8AE2797CB2D389D4E13AE338BBA
          1575FE3C8757008C4623F9FD7E72B95C3E98DFD5569A407A8F08A0D9A6FD195B
          F00F0A2B007C04834172BBDDAF61DEBDD60B04E06E3A9D3EB72A20100890D7EB
          ED86DC0BE36D807804A0871077A0AF616E20954A3D5D1520CB32F97C3E922489
          4451E4C73983F23DC421DCFD33EEE12F913FEBDF4F981B6CB626C11500000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'pixel-coords'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000000D04944415478DA
          9D93C10DC3200C4583C2185187E8ADEC911CB245DB3952B6E821EC417BCA102D
          6320D16F64500E6D05588A62C7F1C37C83082174FF4C4A69BDF74ACCDB825087
          FBD1C11F2907DF880240004030808AAEF05F7027F8CF1AC080D052219E1B8A15
          E58B01F1E779B3FCD900A05B00675E5DA47C0B60201D5A0159BC56C048A3DBE7
          45DFF724CCA96BB3475507DF2C02D0DACAA3313CEF95F7EA8A003B8114175F92
          5035005AF9CDC5BA6A0B4961BC68CE0E80A9568378CE5178E04BE35217A5807C
          55B99B1CA7EBFC0BF0015EFEC4B3A4BE24FE0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'sort_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002084944415478DA8DD2CD6B13
          411806F07766B33536514B73486AAC45ECA618847A49A0B7063C78D053A53D79
          F1228836D51E144C0F51F0645AB4A2A75A3DE851FC0FA218F0E362416C112309
          FDC856A4986028693699E933D12DB19A8D03CBCECECEF3DB61DF971186C7DF4D
          43D7CE91BB6BDF0C91DCAA6E56AEBF4B3DA352CE247B844712D4DD1FADE0BD56
          5ECFEA0B4F261BEBAC39CC188BAB4529E58CB559997C9B7ABA8384CF26C8D71F
          B530D57EAE67F9C2E3ABBF8093D371159E4678829A06907B40266CA42570FA51
          2285F0150496703F26490A92F405F301AC3D28E6D62E656ECDB706CECC4FD5B1
          318B6B9873BE06403DF731626920463157E0AF6FCE399EE02B0E3C2C855CE19A
          261A80103A633C88F7E952DE0CB5030EAFBEF9B8DCE1D94BFE41A30114F3A6BE
          B194A7A3A7860E625EC8380107FA02545AFE4691F1510A9C08ED0099E41CEDEF
          F593A8D5A86C6EB406ECBF1E898FFD05B8DC5EE22E9DAAE51FFF04F4CE2E6720
          3C7243354FCFEAFB1766A72FF807F0FDD32B3A123BDFDB0650DD17F98CAAC464
          DD2A68FA9E0650B7AA9C6BFA217CFE655BC0674405002014E39CAD2840081144
          89D328B5F13F277888CD1754A3E1970D30461CF345AC8555B73A02DE1E838E8F
          2699CBED9945E0E2AE569F15B56ADC1150C31B00329644453C77815CFE1DBE8F
          F0F8E2F3DBCD55401F0C862CC948016E1BD885DCC163871D2EE63ED036E44D75
          1078FC8D280000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-add-arrow-right_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002434944415478DA6364800259
          5B7D06CD506766561EAE0846068628A0900903238300C37F860F40F699FF0CFF
          97FDFDF97BC5CD0D07FFDEDF758A81E1FF7FB03E4610A119E6C2A0EC61AE0AE4
          AE6064643460C001FEFFFF7F0148463C397EE5F685399BC08630826CD64BF451
          6564603C0CD42C0A53AC2622F3DF485A85E1DCD33B0CB7DE3C614432E43590B4
          BDB9FEE0EDDB9B8F3030BA4D2A6266E3E13A856E7384BEC37F20665871F10008
          33A2BBE4EFEFDF66FB2BA6FE65F499571DC5C8C8B418DDB9F80C8018F22FF6C6
          DAFDCB8006D46C01DAEE49BA01FFB7BFBA7CC70764C00B90DF617E86011D7105
          061D0905862B2F1E305C79F9002E0E0B1350587C78F05C82D1677ECD4F6000B2
          C06C2404602E0246EB9F0FF79FB3830C78093440840C17BC01BA401CE485AD40
          2F78100C83BFAC9EAC3F2576FDFCFD8FE12FCB470516CE2FB96FAEDF2B66F49E
          5B1DCDC4C4B4889001BFBFF1287E79A4D105B42C8C81F1CF22169E77494F4FAD
          FBC7E831BD9499859D1D6B3A7051340B9B77F8ECBA4377AE33FCFAC9CAF0F383
          082B30B5AE03AAF5067A61EE9F1F5FD31815DDCD19B4C25D812991012325F2FC
          5664D97BF2C72F464606161C497B1A30FC18190C52FC18A42D7540C919252FFC
          FE28C6FCE5B9DC57A03833923E2606A8814003A6401208D010151F6B06551F6B
          66265656786EFCF79B3DFBFB6B9935EF6FBF6760E7156660E51660038A6F0005
          3A50F3AC7F7F7E65A2A4300E213E904B1884D5E418D878B9A1799581E148E35C
          06DD986E067E69B55540CD2140CDF3809A53AFAD6BFB0F00DA321E01F3C24BBA
          0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'gradient-horizontal_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000964944415478DAED93310EC2
          301004F788ED739CB7910A44013D2082A00E90B780048F212F217F40392EEE90
          68020D452C8DE61A4FB7B4297667000B221AA1C713915675250D3CD7AB253D9A
          06D6DA8FB8CECEC218039324D11AC0E1580915DB7D9BE763B9D735A5694008EF
          6499D2DDEAD47B30333CB3387628CB130D8121F027819FB7A0818BAE6AFEE51A
          6F3499CEA09F233D03D12F2F509B72B0194A920000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'money-coins_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001F34944415478DA6364A01030
          A20B88F07330D8E84B31E8A98830C888F130B0B331C3E5FEFDFBCFF0E4D51786
          6BF7DF32EC3FF794E1C5DB6F080378B958195A332C18FC6D9584D85859C28142
          4E40AC03C4928C8C0C9CFF19187E32FC67780EE45F01E23D7FFFFD5BB1E9F0FD
          F770037A736D18A2DCD5A380CCE98C8C8CBC849CFEFFFFFF8F402A056EC0E296
          20063753A977FFFF7CE727DAFFACBC6F510CF0F172FFCAF0FF1FD3CF97175818
          FEFF61C2A99389F52FBB98C13F062696BF8CB0809B5DE5C260A12DFE96554091
          875DD2EC2F23333BD0DBFF19812E6264F8FF9711C867606066FB0BB4E0FFFF3F
          3F987F3E3FC3F4FBE383AF8C938BEC18FCED9484595998CD415E03E2F9C03010
          83B891E92F232BCF3F209FF9FFDF5F7F8086B12185C17B2095C8F87C4B722490
          3103147040C1B540A95EA04E0DA0983B10EB03B10C508EEB3FC3FF1FD058B80C
          C4BB80362D3F76E9D947C6973B733002EEFF7F866B40F23090791D885F02F93F
          8151C90D644B33B1F3AB3C79F3333DAE7A05C3D57BEF1818DF9F9B4972C09D39
          7994DB35633EC497402F9016709F1E7CBD74E7AD907BFE06B8019EA406DCDE33
          8F37C534EC82289F5662CFE067A7C4CDCCC4144A6CC065F71C6078F9EE3B2233
          498B72337858C83118AB8B31488BF1A2642050C43E7AF9199881DE31EC3EFD08
          1C70787323A90000A76AF2AC256F07DA0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Renumber'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000001264944415478DA
          ADD33B8E83301000D071F84A404B49A061AB3469A8900257E156FC2A48A0E304
          DC21652A7A7A1408BFB51D6D566992C8BB2359B2ECF1939931288AA233C7715F
          C010F33C5F509AA657499264166018861E2549729571B0003D0E0AFCF906A228
          3E80DD6E07B66D435555E41B5F02B7DBAD47711C53405555D8EFF7B0DD6EE966
          599624E133401004D9755D300C03C671045292A228DE0238F70EF03C2F6B9A46
          0F3B8E03A669C2E9747A0B4CD3D423FC0E28F0B378381C28703C1E3F07F0437A
          009EE75120CFF3B7002EF21DD86C364F806559906519E0DA80A228D0B62DE8BA
          0E5DD7D141F69BA68165597A1486E113403A416E40DA483A4292EBBA06DFF7E9
          2132822000DCFE5F0021C4F490D675FD2700CF99001C1438E309D3EF8CE3F20D
          B27BAE5AA748253B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'symbol-arrow-down_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001D14944415478DA6364C00234
          83AB198455CC3E33323272FFFFCFF0E3CB8B3B5C1716166153CAC0884D502BB8
          0664C01FA02C1388FFF9F91D26CA0C78013460C1A03540C52B8F4150C180F3D9
          E94DDF9F9EDE40D00009633F0669537FEEEF6F1E7EBDB6A689815113ACD8F422
          30B45D1F1E5DF9EAC9D165380D9032F16350704A94606264DA098C19FD0B0B8B
          1918B542C08AFFFDFFFFFF3A10BB3C3DB5E13997B00C8601AFAE1C6450744A94
          0446ED5E46064655A0182B2866E0068014020DB8C5F09FC1E5DFDFDF4F9859D8
          E006FCFDFD8B899199450AAC9991511DA8E62FC200A07385544C3F0025F8A086
          DC0352CE405BEEC20C008AC902A97D4035AA103EC347A01704C106A8B8673148
          18B85B03C5B72219F21068801CD0004628FF0E504E05CAFE0CA4BCDEDD397DF4
          DADA16064646665606ADA02A064125234BA0C4769821D80050F32790E6CFCF6E
          1FBBB2AA8EE1EFCF6F101B900C31077277000DE1C7A2F92390F2FCFCECD6892B
          ABEAC19A511212C8104D90218A46668C8C60430490347FF8CFC0E001D47CEA2A
          92668C94083624B012E41213A0013B815810A8F93DD004F74FCF6F9DB9BAAA01
          4533D6A40C324423B002E8126323A001CBFF33FC8FFCFCF4E6B96BAB1B19FEFE
          FA86AE9C0100E353F711154893B90000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'symbol-arrow-up_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001C94944415478DADD924B2F03
          5114C7CF1DB1F088470589578A12D446E844AC4648500B82959D2F80B0536B56
          163E81C7C68E88C463E1118910A4F10815FA884428122D6D4482B9FE773A45AB
          7C0027999C3B73CFEF37F79E7B1945076354DCDC4BD995F55592C46654CEBB7D
          6EBBFD6C6E94F8FBEBCFF268B8A4A58FB22A956AC6D80A1E03E7DCC755DEE4F3
          D8F71D31242C02B6F651B659B160BC0C383D3C05899F736A8664D7313B122161
          61B8D4DA4F996645C650C069D14B85E411A9E5C16DDFF92E611ADCDA4F5966A5
          16EF4B8053E99780E44948D093ED535DC28CF53D9427B7D7616211704AA8902E
          B1B402A1D7410FE60AF57100C97A77BAB975BE3046ACA273980C268BFF0BE66E
          A406B02EE092FECD88B4869A22FD074F41AF33ED606A2024C8289155BDF042C0
          5C55AF2429EE2D2C505555029C8FE12AB28938F180D71917127441609271DCDC
          81A7F1FE64E3263E21850CC5359F02144BFECB63B1D55C6D25C44C5F82D0168E
          047C7BBC71E75C1EA78A0E9B9046080E260748F42BD7D29E83BEAF06BDAE724D
          50D631248A13AFF7E69F3DEB135AB7B56DC51088302A42D2961CBC75050FA707
          A36EA21E7F09FEBECAFF4960C3C9C8019C79122ECD0B2E4DA2E878ACF800F1AF
          F911E325E9350000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'symbol-download_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001FF4944415478DAB592CB4B5B
          4114C6BF21444531B191169BB68BA86D355D691E7525B6505FD807A62D6EDD74
          6DD185E846FC4BEA8B824A55106CED46E8426C48350B11AC016D1B0D086A73E3
          A35E93E937C9552346144A070E7367E6FB7E33F79C239061389BBB612BF5EC09
          2172A4442C1659B12CF4B76792426404F8BA5158EA4D18CBB81659312FF4FD2F
          40B6B508A6EC5CEC6FAF43EA0797038440DE750712D42A8F286FEE4241B1FBA1
          B6BE3CB734DA8BF8E1DEC5009AEF35B6E186B3DAA5454281E040078491B0A894
          F2A5B6F17D7A71B807F79FBE3D07080E76A2EC45276C25AEC70262FC38B1C2B8
          4D274087844FDB589E92892358EF3C3801EC6EFE301F4437617354D6316B1F08
          C821D49402F0058577BD3A852642FE707EC59864094F00DC37736E620CABD2F2
          227906C05F08F0A042A9597742640BD7636980D74CC07BA6202BA591F3B148C8
          9504DCAC6844C9933736EE7F3E85C8437E27C5EA36091CD16C36CEBE71AAFD39
          3BB2B5F66528D50776CF73386A5AAF51344DA30B170C9A03A4D586FDE3DBAB33
          EFCE3692DD4DC8A3D602423E11E2C960F6F33175E1AF133BC7E6739D68773F53
          102B010AE24D33CF31EAC3FE89DFE9E624E056950F167B99EA91E4B0DC76C294
          9567E1FA23215534CE321A645C8FEEAC050D20B0BFF50BAB337DAA13551F7862
          14E7E28A83C05D96313FD8DFF12F801001EDF80B0ACE12205FAA6C6800000000
          49454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'symbol-upload_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002084944415478DAA593CB4B1B
          5114C6CFBDA389C6A4BEC15A902E9248A22B1F51041F9B5AAD2E7C14175DB977
          21A23B1F74D1BFC0BD6875A1220A22F80271DB6AA491BE166A0A6234457C25E3
          A83171FC2699B1E3938207EEDC997BCFF73BE7DC7387399ABA29DD5A2C32C64C
          F49F26CBB214F46F9AD787BB883D1BF0BAAA959273F20980E866626A36F1F884
          175898E58C95C1F90B468D1C0907A4836D8D40A7FBDBB431D74F4C4FCE745690
          ADB63D990BC21C80A5BA882B186FFF2C0F9DECBAA76F65C3FE892BC9F6AE3D85
          733E0FB1EB81B457111890C1633D8469623BC48CF345888B9EA87D8D64AAF62E
          0F1E691096E128A7DCBA8E348817202E544BBC04390E78A60A43D833A8EFDF30
          BDF12E0D1CEEAECD1073A20B69D662371C0A547108CF0FF81EC7A7A08A1A116B
          0CE76CD420A27FABD033DC1903A45B5D11251AC417D86E81CF0C00973A00C754
          8F31817523CA90D1464105F428F72082B57338344B07BEF9AB9044966CFB0D40
          3AF4F1F099489697F65A049A442CA30EA094E00ACA74D500F1D28FB15EB2D5B4
          29D01B009CF9F7D15ECA6BF90888AD1A594CA1047314E0889D4191B8B7E1FE39
          F989C2D209399B7BEE013C9F3B493098C8F1BE4FC9AE44FAEBFDBA3E829B9894
          652543520A05767E51E4428AB6E6318062DC904896574E52CA0CFA7EDFBE899A
          3D05B86B8F00A29D79062076B001F4DD8C169E8BFE4D93077FDE43760DA4A306
          20E46567020000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'font-cancel-2_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002AA4944415478DA8D925D4893
          6114C7CFF36CE39DBDD27491E64A2F5AF9D1685E3825ABA16665733A4C48B32B
          239088C0E803A2BAEAAA8C828820B1BA2921830AF223C96EA60561A4A1AFCB32
          CB3033BFCAEF8FBDDBDEFEB34D2B247BE1E13DE7FF9CE777CE739EC368894F10
          04CA75E48571CE254551E2EA6AABA7F02D154A6C29313E611399CD89A58CB12B
          0094B85C1DB7A4F6B6FF07D8731C248A620700F100BC9A9999DE5253FD98602F
          0F888A3290D59A96C1386B08EEE3A0E5C5F3A6D6BEBE2FCB03B65BD3C8603054
          F95B81B5315045797FFFD7234D8DCE7F03568822D9B373D630CE7BE0E6F9DB01
          C06500C615C5175D575B33F97733FF006C369B2921C1741666B1D7EB8DD59347
          5CA5C834C2853D635C138266DEE9792BD129D33A0A55ABE8E5D0C4220099FC4F
          A7D26AB5DD70AFC74E0F5FCAF50C4641AF1FE2C279A710D9DC3632DE5BE8EE23
          539878103187B16C0B80E8E8184ADDBACD01F31E4A8E499F1B1C4E96BFBF01C0
          AC9022CBC48B2649F5305C91FD872BA073C4391700E9199914111151077307D6
          90DEE72ECD9FE9E5E13E7725CAD32058867E13074AE0ABF034B378D4BDF3009D
          4E47BBB36CEB3963EF201E83D4838DB914F7C833EBDCE03EF895C8A80E26036C
          16BFFCCF93B3F5F380244B32198D1B2EC2CC9465D9D2F0B49E3C1E2FAD165454
          956A243567370028F90D50E65394D3FB1B3B8961E2C8969DA3C3DC7FC2DEC9AE
          AEF7B75B5B5EA3CB9CAEA518E71B862C15289BD3224146A5075CA3D30F98DD8E
          B10D15CB90E104C8890303DF24578744470D21645BAB2F0E342C78E7ABF08FC3
          D7042045ACA0B0A80D822950DA287EE592D47EE690768AAC91BA66EC59FC7776
          13CFEFD4AC6C89F34CA4098AF72EFBD5D876B6735716AA0BCE141E0CD88FDD1F
          28C93BE61F183DC4475817248FFAC97D454F0EFA41168D5C00ED1C62B37E0262
          BB1CD45EEB89320000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'open-add_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000023C4944415478DA8D934D6813
          51108067369B6C5237A6694B0BC5D8FA03B18807BDF45041A91511842058042B
          8295EA450FDE04B511F510AA1741FC395A2B0491A2C94130A8D49E7A905CF4A0
          B6C4DA36A96DE9C6D8EE26BBD9F79C0D09D56D1A1C987DFBDECE7CF3F366116A
          C8FEF0B9167F7B6BBAB2E79C7FE100BDC0D8671484EBCBDF666E612DC0DE8110
          C8AD4DF486E0AE9741F2C921DA3C20ED43C4B74A2AEDC083FB1A20D8B6A9EC52
          E1710AC2E1CDC4124CCFE74B271D277B60FB914EEB530F394749FDD9EF19075E
          381E803D3BBC19406C86B55C193DEFAB79F372349181C5AC0EBB4E1D85BADDC1
          41E670862B666B809D9BCD6A2550CD315A92148D0203ACBA6428881E301CE242
          5A6A7E949C5481005B09E0AD0AD85038377FCC6BAEA19114E0ABA1439037D441
          93B1F576D40755D721CBC4E99CDB97D045F74FA7A9B778F3BF0E2FCE2E3FB93B
          3C099889F7FF5BFF5F6270783DAAB8CE8E15E44B4587D4C71102C8614660C567
          681A9164F4BD8AE978FF02D5D8B83E4B981AD33C5DCF577DB122089D55FA33C1
          18EBB6009F08D06137504C6120A234B62BDC79AD72F6F2CC0D080D872911C4F2
          65DDB600EF0870C00E4816A4C0C35CC338CDC6B68D013C6501ACA1E8B5033E68
          1ED7D3957A8D8C45CBD12E168816D302DC23C045BBC1C7BC1478FCFBFF32B84A
          809B76C092299C8F284D6D392ED6E8012FF5E0046DA3503EAC088DC0D48B156F
          5742936314A0EA2D907663FCCE31708A82DDBF24738608A3FE601D0A78850C4E
          D3BFB685667A96DC47A80191AFB171F50FE0B70545820842D50000000049454E
          44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-add-arrow-down_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000024C4944415478DA9593EF4B53
          6114C7CFB9BB775B4E2396A9B892456E608C94882444085AB5E852AFAA31EB45
          6041EF428802FD1F82A27C53190AB220E9874AD18B4CFA319290457BE1BC1387
          6DB899B5B5E970BBBBF7E9DCAD450D1D76E07978EEC33D9FF3E3F91E84DFB6AB
          B3155ACE1CD109D5556E04F0D0D50140D8060C9274FEC4800D2B59D91B7C3AA9
          CCBF9A0260ACE087DAD672D6097B5CED36FAF422621B6C608C313FEDEE882F20
          F9EF3D2F40508BBCEFA26843C0B7E4BCA3F4B3BD7627DB6F6986E96808669723
          F817E41BED9DC127939234FA0EF0D8AD1E9DBEBA6AAA3CB2BBF530A305DECF6F
          B485E59928B27C70E2C61D05C507BD1E446EA83CDD4A802244BD303332314C80
          BE318A7EE2FF01ECC5D29790A801625AEDA59A4BE6A8B782A3C10A81581802F1
          F09FFB524FB45E24C38B0D280EF465A9817C2962255B4E67BAEEBEF63DFAB810
          046E4BF2742A1A7EA601E204A8DD4C065F233A7EFC436A955E4F106ABEEB6599
          5E814A18A7125C9BE801CB271AF995B8254BEA11D2B110E77FD80378F27E6F17
          C771831501D3EF9DF29A519253E668EE675D01905B4970E9C5594057FF351D6F
          3054D4C1886F8E5F5AA87F4C497810B8B406A0261AE8B741DC7DBC1DF69E3B4A
          4A840D953833C7F854AC5125A797D42F2701783A8FD259A485D0D67D0A2C871C
          9A9CD79D053963B2AF466DD74115BACBB430541408419AC50EB0891D3A4E10D6
          9946F466E24D5773C9BA7E0A70597351993AC014F5D23F0A339AB76A99C0767B
          13E86B4CC559A5A9CD67D6E0879400B3F53CF246D36DBAE5957CEE4A70EC26FB
          056EBA25817043AD430000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-add-arrow-up_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002544944415478DA9593DD4BD3
          6114C7CFF9ED37577B9128A3C012479BA08C3642921021C872E9EA2E1B0B4651
          4817411074935217FD03518451F4422F36BCF0A2D7213306BB181319B3566A1B
          73E1261BD369A23FF6FA7B3ABFD9600D1B75E081E7EDFB39E739CF3908BF6D7F
          97115ACF1C93C9D54A2B02D868AB1D10760083559A4F216377065231974958BF
          4FEBFC5A267FD5F6D24357C85AFBBBE180B9430F800E443441959178D6B8F1B3
          C7BE9CB8B59DB18BD21E636C98205750F27CF082458F801E12EF2E8B5A1AF6B1
          438D3AF0C7C3908F877597133F6ED633F17C2598200FF1C4DD6BB23AB572B2DA
          B3D57894D100C7B41B367C1FF9DE445424C15BBA778AA405C6C04573335A9E0C
          DA10B917D5615702D6269DBC6531F29A01D839C42C01F244D350D42304187A47
          A493B500E3FE09B3362BCC510217DAD7574509B022E41442AE00122021BDBDFC
          E6B219F63483616F330413510826A3A5BDA67080D77EF596009F175714BD8F3E
          11E0E9509642E1CB1E6B59DAF781CF389FE5A46F0C2894AADBCB851220498086
          7F8920160FF5ABC3D3631C65D0AFD274CFC4D32EE909EFA56CD6CA010DAC3EA7
          1F712E7D9BEFC3BEC783E7388E7BFEBF009189F6D01BCF2B340F5F97F10A45CD
          3AA80690F78028160FBB6F3C28A2B6A703DACE1EA74A84BF56E2F7A518568853
          540F5D11A73734333A41BD8008A64BA7A1F188412AE72D7BA1D23303664D7D89
          84A6EE8D8258286E369304D1593A416FE9947172F996DD485E4798283AE6C77D
          C5B93177495C92567AD8B6B35E8A0476B534419D46B5794ACA82908174780162
          DE2008C9F41F51FD0249C83000A70A4B650000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'font-edit_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002A44944415478DA8D935B4854
          511486D73EC771668C3C5ECA1A6AB246CC29B399722AC94B68900F9104F6D215
          052F59C444460FE943049195053D149A2915058A525164850696A545D3451D89
          C94B4EA319669965C634CE39FDE7A48622D9860D6BAFB5FE6FEFFDEF73184D31
          547E02ADCA290DE0781FBB248A11B692DD3FDC837D53B5129B2A393F660B2D4C
          D861658C9D912429CBD55859EAACBFF69F00C6C892554C1A21A415002300CFDD
          435F626C45992489DEE90181060B45A6E627425C83AA5207C4F2E646C1ABCF6D
          4FA7072C4DCDA7A0304B05423566F8E8298A073A5FEE69AD3AFA6F805A08A1E8
          CCA2B91CC77761DFCD481901380DC03798A987994393CD9C00084DD849FA98D4
          3C8469A2D7B398181708980B100D20D930F3A26CE6BCD828D2451B69E4A7FB2F
          80713C9EAE8CF79D21746079AEAFB5EE948FD69F820C2BAF00B01D00DBAFE1C1
          35CE27C7C994B1D157A5D13C82BA701C306B493C1937E5A6202C47F382C1F72D
          FDBC4A4D337511F18C63758A99CC63F63734F732DE9B85A57C97BDE380A8ADC7
          48D04756234CC2FC845D65F7FF3C2C633A6262953AB8C7AA0EFA780FA5E5A81D
          1125A94001F8CD0EA515E9670D1C318744D27EA4BA64C0E813E27ADE40086B31
          EF324E3221D78E4AE2DB5BF53D4A57D8861CD299934F205C3FE21EB6BCBE7C80
          448F5B01E8135653784A5C30EFEBAE05734C9CD4DD68EF6E2ABD4D4C79BA8CF3
          02BEFB77E83FF8E1C59DB2CE07258A5858A4A3D8BCB460C6B81A9CC80CB16C70
          6277638B2226F97496EC0BF2677B120DB968300D389BECAE864A1AEE6FA3A4C2
          7D1A9556BD16A20A92E8ABEC0FC4AE31B16250DCA19BCD10478EDE576E2A763E
          2E3FCC69DB69D9B6E474ACADF2C9301D93C50AC0BCAB50F981C6076ABD4DF749
          BF2E80E698C2AF22F30CC65EEAA86EF8EEB8FE7082581EBF017CBC1905CED549
          820000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color mixer'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000000DC4944415478DA
          CDD2CF0A01511406F0EF1833C982420AC94279004B161EC3C64B292FC14276DE
          616A3C80B2B0F0274518CDB833710C3664E68E58F0ADEEE29CDF3D750E3133BE
          095D81459F58898417DB022835995E80D580389307224A70B3B080E55C02648B
          F2DFDF02CE27C015FE80EB00F30550694980C31618B7E593248751C4E86E141C
          879E80DD1A9874806ACEBF79E44D50DD376EEFBDAE2361599F031BC340CA34FF
          0948A681A3FD2130EDD2ED9E85EB6DA227DF822FF09889AA72B95E4758028199
          A671A156FB31C0AA0AA16981CD5E05D2B68DB8107401E578CBE1F589F0AE0000
          000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'colors-gear_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001D24944415478DA63CCCEC95F
          C0C0C010CDC8C8C8C44024F8FFFFFF3F20B5F4E5CB17098C40037EF7F57631B2
          B0B010AB9FE1CF9F3F0C45C565FF5FBD7AC9CA98935BF077E284DEFF018B1A18
          D115FA727F66F0E3FE826180A8C7CC7FF905C54C4003984788013F81CC7FBF3F
          FE70F9F9F4F3092E65356331BFF6FD058525DC280654CD5A8C618032FBEB8DB6
          5FCE24B0FDFBC5FEE5DA1BB99F8F3F9FE45452B5E70F497EB967C7CE0FC76EDD
          7D033760E9A463E806FCE3787B5948EEC29CBD8C7FFF3E06F2D98169C5EB3F03
          C3560606C6FB0CFFFF19BEFEF1DB119F01DFB85F5FD196393FB396919121194B
          62DAFCF2FB2F7F9C06B07E7D65267E7D3927F7BB3B0D40039C801AF281781ED0
          150540DC0C646F041A5387D300BEA7C799A5AE2EFDC3004CE240C53F8098ABFD
          CA13864A1D190E2626A66F5077FCC3698028DB476BA96B4BFEFCB877BD1B68A3
          3DD08098DF7FFF2D636562CA6464629C0AE4EF032A6BC79917800ABE3ED8B44A
          E1EDECAEC5402F7841C5BE010DE382B227DDFDF4BD80114F6EFC62C9F64B56E5
          DAD10340F66920D606AAB1026ADC038A2120E6BFFEF19B2563486838D09B8C60
          8C0E047F7E61F0FD7887E1CFFFFF0C929CECCE40153B810618BEFEF9FB32302A
          D9363D79FB0B00F029395A78D1363B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Grayscale'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000000AB4944415478DA
          A5D3BD0D833014046033482AA6A0B5D8028325539901A0A58501EC0A24FF308B
          A77043062189DF0697D7DFA7D349AFE29CDF8CB117C3EE5D7D81C71803A5A769
          6205D8F71D02E67926605D5708F8E50AB02C0B046CDBC6AAB66D9FBAAE2120E7
          4C0DB4D61060AD25601C4708388E830029250438E708E8FB1E0242083462D334
          109052A2065DD741C0755D0408212020C648C0300C10E0BD2740290501E77916
          E0AF77FE00787548334A1B3F530000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-refresh_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000026A4944415478DA8D535D4854
          41143EE7AE77BD21966BDCA076635D8D58C2D8878D48CAD2DE5CC99E7AED874A
          D9EA6589225C5FF2B11FA248CD8D8D248B28DF82A4C0A48720A13556242D040B
          42CA20B6DCEC2EE94CDF5C2695C870B8E79E39DFF9CE9933336798F4280DACA3
          AD871BA82CE48F307133A07A620AB94E4993F80F4A92A9FCD497EC484F3FE526
          3EBA2E563FBBBA92A2A70E581EB3E80A90E34860D03F061208FC6E0A2112D9F4
          2367EAE5287169C0A69D6D472C8FD77C8CC03AFACF9052F6406DC42286142236
          74E99EC335AD87A8BC2AD0C5CC2D7A157CF410D34E392F5E835CC486B10BF619
          C8009C170C367E2059777EFA6B9C63E9D608B391C15E0C5D620B741A642F76B8
          0DF81CEC0C7041CC41D8EFB1989044420A19E5C674F23A8013BAC41B20AB791D
          B67317F87A60BDF00C827DFBD5B53EB9B9A9967C957EA1F99D2AC11B10C3CAC6
          E16C42C97904BF03B646939E419A9869763A3B41E5E1A0695AC505ED1BE7C65B
          C959045858F913800D981F43708A563010E3A8043F11548CE00F9010821390CB
          CBDCC20B2813FEED3A4161610B30E6C0B0717015D8C63092F25FC10E3815C0CB
          C01F5FDC423AD90120AE81044857416A07D6B624781EEAA4EA44F82EC2775AE3
          5DFA1A39A3BA0FC077E0BBA14750453DB0FDB07F41EEABAB44497B51986A38AF
          BA72744C946BDB9B69B5DF5E6C242973709EC5F40EA4A08B2871AB94741E7A95
          E6753BB99938FBAAFC5473EEA0856EEB8773CF92B26750C518823C30B7FC09D4
          BEE758A421D3D1E7B807E5DF514D91A3FB5492153D267556630F069CC9A743B4
          70D26BC3413CE71895D8BE082DF39C314939DFF2D9D1DE27F479F8ADEBFA0DFA
          B02C8DEBFC9FFE0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Random'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000021E4944415478DA
          63FCFFFF3F43BFDDEC54016EDE627E4E1E79060606460602E0F3F7AF8F3E7CFB
          3229FF60F214C61E9B992976EA86B30DA4741918FE319D00CACB40316EC0F48F
          E1F28B6B0C876E9ECB639CE3B6F45AB4A99FE6BFDF2C61402998019640DC8BD7
          0CD63F0CCBCF6EB9CDB8D26FFD670F0DC72BFFFF3286F1F7F03D06497E2CF924
          0BA45601B1052E031899FF33ECBC79E007E30ADF759F5DD46C3EFC031A20DA2F
          721C24F9BAF08D25D4009C5E61021AB0F7F6D11F8CCB7CD77C7650B2E0F9F797
          A11828BE1AAA2914880B91BC2483690003C3A1FB277F302EF559FDD95AC190E7
          EF1FB038B206BC61C2CCC2C070FCE1851F8C4BBC577E3695D5011AF01F591EA4
          314C73B636384CAEA75EC5081366164686334FAEFE605CE4B5E2B3A1943ACFEF
          3FFF900D780232C070BE11384CCE279EC30813561626868BCF6FFD605CE8B5EC
          B3B69812CFEFDF7FD1BD89374C58599918AEBD7AF0837181E7D2CF6AC2323CBF
          7EFFC116D838C3848D95B9F7F6DB673F18E77B2CF9AC2828C6F3EB17560350C2
          C4758D27384C76876C9765636359F5E0C32B03C679EE8B3FCBF20BF1FCFCF51B
          9F01E030F15EEF0F0E93AD811B2DD981063CF9F45E84718AE39C2B9A1212DA9F
          BE7C63200050C2848F87ABF0E6AB57B7183B2CA7A6A8498ACDE666656500B9E2
          FF7FBC869C6064649061676595F9064C38B75FBCCA610465E74EAB69A93C1CEC
          451C6CAC0A0C84B3F3FF9FBF7F3FFCF2E3E784B2A35933001F5FDC0292C0DDE9
          0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'execute_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000021D4944415478DA6364C002DC
          CDE518E6D7B8483332329E03625106ACE0FFBFFFFF19A219D185A545B919764F
          0C6012E4E3D80BD46CCF80433710E4BE78F76D1A8A014C40DEDA762F060B1DC9
          3AA0E6065C7AFFFDFB5FF8F2DDB749C155DB18500C288E3460288936B2656064
          DCCBC8C0C882C3E6B28F5F7EF486D7EC60B878E72DC2004B1D0986D56D9E42CC
          4C4CE781B6CBE2D05CF5F1EBCFCE08A0E60BB7DF8005C10608F1B233EC9E14C0
          2025CAB31EA8D91F87A7EB8054CBDDA71F19EE01F1DF7FFF19125BF6400C5858
          EBC2E0662E9F03D43C8981080034EC24907492F499F79D515C8893E1FCA24835
          A09F2F000DE020A8F53FC32C2091DFBFE2C2AFEEA5E718180578D81856B47882
          9DC2CEC6CCA02627C008340C140E7A685ABF03A9EC8F5F7E2EC8EF3FC4B0F3E4
          234418C0407A803643438A79082323D32A34CD0F8064C88D87EFCF25B7EE65B8
          F7EC135C0E6E00273B33C3C9B9614CA2025C1781B66B2369DE0924A2371EBEF7
          AE70E26186EF3FFFA2780A6E407AA00E4343B2790450F332A85650526DFFFBEF
          6F7DE3DCD3FF666FBC8A355418E1B6CF09671615E4BC0C34400368EB47A070FC
          ABF7DF36A575EC633879F525CE60051B5010A6C7501E671A03D4BC08A8F90AC3
          7F86E053D75FDCCEE8DCCFF0FCED37BCF1C2C8CBC5CA706A5E18B3000FC73520
          FF2CD080D4F95BAE7D6D9C778AE1D7EF7F04D304A39EB230C3CE89012140B6CC
          8F5F7F26944D3ECAB07AFF1D62D213180000B5B0E07B4480B18B000000004945
          4E44AE426082}
      end
      item
        Background = clWindow
        Name = 'ColorWheel_icon'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000003374944415478DA6D536D4853
          51187ECFAEDBEE74575DAEA9332C6CDA32CAE14756964516C5C4282A8AE8C794
          0AFD15E19F20A4C2FAE10F49A22CA4CC48A28F1F512D2BA38444FBB06C6699A6
          99664ECD5A73CEDD7DDCEDF4DE6D82812F9C03EF739EF7793FCE3904C2C62DD2
          C02A93116253923208902308ADF5D8D599FC44CA2000F5A2FF0257DDCCE48865
          E0E905981EED0DC691D9E0F515C52C2395D6002187109488B8C7A1D2F0569D05
          595AD1A71402B89FA6DF7B2A879BEBE0A7FD3B109D92853D6BF430B87BEB7617
          2B7F88D999D9AABCCEE81CD768DA7DCC1316A0AE18B790976D9DD6B23EA1E54A
          5BB59BD4AF4D8515AAA88AA185710F1E65AE5C69E394D708210C92FB055E79C0
          39A23F08941811D3457A84E2AC316720D6E3BF46815EB5CD4C9692B74683010F
          DF5100F778345766CE5A45ADAA9808BFE06BB0BEFE0633E309A04ECB2391118A
          BCACB1E964352F5C17136039016C294B14A845A0345C35B52BE4F9359CAAADC5
          FC0A5C93F620288D524141C63ED814BFDA2421A47EB645ACF29228F005059685
          817EB7E0D7EF6FEDA556DE07732D52A684F22D674129E7FA909F1AE677910EA3
          6110272FC37244BBDBF4F3CFB1531F7FC07CB66345111875B9390C083824EF10
          03DE5FE4565129F8895C23806C89803A2DC33D1D8D967BF30A1C4ED5C2A1D4C4
          738404F606DF00A55E52B5ABFE03969431DB02EF732DAB7E7602A63D53FF052B
          1809DCC9D743BC42D68BFCB430FFAB28701181B239832979657DDB60EE6A04C1
          ED0C628C5C06B9DB564325E3CD8BF6F85EE2C32261EE6552B5B33E0305DE2324
          414070C8185387961B9E129CED13DDCFA954390AC99BD241A1E24C4936BBAFB0
          B39B4970386A09252CBE856C525E700634D1DACB2858C24710536722C7FC55C8
          1AF07000B1A6A8A4FE9B52A5BD519C3C62FE3887D354F8BEFBD3E2DF7F76D83C
          BE4AB278810ECA361C67850866A3253E6A6C8293B7E3AD4486FBB12A120777C9
          636C6FE6B4E857F2EE224373EB13737B4FA897A5EAE590BC6E3FF8F4860A444E
          623649880D56563394C92E981C0FB93480DB151439D671FE36FFAB6B202410FA
          91E99056781414B1090674C5EFBC192F4AC6AA4752D8B8310BFA6D98BE8E77CC
          747DBEF118C63BFB8271FF00493F63340A5AC8CB0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'image-colors-arrow-down_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002F54944415478DA8D927F4853
          5114C7CF7D7BDB9B73732ED1358DC49F282988D94F542A5D468968898511A668
          106159944404917FF847114A81129995FA474264A55016595114924D13A9963A
          529B3FA7A6D3B9BD5FB7FB26B321441D3870EE79EF7CEE39F77C1178D9868CA3
          9094775A2BA3E565E498455C4FDC4ABC451485EBDD8F6B1D9F1FD5789700F204
          91C9D990525C198610BC400885C12AC3187F256E7C7FAF62CCFCAA7915005170
          B0AA03F9EA823A49F146F88B1140C7D2FC8CF17ED90EC002FF07E01F1209FB2B
          9FA491E2E7F00F23904DAD15874C5383BDCB0086A2E0526A262CE65D285782AC
          42C3F36EE83C4DE3113F359EF25321172327390C4A178F554E7BE9785FDDAD37
          576B805F6201356E4F07637068F68F90F83ACBBA049DE7A6E0C8002E3A351CAE
          5939F8382FC83D79BDD039E12F988F58BBCD2F9F9EBD096822B7308134F261D6
          6F2D9862772BDC23E9D55C724E9C8CA210C58A583C697688C34E4C4B1384F1AD
          3C8367581227B65FAC1F2080A20764F61C4C3E76C5EEE1E73481F22DFB62587D
          A84EE1B9F5F50CC75D1972C991CB91EF37D6D5AC14A781D1B0EAAEDB0D0B12C0
          4600EED69D721FC11463C43B4F194146CB680F609A15D992BE11848727944BBD
          B38B242577D82C8ADEA6738026738B1C8010E3F959A064BCAE72AB206A12294C
          6B31E267916BCEC4955B17199B658DC266D6BAC8EEE4F6F101AAE7EE19E90D8A
          A4DD2779AF4A5BB4C8D181E2CAC38D383569D593F1FD83A301D65F23CB007661
          96B28F7D77030A08A0DE1BC024B0AC3AC3B5F2062D962859B569F30322827C04
          945D02103D485D37A06F598741A760EA09A4C05B2EEA2C27C7C4F28AB75C90AB
          BD3F42F5EE4B84488A9E2140E9044093B895C4992835D00075DB768156C11492
          CA52A29878692320839E81BD3E6D4DEBC373EC36D581A14F86F30054F12A5536
          BA5567F051C189E87848093280BF829166C7F31CCB3F0CE0E1A7310668951A46
          FBA291C0A96A49A7C7A41A228F3B58104B10FCA7A90D5110977719D14ADF1BE4
          480B3C7BDCDC56857F03EC883BA1C0BD60810000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'GPL_file'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B000001F94944415478DA
          9D93B18B1A4114C6DF808828A2AE22ACC18BC13311CD4156172ECDA5B81023C4
          70694C6B65636325E4B0100BD98045AE122EFF824D8E9CB039A348AEC981B2B7
          8582C480B922AB20E42C64A6B0C8EE800372CDB1AF9979DF9BF9CDF0BE19E4F1
          78D4C083C0133011DA5F6D8C62B1183E7A7764330338FB724650341AC599B719
          5380F3AFE704451E47703A9DDE02B8DD6E109E09107A14A2F9EDBF5B50AE1598
          4EA75B005996090A87C3F8F0E52103249349C866B37453FB7B9B6A6252A4FAE9
          E753180C060CD0ED74090A8542F8E0C501039C7C3A31C8207F93B74EE3380E38
          0F0793DF13A65DFEB82428180CE2FDE7FB14907993815C2E07D9F7D97BF5E0EA
          E715417C80C7822050C0F187635A903E4AF702288A4290DFEFC7F1789C022A95
          0A2D54AB553AEA16D37E6CA2D96CC2683462F9703824C8EBF5E2DDC82E05D46A
          35D08190CFE7E90263BEF7740F36B572B90C9D6E870126BF2604E996E19D873B
          14907A95827ABD0EA9D72998CFE75BD755AF5528954A70D1BE60DACD9F1B829C
          4E27E6799EB9D0EBF540555590240966B3195B3C1E8FA1582C528736A1691A41
          76BB1DFB7C3E06D061D0683420914840ABD5A29ADE643A160A05A3710CB0582C
          08B2D96CD8E572DD79CA064814453AEFF7FBC669775C582E970459AD56EC7038
          4CFD85D56A45901EAAC56231F59DD7EBF5F83FC447B35AA50151940000000049
          454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'cells-column_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000A64944415478DA63CCCEC93F
          C4C8C868C3000531D1111BDBAF7CF565C0022A75B8372F59BAC21FC6FFFFFFFF
          11C69CDC82BF13FA7B188086C015062F38C05060A2FE1F59F384333719D72638
          80C418A19A190A0A4B184006FC9B38A1174531310680407E4131E32031C0CDD5
          19AE585757E77FC1DE7B0C85A6A806F49FBEC938C159E9FFE5CB57186186ECDA
          BD77B07861E00D180D440A0D0066E723C09C68051324313B1F03006AB3EE048D
          0580DE0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Red'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B000000294944415478DA
          63BCCAC0F0998158C0CBC0C0788281C17CC60C22359CCCC818D530AA61E03490
          9ABC01A27438ABAD9257B40000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Green'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          63D45BC3CAF6FB370371E0172B2BA3C972863A9783446A68DA633FAA6154C3C0
          692035790300C3D33DC957CA538A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Blue'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          6314CCDDF49E5F8C813820F8F1152343CD89CE00732235946F3839AA6154C3C0
          692035790300B32A4429C06A9F2A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'padlock-round_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000002A04944415478DA63644002AC
          DC820C1A01150CFCD2EA160C8C8C45402153A8D46920EEFBFAEAE189EB1B3A18
          7EBC7F06D7C388603132E8C57431F04AAAE5313232F602B9CCFFFF33FC864AB1
          02D97F19FEFF2FFEF6FED9A40BF30B18FEFDF9896A8088A63D83BA6F911D50F1
          3E20F70710E7FEFFF76FE9FFFFFF18989859A281FCC940CC0134C8E9FEFE0587
          9E9D5E8F6A809A4F118398B6FD56A0ED9EFFFFFF4FFEFAFAE1FCEBEBDA18FEFE
          FE09F4563903BF8C6622506E2E506EFBFB8797BDAFAEA841354033B8864158C5
          F403282880360B9C9995F1FBE7C7976039160E1E06938C39AC2CEC9C20F9DF9F
          5FDC11B8B8B018D5002DB001667FFF33FC7FFEE5E53D990B0B0A91C397412BA4
          964148D9E409304024BF3CBFC37C616111C400767E3106259754063E49350636
          1EC17F40B167BFBEBE97F9FCFC368A01DCA20A0C1CFC624F804CA9DF3FBE327D
          7A7C95E1C1A1C50C8C3CE2CA0C06097D2540FF753190008061517A6D4D4B2FD8
          00C384FE7AA067EAD115596B8AFF626566623870E5391B16031A810634C25C50
          0B744123B2025911EE3F8B0AEC9981E20CE9D38EFCBEF9F4231B9A01F540039A
          19B9C12EE8CB002A9C86E2677696BFF3F2EC18D858981892261F6278FFE51733
          9A015957D734CF0007A249FA2C6D2626A6CBE8CE6C8D31F9C5C1CACC583CFF24
          2BBADCBFFFFF742F2DA9B80A8E46E3B4E90C9C8252FB81AEB04756B420DFEE37
          331323436CFF415634DB0FFEFEFED9F1D4D444483A10D7736550F5CCD100328F
          030DE1872974D197FACD040C835D179EB22269FEC8F09FC1F2E1E1A5371E1F5F
          054D4840455A81550C42AA661640DE1AA0215238A20E940D433E3DBD71E2F2F2
          1A86FF7F7F23522223332B83B25B068384AE333FD0C01CA05030106B40A56F00
          F15AA00953DEDC3EF9F1F6B6890C7F7F7E034B000096C4005DE14E3FF8000000
          0049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Blue_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          63E4F12AFFC225C0401CE0F9F6819121A43DC6D488480D4B4E9F1BD530AA61E0
          34909ABC0176F13DA588531BD70000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Green_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          63542C6365FEFB9B8138F097999551A598214CAF85480DAB2ED58C6A18D53070
          1A484DDE00C926398BD8E43E6A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Red_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B000000294944415478DA
          634C6460F8CD402C606560608C61604873732352C3AC5DBB46358C6A18380DA4
          266F00890C31DB4450B7310000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Cyan'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          6394B977FA09B318037140E6EF2B4686870F17C9C911A921EED1A3510DA31A06
          4E03A9C91B0042BA4C3724783F2B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Pink'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002A4944415478DA
          63FC1FBD9181E30B0391E0070FE3FFE4A50C3196C46A58727C54C3A88601D440
          62F2060083B44089F7DB33E00000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Violet'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B000000294944415478DA
          635C21F75FE8250391E09D3803E32EF6FF169B89D570C27754C3A88601D4406A
          F2060032773C1B0FC4136C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Yellow'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          63FC74588A97EB2D0371E0F33761C6FF67D9198CA611A981E15CD6A886510D03
          A781D4E40D008D0A3F39D10BC7F40000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Cyan_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          63145F3BFF25B320037140FCEF7B46860D1B1AB4B488D4D070EDDAA886510D03
          A781D4E40D004358461784F5220B0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Pink_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          633CEBD1C5C9F69D8138F0FD1727E335BF4606771D223530ECBC32AA6154C3C0
          69203579030011ED3C55DA7EB9E20000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Violet_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          632C13DFC6FB9E8D8138F059F0176333DB1EF55A22D533DC6C6618D530AA61E0
          34909ABC01E9BD365D540BF6C30000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Yellow_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          633C3A5F4C9CF3230371E0E5777EC63B2BD8190CAA88D4C070A16D54C3A88681
          D3406AF20600D6593A9F4A6DACC40000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Gray_VeryDark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          63E4E1E1F9F3E70F03718085858591838343414181480D0F1E3C18D530AA61E0
          34909ABC01D28B31A998C779EF0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Gray_Dark'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          63545757FFFDFB37037180959595514949C9C0C080480D172E5C18D530AA61E0
          34909ABC012EBD368FAC67BC4A0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Gray_Medium'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002B4944415478DA
          63F4F4F4FCF9F3270371809D9D9DD1C9C9C9C1C181480D070E1C18D530AA61E0
          34909ABC0166093C9BC00925C80000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Gray_Light'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          639C3C79F2AF5FBF1888036C6C6C8CBDBDBDA6A6A6446A387DFAF4A886510D03
          A781D4E40D00D7B44AA58ABF70320000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'Color_Gray_VeryLight'
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100802000000909168
          36000000097048597300000EC400000EC401952B0E1B0000002C4944415478DA
          63DCB973E7CF9F3F198803ECECEC8C9B366DB2B2B22252C3B163C746358C6A18
          380DA4266F003F2F519BA2EF3DC80000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'filter_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001954944415478DA630C0E0E66
          00014646460652C0FFFFFF21FACACBCB4F00359B91A41B61C86190019A40F651
          A02102F814333333FF2B2A2AFAC7CFCFCF7CF5EAD5EFCB962DFB0E14B6640C0C
          0C6450555575051AB00588597119606565F5CBDBDB9BEDF5EBD77FA64F9FFEE7
          C78F1F9E0F1F3E3CC8C8CACACA101D1DCD202E2E9E01543795114B60B0B3B3FF
          2D2E2E06B98201A8F93FD090F4B76FDFCE5FB264090358310F0F0F435C5C1C03
          2F2FEF04A0FE3C74039C9D9D7F393838B02E5DBAF4CFF5EBD7FB81B6572C5AB4
          88E1FDFBF70C70DB802E00B98419E8A28D4043BC60E2DCDCDC60DB0F1D3AF477
          FFFEFD5BFFFEFD1BB272E5CAFF8F1F3F86C402B24DC0B060080808E06562623A
          023444172406F4F72F3E3E3E86E5CB975F0686BAFDF6EDDBBF5DBA7409AE07C3
          BF1616160CF6F6F63A4003C0AA1A1B1BFFB5B4B430FCFCF953F7E4C993D70F1E
          3C88A21E6BEA494E4E961415157D0A62B7B6B632545555FDFFFEFDBBCCE4C993
          9FC312105E0312121224252424500CF8FAF5ABCC9429539EA3AB1D35800803A4
          A4A4189E3E7D8AD300006033D5D901C574250000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'filter-cancel_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000029A4944415478DA95925F4853
          7114C7CF9DDB7435352C915597B6D8F42913FAA3E54B4DD85B91322632376960
          2F4110887FC0A0874091DE247B31FBA343CAECCFAD7C6D11C25C112A2891776D
          6A3AD7F2C1EE76E7FDB75FE74A16E51674E05E7EF7FCF9FCBEF79C437574744C
          52145503FF618490558EE3E8818101A010508DBE3708D1E52AF07ABD52454585
          36914808FDFDFD3A59961B58967D393E3E0E1406C164325D43C0F56CC5C5C5C5
          725B5B9B06E3D4E0E0A01C89446EF33C7F7568680852A91450252525D0D2D292
          A7D7EB039873FA6F80DD6E97EAEAEA74C160506418660EE5D78E8D8D0908DA8A
          53EAABAAAA0A1C0E8705011FF029DA2EC673066FCF288A02289D1704A13A140A
          7D0A0402BF2EA0B60FF5F5F560B3D93C1A8DE6DEB6AFBCBC5CF2783C5A557A34
          1A6D8DC562C37EBF1F54E00E80C160009FCF0746A371146F76A93EB7DB2DA552
          C9F0EBE74F7BF77D5D1C56D879482593B0CA8BC02CAFC34272F3374035B3D90C
          2E976B0FAA5857BFBBBB3A5F2D3CBAEFE3261E5E2910D36E8A109A002C03017F
          86647A6ECEAFA4FF00A8D6D8D808168B45C140D8B1D7505B3839C11049ACCEB2
          0B530A21F61D00A7D30956AB552910375BCF8483E6DDB2D05D7AAE49DC8C2E00
          37FB4E575879422A30DB20F162544F32991B3901A68D387D6A69FA2D2658D422
          4B7B0F157F322C973578B491BE2EA2C250452427C0BCBEAC3FB63297C6596A55
          7F99F3A270C07B397FE5C12D21FEF86EFECFFF907302F66FACD1354B335B0A8C
          95C7A5C3EDBD54FCD9885C76A159FBB9AF932467DFFF5B8141E42F9D65A70E19
          14B1BBF4BCDA0316B89990AEF0E849EC8115120CF68090DC3D4079E123B18FB5
          B66F8B0CEE45D62940B629E0DE034DD35BE7A234074DDFD95D794075E2C63463
          F241DC832F181A4140EF1D768DFF01C6D73FE59B157CD20000000049454E44AE
          426082}
      end
      item
        Background = clWindow
        Name = 'filter-execute_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000027C4944415478DA632C2F2F3F
          CAC8C868C14002F8FFFFFFB3CF9F3FCB4E9B368D811168803950EC20D010565C
          1AE2E2E27EABABABB3BC7EFDFAE7E4C99359FFFCF91374E7CE9D2D6BD7AE6560
          044A32484A4AD6020D68C0A6999F9FFF4F49490913509E71CE9C397FEEDFBF3F
          FDDBB76F85F3E6CD63F8FAF52B03A3909010437C7C3C331B1BDB01A01A2B7403
          9C9C9C7E3B3B3BB39E3871E2D7A64D9BAE029D6FBD7AF5EA9F4083C0F28C20C2
          C0C080C1CDCD4D1168C03920E6836906B2FF016DFFF7F7EF5F06A0D3BFFDFCF9
          D3FCD4A953B70E1C3800B78011C6080C0C645055558D6562625A0013535353FB
          1D1B1BCB0274EEFD9FEFEEBAA8097F7DF8F6C53D86BF7FFE828212D5004E4E4E
          86A4A424061E1E9EE5409BC34062D1D1D1BFDFBF7FFFE7F2C95D1EAE4A2FBDF9
          38FE97A3C5C62A46640105050586B0B03001A02BDE82F84D4D4DFF664D9B506F
          2EF6E0B40CDFCFED4083999034AFFFFBEF5F388A0120101E1ECEA0A8A8087223
          436343DD8187C7E7C5F07EBD70969191410249F3E6BFFFFE87E4F71DFC8D6140
          484808838A8A0AC88037111E7AC6123F8ECC61F8FBCB0D49F383FF0CFFB31819
          187FBE78FBED104E035899FFA787E97FE413E5FED3832525FE0452F90F5F7C9E
          85D3003656A609E1CECA65A20C0FFEFEFDF26C36D0FFC950CD8F8164E8AD471F
          4EA5B5EF63C0E70586E6A6C6439FCE4F4FFEF5FAF2755052076ADE07342172DB
          B107AFF3FA0F317CFDF107AF01FF53A3BD9DB89FAD4A64F8F32DEEFF7F861E60
          A857B52E38F377FABACB980909DD002646867D5EDABFB294053E9E000AA7BDFD
          F87D6D7AE77E86A3979EA3A8C7300098EE1964656519B4E53818428DFE54B031
          FFDB70FEF6EB1B20FF3E7DFD155D3903004C2523B6075A5C7A0000000049454E
          44AE426082}
      end
      item
        Background = clWindow
        Name = 'button-remove-remove-2_small@1x'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001E14944415478DA636480023F
          1921865C0D29667E56E6080646C628A09009230383C07F06860F40F61986FFFF
          977DFFFB6FC5CCDB2FFEAEB8FF9AE11F541F2388C8D790628856125505725730
          32321A30E000FFFFFFBF002423B63F7D7FBBF1E223B0218C209B6BF464551919
          180F036D166520008086BC0652B6336F3EBB3DF7EE2B06C6DD2E3ACCFC6C2CA7
          F0D98CCD253FFFFE330B3E70ED2FE3294FFD284626A6C5C46A861BF2EF7FECB4
          9BCF96319EF232D802B4DD936403FEFFDF7EFCD5271F90012F8006883273F1FC
          1572F6656264C4A78981E1DDDECDFFFE7EFBC20C0A8BEB1FBF49309EF632F809
          0C3C162E658D3F1AFD4B5808D97CA330E6CFB7BB375880A6FD011AC00E72C14B
          A00B449879787F89FA847F83C62C2E3730BCDEB292EBEF97CF6C4017BC011A20
          0E32602BD0000F32C260C7E9379FBD41B1100D8C8545A4C7C2BFB839775E2C65
          3CE8A6CBCCC9C24C723AF8FBEFBF59D8A1EB7F19A31445190A34A540C9F83023
          524AFCCACC197785577DD93766CEFFE806FC646265B8CB28C870EAE36F064626
          A040BDBE1C83A794902A30FCE079E194803ECB0AE980EFC01862C3E3925FE020
          071992A02CCE90A822CECCCEC408CE8D7B446DBDB74BB8FC63200050E24C9C83
          15E81241066D012E86AB3A510C7724CC7E3012700100E3ADBF835F50466B0000
          000049454E44AE426082}
      end>
    Left = 318
    Top = 126
    Bitmap = {}
  end
  object dlgOpenImage: TOpenPictureDialog
    Filter = 
      'All supported files (PNG, JPG, BMP)|*.png;*.jpg;*.jpeg;*.bmp;*.g' +
      'if|Portable Network Graphics (*.png)|*.png|CompuServe GIF Image ' +
      '(*.gif)|*.gif|Bitmap (*.bmp)|*.bmp|JPEG Image File (*.jpg, *.jpe' +
      'g)|*.jpg;*.jpeg'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Select image file'
    Left = 397
    Top = 137
  end
  object dlgSaveImage: TSavePictureDialog
    DefaultExt = '.png'
    Filter = 'Portable Network Graphics (*.png)|*.png'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save image as'
    Left = 479
    Top = 140
  end
  object PngCollection: TJppPngCollection
    Items = <
      item
        Name = 'Copy'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C0864880000017F4944415478DA9D92316BC2
          501080EF3DFD2525FE01E92CDD0B5D123A74AB3FA16BE6E0A2C5BF60C9A288A4
          429B169780A9A0D642A0D2A101AD881574A83A0423497A0904A27915EDC18370
          47BEF7DDBD23E572B90300A71009CFF3BEF0088661F40A85026C361BF82B0802
          5C4110BC68B25AAD124AE9C2719C8B7EBFDFCCE7F36059D671804C26E3B55A2D
          CBB66DE109A3542AED07DC544CE2276E2F394FD3B4EBF57A7D379D4E61B95CC2
          783C86C16010FC309FCF41D77540BB980109A9ED763B51AFD7BBF89966CD0661
          BD5AAD1640980678434255555792A4ADD6445124C964728143BD180E874D4551
          D8068F0D8DBE680D26209BCD7AB22C5BD8223F994C9E63067E9C389FF4FB5D0F
          0067E24390D7A47317011473EE68342238541B5FE68A69202B0DFAD1D56206C5
          621166B31989CCE4E72883E825614B4C83CABD4A8D8E1E33D88D10105BE5D56A
          454DD3DC32D88D70262497CBC58AB87DFEEA1E66C02A604BC071DC6106AC22CF
          F3904AA5FE6FE003D0E0951092DE07C0677CFB05E32937EA1B0F11A500000000
          49454E44AE426082}
      end
      item
        Name = 'Paste'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000001874944415478DA635C50EBCC
          C0C0C8C8F0F41337C3075635512626A6C38C8C8C6A0C40F0FFFFFF9B406CC7F5
          F3CE6B05FE4F20018693575F324C5F77850106189F6E4EBC0ED4A07EF11907D3
          81BBBCAF816C6106240034E0A9B9DC57590BF96FFFFE33FCBF79E9F61B4DCFC2
          CD08039E6D49FA07627CF8C6A87EFD15E7ED3FFF1991F5333033FE675013F9A1
          2AC2F3EF26887FF1F66B26AC06100B2EDD79C3E451B0890E06FCFEFBBFF5E17B
          B6964F3F587E32807CF59F818109E89D67AF3E30A437AC64F8FBF72F7E03EEBE
          61E5DC7643E0E87F064623A4007D08C421F7EFDF3FBB6EDD3AB021380D38F784
          93E9C803DE7FADADADFF6162D5D5D58C2C2C2C1F7FFFFEEDF7E0C183C31B366C
          C063C053A001F7310D484A4AFABF64C992EF3F7FFE0C7EF6ECD94E920D00F2FF
          3D7AF48871E1C285BFBE7FFF1E45920113264C6078FDFA353CA100C3E3034906
          A003908B2837009617D025CF3CE6623AF69087B001DBFB7DC1B991114DF2EE17
          2986C75F04081B804B32383898414545E50CD07546B8D40003F11C00DBAE021E
          8A2D11F80000000049454E44AE426082}
      end
      item
        Name = 'Colors'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000029B4944415478DA
          A5D3DF4F8D711CC0F1F7E79C3AD529B588942CA9316592ACFCA8ADA6B5C36C71
          A3AEC2C60597DD9A3B73C925EB0ADD54370A5B6D195A88B1CE88A2947EEA27A7
          9D52EA9CFAF8D4F31FF0DC3DCFF3795EDFCFAF477C3EDF08B0937FBB46C5006D
          0E3E552EC3D869A88F873ABC0C52CE1A97C05F8AD442EA633817806AFE90C533
          5CD45251A6B201342EBE44CFC378393C4C8006038628614DAB958FC5220F8494
          16A898832A0376D36E409D5616AD38C0FD50175A059325F0C43268269A118E1B
          50A9D27344A817929FC1C9209C35209D4E5CDAA817F2171DE02EBDE819982E82
          B63868218A710A0DA850E9CB179A84A40E289B87532C5BC3DE23DAA457B2E71D
          E0B66708F5C16C01B4C762154631499E013E95815CA115B6BC85E2053861402A
          1F0C68D59A8C8003DC8C9D424BE1D74178E38557789866BF01252AC339C27348
          EC82C245286285643E1BF042AF6D9F7180EB0941F418CCE540570C9660243FD9
          6BC05195F13DC26B88FF04794B50604012FD0674EA8D840907A8D91A520E4130
          0B7AA2A0DB8080F55AB1942677217E88EB83EC3F708030893623C1CFADC85107
          B89A1A8966C3EF74F866C057220892866AB6CAEC0EA107BCC390B58CE5152681
          31D05EBD13FEEE0017D3E3D14C584A81110F0CE366C12A55CD5499DB260C40F4
          0F5BD71064B04A1C53060CEABDF97E07A8CAB2E034584E82A90898B0355962B3
          013B5416368BCD14CF0C248721C500AF15888E6BC374AF0354ECDB85DAC721DB
          C280DBA66115AE6059E91695A54DC22C44D81225AEDA386DC13DD842E84F7D34
          DCED00E5B9FBAC4B10B6092CBAB0F4B173620C88530945CB7ABCDB26E05588B5
          D646D836A20BDAF6C5EF00C587F3B0C6A396BE6589956AE7D80D91CA9A5BD61F
          B8EC855B37C2ACC0D5F528EDF0BFDB00FEEB77FE0B908E2B563CC6F534000000
          0049454E44AE426082}
      end>
    Left = 296
    Top = 274
  end
  object popupImg: TSpTBXPopupMenu
    Images = pilMain
    OnPopup = popupImgPopup
    Left = 481
    Top = 206
    object popZoom1: TSpTBXItem
      Tag = 1
      Action = actZoom_1
    end
    object popZoom2: TSpTBXItem
      Tag = 2
      Action = actZoom_2
    end
    object popZoom4: TSpTBXItem
      Tag = 4
      Action = actZoom_4
    end
    object popZoom6: TSpTBXItem
      Tag = 6
      Action = actZoom_6
    end
    object popZoom8: TSpTBXItem
      Tag = 8
      Action = actZoom_8
    end
    object popZoom10: TSpTBXItem
      Tag = 10
      Action = actZoom_10
    end
    object popZoom14: TSpTBXItem
      Tag = 14
      Action = actZoom_14
    end
    object popZoom18: TSpTBXItem
      Tag = 18
      Action = actZoom_18
    end
    object popZoom22: TSpTBXItem
      Tag = 22
      Action = actZoom_22
    end
    object popZoom26: TSpTBXItem
      Tag = 26
      Action = actZoom_26
    end
    object popZoom30: TSpTBXItem
      Tag = 30
      Action = actZoom_30
    end
    object SpTBXSeparatorItem11: TSpTBXSeparatorItem
    end
    object SpTBXItem29: TSpTBXItem
      Action = actSavePreviewImage
    end
    object sep3: TSpTBXSeparatorItem
    end
    object popSwitchOnTop: TSpTBXItem
      Action = actSwitchOnTop
    end
    object SpTBXSeparatorItem36: TSpTBXSeparatorItem
    end
    object SpTBXItem49: TSpTBXItem
      Action = actCollapse
    end
    object SpTBXItem102: TSpTBXItem
      Action = actSetSize_Small
    end
    object SpTBXItem101: TSpTBXItem
      Action = actSetSize_Medium
    end
    object SpTBXItem100: TSpTBXItem
      Action = actSetSize_Large
    end
    object SpTBXSeparatorItem35: TSpTBXSeparatorItem
    end
    object popShowHidePalette: TSpTBXItem
      Action = actShowHidePalette
    end
    object popShowHideColorCodesPanel: TSpTBXItem
      Action = actShowHideColorCodesPanel
    end
    object popShowHideBottomPanel: TSpTBXItem
      Action = actShowHideBottomPanel
    end
  end
  object popupCopyColors: TSpTBXPopupMenu
    Images = pilMain
    Left = 493
    Top = 276
    object popCopyColor_HTML: TSpTBXItem
      Action = actCopyColor_HTML
    end
    object popCopyColor_RGB: TSpTBXItem
      Action = actCopyColor_RGB
    end
    object popCopyColor_RGB_Percent: TSpTBXItem
      Action = actCopyColor_RGB_Percent
    end
    object popCopyColor_HSL_CSS: TSpTBXItem
      Action = actCopyColor_HSL_CSS
    end
    object popCopyColor_HSL_WIN: TSpTBXItem
      Action = actCopyColor_HSL_WIN
    end
    object popCopyColor_CMYK: TSpTBXItem
      Action = actCopyColor_CMYK
    end
    object popCopyColor_PascalHEX: TSpTBXItem
      Action = actCopyColor_PascalHEX
    end
    object popCopyColor_PascalINT: TSpTBXItem
      Action = actCopyColor_PascalINT
    end
    object SpTBXItem37: TSpTBXItem
      Action = actCopyColor_CppHex
    end
  end
  object popColorPalette: TSpTBXPopupMenu
    Images = pilMain
    OnPopup = popColorPalettePopup
    Left = 614
    Top = 286
    object popP_ShowHidePalette: TSpTBXItem
      Action = actShowHidePalette
    end
    object SpTBXSeparatorItem34: TSpTBXSeparatorItem
    end
    object SpTBXItem90: TSpTBXItem
      Action = actEditColorName
    end
    object SpTBXItem53: TSpTBXItem
      Action = actEditColor
    end
    object SpTBXItem36: TSpTBXItem
      Action = actEditPalette
    end
    object SpTBXSeparatorItem32: TSpTBXSeparatorItem
    end
    object SpTBXItem95: TSpTBXItem
      Action = actPalette_ColorWheel
    end
    object popPalette_SimilarColors: TSpTBXItem
      Action = actPalette_SimilarColors
    end
    object SpTBXSeparatorItem14: TSpTBXSeparatorItem
    end
    object SpTBXItem34: TSpTBXItem
      Action = actOpenColorPalette
    end
    object SpTBXItem35: TSpTBXItem
      Action = actSaveColorPalette
    end
    object SpTBXSeparatorItem13: TSpTBXSeparatorItem
    end
    object SpTBXItem32: TSpTBXItem
      Action = actExportPaletteToHtml
    end
    object SpTBXItem33: TSpTBXItem
      Action = actExportPaletteToGPL
    end
    object SpTBXSeparatorItem12: TSpTBXSeparatorItem
    end
    object SpTBXItem61: TSpTBXItem
      Action = actPalette_SelectAll
    end
    object SpTBXItem60: TSpTBXItem
      Action = actPalette_InvertSelection
    end
    object SpTBXItem63: TSpTBXItem
      Action = actPalette_UnselectAll
    end
    object SpTBXItem62: TSpTBXItem
      Action = actPalette_RemoveSelected
    end
    object SpTBXSeparatorItem26: TSpTBXSeparatorItem
    end
    object SpTBXItem68: TSpTBXItem
      Action = actCopySelectedColors_HTML
    end
    object SpTBXItem67: TSpTBXItem
      Action = actCopySelectedColors_RGB
    end
    object SpTBXItem73: TSpTBXItem
      Action = actCopySelectedColors_RGB_Percent
    end
    object SpTBXItem72: TSpTBXItem
      Action = actCopySelectedColors_HSL_CSS
    end
    object SpTBXItem71: TSpTBXItem
      Action = actCopySelectedColors_HSL_WIN
    end
    object SpTBXItem80: TSpTBXItem
      Action = actCopySelectedColors_CMYK
    end
    object SpTBXItem79: TSpTBXItem
      Action = actCopySelectedColors_PascalHEX
    end
    object SpTBXItem78: TSpTBXItem
      Action = actCopySelectedColors_PascalINT
    end
    object SpTBXItem77: TSpTBXItem
      Action = actCopySelectedColors_CppHex
    end
    object SpTBXSeparatorItem28: TSpTBXSeparatorItem
    end
    object SpTBXItem31: TSpTBXItem
      Action = actClearPalette
    end
  end
  object dropFile: TPJFormDropFiles
    ForegroundOnDrop = False
    Options = [dfoIncFiles]
    OnDropFiles = dropFileDropFiles
    Left = 134
    Top = 277
  end
  object popupMini: TSpTBXPopupMenu
    Images = pilMain
    Left = 395
    Top = 278
    object SpTBXItem48: TSpTBXItem
      Action = actCollapse
    end
    object SpTBXSeparatorItem22: TSpTBXSeparatorItem
    end
    object SpTBXItem47: TSpTBXItem
      Action = actExitApplication
    end
  end
  object TrayIcon: TTrayIcon
    PopupMenu = popupTray
    OnClick = TrayIconClick
    Left = 50
    Top = 278
  end
  object popupTray: TSpTBXPopupMenu
    Images = pilMain
    Left = 618
    Top = 361
    object SpTBXItem55: TSpTBXItem
      Action = actRestoreMainWindow
    end
    object SpTBXSeparatorItem23: TSpTBXSeparatorItem
    end
    object SpTBXItem54: TSpTBXItem
      Action = actExitApplication
    end
  end
  object AppHint: TJppHtmlHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Appearance.LightModeColors.Arrow = clWhite
    Appearance.LightModeColors.ArrowBackground = 13141515
    Appearance.LightModeColors.ArrowRectBorder = 14981388
    Appearance.LightModeColors.mclDarkGreen = 5807415
    Appearance.DarkModeColors.Background = 3881787
    Appearance.DarkModeColors.Text = 13882323
    Appearance.DarkModeColors.Border = 3223857
    Appearance.DarkModeColors.Arrow = 15658734
    Appearance.DarkModeColors.ArrowBackground = 1644825
    Appearance.DarkModeColors.ArrowRectBorder = clBlack
    Appearance.DarkModeColors.mclDarkGray = 7368816
    Appearance.DarkModeColors.mclLightGray = 12171705
    Appearance.DarkModeColors.mclDarkBlue = 15890688
    Appearance.DarkModeColors.mclLightBlue = 16756318
    Appearance.DarkModeColors.mclDarkGreen = 3779635
    Appearance.DarkModeColors.mclLightGreen = 5762651
    Appearance.DarkModeColors.mclDarkRed = 2368767
    Appearance.DarkModeColors.mclLightRed = 7303167
    Appearance.DarkModeColors.mclDarkCyan = 13553152
    Appearance.DarkModeColors.mclLightCyan = 16777041
    Appearance.DarkModeColors.mclDarkMagenta = 16719103
    Appearance.DarkModeColors.mclLightMagenta = 16745727
    Appearance.DarkModeColors.mclDarkYellow = 48857
    Appearance.DarkModeColors.mclLightYellow = 7335423
    Left = 432
    Top = 376
  end
end
