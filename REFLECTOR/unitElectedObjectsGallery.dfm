object fmElectedObjectsGallery: TfmElectedObjectsGallery
  Left = 227
  Top = 180
  Width = 354
  Height = 80
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lvElectedObjectsGallery: TListView
    Left = 0
    Top = 0
    Width = 346
    Height = 53
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clBtnFace
    Columns = <>
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194304
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    HideSelection = False
    HotTrackStyles = [htHandPoint]
    ParentFont = False
    ShowWorkAreas = True
    TabOrder = 0
    OnMouseDown = lvElectedObjectsGalleryMouseDown
  end
end
