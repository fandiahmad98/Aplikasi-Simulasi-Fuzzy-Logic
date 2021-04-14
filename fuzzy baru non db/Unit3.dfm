object Form3: TForm3
  Left = 263
  Top = 281
  Width = 1082
  Height = 470
  Caption = 'Input Data'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Masukkan Data :'
  end
  object pnl1: TPanel
    Left = 8
    Top = 32
    Width = 1049
    Height = 377
    TabOrder = 0
    object lbl2: TLabel
      Left = 48
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Nama Variable'
    end
    object lbl3: TLabel
      Left = 192
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Tipe Variable'
    end
    object lbl4: TLabel
      Left = 336
      Top = 8
      Width = 103
      Height = 13
      Caption = 'Variable Batas Bawah'
    end
    object lbl5: TLabel
      Left = 488
      Top = 8
      Width = 84
      Height = 13
      Caption = 'Nilai Batas Bawah'
    end
    object Label1: TLabel
      Left = 624
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Variable Batas Atas'
    end
    object Label2: TLabel
      Left = 784
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Nilai Batas Atas'
    end
    object lbl6: TLabel
      Left = 944
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Satuan'
    end
    object cbb_tivab: TComboBox
      Left = 168
      Top = 40
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'INPUT'
        'OUTPUT')
    end
    object cbb_tivab2: TComboBox
      Left = 168
      Top = 72
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'INPUT'
        'OUTPUT')
    end
    object cbb_tivab3: TComboBox
      Left = 168
      Top = 104
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'INPUT'
        'OUTPUT')
    end
    object edt_variablebb1: TEdit
      Left = 336
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt_variablebb2: TEdit
      Left = 336
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt_variablebb3: TEdit
      Left = 336
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edt_nilaibb1: TEdit
      Left = 480
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edt_nilaibb2: TEdit
      Left = 480
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object edt_nilaibb3: TEdit
      Left = 480
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object edt_variableba1: TEdit
      Left = 624
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object edt_variableba2: TEdit
      Left = 624
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object edt_variableba3: TEdit
      Left = 624
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 11
    end
    object edt_nilaiba1: TEdit
      Left = 768
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 12
    end
    object edt_nilaiba2: TEdit
      Left = 768
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 13
    end
    object edt_nilaiba3: TEdit
      Left = 768
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 14
    end
    object edt_satuan1: TEdit
      Left = 912
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 15
    end
    object btn_hapus: TButton
      Left = 16
      Top = 328
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 16
    end
    object btn_simpan: TButton
      Left = 936
      Top = 144
      Width = 91
      Height = 25
      Caption = 'Tampilkan Data'
      TabOrder = 17
      OnClick = btn_simpanClick
    end
    object btn_kembali: TButton
      Left = 112
      Top = 328
      Width = 75
      Height = 25
      Caption = 'Kembali'
      TabOrder = 18
      OnClick = btn_kembaliClick
    end
    object btn_selanjutnya: TButton
      Left = 208
      Top = 328
      Width = 75
      Height = 25
      Caption = 'Selanjutnya'
      TabOrder = 19
      OnClick = btn_selanjutnyaClick
    end
    object dbgrd_data: TDBGrid
      Left = 16
      Top = 176
      Width = 1009
      Height = 137
      DataSource = ds_data
      TabOrder = 20
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
          Title.Caption = 'Nilai Batas Atas'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Title.Caption = 'Satuan'
          Visible = True
        end>
    end
    object cbb_namvab1: TComboBox
      Left = 8
      Top = 40
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 21
      Items.Strings = (
        'Permintaan'
        'Persediaan Barang'
        'Produksi')
    end
    object cbb_namvab2: TComboBox
      Left = 8
      Top = 72
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 22
      Items.Strings = (
        'Permintaan'
        'Persediaan Barang'
        'Produksi')
    end
    object cbb_namvab3: TComboBox
      Left = 8
      Top = 104
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 23
      Items.Strings = (
        'Permintaan'
        'Persediaan Barang'
        'Produksi')
    end
  end
  object ds_data: TDataSource
    DataSet = vrtltbl_data
    Left = 368
    Top = 360
  end
  object vrtltbl_data: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'namavariable'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipevariable'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'variable_bb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nilai_bb'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'variable_ba'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nilai_ba'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 20
      end>
    Left = 448
    Top = 360
    Data = {
      030007000C006E616D617661726961626C6501001400000000000C0074697065
      7661726961626C6501001400000000000B007661726961626C655F6262010014
      000000000008006E696C61695F626201001400000000000B007661726961626C
      655F6261010014000000000008006E696C61695F626101001400000000000600
      73617475616E0100140000000000000000000000}
  end
end
