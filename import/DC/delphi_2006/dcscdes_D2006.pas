{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit dcscdes_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  classes,
  dcsystem,
  dcfdes,
  dcconsts,
  dcscript,
  sysutils,
  dccdes,
  dcdreamlib,
  dcstring,
  editunit,
  dcidemem,
  dcapp,
  dcscdes;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function : TStrings of object;

_T1 = procedure (p0 : TObject;
p1 : Integer;
p2 : Integer) of object;

_T2 = procedure  of object;

function __DC__GetTCustomScriptDesigner__Script(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomScriptDesigner(Instance).Script);
end;

procedure __DC__SetTCustomScriptDesigner__Script(Instance : TObject; Params : PVariantArgList);
begin
TCustomScriptDesigner(Instance).Script:=TStrings(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTCustomScriptDesigner__Language(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCustomScriptDesigner(Instance).Language;
end;

procedure __DC__SetTCustomScriptDesigner__Language(Instance : TObject; Params : PVariantArgList);
begin
TCustomScriptDesigner(Instance).Language:=OleVariant(Params^[0]);
end;

function __DC__GetTCustomScriptDesigner__Events(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomScriptDesigner(Instance).Events);
end;

procedure __DC__SetTCustomScriptDesigner__Events(Instance : TObject; Params : PVariantArgList);
begin
TCustomScriptDesigner(Instance).Events:=TEventItems(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTCustomScriptDesigner__Scripter(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TCustomScriptDesigner(Instance).Scripter);
end;

procedure __DC__SetTCustomScriptDesigner__Scripter(Instance : TObject; Params : PVariantArgList);
begin
TCustomScriptDesigner(Instance).Scripter:=TDCScripter(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterProperty(TCustomScriptDesigner,'Script',__DC__GetTCustomScriptDesigner__Script,__DC__SetTCustomScriptDesigner__Script);
RegisterProperty(TCustomScriptDesigner,'Language',__DC__GetTCustomScriptDesigner__Language,__DC__SetTCustomScriptDesigner__Language);
RegisterProperty(TCustomScriptDesigner,'Events',__DC__GetTCustomScriptDesigner__Events,__DC__SetTCustomScriptDesigner__Events);
RegisterProperty(TCustomScriptDesigner,'Scripter',__DC__GetTCustomScriptDesigner__Scripter,__DC__SetTCustomScriptDesigner__Scripter);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..3] of TClass = (
TCustomMemoScriptDesigner,
TCustomScriptDesigner,
TDCLiteMemoScriptDsgn,
TDCLiteScriptDsgn
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
//RegRegisterMethod(TCustomScriptDesigner,'GetCodeStrings',TypeInfo(_T0),[TypeInfo(TStrings)], pointer(72));
RegRegisterMethod(TCustomScriptDesigner,'GetCodeStrings',TypeInfo(_T0),[TypeInfo(TStrings)],  getVMTProcAddr('TCustomScriptDesigner','GetCodeStrings',72));


//RegRegisterMethod(TCustomScriptDesigner,'ShowSourceEvent',TypeInfo(_T1),[TypeInfo(TObject),TypeInfo(Integer),TypeInfo(Integer)], pointer(76));
RegRegisterMethod(TCustomScriptDesigner,'ShowSourceEvent',TypeInfo(_T1),[TypeInfo(TObject),TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TCustomScriptDesigner','ShowSourceEvent',76));


//RegRegisterMethod(TCustomScriptDesigner,'UpdateCodeDesigner',TypeInfo(_T2),NoParams, pointer(80));
RegRegisterMethod(TCustomScriptDesigner,'UpdateCodeDesigner',TypeInfo(_T2),NoParams,  getVMTProcAddr('TCustomScriptDesigner','UpdateCodeDesigner',80));


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
