unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button2Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;


implementation

{$R *.lfm}

{ TForm2 }



procedure TForm2.Button2Click(Sender: TObject);

var
a:array[1..100,1..100] of integer;
b:array[1..100,1..100] of integer;
  k:shortint;

i,j,  n,code:integer;
s,s1,s4,s5:string[30];
begin
 n:=Memo1.Lines.count;
 for i:=1 to n do
 begin
   s:=memo1.Lines[i-1];
   j:=1;
   while pos(' ',s)<>0 do
   begin
     k:= pos(' ',s);
     s1:=copy(s,1,k-1);
     val(s1,a[i,j],code);
     delete(s,1,k);
     j:=j+1;

   end;
   val(s,a[i,j],code);
 end;
 b:=a;
  for i:=1 to n do
    begin
      s4:=' ';
      for j:=1 to n do
        begin
          str(b[i,j], s5);
          s4:=s4+s5+' ';
          end;
      memo2.Lines[i-1]:=s4;
        end;
    end;



end.

