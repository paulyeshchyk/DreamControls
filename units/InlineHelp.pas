
unit InlineHelp;

interface

uses classes,
  dcScript,
  dcEdit
    ;

type
  TInline = class
  private
    fScriptText: string;
    Scripter: TdcScripter;
    fYPos: Integer;
    glMethodsList: TStringList;
    glMethodsVList: TStringList;
    glConstsList: TStringList;
    glConstsVList: TStringList;

    sv, sc: TStringList;
    fCurrentClassName: String;
    procedure fillMCaptionByMethodInfo(mInfo: TMethodInfo; MethodName: string; var caption, value: string);
    procedure AddConsts(aCaptions, aValues: TStringList);
  public
    procedure Init;
    property yPos: Integer read fYPos write fYPos;
    constructor Create(ScriptText: string);
    destructor Destroy; override;
    procedure GetStringsForObject(y: Integer; VarName: string; Script: TStrings; Captions: TStringList; Values: TStringList; begStr: string);
    procedure setScript(ScriptText: string);
    function GetClassName(y: Integer; aVarName: string; Script: TStrings): string;
    procedure GetProperties(aClassName: string; Captions, Values: TStringList; begStr: string; firstStep: Boolean = true);
    procedure GetPropertiesNames(aClassName: string; var NamesList: TStringList; var TypesList: TStringList);
    function formatStr(s: string; incI: Integer = 0): string;
    procedure FillStringsByText(aValues, aCaptions: TStringList; aText: string);
    procedure FillPopupByFilterStr(popupBox: TDCPopupListBox; FilterStr: string; fHintpopup: TStrings);
    function isEmpty: Boolean;
  end;

  PMethodInfoHeader = ^TMethodInfoHeader;

  TMethodInfoHeader = packed record
    Len: Word;
    Addr: Pointer;
    Name: ShortString;
  end;

implementation

constructor TInline.Create(ScriptText: string);
begin
  inherited Create;

end;

function TInline.isEmpty: Boolean;
begin
  result := true;
end;

procedure TInline.setScript(ScriptText: string);
begin
end;

type
  tcrpopup = class(TDCPopupListBox);

procedure TInline.FillPopupByFilterStr(popupBox: TDCPopupListBox; FilterStr: string; fHintpopup: TStrings);
begin
end;

procedure TInline.FillStringsByText(aValues: TStringList; aCaptions: TStringList; aText: string);
begin
end;

function TInline.formatStr(s: string; incI: Integer = 0): string;
begin
  result := '';
end;

destructor TInline.Destroy;
begin
  inherited;
end;

procedure TInline.GetPropertiesNames(aClassName: string; var NamesList: TStringList; var TypesList: TStringList);
begin
end;

procedure TInline.fillMCaptionByMethodInfo(mInfo: TMethodInfo; MethodName: string; var caption, value: string);
begin
end;

procedure TInline.GetProperties(aClassName: string; Captions, Values: TStringList; begStr: string; firstStep: Boolean = true);
begin
end;

procedure TInline.AddConsts(aCaptions, aValues: TStringList);
begin
end;

procedure TInline.Init;
begin
end;

procedure TInline.GetStringsForObject(y: Integer; VarName: string; Script: TStrings; Captions: TStringList; Values: TStringList; begStr: string);
begin
end;

function TInline.GetClassName(y: Integer; aVarName: string; Script: TStrings): string;
begin
  result := '';
end;

end.
