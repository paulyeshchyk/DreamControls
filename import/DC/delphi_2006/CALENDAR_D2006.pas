{*******************************************************}
{                                                       }
{ Import  unit generated by UNITIMPORTER program         }
{                                                       }
{*******************************************************}

{} unit CALENDAR_D2006;
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
  Controls,
  Messages,
  Windows,
  Forms,
  Graphics,
  StdCtrls,
  Grids,
  SysUtils,
  Calendar;
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

_T1 = function (p0 : Integer;
p1 : Integer): Integer of object;

_T2 = function : Integer of object;

_T3 = function (p0 : Integer): Boolean of object;

_T4 = _T0;

_T5 = _T0;

_T6 = _T0;

_T7 = _T0;

_T8 = _T0;

function __DC__GetTCalendar__CalendarDate(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCalendar(Instance).CalendarDate;
end;

procedure __DC__SetTCalendar__CalendarDate(Instance : TObject; Params : PVariantArgList);
begin
TCalendar(Instance).CalendarDate:=OleVariant(Params^[0]);
end;

function __DC__GetTCalendar__CellText(Instance : TObject; Params : PVariantArgList) : OleVariant;
begin
result := TCalendar(Instance).CellText[OleVariant(Params^[1]), OleVariant(Params^[0])];
end;

procedure __RegisterProps;
begin
RegisterProperty(TCalendar,'CalendarDate',__DC__GetTCalendar__CalendarDate,__DC__SetTCalendar__CalendarDate);
RegisterIndexedProperty(TCalendar,'CellText',2,False,__DC__GetTCalendar__CellText,nil);
end;

procedure __RegisterConsts0;
begin
end;

procedure __UnregisterConsts0;
begin
end;

const ClassList : array[0..0] of TClass = (
TCalendar
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
RegRegisterMethod(TCalendar,'Change',TypeInfo(_T0),NoParams, pointer(MinVMTOffset - 101));

//RegRegisterMethod(TCalendar,'DaysPerMonth',TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Integer)], pointer(248));
RegRegisterMethod(TCalendar,'DaysPerMonth',TypeInfo(_T1),[TypeInfo(Integer),TypeInfo(Integer),TypeInfo(Integer)],  getVMTProcAddr('TCalendar','DaysPerMonth',248));


//RegRegisterMethod(TCalendar,'DaysThisMonth',TypeInfo(_T2),[TypeInfo(Integer)], pointer(252));
RegRegisterMethod(TCalendar,'DaysThisMonth',TypeInfo(_T2),[TypeInfo(Integer)],  getVMTProcAddr('TCalendar','DaysThisMonth',252));


//RegRegisterMethod(TCalendar,'IsLeapYear',TypeInfo(_T3),[TypeInfo(Integer),TypeInfo(Boolean)], pointer(256));
RegRegisterMethod(TCalendar,'IsLeapYear',TypeInfo(_T3),[TypeInfo(Integer),TypeInfo(Boolean)],  getVMTProcAddr('TCalendar','IsLeapYear',256));


RegRegisterMethod(TCalendar,'NextMonth',TypeInfo(_T4),NoParams,Addr(TCalendar.NextMonth));

RegRegisterMethod(TCalendar,'NextYear',TypeInfo(_T5),NoParams,Addr(TCalendar.NextYear));

RegRegisterMethod(TCalendar,'PrevMonth',TypeInfo(_T6),NoParams,Addr(TCalendar.PrevMonth));

RegRegisterMethod(TCalendar,'PrevYear',TypeInfo(_T7),NoParams,Addr(TCalendar.PrevYear));

//RegRegisterMethod(TCalendar,'UpdateCalendar',TypeInfo(_T8),NoParams, pointer(260));
RegRegisterMethod(TCalendar,'UpdateCalendar',TypeInfo(_T8),NoParams,  getVMTProcAddr('TCalendar','UpdateCalendar',260));


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
