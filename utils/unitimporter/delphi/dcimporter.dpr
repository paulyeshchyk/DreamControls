{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
program DCImporter;

{$I DC.inc}
{$define DELPHI7}
uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  DCRunner in '..\DCRunner.pas';
  //OPPDataModule_Unit in '..\..\..\units\OPPDataModule_Unit.pas' {DM: TDataModule};

{$R *.RES}

begin
  DCRunUnitImporter;
end.


