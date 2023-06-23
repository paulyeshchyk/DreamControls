object OPPNewObject_Form: TOPPNewObject_Form
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1086#1073#1100#1077#1082#1090#1072
  ClientHeight = 171
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 132
    Width = 279
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 200
      Top = 6
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 119
      Top = 6
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 279
    Height = 132
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 120
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 113
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1084#1086#1076#1091#1083#1103
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 115
      Height = 13
      Caption = #1056#1091#1089#1089#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object ENaim: TEdit
      Left = 3
      Top = 24
      Width = 275
      Height = 21
      TabOrder = 0
    end
    object ERus_Naim: TEdit
      Left = 3
      Top = 72
      Width = 275
      Height = 21
      TabOrder = 1
    end
    object Is_Task: TCheckBox
      Left = 3
      Top = 97
      Width = 272
      Height = 17
      Caption = #1071#1074#1083#1103#1077#1090#1089#1103' '#1079#1072#1076#1072#1095#1077#1081
      TabOrder = 2
    end
  end
end
