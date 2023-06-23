object EditForm: TEditForm
  Left = 194
  Top = 119
  HelpContext = 53000
  Caption = 'EditForm'
  ClientHeight = 527
  ClientWidth = 721
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  ParentFont = True
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0088800008008880000000000000000008000777008700088800000000000000
    80077870FF0877F000888800000000880778F70F7FF08777FF00008880000880
    788F8707F7FF08777FFFFF00088008078FF870777F7FF08777F7FFFFF0080078
    FF8870F777F77F08777FFF7FFFF0007888770F7F777F7FF08777F7FF7FF00077
    7700F7F7F777F77F0877F7F7FF00000000FF7FF77F777F7FF0877FFFFF000000
    FFF7FFF7F7F777F7810877F7F00000080FFFFF7FF77F77701110877FF000000F
    80FF77FFF7F7F71711180877000000F7F80FFFFF7FFF0171787FF087000000FF
    FF80F77FFF80111777F77F08000000F77FF80FFFF011118F777F7FF0000000FF
    FF7F8080011118F7F777F7FF000000FF7FFF780791118FFF7F777F77F0000FFF
    F77F7F807988FFF7F7F777F7FF000FFFFFFFF7F808FFFFF77F7F777F7FF00FCC
    CFFFFFFF80FFFF7FFFF7F777FF000FCCCCCCCFFFF80F77FFFF7F7F7770000FCC
    CCCCCF8FFF80FFFFF7FFF7F700000FCCCCCCCFF0F8F80FF77FFF7F7700000FCC
    CCCCCF87FF0F80FFFFFF7FF000000FCCCCCCCFF8F0FF780FF777FF7000000FFF
    CCCCCF00F8FF8F80FFFFF7000000000FFFFFFFFFF80FF0F80FFF700000000000
    0000FFFFFFFF80FF8000000000000000000000000FFFFFF08F00000000000000
    00000000000000FFFF000000000000000000000000000000000000000000FC00
    1FFFF80003FFF000003FC0000007800000018000000080000000800000008000
    0001C0000001E0000003C0000003C0000007800000078000000F8000000F8000
    0007800000030000000100000000000000010000000300000007000000070000
    000F0000000F0000001F0000003FE000007FFF0001FFFFF801FFFFFFC3FF}
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnMouseDown = MemoMouseDown
  OnMouseMove = MemoMouseMove
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 508
    Width = 721
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object TabControl: TcxTabControl
    Left = 0
    Top = 0
    Width = 721
    Height = 508
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 1
    TabStop = False
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    OnChange = TabControlChange
    OnChanging = TabControlChanging
    OnDragDrop = TabControlDragDrop
    OnDragOver = TabControlDragOver
    OnMouseDown = TabControlMouseDown
    ClientRectBottom = 504
    ClientRectLeft = 4
    ClientRectRight = 717
    ClientRectTop = 4
    object PC: TcxPageControl
      Left = 4
      Top = 4
      Width = 713
      Height = 500
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = CodeSheet
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      Properties.TabPosition = tpBottom
      LookAndFeel.Kind = lfUltraFlat
      OnChange = PCChange
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 719
      ExplicitHeight = 506
      ClientRectBottom = 480
      ClientRectRight = 713
      ClientRectTop = 0
      object CodeSheet: TcxTabSheet
        Caption = 'Code'
        ImageIndex = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object DesignSheet: TcxTabSheet
        Caption = 'Design'
        ImageIndex = 1
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 205
    Top = 350
    object PopupClosePage: TMenuItem
      Caption = '&Close Page'
      ShortCut = 16499
      OnClick = PopupClosePageClick
    end
    object PopupSave: TMenuItem
      Caption = '&Save'
      ShortCut = 16467
      OnClick = PopupSaveClick
    end
    object OpenFileatCursor1: TMenuItem
      Caption = 'Open &File at Cursor'
      Enabled = False
      ShortCut = 16397
    end
    object PopupNewEditWindow: TMenuItem
      Caption = '&New Edit Window'
    end
    object BrowseSymbolatCursor1: TMenuItem
      Caption = '&Browse Symbol at Cursor'
      Enabled = False
      Visible = False
    end
    object TopicSearch1: TMenuItem
      Caption = 'Topic &Search'
      Enabled = False
      ShortCut = 112
      Visible = False
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object PopupCut: TMenuItem
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      Enabled = False
      ShortCut = 16472
    end
    object PopupCopy: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      ShortCut = 16451
    end
    object PopupPaste: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Enabled = False
      ShortCut = 16470
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object PopupSearch: TMenuItem
      Caption = #1053#1072#1081#1090#1080' ...'
      Enabled = False
      ShortCut = 16454
    end
    object PopupReplace: TMenuItem
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100' ...'
      Enabled = False
      ShortCut = 16466
    end
    object PopupSearchAgain: TMenuItem
      Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1100' '#1087#1086#1080#1089#1082
      Enabled = False
      ShortCut = 114
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PopupGoToLine: TMenuItem
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1090#1088#1086#1082#1077' ...'
      Enabled = False
      ShortCut = 32839
    end
    object ToggleBreakpoint1: TMenuItem
      Caption = 'Toggle Brea&kpoint'
      Enabled = False
      ShortCut = 16503
      Visible = False
      OnClick = ToggleBreakpoint1Click
    end
    object RuntoCursor1: TMenuItem
      Caption = 'R&un to Cursor'
      Enabled = False
      ShortCut = 115
      Visible = False
    end
    object EvaluateModify1: TMenuItem
      Caption = '&Evaluate/Modify...'
      Enabled = False
      ShortCut = 16499
      Visible = False
    end
    object AddWatchatCursor1: TMenuItem
      Caption = '&Add Watch at Cursor...'
      Enabled = False
      ShortCut = 16502
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
      Visible = False
    end
    object ViewasForm1: TMenuItem
      Caption = '&View as Form'
      Enabled = False
      ShortCut = 32891
      Visible = False
    end
    object ReadOnly1: TMenuItem
      Caption = 'Read &Only'
      Enabled = False
      Visible = False
    end
    object PopupMessageView: TMenuItem
      Caption = '&Message View'
      Enabled = False
      Visible = False
    end
    object N3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Properties1: TMenuItem
      Caption = 'P&roperties'
      Enabled = False
      Visible = False
    end
  end
  object ActionList: TActionList
    Left = 384
    Top = 208
    object ExpandPropAction: TAction
      Caption = 'ExpandPropAction'
      ShortCut = 16416
      OnExecute = ExpandPropActionExecute
    end
    object ActionTab: TAction
      Caption = 'ActionTab'
      OnExecute = ActionTabExecute
    end
    object CommentBlock: TAction
      Caption = 'CommentBlock'
      ShortCut = 16495
      OnExecute = CommentBlockExecute
    end
    object HelpAction: TAction
      Caption = 'HelpAction'
      ShortCut = 112
      OnExecute = HelpActionExecute
    end
    object ShowParamsActions: TAction
      ShortCut = 24608
      OnExecute = ShowParamsActionsExecute
    end
    object SDKHelpAction: TAction
      Caption = 'SDKHelp'
      ShortCut = 16496
      OnExecute = SDKHelpActionExecute
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 272
    Top = 288
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 280
    Top = 368
    object Popup2Close: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 16499
    end
    object Popup2Save: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ShortCut = 16467
    end
    object Popup2CloseAllButThis: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1074#1089#1077' '#1082#1088#1086#1084#1077' '#1101#1090#1086#1081' '#1089#1090#1088#1072#1085#1080#1094#1099
      OnClick = Popup2CloseAllButThisClick
    end
    object btnOpenRecent: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1082#1088#1099#1090#1091#1102' '#1074#1082#1083#1072#1076#1082#1091
      ShortCut = 24660
      OnClick = btnOpenRecentClick
    end
  end
end
