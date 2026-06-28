.class final Lcom/google/android/gms/common/moduleinstall/internal/zaw;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field final synthetic zaa:Lpw3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lpw3;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaw;->zaa:Lpw3;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zac(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaw;->zaa:Lpw3;

    .line 2
    .line 3
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpw3;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
