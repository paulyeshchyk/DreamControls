{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
program DCRunner;

uses
  forms,
  rununit,
  runform,
  OPPDataModule_Unit in '\\Server\server_d\Last Version\Ascon\Разработки\Общие модули\OPPDataModule_Unit.pas' {DM: TDataModule};


{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmRun, FrmRun);
   //  Application.CreateForm(TTestForm, TestForm);
  Application.Run;
//  Run;
end.
