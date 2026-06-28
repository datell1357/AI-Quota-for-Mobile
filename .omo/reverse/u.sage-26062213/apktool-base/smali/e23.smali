.class public final Le23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final n:Ldh1;

.field public volatile o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic p:Lh23;


# direct methods
.method public constructor <init>(Lh23;Ldh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le23;->p:Lh23;

    .line 5
    .line 6
    iput-object p2, p0, Le23;->n:Ldh1;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const-string v0, "Callback failure for "

    .line 2
    .line 3
    const-string v1, "canceled due to "

    .line 4
    .line 5
    iget-object v2, p0, Le23;->p:Lh23;

    .line 6
    .line 7
    iget-object v2, v2, Lh23;->o:Lk63;

    .line 8
    .line 9
    iget-object v2, v2, Lk63;->a:Lcn1;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcn1;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "OkHttp "

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Le23;->p:Lh23;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v2, v3, Lh23;->q:Lg23;

    .line 35
    .line 36
    invoke-virtual {v2}, Lhj;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    :try_start_1
    invoke-virtual {v3}, Lh23;->f()Lw73;

    .line 43
    .line 44
    .line 45
    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 46
    const/4 v8, 0x1

    .line 47
    :try_start_2
    iget-object v9, p0, Le23;->n:Ldh1;

    .line 48
    .line 49
    iget-object v9, v9, Ldh1;->n:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v9, Lo20;

    .line 52
    .line 53
    sget-object v10, Lg20;->o:Lg20;

    .line 54
    .line 55
    invoke-virtual {v9, v7, v10}, Lo20;->h(Ljava/lang/Object;Lff1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_3
    iget-object v0, v3, Lh23;->n:Lio2;

    .line 59
    .line 60
    iget-object v0, v0, Lio2;->a:Lqd1;

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v6, p0, v2}, Lqd1;->F(Lqd1;Le23;Le23;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :goto_1
    move v7, v8

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    move v7, v8

    .line 76
    goto :goto_5

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    goto :goto_2

    .line 81
    :catchall_2
    move-exception v0

    .line 82
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Lh23;->d()V

    .line 83
    .line 84
    .line 85
    if-nez v7, :cond_0

    .line 86
    .line 87
    new-instance v7, Ljava/io/IOException;

    .line 88
    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Le23;->n:Ldh1;

    .line 108
    .line 109
    iget-object v1, v1, Ldh1;->n:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lo20;

    .line 112
    .line 113
    new-instance v8, Lf83;

    .line 114
    .line 115
    invoke-direct {v8, v7}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v8}, Lo20;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :catchall_3
    move-exception v0

    .line 123
    goto :goto_8

    .line 124
    :cond_0
    :goto_4
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 125
    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 133
    .line 134
    .line 135
    :try_start_5
    iget-object v0, v3, Lh23;->n:Lio2;

    .line 136
    .line 137
    iget-object v0, v0, Lio2;->a:Lqd1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    :try_start_6
    throw v0

    .line 141
    :catch_1
    move-exception v1

    .line 142
    :goto_5
    if-eqz v7, :cond_2

    .line 143
    .line 144
    sget-object v7, Liv2;->a:Liv2;

    .line 145
    .line 146
    sget-object v7, Liv2;->a:Liv2;

    .line 147
    .line 148
    invoke-static {v3}, Lh23;->a(Lh23;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v8, 0x4

    .line 157
    invoke-virtual {v7, v8, v0, v1}, Liv2;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_2
    iget-object v0, p0, Le23;->n:Ldh1;

    .line 162
    .line 163
    iget-object v0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lo20;

    .line 166
    .line 167
    new-instance v7, Lf83;

    .line 168
    .line 169
    invoke-direct {v7, v1}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v7}, Lo20;->g(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 173
    .line 174
    .line 175
    :goto_6
    :try_start_7
    iget-object v0, v3, Lh23;->n:Lio2;

    .line 176
    .line 177
    iget-object v0, v0, Lio2;->a:Lqd1;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_8
    :try_start_8
    iget-object v1, v3, Lh23;->n:Lio2;

    .line 185
    .line 186
    iget-object v1, v1, Lio2;->a:Lqd1;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v6, p0, v2}, Lqd1;->F(Lqd1;Le23;Le23;I)V

    .line 192
    .line 193
    .line 194
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0
.end method
