/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_basetyps.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.basetyps for the auto-generated win32 package.
module win32.basetyps;

private import win32.windef, win32.basetsd;

align(1) struct GUID {  // size is 16
    DWORD   Data1;
    WORD    Data2;
    WORD    Data3;
    BYTE[8] Data4;
}
alias GUID UUID, IID, CLSID, FMTID, uuid_t;
alias GUID* LPGUID, LPCLSID, LPIID;
alias const(GUID)* LPCGUID, REFGUID, REFIID, REFCLSID, REFFMTID;

alias uint error_status_t, PROPID;
