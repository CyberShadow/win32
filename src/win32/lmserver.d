/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: Placed into public domain
 * Source: $(DRUNTIMESRC src/core/sys/windows/_lmserver.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.lmserver for the auto-generated win32 package.
module win32.lmserver;

import win32.winsvc;
private import win32.lmcons, win32.windef;

struct SERVER_INFO_100 {
	DWORD  sv100_platform_id;
	LPWSTR sv100_name;
}
alias SERVER_INFO_100* PSERVER_INFO_100, LPSERVER_INFO_100;

struct SERVER_INFO_101 {
	DWORD  sv101_platform_id;
	LPWSTR sv101_name;
	DWORD  sv101_version_major;
	DWORD  sv101_version_minor;
	DWORD  sv101_type;
	LPWSTR sv101_comment;
}
alias SERVER_INFO_101* PSERVER_INFO_101, LPSERVER_INFO_101;

struct SERVER_INFO_102 {
	DWORD  sv102_platform_id;
	LPWSTR sv102_name;
	DWORD  sv102_version_major;
	DWORD  sv102_version_minor;
	DWORD  sv102_type;
	LPWSTR sv102_comment;
	DWORD  sv102_users;
	LONG   sv102_disc;
	BOOL   sv102_hidden;
	DWORD  sv102_announce;
	DWORD  sv102_anndelta;
	DWORD  sv102_licenses;
	LPWSTR sv102_userpath;
}
alias SERVER_INFO_102* PSERVER_INFO_102, LPSERVER_INFO_102;

struct SERVER_INFO_402 {
	DWORD  sv402_ulist_mtime;
	DWORD  sv402_glist_mtime;
	DWORD  sv402_alist_mtime;
	LPWSTR sv402_alerts;
	DWORD  sv402_security;
	DWORD  sv402_numadmin;
	DWORD  sv402_lanmask;
	LPWSTR sv402_guestacct;
	DWORD  sv402_chdevs;
	DWORD  sv402_chdevq;
	DWORD  sv402_chdevjobs;
	DWORD  sv402_connections;
	DWORD  sv402_shares;
	DWORD  sv402_openfiles;
	DWORD  sv402_sessopens;
	DWORD  sv402_sessvcs;
	DWORD  sv402_sessreqs;
	DWORD  sv402_opensearch;
	DWORD  sv402_activelocks;
	DWORD  sv402_numreqbuf;
	DWORD  sv402_sizreqbuf;
	DWORD  sv402_numbigbuf;
	DWORD  sv402_numfiletasks;
	DWORD  sv402_alertsched;
	DWORD  sv402_erroralert;
	DWORD  sv402_logonalert;
	DWORD  sv402_accessalert;
	DWORD  sv402_diskalert;
	DWORD  sv402_netioalert;
	DWORD  sv402_maxauditsz;
	LPWSTR sv402_srvheuristics;
}
alias SERVER_INFO_402* PSERVER_INFO_402, LPSERVER_INFO_402;

struct SERVER_INFO_403 {
	DWORD  sv403_ulist_mtime;
	DWORD  sv403_glist_mtime;
	DWORD  sv403_alist_mtime;
	LPWSTR sv403_alerts;
	DWORD  sv403_security;
	DWORD  sv403_numadmin;
	DWORD  sv403_lanmask;
	LPWSTR sv403_guestacct;
	DWORD  sv403_chdevs;
	DWORD  sv403_chdevq;
	DWORD  sv403_chdevjobs;
	DWORD  sv403_connections;
	DWORD  sv403_shares;
	DWORD  sv403_openfiles;
	DWORD  sv403_sessopens;
	DWORD  sv403_sessvcs;
	DWORD  sv403_sessreqs;
	DWORD  sv403_opensearch;
	DWORD  sv403_activelocks;
	DWORD  sv403_numreqbuf;
	DWORD  sv403_sizreqbuf;
	DWORD  sv403_numbigbuf;
	DWORD  sv403_numfiletasks;
	DWORD  sv403_alertsched;
	DWORD  sv403_erroralert;
	DWORD  sv403_logonalert;
	DWORD  sv403_accessalert;
	DWORD  sv403_diskalert;
	DWORD  sv403_netioalert;
	DWORD  sv403_maxauditsz;
	LPWSTR sv403_srvheuristics;
	DWORD  sv403_auditedevents;
	DWORD  sv403_autoprofile;
	LPWSTR sv403_autopath;
}
alias SERVER_INFO_403* PSERVER_INFO_403, LPSERVER_INFO_403;

struct SERVER_INFO_502 {
	DWORD sv502_sessopens;
	DWORD sv502_sessvcs;
	DWORD sv502_opensearch;
	DWORD sv502_sizreqbuf;
	DWORD sv502_initworkitems;
	DWORD sv502_maxworkitems;
	DWORD sv502_rawworkitems;
	DWORD sv502_irpstacksize;
	DWORD sv502_maxrawbuflen;
	DWORD sv502_sessusers;
	DWORD sv502_sessconns;
	DWORD sv502_maxpagedmemoryusage;
	DWORD sv502_maxnonpagedmemoryusage;
	BOOL  sv502_enablesoftcompat;
	BOOL  sv502_enableforcedlogoff;
	BOOL  sv502_timesource;
	BOOL  sv502_acceptdownlevelapis;
	BOOL  sv502_lmannounce;
}
alias SERVER_INFO_502* PSERVER_INFO_502, LPSERVER_INFO_502;

struct SERVER_INFO_503 {
	DWORD  sv503_sessopens;
	DWORD  sv503_sessvcs;
	DWORD  sv503_opensearch;
	DWORD  sv503_sizreqbuf;
	DWORD  sv503_initworkitems;
	DWORD  sv503_maxworkitems;
	DWORD  sv503_rawworkitems;
	DWORD  sv503_irpstacksize;
	DWORD  sv503_maxrawbuflen;
	DWORD  sv503_sessusers;
	DWORD  sv503_sessconns;
	DWORD  sv503_maxpagedmemoryusage;
	DWORD  sv503_maxnonpagedmemoryusage;
	BOOL   sv503_enablesoftcompat;
	BOOL   sv503_enableforcedlogoff;
	BOOL   sv503_timesource;
	BOOL   sv503_acceptdownlevelapis;
	BOOL   sv503_lmannounce;
	LPWSTR sv503_domain;
	DWORD  sv503_maxcopyreadlen;
	DWORD  sv503_maxcopywritelen;
	DWORD  sv503_minkeepsearch;
	DWORD  sv503_maxkeepsearch;
	DWORD  sv503_minkeepcomplsearch;
	DWORD  sv503_maxkeepcomplsearch;
	DWORD  sv503_threadcountadd;
	DWORD  sv503_numblockthreads;
	DWORD  sv503_scavtimeout;
	DWORD  sv503_minrcvqueue;
	DWORD  sv503_minfreeworkitems;
	DWORD  sv503_xactmemsize;
	DWORD  sv503_threadpriority;
	DWORD  sv503_maxmpxct;
	DWORD  sv503_oplockbreakwait;
	DWORD  sv503_oplockbreakresponsewait;
	BOOL   sv503_enableoplocks;
	BOOL   sv503_enableoplockforceclose;
	BOOL   sv503_enablefcbopens;
	BOOL   sv503_enableraw;
	BOOL   sv503_enablesharednetdrives;
	DWORD  sv503_minfreeconnections;
	DWORD  sv503_maxfreeconnections;
}
alias SERVER_INFO_503* PSERVER_INFO_503, LPSERVER_INFO_503;

struct SERVER_INFO_599 {
	DWORD  sv599_sessopens;
	DWORD  sv599_sessvcs;
	DWORD  sv599_opensearch;
	DWORD  sv599_sizreqbuf;
	DWORD  sv599_initworkitems;
	DWORD  sv599_maxworkitems;
	DWORD  sv599_rawworkitems;
	DWORD  sv599_irpstacksize;
	DWORD  sv599_maxrawbuflen;
	DWORD  sv599_sessusers;
	DWORD  sv599_sessconns;
	DWORD  sv599_maxpagedmemoryusage;
	DWORD  sv599_maxnonpagedmemoryusage;
	BOOL   sv599_enablesoftcompat;
	BOOL   sv599_enableforcedlogoff;
	BOOL   sv599_timesource;
	BOOL   sv599_acceptdownlevelapis;
	BOOL   sv599_lmannounce;
	LPWSTR sv599_domain;
	DWORD  sv599_maxcopyreadlen;
	DWORD  sv599_maxcopywritelen;
	DWORD  sv599_minkeepsearch;
	DWORD  sv599_maxkeepsearch;
	DWORD  sv599_minkeepcomplsearch;
	DWORD  sv599_maxkeepcomplsearch;
	DWORD  sv599_threadcountadd;
	DWORD  sv599_numblockthreads;
	DWORD  sv599_scavtimeout;
	DWORD  sv599_minrcvqueue;
	DWORD  sv599_minfreeworkitems;
	DWORD  sv599_xactmemsize;
	DWORD  sv599_threadpriority;
	DWORD  sv599_maxmpxct;
	DWORD  sv599_oplockbreakwait;
	DWORD  sv599_oplockbreakresponsewait;
	BOOL   sv599_enableoplocks;
	BOOL   sv599_enableoplockforceclose;
	BOOL   sv599_enablefcbopens;
	BOOL   sv599_enableraw;
	BOOL   sv599_enablesharednetdrives;
	DWORD  sv599_minfreeconnections;
	DWORD  sv599_maxfreeconnections;
	DWORD  sv599_initsesstable;
	DWORD  sv599_initconntable;
	DWORD  sv599_initfiletable;
	DWORD  sv599_initsearchtable;
	DWORD  sv599_alertschedule;
	DWORD  sv599_errorthreshold;
	DWORD  sv599_networkerrorthreshold;
	DWORD  sv599_diskspacethreshold;
	DWORD  sv599_reserved;
	DWORD  sv599_maxlinkdelay;
	DWORD  sv599_minlinkthroughput;
	DWORD  sv599_linkinfovalidtime;
	DWORD  sv599_scavqosinfoupdatetime;
	DWORD  sv599_maxworkitemidletime;
}
alias SERVER_INFO_599* PSERVER_INFO_599, LPSERVER_INFO_599;

struct SERVER_INFO_598 {
	DWORD sv598_maxrawworkitems;
	DWORD sv598_maxthreadsperqueue;
	DWORD sv598_producttype;
	DWORD sv598_serversize;
	DWORD sv598_connectionlessautodisc;
	DWORD sv598_sharingviolationretries;
	DWORD sv598_sharingviolationdelay;
	DWORD sv598_maxglobalopensearch;
	DWORD sv598_removeduplicatesearches;
	DWORD sv598_lockviolationoffset;
	DWORD sv598_lockviolationdelay;
	DWORD sv598_mdlreadswitchover;
	DWORD sv598_cachedopenlimit;
	DWORD sv598_otherqueueaffinity;
	BOOL  sv598_restrictnullsessaccess;
	BOOL  sv598_enablewfw311directipx;
	DWORD sv598_queuesamplesecs;
	DWORD sv598_balancecount;
	DWORD sv598_preferredaffinity;
	DWORD sv598_maxfreerfcbs;
	DWORD sv598_maxfreemfcbs;
	DWORD sv598_maxfreelfcbs;
	DWORD sv598_maxfreepagedpoolchunks;
	DWORD sv598_minpagedpoolchunksize;
	DWORD sv598_maxpagedpoolchunksize;
	BOOL  sv598_sendsfrompreferredprocessor;
}
alias SERVER_INFO_598* PSERVER_INFO_598, LPSERVER_INFO_598;

struct SERVER_INFO_1005 {
	LPWSTR sv1005_comment;
}
alias SERVER_INFO_1005* PSERVER_INFO_1005, LPSERVER_INFO_1005;

struct SERVER_INFO_1107 {
	DWORD sv1107_users;
}
alias SERVER_INFO_1107* PSERVER_INFO_1107, LPSERVER_INFO_1107;

struct SERVER_INFO_1010 {
	LONG sv1010_disc;
}
alias SERVER_INFO_1010* PSERVER_INFO_1010, LPSERVER_INFO_1010;

struct SERVER_INFO_1016 {
	BOOL sv1016_hidden;
}
alias SERVER_INFO_1016* PSERVER_INFO_1016, LPSERVER_INFO_1016;

struct SERVER_INFO_1017 {
	DWORD sv1017_announce;
}
alias SERVER_INFO_1017* PSERVER_INFO_1017, LPSERVER_INFO_1017;

struct SERVER_INFO_1018 {
	DWORD sv1018_anndelta;
}
alias SERVER_INFO_1018* PSERVER_INFO_1018, LPSERVER_INFO_1018;

struct SERVER_INFO_1501 {
	DWORD sv1501_sessopens;
}
alias SERVER_INFO_1501* PSERVER_INFO_1501, LPSERVER_INFO_1501;

struct SERVER_INFO_1502 {
	DWORD sv1502_sessvcs;
}
alias SERVER_INFO_1502* PSERVER_INFO_1502, LPSERVER_INFO_1502;

struct SERVER_INFO_1503 {
	DWORD sv1503_opensearch;
}
alias SERVER_INFO_1503* PSERVER_INFO_1503, LPSERVER_INFO_1503;

struct SERVER_INFO_1506 {
	DWORD sv1506_maxworkitems;
}
alias SERVER_INFO_1506* PSERVER_INFO_1506, LPSERVER_INFO_1506;

struct SERVER_INFO_1509 {
	DWORD sv1509_maxrawbuflen;
}
alias SERVER_INFO_1509* PSERVER_INFO_1509, LPSERVER_INFO_1509;

struct SERVER_INFO_1510 {
	DWORD sv1510_sessusers;
}
alias SERVER_INFO_1510* PSERVER_INFO_1510, LPSERVER_INFO_1510;

struct SERVER_INFO_1511 {
	DWORD sv1511_sessconns;
} alias SERVER_INFO_1511* PSERVER_INFO_1511, LPSERVER_INFO_1511;

struct SERVER_INFO_1512 {
	DWORD sv1512_maxnonpagedmemoryusage;
}
alias SERVER_INFO_1512* PSERVER_INFO_1512, LPSERVER_INFO_1512;

struct SERVER_INFO_1513 {
	DWORD sv1513_maxpagedmemoryusage;
}
alias SERVER_INFO_1513* PSERVER_INFO_1513, LPSERVER_INFO_1513;

struct SERVER_INFO_1514 {
	BOOL sv1514_enablesoftcompat;
}
alias SERVER_INFO_1514* PSERVER_INFO_1514, LPSERVER_INFO_1514;

struct SERVER_INFO_1515 {
	BOOL sv1515_enableforcedlogoff;
}
alias SERVER_INFO_1515* PSERVER_INFO_1515, LPSERVER_INFO_1515;

struct SERVER_INFO_1516 {
	BOOL sv1516_timesource;
}
alias SERVER_INFO_1516* PSERVER_INFO_1516, LPSERVER_INFO_1516;

struct SERVER_INFO_1518 {
	BOOL sv1518_lmannounce;
}
alias SERVER_INFO_1518* PSERVER_INFO_1518, LPSERVER_INFO_1518;

struct SERVER_INFO_1520 {
	DWORD sv1520_maxcopyreadlen;
}
alias SERVER_INFO_1520* PSERVER_INFO_1520, LPSERVER_INFO_1520;

struct SERVER_INFO_1521 {
	DWORD sv1521_maxcopywritelen;
}
alias SERVER_INFO_1521* PSERVER_INFO_1521, LPSERVER_INFO_1521;

struct SERVER_INFO_1522 {
	DWORD sv1522_minkeepsearch;
}
alias SERVER_INFO_1522* PSERVER_INFO_1522, LPSERVER_INFO_1522;

struct SERVER_INFO_1523 {
	DWORD sv1523_maxkeepsearch;
}
alias SERVER_INFO_1523* PSERVER_INFO_1523, LPSERVER_INFO_1523;

struct SERVER_INFO_1524 {
	DWORD sv1524_minkeepcomplsearch;
}
alias SERVER_INFO_1524* PSERVER_INFO_1524, LPSERVER_INFO_1524;

struct SERVER_INFO_1525 {
	DWORD sv1525_maxkeepcomplsearch;
}
alias SERVER_INFO_1525* PSERVER_INFO_1525, LPSERVER_INFO_1525;

struct SERVER_INFO_1528 {
	DWORD sv1528_scavtimeout;
}
alias SERVER_INFO_1528* PSERVER_INFO_1528, LPSERVER_INFO_1528;

struct SERVER_INFO_1529 {
	DWORD sv1529_minrcvqueue;
}
alias SERVER_INFO_1529* PSERVER_INFO_1529, LPSERVER_INFO_1529;

struct SERVER_INFO_1530 {
	DWORD sv1530_minfreeworkitems;
}
alias SERVER_INFO_1530* PSERVER_INFO_1530, LPSERVER_INFO_1530;

struct SERVER_INFO_1533 {
	DWORD sv1533_maxmpxct;
}
alias SERVER_INFO_1533* PSERVER_INFO_1533, LPSERVER_INFO_1533;

struct SERVER_INFO_1534 {
	DWORD sv1534_oplockbreakwait;
}
alias SERVER_INFO_1534* PSERVER_INFO_1534, LPSERVER_INFO_1534;

struct SERVER_INFO_1535 {
	DWORD sv1535_oplockbreakresponsewait;
}
alias SERVER_INFO_1535* PSERVER_INFO_1535, LPSERVER_INFO_1535;

struct SERVER_INFO_1536 {
	BOOL sv1536_enableoplocks;
}
alias SERVER_INFO_1536* PSERVER_INFO_1536, LPSERVER_INFO_1536;

struct SERVER_INFO_1537 {
	BOOL sv1537_enableoplockforceclose;
}
alias SERVER_INFO_1537* PSERVER_INFO_1537, LPSERVER_INFO_1537;

struct SERVER_INFO_1538 {
	BOOL sv1538_enablefcbopens;
}
alias SERVER_INFO_1538* PSERVER_INFO_1538, LPSERVER_INFO_1538;

struct SERVER_INFO_1539 {
	BOOL sv1539_enableraw;
}
alias SERVER_INFO_1539* PSERVER_INFO_1539, LPSERVER_INFO_1539;

struct SERVER_INFO_1540 {
	BOOL sv1540_enablesharednetdrives;
}
alias SERVER_INFO_1540* PSERVER_INFO_1540, LPSERVER_INFO_1540;

struct SERVER_INFO_1541 {
	BOOL sv1541_minfreeconnections;
}
alias SERVER_INFO_1541* PSERVER_INFO_1541, LPSERVER_INFO_1541;

struct SERVER_INFO_1542 {
	BOOL sv1542_maxfreeconnections;
}
alias SERVER_INFO_1542* PSERVER_INFO_1542, LPSERVER_INFO_1542;

struct SERVER_INFO_1543 {
	DWORD sv1543_initsesstable;
}
alias SERVER_INFO_1543* PSERVER_INFO_1543, LPSERVER_INFO_1543;

struct SERVER_INFO_1544 {
	DWORD sv1544_initconntable;
}
alias SERVER_INFO_1544* PSERVER_INFO_1544, LPSERVER_INFO_1544;

struct SERVER_INFO_1545 {
	DWORD sv1545_initfiletable;
}
alias SERVER_INFO_1545* PSERVER_INFO_1545, LPSERVER_INFO_1545;

struct SERVER_INFO_1546 {
	DWORD sv1546_initsearchtable;
}
alias SERVER_INFO_1546* PSERVER_INFO_1546, LPSERVER_INFO_1546;

struct SERVER_INFO_1547 {
	DWORD sv1547_alertschedule;
}
alias SERVER_INFO_1547* PSERVER_INFO_1547, LPSERVER_INFO_1547;

struct SERVER_INFO_1548 {
	DWORD sv1548_errorthreshold;
}
alias SERVER_INFO_1548* PSERVER_INFO_1548, LPSERVER_INFO_1548;

struct SERVER_INFO_1549 {
	DWORD sv1549_networkerrorthreshold;
}
alias SERVER_INFO_1549* PSERVER_INFO_1549, LPSERVER_INFO_1549;

struct SERVER_INFO_1550 {
	DWORD sv1550_diskspacethreshold;
}
alias SERVER_INFO_1550* PSERVER_INFO_1550, LPSERVER_INFO_1550;

struct SERVER_INFO_1552 {
	DWORD sv1552_maxlinkdelay;
}
alias SERVER_INFO_1552* PSERVER_INFO_1552, LPSERVER_INFO_1552;

struct SERVER_INFO_1553 {
	DWORD sv1553_minlinkthroughput;
}
alias SERVER_INFO_1553* PSERVER_INFO_1553, LPSERVER_INFO_1553;

struct SERVER_INFO_1554 {
	DWORD sv1554_linkinfovalidtime;
}
alias SERVER_INFO_1554* PSERVER_INFO_1554, LPSERVER_INFO_1554;

struct SERVER_INFO_1555 {
	DWORD sv1555_scavqosinfoupdatetime;
}
alias SERVER_INFO_1555* PSERVER_INFO_1555, LPSERVER_INFO_1555;

struct SERVER_INFO_1556 {
	DWORD sv1556_maxworkitemidletime;
}
alias SERVER_INFO_1556* PSERVER_INFO_1556, LPSERVER_INFO_1556;

struct SERVER_INFO_1557 {
	DWORD sv1557_maxrawworkitems;
}
alias SERVER_INFO_1557* PSERVER_INFO_1557, LPSERVER_INFO_1557;

struct SERVER_INFO_1560 {
	DWORD sv1560_producttype;
}
alias SERVER_INFO_1560* PSERVER_INFO_1560, LPSERVER_INFO_1560;

struct SERVER_INFO_1561 {
	DWORD sv1561_serversize;
}
alias SERVER_INFO_1561* PSERVER_INFO_1561, LPSERVER_INFO_1561;

struct SERVER_INFO_1562 {
	DWORD sv1562_connectionlessautodisc;
}
alias SERVER_INFO_1562* PSERVER_INFO_1562, LPSERVER_INFO_1562;

struct SERVER_INFO_1563 {
	DWORD sv1563_sharingviolationretries;
}
alias SERVER_INFO_1563* PSERVER_INFO_1563, LPSERVER_INFO_1563;

struct SERVER_INFO_1564 {
	DWORD sv1564_sharingviolationdelay;
}
alias SERVER_INFO_1564* PSERVER_INFO_1564, LPSERVER_INFO_1564;

struct SERVER_INFO_1565 {
	DWORD sv1565_maxglobalopensearch;
}
alias SERVER_INFO_1565* PSERVER_INFO_1565, LPSERVER_INFO_1565;

struct SERVER_INFO_1566 {
	BOOL sv1566_removeduplicatesearches;
}
alias SERVER_INFO_1566* PSERVER_INFO_1566, LPSERVER_INFO_1566;

struct SERVER_INFO_1567 {
	DWORD sv1567_lockviolationretries;
}
alias SERVER_INFO_1567* PSERVER_INFO_1567, LPSERVER_INFO_1567;

struct SERVER_INFO_1568 {
	DWORD sv1568_lockviolationoffset;
}
alias SERVER_INFO_1568* PSERVER_INFO_1568, LPSERVER_INFO_1568;

struct SERVER_INFO_1569 {
	DWORD sv1569_lockviolationdelay;
}
alias SERVER_INFO_1569* PSERVER_INFO_1569, LPSERVER_INFO_1569;

struct SERVER_INFO_1570 {
	DWORD sv1570_mdlreadswitchover;
}
alias SERVER_INFO_1570* PSERVER_INFO_1570, LPSERVER_INFO_1570;

struct SERVER_INFO_1571 {
	DWORD sv1571_cachedopenlimit;
}
alias SERVER_INFO_1571* PSERVER_INFO_1571, LPSERVER_INFO_1571;

struct SERVER_INFO_1572 {
	DWORD sv1572_criticalthreads;
}
alias SERVER_INFO_1572* PSERVER_INFO_1572, LPSERVER_INFO_1572;

struct SERVER_INFO_1573 {
	DWORD sv1573_restrictnullsessaccess;
}
alias SERVER_INFO_1573* PSERVER_INFO_1573, LPSERVER_INFO_1573;

struct SERVER_INFO_1574 {
	DWORD sv1574_enablewfw311directipx;
}
alias SERVER_INFO_1574* PSERVER_INFO_1574, LPSERVER_INFO_1574;

struct SERVER_INFO_1575 {
	DWORD sv1575_otherqueueaffinity;
}
alias SERVER_INFO_1575* PSERVER_INFO_1575, LPSERVER_INFO_1575;

struct SERVER_INFO_1576 {
	DWORD sv1576_queuesamplesecs;
}
alias SERVER_INFO_1576* PSERVER_INFO_1576, LPSERVER_INFO_1576;

struct SERVER_INFO_1577 {
	DWORD sv1577_balancecount;
}
alias SERVER_INFO_1577* PSERVER_INFO_1577, LPSERVER_INFO_1577;

struct SERVER_INFO_1578 {
	DWORD sv1578_preferredaffinity;
}
alias SERVER_INFO_1578* PSERVER_INFO_1578, LPSERVER_INFO_1578;

struct SERVER_INFO_1579 {
	DWORD sv1579_maxfreerfcbs;
}
alias SERVER_INFO_1579* PSERVER_INFO_1579, LPSERVER_INFO_1579;

struct SERVER_INFO_1580 {
	DWORD sv1580_maxfreemfcbs;
}
alias SERVER_INFO_1580* PSERVER_INFO_1580, LPSERVER_INFO_1580;

struct SERVER_INFO_1581 {
	DWORD sv1581_maxfreemlcbs;
}
alias SERVER_INFO_1581* PSERVER_INFO_1581, LPSERVER_INFO_1581;

struct SERVER_INFO_1582 {
	DWORD sv1582_maxfreepagedpoolchunks;
}
alias SERVER_INFO_1582* PSERVER_INFO_1582, LPSERVER_INFO_1582;

struct SERVER_INFO_1583 {
	DWORD sv1583_minpagedpoolchunksize;
}
alias SERVER_INFO_1583* PSERVER_INFO_1583, LPSERVER_INFO_1583;

struct SERVER_INFO_1584 {
	DWORD sv1584_maxpagedpoolchunksize;
}
alias SERVER_INFO_1584* PSERVER_INFO_1584, LPSERVER_INFO_1584;

struct SERVER_INFO_1585 {
	BOOL sv1585_sendsfrompreferredprocessor;
}
alias SERVER_INFO_1585* PSERVER_INFO_1585, LPSERVER_INFO_1585;

struct SERVER_INFO_1586 {
	BOOL sv1586_maxthreadsperqueue;
}
alias SERVER_INFO_1586* PSERVER_INFO_1586, LPSERVER_INFO_1586;

struct SERVER_TRANSPORT_INFO_0 {
	DWORD  svti0_numberofvcs;
	LPWSTR svti0_transportname;
	PBYTE  svti0_transportaddress;
	DWORD  svti0_transportaddresslength;
	LPWSTR svti0_networkaddress;
}
alias SERVER_TRANSPORT_INFO_0* PSERVER_TRANSPORT_INFO_0,
  LPSERVER_TRANSPORT_INFO_0;

extern (Windows):
NET_API_STATUS NetServerEnum(LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,DWORD,LPCWSTR,PDWORD);
NET_API_STATUS NetServerEnumEx(LPCWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,DWORD,LPCWSTR,LPCWSTR);
NET_API_STATUS NetServerGetInfo(LPWSTR,DWORD,PBYTE*);
NET_API_STATUS NetServerSetInfo(LPWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetServerSetInfoCommandLine(WORD,LPWSTR*);
NET_API_STATUS NetServerDiskEnum(LPWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetServerComputerNameAdd(LPWSTR,LPWSTR,LPWSTR);
NET_API_STATUS NetServerComputerNameDel(LPWSTR,LPWSTR);
NET_API_STATUS NetServerTransportAdd(LPWSTR,DWORD,PBYTE);
NET_API_STATUS NetServerTransportAddEx(LPWSTR,DWORD,PBYTE);
NET_API_STATUS NetServerTransportDel(LPWSTR,DWORD,PBYTE);
NET_API_STATUS NetServerTransportEnum(LPWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
BOOL SetServiceBits(SERVICE_STATUS_HANDLE,DWORD,BOOL,BOOL);

const SVI1_NUM_ELEMENTS=5;
const SVI2_NUM_ELEMENTS=40;
const SVI3_NUM_ELEMENTS=44;
const SV_MAX_CMD_LEN=PATHLEN;
const SW_AUTOPROF_LOAD_MASK=1;
const SW_AUTOPROF_SAVE_MASK=2;
const SV_MAX_SRV_HEUR_LEN=32;
const SV_USERS_PER_LICENSE=5;
const SV_PLATFORM_ID_OS2=400;
const SV_PLATFORM_ID_NT=500;
const MAJOR_VERSION_MASK=15;
const SV_TYPE_WORKSTATION=1;
const SV_TYPE_SERVER=2;
const SV_TYPE_SQLSERVER=4;
const SV_TYPE_DOMAIN_CTRL=8;
const SV_TYPE_DOMAIN_BAKCTRL=16;
const SV_TYPE_TIME_SOURCE=32;
const SV_TYPE_AFP=64;
const SV_TYPE_NOVELL=128;
const SV_TYPE_DOMAIN_MEMBER=256;
const SV_TYPE_PRINTQ_SERVER=512;
const SV_TYPE_DIALIN_SERVER=1024;
const SV_TYPE_XENIX_SERVER=2048;
const SV_TYPE_SERVER_UNIX=SV_TYPE_XENIX_SERVER;
const SV_TYPE_NT=4096;
const SV_TYPE_WFW=8192;
const SV_TYPE_SERVER_MFPN=16384;
const SV_TYPE_SERVER_NT=32768;
const SV_TYPE_POTENTIAL_BROWSER=65536;
const SV_TYPE_BACKUP_BROWSER=0x20000;
const SV_TYPE_MASTER_BROWSER=0x40000;
const SV_TYPE_DOMAIN_MASTER=0x80000;
const SV_TYPE_SERVER_OSF=0x100000;
const SV_TYPE_SERVER_VMS=0x200000;
const SV_TYPE_WINDOWS=0x400000;
const SV_TYPE_ALTERNATE_XPORT=0x20000000;
const SV_TYPE_LOCAL_LIST_ONLY=0x40000000;
const SV_TYPE_DOMAIN_ENUM=0x80000000;
const SV_TYPE_ALL=0xFFFFFFFF;
const SV_NODISC=(-1);
const SV_USERSECURITY=1;
const SV_SHARESECURITY=0;
const SV_HIDDEN=1;
const SV_VISIBLE=0;
const SV_PLATFORM_ID_PARMNUM=101;
const SV_NAME_PARMNUM=102;
const SV_VERSION_MAJOR_PARMNUM=103;
const SV_VERSION_MINOR_PARMNUM=104;
const SV_TYPE_PARMNUM=105;
const SV_COMMENT_PARMNUM=5;
const SV_USERS_PARMNUM=107;
const SV_DISC_PARMNUM=10;
const SV_HIDDEN_PARMNUM=16;
const SV_ANNOUNCE_PARMNUM=17;
const SV_ANNDELTA_PARMNUM=18;
const SV_USERPATH_PARMNUM=112;
const SV_ULIST_MTIME_PARMNUM=401;
const SV_GLIST_MTIME_PARMNUM=402;
const SV_ALIST_MTIME_PARMNUM=403;
const SV_ALERTS_PARMNUM=11;
const SV_SECURITY_PARMNUM=405;
const SV_NUMADMIN_PARMNUM=406;
const SV_LANMASK_PARMNUM=407;
const SV_GUESTACC_PARMNUM=408;
const SV_CHDEVQ_PARMNUM=410;
const SV_CHDEVJOBS_PARMNUM=411;
const SV_CONNECTIONS_PARMNUM=412;
const SV_SHARES_PARMNUM=413;
const SV_OPENFILES_PARMNUM=414;
const SV_SESSREQS_PARMNUM=417;
const SV_ACTIVELOCKS_PARMNUM=419;
const SV_NUMREQBUF_PARMNUM=420;
const SV_NUMBIGBUF_PARMNUM=422;
const SV_NUMFILETASKS_PARMNUM=423;
const SV_ALERTSCHED_PARMNUM=37;
const SV_ERRORALERT_PARMNUM=38;
const SV_LOGONALERT_PARMNUM=39;
const SV_ACCESSALERT_PARMNUM=40;
const SV_DISKALERT_PARMNUM=41;
const SV_NETIOALERT_PARMNUM=42;
const SV_MAXAUDITSZ_PARMNUM=43;
const SV_SRVHEURISTICS_PARMNUM=431;
const SV_SESSOPENS_PARMNUM=501;
const SV_SESSVCS_PARMNUM=502;
const SV_OPENSEARCH_PARMNUM=503;
const SV_SIZREQBUF_PARMNUM=504;
const SV_INITWORKITEMS_PARMNUM=505;
const SV_MAXWORKITEMS_PARMNUM=506;
const SV_RAWWORKITEMS_PARMNUM=507;
const SV_IRPSTACKSIZE_PARMNUM=508;
const SV_MAXRAWBUFLEN_PARMNUM=509;
const SV_SESSUSERS_PARMNUM=510;
const SV_SESSCONNS_PARMNUM=511;
const SV_MAXNONPAGEDMEMORYUSAGE_PARMNUM=512;
const SV_MAXPAGEDMEMORYUSAGE_PARMNUM=513;
const SV_ENABLESOFTCOMPAT_PARMNUM=514;
const SV_ENABLEFORCEDLOGOFF_PARMNUM=515;
const SV_TIMESOURCE_PARMNUM=516;
const SV_ACCEPTDOWNLEVELAPIS_PARMNUM=517;
const SV_LMANNOUNCE_PARMNUM=518;
const SV_DOMAIN_PARMNUM=519;
const SV_MAXCOPYREADLEN_PARMNUM=520;
const SV_MAXCOPYWRITELEN_PARMNUM=521;
const SV_MINKEEPSEARCH_PARMNUM=522;
const SV_MAXKEEPSEARCH_PARMNUM=523;
const SV_MINKEEPCOMPLSEARCH_PARMNUM=524;
const SV_MAXKEEPCOMPLSEARCH_PARMNUM=525;
const SV_THREADCOUNTADD_PARMNUM=526;
const SV_NUMBLOCKTHREADS_PARMNUM=527;
const SV_SCAVTIMEOUT_PARMNUM=528;
const SV_MINRCVQUEUE_PARMNUM=529;
const SV_MINFREEWORKITEMS_PARMNUM=530;
const SV_XACTMEMSIZE_PARMNUM=531;
const SV_THREADPRIORITY_PARMNUM=532;
const SV_MAXMPXCT_PARMNUM=533;
const SV_OPLOCKBREAKWAIT_PARMNUM=534;
const SV_OPLOCKBREAKRESPONSEWAIT_PARMNUM=535;
const SV_ENABLEOPLOCKS_PARMNUM=536;
const SV_ENABLEOPLOCKFORCECLOSE_PARMNUM=537;
const SV_ENABLEFCBOPENS_PARMNUM=538;
const SV_ENABLERAW_PARMNUM=539;
const SV_ENABLESHAREDNETDRIVES_PARMNUM=540;
const SV_MINFREECONNECTIONS_PARMNUM=541;
const SV_MAXFREECONNECTIONS_PARMNUM=542;
const SV_INITSESSTABLE_PARMNUM=543;
const SV_INITCONNTABLE_PARMNUM=544;
const SV_INITFILETABLE_PARMNUM=545;
const SV_INITSEARCHTABLE_PARMNUM=546;
const SV_ALERTSCHEDULE_PARMNUM=547;
const SV_ERRORTHRESHOLD_PARMNUM=548;
const SV_NETWORKERRORTHRESHOLD_PARMNUM=549;
const SV_DISKSPACETHRESHOLD_PARMNUM=550;
const SV_MAXLINKDELAY_PARMNUM=552;
const SV_MINLINKTHROUGHPUT_PARMNUM=553;
const SV_LINKINFOVALIDTIME_PARMNUM=554;
const SV_SCAVQOSINFOUPDATETIME_PARMNUM=555;
const SV_MAXWORKITEMIDLETIME_PARMNUM=556;
const SV_MAXRAWWORKITEMS_PARMNUM=557;
const SV_PRODUCTTYPE_PARMNUM=560;
const SV_SERVERSIZE_PARMNUM=561;
const SV_CONNECTIONLESSAUTODISC_PARMNUM=562;
const SV_SHARINGVIOLATIONRETRIES_PARMNUM=563;
const SV_SHARINGVIOLATIONDELAY_PARMNUM=564;
const SV_MAXGLOBALOPENSEARCH_PARMNUM=565;
const SV_REMOVEDUPLICATESEARCHES_PARMNUM=566;
const SV_LOCKVIOLATIONRETRIES_PARMNUM=567;
const SV_LOCKVIOLATIONOFFSET_PARMNUM=568;
const SV_LOCKVIOLATIONDELAY_PARMNUM=569;
const SV_MDLREADSWITCHOVER_PARMNUM=570;
const SV_CACHEDOPENLIMIT_PARMNUM=571;
const SV_CRITICALTHREADS_PARMNUM=572;
const SV_RESTRICTNULLSESSACCESS_PARMNUM=573;
const SV_ENABLEWFW311DIRECTIPX_PARMNUM=574;
const SV_OTHERQUEUEAFFINITY_PARMNUM=575;
const SV_QUEUESAMPLESECS_PARMNUM=576;
const SV_BALANCECOUNT_PARMNUM=577;
const SV_PREFERREDAFFINITY_PARMNUM=578;
const SV_MAXFREERFCBS_PARMNUM=579;
const SV_MAXFREEMFCBS_PARMNUM=580;
const SV_MAXFREELFCBS_PARMNUM=581;
const SV_MAXFREEPAGEDPOOLCHUNKS_PARMNUM=582;
const SV_MINPAGEDPOOLCHUNKSIZE_PARMNUM=583;
const SV_MAXPAGEDPOOLCHUNKSIZE_PARMNUM=584;
const SV_SENDSFROMPREFERREDPROCESSOR_PARMNUM=585;
const SV_MAXTHREADSPERQUEUE_PARMNUM=586;
const SV_COMMENT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_COMMENT_PARMNUM);
const SV_USERS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_USERS_PARMNUM);
const SV_DISC_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_DISC_PARMNUM);
const SV_HIDDEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_HIDDEN_PARMNUM);
const SV_ANNOUNCE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ANNOUNCE_PARMNUM);
const SV_ANNDELTA_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ANNDELTA_PARMNUM);
const SV_SESSOPENS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SESSOPENS_PARMNUM);
const SV_SESSVCS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SESSVCS_PARMNUM);
const SV_OPENSEARCH_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_OPENSEARCH_PARMNUM);
const SV_MAXWORKITEMS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXWORKITEMS_PARMNUM);
const SV_MAXRAWBUFLEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXRAWBUFLEN_PARMNUM);
const SV_SESSUSERS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SESSUSERS_PARMNUM);
const SV_SESSCONNS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SESSCONNS_PARMNUM);
const SV_MAXNONPAGEDMEMORYUSAGE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXNONPAGEDMEMORYUSAGE_PARMNUM);
const SV_MAXPAGEDMEMORYUSAGE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXPAGEDMEMORYUSAGE_PARMNUM);
const SV_ENABLESOFTCOMPAT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLESOFTCOMPAT_PARMNUM);
const SV_ENABLEFORCEDLOGOFF_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLEFORCEDLOGOFF_PARMNUM);
const SV_TIMESOURCE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_TIMESOURCE_PARMNUM);
const SV_LMANNOUNCE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_LMANNOUNCE_PARMNUM);
const SV_MAXCOPYREADLEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXCOPYREADLEN_PARMNUM);
const SV_MAXCOPYWRITELEN_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXCOPYWRITELEN_PARMNUM);
const SV_MINKEEPSEARCH_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINKEEPSEARCH_PARMNUM);
const SV_MAXKEEPSEARCH_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXKEEPSEARCH_PARMNUM);
const SV_MINKEEPCOMPLSEARCH_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINKEEPCOMPLSEARCH_PARMNUM);
const SV_MAXKEEPCOMPLSEARCH_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXKEEPCOMPLSEARCH_PARMNUM);
const SV_SCAVTIMEOUT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SCAVTIMEOUT_PARMNUM);
const SV_MINRCVQUEUE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINRCVQUEUE_PARMNUM);
const SV_MINFREEWORKITEMS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINFREEWORKITEMS_PARMNUM);
const SV_MAXMPXCT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXMPXCT_PARMNUM);
const SV_OPLOCKBREAKWAIT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_OPLOCKBREAKWAIT_PARMNUM);
const SV_OPLOCKBREAKRESPONSEWAIT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_OPLOCKBREAKRESPONSEWAIT_PARMNUM);
const SV_ENABLEOPLOCKS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLEOPLOCKS_PARMNUM);
const SV_ENABLEOPLOCKFORCECLOSE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLEOPLOCKFORCECLOSE_PARMNUM);
const SV_ENABLEFCBOPENS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLEFCBOPENS_PARMNUM);
const SV_ENABLERAW_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLERAW_PARMNUM);
const SV_ENABLESHAREDNETDRIVES_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLESHAREDNETDRIVES_PARMNUM);
const SV_MINFREECONNECTIONS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINFREECONNECTIONS_PARMNUM);
const SV_MAXFREECONNECTIONS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXFREECONNECTIONS_PARMNUM);
const SV_INITSESSTABLE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_INITSESSTABLE_PARMNUM);
const SV_INITCONNTABLE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_INITCONNTABLE_PARMNUM);
const SV_INITFILETABLE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_INITFILETABLE_PARMNUM);
const SV_INITSEARCHTABLE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_INITSEARCHTABLE_PARMNUM);
const SV_ALERTSCHEDULE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ALERTSCHEDULE_PARMNUM);
const SV_ERRORTHRESHOLD_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ERRORTHRESHOLD_PARMNUM);
const SV_NETWORKERRORTHRESHOLD_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_NETWORKERRORTHRESHOLD_PARMNUM);
const SV_DISKSPACETHRESHOLD_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_DISKSPACETHRESHOLD_PARMNUM);
const SV_MAXLINKDELAY_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXLINKDELAY_PARMNUM);
const SV_MINLINKTHROUGHPUT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINLINKTHROUGHPUT_PARMNUM);
const SV_LINKINFOVALIDTIME_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_LINKINFOVALIDTIME_PARMNUM);
const SV_SCAVQOSINFOUPDATETIME_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SCAVQOSINFOUPDATETIME_PARMNUM);
const SV_MAXWORKITEMIDLETIME_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXWORKITEMIDLETIME_PARMNUM);
const SV_MAXRAWWORKITEMS_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXRAWWORKITEMS_PARMNUM);
const SV_PRODUCTTYPE_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_PRODUCTTYPE_PARMNUM);
const SV_SERVERSIZE_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SERVERSIZE_PARMNUM);
const SV_CONNECTIONLESSAUTODISC_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_CONNECTIONLESSAUTODISC_PARMNUM);
const SV_SHARINGVIOLATIONRETRIES_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SHARINGVIOLATIONRETRIES_PARMNUM);
const SV_SHARINGVIOLATIONDELAY_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SHARINGVIOLATIONDELAY_PARMNUM);
const SV_MAXGLOBALOPENSEARCH_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXGLOBALOPENSEARCH_PARMNUM);
const SV_REMOVEDUPLICATESEARCHES_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_REMOVEDUPLICATESEARCHES_PARMNUM);
const SV_LOCKVIOLATIONRETRIES_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_LOCKVIOLATIONRETRIES_PARMNUM);
const SV_LOCKVIOLATIONOFFSET_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_LOCKVIOLATIONOFFSET_PARMNUM);
const SV_LOCKVIOLATIONDELAY_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_LOCKVIOLATIONDELAY_PARMNUM);
const SV_MDLREADSWITCHOVER_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MDLREADSWITCHOVER_PARMNUM);
const SV_CACHEDOPENLIMIT_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_CACHEDOPENLIMIT_PARMNUM);
const SV_CRITICALTHREADS_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_CRITICALTHREADS_PARMNUM);
const SV_RESTRICTNULLSESSACCESS_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_RESTRICTNULLSESSACCESS_PARMNUM);
const SV_ENABLEWFW311DIRECTIPX_INFOLOEVEL=(PARMNUM_BASE_INFOLEVEL+SV_ENABLEWFW311DIRECTIPX_PARMNUM);
const SV_OTHERQUEUEAFFINITY_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_OTHERQUEUEAFFINITY_PARMNUM);
const SV_QUEUESAMPLESECS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_QUEUESAMPLESECS_PARMNUM);
const SV_BALANCECOUNT_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_BALANCECOUNT_PARMNUM);
const SV_PREFERREDAFFINITY_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_PREFERREDAFFINITY_PARMNUM);
const SV_MAXFREERFCBS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXFREERFCBS_PARMNUM);
const SV_MAXFREEMFCBS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXFREEMFCBS_PARMNUM);
const SV_MAXFREELFCBS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXFREELFCBS_PARMNUM);
const SV_MAXFREEPAGEDPOOLCHUNKS_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXFREEPAGEDPOOLCHUNKS_PARMNUM);
const SV_MINPAGEDPOOLCHUNKSIZE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MINPAGEDPOOLCHUNKSIZE_PARMNUM);
const SV_MAXPAGEDPOOLCHUNKSIZE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXPAGEDPOOLCHUNKSIZE_PARMNUM);
const SV_SENDSFROMPREFERREDPROCESSOR_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_SENDSFROMPREFERREDPROCESSOR_PARMNUM);
const SV_MAXTHREADSPERQUEUE_INFOLEVEL=(PARMNUM_BASE_INFOLEVEL+SV_MAXTHREADSPERQUEUE_PARMNUM);
