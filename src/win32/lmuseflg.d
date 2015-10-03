/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_lmuseflg.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.lmuseflg for the auto-generated win32 package.
module win32.lmuseflg;

enum : uint {
    USE_NOFORCE = 0,
    USE_FORCE,
    USE_LOTS_OF_FORCE // = 2
}
