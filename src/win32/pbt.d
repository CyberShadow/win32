/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_pbt.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.pbt for the auto-generated win32 package.
module win32.pbt;
//version (Windows):

private import win32.windef;

enum : WPARAM {
    PBT_APMQUERYSUSPEND,
    PBT_APMQUERYSTANDBY,
    PBT_APMQUERYSUSPENDFAILED,
    PBT_APMQUERYSTANDBYFAILED,
    PBT_APMSUSPEND,
    PBT_APMSTANDBY,
    PBT_APMRESUMECRITICAL,
    PBT_APMRESUMESUSPEND,
    PBT_APMRESUMESTANDBY,
    PBT_APMBATTERYLOW,
    PBT_APMPOWERSTATUSCHANGE,
    PBT_APMOEMEVENT // = 11
}

const LPARAM PBTF_APMRESUMEFROMFAILURE = 1;
