.class public final Lru4;
.super Lwt4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:Luu4;


# direct methods
.method public constructor <init>(Luu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru4;->c:Luu4;

    .line 2
    .line 3
    invoke-direct {p0}, Lwt4;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lru4;->c:Luu4;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lyu4;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lyu4;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 15
    .line 16
    const/16 v0, 0xbbe

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lyu4;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lyu4;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
