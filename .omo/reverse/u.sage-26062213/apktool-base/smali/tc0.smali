.class public final Ltc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Luc0;


# direct methods
.method public constructor <init>(Luc0;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltc0;->p:Luc0;

    .line 5
    .line 6
    iput p2, p0, Ltc0;->n:I

    .line 7
    .line 8
    iput-wide p3, p0, Ltc0;->o:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v1, p0, Ltc0;->p:Luc0;

    .line 2
    .line 3
    iget v0, p0, Ltc0;->n:I

    .line 4
    .line 5
    iget-wide v4, p0, Ltc0;->o:J

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 p0, 0x1

    .line 9
    add-int/lit8 v6, v0, -0x1

    .line 10
    .line 11
    rsub-int/lit8 v0, v6, 0x3

    .line 12
    .line 13
    :try_start_0
    iget-object v2, v1, Luc0;->c:Led0;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Led0;->c(I)Lef5;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v0, v1, Luc0;->d:Lyc0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lyc0;->b()Low3;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Low3;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    aput-object v2, v0, v7

    .line 30
    .line 31
    aput-object v3, v0, p0

    .line 32
    .line 33
    invoke-static {v0}, Lmt1;->Z([Low3;)Lef5;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object v7, v1, Luc0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    new-instance v0, Lsc0;

    .line 40
    .line 41
    invoke-direct/range {v0 .. v6}, Lsc0;-><init>(Luc0;Lef5;Low3;JI)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v7, v0}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method
