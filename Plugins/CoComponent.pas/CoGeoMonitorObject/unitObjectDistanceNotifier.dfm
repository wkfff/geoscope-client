object fmObjectDistanceNotifier: TfmObjectDistanceNotifier
  Left = 512
  Top = 235
  Width = 538
  Height = 579
  Caption = 'Object distance  notifier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lvNotifierItems: TListView
    Left = 0
    Top = 0
    Width = 522
    Height = 469
    Align = alClient
    Columns = <
      item
        Caption = 'State'
        Width = 100
      end
      item
        Caption = 'Object name'
        Width = 300
      end
      item
        Caption = 'Object state'
        Width = 100
      end>
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GridLines = True
    HideSelection = False
    LargeImages = lvNotifierItems_ImageList
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = PopupMenu
    SmallImages = lvNotifierItems_ImageList
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = lvNotifierItemsClick
    OnDblClick = lvNotifierItemsDblClick
    OnDragDrop = lvNotifierItemsDragDrop
    OnDragOver = lvNotifierItemsDragOver
  end
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 522
    Height = 72
    Align = alBottom
    TabOrder = 1
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 25
      Height = 17
      Picture.Data = {
        07544269746D6170B6040000424DB60400000000000036000000280000001800
        0000100000000100180000000000800400000000000000000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDEDE6058600000
        00000000000000000000000000605860DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDEDE
        18081800160000D70000FF0000FF0000FF0000D700001600180818DEDEDEC0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0D2D2D2605860000E0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        000E00605860D2D2D2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0A2A2A200000000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF000000009C9C9CC6C6C6C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C066566600840000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF00008C00585060D0D8D8C4CCCCC4
        CCCCC4CCCCC4CCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06C5C6C007400
        00FF0000FF0000FF0000FF00505F00486F00486F00486F004877004232007222
        2AA25A5A9E5A5AA060609E5A5A984848C4CCCCC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C06C5C6C00740000FF0000FF0000FF0000FF00505F00486F00486F00486F00
        48770042320072222AA460608A1E1E7200008818189A4E4EC4CCCCC0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C066566600840000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF00008C00585060D2DEDEB09090B29696C8D8D8C4CCCC
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A2A2A200000000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF000000009C9C9CC6C6C6C2C6C6C2
        C6C6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D2D2D2605860
        000E0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000E00605860D2D2
        D2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0DEDEDE18081800160000D70000FF0000FF0000FF0000D700001600
        180818DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDEDE60586000000000000000000000
        0000000000605860DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8D8
        D8D8D8D8D8D8D8D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0}
      Transparent = True
    end
    object Label1: TLabel
      Left = 40
      Top = 9
      Width = 96
      Height = 16
      Caption = '"Out" notification'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Image2: TImage
      Left = 160
      Top = 8
      Width = 25
      Height = 17
      Picture.Data = {
        07544269746D6170B6040000424DB60400000000000036000000280000001800
        0000100000000100180000000000800400000000000000000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDEDE60585800
        0000000000000000000000000000605858DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDE
        DE18080800161600D7D700FFFF00FFFF00FFFF00D7D7001616180808DEDEDEC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0D2D2D2605858000E0E00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF000E0E605858D2D2D2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C6C6C69C9C9C00000000FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF000000A2A2A2C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C4CCCCC4CCCCC4CCCCC4CCCCD0D8D8585050008C8C00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF008484665656C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C4CCCC9848489C54549C54549C5454A25A5A7222224232
        32487777447777407F7F447777505F5F00FFFF00FFFF00FFFF00FFFF0074746C
        5C5CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C4CCCC9848489C54549C54549C5454
        A25A5A722222423232447F7F6C28289C00007020204C676700FFFF00FFFF00FF
        FF00FFFF0074746C5C5CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C4CCCCC4
        CCCCC4CCCCC4CCCCD0D8D8585050008C8C00FFFF20BFBF1CC7C700FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF008484665656C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C6C6C69C9C9C00000000FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000A2A2A2C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D2D2D26058
        58000E0E00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000E0E605858D2
        D2D2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DEDEDE18080800161600D7D700FFFF00FFFF00FFFF00D7D70016
        16180808DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DEDEDE605858000000000000000000
        000000000000605858DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8
        D8D8D8D8D8D8D8D8D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0}
      Transparent = True
    end
    object Label2: TLabel
      Left = 192
      Top = 9
      Width = 86
      Height = 16
      Caption = '"In" notification'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Image3: TImage
      Left = 296
      Top = 8
      Width = 25
      Height = 17
      Picture.Data = {
        07544269746D6170B6040000424DB60400000000000036000000280000001800
        0000100000000100180000000000800400000000000000000000000000000000
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8D8D8D8D8D8D8D8D8D8D8D8D8
        D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCCCCCD8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0DEDEDE6058600000000000
        00000000000000000000605860DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0DEDEDE60
        5858000000000000000000000000000000605858DEDEDEC0C0C0DEDEDE180818
        00160000D70000FF0000FF0000FF0000D700001600180818DEDEDEC0C0C0C0C0
        C0DEDEDE18080800161600D7D700FFFF00FFFF00FFFF00D7D7001616180808DE
        DEDE6C646C000E0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000E00
        605860D2D2D2D2D2D2605858000E0E00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF000E0E6C646400000000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF00000000A2A2A2A2A2A200000000FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00000000800000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF00008C00645C6C645C5C008C8C00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00808000700000FF00
        00FF0000FF0000FF00505F00486F00486F00486F004877004232007828307828
        28423232487777447777407F7F447777505F5F00FFFF00FFFF00FFFF00FFFF00
        707000700000FF0000FF0000FF0000FF00505F00486F00486F00486F00487700
        423200782830782828423232447F7F6C28289C00007020204C676700FFFF00FF
        FF00FFFF00FFFF00707000800000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF00008C00645C6C645C5C008C8C00FFFF20BFBF1CC7C700FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00808000000000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF00000000A2A2A2A2A2A200000000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000006C646C000E00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00000E00605860D2D2D2D2D2
        D2605858000E0E00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000E0E6C
        6464DEDEDE18081800160000D70000FF0000FF0000FF0000D700001600180818
        DEDEDEC0C0C0C0C0C0DEDEDE18080800161600D7D700FFFF00FFFF00FFFF00D7
        D7001616180808DEDEDEC0C0C0DEDEDE60586000000000000000000000000000
        0000605860DEDEDEC0C0C0C0C0C0C0C0C0C0C0C0DEDEDE605858000000000000
        000000000000000000605858DEDEDEC0C0C0C0C0C0C0C0C0CCCCCCD8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CC
        CCCCD8D8D8D8D8D8D8D8D8D8D8D8D8D8D8CCCCCCC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0}
      Transparent = True
    end
    object Label3: TLabel
      Left = 328
      Top = 9
      Width = 145
      Height = 16
      Caption = '"Out" and "In" notification'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 32
      Width = 513
      Height = 1
    end
    object bbShowEventsProcessor: TBitBtn
      Left = 136
      Top = 40
      Width = 259
      Height = 25
      Caption = 'Show events processor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bbShowEventsProcessorClick
    end
  end
  object Updater: TTimer
    OnTimer = UpdaterTimer
    Left = 104
    Top = 40
  end
  object lvNotifierItems_ImageList: TImageList
    Width = 24
    Left = 200
    Top = 40
    Bitmap = {
      494C010103000400040018001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001000000001002000000000000018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800CCCCCC000000000000000000000000000000000000000000CCCCCC00D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800CCCCCC0000000000000000000000
      0000000000000000000000000000CCCCCC00D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE006058
      6000000000000000000000000000000000000000000060586000DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE0060585800000000000000000000000000000000000000
      000060585800DEDEDE00000000000000000000000000DEDEDE00605860000000
      00000000000000000000000000000000000060586000DEDEDE00000000000000
      00000000000000000000DEDEDE00605858000000000000000000000000000000
      00000000000060585800DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00180818000016
      000000D7000000FF000000FF000000FF000000D700000016000018081800DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00180808000016160000D7D70000FFFF0000FFFF0000FFFF0000D7
      D7000016160018080800DEDEDE0000000000DEDEDE00180818000016000000D7
      000000FF000000FF000000FF000000D700000016000018081800DEDEDE000000
      000000000000DEDEDE00180808000016160000D7D70000FFFF0000FFFF0000FF
      FF0000D7D7000016160018080800DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D20060586000000E000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000E00006058
      6000D2D2D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D20060585800000E0E0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000E0E0060585800D2D2D2006C646C00000E000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF0000000E000060586000D2D2
      D200D2D2D20060585800000E0E0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000E0E006C6464000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A2000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00009C9C9C00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6009C9C
      9C000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000A2A2A2000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000000000A2A2
      A200A2A2A2000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000665666000084000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008C
      000058506000D0D8D800C4CCCC00C4CCCC00C4CCCC00C4CCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4CCCC00C4CCCC00C4CCCC00C4CCCC00D0D8D8005850
      5000008C8C0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000848400665656000080000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000008C0000645C
      6C00645C5C00008C8C0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C5C6C000074000000FF000000FF
      000000FF000000FF0000505F0000486F0000486F0000486F0000487700004232
      000072222A00A25A5A009E5A5A00A06060009E5A5A0098484800C4CCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4CCCC00984848009C5454009C5454009C545400A25A5A007222
      2200423232004877770044777700407F7F0044777700505F5F0000FFFF0000FF
      FF0000FFFF0000FFFF00007474006C5C5C000070000000FF000000FF000000FF
      000000FF0000505F0000486F0000486F0000486F000048770000423200007828
      300078282800423232004877770044777700407F7F0044777700505F5F0000FF
      FF0000FFFF0000FFFF0000FFFF00007070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C5C6C000074000000FF000000FF
      000000FF000000FF0000505F0000486F0000486F0000486F0000487700004232
      000072222A00A46060008A1E1E0072000000881818009A4E4E00C4CCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4CCCC00984848009C5454009C5454009C545400A25A5A007222
      220042323200447F7F006C2828009C000000702020004C67670000FFFF0000FF
      FF0000FFFF0000FFFF00007474006C5C5C000070000000FF000000FF000000FF
      000000FF0000505F0000486F0000486F0000486F000048770000423200007828
      30007828280042323200447F7F006C2828009C000000702020004C67670000FF
      FF0000FFFF0000FFFF0000FFFF00007070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000665666000084000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008C
      000058506000D2DEDE00B0909000B2969600C8D8D800C4CCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4CCCC00C4CCCC00C4CCCC00C4CCCC00D0D8D8005850
      5000008C8C0000FFFF0020BFBF001CC7C70000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000848400665656000080000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000008C0000645C
      6C00645C5C00008C8C0000FFFF0020BFBF001CC7C70000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A2000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF00000000
      00009C9C9C00C6C6C600C2C6C600C2C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6009C9C
      9C000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000A2A2A2000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000000000A2A2
      A200A2A2A2000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D20060586000000E000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF0000000E00006058
      6000D2D2D2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D20060585800000E0E0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000E0E0060585800D2D2D2006C646C00000E000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF0000000E000060586000D2D2
      D200D2D2D20060585800000E0E0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000E0E006C6464000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00180818000016
      000000D7000000FF000000FF000000FF000000D700000016000018081800DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00180808000016160000D7D70000FFFF0000FFFF0000FFFF0000D7
      D7000016160018080800DEDEDE0000000000DEDEDE00180818000016000000D7
      000000FF000000FF000000FF000000D700000016000018081800DEDEDE000000
      000000000000DEDEDE00180808000016160000D7D70000FFFF0000FFFF0000FF
      FF0000D7D7000016160018080800DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE006058
      6000000000000000000000000000000000000000000060586000DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE0060585800000000000000000000000000000000000000
      000060585800DEDEDE00000000000000000000000000DEDEDE00605860000000
      00000000000000000000000000000000000060586000DEDEDE00000000000000
      00000000000000000000DEDEDE00605858000000000000000000000000000000
      00000000000060585800DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800CCCCCC000000000000000000000000000000000000000000CCCCCC00D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800CCCCCC0000000000000000000000
      0000000000000000000000000000CCCCCC00D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000100000000100010000000000C00000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFF000000E03FFFFF
      FC07C07E03000000C01FFFFFF803803C01000000800FFFFFF001001800000000
      0007FFFFE0000000000000000003FFFFC00000000000000000003FFC00000000
      0000000000001FF8000000000000000000001FF8000000000000000000003FFC
      00000000000000000000FFFFC0000000000000000007FFFFE000000000000000
      800FFFFFF001001800000000C01FFFFFF803803C01000000E03FFFFFFC07C07E
      03000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu: TPopupMenu
    Left = 320
    Top = 40
    object Showgeoobjectpanel1: TMenuItem
      Caption = 'Show geo-object panel'
      OnClick = Showgeoobjectpanel1Click
    end
    object Showgeoobjectvisualizationpanel1: TMenuItem
      Caption = 'Show geo-object visualization panel'
      OnClick = Showgeoobjectvisualizationpanel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Disableselecteditem1: TMenuItem
      Caption = 'Disable selected item'
      OnClick = Disableselecteditem1Click
    end
    object Enableselecteditem1: TMenuItem
      Caption = 'Enable selected item'
      OnClick = Enableselecteditem1Click
    end
    object DisableAll1: TMenuItem
      Caption = 'Disable All'
      OnClick = DisableAll1Click
    end
    object Enableall1: TMenuItem
      Caption = 'Enable All'
      OnClick = Enableall1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Removeselecteditem1: TMenuItem
      Caption = 'Remove selected item'
      OnClick = Removeselecteditem1Click
    end
  end
end
