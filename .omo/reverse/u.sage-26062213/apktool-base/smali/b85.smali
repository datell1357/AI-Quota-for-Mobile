.class public final Lb85;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf85;Lw75;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb85;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lb85;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p3, p0, Lb85;->o:J

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb85;->q:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lmc5;Lo9;Lwd2;J)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lb85;->n:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb85;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb85;->q:Ljava/lang/Object;

    iput-wide p4, p0, Lb85;->o:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lb85;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb85;->q:Ljava/lang/Object;

    .line 5
    .line 6
    iget-wide v3, p0, Lb85;->o:J

    .line 7
    .line 8
    iget-object v5, p0, Lb85;->p:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v5, Lo9;

    .line 14
    .line 15
    invoke-virtual {v5}, Lo9;->run()V

    .line 16
    .line 17
    .line 18
    check-cast v2, Lwd2;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, La34;

    .line 24
    .line 25
    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, La34;-><init>(Ljava/util/concurrent/Callable;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v2, Lwd2;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v1, Lud2;

    .line 41
    .line 42
    invoke-direct {v1, v0, p0}, Lud2;-><init>(Ls0;Ljava/util/concurrent/ScheduledFuture;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lo9;

    .line 46
    .line 47
    const/16 v0, 0x16

    .line 48
    .line 49
    invoke-direct {p0, v0, v1}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lfu0;->n:Lfu0;

    .line 53
    .line 54
    invoke-virtual {v1, p0, v0}, Lud2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_0
    check-cast v2, Lf85;

    .line 59
    .line 60
    check-cast v5, Lw75;

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    invoke-virtual {v2, v5, p0, v3, v4}, Lf85;->E(Lw75;ZJ)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v2, Lf85;->e:Lw75;

    .line 67
    .line 68
    iget-object p0, v2, Lib0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lr45;

    .line 71
    .line 72
    invoke-virtual {p0}, Lr45;->o()Lo95;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Laz4;->v()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lj05;->w()V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lw85;

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Lw85;-><init>(Lo95;Lw75;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
