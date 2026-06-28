.class public final Lcom/google/android/gms/common/internal/zzu;
.super Lpk4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/internal/ICancelToken;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lpk4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lpk4;->zza()Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, v0, v1}, Lpk4;->zzC(ILandroid/os/Parcel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
