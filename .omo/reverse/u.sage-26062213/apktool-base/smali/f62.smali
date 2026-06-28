.class public final Lf62;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lo62;


# instance fields
.field public volatile a:Lo62;

.field public final b:Ljk3;

.field public final c:Lps3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lv62;->F:Lw52;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljk3;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lf62;->b:Ljk3;

    .line 12
    .line 13
    new-instance v1, Lps3;

    .line 14
    .line 15
    invoke-direct {v1}, Lps3;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lf62;->c:Lps3;

    .line 19
    .line 20
    iput-object v0, p0, Lf62;->a:Lo62;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf62;->a:Lo62;

    .line 2
    .line 3
    invoke-interface {p0}, Lo62;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lf62;->b:Ljk3;

    .line 2
    .line 3
    invoke-static {p0}, Lbi4;->y(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lx33;)Lo62;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lf62;->b:Ljk3;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ls0;->m(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Lv62;->F:Lw52;

    .line 10
    .line 11
    iput-object p1, p0, Lf62;->a:Lo62;

    .line 12
    .line 13
    return-void
.end method

.method public final f()Lx33;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final g()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf62;->a:Lo62;

    .line 2
    .line 3
    invoke-interface {p0}, Lo62;->g()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lf62;->a:Lo62;

    .line 2
    .line 3
    invoke-interface {p0}, Lo62;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h(Ljava/lang/Object;Lx00;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lf62;->c:Lps3;

    .line 2
    .line 3
    iget-boolean v1, v0, Lps3;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    xor-int/2addr v1, v2

    .line 7
    const-string v3, "This stopwatch is already running."

    .line 8
    .line 9
    invoke-static {v1, v3}, Ln44;->b0(ZLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v2, v0, Lps3;->b:Z

    .line 13
    .line 14
    iget-object v1, v0, Lps3;->a:Lcz3;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iput-wide v1, v0, Lps3;->c:J

    .line 24
    .line 25
    iget-object v0, p0, Lf62;->a:Lo62;

    .line 26
    .line 27
    invoke-interface {v0}, Lo62;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lx00;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lf62;->b:Ljk3;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ls0;->m(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lf62;->b:Ljk3;

    .line 46
    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-virtual {p2, p1, v0}, Lx00;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    sget-object p0, Lap1;->o:Lap1;

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_2
    new-instance p2, Le62;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Le62;-><init>(Lf62;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lfu0;->n:Lfu0;

    .line 70
    .line 71
    invoke-static {p1, p2, v0}, Ltf1;->e(Lcom/google/common/util/concurrent/ListenableFuture;Lze1;Ljava/util/concurrent/Executor;)Li2;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    return-object p0

    .line 76
    :goto_0
    iget-object p2, p0, Lf62;->b:Ljk3;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object p0, p0, Lf62;->b:Ljk3;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    new-instance p0, Lzo1;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 104
    .line 105
    .line 106
    :cond_4
    return-object p0
.end method
