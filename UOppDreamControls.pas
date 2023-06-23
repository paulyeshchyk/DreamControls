unit UOppDreamControls;

interface

uses cxSpinEdit,  Classes, Controls, Forms, Graphics, SysUtils, cxClasses, cxContainer,
  cxControls, cxDataStorage, cxDataUtils, cxEdit, cxGraphics, cxMaskEdit,
  cxTextEdit, cxVariants, cxLookAndFeelPainters, cxFilterControlUtils,
  cxMemo, cxCalendar, cxCheckBox, cxDropDownEdit, cxImageComboBox,
  cxImage, cxRadioGroup,Messages,Windows,DBClient,cxCheckGroup, cxButtons,
  Dialogs, ActnList, StatusBarUtils, uIOPPControl, ExtCtrls;

  procedure PostNextControl(FOwner:TWinControl);

type
  TOPPcxButton = class;

  TOPPBtnCheckProc = function(OPPBtn: TOPPcxButton): boolean of object;

  TBtnType = (btUndefined, //[]
              btOK,        //[Ctrl + Enter]
              btCancel,    //[Esc]
              btCancelEx,  //[Shift + Esc]
              btClose,     //[Ctrl + Q]
              btSave,      //[Ctrl + S]
              btSaveEx,    //[Alt + S]
              btAdd,       //[Ctrl + Ins]
              btEdit,      //[F4]
              btDel,       //[Ctrl + Del]
              btGenerate,  //[Ctrl + G]
              btResult,    //[Ctrl + R]
              btReport,    //[Ctrl + E]
              btPrint,     //[Ctrl + P]
              btSelect,    //[Ctrl + O]
              btData,      //[Ctrl + B]
              btLoad);     //[Ctrl + L]

  TAOPPcxButton = class(TAction)
  private
    FBtnType: TBtnType;
  public
    property BtnType: TBtnType read FBtnType write FBtnType;
  end;


  TOPPcxButton = class(TcxButton)
  private
    FOnValidate: TNotifyEvent;
    FOPPBtnCheckProc: TOPPBtnCheckProc;
    FIsValidateClick: boolean;
    FWasClicked: boolean;
    FBtnType: TBtnType;
    FOPPShoutCut: string;
    FxHint: string;
    FxShowHint: boolean;
    FValidateAborted: boolean;
    procedure SetBtnType(Value: TBtnType);
    procedure SetxHint(Value: string);
    procedure SetxShowHint(Value: boolean);
    function DoOPPBtnCheckProc: boolean;
  public
    procedure Click; override;
    function ValidateClick: boolean;
    function Validate: boolean;

    property IsValidateClick: boolean read FIsValidateClick;
    property OPPShoutCut: string write FOPPShoutCut;
    property CheckProc: TOPPBtnCheckProc write FOPPBtnCheckProc;
    property xHint: string read FxHint write SetxHint;
    property xShowHint: boolean read FxShowHint write SetxShowHint;
    property ValidateAborted: Boolean read FValidateAborted;
    procedure AbortValidate;
  published
    property BtnType: TBtnType read FBtnType write SetBtnType;
    property OnValidate: TNotifyEvent read FOnValidate write FOnValidate;
  end;

  TOPPcxCheckGroup = class (TcxCheckGroup, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    function GetOnEditValueChanged: TNotifyEvent;
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange:TNotifyEvent read GetOnChange write SetOnChange;
    property OnEditValueChanged: TNotifyEvent Read GetOnEditValueChanged write SetOnEditValueChanged ;
  end;

  TOPPcxSpinEdit = class(TcxSpinEdit, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    function GetOnEditValueChanged: TNotifyEvent;
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    function GetOnGetValue: TcxSpinEditGetValueEvent;
    procedure SetOnGetValue(const Value: TcxSpinEditGetValueEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange:TNotifyEvent read GetOnChange write SetOnChange;
    property OnEditValueChanged: TNotifyEvent Read GetOnEditValueChanged write SetOnEditValueChanged ;
    property OnGetValue: TcxSpinEditGetValueEvent read GetOnGetValue write SetOnGetValue;
    property OnValidate:TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  end;

  TOPPcxTextEdit = class(TcxTextEdit, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    function GetOnClosePopup: TcxEditClosePopupEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnClosePopup(const Value: TcxEditClosePopupEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnClosePopup: TcxEditClosePopupEvent read GetOnClosePopup write SetOnClosePopup;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  end;

  TOPPcxMaskEdit = class(TcxMaskEdit, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    function GetOnClosePopup: TcxEditClosePopupEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnClosePopup(const Value: TcxEditClosePopupEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnClosePopup: TcxEditClosePopupEvent read GetOnClosePopup write SetOnClosePopup;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  end;

  TOPPcxMemo = class(TcxMemo, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  end;

  TOPPcxDateEdit = class(TcxDateEdit, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FOnKeyDown: TKeyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    procedure SetOnKeyDown(const Value: TKeyEvent);
    function GetOnChange: TNotifyEvent;
    function GetOnCloseUp: TNotifyEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnInitPopup: TNotifyEvent;
    function GetOnPopup: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnCloseUp(const Value: TNotifyEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnInitPopup(const Value: TNotifyEvent);
    procedure SetOnPopup(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnInitPopup: TNotifyEvent read GetOnInitPopup write SetOnInitPopup;
    property OnPopup: TNotifyEvent read GetOnPopup write SetOnPopup;
    property OnCloseUp: TNotifyEvent read GetOnCloseUp write SetOnCloseUp;
  end;

  TOPPcxCheckBox = class(TcxCheckBox, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
  end;

  TOPPcxComboBox = Class(TcxComboBox, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnChange: TNotifyEvent;
    function GetOnCloseUp: TNotifyEvent;
    function GetOnDrawItem: TcxEditDrawItemEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnInitPopup: TNotifyEvent;
    function GetOnMeasureItem: TMeasureItemEvent;
    function GetOnNewLookupDisplayText: TcxNewLookupDisplayTextEvent;
    function GetOnPopup: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnCloseUp(const Value: TNotifyEvent);
    procedure SetOnDrawItem(const Value: TcxEditDrawItemEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnInitPopup(const Value: TNotifyEvent);
    procedure SetOnMeasureItem(const Value: TMeasureItemEvent);
    procedure SetOnNewLookupDisplayText(
      const Value: TcxNewLookupDisplayTextEvent);
    procedure SetOnPopup(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnCloseUp: TNotifyEvent read GetOnCloseUp write SetOnCloseUp;
    property OnDrawItem: TcxEditDrawItemEvent read GetOnDrawItem write SetOnDrawItem;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnInitPopup: TNotifyEvent read GetOnInitPopup write SetOnInitPopup;
    property OnMeasureItem: TMeasureItemEvent read GetOnMeasureItem write SetOnMeasureItem;
    property OnNewLookupDisplayText: TcxNewLookupDisplayTextEvent read GetOnNewLookupDisplayText write SetOnNewLookupDisplayText;
    property OnPopup: TNotifyEvent read GetOnPopup write SetOnPopup;
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  End;

  TOPPcxImageComboBox = class(TcxImageComboBox, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    FPrevColor: TColor;
    procedure WarningOnChange(Sender: TObject);
    function GetOnButtonClick: TcxEditButtonClickEvent;
    function GetOnChange: TNotifyEvent;
    function GetOnCloseUp: TNotifyEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    function GetOnInitPopup: TNotifyEvent;
    function GetOnPopup: TNotifyEvent;
    function GetOnValidate: TcxEditValidateEvent;
    procedure SETOnButtonClick(const Value: TcxEditButtonClickEvent);
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnCloseUp(const Value: TNotifyEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    procedure SetOnInitPopup(const Value: TNotifyEvent);
    procedure SetOnPopup(const Value: TNotifyEvent);
    procedure SetOnValidate(const Value: TcxEditValidateEvent);
    function GetOnCloseQuery: TCloseQueryEvent;
    procedure SetOnCloseQuery(const Value: TCloseQueryEvent);
    procedure DoEditKeyDown(var Key: Word; Shift: TShiftState); override;
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnButtonClick: TcxEditButtonClickEvent read GetOnButtonClick write SETOnButtonClick;
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnCloseQuery: TCloseQueryEvent read GetOnCloseQuery write SetOnCloseQuery;
    property OnCloseUp: TNotifyEvent read GetOnCloseUp write SetOnCloseUp;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
    property OnInitPopup: TNotifyEvent read GetOnInitPopup write SetOnInitPopup;
    property OnPopup: TNotifyEvent read GetOnPopup write SetOnPopup;
    property OnValidate: TcxEditValidateEvent read GetOnValidate write SetOnValidate;
  end;

  TOPPcxImage = class(TcxImage, IOPPControl)
  private
    FCBAuditingChanges: TCBAC;
    FWarningOnChange: TNotifyEvent;
    procedure WarningOnChange(Sender: TObject);
    function GetOnAssignPicture: TcxImageAssignPictureEvent;
    function GetOnChange: TNotifyEvent;
    function GetOnCustomClick: TNotifyEvent;
    function GetOnEditValueChanged: TNotifyEvent;
    procedure SetOnAssignPicture(const Value: TcxImageAssignPictureEvent);
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnCustomClick(const Value: TNotifyEvent);
    procedure SetOnEditValueChanged(const Value: TNotifyEvent);
    function GetWarning: boolean;
    procedure SetWarning(const Value: boolean);
    procedure SetCBAC(const Value: TCBAC);
    property Warning: boolean read GetWarning write SetWarning;
    property CBAuditingChanges: TCBAC write SetCBAC;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnAssignPicture: TcxImageAssignPictureEvent read GetOnAssignPicture write SetOnAssignPicture;
    property OnChange: TNotifyEvent read GetOnChange write SetOnChange;
    property OnCustomClick: TNotifyEvent read GetOnCustomClick      write SetOnCustomClick;
    property OnEditValueChanged: TNotifyEvent read GetOnEditValueChanged write SetOnEditValueChanged;
  end;

  procedure Register;

const
  WarningColor = $DDDAFA;

implementation

{ TOPPcxSpinEdit }

procedure Register;
begin
  RegisterComponents('OPPcxStandard', [TOPPcxButton,
                                       TOPPcxTextEdit,
                                       TOPPcxMaskEdit,
                                       TOPPcxMemo,
                                       TOPPcxDateEdit,
                                       TOPPcxCheckBox,
                                       TOPPcxComboBox,
                                       TOPPcxImageComboBox,
                                       TOPPcxImage,
                                       TOPPcxSpinEdit,
                                       TOPPcxCheckGroup,
                                       TClientDataset]);

  RegisterComponents('Standard', [TTimer]);
end;


procedure PostNextControl(FOwner:TWinControl);
var

  par: TWinControl;
begin

  par := (FOwner as TWinControl);
   while not (par is TForm) do
    par := par.Parent;
    if (par is TForm) then
    begin
    if (HiWord(GetKeyState(VK_SHIFT)) <> 0)
    and (HiWord(GetKeyState(VK_CONTROL)) = 0)
    and (HiWord(GetKeyState(VK_MENU)) = 0)
    then begin
      postmessage(par.handle, wm_nextdlgctl, 1, 0)
    end
    else begin
      postmessage(par.handle, wm_nextdlgctl, 0, 0)
    end

    end;
    //postmessage(par.Handle, wm_nextdlgctl, 0, 0);

end;

{ TOPPcxButton }

procedure TOPPcxButton.AbortValidate;
begin
  FValidateAborted := True;
end;

function TOPPcxButton.DoOPPBtnCheckProc: boolean;
begin
  FValidateAborted := False;
  Result := FOPPBtnCheckProc(Self);
end;

procedure TOPPcxButton.Click;
  procedure xClick;
  begin
    SBStartProgressAutoStop;
    inherited Click;
  end;
begin
  FWasClicked := true;
  case BtnType of
    btOK, btSave, btSaveEx, btAdd, btEdit, btDel, btLoad, btGenerate, btSelect, btReport:
    begin
       if DoOPPBtnCheckProc then
         xClick
       else
         FWasClicked := false;
    end else
      xClick;
  end;
end;

function TOPPcxButton.Validate: boolean;
begin
  case BtnType of
    btOK, btSave, btSaveEx, btAdd, btEdit, btDel, btLoad, btGenerate, btSelect, btReport:
      Result := DoOPPBtnCheckProc;
    else
      Result := True;
  end;
end;

function TOPPcxButton.ValidateClick: boolean;
begin
  if not Self.Enabled then
    exit;
  FIsValidateClick := true;
  try
     Click;
  finally
     FIsValidateClick := false;
  end;
  Result := FWasClicked;
end;

procedure TOPPcxButton.SetxHint(Value: string);
begin
  FxHint := Value;
  Hint := FxHint + ' <' + FOPPShoutCut + '> ';
end;

procedure TOPPcxButton.SetxShowHint(Value: boolean);
begin
  FxShowHint := Value;
  ShowHint := true;
end;

procedure TOPPcxButton.SetBtnType(Value: TBtnType);
var found: boolean;

  procedure ScanComponents(C: TComponent);
  var
    I: integer;
    xBtn: TOPPcxButton;
  begin
    for I := 0 to C.ComponentCount - 1 do
    begin
       ScanComponents(C.Components[I]);
       if C.Components[I] is TOPPcxButton then
       begin
          xBtn := TOPPcxButton(C.Components[I]);
          if (xBtn.BtnType = Value) and
             (Value <> btUndefined) then found := true;
       end;
    end;
  end;
begin
  found := false;
  ScanComponents(Parent);

  if not found then
    FBtnType := Value;
end;

{ TOPPcxSpinEdit }

function TOPPcxSpinEdit.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxSpinEdit.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxSpinEdit.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxSpinEdit.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxSpinEdit.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxSpinEdit.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxSpinEdit.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxSpinEdit.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(Self);
  inherited;
end;

function TOPPcxSpinEdit.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnEditValueChanged;
end;

function TOPPcxSpinEdit.GetOnGetValue: TcxSpinEditGetValueEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnGetValue;
end;

function TOPPcxSpinEdit.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnValidate;
end;

procedure TOPPcxSpinEdit.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
  Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxSpinEdit.SetOnGetValue(const Value: TcxSpinEditGetValueEvent);
begin
  Properties.OnGetValue:=Value;
end;

procedure TOPPcxSpinEdit.SetOnValidate(const Value: TcxEditValidateEvent);
begin
  Properties.OnValidate:=Value;
end;

{ TOPPcxTextEdit }

function TOPPcxTextEdit.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxTextEdit.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxTextEdit.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxTextEdit.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxTextEdit.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxTextEdit.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxTextEdit.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxTextEdit.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(Self);
  inherited;
end;

function TOPPcxTextEdit.GetOnClosePopup: TcxEditClosePopupEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnClosePopup;
end;

function TOPPcxTextEdit.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnEditValueChanged;
end;

function TOPPcxTextEdit.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnValidate;
end;

procedure TOPPcxTextEdit.SetOnClosePopup(const Value: TcxEditClosePopupEvent);
begin
 Properties.OnClosePopup:=Value;
end;

procedure TOPPcxTextEdit.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
 Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxTextEdit.SetOnValidate(const Value: TcxEditValidateEvent);
begin
 Properties.OnValidate:=Value;
end;

{ TOPPcxMaskEdit }

function TOPPcxMaskEdit.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxMaskEdit.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxMaskEdit.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxMaskEdit.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxMaskEdit.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxMaskEdit.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxMaskEdit.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxMaskEdit.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(self);
  inherited;
end;

function TOPPcxMaskEdit.GetOnClosePopup: TcxEditClosePopupEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnClosePopup;
end;

function TOPPcxMaskEdit.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnEditValueChanged;
end;

function TOPPcxMaskEdit.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnValidate;
end;

procedure TOPPcxMaskEdit.SetOnClosePopup(const Value: TcxEditClosePopupEvent);
begin
Properties.OnClosePopup:=Value;
end;

procedure TOPPcxMaskEdit.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxMaskEdit.SetOnValidate(const Value: TcxEditValidateEvent);
begin
Properties.OnValidate:=Value;
end;

{ TOPPcxMemo }

function TOPPcxMemo.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxMemo.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxMemo.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxMemo.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxMemo.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxMemo.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxMemo.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxMemo.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(self);
  inherited;
end;

function TOPPcxMemo.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnEditValueChanged;
end;

function TOPPcxMemo.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnValidate;
end;

procedure TOPPcxMemo.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxMemo.SetOnValidate(const Value: TcxEditValidateEvent);
begin
Properties.OnValidate:=Value;
end;

{ TOPPcxDateEdit }

function TOPPcxDateEdit.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxDateEdit.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxDateEdit.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxDateEdit.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxDateEdit.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
  Properties.InputKind:=ikMask;
end;

procedure TOPPcxDateEdit.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxDateEdit.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

function TOPPcxDateEdit.GetOnCloseUp: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnCloseUp;
end;

function TOPPcxDateEdit.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnEditValueChanged;
end;

function TOPPcxDateEdit.GetOnInitPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnInitPopup;
end;

function TOPPcxDateEdit.GetOnPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnPopup;
end;

function TOPPcxDateEdit.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnValidate;
end;

procedure TOPPcxDateEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (ssCtrl in Shift ) and (Key=13) then
  begin
  Date:=Now;
  end;
  if Key=13 then
  begin
  PostNextControl(self);
  end;

  inherited;
end;

procedure TOPPcxDateEdit.SetOnCloseUp(const Value: TNotifyEvent);
begin
 Properties.OnCloseUp:=Value;
end;

procedure TOPPcxDateEdit.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
 Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxDateEdit.SetOnInitPopup(const Value: TNotifyEvent);
begin
 Properties.OnInitPopup:=Value;
end;

procedure TOPPcxDateEdit.SetOnKeyDown(const Value: TKeyEvent);
begin
  FOnKeyDown := Value;
end;

procedure TOPPcxDateEdit.SetOnPopup(const Value: TNotifyEvent);
begin
 Properties.OnPopup:=Value;
end;

procedure TOPPcxDateEdit.SetOnValidate(const Value: TcxEditValidateEvent);
begin
 Properties.OnValidate:=Value;
end;

{ TOPPcxCheckBox }

function TOPPcxCheckBox.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxCheckBox.SetWarning(const Value: boolean);
begin
end;

procedure TOPPcxCheckBox.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxCheckBox.WarningOnChange(Sender: TObject);
begin
  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxCheckBox.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxCheckBox.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxCheckBox.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

function TOPPcxCheckBox.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnEditValueChanged;
end;

procedure TOPPcxCheckBox.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

{ TOPPcxComboBox }

function TOPPcxComboBox.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxComboBox.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxComboBox.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxComboBox.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxComboBox.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxComboBox.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxComboBox.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxComboBox.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(self);
  inherited;
end;

function TOPPcxComboBox.GetOnCloseUp: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnCloseUp;
end;

function TOPPcxComboBox.GetOnDrawItem: TcxEditDrawItemEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnDrawItem;
end;

function TOPPcxComboBox.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnEditValueChanged;
end;

function TOPPcxComboBox.GetOnInitPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnInitPopup;
end;

function TOPPcxComboBox.GetOnMeasureItem: TMeasureItemEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnMeasureItem;
end;

function TOPPcxComboBox.GetOnNewLookupDisplayText: TcxNewLookupDisplayTextEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnNewLookupDisplayText;
end;

function TOPPcxComboBox.GetOnPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnPopup;
end;

function TOPPcxComboBox.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnValidate;
end;

procedure TOPPcxComboBox.SetOnCloseUp(const Value: TNotifyEvent);
begin
Properties.OnCloseUp:=Value;
end;

procedure TOPPcxComboBox.SetOnDrawItem(const Value: TcxEditDrawItemEvent);
begin
Properties.OnDrawItem:=Value;
end;

procedure TOPPcxComboBox.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxComboBox.SetOnInitPopup(const Value: TNotifyEvent);
begin
Properties.OnInitPopup:=Value;
end;

procedure TOPPcxComboBox.SetOnMeasureItem(const Value: TMeasureItemEvent);
begin
Properties.OnMeasureItem:=Value;
end;

procedure TOPPcxComboBox.SetOnNewLookupDisplayText(
  const Value: TcxNewLookupDisplayTextEvent);
begin
Properties.OnNewLookupDisplayText:=Value;
end;

procedure TOPPcxComboBox.SetOnPopup(const Value: TNotifyEvent);
begin
Properties.OnPopup:=Value;
end;

procedure TOPPcxComboBox.SetOnValidate(const Value: TcxEditValidateEvent);
begin
Properties.OnValidate:=Value;
end;

{ TOPPcxImageComboBox }

function TOPPcxImageComboBox.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxImageComboBox.SetWarning(const Value: boolean);
begin
  if Value then
  begin
     if Color <> WarningColor then
     begin
        FPrevColor := Color;
        Color := WarningColor;
     end;
  end else
  if Color = WarningColor then
    Color := FPrevColor;
end;

procedure TOPPcxImageComboBox.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxImageComboBox.WarningOnChange(Sender: TObject);
begin
  if Color = WarningColor then
    Color := FPrevColor;

  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxImageComboBox.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxImageComboBox.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxImageComboBox.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

procedure TOPPcxImageComboBox.DoEditKeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
  PostNextControl(self);
  inherited;
end;

function TOPPcxImageComboBox.GetOnButtonClick: TcxEditButtonClickEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnButtonClick;
end;

function TOPPcxImageComboBox.GetOnCloseQuery: TCloseQueryEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnCloseQuery;
end;

function TOPPcxImageComboBox.GetOnCloseUp: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnCloseUp;
end;

function TOPPcxImageComboBox.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnEditValueChanged;
end;

function TOPPcxImageComboBox.GetOnInitPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnInitPopup;
end;

function TOPPcxImageComboBox.GetOnPopup: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnPopup;
end;

function TOPPcxImageComboBox.GetOnValidate: TcxEditValidateEvent;
begin
Result:=nil;
if Properties<>nil then   Result:=Properties.OnValidate;
end;

procedure TOPPcxImageComboBox.SETOnButtonClick(
  const Value: TcxEditButtonClickEvent);
begin
Properties.OnButtonClick:=Value;
end;

procedure TOPPcxImageComboBox.SetOnCloseQuery(const Value: TCloseQueryEvent);
begin
Properties.OnCloseQuery:=Value;
end;

procedure TOPPcxImageComboBox.SetOnCloseUp(const Value: TNotifyEvent);
begin
Properties.OnCloseUp:=Value;
end;

procedure TOPPcxImageComboBox.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

procedure TOPPcxImageComboBox.SetOnInitPopup(const Value: TNotifyEvent);
begin
Properties.OnInitPopup:=Value;
end;

procedure TOPPcxImageComboBox.SetOnPopup(const Value: TNotifyEvent);
begin
Properties.OnPopup:=Value;
end;

procedure TOPPcxImageComboBox.SetOnValidate(const Value: TcxEditValidateEvent);
begin
Properties.OnValidate:=Value;
end;

{ TOPPcxImage }

function TOPPcxImage.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxImage.SetWarning(const Value: boolean);
begin
end;

procedure TOPPcxImage.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxImage.WarningOnChange(Sender: TObject);
begin
  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxImage.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxImage.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxImage.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

function TOPPcxImage.GetOnAssignPicture: TcxImageAssignPictureEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnAssignPicture;
end;

function TOPPcxImage.GetOnCustomClick: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnCustomClick;
end;

function TOPPcxImage.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then  Result:=Properties.OnEditValueChanged;
end;

procedure TOPPcxImage.SetOnAssignPicture(
  const Value: TcxImageAssignPictureEvent);
begin
Properties.OnAssignPicture:=Value;
end;

procedure TOPPcxImage.SetOnCustomClick(const Value: TNotifyEvent);
begin
Properties.OnCustomClick:=Value;
end;

procedure TOPPcxImage.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
Properties.OnEditValueChanged:=Value;
end;

{ TOPPcxCheckGroup }

function TOPPcxCheckGroup.GetWarning;
begin
  Result := False;
end;

procedure TOPPcxCheckGroup.SetWarning(const Value: boolean);
begin
end;

procedure TOPPcxCheckGroup.SetCBAC(const Value: TCBAC);
begin
  FCBAuditingChanges := Value;
end;

procedure TOPPcxCheckGroup.WarningOnChange(Sender: TObject);
begin
  if Assigned(FCBAuditingChanges) then
    FCBAuditingChanges;

  if Assigned(FWarningOnChange) then
    FWarningOnChange(Sender);
end;

constructor TOPPcxCheckGroup.Create(AOwner: TComponent);
begin
  inherited;
  Properties.OnChange := WarningOnChange;
end;

procedure TOPPcxCheckGroup.SetOnChange(const Value: TNotifyEvent);
begin
  FWarningOnChange := Value;
end;

function TOPPcxCheckGroup.GetOnChange: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result := FWarningOnChange;
end;

function TOPPcxCheckGroup.GetOnEditValueChanged: TNotifyEvent;
begin
Result:=nil;
if Properties<>nil then Result:=Properties.OnEditValueChanged;
end;

procedure TOPPcxCheckGroup.SetOnEditValueChanged(const Value: TNotifyEvent);
begin
  Properties.OnEditValueChanged:=Value;
end;

end.
