{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit CONVUTILS_D2006;
interface
{$I dc.inc}
{$D-,L-,Y-}
{$HINTS OFF}
{$WARNINGS OFF}
uses rtti, 
  activex,
  classes,
  dcscript,
  dcsystem,
  dcdreamlib,
  SysUtils,
  Math,
  Types,
  ConvUtils;
implementation
  var vmtMethodList:TStringList; 
{$IFDEF D3}
{$ELSE}
uses ole2;
type
  OleVariant = Variant;
{$ENDIF}
type
_T0 = function (const p0 : Double;
const p1 : TConvType;
const p2 : TConvType): Double of object;

_T1 = function (const p0 : TConvType;
const p1 : Double): Double of object;

_T2 = function (const p0 : Double;
const p1 : TConvType): Double of object;

_T3 = function (const p0 : Double;
const p1 : TConvType;
const p2 : Double;
const p3 : TConvType;
const p4 : TConvType): Double of object;

_T4 = _T3;

_T5 = _T0;

_T6 = _T0;

_T7 = function (const p0 : Double;
const p1 : Double;
const p2 : TConvType;
const p3 : Double;
const p4 : TConvType): Boolean of object;

_T8 = _T7;

_T9 = function (const p0 : Double;
const p1 : TConvType;
const p2 : Double;
const p3 : TConvType): TValueRelationship of object;

_T10 = function (const p0 : Double;
const p1 : TConvType;
const p2 : Double;
const p3 : TConvType): Boolean of object;

_T11 = function (const p0 : TConvFamily;
const p1 : string;
const p2 : Double): TConvType of object;

_T12 = procedure (const p0 : TConvType) of object;

_T13 = function (const p0 : string): TConvFamily of object;

_T14 = procedure (const p0 : TConvFamily) of object;

_T15 = function (const p0 : TConvType;
const p1 : TConvType): Boolean of object;

_T16 = function (const p0 : TConvType;
const p1 : TConvFamily): Boolean of object;

_T17 = procedure (const p0 : TConvFamily;
out p1 : TConvTypeArray) of object;

_T18 = procedure (out p0 : TConvFamilyArray) of object;

_T19 = function (p0 : string;
out p1 : TConvType): Double of object;

_T20 = function (p0 : string;
out p1 : Double;
out p2 : TConvType): Boolean of object;

_T21 = function (const p0 : Double;
const p1 : TConvType): string of object;

_T22 = function (const p0 : TConvType): string of object;

_T23 = function (const p0 : TConvFamily): string of object;

_T24 = function (const p0 : string;
out p1 : TConvType): Boolean of object;

_T25 = function (const p0 : string;
out p1 : TConvFamily): Boolean of object;

_T26 = function (const p0 : TConvType): TConvFamily of object;

_T27 = function (const p0 : TConvType;
out p1 : TConvFamily): Boolean of object;

_T28 = procedure (const p0 : string) of object;

_T29 = procedure (p0 : TConvFamily;
const p1 : string) of object;

_T30 = procedure (const p0 : TConvFamily;
const p1 : string;
const p2 : Double) of object;

_T31 = procedure (const p0 : TConvFamily;
const p1 : string) of object;

_T32 = function (const p0 : Double): Double of object;

_T33 = _T32;

{_T34 = procedure (const p0 : TConvFamily;
const p1 : string;
const p2 : TConversionProc;
const p3 : TConversionProc) of object;}

function __DC__GetTConvTypeInfo__ConvFamily(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TConvTypeInfo(Instance).ConvFamily;
end;

function __DC__GetTConvTypeInfo__ConvType(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TConvTypeInfo(Instance).ConvType;
end;

function __DC__GetTConvTypeInfo__Description(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TConvTypeInfo(Instance).Description;
end;

procedure __RegisterProps;
begin
RegisterProperty(TConvTypeInfo,'ConvFamily',__DC__GetTConvTypeInfo__ConvFamily,nil);
RegisterProperty(TConvTypeInfo,'ConvType',__DC__GetTConvTypeInfo__ConvType,nil);
RegisterProperty(TConvTypeInfo,'Description',__DC__GetTConvTypeInfo__Description,nil);
end;

function __DC__GetConvUtils__GConvUnitToStrFmt(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := ConvUtils.GConvUnitToStrFmt;
end;

procedure __DC__SetConvUtils__GConvUnitToStrFmt(Instance : TObject; Params : PVariantArgList);
begin
ConvUtils.GConvUnitToStrFmt:=OleVariant(Params^[0]);
end;

var __RegisteredVars : TList;
procedure __RegisterVars;
begin
__RegisteredVars := TList.Create;
__RegisteredVars.Add(RegisterVar('GConvUnitToStrFmt',__DC__GetConvUtils__GConvUnitToStrFmt,__DC__SetConvUtils__GConvUnitToStrFmt));
end;

procedure __UnregisterVars;
begin
__RegisteredVars.Free;
end;

const __ConstNames0 : array[0..1] of string = (
'CIllegalConvFamily'
,'CIllegalConvType'
);
var __RegisteredConstsList0 : TList;
procedure __RegisterConsts0;
begin
__RegisteredConstsList0 := TList.Create;
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[0] ,CIllegalConvFamily));
__RegisteredConstsList0.Add(RegisterConst(__ConstNames0[1] ,CIllegalConvType));
end;

procedure __UnregisterConsts0;
var i : integer;
begin
__RegisteredConstsList0.Free
end;

const ClassList : array[0..3] of TClass = (
EConversionError,
TConvTypeFactor,
TConvTypeInfo,
TConvTypeProcs
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
const MethodNames : array[0..29] of string = (
'Convert'
,'ConvertFrom'
,'ConvertTo'
,'ConvUnitAdd'
,'ConvUnitDiff'
,'ConvUnitInc'
,'ConvUnitDec'
,'ConvUnitWithinPrevious'
,'ConvUnitWithinNext'
,'ConvUnitCompareValue'
,'ConvUnitSameValue'
,'RegisterConversionType'
,'UnregisterConversionType'
,'RegisterConversionFamily'
,'UnregisterConversionFamily'
,'CompatibleConversionTypes'
,'CompatibleConversionType'
,'GetConvTypes'
,'GetConvFamilies'
,'StrToConvUnit'
,'TryStrToConvUnit'
,'ConvUnitToStr'
,'ConvTypeToDescription'
,'ConvFamilyToDescription'
,'DescriptionToConvType'
,'DescriptionToConvFamily'
,'ConvTypeToFamily'
,'TryConvTypeToFamily'
,'RaiseConversionError'
,'RaiseConversionRegError'
);

procedure __UnregisterProcs;
var i : integer;
begin
__RegisteredMethods.Free;
end;

procedure _mreg_0;
begin
RegisterProc(nil,MethodNames[0],mtProc,TypeInfo(_T0),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Double)],Addr(Convert),cRegister);

RegisterProc(nil,MethodNames[1],mtProc,TypeInfo(_T1),[
TypeInfo(TConvType),
TypeInfo(Double),TypeInfo(Double)],Addr(ConvertFrom),cRegister);

RegisterProc(nil,MethodNames[2],mtProc,TypeInfo(_T2),[
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(Double)],Addr(ConvertTo),cRegister);

RegisterProc(nil,MethodNames[3],mtProc,TypeInfo(_T3),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Double)],Addr(ConvUnitAdd),cRegister);

RegisterProc(nil,MethodNames[4],mtProc,TypeInfo(_T4),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Double)],Addr(ConvUnitDiff),cRegister);

RegisterProc(nil,MethodNames[5],mtProc,TypeInfo(_T5),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Double)],Addr(ConvUnitInc),cRegister);

RegisterProc(nil,MethodNames[6],mtProc,TypeInfo(_T6),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Double)],Addr(ConvUnitDec),cRegister);

RegisterProc(nil,MethodNames[7],mtProc,TypeInfo(_T7),[
TypeInfo(Double),
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(ConvUnitWithinPrevious),cRegister);

RegisterProc(nil,MethodNames[8],mtProc,TypeInfo(_T8),[
TypeInfo(Double),
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(ConvUnitWithinNext),cRegister);

RegisterProc(nil,MethodNames[9],mtProc,TypeInfo(_T9),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(TValueRelationship)],Addr(ConvUnitCompareValue),cRegister);

RegisterProc(nil,MethodNames[10],mtProc,TypeInfo(_T10),[
TypeInfo(Double),
TypeInfo(TConvType),
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(ConvUnitSameValue),cRegister);

RegisterProc(nil,MethodNames[11],mtProc,TypeInfo(_T11),[
TypeInfo(TConvFamily),
TypeInfo(string),
TypeInfo(Double),TypeInfo(TConvType)],Addr(RegisterConversionType),cRegister);

RegisterProc(nil,MethodNames[12],mtProc,TypeInfo(_T12),[
TypeInfo(TConvType)],Addr(UnregisterConversionType),cRegister);

RegisterProc(nil,MethodNames[13],mtProc,TypeInfo(_T13),[
TypeInfo(string),TypeInfo(TConvFamily)],Addr(RegisterConversionFamily),cRegister);

RegisterProc(nil,MethodNames[14],mtProc,TypeInfo(_T14),[
TypeInfo(TConvFamily)],Addr(UnregisterConversionFamily),cRegister);

RegisterProc(nil,MethodNames[15],mtProc,TypeInfo(_T15),[
TypeInfo(TConvType),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(CompatibleConversionTypes),cRegister);

RegisterProc(nil,MethodNames[16],mtProc,TypeInfo(_T16),[
TypeInfo(TConvType),
TypeInfo(TConvFamily),TypeInfo(Boolean)],Addr(CompatibleConversionType),cRegister);

RegisterProc(nil,MethodNames[17],mtProc,TypeInfo(_T17),[
TypeInfo(TConvFamily),
DynArrayInfo(TypeInfo(TConvTypeArray))],Addr(GetConvTypes),cRegister);

RegisterProc(nil,MethodNames[18],mtProc,TypeInfo(_T18),[
DynArrayInfo(TypeInfo(TConvFamilyArray))],Addr(GetConvFamilies),cRegister);

RegisterProc(nil,MethodNames[19],mtProc,TypeInfo(_T19),[
TypeInfo(string),
TypeInfo(TConvType),TypeInfo(Double)],Addr(StrToConvUnit),cRegister);

RegisterProc(nil,MethodNames[20],mtProc,TypeInfo(_T20),[
TypeInfo(string),
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(TryStrToConvUnit),cRegister);

RegisterProc(nil,MethodNames[21],mtProc,TypeInfo(_T21),[
TypeInfo(Double),
TypeInfo(TConvType),TypeInfo(string)],Addr(ConvUnitToStr),cRegister);

RegisterProc(nil,MethodNames[22],mtProc,TypeInfo(_T22),[
TypeInfo(TConvType),TypeInfo(string)],Addr(ConvTypeToDescription),cRegister);

RegisterProc(nil,MethodNames[23],mtProc,TypeInfo(_T23),[
TypeInfo(TConvFamily),TypeInfo(string)],Addr(ConvFamilyToDescription),cRegister);

RegisterProc(nil,MethodNames[24],mtProc,TypeInfo(_T24),[
TypeInfo(string),
TypeInfo(TConvType),TypeInfo(Boolean)],Addr(DescriptionToConvType),cRegister);

RegisterProc(nil,MethodNames[25],mtProc,TypeInfo(_T25),[
TypeInfo(string),
TypeInfo(TConvFamily),TypeInfo(Boolean)],Addr(DescriptionToConvFamily),cRegister);

RegisterProc(nil,MethodNames[26],mtProc,TypeInfo(_T26),[
TypeInfo(TConvType),TypeInfo(TConvFamily)],Addr(ConvTypeToFamily),cRegister);

RegisterProc(nil,MethodNames[27],mtProc,TypeInfo(_T27),[
TypeInfo(TConvType),
TypeInfo(TConvFamily),TypeInfo(Boolean)],Addr(TryConvTypeToFamily),cRegister);

RegisterProc(nil,MethodNames[28],mtProc,TypeInfo(_T28),[
TypeInfo(string)],Addr(RaiseConversionError),cRegister);

RegisterProc(nil,MethodNames[29],mtProc,TypeInfo(_T29),[
TypeInfo(TConvFamily),
TypeInfo(string)],Addr(RaiseConversionRegError),cRegister);

RegisterProc(TConvTypeFactor,'Create',mtConstructor,TypeInfo(_T30),[
TypeInfo(TConvFamily),
TypeInfo(string),
TypeInfo(Double)],Addr(TConvTypeFactor.Create),cRegister);

RegisterProc(TConvTypeInfo,'Create',mtConstructor,TypeInfo(_T31),[
TypeInfo(TConvFamily),
TypeInfo(string)],Addr(TConvTypeInfo.Create),cRegister);

//RegRegisterMethod(TConvTypeInfo,'ToCommon',TypeInfo(_T32),[TypeInfo(Double),TypeInfo(Double)], pointer(0));
RegRegisterMethod(TConvTypeInfo,'ToCommon',TypeInfo(_T32),[TypeInfo(Double),TypeInfo(Double)],  getVMTProcAddr('TConvTypeInfo','ToCommon',0));


//RegRegisterMethod(TConvTypeInfo,'FromCommon',TypeInfo(_T33),[TypeInfo(Double),TypeInfo(Double)], pointer(4));
RegRegisterMethod(TConvTypeInfo,'FromCommon',TypeInfo(_T33),[TypeInfo(Double),TypeInfo(Double)],  getVMTProcAddr('TConvTypeInfo','FromCommon',4));


end;
initialization
 vmtMethodList:=TStringList.Create;
vmtMethodList.sorted:=true;
vmtMethodList.duplicates:=dupIgnore;
fillVMTProcs;
__RegisteredMethods := TList.Create;
_mreg_0;
{RegisterProc(TConvTypeProcs,'Create',mtConstructor,TypeInfo(_T34),[
TypeInfo(TConvFamily),
TypeInfo(string),
TypeInfo(TConversionProc),
TypeInfo(TConversionProc)],Addr(TConvTypeProcs.Create),cRegister)}

__RegisterClasses;
__RegisterConsts0;
__RegisterProps;
__RegisterVars;
vmtMethodList.free

finalization
__UnRegisterClasses;
__UnregisterConsts0;
__UnRegisterVars;
__UnregisterProcs;
end.
