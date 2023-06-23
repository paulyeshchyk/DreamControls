{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
{} unit sdClasses;

interface

Uses Windows, SysUtils, Classes, Controls, StdCtrls, Graphics,
     dcDreamLib, dcSystem, ShellApi, dcMemo, dcString, dcDSLib, sdMain, Registry, CommCtrl{$IFDEF D4}ImgList{$ENDIF};
{$I dc.inc}

Const
  DefaultImageIndex=0;
  ProjectImageIndex=1;
  AppImageIndex=2;
  
  ShowErrorCreateMDMDialog='ShowErrorCreateDialog';

Var
  ErrorStyle:Integer;
  BreakPointEnabledStyle:Integer;
  BreakPointDisabledStyle:Integer;
  ExecutionPoint:Integer;
  NonSourceText:Integer;

Type
  PBoolean=^Boolean;
  TSourceManager=Class;
  TBreakPoint=Class;
  TBreakPoints=Class;
  TWatchItems=Class;

  TEditMode=(emNew,emEdit);

  //Actions
  TSourceAction=(saAddSource,saShowSource,saBeforeHideSource,saAfterHideSource,saStateChanged);

  TDebuggerSource=Class(TMemoSource)
  Private
    FInBreakPointEvent:Boolean;
    FSourceManager:TSourceManager;
    FUnitHandle:Integer;
    Function GetMemo:TDCMemo;
    Procedure AddBreakPoint(ALine:Integer;AEnabled:Boolean);
    Function IsBreakPointAtLine(ALine:Integer;AEnabled:PBoolean):Boolean;
    Procedure OnAddBreakPoint(BreakPoint:TBreakPoint);
    Procedure OnBreakPointEvent(BreakPoint,BreakPointNew:TBreakPoint;Action:TNotifyAction);
    Procedure OnRemoveBreakPoint(BreakPoint:TBreakPoint);
    Procedure RemoveBreakPoint(ALine:Integer);
    Procedure RestoreBreakPoints;
    Procedure SetUnitHandle(const Value:Integer);
    Procedure UpdateText;
  Public
    Constructor Create(AOwner:TSourceManager);reintroduce;
    Destructor Destroy;override;

    Procedure SetExecutionLine(Value:Integer);
    Procedure SetExecutionLineInternal(Value:Integer);
    Procedure ShowLine(Value:Integer);
    Procedure SwitchBreakPoint;
    Procedure SwitchBreakPointEx(ALine:Integer);
    procedure AddExternalBreakPoint(aLine:Integer);
    Procedure TempUnhighlightLine;override;

    Property Memo:TDCMemo read GetMemo;
    Property UnitHandle:Integer read FUnitHandle write SetUnitHandle;
  End;

  TSourceEvent=Procedure(Source:TDebuggerSource;Action:TSourceAction) Of Object;

  TSourceManager=Class
  Private
    FBreakPoints:TBreakPoints;
    FCurrentSource:TDebuggerSource;
    FExecutionLine:Integer;
    FExecutionUnit:Integer;
    FHandlers:TRecordList;
    FHighLightLine:Integer;
    FHighlightSource:TDebuggerSource;
    FInBreakMode:Boolean;
    FInEvaluateMode:Boolean;
    FProject:TScriptProject;
    FSources:TList;
    FWatchItems:TWatchItems;
    Function GetSource(Index:Integer):TDebuggerSource;
    Function GetSourceCount:Integer;
    Procedure NotifyHandlers(Source:TDebuggerSource;Action:TSourceAction);
    Procedure OnProjectEvent(Project:TScriptProject;Action:TNotifyAction;SubItem:Pointer);
    Procedure SetInBreakMode(Value:Boolean);
    Procedure SetProject(Const Value:TScriptProject);
  Protected
    Procedure DoAddSource(Source:TDebuggerSource);
    Procedure DoAfterHideSource(Source:TDebuggerSource);
    Procedure DoBeforeHideSource(Source:TDebuggerSource);
    Procedure DoShowSource(Source:TDebuggerSource);
  Public
    Constructor Create;
    Destructor Destroy;override;

    Procedure AddBreakPoint(BreakPoint:TBreakPoint);
    Function AddUnit(AUnitHandle:Integer):TDebuggerSource;
    Function Evaluate(Const Expression:String;TimeOut:Integer;AllowSideEffects:Boolean;Var StrResult:String):Boolean;
    Procedure GetStackFrames(GetStackFramesProc:TGetStackFramesProc);
    Function GetTextAtCursor:String;
    Function GetUnitName(AUnitHandle:Integer):String;
    Procedure GetUnits(UnitList:TList);
    Function GetUnitText(AUnitHandle:Integer):String;
    Procedure HideSource(Source:TDebuggerSource);
    Procedure HideSources;
    Function IndexOf(Source:TDebuggerSource):Integer;
    Procedure RemoveBreakPoint(BreakPoint:TBreakPoint);
    Procedure RegisterHandler(Const SourceEvent:TSourceEvent);
    Procedure SetBPData(BreakPoint:TBreakPoint;BreakPointParts:TBreakPointParts);
    Procedure SetExecutionLine(Value:Integer);
    Procedure SetExecutionLineInternal(Value:Integer);
    Procedure SetHighLightLine(ALine:Integer;Style:Integer);
    Procedure SwitchBreakPoint;
    Procedure ViewSource(Source:TDebuggerSource);
    Procedure ViewUnit(AUnitHandle:Integer);
    Procedure ViewUnitLine(AUnitHandle:Integer;ALine:Integer);
    Procedure UnRegisterHandler(Const SourceEvent:TSourceEvent);

    Property BreakPoints:TBreakPoints read FBreakPoints;
    Property CurrentSource:TDebuggerSource read FCurrentSource;
    Property ExecutionLine:Integer read FExecutionLine write SetExecutionLine;
    Property ExecutionUnit:Integer read FExecutionUnit write FExecutionUnit;
    Property HighlightLine:Integer read FHighlightLine;
    Property InBreakMode:Boolean read FInBreakMode write SetInBreakMode;
    Property InEvaluateMode:Boolean read FInEvaluateMode;
    Property Project:TScriptProject read FProject write SetProject;
    Property SourceCount:Integer read GetSourceCount;
    Property Sources[Index:Integer]:TDebuggerSource read GetSource;
    Property WatchItems:TWatchItems read FWatchItems;

    Function FindSource(AUnitHandle:Integer):TDebuggerSource;
  End;

  TBreakPointEvent=Procedure(BreakPoint,BreakPointNew:TBreakPoint;Action:TNotifyAction) Of Object;

  TBreakPoint=Class(TCustomBreakPoint)
  Private
    FHandle:Integer;
    Function GetBreakPoints:TBreakPoints;
  Public
    Destructor Destroy;override;

    Procedure Assign(Source:TPersistent);override;

    Property BreakPoints:TBreakPoints read GetBreakPoints;
    Property Handle:Integer read FHandle write FHandle;
  End;

  TBreakPoints=Class(TCollection)
  Private
    FDisableProjectRemove:Boolean;
    FHandlers:TRecordList;
    FSourceManager:TSourceManager;
    Function GetItem(Index:Integer):TBreakPoint;
    Procedure NotifyHandlers(BreakPoint,BreakPointNew:TBreakPoint;Action:TNotifyAction);
  Protected
  Public
    Constructor Create(SourceManager:TSourceManager);virtual;
    Destructor Destroy;override;

    Procedure Add(AUnitHandle:Integer;ALine:Integer;AEnabled:Boolean);reintroduce;
    Procedure AddBreakPoint(BreakPoint:TBreakPoint);
    Procedure Change(OldBreakPoint,NewBreakPoint:TBreakPoint);
    Property DisableProjectRemove:Boolean read FDisableProjectRemove write FDisableProjectRemove;
    Function IndexOf(AUnitHandle:Integer;ALine:Integer;AEnabled:PBoolean):Integer;reintroduce;
    Procedure RegisterHandler(Const BreakPointEvent:TBreakPointEvent);
    Procedure Remove(AUnitHandle:Integer;ALine:Integer);reintroduce;
    Procedure RemoveUnitBreakPoints(AUnitHandle:Integer);
    Procedure UnRegisterHandler(Const BreakPointEvent:TBreakPointEvent);

    Property Items[Index:Integer]:TBreakPoint read GetItem;
  End;

  TWatchItem=Class(TCollectionItem)
  Private
    FEnabled:Boolean;
    FExpression:String;
    FValue:String;
    Function GetWatchItems:TWatchItems;
    Procedure SetEnabled(Value:Boolean);
    Procedure SetExpression(Const Value:String);
  Public
    Procedure Assign(Source:TPersistent);override;
    Procedure Recalc;

    Property Value:String read FValue;
    Property WatchItems:TWatchItems read GetWatchItems;
  Published
    Property Enabled:Boolean read FEnabled write SetEnabled;
    Property Expression:String read FExpression write SetExpression;
  End;

  TWatchEvent=Procedure(WatchItem:TWatchItem;Action:TNotifyAction) Of Object;

  TWatchItems=Class(TCollection)
  Private
    FEnabled:Boolean;
    FHandlers:TRecordList;
    FSourceManager:TSourceManager;
    Function GetItem(Index:Integer):TWatchItem;
    Procedure NotifyHandlers(WatchItem:TWatchItem;Action:TNotifyAction);
  Public
    Constructor Create(SourceManager:TSourceManager);virtual;
    Destructor Destroy;override;

    Procedure Add(Const AExpression:String;AEnabled:Boolean);reintroduce;
    Procedure AddWatch(WatchItem:TWatchItem);
    Procedure Changed(WatchItem:TWatchItem);
    Procedure Recalc;
    Procedure RegisterHandler(Const WatchEvent:TWatchEvent);
    Procedure Remove(WatchItem:TWatchItem);
    Procedure UnRegisterHandler(Const WatchEvent:TWatchEvent);

    Property Enabled:Boolean read FEnabled write FEnabled;
    Property Items[Index:Integer]:TWatchItem read GetItem;
    Property SourceManager:TSourceManager read FSourceManager;
  End;

  TVersionInfo=Record
    VerHigh,VerLow:Integer;
  End;

  TIconManager=Class
  Private
    FIcons:TStringList;
    FImageList:TImageList;
    Procedure AddIcon(Const IconResName:String);
    Function GetIcon(Index:Integer):TIcon;
  Public
    Constructor Create;
    Destructor Destroy;override;

    Function GetExtentionIndex(Const FileName:String):Integer;

    Property Icons[Index:Integer]:TIcon read GetIcon;
    Property ImageList:TImageList read FImageList;
  End;

Var
  SourceManager:TSourceManager;
  IconManager:TIconManager;

Function GetFileVersion(const FileName:String):TVersionInfo;
Function GetStringFromStrings(Strings:TStrings):String;
Procedure JumpToURL(Const URL:String);

implementation
Uses Consts ;

Const
  //DebuggerMemo consts
  giEnabledBreakPoint=0;
  giDisabledBreakPoint=13;
  giEmpty=11;
  giExecutionLine=12;

  DefaultDelimiters='{}+-/*():=.,;><$#[]^@&~|%''';

  SErrProcessNotAccesible='process not accesible';
  SErrDuplicateBreakpoints='Duplicate breakpoints';

Procedure DuplicateBreakpoints;
Begin
  Error(SErrDuplicateBreakpoints);
End;

{ TDebuggerSource }

Constructor TDebuggerSource.Create(AOwner:TSourceManager);
Begin
  Inherited Create(Nil);
  LeaveSpacesAndTabs := true; 
  FSourceManager:=AOwner;
  FSourceManager.BreakPoints.RegisterHandler(OnBreakPointEvent);
  ReadOnly:=True;
  Delimeters:=DefaultDelimiters;
End;

Destructor TDebuggerSource.Destroy;
Begin
  FSourceManager.BreakPoints.UnRegisterHandler(OnBreakPointEvent);
  Inherited;
End;

Procedure TDebuggerSource.AddBreakPoint(ALine:Integer;AEnabled:Boolean);
Begin
  SourceManager.BreakPoints.Add(UnitHandle,ALine,AEnabled);
End;

Function TDebuggerSource.IsBreakPointAtLine(ALine:Integer;AEnabled:PBoolean):Boolean;
Begin
  Result:=SourceManager.BreakPoints.IndexOf(UnitHandle,ALine,AEnabled)>=0;
End;

Function TDebuggerSource.GetMemo:TDCMemo;
Var
  List:TList;
Begin
  List:=TList.Create;
  Try
    GetConnectedMemos(Self,List);
    Result:=List[0];
  Finally
    List.Free;
  End;
End;

Procedure TDebuggerSource.OnAddBreakPoint(BreakPoint:TBreakPoint);
Begin
  With BreakPoint Do
  Begin
    If BreakPoint.Enabled Then
      ImageBit[Line,giEnabledBreakPoint]:=True
    Else
      ImageBit[Line,giDisabledBreakPoint]:=True;
    If (SourceManager.ExecutionUnit=FUnitHandle) And (FSourceManager.ExecutionLine=Line) Then
    Begin
      ImageBit[FSourceManager.ExecutionLine,giEmpty]:=False;
      ImageBit[Line,giExecutionLine]:=True;
    End
    Else
      If Enabled Then
        LineTextStyle[Line]:=BreakPointEnabledStyle
      Else
        LineTextStyle[Line]:=BreakPointDisabledStyle;
  End;
End;

Procedure TDebuggerSource.OnBreakPointEvent(BreakPoint,BreakPointNew:TBreakPoint;Action:TNotifyAction);
Begin
  FInBreakPointEvent:=True;
  Try
    If BreakPoint.UnitHandle=FUnitHandle Then
      Case Action Of
        naAdd:OnAddBreakPoint(BreakPoint);
        naChange,naRemove:OnRemoveBReakPoint(BreakPoint);
      End;
    If (Action=naChange) And (BreakPointNew.UnitHandle=FUnitHandle) Then
      OnAddBreakPoint(BreakPointNew);
  Finally
    FInBreakPointEvent:=False;
  End;    
End;

Procedure TDebuggerSource.OnRemoveBreakPoint(BreakPoint:TBreakPoint);
Begin
  With BreakPoint Do
  Begin
    If BreakPoint.Enabled Then
      ImageBit[Line,giEnabledBreakPoint]:=False
    Else
      ImageBit[Line,giDisabledBreakPoint]:=False;
    If (SourceManager.ExecutionUnit=FUnitHandle) And (FSourceManager.ExecutionLine=Line) Then
      ImageBit[FSourceManager.ExecutionLine,giEmpty]:=True
    Else
      LineTextStyle[Line]:=0;
  End;
End;

Procedure TDebuggerSource.RemoveBreakPoint(ALine:Integer);
Begin
  SourceManager.BreakPoints.Remove(FUnitHandle,ALine);
End;

Procedure TDebuggerSource.RestoreBreakPoints;
Var
  I:Integer;
  Data:TBreakPoint;
Begin
  With SourceManager Do
    For I:=0 To BreakPoints.Count-1 Do
    Begin
      Data:=BreakPoints.Items[I];
      If Data.UnitHandle=UnitHandle Then
        OnAddBreakPoint(Data);
    End;
End;

Procedure TDebuggerSource.SetUnitHandle(const Value:Integer);
Begin
  If FUnitHandle=Value Then
    Exit;
  FUnitHandle:=Value;
  If Value>=0 Then
    UpdateText
  Else
    Lines.Clear;
End;

Procedure TDebuggerSource.SwitchBreakPoint;
Begin
  SwitchBreakPointEx(CaretPoint.Y);
End;

Procedure TDebuggerSource.SetExecutionLine(Value:Integer);
Begin
  SetExecutionLineInternal(Value);
  If Value>=0 Then
    ShowLine(Value);
End;

Procedure TDebuggerSource.SetExecutionLineInternal(Value:Integer);
Var
  AEnabled:Boolean;
  SaveExecutionLine:Integer;
Begin
  With FSourceManager Do
  Begin
    SaveExecutionLine:=FExecutionLine;
    FExecutionLine:=Value;
    If SaveExecutionLine<>-1 Then
    Begin
      ImageBit[SaveExecutionLine,giExecutionLine]:=False;
      If IsBreakPointAtLine(SaveExecutionLine,@AEnabled) Then
      Begin
        If AEnabled Then
          LineTextStyle[SaveExecutionLine]:=BreakPointEnabledStyle
        Else
          LineTextStyle[SaveExecutionLine]:=BreakPointDisabledStyle
      End
      Else
      Begin
        LineTextStyle[SaveExecutionLine]:=0;
        ImageBit[SaveExecutionLine,giEmpty]:=False;
      End;
    End;

    If Value>=0 Then
    Begin
      LineTextStyle[FExecutionLine]:=ExecutionPoint;
      ImageBit[FExecutionLine,giExecutionLine]:=True;
      If Not IsBreakPointAtLine(FExecutionLine,Nil) Then
        ImageBit[FExecutionLine,giEmpty]:=True;
    End
  End;
End;

Procedure TDebuggerSource.ShowLine(Value:Integer);
Begin
  If (Value<Memo.WinLinePos) Or (Value>=Memo.WinLinePos+Memo.GetMaxCaretLine+1) Then
  Begin
    CaretPoint:=Point(0,Value);
    Memo.CenterScreenOnLine
  End
  Else
    CaretPoint:=Point(0,Value);
End;

procedure TDebuggerSource.AddExternalBreakPoint(aLine:Integer);
begin
  If not(IsBreakPointAtLine(ALine,Nil)) Then
    AddBreakPoint(ALine,True);
end;

Procedure TDebuggerSource.SwitchBreakPointEx(ALine:Integer);
Begin
  If IsBreakPointAtLine(ALine,Nil) Then
    RemoveBreakPoint(ALine)
  Else
    AddBreakPoint(ALine,True)
End;

Procedure TDebuggerSource.TempUnhighlightLine;
Var
  TextStyleIndex:Integer;
  AEnabled:Boolean;
Begin
  Inherited;
  If FInBreakPointEvent Then
    Exit;
  TextStyleIndex:=-1;
  If (SourceManager.FHighlightSource=Self) And
    (FSourceManager.ExecutionLine=FSourceManager.HighlightLine) Then
    TextStyleIndex:=ExecutionPoint
  Else
    If IsBreakPointAtLine(FSourceManager.HighlightLine,@AEnabled) Then
      If AEnabled Then
        TextStyleIndex:=BreakPointEnabledStyle
      Else
        TextStyleIndex:=BreakPointDisabledStyle;
  If TextStyleIndex>=0 Then
    LineTextStyle[FSourceManager.HighlightLine]:=TextStyleIndex;
  FSourceManager.FHighlightSource:=Nil;
End;

Procedure TDebuggerSource.UpdateText;
Begin
  SyntaxParser:= nil;
  Lines.Text:=FSourceManager.GetUnitText(FUnitHandle);
  ObjectName:=FSourceManager.GetUnitName(FUnitHandle);
  SyntaxParser:=SourceManager.Project.GetUnitParser(FUnitHandle);
  RestoreBreakPoints;
  If SourceManager.ExecutionUnit=UnitHandle Then
    SetExecutionLine(SourceManager.ExecutionLine);
End;

{ TSourceManager }

Constructor TSourceManager.Create;
Begin
  Inherited;
  FExecutionLine:=-1;
  FBreakPoints:=TBreakPoints.Create(Self);
  FWatchItems:=TWatchItems.Create(Self);
  FHighlightLine:=-1;
  RegisterProjectHandler(OnProjectEvent);
End;

Destructor TSourceManager.Destroy;
Begin
  UnRegisterProjectHandler(OnProjectEvent);
  FWatchItems.Free;
  FBreakPoints.Free;
  HideSources;
  Inherited;
End;

Procedure TSourceManager.AddBreakPoint(BreakPoint:TBreakPoint);
Begin
  FProject.AddBreakPoint(BreakPoint);
End;

Function TSourceManager.AddUnit(AUnitHandle:Integer):TDebuggerSource;
Begin
  Result:=FindSource(AUnitHandle);
  If Result=Nil Then
  Begin
    Result:=TDebuggerSource.Create(Self);
    If FSources=Nil Then
      FSources:=TList.Create;
    FSources.Add(Result);
    Result.UnitHandle:=AUnitHandle;
    If (AUnitHandle=FExecutionUnit) Then
      SetExecutionLineInternal(FExecutionLine);
    DoAddSource(Result);
    Result.JumpToFileBegin;
  End;
End;

Procedure TSourceManager.DoAddSource(Source:TDebuggerSource);
Begin
  NotifyHandlers(Source,saAddSource);
End;

Procedure TSourceManager.DoAfterHideSource(Source:TDebuggerSource);
Begin
  NotifyHandlers(Source,saAfterHideSource);
End;

Procedure TSourceManager.DoBeforeHideSource(Source:TDebuggerSource);
Begin
  NotifyHandlers(Source,saBeforeHideSource);
End;

Procedure TSourceManager.DoShowSource(Source:TDebuggerSource);
Begin
  NotifyHandlers(Source,saShowSource);
End;

Function TSourceManager.Evaluate(Const Expression:String;TimeOut:Integer;AllowSideEffects:Boolean;Var StrResult:String):Boolean;
Begin
  If FInBreakMode Then
  Begin
    FInEvaluateMode:=True;
    ProjectStateChanged(Project);
    Try
      Result:=FProject.Evaluate(Expression,TimeOut, AllowSideEffects, StrResult)
    Finally
      FInEvaluateMode:=False;
      ProjectStateChanged(Project);
    End;
  End
  Else
  Begin
    Result:=False;
    StrResult:=SErrProcessNotAccesible;
  End;
End;

Function TSourceManager.FindSource(AUnitHandle:Integer):TDebuggerSource;
Var
  I:Integer;
Begin
  If FSources=Nil Then
  Begin
    Result:=Nil;
    Exit;
  End;
  For I:=0 To FSources.Count-1 Do
  Begin
    Result:=FSources[I];
    If Result.UnitHandle=AUnitHandle Then
      Exit;
  End;
  Result:=Nil;
End;

Function TSourceManager.GetSource(Index:Integer):TDebuggerSource;
Begin
  Result:=FSources[Index];
End;

Function TSourceManager.GetSourceCount:Integer;
Begin
  If FSources=Nil Then
    Result:=0
  Else
    Result:=FSources.Count;
End;

Procedure TSourceManager.GetStackFrames(GetStackFramesProc:TGetStackFramesProc);
Begin
  If FInBreakMode Then
    FProject.GetStackFrames(GetStackFramesProc)
  Else
  Begin
    GetStackFramesProc(0,1,'');
    GetStackFramesProc(1,0,SErrProcessNotAccesible);
  End;
End;

Function TSourceManager.GetTextAtCursor:String;
Begin
  If SourceCount=0 Then
    Result:=''
  Else
    With CurrentSource Do
      If SelectionType<>stNotSelected Then
        Result:=GetStringFromStrings(SelStrings)
      Else
        Result:=TextAtCursor;
End;

Function TSourceManager.GetUnitName(AUnitHandle:Integer):String;
Begin
  Result:=FProject.GetUnitName(AUnitHandle);
End;

Procedure TSourceManager.GetUnits(UnitList:TList);
Begin
  FProject.GetUnits(UnitList);
End;

Function TSourceManager.GetUnitText(AUnitHandle:Integer):String;
Begin
  OutputDebugString(PChar('GetUnitText='+IntToStr(AUnitHandle)));
  Result:=FProject.GetUnitText(AUnitHandle);
End;

Procedure TSourceManager.HideSource(Source:TDebuggerSource);
Begin
  If Source=FHighlightSource Then
    FHighlightSource:=Nil;
  DoBeforeHideSource(Source);
  FSources.Remove(Source);
  Source.Free;
  If FSources.Count=0 Then
  Begin
    FSources.Free;
    FSources:=Nil;
    FCurrentSource:=Nil;
  End;
  DoAfterHideSource(Source);
End;

Procedure TSourceManager.HideSources;
Var
  I:Integer;
Begin
  If FSources<>Nil Then
  Begin
    For I:=FSources.Count-1 DownTo 0 Do
      HideSource(FSources[I]);
  End;
End;

Function TSourceManager.IndexOf(Source:TDebuggerSource):Integer;
Begin
  Result:=FSources.IndexOf(Source);
End;

Procedure TSourceManager.NotifyHandlers(Source:TDebuggerSource;Action:TSourceAction);
Var
  I:Integer;
Begin
  If FHandlers<>Nil Then
    For I:=0 To FHandlers.Count-1 Do
      TSourceEvent(FHandlers[I]^)(Source,Action)
End;

Procedure TSourceManager.OnProjectEvent(Project:TScriptProject;Action:TNotifyAction;SubItem:Pointer);
Var
  Source:TDebuggerSource;
Begin
  If Project=FProject Then
  Case Action Of
    naSubItemChanged:
      Begin
        Source:=FindSource(Integer(SubItem));
        If Source<>Nil Then
          Source.UpdateText;
      End;
    naSubItemRemove:
      Begin
        Source:=FindSource(Integer(SubItem));
        If Source<>Nil Then
          HideSource(Source);
        BreakPoints.RemoveUnitBreakPoints(Integer(SubItem));
      End;
  End;
End;

Procedure TSourceManager.RemoveBreakPoint(BreakPoint:TBreakPoint);
Begin
  If FProject<>Nil Then
    FProject.RemoveBreakPoint(BreakPoint);
End;

Procedure TSourceManager.RegisterHandler(Const SourceEvent:TSourceEvent);
Begin
  If FHandlers=Nil Then
    FHandlers:=TRecordList.Create(SizeOf(TSourceEvent));
  FHandlers.Add(@TMethod(SourceEvent));
End;

Procedure TSourceManager.SetBPData(BreakPoint:TBreakPoint;BreakPointParts:TBreakPointParts);
Begin
  FProject.SetBPData(BreakPoint,BreakPointParts);
End;

Procedure TSourceManager.SetExecutionLine(Value:Integer);
Var
  Source:TDebuggerSource;
Begin
  If ExecutionUnit<>0 Then
  Begin
    Source:=FindSource(FExecutionUnit);
    If Source<>Nil Then
      Source.SetExecutionLine(Value);
  End;
  FExecutionLine:=Value;
End;

Procedure TSourceManager.SetExecutionLineInternal(Value:Integer);
Begin
  If ExecutionUnit<>0 Then
    FindSource(FExecutionUnit).SetExecutionLineInternal(Value);
  FExecutionLine:=Value;
End;

Procedure TSourceManager.SetHighLightLine(ALine:Integer;Style:Integer);
Begin
  FHighLightLine:=ALine;
  FCurrentSource.TempHighlightLine(ALine,Style);
  FHighlightSource:=FCurrentSource;
End;

Procedure TSourceManager.SetInBreakMode(Value:Boolean);
Begin
  If FInBreakMode=Value Then
    Exit;
  If FHighlightSource<>Nil Then
    FHighlightSource.TempUnHighlightLine;
  FInBreakMode:=Value;
  If Not FInBreakMode Then
    SourceManager.ExecutionLine:=-1;
  WatchItems.Recalc;
  NotifyHandlers(Nil,saStateChanged);  
End;

Procedure TSourceManager.SetProject(Const Value:TScriptProject);
Begin
  If FProject=Value Then
    Exit;
  FBreakPoints.Clear;
  FProject:=Value;
End;

Procedure TSourceManager.SwitchBreakPoint;
Begin
  FCurrentSource.SwitchBreakPoint;
End;

Procedure TSourceManager.ViewSource(Source:TDebuggerSource);
Begin
  If FHighlightSource<>Nil Then
    FHighlightSource.TempUnHighlightLine;
  FCurrentSource:=Source;
  DoShowSource(Source);
End;

Procedure TSourceManager.ViewUnit(AUnitHandle:Integer);
Begin
  FCurrentSource:=AddUnit(AUnitHandle);
  ViewSource(FCurrentSource);
End;

Procedure TSourceManager.ViewUnitLine(AUnitHandle:Integer;ALine:Integer);
Begin
  ViewUnit(AUnitHandle);
  FCurrentSource.ShowLine(ALine);
End;

Procedure TSourceManager.UnRegisterHandler(Const SourceEvent:TSourceEvent);
Begin
  FHandlers.Remove(@TMethod(SourceEvent));
  If FHandlers.Count=0 Then
  Begin
    FHandlers.Free;
    FHandlers:=Nil;
  End
End;

{ TBreakPoint }

Destructor TBreakPoint.Destroy;
Begin
  If Collection<>Nil Then
    With BreakPoints Do
    Begin
      If Not DisableProjectRemove Then
        FSourceManager.RemoveBreakPoint(Self);
      NotifyHandlers(Self,Nil,naRemove);
    End;
  Inherited;
End;

Procedure TBreakPoint.Assign(Source:TPersistent);
Var
  BreakPoint:TBreakPoint;
Begin
  If Source Is TBreakPoint Then
  Begin
    BreakPoint:=TBreakPoint(Source);
    UnitHandle:=BreakPoint.UnitHandle;
    Line:=BreakPoint.Line;
    Enabled:=BreakPoint.Enabled;
    Condition:=BreakPoint.Condition;
    PassCount:=BreakPoint.PassCount;
  End
  Else
    Inherited;
End;

Function TBreakPoint.GetBreakPoints:TBreakPoints;
Begin
  Result:=TBreakPoints(GetOwner);
End;

{ TBreakPoints }

Constructor TBreakPoints.Create(SourceManager:TSourceManager);
Begin
  Inherited Create(TBreakPoint);
  FSourceManager:=SourceManager;
End;

Destructor TBreakPoints.Destroy;
Begin
  Clear;
  Inherited;
End;

Procedure TBreakPoints.Add(AUnitHandle:Integer;ALine:Integer;AEnabled:Boolean);
Var
  BreakPoint:TBreakPoint;
Begin
  BreakPoint:=TBreakPoint.Create(Nil);
  BreakPoint.UnitHandle:=AUnitHandle;
  BreakPoint.Line:=ALine;
  BreakPoint.Enabled:=AEnabled;
  AddBreakPoint(BreakPoint);
End;

Procedure TBreakPoints.AddBreakPoint(BreakPoint:TBreakPoint);
Begin
  If IndexOf(BreakPoint.UnitHandle,BreakPoint.Line,Nil)>=0 Then
    DuplicateBreakPoints;
  FSourceManager.AddBreakPoint(BreakPoint);
  BreakPoint.Collection:=Self;
  NotifyHandlers(BreakPoint,Nil,naAdd);
End;

Procedure TBreakPoints.Change(OldBreakPoint,NewBreakPoint:TBreakPoint);
Var
  BPParts:TBreakPointParts;
Begin
  BPParts:=[];
  If OldBreakPoint.UnitHandle<>NewBreakPoint.UnitHandle Then
    BPParts:=BPParts+[bpUnit];
  If OldBreakPoint.Line<>NewBreakPoint.Line Then
    BPParts:=BPParts+[bpLine];
  If OldBreakPoint.Enabled<>NewBreakPoint.Enabled Then
    BPParts:=BPParts+[bpEnabled];
  If OldBreakPoint.Condition<>NewBreakPoint.Condition Then
    BPParts:=BPParts+[bpCondition];
  If OldBreakPoint.PassCount<>NewBreakPoint.PassCount Then
    BPParts:=BPParts+[bpPassCount];
  If BPParts=[] Then
    Exit;
  If (BPParts*[bpUnit,bpLine]<>[]) And (IndexOf(NewBreakPoint.UnitHandle,NewBreakPoint.Line,Nil)>=0) Then
    DuplicateBreakPoints;
  NewBreakPoint.Handle:=OldBreakPoint.Handle;
  FSourceManager.SetBPData(NewBreakPoint,BPParts);
  NotifyHandlers(OldBreakPoint,NewBreakPoint,naChange);
  OldBreakPoint.Assign(NewBreakPoint);
End;

Function TBreakPoints.GetItem(Index:Integer):TBreakPoint;
Begin
  Result:=TBreakPoint(Inherited Items[Index]);
End;

Function TBreakPoints.IndexOf(AUnitHandle:Integer;ALine:Integer;AEnabled:PBoolean):Integer;
Var
  I:Integer;
  Data:TBreakPoint;
Begin
  For I:=0 To Count-1 Do
  Begin
    Data:=Items[I];
    If (Data.UnitHandle=AUnitHandle) And (Data.Line=ALine) Then
    Begin
      If AEnabled<>Nil Then
        AEnabled^:=Data.Enabled;
      Result:=I;
      Exit;
    End;
  End;
  Result:=-1;
End;

Procedure TBreakPoints.NotifyHandlers(BreakPoint,BreakPointNew:TBreakPoint;Action:TNotifyAction);
Var
  I:Integer;
Begin
  If FHandlers<>Nil Then
    For I:=0 To FHandlers.Count-1 Do
      TBreakPointEvent(FHandlers[I]^)(BreakPoint,BreakPointNew,Action)
End;

Procedure TBreakPoints.RegisterHandler(Const BreakPointEvent:TBreakPointEvent);
Begin
  If FHandlers=Nil Then
    FHandlers:=TRecordList.Create(SizeOf(TBreakPointEvent));
  FHandlers.Add(@TMethod(BreakPointEvent));
End;

Procedure TBreakPoints.Remove(AUnitHandle:Integer;ALine:Integer);
Var
  Index:Integer;
Begin
  Index:=IndexOf(AUnitHandle,ALine,Nil);
  Items[Index].Free;
End;

Procedure TBreakPoints.RemoveUnitBreakPoints(AUnitHandle:Integer);
Var
  I:Integer;
  Item:TBreakPoint;
Begin
  FDisableProjectRemove:=True;
  Try
    For I:=Count-1 DownTo 0 Do
    Begin
      Item:=Items[I];
      If Item.UnitHandle=AUnitHandle Then
        Item.Free;
    End;
  Finally
    FDisableProjectRemove:=False;
  End;
End;

Procedure TBreakPoints.UnRegisterHandler(Const BreakPointEvent:TBreakPointEvent);
Begin
  FHandlers.Remove(@TMethod(BreakPointEvent));
  If FHandlers.Count=0 Then
  Begin
    FHandlers.Free;
    FHandlers:=Nil;
  End
End;

{ TWatchItem }

Procedure TWatchItem.Assign(Source:TPersistent);
Var
  WatchItem:TWatchItem;
Begin
  If Source Is TWatchItem Then
  Begin
    WatchItem:=TWatchItem(Source);
    FExpression:=WatchItem.Expression;
    FEnabled:=WatchItem.Enabled;
    If WatchItems<>Nil Then
    Begin
      Recalc;
      WatchItems.Changed(Self);
    End;  
  End;
End;

Function TWatchItem.GetWatchItems:TWatchItems;
Begin
  Result:=TWatchItems(Collection);
End;

Procedure TWatchItem.Recalc;
Begin
  If Enabled Then
    //With GetDebuggerEnvOptions Do
      WatchItems.SourceManager.Evaluate(FExpression,250//EvaluateTimeOut
      ,false//AllowSideEffects
      ,FValue)
  Else
    FValue:='';
End;                            

Procedure TWatchItem.SetEnabled(Value:Boolean);
Begin
  If FEnabled=Value Then
    Exit;
  FEnabled:=Value;
  If WatchItems<>Nil Then
  Begin
    Recalc;
    WatchItems.Changed(Self);
  End;  
End;

Procedure TWatchItem.SetExpression(Const Value:String);
Begin
  If FExpression=Value Then
    Exit;
  FExpression:=Value;
  If WatchItems<>Nil Then
  Begin
    Recalc;
    WatchItems.Changed(Self);
  End;  
End;

{ TWatchItems }

Constructor TWatchItems.Create(SourceManager:TSourceManager);
Begin
  Inherited Create(TWatchItem);
  FSourceManager:=SourceManager;
End;

Destructor TWatchItems.Destroy;
Begin
  Clear;
  Inherited;
End;

Procedure TWatchItems.Add(Const AExpression:String;AEnabled:Boolean);
Var
  WatchItem:TWatchItem;
Begin
  WatchItem:=TWatchItem.Create(Nil);
  WatchItem.FExpression:=AExpression;
  WatchItem.FEnabled:=AEnabled;
End;

Procedure TWatchItems.AddWatch(WatchItem:TWatchItem);
Begin
  WatchItem.Collection:=Self;
  WatchItem.Recalc;
  NotifyHandlers(WatchItem,naAdd);
End;

Procedure TWatchItems.Changed(WatchItem:TWatchItem);
Begin
  NotifyHandlers(WatchItem,naChange);
End;

Function TWatchItems.GetItem(Index:Integer):TWatchItem;
Begin
  Result:=TWatchItem(Inherited Items[Index]);
End;

Procedure TWatchItems.NotifyHandlers(WatchItem:TWatchItem;Action:TNotifyAction);
Var
  I:Integer;
Begin
  If FHandlers<>Nil Then
    For I:=0 To FHandlers.Count-1 Do
      TWatchEvent(FHandlers[I]^)(WatchItem,Action)
End;

Procedure TWatchItems.Recalc;
Var
  I:Integer;
  Item:TWatchItem;
  Value:String;
Begin
  If Enabled Then
    For I:=0 To Count-1 Do
    Begin
      Item:=Items[I];
      Value:=Item.Value;
      Item.Recalc;
      If Value<>Item.Value Then
        Changed(Item);
    End;
End;

Procedure TWatchItems.RegisterHandler(Const WatchEvent:TWatchEvent);
Begin
  If FHandlers=Nil Then
    FHandlers:=TRecordList.Create(SizeOf(TWatchEvent));
  FHandlers.Add(@TMethod(WatchEvent));
End;

Procedure TWatchItems.Remove(WatchItem:TWatchItem);
Begin
  NotifyHandlers(WatchItem,naRemove);
  WatchItem.Free;
End;

Procedure TWatchItems.UnRegisterHandler(Const WatchEvent:TWatchEvent);
Begin
  FHandlers.Remove(@TMethod(WatchEvent));
  If FHandlers.Count=0 Then
  Begin
    FHandlers.Free;
    FHandlers:=Nil;
  End
End;

function  GetIconFromFileExt(AExt: string): HICON;
var
  Reg: TRegistry;
  S: string;
  p , i: integer;
  Res: HICON;
begin
  Result := 0;
  Reg := TRegistry.Create;
  try
    with Reg do
    begin
      RootKey := HKEY_CLASSES_ROOT;
      if OpenKey('\' + AExt, false) then
        if OpenKey('\'+ ReadString('') + '\DefaultIcon', false) then
        begin
          S := ReadString('');
          P := BackPosEx(',', s, Length(s));
          if p <> 0 then
          begin
            i := StrToIntDef(Copy(s, p+1, Length(s) - p), -1);
            S := Copy(s, 1, p-1);
          end
          else
            i := 0;
          if i <> -1 then
            ExtractIconEx(PChar(S), i, Res, Result, 1);
        end;
    end;
  finally
    Reg.Free;
  end;
end;

Constructor TIconManager.Create;
Begin
  Inherited;
  FImageList:=TImageList.Create(Nil);
  FIcons:=TStringList.Create;

  AddIcon('DEFAULTICON');
  AddIcon('PROJECTICON');
  AddIcon('APPICON');
End;

Destructor TIconManager.Destroy;
Var
  I:Integer;
Begin
  FImageList.Free;
  For I:=0 To FIcons.Count-1 Do
    FIcons.Objects[I].Free;
  FIcons.Free;
  Inherited;
End;

Procedure TIconManager.AddIcon(Const IconResName:String);
Var
  AIcon:THandle;
  Icon:TIcon;
Begin
  Icon:=TIcon.Create;
  AIcon:=LoadIcon(hInstance,PChar(IconResName));
  Icon.Handle:=AIcon;
  FIcons.AddObject(#0,Icon);
  ImageList_AddIcon(FImageList.Handle,AIcon);
End;

Function TIconManager.GetExtentionIndex(Const FileName:String):Integer;
Var
  FileExt:String;
  AIcon:THandle;
  Icon:TIcon;
Begin
  FileExt:=LowerCase(ExtractFileExt(FileName));
  Result:=FIcons.IndexOf(FileExt);
  If Result<0 Then
  Begin
    AIcon:=GetIconFromFileExt(FileExt);
    If AIcon=0 Then
      AIcon:=GetIconFromFileExt(UpperCase(FileExt));
    If AIcon=0 Then
    Begin
      Result:=DefaultImageIndex;
      Exit;
    End
    Else
    Begin
      Icon:=TIcon.Create;
      Icon.Handle:=AIcon;
      Result:=FIcons.AddObject(FileExt,Icon);
      ImageList_AddIcon(FImageList.Handle,AIcon);
    End;
  End;
End;

Function TIconManager.GetIcon(Index:Integer):TIcon;
Begin
  Result:=TIcon(FIcons.Objects[Index]);
End;

Function GetFileVersion(const FileName:String):TVersionInfo;
Var
  Dummy:DWord;
  Data:Pointer;
  VersionInfo:PVSFixedFileInfo;
  Size:Integer;
Begin
  Size:=GetFileVersionInfoSize(PChar(FileName),Dummy);
  If Size=0 Then
  Begin
    Result.VerHigh:=0;
    Result.VerLow:=0;
  End;
   GetMem(Data,Size);
  Try
    If Not GetFileVersionInfo(PChar(FileName),0,Size,Data) Then
    Begin
      Result.VerHigh:=0;
      Result.VerLow:=0;
      Exit;
    End;
    VerQueryValue(Data,'\',Pointer(VersionInfo),Dummy);
    With Result,VersionInfo^ Do
    Begin
      VerHigh:=dwFileVersionMS;
      VerLow:=dwFileVersionLS;
    End;
  Finally
    FreeMem(Data);
  End;
End;

Function GetStringFromStrings(Strings:TStrings):String;
Var
  Len:Integer;
  I:Integer;
  Str:String;
Begin
  Len:=0;
  For I:=0 To Strings.Count-1 Do
    Inc(Len,Length(Strings[I])+1);
  SetLength(Result,Len);
  Len:=0;
  For I:=0 To Strings.Count-1 Do
  Begin
    Str:=Strings[I];
    Move(Str[1],Result[Len+1],Length(Str));
    Inc(Len,Length(Str)+1);
    Result[Len]:=' ';
  End;
End;

procedure JumpToURL(Const URL:String);
begin
  ShellExecute(0, nil, PChar(URL), nil, nil, SW_SHOW);
end;

Initialization
  SourceManager:=TSourceManager.Create;
  IconManager:=TIconManager.Create;

Finalization
  IconManager.Free;
  SourceManager.Free;
  SourceManager:=Nil;
end.
