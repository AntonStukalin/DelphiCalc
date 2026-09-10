object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 597
  ClientWidth = 480
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object b7: TButton
    Left = 8
    Top = 150
    Width = 105
    Height = 105
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = NumberButtonClick
  end
  object b8: TButton
    Left = 119
    Top = 150
    Width = 105
    Height = 105
    Caption = '8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = NumberButtonClick
  end
  object b9: TButton
    Left = 230
    Top = 150
    Width = 105
    Height = 105
    Caption = '9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = NumberButtonClick
  end
  object b4: TButton
    Left = 8
    Top = 261
    Width = 105
    Height = 105
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = NumberButtonClick
  end
  object b5: TButton
    Left = 119
    Top = 261
    Width = 105
    Height = 105
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = NumberButtonClick
  end
  object b6: TButton
    Left = 230
    Top = 261
    Width = 105
    Height = 105
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = NumberButtonClick
  end
  object b1: TButton
    Left = 8
    Top = 372
    Width = 105
    Height = 105
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = NumberButtonClick
  end
  object b2: TButton
    Left = 119
    Top = 372
    Width = 105
    Height = 105
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = NumberButtonClick
  end
  object b3: TButton
    Left = 230
    Top = 372
    Width = 105
    Height = 105
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = NumberButtonClick
  end
  object bPlus: TButton
    Tag = 1
    Left = 366
    Top = 150
    Width = 105
    Height = 105
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = OpButtonClick
  end
  object bSubstract: TButton
    Tag = 2
    Left = 366
    Top = 261
    Width = 105
    Height = 105
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = OpButtonClick
  end
  object bMultiply: TButton
    Tag = 3
    Left = 366
    Top = 372
    Width = 105
    Height = 105
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = OpButtonClick
  end
  object bResult: TButton
    Left = 119
    Top = 483
    Width = 216
    Height = 105
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = bResultClick
  end
  object b0: TButton
    Left = 8
    Top = 483
    Width = 105
    Height = 105
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = NumberButtonClick
  end
  object bDivide: TButton
    Tag = 4
    Left = 366
    Top = 483
    Width = 105
    Height = 105
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = OpButtonClick
  end
  object eInput: TEdit
    Left = 142
    Top = 8
    Width = 330
    Height = 128
    Alignment = taCenter
    AutoSize = False
    TabOrder = 15
  end
  object bClear: TButton
    Left = 8
    Top = 8
    Width = 128
    Height = 128
    Caption = 'Clear'
    TabOrder = 16
    OnClick = bClearClick
  end
end
