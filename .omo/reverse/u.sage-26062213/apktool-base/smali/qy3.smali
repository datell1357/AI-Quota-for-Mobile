.class public final Lqy3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lg60;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:Lje3;

.field public final p:Lsd0;


# direct methods
.method public constructor <init>(Lkm1;Lje3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lqy3;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p2, p0, Lqy3;->o:Lje3;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Default max per route"

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {v1, v0}, Lw80;->N(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Leo0;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Leo0;-><init>(Lje3;)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lsd0;

    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lsd0;-><init>(Leo0;Lkm1;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lqy3;->p:Lsd0;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final c(Lt92;J)V
    .locals 5

    .line 1
    instance-of v0, p1, Lgv;

    .line 2
    .line 3
    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lw80;->l(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Lgv;

    .line 9
    .line 10
    iget-object v0, p1, Lgv;->s:Lfv;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lgv;->n:Lg60;

    .line 15
    .line 16
    if-ne v0, p0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "Connection not obtained from this manager"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object v0, p1, Lgv;->s:Lfv;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lgv;->isOpen()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-boolean v1, p1, Lgv;->p:Z

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lgv;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    goto :goto_8

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    :goto_1
    :try_start_2
    iget-boolean v1, p1, Lgv;->p:Z

    .line 55
    .line 56
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 57
    .line 58
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    :try_start_3
    const-string v3, "Released connection is reusable."

    .line 69
    .line 70
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const-string v3, "Released connection is not reusable."

    .line 75
    .line 76
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lgv;->F()V

    .line 80
    .line 81
    .line 82
    goto :goto_6

    .line 83
    :goto_3
    invoke-virtual {p0, v0, v1, p2, p3}, Lsd0;->d(Lfv;ZJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_7

    .line 87
    :goto_4
    :try_start_4
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 88
    .line 89
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 96
    .line 97
    const-string v3, "Exception shutting down released connection."

    .line 98
    .line 99
    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    .line 101
    .line 102
    :cond_6
    :try_start_5
    iget-boolean v1, p1, Lgv;->p:Z

    .line 103
    .line 104
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 105
    .line 106
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    if-eqz v2, :cond_8

    .line 111
    .line 112
    iget-object v2, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    :try_start_6
    const-string v3, "Released connection is reusable."

    .line 117
    .line 118
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    const-string v3, "Released connection is not reusable."

    .line 123
    .line 124
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lgv;->F()V

    .line 128
    .line 129
    .line 130
    :goto_6
    iget-object p0, p0, Lqy3;->p:Lsd0;

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :goto_7
    monitor-exit p1

    .line 134
    return-void

    .line 135
    :goto_8
    iget-boolean v2, p1, Lgv;->p:Z

    .line 136
    .line 137
    iget-object v3, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 138
    .line 139
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 140
    .line 141
    .line 142
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    if-eqz v3, :cond_a

    .line 144
    .line 145
    iget-object v3, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 146
    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    :try_start_7
    const-string v4, "Released connection is reusable."

    .line 150
    .line 151
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_9
    const-string v4, "Released connection is not reusable."

    .line 156
    .line 157
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_9
    invoke-virtual {p1}, Lgv;->F()V

    .line 161
    .line 162
    .line 163
    iget-object p0, p0, Lqy3;->p:Lsd0;

    .line 164
    .line 165
    invoke-virtual {p0, v0, v2, p2, p3}, Lsd0;->d(Lfv;ZJ)V

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :goto_a
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    throw p0
.end method

.method public final d()Lje3;
    .locals 0

    .line 1
    iget-object p0, p0, Lqy3;->o:Lje3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lqy3;->shutdown()V
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
    .locals 3

    .line 1
    iget-object v0, p0, Lqy3;->p:Lsd0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lsb0;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lqd1;

    .line 12
    .line 13
    invoke-direct {v2, v0, v1, p1, p2}, Lqd1;-><init>(Lsd0;Lsb0;Lym1;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lpy3;

    .line 17
    .line 18
    invoke-direct {p2, p0, v2, p1}, Lpy3;-><init>(Lqy3;Lqd1;Lym1;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 2
    .line 3
    const-string v1, "Shutting down"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lqy3;->p:Lsd0;

    .line 9
    .line 10
    invoke-virtual {p0}, Lsd0;->i()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
