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
Writeln(To_Prn,'Автобиография');
Writeln(To_Prn,'Я,Прийма Сергей Сергеевич, родился 13 ноября 1997 года в городе Новая Каховка Херсонской области.');
Writeln(To_Prn,'В сентябре 2004 года поступил в 1 - й класс средней школы №46 г. Николаев. В мае 2007 года закончил школу №6 г. Новая Каховка. В 2014 года');
Writeln(To_Prn,'закончил 9 класс в Новокаховском Технико - Экономическом лицее. В сентябре 2014 г. поступил на дневное отделение Новокаховского');
Writeln(To_Prn,'приборостроительного техникума, который окончил в июне 2018 г. по специальности "инженер - программист"');
Writeln(To_Prn, 'Не женат');
Writeln(To_Prn,'Родители');
Writeln(To_prn,'Отец, Прийма Сергей Анатолиевич, родился 16 ноября 176 года в г. Новая Каховка Херсонской области. Русский. Образование - средне - специальное.');
Writeln(To_Prn,'Мать, Семенцова Оксана Анатолиевна, родилась 28 апреля 1977 года в г. Николаев. Русская. Образование - среднее.');
Writeln(To_prn,'Бабушка, Прийма Валентина Сергеевна, родилась 28 мая 1950 года в п. Новая Маячка Цюрупинского района. Русская. Образование - среднее. В');
Writeln(To_Prn,'данный момент - пенсионер.');
Writeln(To_Prn,'Сестра Безуглая Виктория Николаевна, родилась 7 ноября 1989 года в г. Новая Каховка Херсонской области. Образование - высшее.');
Writeln(To_Prn,'В настоящее время работает экономистом в ПриватБанке.');
Writeln(To_Prn,'13.11.1997г.');
CloseFile(To_Prn);
end;

procedure TForm1.Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Form1.Caption:=IntToStr(MyMouse.CursorPos.X)+'X'+IntToStr(MyMouse.CursorPos.Y);
end;

end.
