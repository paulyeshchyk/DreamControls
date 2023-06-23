{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDSERVERIOHANDLER_D2006;
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
  SysUtils,
  IdComponent,
  IdIOHandlerSocket,
  IdStackConsts,
  IdIOHandler,
  IdThread,
  IdServerIOHandler;
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

_T1 = function (p0 : TIdStackSocketHandle;
p1 : TIdThread): TIdIOHandler of object;

function __TIdServerIOHandler__Accept__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := VarFromObject(TIdServerIOHandler(__Instance).Accept(OleVariant(pargs^[0])));
end;
2:
begin
result := VarFromObject(TIdServerIOHandler(__Instance).Accept(OleVariant(pargs^[1]),TIdThread(VarToObject(OleVariant(pargs^[0])))));
end;
end
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
TIdServerIOHandler
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
//RegRegisterMethod(TIdServerIOHandler,'Init',TypeInfo(_T0),NoParams, pointer(60));
RegRegisterMethod(TIdServerIOHandler,'Init',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdServerIOHandler','Init',60));


RegisterProc(TIdServerIOHandler,'Accept',mtScriptMethod,TypeInfo(_T1),[
TypeInfo(TIdStackSocketHandle),
TypeInfo(TIdThread),TypeInfo(TIdIOHandler)],Addr(__TIdServerIOHandler__Accept__Wrapper),cRegister);

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