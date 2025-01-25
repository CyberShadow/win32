/**
 * Cryptographic primitives
 *
 * Translated from MinGW-w64 Windows headers
 *
 * License: $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Authors: Aya Partridge
 * Source: $(DRUNTIMESRC core/sys/windows/_bcrypt.d)
 */
/// Automatically imported and edited from the druntime module
/// core.sys.windows.bcrypt for the auto-generated win32 package.
module win32.bcrypt;
//version (Windows):

version (Win32_UseLib) pragma(lib, "bcrypt");

import win32.ntdef, win32.sdkddkver, win32.winbase, win32.windef, win32.winnt;

pragma(inline, true)
bool BCRYPT_SUCCESS(NTSTATUS Status) @nogc nothrow pure @safe => Status >= 0;

enum BCRYPT_OBJECT_ALIGNMENT = 16;

enum {
	BCRYPT_KDF_HASH = "HASH"w,
	BCRYPT_KDF_HMAC = "HMAC"w,
	BCRYPT_KDF_TLS_PRF = "TLS_PRF"w,
	BCRYPT_KDF_SP80056A_CONCAT = "SP800_56A_CONCAT"w,
}
static if (NTDDI_VERSION >= NTDDI_WINBLUE)
enum {
	BCRYPT_KDF_RAW_SECRET = "TRUNCATE"w,
}
static if (NTDDI_VERSION >= NTDDI_WIN10_RS4)
enum {
	BCRYPT_KDF_HKDF = "HKDF"w,
}

enum {
	KDF_HASH_ALGORITHM = 0x0,
	KDF_SECRET_PREPEND = 0x1,
	KDF_SECRET_APPEND = 0x2,
	KDF_HMAC_KEY = 0x3,
	KDF_TLS_PRF_LABEL = 0x4,
	KDF_TLS_PRF_SEED = 0x5,
	KDF_SECRET_HANDLE = 0x6,
}
static if (NTDDI_VERSION >= NTDDI_WIN7)
enum {
	KDF_TLS_PRF_PROTOCOL = 0x7,
	KDF_ALGORITHMID = 0x8,
	KDF_PARTYUINFO = 0x9,
	KDF_PARTYVINFO = 0xA,
	KDF_SUPPPUBINFO = 0xB,
	KDF_SUPPPRIVINFO = 0xC,
}
static if (NTDDI_VERSION >= NTDDI_WIN8)
enum {
	KDF_LABEL = 0xD,
	KDF_CONTEXT = 0xE,
	KDF_SALT = 0xF,
	KDF_ITERATION_COUNT = 0x10,
	KDF_GENERIC_PARAMETER = 0x11,
	KDF_KEYBITLENGTH = 0x12,
}
static if (NTDDI_VERSION >= NTDDI_WIN10_RS4)
enum {
	KDF_HKDF_SALT = 0x13,
	KDF_HKDF_INFO = 0x14,
}

enum KDF_USE_SECRET_AS_HMAC_KEY_FLAG = 1;

enum BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION = 1;

enum {
	BCRYPT_AUTH_MODE_CHAIN_CALLS_FLAG = 0x00000001,
	BCRYPT_AUTH_MODE_IN_PROGRESS_FLAG = 0x00000002,
}

pragma(inline, true)
void BCRYPT_INIT_AUTH_MODE_INFO(ref BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO _AUTH_INFO_STRUCT_) @nogc nothrow pure @safe {
	RtlZeroMemory(&_AUTH_INFO_STRUCT_, _AUTH_INFO_STRUCT_.sizeof);
	_AUTH_INFO_STRUCT_.cbSize = _AUTH_INFO_STRUCT_.sizeof;
	_AUTH_INFO_STRUCT_.dwInfoVersion = BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION;
}

enum {
	BCRYPT_OPAQUE_KEY_BLOB = "OpaqueKeyBlob"w,
	BCRYPT_KEY_DATA_BLOB = "KeyDataBlob"w,
}
static if (NTDDI_VERSION >= NTDDI_WIN7)
enum {
	BCRYPT_AES_WRAP_KEY_BLOB = "Rfc3565KeyWrapBlob"w,
}

enum {
	BCRYPT_ALGORITHM_NAME = "AlgorithmName"w,
	BCRYPT_AUTH_TAG_LENGTH = "AuthTagLength"w,
	BCRYPT_BLOCK_LENGTH = "BlockLength"w,
	BCRYPT_BLOCK_SIZE_LIST = "BlockSizeList"w,
	BCRYPT_CHAINING_MODE = "ChainingMode"w,
	BCRYPT_CHAIN_MODE_CBC = "ChainingModeCBC"w,
	BCRYPT_CHAIN_MODE_CCM = "ChainingModeCCM"w,
	BCRYPT_CHAIN_MODE_CFB = "ChainingModeCFB"w,
	BCRYPT_CHAIN_MODE_ECB = "ChainingModeECB"w,
	BCRYPT_CHAIN_MODE_GCM = "ChainingModeGCM"w,
	BCRYPT_CHAIN_MODE_NA = "ChainingModeN/A"w,
	BCRYPT_EFFECTIVE_KEY_LENGTH = "EffectiveKeyLength"w,
	BCRYPT_HASH_BLOCK_LENGTH = "HashBlockLength"w,
	BCRYPT_HASH_LENGTH = "HashDigestLength"w,
	BCRYPT_HASH_OID_LIST = "HashOIDList"w,
	BCRYPT_INITIALIZATION_VECTOR = "IV"w,
	BCRYPT_IS_KEYED_HASH = "IsKeyedHash"w,
	BCRYPT_IS_REUSABLE_HASH = "IsReusableHash"w,
	BCRYPT_KEY_LENGTH = "KeyLength"w,
	BCRYPT_KEY_LENGTHS = "KeyLengths"w,
	BCRYPT_KEY_OBJECT_LENGTH = "KeyObjectLength"w,
	BCRYPT_KEY_STRENGTH = "KeyStrength"w,
	BCRYPT_MESSAGE_BLOCK_LENGTH = "MessageBlockLength"w,
	BCRYPT_OBJECT_LENGTH = "ObjectLength"w,
	BCRYPT_PADDING_SCHEMES = "PaddingSchemes"w,
	BCRYPT_PCP_PLATFORM_TYPE_PROPERTY = "PCP_PLATFORM_TYPE"w,
	BCRYPT_PCP_PROVIDER_VERSION_PROPERTY = "PCP_PROVIDER_VERSION"w,
	BCRYPT_PRIMITIVE_TYPE = "PrimitiveType"w,
	BCRYPT_PROVIDER_HANDLE = "ProviderHandle"w,
	BCRYPT_PUBLIC_KEY_LENGTH = "PublicKeyLength"w,
	BCRYPT_SIGNATURE_LENGTH = "SignatureLength"w,
}
static if (NTDDI_VERSION >= NTDDI_WINBLUE)
enum {
	BCRYPT_MULTI_OBJECT_LENGTH = "MultiObjectLength"w,
}
static if (NTDDI_VERSION >= NTDDI_WIN10_RS4)
enum {
	BCRYPT_IS_IFX_TPM_WEAK_KEY = "IsIfxTpmWeakKey"w,
	BCRYPT_HKDF_HASH_ALGORITHM = "HkdfHashAlgorithm"w,
	BCRYPT_HKDF_SALT_AND_FINALIZE = "HkdfSaltAndFinalize"w,
	BCRYPT_HKDF_PRK_AND_FINALIZE = "HkdfPrkAndFinalize"w,
}
static if (NTDDI_VERSION >= NTDDI_WIN11_ZN)
enum {
	BCRYPT_FUNCTION_NAME_STRING = "FunctionNameString"w,
	BCRYPT_CUSTOMIZATION_STRING = "CustomizationString"w,
}
static if (NTDDI_VERSION >= NTDDI_WIN11_GA)
enum {
	BCRYPT_CHAIN_MODE_KWP = "ChainingModeKWP"w,
}

enum {
	BCRYPT_SUPPORTED_PAD_ROUTER = 0x00000001,
	BCRYPT_SUPPORTED_PAD_PKCS1_ENC = 0x00000002,
	BCRYPT_SUPPORTED_PAD_PKCS1_SIG = 0x00000004,
	BCRYPT_SUPPORTED_PAD_OAEP = 0x00000008,
	BCRYPT_SUPPORTED_PAD_PSS = 0x00000010,
}

enum BCRYPT_PROV_DISPATCH = 0x00000001;

enum BCRYPT_BLOCK_PADDING = 0x00000001;

static if (NTDDI_VERSION >= NTDDI_WIN10_CO)
enum BCRYPT_GENERATE_IV = 0x00000020;

enum {
	BCRYPT_PAD_NONE = 0x00000001,
	BCRYPT_PAD_PKCS1 = 0x00000002,
	BCRYPT_PAD_OAEP = 0x00000004,
	BCRYPT_PAD_PSS = 0x00000008,
}
static if (NTDDI_VERSION >= NTDDI_WINBLUE)
enum {
	BCRYPT_PAD_PKCS1_OPTIONAL_HASH_OID = 0x00000010,
}

enum BCRYPTBUFFER_VERSION = 0;

struct BCRYPT_KEY_LENGTHS_STRUCT {
	ULONG dwMinLength;
	ULONG dwMaxLength;
	ULONG dwIncrement;
}

alias BCRYPT_AUTH_TAG_LENGTHS_STRUCT = BCRYPT_KEY_LENGTHS_STRUCT;

struct BCRYPT_OID {
	ULONG cbOID;
	PUCHAR pbOID;
}

struct BCRYPT_OID_LIST {
	ULONG dwOIDCount;
	BCRYPT_OID* pOIDs;
}

struct BCRYPT_PKCS1_PADDING_INFO {
	LPCWSTR pszAlgId;
}

struct BCRYPT_PSS_PADDING_INFO {
	LPCWSTR pszAlgId;
	ULONG cbSalt;
}

struct BCRYPT_OAEP_PADDING_INFO {
	LPCWSTR pszAlgId;
	PUCHAR pbLabel;
	ULONG cbLabel;
}

struct BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO {
	ULONG cbSize;
	ULONG dwInfoVersion;
	PUCHAR pbNonce;
	ULONG cbNonce;
	PUCHAR pbAuthData;
	ULONG cbAuthData;
	PUCHAR pbTag;
	ULONG cbTag;
	PUCHAR pbMacContext;
	ULONG cbMacContext;
	ULONG cbAAD;
	ULONGLONG cbData;
	ULONG dwFlags;
}
alias PBCRYPT_AUTHENTICATED_CIPHER_MODE_INFO = BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO*;

struct BCryptBuffer {
	ULONG cbBuffer;
	ULONG BufferType;
	PVOID pvBuffer;
}
alias PBCryptBuffer = BCryptBuffer*;

struct BCryptBufferDesc {
	ULONG ulVersion;
	ULONG cBuffers;
	PBCryptBuffer pBuffers;
}
alias PBCryptBufferDesc = BCryptBufferDesc*;

enum {
	BCRYPT_PUBLIC_KEY_BLOB = "PUBLICBLOB"w,
	BCRYPT_PRIVATE_KEY_BLOB = "PRIVATEBLOB"w,
}

enum {
	BCRYPT_RSAPUBLIC_BLOB = "RSAPUBLICBLOB"w,
	BCRYPT_RSAPRIVATE_BLOB = "RSAPRIVATEBLOB"w,
	LEGACY_RSAPUBLIC_BLOB = "CAPIPUBLICBLOB"w,
	LEGACY_RSAPRIVATE_BLOB = "CAPIPRIVATEBLOB"w,
}

enum {
	BCRYPT_RSAPUBLIC_MAGIC = 0x31415352,
	BCRYPT_RSAPRIVATE_MAGIC = 0x32415352,
}

enum BCRYPT_RSAFULLPRIVATE_BLOB = "RSAFULLPRIVATEBLOB"w;

enum BCRYPT_RSAFULLPRIVATE_MAGIC = 0x33415352;

static if (NTDDI_VERSION >= NTDDI_WIN8) {
	enum BCRYPT_GLOBAL_PARAMETERS = "SecretAgreementParam"w;
	enum BCRYPT_PRIVATE_KEY = "PrivKeyVal"w;
}

enum {
	BCRYPT_ECCPUBLIC_BLOB = "ECCPUBLICBLOB"w,
	BCRYPT_ECCPRIVATE_BLOB = "ECCPRIVATEBLOB"w,
}
static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD)
enum {
	BCRYPT_ECCFULLPUBLIC_BLOB = "ECCFULLPUBLICBLOB"w,
	BCRYPT_ECCFULLPRIVATE_BLOB = "ECCFULLPRIVATEBLOB"w,
}

static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD)
enum SSL_ECCPUBLIC_BLOB = "SSLECCPUBLICBLOB"w;

enum TLS_13_PRE_SHARED_KEY = "TLS13PRESHAREDKEY"w;

enum {
	BCRYPT_ECDH_PUBLIC_P256_MAGIC = 0x314B4345,
	BCRYPT_ECDH_PRIVATE_P256_MAGIC = 0x324B4345,
	BCRYPT_ECDH_PUBLIC_P384_MAGIC = 0x334B4345,
	BCRYPT_ECDH_PRIVATE_P384_MAGIC = 0x344B4345,
	BCRYPT_ECDH_PUBLIC_P521_MAGIC = 0x354B4345,
	BCRYPT_ECDH_PRIVATE_P521_MAGIC = 0x364B4345,
}
static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD)
enum {
	BCRYPT_ECDH_PUBLIC_GENERIC_MAGIC = 0x504B4345,
	BCRYPT_ECDH_PRIVATE_GENERIC_MAGIC = 0x564B4345,
}

enum {
	BCRYPT_ECDSA_PUBLIC_P256_MAGIC = 0x31534345,
	BCRYPT_ECDSA_PRIVATE_P256_MAGIC = 0x32534345,
	BCRYPT_ECDSA_PUBLIC_P384_MAGIC = 0x33534345,
	BCRYPT_ECDSA_PRIVATE_P384_MAGIC = 0x34534345,
	BCRYPT_ECDSA_PUBLIC_P521_MAGIC = 0x35534345,
	BCRYPT_ECDSA_PRIVATE_P521_MAGIC = 0x36534345,
}
static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD)
enum {
	BCRYPT_ECDSA_PUBLIC_GENERIC_MAGIC = 0x50444345,
	BCRYPT_ECDSA_PRIVATE_GENERIC_MAGIC = 0x56444345,
}

enum {
	BCRYPT_DH_PUBLIC_BLOB = "DHPUBLICBLOB"w,
	BCRYPT_DH_PRIVATE_BLOB = "DHPRIVATEBLOB"w,
	LEGACY_DH_PUBLIC_BLOB = "CAPIDHPUBLICBLOB"w,
	LEGACY_DH_PRIVATE_BLOB = "CAPIDHPRIVATEBLOB"w,
}

enum {
	BCRYPT_DH_PUBLIC_MAGIC = 0x42504844,
	BCRYPT_DH_PRIVATE_MAGIC = 0x56504844,
}

enum {
	BCRYPT_DH_PARAMETERS = "DHParameters"w,
	BCRYPT_DH_PARAMETERS_MAGIC = 0x4D504844,
}

enum {
	BCRYPT_DSA_PUBLIC_BLOB = "DSAPUBLICBLOB"w,
	BCRYPT_DSA_PRIVATE_BLOB = "DSAPRIVATEBLOB"w,
	LEGACY_DSA_PUBLIC_BLOB = "CAPIDSAPUBLICBLOB"w,
	LEGACY_DSA_PRIVATE_BLOB = "CAPIDSAPRIVATEBLOB"w,
	LEGACY_DSA_V2_PUBLIC_BLOB = "V2CAPIDSAPUBLICBLOB"w,
	LEGACY_DSA_V2_PRIVATE_BLOB = "V2CAPIDSAPRIVATEBLOB"w,
}

enum {
	BCRYPT_DSA_PUBLIC_MAGIC = 0x42505344,
	BCRYPT_DSA_PRIVATE_MAGIC = 0x56505344,
	BCRYPT_DSA_PUBLIC_MAGIC_V2 = 0x32425044,
	BCRYPT_DSA_PRIVATE_MAGIC_V2 = 0x32565044,
}

enum {
	BCRYPT_KEY_DATA_BLOB_MAGIC = 0x4D42444B,
	BCRYPT_KEY_DATA_BLOB_VERSION1 = 0x1,
}

enum {
	BCRYPT_DSA_PARAMETERS = "DSAParameters"w,
	BCRYPT_DSA_PARAMETERS_MAGIC = 0x4D505344,
	BCRYPT_DSA_PARAMETERS_MAGIC_V2 = 0x324D5044,
}

enum {
	MS_PRIMITIVE_PROVIDER = "Microsoft Primitive Provider"w,
	MS_PLATFORM_CRYPTO_PROVIDER = "Microsoft Platform Crypto Provider"w,
}

enum {
	BCRYPT_RSA_ALGORITHM = "RSA"w,
	BCRYPT_RSA_SIGN_ALGORITHM = "RSA_SIGN"w,
	BCRYPT_DH_ALGORITHM = "DH"w,
	BCRYPT_DSA_ALGORITHM = "DSA"w,
	BCRYPT_RC2_ALGORITHM = "RC2"w,
	BCRYPT_RC4_ALGORITHM = "RC4"w,
	BCRYPT_AES_ALGORITHM = "AES"w,
	BCRYPT_DES_ALGORITHM = "DES"w,
	BCRYPT_DESX_ALGORITHM = "DESX"w,
	BCRYPT_3DES_ALGORITHM = "3DES"w,
	BCRYPT_3DES_112_ALGORITHM = "3DES_112"w,
	BCRYPT_MD2_ALGORITHM = "MD2"w,
	BCRYPT_MD4_ALGORITHM = "MD4"w,
	BCRYPT_MD5_ALGORITHM = "MD5"w,
	BCRYPT_SHA1_ALGORITHM = "SHA1"w,
	BCRYPT_SHA256_ALGORITHM = "SHA256"w,
	BCRYPT_SHA384_ALGORITHM = "SHA384"w,
	BCRYPT_SHA512_ALGORITHM = "SHA512"w,
	BCRYPT_AES_GMAC_ALGORITHM = "AES-GMAC"w,
	BCRYPT_AES_CMAC_ALGORITHM = "AES-CMAC"w,
	BCRYPT_ECDSA_P256_ALGORITHM = "ECDSA_P256"w,
	BCRYPT_ECDSA_P384_ALGORITHM = "ECDSA_P384"w,
	BCRYPT_ECDSA_P521_ALGORITHM = "ECDSA_P521"w,
	BCRYPT_ECDH_P256_ALGORITHM = "ECDH_P256"w,
	BCRYPT_ECDH_P384_ALGORITHM = "ECDH_P384"w,
	BCRYPT_ECDH_P521_ALGORITHM = "ECDH_P521"w,
	BCRYPT_RNG_ALGORITHM = "RNG"w,
	BCRYPT_RNG_FIPS186_DSA_ALGORITHM = "FIPS186DSARNG"w,
	BCRYPT_RNG_DUAL_EC_ALGORITHM = "DUALECRNG"w,
	BCRYPT_SP800108_CTR_HMAC_ALGORITHM = "SP800_108_CTR_HMAC"w,
	BCRYPT_SP80056A_CONCAT_ALGORITHM = "SP800_56A_CONCAT"w,
	BCRYPT_PBKDF2_ALGORITHM = "PBKDF2"w,
	BCRYPT_CAPI_KDF_ALGORITHM = "CAPI_KDF"w,
}

enum {
	BCRYPT_CIPHER_INTERFACE = 0x00000001,
	BCRYPT_HASH_INTERFACE = 0x00000002,
	BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE = 0x00000003,
	BCRYPT_SECRET_AGREEMENT_INTERFACE = 0x00000004,
	BCRYPT_SIGNATURE_INTERFACE = 0x00000005,
	BCRYPT_RNG_INTERFACE = 0x00000006,
	BCRYPT_KEY_DERIVATION_INTERFACE = 0x00000007,
}

static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD)
enum : BCRYPT_ALG_HANDLE {
	BCRYPT_MD2_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000001,
	BCRYPT_MD4_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000011,
	BCRYPT_MD5_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000021,
	BCRYPT_SHA1_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000031,
	BCRYPT_SHA256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000041,
	BCRYPT_SHA384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000051,
	BCRYPT_SHA512_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000061,
	BCRYPT_RC4_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000071,
	BCRYPT_RNG_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000081,
	BCRYPT_HMAC_MD5_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000091,
	BCRYPT_HMAC_SHA1_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000A1,
	BCRYPT_HMAC_SHA256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000B1,
	BCRYPT_HMAC_SHA384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000C1,
	BCRYPT_HMAC_SHA512_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000D1,
	BCRYPT_RSA_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000E1,
	BCRYPT_ECDSA_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000000F1,

	BCRYPT_AES_CMAC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000101,
	BCRYPT_AES_GMAC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000111,
	BCRYPT_HMAC_MD2_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000121,
	BCRYPT_HMAC_MD4_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000131,

	BCRYPT_3DES_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000141,
	BCRYPT_3DES_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000151,
	BCRYPT_3DES_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000161,
	BCRYPT_3DES_112_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000171,
	BCRYPT_3DES_112_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000181,
	BCRYPT_3DES_112_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000191,
	BCRYPT_AES_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001A1,
	BCRYPT_AES_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001B1,
	BCRYPT_AES_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001C1,
	BCRYPT_AES_CCM_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001D1,
	BCRYPT_AES_GCM_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001E1,
	BCRYPT_DES_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000001F1,
	BCRYPT_DES_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000201,
	BCRYPT_DES_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000211,
	BCRYPT_DESX_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000221,
	BCRYPT_DESX_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000231,
	BCRYPT_DESX_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000241,
	BCRYPT_RC2_CBC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000251,
	BCRYPT_RC2_ECB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000261,
	BCRYPT_RC2_CFB_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000271,

	BCRYPT_DH_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000281,
	BCRYPT_ECDH_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000291,
	BCRYPT_ECDH_P256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002A1,
	BCRYPT_ECDH_P384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002B1,
	BCRYPT_ECDH_P521_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002C1,
	BCRYPT_DSA_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002D1,
	BCRYPT_ECDSA_P256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002E1,
	BCRYPT_ECDSA_P384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000002F1,
	BCRYPT_ECDSA_P521_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000301,
	BCRYPT_RSA_SIGN_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000311,

	BCRYPT_CAPI_KDF_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000321,
	BCRYPT_PBKDF2_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000331,

	BCRYPT_SP800108_CTR_HMAC_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000341,
	BCRYPT_SP80056A_CONCAT_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000351,

	BCRYPT_TLS1_1_KDF_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000361,
	BCRYPT_TLS1_2_KDF_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000371,

	BCRYPT_XTS_AES_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000381,

	BCRYPT_HKDF_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000391,
}
static if (NTDDI_VERSION >= NTDDI_WIN10_FE)
enum {
	BCRYPT_CHACHA20_POLY1305_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003A1,
}
static if (NTDDI_VERSION >= NTDDI_WIN11_ZN)
enum {
	BCRYPT_SHA3_256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003B1,
	BCRYPT_SHA3_384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003C1,
	BCRYPT_SHA3_512_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003D1,
	BCRYPT_HMAC_SHA3_256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003E1,
	BCRYPT_HMAC_SHA3_384_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x000003F1,
	BCRYPT_HMAC_SHA3_512_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000401,
	BCRYPT_CSHAKE128_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000411,
	BCRYPT_CSHAKE256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000421,
	BCRYPT_KMAC128_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000431,
	BCRYPT_KMAC256_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000441,
}
static if (NTDDI_VERSION >= NTDDI_WIN11_GA)
enum {
	BCRYPT_AES_KWP_ALG_HANDLE = cast(BCRYPT_ALG_HANDLE) 0x00000451,
}

enum {
	BCRYPT_ALG_HANDLE_HMAC_FLAG = 0x00000008,
	BCRYPT_CAPI_AES_FLAG = 0x00000010,
	BCRYPT_HASH_REUSABLE_FLAG = 0x00000020,

	BCRYPT_BUFFERS_LOCKED_FLAG = 0x00000040,
}

enum {
	BCRYPT_CIPHER_OPERATION = 0x00000001,
	BCRYPT_HASH_OPERATION = 0x00000002,
	BCRYPT_ASYMMETRIC_ENCRYPTION_OPERATION = 0x00000004,
	BCRYPT_SECRET_AGREEMENT_OPERATION = 0x00000008,
	BCRYPT_SIGNATURE_OPERATION = 0x00000010,
	BCRYPT_RNG_OPERATION = 0x00000020,
	BCRYPT_KEY_DERIVATION_OPERATION = 0x00000040,
}

enum {
	BCRYPT_PUBLIC_KEY_FLAG = 0x00000001,
	BCRYPT_PRIVATE_KEY_FLAG = 0x00000002,
}

enum BCRYPT_NO_KEY_VALIDATION = 0x00000008;

enum {
	BCRYPT_RNG_USE_ENTROPY_IN_BUFFER = 0x00000001,
	BCRYPT_USE_SYSTEM_PREFERRED_RNG = 0x00000002,
}

pragma(inline, true) @nogc nothrow pure @safe {
	BCRYPT_INTERFACE_VERSION BCRYPT_MAKE_INTERFACE_VERSION(int major, int minor) =>
		BCRYPT_INTERFACE_VERSION(MajorVersion: cast(USHORT)major, MinorVersion: cast(USHORT)minor);
	bool BCRYPT_IS_INTERFACE_VERSION_COMPATIBLE(BCRYPT_INTERFACE_VERSION loader, BCRYPT_INTERFACE_VERSION provider) =>
		loader.MajorVersion <= provider.MajorVersion;
}

enum {
	BCRYPT_CIPHER_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
	BCRYPT_HASH_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
	BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
	BCRYPT_SECRET_AGREEMENT_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
	BCRYPT_SIGNATURE_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
	BCRYPT_RNG_INTERFACE_VERSION_1 = BCRYPT_MAKE_INTERFACE_VERSION(1, 0),
}

enum {
	CRYPT_MIN_DEPENDENCIES = 0x00000001,
	CRYPT_PROCESS_ISOLATE = 0x00010000,
}

enum {
	CRYPT_UM = 0x00000001,
	CRYPT_KM = 0x00000002,
	CRYPT_MM = 0x00000003,
	CRYPT_ANY = 0x00000004,
}

enum CRYPT_OVERWRITE = 0x00000001;

enum {
	CRYPT_LOCAL = 0x00000001,
	CRYPT_DOMAIN = 0x00000002,
}

enum {
	CRYPT_EXCLUSIVE = 0x00000001,
	CRYPT_OVERRIDE = 0x00010000,
}

enum {
	CRYPT_ALL_FUNCTIONS = 0x00000001,
	CRYPT_ALL_PROVIDERS = 0x00000002,
}

enum {
	CRYPT_PRIORITY_TOP = 0x00000000,
	CRYPT_PRIORITY_BOTTOM = 0xFFFFFFFF,
}

enum CRYPT_DEFAULT_CONTEXT = "Default"w;

alias BCRYPT_HANDLE = PVOID;
alias BCRYPT_ALG_HANDLE = PVOID;
alias BCRYPT_KEY_HANDLE = PVOID;
alias BCRYPT_HASH_HANDLE = PVOID;
alias BCRYPT_SECRET_HANDLE = PVOID;

struct BCRYPT_KEY_BLOB {
	ULONG Magic;
}

struct BCRYPT_RSAKEY_BLOB {
	ULONG Magic;
	ULONG BitLength;
	ULONG cbPublicExp;
	ULONG cbModulus;
	ULONG cbPrime1;
	ULONG cbPrime2;
}

struct BCRYPT_ECCKEY_BLOB {
	ULONG dwMagic;
	ULONG cbKey;
}
alias PBCRYPT_ECCKEY_BLOB = BCRYPT_ECCKEY_BLOB*;

static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD) {
	struct SSL_ECCKEY_BLOB {
		ULONG dwCurveType;
		ULONG cbKey;
	}
	alias PSSL_ECCKEY_BLOB = SSL_ECCKEY_BLOB*;

	enum BCRYPT_ECC_FULLKEY_BLOB_V1 = 0x1;

	alias ECC_CURVE_TYPE_ENUM = int;
	enum : ECC_CURVE_TYPE_ENUM {
		BCRYPT_ECC_PRIME_SHORT_WEIERSTRASS_CURVE = 0x1,
		BCRYPT_ECC_PRIME_TWISTED_EDWARDS_CURVE = 0x2,
		BCRYPT_ECC_PRIME_MONTGOMERY_CURVE = 0x3
	}

	alias ECC_CURVE_ALG_ID_ENUM = int;
	enum : ECC_CURVE_ALG_ID_ENUM {
		BCRYPT_NO_CURVE_GENERATION_ALG_ID = 0x0,
	}

	struct BCRYPT_ECCFULLKEY_BLOB {
		ULONG dwMagic;
		ULONG dwVersion;
		ECC_CURVE_TYPE_ENUM dwCurveType;
		ECC_CURVE_ALG_ID_ENUM dwCurveGenerationAlgId;
		ULONG cbFieldLength;
		ULONG cbSubgroupOrder;
		ULONG cbCofactor;
		ULONG cbSeed;
	}
	alias PBCRYPT_ECCFULLKEY_BLOB = BCRYPT_ECCFULLKEY_BLOB*;
}

struct BCRYPT_DH_KEY_BLOB {
	ULONG dwMagic;
	ULONG cbKey;
}
alias PBCRYPT_DH_KEY_BLOB = BCRYPT_DH_KEY_BLOB*;

struct BCRYPT_DH_PARAMETER_HEADER {
	ULONG cbLength;
	ULONG dwMagic;
	ULONG cbKeyLength;
}

struct BCRYPT_DSA_KEY_BLOB {
	ULONG dwMagic;
	ULONG cbKey;
	UCHAR[4] Count;
	UCHAR[20] Seed;
	UCHAR[20] q;
}
alias PBCRYPT_DSA_KEY_BLOB = BCRYPT_DSA_KEY_BLOB*;

alias HASHALGORITHM_ENUM = int;
enum : HASHALGORITHM_ENUM {
	DSA_HASH_ALGORITHM_SHA1,
	DSA_HASH_ALGORITHM_SHA256,
	DSA_HASH_ALGORITHM_SHA512,
}

alias DSAFIPSVERSION_ENUM = int;
enum : DSAFIPSVERSION_ENUM {
	DSA_FIPS186_2,
	DSA_FIPS186_3,
}

struct BCRYPT_DSA_KEY_BLOB_V2 {
	ULONG dwMagic;
	ULONG cbKey;
	HASHALGORITHM_ENUM hashAlgorithm;
	DSAFIPSVERSION_ENUM standardVersion;
	ULONG cbSeedLength;
	ULONG cbGroupSize;
	UCHAR[4] Count;
}
alias PBCRYPT_DSA_KEY_BLOB_V2 = BCRYPT_DSA_KEY_BLOB_V2*;

struct BCRYPT_KEY_DATA_BLOB_HEADER {
	ULONG dwMagic;
	ULONG dwVersion;
	ULONG cbKeyData;
}
alias PBCRYPT_KEY_DATA_BLOB_HEADER = BCRYPT_KEY_DATA_BLOB_HEADER*;

struct BCRYPT_DSA_PARAMETER_HEADER {
	ULONG cbLength;
	ULONG dwMagic;
	ULONG cbKeyLength;
	UCHAR[4] Count;
	UCHAR[20] Seed;
	UCHAR[20] q;
}

struct BCRYPT_DSA_PARAMETER_HEADER_V2 {
	ULONG cbLength;
	ULONG dwMagic;
	ULONG cbKeyLength;
	HASHALGORITHM_ENUM hashAlgorithm;
	DSAFIPSVERSION_ENUM standardVersion;
	ULONG cbSeedLength;
	ULONG cbGroupSize;
	UCHAR[4] Count;
}

struct BCRYPT_ECC_CURVE_NAMES {
	ULONG dwEccCurveNames;
	LPWSTR* pEccCurveNames;
}

alias BCRYPT_HASH_OPERATION_TYPE = int;
enum : BCRYPT_HASH_OPERATION_TYPE {
	BCRYPT_HASH_OPERATION_HASH_DATA = 1,
	BCRYPT_HASH_OPERATION_FINISH_HASH = 2,
}

struct BCRYPT_MULTI_HASH_OPERATION {
	ULONG iHash;
	BCRYPT_HASH_OPERATION_TYPE hashOperation;
	PUCHAR pbBuffer;
	ULONG cbBuffer;
}

alias BCRYPT_MULTI_OPERATION_TYPE = int;
enum : BCRYPT_MULTI_OPERATION_TYPE {
	BCRYPT_OPERATION_TYPE_HASH = 1,
}

struct BCRYPT_MULTI_OBJECT_LENGTH_STRUCT {
	ULONG cbPerObject;
	ULONG cbPerElement;
}

struct BCRYPT_ALGORITHM_IDENTIFIER {
	LPWSTR pszName;
	ULONG dwClass;
	ULONG dwFlags;
}

struct BCRYPT_PROVIDER_NAME {
	LPWSTR pszProviderName;
}

struct BCRYPT_INTERFACE_VERSION {
	USHORT MajorVersion;
	USHORT MinorVersion;
}
alias PBCRYPT_INTERFACE_VERSION = BCRYPT_INTERFACE_VERSION*;

struct CRYPT_INTERFACE_REG {
	ULONG dwInterface;
	ULONG dwFlags;
	ULONG cFunctions;
	PWSTR* rgpszFunctions;
}
alias PCRYPT_INTERFACE_REG = CRYPT_INTERFACE_REG*;

struct CRYPT_IMAGE_REG {
	PWSTR pszImage;
	ULONG cInterfaces;
	PCRYPT_INTERFACE_REG* rgpInterfaces;
}
alias PCRYPT_IMAGE_REG = CRYPT_IMAGE_REG*;

struct CRYPT_PROVIDER_REG {
	ULONG cAliases;
	PWSTR* rgpszAliases;
	PCRYPT_IMAGE_REG pUM;
	PCRYPT_IMAGE_REG pKM;
}
alias PCRYPT_PROVIDER_REG = CRYPT_PROVIDER_REG*;

struct CRYPT_PROVIDERS {
	ULONG cProviders;
	PWSTR* rgpszProviders;
}
alias PCRYPT_PROVIDERS = CRYPT_PROVIDERS*;

struct CRYPT_CONTEXT_CONFIG {
	ULONG dwFlags;
	ULONG dwReserved;
}
alias PCRYPT_CONTEXT_CONFIG = CRYPT_CONTEXT_CONFIG*;

struct CRYPT_CONTEXT_FUNCTION_CONFIG {
	ULONG dwFlags;
	ULONG dwReserved;
}
alias PCRYPT_CONTEXT_FUNCTION_CONFIG = CRYPT_CONTEXT_FUNCTION_CONFIG*;

struct CRYPT_CONTEXTS {
	ULONG cContexts;
	PWSTR* rgpszContexts;
}
alias PCRYPT_CONTEXTS = CRYPT_CONTEXTS*;

struct CRYPT_CONTEXT_FUNCTIONS {
	ULONG cFunctions;
	PWSTR* rgpszFunctions;
}
alias PCRYPT_CONTEXT_FUNCTIONS = CRYPT_CONTEXT_FUNCTIONS*;

struct CRYPT_CONTEXT_FUNCTION_PROVIDERS {
	ULONG cProviders;
	PWSTR* rgpszProviders;
}
alias PCRYPT_CONTEXT_FUNCTION_PROVIDERS = CRYPT_CONTEXT_FUNCTION_PROVIDERS*;

struct CRYPT_PROPERTY_REF {
	PWSTR pszProperty;
	ULONG cbValue;
	PUCHAR pbValue;
}
alias PCRYPT_PROPERTY_REF = CRYPT_PROPERTY_REF*;

struct CRYPT_IMAGE_REF {
	PWSTR pszImage;
	ULONG dwFlags;
}
alias PCRYPT_IMAGE_REF = CRYPT_IMAGE_REF*;

struct CRYPT_PROVIDER_REF {
	ULONG dwInterface;
	PWSTR pszFunction;
	PWSTR pszProvider;
	ULONG cProperties;
	PCRYPT_PROPERTY_REF* rgpProperties;
	PCRYPT_IMAGE_REF pUM;
	PCRYPT_IMAGE_REF pKM;
}
alias PCRYPT_PROVIDER_REF = CRYPT_PROVIDER_REF*;

struct CRYPT_PROVIDER_REFS {
	ULONG cProviders;
	PCRYPT_PROVIDER_REF* rgpProviders;
}
alias PCRYPT_PROVIDER_REFS = CRYPT_PROVIDER_REFS*;

extern(Windows) @nogc nothrow {
	NTSTATUS BCryptOpenAlgorithmProvider(scope BCRYPT_ALG_HANDLE* phAlgorithm, scope LPCWSTR pszAlgId, scope LPCWSTR pszImplementation, ULONG dwFlags);
	NTSTATUS BCryptEnumAlgorithms(ULONG dwAlgOperations, scope ULONG* pAlgCount, scope BCRYPT_ALGORITHM_IDENTIFIER** ppAlgList, ULONG dwFlags);
	NTSTATUS BCryptEnumProviders(scope LPCWSTR pszAlgId, scope ULONG* pImplCount, scope BCRYPT_PROVIDER_NAME** ppImplList, ULONG dwFlags);
	NTSTATUS BCryptGetProperty(BCRYPT_HANDLE hObject, scope LPCWSTR pszProperty, scope PUCHAR pbOutput, ULONG cbOutput, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptSetProperty(BCRYPT_HANDLE hObject, scope LPCWSTR pszProperty, scope PUCHAR pbInput, ULONG cbInput, ULONG dwFlags);
	NTSTATUS BCryptCloseAlgorithmProvider(BCRYPT_ALG_HANDLE hAlgorithm, ULONG dwFlags);
	VOID BCryptFreeBuffer(PVOID pvBuffer);
	NTSTATUS BCryptGenerateSymmetricKey(BCRYPT_ALG_HANDLE hAlgorithm, scope BCRYPT_KEY_HANDLE* phKey, scope PUCHAR pbKeyObject, ULONG cbKeyObject, scope PUCHAR pbSecret, ULONG cbSecret, ULONG dwFlags);
	NTSTATUS BCryptGenerateKeyPair(BCRYPT_ALG_HANDLE hAlgorithm, scope BCRYPT_KEY_HANDLE* phKey, ULONG dwLength, ULONG dwFlags);
	NTSTATUS BCryptEncrypt(BCRYPT_KEY_HANDLE hKey, scope PUCHAR pbInput, ULONG cbInput, scope VOID* pPaddingInfo, scope PUCHAR pbIV, ULONG cbIV, scope PUCHAR pbOutput, ULONG cbOutput, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptDecrypt(BCRYPT_KEY_HANDLE hKey, scope PUCHAR pbInput, ULONG cbInput, scope VOID* pPaddingInfo, scope PUCHAR pbIV, ULONG cbIV, scope PUCHAR pbOutput, ULONG cbOutput, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptExportKey(BCRYPT_KEY_HANDLE hKey, BCRYPT_KEY_HANDLE hExportKey, scope LPCWSTR pszBlobType, scope PUCHAR pbOutput, ULONG cbOutput, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptImportKey(BCRYPT_ALG_HANDLE hAlgorithm, BCRYPT_KEY_HANDLE hImportKey, scope LPCWSTR pszBlobType, scope BCRYPT_KEY_HANDLE* phKey, scope PUCHAR pbKeyObject, ULONG cbKeyObject, scope PUCHAR pbInput, ULONG cbInput, ULONG dwFlags);
	NTSTATUS BCryptImportKeyPair(BCRYPT_ALG_HANDLE hAlgorithm, BCRYPT_KEY_HANDLE hImportKey, scope LPCWSTR pszBlobType, scope BCRYPT_KEY_HANDLE* phKey, scope PUCHAR pbInput, ULONG cbInput, ULONG dwFlags);
	NTSTATUS BCryptDuplicateKey(BCRYPT_KEY_HANDLE hKey, scope BCRYPT_KEY_HANDLE* phNewKey, scope PUCHAR pbKeyObject, ULONG cbKeyObject, ULONG dwFlags);
	NTSTATUS BCryptFinalizeKeyPair(BCRYPT_KEY_HANDLE hKey, ULONG dwFlags);
	NTSTATUS BCryptDestroyKey(BCRYPT_KEY_HANDLE hKey);
	NTSTATUS BCryptDestroySecret(BCRYPT_SECRET_HANDLE hSecret);
	NTSTATUS BCryptSignHash(BCRYPT_KEY_HANDLE hKey, scope VOID* pPaddingInfo, scope PUCHAR pbInput, ULONG cbInput, scope PUCHAR pbOutput, ULONG cbOutput, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptVerifySignature(BCRYPT_KEY_HANDLE hKey, scope VOID* pPaddingInfo, scope PUCHAR pbHash, ULONG cbHash, scope PUCHAR pbSignature, ULONG cbSignature, ULONG dwFlags);
	NTSTATUS BCryptSecretAgreement(BCRYPT_KEY_HANDLE hPrivKey, BCRYPT_KEY_HANDLE hPubKey, scope BCRYPT_SECRET_HANDLE* phAgreedSecret, ULONG dwFlags);
	NTSTATUS BCryptDeriveKey(BCRYPT_SECRET_HANDLE hSharedSecret, LPCWSTR pwszKDF, scope BCryptBufferDesc* pParameterList, scope PUCHAR pbDerivedKey, ULONG cbDerivedKey, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptKeyDerivation(BCRYPT_KEY_HANDLE hKey, scope BCryptBufferDesc* pParameterList, scope PUCHAR pbDerivedKey, ULONG cbDerivedKey, scope ULONG* pcbResult, ULONG dwFlags);
	NTSTATUS BCryptCreateHash(BCRYPT_ALG_HANDLE hAlgorithm, scope BCRYPT_HASH_HANDLE* phHash, scope PUCHAR pbHashObject, ULONG cbHashObject, scope PUCHAR pbSecret, ULONG cbSecret, ULONG dwFlags);
	NTSTATUS BCryptHashData(BCRYPT_HASH_HANDLE hHash, scope PUCHAR pbInput, ULONG cbInput, ULONG dwFlags);
	NTSTATUS BCryptFinishHash(BCRYPT_HASH_HANDLE hHash, scope PUCHAR pbOutput, ULONG cbOutput, ULONG dwFlags);
	static if (NTDDI_VERSION >= NTDDI_WINBLUE) {
		NTSTATUS BCryptCreateMultiHash(BCRYPT_ALG_HANDLE hAlgorithm, scope BCRYPT_HASH_HANDLE* phHash, ULONG nHashes, scope PUCHAR pbHashObject, ULONG cbHashObject, scope PUCHAR pbSecret, ULONG cbSecret, ULONG dwFlags);
		NTSTATUS BCryptProcessMultiOperations(BCRYPT_HANDLE hObject, BCRYPT_MULTI_OPERATION_TYPE operationType, scope PVOID pOperations, ULONG cbOperations, ULONG dwFlags);
	}
	NTSTATUS BCryptDuplicateHash(BCRYPT_HASH_HANDLE hHash, scope BCRYPT_HASH_HANDLE* phNewHash, scope PUCHAR pbHashObject, ULONG cbHashObject, ULONG dwFlags);
	NTSTATUS BCryptDestroyHash(BCRYPT_HASH_HANDLE hHash);
	static if (NTDDI_VERSION >= NTDDI_WINTHRESHOLD) {
		NTSTATUS BCryptHash(BCRYPT_ALG_HANDLE hAlgorithm, scope PUCHAR pbSecret, ULONG cbSecret, scope PUCHAR pbInput, ULONG cbInput, scope PUCHAR pbOutput, ULONG cbOutput);
	}
	NTSTATUS BCryptGenRandom(BCRYPT_ALG_HANDLE hAlgorithm, scope PUCHAR pbBuffer, ULONG cbBuffer, ULONG dwFlags);
	NTSTATUS BCryptDeriveKeyCapi(BCRYPT_HASH_HANDLE hHash, BCRYPT_ALG_HANDLE hTargetAlg, scope PUCHAR pbDerivedKey, ULONG cbDerivedKey, ULONG dwFlags);
	NTSTATUS BCryptDeriveKeyPBKDF2(BCRYPT_ALG_HANDLE hPrf, scope PUCHAR pbPassword, ULONG cbPassword, scope PUCHAR pbSalt, ULONG cbSalt, ULONGLONG cIterations, scope PUCHAR pbDerivedKey, ULONG cbDerivedKey, ULONG dwFlags);
	NTSTATUS BCryptResolveProviders(scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, scope LPCWSTR pszProvider, ULONG dwMode, ULONG dwFlags, scope ULONG* pcbBuffer, scope PCRYPT_PROVIDER_REFS* ppBuffer);
	NTSTATUS BCryptGetFipsAlgorithmMode(scope BOOLEAN* pfEnabled);
	NTSTATUS BCryptQueryProviderRegistration(scope LPCWSTR pszProvider, ULONG dwMode, ULONG dwInterface, scope ULONG* pcbBuffer, scope PCRYPT_PROVIDER_REG* ppBuffer);
	NTSTATUS BCryptEnumRegisteredProviders(scope ULONG* pcbBuffer, scope PCRYPT_PROVIDERS* ppBuffer);
	NTSTATUS BCryptCreateContext(ULONG dwTable, scope LPCWSTR pszContext, PCRYPT_CONTEXT_CONFIG pConfig);
	NTSTATUS BCryptDeleteContext(ULONG dwTable, scope LPCWSTR pszContext);
	NTSTATUS BCryptEnumContexts(ULONG dwTable, scope ULONG* pcbBuffer, scope PCRYPT_CONTEXTS* ppBuffer);
	NTSTATUS BCryptConfigureContext(ULONG dwTable, scope LPCWSTR pszContext, PCRYPT_CONTEXT_CONFIG pConfig);
	NTSTATUS BCryptQueryContextConfiguration(ULONG dwTable, scope LPCWSTR pszContext, scope ULONG* pcbBuffer, scope PCRYPT_CONTEXT_CONFIG* ppBuffer);
	NTSTATUS BCryptAddContextFunction(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, ULONG dwPosition);
	NTSTATUS BCryptRemoveContextFunction(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction);
	NTSTATUS BCryptEnumContextFunctions(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope ULONG* pcbBuffer, scope PCRYPT_CONTEXT_FUNCTIONS* ppBuffer);
	NTSTATUS BCryptConfigureContextFunction(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, PCRYPT_CONTEXT_FUNCTION_CONFIG pConfig);
	NTSTATUS BCryptQueryContextFunctionConfiguration(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, scope ULONG* pcbBuffer, scope PCRYPT_CONTEXT_FUNCTION_CONFIG* ppBuffer);
	NTSTATUS BCryptEnumContextFunctionProviders(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, scope ULONG* pcbBuffer, scope PCRYPT_CONTEXT_FUNCTION_PROVIDERS* ppBuffer);
	NTSTATUS BCryptSetContextFunctionProperty(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, LPCWSTR pszProperty, ULONG cbValue, scope PUCHAR pbValue);
	NTSTATUS BCryptQueryContextFunctionProperty(ULONG dwTable, scope LPCWSTR pszContext, ULONG dwInterface, scope LPCWSTR pszFunction, LPCWSTR pszProperty, ULONG* pcbValue, scope PUCHAR* ppbValue);
	deprecated NTSTATUS BCryptRegisterConfigChangeNotify(scope HANDLE* phEvent);
	NTSTATUS BCryptUnregisterConfigChangeNotify(HANDLE hEvent);
}
