{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
unit dcfdopt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dcpedit,dcedit, StdCtrls, dcgen, dccommon, dcfdes, dcconsts, dcdreamlib,
  ComCtrls, ShlObj, cxShellCommon, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxShellComboBox, cxSpinEdit,Variants, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters;

type
  TDesOptForm = class(TForm)
    FormDesGroup: TGroupBox;
    GridStepXLbl: TLabel;
    GridStepYLbl: TLabel;
    DesignerOptions: TDCPropCheckBox;
    SnapToGridChk: TDCPropCheckBox;
    ShowCapChk: TDCPropCheckBox;
    StepXEdit: TDCPropEditor;
    StepYEdit: TDCPropEditor;
    DsgnHintsChk: TDCPropCheckBox;
    GroupBox1: TGroupBox;
    ScriptPathCombo: TcxShellComboBox;
    Label1: TLabel;
    HistoryCheck: TCheckBox;
    HistorySpin: TcxSpinEdit;
    HistoryLabel: TLabel;
    procedure HistoryCheckClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    fDesOptions : TDesignerOptions;
    procedure SaveScriptPath;
    procedure SaveHistoryQTY;
  public
    procedure CMApplyOptions(var Msg : TMessage); message CM_APPLYOPTIONS;
  end;

var
  DesOptForm: TDesOptForm;
  
function getScriptPath:String;
function getHistoryQTY:Integer;

implementation
uses //OppConstants,
Registry{,
OPPConfiguration}
;

{$R *.DFM}

procedure TDesOptForm.FormCreate(Sender: TObject);
var i:Integer;
begin
  SetFormFont(self);

  GlobalDesignerOptions;

  fDesOptions := TDesignerOptions.Create;

  DesignerOptions.Component := fDesOptions;

 // Caption                    := SDesignerOptions;
  FormDesGroup.Caption       := SFormDesigner;
  GridStepXLbl.Caption       := SGridStepX;
  GridStepYLbl.Caption       := SGridStepY;
  DesignerOptions.Caption    := SDisplayGrid;
  SnapToGridChk.Caption      := SSnapToGrid;
  ShowCapChk.Caption         := SShowCaptions;
  DsgnHintsChk.Caption       := SDsgnHints;
  ScriptPathCombo.Path := GetScriptPath;
  i:=GetHistoryQTY;
  if i>0 then
  begin
    HistoryCheck.Checked:=true;
    HistorySpin.Enabled:=true;
    HistoryLabel.Enabled:=true;
    HistorySpin.Value:=i;
  end else
  begin
    HistoryCheck.Checked:=false;
    HistorySpin.Enabled:=false;
    HistoryLabel.Enabled:=false;
  end;
//  if Config<>Nil then
//  if Config.ExportScriptPath<>EmptyStr then
//  begin
//    ScriptPathCombo.Properties.ReadOnly:=true;
//    ScriptPathCombo.Enabled:=false;
//  end;
end;

procedure TDesOptForm.FormDestroy(Sender: TObject);
begin
  fDesOptions.Free;
end;

procedure TDesOptForm.HistoryCheckClick(Sender: TObject);
begin
  HistorySpin.Enabled:=HistoryCheck.Checked;
  HistoryLabel.Enabled:=HistoryCheck.Checked;
end;

procedure TDesOptForm.CMApplyOptions(var Msg : TMessage);
begin
  fDesOptions.ApplyOptions;
  SaveScriptPath;
  SaveHistoryQTY;
end;

function getHistoryQTY:Integer;
var Reg:TRegistry;
s:String;
i:Integer;
begin
  Reg:=TRegistry.Create;
  try
    reg.RootKey:=HKEY_CURRENT_USER;
    if reg.OpenKey(OPPKey+'Dream\DesignerFIS ',true)then
    begin
      result:=0;
      try
        s:=reg.ReadString('ScriptHistoryDepth');
        if TryStrToInt(s,i) then
        result:=i;
      except
        result:=0;
      end;
    end;
  finally
    reg.Free;
  end;
end;


function getScriptPath:String;
var Reg:TRegistry;
s:String;
pTempDir:String;
Buff: array[0..4095] of char;
dirs:TStringList;
begin
//  if Config<>Nil then
//  if Config.ExportScriptPath<>EmptyStr then
//  begin
//    dirs:=TStringList.Create;
//    try
//      dirs.Text:=Config.ExportScriptPath;
//      if (dirs.count>0) then
//      if (dirs.Strings[0]<>EmptyStr) then
//      begin
//        result:=dirs.Strings[0];
//        exit;
//      end;
//    finally
//      dirs.free;
//    end;
//  end;
  pTempDir:=GetEnvironmentVariable('TEMP');
//  SetString(pTempDir, Buff,
//  GetEnvironmentVariable(PAnsiChar('TEMP'), buff, SizeOf(Buff)));
  pTempDir:=IncludeTrailingBackslash(pTempdir)+'GulfStream';
  result:=pTempDir;
  Reg:=TRegistry.Create;
  try
    Reg.RootKey:=HKEY_CURRENT_USER;
    if reg.OpenKey(OPPKey+'Dream\DesignerFIS ',true)then
    begin
      s:=reg.ReadString('ScriptSavePath');
      if (s<>EmptyStr)and(DirectoryExists(s)) then
      result:=s;
    end;
  finally
    Reg.Free;
    if AnsiSameText(result,pTempDir) then
    ForceDirectories(pTempDir);
  end;
end;

procedure TDesOptForm.SaveHistoryQTY;
var Reg:TRegistry;
s:String;
begin
  Reg:=TRegistry.Create;
  try
    Reg.RootKey:=HKEY_CURRENT_USER;
//    HKEY_CURRENT_USER\Software\ASCON\GulfStream\1.0\Dream\DesignerFIS

    if Reg.OpenKey(OPPKey+'Dream\DesignerFIS ',true) then
    begin
      if HistorySpin.Enabled then
      s:=VarToStr(HistorySpin.Value) else
      s:='';
      Reg.WriteString('ScriptHistoryDepth',s);
    end;
  finally
    reg.Free;
  end;
end;

procedure TDesOptForm.SaveScriptPath;
var Reg:TRegistry;
s:String;
begin
  Reg:=TRegistry.Create;
  try
    Reg.RootKey:=HKEY_CURRENT_USER;
    if reg.OpenKey(OPPKey+'Dream\DesignerFIS ',true)then
    begin
      s:=ScriptPathCombo.Path;
      reg.writeString('ScriptSavePath',s);
    end;
  finally
    reg.Free;
  end;
end;


initialization
  RegisterOptionsFormOrder(TDesOptForm, 0, SDesignerOptions);
end.
