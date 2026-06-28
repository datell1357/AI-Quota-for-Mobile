.class public final Lce5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lh2;

.field public final c:Lbo;

.field public final d:Lgw4;

.field public final e:Lhg;

.field public final f:Lhg;

.field public final g:Ljava/lang/Object;

.field public final h:Lky4;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lbo;Lh2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhg;

    .line 5
    .line 6
    new-instance v1, Lpc4;

    .line 7
    .line 8
    const/16 v2, 0x1b

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Lpc4;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lhg;-><init>(Lpi;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lce5;->f:Lhg;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lce5;->g:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lce5;->i:Ljava/util/List;

    .line 31
    .line 32
    iput-object p1, p0, Lce5;->c:Lbo;

    .line 33
    .line 34
    iput-object p2, p0, Lce5;->b:Lh2;

    .line 35
    .line 36
    iget-object p2, p1, Lbo;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Ljava/lang/String;

    .line 39
    .line 40
    iput-object p2, p0, Lce5;->a:Ljava/lang/String;

    .line 41
    .line 42
    new-instance p2, Lhg;

    .line 43
    .line 44
    new-instance v1, Lie5;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lie5;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v1}, Lhg;-><init>(Lpi;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lce5;->e:Lhg;

    .line 53
    .line 54
    new-instance p1, Lgw4;

    .line 55
    .line 56
    const/16 p2, 0x1a

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lgw4;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lce5;->d:Lgw4;

    .line 62
    .line 63
    new-instance p1, Lky4;

    .line 64
    .line 65
    invoke-direct {p1, v2}, Lky4;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lce5;->h:Lky4;

    .line 69
    .line 70
    new-instance p1, Lbb5;

    .line 71
    .line 72
    const/4 p2, 0x4

    .line 73
    invoke-direct {p1, p2, p0}, Lbb5;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lce5;->i:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method


# virtual methods
.method public final a(Lgb5;Lwd2;)Li2;
    .locals 8

    .line 1
    new-instance v0, Lbb5;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p1}, Lbb5;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget p1, Lvf5;->a:I

    .line 8
    .line 9
    invoke-static {}, Lye5;->a()Lrf5;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v4, Lic5;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v4, v1, p1, v0}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lwf5;->a:Ldz3;

    .line 20
    .line 21
    const-string v0, "ticker"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ln44;->X(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ldz3;->a()J

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lce5;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "Update "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lce5;->h:Lky4;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lky4;->b(Ljava/lang/String;)Lkf5;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :try_start_0
    iget-object v0, p0, Lce5;->f:Lhg;

    .line 51
    .line 52
    invoke-virtual {v0}, Lhg;->u()Ls0;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v0, p0, Lce5;->d:Lgw4;

    .line 57
    .line 58
    new-instance v1, Lgt4;

    .line 59
    .line 60
    const/16 v2, 0x10

    .line 61
    .line 62
    invoke-direct {v1, v2, v3}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v7, Lfu0;->n:Lfu0;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v7}, Lgw4;->F(Lpi;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    .line 69
    .line 70
    new-instance v1, Lqd1;

    .line 71
    .line 72
    const/16 v6, 0x19

    .line 73
    .line 74
    move-object v2, p0

    .line 75
    move-object v5, p2

    .line 76
    invoke-direct/range {v1 .. v6}, Lqd1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lvf5;->a(Lpi;)Lpc4;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0, v7}, Lgw4;->F(Lpi;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v3}, Ltf1;->propagateCancellation(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Future;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, v2, Lce5;->b:Lh2;

    .line 91
    .line 92
    invoke-static {p2}, Ltf1;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 93
    .line 94
    .line 95
    new-instance p2, Lpf1;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {p0, p2, v7}, Ltf1;->e(Lcom/google/common/util/concurrent/ListenableFuture;Lze1;Ljava/util/concurrent/Executor;)Li2;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Lkf5;->b(Ls0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lkf5;->close()V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    move-object p0, v0

    .line 113
    :try_start_1
    invoke-virtual {p1}, Lkf5;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    move-object p1, v0

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    throw p0
.end method
