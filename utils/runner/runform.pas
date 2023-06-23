{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
{} unit runform;
{$I dc.inc}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dccommon,dcsystem, StdCtrls, dcedit,OPPDataModule_Unit , rununit, dcscript,
  ExtCtrls
  {$IFDEF D3}
  ,dcpload
  {$ENDIF};

type
  TFrmRun = class(TForm)
    RunBut: TButton;
    PackBut: TButton;
    CloseBut: TButton;
    VerbDispatcher1: TVerbDispatcher;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Button1: TButton;
    DCScripter: TDCScripter;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure RunButClick(Sender: TObject);
    procedure CloseButClick(Sender: TObject);
    procedure DCFileNameEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    {$IFDEF D3}
    DCPackageLoader:TDCPackageLoader;
    {$ENDIF}

    { Public declarations }
  end;

var
  FrmRun: TFrmRun;

implementation

{$R *.DFM}


procedure TFrmRun.Button1Click(Sender: TObject);
begin
test;
end;

procedure TFrmRun.CloseButClick(Sender: TObject);
begin
run_2;
end;

procedure TFrmRun.DCFileNameEdit1Change(Sender: TObject);
begin
  RunBut.Enabled := ComboBox1.Text <>'';
end;

procedure TFrmRun.FormCreate(Sender: TObject);

begin
  {$IFDEF D3}
//  If CompiledWithPackages then
//    DCPackageLoader:=CreateDefaultPackageLoader(Self);
  {$ENDIF}
run_1;
dm.IBQuery.Open;
ComboBox1.Clear;
while not dm.IBQuery.Eof do
 begin
   ComboBox1.Items.Add(dm.IBQuery.FieldByName('Naim').asString);
   dm.IBQuery.next;
 end;


end;

procedure TFrmRun.RunButClick(Sender: TObject);
begin
run;
end;

end.
