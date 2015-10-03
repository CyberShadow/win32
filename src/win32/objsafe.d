/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_objsafe.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.objsafe for the auto-generated win32 package.
module win32.objsafe;

private import win32.basetyps, win32.unknwn, win32.windef;

enum {
    INTERFACESAFE_FOR_UNTRUSTED_CALLER = 1,
    INTERFACESAFE_FOR_UNTRUSTED_DATA
}

interface IObjectSafety : IUnknown {
    HRESULT GetInterfaceSafetyOptions(REFIID, DWORD*, DWORD*);
    HRESULT SetInterfaceSafetyOptions(REFIID, DWORD, DWORD);
}
