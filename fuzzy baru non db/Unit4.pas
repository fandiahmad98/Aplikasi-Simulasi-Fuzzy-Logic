unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeeProcs, TeEngine, Chart, Grids, DBGrids, DB, MemDS,
  VirtualTable, StdCtrls, ExtCtrls, SMDBGrid, Series, Math;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dbgrd_data: TDBGrid;
    lbl3: TLabel;
    dbgrd_rule: TDBGrid;
    pnl2: TPanel;
    cht_permintaan: TChart;
    lbl4: TLabel;
    cht_persediaan: TChart;
    pnl3: TPanel;
    lbl5: TLabel;
    dbgrd_opfuzzy: TDBGrid;
    pnl4: TPanel;
    lbl6: TLabel;
    dbgrd_implikasi: TDBGrid;
    pnl5: TPanel;
    lbl7: TLabel;
    dbgrd_kompaturan: TDBGrid;
    pnl6: TPanel;
    lbl8: TLabel;
    dbgrd_defussifikasi: TDBGrid;
    pnl7: TPanel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt_centroid: TEdit;
    ds_fuzzy: TDataSource;
    vrtltbl_fuzzy: TVirtualTable;
    smdbgrd_fuzzy: TSMDBGrid;
    ds_opfuzzy: TDataSource;
    ds_impli: TDataSource;
    ds_kompaturan: TDataSource;
    ds_defuzzi: TDataSource;
    vrtltbl_opfuzzy: TVirtualTable;
    vrtltbl_impli: TVirtualTable;
    vrtltbl_kompaturan: TVirtualTable;
    vrtltbl_defuzzi: TVirtualTable;
    btn_kembali: TButton;
    edt_bertambah: TEdit;
    edt_berkurang: TEdit;
    btn_acakhitung: TButton;
    lnsrsSeries1: TLineSeries;
    lnsrsSeries2: TLineSeries;
    lnsrsSeries3: TLineSeries;
    lnsrsSeries4: TLineSeries;
    procedure btn_kembaliClick(Sender: TObject);
    procedure btn_acakhitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses Unit1,Unit2,Unit3,Unit5;

{$R *.dfm}

procedure TForm4.btn_kembaliClick(Sender: TObject);
begin
Form4.Hide;
Form1.Show;
end;

procedure TForm4.btn_acakhitungClick(Sender: TObject);
var random1,random2,random3,random4,random5,random6,random7,random8,random9,random10 : Integer;
var ratambah,rakurang,finale : Single;
var nilaimin,nilaimax : Integer;
var kompar1,kompar2 : Integer;
var tambahint,kurangint :Single;
begin
//defuzzifikasi
nilaimin := StrToInt(Form3.edt_nilaibb3.Text);
nilaimax := StrToInt(Form3.edt_nilaiba3.Text);

random1:= RandomRange(nilaimin,nilaimax);
random2:= RandomRange(nilaimin,nilaimax);
random3:= RandomRange(nilaimin,nilaimax);
random4:= RandomRange(nilaimin,nilaimax);
random5:= RandomRange(nilaimin,nilaimax);
random6:= RandomRange(nilaimin,nilaimax);
random7:= RandomRange(nilaimin,nilaimax);
random8:= RandomRange(nilaimin,nilaimax);
random9:= RandomRange(nilaimin,nilaimax);
random10:= RandomRange(nilaimin,nilaimax);

vrtltbl_defuzzi.Append;
vrtltbl_defuzzi.FieldByName('bertambah').AsInteger:=random1;
vrtltbl_defuzzi.FieldByName('berkurang').AsInteger:=random2;
vrtltbl_defuzzi.Post;

vrtltbl_defuzzi.Append;
vrtltbl_defuzzi.FieldByName('bertambah').AsInteger:=random3;
vrtltbl_defuzzi.FieldByName('berkurang').AsInteger:=random4;
vrtltbl_defuzzi.Post;

vrtltbl_defuzzi.Append;
vrtltbl_defuzzi.FieldByName('bertambah').AsInteger:=random5;
vrtltbl_defuzzi.FieldByName('berkurang').AsInteger:=random6;
vrtltbl_defuzzi.Post;

vrtltbl_defuzzi.Append;
vrtltbl_defuzzi.FieldByName('bertambah').AsInteger:=random7;
vrtltbl_defuzzi.FieldByName('berkurang').AsInteger:=random8;
vrtltbl_defuzzi.Post;

vrtltbl_defuzzi.Append;
vrtltbl_defuzzi.FieldByName('bertambah').AsInteger:=random9;
vrtltbl_defuzzi.FieldByName('berkurang').AsInteger:=random10;
vrtltbl_defuzzi.Post;

//centroid
tambahint := StrTofloat(edt_bertambah.Text);
kurangint := StrTofloat(edt_berkurang.Text);

ratambah := (random1+random2+random3+random4+random5)/5;
rakurang := (random6+random7+random8+random9+random10)/5;
finale := ((ratambah*tambahint)+(rakurang*kurangint))/((tambahint*5)+(kurangint*5));

edt_centroid.Text:= FloatToStr(finale);
end;

end.
