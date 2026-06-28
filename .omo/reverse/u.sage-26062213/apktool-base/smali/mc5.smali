.class public final Lmc5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loc5;


# static fields
.field public static d:Z


# instance fields
.field public final a:Lcu3;

.field public final b:I

.field public final c:Lky4;


# direct methods
.method public constructor <init>(Lcu3;)V
    .locals 2

    .line 1
    sget-object v0, Lky4;->G:Lky4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lmc5;->a:Lcu3;

    .line 7
    .line 8
    const/4 p1, 0x5

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lmc5;->b:I

    .line 16
    .line 17
    iput-object v0, p0, Lmc5;->c:Lky4;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    const-class v1, Lmc5;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-boolean v0, Lmc5;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v4, Lo9;

    .line 9
    .line 10
    const/16 v0, 0x18

    .line 11
    .line 12
    invoke-direct {v4, v0, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lmc5;->b:I

    .line 16
    .line 17
    int-to-long v6, v0

    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    iget-object v2, p0, Lmc5;->a:Lcu3;

    .line 21
    .line 22
    invoke-interface {v2}, Lcu3;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v5, v2

    .line 27
    check-cast v5, Lwd2;

    .line 28
    .line 29
    new-instance v2, Lb85;

    .line 30
    .line 31
    move-object v3, p0

    .line 32
    invoke-direct/range {v2 .. v7}, Lb85;-><init>(Lmc5;Lo9;Lwd2;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p0, La34;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {p0, v2}, La34;-><init>(Ljava/util/concurrent/Callable;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v5, Lwd2;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    .line 50
    invoke-interface {v2, p0, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Lud2;

    .line 55
    .line 56
    invoke-direct {v2, p0, v0}, Lud2;-><init>(Ls0;Ljava/util/concurrent/ScheduledFuture;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lo9;

    .line 60
    .line 61
    const/16 v0, 0x16

    .line 62
    .line 63
    invoke-direct {p0, v0, v2}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lfu0;->n:Lfu0;

    .line 67
    .line 68
    invoke-virtual {v2, p0, v0}, Lud2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    sput-boolean p0, Lmc5;->d:Z

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method
