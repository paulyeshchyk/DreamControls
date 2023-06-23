{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSIMPLESERVER_D2006;
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
  IdSocketHandle,
  IdTCPConnection,
  IdStackConsts,
  IdSimpleServer;
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

_T4 = _T0;

_T5 = function : Boolean of object;

function __DC__GetTIdSimpleServer__AcceptWait(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSimpleServer(Instance).AcceptWait;
end;

procedure __DC__SetTIdSimpleServer__AcceptWait(Instance : TObject; Params : PVariantArgList);
begin
TIdSimpleServer(Instance).AcceptWait:=OleVariant(Params^[0]);
end;

function __DC__GetTIdSimpleServer__Binding(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TIdSimpleServer(Instance).Binding);
end;

function __DC__GetTIdSimpleServer__ListenHandle(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TIdSimpleServer(Instance).ListenHandle;
end;

procedure __RegisterProps;
begin
RegisterProperty(TIdSimpleServer,'AcceptWait',__DC__GetTIdSimpleServer__AcceptWait,__DC__SetTIdSimpleServer__AcceptWait);
RegisterProperty(TIdSimpleServer,'Binding',__DC__GetTIdSimpleServer__Binding,nil);
RegisterProperty(TIdSimpleServer,'ListenHandle',__DC__GetTIdSimpleServer__ListenHandle,nil);
end;

const __ConstNames0 : array[0..0] of string = (
'ID_ACCEPT_WAIT'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,ID_ACCEPT_WAIT));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..0] of TClass = (
TIdSimpleServer
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
//RegRegisterMethod(TIdSimpleServer,'Abort',TypeInfo(_T0),NoParams, pointer(136));
RegRegisterMethod(TIdSimpleServer,'Abort',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdSimpleServer','Abort',136));


//RegRegisterMethod(TIdSimpleServer,'BeginListen',TypeInfo(_T1),NoParams, pointer(140));
RegRegisterMethod(TIdSimpleServer,'BeginListen',TypeInfo(_T1),NoParams,  getVMTProcAddr('TIdSimpleServer','BeginListen',140));


//RegRegisterMethod(TIdSimpleServer,'Bind',TypeInfo(_T2),NoParams, pointer(144));
RegRegisterMethod(TIdSimpleServer,'Bind',TypeInfo(_T2),NoParams,  getVMTProcAddr('TIdSimpleServer','Bind',144));


RegRegisterMethod(TIdSimpleServer,'CreateBinding',TypeInfo(_T3),NoParams,Addr(TIdSimpleServer.CreateBinding));

//RegRegisterMethod(TIdSimpleServer,'EndListen',TypeInfo(_T4),NoParams, pointer(148));
RegRegisterMethod(TIdSimpleServer,'EndListen',TypeInfo(_T4),NoParams,  getVMTProcAddr('TIdSimpleServer','EndListen',148));


//RegRegisterMethod(TIdSimpleServer,'Listen',TypeInfo(_T5),[TypeInfo(Boolean)], pointer(152));
RegRegisterMethod(TIdSimpleServer,'Listen',TypeInfo(_T5),[TypeInfo(Boolean)],  getVMTProcAddr('TIdSimpleServer','Listen',152));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.