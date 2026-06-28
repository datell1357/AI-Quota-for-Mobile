.class public final Liu;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lg60;


# static fields
.field public static final t:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:Lje3;

.field public final p:Leo0;

.field public q:Lmm1;

.field public r:Lu92;

.field public volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Liu;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lje3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Liu;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Liu;->o:Lje3;

    .line 13
    .line 14
    new-instance v0, Leo0;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Leo0;-><init>(Lje3;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Liu;->p:Leo0;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lym1;)Lu92;
    .locals 4

    .line 1
    const-string v0, "Get connection for route "

    .line 2
    .line 3
    const-string v1, "Route"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Liu;->s:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    xor-int/2addr v1, v2

    .line 13
    const-string v3, "Connection manager has been shut down"

    .line 14
    .line 15
    invoke-static {v3, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 19
    .line 20
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Liu;->r:Lu92;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    :goto_1
    const-string v0, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    .line 53
    .line 54
    invoke-static {v0, v2}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Liu;->q:Lmm1;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, v0, Lmw2;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lym1;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lym1;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Liu;->q:Lmm1;

    .line 72
    .line 73
    invoke-virtual {v0}, Lmm1;->a()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Liu;->q:Lmm1;

    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Liu;->q:Lmm1;

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    sget-object v0, Liu;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Liu;->p:Leo0;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v1, Ldo0;

    .line 99
    .line 100
    invoke-direct {v1}, Ldo0;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lmm1;

    .line 104
    .line 105
    iget-object v3, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 106
    .line 107
    invoke-direct {v2, v3, v0, p1, v1}, Lmm1;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;Lym1;Ldo0;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Liu;->q:Lmm1;

    .line 111
    .line 112
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    iget-object p1, p0, Liu;->q:Lmm1;

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Lmm1;->c(J)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Liu;->q:Lmm1;

    .line 125
    .line 126
    invoke-virtual {p1}, Lmm1;->a()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Liu;->q:Lmm1;

    .line 130
    .line 131
    iget-object p1, p1, Lmm1;->i:Lya3;

    .line 132
    .line 133
    invoke-virtual {p1}, Lya3;->g()V

    .line 134
    .line 135
    .line 136
    :cond_4
    new-instance p1, Lu92;

    .line 137
    .line 138
    iget-object v0, p0, Liu;->p:Leo0;

    .line 139
    .line 140
    iget-object v1, p0, Liu;->q:Lmm1;

    .line 141
    .line 142
    invoke-direct {p1, p0, v0, v1}, Lu92;-><init>(Liu;Leo0;Lmm1;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Liu;->r:Lu92;

    .line 146
    .line 147
    monitor-exit p0

    .line 148
    return-object p1

    .line 149
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw p1
.end method

.method public final c(Lt92;J)V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string v1, "Connection can be kept alive "

    .line 4
    .line 5
    const-string v2, "for "

    .line 6
    .line 7
    const-string v3, "Releasing connection "

    .line 8
    .line 9
    instance-of v4, p1, Lu92;

    .line 10
    .line 11
    const-string v5, "Connection class mismatch, connection not obtained from this manager"

    .line 12
    .line 13
    invoke-static {v5, v4}, Lw80;->l(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    move-object v4, p1

    .line 17
    check-cast v4, Lu92;

    .line 18
    .line 19
    monitor-enter v4

    .line 20
    :try_start_0
    iget-object v5, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 21
    .line 22
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-object v5, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v5, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_7

    .line 48
    .line 49
    :cond_0
    :goto_0
    iget-object p1, v4, Lu92;->p:Lmm1;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    monitor-exit v4

    .line 54
    return-void

    .line 55
    :cond_1
    iget-object p1, v4, Lu92;->n:Lg60;

    .line 56
    .line 57
    if-ne p1, p0, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    const-string v3, "Connection not obtained from this manager"

    .line 63
    .line 64
    invoke-static {v3, p1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-boolean p1, p0, Liu;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v4}, Lu92;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p1

    .line 77
    :try_start_3
    iget-object p2, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 78
    .line 79
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 86
    .line 87
    const-string p3, "I/O exception shutting down connection"

    .line 88
    .line 89
    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_4
    const/4 p1, 0x0

    .line 99
    :try_start_5
    invoke-virtual {v4}, Lu92;->isOpen()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    iget-boolean v3, v4, Lu92;->q:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    :try_start_6
    invoke-virtual {v4}, Lu92;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_1
    move-exception v3

    .line 114
    :try_start_7
    iget-object v5, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 115
    .line 116
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_5

    .line 121
    .line 122
    iget-object v5, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 123
    .line 124
    const-string v6, "I/O exception shutting down connection"

    .line 125
    .line 126
    invoke-interface {v5, v6, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_2
    move-exception p2

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    :goto_3
    iget-boolean v3, v4, Lu92;->q:Z

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    iget-object v3, p0, Liu;->q:Lmm1;

    .line 137
    .line 138
    invoke-virtual {v3, p2, p3, v0}, Lmw2;->d(JLjava/util/concurrent/TimeUnit;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 142
    .line 143
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    const-wide/16 v5, 0x0

    .line 150
    .line 151
    cmp-long v3, p2, v5

    .line 152
    .line 153
    if-lez v3, :cond_6

    .line 154
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p2, " "

    .line 164
    .line 165
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    goto :goto_4

    .line 176
    :cond_6
    const-string p2, "indefinitely"

    .line 177
    .line 178
    :goto_4
    iget-object p3, p0, Liu;->n:Lorg/apache/commons/logging/Log;

    .line 179
    .line 180
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    .line 186
    .line 187
    :cond_7
    :try_start_8
    iput-object p1, v4, Lu92;->p:Lmm1;

    .line 188
    .line 189
    iput-object p1, p0, Liu;->r:Lu92;

    .line 190
    .line 191
    iget-object p2, p0, Liu;->q:Lmm1;

    .line 192
    .line 193
    invoke-virtual {p2}, Lmm1;->b()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_8

    .line 198
    .line 199
    iput-object p1, p0, Liu;->q:Lmm1;

    .line 200
    .line 201
    :cond_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 202
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 203
    return-void

    .line 204
    :goto_5
    :try_start_a
    iput-object p1, v4, Lu92;->p:Lmm1;

    .line 205
    .line 206
    iput-object p1, p0, Liu;->r:Lu92;

    .line 207
    .line 208
    iget-object p3, p0, Liu;->q:Lmm1;

    .line 209
    .line 210
    invoke-virtual {p3}, Lmm1;->b()Z

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_9

    .line 215
    .line 216
    iput-object p1, p0, Liu;->q:Lmm1;

    .line 217
    .line 218
    :cond_9
    throw p2

    .line 219
    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 220
    :try_start_b
    throw p1

    .line 221
    :goto_7
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 222
    throw p0
.end method

.method public final d()Lje3;
    .locals 0

    .line 1
    iget-object p0, p0, Liu;->o:Lje3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Liu;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final g(Lym1;Ljava/lang/Object;)Li60;
    .locals 2

    .line 1
    new-instance v0, Leh;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Liu;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_1
    iget-object v1, p0, Liu;->q:Lmm1;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lmm1;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Liu;->q:Lmm1;

    .line 17
    .line 18
    iput-object v0, p0, Liu;->r:Lu92;

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_1
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    iput-object v0, p0, Liu;->q:Lmm1;

    .line 25
    .line 26
    iput-object v0, p0, Liu;->r:Lu92;

    .line 27
    .line 28
    throw v1

    .line 29
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    throw v0
.end method
