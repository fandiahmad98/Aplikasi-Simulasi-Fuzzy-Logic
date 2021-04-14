unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, MemDS, VirtualTable, Grids, DBGrids;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    pnl1: TPanel;
    lbl2: TLabel;
    edt_idrule1: TEdit;
    edt_idrule2: TEdit;
    edt_idrule3: TEdit;
    edt_idrule4: TEdit;
    Label1: TLabel;
    cbb_kondisi1_1: TComboBox;
    cbb_kondisi1_2: TComboBox;
    cbb_kondisi1_3: TComboBox;
    cbb_kondisi1_4: TComboBox;
    lbl3: TLabel;
    cbb_kondisi2_1: TComboBox;
    cbb_kondisi2_2: TComboBox;
    cbb_kondisi2_3: TComboBox;
    cbb_kondisi2_4: TComboBox;
    lbl4: TLabel;
    cbb_keputusan1: TComboBox;
    cbb_keputusan2: TComboBox;
    cbb_keputusan3: TComboBox;
    cbb_keputusan4: TComboBox;
    btn_hapus: TButton;
    btn_tambah: TButton;
    btn_selanjutnya: TButton;
    btn_kembali: TButton;
    dbgrd_rule: TDBGrid;
    ds_rule: TDataSource;
    vrtltbl_rule: TVirtualTable;
    procedure btn_kembaliClick(Sender: TObject);
    procedure btn_selanjutnyaClick(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3,Unit4, Unit5;

{$R *.dfm}

procedure TForm2.btn_kembaliClick(Sender: TObject);
begin
Form2.Hide;
Form1_5.Show;
end;

procedure TForm2.btn_selanjutnyaClick(Sender: TObject);
begin
Form2.Hide;
Form3.Show;
end;

procedure TForm2.btn_tambahClick(Sender: TObject);
begin
vrtltbl_rule.Append;
vrtltbl_rule.FieldByName('idrule').AsString:=edt_idrule1.text;
vrtltbl_rule.FieldByName('kondisi1').AsString:=cbb_kondisi1_1.text;
vrtltbl_rule.FieldByName('kondisi2').AsString:=cbb_kondisi2_1.text;
vrtltbl_rule.FieldByName('keputusan').AsString:=cbb_keputusan1.text;
vrtltbl_rule.Post;

vrtltbl_rule.Append;
vrtltbl_rule.FieldByName('idrule').AsString:=edt_idrule2.text;
vrtltbl_rule.FieldByName('kondisi1').AsString:=cbb_kondisi1_2.text;
vrtltbl_rule.FieldByName('kondisi2').AsString:=cbb_kondisi2_2.text;
vrtltbl_rule.FieldByName('keputusan').AsString:=cbb_keputusan2.text;
vrtltbl_rule.Post;

vrtltbl_rule.Append;
vrtltbl_rule.FieldByName('idrule').AsString:=edt_idrule3.text;
vrtltbl_rule.FieldByName('kondisi1').AsString:=cbb_kondisi1_3.text;
vrtltbl_rule.FieldByName('kondisi2').AsString:=cbb_kondisi2_3.text;
vrtltbl_rule.FieldByName('keputusan').AsString:=cbb_keputusan3.text;
vrtltbl_rule.Post;

vrtltbl_rule.Append;
vrtltbl_rule.FieldByName('idrule').AsString:=edt_idrule4.text;
vrtltbl_rule.FieldByName('kondisi1').AsString:=cbb_kondisi1_4.text;
vrtltbl_rule.FieldByName('kondisi2').AsString:=cbb_kondisi2_4.text;
vrtltbl_rule.FieldByName('keputusan').AsString:=cbb_keputusan4.text;
vrtltbl_rule.Post;

end;

end.
