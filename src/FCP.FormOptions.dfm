object FormOptions: TFormOptions
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormOptions'
  ClientHeight = 423
  ClientWidth = 720
  Color = 14342874
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    720
    423)
  PixelsPerInch = 96
  TextHeight = 13
  object pnLanguage: TJppSimplePanel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 349
    Height = 50
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    TabOrder = 1
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    object lblLanguage: TLabel
      Left = 10
      Top = 5
      Width = 54
      Height = 13
      Caption = 'Language:'
    end
    object cbLang: TComboBox
      Left = 10
      Top = 21
      Width = 169
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      TabOrder = 0
      OnChange = cbLangChange
    end
  end
  object btnClose: TJppPngButton
    Left = 628
    Top = 390
    Width = 84
    Height = 25
    Action = actClose
    Anchors = [akRight, akBottom]
    Caption = 'Close'
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
    ExplicitLeft = 620
  end
  object pnColorPalette: TJppSimplePanel
    AlignWithMargins = True
    Left = 361
    Top = 6
    Width = 351
    Height = 376
    Margins.Left = 6
    Margins.Right = 6
    TabOrder = 2
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    DesignSize = (
      351
      376)
    object lblColorPalette: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 4
      Width = 340
      Height = 13
      Margins.Left = 8
      Margins.Top = 4
      Align = alTop
      Caption = 'Color Palette'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 67
    end
    object lblColorPalette_ColorFormat: TLabel
      Left = 40
      Top = 33
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Color format:'
    end
    object lblAddColorsPosition: TLabel
      Left = 11
      Top = 327
      Width = 83
      Height = 13
      Caption = 'Add new colors:'
    end
    object rbColorPalette_RGB: TRadioButton
      Left = 120
      Top = 22
      Width = 53
      Height = 16
      Caption = 'RGB'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = SetColorPaletteParams
    end
    object rbColorPalette_HTML: TRadioButton
      Left = 120
      Top = 40
      Width = 53
      Height = 16
      Caption = 'HTML'
      TabOrder = 1
      OnClick = SetColorPaletteParams
    end
    object rbColorPalette_RGB_HTML: TRadioButton
      Left = 179
      Top = 22
      Width = 95
      Height = 16
      Caption = 'RGB + HTML'
      TabOrder = 2
      OnClick = SetColorPaletteParams
    end
    object chColorPalette_ShowNames: TCheckBox
      Left = 10
      Top = 61
      Width = 209
      Height = 17
      Caption = 'Show color names'
      TabOrder = 3
      OnClick = SetColorPaletteParams
    end
    object rbColorPalette_None: TRadioButton
      Left = 179
      Top = 40
      Width = 95
      Height = 16
      Caption = 'None'
      TabOrder = 4
      OnClick = SetColorPaletteParams
    end
    object pnColorRectangle: TJppSimplePanel
      Left = 10
      Top = 85
      Width = 330
      Height = 63
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      Appearance.BackgroundColor = 16053492
      Appearance.BorderColor = 11053224
      object lblColorRectangle: TLabel
        AlignWithMargins = True
        Left = 6
        Top = 3
        Width = 321
        Height = 13
        Margins.Left = 6
        Align = alTop
        Caption = 'Color rectangle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 79
      end
      object edColorRectangle_Width: TLabeledEdit
        Left = 73
        Top = 30
        Width = 33
        Height = 21
        Alignment = taRightJustify
        EditLabel.Width = 35
        EditLabel.Height = 13
        EditLabel.Caption = 'Width:'
        LabelPosition = lpLeft
        TabOrder = 0
        Text = '10'
      end
      object udColorRectangle_Width: TUpDown
        Left = 106
        Top = 30
        Width = 16
        Height = 21
        Associate = edColorRectangle_Width
        Min = 10
        Max = 256
        Position = 10
        TabOrder = 1
        OnClick = udColorRectangle_WidthClick
      end
      object chColorRectangle_DrawBorder: TCheckBox
        Left = 134
        Top = 14
        Width = 187
        Height = 17
        Caption = 'Draw borders'
        TabOrder = 2
        OnClick = chColorRectangle_DrawBorderClick
      end
      object chColorRectangle_Connected: TCheckBox
        Left = 134
        Top = 35
        Width = 191
        Height = 17
        Caption = 'Connected rectangles'
        TabOrder = 3
        OnClick = chColorRectangle_ConnectedClick
      end
    end
    object edColorPalette_RowHeight: TLabeledEdit
      Left = 111
      Top = 159
      Width = 33
      Height = 21
      Alignment = taRightJustify
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Row height:'
      LabelPosition = lpLeft
      TabOrder = 6
      Text = '10'
    end
    object udColorPalette_RowHeight: TUpDown
      Left = 144
      Top = 159
      Width = 16
      Height = 21
      Associate = edColorPalette_RowHeight
      Min = 10
      Max = 64
      Position = 10
      TabOrder = 7
      OnClick = udColorPalette_RowHeightClick
    end
    object ccbColorPalette_BgColor: TJppColorComboBox
      Left = 10
      Top = 206
      Width = 249
      Height = 22
      BevelKind = bkFlat
      Style = csOwnerDrawVariable
      DropDownCount = 16
      ItemIndex = 9
      TabOrder = 8
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
        '=126,115,095')
      SelectedColor = clWhite
      BoundLabel.Width = 94
      BoundLabel.Height = 13
      BoundLabel.Caption = 'Background color:'
      BoundLabel.FocusControl = ccbColorPalette_BgColor
      BoundLabelPosition = lpAbove
      BoundLabelSpacing = 2
      ButtonsSpacing = 2
      ButtonChangeColor.Left = 261
      ButtonChangeColor.Top = 206
      ButtonChangeColor.Width = 25
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
      ButtonChangeColor.ParentShowHint = False
      ButtonChangeColor.ShowHint = True
      ButtonChangeColor.Visible = True
      ButtonChangeColor.OnClick = ccbColorPalette_BgColorBtnChangeColorClick
      ButtonCopyColor.Left = 288
      ButtonCopyColor.Top = 206
      ButtonCopyColor.Width = 23
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
      ButtonCopyColor.ParentShowHint = False
      ButtonCopyColor.ShowHint = True
      ButtonCopyColor.Visible = True
      ButtonPasteColor.Left = 313
      ButtonPasteColor.Top = 206
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
      ButtonPasteColor.ParentShowHint = False
      ButtonPasteColor.ShowHint = True
      ButtonPasteColor.Visible = True
      Appearance.ColorRectangle.PaddingBottom = 0
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
      Appearance.SeparatorItem.Background.Gradient.ColorTo = 9211020
      Appearance.SeparatorItem.Background.DrawBorders = False
      Appearance.SeparatorItem.Font.Charset = DEFAULT_CHARSET
      Appearance.SeparatorItem.Font.Color = clWhite
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
      ColorListSet = [cltBasic, cltWin10Theme]
      OnColorChanged = ccbColorPalette_BgColorColorChanged
    end
    object ccbColorPalette_FontColor: TJppColorComboBox
      Left = 10
      Top = 249
      Width = 249
      Height = 22
      BevelKind = bkFlat
      Style = csOwnerDrawVariable
      DropDownCount = 16
      ItemIndex = 1
      TabOrder = 9
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
        '=126,115,095')
      SelectedColor = clBlack
      BoundLabel.Width = 56
      BoundLabel.Height = 13
      BoundLabel.Caption = 'Font color:'
      BoundLabel.FocusControl = ccbColorPalette_FontColor
      BoundLabelPosition = lpAbove
      BoundLabelSpacing = 2
      ButtonsSpacing = 2
      ButtonChangeColor.Left = 261
      ButtonChangeColor.Top = 249
      ButtonChangeColor.Width = 25
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
      ButtonChangeColor.ParentShowHint = False
      ButtonChangeColor.ShowHint = True
      ButtonChangeColor.Visible = True
      ButtonChangeColor.OnClick = ccbColorPalette_FontColorBtnChangeColorClick
      ButtonCopyColor.Left = 288
      ButtonCopyColor.Top = 249
      ButtonCopyColor.Width = 23
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
      ButtonCopyColor.ParentShowHint = False
      ButtonCopyColor.ShowHint = True
      ButtonCopyColor.Visible = True
      ButtonPasteColor.Left = 313
      ButtonPasteColor.Top = 249
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
      ButtonPasteColor.ParentShowHint = False
      ButtonPasteColor.ShowHint = True
      ButtonPasteColor.Visible = True
      Appearance.ColorRectangle.PaddingBottom = 0
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
      Appearance.SeparatorItem.Background.Gradient.ColorTo = 9211020
      Appearance.SeparatorItem.Background.DrawBorders = False
      Appearance.SeparatorItem.Font.Charset = DEFAULT_CHARSET
      Appearance.SeparatorItem.Font.Color = clWhite
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
      ColorListSet = [cltBasic, cltWin10Theme]
      OnColorChanged = ccbColorPalette_FontColorColorChanged
    end
    object chColorPalette_ShowToolbar: TCheckBox
      Left = 10
      Top = 281
      Width = 240
      Height = 17
      Caption = 'Show toolbar'
      TabOrder = 10
      OnClick = chColorPalette_ShowToolbarClick
    end
    object chAskForName: TCheckBox
      Left = 10
      Top = 303
      Width = 333
      Height = 17
      Caption = 'Ask for a color name when adding to the color palette'
      TabOrder = 11
      OnClick = chAskForNameClick
    end
    object cbAddColorsPosition: TComboBox
      Left = 30
      Top = 343
      Width = 247
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 12
      Text = 'At the top of the color palette'
      OnChange = cbAddColorsPositionChange
      Items.Strings = (
        'At the top of the color palette'
        'At the end of the color palette')
    end
  end
  object pnMain: TJppSimplePanel
    AlignWithMargins = True
    Left = 6
    Top = 62
    Width = 349
    Height = 320
    Margins.Left = 6
    Margins.Right = 6
    TabOrder = 3
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    object lblResampler: TLabel
      Left = 10
      Top = 7
      Width = 56
      Height = 13
      Caption = 'Resampler:'
    end
    object lblCopyColorFormat: TLabel
      Left = 34
      Top = 78
      Width = 68
      Height = 13
      Caption = 'Color format:'
    end
    object lblCopyColor: TLabel
      Left = 10
      Top = 131
      Width = 258
      Height = 13
      Caption = 'The color format to copy after pressing the F3 key:'
    end
    object lblCapturingInterval: TLabel
      Left = 10
      Top = 260
      Width = 163
      Height = 39
      Caption = 
        'The interval for capturing color'#13#10'under the cursor and creating ' +
        'a'#13#10'preview image:'
    end
    object lblMs: TLabel
      Left = 273
      Top = 272
      Width = 14
      Height = 13
      Caption = 'ms'
    end
    object cbResampler: TComboBox
      Left = 34
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = cbResamplerChange
    end
    object chShowBottomPanel: TCheckBox
      Left = 10
      Top = 183
      Width = 279
      Height = 17
      Caption = 'Show bottom panel'
      TabOrder = 1
      OnClick = chShowBottomPanelClick
    end
    object chCopyColor_Capture: TCheckBox
      Left = 10
      Top = 59
      Width = 328
      Height = 17
      Caption = 'Copy the color to the clipboard after the capture'
      TabOrder = 2
      OnClick = chCopyColor_CaptureClick
    end
    object cbColorFormat_Capture: TComboBox
      Left = 34
      Top = 94
      Width = 145
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      TabOrder = 3
      OnChange = cbColorFormat_CaptureChange
    end
    object chShowColorCodesPanel: TCheckBox
      Left = 10
      Top = 206
      Width = 279
      Height = 17
      Caption = 'Show panel with color codes'
      TabOrder = 4
      OnClick = chShowColorCodesPanelClick
    end
    object chShowRgbGraph: TCheckBox
      Left = 32
      Top = 224
      Width = 220
      Height = 17
      Caption = 'Show RGB graph'
      TabOrder = 5
      OnClick = chShowRgbGraphClick
    end
    object cbColorFormat: TComboBox
      Left = 34
      Top = 147
      Width = 145
      Height = 21
      Style = csDropDownList
      DropDownCount = 12
      TabOrder = 6
      OnChange = cbColorFormatChange
    end
    object edCapturingInterval: TEdit
      Left = 213
      Top = 269
      Width = 39
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 7
      Text = '50'
    end
    object udCapturingInterval: TUpDown
      Left = 252
      Top = 269
      Width = 16
      Height = 21
      Associate = edCapturingInterval
      Min = 50
      Max = 2000
      Position = 50
      TabOrder = 8
      OnClick = udCapturingIntervalClick
    end
  end
  object Actions: TActionList
    Left = 210
    Top = 20
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
  end
end
