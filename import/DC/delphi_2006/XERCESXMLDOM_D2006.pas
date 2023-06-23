{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit XERCESXMLDOM_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  xmldom,
  xercesxmldom;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (const p0 : string;
const p1 : string) of object;

_T1 = procedure (p0 : Boolean) of object;

procedure __RegisterProps;
begin
end;

function __DC__Getxercesxmldom__XercesDOM(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(xercesxmldom.XercesDOM);
end;

procedure __DC__Setxercesxmldom__XercesDOM(Instance : TObject; Params : PVariantArgList);
begin
TObject(xercesxmldom.XercesDOM):=(VarToObject(OleVariant(Params^[0])));
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('XercesDOM',__DC__Getxercesxmldom__XercesDOM,__DC__Setxercesxmldom__XercesDOM));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..0] of string = (
'SXercesXML'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,SXercesXML));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TXercesDOMImplementationFactory
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
RegisterProc(TXercesDOMImplementationFactory,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(string),
TypeInfo(string)],Addr(TXercesDOMImplementationFactory.Create),cRegister);

RegRegisterMethod(TXercesDOMImplementationFactory,'EnablePreserveWhitespace',TypeInfo(_T1),[
TypeInfo(Boolean)],Addr(TXercesDOMImplementationFactory.EnablePreserveWhitespace));

end;
initialization
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
end.