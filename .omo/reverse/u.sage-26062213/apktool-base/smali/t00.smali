.class public final Lt00;
.super Lx00;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:Lx00;

.field public final synthetic o:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lx00;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt00;->n:Lx00;

    .line 5
    .line 6
    iput-object p2, p0, Lt00;->o:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lt00;->n:Lx00;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx00;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lt00;->n:Lx00;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx00;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Ls00;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lt00;->n:Lx00;

    .line 5
    .line 6
    invoke-direct {v0, v2, p1, p2, v1}, Ls00;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lq42;

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lq42;-><init>(Ls00;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lt00;->o:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method
