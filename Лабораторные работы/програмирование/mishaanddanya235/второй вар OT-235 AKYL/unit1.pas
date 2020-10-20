unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ComCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolBar1: TToolBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a,b,c:real;
  d:real;
  x1,x2:real;
  s1,s2:string[7];
  code:integer;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
   a,b,c:real;
   d:real;
   x1,x2:real;
   s1,s2:string[7];
   code:integer;
begin
     val(edit1.text,a,code);
     val(edit2.text,b,code);
     val(edit3.text,c,code);
     if a=0
        then label1.Caption:='ошибка'+chr(13)
        +'кофициент при второй степени'
        +chr(13)+'неизвестного равен нулю'
     else
       begin
         d:=b*b-4*a*c;
         x1:=(-b+sqrt(d))/(2*a);
         x2:=(b-sqrt(d))/(2*a);
         str(x1:7:3,s1);
         str(x2:7:3,s2);
                        label1.caption:='корни уравнкния'
                        +chr(13)+'x1='+s1
                        +chr(13)+'x2='+s2;
       end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.close
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
   d:=b*b-4*a*c;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
       if a=0
        then label1.Caption:='ошибка'+chr(13)
        +'кофициент при второй степени'
        +chr(13)+'неизвестного равен нулю'
     else
       begin
         d:=b*b-4*a*c;
         x1:=(-b+sqrt(d))/(2*a);
         x2:=(b-sqrt(d))/(2*a);
         str(x1:7:3,s1);
         str(x2:7:3,s2);
                        label1.caption:='корни уравнкния'
                        +chr(13)+'x1='+s1
                        +chr(13)+'x2='+s2;
       end;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
     Form1.close
end;


procedure TForm1.MenuItem5Click(Sender: TObject);
begin
     val(edit1.text,a,code);
     val(edit2.text,b,code);
     val(edit3.text,c,code);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin

end;

end.

