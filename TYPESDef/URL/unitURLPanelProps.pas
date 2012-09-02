unit unitURLPanelProps;

interface

uses
  UnitProxySpace, Windows, Messages, SyncObjs, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Functionality, TypesDefines,TypesFunctionality,unitReflector,
  Db, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SpaceObjInterpretation,
  ActiveX, OleCtrls, SHDocVw, Menus;

const
  WM_GETCOMPONENTPANELPROPS = WM_USER+1;
type
  TCustomizedWebBrowser = class;

  TURLPanelProps = class(TSpaceObjPanelProps)
    Popup: TPopupMenu;
    EditURL1: TMenuItem;
    pnlHeader: TPanel;
    Image: TImage;
    stURLName: TStaticText;
    Panel: TPanel;
    procedure EditURL1Click(Sender: TObject);
    procedure stURLNameClick(Sender: TObject);
  private
    { Private declarations }
    _URL: string;
    _URLName: string;
    _flPanelBrowser: boolean;
    WebBrowser: TCustomizedWebBrowser;

    procedure wmGetComponentPanelProps(var Message: TMessage); message WM_GETCOMPONENTPANELPROPS;
    procedure OpenURL(const URL: string);
    procedure DisableControls;
    procedure Controls_ClearPropData; override;
  public
    { Public declarations }
    Constructor Create(pObjFunctionality: TComponentFunctionality; pflReadOnly: boolean; pidOwnerObjectProp: integer;pOwnerPanelsProps: TAbstractSpaceObjPanelsProps; const pProxyObject: TObjectDescr); override;
    destructor Destroy; override;
    procedure _Update; override;
  end;

  TDocHostUIInfo = packed record
    cbSize: ULONG;
    dwFlags: DWORD;
    dwDoubleClick: DWORD;
  end;

  IDocHostUIHandler = interface(IUnknown)
  ['{bd3f23c0-d43e-11cf-893b-00aa00bdce1a}']
    function ShowContextMenu(const dwID: DWORD; const ppt: PPOINT;      const pcmdtReserved: IUnknown;       const pdispReserved: IDispatch): HRESULT; stdcall;
    function GetHostInfo(var pInfo: TDOCHOSTUIINFO): HRESULT;       stdcall;
    function ShowUI(const dwID: DWORD;       const pActiveObject: IOleInPlaceActiveObject;      const pCommandTarget: IOleCommandTarget;       const pFrame: IOleInPlaceFrame;      const pDoc: IOleInPlaceUIWindow): HRESULT; stdcall;
    function HideUI: HRESULT; stdcall;
    function UpdateUI: HRESULT; stdcall;
    function EnableModeless(const fEnable: BOOL): HRESULT; stdcall;
    function OnDocWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
    function OnFrameWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
    function ResizeBorder(const prcBorder: PRECT;      const pUIWindow: IOleInPlaceUIWindow;      const fRameWindow: BOOL): HRESULT; stdcall;
    function TranslateAccelerator(const lpMsg: PMSG;       const pguidCmdGroup: PGUID;      const nCmdID: DWORD): HRESULT; stdcall;
    function GetOptionKeyPath(var pchKey: POLESTR;       const dw: DWORD): HRESULT; stdcall;
    function GetDropTarget(const pDropTarget: IDropTarget;      out ppDropTarget: IDropTarget): HRESULT; stdcall;
    function GetExternal(out ppDispatch: IDispatch): HRESULT;       stdcall;
    function TranslateUrl(const dwTranslate: DWORD;       const pchURLIn: POLESTR; var ppchURLOut: POLESTR): HRESULT;      stdcall;
    function FilterDataObject(const pDO: IDataObject;      out ppDORet: IDataObject): HRESULT; stdcall;
  end;


  TCustomizedWebBrowser = class(TWebBrowser, IDocHostUIHandler)
  public
    PanelProps: TURLPanelProps;
    flStartNewURL: boolean;
    LastURL: WideString;
    StartCount: integer;

    Constructor Create(pPanelProps: TURLPanelProps);
    procedure BeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
    procedure DoNavigate(const URL: string);
    //. interface implementation
    // ���������� ������� IDocHostUIHandler
    function ShowContextMenu(const dwID: DWORD; const ppt: PPOINT;      const pcmdtReserved: IUnknown;       const pdispReserved: IDispatch): HRESULT; stdcall;
    function GetHostInfo(var pInfo: TDOCHOSTUIINFO): HRESULT;       stdcall;
    function ShowUI(const dwID: DWORD;       const pActiveObject: IOleInPlaceActiveObject;      const pCommandTarget: IOleCommandTarget;       const pFrame: IOleInPlaceFrame;      const pDoc: IOleInPlaceUIWindow): HRESULT; stdcall;
    function HideUI: HRESULT; stdcall;
    function UpdateUI: HRESULT; stdcall;
    function EnableModeless(const fEnable: BOOL): HRESULT; stdcall;
    function OnDocWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
    function OnFrameWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
    function ResizeBorder(const prcBorder: PRECT;      const pUIWindow: IOleInPlaceUIWindow;      const fRameWindow: BOOL): HRESULT; stdcall;
    function TranslateAccelerator(const lpMsg: PMSG;       const pguidCmdGroup: PGUID;      const nCmdID: DWORD): HRESULT; stdcall;
    function GetOptionKeyPath(var pchKey: POLESTR;       const dw: DWORD): HRESULT; stdcall;
    function GetDropTarget(const pDropTarget: IDropTarget;      out ppDropTarget: IDropTarget): HRESULT; stdcall;
    function GetExternal(out ppDispatch: IDispatch): HRESULT;       stdcall;
    function TranslateUrl(const dwTranslate: DWORD;       const pchURLIn: POLESTR; var ppchURLOut: POLESTR): HRESULT;      stdcall;
    function FilterDataObject(const pDO: IDataObject;      out ppDORet: IDataObject): HRESULT; stdcall;
  end;


  TContainerOperation = (coCreate,coDestroy,coUpdate);

  TWebBrowsersContainer = class(TThread)
  private
    Lock: TCriticalSection;
    CreateBrowser_PanelProps: TURLPanelProps;
    CreateBrowser_Result: TCustomizedWebBrowser;
    DestroyBrowser_Instance: TCustomizedWebBrowser;
    evtGet: THandle;
    evtGot: THandle;
    UpdateBrowsersList: TStringList;
  public
    BrowsersList: TList;
    Operation: TContainerOperation;

    Constructor Create;
    Destructor Destroy; override;
    procedure Execute; override;

    function CreateBrowser(PanelProps: TURLPanelProps): TCustomizedWebBrowser;
    procedure DestroyBrowser(var Instance: TCustomizedWebBrowser);
    procedure UpdateBrowser(Instance: TCustomizedWebBrowser; const URL: WideString);
  end;


implementation
uses
  ShellAPI,
  unitURLPropsEditor;

{$R *.DFM}

var
  WebBrowsersContainer: TWebBrowsersContainer = nil;


{TCustomizedWebBrowser}
Constructor TCustomizedWebBrowser.Create(pPanelProps: TURLPanelProps);
begin
Inherited Create(nil);
PanelProps:=pPanelProps;
Align:=alClient;
TControl(Self).Parent:=PanelProps.Panel;
PopupMenu:=PanelProps.Popup;
OnBeforeNavigate2:=BeforeNavigate2;
Show;
end;

procedure TCustomizedWebBrowser.DoNavigate(const URL: string);
begin
flStartNewURL:=false;
LastURL:='';
StartCount:=0;
Navigate(URL);
end;

procedure TCustomizedWebBrowser.BeforeNavigate2(Sender: TObject; const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);

  function HasComponentReference(URL: ShortString; out idTRefObj,idRefObj: integer): boolean;
  var
    I,J: integer;
    TRefObjIDString,RefObjIDString: shortstring;
  begin
  Trim(URL);
  Result:=(AnsiUpperCase(URL[1]+URL[2]+URL[3]+URL[4]+URL[5]+URL[6]+URL[7]+URL[8]+URL[9]+URL[10]) = 'COMPONENT:');
  if Result
   then
    for I:=11 to Length(URL) do
      if (URL[I] <> '/') AND (URL[I] <> ' ')
       then begin
        if URL[I] <> '(' then Raise Exception.Create('"(" not found'); //. =>
        //. getting idTRefObj
        TRefObjIDString:='';
        J:=I+1;
        while J <= Length(URL) do begin
          if ($30 <= Ord(URL[J])) AND (Ord(URL[J]) <= $39)
           then
            TRefObjIDString:=TRefObjIDString+URL[J]
           else
            if URL[J] = ','
             then Break //. >
             else Exception.Create('"," not found'); //. =>
          Inc(J);
          end;
        try
        idTRefObj:=StrToInt(TRefObjIDString);
        except
          Exception.Create('wrong idTRefObj') //. =>
          end;
        //. getting idRefObj
        RefObjIDString:='';
        Inc(J);
        while J <= Length(URL) do begin
          if ($30 <= Ord(URL[J])) AND (Ord(URL[J]) <= $39)
           then
            RefObjIDString:=RefObjIDString+URL[J]
           else
            if URL[J] = ')'
             then Break //. >
             else Exception.Create('")" not found'); //. =>
          Inc(J);
          end;
        try
        idRefObj:=StrToInt(RefObjIDString);
        except
          Exception.Create('wrong idRefObj') //. =>
          end;
        //.
        Break; //. >
        end;
  end;

var
  idTRefObj,idRefObj: integer;
  Flgs: OleVariant;
begin
///?-
(*if flStartNewURL then Exit; //. ->
if (URL = LastURL) then Exit; //. ->
if HasComponentReference(URL, idTRefObj,idRefObj)
 then
  PostMessage(PanelProps.Handle, WM_GETCOMPONENTPANELPROPS, idTRefObj,idRefObj)
 else begin
  flStartNewURL:=true;
  try
  Flgs:=0;
  if StartCount > 0 then Flgs:=Flgs+navOpenInNewWindow;
  Navigate(URL,Flgs);
  Inc(StartCount);
  ///////LastURL:=URL;
  finally
  flStartNewURL:=false;
  end;
  end;
Cancel:=true;*)
end;

//. Interface implementation
function TCustomizedWebBrowser.ShowContextMenu(const dwID: DWORD; const ppt: PPOINT;      const pcmdtReserved: IUnknown;       const pdispReserved: IDispatch): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.GetHostInfo(var pInfo: TDOCHOSTUIINFO): HRESULT;       stdcall;
const
  DOCHOSTUIFLAG_NO3DBORDER = 4;
  DOCHOSTUIFLAG_SCROLL_NO = 8;
  DOCHOSTUIFLAG_DISABLE_HELP_MENU = 2;
  DOCHOSTUIFLAG_DISABLE_OFFSCREEN = 64;
  DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY = 512;
begin
with pInfo do
dwFlags:=dwFlags OR {DOCHOSTUIFLAG_NO3DBORDER OR DOCHOSTUIFLAG_SCROLL_NO OR} DOCHOSTUIFLAG_DISABLE_HELP_MENU OR DOCHOSTUIFLAG_DISABLE_OFFSCREEN OR DOCHOSTUIFLAG_ACTIVATE_CLIENTHIT_ONLY;
Result:=S_OK;
end;

function TCustomizedWebBrowser.ShowUI(const dwID: DWORD;       const pActiveObject: IOleInPlaceActiveObject;      const pCommandTarget: IOleCommandTarget;       const pFrame: IOleInPlaceFrame;      const pDoc: IOleInPlaceUIWindow): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.HideUI: HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.UpdateUI: HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.EnableModeless(const fEnable: BOOL): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.OnDocWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
begin
end;

function TCustomizedWebBrowser.OnFrameWindowActivate(const fActivate: BOOL): HRESULT;       stdcall;
begin
end;

function TCustomizedWebBrowser.ResizeBorder(const prcBorder: PRECT;      const pUIWindow: IOleInPlaceUIWindow;      const fRameWindow: BOOL): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.TranslateAccelerator(const lpMsg: PMSG;       const pguidCmdGroup: PGUID;      const nCmdID: DWORD): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.GetOptionKeyPath(var pchKey: POLESTR;       const dw: DWORD): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.GetDropTarget(const pDropTarget: IDropTarget;      out ppDropTarget: IDropTarget): HRESULT; stdcall;
begin
end;

function TCustomizedWebBrowser.GetExternal(out ppDispatch: IDispatch): HRESULT;       stdcall;
begin
end;

function TCustomizedWebBrowser.TranslateUrl(const dwTranslate: DWORD;       const pchURLIn: POLESTR; var ppchURLOut: POLESTR): HRESULT;      stdcall;
begin
end;

function TCustomizedWebBrowser.FilterDataObject(const pDO: IDataObject;      out ppDORet: IDataObject): HRESULT; stdcall;
begin
end;



{TWebBrowserContainer}
Constructor TWebBrowsersContainer.Create;
begin
Lock:=TCriticalSection.Create;
BrowsersList:=TList.Create;
UpdateBrowsersList:=TStringList.Create;
evtGet:=CreateEvent(nil,true,false,nil);
evtGot:=CreateEvent(nil,true,false,nil);
Inherited Create(false);
end;

Destructor TWebBrowsersContainer.Destroy;
var
  I: integer;
  EC: dword;
begin
CloseHandle(evtGot);
CloseHandle(evtGet);
//.
UpdateBrowsersList.Free;
//.
//. apps hanging if BrowsersList <> nil then for I:=0 to BrowsersList.Count-1 do TObject(BrowsersList[I]).Destroy;
BrowsersList.Free;
//.
Lock.Free;
//. Inherited;
GetExitCodeThread(Handle,EC);
TerminateThread(Handle,EC);
end;

function TWebBrowsersContainer.CreateBrowser(PanelProps: TURLPanelProps): TCustomizedWebBrowser;
const
  TimeWait = 1000*20;
begin
CreateBrowser_PanelProps:=PanelProps;
Operation:=coCreate;
SetEvent(evtGet);
if WaitForSingleObject(evtGot, TimeWait) = WAIT_OBJECT_0
 then begin
  ResetEvent(evtGot);
  Result:=CreateBrowser_Result;
  end
 else
  Raise Exception.Create('could not create new browser'); //. =>
end;

procedure TWebBrowsersContainer.DestroyBrowser(var Instance: TCustomizedWebBrowser);
begin
DestroyBrowser_Instance:=Instance;
Operation:=coDestroy;
SetEvent(evtGet);
while WaitForSingleObject(evtGot, 0) <> WAIT_OBJECT_0 do begin
  Sleep(1);
  Application.ProcessMessages;
  end;
ResetEvent(evtGot);
Instance:=nil;
end;

procedure TWebBrowsersContainer.UpdateBrowser(Instance: TCustomizedWebBrowser; const URL: WideString);
begin
Lock.Enter;
try
UpdateBrowsersList.AddObject(URL,Instance);
finally
Lock.Leave;
end;
end;

procedure TWebBrowsersContainer.Execute;
var
  URL: WideString;
  R: DWord;
  NewWebBrowser: TCustomizedWebBrowser;
  UpdateBrowser: TCustomizedWebBrowser;
  UpdateBrowserURL: WideString;
begin
CoInitializeEx(nil, COINIT_APARTMENTTHREADED);
try
repeat
  R:=WaitForSingleObject(evtGet, 10);
  if R = WAIT_OBJECT_0
   then begin
    try
    ResetEvent(evtGet);
    ResetEvent(evtGot);
    //.
    case Operation of
    coCreate: begin
      NewWebBrowser:=TCustomizedWebBrowser.Create(CreateBrowser_PanelProps);
      BrowsersList.Add(NewWebBrowser);
      CreateBrowser_Result:=NewWebBrowser;
      end;
    coDestroy: begin
      BrowsersList.Remove(DestroyBrowser_Instance);
      DestroyBrowser_Instance.Stop;
      DestroyBrowser_Instance.Destroy;
      end;
    end;
    //.
    SetEvent(evtGot);
    except
      end;
    end
   else begin
    try
    Lock.Enter;
    try
    while UpdateBrowsersList.Count > 0 do begin
      UpdateBrowser:=TCustomizedWebBrowser(UpdateBrowsersList.Objects[0]);
      UpdateBrowserURL:=UpdateBrowsersList.Strings[0];
      UpdateBrowsersList.Delete(0);
      //. update
      with UpdateBrowser do begin
      flStartNewURL:=false;
      LastURL:='';
      StartCount:=0;
      Navigate(UpdateBrowserURL);
      end;
      end;
    finally
    Lock.Leave;
    end;
    except
      end;
    end;
  Application.ProcessMessages;
until Terminated;
finally
CoUninitialize;
end;
end;




{TURLPanelProps}
Constructor TURLPanelProps.Create(pObjFunctionality: TComponentFunctionality; pflReadOnly: boolean; pidOwnerObjectProp: integer;pOwnerPanelsProps: TAbstractSpaceObjPanelsProps; const pProxyObject: TObjectDescr);
begin
Inherited Create(pObjFunctionality, pflReadOnly,pidOwnerObjectProp,pOwnerPanelsProps,pProxyObject);
if flReadOnly then DisableControls;
WebBrowser:=nil;
Update();
end;

destructor TURLPanelProps.Destroy;
begin
WebBrowser.Free;
Inherited;
end;

procedure TURLPanelProps._Update;
begin
Inherited;
//.
if (NOT ObjFunctionality.flDATAPresented)
 then TURLFunctionality(ObjFunctionality).GetParams({out} _URL,{out} _URLName,{out} _flPanelBrowser)
 else begin
  _URL:=TURLFunctionality(ObjFunctionality)._URL;
  _URLName:=TURLFunctionality(ObjFunctionality)._URLName;
  _flPanelBrowser:=TURLFunctionality(ObjFunctionality)._flPanelBrowser;
  end;
//.
if (_URLName = '') then _URLName:=_URL;
//.
stURLName.Caption:=_URLName;
if (_URL <> '')
 then begin
  stURLName.Font.Style:=[fsUnderline];
  stURLName.Cursor:=crHandPoint;
  stURLName.Hint:=_URL;
  Image.Cursor:=crHandPoint;
  Image.Hint:=_URLName;
  end
 else begin
  stURLName.Font.Style:=[];
  stURLName.Cursor:=crDefault;
  stURLName.Hint:='';
  Image.Cursor:=crDefault;
  Image.Hint:='';
  end;
if (_flPanelBrowser)
 then begin
  if (WebBrowser = nil) then WebBrowser:=TCustomizedWebBrowser.Create(Self);
  WebBrowser.DoNavigate(_URL);
  end
 else begin
  if (WebBrowser <> nil) then FreeAndNil(WebBrowser);
  end;
end;

procedure TURLPanelProps.wmGetComponentPanelProps(var Message: TMessage);
begin
with TComponentFunctionality_Create(Message.WParam,Message.LParam) do
try
Check();
with TPanelProps_Create(false, 0,nil,nilObject) do begin
Position:=poScreenCenter;
Show;
end;
finally
Release;
end
end;

procedure TURLPanelProps.OpenURL(const URL: string);

    function GetEnvVar(const VarName: string): string;
    var
      I: integer;
    begin
    Result:='';
    try
    I:=GetEnvironmentVariable(PChar(VarName), nil, 0);
    if I > 0
     then begin
      SetLength(Result, I);
      GetEnvironmentVariable(Pchar(VarName), PChar(Result), I);
      SetLength(Result, Length(Result)-1);
      end;
    except
      Result:='';
      end;
    end;

begin
ShellExecute(0,nil,PChar(String(GetEnvVar('SystemDrive')+'\Program Files\Internet Explorer\IExplore.exe')),PChar(URL),nil, 1);
end;

procedure TURLPanelProps.DisableControls;
var
  I: integer;
begin
for I:=0 to ComponentCount-1 do
  if (Components[I] is TEdit) OR (Components[I] is TDBEdit) OR (Components[I] is TComboBox)
   then TControl(Components[I]).Enabled:=false;
end;

procedure TURLPanelProps.EditURL1Click(Sender: TObject);
begin
with TfmURLPropsEditor.Create do
try
if (Dialog({ref} _URL,{ref} _URLName,{ref} _flPanelBrowser))
 then TURLFunctionality(ObjFunctionality).SetParams(_URL,_URLName,_flPanelBrowser);
finally
Destroy;
end;
end;

procedure TURLPanelProps.stURLNameClick(Sender: TObject);
begin
if (_URL = '') then Exit; //. ->
OpenURL(_URL);
end;

procedure TURLPanelProps.Controls_ClearPropData;
begin
stURLName.Caption:='';
end;


Initialization
///?- WebBrowsersContainer:=TWebBrowsersContainer.Create;

Finalization
try
///?- WebBrowsersContainer.Free;
except
  end;
end.
