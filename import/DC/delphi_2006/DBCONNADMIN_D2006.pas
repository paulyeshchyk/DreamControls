{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit DBCONNADMIN_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Classes,
  IniFiles,
  WideStrings,
  DBConnAdmin;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
{_T0 = function : IConnectionAdmin of object;}

_T1 = procedure  of object;

function __DC__GetTConnectionAdmin__ConnectionConfig(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TConnectionAdmin(Instance).ConnectionConfig);
end;

function __DC__GetTConnectionAdmin__DriverConfig(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TConnectionAdmin(Instance).DriverConfig);
end;

procedure __RegisterProps;
begin
RegisterProperty(TConnectionAdmin,'ConnectionConfig',__DC__GetTConnectionAdmin__ConnectionConfig,nil);
RegisterProperty(TConnectionAdmin,'DriverConfig',__DC__GetTConnectionAdmin__DriverConfig,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TConnectionAdmin
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
procedure _mreg_0;
begin
RegisterProc(TConnectionAdmin,'Create',mtConstructor,TypeInfo(_T1),NoParams,Addr(TConnectionAdmin.Create),cRegister);

end;
initialization
_mreg_0;
{RegisterProc(nil,'GetConnectionAdmin',mtProc,TypeInfo(_T0),[TypeInfo(IConnectionAdmin)],Addr(GetConnectionAdmin),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.