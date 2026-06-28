.class public final Lo9;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lo9;->n:I

    iput-object p2, p0, Lo9;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpb5;Lrb5;)V
    .locals 0

    const/16 p2, 0x14

    iput p2, p0, Lo9;->n:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq25;Z)V
    .locals 0

    .line 1
    const/16 p2, 0x10

    .line 2
    .line 3
    iput p2, p0, Lo9;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lo9;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lo9;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltw3;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, v0, Ltw3;->g:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, v0, Ltw3;->g:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ltw3;->b()Lnw3;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    monitor-exit v0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    :try_start_1
    iget-object v6, v1, Lnw3;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lo9;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, Ltw3;

    .line 38
    .line 39
    iget-object v6, v6, Ltw3;->b:Ljava/util/logging/Logger;

    .line 40
    .line 41
    iget-object v7, v1, Lnw3;->c:Lsw3;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    const-string v11, "starting"

    .line 59
    .line 60
    invoke-static {v6, v1, v7, v11}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v2

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    move-wide v9, v4

    .line 67
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lnw3;->a()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    sub-long/2addr v13, v9

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v9, "finished run in "

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v13, v14}, Lqn0;->q(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-static {v6, v1, v7, v8}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v6, p0, Lo9;->o:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v6, Ltw3;

    .line 105
    .line 106
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :try_start_4
    invoke-static {v6, v1, v11, v12, v2}, Ltw3;->a(Ltw3;Lnw3;JZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ltw3;->b()Lnw3;

    .line 111
    .line 112
    .line 113
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    if-nez v7, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    move-object v1, v7

    .line 122
    goto :goto_0

    .line 123
    :catchall_1
    move-exception v2

    .line 124
    :try_start_6
    monitor-exit v6

    .line 125
    throw v2

    .line 126
    :catchall_2
    move-exception v2

    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    sub-long/2addr v11, v9

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v9, "failed a run in "

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {v11, v12}, Lqn0;->q(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v6, v1, v7, v8}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    :goto_2
    :try_start_7
    iget-object p0, p0, Lo9;->o:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Ltw3;

    .line 162
    .line 163
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 164
    const/4 v6, 0x0

    .line 165
    :try_start_8
    invoke-static {p0, v1, v4, v5, v6}, Ltw3;->a(Ltw3;Lnw3;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 166
    .line 167
    .line 168
    :try_start_9
    monitor-exit p0

    .line 169
    instance-of p0, v2, Ljava/lang/InterruptedException;

    .line 170
    .line 171
    if-eqz p0, :cond_5

    .line 172
    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_3
    move-exception p0

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    :try_start_a
    throw v2

    .line 187
    :catchall_4
    move-exception v1

    .line 188
    monitor-exit p0

    .line 189
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 190
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :catchall_5
    move-exception p0

    .line 195
    monitor-exit v0

    .line 196
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo9;->n:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lr45;

    .line 18
    .line 19
    iget-object v1, v0, Lr45;->i:Lac5;

    .line 20
    .line 21
    iget-object v3, v0, Lr45;->m:Lm75;

    .line 22
    .line 23
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lib0;->v()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lac5;->R()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/16 v6, 0x1

    .line 34
    .line 35
    cmp-long v1, v4, v6

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Laz4;->v()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v3, Lm75;->l:Li65;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Let4;->c()V

    .line 50
    .line 51
    .line 52
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 53
    .line 54
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lh65;

    .line 58
    .line 59
    invoke-direct {v1, v3, v2}, Lh65;-><init>(Lm75;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, v0, Lr45;->f:La25;

    .line 70
    .line 71
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, La25;->i:Lx15;

    .line 75
    .line 76
    const-string v1, "registerTrigger called but app not eligible"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lmy;

    .line 85
    .line 86
    iget-object v0, v0, Lmy;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lr45;

    .line 89
    .line 90
    iget-object v1, v0, Lr45;->u:Ls75;

    .line 91
    .line 92
    invoke-static {v1}, Lr45;->i(Laz4;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Lr45;->u:Ls75;

    .line 96
    .line 97
    sget-object v1, Le05;->D:Ld05;

    .line 98
    .line 99
    invoke-virtual {v1, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    invoke-virtual {v0, v1, v2}, Ls75;->z(J)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_1
    const-string v1, "StorageInfoHandler"

    .line 114
    .line 115
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lo91;

    .line 118
    .line 119
    :try_start_0
    invoke-static {v0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    const-string v2, "Failed to get storage info from GMS"

    .line 131
    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_1
    return-void

    .line 136
    :pswitch_2
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lmc5;

    .line 139
    .line 140
    iget-object v0, v0, Lmc5;->c:Lky4;

    .line 141
    .line 142
    invoke-virtual {v0}, Lky4;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    const-string v0, "PhenotypeProcessReaper"

    .line 155
    .line 156
    const-string v1, "Killing process to refresh experiment configuration"

    .line 157
    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 166
    .line 167
    .line 168
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 169
    .line 170
    .line 171
    :cond_3
    return-void

    .line 172
    :pswitch_3
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Ln91;

    .line 175
    .line 176
    :try_start_1
    invoke-static {v0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :catch_1
    move-exception v0

    .line 181
    const-string v1, "PhFlagUpdateRegistry"

    .line 182
    .line 183
    const-string v2, "Failed to register flag update listener which may lead to stale flags."

    .line 184
    .line 185
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void

    .line 189
    :pswitch_4
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 192
    .line 193
    :try_start_2
    invoke-static {v0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catch_2
    move-exception v0

    .line 198
    new-instance v1, Lo9;

    .line 199
    .line 200
    const/16 v2, 0x15

    .line 201
    .line 202
    invoke-direct {v1, v2, v0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ldm0;->S()Landroid/os/Handler;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void

    .line 213
    :pswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 214
    .line 215
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Ljava/util/concurrent/ExecutionException;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v1

    .line 227
    :pswitch_6
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Lpb5;

    .line 230
    .line 231
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lj45;->v()V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lk35;

    .line 239
    .line 240
    invoke-direct {v1, v0}, Lk35;-><init>(Lpb5;)V

    .line 241
    .line 242
    .line 243
    iput-object v1, v0, Lpb5;->k:Lk35;

    .line 244
    .line 245
    new-instance v1, Lat4;

    .line 246
    .line 247
    invoke-direct {v1, v0}, Lat4;-><init>(Lpb5;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lab5;->x()V

    .line 251
    .line 252
    .line 253
    iput-object v1, v0, Lpb5;->c:Lat4;

    .line 254
    .line 255
    iget-object v1, v0, Lpb5;->a:Lw35;

    .line 256
    .line 257
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Lbs4;

    .line 266
    .line 267
    iput-object v1, v2, Lds4;->d:Lbs4;

    .line 268
    .line 269
    new-instance v1, Lr95;

    .line 270
    .line 271
    invoke-direct {v1, v0}, Lr95;-><init>(Lpb5;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lab5;->x()V

    .line 275
    .line 276
    .line 277
    iput-object v1, v0, Lpb5;->i:Lr95;

    .line 278
    .line 279
    new-instance v1, Lgn4;

    .line 280
    .line 281
    invoke-direct {v1, v0}, Lab5;-><init>(Lpb5;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lab5;->x()V

    .line 285
    .line 286
    .line 287
    iput-object v1, v0, Lpb5;->f:Lgn4;

    .line 288
    .line 289
    new-instance v1, Li25;

    .line 290
    .line 291
    invoke-direct {v1, v0, v7}, Li25;-><init>(Lpb5;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lab5;->x()V

    .line 295
    .line 296
    .line 297
    iput-object v1, v0, Lpb5;->h:Li25;

    .line 298
    .line 299
    new-instance v1, Lqa5;

    .line 300
    .line 301
    invoke-direct {v1, v0}, Lqa5;-><init>(Lpb5;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Lab5;->x()V

    .line 305
    .line 306
    .line 307
    iput-object v1, v0, Lpb5;->e:Lqa5;

    .line 308
    .line 309
    new-instance v1, Lq25;

    .line 310
    .line 311
    invoke-direct {v1, v0}, Lq25;-><init>(Lpb5;)V

    .line 312
    .line 313
    .line 314
    iput-object v1, v0, Lpb5;->d:Lq25;

    .line 315
    .line 316
    iget v1, v0, Lpb5;->r:I

    .line 317
    .line 318
    iget v2, v0, Lpb5;->s:I

    .line 319
    .line 320
    if-eq v1, v2, :cond_4

    .line 321
    .line 322
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget-object v1, v1, La25;->f:Lx15;

    .line 327
    .line 328
    iget v2, v0, Lpb5;->r:I

    .line 329
    .line 330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    iget v3, v0, Lpb5;->s:I

    .line 335
    .line 336
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    const-string v8, "Not all upload components initialized"

    .line 341
    .line 342
    invoke-virtual {v1, v2, v3, v8}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_4
    iget-object v1, v0, Lpb5;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    .line 347
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget-object v1, v1, La25;->n:Lx15;

    .line 355
    .line 356
    const-string v2, "UploadController is now fully initialized"

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lj45;->v()V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lpb5;->c:Lat4;

    .line 369
    .line 370
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Lat4;->F()V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lpb5;->c:Lat4;

    .line 377
    .line 378
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Lib0;->v()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Lab5;->w()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lat4;->g0()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_6

    .line 392
    .line 393
    sget-object v2, Le05;->u0:Ld05;

    .line 394
    .line 395
    invoke-virtual {v2, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    check-cast v3, Ljava/lang/Long;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 402
    .line 403
    .line 404
    move-result-wide v7

    .line 405
    cmp-long v3, v7, v4

    .line 406
    .line 407
    if-nez v3, :cond_5

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_5
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v1, Lr45;

    .line 417
    .line 418
    iget-object v7, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 419
    .line 420
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 421
    .line 422
    .line 423
    move-result-wide v7

    .line 424
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    invoke-virtual {v2, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    filled-new-array {v7, v2}, [Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const-string v6, "trigger_uris"

    .line 441
    .line 442
    const-string v7, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 443
    .line 444
    invoke-virtual {v3, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-lez v2, :cond_6

    .line 449
    .line 450
    iget-object v1, v1, Lr45;->f:La25;

    .line 451
    .line 452
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v1, La25;->n:Lx15;

    .line 456
    .line 457
    const-string v3, "Deleted stale trigger uris. rowsDeleted"

    .line 458
    .line 459
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v1, v2, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_6
    :goto_4
    iget-object v1, v0, Lpb5;->i:Lr95;

    .line 467
    .line 468
    iget-object v1, v1, Lr95;->h:Ly25;

    .line 469
    .line 470
    invoke-virtual {v1}, Ly25;->a()J

    .line 471
    .line 472
    .line 473
    move-result-wide v1

    .line 474
    cmp-long v1, v1, v4

    .line 475
    .line 476
    if-nez v1, :cond_7

    .line 477
    .line 478
    iget-object v1, v0, Lpb5;->i:Lr95;

    .line 479
    .line 480
    iget-object v1, v1, Lr95;->h:Ly25;

    .line 481
    .line 482
    invoke-virtual {v0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 487
    .line 488
    .line 489
    move-result-wide v2

    .line 490
    invoke-virtual {v1, v2, v3}, Ly25;->b(J)V

    .line 491
    .line 492
    .line 493
    :cond_7
    invoke-virtual {v0}, Lpb5;->N()V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :pswitch_7
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v0, Lca5;

    .line 500
    .line 501
    iget-object v1, v0, Lca5;->p:Lpc4;

    .line 502
    .line 503
    iget-object v1, v1, Lpc4;->p:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v1, Lia5;

    .line 506
    .line 507
    invoke-virtual {v1}, Laz4;->v()V

    .line 508
    .line 509
    .line 510
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v2, Lr45;

    .line 513
    .line 514
    iget-object v4, v2, Lr45;->f:La25;

    .line 515
    .line 516
    iget-object v5, v2, Lr45;->a:Landroid/content/Context;

    .line 517
    .line 518
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 519
    .line 520
    .line 521
    iget-object v9, v4, La25;->m:Lx15;

    .line 522
    .line 523
    const-string v10, "Application going to the background"

    .line 524
    .line 525
    invoke-virtual {v9, v10}, Lx15;->a(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    iget-object v9, v2, Lr45;->e:Lf35;

    .line 529
    .line 530
    invoke-static {v9}, Lr45;->j(Lib0;)V

    .line 531
    .line 532
    .line 533
    iget-object v9, v9, Lf35;->s:Lu25;

    .line 534
    .line 535
    invoke-virtual {v9, v7}, Lu25;->b(Z)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Laz4;->v()V

    .line 539
    .line 540
    .line 541
    iput-boolean v7, v1, Lia5;->d:Z

    .line 542
    .line 543
    iget-object v9, v2, Lr45;->d:Lds4;

    .line 544
    .line 545
    invoke-virtual {v9}, Lds4;->K()Z

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    if-nez v10, :cond_8

    .line 550
    .line 551
    iget-wide v10, v0, Lca5;->o:J

    .line 552
    .line 553
    iget-object v1, v1, Lia5;->f:Lx23;

    .line 554
    .line 555
    invoke-virtual {v1, v8, v8, v10, v11}, Lx23;->i(ZZJ)Z

    .line 556
    .line 557
    .line 558
    iget-object v1, v1, Lx23;->p:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v1, Lea5;

    .line 561
    .line 562
    invoke-virtual {v1}, Let4;->c()V

    .line 563
    .line 564
    .line 565
    :cond_8
    iget-wide v0, v0, Lca5;->n:J

    .line 566
    .line 567
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 568
    .line 569
    .line 570
    iget-object v8, v4, La25;->l:Lx15;

    .line 571
    .line 572
    const-string v10, "Application backgrounded at: timestamp_millis"

    .line 573
    .line 574
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v8, v0, v10}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget-object v0, v2, Lr45;->m:Lm75;

    .line 582
    .line 583
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0}, Laz4;->v()V

    .line 587
    .line 588
    .line 589
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v1, Lr45;

    .line 592
    .line 593
    invoke-virtual {v0}, Lj05;->w()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Laz4;->v()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Lj05;->w()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Lo95;->C()Z

    .line 607
    .line 608
    .line 609
    move-result v8

    .line 610
    if-nez v8, :cond_9

    .line 611
    .line 612
    goto :goto_5

    .line 613
    :cond_9
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v0, Lr45;

    .line 616
    .line 617
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 618
    .line 619
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Lac5;->f0()I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    const v8, 0x3b3a8

    .line 627
    .line 628
    .line 629
    if-lt v0, v8, :cond_a

    .line 630
    .line 631
    :goto_5
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v0}, Laz4;->v()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0}, Lj05;->w()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v7}, Lo95;->L(Z)Lvc5;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    new-instance v7, Lq85;

    .line 646
    .line 647
    invoke-direct {v7, v0, v1, v3}, Lq85;-><init>(Lo95;Lvc5;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v7}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 651
    .line 652
    .line 653
    :cond_a
    sget-object v0, Le05;->N0:Ld05;

    .line 654
    .line 655
    invoke-virtual {v9, v6, v0}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_c

    .line 660
    .line 661
    iget-object v0, v2, Lr45;->i:Lac5;

    .line 662
    .line 663
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    iget-object v3, v9, Lds4;->c:Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v0, v1, v3}, Lac5;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_b

    .line 677
    .line 678
    const-wide/16 v0, 0x3e8

    .line 679
    .line 680
    goto :goto_6

    .line 681
    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    sget-object v1, Le05;->E:Ld05;

    .line 686
    .line 687
    invoke-virtual {v9, v0, v1}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 688
    .line 689
    .line 690
    move-result-wide v0

    .line 691
    :goto_6
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 692
    .line 693
    .line 694
    iget-object v3, v4, La25;->n:Lx15;

    .line 695
    .line 696
    const-string v4, "[sgtm] Scheduling batch upload with minimum latency in millis"

    .line 697
    .line 698
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v3, v5, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    iget-object v3, v2, Lr45;->u:Ls75;

    .line 706
    .line 707
    invoke-static {v3}, Lr45;->i(Laz4;)V

    .line 708
    .line 709
    .line 710
    iget-object v2, v2, Lr45;->u:Ls75;

    .line 711
    .line 712
    invoke-virtual {v2, v0, v1}, Ls75;->z(J)V

    .line 713
    .line 714
    .line 715
    :cond_c
    return-void

    .line 716
    :pswitch_8
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v0, Lw85;

    .line 719
    .line 720
    iget-object v0, v0, Lw85;->p:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Lj95;

    .line 723
    .line 724
    iget-object v0, v0, Lj95;->c:Lo95;

    .line 725
    .line 726
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v1, Lr45;

    .line 729
    .line 730
    iget-object v1, v1, Lr45;->g:Lj45;

    .line 731
    .line 732
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 733
    .line 734
    .line 735
    new-instance v2, Lh95;

    .line 736
    .line 737
    invoke-direct {v2, v0, v8}, Lh95;-><init>(Lo95;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 741
    .line 742
    .line 743
    return-void

    .line 744
    :pswitch_9
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v0, Lj95;

    .line 747
    .line 748
    iget-object v0, v0, Lj95;->c:Lo95;

    .line 749
    .line 750
    new-instance v1, Landroid/content/ComponentName;

    .line 751
    .line 752
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v2, Lr45;

    .line 755
    .line 756
    iget-object v2, v2, Lr45;->a:Landroid/content/Context;

    .line 757
    .line 758
    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 759
    .line 760
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v1}, Lo95;->G(Landroid/content/ComponentName;)V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :pswitch_a
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v0, Lq25;

    .line 770
    .line 771
    iget-object v0, v0, Lq25;->a:Lpb5;

    .line 772
    .line 773
    invoke-virtual {v0}, Lpb5;->N()V

    .line 774
    .line 775
    .line 776
    return-void

    .line 777
    :pswitch_b
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v0, Ln25;

    .line 780
    .line 781
    iget-object v1, v0, Ln25;->p:Ljava/lang/Object;

    .line 782
    .line 783
    monitor-enter v1

    .line 784
    :try_start_3
    iget-object v0, v0, Ln25;->q:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast v0, Lwo2;

    .line 787
    .line 788
    if-eqz v0, :cond_d

    .line 789
    .line 790
    invoke-interface {v0}, Lwo2;->a()V

    .line 791
    .line 792
    .line 793
    goto :goto_7

    .line 794
    :catchall_0
    move-exception v0

    .line 795
    goto :goto_8

    .line 796
    :cond_d
    :goto_7
    monitor-exit v1

    .line 797
    return-void

    .line 798
    :goto_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 799
    throw v0

    .line 800
    :pswitch_c
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 801
    .line 802
    move-object v1, v0

    .line 803
    check-cast v1, Lat4;

    .line 804
    .line 805
    :try_start_4
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    new-instance v2, Landroid/content/ContentValues;

    .line 810
    .line 811
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .line 813
    .line 814
    const-string v3, "elapsed_time"

    .line 815
    .line 816
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 821
    .line 822
    .line 823
    const-string v3, "raw_events"

    .line 824
    .line 825
    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 826
    .line 827
    .line 828
    goto :goto_9

    .line 829
    :catch_3
    move-exception v0

    .line 830
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 831
    .line 832
    check-cast v1, Lr45;

    .line 833
    .line 834
    iget-object v1, v1, Lr45;->f:La25;

    .line 835
    .line 836
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 837
    .line 838
    .line 839
    iget-object v1, v1, La25;->f:Lx15;

    .line 840
    .line 841
    const-string v2, "Failed to remove elapsed times from raw events table"

    .line 842
    .line 843
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    :goto_9
    return-void

    .line 847
    :pswitch_d
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 848
    .line 849
    check-cast v0, Landroid/webkit/WebView;

    .line 850
    .line 851
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 855
    .line 856
    .line 857
    return-void

    .line 858
    :pswitch_e
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 859
    .line 860
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 861
    .line 862
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->n:Landroidx/appcompat/widget/ActionMenuView;

    .line 863
    .line 864
    if-eqz v0, :cond_e

    .line 865
    .line 866
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->F:Lu5;

    .line 867
    .line 868
    if-eqz v0, :cond_e

    .line 869
    .line 870
    invoke-virtual {v0}, Lu5;->k()Z

    .line 871
    .line 872
    .line 873
    :cond_e
    return-void

    .line 874
    :pswitch_f
    invoke-direct {v0}, Lo9;->a()V

    .line 875
    .line 876
    .line 877
    return-void

    .line 878
    :pswitch_10
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 881
    .line 882
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->s:Z

    .line 883
    .line 884
    if-eqz v1, :cond_f

    .line 885
    .line 886
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    const-string v2, "input_method"

    .line 891
    .line 892
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 897
    .line 898
    invoke-virtual {v1, v0, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 899
    .line 900
    .line 901
    iput-boolean v8, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->s:Z

    .line 902
    .line 903
    :cond_f
    return-void

    .line 904
    :pswitch_11
    iget-object v1, v0, Lo9;->o:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v1, Lc52;

    .line 907
    .line 908
    iget-object v1, v1, Lc52;->a:Ljava/lang/Object;

    .line 909
    .line 910
    monitor-enter v1

    .line 911
    :try_start_5
    iget-object v2, v0, Lo9;->o:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v2, Lc52;

    .line 914
    .line 915
    iget-object v2, v2, Lc52;->f:Ljava/lang/Object;

    .line 916
    .line 917
    iget-object v3, v0, Lo9;->o:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v3, Lc52;

    .line 920
    .line 921
    sget-object v4, Lc52;->k:Ljava/lang/Object;

    .line 922
    .line 923
    iput-object v4, v3, Lc52;->f:Ljava/lang/Object;

    .line 924
    .line 925
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 926
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v0, Lc52;

    .line 929
    .line 930
    invoke-virtual {v0, v2}, Lc52;->h(Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    return-void

    .line 934
    :catchall_1
    move-exception v0

    .line 935
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 936
    throw v0

    .line 937
    :pswitch_12
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 938
    .line 939
    check-cast v0, Lhd1;

    .line 940
    .line 941
    invoke-virtual {v0, v7}, Lhd1;->x(Z)Z

    .line 942
    .line 943
    .line 944
    return-void

    .line 945
    :pswitch_13
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 946
    .line 947
    check-cast v0, Lpq0;

    .line 948
    .line 949
    invoke-virtual {v0}, Lpq0;->d()V

    .line 950
    .line 951
    .line 952
    return-void

    .line 953
    :pswitch_14
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Lyx0;

    .line 956
    .line 957
    iput-object v6, v0, Lyx0;->y:Lo9;

    .line 958
    .line 959
    invoke-virtual {v0}, Lyx0;->drawableStateChanged()V

    .line 960
    .line 961
    .line 962
    return-void

    .line 963
    :pswitch_15
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v0, Lnt0;

    .line 966
    .line 967
    invoke-static {v0}, Lnt0;->access$100(Lnt0;)Landroid/content/DialogInterface$OnDismissListener;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-static {v0}, Lnt0;->access$000(Lnt0;)Landroid/app/Dialog;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 976
    .line 977
    .line 978
    return-void

    .line 979
    :pswitch_16
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v0, Ljava/util/ArrayList;

    .line 982
    .line 983
    const/4 v1, 0x4

    .line 984
    invoke-static {v1, v0}, Lvd1;->a(ILjava/util/ArrayList;)V

    .line 985
    .line 986
    .line 987
    return-void

    .line 988
    :pswitch_17
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 989
    .line 990
    check-cast v0, Lkq0;

    .line 991
    .line 992
    iget-object v1, v0, Lkq0;->b:Landroid/view/ViewGroup;

    .line 993
    .line 994
    iget-object v2, v0, Lkq0;->c:Landroid/view/View;

    .line 995
    .line 996
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 997
    .line 998
    .line 999
    iget-object v0, v0, Lkq0;->d:Lmq0;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Lnq0;->a()V

    .line 1002
    .line 1003
    .line 1004
    return-void

    .line 1005
    :pswitch_18
    iget-object v0, v0, Lo9;->o:Ljava/lang/Object;

    .line 1006
    .line 1007
    move-object v1, v0

    .line 1008
    check-cast v1, Lhd0;

    .line 1009
    .line 1010
    monitor-enter v1

    .line 1011
    :try_start_7
    invoke-virtual {v1}, Lhd0;->a()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_10

    .line 1016
    .line 1017
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1018
    :try_start_8
    iput-boolean v7, v1, Lhd0;->b:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1019
    .line 1020
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1021
    goto :goto_a

    .line 1022
    :catchall_2
    move-exception v0

    .line 1023
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1024
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1025
    :cond_10
    :goto_a
    monitor-exit v1

    .line 1026
    if-nez v0, :cond_11

    .line 1027
    .line 1028
    goto :goto_b

    .line 1029
    :cond_11
    iget-object v0, v1, Lhd0;->q:Ljd0;

    .line 1030
    .line 1031
    invoke-virtual {v0}, Ljd0;->c()Lid0;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    new-instance v2, Ljava/util/Date;

    .line 1036
    .line 1037
    iget-object v4, v1, Lhd0;->p:Lcom/google/android/gms/common/util/Clock;

    .line 1038
    .line 1039
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1040
    .line 1041
    .line 1042
    move-result-wide v4

    .line 1043
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v0, v0, Lid0;->b:Ljava/util/Date;

    .line 1047
    .line 1048
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v0

    .line 1052
    if-eqz v0, :cond_12

    .line 1053
    .line 1054
    invoke-virtual {v1}, Lhd0;->h()V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_b

    .line 1058
    :cond_12
    iget-object v0, v1, Lhd0;->k:Ln61;

    .line 1059
    .line 1060
    check-cast v0, Lm61;

    .line 1061
    .line 1062
    invoke-virtual {v0}, Lm61;->e()Lef5;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v2

    .line 1066
    invoke-virtual {v0}, Lm61;->c()Lef5;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    new-array v3, v3, [Low3;

    .line 1071
    .line 1072
    aput-object v2, v3, v8

    .line 1073
    .line 1074
    aput-object v0, v3, v7

    .line 1075
    .line 1076
    invoke-static {v3}, Lmt1;->Z([Low3;)Lef5;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    iget-object v4, v1, Lhd0;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1081
    .line 1082
    new-instance v5, Lgd0;

    .line 1083
    .line 1084
    invoke-direct {v5, v1, v2, v0, v8}, Lgd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v3, v4, v5}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    new-array v2, v7, [Low3;

    .line 1092
    .line 1093
    aput-object v0, v2, v8

    .line 1094
    .line 1095
    invoke-static {v2}, Lmt1;->Z([Low3;)Lef5;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    iget-object v3, v1, Lhd0;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1100
    .line 1101
    new-instance v4, Lrr;

    .line 1102
    .line 1103
    const/4 v5, 0x5

    .line 1104
    invoke-direct {v4, v5, v1, v0}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v2, v3, v4}, Lef5;->d(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 1108
    .line 1109
    .line 1110
    :goto_b
    return-void

    .line 1111
    :catchall_3
    move-exception v0

    .line 1112
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1113
    throw v0

    .line 1114
    :pswitch_19
    iget-object v1, v0, Lo9;->o:Ljava/lang/Object;

    .line 1115
    .line 1116
    check-cast v1, Lo42;

    .line 1117
    .line 1118
    iget-object v2, v1, Lo42;->p:Lyx0;

    .line 1119
    .line 1120
    iget-object v3, v1, Lo42;->n:Lam;

    .line 1121
    .line 1122
    iget-boolean v6, v1, Lo42;->B:Z

    .line 1123
    .line 1124
    if-nez v6, :cond_13

    .line 1125
    .line 1126
    goto/16 :goto_d

    .line 1127
    .line 1128
    :cond_13
    iget-boolean v6, v1, Lo42;->z:Z

    .line 1129
    .line 1130
    if-eqz v6, :cond_14

    .line 1131
    .line 1132
    iput-boolean v8, v1, Lo42;->z:Z

    .line 1133
    .line 1134
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v6

    .line 1138
    iput-wide v6, v3, Lam;->e:J

    .line 1139
    .line 1140
    const-wide/16 v9, -0x1

    .line 1141
    .line 1142
    iput-wide v9, v3, Lam;->g:J

    .line 1143
    .line 1144
    iput-wide v6, v3, Lam;->f:J

    .line 1145
    .line 1146
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1147
    .line 1148
    iput v6, v3, Lam;->h:F

    .line 1149
    .line 1150
    :cond_14
    iget-wide v6, v3, Lam;->g:J

    .line 1151
    .line 1152
    cmp-long v6, v6, v4

    .line 1153
    .line 1154
    if-lez v6, :cond_15

    .line 1155
    .line 1156
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v6

    .line 1160
    iget-wide v9, v3, Lam;->g:J

    .line 1161
    .line 1162
    iget v11, v3, Lam;->i:I

    .line 1163
    .line 1164
    int-to-long v11, v11

    .line 1165
    add-long/2addr v9, v11

    .line 1166
    cmp-long v6, v6, v9

    .line 1167
    .line 1168
    if-lez v6, :cond_15

    .line 1169
    .line 1170
    goto :goto_c

    .line 1171
    :cond_15
    invoke-virtual {v1}, Lo42;->e()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v6

    .line 1175
    if-nez v6, :cond_16

    .line 1176
    .line 1177
    :goto_c
    iput-boolean v8, v1, Lo42;->B:Z

    .line 1178
    .line 1179
    goto :goto_d

    .line 1180
    :cond_16
    iget-boolean v6, v1, Lo42;->A:Z

    .line 1181
    .line 1182
    if-eqz v6, :cond_17

    .line 1183
    .line 1184
    iput-boolean v8, v1, Lo42;->A:Z

    .line 1185
    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1187
    .line 1188
    .line 1189
    move-result-wide v9

    .line 1190
    const/4 v15, 0x0

    .line 1191
    const/16 v16, 0x0

    .line 1192
    .line 1193
    const/4 v13, 0x3

    .line 1194
    const/4 v14, 0x0

    .line 1195
    move-wide v11, v9

    .line 1196
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v6

    .line 1200
    invoke-virtual {v2, v6}, Lyx0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 1204
    .line 1205
    .line 1206
    :cond_17
    iget-wide v6, v3, Lam;->f:J

    .line 1207
    .line 1208
    cmp-long v4, v6, v4

    .line 1209
    .line 1210
    if-eqz v4, :cond_18

    .line 1211
    .line 1212
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 1213
    .line 1214
    .line 1215
    move-result-wide v4

    .line 1216
    invoke-virtual {v3, v4, v5}, Lam;->a(J)F

    .line 1217
    .line 1218
    .line 1219
    move-result v6

    .line 1220
    const/high16 v7, -0x3f800000    # -4.0f

    .line 1221
    .line 1222
    mul-float/2addr v7, v6

    .line 1223
    mul-float/2addr v7, v6

    .line 1224
    const/high16 v8, 0x40800000    # 4.0f

    .line 1225
    .line 1226
    mul-float/2addr v6, v8

    .line 1227
    add-float/2addr v6, v7

    .line 1228
    iget-wide v7, v3, Lam;->f:J

    .line 1229
    .line 1230
    sub-long v7, v4, v7

    .line 1231
    .line 1232
    iput-wide v4, v3, Lam;->f:J

    .line 1233
    .line 1234
    long-to-float v4, v7

    .line 1235
    mul-float/2addr v4, v6

    .line 1236
    iget v3, v3, Lam;->d:F

    .line 1237
    .line 1238
    mul-float/2addr v4, v3

    .line 1239
    float-to-int v3, v4

    .line 1240
    iget-object v1, v1, Lo42;->D:Lyx0;

    .line 1241
    .line 1242
    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 1243
    .line 1244
    .line 1245
    sget-object v1, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1246
    .line 1247
    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1248
    .line 1249
    .line 1250
    :goto_d
    return-void

    .line 1251
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1252
    .line 1253
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 1254
    .line 1255
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    throw v0

    .line 1259
    :pswitch_1a
    iget-object v1, v0, Lo9;->o:Ljava/lang/Object;

    .line 1260
    .line 1261
    move-object v8, v1

    .line 1262
    check-cast v8, Lq9;

    .line 1263
    .line 1264
    invoke-virtual {v8, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1265
    .line 1266
    .line 1267
    iget-object v9, v8, Lq9;->z0:Landroid/view/MotionEvent;

    .line 1268
    .line 1269
    if-eqz v9, :cond_1b

    .line 1270
    .line 1271
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    const/16 v1, 0xa

    .line 1276
    .line 1277
    if-eq v0, v1, :cond_1b

    .line 1278
    .line 1279
    if-eq v0, v7, :cond_1b

    .line 1280
    .line 1281
    const/4 v1, 0x7

    .line 1282
    if-eq v0, v1, :cond_1a

    .line 1283
    .line 1284
    const/16 v2, 0x8

    .line 1285
    .line 1286
    const/16 v4, 0x9

    .line 1287
    .line 1288
    if-eq v0, v2, :cond_19

    .line 1289
    .line 1290
    if-eq v0, v4, :cond_1a

    .line 1291
    .line 1292
    move v10, v3

    .line 1293
    goto :goto_e

    .line 1294
    :cond_19
    move v10, v4

    .line 1295
    goto :goto_e

    .line 1296
    :cond_1a
    move v10, v1

    .line 1297
    :goto_e
    iget-wide v11, v8, Lq9;->A0:J

    .line 1298
    .line 1299
    const/4 v13, 0x0

    .line 1300
    invoke-virtual/range {v8 .. v13}, Lq9;->L(Landroid/view/MotionEvent;IJZ)V

    .line 1301
    .line 1302
    .line 1303
    :cond_1b
    return-void

    .line 1304
    nop

    .line 1305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
