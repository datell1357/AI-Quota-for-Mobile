.class final Lcom/google/android/gms/common/zzw;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z

.field private final zzc:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZ[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/zzw;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/common/zzw;->zzb:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/common/zzw;->zzc:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/common/zzw;->zzc:Z

    .line 2
    .line 3
    return p0
.end method

.method public final zzb(Landroid/content/Context;)Lcom/google/android/gms/common/zzp;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzp;

    .line 2
    .line 3
    new-instance v4, Lyn2;

    .line 4
    .line 5
    invoke-direct {v4, p1}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/zzw;->zza:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/google/android/gms/common/zzw;->zzb:Z

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/zzp;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZZ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
