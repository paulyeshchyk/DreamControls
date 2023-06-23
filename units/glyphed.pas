{*******************************************************}
{                                                       }
{  Copyright (c) 1997-2001 Altium Limited               }
{                                                       }
{  http://www.dream-com.com                             }
{  contact@dream-com.com                                }
{                                                       }
{*******************************************************}
unit glyphed;

interface
{$I dc.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls,

  {$IFDEF USEOWNDSGNSTUFF}
  dcdsgnstuff,
  {$ELSE}
    {$IFDEF D6}
    DesignIntf,DesignEditors,VCLEditors,
    {$ELSE}
    dsgnintf,
    {$ENDIF}
  {$ENDIF}

  dcgen, dccommon, dcconsts,consts,dcsystem, dcdreamlib,
  {$IFDEF D3} extdlgs, {$ENDIF} clipbrd, Buttons;

type
  TGlyphEditForm = class(TForm)
    Panel1: TPanel;
    Image: TImage;
    Panel2: TPanel;
    OkBut: TButton;
    CancelBut: TButton;
    HelpBut: TButton;
    Panel3: TPanel;
    OpenButton: TSpeedButton;
    SaveButton: TSpeedButton;
    CopyButton: TSpeedButton;
    PasteButton: TSpeedButton;
    ClearButton: TSpeedButton;
    procedure ToolButtonLoadClick(Sender: TObject);
    procedure ToolButtonSaveClick(Sender: TObject);
    procedure ToolButtonCopyClick(Sender: TObject);
    procedure ToolButtonPasteClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OkButClick(Sender: TObject);
  private
  public
  end;

var
  GlyphEditForm: TGlyphEditForm;

type
  TGlyphEdit = class(TPropertyEditor)
    private
      form   : TGlyphEditForm;

    public
      function  GetAttributes : TPropertyAttributes; override;
      function  GetValue : string; override;
      procedure Edit; override;
      procedure GetImage; virtual; abstract;
      procedure SetImage; virtual; abstract;
  end;

  TPictureEdit = class(TGlyphEdit)
    procedure GetImage; override;
    procedure SetImage; override;
    function GetValue : string; override;
  end;

  TDevexGlyphEdit = class(TGlyphEdit)
    procedure GetImage; override;
    procedure SetImage; override;
    function GetValue : string; override;
  end;

  TBitmapEdit = class(TGlyphEdit)
    procedure GetImage; override;
    procedure SetImage; override;
  end;

  TIconEdit = class(TGlyphEdit)
    procedure GetImage; override;
    procedure SetImage; override;
    function  GetValue : string; override;
  end;

procedure RunRegister;

implementation
uses dxGdiPlusClasses;

function  TGlyphEdit.GetAttributes : TPropertyAttributes;
begin
  result := [paDialog];
end;

{------------------------------------------------------------------}

function  TGlyphEdit.GetValue : string;
var
  Graphic : TGraphic;
begin
  Graphic := TGraphic(GetOrdValue);
  if (Graphic = nil) or Graphic.Empty then
    result := '(None)' //don't resource
  else
    result := '(' + Graphic.ClassName + ')';
end;

{------------------------------------------------------------------}

procedure TGlyphEdit.Edit;
var
  comp : TPersistent;
begin
  form := TGlyphEditForm.Create(nil);
  with form do
    try
      comp := GetComponent(0);
      if Comp is TComponent then
        Caption := TComponent(Comp).Name + '.' + GetName
      else
        Caption := GetName;

      GetImage;
      if ShowModal = idOk then
        begin
          SetImage;
          Modified;
        end;
    finally
      Free;
    end;
end;

function TDevexGlyphEdit.GetValue : string;
var
  pic : TBitmap;
begin
  if (TdxSmartGlyph(GetOrdValue) = nil) or (TdxSmartGlyph(GetOrdValue).Empty) then
  begin
    result := '(None)';
  end else
  begin
    pic := TdxSmartGlyph(GetOrdValue).GetAsBitmap;
    if (pic = nil)  then
      result := '(None)'
    else
      result := '(' + pic.ClassName + ')';
  end;
end;

{------------------------------------------------------------------}

procedure TDevexGlyphEdit.GetImage;
begin
  form.Image.Picture.Assign(TdxSmartGlyph(GetOrdValue).GetAsBitmap);
end;

{------------------------------------------------------------------}

procedure TDevexGlyphEdit.SetImage;
var bmp:TBitmap;
oldTransparent:Boolean;
begin
  if ( form.Image.Picture.Graphic = nil) then
  begin
    TdxSmartGlyph(GetOrdValue).Clear;
  end else
  begin
    bmp:=TBitmap.Create;
    try
      try
        bmp.Assign(form.Image.Picture.Graphic);
      except
      end;
      TdxSmartGlyph(GetOrdValue).CreateFromBitmap(bmp);

      //need it to repaint glyph
      oldTransparent:=TdxSmartGlyph(GetOrdValue).Transparent;
      try
        TdxSmartGlyph(GetOrdValue).Transparent:=true;
        TdxSmartGlyph(GetOrdValue).Transparent:=False;
        TdxSmartGlyph(GetOrdValue).PaletteModified:=true;
      finally
        TdxSmartGlyph(GetOrdValue).Transparent:=oldTransparent;
      end;

    finally
      bmp.Free;
    end;
  end;
end;

{------------------------------------------------------------------}

function TPictureEdit.GetValue : string;
var
  pic : TPicture;
begin
  pic := TPicture(GetOrdValue);
  if (pic = nil) or (pic.Graphic = nil) then
    result := '(None)'
  else
    result := '(' + pic.Graphic.ClassName + ')';
end;

{------------------------------------------------------------------}

procedure TPictureEdit.GetImage;
begin
  form.Image.Picture.Assign(TPicture(GetOrdValue));
end;

{------------------------------------------------------------------}

procedure TPictureEdit.SetImage;
begin
  TPicture(GetOrdValue).Assign(form.Image.Picture);
end;

{------------------------------------------------------------------}

procedure TBitmapEdit.GetImage;
begin
  form.Image.Picture.Assign(TBitmap(GetOrdValue));
end;

{------------------------------------------------------------------}

procedure TBitmapEdit.SetImage;
begin
  TBitmap(GetOrdValue).Assign(form.Image.Picture.Bitmap);
end;

{------------------------------------------------------------------}

procedure TIconEdit.GetImage;
begin
  form.Image.Picture.Icon.Assign(TIcon(GetOrdValue));
end;

{------------------------------------------------------------------}

procedure TIconEdit.SetImage;
begin
  TIcon(GetOrdValue).Assign(form.Image.Picture.Icon);
end;

{------------------------------------------------------------------}

function TIconEdit.GetValue : string;
begin
  result := '(TIcon)'; //don't resource
end;

{------------------------------------------------------------------}
{$R *.DFM}

{$IFNDEF D3}
Type
  TOpenPictureDialog=TOpenDialog;
  TSavePictureDialog=TSaveDialog;
{$ENDIF}

procedure TGlyphEditForm.ToolButtonLoadClick(Sender: TObject);
begin
  with TOpenPictureDialog.Create(self) do
    try
{$IFNDEF D3}
      Filter := SPictFilter;
{$ENDIF}
      if Execute then
        Image.Picture.LoadFromFile(FileName);
    finally
      Free;
    end;
end;

{------------------------------------------------------------------}

procedure TGlyphEditForm.ToolButtonSaveClick(Sender: TObject);
begin
  with TSavePictureDialog.Create(self) do
    try
{$IFNDEF D3}
      Filter := SPictFilter;
{$ENDIF}
      if Execute  then
        Image.Picture.SaveToFile(FileName);
    finally
      Free;
    end;
end;

{------------------------------------------------------------------}

procedure TGlyphEditForm.ToolButtonCopyClick(Sender: TObject);
begin
  Clipboard.Assign(Image.Picture);
end;

{------------------------------------------------------------------}

type
  TMClipboard = class (TClipboard)
  end;

procedure TGlyphEditForm.ToolButtonPasteClick(Sender: TObject);
begin
  TMClipboard(Clipboard).AssignTo(Image.Picture);
end;

{------------------------------------------------------------------}

procedure TGlyphEditForm.ClearButtonClick(Sender: TObject);
begin
  Image.Picture:=nil;
end;

{------------------------------------------------------------------}

procedure TGlyphEditForm.FormCreate(Sender: TObject);
begin
  SetFormFont(self);
  SetFlatProp([OpenButton,SaveButton,CopyButton,PasteButton,ClearButton],True);
  OpenButton.Hint :=  SOpen;
  SaveButton.Hint :=  RemoveCharSet(['&'],SVerbSave);
  CopyButton.Hint := SCopy;
  PasteButton.Hint :=  SPaste;
  ClearButton.Hint := RemoveCharSet(['&'],SClear);
  UpdateStandardButtons(OkBut, CancelBut, HelpBut);
end;

procedure TGlyphEditForm.OkButClick(Sender: TObject);
begin

end;

{------------------------------------------------------------------}

procedure _InstantRegister;
begin
  RegisterPropertyEditor(TypeInfo(TPicture), nil, '', TPictureEdit);
  RegisterPropertyEditor(TypeInfo(TBitmap), nil, '', TBitmapEdit);
  RegisterPropertyEditor(TypeInfo(TIcon), nil, '', TIconEdit);
  RegisterVisualProperty(SVerbImageEditor,TImage,'Picture'); //don't resource
end;

{------------------------------------------------------------------}

procedure RunRegister;
begin
  RegisterForInstant(_InstantRegister);
end;

{------------------------------------------------------------------}

initialization
  //RunRegister;
  //green
  //перенесено в dcGen RunRegister

end.
