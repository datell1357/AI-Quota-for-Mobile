.class final Lcom/google/android/gms/auth/api/accounttransfer/zzm;
.super Ljs4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/auth/api/accounttransfer/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzm;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljs4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzm;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzn;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zzb:Lpw3;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lpw3;->a(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzm;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzn;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zzb:Lpw3;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lpw3;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
