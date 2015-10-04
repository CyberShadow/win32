/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_errorrep.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.errorrep for the auto-generated win32 package.
module win32.errorrep;
//version (Windows):

private import win32.w32api, win32.windef;

static assert (_WIN32_WINNT >= 0x501,
    "win32.errorrep is available only if version WindowsXP, Windows2003 "
    "or WindowsVista is set");

enum EFaultRepRetVal {
    frrvOk,
    frrvOkManifest,
    frrvOkQueued,
    frrvErr,
    frrvErrNoDW,
    frrvErrTimeout,
    frrvLaunchDebugger,
    frrvOkHeadless // = 7
}

extern (Windows) {
    BOOL AddERExcludedApplicationA(LPCSTR);
    BOOL AddERExcludedApplicationW(LPCWSTR);
    EFaultRepRetVal ReportFault(LPEXCEPTION_POINTERS, DWORD);
}

version (Unicode) {
    alias AddERExcludedApplicationW AddERExcludedApplication;
} else {
    alias AddERExcludedApplicationA AddERExcludedApplication;
}
