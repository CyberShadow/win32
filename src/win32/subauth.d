/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC src/core/sys/windows/_subauth.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.subauth for the auto-generated win32 package.
module win32.subauth;
//version (Windows):

private import win32.ntdef, win32.windef;

/+
alias LONG NTSTATUS;
alias NTSTATUS* PNTSTATUS;
+/

enum : ULONG {
    MSV1_0_PASSTHRU    = 1,
    MSV1_0_GUEST_LOGON = 2
}

// USER_ALL_INFORMATION.WhichFields (Undocumented)
enum ULONG
    MSV1_0_VALIDATION_LOGOFF_TIME  = 1,
    MSV1_0_VALIDATION_KICKOFF_TIME = 2,
    MSV1_0_VALIDATION_LOGON_SERVER = 4,
    MSV1_0_VALIDATION_LOGON_DOMAIN = 8,
    MSV1_0_VALIDATION_SESSION_KEY  = 16,
    MSV1_0_VALIDATION_USER_FLAGS   = 32,
    MSV1_0_VALIDATION_USER_ID      = 64;

// ?ActionsPerformed? (Undocumented)
enum MSV1_0_SUBAUTH_ACCOUNT_DISABLED = 1;
enum MSV1_0_SUBAUTH_PASSWORD         = 2;
enum MSV1_0_SUBAUTH_WORKSTATIONS = 4;
enum MSV1_0_SUBAUTH_LOGON_HOURS = 8;
enum MSV1_0_SUBAUTH_ACCOUNT_EXPIRY = 16;
enum MSV1_0_SUBAUTH_PASSWORD_EXPIRY = 32;
enum MSV1_0_SUBAUTH_ACCOUNT_TYPE = 64;
enum MSV1_0_SUBAUTH_LOCKOUT = 128;

enum NEXT_FREE_ACCOUNT_CONTROL_BIT = 131072;

enum SAM_DAYS_PER_WEEK    = 7;
enum SAM_HOURS_PER_WEEK   = 168;
enum SAM_MINUTES_PER_WEEK = 10080;

enum : NTSTATUS {
    STATUS_SUCCESS                = 0,
    STATUS_INVALID_INFO_CLASS     = 0xC0000003,
    STATUS_NO_SUCH_USER           = 0xC0000064,
    STATUS_WRONG_PASSWORD         = 0xC000006A,
    STATUS_PASSWORD_RESTRICTION   = 0xC000006C,
    STATUS_LOGON_FAILURE          = 0xC000006D,
    STATUS_ACCOUNT_RESTRICTION    = 0xC000006E,
    STATUS_INVALID_LOGON_HOURS    = 0xC000006F,
    STATUS_INVALID_WORKSTATION    = 0xC0000070,
    STATUS_PASSWORD_EXPIRED       = 0xC0000071,
    STATUS_ACCOUNT_DISABLED       = 0xC0000072,
    STATUS_INSUFFICIENT_RESOURCES = 0xC000009A,
    STATUS_ACCOUNT_EXPIRED        = 0xC0000193,
    STATUS_PASSWORD_MUST_CHANGE   = 0xC0000224,
    STATUS_ACCOUNT_LOCKED_OUT     = 0xC0000234
}

// Note: undocumented in MSDN
// USER_ALL_INFORMATION.UserAccountControl
enum ULONG
    USER_ACCOUNT_DISABLED                = 1,
    USER_HOME_DIRECTORY_REQUIRED         = 2,
    USER_PASSWORD_NOT_REQUIRED           = 4,
    USER_TEMP_DUPLICATE_ACCOUNT          = 8,
    USER_NORMAL_ACCOUNT                  = 16,
    USER_MNS_LOGON_ACCOUNT               = 32,
    USER_INTERDOMAIN_TRUST_ACCOUNT       = 64,
    USER_WORKSTATION_TRUST_ACCOUNT       = 128,
    USER_SERVER_TRUST_ACCOUNT            = 256,
    USER_DONT_EXPIRE_PASSWORD            = 512,
    USER_ACCOUNT_AUTO_LOCKED             = 1024,
    USER_ENCRYPTED_TEXT_PASSWORD_ALLOWED = 2048,
    USER_SMARTCARD_REQUIRED              = 4096,
    USER_TRUSTED_FOR_DELEGATION          = 8192,
    USER_NOT_DELEGATED                   = 16384,
    USER_USE_DES_KEY_ONLY                = 32768,
    USER_DONT_REQUIRE_PREAUTH            = 65536,

    USER_MACHINE_ACCOUNT_MASK            = 448,
    USER_ACCOUNT_TYPE_MASK               = 472,
    USER_ALL_PARAMETERS                  = 2097152;

/+
struct UNICODE_STRING {
    USHORT Length;
    USHORT MaximumLength;
    PWSTR Buffer;
}
alias UNICODE_STRING* PUNICODE_STRING;

struct STRING {
    USHORT Length;
    USHORT MaximumLength;
    PCHAR Buffer;
}
alias STRING* PSTRING;
+/

mixin DECLARE_HANDLE!("SAM_HANDLE");
alias SAM_HANDLE* PSAM_HANDLE;

struct OLD_LARGE_INTEGER {
    ULONG LowPart;
    LONG HighPart;
}
alias OLD_LARGE_INTEGER* POLD_LARGE_INTEGER;

enum NETLOGON_LOGON_INFO_CLASS {
    NetlogonInteractiveInformation = 1,
    NetlogonNetworkInformation,
    NetlogonServiceInformation,
    NetlogonGenericInformation,
    NetlogonInteractiveTransitiveInformation,
    NetlogonNetworkTransitiveInformation,
    NetlogonServiceTransitiveInformation
}


enum CYPHER_BLOCK_LENGTH = 8;
enum USER_SESSION_KEY_LENGTH = CYPHER_BLOCK_LENGTH * 2;
enum CLEAR_BLOCK_LENGTH = 8;

struct CYPHER_BLOCK {
    CHAR[CYPHER_BLOCK_LENGTH] data = 0;
}
alias CYPHER_BLOCK* PCYPHER_BLOCK;

struct CLEAR_BLOCK {
    CHAR[CLEAR_BLOCK_LENGTH] data = 0;
}
alias CLEAR_BLOCK* PCLEAR_BLOCK;

struct LM_OWF_PASSWORD {
    CYPHER_BLOCK[2] data;
}
alias LM_OWF_PASSWORD* PLM_OWF_PASSWORD;

struct USER_SESSION_KEY {
    CYPHER_BLOCK[2] data;
}
alias USER_SESSION_KEY* PUSER_SESSION_KEY;

alias CLEAR_BLOCK LM_CHALLENGE;
alias LM_CHALLENGE* PLM_CHALLENGE;

alias LM_OWF_PASSWORD NT_OWF_PASSWORD;
alias NT_OWF_PASSWORD* PNT_OWF_PASSWORD;
alias LM_CHALLENGE NT_CHALLENGE;
alias NT_CHALLENGE* PNT_CHALLENGE;

struct LOGON_HOURS {
    USHORT UnitsPerWeek;
    PUCHAR LogonHours;
}
alias LOGON_HOURS* PLOGON_HOURS;

struct SR_SECURITY_DESCRIPTOR {
    ULONG Length;
    PUCHAR SecurityDescriptor;
}
alias SR_SECURITY_DESCRIPTOR* PSR_SECURITY_DESCRIPTOR;

align(4):
struct USER_ALL_INFORMATION {
    LARGE_INTEGER LastLogon;
    LARGE_INTEGER LastLogoff;
    LARGE_INTEGER PasswordLastSet;
    LARGE_INTEGER AccountExpires;
    LARGE_INTEGER PasswordCanChange;
    LARGE_INTEGER PasswordMustChange;
    UNICODE_STRING UserName;
    UNICODE_STRING FullName;
    UNICODE_STRING HomeDirectory;
    UNICODE_STRING HomeDirectoryDrive;
    UNICODE_STRING ScriptPath;
    UNICODE_STRING ProfilePath;
    UNICODE_STRING AdminComment;
    UNICODE_STRING WorkStations;
    UNICODE_STRING UserComment;
    UNICODE_STRING Parameters;
    UNICODE_STRING LmPassword;
    UNICODE_STRING NtPassword;
    UNICODE_STRING PrivateData;
    SR_SECURITY_DESCRIPTOR SecurityDescriptor;
    ULONG UserId;
    ULONG PrimaryGroupId;
    ULONG UserAccountControl;
    ULONG WhichFields;
    LOGON_HOURS LogonHours;
    USHORT BadPasswordCount;
    USHORT LogonCount;
    USHORT CountryCode;
    USHORT CodePage;
    BOOLEAN LmPasswordPresent;
    BOOLEAN NtPasswordPresent;
    BOOLEAN PasswordExpired;
    BOOLEAN PrivateDataSensitive;
}
alias USER_ALL_INFORMATION* PUSER_ALL_INFORMATION;
align:

struct MSV1_0_VALIDATION_INFO {
    LARGE_INTEGER LogoffTime;
    LARGE_INTEGER KickoffTime;
    UNICODE_STRING LogonServer;
    UNICODE_STRING LogonDomainName;
    USER_SESSION_KEY SessionKey;
    BOOLEAN Authoritative;
    ULONG UserFlags;
    ULONG WhichFields;
    ULONG UserId;
}
alias MSV1_0_VALIDATION_INFO* PMSV1_0_VALIDATION_INFO;

struct NETLOGON_LOGON_IDENTITY_INFO {
    UNICODE_STRING LogonDomainName;
    ULONG ParameterControl;
    OLD_LARGE_INTEGER LogonId;
    UNICODE_STRING UserName;
    UNICODE_STRING Workstation;
}
alias NETLOGON_LOGON_IDENTITY_INFO* PNETLOGON_LOGON_IDENTITY_INFO;

struct NETLOGON_INTERACTIVE_INFO {
    NETLOGON_LOGON_IDENTITY_INFO Identity;
    LM_OWF_PASSWORD LmOwfPassword;
    NT_OWF_PASSWORD NtOwfPassword;
}
alias NETLOGON_INTERACTIVE_INFO* PNETLOGON_INTERACTIVE_INFO;

struct NETLOGON_GENERIC_INFO {
    NETLOGON_LOGON_IDENTITY_INFO Identity;
    UNICODE_STRING PackageName;
    ULONG DataLength;
    PUCHAR LogonData;
}
alias NETLOGON_GENERIC_INFO* PNETLOGON_GENERIC_INFO;

struct NETLOGON_NETWORK_INFO {
    NETLOGON_LOGON_IDENTITY_INFO Identity;
    LM_CHALLENGE LmChallenge;
    STRING NtChallengeResponse;
    STRING LmChallengeResponse;
}
alias NETLOGON_NETWORK_INFO* PNETLOGON_NETWORK_INFO;

struct NETLOGON_SERVICE_INFO {
    NETLOGON_LOGON_IDENTITY_INFO Identity;
    LM_OWF_PASSWORD LmOwfPassword;
    NT_OWF_PASSWORD NtOwfPassword;
}
alias NETLOGON_SERVICE_INFO* PNETLOGON_SERVICE_INFO;

extern (Windows) {
NTSTATUS Msv1_0SubAuthenticationRoutine(NETLOGON_LOGON_INFO_CLASS,PVOID,
    ULONG,PUSER_ALL_INFORMATION,PULONG,PULONG,
    PBOOLEAN,PLARGE_INTEGER,PLARGE_INTEGER);
NTSTATUS Msv1_0SubAuthenticationFilter(NETLOGON_LOGON_INFO_CLASS,PVOID,
    ULONG,PUSER_ALL_INFORMATION,PULONG,PULONG,
    PBOOLEAN,PLARGE_INTEGER,PLARGE_INTEGER);
NTSTATUS Msv1_0SubAuthenticationRoutineGeneric(PVOID,ULONG,PULONG,PVOID*);
NTSTATUS Msv1_0SubAuthenticationRoutineEx(NETLOGON_LOGON_INFO_CLASS,PVOID,
    ULONG,PUSER_ALL_INFORMATION,SAM_HANDLE,
    PMSV1_0_VALIDATION_INFO,PULONG);
}
