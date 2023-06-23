{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit ABACCESSIBILITY_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  dcscript,
  dcsystem,
  dcdreamlib,
  Windows,
  Classes,
  ActiveX,
  oleacc,
  ActnMan,
  ActnMenus,
  Controls,
  ABAccessibility;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TActionClient;
p1 : TActionClient) of object;

{_T1 = function (p0 : OleVariant;
out p1 : IDispatch): HResult of object;}

_T2 = function (p0 : OleVariant;
out p1 : OleVariant): HResult of object;

_T3 = _T2;

_T4 = function (p0 : OleVariant;
out p1 : WideString): HResult of object;

procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..1] of TClass = (
TActionBarAccessibility,
TActionMenuBarAccessibility
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
RegisterProc(TActionBarAccessibility,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(TActionClient),
TypeInfo(TActionClient)],Addr(TActionBarAccessibility.Create),cRegister);

RegisterProc(TActionMenuBarAccessibility,'Get_accState',mtMethod,TypeInfo(_T2),[
TypeInfo(OleVariant),
TypeInfo(OleVariant),TypeInfo(HResult)],Addr(TActionMenuBarAccessibility.Get_accState),cStdCall);

RegisterProc(TActionMenuBarAccessibility,'Get_accRole',mtMethod,TypeInfo(_T3),[
TypeInfo(OleVariant),
TypeInfo(OleVariant),TypeInfo(HResult)],Addr(TActionMenuBarAccessibility.Get_accRole),cStdCall);

RegisterProc(TActionMenuBarAccessibility,'Get_accDescription',mtMethod,TypeInfo(_T4),[
TypeInfo(OleVariant),
TypeInfo(WideString),TypeInfo(HResult)],Addr(TActionMenuBarAccessibility.Get_accDescription),cStdCall);

end;
initialization
_mreg_0;
{RegisterProc(TActionMenuBarAccessibility,'Get_accChild',mtMethod,TypeInfo(_T1),[
TypeInfo(OleVariant),
TypeInfo(IDispatch),TypeInfo(HResult)],Addr(TActionMenuBarAccessibility.Get_accChild),cStdCall)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
