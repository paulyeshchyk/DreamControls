{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SOAPENV_D2006;
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
  Classes,
  SysUtils,
  xmldom,
  XMLDoc,
  XMLIntf,
  OPConvert,
  SOAPEnv;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
procedure __RegisterProps;
begin
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TSoapEnvelope
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
{RegRegisterMethod(TSoapEnvelope,'MakeEnvelope',TypeInfo(_T0),[
TypeInfo(IXMLDocument),
TypeInfo(TSOAPConvertOptions),TypeInfo(IXMLNode)],Addr(TSoapEnvelope.MakeEnvelope))}

{RegRegisterMethod(TSoapEnvelope,'MakeHeader',TypeInfo(_T1),[
TypeInfo(IXMLNode),TypeInfo(IXMLNode)],Addr(TSoapEnvelope.MakeHeader))}

{RegRegisterMethod(TSoapEnvelope,'MakeBody',TypeInfo(_T2),[
TypeInfo(IXMLNode),TypeInfo(IXMLNode)],Addr(TSoapEnvelope.MakeBody))}

{RegRegisterMethod(TSoapEnvelope,'MakeFault',TypeInfo(_T3),[
TypeInfo(IXMLNode),TypeInfo(IXMLNode)],Addr(TSoapEnvelope.MakeFault))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
