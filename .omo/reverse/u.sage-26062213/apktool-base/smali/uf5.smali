.class public final Luf5;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:Lpw3;


# direct methods
.method public constructor <init>(Lpw3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luf5;->c:Lpw3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Luf5;->c:Lpw3;

    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Lvl4;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcelable;Lpw3;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
