object fmElectedObjects: TfmElectedObjects
  Left = 184
  Top = 158
  Width = 436
  Height = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 370
    Height = 269
    Align = alClient
    Style = bsRaised
  end
  object ListObjects: TListView
    Left = 0
    Top = 0
    Width = 370
    Height = 269
    Align = alClient
    Color = clBtnFace
    Columns = <
      item
        Caption = #1048#1084#1103' '#1086#1073#1098#1077#1082#1090#1072
        Width = 360
      end>
    ColumnClick = False
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194304
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HideSelection = False
    RowSelect = True
    ParentFont = False
    PopupMenu = Popup
    ShowColumnHeaders = False
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = ListObjectsDblClick
    OnEdited = ListObjectsEdited
    OnDragDrop = ListObjectsDragDrop
    OnDragOver = ListObjectsDragOver
  end
  object Panel1: TPanel
    Left = 370
    Top = 0
    Width = 50
    Height = 269
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object sbRemove: TRxSpeedButton
      Left = 8
      Top = 8
      Width = 36
      Height = 36
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
        FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
        800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
        800000800000008080008000000080008000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00130707070707
        0707070707070707070707070707070707070707070707070707070707070707
        0707070707070700000000000007070707070707070707070707070707070707
        0707070700000007070707070700000007070707070707070707070707070707
        0707000007070700000707000007070700000707070707070707070707070707
        0700000707070707070000070707070707000007070707070707070707070707
        0700070000070700000707000007070000070007070707070707070707070707
        070007070700000F070F07070700000707070007070707070707070707070707
        0700070707000700000707000007000707070007070707070707070707070707
        000700000007070F0700000F070F070000000700070707070707070707070707
        0007070007000F0700070F000F07000700070700070707070707070707070707
        00070007070F0000070F070F0000070F07000700070707070707070707070707
        000007070F07000700070F000F000F070F070000070707070707070707070700
        000700000700070F0700000F070F000F00000700000707070707070707070700
        0707070700070F070F0000070F070F000F070707000707070707070707070700
        000007000700000F000F07000700000F00070000000707070707070707070700
        070700070F070F000F070F0700070F070F000707000707070707070707070000
        07000700070F000F000F07000F00070F00070007000007070707070707070007
        0007070F0000000000000000000000000F070700070007070707070707070007
        00070000000F070F070F070F000F070000000700070007070707070707070000
        00000F070F070F070F070F0700070F0700070000000007070707070707000007
        0000070F070F070F070F070F000F070F00000707000000070707070707000700
        00070F070F070F070F070F000F070F0700070007000700070707070707000007
        000F070F070F070F070F0700070F070007070000000000070707070707070000
        00070F070F070F070F070F000F070F0007000007000007070707070707070700
        070F070F070F070F070F000F070F070000070000000707070707070707070700
        0F070F070F070F070F0700070F07000700000707070707070707070707070700
        00000000000000000000000F070F000707070707070707070707070707070707
        0707000000070F070F070F070F07000707070707070707070707070707070707
        0707070707000000070F070F0700070707070707070707070707070707070707
        0707070707070707000000070F00070707070707070707070707070707070707
        0707070707070707070707000000070707070707070707070707070707070707
        0707070707070707070707070707070707070707070707070707}
      Style = bsWin31
      OnClick = sbRemoveClick
    end
  end
  object Popup: TPopupMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Add object'
      OnClick = N1Click
    end
    object N2: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Remove'
      OnClick = N2Click
    end
  end
end
