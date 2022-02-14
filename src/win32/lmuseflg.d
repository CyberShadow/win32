/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_lmuseflg.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.lmuseflg for the auto-generated win32 package.
module win32.lmuseflg;
//version (Windows):

enum : uint {
    USE_NOFORCE = 0,
    USE_FORCE,
    USE_LOTS_OF_FORCE // = 2
}
