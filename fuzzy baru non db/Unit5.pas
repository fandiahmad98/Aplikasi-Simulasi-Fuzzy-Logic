unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tform1_5 = class(TForm)
    lbl1: TLabel;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt_perm: TEdit;
    edt_pers: TEdit;
    btn_lanjut: TButton;
    btn_kembali: TButton;
    procedure btn_kembaliClick(Sender: TObject);
    procedure btn_lanjutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1_5: Tform1_5;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure Tform1_5.btn_kembaliClick(Sender: TObject);
begin
form1_5.Hide;
Form1.Show;
end;

procedure Tform1_5.btn_lanjutClick(Sender: TObject);
begin
Form1_5.Hide;
Form2.Show;
end;

end.
