{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSYNC_D2006;
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
  IdGlobal,
  IdThread,
  IdSync;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure  of object;

_T1 = _T0;

_T2 = _T0;

_T3 = _T0;

{_T4 = procedure (p0 : TThreadMethod) of object;}

{_T5 = procedure (p0 : TThreadMethod) of object;}

_T6 = _T0;

_T7 = _T0;

_T8 = _T0;

function __DC__GetTIdNotify__MainThreadUsesNotify(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdNotify(Instance).MainThreadUsesNotify;
end;

procedure __DC__SetTIdNotify__MainThreadUsesNotify(Instance : TObject; Params : PVariantArgList);
begin
TIdNotify(Instance).MainThreadUsesNotify:=OleVariant(Params^[0]);
end;

function __DC__GetTIdSync__Thread(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdSync(Instance).Thread);
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdNotify,'MainThreadUsesNotify',__DC__GetTIdNotify__MainThreadUsesNotify,__DC__SetTIdNotify__MainThreadUsesNotify);
RegisterProperty(TIdSync,'Thread',__DC__GetTIdSync__Thread,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..2] of TClass = (
TIdNotify,
TIdNotifyMethod,
TIdSync
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
//RegisterProc(TIdNotify,'Create',mtConstructor,TypeInfo(_T0),NoParams, pointer(0),cRegister);
RegisterProc(TIdNotify,'Create',mtConstructor,TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdNotify','Create',0),cRegister);


//RegRegisterMethod(TIdNotify,'DoNotify',TypeInfo(_T1),NoParams, pointer(4));
RegRegisterMethod(TIdNotify,'DoNotify',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdNotify','DoNotify',4));


RegRegisterMethod(TIdNotify,'Notify',TypeInfo(_T2),NoParams,Addr(TIdNotify.Notify));

RegRegisterMethod(TIdNotify,'WaitFor',TypeInfo(_T3),NoParams,Addr(TIdNotify.WaitFor));

RegisterProc(TIdSync,'Create',mtConstructor,TypeInfo(_T6),NoParams, pointer(0),cRegister);

//RegRegisterMethod(TIdSync,'DoSynchronize',TypeInfo(_T7),NoParams, pointer(8));
RegRegisterMethod(TIdSync,'DoSynchronize',TypeInfo(_T7),NoParams,  getVMTProcAddr('TIdSync','DoSynchronize',8));


RegRegisterMethod(TIdSync,'Synchronize',TypeInfo(_T8),NoParams,Addr(TIdSync.Synchronize));

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
{RegisterProc(TIdNotify,'NotifyMethod',mtClassMethod,TypeInfo(_T4),[
TypeInfo(TThreadMethod)],Addr(TIdNotify.NotifyMethod),cRegister)}

{RegisterProc(TIdNotifyMethod,'Create',mtConstructor,TypeInfo(_T5),[
TypeInfo(TThreadMethod)],Addr(TIdNotifyMethod.Create),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.
