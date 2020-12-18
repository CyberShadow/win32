/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_olectl.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.olectl for the auto-generated win32 package.
module win32.olectl;
//version (Windows):
@system:

// In conversion from MinGW, the following was deleted:
//#define FONTSIZE(n) {n##0000, 0}

import win32.ocidl, win32.olectlid;
import win32.basetyps, win32.oaidl, win32.oleauto, win32.unknwn,
  win32.windef, win32.wingdi, win32.winuser, win32.wtypes;
import win32.ntdef;     // for NTSTATUS
import win32.objfwd;    // for LPSTREAM
import win32.winerror;  // for SCODE


private {
    // These replace C macros.
    template ITF_ERROR_SCODE_FOR_D(int c)
    {
enum SCODE ITF_ERROR_SCODE_FOR_D
          = (SEVERITY_ERROR << 31) | (FACILITY_ITF << 16) | c;
    }

    template ITF_SUCCESS_SCODE_FOR_D(int c)
    {
enum SCODE ITF_SUCCESS_SCODE_FOR_D
          = (SEVERITY_SUCCESS << 31) | (FACILITY_ITF << 16) | c;
    }

    template STD_CTL_SCODE(int c)
    {
enum SCODE STD_CTL_SCODE
          = (SEVERITY_ERROR << 31) | (FACILITY_CONTROL << 16) | c;
    }
}

enum : SCODE {
    CTL_E_ILLEGALFUNCTIONCALL       = STD_CTL_SCODE!(5),
    CTL_E_OVERFLOW                  = STD_CTL_SCODE!(6),
    CTL_E_OUTOFMEMORY               = STD_CTL_SCODE!(7),
    CTL_E_DIVISIONBYZERO            = STD_CTL_SCODE!(11),
    CTL_E_OUTOFSTRINGSPACE          = STD_CTL_SCODE!(14),
    CTL_E_OUTOFSTACKSPACE           = STD_CTL_SCODE!(28),
    CTL_E_BADFILENAMEORNUMBER       = STD_CTL_SCODE!(52),
    CTL_E_FILENOTFOUND              = STD_CTL_SCODE!(53),
    CTL_E_BADFILEMODE               = STD_CTL_SCODE!(54),
    CTL_E_FILEALREADYOPEN           = STD_CTL_SCODE!(55),
    CTL_E_DEVICEIOERROR             = STD_CTL_SCODE!(57),
    CTL_E_FILEALREADYEXISTS         = STD_CTL_SCODE!(58),
    CTL_E_BADRECORDLENGTH           = STD_CTL_SCODE!(59),
    CTL_E_DISKFULL                  = STD_CTL_SCODE!(61),
    CTL_E_BADRECORDNUMBER           = STD_CTL_SCODE!(63),
    CTL_E_BADFILENAME               = STD_CTL_SCODE!(64),
    CTL_E_TOOMANYFILES              = STD_CTL_SCODE!(67),
    CTL_E_DEVICEUNAVAILABLE         = STD_CTL_SCODE!(68),
    CTL_E_PERMISSIONDENIED          = STD_CTL_SCODE!(70),
    CTL_E_DISKNOTREADY              = STD_CTL_SCODE!(71),
    CTL_E_PATHFILEACCESSERROR       = STD_CTL_SCODE!(75),
    CTL_E_PATHNOTFOUND              = STD_CTL_SCODE!(76),
    CTL_E_INVALIDPATTERNSTRING      = STD_CTL_SCODE!(93),
    CTL_E_INVALIDUSEOFNULL          = STD_CTL_SCODE!(94),
    CTL_E_INVALIDFILEFORMAT         = STD_CTL_SCODE!(321),
    CTL_E_INVALIDPROPERTYVALUE      = STD_CTL_SCODE!(380),
    CTL_E_INVALIDPROPERTYARRAYINDEX = STD_CTL_SCODE!(381),
    CTL_E_SETNOTSUPPORTEDATRUNTIME  = STD_CTL_SCODE!(382),
    CTL_E_SETNOTSUPPORTED           = STD_CTL_SCODE!(383),
    CTL_E_NEEDPROPERTYARRAYINDEX    = STD_CTL_SCODE!(385),
    CTL_E_SETNOTPERMITTED           = STD_CTL_SCODE!(387),
    CTL_E_GETNOTSUPPORTEDATRUNTIME  = STD_CTL_SCODE!(393),
    CTL_E_GETNOTSUPPORTED           = STD_CTL_SCODE!(394),
    CTL_E_PROPERTYNOTFOUND          = STD_CTL_SCODE!(422),
    CTL_E_INVALIDCLIPBOARDFORMAT    = STD_CTL_SCODE!(460),
    CTL_E_INVALIDPICTURE            = STD_CTL_SCODE!(481),
    CTL_E_PRINTERERROR              = STD_CTL_SCODE!(482),
    CTL_E_CANTSAVEFILETOTEMP        = STD_CTL_SCODE!(735),
    CTL_E_SEARCHTEXTNOTFOUND        = STD_CTL_SCODE!(744),
    CTL_E_REPLACEMENTSTOOLONG       = STD_CTL_SCODE!(746),
    CTL_E_CUSTOM_FIRST              = STD_CTL_SCODE!(600)
}

enum SCODE CLASS_E_NOTLICENSED = CLASSFACTORY_E_FIRST+2;

enum : SCODE {
    CONNECT_E_FIRST           = ITF_ERROR_SCODE_FOR_D!(0x200),
    CONNECT_E_LAST            = ITF_ERROR_SCODE_FOR_D!(0x20F),
    CONNECT_S_FIRST           = ITF_SUCCESS_SCODE_FOR_D!(0x200),
    CONNECT_S_LAST            = ITF_SUCCESS_SCODE_FOR_D!(0x20F),
    CONNECT_E_NOCONNECTION    = CONNECT_E_FIRST + 0,
    CONNECT_E_ADVISELIMIT     = CONNECT_E_FIRST + 1,
    CONNECT_E_CANNOTCONNECT   = CONNECT_E_FIRST + 2,
    CONNECT_E_OVERRIDDEN      = CONNECT_E_FIRST + 3,

    SELFREG_E_FIRST           = ITF_ERROR_SCODE_FOR_D!(0x200),
    SELFREG_E_LAST            = ITF_ERROR_SCODE_FOR_D!(0x20F),
    SELFREG_S_FIRST           = ITF_SUCCESS_SCODE_FOR_D!(0x200),
    SELFREG_S_LAST            = ITF_SUCCESS_SCODE_FOR_D!(0x20F),
    SELFREG_E_TYPELIB         = SELFREG_E_FIRST + 0,
    SELFREG_E_CLASS           = SELFREG_E_FIRST + 1,

    PERPROP_E_FIRST           = ITF_ERROR_SCODE_FOR_D!(0x200),
    PERPROP_E_LAST            = ITF_ERROR_SCODE_FOR_D!(0x20F),
    PERPROP_S_FIRST           = ITF_SUCCESS_SCODE_FOR_D!(0x200),
    PERPROP_S_LAST            = ITF_SUCCESS_SCODE_FOR_D!(0x20F),
    PERPROP_E_NOPAGEAVAILABLE = PERPROP_E_FIRST
}

enum {
    OLEMISC_RECOMPOSEONRESIZE            = 0x1,
    OLEMISC_ONLYICONIC                   = 0x2,
    OLEMISC_INSERTNOTREPLACE             = 0x4,
    OLEMISC_STATIC                       = 0x8,
    OLEMISC_CANTLINKINSIDE               = 0x10,
    OLEMISC_CANLINKBYOLE1                = 0x20,
    OLEMISC_ISLINKOBJECT                 = 0x40,
    OLEMISC_INSIDEOUT                    = 0x80,
    OLEMISC_ACTIVATEWHENVISIBLE          = 0x100,
    OLEMISC_RENDERINGISDEVICEINDEPENDENT = 0x200,
    OLEMISC_INVISIBLEATRUNTIME           = 0x400,
    OLEMISC_ALWAYSRUN                    = 0x800,
    OLEMISC_ACTSLIKEBUTTON               = 0x1000,
    OLEMISC_ACTSLIKELABEL                = 0x2000,
    OLEMISC_NOUIACTIVATE                 = 0x4000,
    OLEMISC_ALIGNABLE                    = 0x8000,
    OLEMISC_SIMPLEFRAME                  = 0x10000,
    OLEMISC_SETCLIENTSITEFIRST           = 0x20000,
    OLEMISC_IMEMODE                      = 0x40000,
    OLEMISC_IGNOREACTIVATEWHENVISIBLE    = 0x80000,
    OLEMISC_WANTSTOMENUMERGE             = 0x100000,
    OLEMISC_SUPPORTSMULTILEVELUNDO       = 0x200000
}
enum OLEIVERB_PROPERTIES = -7;

enum VT_STREAMED_PROPSET = 73;
enum VT_STORED_PROPSET = 74;
enum VT_BLOB_PROPSET = 75;
enum VT_VERBOSE_ENUM = 76;
enum VT_COLOR = VARENUM.VT_I4;
enum VT_XPOS_PIXELS = VARENUM.VT_I4;
enum VT_YPOS_PIXELS = VARENUM.VT_I4;
enum VT_XSIZE_PIXELS = VARENUM.VT_I4;
enum VT_YSIZE_PIXELS = VARENUM.VT_I4;
enum VT_XPOS_HIMETRIC = VARENUM.VT_I4;
enum VT_YPOS_HIMETRIC = VARENUM.VT_I4;
enum VT_XSIZE_HIMETRIC = VARENUM.VT_I4;
enum VT_YSIZE_HIMETRIC = VARENUM.VT_I4;
enum VT_TRISTATE = VARENUM.VT_I2;
enum VT_OPTEXCLUSIVE = VARENUM.VT_BOOL;
enum VT_FONT = VARENUM.VT_DISPATCH;
enum VT_PICTURE = VARENUM.VT_DISPATCH;
enum VT_HANDLE = VARENUM.VT_I4;

enum {
    OCM__BASE = WM_USER + 0x1c00,
    OCM_COMMAND = OCM__BASE + WM_COMMAND,
    OCM_CTLCOLORBTN = OCM__BASE + WM_CTLCOLORBTN,
    OCM_CTLCOLOREDIT = OCM__BASE + WM_CTLCOLOREDIT,
    OCM_CTLCOLORDLG = OCM__BASE + WM_CTLCOLORDLG,
    OCM_CTLCOLORLISTBOX = OCM__BASE + WM_CTLCOLORLISTBOX,
    OCM_CTLCOLORMSGBOX = OCM__BASE + WM_CTLCOLORMSGBOX,
    OCM_CTLCOLORSCROLLBAR = OCM__BASE + WM_CTLCOLORSCROLLBAR,
    OCM_CTLCOLORSTATIC = OCM__BASE + WM_CTLCOLORSTATIC,
    OCM_DRAWITEM = OCM__BASE + WM_DRAWITEM,
    OCM_MEASUREITEM = OCM__BASE + WM_MEASUREITEM,
    OCM_DELETEITEM = OCM__BASE + WM_DELETEITEM,
    OCM_VKEYTOITEM = OCM__BASE + WM_VKEYTOITEM,
    OCM_CHARTOITEM = OCM__BASE + WM_CHARTOITEM,
    OCM_COMPAREITEM = OCM__BASE + WM_COMPAREITEM,
    OCM_HSCROLL = OCM__BASE + WM_HSCROLL,
    OCM_VSCROLL = OCM__BASE + WM_VSCROLL,
    OCM_PARENTNOTIFY = OCM__BASE + WM_PARENTNOTIFY,
    OCM_NOTIFY = OCM__BASE + WM_NOTIFY
}

enum {
    CTRLINFO_EATS_RETURN = 1,
    CTRLINFO_EATS_ESCAPE
}

enum {
    XFORMCOORDS_POSITION            = 1,
    XFORMCOORDS_SIZE                = 2,
    XFORMCOORDS_HIMETRICTOCONTAINER = 4,
    XFORMCOORDS_CONTAINERTOHIMETRIC = 8
}

enum GUIDKIND_DEFAULT_SOURCE_DISP_IID = 1;

enum {
    PROPPAGESTATUS_DIRTY = 1,
    PROPPAGESTATUS_VALIDATE = 2
}

enum {
    PICTURE_SCALABLE = 1,
    PICTURE_TRANSPARENT = 2
}

enum {
    PICTYPE_UNINITIALIZED  =  -1,
    PICTYPE_NONE,       // = 0
    PICTYPE_BITMAP,
    PICTYPE_METAFILE,
    PICTYPE_ICON,
    PICTYPE_ENHMETAFILE // = 4
}

enum {
    DISPID_AUTOSIZE = -500,
    DISPID_BACKCOLOR = -501,
    DISPID_BACKSTYLE = -502,
    DISPID_BORDERCOLOR = -503,
    DISPID_BORDERSTYLE = -504,
    DISPID_BORDERWIDTH = -505,
    DISPID_DRAWMODE = -507,
    DISPID_DRAWSTYLE = -508,
    DISPID_DRAWWIDTH = -509,
    DISPID_FILLCOLOR = -510,
    DISPID_FILLSTYLE = -511,
    DISPID_FONT = -512,
    DISPID_FORECOLOR = -513,
    DISPID_ENABLED = -514,
    DISPID_HWND = -515,
    DISPID_TABSTOP = -516,
    DISPID_TEXT = -517,
    DISPID_CAPTION = -518,
    DISPID_BORDERVISIBLE = -519,
    DISPID_APPEARANCE = -520,
    DISPID_MOUSEPOINTER = -521,
    DISPID_MOUSEICON = -522,
    DISPID_PICTURE = -523,
    DISPID_VALID = -524,
    DISPID_REFRESH = -550,
    DISPID_DOCLICK = -551,
    DISPID_ABOUTBOX = -552,
    DISPID_CLICK = -600,
    DISPID_DBLCLICK = -601,
    DISPID_KEYDOWN = -602,
    DISPID_KEYPRESS = -603,
    DISPID_KEYUP = -604,
    DISPID_MOUSEDOWN = -605,
    DISPID_MOUSEMOVE = -606,
    DISPID_MOUSEUP = -607,
    DISPID_ERROREVENT = -608,
    DISPID_AMBIENT_BACKCOLOR = -701,
    DISPID_AMBIENT_DISPLAYNAME = -702,
    DISPID_AMBIENT_FONT = -703,
    DISPID_AMBIENT_FORECOLOR = -704,
    DISPID_AMBIENT_LOCALEID = -705,
    DISPID_AMBIENT_MESSAGEREFLECT = -706,
    DISPID_AMBIENT_SCALEUNITS = -707,
    DISPID_AMBIENT_TEXTALIGN = -708,
    DISPID_AMBIENT_USERMODE = -709,
    DISPID_AMBIENT_UIDEAD = -710,
    DISPID_AMBIENT_SHOWGRABHANDLES = -711,
    DISPID_AMBIENT_SHOWHATCHING = -712,
    DISPID_AMBIENT_DISPLAYASDEFAULT = -713,
    DISPID_AMBIENT_SUPPORTSMNEMONICS = -714,
    DISPID_AMBIENT_AUTOCLIP = -715,
    DISPID_AMBIENT_APPEARANCE = -716,
    DISPID_AMBIENT_CODEPAGE = -725,
    DISPID_AMBIENT_PALETTE = -726,
    DISPID_AMBIENT_CHARSET = -727,
    DISPID_AMBIENT_RIGHTTOLEFT = -732,
    DISPID_AMBIENT_TOPTOBOTTOM = -733
}

enum {
    DISPID_FONT_NAME = 0,
    DISPID_FONT_SIZE = 2,
    DISPID_FONT_BOLD,
    DISPID_FONT_ITALIC,
    DISPID_FONT_UNDER,
    DISPID_FONT_STRIKE,
    DISPID_FONT_WEIGHT,
    DISPID_FONT_CHARSET // = 8
}

enum {
    DISPID_PICT_HANDLE = 0,
    DISPID_PICT_HPAL   = 2,
    DISPID_PICT_TYPE,
    DISPID_PICT_WIDTH,
    DISPID_PICT_HEIGHT,
    DISPID_PICT_RENDER // = 6
}

alias IOleControl LPOLECONTROL;
alias IOleControlSite LPOLECONTROLSITE;
alias ISimpleFrameSite LPSIMPLEFRAMESITE;
alias IPersistPropertyBag LPPERSISTPROPERTYBAG;
alias IPersistStreamInit LPPERSISTSTREAMINIT;
alias IPersistMemory LPPERSISTMEMORY;
alias IPropertyNotifySink LPPROPERTYNOTIFYSINK;
alias IProvideClassInfo LPPROVIDECLASSINFO;
alias IProvideClassInfo2 LPPROVIDECLASSINFO2;
alias IConnectionPointContainer LPCONNECTIONPOINTCONTAINER;
alias IClassFactory2 LPCLASSFACTORY2;
alias ISpecifyPropertyPages LPSPECIFYPROPERTYPAGES;
alias IPerPropertyBrowsing LPPERPROPERTYBROWSING;
alias IPropertyPage LPPROPERTYPAGE;
alias IPropertyPage2 LPPROPERTYPAGE2;

alias IPicture LPPICTURE;
alias IPictureDisp LPPICTUREDISP;
alias int OLE_XPOS_PIXELS;
alias int OLE_YPOS_PIXELS;
alias int OLE_XSIZE_PIXELS;
alias int OLE_YSIZE_PIXELS;
alias float OLE_XPOS_CONTAINER;
alias float OLE_YPOS_CONTAINER;
alias float OLE_XSIZE_CONTAINER;

alias VARIANT_BOOL OLE_OPTEXCLUSIVE;
alias VARIANT_BOOL OLE_CANCELBOOL;
alias VARIANT_BOOL OLE_ENABLEDEFAULTBOOL;

align(8):

enum OLE_TRISTATE {
    triUnchecked,
    triChecked1,
    triGray
}

struct OCPFIPARAMS {
    ULONG cbStructSize;
    HWND hWndOwner;
    int x;
    int y;
    LPCOLESTR lpszCaption;
    ULONG cObjects;
    LPUNKNOWN *lplpUnk;
    ULONG cPages;
    CLSID *lpPages;
    LCID lcid;
    DISPID dispidInitialProperty;
}
alias OCPFIPARAMS* LPOCPFIPARAMS;

struct FONTDESC {
    UINT cbSizeofstruct;
    LPOLESTR lpstrName;
    CY cySize;
    SHORT sWeight;
    SHORT sCharset;
    BOOL fItalic;
    BOOL fUnderline;
    BOOL fStrikethrough;
}
alias FONTDESC* LPFONTDESC;

struct PICTDESC
{
    UINT cbSizeofstruct;
    UINT picType;
    union {
        struct _bmp {
            HBITMAP hbitmap;
            HPALETTE hpal;
        }
        _bmp bmp;
        struct _wmf {
            HMETAFILE hmeta;
            int xExt;
            int yExt;
        }
        _wmf wmf;
        struct _icon {
            HICON hicon;
        }
        _icon icon;
        struct _emf {
            HENHMETAFILE hemf;
        }
        _emf emf;
    }
}
alias PICTDESC* LPPICTDESC;

extern(Windows) {
    HRESULT DllRegisterServer();
    HRESULT DllUnregisterServer();
    HRESULT OleCreateFontIndirect(LPFONTDESC, REFIID, PVOID*);
    HRESULT OleCreatePictureIndirect(LPPICTDESC, REFIID, BOOL, PVOID*);
    HRESULT OleCreatePropertyFrame(HWND, UINT, UINT, LPCOLESTR, ULONG, LPUNKNOWN*, ULONG, LPCLSID, LCID, DWORD, PVOID);
    HRESULT OleCreatePropertyFrameIndirect(LPOCPFIPARAMS);
    HCURSOR OleIconToCursor(HINSTANCE, HICON);
    HRESULT OleLoadPicture(LPSTREAM, LONG, BOOL, REFIID, PVOID*);
    HRESULT OleLoadPictureEx(LPSTREAM, LONG, BOOL, REFIID, DWORD, DWORD, DWORD, LPVOID*);
    HRESULT OleLoadPicturePath(LPOLESTR, LPUNKNOWN, DWORD, OLE_COLOR, REFIID, LPVOID*);
    HRESULT OleLoadPictureFile(VARIANT, LPDISPATCH*);
    HRESULT OleLoadPictureFileEx(VARIANT, DWORD, DWORD, DWORD, LPDISPATCH*);
    HRESULT OleSavePictureFile(LPDISPATCH, BSTR);
    HRESULT OleTranslateColor(OLE_COLOR, HPALETTE, COLORREF*);
}
