.class public final Lc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ld0;


# direct methods
.method public constructor <init>(Ld0;Lym1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0;->s:Ld0;

    .line 5
    .line 6
    iput-object p2, p0, Lc0;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lc0;->r:Ljava/lang/Object;

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
    iput-object p1, p0, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lc0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final b(JLjava/util/concurrent/TimeUnit;)Lmw2;
    .locals 10

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v0, p0, Lc0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmw2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    move-object p1, v0

    .line 18
    move-object v9, p0

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    :try_start_2
    iget-object v0, p0, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lc0;->s:Ld0;

    .line 30
    .line 31
    iget-object v4, p0, Lc0;->q:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v5, p0, Lc0;->r:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 34
    .line 35
    move-object v9, p0

    .line 36
    move-wide v6, p1

    .line 37
    move-object v8, p3

    .line 38
    :try_start_3
    invoke-static/range {v3 .. v9}, Ld0;->a(Ld0;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lc0;)Lmw2;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p1, v9, Lc0;->s:Ld0;

    .line 43
    .line 44
    iget p1, p1, Ld0;->l:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    if-lez p1, :cond_1

    .line 47
    .line 48
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 49
    :try_start_5
    iget-wide p1, p0, Lmw2;->e:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 50
    .line 51
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 52
    :try_start_7
    iget-object p3, v9, Lc0;->s:Ld0;

    .line 53
    .line 54
    iget p3, p3, Ld0;->l:I

    .line 55
    .line 56
    int-to-long v3, p3

    .line 57
    add-long/2addr p1, v3

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    cmp-long p1, p1, v3

    .line 63
    .line 64
    if-gtz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, v9, Lc0;->s:Ld0;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    .line 68
    :try_start_8
    check-cast p1, Lj00;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-object p1, p0

    .line 74
    check-cast p1, Lk00;

    .line 75
    .line 76
    iget-object p1, p1, Lmw2;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lv92;

    .line 79
    .line 80
    invoke-interface {p1}, Lsl1;->l0()Z

    .line 81
    .line 82
    .line 83
    move-result p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    :try_start_9
    invoke-virtual {p0}, Lmw2;->a()V

    .line 87
    .line 88
    .line 89
    iget-object p1, v9, Lc0;->s:Ld0;

    .line 90
    .line 91
    invoke-virtual {p1, p0, v1}, Ld0;->c(Lmw2;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 95
    move-wide p1, v6

    .line 96
    move-object p3, v8

    .line 97
    move-object p0, v9

    .line 98
    goto :goto_0

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    :goto_1
    move-object p1, v0

    .line 101
    goto :goto_5

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :goto_2
    move-object p0, v0

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    move-object p1, p0

    .line 106
    goto :goto_5

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    move-object p0, v0

    .line 109
    goto :goto_3

    .line 110
    :catchall_3
    move-exception v0

    .line 111
    move-object p1, v0

    .line 112
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 113
    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 114
    :cond_1
    :try_start_d
    iget-object p1, v9, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    .line 116
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    iget-object p1, v9, Lc0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v9, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v9, Lc0;->s:Ld0;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 135
    .line 136
    .line 137
    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 138
    return-object p0

    .line 139
    :cond_2
    :try_start_f
    iget-object p1, v9, Lc0;->s:Ld0;

    .line 140
    .line 141
    invoke-virtual {p1, p0, v2}, Ld0;->c(Lmw2;Z)V

    .line 142
    .line 143
    .line 144
    new-instance p0, Ljava/util/concurrent/ExecutionException;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 145
    .line 146
    :try_start_10
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 147
    .line 148
    const-string p2, "Operation aborted"

    .line 149
    .line 150
    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 151
    .line 152
    .line 153
    :try_start_11
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :catchall_4
    move-exception v0

    .line 158
    move-object v9, p0

    .line 159
    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    move-object v9, p0

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    move-object v9, p0

    .line 164
    new-instance p0, Ljava/util/concurrent/ExecutionException;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 165
    .line 166
    :try_start_12
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 167
    .line 168
    const-string p2, "Operation aborted"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 171
    .line 172
    .line 173
    :try_start_13
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 177
    :goto_4
    :try_start_14
    iget-object p1, v9, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    .line 179
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 180
    .line 181
    .line 182
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 183
    .line 184
    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :goto_5
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 189
    throw p1
.end method

.method public final cancel(Z)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lc0;->s:Ld0;

    .line 17
    .line 18
    iget-object p1, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    iget-object v0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Ld0;->b:Ljava/util/concurrent/locks/Condition;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_0
    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lc0;->b(JLjava/util/concurrent/TimeUnit;)Lmw2;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lc0;->b(JLjava/util/concurrent/TimeUnit;)Lmw2;

    move-result-object p0

    return-object p0
.end method

.method public final isCancelled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDone()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
