{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcvarproped_D2006;
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
  dcdsgnstuff,
  Classes,
  Variants,
  dcVarPropEd;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..10] of string = (
'vt_Boolean'
,'vt_Byte'
,'vt_Currency'
,'vt_Date'
,'vt_Double'
,'vt_Integer'
,'vt_Null'
,'vt_OleStr'
,'vt_Single'
,'vt_Smallint'
,'vt_String'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,vt_Boolean));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,vt_Byte));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,vt_Currency));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,vt_Date));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,vt_Double));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,vt_Integer));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,vt_Null));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[7] ,vt_OleStr));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[8] ,vt_Single));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[9] ,vt_Smallint));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[10] ,vt_String));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TDCVariantProperty,
TVarTypeProperty
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
'Register'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),NoParams,Addr(Register),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
