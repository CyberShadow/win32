/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_lmaccess.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.lmaccess for the auto-generated win32 package.
module win32.lmaccess;
version (Win32_UseLib) pragma(lib, "netapi32");

/**
 Changes relative to MinGW:
	USER_POSIX_ID_PARMNUM and GROUP_POSIX_ID_PARMNUM aren't in MinGW or in
	the Platform SDK docs, so they have been dropped from this file.
*/

private import win32.lmcons, win32.windef;

const wchar[]
	GROUP_SPECIALGRP_USERS  = "USERS",
	GROUP_SPECIALGRP_ADMINS = "ADMINS",
	GROUP_SPECIALGRP_GUESTS = "GUESTS",
	GROUP_SPECIALGRP_LOCAL  = "LOCAL";

const ACCESS_LETTERS = "RWCXDAP ";

const NETLOGON_CONTROL_QUERY=1;
const NETLOGON_CONTROL_REPLICATE=2;
const NETLOGON_CONTROL_SYNCHRONIZE=3;
const NETLOGON_CONTROL_PDC_REPLICATE=4;
const NETLOGON_CONTROL_REDISCOVER=5;
const NETLOGON_CONTROL_TC_QUERY=6;
const NETLOGON_CONTROL_BACKUP_CHANGE_LOG=65532;
const NETLOGON_CONTROL_TRUNCATE_LOG=65533;
const NETLOGON_CONTROL_SET_DBFLAG=65534;
const NETLOGON_CONTROL_BREAKPOINT=65535;

const UF_SCRIPT=1;
const UF_ACCOUNTDISABLE=2;
const UF_HOMEDIR_REQUIRED=8;
const UF_LOCKOUT=16;
const UF_PASSWD_NOTREQD=32;
const UF_PASSWD_CANT_CHANGE=64;
const UF_TEMP_DUPLICATE_ACCOUNT=256;
const UF_NORMAL_ACCOUNT=512;
const UF_INTERDOMAIN_TRUST_ACCOUNT=2048;
const UF_WORKSTATION_TRUST_ACCOUNT=4096;
const UF_SERVER_TRUST_ACCOUNT=8192;
const UF_MNS_LOGON_ACCOUNT=131072;
const UF_MACHINE_ACCOUNT_MASK=UF_INTERDOMAIN_TRUST_ACCOUNT|UF_WORKSTATION_TRUST_ACCOUNT|UF_SERVER_TRUST_ACCOUNT;
const UF_ACCOUNT_TYPE_MASK=UF_TEMP_DUPLICATE_ACCOUNT|UF_NORMAL_ACCOUNT|UF_INTERDOMAIN_TRUST_ACCOUNT|UF_WORKSTATION_TRUST_ACCOUNT|UF_SERVER_TRUST_ACCOUNT;
const UF_DONT_EXPIRE_PASSWD=65536;
const UF_SETTABLE_BITS=UF_SCRIPT|UF_ACCOUNTDISABLE|UF_LOCKOUT|UF_HOMEDIR_REQUIRED|UF_PASSWD_NOTREQD|UF_PASSWD_CANT_CHANGE|UF_ACCOUNT_TYPE_MASK|UF_DONT_EXPIRE_PASSWD;

const FILTER_TEMP_DUPLICATE_ACCOUNT=1;
const FILTER_NORMAL_ACCOUNT=2;
const FILTER_INTERDOMAIN_TRUST_ACCOUNT=8;
const FILTER_WORKSTATION_TRUST_ACCOUNT=16;
const FILTER_SERVER_TRUST_ACCOUNT=32;

const LG_INCLUDE_INDIRECT=1;

const AF_OP_PRINT=1;
const AF_OP_COMM=2;
const AF_OP_SERVER=4;
const AF_OP_ACCOUNTS=8;
const AF_SETTABLE_BITS=(AF_OP_PRINT|AF_OP_COMM|AF_OP_SERVER|AF_OP_ACCOUNTS);

const UAS_ROLE_STANDALONE=0;
const UAS_ROLE_MEMBER=1;
const UAS_ROLE_BACKUP=2;
const UAS_ROLE_PRIMARY=3;

const USER_NAME_PARMNUM=1;
const USER_PASSWORD_PARMNUM=3;
const USER_PASSWORD_AGE_PARMNUM=4;
const USER_PRIV_PARMNUM=5;
const USER_HOME_DIR_PARMNUM=6;
const USER_COMMENT_PARMNUM=7;
const USER_FLAGS_PARMNUM=8;
const USER_SCRIPT_PATH_PARMNUM=9;
const USER_AUTH_FLAGS_PARMNUM=10;
const USER_FULL_NAME_PARMNUM=11;
const USER_USR_COMMENT_PARMNUM=12;
const USER_PARMS_PARMNUM=13;
const USER_WORKSTATIONS_PARMNUM=14;
const USER_LAST_LOGON_PARMNUM=15;
const USER_LAST_LOGOFF_PARMNUM=16;
const USER_ACCT_EXPIRES_PARMNUM=17;
const USER_MAX_STORAGE_PARMNUM=18;
const USER_UNITS_PER_WEEK_PARMNUM=19;
const USER_LOGON_HOURS_PARMNUM=20;
const USER_PAD_PW_COUNT_PARMNUM=21;
const USER_NUM_LOGONS_PARMNUM=22;
const USER_LOGON_SERVER_PARMNUM=23;
const USER_COUNTRY_CODE_PARMNUM=24;
const USER_CODE_PAGE_PARMNUM=25;
const USER_PRIMARY_GROUP_PARMNUM=51;
const USER_PROFILE=52;
const USER_PROFILE_PARMNUM=52;
const USER_HOME_DIR_DRIVE_PARMNUM=53;

const USER_NAME_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_NAME_PARMNUM;
const USER_PASSWORD_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PASSWORD_PARMNUM;
const USER_PASSWORD_AGE_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PASSWORD_AGE_PARMNUM;
const USER_PRIV_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PRIV_PARMNUM;
const USER_HOME_DIR_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_HOME_DIR_PARMNUM;
const USER_COMMENT_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_COMMENT_PARMNUM;
const USER_FLAGS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_FLAGS_PARMNUM;
const USER_SCRIPT_PATH_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_SCRIPT_PATH_PARMNUM;
const USER_AUTH_FLAGS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_AUTH_FLAGS_PARMNUM;
const USER_FULL_NAME_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_FULL_NAME_PARMNUM;
const USER_USR_COMMENT_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_USR_COMMENT_PARMNUM;
const USER_PARMS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PARMS_PARMNUM;
const USER_WORKSTATIONS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_WORKSTATIONS_PARMNUM;
const USER_LAST_LOGON_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_LAST_LOGON_PARMNUM;
const USER_LAST_LOGOFF_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_LAST_LOGOFF_PARMNUM;
const USER_ACCT_EXPIRES_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_ACCT_EXPIRES_PARMNUM;
const USER_MAX_STORAGE_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_MAX_STORAGE_PARMNUM;
const USER_UNITS_PER_WEEK_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_UNITS_PER_WEEK_PARMNUM;
const USER_LOGON_HOURS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_LOGON_HOURS_PARMNUM;
const USER_PAD_PW_COUNT_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PAD_PW_COUNT_PARMNUM;
const USER_NUM_LOGONS_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_NUM_LOGONS_PARMNUM;
const USER_LOGON_SERVER_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_LOGON_SERVER_PARMNUM;
const USER_COUNTRY_CODE_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_COUNTRY_CODE_PARMNUM;
const USER_CODE_PAGE_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_CODE_PAGE_PARMNUM;
const USER_PRIMARY_GROUP_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_PRIMARY_GROUP_PARMNUM;
// USER_POSIX_ID_PARMNUM isn't in MinGW or in the Platform SDK docs.
//const USER_POSIX_ID_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_POSIX_ID_PARMNUM;
const USER_HOME_DIR_DRIVE_INFOLEVEL = PARMNUM_BASE_INFOLEVEL+USER_HOME_DIR_DRIVE_PARMNUM;

const NULL_USERSETINFO_PASSWD=" ";
const ULONG TIMEQ_FOREVER=-1;
const ULONG USER_MAXSTORAGE_UNLIMITED=-1;
const ULONG USER_NO_LOGOFF=-1;
const UNITS_PER_DAY=24;
const UNITS_PER_WEEK=168;
const USER_PRIV_MASK=3;
const USER_PRIV_GUEST=0;
const USER_PRIV_USER=1;
const USER_PRIV_ADMIN=2;
const MAX_PASSWD_LEN=PWLEN;
const DEF_MIN_PWLEN=6;
const DEF_PWUNIQUENESS=5;
const DEF_MAX_PWHIST=8;
const DEF_MAX_PWAGE=TIMEQ_FOREVER;
const DEF_MIN_PWAGE=0;
const ULONG DEF_FORCE_LOGOFF=0xffffffff;
const DEF_MAX_BADPW=0;
const ONE_DAY=86400;
const VALIDATED_LOGON=0;
const PASSWORD_EXPIRED=2;
const NON_VALIDATED_LOGON=3;
const VALID_LOGOFF=1;

const MODALS_MIN_PASSWD_LEN_PARMNUM=1;
const MODALS_MAX_PASSWD_AGE_PARMNUM=2;
const MODALS_MIN_PASSWD_AGE_PARMNUM=3;
const MODALS_FORCE_LOGOFF_PARMNUM=4;
const MODALS_PASSWD_HIST_LEN_PARMNUM=5;
const MODALS_ROLE_PARMNUM=6;
const MODALS_PRIMARY_PARMNUM=7;
const MODALS_DOMAIN_NAME_PARMNUM=8;
const MODALS_DOMAIN_ID_PARMNUM=9;
const MODALS_LOCKOUT_DURATION_PARMNUM=10;
const MODALS_LOCKOUT_OBSERVATION_WINDOW_PARMNUM=11;
const MODALS_LOCKOUT_THRESHOLD_PARMNUM=12;

const MODALS_MIN_PASSWD_LEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_MIN_PASSWD_LEN_PARMNUM);
const MODALS_MAX_PASSWD_AGE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_MAX_PASSWD_AGE_PARMNUM);
const MODALS_MIN_PASSWD_AGE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_MIN_PASSWD_AGE_PARMNUM);
const MODALS_FORCE_LOGOFF_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_FORCE_LOGOFF_PARMNUM);
const MODALS_PASSWD_HIST_LEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_PASSWD_HIST_LEN_PARMNUM);
const MODALS_ROLE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_ROLE_PARMNUM);
const MODALS_PRIMARY_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_PRIMARY_PARMNUM);
const MODALS_DOMAIN_NAME_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_DOMAIN_NAME_PARMNUM);
const MODALS_DOMAIN_ID_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+MODALS_DOMAIN_ID_PARMNUM);

const GROUPIDMASK=0x8000;
const GROUP_ALL_PARMNUM=0;
const GROUP_NAME_PARMNUM=1;
const GROUP_COMMENT_PARMNUM=2;
const GROUP_ATTRIBUTES_PARMNUM=3;

const GROUP_ALL_INFOLEVEL = PARMNUM_BASE_INFOLEVEL + GROUP_ALL_PARMNUM;
const GROUP_NAME_INFOLEVEL = PARMNUM_BASE_INFOLEVEL + GROUP_NAME_PARMNUM;
const GROUP_COMMENT_INFOLEVEL = PARMNUM_BASE_INFOLEVEL + GROUP_COMMENT_PARMNUM;
const GROUP_ATTRIBUTES_INFOLEVEL = PARMNUM_BASE_INFOLEVEL + GROUP_ATTRIBUTES_PARMNUM;
// GROUP_POSIX_ID_PARMNUM isn't in MinGW or in the Platform SDK docs.
//const GROUP_POSIX_ID_INFOLEVEL = PARMNUM_BASE_INFOLEVEL + GROUP_POSIX_ID_PARMNUM;

const LOCALGROUP_NAME_PARMNUM=1;
const LOCALGROUP_COMMENT_PARMNUM=2;
const MAXPERMENTRIES=64;
const ACCESS_NONE=0;
const ACCESS_READ=1;
const ACCESS_WRITE=2;
const ACCESS_CREATE=4;
const ACCESS_EXEC=8;
const ACCESS_DELETE=16;
const ACCESS_ATRIB=32;
const ACCESS_PERM=64;
const ACCESS_ALL = ACCESS_READ|ACCESS_WRITE|ACCESS_CREATE|ACCESS_EXEC|ACCESS_DELETE|ACCESS_ATRIB|ACCESS_PERM;
const ACCESS_GROUP=0x8000;
const ACCESS_AUDIT=1;
const ACCESS_SUCCESS_OPEN=16;
const ACCESS_SUCCESS_WRITE=32;
const ACCESS_SUCCESS_DELETE=64;
const ACCESS_SUCCESS_ACL=128;
const ACCESS_SUCCESS_MASK=240;
const ACCESS_FAIL_OPEN=256;
const ACCESS_FAIL_WRITE=512;
const ACCESS_FAIL_DELETE=1024;
const ACCESS_FAIL_ACL=2048;
const ACCESS_FAIL_MASK=3840;
const ACCESS_FAIL_SHIFT=4;
const ACCESS_RESOURCE_NAME_PARMNUM=1;
const ACCESS_ATTR_PARMNUM=2;
const ACCESS_COUNT_PARMNUM=3;
const ACCESS_ACCESS_LIST_PARMNUM=4;

const ACCESS_RESOURCE_NAME_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+ACCESS_RESOURCE_NAME_PARMNUM);
const ACCESS_ATTR_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+ACCESS_ATTR_PARMNUM);
const ACCESS_COUNT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+ACCESS_COUNT_PARMNUM);
const ACCESS_ACCESS_LIST_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+ACCESS_ACCESS_LIST_PARMNUM);

const NETLOGON_REPLICATION_NEEDED=1;
const NETLOGON_REPLICATION_IN_PROGRESS=2;
const NETLOGON_FULL_SYNC_REPLICATION=4;
const NETLOGON_REDO_NEEDED=8;

struct USER_INFO_0 {
	LPWSTR usri0_name;
}
alias USER_INFO_0* PUSER_INFO_0, LPUSER_INFO_0;

struct USER_INFO_1{
	LPWSTR usri1_name;
	LPWSTR usri1_password;
	DWORD usri1_password_age;
	DWORD usri1_priv;
	LPWSTR usri1_home_dir;
	LPWSTR usri1_comment;
	DWORD usri1_flags;
	LPWSTR usri1_script_path;
}
alias USER_INFO_1* PUSER_INFO_1, LPUSER_INFO_1;

struct USER_INFO_2{
	LPWSTR usri2_name;
	LPWSTR usri2_password;
	DWORD usri2_password_age;
	DWORD usri2_priv;
	LPWSTR usri2_home_dir;
	LPWSTR usri2_comment;
	DWORD usri2_flags;
	LPWSTR usri2_script_path;
	DWORD usri2_auth_flags;
	LPWSTR usri2_full_name;
	LPWSTR usri2_usr_comment;
	LPWSTR usri2_parms;
	LPWSTR usri2_workstations;
	DWORD usri2_last_logon;
	DWORD usri2_last_logoff;
	DWORD usri2_acct_expires;
	DWORD usri2_max_storage;
	DWORD usri2_units_per_week;
	PBYTE usri2_logon_hours;
	DWORD usri2_bad_pw_count;
	DWORD usri2_num_logons;
	LPWSTR usri2_logon_server;
	DWORD usri2_country_code;
	DWORD usri2_code_page;
}
alias USER_INFO_2* PUSER_INFO_2, LPUSER_INFO_2;

struct USER_INFO_3{
	LPWSTR usri3_name;
	LPWSTR usri3_password;
	DWORD usri3_password_age;
	DWORD usri3_priv;
	LPWSTR usri3_home_dir;
	LPWSTR usri3_comment;
	DWORD usri3_flags;
	LPWSTR usri3_script_path;
	DWORD usri3_auth_flags;
	LPWSTR usri3_full_name;
	LPWSTR usri3_usr_comment;
	LPWSTR usri3_parms;
	LPWSTR usri3_workstations;
	DWORD usri3_last_logon;
	DWORD usri3_last_logoff;
	DWORD usri3_acct_expires;
	DWORD usri3_max_storage;
	DWORD usri3_units_per_week;
	PBYTE usri3_logon_hours;
	DWORD usri3_bad_pw_count;
	DWORD usri3_num_logons;
	LPWSTR usri3_logon_server;
	DWORD usri3_country_code;
	DWORD usri3_code_page;
	DWORD usri3_user_id;
	DWORD usri3_primary_group_id;
	LPWSTR usri3_profile;
	LPWSTR usri3_home_dir_drive;
	DWORD usri3_password_expired;
}
alias USER_INFO_3* PUSER_INFO_3, LPUSER_INFO_3;

struct USER_INFO_10{
	LPWSTR usri10_name;
	LPWSTR usri10_comment;
	LPWSTR usri10_usr_comment;
	LPWSTR usri10_full_name;
}
alias USER_INFO_10* PUSER_INFO_10, LPUSER_INFO_10;

struct USER_INFO_11{
	LPWSTR usri11_name;
	LPWSTR usri11_comment;
	LPWSTR usri11_usr_comment;
	LPWSTR usri11_full_name;
	DWORD usri11_priv;
	DWORD usri11_auth_flags;
	DWORD usri11_password_age;
	LPWSTR usri11_home_dir;
	LPWSTR usri11_parms;
	DWORD usri11_last_logon;
	DWORD usri11_last_logoff;
	DWORD usri11_bad_pw_count;
	DWORD usri11_num_logons;
	LPWSTR usri11_logon_server;
	DWORD usri11_country_code;
	LPWSTR usri11_workstations;
	DWORD usri11_max_storage;
	DWORD usri11_units_per_week;
	PBYTE usri11_logon_hours;
	DWORD usri11_code_page;
}
alias USER_INFO_11* PUSER_INFO_11, LPUSER_INFO_11;

struct USER_INFO_20 {
	LPWSTR usri20_name;
	LPWSTR usri20_full_name;
	LPWSTR usri20_comment;
	DWORD usri20_flags;
	DWORD usri20_user_id;
}
alias USER_INFO_20* PUSER_INFO_20, LPUSER_INFO_20;

struct USER_INFO_21 {
	BYTE[ENCRYPTED_PWLEN] usri21_password;
}
alias USER_INFO_21* PUSER_INFO_21, LPUSER_INFO_21;

struct USER_INFO_22{
	LPWSTR usri22_name;
	BYTE[ENCRYPTED_PWLEN] usri22_password;
	DWORD usri22_password_age;
	DWORD usri22_priv;
	LPWSTR usri22_home_dir;
	LPWSTR usri22_comment;
	DWORD usri22_flags;
	LPWSTR usri22_script_path;
	DWORD usri22_auth_flags;
	LPWSTR usri22_full_name;
	LPWSTR usri22_usr_comment;
	LPWSTR usri22_parms;
	LPWSTR usri22_workstations;
	DWORD usri22_last_logon;
	DWORD usri22_last_logoff;
	DWORD usri22_acct_expires;
	DWORD usri22_max_storage;
	DWORD usri22_units_per_week;
	PBYTE usri22_logon_hours;
	DWORD usri22_bad_pw_count;
	DWORD usri22_num_logons;
	LPWSTR usri22_logon_server;
	DWORD usri22_country_code;
	DWORD usri22_code_page;
}
alias USER_INFO_22* PUSER_INFO_22, LPUSER_INFO_22;

struct USER_INFO_1003{
	LPWSTR usri1003_password;
}
alias USER_INFO_1003* PUSER_INFO_1003, LPUSER_INFO_1003;

struct USER_INFO_1005{
	DWORD usri1005_priv;
}
alias USER_INFO_1005* PUSER_INFO_1005, LPUSER_INFO_1005;

struct USER_INFO_1006{
	LPWSTR usri1006_home_dir;
}
alias USER_INFO_1006* PUSER_INFO_1006, LPUSER_INFO_1006;

struct USER_INFO_1007{
	LPWSTR usri1007_comment;
}
alias USER_INFO_1007* PUSER_INFO_1007, LPUSER_INFO_1007;

struct USER_INFO_1008{
	DWORD usri1008_flags;
}
alias USER_INFO_1008* PUSER_INFO_1008, LPUSER_INFO_1008;

struct USER_INFO_1009{
	LPWSTR usri1009_script_path;
}
alias USER_INFO_1009* PUSER_INFO_1009, LPUSER_INFO_1009;

struct USER_INFO_1010{
	DWORD usri1010_auth_flags;
}
alias USER_INFO_1010* PUSER_INFO_1010, LPUSER_INFO_1010;

struct USER_INFO_1011{
	LPWSTR usri1011_full_name;
}
alias USER_INFO_1011* PUSER_INFO_1011, LPUSER_INFO_1011;

struct USER_INFO_1012{
	LPWSTR usri1012_usr_comment;
}
alias USER_INFO_1012* PUSER_INFO_1012, LPUSER_INFO_1012;

struct USER_INFO_1013{
	LPWSTR usri1013_parms;
}
alias USER_INFO_1013* PUSER_INFO_1013, LPUSER_INFO_1013;

struct USER_INFO_1014{
	LPWSTR usri1014_workstations;
}
alias USER_INFO_1014* PUSER_INFO_1014, LPUSER_INFO_1014;

struct USER_INFO_1017{
	DWORD usri1017_acct_expires;
}
alias USER_INFO_1017* PUSER_INFO_1017, LPUSER_INFO_1017;

struct USER_INFO_1018{
	DWORD usri1018_max_storage;
}
alias USER_INFO_1018* PUSER_INFO_1018, LPUSER_INFO_1018;

struct USER_INFO_1020{
	DWORD usri1020_units_per_week;
	PBYTE usri1020_logon_hours;
}
alias USER_INFO_1020* PUSER_INFO_1020, LPUSER_INFO_1020;

struct USER_INFO_1023{
	LPWSTR usri1023_logon_server;
}
alias USER_INFO_1023* PUSER_INFO_1023, LPUSER_INFO_1023;

struct USER_INFO_1024{
	DWORD usri1024_country_code;
}
alias USER_INFO_1024* PUSER_INFO_1024, LPUSER_INFO_1024;

struct USER_INFO_1025{
	DWORD usri1025_code_page;
}
alias USER_INFO_1025* PUSER_INFO_1025, LPUSER_INFO_1025;

struct USER_INFO_1051{
	DWORD usri1051_primary_group_id;
}
alias USER_INFO_1051* PUSER_INFO_1051, LPUSER_INFO_1051;

struct USER_INFO_1052{
	LPWSTR usri1052_profile;
}
alias USER_INFO_1052* PUSER_INFO_1052, LPUSER_INFO_1052;

struct USER_INFO_1053{
	LPWSTR usri1053_home_dir_drive;
}
alias USER_INFO_1053* PUSER_INFO_1053, LPUSER_INFO_1053;

struct USER_MODALS_INFO_0{
	DWORD usrmod0_min_passwd_len;
	DWORD usrmod0_max_passwd_age;
	DWORD usrmod0_min_passwd_age;
	DWORD usrmod0_force_logoff;
	DWORD usrmod0_password_hist_len;
}
alias USER_MODALS_INFO_0* PUSER_MODALS_INFO_0, LPUSER_MODALS_INFO_0;

struct USER_MODALS_INFO_1{
	DWORD usrmod1_role;
	LPWSTR usrmod1_primary;
}
alias USER_MODALS_INFO_1* PUSER_MODALS_INFO_1, LPUSER_MODALS_INFO_1;

struct USER_MODALS_INFO_2{
	LPWSTR usrmod2_domain_name;
	PSID usrmod2_domain_id;
}
alias USER_MODALS_INFO_2* PUSER_MODALS_INFO_2, LPUSER_MODALS_INFO_2;

struct USER_MODALS_INFO_3{
	DWORD usrmod3_lockout_duration;
	DWORD usrmod3_lockout_observation_window;
	DWORD usrmod3_lockout_threshold;
}
alias USER_MODALS_INFO_3* PUSER_MODALS_INFO_3, LPUSER_MODALS_INFO_3;

struct USER_MODALS_INFO_1001{
	DWORD usrmod1001_min_passwd_len;
}
alias USER_MODALS_INFO_1001* PUSER_MODALS_INFO_1001, LPUSER_MODALS_INFO_1001;

struct USER_MODALS_INFO_1002{
	DWORD usrmod1002_max_passwd_age;
}
alias USER_MODALS_INFO_1002* PUSER_MODALS_INFO_1002, LPUSER_MODALS_INFO_1002;

struct USER_MODALS_INFO_1003{
	DWORD usrmod1003_min_passwd_age;
}
alias USER_MODALS_INFO_1003* PUSER_MODALS_INFO_1003, LPUSER_MODALS_INFO_1003;

struct USER_MODALS_INFO_1004{
	DWORD usrmod1004_force_logoff;
}
alias USER_MODALS_INFO_1004* PUSER_MODALS_INFO_1004, LPUSER_MODALS_INFO_1004;

struct USER_MODALS_INFO_1005{
	DWORD usrmod1005_password_hist_len;
}
alias USER_MODALS_INFO_1005* PUSER_MODALS_INFO_1005, LPUSER_MODALS_INFO_1005;

struct USER_MODALS_INFO_1006{
	DWORD usrmod1006_role;
}
alias USER_MODALS_INFO_1006* PUSER_MODALS_INFO_1006, LPUSER_MODALS_INFO_1006;

struct USER_MODALS_INFO_1007{
	LPWSTR usrmod1007_primary;
}
alias USER_MODALS_INFO_1007* PUSER_MODALS_INFO_1007, LPUSER_MODALS_INFO_1007;

struct GROUP_INFO_0{
	LPWSTR grpi0_name;
}
alias GROUP_INFO_0* PGROUP_INFO_0, LPGROUP_INFO_0;

struct GROUP_INFO_1{
	LPWSTR grpi1_name;
	LPWSTR grpi1_comment;
}
alias GROUP_INFO_1* PGROUP_INFO_1, LPGROUP_INFO_1;

struct GROUP_INFO_2{
	LPWSTR grpi2_name;
	LPWSTR grpi2_comment;
	DWORD grpi2_group_id;
	DWORD grpi2_attributes;
}
alias GROUP_INFO_2* PGROUP_INFO_2;

struct GROUP_INFO_1002{
	LPWSTR grpi1002_comment;
}
alias GROUP_INFO_1002* PGROUP_INFO_1002, LPGROUP_INFO_1002;

struct GROUP_INFO_1005{
	DWORD grpi1005_attributes;
}
alias GROUP_INFO_1005* PGROUP_INFO_1005, LPGROUP_INFO_1005;

struct GROUP_USERS_INFO_0{
	LPWSTR grui0_name;
}
alias GROUP_USERS_INFO_0* PGROUP_USERS_INFO_0, LPGROUP_USERS_INFO_0;

struct GROUP_USERS_INFO_1{
	LPWSTR grui1_name;
	DWORD grui1_attributes;
}
alias GROUP_USERS_INFO_1* PGROUP_USERS_INFO_1, LPGROUP_USERS_INFO_1;

struct LOCALGROUP_INFO_0{
	LPWSTR lgrpi0_name;
}
alias LOCALGROUP_INFO_0* PLOCALGROUP_INFO_0, LPLOCALGROUP_INFO_0;

struct LOCALGROUP_INFO_1{
	LPWSTR lgrpi1_name;
	LPWSTR lgrpi1_comment;
}
alias LOCALGROUP_INFO_1* PLOCALGROUP_INFO_1, LPLOCALGROUP_INFO_1;

struct LOCALGROUP_INFO_1002{
	LPWSTR lgrpi1002_comment;
}
alias LOCALGROUP_INFO_1002* PLOCALGROUP_INFO_1002, LPLOCALGROUP_INFO_1002;

struct LOCALGROUP_MEMBERS_INFO_0{
	PSID lgrmi0_sid;
}
alias LOCALGROUP_MEMBERS_INFO_0* PLOCALGROUP_MEMBERS_INFO_0, LPLOCALGROUP_MEMBERS_INFO_0;

struct LOCALGROUP_MEMBERS_INFO_1{
	PSID lgrmi1_sid;
	SID_NAME_USE lgrmi1_sidusage;
	LPWSTR lgrmi1_name;
}
alias LOCALGROUP_MEMBERS_INFO_1* PLOCALGROUP_MEMBERS_INFO_1, LPLOCALGROUP_MEMBERS_INFO_1;

struct LOCALGROUP_MEMBERS_INFO_2{
	PSID lgrmi2_sid;
	SID_NAME_USE lgrmi2_sidusage;
	LPWSTR lgrmi2_domainandname;
}
alias LOCALGROUP_MEMBERS_INFO_2* PLOCALGROUP_MEMBERS_INFO_2, LPLOCALGROUP_MEMBERS_INFO_2;

struct LOCALGROUP_MEMBERS_INFO_3{
	LPWSTR lgrmi3_domainandname;
}
alias LOCALGROUP_MEMBERS_INFO_3* PLOCALGROUP_MEMBERS_INFO_3, LPLOCALGROUP_MEMBERS_INFO_3;

struct LOCALGROUP_USERS_INFO_0{
	LPWSTR lgrui0_name;
}
alias LOCALGROUP_USERS_INFO_0* PLOCALGROUP_USERS_INFO_0, LPLOCALGROUP_USERS_INFO_0;

struct NET_DISPLAY_USER{
	LPWSTR usri1_name;
	LPWSTR usri1_comment;
	DWORD usri1_flags;
	LPWSTR usri1_full_name;
	DWORD usri1_user_id;
	DWORD usri1_next_index;
}
alias NET_DISPLAY_USER* PNET_DISPLAY_USER;

struct NET_DISPLAY_MACHINE{
	LPWSTR usri2_name;
	LPWSTR usri2_comment;
	DWORD usri2_flags;
	DWORD usri2_user_id;
	DWORD usri2_next_index;
}
alias NET_DISPLAY_MACHINE* PNET_DISPLAY_MACHINE;

struct NET_DISPLAY_GROUP{
	LPWSTR grpi3_name;
	LPWSTR grpi3_comment;
	DWORD grpi3_group_id;
	DWORD grpi3_attributes;
	DWORD grpi3_next_index;
}
alias NET_DISPLAY_GROUP* PNET_DISPLAY_GROUP;

struct ACCESS_INFO_0{
	LPTSTR acc0_resource_name;
}
alias ACCESS_INFO_0* PACCESS_INFO_0, LPACCESS_INFO_0;

struct ACCESS_INFO_1{
	LPTSTR acc1_resource_name;
	DWORD acc1_attr;
	DWORD acc1_count;
}
alias ACCESS_INFO_1* PACCESS_INFO_1, LPACCESS_INFO_1;

struct ACCESS_INFO_1002{
	DWORD acc1002_attr;
}
alias ACCESS_INFO_1002* PACCESS_INFO_1002, LPACCESS_INFO_1002;

struct ACCESS_LIST{
	LPTSTR acl_ugname;
	DWORD acl_access;
}
alias ACCESS_LIST* PACCESS_LIST, LPACCESS_LIST;

struct NETLOGON_INFO_1{
	DWORD netlog1_flags;
	NET_API_STATUS netlog1_pdc_connection_status;
}
alias NETLOGON_INFO_1* PNETLOGON_INFO_1;

struct NETLOGON_INFO_2{
	DWORD netlog2_flags;
	NET_API_STATUS netlog2_pdc_connection_status;
	LPWSTR netlog2_trusted_dc_name;
	NET_API_STATUS netlog2_tc_connection_status;
}
alias NETLOGON_INFO_2* PNETLOGON_INFO_2;

struct NETLOGON_INFO_3{
	DWORD netlog3_flags;
	DWORD netlog3_logon_attempts;
	DWORD netlog3_reserved1;
	DWORD netlog3_reserved2;
	DWORD netlog3_reserved3;
	DWORD netlog3_reserved4;
	DWORD netlog3_reserved5;
}
alias NETLOGON_INFO_3* PNETLOGON_INFO_3;

extern (Windows) {
deprecated {
	/* These are obsolete */
	NET_API_STATUS NetAccessAdd(LPCWSTR,DWORD,PBYTE,PDWORD);
	NET_API_STATUS NetAccessEnum(LPCWSTR,LPCWSTR,DWORD,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
	NET_API_STATUS NetAccessGetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE*);
	NET_API_STATUS NetAccessSetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE,PDWORD);
	NET_API_STATUS NetAccessDel(LPCWSTR,LPCWSTR);
	NET_API_STATUS NetAccessGetUserPerms(LPCWSTR,LPCWSTR,LPCWSTR,PDWORD);
}
NET_API_STATUS NetUserAdd(LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetUserEnum(LPCWSTR,DWORD,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetUserGetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE*);
NET_API_STATUS NetUserSetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetUserDel(LPCWSTR,LPCWSTR);
NET_API_STATUS NetUserGetGroups(LPCWSTR,LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD);
NET_API_STATUS NetUserSetGroups(LPCWSTR,LPCWSTR,DWORD,PBYTE,DWORD);
NET_API_STATUS NetUserGetLocalGroups(LPCWSTR,LPCWSTR,DWORD,DWORD,PBYTE*,DWORD,PDWORD,PDWORD);
NET_API_STATUS NetUserModalsGet(LPCWSTR,DWORD,PBYTE*);
NET_API_STATUS NetUserModalsSet(LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetUserChangePassword(LPCWSTR,LPCWSTR,LPCWSTR,LPCWSTR);
NET_API_STATUS NetGroupAdd(LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetGroupAddUser(LPCWSTR,LPCWSTR,LPCWSTR);
NET_API_STATUS NetGroupEnum(LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetGroupGetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE*);
NET_API_STATUS NetGroupSetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetGroupDel(LPCWSTR,LPCWSTR);
NET_API_STATUS NetGroupDelUser(LPCWSTR,LPCWSTR,LPCWSTR);
NET_API_STATUS NetGroupGetUsers(LPCWSTR,LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetGroupSetUsers(LPCWSTR,LPCWSTR,DWORD,PBYTE,DWORD);
NET_API_STATUS NetLocalGroupAdd(LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetLocalGroupAddMember(LPCWSTR,LPCWSTR,PSID);
NET_API_STATUS NetLocalGroupEnum(LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetLocalGroupGetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE*);
NET_API_STATUS NetLocalGroupSetInfo(LPCWSTR,LPCWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetLocalGroupDel(LPCWSTR,LPCWSTR);
NET_API_STATUS NetLocalGroupDelMember(LPCWSTR,LPCWSTR,PSID);
NET_API_STATUS NetLocalGroupGetMembers(LPCWSTR,LPCWSTR,DWORD,PBYTE*,DWORD,
PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetLocalGroupSetMembers(LPCWSTR,LPCWSTR,DWORD,PBYTE,DWORD);
NET_API_STATUS NetLocalGroupAddMembers(LPCWSTR,LPCWSTR,DWORD,PBYTE,DWORD);
NET_API_STATUS NetLocalGroupDelMembers(LPCWSTR,LPCWSTR,DWORD,PBYTE,DWORD);
NET_API_STATUS NetQueryDisplayInformation(LPCWSTR,DWORD,DWORD,DWORD,DWORD,PDWORD,PVOID*);
NET_API_STATUS NetGetDisplayInformationIndex(LPCWSTR,DWORD,LPCWSTR,PDWORD);
NET_API_STATUS NetGetDCName(LPCWSTR,LPCWSTR,PBYTE*);
NET_API_STATUS NetGetAnyDCName(LPCWSTR,LPCWSTR,PBYTE*);
NET_API_STATUS I_NetLogonControl(LPCWSTR,DWORD,DWORD,PBYTE*);
NET_API_STATUS I_NetLogonControl2(LPCWSTR,DWORD,DWORD,PBYTE,PBYTE*);
}
