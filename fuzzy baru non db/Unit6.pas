unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm6 = class(TForm)
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    btn_home: TButton;
    procedure btn_homeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm6.btn_homeClick(Sender: TObject);
begin
Form6.Hide;
Form1.Show;
end;

end.
