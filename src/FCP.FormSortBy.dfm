object FormSortBy: TFormSortBy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormSortBy'
  ClientHeight = 268
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Top = 227
    Width = 307
    Height = 41
    Align = alBottom
    TabOrder = 0
    Appearance.BackgroundColor = 14342874
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    DesignSize = (
      307
      41)
    object btnSort: TJppPngButton
      Left = 209
      Top = 9
      Width = 90
      Height = 25
      Action = actSort
      Anchors = [akTop, akRight]
      Caption = 'Sort'
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
    object btnClose: TJppPngButton
      Left = 113
      Top = 9
      Width = 90
      Height = 25
      Action = actClose
      Anchors = [akTop, akRight]
      Caption = 'Close'
      ModalResult = 8
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
  object pnSortBy: TJppSimplePanel
    Left = 0
    Top = 0
    Width = 307
    Height = 175
    Align = alTop
    TabOrder = 1
    Appearance.BackgroundColor = 15395562
    Appearance.DrawTopBorder = False
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    object lblSortBy: TLabel
      Left = 7
      Top = 5
      Width = 39
      Height = 13
      Caption = 'Sort by:'
    end
    object rbColorName: TRadioButton
      Left = 18
      Top = 25
      Width = 147
      Height = 17
      Caption = 'Color name'
      TabOrder = 0
    end
    object rbColorNo: TRadioButton
      Left = 18
      Top = 44
      Width = 147
      Height = 17
      Caption = 'Color No'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbColorValue: TRadioButton
      Left = 18
      Top = 63
      Width = 147
      Height = 17
      Caption = 'Color value'
      TabOrder = 2
    end
    object rbRgbRed: TRadioButton
      Left = 18
      Top = 90
      Width = 147
      Height = 17
      Caption = 'RGB - Red'
      TabOrder = 3
    end
    object rbRgbGreen: TRadioButton
      Left = 18
      Top = 109
      Width = 147
      Height = 17
      Caption = 'RGB - Green'
      TabOrder = 4
    end
    object rbRgbBlue: TRadioButton
      Left = 18
      Top = 128
      Width = 147
      Height = 17
      Caption = 'RGB - Blue'
      TabOrder = 5
    end
    object rbCmykCyan: TRadioButton
      Left = 166
      Top = 25
      Width = 139
      Height = 17
      Caption = 'CMYK - Cyan'
      TabOrder = 6
    end
    object rbCmykMagenta: TRadioButton
      Left = 166
      Top = 44
      Width = 139
      Height = 17
      Caption = 'CMYK - Magenta'
      TabOrder = 7
    end
    object rbCmykYellow: TRadioButton
      Left = 166
      Top = 63
      Width = 139
      Height = 17
      Caption = 'CMYK - Yellow'
      TabOrder = 8
    end
    object rbCmykBlack: TRadioButton
      Left = 166
      Top = 82
      Width = 139
      Height = 17
      Caption = 'CMYK - Black'
      TabOrder = 9
    end
    object rbHslHue: TRadioButton
      Left = 166
      Top = 109
      Width = 139
      Height = 17
      Caption = 'HSL - Hue'
      TabOrder = 10
    end
    object rbHslSat: TRadioButton
      Left = 166
      Top = 128
      Width = 139
      Height = 17
      Caption = 'HSL - Saturation'
      TabOrder = 11
    end
    object rbRgbSum: TRadioButton
      Left = 18
      Top = 147
      Width = 147
      Height = 17
      Caption = 'RGB - Sum'
      TabOrder = 12
    end
    object rbHslLum: TRadioButton
      Left = 166
      Top = 147
      Width = 139
      Height = 17
      Caption = 'HSL - Luminance'
      TabOrder = 13
    end
  end
  object pnSortDirection: TJppSimplePanel
    Left = 0
    Top = 175
    Width = 307
    Height = 44
    Align = alTop
    TabOrder = 2
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    Appearance.DrawRightBorder = False
    object lblSortDirection: TLabel
      Left = 7
      Top = 6
      Width = 67
      Height = 13
      Caption = 'Sorting mode:'
    end
    object rbAscending: TRadioButton
      Left = 31
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Ascending'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbDescending: TRadioButton
      Left = 161
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Descending'
      TabOrder = 1
    end
  end
  object Actions: TActionList
    Images = FormMain.pilMain
    Left = 104
    Top = 45
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actSort: TAction
      Caption = 'Sort'
      ImageIndex = 36
      OnExecute = actSortExecute
    end
  end
end
