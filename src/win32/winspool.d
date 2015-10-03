/***********************************************************************\
*                              winspool.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
/// Automatically imported and edited from the druntime module
/// core.sys.windows.winspool for the auto-generated win32 package.
module win32.winspool;
version (Win32_UseLib) pragma(lib, "winspool");

private import win32.w32api, win32.windef, win32.wingdi;
private import win32.winbase; // for SYSTEMTIME

// FIXME: clean up Windows version support

const DI_CHANNEL=1;
const DI_CHANNEL_WRITE=2;
const DI_READ_SPOOL_JOB=3;

const FORM_BUILTIN=1;

const JOB_CONTROL_PAUSE=1;
const JOB_CONTROL_RESUME=2;
const JOB_CONTROL_CANCEL=3;
const JOB_CONTROL_RESTART=4;
const JOB_CONTROL_DELETE=5;
const JOB_STATUS_PAUSED=1;
const JOB_STATUS_ERROR=2;
const JOB_STATUS_DELETING=4;
const JOB_STATUS_SPOOLING=8;
const JOB_STATUS_PRINTING=16;
const JOB_STATUS_OFFLINE=32;
const JOB_STATUS_PAPEROUT=0x40;
const JOB_STATUS_PRINTED=0x80;
const JOB_STATUS_DELETED=0x100;
const JOB_STATUS_BLOCKED_DEVQ=0x200;
const JOB_STATUS_USER_INTERVENTION=0x400;

const JOB_POSITION_UNSPECIFIED=0;

const JOB_NOTIFY_TYPE=1;

const JOB_NOTIFY_FIELD_PRINTER_NAME=0;
const JOB_NOTIFY_FIELD_MACHINE_NAME=1;
const JOB_NOTIFY_FIELD_PORT_NAME=2;
const JOB_NOTIFY_FIELD_USER_NAME=3;
const JOB_NOTIFY_FIELD_NOTIFY_NAME=4;
const JOB_NOTIFY_FIELD_DATATYPE=5;
const JOB_NOTIFY_FIELD_PRINT_PROCESSOR=6;
const JOB_NOTIFY_FIELD_PARAMETERS=7;
const JOB_NOTIFY_FIELD_DRIVER_NAME=8;
const JOB_NOTIFY_FIELD_DEVMODE=9;
const JOB_NOTIFY_FIELD_STATUS=10;
const JOB_NOTIFY_FIELD_STATUS_STRING=11;
const JOB_NOTIFY_FIELD_SECURITY_DESCRIPTOR=12;
const JOB_NOTIFY_FIELD_DOCUMENT=13;
const JOB_NOTIFY_FIELD_PRIORITY=14;
const JOB_NOTIFY_FIELD_POSITION=15;
const JOB_NOTIFY_FIELD_SUBMITTED=16;
const JOB_NOTIFY_FIELD_START_TIME=17;
const JOB_NOTIFY_FIELD_UNTIL_TIME=18;
const JOB_NOTIFY_FIELD_TIME=19;
const JOB_NOTIFY_FIELD_TOTAL_PAGES=20;
const JOB_NOTIFY_FIELD_PAGES_PRINTED=21;
const JOB_NOTIFY_FIELD_TOTAL_BYTES=22;
const JOB_NOTIFY_FIELD_BYTES_PRINTED=23;

const JOB_ACCESS_ADMINISTER = 16;
const JOB_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | JOB_ACCESS_ADMINISTER;
const JOB_READ       = STANDARD_RIGHTS_READ     | JOB_ACCESS_ADMINISTER;
const JOB_WRITE      = STANDARD_RIGHTS_WRITE    | JOB_ACCESS_ADMINISTER;
const JOB_EXECUTE    = STANDARD_RIGHTS_EXECUTE  | JOB_ACCESS_ADMINISTER;

const PRINTER_NOTIFY_OPTIONS_REFRESH=1;
const PRINTER_ACCESS_ADMINISTER=4;
const PRINTER_ACCESS_USE=8;

const PRINTER_ERROR_INFORMATION=0x80000000;
const PRINTER_ERROR_WARNING=0x40000000;
const PRINTER_ERROR_SEVERE=0x20000000;
const PRINTER_ERROR_OUTOFPAPER=1;
const PRINTER_ERROR_JAM=2;
const PRINTER_ERROR_OUTOFTONER=4;

const PRINTER_CONTROL_PAUSE=1;
const PRINTER_CONTROL_RESUME=2;
const PRINTER_CONTROL_PURGE=3;
const PRINTER_CONTROL_SET_STATUS=4;

const PRINTER_STATUS_PAUSED = 1;
const PRINTER_STATUS_ERROR = 2;
const PRINTER_STATUS_PENDING_DELETION = 4;
const PRINTER_STATUS_PAPER_JAM = 8;
const PRINTER_STATUS_PAPER_OUT = 0x10;
const PRINTER_STATUS_MANUAL_FEED = 0x20;
const PRINTER_STATUS_PAPER_PROBLEM = 0x40;
const PRINTER_STATUS_OFFLINE = 0x80;
const PRINTER_STATUS_IO_ACTIVE = 0x100;
const PRINTER_STATUS_BUSY = 0x200;
const PRINTER_STATUS_PRINTING = 0x400;
const PRINTER_STATUS_OUTPUT_BIN_FULL = 0x800;
const PRINTER_STATUS_NOT_AVAILABLE = 0x1000;
const PRINTER_STATUS_WAITING = 0x2000;
const PRINTER_STATUS_PROCESSING = 0x4000;
const PRINTER_STATUS_INITIALIZING = 0x8000;
const PRINTER_STATUS_WARMING_UP = 0x10000;
const PRINTER_STATUS_TONER_LOW = 0x20000;
const PRINTER_STATUS_NO_TONER = 0x40000;
const PRINTER_STATUS_PAGE_PUNT = 0x80000;
const PRINTER_STATUS_USER_INTERVENTION = 0x100000;
const PRINTER_STATUS_OUT_OF_MEMORY = 0x200000;
const PRINTER_STATUS_DOOR_OPEN = 0x400000;
const PRINTER_STATUS_SERVER_UNKNOWN = 0x800000;
const PRINTER_STATUS_POWER_SAVE = 0x1000000;

const PRINTER_ATTRIBUTE_QUEUED=1;
const PRINTER_ATTRIBUTE_DIRECT=2;
const PRINTER_ATTRIBUTE_DEFAULT=4;
const PRINTER_ATTRIBUTE_SHARED=8;
const PRINTER_ATTRIBUTE_NETWORK=0x10;
const PRINTER_ATTRIBUTE_HIDDEN=0x20;
const PRINTER_ATTRIBUTE_LOCAL=0x40;
const PRINTER_ATTRIBUTE_ENABLE_DEVQ=0x80;
const PRINTER_ATTRIBUTE_KEEPPRINTEDJOBS=0x100;
const PRINTER_ATTRIBUTE_DO_COMPLETE_FIRST=0x200;
const PRINTER_ATTRIBUTE_WORK_OFFLINE=0x400;
const PRINTER_ATTRIBUTE_ENABLE_BIDI=0x800;
const PRINTER_ATTRIBUTE_RAW_ONLY=0x1000;
const PRINTER_ATTRIBUTE_PUBLISHED=0x2000;

const PRINTER_ENUM_DEFAULT=1;
const PRINTER_ENUM_LOCAL=2;
const PRINTER_ENUM_CONNECTIONS=4;
const PRINTER_ENUM_FAVORITE=4;
const PRINTER_ENUM_NAME=8;
const PRINTER_ENUM_REMOTE=16;
const PRINTER_ENUM_SHARED=32;
const PRINTER_ENUM_NETWORK=0x40;
const PRINTER_ENUM_EXPAND=0x4000;
const PRINTER_ENUM_CONTAINER=0x8000;
const PRINTER_ENUM_ICONMASK=0xff0000;
const PRINTER_ENUM_ICON1=0x10000;
const PRINTER_ENUM_ICON2=0x20000;
const PRINTER_ENUM_ICON3=0x40000;
const PRINTER_ENUM_ICON4=0x80000;
const PRINTER_ENUM_ICON5=0x100000;
const PRINTER_ENUM_ICON6=0x200000;
const PRINTER_ENUM_ICON7=0x400000;
const PRINTER_ENUM_ICON8=0x800000;

const PRINTER_NOTIFY_TYPE=0;

const PRINTER_NOTIFY_FIELD_SERVER_NAME=0;
const PRINTER_NOTIFY_FIELD_PRINTER_NAME=1;
const PRINTER_NOTIFY_FIELD_SHARE_NAME=2;
const PRINTER_NOTIFY_FIELD_PORT_NAME=3;
const PRINTER_NOTIFY_FIELD_DRIVER_NAME=4;
const PRINTER_NOTIFY_FIELD_COMMENT=5;
const PRINTER_NOTIFY_FIELD_LOCATION=6;
const PRINTER_NOTIFY_FIELD_DEVMODE=7;
const PRINTER_NOTIFY_FIELD_SEPFILE=8;
const PRINTER_NOTIFY_FIELD_PRINT_PROCESSOR=9;
const PRINTER_NOTIFY_FIELD_PARAMETERS=10;
const PRINTER_NOTIFY_FIELD_DATATYPE=11;
const PRINTER_NOTIFY_FIELD_SECURITY_DESCRIPTOR=12;
const PRINTER_NOTIFY_FIELD_ATTRIBUTES=13;
const PRINTER_NOTIFY_FIELD_PRIORITY=14;
const PRINTER_NOTIFY_FIELD_DEFAULT_PRIORITY=15;
const PRINTER_NOTIFY_FIELD_START_TIME=16;
const PRINTER_NOTIFY_FIELD_UNTIL_TIME=17;
const PRINTER_NOTIFY_FIELD_STATUS=18;
const PRINTER_NOTIFY_FIELD_STATUS_STRING=19;
const PRINTER_NOTIFY_FIELD_CJOBS=20;
const PRINTER_NOTIFY_FIELD_AVERAGE_PPM=21;
const PRINTER_NOTIFY_FIELD_TOTAL_PAGES=22;
const PRINTER_NOTIFY_FIELD_PAGES_PRINTED=23;
const PRINTER_NOTIFY_FIELD_TOTAL_BYTES=24;
const PRINTER_NOTIFY_FIELD_BYTES_PRINTED=25;

const PRINTER_CHANGE_ADD_PRINTER=1;
const PRINTER_CHANGE_SET_PRINTER=2;
const PRINTER_CHANGE_DELETE_PRINTER=4;
const PRINTER_CHANGE_FAILED_CONNECTION_PRINTER=8;
const PRINTER_CHANGE_PRINTER=0xFF;
const PRINTER_CHANGE_ADD_JOB=0x100;
const PRINTER_CHANGE_SET_JOB=0x200;
const PRINTER_CHANGE_DELETE_JOB=0x400;
const PRINTER_CHANGE_WRITE_JOB=0x800;
const PRINTER_CHANGE_JOB=0xFF00;
const PRINTER_CHANGE_ADD_FORM=0x10000;
const PRINTER_CHANGE_SET_FORM=0x20000;
const PRINTER_CHANGE_DELETE_FORM=0x40000;
const PRINTER_CHANGE_FORM=0x70000;
const PRINTER_CHANGE_ADD_PORT=0x100000;
const PRINTER_CHANGE_CONFIGURE_PORT=0x200000;
const PRINTER_CHANGE_DELETE_PORT=0x400000;
const PRINTER_CHANGE_PORT=0x700000;
const PRINTER_CHANGE_ADD_PRINT_PROCESSOR=0x1000000;
const PRINTER_CHANGE_DELETE_PRINT_PROCESSOR=0x4000000;
const PRINTER_CHANGE_PRINT_PROCESSOR=0x7000000;
const PRINTER_CHANGE_ADD_PRINTER_DRIVER=0x10000000;
const PRINTER_CHANGE_SET_PRINTER_DRIVER=0x20000000;
const PRINTER_CHANGE_DELETE_PRINTER_DRIVER=0x40000000;
const PRINTER_CHANGE_PRINTER_DRIVER=0x70000000;
const PRINTER_CHANGE_TIMEOUT=0x80000000;
const PRINTER_CHANGE_ALL=0x7777FFFF;

const PRINTER_NOTIFY_INFO_DISCARDED=1;
const PRINTER_ALL_ACCESS=(STANDARD_RIGHTS_REQUIRED|PRINTER_ACCESS_ADMINISTER|PRINTER_ACCESS_USE);
const PRINTER_READ=(STANDARD_RIGHTS_READ|PRINTER_ACCESS_USE);
const PRINTER_WRITE=(STANDARD_RIGHTS_WRITE|PRINTER_ACCESS_USE);
const PRINTER_EXECUTE=(STANDARD_RIGHTS_EXECUTE|PRINTER_ACCESS_USE);
const NO_PRIORITY=0;
const MAX_PRIORITY=99;
const MIN_PRIORITY=1;
const DEF_PRIORITY=1;
const PORT_TYPE_WRITE=1;
const PORT_TYPE_READ=2;
const PORT_TYPE_REDIRECTED=4;
const PORT_TYPE_NET_ATTACHED=8;
const SERVER_ACCESS_ADMINISTER=1;
const SERVER_ACCESS_ENUMERATE=2;

const SERVER_ALL_ACCESS=(STANDARD_RIGHTS_REQUIRED|SERVER_ACCESS_ADMINISTER|SERVER_ACCESS_ENUMERATE);
const SERVER_READ=(STANDARD_RIGHTS_READ|SERVER_ACCESS_ENUMERATE);
const SERVER_WRITE=(STANDARD_RIGHTS_WRITE|SERVER_ACCESS_ADMINISTER|SERVER_ACCESS_ENUMERATE);
const SERVER_EXECUTE=(STANDARD_RIGHTS_EXECUTE|SERVER_ACCESS_ENUMERATE);

const PORT_STATUS_TYPE_ERROR=1;
const PORT_STATUS_TYPE_WARNING=2;
const PORT_STATUS_TYPE_INFO=3;

const PORT_STATUS_OFFLINE=1;
const PORT_STATUS_PAPER_JAM=2;
const PORT_STATUS_PAPER_OUT=3;
const PORT_STATUS_OUTPUT_BIN_FULL=4;
const PORT_STATUS_PAPER_PROBLEM=5;
const PORT_STATUS_NO_TONER=6;
const PORT_STATUS_DOOR_OPEN=7;
const PORT_STATUS_USER_INTERVENTION=8;
const PORT_STATUS_OUT_OF_MEMORY=9;
const PORT_STATUS_TONER_LOW=10;
const PORT_STATUS_WARMING_UP=11;
const PORT_STATUS_POWER_SAVE=12;

struct ADDJOB_INFO_1A {
	LPSTR Path;
	DWORD JobId;
}
alias ADDJOB_INFO_1A* PADDJOB_INFO_1A, LPADDJOB_INFO_1A;

struct ADDJOB_INFO_1W {
	LPWSTR Path;
	DWORD JobId;
}
alias ADDJOB_INFO_1W* PADDJOB_INFO_1W, LPADDJOB_INFO_1W;

struct DATATYPES_INFO_1A {
	LPSTR pName;
}
alias DATATYPES_INFO_1A* PDATATYPES_INFO_1A, LPDATATYPES_INFO_1A;

struct DATATYPES_INFO_1W {
	LPWSTR pName;
}
alias DATATYPES_INFO_1W* PDATATYPES_INFO_1W, LPDATATYPES_INFO_1W;

struct JOB_INFO_1A {
	DWORD JobId;
	LPSTR pPrinterName;
	LPSTR pMachineName;
	LPSTR pUserName;
	LPSTR pDocument;
	LPSTR pDatatype;
	LPSTR pStatus;
	DWORD Status;
	DWORD Priority;
	DWORD Position;
	DWORD TotalPages;
	DWORD PagesPrinted;
	SYSTEMTIME Submitted;
}
alias JOB_INFO_1A* PJOB_INFO_1A, LPJOB_INFO_1A;

struct JOB_INFO_1W {
	DWORD JobId;
	LPWSTR pPrinterName;
	LPWSTR pMachineName;
	LPWSTR pUserName;
	LPWSTR pDocument;
	LPWSTR pDatatype;
	LPWSTR pStatus;
	DWORD Status;
	DWORD Priority;
	DWORD Position;
	DWORD TotalPages;
	DWORD PagesPrinted;
	SYSTEMTIME Submitted;
}
alias JOB_INFO_1W* PJOB_INFO_1W, LPJOB_INFO_1W;

struct JOB_INFO_2A {
	DWORD JobId;
	LPSTR pPrinterName;
	LPSTR pMachineName;
	LPSTR pUserName;
	LPSTR pDocument;
	LPSTR pNotifyName;
	LPSTR pDatatype;
	LPSTR pPrintProcessor;
	LPSTR pParameters;
	LPSTR pDriverName;
	LPDEVMODEA pDevMode;
	LPSTR pStatus;
	PSECURITY_DESCRIPTOR pSecurityDescriptor;
	DWORD Status;
	DWORD Priority;
	DWORD Position;
	DWORD StartTime;
	DWORD UntilTime;
	DWORD TotalPages;
	DWORD Size;
	SYSTEMTIME Submitted;
	DWORD Time;
	DWORD PagesPrinted;
}
alias JOB_INFO_2A* PJOB_INFO_2A, LPJOB_INFO_2A;

struct JOB_INFO_2W {
	DWORD JobId;
	LPWSTR pPrinterName;
	LPWSTR pMachineName;
	LPWSTR pUserName;
	LPWSTR pDocument;
	LPWSTR pNotifyName;
	LPWSTR pDatatype;
	LPWSTR pPrintProcessor;
	LPWSTR pParameters;
	LPWSTR pDriverName;
	LPDEVMODEW pDevMode;
	LPWSTR pStatus;
	PSECURITY_DESCRIPTOR pSecurityDescriptor;
	DWORD Status;
	DWORD Priority;
	DWORD Position;
	DWORD StartTime;
	DWORD UntilTime;
	DWORD TotalPages;
	DWORD Size;
	SYSTEMTIME Submitted;
	DWORD Time;
	DWORD PagesPrinted;
}
alias JOB_INFO_2W* PJOB_INFO_2W, LPJOB_INFO_2W;

struct DOC_INFO_1A {
	LPSTR pDocName;
	LPSTR pOutputFile;
	LPSTR pDatatype;
}
alias DOC_INFO_1A* PDOC_INFO_1A, LPDOC_INFO_1A;

struct DOC_INFO_1W {
	LPWSTR pDocName;
	LPWSTR pOutputFile;
	LPWSTR pDatatype;
}
alias DOC_INFO_1W* PDOC_INFO_1W, LPDOC_INFO_1W;

struct DOC_INFO_2A {
	LPSTR pDocName;
	LPSTR pOutputFile;
	LPSTR pDatatype;
	DWORD dwMode;
	DWORD JobId;
}
alias DOC_INFO_2A* PDOC_INFO_2A, LPDOC_INFO_2A;

struct DOC_INFO_2W {
	LPWSTR pDocName;
	LPWSTR pOutputFile;
	LPWSTR pDatatype;
	DWORD  dwMode;
	DWORD  JobId;
}
alias DOC_INFO_2W* PDOC_INFO_2W, LPDOC_INFO_2W;

struct DRIVER_INFO_1A {
	LPSTR pName;
}
alias DRIVER_INFO_1A* PDRIVER_INFO_1A, LPDRIVER_INFO_1A;

struct DRIVER_INFO_1W {
	LPWSTR pName;
}
alias DRIVER_INFO_1W* PDRIVER_INFO_1W, LPDRIVER_INFO_1W;

struct DRIVER_INFO_2A {
	DWORD cVersion;
	LPSTR pName;
	LPSTR pEnvironment;
	LPSTR pDriverPath;
	LPSTR pDataFile;
	LPSTR pConfigFile;
}
alias DRIVER_INFO_2A* PDRIVER_INFO_2A, LPDRIVER_INFO_2A;

struct DRIVER_INFO_2W {
	DWORD  cVersion;
	LPWSTR pName;
	LPWSTR pEnvironment;
	LPWSTR pDriverPath;
	LPWSTR pDataFile;
	LPWSTR pConfigFile;
}
alias DRIVER_INFO_2W* PDRIVER_INFO_2W, LPDRIVER_INFO_2W;

struct DRIVER_INFO_3A {
	DWORD cVersion;
	LPSTR pName;
	LPSTR pEnvironment;
	LPSTR pDriverPath;
	LPSTR pDataFile;
	LPSTR pConfigFile;
	LPSTR pHelpFile;
	LPSTR pDependentFiles;
	LPSTR pMonitorName;
	LPSTR pDefaultDataType;
}
alias DRIVER_INFO_3A* PDRIVER_INFO_3A, LPDRIVER_INFO_3A;

struct DRIVER_INFO_3W {
	DWORD  cVersion;
	LPWSTR pName;
	LPWSTR pEnvironment;
	LPWSTR pDriverPath;
	LPWSTR pDataFile;
	LPWSTR pConfigFile;
	LPWSTR pHelpFile;
	LPWSTR pDependentFiles;
	LPWSTR pMonitorName;
	LPWSTR pDefaultDataType;
}
alias DRIVER_INFO_3W* PDRIVER_INFO_3W, LPDRIVER_INFO_3W;

struct MONITOR_INFO_1A {
	LPSTR pName;
}
alias MONITOR_INFO_1A* PMONITOR_INFO_1A, LPMONITOR_INFO_1A;

struct MONITOR_INFO_1W {
	LPWSTR pName;
}
alias MONITOR_INFO_1W* PMONITOR_INFO_1W, LPMONITOR_INFO_1W;

struct PORT_INFO_1A {
	LPSTR pName;
}
alias PORT_INFO_1A* PPORT_INFO_1A, LPPORT_INFO_1A;

struct PORT_INFO_1W {
	LPWSTR pName;
}
alias PORT_INFO_1W* PPORT_INFO_1W, LPPORT_INFO_1W;

struct MONITOR_INFO_2A {
	LPSTR pName;
	LPSTR pEnvironment;
	LPSTR pDLLName;
}
alias MONITOR_INFO_2A* PMONITOR_INFO_2A, LPMONITOR_INFO_2A;

struct MONITOR_INFO_2W {
	LPWSTR pName;
	LPWSTR pEnvironment;
	LPWSTR pDLLName;
}
alias MONITOR_INFO_2W* PMONITOR_INFO_2W, LPMONITOR_INFO_2W;

struct PORT_INFO_2A {
	LPSTR pPortName;
	LPSTR pMonitorName;
	LPSTR pDescription;
	DWORD fPortType;
	DWORD Reserved;
}
alias PORT_INFO_2A* PPORT_INFO_2A, LPPORT_INFO_2A;

struct PORT_INFO_2W {
	LPWSTR pPortName;
	LPWSTR pMonitorName;
	LPWSTR pDescription;
	DWORD fPortType;
	DWORD Reserved;
}
alias PORT_INFO_2W* PPORT_INFO_2W, LPPORT_INFO_2W;

struct PORT_INFO_3A {
	DWORD dwStatus;
	LPSTR pszStatus;
	DWORD dwSeverity;
}
alias PORT_INFO_3A* PPORT_INFO_3A, LPPORT_INFO_3A;

struct PORT_INFO_3W {
	DWORD dwStatus;
	LPWSTR pszStatus;
	DWORD dwSeverity;
}
alias PORT_INFO_3W* PPORT_INFO_3W, LPPORT_INFO_3W;

struct PRINTER_INFO_1A {
	DWORD Flags;
	LPSTR pDescription;
	LPSTR pName;
	LPSTR pComment;
}
alias PRINTER_INFO_1A* PPRINTER_INFO_1A, LPPRINTER_INFO_1A;

struct PRINTER_INFO_1W {
	DWORD  Flags;
	LPWSTR pDescription;
	LPWSTR pName;
	LPWSTR pComment;
}
alias PRINTER_INFO_1W* PPRINTER_INFO_1W, LPPRINTER_INFO_1W;

struct PRINTER_INFO_2A {
	LPSTR pServerName;
	LPSTR pPrinterName;
	LPSTR pShareName;
	LPSTR pPortName;
	LPSTR pDriverName;
	LPSTR pComment;
	LPSTR pLocation;
	LPDEVMODEA pDevMode;
	LPSTR pSepFile;
	LPSTR pPrintProcessor;
	LPSTR pDatatype;
	LPSTR pParameters;
	PSECURITY_DESCRIPTOR pSecurityDescriptor;
	DWORD Attributes;
	DWORD Priority;
	DWORD DefaultPriority;
	DWORD StartTime;
	DWORD UntilTime;
	DWORD Status;
	DWORD cJobs;
	DWORD AveragePPM;
}
alias PRINTER_INFO_2A* PPRINTER_INFO_2A, LPPRINTER_INFO_2A;

struct PRINTER_INFO_2W {
	LPWSTR pServerName;
	LPWSTR pPrinterName;
	LPWSTR pShareName;
	LPWSTR pPortName;
	LPWSTR pDriverName;
	LPWSTR pComment;
	LPWSTR pLocation;
	LPDEVMODEW pDevMode;
	LPWSTR pSepFile;
	LPWSTR pPrintProcessor;
	LPWSTR pDatatype;
	LPWSTR pParameters;
	PSECURITY_DESCRIPTOR pSecurityDescriptor;
	DWORD Attributes;
	DWORD Priority;
	DWORD DefaultPriority;
	DWORD StartTime;
	DWORD UntilTime;
	DWORD Status;
	DWORD cJobs;
	DWORD AveragePPM;
}
alias PRINTER_INFO_2W* PPRINTER_INFO_2W, LPPRINTER_INFO_2W;

struct PRINTER_INFO_3 {
	PSECURITY_DESCRIPTOR pSecurityDescriptor;
}
alias PRINTER_INFO_3* PPRINTER_INFO_3, LPPRINTER_INFO_3;

struct PRINTER_INFO_4A {
	LPSTR pPrinterName;
	LPSTR pServerName;
	DWORD Attributes;
}
alias PRINTER_INFO_4A* PPRINTER_INFO_4A, LPPRINTER_INFO_4A;

struct PRINTER_INFO_4W {
	LPWSTR pPrinterName;
	LPWSTR pServerName;
	DWORD Attributes;
}
alias PRINTER_INFO_4W* PPRINTER_INFO_4W, LPPRINTER_INFO_4W;

struct PRINTER_INFO_5A {
	LPSTR pPrinterName;
	LPSTR pPortName;
	DWORD Attributes;
	DWORD DeviceNotSelectedTimeout;
	DWORD TransmissionRetryTimeout;
}
alias PRINTER_INFO_5A* PPRINTER_INFO_5A, LPPRINTER_INFO_5A;

struct PRINTER_INFO_5W {
	LPWSTR pPrinterName;
	LPWSTR pPortName;
	DWORD Attributes;
	DWORD DeviceNotSelectedTimeout;
	DWORD TransmissionRetryTimeout;
}
alias PRINTER_INFO_5W* PPRINTER_INFO_5W, LPPRINTER_INFO_5W;

struct PRINTER_INFO_6 {
	DWORD dwStatus;
}
alias PRINTER_INFO_6* PPRINTER_INFO_6, LPPRINTER_INFO_6;

struct PRINTPROCESSOR_INFO_1A {
	LPSTR pName;
}
alias PRINTPROCESSOR_INFO_1A* PPRINTPROCESSOR_INFO_1A, LPPRINTPROCESSOR_INFO_1A;

struct PRINTPROCESSOR_INFO_1W {
	LPWSTR pName;
}
alias PRINTPROCESSOR_INFO_1W* PPRINTPROCESSOR_INFO_1W, LPPRINTPROCESSOR_INFO_1W;

struct PRINTER_NOTIFY_INFO_DATA {
	WORD  Type;
	WORD  Field;
	DWORD Reserved;
	DWORD Id;
	union _NotifyData {
		DWORD[2] adwData;
		struct Data {
			DWORD cbBuf;
			PVOID pBuf;
		}
	}
	_NotifyData NotifyData;	
}
alias PRINTER_NOTIFY_INFO_DATA* PPRINTER_NOTIFY_INFO_DATA, LPPRINTER_NOTIFY_INFO_DATA;

struct PRINTER_NOTIFY_INFO {
	DWORD Version;
	DWORD Flags;
	DWORD Count;
	PRINTER_NOTIFY_INFO_DATA[1] aData;
}
alias PRINTER_NOTIFY_INFO* PPRINTER_NOTIFY_INFO, LPPRINTER_NOTIFY_INFO;

struct FORM_INFO_1A {
	DWORD Flags;
	LPSTR pName;
	SIZEL Size;
	RECTL ImageableArea;
}
alias FORM_INFO_1A* PFORM_INFO_1A, LPFORM_INFO_1A;

struct FORM_INFO_1W {
	DWORD  Flags;
	LPWSTR pName;
	SIZEL  Size;
	RECTL  ImageableArea;
}
alias FORM_INFO_1W* PFORM_INFO_1W, LPFORM_INFO_1W;

struct PRINTER_DEFAULTSA {
	LPSTR       pDatatype;
	LPDEVMODE   pDevMode;
	ACCESS_MASK DesiredAccess;
}
alias PRINTER_DEFAULTSA* PPRINTER_DEFAULTSA, LPPRINTER_DEFAULTSA;

struct PRINTER_DEFAULTSW {
	LPWSTR pDatatype;
	LPDEVMODE pDevMode;
	ACCESS_MASK DesiredAccess;
}
alias PRINTER_DEFAULTSW* PPRINTER_DEFAULTSW, LPPRINTER_DEFAULTSW;

extern (Windows):
BOOL AbortPrinter(HANDLE);
BOOL AddFormA(HANDLE, DWORD, PBYTE);
BOOL AddFormW(HANDLE, DWORD, PBYTE);
BOOL AddJobA(HANDLE, DWORD, PBYTE, DWORD, PDWORD);
BOOL AddJobW(HANDLE, DWORD, PBYTE, DWORD, PDWORD);
BOOL AddMonitorA(LPSTR, DWORD, PBYTE);
BOOL AddMonitorW(LPWSTR, DWORD, PBYTE);
BOOL AddPortA(LPSTR, HWND, LPSTR);
BOOL AddPortW(LPWSTR, HWND, LPWSTR);
HANDLE AddPrinterA(LPSTR, DWORD, PBYTE);
HANDLE AddPrinterW(LPWSTR, DWORD, PBYTE);
BOOL AddPrinterConnectionA(LPSTR);
BOOL AddPrinterConnectionW(LPWSTR);
BOOL AddPrinterDriverA(LPSTR, DWORD, PBYTE);
BOOL AddPrinterDriverW(LPWSTR, DWORD, PBYTE);
BOOL AddPrintProcessorA(LPSTR, LPSTR, LPSTR, LPSTR);
BOOL AddPrintProcessorW(LPWSTR, LPWSTR, LPWSTR, LPWSTR);
BOOL AddPrintProvidorA(LPSTR, DWORD, PBYTE);
BOOL AddPrintProvidorW(LPWSTR, DWORD, PBYTE);
LONG AdvancedDocumentPropertiesA(HWND, HANDLE, LPSTR, PDEVMODE, PDEVMODEA);
LONG AdvancedDocumentPropertiesW(HWND, HANDLE, LPWSTR, PDEVMODE, PDEVMODEW);
BOOL ClosePrinter(HANDLE);
BOOL ConfigurePortA(LPSTR, HWND, LPSTR);
BOOL ConfigurePortW(LPWSTR, HWND, LPWSTR);
HANDLE ConnectToPrinterDlg(HWND, DWORD);
BOOL DeleteFormA(HANDLE, LPSTR);
BOOL DeleteFormW(HANDLE, LPWSTR);
BOOL DeleteMonitorA(LPSTR, LPSTR, LPSTR);
BOOL DeleteMonitorW(LPWSTR, LPWSTR, LPWSTR);
BOOL DeletePortA(LPSTR, HWND, LPSTR);
BOOL DeletePortW(LPWSTR, HWND, LPWSTR);
BOOL DeletePrinter(HANDLE);
BOOL DeletePrinterConnectionA(LPSTR);
BOOL DeletePrinterConnectionW(LPWSTR);
DWORD DeletePrinterDataA(HANDLE, LPSTR);
DWORD DeletePrinterDataW(HANDLE, LPWSTR);
BOOL DeletePrinterDriverA(LPSTR, LPSTR, LPSTR);
BOOL DeletePrinterDriverW(LPWSTR, LPWSTR, LPWSTR);
BOOL DeletePrintProcessorA(LPSTR, LPSTR, LPSTR);
BOOL DeletePrintProcessorW(LPWSTR, LPWSTR, LPWSTR);
BOOL DeletePrintProvidorA(LPSTR, LPSTR, LPSTR);
BOOL DeletePrintProvidorW(LPWSTR, LPWSTR, LPWSTR);
LONG DocumentPropertiesA(HWND, HANDLE, LPSTR, PDEVMODEA, PDEVMODEA, DWORD);
LONG DocumentPropertiesW(HWND, HANDLE, LPWSTR, PDEVMODEW, PDEVMODEW, DWORD);
BOOL EndDocPrinter(HANDLE);
BOOL EndPagePrinter(HANDLE);
BOOL EnumFormsA(HANDLE, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumFormsW(HANDLE, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumJobsA(HANDLE, DWORD, DWORD, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumJobsW(HANDLE, DWORD, DWORD, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumMonitorsA(LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumMonitorsW(LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPortsA(LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPortsW(LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
DWORD EnumPrinterDataA(HANDLE, DWORD, LPSTR, DWORD, PDWORD, PDWORD, PBYTE, DWORD, PDWORD);
DWORD EnumPrinterDataW(HANDLE, DWORD, LPWSTR, DWORD, PDWORD, PDWORD, PBYTE, DWORD, PDWORD);
BOOL EnumPrinterDriversA(LPSTR, LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrinterDriversW(LPWSTR, LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintersA(DWORD, LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintersW(DWORD, LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintProcessorDatatypesA(LPSTR, LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintProcessorDatatypesW(LPWSTR, LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintProcessorsA(LPSTR, LPSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL EnumPrintProcessorsW(LPWSTR, LPWSTR, DWORD, PBYTE, DWORD, PDWORD, PDWORD);
BOOL FindClosePrinterChangeNotification(HANDLE);
HANDLE FindFirstPrinterChangeNotification(HANDLE, DWORD, DWORD, PVOID);
HANDLE FindNextPrinterChangeNotification(HANDLE, PDWORD, PVOID, PVOID*);
BOOL FreePrinterNotifyInfo(PPRINTER_NOTIFY_INFO);

static if (_WIN32_WINNT >= 0x500) {
BOOL GetDefaultPrinterA(LPSTR, LPDWORD);
BOOL GetDefaultPrinterW(LPWSTR, LPDWORD);
}

BOOL GetFormA(HANDLE, LPSTR, DWORD, PBYTE, DWORD, PDWORD);
BOOL GetFormW(HANDLE, LPWSTR, DWORD, PBYTE, DWORD, PDWORD);
BOOL GetJobA(HANDLE, DWORD, DWORD, PBYTE, DWORD, PDWORD);
BOOL GetJobW(HANDLE, DWORD, DWORD, PBYTE, DWORD, PDWORD);
BOOL GetPrinterA(HANDLE, DWORD, PBYTE, DWORD, PDWORD);
BOOL GetPrinterW(HANDLE, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDataA(HANDLE, LPSTR, PDWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDataW(HANDLE, LPWSTR, PDWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDriverA(HANDLE, LPSTR, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDriverW(HANDLE, LPWSTR, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDriverDirectoryA(LPSTR, LPSTR, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrinterDriverDirectoryW(LPWSTR, LPWSTR, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrintProcessorDirectoryA(LPSTR, LPSTR, DWORD, PBYTE, DWORD, PDWORD);
DWORD GetPrintProcessorDirectoryW(LPWSTR, LPWSTR, DWORD, PBYTE, DWORD, PDWORD);
BOOL OpenPrinterA(LPSTR, PHANDLE, LPPRINTER_DEFAULTSA);
BOOL OpenPrinterW(LPWSTR, PHANDLE, LPPRINTER_DEFAULTSW);
DWORD PrinterMessageBoxA(HANDLE, DWORD, HWND, LPSTR, LPSTR, DWORD);
DWORD PrinterMessageBoxW(HANDLE, DWORD, HWND, LPWSTR, LPWSTR, DWORD);
BOOL PrinterProperties(HWND, HANDLE);
BOOL ReadPrinter(HANDLE, PVOID, DWORD, PDWORD);
BOOL ResetPrinterA(HANDLE, LPPRINTER_DEFAULTSA);
BOOL ResetPrinterW(HANDLE, LPPRINTER_DEFAULTSW);
BOOL ScheduleJob(HANDLE, DWORD);
BOOL SetFormA(HANDLE, LPSTR, DWORD, PBYTE);
BOOL SetFormW(HANDLE, LPWSTR, DWORD, PBYTE);
BOOL SetJobA(HANDLE, DWORD, DWORD, PBYTE, DWORD);
BOOL SetJobW(HANDLE, DWORD, DWORD, PBYTE, DWORD);
BOOL SetPrinterA(HANDLE, DWORD, PBYTE, DWORD);
BOOL SetPrinterW(HANDLE, DWORD, PBYTE, DWORD);
BOOL SetPrinterDataA(HANDLE, LPSTR, DWORD, PBYTE, DWORD);
BOOL SetPrinterDataW(HANDLE, LPWSTR, DWORD, PBYTE, DWORD);
DWORD StartDocPrinterA(HANDLE, DWORD, PBYTE);
DWORD StartDocPrinterW(HANDLE, DWORD, PBYTE);
BOOL StartPagePrinter(HANDLE);
DWORD WaitForPrinterChange(HANDLE, DWORD);
BOOL WritePrinter(HANDLE, PVOID, DWORD, PDWORD);

version()(Unicode) {

alias JOB_INFO_1W JOB_INFO_1;
alias JOB_INFO_2W JOB_INFO_2;
alias ADDJOB_INFO_1W ADDJOB_INFO_1;
alias DATATYPES_INFO_1W DATATYPES_INFO_1;
alias MONITOR_INFO_1W MONITOR_INFO_1;
alias MONITOR_INFO_2W MONITOR_INFO_2;
alias DOC_INFO_1W DOC_INFO_1;
alias DOC_INFO_2W DOC_INFO_2;
alias PORT_INFO_1W PORT_INFO_1;
alias PORT_INFO_2W PORT_INFO_2;
alias PORT_INFO_3W PORT_INFO_3;
alias DRIVER_INFO_2W DRIVER_INFO_2;
alias PRINTER_INFO_1W PRINTER_INFO_1;
alias PRINTER_INFO_2W PRINTER_INFO_2;
alias PRINTER_INFO_4W PRINTER_INFO_4;
alias PRINTER_INFO_5W PRINTER_INFO_5;
alias PRINTPROCESSOR_INFO_1W PRINTPROCESSOR_INFO_1;
alias FORM_INFO_1W FORM_INFO_1;
alias PRINTER_DEFAULTSW PRINTER_DEFAULTS;

alias AddFormW AddForm;
alias AddJobW AddJob;
alias AddMonitorW AddMonitor;
alias AddPortW AddPort;
alias AddPrinterW AddPrinter;
alias AddPrinterConnectionW AddPrinterConnection;
alias AddPrinterDriverW AddPrinterDriver;
alias AddPrintProcessorW AddPrintProcessor;
alias AddPrintProvidorW AddPrintProvidor;
alias AdvancedDocumentPropertiesW AdvancedDocumentProperties;
alias ConfigurePortW ConfigurePort;
alias DeleteFormW DeleteForm;
alias DeleteMonitorW DeleteMonitor;
alias DeletePortW DeletePort;
alias DeletePrinterConnectionW DeletePrinterConnection;
alias DeletePrinterDataW DeletePrinterData;
alias DeletePrinterDriverW DeletePrinterDriver;
alias DeletePrintProcessorW DeletePrintProcessor;
alias DeletePrintProvidorW DeletePrintProvidor;
alias DocumentPropertiesW DocumentProperties;
alias EnumFormsW EnumForms;
alias EnumJobsW EnumJobs;
alias EnumMonitorsW EnumMonitors;
alias EnumPortsW EnumPorts;
alias EnumPrinterDataW EnumPrinterData;
alias EnumPrinterDriversW EnumPrinterDrivers;
alias EnumPrintersW EnumPrinters;
alias EnumPrintProcessorDatatypesW EnumPrintProcessorDatatypes;
alias EnumPrintProcessorsW EnumPrintProcessors;

static if (_WIN32_WINNT >= 0x500) {
alias GetDefaultPrinterW GetDefaultPrinter;
}

alias GetFormW GetForm;
alias GetJobW GetJob;
alias GetPrinterW GetPrinter;
alias GetPrinterDataW GetPrinterData;
alias GetPrinterDriverW GetPrinterDriver;
alias GetPrinterDriverDirectoryW GetPrinterDriverDirectory;
alias GetPrintProcessorDirectoryW GetPrintProcessorDirectory;
alias OpenPrinterW OpenPrinter;
alias PrinterMessageBoxW PrinterMessageBox;
alias ResetPrinterW ResetPrinter;
alias SetFormW SetForm;
alias SetJobW SetJob;
alias SetPrinterW SetPrinter;
alias SetPrinterDataW SetPrinterData;
alias StartDocPrinterW StartDocPrinter;

} else {

alias JOB_INFO_1A JOB_INFO_1;
alias JOB_INFO_2A JOB_INFO_2;
alias ADDJOB_INFO_1A ADDJOB_INFO_1;
alias DATATYPES_INFO_1A DATATYPES_INFO_1;
alias MONITOR_INFO_1A MONITOR_INFO_1;
alias MONITOR_INFO_2A MONITOR_INFO_2;
alias DOC_INFO_1A DOC_INFO_1;
alias DOC_INFO_2A DOC_INFO_2;
alias PORT_INFO_1A PORT_INFO_1;
alias PORT_INFO_2A PORT_INFO_2;
alias PORT_INFO_3A PORT_INFO_3;
alias DRIVER_INFO_2A DRIVER_INFO_2;
alias PRINTER_INFO_1A PRINTER_INFO_1;
alias PRINTER_INFO_2A PRINTER_INFO_2;
alias PRINTER_INFO_4A PRINTER_INFO_4;
alias PRINTER_INFO_5A PRINTER_INFO_5;
alias PRINTPROCESSOR_INFO_1A PRINTPROCESSOR_INFO_1;
alias FORM_INFO_1A FORM_INFO_1;
alias PRINTER_DEFAULTSA PRINTER_DEFAULTS;

alias AddFormA AddForm;
alias AddJobA AddJob;
alias AddMonitorA AddMonitor;
alias AddPortA AddPort;
alias AddPrinterA AddPrinter;
alias AddPrinterConnectionA AddPrinterConnection;
alias AddPrinterDriverA AddPrinterDriver;
alias AddPrintProcessorA AddPrintProcessor;
alias AddPrintProvidorA AddPrintProvidor;
alias AdvancedDocumentPropertiesA AdvancedDocumentProperties;
alias ConfigurePortA ConfigurePort;
alias DeleteFormA DeleteForm;
alias DeleteMonitorA DeleteMonitor;
alias DeletePortA DeletePort;
alias DeletePrinterConnectionA DeletePrinterConnection;
alias DeletePrinterDataA DeletePrinterData;
alias DeletePrinterDriverA DeletePrinterDriver;
alias DeletePrintProcessorA DeletePrintProcessor;
alias DeletePrintProvidorA DeletePrintProvidor;
alias DocumentPropertiesA DocumentProperties;
alias EnumFormsA EnumForms;
alias EnumJobsA EnumJobs;
alias EnumMonitorsA EnumMonitors;
alias EnumPortsA EnumPorts;
alias EnumPrinterDataA EnumPrinterData;
alias EnumPrinterDriversA EnumPrinterDrivers;
alias EnumPrintersA EnumPrinters;
alias EnumPrintProcessorDatatypesA EnumPrintProcessorDatatypes;
alias EnumPrintProcessorsA EnumPrintProcessors;

static if (_WIN32_WINNT >= 0x500) {
alias GetDefaultPrinterA GetDefaultPrinter;
}

alias GetFormA GetForm;
alias GetJobA GetJob;
alias GetPrinterA GetPrinter;
alias GetPrinterDataA GetPrinterData;
alias GetPrinterDriverA GetPrinterDriver;
alias GetPrinterDriverDirectoryA GetPrinterDriverDirectory;
alias GetPrintProcessorDirectoryA GetPrintProcessorDirectory;
alias OpenPrinterA OpenPrinter;
alias PrinterMessageBoxA PrinterMessageBox;
alias ResetPrinterA ResetPrinter;
alias SetFormA SetForm;
alias SetJobA SetJob;
alias SetPrinterA SetPrinter;
alias SetPrinterDataA SetPrinterData;
alias StartDocPrinterA StartDocPrinter;
}

alias JOB_INFO_1* PJOB_INFO_1, LPJOB_INFO_1;
alias JOB_INFO_2* PJOB_INFO_2, LPJOB_INFO_2;
alias ADDJOB_INFO_1* PADDJOB_INFO_1, LPADDJOB_INFO_1;
alias DATATYPES_INFO_1* PDATATYPES_INFO_1, LPDATATYPES_INFO_1;
alias MONITOR_INFO_1* PMONITOR_INFO_1, LPMONITOR_INFO_1;
alias MONITOR_INFO_2* PMONITOR_INFO_2, LPMONITOR_INFO_2;
alias DOC_INFO_1* PDOC_INFO_1, LPDOC_INFO_1;
alias DOC_INFO_2* PDOC_INFO_2, LPDOC_INFO_2;
alias PORT_INFO_1* PPORT_INFO_1, LPPORT_INFO_1;
alias PORT_INFO_2* PPORT_INFO_2, LPPORT_INFO_2;
alias PORT_INFO_3* PPORT_INFO_3, LPPORT_INFO_3;
alias DRIVER_INFO_2* PDRIVER_INFO_2, LPDRIVER_INFO_2;
alias PRINTER_INFO_1* PPRINTER_INFO_1, LPPRINTER_INFO_1;
alias PRINTER_INFO_2* PPRINTER_INFO_2, LPPRINTER_INFO_2;
alias PRINTER_INFO_4* PPRINTER_INFO_4, LPPRINTER_INFO_4;
alias PRINTER_INFO_5* PPRINTER_INFO_5, LPPRINTER_INFO_5;
alias PRINTPROCESSOR_INFO_1* PPRINTPROCESSOR_INFO_1, LPPRINTPROCESSOR_INFO_1;
alias FORM_INFO_1* PFORM_INFO_1, LPFORM_INFO_1;
alias PRINTER_DEFAULTS* PPRINTER_DEFAULTS, LPPRINTER_DEFAULTS;
