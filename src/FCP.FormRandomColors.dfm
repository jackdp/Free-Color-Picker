object FormRandomColors: TFormRandomColors
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FormRandomColors'
  ClientHeight = 500
  ClientWidth = 874
  Color = 14342874
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
    Top = 459
    Width = 874
    Height = 41
    Align = alBottom
    TabOrder = 2
    Appearance.BackgroundColor = 14342874
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    DesignSize = (
      874
      41)
    object lblAddPos: TLabel
      Left = 610
      Top = 14
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Position:'
      ExplicitLeft = 498
    end
    object btnClearColors: TJppPngButton
      Left = 101
      Top = 8
      Width = 163
      Height = 25
      Action = actClearColors
      Caption = 'Clear colors'
      ParentShowHint = False
      ShowHint = True
      Spacing = 8
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
    object btnClose: TJppPngButton
      Left = 8
      Top = 8
      Width = 87
      Height = 25
      Action = actClose
      Caption = 'Close'
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
    object btnAdd: TJppPngButton
      Left = 774
      Top = 8
      Width = 90
      Height = 25
      Action = actAdd
      Anchors = [akTop, akRight]
      Caption = 'Add'
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
    object cbAddPos: TComboBox
      Left = 659
      Top = 10
      Width = 109
      Height = 21
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 3
      Text = 'At the top'
      Items.Strings = (
        'At the top'
        'At the end')
    end
  end
  object pnRight: TJppSimplePanel
    Left = 460
    Top = 0
    Width = 414
    Height = 459
    Align = alRight
    TabOrder = 1
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    Appearance.DrawTopBorder = False
    Appearance.DrawBottomBorder = False
    Appearance.DrawRightBorder = False
    object shLine: TShape
      Left = 0
      Top = 46
      Width = 414
      Height = 10
      Align = alTop
      Pen.Color = 11053224
      ExplicitLeft = 101
      ExplicitTop = 380
      ExplicitWidth = 203
    end
    object pnColorPaletteTitle: TJppBasicPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 413
      Height = 20
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 0
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
      Appearance.Borders.Top.Visible = False
      Appearance.Borders.Bottom.Pen.Color = 11053224
      object lblColors: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Alignment = taCenter
        Caption = 'Colors'
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
    end
    object clbColors: TJppColorListBox
      AlignWithMargins = True
      Left = 1
      Top = 56
      Width = 413
      Height = 212
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      ItemHeight = 15
      PopupMenu = popColorList
      TabOrder = 1
      OnClick = InitColorListActns
      Multiselect = True
      BorderStyle = bsNone
      Items.Strings = (
        '-=Web red colors'
        'LightSalmon=255,160,122'
        'Salmon=250,128,114'
        'DarkSalmon=233,150,122')
      Appearance.ColorRectangle.PaddingTop = 0
      Appearance.ColorRectangle.PaddingBottom = 0
      Appearance.ColorRectangle.HideTopBorder = True
      Appearance.ShowRgbInt = False
      Appearance.RgbIntParams.RgbSeparator = ','
      Appearance.RgbHexParams.RgbSeparator = ' '
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
      ColorListSet = [cltWebRed]
      Options = [clboAddAtTop]
      SelectedColor = clNone
      OnGetColorStrValue = clbColorsGetColorStrValue
    end
    object dockMenu: TSpTBXDock
      AlignWithMargins = True
      Left = 1
      Top = 20
      Width = 413
      Height = 26
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AllowDrag = False
      object tbMain: TSpTBXToolbar
        AlignWithMargins = True
        Left = 1
        Top = 0
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        DockPos = 1
        Images = FormMain.pilMain
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Caption = 'tbMain'
        object SpTBXItem52: TSpTBXItem
          Action = actSelectAll
        end
        object SpTBXItem51: TSpTBXItem
          Action = actInvertSelection
        end
        object SpTBXItem50: TSpTBXItem
          Action = actDeleteSelected
        end
        object SpTBXSeparatorItem3: TSpTBXSeparatorItem
        end
        object SpTBXItem53: TSpTBXItem
          Action = actClearColors
        end
      end
    end
  end
  object pnRanges: TJppSimplePanel
    Left = 0
    Top = 0
    Width = 445
    Height = 456
    TabOrder = 0
    Appearance.BackgroundColor = 14342874
    Appearance.DrawTopBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    DesignSize = (
      445
      456)
    object shRgb: TShape
      Left = 8
      Top = 11
      Width = 427
      Height = 118
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 15395562
      Pen.Color = 11053224
    end
    object lblRange_RgbRed: TLabel
      Left = 312
      Top = 43
      Width = 60
      Height = 13
      Caption = 'Red: 0 - 255'
    end
    object lblRange_RgbGreen: TLabel
      Left = 312
      Top = 70
      Width = 71
      Height = 13
      Caption = 'Green: 0 - 255'
    end
    object lblRange_RgbBlue: TLabel
      Left = 312
      Top = 98
      Width = 62
      Height = 13
      Caption = 'Blue: 0 - 255'
    end
    object shHslWin: TShape
      Left = 9
      Top = 135
      Width = 427
      Height = 122
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 15395562
      Pen.Color = 11053224
      ExplicitWidth = 372
    end
    object lblRange_HslWin_Hue: TLabel
      Left = 312
      Top = 182
      Width = 61
      Height = 13
      Caption = 'Hue: 0 - 239'
    end
    object lblRange_HslWin_Sat: TLabel
      Left = 312
      Top = 207
      Width = 68
      Height = 13
      Caption = 'Sat: 115 - 125'
    end
    object lblRange_HslWin_Lum: TLabel
      Left = 312
      Top = 233
      Width = 73
      Height = 13
      Caption = 'Lum: 115 - 125'
    end
    object shHslCss: TShape
      Left = 9
      Top = 265
      Width = 427
      Height = 154
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 15395562
      Pen.Color = 11053224
      ExplicitWidth = 372
    end
    object lblRange_HslCss_Hue: TLabel
      Left = 312
      Top = 343
      Width = 61
      Height = 13
      Caption = 'Hue: 0 - 360'
    end
    object lblRange_HslCss_Sat: TLabel
      Left = 312
      Top = 368
      Width = 56
      Height = 13
      Caption = 'Sat: 45 - 55'
    end
    object lblRange_HslCss_Lum: TLabel
      Left = 312
      Top = 393
      Width = 61
      Height = 13
      Caption = 'Lum: 45 - 55'
    end
    object lblColorCount: TLabel
      Left = 70
      Top = 430
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = 'Number of colors:'
      ExplicitTop = 407
    end
    object imgHue_Css: TImage
      Left = 31
      Top = 322
      Width = 385
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 330
    end
    object imgHue_Win: TImage
      Left = 31
      Top = 162
      Width = 385
      Height = 14
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 330
    end
    object sbtnLockUnlockRange_HslCss_Hue: TJppBasicSpeedButton
      Left = 15
      Top = 340
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslCss_Hue'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslCss_Hue
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_HslCss_Sat: TJppBasicSpeedButton
      Left = 15
      Top = 365
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslCss_Sat'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslCss_Sat
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_HslCss_Lum: TJppBasicSpeedButton
      Left = 15
      Top = 389
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslCss_Lum'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslCss_Lum
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_HslWin_Hue: TJppBasicSpeedButton
      Left = 15
      Top = 180
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslWin_Hue'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslWin_Hue
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_HslWin_Sat: TJppBasicSpeedButton
      Left = 15
      Top = 204
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslWin_Sat'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslWin_Sat
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_HslWin_Lum: TJppBasicSpeedButton
      Left = 15
      Top = 229
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_HslWin_Lum'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_HslWin_Lum
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_Rgb_Red: TJppBasicSpeedButton
      Left = 15
      Top = 38
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_Rgb_Red'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_Rgb_Red
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_Rgb_Green: TJppBasicSpeedButton
      Left = 15
      Top = 66
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_Rgb_Green'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_Rgb_Green
      ParentShowHint = False
      ShowHint = True
    end
    object sbtnLockUnlockRange_Rgb_Blue: TJppBasicSpeedButton
      Left = 15
      Top = 94
      Width = 20
      Height = 20
      Caption = 'actLockUnlockRange_Rgb_Blue'
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
      Appearance.ShowCaption = False
      Action = actLockUnlockRange_Rgb_Blue
      ParentShowHint = False
      ShowHint = True
    end
    object rbRgb: TRadioButton
      Left = 17
      Top = 15
      Width = 113
      Height = 17
      Caption = 'RGB'
      TabOrder = 0
      OnClick = InitCtrls
    end
    object tbRange_RgbRed: TJPPegtopRangeBar
      Left = 43
      Top = 34
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 1
      TrackShadowColor = 168
      TrackHighlightColor = 13816569
      TrackInnerColor = 240
      TrackDisabledColor = 12500696
      TrackDisabledBorderColor = 10000576
      TickMarkPos = tmBoth
      TickColor = 9539985
      TickSpacing = 5
      TicksVisible = True
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 13487605
      ButtonParams.Normal.ColorTo = 11842801
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Normal.BorderColor = 1776525
      ButtonParams.Hot.Color = 12895485
      ButtonParams.Hot.ColorTo = 11316477
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Hot.BorderColor = 789728
      ButtonParams.Pushed.Color = 11645432
      ButtonParams.Pushed.ColorTo = 10263797
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Pushed.BorderColor = 789728
      ButtonParams.Disabled.Color = 12500696
      ButtonParams.Disabled.ColorTo = 11448014
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Disabled.BorderColor = 10000576
      ButtonParams.Focused.Color = 12303357
      ButtonParams.Focused.ColorTo = 9342715
      ButtonParams.Focused.GradientDirection = gdVertical
      ButtonParams.Focused.BorderColor = clRed
      LabelCaption = 'Red: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_RgbRed
      RangeOptions = []
      Max = 255
      PositionMin = 0
      PositionMax = 255
    end
    object tbRange_RgbGreen: TJPPegtopRangeBar
      Left = 43
      Top = 62
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 2
      TrackShadowColor = 30464
      TrackHighlightColor = 15530988
      TrackInnerColor = 2013466
      TrackDisabledColor = 12241323
      TrackDisabledBorderColor = 9283187
      TickMarkPos = tmBoth
      TickColor = 9539985
      TickSpacing = 5
      TicksVisible = True
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 13493442
      ButtonParams.Normal.ColorTo = 12179882
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Normal.BorderColor = 6990155
      ButtonParams.Hot.Color = 11397804
      ButtonParams.Hot.ColorTo = 8183418
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Hot.BorderColor = 3394086
      ButtonParams.Pushed.Color = 11201192
      ButtonParams.Pushed.ColorTo = 7855477
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Pushed.BorderColor = 2529821
      ButtonParams.Disabled.Color = 11649439
      ButtonParams.Disabled.ColorTo = 10663308
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Disabled.BorderColor = 9283187
      ButtonParams.Focused.Color = 10151064
      ButtonParams.Focused.ColorTo = 5755732
      ButtonParams.Focused.GradientDirection = gdVertical
      ButtonParams.Focused.BorderColor = 2529821
      LabelCaption = 'Green: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_RgbGreen
      RangeOptions = []
      Max = 255
      PositionMin = 0
      PositionMax = 255
    end
    object tbRange_RgbBlue: TJPPegtopRangeBar
      Left = 43
      Top = 90
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 3
      TrackShadowColor = 9064966
      TrackHighlightColor = 16575450
      TrackInnerColor = 15099667
      TrackDisabledColor = 14929339
      TrackDisabledBorderColor = 14070936
      TickMarkPos = tmBoth
      TickColor = 9539985
      TickSpacing = 5
      TicksVisible = True
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 16639686
      ButtonParams.Normal.ColorTo = 16637363
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Normal.BorderColor = 16423707
      ButtonParams.Hot.Color = 16572331
      ButtonParams.Hot.ColorTo = 16503430
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Hot.BorderColor = 16231200
      ButtonParams.Pushed.Color = 16572331
      ButtonParams.Pushed.ColorTo = 16503430
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Pushed.BorderColor = 12352775
      ButtonParams.Disabled.Color = 14929339
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Disabled.BorderColor = 14070936
      ButtonParams.Focused.Color = 16504983
      ButtonParams.Focused.ColorTo = 16368736
      ButtonParams.Focused.GradientDirection = gdVertical
      ButtonParams.Focused.BorderColor = 12352775
      LabelCaption = 'Blue: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_RgbBlue
      RangeOptions = []
      Max = 255
      PositionMin = 0
      PositionMax = 255
    end
    object rbHslWin: TRadioButton
      Left = 17
      Top = 142
      Width = 225
      Height = 17
      Caption = 'HSL - Windows [239 / 240 / 240]'
      TabOrder = 4
      OnClick = InitCtrls
    end
    object btnGenerateRandomColors: TJppPngButton
      Left = 250
      Top = 424
      Width = 99
      Height = 25
      Action = actGenerateRandomColors
      Anchors = [akLeft, akBottom]
      Caption = 'Generate'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
    object tbRange_HslWin_Hue: TJPPegtopRangeBar
      Left = 43
      Top = 178
      Width = 260
      Height = 24
      Cursor = crDefault
      TabOrder = 5
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Hue: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslWin_Hue
      RangeOptions = []
      Max = 239
      OnScroll = tbRange_HslWin_HueScroll
      PositionMin = 0
      PositionMax = 239
    end
    object tbRange_HslWin_Sat: TJPPegtopRangeBar
      Left = 43
      Top = 200
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 6
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Sat: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslWin_Sat
      RangeOptions = []
      Max = 240
      OnScroll = tbRange_HslWin_HueScroll
      PositionMin = 115
      PositionMax = 125
    end
    object tbRange_HslWin_Lum: TJPPegtopRangeBar
      Left = 43
      Top = 225
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 7
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Lum: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslWin_Lum
      RangeOptions = []
      Max = 240
      OnScroll = tbRange_HslWin_HueScroll
      PositionMin = 115
      PositionMax = 125
    end
    object rbHslCss: TRadioButton
      Left = 17
      Top = 273
      Width = 189
      Height = 17
      Caption = 'HSL - CSS [360 / 100 / 100]'
      Checked = True
      TabOrder = 8
      TabStop = True
      OnClick = InitCtrls
    end
    object tbRange_HslCss_Hue: TJPPegtopRangeBar
      Left = 43
      Top = 338
      Width = 260
      Height = 24
      Cursor = crDefault
      TabOrder = 9
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Hue: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslCss_Hue
      RangeOptions = []
      Max = 360
      OnScroll = tbRange_HslCss_HueScroll
      PositionMin = 0
      PositionMax = 360
    end
    object tbRange_HslCss_Sat: TJPPegtopRangeBar
      Left = 43
      Top = 361
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 10
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Sat: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslCss_Sat
      RangeOptions = []
      OnScroll = tbRange_HslCss_HueScroll
      PositionMin = 45
      PositionMax = 55
    end
    object tbRange_HslCss_Lum: TJPPegtopRangeBar
      Left = 43
      Top = 385
      Width = 260
      Height = 28
      Cursor = crDefault
      TabOrder = 11
      TrackDisabledColor = 13421772
      TrackDisabledBorderColor = 11974326
      ButtonParams.Normal.GradientDirection = gdVertical
      ButtonParams.Hot.GradientDirection = gdVertical
      ButtonParams.Pushed.GradientDirection = gdVertical
      ButtonParams.Disabled.GradientDirection = gdVertical
      ButtonParams.Focused.GradientDirection = gdVertical
      LabelCaption = 'Lum: <min> - <max>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      PositionLabel = lblRange_HslCss_Lum
      RangeOptions = []
      OnScroll = tbRange_HslCss_HueScroll
      PositionMin = 45
      PositionMax = 55
    end
    object spedColorCount: TSpTBXSpinEdit
      Left = 168
      Top = 426
      Width = 60
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 13
      SpinButton.Left = 42
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 1024.000000000000000000
      SpinOptions.MinValue = 1.000000000000000000
      SpinOptions.Value = 16.000000000000000000
    end
    object btnPresets_HslCss_Pastels: TSpTBXButton
      Left = 31
      Top = 296
      Width = 93
      Height = 20
      Caption = 'Pastels'
      TabOrder = 14
      DropDownMenu = popPresets_HslCss_Pastels
    end
    object btnPresets_HslCss_Intensive: TSpTBXButton
      Left = 134
      Top = 296
      Width = 93
      Height = 20
      Caption = 'Intensive'
      TabOrder = 15
      DropDownMenu = popPresets_HslCss_Intensive
    end
    object btnPresets_HslCss_Dark: TSpTBXButton
      Left = 235
      Top = 296
      Width = 93
      Height = 20
      Caption = 'Dark'
      TabOrder = 16
      DropDownMenu = popPresets_HslCss_Dark
    end
    object btnPresets_HslCss_Light: TSpTBXButton
      Left = 336
      Top = 296
      Width = 93
      Height = 20
      Caption = 'Light'
      TabOrder = 17
      DropDownMenu = popPresets_HslCss_Light
    end
    object btnPresets_HslCss_Grayscale: TSpTBXButton
      Left = 276
      Top = 271
      Width = 153
      Height = 20
      Caption = 'Grayscale'
      TabOrder = 18
      DropDownMenu = popPresets_HslCss_Grayscale
    end
    object btnPresets_Rgb: TSpTBXButton
      Left = 276
      Top = 17
      Width = 153
      Height = 20
      Caption = 'RGB Presets'
      TabOrder = 19
      DropDownMenu = popPresets_Rgb
    end
  end
  object Actions: TActionList
    Images = FormMain.pilMain
    Left = 490
    Top = 147
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actClearColors: TAction
      Caption = 'Clear colors'
      ImageIndex = 7
      OnExecute = actClearColorsExecute
    end
    object actAdd: TAction
      Caption = 'Add'
      Hint = 'Add the generated colors to the main color palette'
      ImageIndex = 13
      OnExecute = actAddExecute
    end
    object actGenerateRandomColors: TAction
      Caption = 'Generate'
      Hint = 'Generate random colors'
      ImageIndex = 1
      OnExecute = actGenerateRandomColorsExecute
    end
    object actPreset_HslCss_Pastels_BlueLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Blue pastels - Light'
      ImageIndex = 62
      OnExecute = actPreset_HslCss_Pastels_BlueLightExecute
    end
    object actPreset_HslCss_Pastels_RedLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Red pastels - Light'
      ImageIndex = 60
      OnExecute = actPreset_HslCss_Pastels_RedLightExecute
    end
    object actPreset_HslCss_Pastels_GreenLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Green pastels - Light'
      ImageIndex = 61
      OnExecute = actPreset_HslCss_Pastels_GreenLightExecute
    end
    object actPreset_HslCss_Pastels_BlueDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Blue pastels - Dark'
      ImageIndex = 64
      OnExecute = actPreset_HslCss_Pastels_BlueDarkExecute
    end
    object actPreset_HslCss_Pastels_RedDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Red pastels - Dark'
      ImageIndex = 66
      OnExecute = actPreset_HslCss_Pastels_RedDarkExecute
    end
    object actPreset_HslCss_Pastels_GreenDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Green pastels - Dark'
      ImageIndex = 65
      OnExecute = actPreset_HslCss_Pastels_GreenDarkExecute
    end
    object actPreset_HslCss_Pastels_YellowLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Yellow pastels - Light'
      ImageIndex = 70
      OnExecute = actPreset_HslCss_Pastels_YellowLightExecute
    end
    object actPreset_HslCss_Pastels_CyanLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Cyan pastels - Light'
      ImageIndex = 67
      OnExecute = actPreset_HslCss_Pastels_CyanLightExecute
    end
    object actPreset_HslCss_Pastels_VioletLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Violet pastels - Light'
      ImageIndex = 69
      OnExecute = actPreset_HslCss_Pastels_VioletLightExecute
    end
    object actPreset_HslCss_Pastels_PinkLight: TAction
      Category = 'Preset_Pastels'
      Caption = 'Pink pastels - Light'
      ImageIndex = 68
      OnExecute = actPreset_HslCss_Pastels_PinkLightExecute
    end
    object actPreset_HslCss_Pastels_YellowDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Yellow pastels - Dark'
      ImageIndex = 74
      OnExecute = actPreset_HslCss_Pastels_YellowDarkExecute
    end
    object actPreset_HslCss_Pastels_CyanDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Cyan pastels - Dark'
      ImageIndex = 71
      OnExecute = actPreset_HslCss_Pastels_CyanDarkExecute
    end
    object actPreset_HslCss_Pastels_VioletDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Violet pastels - Dark'
      ImageIndex = 73
      OnExecute = actPreset_HslCss_Pastels_VioletDarkExecute
    end
    object actPreset_HslCss_Pastels_PinkDark: TAction
      Category = 'Preset_Pastels'
      Caption = 'Pink pastels - Dark'
      ImageIndex = 72
      OnExecute = actPreset_HslCss_Pastels_PinkDarkExecute
    end
    object actLockUnlockRange_HslCss_Hue: TAction
      Caption = 'actLockUnlockRange_HslCss_Hue'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslCss_HueExecute
    end
    object actLockUnlockRange_HslCss_Sat: TAction
      Caption = 'actLockUnlockRange_HslCss_Sat'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslCss_SatExecute
    end
    object actLockUnlockRange_HslCss_Lum: TAction
      Caption = 'actLockUnlockRange_HslCss_Lum'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslCss_LumExecute
    end
    object actPreset_HslCss_Intensive_Red: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense red'
      ImageIndex = 60
      OnExecute = actPreset_HslCss_Intensive_RedExecute
    end
    object actPreset_HslCss_Intensive_Green: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense green'
      ImageIndex = 61
      OnExecute = actPreset_HslCss_Intensive_GreenExecute
    end
    object actPreset_HslCss_Intensive_Blue: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense blue'
      ImageIndex = 62
      OnExecute = actPreset_HslCss_Intensive_BlueExecute
    end
    object actPreset_HslCss_Intensive_Yellow: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense yellow'
      ImageIndex = 70
      OnExecute = actPreset_HslCss_Intensive_YellowExecute
    end
    object actPreset_HslCss_Intensive_Cyan: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense cyan'
      ImageIndex = 67
      OnExecute = actPreset_HslCss_Intensive_CyanExecute
    end
    object actPreset_HslCss_Intensive_Violet: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense violet'
      ImageIndex = 69
      OnExecute = actPreset_HslCss_Intensive_VioletExecute
    end
    object actPreset_HslCss_Intensive_Pink: TAction
      Category = 'Preset_Intensive'
      Caption = 'Intense pink'
      ImageIndex = 68
      OnExecute = actPreset_HslCss_Intensive_PinkExecute
    end
    object actLockUnlockRange_HslWin_Hue: TAction
      Caption = 'actLockUnlockRange_HslWin_Hue'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslWin_HueExecute
    end
    object actLockUnlockRange_HslWin_Sat: TAction
      Caption = 'actLockUnlockRange_HslWin_Sat'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslWin_SatExecute
    end
    object actLockUnlockRange_HslWin_Lum: TAction
      Caption = 'actLockUnlockRange_HslWin_Lum'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_HslWin_LumExecute
    end
    object actPreset_HslCss_Dark_Red: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark red'
      ImageIndex = 66
      OnExecute = actPreset_HslCss_Dark_RedExecute
    end
    object actPreset_HslCss_Dark_Green: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark green'
      ImageIndex = 65
      OnExecute = actPreset_HslCss_Dark_GreenExecute
    end
    object actPreset_HslCss_Dark_Blue: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark blue'
      ImageIndex = 64
      OnExecute = actPreset_HslCss_Dark_BlueExecute
    end
    object actPreset_HslCss_Dark_Yellow: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark yellow'
      ImageIndex = 74
      OnExecute = actPreset_HslCss_Dark_YellowExecute
    end
    object actPreset_HslCss_Dark_Cyan: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark cyan'
      ImageIndex = 71
      OnExecute = actPreset_HslCss_Dark_CyanExecute
    end
    object actPreset_HslCss_Dark_Violet: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark violet'
      ImageIndex = 73
      OnExecute = actPreset_HslCss_Dark_VioletExecute
    end
    object actPreset_HslCss_Dark_Pink: TAction
      Category = 'Preset_Dark'
      Caption = 'Dark pink'
      ImageIndex = 72
      OnExecute = actPreset_HslCss_Dark_PinkExecute
    end
    object actPreset_HslCss_Light_Red: TAction
      Category = 'Preset_Light'
      Caption = 'Light red'
      ImageIndex = 60
      OnExecute = actPreset_HslCss_Light_RedExecute
    end
    object actPreset_HslCss_Light_Green: TAction
      Category = 'Preset_Light'
      Caption = 'Light green'
      ImageIndex = 61
      OnExecute = actPreset_HslCss_Light_GreenExecute
    end
    object actPreset_HslCss_Light_Blue: TAction
      Category = 'Preset_Light'
      Caption = 'Light blue'
      ImageIndex = 62
      OnExecute = actPreset_HslCss_Light_BlueExecute
    end
    object actPreset_HslCss_Light_Yellow: TAction
      Category = 'Preset_Light'
      Caption = 'Light yellow'
      ImageIndex = 70
      OnExecute = actPreset_HslCss_Light_YellowExecute
    end
    object actPreset_HslCss_Light_Cyan: TAction
      Category = 'Preset_Light'
      Caption = 'Light cyan'
      ImageIndex = 67
      OnExecute = actPreset_HslCss_Light_CyanExecute
    end
    object actPreset_HslCss_Light_Violet: TAction
      Category = 'Preset_Light'
      Caption = 'Light violet'
      ImageIndex = 69
      OnExecute = actPreset_HslCss_Light_VioletExecute
    end
    object actPreset_HslCss_Light_Pink: TAction
      Category = 'Preset_Light'
      Caption = 'Light pink'
      ImageIndex = 68
      OnExecute = actPreset_HslCss_Light_PinkExecute
    end
    object actPreset_HslCss_Grayscale_VeryDark: TAction
      Category = 'Preset_Grayscale'
      Caption = 'Very dark'
      ImageIndex = 75
      OnExecute = actPreset_HslCss_Grayscale_VeryDarkExecute
    end
    object actPreset_HslCss_Grayscale_Dark: TAction
      Category = 'Preset_Grayscale'
      Caption = 'Dark'
      ImageIndex = 76
      OnExecute = actPreset_HslCss_Grayscale_DarkExecute
    end
    object actPreset_HslCss_Grayscale_Medium: TAction
      Category = 'Preset_Grayscale'
      Caption = 'Medium'
      ImageIndex = 77
      OnExecute = actPreset_HslCss_Grayscale_MediumExecute
    end
    object actPreset_HslCss_Grayscale_Light: TAction
      Category = 'Preset_Grayscale'
      Caption = 'Light'
      ImageIndex = 78
      OnExecute = actPreset_HslCss_Grayscale_LightExecute
    end
    object actPreset_HslCss_Grayscale_VeryLight: TAction
      Category = 'Preset_Grayscale'
      Caption = 'Very light'
      ImageIndex = 79
      OnExecute = actPreset_HslCss_Grayscale_VeryLightExecute
    end
    object actLockUnlockRange_Rgb_Red: TAction
      Caption = 'actLockUnlockRange_Rgb_Red'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_Rgb_RedExecute
    end
    object actLockUnlockRange_Rgb_Green: TAction
      Caption = 'actLockUnlockRange_Rgb_Green'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_Rgb_GreenExecute
    end
    object actLockUnlockRange_Rgb_Blue: TAction
      Caption = 'actLockUnlockRange_Rgb_Blue'
      Hint = 'Lock / unlock range'
      ImageIndex = 63
      OnExecute = actLockUnlockRange_Rgb_BlueExecute
    end
    object actPreset_Rgb_VeryDark: TAction
      Category = 'Preset_RGB'
      Caption = 'Very dark'
      OnExecute = actPreset_Rgb_VeryDarkExecute
    end
    object actPreset_Rgb_Dark: TAction
      Category = 'Preset_RGB'
      Caption = 'Dark'
      OnExecute = actPreset_Rgb_DarkExecute
    end
    object actPreset_Rgb_Medium: TAction
      Category = 'Preset_RGB'
      Caption = 'Medium'
      OnExecute = actPreset_Rgb_MediumExecute
    end
    object actPreset_Rgb_Light: TAction
      Category = 'Preset_RGB'
      Caption = 'Light'
      OnExecute = actPreset_Rgb_LightExecute
    end
    object actPreset_Rgb_VeryLight: TAction
      Category = 'Preset_RGB'
      Caption = 'Very light'
      OnExecute = actPreset_Rgb_VeryLightExecute
    end
    object actSelectAll: TAction
      Caption = 'Select all'
      Hint = 'Select all'
      ImageIndex = 9
      ShortCut = 16449
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
      Caption = 'Remove selected'
      Hint = 'Remove selected'
      ImageIndex = 83
      ShortCut = 46
      OnExecute = actDeleteSelectedExecute
    end
  end
  object popPresets_HslCss_Pastels: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 529
    Top = 305
    object SpTBXItem2: TSpTBXItem
      Action = actPreset_HslCss_Pastels_RedLight
    end
    object SpTBXItem3: TSpTBXItem
      Action = actPreset_HslCss_Pastels_GreenLight
    end
    object SpTBXItem1: TSpTBXItem
      Action = actPreset_HslCss_Pastels_BlueLight
    end
    object SpTBXItem13: TSpTBXItem
      Action = actPreset_HslCss_Pastels_YellowLight
    end
    object SpTBXItem12: TSpTBXItem
      Action = actPreset_HslCss_Pastels_CyanLight
    end
    object SpTBXItem11: TSpTBXItem
      Action = actPreset_HslCss_Pastels_VioletLight
    end
    object SpTBXItem10: TSpTBXItem
      Action = actPreset_HslCss_Pastels_PinkLight
    end
    object SpTBXSeparatorItem1: TSpTBXSeparatorItem
    end
    object SpTBXItem9: TSpTBXItem
      Action = actPreset_HslCss_Pastels_RedDark
    end
    object SpTBXItem8: TSpTBXItem
      Action = actPreset_HslCss_Pastels_GreenDark
    end
    object SpTBXItem7: TSpTBXItem
      Action = actPreset_HslCss_Pastels_BlueDark
    end
    object SpTBXItem17: TSpTBXItem
      Action = actPreset_HslCss_Pastels_YellowDark
    end
    object SpTBXItem16: TSpTBXItem
      Action = actPreset_HslCss_Pastels_CyanDark
    end
    object SpTBXItem15: TSpTBXItem
      Action = actPreset_HslCss_Pastels_VioletDark
    end
    object SpTBXItem14: TSpTBXItem
      Action = actPreset_HslCss_Pastels_PinkDark
    end
  end
  object popPresets_HslCss_Intensive: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 682
    Top = 311
    object SpTBXItem6: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Red
    end
    object SpTBXItem5: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Green
    end
    object SpTBXItem4: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Blue
    end
    object SpTBXItem21: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Yellow
    end
    object SpTBXItem20: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Cyan
    end
    object SpTBXItem19: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Violet
    end
    object SpTBXItem18: TSpTBXItem
      Action = actPreset_HslCss_Intensive_Pink
    end
  end
  object popPresets_HslCss_Dark: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 729
    Top = 247
    object SpTBXItem24: TSpTBXItem
      Action = actPreset_HslCss_Dark_Red
    end
    object SpTBXItem23: TSpTBXItem
      Action = actPreset_HslCss_Dark_Green
    end
    object SpTBXItem22: TSpTBXItem
      Action = actPreset_HslCss_Dark_Blue
    end
    object SpTBXItem28: TSpTBXItem
      Action = actPreset_HslCss_Dark_Yellow
    end
    object SpTBXItem27: TSpTBXItem
      Action = actPreset_HslCss_Dark_Cyan
    end
    object SpTBXItem26: TSpTBXItem
      Action = actPreset_HslCss_Dark_Violet
    end
    object SpTBXItem25: TSpTBXItem
      Action = actPreset_HslCss_Dark_Pink
    end
  end
  object popPresets_HslCss_Light: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 556
    Top = 225
    object SpTBXItem35: TSpTBXItem
      Action = actPreset_HslCss_Light_Red
    end
    object SpTBXItem34: TSpTBXItem
      Action = actPreset_HslCss_Light_Green
    end
    object SpTBXItem33: TSpTBXItem
      Action = actPreset_HslCss_Light_Blue
    end
    object SpTBXItem32: TSpTBXItem
      Action = actPreset_HslCss_Light_Yellow
    end
    object SpTBXItem31: TSpTBXItem
      Action = actPreset_HslCss_Light_Cyan
    end
    object SpTBXItem30: TSpTBXItem
      Action = actPreset_HslCss_Light_Violet
    end
    object SpTBXItem29: TSpTBXItem
      Action = actPreset_HslCss_Light_Pink
    end
  end
  object popPresets_HslCss_Grayscale: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 728
    Top = 186
    object SpTBXItem40: TSpTBXItem
      Action = actPreset_HslCss_Grayscale_VeryDark
    end
    object SpTBXItem39: TSpTBXItem
      Action = actPreset_HslCss_Grayscale_Dark
    end
    object SpTBXItem38: TSpTBXItem
      Action = actPreset_HslCss_Grayscale_Medium
    end
    object SpTBXItem37: TSpTBXItem
      Action = actPreset_HslCss_Grayscale_Light
    end
    object SpTBXItem36: TSpTBXItem
      Action = actPreset_HslCss_Grayscale_VeryLight
    end
  end
  object popPresets_Rgb: TSpTBXPopupMenu
    Left = 581
    Top = 157
    object SpTBXItem45: TSpTBXItem
      Action = actPreset_Rgb_VeryDark
    end
    object SpTBXItem44: TSpTBXItem
      Action = actPreset_Rgb_Dark
    end
    object SpTBXItem43: TSpTBXItem
      Action = actPreset_Rgb_Medium
    end
    object SpTBXItem42: TSpTBXItem
      Action = actPreset_Rgb_Light
    end
    object SpTBXItem41: TSpTBXItem
      Action = actPreset_Rgb_VeryLight
    end
  end
  object popColorList: TSpTBXPopupMenu
    Images = FormMain.pilMain
    Left = 751
    Top = 81
    object SpTBXItem48: TSpTBXItem
      Action = actSelectAll
    end
    object SpTBXItem47: TSpTBXItem
      Action = actInvertSelection
    end
    object SpTBXItem46: TSpTBXItem
      Action = actDeleteSelected
    end
    object SpTBXSeparatorItem2: TSpTBXSeparatorItem
    end
    object SpTBXItem49: TSpTBXItem
      Action = actClearColors
    end
  end
end
