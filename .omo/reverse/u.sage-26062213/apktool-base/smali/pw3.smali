.class public final Lpw3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lef5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lef5;

    invoke-direct {v0}, Lef5;-><init>()V

    iput-object v0, p0, Lpw3;->a:Lef5;

    return-void
.end method

.method public constructor <init>(Lgt4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lef5;

    .line 5
    .line 6
    invoke-direct {v0}, Lef5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpw3;->a:Lef5;

    .line 10
    .line 11
    new-instance v0, Lra3;

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p0, Ldd1;

    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Ldd1;-><init>(Lgt4;Lra3;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lgt4;->o:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lef5;

    .line 29
    .line 30
    sget-object v0, Lqw3;->a:Lc73;

    .line 31
    .line 32
    invoke-virtual {p1, v0, p0}, Lef5;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpw3;->a:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lef5;->p(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpw3;->a:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lef5;->n(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lpw3;->a:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Exception must not be null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lef5;->c:Z

    .line 25
    .line 26
    iput-object p1, p0, Lef5;->f:Ljava/lang/Exception;

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lft1;->c(Low3;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lpw3;->a:Lef5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lef5;->o(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
