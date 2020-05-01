/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * Authors: Stewart Gordon
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_cplext.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.cplext for the auto-generated win32 package.
module win32.cplext;
//version (Windows):
@system:

enum : uint {
    CPLPAGE_MOUSE_BUTTONS      = 1,
    CPLPAGE_MOUSE_PTRMOTION    = 2,
    CPLPAGE_MOUSE_WHEEL        = 3,
    CPLPAGE_KEYBOARD_SPEED     = 1,
    CPLPAGE_DISPLAY_BACKGROUND = 1
}