{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit SOAPDOMCONV_D2006;
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
  xmldom,
  XMLIntf,
  XMLDoc,
  OPConvert,
  SOAPDomConv;
function ConvertTDOMHeaderProcessorEntryToVariant(var R : TDOMHeaderProcessorEntry) : OleVariant;
function ConvertVariantToTDOMHeaderProcessorEntry(const V : OleVariant) : TDOMHeaderProcessorEntry;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type __TDOMHeaderProcessorEntry__Wrapper = class(TDCRecordWrapper)
private
fR : TDOMHeaderProcessorEntry;
public
function GetRecordPtr : pointer; override;
published
procedure setNameSpace(const val : WideString);
function getNameSpace : WideString;
property NameSpace : WideString read getNameSpace write setNameSpace;
procedure setHeaderName(const val : WideString);
function getHeaderName : WideString;
property HeaderName : WideString read getHeaderName write setHeaderName;
procedure setTypeName(const val : WideString);
function getTypeName : WideString;
property TypeName : WideString read getTypeName write setTypeName;
end;
function __TDOMHeaderProcessorEntry__Wrapper.GetRecordPtr : pointer;
begin
result := @fR;
end;
procedure __TDOMHeaderProcessorEntry__Wrapper.setNameSpace(const val : WideString);
begin
TDOMHeaderProcessorEntry(GetRecordPtr^).NameSpace := val;
end;
function __TDOMHeaderProcessorEntry__Wrapper.getNameSpace : WideString;
begin
result := TDOMHeaderProcessorEntry(GetRecordPtr^).NameSpace;
end;
procedure __TDOMHeaderProcessorEntry__Wrapper.setHeaderName(const val : WideString);
begin
TDOMHeaderProcessorEntry(GetRecordPtr^).HeaderName := val;
end;
function __TDOMHeaderProcessorEntry__Wrapper.getHeaderName : WideString;
begin
result := TDOMHeaderProcessorEntry(GetRecordPtr^).HeaderName;
end;
procedure __TDOMHeaderProcessorEntry__Wrapper.setTypeName(const val : WideString);
begin
TDOMHeaderProcessorEntry(GetRecordPtr^).TypeName := val;
end;
function __TDOMHeaderProcessorEntry__Wrapper.getTypeName : WideString;
begin
result := TDOMHeaderProcessorEntry(GetRecordPtr^).TypeName;
end;
function _TDOMHeaderProcessorEntry_ : IDispatch;
begin
  result := __TDOMHeaderProcessorEntry__Wrapper.Create;
end;

type __TDOMHeaderProcessorEntry__Wrapper__ = class(__TDOMHeaderProcessorEntry__Wrapper)
private
fRPtr : pointer;
function GetRecordPtr : pointer; override;
end;
function __TDOMHeaderProcessorEntry__Wrapper__.GetRecordPtr : pointer;
begin
result := fRPtr;
end;
function ConvertTDOMHeaderProcessorEntryToVariant(var R : TDOMHeaderProcessorEntry) : OleVariant;
var
__rw : __TDOMHeaderProcessorEntry__Wrapper__;
begin
__rw := __TDOMHeaderProcessorEntry__Wrapper__.Create;
__rw.fRPtr := @R;
result := IDispatch(__rw);
end;
function ConvertVariantToTDOMHeaderProcessorEntry(const V : OleVariant) : TDOMHeaderProcessorEntry;
var
_idisp : IDispatch;
begin
_idisp := VarToInterface(v);
if _idisp = nil then exit;
result := TDOMHeaderProcessorEntry((_idisp as IDCRecordWrapper).GetRecordPtr^);
end;
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
TSOAPDOMProcessor
);
procedure __RegisterClasses;
begin
RegisterClassesInScript(ClassList);
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..0] of string = (
'TDOMHeaderProcessorEntry'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
__RegisteredMethods.Add(RegisterRWProc(MethodNames[0],Addr(_TDOMHeaderProcessorEntry_)));
end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegRegisterMethod(TSOAPDOMProcessor,'FindHeaderProcessor',TypeInfo(_T0),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),TypeInfo(IDOMHeaderProcessor)], pointer(48))}

{RegRegisterMethod(TSOAPDOMProcessor,'AddHeaderProcessor',TypeInfo(_T1),[
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(WideString),
TypeInfo(IDOMHeaderProcessor)], pointer(52))}

{RegRegisterMethod(TSOAPDOMProcessor,'DefaultProcessHeader',TypeInfo(_T2),[
TypeInfo(IXMLNode),
TypeInfo(Boolean),
TypeInfo(Boolean)], pointer(56))}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
