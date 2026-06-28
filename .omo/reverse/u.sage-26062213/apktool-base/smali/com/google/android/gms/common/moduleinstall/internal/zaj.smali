.class public final synthetic Lcom/google/android/gms/common/moduleinstall/internal/zaj;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field public final synthetic zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/zaab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    .line 2
    .line 3
    check-cast p2, Lpw3;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zav;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zaa:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zav;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lpw3;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaj;->zab:Lcom/google/android/gms/common/moduleinstall/internal/zaab;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zai(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
