.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

.field public static final RESTORE_CREDENTIAL_DEVELOPER_ERROR:I = 0x9d08

.field public static final RESTORE_CREDENTIAL_E2EE_UNAVAILABLE:I = 0x9d0b

.field public static final RESTORE_CREDENTIAL_FIDO_FAILURE:I = 0x9d0a

.field public static final RESTORE_CREDENTIAL_INTERNAL_FAILURE:I = 0x9d09


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;->INSTANCE:Lcom/google/android/gms/auth/blockstore/restorecredential/RestoreCredentialStatusCodes;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
