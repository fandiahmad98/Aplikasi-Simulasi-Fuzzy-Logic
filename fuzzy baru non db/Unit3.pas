unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, MemDS, VirtualTable, Grids, DBGrids;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb_tivab: TComboBox;
    cbb_tivab2: TComboBox;
    cbb_tivab3: TComboBox;
    lbl4: TLabel;
    edt_variablebb1: TEdit;
    edt_variablebb2: TEdit;
    edt_variablebb3: TEdit;
    lbl5: TLabel;
    edt_nilaibb1: TEdit;
    edt_nilaibb2: TEdit;
    edt_nilaibb3: TEdit;
    Label1: TLabel;
    edt_variableba1: TEdit;
    edt_variableba2: TEdit;
    edt_variableba3: TEdit;
    Label2: TLabel;
    edt_nilaiba1: TEdit;
    edt_nilaiba2: TEdit;
    edt_nilaiba3: TEdit;
    lbl6: TLabel;
    edt_satuan1: TEdit;
    btn_hapus: TButton;
    btn_simpan: TButton;
    btn_kembali: TButton;
    btn_selanjutnya: TButton;
    dbgrd_data: TDBGrid;
    ds_data: TDataSource;
    vrtltbl_data: TVirtualTable;
    cbb_namvab1: TComboBox;
    cbb_namvab2: TComboBox;
    cbb_namvab3: TComboBox;
    procedure btn_kembaliClick(Sender: TObject);
    procedure btn_selanjutnyaClick(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit4,Unit1,Unit5;

{$R *.dfm}

procedure TForm3.btn_kembaliClick(Sender: TObject);
begin
Form3.Hide;
Form2.Show;
end;

procedure TForm3.btn_selanjutnyaClick(Sender: TObject);
var permtinggi,permrendah,perstinggi,persrendah :Single;
var hasilopfuz1,hasilopfuz2,hasilopfuz3,hasilopfuz4 :Single;
var nilaibb1,nilaibb2,nilaibb3 :Single;
var nilaiba1,nilaiba2,nilaiba3 :Single;
var perm,pers : Single;
var kompar1,kompar2 : Single;
begin
Form3.Hide;
Form4.Show;

perm := StrToInt(form1_5.edt_perm.Text);
pers := StrToInt(form1_5.edt_pers.text);

//inisialisasi
nilaiba1 := StrToInt(edt_nilaiba1.Text);
nilaibb1 := StrToInt(edt_nilaibb1.Text);
nilaiba2 := StrToInt(edt_nilaiba2.Text);
nilaibb2 := StrToInt(edt_nilaibb2.Text);

//hitung fuzzifikasi permintaan terendah
permrendah := (nilaiba1 - perm) / (nilaiba1 - nilaibb1);

//hitung fuzzifikasi permintaan tertinggi
permtinggi := (perm - nilaibb1) / (nilaiba1 - nilaibb1);

//hitung fuzzifikasi persediaan terendah
persrendah := (nilaiba2 - pers) / (nilaiba2 - nilaibb2);

//hitung fuzzifikasi persediaan tertinggi
perstinggi := (pers - nilaibb2) / (nilaiba2 - nilaibb2);

//masukkan kedalam db
Form4.vrtltbl_fuzzy.Append;
Form4.vrtltbl_fuzzy.FieldByName('terendah_perm').AsFloat:=permrendah;
Form4.vrtltbl_fuzzy.FieldByName('tertinggi_perm').AsFloat:=permtinggi;
Form4.vrtltbl_fuzzy.FieldByName('terendah_pers').AsFloat:=persrendah;
Form4.vrtltbl_fuzzy.FieldByName('tertinggi_pers').AsFloat:=perstinggi;
Form4.vrtltbl_fuzzy.Post;

Form4.cht_permintaan.Series[0].Add(permrendah,'',clRed);
Form4.cht_permintaan.Series[1].Add(permtinggi,'',clGreen);

Form4.cht_persediaan.Series[0].Add(persrendah,'',clRed);
Form4.cht_persediaan.Series[1].Add(perstinggi,'',clGreen);

//operasi fuzzy
//r1
if permrendah > perstinggi then
hasilopfuz1 := perstinggi
else
hasilopfuz1 := permrendah;

//r2
if permrendah > persrendah then
hasilopfuz2 := persrendah
else
hasilopfuz2 := permrendah;

//r3
if permtinggi > perstinggi then
hasilopfuz3 := perstinggi
else
hasilopfuz3 := permtinggi;

//r4
if permtinggi > persrendah then
hasilopfuz4 := persrendah
else
hasilopfuz4 := permtinggi;

//submit data operasi fuzzy
Form4.vrtltbl_opfuzzy.Append;
Form4.vrtltbl_opfuzzy.FieldByName('nilai').AsFloat:=hasilopfuz1;
Form4.vrtltbl_opfuzzy.FieldByName('rule').AsString:=Form2.edt_idrule1.Text;
Form4.vrtltbl_opfuzzy.Post;

Form4.vrtltbl_opfuzzy.Append;
Form4.vrtltbl_opfuzzy.FieldByName('nilai').AsFloat:=hasilopfuz2;
Form4.vrtltbl_opfuzzy.FieldByName('rule').AsString:=Form2.edt_idrule2.Text;
Form4.vrtltbl_opfuzzy.Post;

Form4.vrtltbl_opfuzzy.Append;
Form4.vrtltbl_opfuzzy.FieldByName('nilai').AsFloat:=hasilopfuz3;
Form4.vrtltbl_opfuzzy.FieldByName('rule').AsString:=Form2.edt_idrule3.Text;
Form4.vrtltbl_opfuzzy.Post;

Form4.vrtltbl_opfuzzy.Append;
Form4.vrtltbl_opfuzzy.FieldByName('nilai').AsFloat:=hasilopfuz4;
Form4.vrtltbl_opfuzzy.FieldByName('rule').AsString:=Form2.edt_idrule4.Text;
Form4.vrtltbl_opfuzzy.Post;

//implikasi
Form4.vrtltbl_impli.Append;
Form4.vrtltbl_impli.FieldByName('nilai').AsFloat:=hasilopfuz1;
Form4.vrtltbl_impli.FieldByName('rule').AsString:=Form2.edt_idrule1.Text;
Form4.vrtltbl_impli.FieldByName('keputusan').AsString:=Form2.cbb_keputusan1.Text;
Form4.vrtltbl_impli.Post;

Form4.vrtltbl_impli.Append;
Form4.vrtltbl_impli.FieldByName('nilai').AsFloat:=hasilopfuz2;
Form4.vrtltbl_impli.FieldByName('rule').AsString:=Form2.edt_idrule2.Text;
Form4.vrtltbl_impli.FieldByName('keputusan').AsString:=Form2.cbb_keputusan2.Text;
Form4.vrtltbl_impli.Post;

Form4.vrtltbl_impli.Append;
Form4.vrtltbl_impli.FieldByName('nilai').AsFloat:=hasilopfuz3;
Form4.vrtltbl_impli.FieldByName('rule').AsString:=Form2.edt_idrule3.Text;
Form4.vrtltbl_impli.FieldByName('keputusan').AsString:=Form2.cbb_keputusan3.Text;
Form4.vrtltbl_impli.Post;

Form4.vrtltbl_impli.Append;
Form4.vrtltbl_impli.FieldByName('nilai').AsFloat:=hasilopfuz4;
Form4.vrtltbl_impli.FieldByName('rule').AsString:=Form2.edt_idrule4.Text;
Form4.vrtltbl_impli.FieldByName('keputusan').AsString:=Form2.cbb_keputusan4.Text;
Form4.vrtltbl_impli.Post;

//komposisi aturan
if hasilopfuz3 > hasilopfuz4 then
kompar1 := hasilopfuz4
else
kompar1 := hasilopfuz3;

if hasilopfuz1 > hasilopfuz2 then
kompar2 := hasilopfuz2
else
kompar2 := hasilopfuz1;

Form4.vrtltbl_kompaturan.Append;
Form4.vrtltbl_kompaturan.FieldByName('bertambah').AsFloat:=kompar1;
Form4.vrtltbl_kompaturan.FieldByName('berkurang').AsFloat:=kompar2;
Form4.vrtltbl_kompaturan.Post;

form4.edt_bertambah.Text := FormatFloat('0.#',kompar1);
Form4.edt_berkurang.Text := FormatFloat('0.#',kompar2);

Form4.edt_bertambah.Hide;
Form4.edt_berkurang.Hide;



end;

procedure TForm3.btn_simpanClick(Sender: TObject);
begin
vrtltbl_data.Append;
vrtltbl_data.FieldByName('namavariable').AsString:=cbb_namvab1.text;
vrtltbl_data.FieldByName('tipevariable').AsString:=cbb_tivab.text;
vrtltbl_data.FieldByName('variable_bb').AsString:=edt_variablebb1.text;
vrtltbl_data.FieldByName('nilai_bb').AsString:=edt_nilaibb1.text;
vrtltbl_data.FieldByName('variable_ba').AsString:=edt_variableba1.text;
vrtltbl_data.FieldByName('nilai_ba').AsString:=edt_nilaiba1.text;
vrtltbl_data.FieldByName('satuan').AsString:=edt_satuan1.text;
vrtltbl_data.Post;

vrtltbl_data.Append;
vrtltbl_data.FieldByName('namavariable').AsString:=cbb_namvab2.text;
vrtltbl_data.FieldByName('tipevariable').AsString:=cbb_tivab2.text;
vrtltbl_data.FieldByName('variable_bb').AsString:=edt_variablebb2.text;
vrtltbl_data.FieldByName('nilai_bb').AsString:=edt_nilaibb2.text;
vrtltbl_data.FieldByName('variable_ba').AsString:=edt_variableba2.text;
vrtltbl_data.FieldByName('nilai_ba').AsString:=edt_nilaiba2.text;
vrtltbl_data.FieldByName('satuan').AsString:=edt_satuan1.text;
vrtltbl_data.Post;

vrtltbl_data.Append;
vrtltbl_data.FieldByName('namavariable').AsString:=cbb_namvab3.text;
vrtltbl_data.FieldByName('tipevariable').AsString:=cbb_tivab3.text;
vrtltbl_data.FieldByName('variable_bb').AsString:=edt_variablebb3.text;
vrtltbl_data.FieldByName('nilai_bb').AsString:=edt_nilaibb3.text;
vrtltbl_data.FieldByName('variable_ba').AsString:=edt_variableba3.text;
vrtltbl_data.FieldByName('nilai_ba').AsString:=edt_nilaiba3.text;
vrtltbl_data.FieldByName('satuan').AsString:=edt_satuan1.text;
vrtltbl_data.Post;
end;

end.
