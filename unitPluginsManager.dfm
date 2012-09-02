object fmPluginsManager: TfmPluginsManager
  Left = 302
  Top = 268
  BorderStyle = bsToolWindow
  Caption = 'Plugins Manager'
  ClientHeight = 218
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lvPlugins: TListView
    Left = 0
    Top = 0
    Width = 498
    Height = 177
    Align = alTop
    Columns = <
      item
        Caption = #8470
        Width = 70
      end
      item
        Caption = 'Name'
        Width = 300
      end
      item
        Caption = 'Status'
        Width = 100
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LargeImages = lvPlugins_ImageList
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    SmallImages = lvPlugins_ImageList
    StateImages = lvPlugins_ImageList
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Panel1: TPanel
    Left = 0
    Top = 177
    Width = 498
    Height = 41
    Align = alClient
    TabOrder = 1
    object sbDisableSelected: TSpeedButton
      Left = 8
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Disable selected'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbDisableSelectedClick
    end
    object sbEnableSelected: TSpeedButton
      Left = 168
      Top = 8
      Width = 156
      Height = 25
      Caption = 'Enable selected'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = sbEnableSelectedClick
    end
    object sbUnload: TSpeedButton
      Left = 331
      Top = 8
      Width = 156
      Height = 25
      Caption = 'Unload selected'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = sbUnloadClick
    end
  end
  object lvPlugins_ImageList: TImageList
    Left = 24
    Top = 24
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E900DBDBDB00F8F8F800FEFE
      FE00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDE6C100A9887000777777009292
      92009E9E9E00BCBCBC00F1F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F7F0EC00EDD5B700FBDBB400FEDC
      B200FFDEB300C99F7E0086868600FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F100D1D1D100A1A1A10099999900B9B9B900E6E6E600E9E9E900CBCB
      CB00EAEAEA00F2D8B90076767600FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00C4C4
      C300B16E2B00CE673100CD674100CB654200AC532B00674C3E00D0AB8800B289
      6C00937D6D00FEEECD00D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00CDB28400BB55
      2A00AC451E0086552700A83D1200D8720E00CB6A2C00E5BA9300F8D6AA00D79D
      7400F4E2C50075747400FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E2D800A7410E009F39
      0000A7410000804F04003C5E0B00B0430000D19A7700E2B58C00FCE5BE00FCEA
      C600EFC69B0090837B00F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DF973900AA440000B650
      0000BF590000966200000073000068620000A36F5100F7E5C700E7BC9200F4D6
      B000B8987B00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00AE490100BD570000CD67
      0000DB7000001E85000000860000937A0000180400004C271A00A37A5E007473
      410084451D00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00BA500000D16C0000DB7B
      00006E920400A2910400D98D0000EB850000C9820000007D0000005000002A6A
      180094511600D7D7D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00C95F0000E27A000000AB
      20002AB02E00B0B02B00FFAC2300FE9B0600F58A0000328400003D730000455E
      00008F5C1400DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6710200AA900C0021BC
      460030C85E0029CB6400F0D97F00FFC04D00FE9B0500748C000000820000006F
      0000A2672700F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFD9920018B83C0037CE
      6800B2DC850090E89D00E9FACB00FFD77B00FFA91E00E18A0000058700000273
      0000AFAFAF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFC0042C2530068D0
      6C0093ECA600EBFBC600F3F7BB0028CD670079B02D00E5880100C5730000C48D
      2E00F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDF70086D5
      7900B5D27200B6E59A0079DF8A0034CC65002CB33400EB7E0000E2A33F00F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F0C700D1D57C008FD271009DBF4E00BABE6200EBDDC200FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FF07000000000000FF01000000000000
      FE00000000000000F000000000000000C0010000000000008001000000000000
      8001000000000000800300000000000000030000000000000003000000000000
      0003000000000000800300000000000080070000000000008007000000000000
      C00F000000000000F01F00000000000000000000000000000000000000000000
      000000000000}
  end
end
