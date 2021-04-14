unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    btn_mulai: TButton;
    btn_belajar: TButton;
    btn1: TBitBtn;
    img1: TImage;
    procedure btn_mulaiClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn_belajarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2, Unit5,Unit6;

{$R *.dfm}

procedure TForm1.btn_mulaiClick(Sender: TObject);
begin
Form1.Hide;
Form1_5.Show;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Application.Destroy;
end;

procedure TForm1.btn_belajarClick(Sender: TObject);
begin
Form6.Show;
Form1.Hide;
end;

end.
