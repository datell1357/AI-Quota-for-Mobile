.class public final Lae0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhe0;
.implements Lm20;
.implements Ljava/io/Closeable;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:Lql1;

.field public final p:Ll00;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile r:Z

.field public volatile s:Ljava/lang/Object;

.field public volatile t:J

.field public volatile u:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/Log;Lql1;Ll00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 5
    .line 6
    iput-object p2, p0, Lae0;->o:Lql1;

    .line 7
    .line 8
    iput-object p3, p0, Lae0;->p:Ll00;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lae0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lae0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lae0;->p:Ll00;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lae0;->o:Lql1;

    .line 17
    .line 18
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 19
    .line 20
    iget-object v4, p0, Lae0;->s:Ljava/lang/Object;

    .line 21
    .line 22
    iget-wide v5, p0, Lae0;->t:J

    .line 23
    .line 24
    iget-object v7, p0, Lae0;->u:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    check-cast v2, Lax2;

    .line 28
    .line 29
    invoke-virtual/range {v2 .. v7}, Lax2;->A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    goto :goto_4

    .line 36
    :cond_0
    :try_start_1
    iget-object p1, p0, Lae0;->p:Ll00;

    .line 37
    .line 38
    invoke-virtual {p1}, Ll00;->close()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 42
    .line 43
    const-string v0, "Connection discarded"

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_2
    iget-object p1, p0, Lae0;->o:Lql1;

    .line 49
    .line 50
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 51
    .line 52
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_0
    const/4 v4, 0x0

    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    invoke-virtual/range {v2 .. v7}, Lax2;->A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception v0

    .line 66
    move-object p1, v0

    .line 67
    :try_start_3
    iget-object v0, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 68
    .line 69
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v0, v2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    .line 83
    .line 84
    :cond_1
    :try_start_4
    iget-object p1, p0, Lae0;->o:Lql1;

    .line 85
    .line 86
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 87
    .line 88
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    :goto_1
    move-object v2, p1

    .line 91
    check-cast v2, Lax2;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_2
    monitor-exit v1

    .line 95
    goto :goto_5

    .line 96
    :goto_3
    iget-object v0, p0, Lae0;->o:Lql1;

    .line 97
    .line 98
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 99
    .line 100
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    .line 102
    move-object v2, v0

    .line 103
    check-cast v2, Lax2;

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    const-wide/16 v5, 0x0

    .line 107
    .line 108
    invoke-virtual/range {v2 .. v7}, Lax2;->A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_2
    :goto_5
    return-void
.end method

.method public final B(J)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lae0;->p:Ll00;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iput-wide p1, p0, Lae0;->t:J

    .line 7
    .line 8
    iput-object v0, p0, Lae0;->u:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final O()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lae0;->r:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lae0;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method public final cancel()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lae0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 8
    .line 9
    const-string v2, "Cancelling request execution"

    .line 10
    .line 11
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lae0;->j()V

    .line 15
    .line 16
    .line 17
    xor-int/lit8 p0, v0, 0x1

    .line 18
    .line 19
    return p0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lae0;->A(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-object v0, p0, Lae0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lae0;->p:Ll00;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lae0;->p:Ll00;

    .line 15
    .line 16
    invoke-virtual {v0}, Ll00;->shutdown()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 20
    .line 21
    const-string v2, "Connection discarded"

    .line 22
    .line 23
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    iget-object v0, p0, Lae0;->o:Lql1;

    .line 27
    .line 28
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 29
    .line 30
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    :goto_0
    move-object v2, v0

    .line 33
    check-cast v2, Lax2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    goto :goto_3

    .line 39
    :catchall_1
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    iget-object v2, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 43
    .line 44
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lae0;->n:Lorg/apache/commons/logging/Log;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    :cond_0
    :try_start_3
    iget-object v0, p0, Lae0;->o:Lql1;

    .line 60
    .line 61
    iget-object v3, p0, Lae0;->p:Ll00;

    .line 62
    .line 63
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    const/4 v4, 0x0

    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    invoke-virtual/range {v2 .. v7}, Lax2;->A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    goto :goto_4

    .line 74
    :goto_2
    iget-object v2, p0, Lae0;->o:Lql1;

    .line 75
    .line 76
    iget-object v4, p0, Lae0;->p:Ll00;

    .line 77
    .line 78
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Lax2;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const-wide/16 v6, 0x0

    .line 85
    .line 86
    invoke-virtual/range {v3 .. v8}, Lax2;->A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_1
    :goto_4
    return-void
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lae0;->s:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lae0;->r:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lae0;->A(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lae0;->r:Z

    .line 3
    .line 4
    return-void
.end method
