/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_secext.d)
 */
// Don't include this file directly, use win32.security instead.
/// Automatically imported and edited from the druntime module
/// core.sys.windows.secext for the auto-generated win32 package.
module win32.secext;
//version (Windows):
@system:

version (ANSI) {} else version = Unicode;
version (Win32_UseLib) pragma(lib, "secur32");

import win32.w32api, win32.windef;

static assert (_WIN32_WINNT >= 0x501,
  "SecExt is only available on WindowsXP and later");

enum EXTENDED_NAME_FORMAT {
    NameUnknown,
    NameFullyQualifiedDN,
    NameSamCompatible,
    NameDisplay,          // =  3
    NameUniqueId             =  6,
    NameCanonical,
    NameUserPrincipal,
    NameCanonicalEx,
    NameServicePrincipal, // = 10
    NameDnsDomain            = 12
}
alias EXTENDED_NAME_FORMAT* PEXTENDED_NAME_FORMAT;

extern (Windows) {
    BOOLEAN GetComputerObjectNameA(EXTENDED_NAME_FORMAT, LPSTR, PULONG);
    BOOLEAN GetComputerObjectNameW(EXTENDED_NAME_FORMAT, LPWSTR, PULONG);
    BOOLEAN GetUserNameExA(EXTENDED_NAME_FORMAT, LPSTR, PULONG);
    BOOLEAN GetUserNameExW(EXTENDED_NAME_FORMAT, LPWSTR, PULONG);
    BOOLEAN TranslateNameA(LPCSTR, EXTENDED_NAME_FORMAT,
      EXTENDED_NAME_FORMAT, LPSTR, PULONG);
    BOOLEAN TranslateNameW(LPCWSTR, EXTENDED_NAME_FORMAT,
      EXTENDED_NAME_FORMAT, LPWSTR, PULONG);
}

version (Unicode) {
    alias GetComputerObjectNameW GetComputerObjectName;
    alias GetUserNameExW GetUserNameEx;
    alias TranslateNameW TranslateName;
} else {
    alias GetComputerObjectNameA GetComputerObjectName;
    alias GetUserNameExA GetUserNameEx;
    alias TranslateNameA TranslateName;
}
