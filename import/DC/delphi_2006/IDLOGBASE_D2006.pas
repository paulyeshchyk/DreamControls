{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit IDLOGBASE_D2006;
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
  IdIntercept,
  IdSocketHandle,
  IdLogBase;
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

_T1 = procedure (const p0 : string) of object;

_T2 = procedure (const p0 : string;
const p1 : string) of object;

_T3 = _T2;

_T4 = _T0;

_T5 = procedure (const p0 : Boolean) of object;

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
TIdLogBase
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
//RegRegisterMethod(TIdLogBase,'Close',TypeInfo(_T0),NoParams, pointer(80));
RegRegisterMethod(TIdLogBase,'Close',TypeInfo(_T0),NoParams,  getVMTProcAddr('TIdLogBase','Close',80));


//RegRegisterMethod(TIdLogBase,'LogStatus',TypeInfo(_T1),[TypeInfo(string)], pointer(84));
RegRegisterMethod(TIdLogBase,'LogStatus',TypeInfo(_T1),[TypeInfo(string)],  getVMTProcAddr('TIdLogBase','LogStatus',84));


//RegRegisterMethod(TIdLogBase,'LogReceivedData',TypeInfo(_T2),[TypeInfo(string),TypeInfo(string)], pointer(88));
RegRegisterMethod(TIdLogBase,'LogReceivedData',TypeInfo(_T2),[TypeInfo(string),TypeInfo(string)],  getVMTProcAddr('TIdLogBase','LogReceivedData',88));


//RegRegisterMethod(TIdLogBase,'LogSentData',TypeInfo(_T3),[TypeInfo(string),TypeInfo(string)], pointer(92));
RegRegisterMethod(TIdLogBase,'LogSentData',TypeInfo(_T3),[TypeInfo(string),TypeInfo(string)],  getVMTProcAddr('TIdLogBase','LogSentData',92));


//RegRegisterMethod(TIdLogBase,'Open',TypeInfo(_T4),NoParams, pointer(96));
RegRegisterMethod(TIdLogBase,'Open',TypeInfo(_T4),NoParams,  getVMTProcAddr('TIdLogBase','Open',96));


//RegRegisterMethod(TIdLogBase,'SetActive',TypeInfo(_T5),[TypeInfo(Boolean)], pointer(100));
RegRegisterMethod(TIdLogBase,'SetActive',TypeInfo(_T5),[TypeInfo(Boolean)],  getVMTProcAddr('TIdLogBase','SetActive',100));


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
