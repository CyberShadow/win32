/**
 * Windows API header module
 *
 * Translated from MinGW API for MS-Windows 3.10
 *
 * Authors: Stewart Gordon
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_ntdll.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.ntdll for the auto-generated win32 package.
module win32.ntdll;
//version (Windows):

import win32.w32api;


enum SHUTDOWN_ACTION {
    ShutdownNoReboot,
    ShutdownReboot,
    ShutdownPowerOff
}

extern (Windows) uint NtShutdownSystem(SHUTDOWN_ACTION Action);
