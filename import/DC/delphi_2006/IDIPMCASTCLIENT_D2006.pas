{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDIPMCASTCLIENT_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  dcscript,
  dcsystem,
  dcdreamlib,
  Classes,
  IdIPMCastBase,
  IdUDPBase,
  IdComponent,
  IdSocketHandle,
  IdThread,
  IdException,
  IdIPMCastClient;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TStream;
p1 : TIdSocketHandle) of object;

_T1 = procedure (p0 : TIdIPMCastClient) of object;

_T2 = procedure  of object;

function __DC__GetTIdIPMCastListenerThread__AcceptWait(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdIPMCastListenerThread(Instance).AcceptWait;
end;

procedure __DC__SetTIdIPMCastListenerThread__AcceptWait(Instance : TObject; Params : PVariantArgList);
begin
TIdIPMCastListenerThread(Instance).AcceptWait:=OleVariant(Params^[0]);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdIPMCastListenerThread,'AcceptWait',__DC__GetTIdIPMCastListenerThread__AcceptWait,__DC__SetTIdIPMCastListenerThread__AcceptWait);
end;

const __ConstNames0 : array[0..0] of string = (
'DEF_IMP_THREADEDEVENT'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,DEF_IMP_THREADEDEVENT));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..1] of TClass = (
TIdIPMCastClient,
TIdIPMCastListenerThread
);
 function __getFullMethodName(sclassName, smethodName:String):String; 
 begin 
   result := format('%s.%s',[sClassName, sMethodName]) 
 end; 
procedure fillVMTProcs();
var
  ctx : TRttiContext;
  t:TRttiType;
  m:TRttiMethod;
  i:Integer;
begin
  ctx := TRttiContext.Create;
  try
    for i := 0 to length(classList) - 1 do
    begin
      t:=ctx.GetType(classList[i].ClassInfo);
      for m in t.GetMethods  do
      begin
        if m.DispatchKind = dkVtable then
        vmtMethodList.addObject(__getFullMethodName(classList[i].className,m.Name), pointer(m.VirtualIndex*4));
      end;
      t.free;
    end;
  finally
    ctx.free;
  end;
end;
function getVMTProcAddr(className, MethodName:String;oldAddr:Integer):Pointer;
var i:Integer;
begin
  i:=vmtMethodList.indexOf(__getFullMethodName(className,methodName));
  if i>-1 then 
    result:=pointer(vmtMethodList.Objects[i])
  else 
  result:=pointer(oldAddr);
end;  
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
//RegRegisterMethod(TIdIPMCastClient,'DoIPMCastRead',TypeInfo(_T0),[TypeInfo(TStream),TypeInfo(TIdSocketHandle)], pointer(84));
RegRegisterMethod(TIdIPMCastClient,'DoIPMCastRead',TypeInfo(_T0),[TypeInfo(TStream),TypeInfo(TIdSocketHandle)],  getVMTProcAddr('TIdIPMCastClient','DoIPMCastRead',84));


RegisterProc(TIdIPMCastListenerThread,'Create',mtConstructor,TypeInfo(_T1),[
TypeInfo(TIdIPMCastClient)],Addr(TIdIPMCastListenerThread.Create),cRegister);

RegRegisterMethod(TIdIPMCastListenerThread,'IPMCastRead',TypeInfo(_T2),NoParams,Addr(TIdIPMCastListenerThread.IPMCastRead));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TIPMCastReadEvent),[
TypeInfo(TObject),
TypeInfo(TStream),
TypeInfo(TIdSocketHandle)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
