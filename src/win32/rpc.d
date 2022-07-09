/**
 * Windows API header module
 *
 * Translated from MinGW Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Source: $(DRUNTIMESRC core/sys/windows/_rpc.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.rpc for the auto-generated win32 package.
module win32.rpc;
//version (Windows):
@system:

/* Moved to rpcdecp (duplicate definition).
    typedef void *I_RPC_HANDLE;
    alias long RPC_STATUS;
    // Moved to rpcdce:
    RpcImpersonateClient
    RpcRevertToSelf
*/

public import win32.unknwn;
public import win32.rpcdce;  // also pulls in rpcdcep
public import win32.rpcnsi;
public import win32.rpcnterr;
public import win32.winerror;

alias MIDL_user_allocate midl_user_allocate;
alias MIDL_user_free midl_user_free;

extern (Windows) {
    int I_RpcMapWin32Status(RPC_STATUS);
}
