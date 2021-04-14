object form1_5: Tform1_5
  Left = 989
  Top = 41
  Width = 365
  Height = 253
  Caption = 'Pertanyaan'
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
    Width = 115
    Height = 13
    Caption = 'Masukkan Target Data :'
  end
  object pnl1: TPanel
    Left = 8
    Top = 24
    Width = 305
    Height = 185
    TabOrder = 0
    object lbl2: TLabel
      Left = 16
      Top = 16
      Width = 54
      Height = 13
      Caption = 'Permintaan'
    end
    object lbl3: TLabel
      Left = 16
      Top = 48
      Width = 90
      Height = 13
      Caption = 'Persediaan Barang'
    end
    object edt_perm: TEdit
      Left = 128
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_pers: TEdit
      Left = 128
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn_lanjut: TButton
      Left = 176
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Selanjutnya'
      TabOrder = 2
      OnClick = btn_lanjutClick
    end
    object btn_kembali: TButton
      Left = 64
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Kembali'
      TabOrder = 3
      OnClick = btn_kembaliClick
    end
  end
end
