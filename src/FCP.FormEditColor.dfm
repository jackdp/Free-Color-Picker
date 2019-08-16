object FormEditColor: TFormEditColor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FormEditColor'
  ClientHeight = 405
  ClientWidth = 879
  Color = 14342874
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    879
    405)
  PixelsPerInch = 96
  TextHeight = 13
  object pnRgbSliders: TJppSimplePanel
    Left = 306
    Top = 198
    Width = 349
    Height = 99
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    DesignSize = (
      349
      99)
    object lblRgbRed: TLabel
      Left = 44
      Top = 26
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Red:'
    end
    object lblRgbGreen: TLabel
      Left = 33
      Top = 50
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Green:'
    end
    object lblRgbBlue: TLabel
      Left = 42
      Top = 74
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Blue:'
    end
    object lblRgb: TLabel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 347
      Height = 17
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Align = alTop
      AutoSize = False
      Caption = '  RGB - Red, Green, Blue'
      Color = 13224393
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitLeft = 6
      ExplicitTop = 26
    end
    object tbRgbRed: TJPPegtopColorTrackBar
      Left = 131
      Top = 22
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 3
      TrackInnerColor = clRed
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = clMaroon
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = clMaroon
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = clMaroon
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = clMaroon
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 255
      OnScroll = tbRgbRedScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
      ColorRect.NormalBgColor = clRed
      ColorRect.NormalBorderColor = clRed
      ColorRect.HotBgColor = clRed
      ColorRect.HotBorderColor = clRed
      ColorRect.PushedBgColor = clRed
      ColorRect.PushedBorderColor = clRed
      ColorRect.FocusedBgColor = clRed
      ColorRect.FocusedBorderColor = clRed
      ColorRect.Margins.Left = 5
      ColorRect.Margins.Top = 5
      ColorRect.Margins.Right = 5
      ColorRect.Margins.Bottom = 5
    end
    object tbRgbGreen: TJPPegtopColorTrackBar
      Left = 131
      Top = 46
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 4
      TrackInnerColor = 3580979
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = 2917673
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = 2917673
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = 2917673
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = 2917673
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 255
      OnScroll = tbRgbRedScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
      ColorRect.NormalBgColor = 3580979
      ColorRect.NormalBorderColor = 3580979
      ColorRect.HotBgColor = 3580979
      ColorRect.HotBorderColor = 3580979
      ColorRect.PushedBgColor = 3580979
      ColorRect.PushedBorderColor = 3580979
      ColorRect.FocusedBgColor = 3580979
      ColorRect.FocusedBorderColor = 3580979
      ColorRect.Margins.Left = 5
      ColorRect.Margins.Top = 5
      ColorRect.Margins.Right = 5
      ColorRect.Margins.Bottom = 5
    end
    object tbRgbBlue: TJPPegtopColorTrackBar
      Left = 131
      Top = 70
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 5
      TrackInnerColor = 14651661
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = 10840586
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = 10840586
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = 10840586
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = 10840586
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 255
      OnScroll = tbRgbRedScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
      ColorRect.NormalBgColor = 14651661
      ColorRect.NormalBorderColor = 14651661
      ColorRect.HotBgColor = 14651661
      ColorRect.HotBorderColor = 14651661
      ColorRect.PushedBgColor = 14651661
      ColorRect.PushedBorderColor = 14651661
      ColorRect.FocusedBgColor = 14651661
      ColorRect.FocusedBorderColor = 14651661
      ColorRect.Margins.Left = 5
      ColorRect.Margins.Top = 5
      ColorRect.Margins.Right = 5
      ColorRect.Margins.Bottom = 5
    end
    object spedRgbRed: TSpTBXSpinEdit
      Left = 72
      Top = 23
      Width = 52
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnChange = spedRgbRedChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 255.000000000000000000
      OnValueChanged = spedRgbRedValueChanged
    end
    object spedRgbGreen: TSpTBXSpinEdit
      Left = 72
      Top = 47
      Width = 52
      Height = 21
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 1
      OnChange = spedRgbRedChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 255.000000000000000000
      OnValueChanged = spedRgbRedValueChanged
    end
    object spedRgbBlue: TSpTBXSpinEdit
      Left = 72
      Top = 71
      Width = 52
      Height = 21
      Alignment = taCenter
      MaxLength = 3
      TabOrder = 2
      OnChange = spedRgbRedChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 255.000000000000000000
      OnValueChanged = spedRgbRedValueChanged
    end
  end
  object pnHsPickerBg: TJppSimplePanel
    Left = 306
    Top = 5
    Width = 349
    Height = 188
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    Appearance.BackgroundColor = 14869218
    Appearance.BorderColor = 11053224
    object cpHS: TColorPickerHS
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 310
      Height = 176
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 5
      Margins.Bottom = 6
      Align = alClient
      Hue = 0.406810045242309600
      MarkerType = mtCross
      ParentBackground = False
      Saturation = 0.502702713012695300
      SelectedColor = -13726889
      TabOrder = 0
      OnChanged = cpHSChanged
    end
    object LPicker: TLColorPicker
      AlignWithMargins = True
      Left = 324
      Top = 0
      Width = 22
      Height = 188
      Margins.Top = 0
      Margins.Bottom = 0
      HintFormat = 'Luminance: %value'
      Align = alRight
      TabOrder = 1
      OnChange = LPickerChange
      CanDrawArrowPos = False
      Saturation = 212
      Luminance = 106
      SelectedColor = 855508
    end
  end
  object pnHslSliders: TJppSimplePanel
    Left = 306
    Top = 302
    Width = 349
    Height = 99
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    DesignSize = (
      349
      99)
    object lblHslHue: TLabel
      Left = 43
      Top = 26
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hue:'
    end
    object lblHslSat: TLabel
      Left = 48
      Top = 50
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sat:'
    end
    object lblHslLum: TLabel
      Left = 43
      Top = 74
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Lum:'
    end
    object lblHsl: TLabel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 347
      Height = 17
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Align = alTop
      AutoSize = False
      Caption = '  HSL - Hue, Saturation, Luminance'
      Color = 13224393
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitLeft = 3
      ExplicitTop = 4
      ExplicitWidth = 342
    end
    object spedHslHue: TSpTBXSpinEdit
      Left = 72
      Top = 23
      Width = 52
      Height = 21
      Alignment = taCenter
      MaxLength = 3
      TabOrder = 0
      OnChange = spedHslHueChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 239.000000000000000000
      OnValueChanged = spedHslHueValueChanged
    end
    object spedHslSat: TSpTBXSpinEdit
      Left = 72
      Top = 47
      Width = 52
      Height = 21
      Alignment = taCenter
      MaxLength = 3
      TabOrder = 1
      OnChange = spedHslHueChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 240.000000000000000000
      OnValueChanged = spedHslHueValueChanged
    end
    object spedHslLum: TSpTBXSpinEdit
      Left = 72
      Top = 71
      Width = 52
      Height = 21
      Alignment = taCenter
      MaxLength = 3
      TabOrder = 2
      OnChange = spedHslHueChange
      SpinButton.Left = 34
      SpinButton.Top = 0
      SpinButton.Width = 14
      SpinButton.Height = 17
      SpinButton.Align = alRight
      SpinOptions.MaxValue = 240.000000000000000000
      OnValueChanged = spedHslHueValueChanged
    end
    object tbHslHue: TJPPegtopTrackBar
      Left = 131
      Top = 22
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 3
      TrackInnerColor = 6381921
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = 2763306
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = 5257499
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = 3023120
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = 2763306
      ButtonParams.VisualStyle = bvsWin10
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 239
      OnScroll = tbHslHueScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
    end
    object tbHslSat: TJPPegtopTrackBar
      Left = 131
      Top = 46
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 4
      TrackInnerColor = 6381921
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = 2763306
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = 5257499
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = 3023120
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = 2763306
      ButtonParams.VisualStyle = bvsWin10
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 240
      OnScroll = tbHslHueScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
    end
    object tbHslLum: TJPPegtopTrackBar
      Left = 131
      Top = 70
      Width = 210
      Height = 22
      Cursor = crDefault
      TabOrder = 5
      TrackInnerColor = 6381921
      ButtonParams.DefaultDrawing = False
      ButtonParams.Normal.Color = 15856113
      ButtonParams.Normal.ColorTo = 14540253
      ButtonParams.Normal.GradientDirection = gdHorizontal
      ButtonParams.Normal.BorderColor = 10658466
      ButtonParams.Normal.GripColor = 2763306
      ButtonParams.Hot.Color = 16643818
      ButtonParams.Hot.ColorTo = 16639678
      ButtonParams.Hot.GradientDirection = gdHorizontal
      ButtonParams.Hot.BorderColor = 11632444
      ButtonParams.Hot.GripColor = 5257499
      ButtonParams.Pushed.Color = 16180676
      ButtonParams.Pushed.ColorTo = 15981743
      ButtonParams.Pushed.GradientDirection = gdHorizontal
      ButtonParams.Pushed.BorderColor = 5849118
      ButtonParams.Pushed.GripColor = 3023120
      ButtonParams.Disabled.Color = 16053492
      ButtonParams.Disabled.ColorTo = 15724527
      ButtonParams.Disabled.GradientDirection = gdHorizontal
      ButtonParams.Disabled.BorderColor = 11907757
      ButtonParams.Focused.Color = 15856113
      ButtonParams.Focused.ColorTo = 14540253
      ButtonParams.Focused.GradientDirection = gdHorizontal
      ButtonParams.Focused.BorderColor = 10716445
      ButtonParams.Focused.GripColor = 2763306
      ButtonParams.VisualStyle = bvsWin10
      LabelCaption = 'Position: <pos>'
      LabelMode = plmPos
      LabelParam = 1.000000000000000000
      LabelOptions = []
      Max = 240
      OnScroll = tbHslHueScroll
      Anchors = [akLeft, akTop, akRight]
      Position = 0
    end
  end
  object pnRight: TJppSimplePanel
    Left = 660
    Top = 0
    Width = 219
    Height = 405
    Align = alRight
    TabOrder = 2
    Appearance.BackgroundColor = 15395562
    Appearance.BorderColor = 11053224
    Appearance.DrawTopBorder = False
    Appearance.DrawBottomBorder = False
    Appearance.DrawRightBorder = False
    DesignSize = (
      219
      405)
    object pnRgbPercent: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 143
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 4
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      Appearance.BorderStyle = psInsideFrame
      object sbtnSetColor_RgbPercent: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_RgbPercent'
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
        Action = actSetColor_RgbPercent
      end
      object sbtnCopyColor_RgbPercent: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_RgbPercent'
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
        Action = actCopyColor_RgbPercent
      end
      object edRgbPercent: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 36
        EditLabel.Height = 13
        EditLabel.Caption = 'RGB %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
    object pnHslCss: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 173
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 5
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_HslCss: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_HslCss'
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
        Action = actSetColor_HslCss
      end
      object sbtnCopyColor_HslCss: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_HslCss'
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
        Action = actCopyColor_HslCss
      end
      object edHslCss: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 44
        EditLabel.Height = 13
        EditLabel.Caption = 'HSL CSS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
    object pnHtml: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 81
      Width = 218
      Height = 32
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 2
      Appearance.BackgroundColor = 15000804
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_Html: TJppBasicSpeedButton
        Left = 165
        Top = 6
        Width = 24
        Height = 22
        Caption = 'actSetColor_Html'
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
        Action = actSetColor_Html
      end
      object sbtnCopyColor_Html: TJppBasicSpeedButton
        Left = 190
        Top = 6
        Width = 24
        Height = 22
        Caption = 'actCopyColor_Html'
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
        Action = actCopyColor_Html
      end
      object edHtml: TJppEdit
        Left = 66
        Top = 6
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'HTML:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8210045
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        Text = '#FF EE DD'
        Appearance.NormalBgColor = 15985651
        Appearance.NormalTextColor = 8210045
        Appearance.FocusedBgColor = 15589101
        Appearance.FocusedTextColor = 4925771
        Appearance.HotBgColor = 15721199
        Appearance.HotTextColor = 8210045
        TabOnEnter = False
      end
    end
    object pnCmyk: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 233
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 7
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_Cmyk: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_Cmyk'
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
        Action = actSetColor_Cmyk
      end
      object sbtnCopyColor_Cmyk: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_Cmyk'
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
        Action = actCopyColor_Cmyk
      end
      object edCmyk: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'CMYK:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
    object pnPascalHex: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 263
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 8
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_PascalHex: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_PascalHex'
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
        Action = actSetColor_PascalHex
      end
      object sbtnCopyColor_PascalHex: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_PascalHex'
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
        Action = actCopyColor_PascalHex
      end
      object edPascalHex: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'Pascal HEX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        Text = '$00C5F7FE'
        TabOnEnter = False
      end
    end
    object pnPascalInt: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 293
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 9
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_PascalInt: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_PascalInt'
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
        Action = actSetColor_PascalInt
      end
      object sbtnCopyColor_PascalInt: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_PascalInt'
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
        Action = actCopyColor_PascalInt
      end
      object edPascalInt: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Pascal INT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
    object pnCppHex: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 323
      Width = 218
      Height = 32
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 10
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_CppHex: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_CppHex'
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
        Action = actSetColor_CppHex
      end
      object sbtnCopyColor_CppHex: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_CppHex'
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
        Action = actCopyColor_CppHex
      end
      object edCppHex: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'C++ HEX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
    object pnSelectedColorBg: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 19
      Width = 218
      Height = 62
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
      Appearance.BackgroundColor = 15395562
      Appearance.BorderColor = 11053224
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object pnColor: TJppSimplePanel
        AlignWithMargins = True
        Left = 62
        Top = 5
        Width = 152
        Height = 52
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 4
        Margins.Bottom = 5
        Align = alRight
        TabOrder = 0
      end
      object btnColorDialog: TJppPngButton
        Left = 8
        Top = 7
        Width = 46
        Height = 25
        Action = actShowSystemColorDialog
        Caption = '...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00F804FE0BD715F941CE1AF850E110FB30FE00FF01FE01FE01E925
          E231DC3CCF50E330D940FA08F80BFF00FF00FF00FF00FF00FF00FF00FF00FC02
          FE05AE2BF4836A50EAF26455EAFE6455EAFE6455EAFE7969F1D48FA2ABD68FBF
          68FE8FBF68FE8FBF68FE94B56EF2C661B281FD03FD04FF00FF00FE01FF02933A
          F0AF6455EAFE6455EAFE6455EAFE6455EAFE617EF1F857C9FCFD57C9FCFD7DBF
          A1F88FBF68FE8FBF68FE8FBF68FE8FBF68FEB38198ACFF01FE01C221F6636455
          EAFE6455EAFE6455EAFE6455EAFE645FECFA58C5FCFC57CBFDFE57CBFDFE5BC8
          F6FB8BBD78FA8FBF68FE8FBF68FE8FBF68FE8FBF68FED547C65F8342EEC96455
          EAFE6455EAFE6455EAFE6455EAFE6089F2F857CBFDFE57CBFDFE57CBFDFE57CB
          FDFE77C0ADF98FBF68FE8FBF68FE8FBF68FE8FBF68FEA89489C56851EBF66455
          EAFE6455EAFE6455EAFE6455EAFE84A5F4F4BDE0F7F9DAE8F5FADAE8F5FABCE0
          F7F991C7C5F58FBF68FE8FBF68FE8FBF68FE8FBF68FE94B56EF26B4FEAF06455
          EAFE6455EAFE6454E9FD986FC7F8E4C7D8F7F9F4F4FEF9F4F4FEF9F4F4FEF9F4
          F4FEF3DBAEF8C2BD56F890BE67FD8FBF68FE8FBF68FE97B072EB8E3CEFB76455
          EAFE6455EAFE8E69CDF8C08AA6FED8B2C6F9F9F4F4FEF9F4F4FEF9F4F4FEF9F4
          F4FEF1D287F9EDC33FFEB8BC5AF88FBF68FE8FBF68FEB08694B3D516F9446354
          EAFD6855E7FBBB84ACFAC08AA6FEC38EAAFBF3E5ECFAF9F4F4FEF9F4F4FEF7EA
          E1FAEDC348FBEDC33FFEE6BF44FA92BE67FC90BE67FDE230D940FF00FF00B12A
          F47E7D60D9F9C08AA6FEC08AA6FEC08AA6FECE9FBAF9F5EBEFFBF8EEE9FBEFCA
          69FAEDC33FFEEDC33FFEEDC33FFEA7BB61F8C95BB679FF00FF00FF00FF00FF00
          FF00D939D571C58C9AF9C08AA6FDC08AA6FEC189A4FBD29C9EF5E8B869F5ECBF
          42FBEDC33FFEECC140FCE9B849F9E64EB76EFF00FF00FF00FF00FF00FF00FF00
          FF00F71FE032D7A164FED69D68FBD59D6CFBD79E66FBD7A164FED7A164FED89F
          64FBDAA261FBD9A062FBD7A164FEF81DE22EFF00FF00FF00FF00FF00FF00FF00
          FF00FF01FE01DC8A79DAD7A164FED7A164FED7A164FED7A164FED7A164FED7A1
          64FED7A164FED7A164FEDD877BD6FF01FE01FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00F42CD446D79F64FBD7A164FED7A164FED7A164FED7A164FED7A1
          64FED7A164FED79E65FAF42AD643FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00F234CC52D9956EECD7A164FED7A164FED7A164FED7A1
          64FED9946EEBF232CE4FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FC09F60FEF3FC164E75DA494E75DA493EF3F
          C263FD09F60EFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
    object pnSelectedColor_Title: TJppBasicPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 218
      Height = 19
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 0
      Appearance.UpperGradient.SpeedPercent = 100
      Appearance.UpperGradient.ColorFrom = 14145495
      Appearance.UpperGradient.ColorTo = 13224393
      Appearance.BottomGradient.SpeedPercent = 100
      Appearance.BottomGradient.ColorFrom = 15000804
      Appearance.BottomGradient.ColorTo = 14211288
      Appearance.UpperGradientPercent = 100
      Appearance.Borders.Left.Pen.Color = clBtnHighlight
      Appearance.Borders.Right.Pen.Color = clBtnShadow
      Appearance.Borders.Top.Pen.Color = clBtnHighlight
      Appearance.Borders.Bottom.Pen.Color = clBtnShadow
      Appearance.DrawBorder = False
      object lblSelectedColor: TLabel
        Left = 0
        Top = 0
        Width = 74
        Height = 19
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'Selected Color'
        Color = 13224393
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitLeft = 17
        ExplicitTop = 4
        ExplicitHeight = 13
      end
    end
    object btnOk: TJppPngButton
      Left = 137
      Top = 372
      Width = 75
      Height = 25
      Action = actOk
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 11
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
      Left = 48
      Top = 372
      Width = 83
      Height = 25
      Action = actClose
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      ModalResult = 8
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
    object pnRgb: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 113
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 3
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_Rgb: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_Rgb'
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
        Action = actSetColor_Rgb
      end
      object sbtnCopyColor_Rgb: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_Rgb'
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
        Action = actCopyColor_Rgb
      end
      object edRgb: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'RGB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        Text = '255,255,255'
        Appearance.FocusedBgColor = 16639688
        Appearance.HotBgColor = 16707795
        TabOnEnter = False
      end
    end
    object pnHslWin: TJppSimplePanel
      AlignWithMargins = True
      Left = 1
      Top = 203
      Width = 218
      Height = 30
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 6
      Appearance.BackgroundColor = 14803425
      Appearance.BorderColor = 11053224
      Appearance.DrawTopBorder = False
      Appearance.DrawLeftBorder = False
      Appearance.DrawRightBorder = False
      object sbtnSetColor_HslWin: TJppBasicSpeedButton
        Left = 165
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actSetColor_HslWin'
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
        Action = actSetColor_HslWin
      end
      object sbtnCopyColor_HslWin: TJppBasicSpeedButton
        Left = 190
        Top = 4
        Width = 24
        Height = 22
        Caption = 'actCopyColor_HslWin'
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
        Action = actCopyColor_HslWin
      end
      object edHslWin: TJppEdit
        Left = 66
        Top = 4
        Width = 97
        Height = 21
        Alignment = taCenter
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'HSL WIN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
        TabOnEnter = False
      end
    end
  end
  object pnColorList: TJppSimplePanel
    Left = 0
    Top = 0
    Width = 300
    Height = 405
    Align = alLeft
    TabOrder = 4
    Appearance.BorderColor = 11053224
    Appearance.DrawTopBorder = False
    Appearance.DrawBottomBorder = False
    Appearance.DrawLeftBorder = False
    object clbColors: TJppColorListBox
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 299
      Height = 215
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alTop
      ItemHeight = 15
      TabOrder = 0
      OnClick = clbColorsClick
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
      Appearance.ColorRectangle.PaddingTop = 0
      Appearance.ColorRectangle.PaddingBottom = 0
      Appearance.ColorRectangle.HideTopBorder = True
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
  object Actions: TActionList
    Images = FormMain.pilMain
    Left = 486
    Top = 126
    object actEsc: TAction
      Caption = 'actEsc'
      ShortCut = 27
      OnExecute = actEscExecute
    end
    object actSetColor_Rgb: TAction
      Caption = 'actSetColor_Rgb'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_RgbExecute
    end
    object actCopyColor_Rgb: TAction
      Caption = 'actCopyColor_Rgb'
      ImageIndex = 22
      OnExecute = actCopyColor_RgbExecute
    end
    object actSetColor_RgbPercent: TAction
      Caption = 'actSetColor_RgbPercent'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_RgbPercentExecute
    end
    object actCopyColor_RgbPercent: TAction
      Caption = 'actCopyColor_RgbPercent'
      ImageIndex = 22
      OnExecute = actCopyColor_RgbPercentExecute
    end
    object actSetColor_HslCss: TAction
      Caption = 'actSetColor_HslCss'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_HslCssExecute
    end
    object actCopyColor_HslCss: TAction
      Caption = 'actCopyColor_HslCss'
      ImageIndex = 22
      OnExecute = actCopyColor_HslCssExecute
    end
    object actSetColor_HslWin: TAction
      Caption = 'actSetColor_HslWin'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_HslWinExecute
    end
    object actCopyColor_HslWin: TAction
      Caption = 'actCopyColor_HslWin'
      ImageIndex = 22
      OnExecute = actCopyColor_HslWinExecute
    end
    object actSetColor_Html: TAction
      Caption = 'actSetColor_Html'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_HtmlExecute
    end
    object actCopyColor_Html: TAction
      Caption = 'actCopyColor_Html'
      ImageIndex = 22
      OnExecute = actCopyColor_HtmlExecute
    end
    object actSetColor_Cmyk: TAction
      Caption = 'actSetColor_Cmyk'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_CmykExecute
    end
    object actCopyColor_Cmyk: TAction
      Caption = 'actCopyColor_Cmyk'
      ImageIndex = 22
      OnExecute = actCopyColor_CmykExecute
    end
    object actSetColor_PascalHex: TAction
      Caption = 'actSetColor_PascalHex'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_PascalHexExecute
    end
    object actCopyColor_PascalHex: TAction
      Caption = 'actCopyColor_PascalHex'
      ImageIndex = 22
      OnExecute = actCopyColor_PascalHexExecute
    end
    object actSetColor_PascalInt: TAction
      Caption = 'actSetColor_PascalInt'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_PascalIntExecute
    end
    object actCopyColor_PascalInt: TAction
      Caption = 'actCopyColor_PascalInt'
      ImageIndex = 22
      OnExecute = actCopyColor_PascalIntExecute
    end
    object actSetColor_CppHex: TAction
      Caption = 'actSetColor_CppHex'
      Hint = 'Set color'
      ImageIndex = 1
      OnExecute = actSetColor_CppHexExecute
    end
    object actCopyColor_CppHex: TAction
      Caption = 'actCopyColor_CppHex'
      ImageIndex = 22
      OnExecute = actCopyColor_CppHexExecute
    end
    object actShowSystemColorDialog: TAction
      Caption = '...'
      Hint = 'Show standard system dialog for choosing color...'
      ImageIndex = 23
      OnExecute = actShowSystemColorDialogExecute
    end
    object actOk: TAction
      Caption = 'OK'
      ImageIndex = 1
      OnExecute = actOkExecute
    end
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actF3: TAction
      Caption = 'actF3'
      ShortCut = 114
      OnExecute = actF3Execute
    end
  end
  object dlgColor: TColorDialog
    Options = [cdFullOpen, cdAnyColor]
    Left = 384
    Top = 129
  end
end
