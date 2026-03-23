/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_comcat.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.comcat for the auto-generated win32 package.
module win32.comcat;
//version (Windows):

import win32.ole2;
import win32.basetyps, win32.cguid, win32.objbase, win32.unknwn,
  win32.windef, win32.wtypes;

alias LPENUMGUID = IEnumGUID;

interface IEnumGUID : IUnknown {
    HRESULT Next(ULONG, GUID*, ULONG*);
    HRESULT Skip(ULONG);
    HRESULT Reset();
    HRESULT Clone(LPENUMGUID*);
}

alias CATID = GUID;
alias REFCATID = REFGUID;
alias CATID_NULL = GUID_NULL;
alias IsEqualCATID = IsEqualGUID;

struct CATEGORYINFO {
    CATID        catid;
    LCID         lcid;
    OLECHAR[128] szDescription = 0;
}
alias LPCATEGORYINFO = CATEGORYINFO*;

alias IEnumCATID = IEnumGUID;
alias LPENUMCATID = LPENUMGUID;
alias IID_IEnumCATID = IID_IEnumGUID;

alias IEnumCLSID = IEnumGUID;
alias LPENUMCLSID = LPENUMGUID;
alias IID_IEnumCLSID = IID_IEnumGUID;

interface ICatInformation : IUnknown {
    HRESULT EnumCategories(LCID, LPENUMCATEGORYINFO*);
    HRESULT GetCategoryDesc(REFCATID, LCID, PWCHAR*);
    HRESULT EnumClassesOfCategories(ULONG, CATID*, ULONG, CATID*,
      LPENUMCLSID*);
    HRESULT IsClassOfCategories(REFCLSID, ULONG, CATID*, ULONG, CATID*);
    HRESULT EnumImplCategoriesOfClass(REFCLSID, LPENUMCATID*);
    HRESULT EnumReqCategoriesOfClass(REFCLSID, LPENUMCATID*);
}
alias LPCATINFORMATION = ICatInformation;

interface ICatRegister : IUnknown {
    HRESULT RegisterCategories(ULONG, CATEGORYINFO*);
    HRESULT UnRegisterCategories(ULONG, CATID*);
    HRESULT RegisterClassImplCategories(REFCLSID, ULONG, CATID*);
    HRESULT UnRegisterClassImplCategories(REFCLSID, ULONG, CATID*);
    HRESULT RegisterClassReqCategories(REFCLSID, ULONG, CATID*);
    HRESULT UnRegisterClassReqCategories(REFCLSID, ULONG, CATID*);
}
alias LPCATREGISTER = ICatRegister;

interface IEnumCATEGORYINFO : IUnknown {
    HRESULT Next(ULONG, CATEGORYINFO*, ULONG*);
    HRESULT Skip(ULONG);
    HRESULT Reset();
    HRESULT Clone(LPENUMCATEGORYINFO*);
}
alias LPENUMCATEGORYINFO = IEnumCATEGORYINFO;
