object Form1: TForm1
  Left = 413
  Top = 310
  Caption = #1054#1087#1086#1074#1077#1097#1077#1085#1080#1077' '#1086' '#1074#1099#1093#1086#1076#1077' '#1089#1077#1088#1080#1072#1083#1086#1074' '#1085#1072' LostFilm.tv'
  ClientHeight = 416
  ClientWidth = 469
  Color = clBtnFace
  Constraints.MaxWidth = 485
  Constraints.MinHeight = 321
  Constraints.MinWidth = 485
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 3
    Top = 3
    Width = 360
    Height = 144
    Align = alCustom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
  end
  object Edit1: TEdit
    Left = 295
    Top = 126
    Width = 64
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 295
    Top = 153
    Width = 64
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
    Visible = False
  end
  object Memo2: TMemo
    Left = 3
    Top = 182
    Width = 467
    Height = 98
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 3
    Top = 162
    Width = 360
    Height = 20
    DataSource = DataSource1
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 364
    Top = 3
    Width = 106
    Height = 179
    Caption = '< '#1060#1091#1085#1082#1094#1080#1086#1085#1072#1083' >'
    TabOrder = 5
    object Button1: TButton
      Left = 3
      Top = 21
      Width = 98
      Height = 25
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1089#1099#1083#1086#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 3
      Top = 52
      Width = 98
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 3
      Top = 83
      Width = 98
      Height = 25
      Caption = #1041#1088#1072#1091#1079#1077#1088
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button10: TButton
      Left = 3
      Top = 112
      Width = 98
      Height = 25
      Caption = #1048#1089#1090#1086#1088#1080#1103
      TabOrder = 3
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 3
      Top = 143
      Width = 98
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1090#1086#1088#1080#1102
      TabOrder = 4
      Visible = False
      OnClick = Button11Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 3
    Top = 146
    Width = 360
    Height = 17
    TabOrder = 6
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 3
    Width = 319
    Height = 135
    Caption = '< '#1055#1072#1088#1072#1084#1077#1090#1088#1099': >'
    TabOrder = 7
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 80
      Width = 34
      Height = 13
      Caption = #1057#1077#1079#1086#1085':'
    end
    object Label2: TLabel
      Left = 113
      Top = 80
      Width = 35
      Height = 13
      Caption = #1057#1077#1088#1080#1103':'
    end
    object Button4: TButton
      Left = 297
      Top = 10
      Width = 20
      Height = 20
      Caption = #1093
      TabOrder = 0
      OnClick = Button4Click
    end
    object Edit3: TEdit
      Left = 16
      Top = 23
      Width = 275
      Height = 21
      TabOrder = 1
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 16
      Top = 48
      Width = 275
      Height = 21
      TabOrder = 2
      Text = 'Edit4'
    end
    object SpinEdit1: TSpinEdit
      Left = 50
      Top = 74
      Width = 57
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 149
      Top = 74
      Width = 58
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object Panel1: TPanel
      Left = 42
      Top = 100
      Width = 232
      Height = 30
      Caption = 'Panel1'
      TabOrder = 5
      object Button5: TButton
        Left = 2
        Top = 2
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 0
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 78
        Top = 2
        Width = 75
        Height = 25
        Caption = #1057#1073#1088#1086#1089#1080#1090#1100
        TabOrder = 1
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 154
        Top = 2
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = Button7Click
      end
    end
    object Panel2: TPanel
      Left = 278
      Top = 77
      Width = 34
      Height = 40
      TabOrder = 6
      object Button9: TButton
        Left = 2
        Top = 20
        Width = 30
        Height = 18
        Caption = 'down'
        TabOrder = 0
        OnClick = Button9Click
      end
      object Button8: TButton
        Left = 2
        Top = 2
        Width = 30
        Height = 18
        Caption = 'up'
        TabOrder = 1
        OnClick = Button8Click
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 280
    Width = 470
    Height = 135
    Caption = '< '#1048#1089#1090#1086#1088#1080#1103' >'
    TabOrder = 8
    Visible = False
    object DBGrid2: TDBGrid
      Left = 5
      Top = 15
      Width = 461
      Height = 114
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid2TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Name'
          Title.Caption = '['#1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1077#1088#1080#1072#1083#1072']'
          Width = 366
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Last_seson'
          Title.Caption = #1055'/'#1089'-'#1085
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Last_series'
          Title.Caption = #1055'/'#1089'-'#1103
          Width = 30
          Visible = True
        end>
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 368
    Top = 194
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 400
    Top = 194
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 368
    Top = 243
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Persist Se' +
      'curity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from `Parameter_s`')
    Left = 400
    Top = 243
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 371
    Top = 360
  end
  object ADOQuery2: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Persist Se' +
      'curity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from `History`')
    Left = 403
    Top = 360
  end
end
