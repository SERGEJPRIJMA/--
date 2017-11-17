unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, Printers, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Chart1: TChart;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  xx, yy:integer;
  MyMouse:TMouse;
  var b: TBitmap;
i: integer;
implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
Form1.Print;
end;


procedure TForm1.Button2Click(Sender: TObject);
var x,y,x1,y1:integer;
begin
Printer.BeginDoc;
x:=StrToInt(Edit1.Text);
y:=StrToInt(Edit2.Text);
x1:=StrToInt(Edit3.Text);
y1:=StrToInt(Edit4.Text);
Printer.Canvas.MoveTo(x,y);
Printer.Canvas.LineTo(x,y+(y1-y));
Printer.Canvas.MoveTo(x,y+(y1-y));
Printer.Canvas.LineTo(x1,y1);
Printer.Canvas.MoveTo(x,y);
Printer.Canvas.LineTo(x1,y1);
Printer.EndDoc;
end;
procedure TForm1.Button3Click(Sender: TObject);
var To_Prn:TextFile;
begin
AssignPrn(To_Prn);
Rewrite(To_Prn);
Writeln(To_Prn,'�������������');
Writeln(To_Prn,'�,������ ������ ���������, ������� 13 ������ 1997 ���� � ������ ����� ������� ���������� �������.');
Writeln(To_Prn,'� �������� 2004 ���� �������� � 1 - � ����� ������� ����� �46 �. ��������. � ��� 2007 ���� �������� ����� �6 �. ����� �������. � 2014 ����');
Writeln(To_Prn,'�������� 9 ����� � ������������� ������� - ������������� �����. � �������� 2014 �. �������� �� ������� ��������� ��������������');
Writeln(To_Prn,'�������������������� ���������, ������� ������� � ���� 2018 �. �� ������������� "������� - �����������"');
Writeln(To_Prn, '�� �����');
Writeln(To_Prn,'��������');
Writeln(To_prn,'����, ������ ������ �����������, ������� 16 ������ 176 ���� � �. ����� ������� ���������� �������. �������. ����������� - ������ - �����������.');
Writeln(To_Prn,'����, ��������� ������ �����������, �������� 28 ������ 1977 ���� � �. ��������. �������. ����������� - �������.');
Writeln(To_prn,'�������, ������ ��������� ���������, �������� 28 ��� 1950 ���� � �. ����� ������ ������������ ������. �������. ����������� - �������. �');
Writeln(To_Prn,'������ ������ - ���������.');
Writeln(To_Prn,'������ �������� �������� ����������, �������� 7 ������ 1989 ���� � �. ����� ������� ���������� �������. ����������� - ������.');
Writeln(To_Prn,'� ��������� ����� �������� ����������� � �����������.');
Writeln(To_Prn,'13.11.1997�.');
CloseFile(To_Prn);
end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.Caption:=IntToStr(MyMouse.CursorPos.X)+'X'+IntToStr(MyMouse.CursorPos.Y);
end;

end.
