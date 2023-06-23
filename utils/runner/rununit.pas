{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
{} unit rununit;

interface
{$I dc.inc}
uses
  windows,
  dcapp,
  dccdes,
  dcconfig,
  classes,
  impreg,
  sysutils,
  forms,
  dcscript,
  dcpascal,
  dialogs,
  dcdreamlib,OPP_Test_Form_Unit,
{$IFDEF D3}
  dcpload,
{$ENDIF}

  {$IFDEF PRODELPHI}
  {$IFDEF DREAMMEMO}
  {$IFDEF DREAMIDE}
  {$IFDEF DREAMDESIGNER}
  dctoolin,
  {$ENDIF}
  {$ENDIF}
  {$ENDIF}
  {$ENDIF}

  dcsystem;


procedure Run;
procedure Run_1;
procedure Run_2;
procedure test;

implementation
uses
  runform,OPPDataModule_Unit;

var
  ProjectFile : string;
  rhandle : THandle;
const
  HelpStr = 'Usage: DCRunner <ProjectFile|ScriptFile> [PackagesList]'#13#10'Examples:'#13#10'DCRunner MastApp.ipr dcctrl.dpl;dcdbctrl.dpl'#13#10'DCRunner Hello.vbs';

{$IFDEF D3}
var
  PLoader  : TDCPackageLoader;
{$ENDIF}

function ParseParams : boolean;
{$IFDEF D3}
var
  Packages : TStringList;
  i        : integer;
{$ENDIF}

begin
  result := true;
  if ParamCount = 0 then
    begin

      with  FrmRun do
      try
        if CompiledWithPackages then
          PackBut.Enabled := true;
          if ShowModal= idOk then
            ProjectFile := ComboBox1.Text
          else
            begin
              result := false;
              exit;
            end;
      finally
        //Free;
      end;
    end
    else
    begin
      ProjectFile := ParamStr(1);
     {$IFDEF D3}
     if CompiledWithPackages then
       if ParamCount > 1 then
         begin
           Packages := TStringList.Create;
           try
             ParseString(ParamStr(2), ';', Packages);
             for i := 0 to Packages.Count - 1 do
               PLoader.RegisterPackage(Packages[i], true);
           finally
             Packages.Free;
          end;
         end;
     {$ENDIF}
   end;
end;

var
  ErrorEvent : THandle;
  ErrorFile  : THandle;


procedure test;
  begin
  {TForm(
  VarToObject(
  TDCScripter(rhandle).ScriptRun.GetVarValue('ff')))
  .parent:=frmrun; }

  //TTestForm(TDCScripter(rhandle). GetModule).Panel1.Caption:='sdfsdfrfgffghfghfsdfssdfsdf';
 // TDCScripter(rhandle).AddObjectToScript(frmrun,'frmrun',true);
 // TDCScripter(rhandle).CallNoParamsMethod('Test');
  ResetRunningModule(rhandle);
  end;

procedure Run_1;
begin
  RegistryKey := GetDreamRegKey('Runner');
  ErrorEvent := OpenEvent(EVENT_ALL_ACCESS, false, pchar(SCRIPTERROREVENTNAME));
  ErrorFile  := OpenFileMapping(FILE_MAP_ALL_ACCESS, false, SCRIPTERRORFILENAME);

{$IFDEF D3}
  if CompiledWithPackages then
    ploader := TDCPackageLoader.Create(Application);
{$ENDIF}

  //ParseParams
   rhandle :=0;
end;
procedure Run;
var
  title : string;
  p,i     : integer;

  project : TIDEProject;

begin
ProjectFile := FrmRun.ComboBox1.Text;

  title := ExtractFileName(ProjectFile);
  p := pos('.', title);
  if p > 0 then
    delete(title, p, length(title) - p + 1);

   rHandle:=ExecTask(ProjectFile,frmrun.Panel1);
   
   frmrun.Memo1.Lines.Clear;
   TDCScripter(rhandle). ScriptRun.GetVarList(frmrun.Memo1.Lines);
   frmrun.Memo1.Lines.Add( IntToStr(TDCScripter(rhandle).ComponentCount));
{  for I := 0 to tform(TDCScripter(rhandle).GetModule).ComponentCount - 1 do
    begin
      frmrun.Memo1.Lines.Add(tform(TDCScripter(rhandle).GetModule).Components[i].Name) ;
    end;
       }
  // TDCScripter(rhandle).Module:=frmrun;
 // TForm(TDCScripter(rhandle). GetModule).Parent:=frmrun;
  //TForm(TDCScripter(rhandle).UsedModules['unit3'].GetModule).parent:=frmrun;

    repeat
      Application.HandleMessage;
    until not IsModuleRunning(rHandle);


end;

procedure Run_2;
begin
  CloseHandle(ErrorEvent);
  Application.Terminate;
end;

{------------------------------------------------------------------}

type
  TMyMessageAnswer = class(TMessageAnswer)
  protected
    procedure CMSCRIPTERROR(Var Message: TWMScriptError); message CM_SCRIPTERROR;
  end;

{------------------------------------------------------------------}

procedure TMyMessageAnswer.CMSCRIPTERROR(var Message: TWMScriptError);
var
  numwrite : DWord;
begin
  with Message.ErrorInfo^ do
    begin
      WriteFile(ErrorFile, Message.ErrorInfo^, sizeof(TScriptErrorInfo), numwrite, nil);
      SetEvent(ErrorEvent);
    end;
end;

{-------------------------------------------------------------}

var
  MyMessageAnswer:TMyMessageAnswer;

initialization
  MyMessageAnswer := TMyMessageAnswer.Create;

finalization
  MyMessageAnswer.Free;

end.
