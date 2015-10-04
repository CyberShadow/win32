/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_servprov.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.servprov for the auto-generated win32 package.
module win32.servprov;
//version (Windows):

private import win32.basetyps, win32.unknwn, win32.windef, win32.wtypes;

interface IServiceProvider : IUnknown {
    HRESULT QueryService(REFGUID, REFIID, void**);
}
