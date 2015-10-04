/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_shldisp.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.shldisp for the auto-generated win32 package.
module win32.shldisp;
//version (Windows):

private import win32.unknwn, win32.windef, win32.wtypes;

// options for IAutoComplete2
const DWORD ACO_AUTOSUGGEST = 0x01;

interface IAutoComplete : IUnknown {
    HRESULT Init(HWND, IUnknown, LPCOLESTR, LPCOLESTR);
    HRESULT Enable(BOOL);
}
alias IAutoComplete LPAUTOCOMPLETE;

interface IAutoComplete2 : IAutoComplete {
    HRESULT SetOptions(DWORD);
    HRESULT GetOptions(DWORD*);
}
alias IAutoComplete2 LPAUTOCOMPLETE2;
