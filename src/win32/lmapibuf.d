/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_lmapibuf.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.lmapibuf for the auto-generated win32 package.
module win32.lmapibuf;
version (Win32_UseLib) pragma(lib, "netapi32");

private import win32.lmcons, win32.windef;

extern (Windows) {
    NET_API_STATUS NetApiBufferAllocate(DWORD, PVOID*);
    NET_API_STATUS NetApiBufferFree(PVOID);
    NET_API_STATUS NetApiBufferReallocate(PVOID, DWORD, PVOID*);
    NET_API_STATUS NetApiBufferSize(PVOID, PDWORD);
    NET_API_STATUS NetapipBufferAllocate(DWORD, PVOID*);
}
