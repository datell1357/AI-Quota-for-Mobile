.class final Lcom/google/android/gms/auth/api/accounttransfer/zzi;
.super Lcom/google/android/gms/auth/api/accounttransfer/zzn;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field final synthetic zza:Lzs4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;ILzs4;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzi;->zza:Lzs4;

    .line 2
    .line 3
    const/16 p1, 0x64a

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/zzn;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lxs4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzn;->zzc:Lts4;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzi;->zza:Lzs4;

    .line 4
    .line 5
    invoke-virtual {p1}, Lnk4;->zza()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Liv4;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p0}, Liv4;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const/16 p0, 0x9

    .line 16
    .line 17
    invoke-virtual {p1, p0, v1}, Lnk4;->zzc(ILandroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
