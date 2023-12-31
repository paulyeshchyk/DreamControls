{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit XSLPROD_D2006;
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
  Windows,
  Messages,
  SysUtils,
  Classes,
  HTTPApp,
  HTTPProd,
  XMLDoc,
  xmldom,
  XMLIntf,
  WebComp,
  XSLProd;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : string): string of object;

_T1 = function (p0 : TStream): string of object;

_T2 = function : string of object;

_T3 = function (const p0 : WideString): string of object;

function __DC__GetTCustomXSLPageProducer__DispatcherComponent(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomXSLPageProducer(Instance).DispatcherComponent);
end;

function __DC__GetTCustomXSLPageProducer__XMLData(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomXSLPageProducer(Instance).XMLData);
end;

procedure __DC__SetTCustomXSLPageProducer__XMLData(Instance : TObject; Params : PVariantArgList);
begin
TCustomXSLPageProducer(Instance).XMLData:=TComponent(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TCustomXSLPageProducer,'DispatcherComponent',__DC__GetTCustomXSLPageProducer__DispatcherComponent,nil);
RegisterProperty(TCustomXSLPageProducer,'XMLData',__DC__GetTCustomXSLPageProducer__XMLData,__DC__SetTCustomXSLPageProducer__XMLData);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
EXSLPageProducerError,
TCustomXSLPageProducer,
TXSLPageProducer
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
RegRegisterMethod(TCustomXSLPageProducer,'ContentFromString',TypeInfo(_T0),[
TypeInfo(string),TypeInfo(string)],Addr(TCustomXSLPageProducer.ContentFromString));

RegRegisterMethod(TCustomXSLPageProducer,'ContentFromStream',TypeInfo(_T1),[
TypeInfo(TStream),TypeInfo(string)], pointer(60));

RegRegisterMethod(TCustomXSLPageProducer,'Content',TypeInfo(_T2),[TypeInfo(string)], pointer(64));

RegRegisterMethod(TCustomXSLPageProducer,'ContentFromWideString',TypeInfo(_T3),[
TypeInfo(WideString),TypeInfo(string)], pointer(68));

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
