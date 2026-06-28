.class public final synthetic Ldb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lqb5;

.field public final synthetic p:Li2;


# direct methods
.method public synthetic constructor <init>(Lqb5;Li2;I)V
    .locals 0

    .line 1
    iput p3, p0, Ldb5;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ldb5;->o:Lqb5;

    .line 4
    .line 5
    iput-object p2, p0, Ldb5;->p:Li2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Ldb5;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldb5;->o:Lqb5;

    .line 7
    .line 8
    iget-object p0, p0, Ldb5;->p:Li2;

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lrc5;

    .line 15
    .line 16
    new-instance v1, La13;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x6

    .line 21
    invoke-direct {v1, v4, v2, v3}, La13;-><init>(III)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lic;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1}, Lic;-><init>(Lrc5;La13;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, v0, Lqb5;->e:Z

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v3, v0, Lqb5;->a:Lic;

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :catch_1
    move-exception p0

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    :goto_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    :try_start_1
    iget-object v3, v0, Lqb5;->a:Lic;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_2
    :try_start_2
    iget-object v1, v3, Lic;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Le53;

    .line 56
    .line 57
    iget-object v2, v2, Lic;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Le53;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Le53;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    iget-object p0, v0, Lqb5;->b:Lo75;

    .line 68
    .line 69
    iget-object p0, p0, Lo75;->e:Lcu3;

    .line 70
    .line 71
    invoke-interface {p0}, Lcu3;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Loc5;

    .line 76
    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    invoke-interface {p0}, Loc5;->zza()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    :try_start_3
    iput-object v2, v0, Lqb5;->a:Lic;

    .line 86
    .line 87
    iget-object v1, v0, Lqb5;->g:Ljj;

    .line 88
    .line 89
    iget-object v1, v1, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 92
    .line 93
    .line 94
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :cond_4
    :try_start_4
    iget-boolean v1, v0, Lqb5;->e:Z

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, v0, Lqb5;->b:Lo75;

    .line 100
    .line 101
    iget-object v2, v1, Lo75;->d:Lcu3;

    .line 102
    .line 103
    invoke-interface {v2}, Lcu3;->get()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lx85;

    .line 108
    .line 109
    invoke-virtual {p0}, Lrc5;->t()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v2, v2, Lx85;->a:Lw65;

    .line 120
    .line 121
    invoke-virtual {v2, p0}, Lw65;->a(Ljava/lang/String;)Low3;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lx85;->b(Low3;)Li;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-class v2, Ljava/lang/Throwable;

    .line 130
    .line 131
    new-instance v3, Lgb5;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-direct {v3, v4, v0}, Lgb5;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget v4, Lk;->y:I

    .line 142
    .line 143
    new-instance v4, Lj;

    .line 144
    .line 145
    invoke-direct {v4, p0, v2, v3}, Lk;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v4}, Lk75;->I(Ljava/util/concurrent/Executor;Ln91;)Ljava/util/concurrent/Executor;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {p0, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    .line 158
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    instance-of v1, v1, Ljava/lang/SecurityException;

    .line 163
    .line 164
    if-nez v1, :cond_5

    .line 165
    .line 166
    iget-object v0, v0, Lqb5;->c:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    add-int/lit8 v1, v1, 0x40

    .line 179
    .line 180
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 181
    .line 182
    .line 183
    const-string v1, "Unable to update local snapshot for "

    .line 184
    .line 185
    const-string v3, ", may result in stale flags."

    .line 186
    .line 187
    invoke-static {v2, v1, v0, v3}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "FlagStore"

    .line 192
    .line 193
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_4
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Ldb5;->o:Lqb5;

    .line 198
    .line 199
    iget-object p0, p0, Ldb5;->p:Li2;

    .line 200
    .line 201
    :try_start_7
    invoke-static {p0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catch_2
    move-exception p0

    .line 206
    iget-object v0, v0, Lqb5;->c:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    add-int/lit8 v1, v1, 0x49

    .line 219
    .line 220
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .line 222
    .line 223
    const-string v1, "Failed to store account on flag read for: "

    .line 224
    .line 225
    const-string v3, " which may lead to stale flags."

    .line 226
    .line 227
    invoke-static {v2, v1, v0, v3}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "FlagStore"

    .line 232
    .line 233
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .line 235
    .line 236
    :goto_5
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
