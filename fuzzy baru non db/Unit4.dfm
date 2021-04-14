object Form4: TForm4
  Left = 292
  Top = 44
  Width = 1151
  Height = 765
  Caption = 'Fuzzy Process'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 545
    Height = 337
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 8
      Width = 64
      Height = 13
      Caption = '[0] Fuzzy Init'
    end
    object lbl2: TLabel
      Left = 216
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Tabel Data'
    end
    object lbl3: TLabel
      Left = 216
      Top = 176
      Width = 50
      Height = 13
      Caption = 'Tabel Rule'
    end
    object dbgrd_data: TDBGrid
      Left = 16
      Top = 48
      Width = 513
      Height = 120
      DataSource = Form3.ds_data
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'namavariable'
          Title.Caption = 'Nama Variable'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipevariable'
          Title.Caption = 'Tipe Variable'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'variable_bb'
          Title.Caption = 'Variable Batas Bawah'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_bb'
          Title.Caption = 'Nilai Batas Bawah'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'variable_ba'
          Title.Caption = 'Variable Batas Atas'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai_ba'
          Title.Caption = 'Nilai Batas Atas '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Title.Caption = 'Satuan'
          Visible = True
        end>
    end
    object dbgrd_rule: TDBGrid
      Left = 16
      Top = 200
      Width = 513
      Height = 120
      DataSource = Form2.ds_rule
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idrule'
          Title.Caption = 'ID Rule'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kondisi1'
          Title.Caption = 'Kondisi Awal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kondisi2'
          Title.Caption = 'Kondisi Akhir'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'keputusan'
          Title.Caption = 'Keputusan'
          Visible = True
        end>
    end
  end
  object pnl2: TPanel
    Left = 8
    Top = 360
    Width = 545
    Height = 257
    TabOrder = 1
    object lbl4: TLabel
      Left = 16
      Top = 8
      Width = 65
      Height = 13
      Caption = '[1] Fuzzifikasi'
    end
    object cht_permintaan: TChart
      Left = 16
      Top = 80
      Width = 241
      Height = 161
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'Permintaan')
      View3D = False
      TabOrder = 0
      object lnsrsSeries1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'uTurun'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object lnsrsSeries2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        Title = 'uNaik'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object cht_persediaan: TChart
      Left = 280
      Top = 80
      Width = 241
      Height = 161
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'Persediaan')
      View3D = False
      TabOrder = 1
      object lnsrsSeries3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'uSedikit'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object lnsrsSeries4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        Title = 'uBanyak'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object smdbgrd_fuzzy: TSMDBGrid
      Left = 168
      Top = 0
      Width = 257
      Height = 73
      DataSource = ds_fuzzy
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Flat = False
      Bands.Strings = (
        'Permintaan'
        'Persediaan')
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'Tahoma'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoDrawBands, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      Columns = <
        item
          Expanded = False
          FieldName = 'terendah_perm'
          Title.Caption = 'Terendah'
          Visible = True
          BandIndex = 0
        end
        item
          Expanded = False
          FieldName = 'tertinggi_perm'
          Title.Caption = 'Tertinggi'
          Visible = True
          BandIndex = 0
        end
        item
          Expanded = False
          FieldName = 'terendah_pers'
          Title.Caption = 'Terendah'
          Visible = True
          BandIndex = 1
        end
        item
          Expanded = False
          FieldName = 'tertinggi_pers'
          Title.Caption = 'Tertinggi'
          Visible = True
          BandIndex = 1
        end>
    end
  end
  object pnl3: TPanel
    Left = 576
    Top = 8
    Width = 545
    Height = 153
    TabOrder = 2
    object lbl5: TLabel
      Left = 16
      Top = 8
      Width = 85
      Height = 13
      Caption = '[2] Operasi Fuzzy'
    end
    object dbgrd_opfuzzy: TDBGrid
      Left = 16
      Top = 32
      Width = 513
      Height = 113
      DataSource = ds_opfuzzy
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'rule'
          Title.Caption = 'Rule'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai'
          Title.Caption = 'Nilai'
          Visible = True
        end>
    end
  end
  object pnl4: TPanel
    Left = 576
    Top = 176
    Width = 545
    Height = 153
    TabOrder = 3
    object lbl6: TLabel
      Left = 16
      Top = 8
      Width = 57
      Height = 13
      Caption = '[3] Implikasi'
    end
    object dbgrd_implikasi: TDBGrid
      Left = 16
      Top = 24
      Width = 513
      Height = 120
      DataSource = ds_impli
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'rule'
          Title.Caption = 'Rule'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nilai'
          Title.Caption = 'Nilai'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'keputusan'
          Title.Caption = 'Keputusan'
          Visible = True
        end>
    end
  end
  object pnl5: TPanel
    Left = 576
    Top = 344
    Width = 265
    Height = 249
    TabOrder = 4
    object lbl7: TLabel
      Left = 16
      Top = 8
      Width = 99
      Height = 13
      Caption = '[4] Komposisi Aturan'
    end
    object dbgrd_kompaturan: TDBGrid
      Left = 16
      Top = 32
      Width = 233
      Height = 209
      DataSource = ds_kompaturan
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bertambah'
          Title.Caption = 'Bertambah'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'berkurang'
          Title.Caption = 'Berkurang'
          Visible = True
        end>
    end
  end
  object pnl6: TPanel
    Left = 856
    Top = 344
    Width = 265
    Height = 249
    TabOrder = 5
    object lbl8: TLabel
      Left = 16
      Top = 8
      Width = 111
      Height = 13
      Caption = ' [5] Defuzzifikasi Diskrit'
    end
    object dbgrd_defussifikasi: TDBGrid
      Left = 16
      Top = 32
      Width = 233
      Height = 209
      DataSource = ds_defuzzi
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bertambah'
          Title.Caption = 'Bertambah'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'berkurang'
          Title.Caption = 'Berkurang'
          Visible = True
        end>
    end
  end
  object pnl7: TPanel
    Left = 576
    Top = 608
    Width = 545
    Height = 113
    TabOrder = 6
    object lbl9: TLabel
      Left = 16
      Top = 8
      Width = 58
      Height = 13
      Caption = '[6] Centroid'
    end
    object lbl10: TLabel
      Left = 16
      Top = 32
      Width = 72
      Height = 13
      Caption = 'Hasil Taksiran :'
    end
    object edt_centroid: TEdit
      Left = 16
      Top = 56
      Width = 425
      Height = 25
      TabOrder = 0
    end
    object btn_acakhitung: TButton
      Left = 448
      Top = 56
      Width = 91
      Height = 25
      Caption = 'Acak dan Hitung'
      TabOrder = 1
      OnClick = btn_acakhitungClick
    end
  end
  object btn_kembali: TButton
    Left = 240
    Top = 640
    Width = 89
    Height = 33
    Caption = 'Ke Menu Utama'
    TabOrder = 7
    OnClick = btn_kembaliClick
  end
  object edt_bertambah: TEdit
    Left = 368
    Top = 616
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edt_bertambah'
  end
  object edt_berkurang: TEdit
    Left = 368
    Top = 640
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edt_berkurang'
  end
  object ds_fuzzy: TDataSource
    DataSet = vrtltbl_fuzzy
    Left = 96
    Top = 360
  end
  object vrtltbl_fuzzy: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'tertinggi_perm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'terendah_perm'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tertinggi_pers'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'terendah_pers'
        DataType = ftString
        Size = 20
      end>
    Left = 128
    Top = 360
    Data = {
      030004000E0074657274696E6767695F7065726D01001400000000000D007465
      72656E6461685F7065726D01001400000000000E0074657274696E6767695F70
      65727301001400000000000D00746572656E6461685F70657273010014000000
      0000000000000000}
  end
  object ds_opfuzzy: TDataSource
    DataSet = vrtltbl_opfuzzy
    Left = 704
    Top = 104
  end
  object ds_impli: TDataSource
    DataSet = vrtltbl_impli
    Left = 672
    Top = 272
  end
  object ds_kompaturan: TDataSource
    DataSet = vrtltbl_kompaturan
    Left = 736
    Top = 512
  end
  object ds_defuzzi: TDataSource
    DataSet = vrtltbl_defuzzi
    Left = 1008
    Top = 504
  end
  object vrtltbl_opfuzzy: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'rule'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nilai'
        DataType = ftString
        Size = 20
      end>
    Left = 648
    Top = 104
    Data = {
      03000200040072756C65010014000000000005006E696C616901001400000000
      00000000000000}
  end
  object vrtltbl_impli: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'rule'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nilai'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'keputusan'
        DataType = ftString
        Size = 20
      end>
    Left = 624
    Top = 272
    Data = {
      03000300040072756C65010014000000000005006E696C616901001400000000
      0009006B657075747573616E0100140000000000000000000000}
  end
  object vrtltbl_kompaturan: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'bertambah'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'berkurang'
        DataType = ftString
        Size = 20
      end>
    Left = 632
    Top = 512
    Data = {
      03000200090062657274616D626168010014000000000009006265726B757261
      6E670100140000000000000000000000}
  end
  object vrtltbl_defuzzi: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'bertambah'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'berkurang'
        DataType = ftString
        Size = 20
      end>
    Left = 904
    Top = 504
    Data = {
      03000200090062657274616D626168010014000000000009006265726B757261
      6E670100140000000000000000000000}
  end
end
