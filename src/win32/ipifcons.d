/***********************************************************************\
*                               ipifcons.d                              *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
/// Automatically imported and edited from the druntime module
/// core.sys.windows.ipifcons for the auto-generated win32 package.
module win32.ipifcons;

// FIXME: check types of constants

enum {
	MIB_IF_ADMIN_STATUS_UP = 1,
	MIB_IF_ADMIN_STATUS_DOWN,
	MIB_IF_ADMIN_STATUS_TESTING,
}

enum {
	MIB_IF_OPER_STATUS_NON_OPERATIONAL,
	MIB_IF_OPER_STATUS_UNREACHABLE,
	MIB_IF_OPER_STATUS_DISCONNECTED,
	MIB_IF_OPER_STATUS_CONNECTING,
	MIB_IF_OPER_STATUS_CONNECTED,
	MIB_IF_OPER_STATUS_OPERATIONAL // = 5
}

enum {
	MIB_IF_TYPE_OTHER     =  1,
	MIB_IF_TYPE_ETHERNET  =  6,
	MIB_IF_TYPE_TOKENRING =  9,
	MIB_IF_TYPE_FDDI      = 15,
	MIB_IF_TYPE_PPP       = 23,
	MIB_IF_TYPE_LOOPBACK  = 24,
	MIB_IF_TYPE_SLIP      = 28
}
