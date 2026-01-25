/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_basetyps.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.basetyps for the auto-generated win32 package.
module win32.basetyps;
//version (Windows):

import win32.windef, win32.basetsd;

align(1) struct GUID {  // size is 16
    align(1):
    DWORD   Data1;
    WORD    Data2;
    WORD    Data3;
    BYTE[8] Data4;
}
alias UUID = GUID, /*IID, CLSID, */FMTID = GUID, uuid_t = GUID;
alias IID = const(GUID);
alias CLSID = const(GUID);

alias LPGUID = GUID*, LPCLSID = GUID*, LPIID = GUID*;
alias LPCGUID = const(GUID)*, REFGUID = const(GUID)*, REFIID = const(GUID)*, REFCLSID = const(GUID)*, REFFMTID = const(GUID)*;
alias error_status_t = uint, PROPID = uint;
