/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * Authors: Stewart Gordon
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_winioctl.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.winioctl for the auto-generated win32 package.
module win32.winioctl;
//version (Windows):

// FIXME: check types of some constants

private import win32.basetyps, win32.windef;

const size_t
    HIST_NO_OF_BUCKETS = 24,
    HISTOGRAM_BUCKET_SIZE = HISTOGRAM_BUCKET.sizeof,
    DISK_HISTOGRAM_SIZE = DISK_HISTOGRAM.sizeof;

alias DWORD DEVICE_TYPE;

enum : DEVICE_TYPE {
    FILE_DEVICE_BEEP               = 1,
    FILE_DEVICE_CD_ROM,
    FILE_DEVICE_CD_ROM_FILE_SYSTEM,
    FILE_DEVICE_CONTROLLER,
    FILE_DEVICE_DATALINK,
    FILE_DEVICE_DFS,
    FILE_DEVICE_DISK,
    FILE_DEVICE_DISK_FILE_SYSTEM,
    FILE_DEVICE_FILE_SYSTEM,
    FILE_DEVICE_INPORT_PORT,
    FILE_DEVICE_KEYBOARD,
    FILE_DEVICE_MAILSLOT,
    FILE_DEVICE_MIDI_IN,
    FILE_DEVICE_MIDI_OUT,
    FILE_DEVICE_MOUSE,
    FILE_DEVICE_MULTI_UNC_PROVIDER,
    FILE_DEVICE_NAMED_PIPE,
    FILE_DEVICE_NETWORK,
    FILE_DEVICE_NETWORK_BROWSER,
    FILE_DEVICE_NETWORK_FILE_SYSTEM,
    FILE_DEVICE_NULL,
    FILE_DEVICE_PARALLEL_PORT,
    FILE_DEVICE_PHYSICAL_NETCARD,
    FILE_DEVICE_PRINTER,
    FILE_DEVICE_SCANNER,
    FILE_DEVICE_SERIAL_MOUSE_PORT,
    FILE_DEVICE_SERIAL_PORT,
    FILE_DEVICE_SCREEN,
    FILE_DEVICE_SOUND,
    FILE_DEVICE_STREAMS,
    FILE_DEVICE_TAPE,
    FILE_DEVICE_TAPE_FILE_SYSTEM,
    FILE_DEVICE_TRANSPORT,
    FILE_DEVICE_UNKNOWN,
    FILE_DEVICE_VIDEO,
    FILE_DEVICE_VIRTUAL_DISK,
    FILE_DEVICE_WAVE_IN,
    FILE_DEVICE_WAVE_OUT,
    FILE_DEVICE_8042_PORT,
    FILE_DEVICE_NETWORK_REDIRECTOR,
    FILE_DEVICE_BATTERY,
    FILE_DEVICE_BUS_EXTENDER,
    FILE_DEVICE_MODEM,
    FILE_DEVICE_VDM,
    FILE_DEVICE_MASS_STORAGE,
    FILE_DEVICE_SMB,
    FILE_DEVICE_KS,
    FILE_DEVICE_CHANGER,
    FILE_DEVICE_SMARTCARD,
    FILE_DEVICE_ACPI,
    FILE_DEVICE_DVD,
    FILE_DEVICE_FULLSCREEN_VIDEO,
    FILE_DEVICE_DFS_FILE_SYSTEM,
    FILE_DEVICE_DFS_VOLUME,
    FILE_DEVICE_SERENUM,
    FILE_DEVICE_TERMSRV,
    FILE_DEVICE_KSEC            // = 57
}

enum {
    METHOD_BUFFERED,
    METHOD_IN_DIRECT,
    METHOD_OUT_DIRECT,
    METHOD_NEITHER
}

enum {
    FILE_ANY_ACCESS,
    FILE_SPECIAL_ACCESS = 0,
    FILE_READ_ACCESS,
    FILE_WRITE_ACCESS
}

/*  Bit pattern:
 *  tttttttt tttttttt aaffffff ffffffmm
 */
/+
#define CTL_CODE(t, f, m, a) (((t)<<16)|((a)<<14)|((f)<<2)|(m))
+/

template CTL_CODE_T(DEVICE_TYPE t, uint f, uint m, uint a) {
    const DWORD CTL_CODE_T = (t << 16) | (a << 14) | (f << 2) | m;
}

DEVICE_TYPE DEVICE_TYPE_FROM_CTL_CODE()(DWORD c) {
    return (c & 0xFFFF0000) >> 16;
}

const DEVICE_TYPE
    IOCTL_STORAGE_BASE = FILE_DEVICE_MASS_STORAGE,
    IOCTL_DISK_BASE    = FILE_DEVICE_DISK,
    IOCTL_VOLUME_BASE  = 'V';

enum : DWORD {
    IOCTL_STORAGE_CHECK_VERIFY           = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_CHECK_VERIFY2          = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_MEDIA_REMOVAL          = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0201, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_EJECT_MEDIA            = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0202, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_LOAD_MEDIA             = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_LOAD_MEDIA2            = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_RESERVE                = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0204, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_RELEASE                = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0205, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_FIND_NEW_DEVICES       = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0206, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_EJECTION_CONTROL       = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0250, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_MCN_CONTROL            = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0251, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_GET_MEDIA_TYPES        = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_GET_MEDIA_TYPES_EX     = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0301, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_RESET_BUS              = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0400, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_RESET_DEVICE           = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0401, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_STORAGE_GET_DEVICE_NUMBER      = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0420, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_STORAGE_PREDICT_FAILURE        = CTL_CODE_T!(IOCTL_STORAGE_BASE, 0x0440, METHOD_BUFFERED, FILE_ANY_ACCESS),

    IOCTL_DISK_GET_DRIVE_GEOMETRY        = CTL_CODE_T!(IOCTL_DISK_BASE, 0, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_GET_PARTITION_INFO        = CTL_CODE_T!(IOCTL_DISK_BASE, 1, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_SET_PARTITION_INFO        = CTL_CODE_T!(IOCTL_DISK_BASE, 2, METHOD_BUFFERED, FILE_READ_ACCESS|FILE_WRITE_ACCESS),
    IOCTL_DISK_GET_DRIVE_LAYOUT          = CTL_CODE_T!(IOCTL_DISK_BASE, 3, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_SET_DRIVE_LAYOUT          = CTL_CODE_T!(IOCTL_DISK_BASE, 4, METHOD_BUFFERED, FILE_READ_ACCESS|FILE_WRITE_ACCESS),
    IOCTL_DISK_VERIFY                    = CTL_CODE_T!(IOCTL_DISK_BASE, 5, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_FORMAT_TRACKS             = CTL_CODE_T!(IOCTL_DISK_BASE, 6, METHOD_BUFFERED, FILE_READ_ACCESS|FILE_WRITE_ACCESS),
    IOCTL_DISK_REASSIGN_BLOCKS           = CTL_CODE_T!(IOCTL_DISK_BASE, 7, METHOD_BUFFERED, FILE_READ_ACCESS|FILE_WRITE_ACCESS),
    IOCTL_DISK_PERFORMANCE               = CTL_CODE_T!(IOCTL_DISK_BASE, 8, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_IS_WRITABLE               = CTL_CODE_T!(IOCTL_DISK_BASE, 9, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_LOGGING                   = CTL_CODE_T!(IOCTL_DISK_BASE, 10, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_FORMAT_TRACKS_EX          = CTL_CODE_T!(IOCTL_DISK_BASE, 11, METHOD_BUFFERED, FILE_READ_ACCESS|FILE_WRITE_ACCESS),
    IOCTL_DISK_HISTOGRAM_STRUCTURE       = CTL_CODE_T!(IOCTL_DISK_BASE, 12, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_HISTOGRAM_DATA            = CTL_CODE_T!(IOCTL_DISK_BASE, 13, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_HISTOGRAM_RESET           = CTL_CODE_T!(IOCTL_DISK_BASE, 14, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_REQUEST_STRUCTURE         = CTL_CODE_T!(IOCTL_DISK_BASE, 15, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_REQUEST_DATA              = CTL_CODE_T!(IOCTL_DISK_BASE, 16, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_GET_PARTITION_INFO_EX     = CTL_CODE_T!(IOCTL_DISK_BASE, 0x12, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_SET_PARTITION_INFO_EX     = CTL_CODE_T!(IOCTL_DISK_BASE, 0x13, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_GET_DRIVE_LAYOUT_EX       = CTL_CODE_T!(IOCTL_DISK_BASE, 0x14, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_SET_DRIVE_LAYOUT_EX       = CTL_CODE_T!(IOCTL_DISK_BASE, 0x15, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_CREATE_DISK               = CTL_CODE_T!(IOCTL_DISK_BASE, 0x16, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_GET_LENGTH_INFO           = CTL_CODE_T!(IOCTL_DISK_BASE, 0x17, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_PERFORMANCE_OFF           = CTL_CODE_T!(IOCTL_DISK_BASE, 0x18, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_GET_DRIVE_GEOMETRY_EX     = CTL_CODE_T!(IOCTL_DISK_BASE, 0x28, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_GROW_PARTITION            = CTL_CODE_T!(IOCTL_DISK_BASE, 0x34, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_GET_CACHE_INFORMATION     = CTL_CODE_T!(IOCTL_DISK_BASE, 0x35, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_SET_CACHE_INFORMATION     = CTL_CODE_T!(IOCTL_DISK_BASE, 0x36, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_DELETE_DRIVE_LAYOUT       = CTL_CODE_T!(IOCTL_DISK_BASE, 0x40, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_DISK_UPDATE_PROPERTIES         = CTL_CODE_T!(IOCTL_DISK_BASE, 0x50, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_CHECK_VERIFY              = CTL_CODE_T!(IOCTL_DISK_BASE, 0x200, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_MEDIA_REMOVAL             = CTL_CODE_T!(IOCTL_DISK_BASE, 0x201, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_EJECT_MEDIA               = CTL_CODE_T!(IOCTL_DISK_BASE, 0x202, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_LOAD_MEDIA                = CTL_CODE_T!(IOCTL_DISK_BASE, 0x203, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_RESERVE                   = CTL_CODE_T!(IOCTL_DISK_BASE, 0x204, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_RELEASE                   = CTL_CODE_T!(IOCTL_DISK_BASE, 0x205, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_FIND_NEW_DEVICES          = CTL_CODE_T!(IOCTL_DISK_BASE, 0x206, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_REMOVE_DEVICE             = CTL_CODE_T!(IOCTL_DISK_BASE, 0x207, METHOD_BUFFERED, FILE_READ_ACCESS),
    IOCTL_DISK_GET_MEDIA_TYPES           = CTL_CODE_T!(IOCTL_DISK_BASE, 0x300, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_DISK_UPDATE_DRIVE_SIZE         = CTL_CODE_T!(IOCTL_DISK_BASE, 0x0032, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS),
    IOCTL_SERIAL_LSRMST_INSERT           = CTL_CODE_T!(FILE_DEVICE_SERIAL_PORT, 31, METHOD_BUFFERED, FILE_ANY_ACCESS),

    IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = CTL_CODE_T!(IOCTL_VOLUME_BASE, 0, METHOD_BUFFERED, FILE_ANY_ACCESS),
    IOCTL_VOLUME_IS_CLUSTERED            = CTL_CODE_T!(IOCTL_VOLUME_BASE, 12, METHOD_BUFFERED, FILE_ANY_ACCESS),

    FSCTL_LOCK_VOLUME                    = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 6, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_UNLOCK_VOLUME                  = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 7, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_DISMOUNT_VOLUME                = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 8, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_MOUNT_DBLS_VOLUME              = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 13, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_GET_COMPRESSION                = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 15, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_SET_COMPRESSION                = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 16, METHOD_BUFFERED, FILE_READ_DATA|FILE_WRITE_DATA),
    FSCTL_READ_COMPRESSION               = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 17, METHOD_NEITHER, FILE_READ_DATA),
    FSCTL_WRITE_COMPRESSION              = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 18, METHOD_NEITHER, FILE_WRITE_DATA),
    FSCTL_GET_NTFS_VOLUME_DATA           = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 25, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_GET_VOLUME_BITMAP              = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 27, METHOD_NEITHER, FILE_ANY_ACCESS),
    FSCTL_GET_RETRIEVAL_POINTERS         = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 28, METHOD_NEITHER, FILE_ANY_ACCESS),
    FSCTL_MOVE_FILE                      = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 29, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_GET_REPARSE_POINT              = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 42, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_SET_REPARSE_POINT              = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 41, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_DELETE_REPARSE_POINT           = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 43, METHOD_BUFFERED, FILE_ANY_ACCESS),
    FSCTL_SET_SPARSE                     = CTL_CODE_T!(FILE_DEVICE_FILE_SYSTEM, 49, METHOD_BUFFERED, FILE_SPECIAL_ACCESS),
}

enum : BYTE {
    PARTITION_ENTRY_UNUSED,
    PARTITION_FAT_12,
    PARTITION_XENIX_1,
    PARTITION_XENIX_2,
    PARTITION_FAT_16,
    PARTITION_EXTENDED,
    PARTITION_HUGE,
    PARTITION_IFS,         // = 0x07
    PARTITION_FAT32           = 0x0B,
    PARTITION_FAT32_XINT13    = 0x0C,
    PARTITION_XINT13          = 0x0E,
    PARTITION_XINT13_EXTENDED = 0x0F,
    PARTITION_PREP            = 0x41,
    PARTITION_LDM             = 0x42,
    PARTITION_UNIX            = 0x63
}

const BYTE
    PARTITION_NTFT = 0x80,
    VALID_NTFT     = 0xC0;

enum {
    SERIAL_LSRMST_ESCAPE,
    SERIAL_LSRMST_LSR_DATA,
    SERIAL_LSRMST_LSR_NODATA,
    SERIAL_LSRMST_MST
}

enum {
    DISK_LOGGING_START,
    DISK_LOGGING_STOP,
    DISK_LOGGING_DUMP,
    DISK_BINNING
}

alias WORD BAD_TRACK_NUMBER;
alias WORD* PBAD_TRACK_NUMBER;

enum BIN_TYPES {
    RequestSize, RequestLocation
}

struct BIN_RANGE {
    LARGE_INTEGER StartValue;
    LARGE_INTEGER Length;
}
alias BIN_RANGE* PBIN_RANGE;

struct BIN_COUNT {
    BIN_RANGE BinRange;
    DWORD     BinCount;
}
alias BIN_COUNT* PBIN_COUNT;

struct BIN_RESULTS {
    DWORD     NumberOfBins;
    BIN_COUNT _BinCounts;

    BIN_COUNT* BinCounts() return { return &_BinCounts; }
}
alias BIN_RESULTS* PBIN_RESULTS;

enum PARTITION_STYLE {
    PARTITION_STYLE_MBR,
    PARTITION_STYLE_GPT,
    PARTITION_STYLE_RAW
}

struct CREATE_DISK_GPT {
    GUID  DiskId;
    DWORD MaxPartitionCount;
}
alias CREATE_DISK_GPT* PCREATE_DISK_GPT;

struct CREATE_DISK_MBR {
    DWORD Signature;
}
alias CREATE_DISK_MBR* PCREATE_DISK_MBR;

struct CREATE_DISK {
    PARTITION_STYLE PartitionStyle;
    union {
        CREATE_DISK_MBR Mbr;
        CREATE_DISK_GPT Gpt;
    }
}
alias CREATE_DISK* PCREATE_DISK;

enum DISK_CACHE_RETENTION_PRIORITY {
    EqualPriority,
    KeepPrefetchedData,
    KeepReadData
}

struct DISK_CACHE_INFORMATION {
    BOOLEAN ParametersSavable;
    BOOLEAN ReadCacheEnabled;
    BOOLEAN WriteCacheEnabled;
    DISK_CACHE_RETENTION_PRIORITY ReadRetentionPriority;
    DISK_CACHE_RETENTION_PRIORITY WriteRetentionPriority;
    WORD    DisablePrefetchTransferLength;
    BOOLEAN PrefetchScalar;
    union {
        struct _ScalarPrefetch {
            WORD Minimum;
            WORD Maximum;
            WORD MaximumBlocks;
        }
        _ScalarPrefetch ScalarPrefetch;
        struct _BlockPrefetch {
            WORD Minimum;
            WORD Maximum;
        }
        _BlockPrefetch BlockPrefetch;
    }
}
alias DISK_CACHE_INFORMATION* PDISK_CACHE_INFORMATION;

enum DETECTION_TYPE {
    DetectNone,
    DetectInt13,
    DetectExInt13
}

struct DISK_INT13_INFO {
    WORD  DriveSelect;
    DWORD MaxCylinders;
    WORD  SectorsPerTrack;
    WORD  MaxHeads;
    WORD  NumberDrives;
    }
alias DISK_INT13_INFO* PDISK_INT13_INFO;

struct DISK_EX_INT13_INFO {
    WORD    ExBufferSize;
    WORD    ExFlags;
    DWORD   ExCylinders;
    DWORD   ExHeads;
    DWORD   ExSectorsPerTrack;
    DWORD64 ExSectorsPerDrive;
    WORD    ExSectorSize;
    WORD    ExReserved;
}
alias DISK_EX_INT13_INFO* PDISK_EX_INT13_INFO;

struct DISK_DETECTION_INFO {
    DWORD              SizeOfDetectInfo;
    DETECTION_TYPE     DetectionType;
    DISK_INT13_INFO    Int13;
    DISK_EX_INT13_INFO ExInt13;
}
alias DISK_DETECTION_INFO* PDISK_DETECTION_INFO;

enum MEDIA_TYPE {
    Unknown,
    F5_1Pt2_512,
    F3_1Pt44_512,
    F3_2Pt88_512,
    F3_20Pt8_512,
    F3_720_512,
    F5_360_512,
    F5_320_512,
    F5_320_1024,
    F5_180_512,
    F5_160_512,
    RemovableMedia,
    FixedMedia,
    F3_120M_512,
    F3_640_512,
    F5_640_512,
    F5_720_512,
    F3_1Pt2_512,
    F3_1Pt23_1024,
    F5_1Pt23_1024,
    F3_128Mb_512,
    F3_230Mb_512,
    F8_256_128,
    F3_200Mb_512,
    F3_240M_512,
    F3_32M_512
}
alias MEDIA_TYPE* PMEDIA_TYPE;

struct DISK_GEOMETRY {
    LARGE_INTEGER Cylinders;
    MEDIA_TYPE    MediaType;
    DWORD         TracksPerCylinder;
    DWORD         SectorsPerTrack;
    DWORD         BytesPerSector;
}
alias DISK_GEOMETRY* PDISK_GEOMETRY;

struct DISK_GEOMETRY_EX {
    DISK_GEOMETRY Geometry;
    LARGE_INTEGER DiskSize;
    BYTE          _Data;

    BYTE* Data() return { return &_Data; }
}
alias DISK_GEOMETRY_EX* PDISK_GEOMETRY_EX;

struct DISK_GROW_PARTITION {
    DWORD         PartitionNumber;
    LARGE_INTEGER BytesToGrow;
}
alias DISK_GROW_PARTITION* PDISK_GROW_PARTITION;

struct DISK_PARTITION_INFO {
    DWORD           SizeOfPartitionInfo;
    PARTITION_STYLE PartitionStyle;
    union {
        //struct {
            DWORD Signature;
        //} Mbr;
        //struct {
            GUID DiskId;
        //} Gpt;
    }
}
alias DISK_PARTITION_INFO* PDISK_PARTITION_INFO;

struct DISK_PERFORMANCE {
    LARGE_INTEGER BytesRead;
    LARGE_INTEGER BytesWritten;
    LARGE_INTEGER ReadTime;
    LARGE_INTEGER WriteTime;
    DWORD         ReadCount;
    DWORD         WriteCount;
    DWORD         QueueDepth;
}
alias DISK_PERFORMANCE* PDISK_PERFORMANCE;

struct DISK_RECORD {
    LARGE_INTEGER ByteOffset;
    LARGE_INTEGER StartTime;
    LARGE_INTEGER EndTime;
    PVOID         VirtualAddress;
    DWORD         NumberOfBytes;
    BYTE          DeviceNumber;
    BOOLEAN       ReadRequest;
}
alias DISK_RECORD* PDISK_RECORD;

struct DISK_LOGGING {
    BYTE  Function;
    PVOID BufferAddress;
    DWORD BufferSize;
}
alias DISK_LOGGING* PDISK_LOGGING;

struct DISKQUOTA_USER_INFORMATION {
    LONGLONG QuotaUsed;
    LONGLONG QuotaThreshold;
    LONGLONG QuotaLimit;
}
alias DISKQUOTA_USER_INFORMATION* PDISKQUOTA_USER_INFORMATION;

struct FORMAT_PARAMETERS {
    MEDIA_TYPE MediaType;
    DWORD      StartCylinderNumber;
    DWORD      EndCylinderNumber;
    DWORD      StartHeadNumber;
    DWORD      EndHeadNumber;
}
alias FORMAT_PARAMETERS* PFORMAT_PARAMETERS;

struct FORMAT_EX_PARAMETERS {
    MEDIA_TYPE MediaType;
    DWORD      StartCylinderNumber;
    DWORD      EndCylinderNumber;
    DWORD      StartHeadNumber;
    DWORD      EndHeadNumber;
    WORD       FormatGapLength;
    WORD       SectorsPerTrack;
    WORD       _SectorNumber;

    WORD* SectorNumber() return { return &_SectorNumber; }
}
alias FORMAT_EX_PARAMETERS* PFORMAT_EX_PARAMETERS;

struct GET_LENGTH_INFORMATION {
    LARGE_INTEGER Length;
}

struct HISTOGRAM_BUCKET {
    DWORD Reads;
    DWORD Writes;
}
alias HISTOGRAM_BUCKET* PHISTOGRAM_BUCKET;

struct DISK_HISTOGRAM {
    LARGE_INTEGER     DiskSize;
    LARGE_INTEGER     Start;
    LARGE_INTEGER     End;
    LARGE_INTEGER     Average;
    LARGE_INTEGER     AverageRead;
    LARGE_INTEGER     AverageWrite;
    DWORD             Granularity;
    DWORD             Size;
    DWORD             ReadCount;
    DWORD             WriteCount;
    PHISTOGRAM_BUCKET Histogram;
}
alias DISK_HISTOGRAM* PDISK_HISTOGRAM;

struct DISK_EXTENT {
    DWORD         DiskNumber;
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER ExtentLength;
}
alias DISK_EXTENT* PDISK_EXTENT;

struct VOLUME_DISK_EXTENTS {
    DWORD       NumberOfDiskExtents;
    DISK_EXTENT _Extents;

    DISK_EXTENT* Extents() return { return &_Extents; }
}
alias VOLUME_DISK_EXTENTS* PVOLUME_DISK_EXTENTS;

struct PARTITION_INFORMATION {
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER PartitionLength;
    DWORD         HiddenSectors;
    DWORD         PartitionNumber;
    BYTE          PartitionType;
    BOOLEAN       BootIndicator;
    BOOLEAN       RecognizedPartition;
    BOOLEAN       RewritePartition;
}
alias PARTITION_INFORMATION* PPARTITION_INFORMATION;

struct DRIVE_LAYOUT_INFORMATION {
    DWORD                 PartitionCount;
    DWORD                 Signature;
    PARTITION_INFORMATION _PartitionEntry;

    PARTITION_INFORMATION* PartitionEntry() return { return &_PartitionEntry; }
}
alias DRIVE_LAYOUT_INFORMATION* PDRIVE_LAYOUT_INFORMATION;

struct DRIVE_LAYOUT_INFORMATION_GPT {
    GUID          DiskId;
    LARGE_INTEGER StartingUsableOffset;
    LARGE_INTEGER UsableLength;
    ULONG         MaxPartitionCount;
}
alias DRIVE_LAYOUT_INFORMATION_GPT* PDRIVE_LAYOUT_INFORMATION_GPT;

struct DRIVE_LAYOUT_INFORMATION_MBR {
    ULONG Signature;
}
alias DRIVE_LAYOUT_INFORMATION_MBR* PDRIVE_LAYOUT_INFORMATION_MBR;

struct PARTITION_INFORMATION_MBR {
    BYTE    PartitionType;
    BOOLEAN BootIndicator;
    BOOLEAN RecognizedPartition;
    DWORD   HiddenSectors;
}

struct PARTITION_INFORMATION_GPT {
    GUID      PartitionType;
    GUID      PartitionId;
    DWORD64   Attributes;
    WCHAR[36] Name;
}

struct PARTITION_INFORMATION_EX {
    PARTITION_STYLE PartitionStyle;
    LARGE_INTEGER   StartingOffset;
    LARGE_INTEGER   PartitionLength;
    DWORD           PartitionNumber;
    BOOLEAN         RewritePartition;
    union {
        PARTITION_INFORMATION_MBR Mbr;
        PARTITION_INFORMATION_GPT Gpt;
    }
}

struct DRIVE_LAYOUT_INFORMATION_EX {
    DWORD PartitionStyle;
    DWORD PartitionCount;
    union {
        DRIVE_LAYOUT_INFORMATION_MBR Mbr;
        DRIVE_LAYOUT_INFORMATION_GPT Gpt;
    }
    PARTITION_INFORMATION_EX _PartitionEntry;

    PARTITION_INFORMATION_EX* PartitionEntry() return { return &_PartitionEntry; }
}
alias DRIVE_LAYOUT_INFORMATION_EX* PDRIVE_LAYOUT_INFORMATION_EX;

struct MOVE_FILE_DATA {
    HANDLE FileHandle;
    LARGE_INTEGER StartingVcn;
    LARGE_INTEGER StartingLcn;
    DWORD ClusterCount;
}
alias MOVE_FILE_DATA* PMOVE_FILE_DATA;

struct PERF_BIN {
    DWORD     NumberOfBins;
    DWORD     TypeOfBin;
    BIN_RANGE _BinsRanges;

    BIN_RANGE* BinsRanges() return { return &_BinsRanges; }
}
alias PERF_BIN* PPERF_BIN;

struct PREVENT_MEDIA_REMOVAL {
    BOOLEAN PreventMediaRemoval;
}
alias PREVENT_MEDIA_REMOVAL* PPREVENT_MEDIA_REMOVAL;

struct RETRIEVAL_POINTERS_BUFFER {
    DWORD         ExtentCount;
    LARGE_INTEGER StartingVcn;
    // In MinGW, this is declared as struct { ... } Extents[1];
    struct Extent {
        LARGE_INTEGER NextVcn;
        LARGE_INTEGER Lcn;
    }
    Extent _Extents;

    Extent* Extents() return { return &_Extents; }
}
alias RETRIEVAL_POINTERS_BUFFER* PRETRIEVAL_POINTERS_BUFFER;

struct REASSIGN_BLOCKS {
    WORD  Reserved;
    WORD  Count;
    DWORD _BlockNumber;

    DWORD* BlockNumber() return { return &_BlockNumber; }
}
alias REASSIGN_BLOCKS* PREASSIGN_BLOCKS;

struct SET_PARTITION_INFORMATION {
    BYTE PartitionType;
}
alias SET_PARTITION_INFORMATION* PSET_PARTITION_INFORMATION;

struct STARTING_LCN_INPUT_BUFFER {
    LARGE_INTEGER StartingLcn;
}
alias STARTING_LCN_INPUT_BUFFER* PSTARTING_LCN_INPUT_BUFFER;

struct STARTING_VCN_INPUT_BUFFER {
    LARGE_INTEGER StartingVcn;
}
alias STARTING_VCN_INPUT_BUFFER* PSTARTING_VCN_INPUT_BUFFER;

struct VERIFY_INFORMATION {
    LARGE_INTEGER StartingOffset;
    DWORD         Length;
}
alias VERIFY_INFORMATION* PVERIFY_INFORMATION;

struct VOLUME_BITMAP_BUFFER {
    LARGE_INTEGER StartingLcn;
    LARGE_INTEGER BitmapSize;
    BYTE          _Buffer;

    BYTE* Buffer() return { return &_Buffer; }
}
alias VOLUME_BITMAP_BUFFER* PVOLUME_BITMAP_BUFFER;

struct NTFS_VOLUME_DATA_BUFFER {
    LARGE_INTEGER VolumeSerialNumber;
    LARGE_INTEGER NumberSectors;
    LARGE_INTEGER TotalClusters;
    LARGE_INTEGER FreeClusters;
    LARGE_INTEGER TotalReserved;
    DWORD         BytesPerSector;
    DWORD         BytesPerCluster;
    DWORD         BytesPerFileRecordSegment;
    DWORD         ClustersPerFileRecordSegment;
    LARGE_INTEGER MftValidDataLength;
    LARGE_INTEGER MftStartLcn;
    LARGE_INTEGER Mft2StartLcn;
    LARGE_INTEGER MftZoneStart;
    LARGE_INTEGER MftZoneEnd;
}
alias NTFS_VOLUME_DATA_BUFFER* PNTFS_VOLUME_DATA_BUFFER;


bool IsRecognizedPartition()(BYTE t) {
    return ((t & PARTITION_NTFT)
      && ((t & ~VALID_NTFT) == PARTITION_FAT_12
        || (t & ~VALID_NTFT) == PARTITION_FAT_16
        || (t & ~VALID_NTFT) == PARTITION_IFS
        || (t & ~VALID_NTFT) == PARTITION_HUGE
        || (t & ~VALID_NTFT) == PARTITION_FAT32
        || (t & ~VALID_NTFT) == PARTITION_FAT32_XINT13
        || (t & ~VALID_NTFT) == PARTITION_XINT13))
      || (t & ~PARTITION_NTFT) == PARTITION_FAT_12
      || (t & ~PARTITION_NTFT) == PARTITION_FAT_16
      || (t & ~PARTITION_NTFT) == PARTITION_IFS
      || (t & ~PARTITION_NTFT) == PARTITION_HUGE
      || (t & ~PARTITION_NTFT) == PARTITION_FAT32
      || (t & ~PARTITION_NTFT) == PARTITION_FAT32_XINT13
      || (t & ~PARTITION_NTFT) == PARTITION_XINT13;
}

bool IsContainerPartition()(BYTE t) {
    return ((t & PARTITION_NTFT)
      && ((t & ~VALID_NTFT) == PARTITION_EXTENDED
        || (t & ~VALID_NTFT) == PARTITION_XINT13_EXTENDED))
      || (t & ~PARTITION_NTFT) == PARTITION_EXTENDED
      || (t & ~PARTITION_NTFT) == PARTITION_XINT13_EXTENDED;
}
