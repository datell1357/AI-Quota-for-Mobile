.class public final Lqk0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final n:Ljava/util/concurrent/ExecutorService;

.field public final o:Ljava/lang/Object;

.field public p:Lef5;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqk0;->o:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lqk0;->p:Lef5;

    .line 17
    .line 18
    iput-object p1, p0, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lef5;
    .locals 5

    .line 1
    iget-object v0, p0, Lqk0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lqk0;->p:Lef5;

    .line 5
    .line 6
    iget-object v2, p0, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v3, Lr6;

    .line 9
    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    invoke-direct {v3, v4, p1}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lqk0;->p:Lef5;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final b(Ljava/util/concurrent/Callable;)Lef5;
    .locals 5

    .line 1
    iget-object v0, p0, Lqk0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lqk0;->p:Lef5;

    .line 5
    .line 6
    iget-object v2, p0, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v3, Lr6;

    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    invoke-direct {v3, v4, p1}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lqk0;->p:Lef5;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
