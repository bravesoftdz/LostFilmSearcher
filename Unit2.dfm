object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 185
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 481
    Height = 121
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 461
    Top = 2
    Width = 20
    Height = 20
    Caption = #1093
    TabOrder = 1
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 320
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Persist Se' +
      'curity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from `History`')
    Left = 352
    Top = 40
  end
end
