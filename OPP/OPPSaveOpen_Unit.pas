unit OPPSaveOpen_Unit;

interface
uses classes, sysutils, dialogs, {IBQuery, }db, dcapp, dcsystem, dcidedes,
  dcidemem,
  dcfdmemo, dcfdes;

type

  TMainSaveObject = class(TSaveObject)
  public
    procedure SaveToStream(S: TStream); virtual; abstract;
    procedure SaveProc(const FileName: TFileName; const FilerID: TFilerID);
      override;
  end;

  TOPPFormSaveObject = class(TMainSaveObject)
  protected
  public
    procedure SaveToStream(S: TStream); override;
  end;

  TOPPMemoSaveObject = class(TMainSaveObject)
  public
    procedure SaveToStream(S: TStream); override;
  end;

  //all
  TOPPSaveObject = class(TMainSaveObject)
  protected
  public
    procedure SaveToStream(S: TStream); override;
  end;

implementation

//uses OPPWorkWithLoodsman_Unit;

procedure TMainSaveObject.SaveProc(const FileName: TFileName; const FilerID:
  TFilerID);
var
//  temp: TibQuery;
  s: TMemoryStream;
  fn: string;
  FileType: Integer;
  id:integer;
begin
 //  if not(TIdeMemoObject(IdeObject).MemoSource.Modified) then //green 28/05/08
 //  exit;

  try
    fn := ExtractFileName(filename);
    s := TMemoryStream.Create;
    SaveToStream(s);
    fileType := -1;
    if IDEObject is TSimpleMemoObject then
      fileType := 3
    else if IDEObject is TIDEFormMemoObject then
      fileType := 2
    else if IDEObject is TIDEMemoObject then
      fileType := 2
    else if IDEObject is TIDEFormObject then
      fileType := -2
    else if IDEObject is TCustomIDEProject then
      fileType := 1;
//    OPPSaveFile(
//      s,
//      fn,
//      IDEObject.DisplayName,
//       dcapp.Task_ID ,//green     before-   IDEObject.isTask
//      IDEObject.FileParent,
//      FileType);

   //  TIdeMemoObject(IdeObject).MemoSource.Modified:=false;    //green 28/05/08

    s.Free;
  finally

  end;

end;

procedure TOPPFormSaveObject.SaveToStream(S: TStream);
var
  IDEFormObject: TIDEFormObject;
  FormDesigner: TdcFormDesigner;
begin
  with TIDEFormObject(IDEObject) do
    formDesigner.SaveFormToStream(S, TIDEFormObject(IDEObject).FWithResHeader);
end;

procedure TOPPMemoSaveObject.SaveToStream(S: TStream);
begin
  TIDEMemoObject(IDEObject).MemoSource.SaveToStream(S);
end;

procedure TOPPSaveObject.SaveToStream(S: TStream);

begin
  if IDEObject is TIDEMemoObject then
    TIDEMemoObject(IDEObject).MemoSource.SaveToStream(S)
  else if IDEObject is TIDEFormObject then
    TIDEFormObject(IDEObject).FormDesigner.
      SaveFormToStream(S, TIDEFormObject(IDEObject).FWithResHeader)
  else if IDEObject is TCustomIDEProject then
  begin
    S.WriteComponent(IDEObject)
  end
  else if IDEObject is TSimpleMemoObject then
    TSimpleMemoObject(IDEObject).MemoSource.SaveToStream(S)
end;

end.
