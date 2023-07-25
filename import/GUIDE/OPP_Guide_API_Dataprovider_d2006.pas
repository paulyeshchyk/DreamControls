{*******************************************************}
{                                                       }
{ Import unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

Unit OPP_Guide_API_Dataprovider_d2006;
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
  Datasnap.DBClient,
  OPP_Guide_API,
  OPP_Guide_API_Object_Converter,
  OPP_Guide_API_Dataprovider;
implementation
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = function : TClientDataset of object;

{_T2 = function (const p0 : String): IOPPGuideAPIIdentifiable of object;}

{_T3 = function (const p0 : String): IOPPGuideAPIIdentifiable of object;}

{_T4 = function (const p0 : String): IOPPGuideAPIIdentifiable of object;}

{_T5 = function : IOPPGuideAPIIdentifiable of object;}

{_T6 = function : IOPPGuideAPIIdentifiable of object;}

_T7 = function : Integer of object;

{_T8 = function : IOPPGuideObjectConverter of object;}

{_T9 = procedure (p0 : IOPPGuideAPIIdentifiable;
p1 : TOPPBlobToStreamCompletion) of object;}

_T10 = function (p0 : Variant;
p1 : Variant): String of object;

{_T11 = procedure (p0 : IOPPGuideAPIIdentifiable;
p1 : TOPPGuideExecutionNodeDirection;
p2 : TOPPGuideChainOnAddItem) of object;}

procedure __RegisterProps;
begin
end;

const __ConstNames0 : array[0..2] of string = (
'ndNodeOnly'
,'ndFromNodeToParent'
,'ndFromNodeToChildren'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ndNodeOnly));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,ndFromNodeToParent));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,ndFromNodeToChildren));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
for i := 0 to 2 do
UnregisterConst(__ConstNames0[i], __RegisteredConstsList0[i]);
__RegisteredConstsList0.Free
end;

procedure __RegisterClasses;
begin
end;

procedure __UnRegisterClasses;
begin
end;

var __RegisteredMethods : TList;
const MethodNames : array[0..3] of string = (
'('
,'GetDataset'
,'ActiveItemSubscCount'
,'BuildFilter'
);

procedure __UnregisterProcs;
var i : integer;
begin
  for i := 0 to 3 do
    UnregisterProcedure(MethodNames[i] ,__RegisteredMethods[i]);
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[TypeInfo(TClientDataset)],Addr(GetDataset),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T7),[TypeInfo(Integer)],Addr(ActiveItemSubscCount),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T10),[
TypeInfo(Variant),
TypeInfo(Variant),TypeInfo(String)],Addr(BuildFilter),cRegister);

end;
initialization
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(nil,'GetStepByIdentifier',mtProc,TypeInfo(_T2),[
TypeInfo(String),TypeInfo(IOPPGuideAPIIdentifiable)],Addr(GetStepByIdentifier),cRegister)}

{RegisterProc(nil,'GetParentStepByIdentifier',mtProc,TypeInfo(_T3),[
TypeInfo(String),TypeInfo(IOPPGuideAPIIdentifiable)],Addr(GetParentStepByIdentifier),cRegister)}

{RegisterProc(nil,'AddChild',mtProc,TypeInfo(_T4),[
TypeInfo(String),TypeInfo(IOPPGuideAPIIdentifiable)],Addr(AddChild),cRegister)}

{RegisterProc(nil,'Add',mtProc,TypeInfo(_T5),[TypeInfo(IOPPGuideAPIIdentifiable)],Addr(Add),cRegister)}

{RegisterProc(nil,'ActiveItem',mtProc,TypeInfo(_T6),[TypeInfo(IOPPGuideAPIIdentifiable)],Addr(ActiveItem),cRegister)}

{RegisterProc(nil,'GetObjectConverter',mtProc,TypeInfo(_T8),[TypeInfo(IOPPGuideObjectConverter)],Addr(GetObjectConverter),cRegister)}

{RegisterProc(nil,'LoadScriptContent',mtProc,TypeInfo(_T9),[
TypeInfo(IOPPGuideAPIIdentifiable),
TypeInfo(TOPPBlobToStreamCompletion)],Addr(LoadScriptContent),cRegister)}

{RegisterProc(nil,'ListOfNodes',mtProc,TypeInfo(_T11),[
TypeInfo(IOPPGuideAPIIdentifiable),
TypeInfo(TOPPGuideExecutionNodeDirection),
TypeInfo(TOPPGuideChainOnAddItem)],Addr(ListOfNodes),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnregisterProcs;
end.
