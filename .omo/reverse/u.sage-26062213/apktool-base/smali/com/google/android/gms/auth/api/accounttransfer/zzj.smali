.class Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.super Ljs4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field final zzb:Lcom/google/android/gms/auth/api/accounttransfer/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljs4;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzb:Lcom/google/android/gms/auth/api/accounttransfer/zzl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzb:Lcom/google/android/gms/auth/api/accounttransfer/zzl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zzb:Lpw3;

    .line 4
    .line 5
    sget v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;->zza:I

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lpw3;->a(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
