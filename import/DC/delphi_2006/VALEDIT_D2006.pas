{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit VALEDIT_D2006;
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
  Windows,
  SysUtils,
  Classes,
  Messages,
  Controls,
  Grids,
  StdCtrls,
  ValEdit;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = procedure (p0 : TValueListEditor) of object;

_T1 = function : Boolean of object;

_T2 = procedure  of object;

_T3 = _T2;

_T4 = _T2;

_T5 = function (p0 : Integer;
p1 : Integer): string of object;

_T6 = procedure (p0 : Integer;
p1 : Integer;
const p2 : string) of object;

_T7 = procedure (const p0 : TStrings) of object;

_T8 = _T2;

_T9 = function (const p0 : string;
var p1 : Integer): Boolean of object;

_T10 = function (const p0 : string;
const p1 : string;
p2 : Boolean): Integer of object;

_T11 = _T2;

_T12 = _T1;

_T13 = _T0;

_T14 = function (const p0 : string;
p1 : Boolean): Boolean of object;

function __TValueListStrings__KeyIsValid__Wrapper(__Instance : TObject; cArgs : integer; pArgs : PArgList) : OleVariant;
begin
case cArgs of
1:
begin
result := TValueListStrings(__Instance).KeyIsValid(OleVariant(pargs^[0]));
end;
2:
begin
result := TValueListStrings(__Instance).KeyIsValid(OleVariant(pargs^[1]),OleVariant(pargs^[0]));
end;
end
end;

function __DC__GetTValueListEditor__Cells(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).Cells[OleVariant(Params^[1]), OleVariant(Params^[0])];
end;

procedure __DC__SetTValueListEditor__Cells(Instance : TObject; Params : PVariantArgList);
begin
TValueListEditor(Instance).Cells[OleVariant(Params^[2]), OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTValueListEditor__ColCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).ColCount;
end;

procedure __DC__SetTValueListEditor__ColCount(Instance : TObject; Params : PVariantArgList);
begin
TValueListEditor(Instance).ColCount:=OleVariant(Params^[0]);
end;

function __DC__GetTValueListEditor__ItemProps(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TValueListEditor(Instance).ItemProps[OleVariant(Params^[0])]);
end;

procedure __DC__SetTValueListEditor__ItemProps(Instance : TObject; Params : PVariantArgList);
begin
TValueListEditor(Instance).ItemProps[OleVariant(Params^[1])]:=TItemProp(VarToObject(OleVariant(Params^[0])));
end;

function __DC__GetTValueListEditor__Keys(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).Keys[OleVariant(Params^[0])];
end;

procedure __DC__SetTValueListEditor__Keys(Instance : TObject; Params : PVariantArgList);
begin
TValueListEditor(Instance).Keys[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTValueListEditor__RowCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).RowCount;
end;

function __DC__GetTValueListEditor__Values(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).Values[OleVariant(Params^[0])];
end;

procedure __DC__SetTValueListEditor__Values(Instance : TObject; Params : PVariantArgList);
begin
TValueListEditor(Instance).Values[OleVariant(Params^[1])]:=OleVariant(Params^[0]);
end;

function __DC__GetTValueListEditor__VisibleColCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).VisibleColCount;
end;

function __DC__GetTValueListEditor__VisibleRowCount(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TValueListEditor(Instance).VisibleRowCount;
end;

function __DC__GetTValueListStrings__ItemProps(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := VarFromObject(TValueListStrings(Instance).ItemProps[OleVariant(Params^[0])]);
end;

procedure __DC__SetTValueListStrings__ItemProps(Instance : TObject; Params : PVariantArgList);
begin
TValueListStrings(Instance).ItemProps[OleVariant(Params^[1])]:=TItemProp(VarToObject(OleVariant(Params^[0])));
end;

procedure __RegisterProps;
begin
RegisterIndexedProperty(TValueListEditor,'Cells',2,False,__DC__GetTValueListEditor__Cells,__DC__SetTValueListEditor__Cells);
RegisterProperty(TValueListEditor,'ColCount',__DC__GetTValueListEditor__ColCount,__DC__SetTValueListEditor__ColCount);
RegisterIndexedProperty(TValueListEditor,'ItemProps',1,False,__DC__GetTValueListEditor__ItemProps,__DC__SetTValueListEditor__ItemProps);
RegisterIndexedProperty(TValueListEditor,'Keys',1,False,__DC__GetTValueListEditor__Keys,__DC__SetTValueListEditor__Keys);
RegisterProperty(TValueListEditor,'RowCount',__DC__GetTValueListEditor__RowCount,nil);
RegisterIndexedProperty(TValueListEditor,'Values',1,False,__DC__GetTValueListEditor__Values,__DC__SetTValueListEditor__Values);
RegisterProperty(TValueListEditor,'VisibleColCount',__DC__GetTValueListEditor__VisibleColCount,nil);
RegisterProperty(TValueListEditor,'VisibleRowCount',__DC__GetTValueListEditor__VisibleRowCount,nil);
RegisterIndexedProperty(TValueListStrings,'ItemProps',1,False,__DC__GetTValueListStrings__ItemProps,__DC__SetTValueListStrings__ItemProps);
end;

const __ConstNames0 : array[0..6] of string = (
'doColumnTitles'
,'doAutoColResize'
,'doKeyColFixed'
,'keyEdit'
,'keyAdd'
,'keyDelete'
,'keyUnique'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,doColumnTitles));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,doAutoColResize));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[2] ,doKeyColFixed));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[3] ,keyEdit));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[4] ,keyAdd));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[5] ,keyDelete));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[6] ,keyUnique));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..2] of TClass = (
TItemProp,
TValueListEditor,
TValueListStrings
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
RegisterProc(TItemProp,'Create',mtConstructor,TypeInfo(_T0),[
TypeInfo(TValueListEditor)],Addr(TItemProp.Create),cRegister);

RegRegisterMethod(TItemProp,'HasPickList',TypeInfo(_T1),[TypeInfo(Boolean)],Addr(TItemProp.HasPickList));

//RegRegisterMethod(TValueListEditor,'AdjustColWidths',TypeInfo(_T2),NoParams, pointer(248));
RegRegisterMethod(TValueListEditor,'AdjustColWidths',TypeInfo(_T2),NoParams,  getVMTProcAddr('TValueListEditor','AdjustColWidths',248));


//RegRegisterMethod(TValueListEditor,'AdjustRowCount',TypeInfo(_T3),NoParams, pointer(252));
RegRegisterMethod(TValueListEditor,'AdjustRowCount',TypeInfo(_T3),NoParams,  getVMTProcAddr('TValueListEditor','AdjustRowCount',252));


//RegRegisterMethod(TValueListEditor,'DoOnValidate',TypeInfo(_T4),NoParams, pointer(256));
RegRegisterMethod(TValueListEditor,'DoOnValidate',TypeInfo(_T4),NoParams,  getVMTProcAddr('TValueListEditor','DoOnValidate',256));


//RegRegisterMethod(TValueListEditor,'GetCell',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string)], pointer(260));
RegRegisterMethod(TValueListEditor,'GetCell',TypeInfo(_T5),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string)],  getVMTProcAddr('TValueListEditor','GetCell',260));


//RegRegisterMethod(TValueListEditor,'SetCell',TypeInfo(_T6),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string)], pointer(264));
RegRegisterMethod(TValueListEditor,'SetCell',TypeInfo(_T6),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(string)],  getVMTProcAddr('TValueListEditor','SetCell',264));


//RegRegisterMethod(TValueListEditor,'SetStrings',TypeInfo(_T7),[TypeInfo(TStrings)], pointer(268));
RegRegisterMethod(TValueListEditor,'SetStrings',TypeInfo(_T7),[TypeInfo(TStrings)],  getVMTProcAddr('TValueListEditor','SetStrings',268));


RegRegisterMethod(TValueListEditor,'StringsChanging',TypeInfo(_T8),NoParams, pointer(MinVMTOffset - 101));

RegRegisterMethod(TValueListEditor,'FindRow',TypeInfo(_T9),[
TypeInfo(string),
TypeInfo(Integer),TypeInfo(Boolean)],Addr(TValueListEditor.FindRow));

RegRegisterMethod(TValueListEditor,'InsertRow',TypeInfo(_T10),[
TypeInfo(string),
TypeInfo(string),
TypeInfo(Boolean),TypeInfo(Integer)],Addr(TValueListEditor.InsertRow));

RegRegisterMethod(TValueListEditor,'Refresh',TypeInfo(_T11),NoParams,Addr(TValueListEditor.Refresh));

RegRegisterMethod(TValueListEditor,'RestoreCurrentRow',TypeInfo(_T12),[TypeInfo(Boolean)],Addr(TValueListEditor.RestoreCurrentRow));

RegisterProc(TValueListStrings,'Create',mtConstructor,TypeInfo(_T13),[
TypeInfo(TValueListEditor)],Addr(TValueListStrings.Create),cRegister);

RegisterProc(TValueListStrings,'KeyIsValid',mtScriptMethod,TypeInfo(_T14),[
TypeInfo(string),
TypeInfo(Boolean),TypeInfo(Boolean)],Addr(__TValueListStrings__KeyIsValid__Wrapper),cRegister);

end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
_mreg_0;
RegisterEvent(TypeInfo(TGetPickListEvent),[
TypeInfo(TObject),
TypeInfo(string),
TypeInfo(TStrings)]);

RegisterEvent(TypeInfo(TOnValidateEvent),[
TypeInfo(TObject),
TypeInfo(Longint),
TypeInfo(Longint),
TypeInfo(string),
TypeInfo(string)]);

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
end.