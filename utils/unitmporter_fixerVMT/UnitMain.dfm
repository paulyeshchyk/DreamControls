object fmMain: TfmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Fix dreamControls importFiles'
  ClientHeight = 266
  ClientWidth = 401
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
  object PathEdit: TcxButtonEdit
    Left = 8
    Top = 31
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = PathEditPropertiesButtonClick
    TabOrder = 0
    Text = 'D:\testDream'
    Width = 385
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1089' '#1092#1072#1081#1083#1072#1084#1080' '#1080#1084#1087#1086#1088#1090#1072' DreamControls'
  end
  object btnGO: TcxButton
    Left = 136
    Top = 60
    Width = 112
    Height = 25
    Caption = 'Fix'#39'em all!!'
    TabOrder = 2
    OnClick = btnGOClick
  end
  object cxMemo1: TcxMemo
    Left = 0
    Top = 120
    Align = alBottom
    Lines.Strings = (
      #1059#1090#1080#1083#1080#1090#1072' '#1087#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1072' '#1076#1083#1103' '#1080#1089#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1080#1084#1087#1086#1088#1090#1085#1099#1093' '#1092#1072#1081#1083#1086#1074' '
      'DreamControls '#1076#1083#1103' DelphiXE.'
      #1042#1085#1086#1089#1080#1090' '#1089#1083#1077#1076#1091#1102#1097#1077#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1077':'
      #1041#1099#1083#1086' ('#1085#1077' '#1088#1072#1073#1086#1090#1072#1077#1090'):'
      
        'RegRegisterMethod(TCustomClientDataSet,'#39'FindKey'#39',TypeInfo(_T62),' +
        '['
      '  TypeInfoArrayOfConst,TypeInfo(Boolean)], pointer(768));'
      #1057#1090#1072#1083#1086' ('#1088#1072#1073#1086#1090#1072#1077#1090'):'
      
        'RegRegisterMethod(TCustomClientDataSet,'#39'FindKey'#39',TypeInfo(_T62),' +
        '['
      '  TypeInfoArrayOfConst,TypeInfo(Boolean)], Addr'
      '(TCustomClientDataSet.FindKey));'
      '')
    Properties.ReadOnly = True
    Style.Color = clBtnFace
    TabOrder = 3
    Height = 146
    Width = 401
  end
  object ProgressLabel: TcxLabel
    Left = 8
    Top = 97
    Caption = 'ProgressLabel'
    Visible = False
  end
  object shell: TcxShellBrowserDialog
    Root.BrowseFolder = bfDrives
    Left = 320
    Top = 40
  end
end
