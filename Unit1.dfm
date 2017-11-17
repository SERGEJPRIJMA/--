object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 431
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 480
    Top = 116
    Width = 9
    Height = 13
    Caption = 'A'
  end
  object Label2: TLabel
    Left = 480
    Top = 188
    Width = 9
    Height = 13
    Caption = 'B'
  end
  object Edit1: TEdit
    Left = 517
    Top = 100
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 517
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 517
    Top = 169
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 517
    Top = 196
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
  end
  object Chart1: TChart
    Left = 0
    Top = -6
    Width = 369
    Height = 257
    Title.Text.Strings = (
      'TChart')
    TabOrder = 4
    OnMouseMove = Chart1MouseMove
    ColorPaletteIndex = 13
  end
  object Button2: TButton
    Left = 436
    Top = 280
    Width = 157
    Height = 40
    Caption = #1055#1077#1095#1072#1090#1100' '#1092#1080#1075#1091#1088#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 80
    Top = 280
    Width = 185
    Height = 40
    Caption = #1055#1077#1095#1072#1090#1100' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1092#1086#1088#1084#1099
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 269
    Top = 280
    Width = 161
    Height = 40
    Caption = #1055#1077#1095#1072#1090#1100' '#1072#1074#1090#1086#1073#1080#1086#1075#1088#1072#1092#1080#1080
    TabOrder = 7
    OnClick = Button3Click
  end
end
