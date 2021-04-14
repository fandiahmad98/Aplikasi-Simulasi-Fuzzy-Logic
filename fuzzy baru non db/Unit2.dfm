object Form2: TForm2
  Left = 223
  Top = 306
  Width = 1213
  Height = 314
  Caption = 'Input Fuzzy Rule'
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
    Width = 81
    Height = 13
    Caption = 'Masukkan Rule : '
  end
  object pnl1: TPanel
    Left = 8
    Top = 32
    Width = 1169
    Height = 217
    TabOrder = 0
    object lbl2: TLabel
      Left = 48
      Top = 8
      Width = 35
      Height = 13
      Caption = 'ID Rule'
    end
    object Label1: TLabel
      Left = 200
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Kondisi 1'
    end
    object lbl3: TLabel
      Left = 360
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Kondisi 2'
    end
    object lbl4: TLabel
      Left = 536
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Keputusan'
    end
    object edt_idrule1: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_idrule2: TEdit
      Left = 8
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt_idrule3: TEdit
      Left = 8
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt_idrule4: TEdit
      Left = 8
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object cbb_kondisi1_1: TComboBox
      Left = 152
      Top = 32
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Items.Strings = (
        'Jika Permintaan Turun'
        'Jika Permintaan Naik')
    end
    object cbb_kondisi1_2: TComboBox
      Left = 152
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Jika Permintaan Turun'
        'Jika Permintaan Naik')
    end
    object cbb_kondisi1_3: TComboBox
      Left = 152
      Top = 96
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Jika Permintaan Turun'
        'Jika Permintaan Naik')
    end
    object cbb_kondisi1_4: TComboBox
      Left = 152
      Top = 128
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Items.Strings = (
        'Jika Permintaan Turun'
        'Jika Permintaan Naik')
    end
    object cbb_kondisi2_1: TComboBox
      Left = 320
      Top = 32
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      Items.Strings = (
        'Persediaan Barang Banyak'
        'Persediaan Barang Sedikit')
    end
    object cbb_kondisi2_2: TComboBox
      Left = 320
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        'Persediaan Barang Banyak'
        'Persediaan Barang Sedikit')
    end
    object cbb_kondisi2_3: TComboBox
      Left = 320
      Top = 96
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'Persediaan Barang Banyak'
        'Persediaan Barang Sedikit')
    end
    object cbb_kondisi2_4: TComboBox
      Left = 320
      Top = 128
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 11
      Items.Strings = (
        'Persediaan Barang Banyak'
        'Persediaan Barang Sedikit')
    end
    object cbb_keputusan1: TComboBox
      Left = 488
      Top = 32
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 12
      Items.Strings = (
        'Berkurang'
        'Bertambah')
    end
    object cbb_keputusan2: TComboBox
      Left = 488
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 13
      Items.Strings = (
        'Berkurang'
        'Bertambah')
    end
    object cbb_keputusan3: TComboBox
      Left = 488
      Top = 96
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 14
      Items.Strings = (
        'Berkurang'
        'Bertambah')
    end
    object cbb_keputusan4: TComboBox
      Left = 488
      Top = 128
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 15
      Items.Strings = (
        'Berkurang'
        'Bertambah')
    end
    object btn_hapus: TButton
      Left = 8
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 16
    end
    object btn_tambah: TButton
      Left = 1048
      Top = 176
      Width = 97
      Height = 25
      Caption = 'Tampilkan Data'
      TabOrder = 17
      OnClick = btn_tambahClick
    end
    object btn_selanjutnya: TButton
      Left = 184
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Selanjutnya'
      TabOrder = 18
      OnClick = btn_selanjutnyaClick
    end
    object btn_kembali: TButton
      Left = 96
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Kembali'
      TabOrder = 19
      OnClick = btn_kembaliClick
    end
    object dbgrd_rule: TDBGrid
      Left = 648
      Top = 16
      Width = 505
      Height = 153
      DataSource = ds_rule
      TabOrder = 20
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
          Title.Caption = 'Kondisi 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kondisi2'
          Title.Caption = 'Kondisi 2'
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
  object ds_rule: TDataSource
    DataSet = vrtltbl_rule
    Left = 832
    Top = 208
  end
  object vrtltbl_rule: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'idrule'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kondisi1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'kondisi2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'keputusan'
        DataType = ftString
        Size = 20
      end>
    Left = 776
    Top = 208
    Data = {
      030004000600696472756C65010014000000000008006B6F6E64697369310100
      32000000000008006B6F6E6469736932010032000000000009006B6570757475
      73616E0100140000000000000000000000}
  end
end
