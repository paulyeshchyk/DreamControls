{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit INVRULES_D2006;
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
  TypInfo,
  IntfInfo,
  InvRules;
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

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

procedure _mreg_0;
begin
end;
initialization
_mreg_0;
{RegisterProc(nil,'RetOnStack',mtProc,TypeInfo(_T0),[
TypeInfoPointer,TypeInfo(Boolean)],Addr(RetOnStack),cRegister)}

{RegisterProc(nil,'RetInFPU',mtProc,TypeInfo(_T1),[
TypeInfoPointer,TypeInfo(Boolean)],Addr(RetInFPU),cRegister)}

{RegisterProc(nil,'GetTypeSize',mtProc,TypeInfo(_T2),[
TypeInfoPointer,TypeInfo(Integer)],Addr(GetTypeSize),cRegister)}

{RegisterProc(nil,'GetStackTypeSize',mtProc,TypeInfo(_T3),[
TypeInfoPointer,
TypeInfo(TCallConv),TypeInfo(Integer)],Addr(GetStackTypeSize),cRegister)}

{RegisterProc(nil,'IsParamByRef',mtProc,TypeInfo(_T4),[
TypeInfo(TParamFlags),
TypeInfoPointer,
TypeInfo(TCallConv),TypeInfo(Boolean)],Addr(IsParamByRef),cRegister)}

{RegisterProc(nil,'IsRetInAXDX',mtProc,TypeInfo(_T5),[
TypeInfoPointer,TypeInfo(Boolean)],Addr(IsRetInAXDX),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
