.class public final Le30;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    iput p5, p0, Le30;->n:I

    iput-object p1, p0, Le30;->r:Ljava/lang/Object;

    iput-object p2, p0, Le30;->o:Ljava/lang/Object;

    iput-object p3, p0, Le30;->p:Ljava/lang/Object;

    iput-object p4, p0, Le30;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 19
    iput p5, p0, Le30;->n:I

    iput-object p1, p0, Le30;->o:Ljava/lang/Object;

    iput-object p2, p0, Le30;->p:Ljava/lang/Object;

    iput-object p3, p0, Le30;->q:Ljava/lang/Object;

    iput-object p4, p0, Le30;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm75;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Le30;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Le30;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Le30;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Le30;->q:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Le30;->r:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le30;->n:I

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Le30;->r:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Llb5;

    .line 14
    .line 15
    iget-object v1, v1, Llb5;->n:Lpb5;

    .line 16
    .line 17
    invoke-virtual {v1}, Lpb5;->k0()Lac5;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v10

    .line 29
    invoke-virtual {v1}, Lpb5;->e0()Lds4;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v7, Le05;->e1:Ld05;

    .line 34
    .line 35
    invoke-virtual {v4, v5, v7}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    move-wide v12, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-wide/16 v12, 0x0

    .line 52
    .line 53
    :goto_0
    iget-object v2, v0, Le30;->q:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v8, v2

    .line 56
    check-cast v8, Landroid/os/Bundle;

    .line 57
    .line 58
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v7, v2

    .line 61
    check-cast v7, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Le30;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    const-string v9, "auto"

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    invoke-virtual/range {v6 .. v14}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lbu4;

    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Lpb5;->h(Ljava/lang/String;Lbu4;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_0
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lo95;

    .line 87
    .line 88
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    .line 92
    iget-object v3, v0, Le30;->q:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Lvc5;

    .line 95
    .line 96
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lwa5;

    .line 99
    .line 100
    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v4, v1, Lo95;->d:Ln05;

    .line 102
    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lr45;

    .line 108
    .line 109
    iget-object v0, v0, Lr45;->f:La25;

    .line 110
    .line 111
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, La25;->f:Lx15;

    .line 115
    .line 116
    const-string v3, "[sgtm] Failed to get upload batches; not connected to service"

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lx15;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    :try_start_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    new-instance v5, Lm85;

    .line 131
    .line 132
    invoke-direct {v5, v1, v2}, Lm85;-><init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v4, v3, v0, v5}, Ln05;->C(Lvc5;Lwa5;Ld15;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lo95;->I()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :goto_1
    :try_start_3
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Lr45;

    .line 145
    .line 146
    iget-object v1, v1, Lr45;->f:La25;

    .line 147
    .line 148
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v1, La25;->f:Lx15;

    .line 152
    .line 153
    const-string v3, "[sgtm] Failed to get upload batches; remote exception"

    .line 154
    .line 155
    invoke-virtual {v1, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 159
    .line 160
    .line 161
    :goto_2
    monitor-exit v2

    .line 162
    :goto_3
    return-void

    .line 163
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    throw v0

    .line 165
    :pswitch_1
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Lo95;

    .line 168
    .line 169
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 172
    .line 173
    iget-object v3, v0, Le30;->q:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v3, Lvc5;

    .line 176
    .line 177
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Landroid/os/Bundle;

    .line 180
    .line 181
    monitor-enter v2

    .line 182
    :try_start_4
    iget-object v4, v1, Lo95;->d:Ln05;

    .line 183
    .line 184
    if-nez v4, :cond_2

    .line 185
    .line 186
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lr45;

    .line 189
    .line 190
    iget-object v0, v0, Lr45;->f:La25;

    .line 191
    .line 192
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v0, La25;->f:Lx15;

    .line 196
    .line 197
    const-string v3, "Failed to request trigger URIs; not connected to service"

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Lx15;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    .line 201
    .line 202
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 203
    goto :goto_7

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    goto :goto_8

    .line 206
    :catch_1
    move-exception v0

    .line 207
    goto :goto_5

    .line 208
    :cond_2
    :try_start_6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    new-instance v5, Lk85;

    .line 212
    .line 213
    invoke-direct {v5, v1, v2}, Lk85;-><init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v4, v3, v0, v5}, Ln05;->b(Lvc5;Landroid/os/Bundle;Lv05;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lo95;->I()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :goto_5
    :try_start_7
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Lr45;

    .line 226
    .line 227
    iget-object v1, v1, Lr45;->f:La25;

    .line 228
    .line 229
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v1, La25;->f:Lx15;

    .line 233
    .line 234
    const-string v3, "Failed to request trigger URIs; remote exception"

    .line 235
    .line 236
    invoke-virtual {v1, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 240
    .line 241
    .line 242
    :goto_6
    monitor-exit v2

    .line 243
    :goto_7
    return-void

    .line 244
    :goto_8
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    throw v0

    .line 246
    :pswitch_2
    iget-object v1, v0, Le30;->q:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v1, Lmw4;

    .line 249
    .line 250
    iget-object v2, v0, Le30;->r:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v2, Lo95;

    .line 253
    .line 254
    :try_start_8
    iget-object v3, v2, Lo95;->d:Ln05;

    .line 255
    .line 256
    if-nez v3, :cond_3

    .line 257
    .line 258
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lr45;

    .line 261
    .line 262
    iget-object v3, v0, Lr45;->f:La25;

    .line 263
    .line 264
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v3, La25;->f:Lx15;

    .line 268
    .line 269
    const-string v4, "Discarding data. Failed to send event to service to bundle"

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Lx15;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 272
    .line 273
    .line 274
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 275
    .line 276
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1, v5}, Lac5;->k0(Lmw4;[B)V

    .line 280
    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_3
    :try_start_9
    iget-object v4, v0, Le30;->o:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v4, Lbu4;

    .line 286
    .line 287
    iget-object v0, v0, Le30;->p:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v0, Ljava/lang/String;

    .line 290
    .line 291
    invoke-interface {v3, v0, v4}, Ln05;->D(Ljava/lang/String;Lbu4;)[B

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v2}, Lo95;->I()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 296
    .line 297
    .line 298
    goto :goto_9

    .line 299
    :catchall_2
    move-exception v0

    .line 300
    goto :goto_b

    .line 301
    :catch_2
    move-exception v0

    .line 302
    :try_start_a
    iget-object v3, v2, Lib0;->a:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v3, Lr45;

    .line 305
    .line 306
    iget-object v3, v3, Lr45;->f:La25;

    .line 307
    .line 308
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 309
    .line 310
    .line 311
    iget-object v3, v3, La25;->f:Lx15;

    .line 312
    .line 313
    const-string v4, "Failed to send event to the service to bundle"

    .line 314
    .line 315
    invoke-virtual {v3, v0, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 316
    .line 317
    .line 318
    :goto_9
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v0, Lr45;

    .line 321
    .line 322
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 323
    .line 324
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1, v5}, Lac5;->k0(Lmw4;[B)V

    .line 328
    .line 329
    .line 330
    :goto_a
    return-void

    .line 331
    :goto_b
    iget-object v2, v2, Lib0;->a:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v2, Lr45;

    .line 334
    .line 335
    iget-object v2, v2, Lr45;->i:Lac5;

    .line 336
    .line 337
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v1, v5}, Lac5;->k0(Lmw4;[B)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :pswitch_3
    iget-object v1, v0, Le30;->r:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 347
    .line 348
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lr45;

    .line 349
    .line 350
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 355
    .line 356
    move-object v12, v1

    .line 357
    check-cast v12, Lmw4;

    .line 358
    .line 359
    iget-object v1, v0, Le30;->p:Ljava/lang/Object;

    .line 360
    .line 361
    move-object v9, v1

    .line 362
    check-cast v9, Ljava/lang/String;

    .line 363
    .line 364
    iget-object v0, v0, Le30;->q:Ljava/lang/Object;

    .line 365
    .line 366
    move-object v10, v0

    .line 367
    check-cast v10, Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v8}, Laz4;->v()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8}, Lj05;->w()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8, v6}, Lo95;->L(Z)Lvc5;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    new-instance v7, Lk55;

    .line 380
    .line 381
    invoke-direct/range {v7 .. v12}, Lk55;-><init>(Lo95;Ljava/lang/String;Ljava/lang/String;Lvc5;Lmw4;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8, v7}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    :pswitch_4
    sget-object v1, La85;->a:Lwu4;

    .line 389
    .line 390
    iget-object v2, v0, Le30;->o:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v2, Ljava/util/logging/Level;

    .line 393
    .line 394
    iget-object v3, v1, Lwu4;->o:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v3, Lv43;

    .line 397
    .line 398
    invoke-virtual {v3, v2}, Lv43;->a(Ljava/util/logging/Level;)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    iget-object v3, v3, Lv43;->a:Ljava/lang/String;

    .line 403
    .line 404
    sget-object v5, Lbl4;->a:Lcl4;

    .line 405
    .line 406
    check-cast v5, Lgl4;

    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    sget-object v5, Lml4;->b:Lml4;

    .line 412
    .line 413
    invoke-virtual {v5, v3, v2, v4}, Lml4;->a(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    .line 414
    .line 415
    .line 416
    if-nez v4, :cond_4

    .line 417
    .line 418
    sget-object v1, Lwu4;->s:Ldg5;

    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_4
    new-instance v3, Lcg5;

    .line 422
    .line 423
    invoke-direct {v3, v1, v2}, Lcg5;-><init>(Lwu4;Ljava/util/logging/Level;)V

    .line 424
    .line 425
    .line 426
    move-object v1, v3

    .line 427
    :goto_c
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v2, Ljava/lang/Throwable;

    .line 430
    .line 431
    invoke-interface {v1, v2}, Lng5;->a(Ljava/lang/Throwable;)Lng5;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, Lbg5;

    .line 436
    .line 437
    invoke-interface {v1}, Lng5;->b()Lng5;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Lbg5;

    .line 442
    .line 443
    iget-object v2, v0, Le30;->q:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v2, Ljava/lang/String;

    .line 446
    .line 447
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v0, [Ljava/lang/Object;

    .line 450
    .line 451
    invoke-interface {v1, v2, v0}, Lng5;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_5
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v1, Ljk3;

    .line 458
    .line 459
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 462
    .line 463
    iget-object v3, v0, Le30;->q:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v3, Landroid/content/Context;

    .line 466
    .line 467
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Lb75;

    .line 470
    .line 471
    iget-object v1, v1, Lb1;->n:Ljava/lang/Object;

    .line 472
    .line 473
    instance-of v1, v1, Ll0;

    .line 474
    .line 475
    if-eqz v1, :cond_5

    .line 476
    .line 477
    invoke-virtual {v2, v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-eqz v1, :cond_5

    .line 482
    .line 483
    :try_start_b
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3

    .line 484
    .line 485
    .line 486
    goto :goto_d

    .line 487
    :catch_3
    move-exception v0

    .line 488
    const-string v1, "DirectBootUtils"

    .line 489
    .line 490
    const-string v2, "Failed to unregister receiver"

    .line 491
    .line 492
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .line 494
    .line 495
    :cond_5
    :goto_d
    return-void

    .line 496
    :pswitch_6
    iget-object v1, v0, Le30;->p:Ljava/lang/Object;

    .line 497
    .line 498
    move-object v10, v1

    .line 499
    check-cast v10, Ljava/lang/String;

    .line 500
    .line 501
    iget-object v1, v0, Le30;->q:Ljava/lang/Object;

    .line 502
    .line 503
    move-object v11, v1

    .line 504
    check-cast v11, Ljava/lang/String;

    .line 505
    .line 506
    iget-object v1, v0, Le30;->r:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v1, Lm75;

    .line 509
    .line 510
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v1, Lr45;

    .line 513
    .line 514
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    iget-object v0, v0, Le30;->o:Ljava/lang/Object;

    .line 519
    .line 520
    move-object v9, v0

    .line 521
    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 522
    .line 523
    invoke-virtual {v8}, Laz4;->v()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v8}, Lj05;->w()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v8, v6}, Lo95;->L(Z)Lvc5;

    .line 530
    .line 531
    .line 532
    move-result-object v12

    .line 533
    new-instance v7, Lk55;

    .line 534
    .line 535
    invoke-direct/range {v7 .. v12}, Lk55;-><init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lvc5;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v8, v7}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :pswitch_7
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v1, Lo55;

    .line 545
    .line 546
    iget-object v4, v0, Le30;->p:Ljava/lang/Object;

    .line 547
    .line 548
    move-object/from16 v17, v4

    .line 549
    .line 550
    check-cast v17, Landroid/os/Bundle;

    .line 551
    .line 552
    iget-object v4, v0, Le30;->q:Ljava/lang/Object;

    .line 553
    .line 554
    move-object v9, v4

    .line 555
    check-cast v9, Ljava/lang/String;

    .line 556
    .line 557
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 558
    .line 559
    move-object v4, v0

    .line 560
    check-cast v4, Lvc5;

    .line 561
    .line 562
    invoke-virtual/range {v17 .. v17}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    iget-object v1, v1, Lo55;->c:Lpb5;

    .line 567
    .line 568
    if-eqz v0, :cond_6

    .line 569
    .line 570
    iget-object v1, v1, Lpb5;->c:Lat4;

    .line 571
    .line 572
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Lib0;->v()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1}, Lab5;->w()V

    .line 579
    .line 580
    .line 581
    :try_start_c
    invoke-virtual {v1}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v2, "delete from default_event_params where app_id=?"

    .line 586
    .line 587
    filled-new-array {v9}, [Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_4

    .line 592
    .line 593
    .line 594
    goto/16 :goto_f

    .line 595
    .line 596
    :catch_4
    move-exception v0

    .line 597
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v1, Lr45;

    .line 600
    .line 601
    iget-object v1, v1, Lr45;->f:La25;

    .line 602
    .line 603
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 604
    .line 605
    .line 606
    iget-object v1, v1, La25;->f:Lx15;

    .line 607
    .line 608
    const-string v2, "Error clearing default event params"

    .line 609
    .line 610
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_f

    .line 614
    .line 615
    :cond_6
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 616
    .line 617
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 618
    .line 619
    .line 620
    iget-object v6, v0, Lib0;->a:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v6, Lr45;

    .line 623
    .line 624
    invoke-virtual {v0}, Lib0;->v()V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Lab5;->w()V

    .line 628
    .line 629
    .line 630
    iget-object v7, v0, Lib0;->a:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v7, Lr45;

    .line 633
    .line 634
    const-string v10, "dep"

    .line 635
    .line 636
    move-object v8, v6

    .line 637
    new-instance v6, Lvt4;

    .line 638
    .line 639
    move-object v11, v8

    .line 640
    const-string v8, ""

    .line 641
    .line 642
    const-wide/16 v13, 0x0

    .line 643
    .line 644
    const-wide/16 v15, 0x0

    .line 645
    .line 646
    move-object/from16 v18, v11

    .line 647
    .line 648
    const-wide/16 v11, 0x0

    .line 649
    .line 650
    move-object/from16 v2, v18

    .line 651
    .line 652
    invoke-direct/range {v6 .. v17}, Lvt4;-><init>(Lr45;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLandroid/os/Bundle;)V

    .line 653
    .line 654
    .line 655
    move-object/from16 v3, v17

    .line 656
    .line 657
    iget-object v7, v0, Lta5;->b:Lpb5;

    .line 658
    .line 659
    iget-object v7, v7, Lpb5;->g:Lub5;

    .line 660
    .line 661
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v6}, Lub5;->V(Lvt4;)Lu35;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    invoke-virtual {v6}, Lsm4;->a()[B

    .line 669
    .line 670
    .line 671
    move-result-object v6

    .line 672
    iget-object v2, v2, Lr45;->f:La25;

    .line 673
    .line 674
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 675
    .line 676
    .line 677
    iget-object v7, v2, La25;->n:Lx15;

    .line 678
    .line 679
    array-length v8, v6

    .line 680
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v8

    .line 684
    const-string v10, "Saving default event parameters, appId, data size"

    .line 685
    .line 686
    invoke-virtual {v7, v9, v8, v10}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    new-instance v7, Landroid/content/ContentValues;

    .line 690
    .line 691
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 692
    .line 693
    .line 694
    const-string v8, "app_id"

    .line 695
    .line 696
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    const-string v8, "parameters"

    .line 700
    .line 701
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 702
    .line 703
    .line 704
    :try_start_d
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    const-string v6, "default_event_params"

    .line 709
    .line 710
    const/4 v8, 0x5

    .line 711
    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 712
    .line 713
    .line 714
    move-result-wide v6

    .line 715
    const-wide/16 v10, -0x1

    .line 716
    .line 717
    cmp-long v0, v6, v10

    .line 718
    .line 719
    if-nez v0, :cond_7

    .line 720
    .line 721
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 722
    .line 723
    .line 724
    iget-object v0, v2, La25;->f:Lx15;

    .line 725
    .line 726
    const-string v6, "Failed to insert default event parameters (got -1). appId"

    .line 727
    .line 728
    invoke-static {v9}, La25;->D(Ljava/lang/String;)Ly15;

    .line 729
    .line 730
    .line 731
    move-result-object v7

    .line 732
    invoke-virtual {v0, v7, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    .line 733
    .line 734
    .line 735
    goto :goto_e

    .line 736
    :catch_5
    move-exception v0

    .line 737
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 738
    .line 739
    .line 740
    iget-object v2, v2, La25;->f:Lx15;

    .line 741
    .line 742
    invoke-static {v9}, La25;->D(Ljava/lang/String;)Ly15;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    const-string v7, "Error storing default event parameters. appId"

    .line 747
    .line 748
    invoke-virtual {v2, v6, v0, v7}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    :cond_7
    :goto_e
    iget-object v2, v1, Lpb5;->c:Lat4;

    .line 752
    .line 753
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 754
    .line 755
    .line 756
    iget-wide v6, v4, Lvc5;->Q:J

    .line 757
    .line 758
    :try_start_e
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    .line 759
    .line 760
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    filled-new-array {v9, v4}, [Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    const-wide/16 v10, 0x0

    .line 769
    .line 770
    invoke-virtual {v2, v0, v4, v10, v11}, Lat4;->S(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 771
    .line 772
    .line 773
    move-result-wide v12

    .line 774
    cmp-long v0, v12, v10

    .line 775
    .line 776
    if-lez v0, :cond_8

    .line 777
    .line 778
    goto :goto_f

    .line 779
    :cond_8
    const-string v0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    .line 780
    .line 781
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    filled-new-array {v9, v4}, [Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    invoke-virtual {v2, v0, v4, v10, v11}, Lat4;->S(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 790
    .line 791
    .line 792
    move-result-wide v12
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    .line 793
    cmp-long v0, v12, v10

    .line 794
    .line 795
    if-lez v0, :cond_9

    .line 796
    .line 797
    iget-object v0, v1, Lpb5;->c:Lat4;

    .line 798
    .line 799
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 800
    .line 801
    .line 802
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-virtual {v0, v9, v1, v5, v3}, Lat4;->O(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 807
    .line 808
    .line 809
    goto :goto_f

    .line 810
    :catch_6
    move-exception v0

    .line 811
    iget-object v1, v2, Lib0;->a:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v1, Lr45;

    .line 814
    .line 815
    iget-object v1, v1, Lr45;->f:La25;

    .line 816
    .line 817
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 818
    .line 819
    .line 820
    iget-object v1, v1, La25;->f:Lx15;

    .line 821
    .line 822
    const-string v2, "Error checking backfill conditions"

    .line 823
    .line 824
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    :cond_9
    :goto_f
    return-void

    .line 828
    :pswitch_8
    iget-object v1, v0, Le30;->r:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 831
    .line 832
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lr45;

    .line 833
    .line 834
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 835
    .line 836
    .line 837
    move-result-object v8

    .line 838
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 839
    .line 840
    move-object v11, v1

    .line 841
    check-cast v11, Lmw4;

    .line 842
    .line 843
    iget-object v1, v0, Le30;->p:Ljava/lang/Object;

    .line 844
    .line 845
    move-object v9, v1

    .line 846
    check-cast v9, Lbu4;

    .line 847
    .line 848
    iget-object v0, v0, Le30;->q:Ljava/lang/Object;

    .line 849
    .line 850
    move-object v10, v0

    .line 851
    check-cast v10, Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {v8}, Laz4;->v()V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v8}, Lj05;->w()V

    .line 857
    .line 858
    .line 859
    iget-object v0, v8, Lib0;->a:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v0, Lr45;

    .line 862
    .line 863
    iget-object v1, v0, Lr45;->i:Lac5;

    .line 864
    .line 865
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 866
    .line 867
    .line 868
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 869
    .line 870
    check-cast v1, Lr45;

    .line 871
    .line 872
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    iget-object v1, v1, Lr45;->a:Landroid/content/Context;

    .line 877
    .line 878
    const v3, 0xbdfcb8

    .line 879
    .line 880
    .line 881
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    if-eqz v1, :cond_a

    .line 886
    .line 887
    iget-object v1, v0, Lr45;->f:La25;

    .line 888
    .line 889
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 890
    .line 891
    .line 892
    iget-object v1, v1, La25;->i:Lx15;

    .line 893
    .line 894
    const-string v2, "Not bundling data. Service unavailable or out of date"

    .line 895
    .line 896
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 900
    .line 901
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 902
    .line 903
    .line 904
    new-array v1, v6, [B

    .line 905
    .line 906
    invoke-virtual {v0, v11, v1}, Lac5;->k0(Lmw4;[B)V

    .line 907
    .line 908
    .line 909
    goto :goto_10

    .line 910
    :cond_a
    new-instance v7, Le30;

    .line 911
    .line 912
    const/16 v12, 0x9

    .line 913
    .line 914
    invoke-direct/range {v7 .. v12}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v8, v7}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 918
    .line 919
    .line 920
    :goto_10
    return-void

    .line 921
    :pswitch_9
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 922
    .line 923
    check-cast v1, Lo55;

    .line 924
    .line 925
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 926
    .line 927
    check-cast v2, Ljava/lang/String;

    .line 928
    .line 929
    iget-object v3, v0, Le30;->q:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v3, Lwa5;

    .line 932
    .line 933
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v0, Ld15;

    .line 936
    .line 937
    iget-object v1, v1, Lo55;->c:Lpb5;

    .line 938
    .line 939
    invoke-virtual {v1}, Lpb5;->V()V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v1}, Lpb5;->d()Lj45;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    invoke-virtual {v4}, Lj45;->v()V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1}, Lpb5;->l0()V

    .line 950
    .line 951
    .line 952
    iget-object v4, v1, Lpb5;->c:Lat4;

    .line 953
    .line 954
    invoke-static {v4}, Lpb5;->T(Lab5;)V

    .line 955
    .line 956
    .line 957
    sget-object v7, Le05;->B:Ld05;

    .line 958
    .line 959
    invoke-virtual {v7, v5}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v7

    .line 963
    check-cast v7, Ljava/lang/Integer;

    .line 964
    .line 965
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 966
    .line 967
    .line 968
    move-result v7

    .line 969
    invoke-virtual {v4, v2, v3, v7}, Lat4;->A(Ljava/lang/String;Lwa5;I)Ljava/util/List;

    .line 970
    .line 971
    .line 972
    move-result-object v3

    .line 973
    new-instance v4, Ljava/util/ArrayList;

    .line 974
    .line 975
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .line 977
    .line 978
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 983
    .line 984
    .line 985
    move-result v7

    .line 986
    if-eqz v7, :cond_12

    .line 987
    .line 988
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v7

    .line 992
    check-cast v7, Ltb5;

    .line 993
    .line 994
    iget-object v8, v7, Ltb5;->c:Ljava/lang/String;

    .line 995
    .line 996
    iget-wide v9, v7, Ltb5;->h:J

    .line 997
    .line 998
    iget-wide v11, v7, Ltb5;->a:J

    .line 999
    .line 1000
    invoke-virtual {v1, v2, v8}, Lpb5;->s(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v8

    .line 1004
    if-nez v8, :cond_b

    .line 1005
    .line 1006
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v8

    .line 1010
    iget-object v8, v8, La25;->n:Lx15;

    .line 1011
    .line 1012
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v9

    .line 1016
    iget-object v7, v7, Ltb5;->c:Ljava/lang/String;

    .line 1017
    .line 1018
    const-string v10, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url"

    .line 1019
    .line 1020
    invoke-virtual {v8, v10, v2, v9, v7}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_11

    .line 1024
    :cond_b
    iget v8, v7, Ltb5;->i:I

    .line 1025
    .line 1026
    if-gtz v8, :cond_c

    .line 1027
    .line 1028
    goto :goto_12

    .line 1029
    :cond_c
    sget-object v13, Le05;->z:Ld05;

    .line 1030
    .line 1031
    invoke-virtual {v13, v5}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v13

    .line 1035
    check-cast v13, Ljava/lang/Integer;

    .line 1036
    .line 1037
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1038
    .line 1039
    .line 1040
    move-result v13

    .line 1041
    if-le v8, v13, :cond_d

    .line 1042
    .line 1043
    goto/16 :goto_16

    .line 1044
    .line 1045
    :cond_d
    sget-object v13, Le05;->x:Ld05;

    .line 1046
    .line 1047
    invoke-virtual {v13, v5}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v13

    .line 1051
    check-cast v13, Ljava/lang/Long;

    .line 1052
    .line 1053
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v13

    .line 1057
    add-int/lit8 v8, v8, -0x1

    .line 1058
    .line 1059
    const-wide/16 v15, 0x1

    .line 1060
    .line 1061
    shl-long/2addr v15, v8

    .line 1062
    mul-long/2addr v13, v15

    .line 1063
    sget-object v8, Le05;->y:Ld05;

    .line 1064
    .line 1065
    invoke-virtual {v8, v5}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v8

    .line 1069
    check-cast v8, Ljava/lang/Long;

    .line 1070
    .line 1071
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 1072
    .line 1073
    .line 1074
    move-result-wide v5

    .line 1075
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 1076
    .line 1077
    .line 1078
    move-result-wide v5

    .line 1079
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v8

    .line 1083
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v13

    .line 1087
    add-long/2addr v5, v9

    .line 1088
    cmp-long v5, v13, v5

    .line 1089
    .line 1090
    if-ltz v5, :cond_11

    .line 1091
    .line 1092
    :goto_12
    new-instance v5, Landroid/os/Bundle;

    .line 1093
    .line 1094
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    iget-object v6, v7, Ltb5;->d:Ljava/util/HashMap;

    .line 1098
    .line 1099
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v6

    .line 1103
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v6

    .line 1107
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v8

    .line 1111
    if-eqz v8, :cond_e

    .line 1112
    .line 1113
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v8

    .line 1117
    check-cast v8, Ljava/util/Map$Entry;

    .line 1118
    .line 1119
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v9

    .line 1123
    check-cast v9, Ljava/lang/String;

    .line 1124
    .line 1125
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v8

    .line 1129
    check-cast v8, Ljava/lang/String;

    .line 1130
    .line 1131
    invoke-virtual {v5, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_13

    .line 1135
    :cond_e
    iget-wide v8, v7, Ltb5;->a:J

    .line 1136
    .line 1137
    iget-object v6, v7, Ltb5;->b:Lp45;

    .line 1138
    .line 1139
    iget-object v10, v7, Ltb5;->c:Ljava/lang/String;

    .line 1140
    .line 1141
    iget-object v11, v7, Ltb5;->e:Lv75;

    .line 1142
    .line 1143
    iget-wide v12, v7, Ltb5;->g:J

    .line 1144
    .line 1145
    new-instance v17, Lua5;

    .line 1146
    .line 1147
    invoke-virtual {v6}, Lsm4;->a()[B

    .line 1148
    .line 1149
    .line 1150
    move-result-object v20

    .line 1151
    iget v6, v11, Lv75;->n:I

    .line 1152
    .line 1153
    const-string v26, ""

    .line 1154
    .line 1155
    move-object/from16 v22, v5

    .line 1156
    .line 1157
    move/from16 v23, v6

    .line 1158
    .line 1159
    move-wide/from16 v18, v8

    .line 1160
    .line 1161
    move-object/from16 v21, v10

    .line 1162
    .line 1163
    move-wide/from16 v24, v12

    .line 1164
    .line 1165
    invoke-direct/range {v17 .. v26}, Lua5;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    move-object/from16 v5, v17

    .line 1169
    .line 1170
    :try_start_f
    invoke-static {}, Lp45;->A()Li45;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v6

    .line 1174
    iget-object v7, v5, Lua5;->o:[B

    .line 1175
    .line 1176
    invoke-static {v6, v7}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v6

    .line 1180
    check-cast v6, Li45;

    .line 1181
    .line 1182
    const/4 v7, 0x0

    .line 1183
    :goto_14
    iget-object v8, v6, Lpn4;->o:Lrn4;

    .line 1184
    .line 1185
    check-cast v8, Lp45;

    .line 1186
    .line 1187
    invoke-virtual {v8}, Lp45;->u()I

    .line 1188
    .line 1189
    .line 1190
    move-result v8

    .line 1191
    if-ge v7, v8, :cond_f

    .line 1192
    .line 1193
    iget-object v8, v6, Lpn4;->o:Lrn4;

    .line 1194
    .line 1195
    check-cast v8, Lp45;

    .line 1196
    .line 1197
    invoke-virtual {v8, v7}, Lp45;->v(I)Lu45;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v8

    .line 1201
    invoke-virtual {v8}, Lrn4;->k()Lpn4;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v8

    .line 1205
    check-cast v8, Lq45;

    .line 1206
    .line 1207
    invoke-virtual {v1}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v9

    .line 1211
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1212
    .line 1213
    .line 1214
    move-result-wide v9

    .line 1215
    invoke-virtual {v8}, Lpn4;->b()V

    .line 1216
    .line 1217
    .line 1218
    iget-object v11, v8, Lpn4;->o:Lrn4;

    .line 1219
    .line 1220
    check-cast v11, Lu45;

    .line 1221
    .line 1222
    invoke-virtual {v11, v9, v10}, Lu45;->j0(J)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v6}, Lpn4;->b()V

    .line 1226
    .line 1227
    .line 1228
    iget-object v9, v6, Lpn4;->o:Lrn4;

    .line 1229
    .line 1230
    check-cast v9, Lp45;

    .line 1231
    .line 1232
    invoke-virtual {v8}, Lpn4;->d()Lrn4;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v8

    .line 1236
    check-cast v8, Lu45;

    .line 1237
    .line 1238
    invoke-virtual {v9, v7, v8}, Lp45;->C(ILu45;)V

    .line 1239
    .line 1240
    .line 1241
    add-int/lit8 v7, v7, 0x1

    .line 1242
    .line 1243
    goto :goto_14

    .line 1244
    :cond_f
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v7

    .line 1248
    check-cast v7, Lp45;

    .line 1249
    .line 1250
    invoke-virtual {v7}, Lsm4;->a()[B

    .line 1251
    .line 1252
    .line 1253
    move-result-object v7

    .line 1254
    iput-object v7, v5, Lua5;->o:[B

    .line 1255
    .line 1256
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v7

    .line 1260
    invoke-virtual {v7}, La25;->F()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v7

    .line 1264
    const/4 v8, 0x2

    .line 1265
    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v7

    .line 1269
    if-eqz v7, :cond_10

    .line 1270
    .line 1271
    iget-object v7, v1, Lpb5;->g:Lub5;

    .line 1272
    .line 1273
    invoke-static {v7}, Lpb5;->T(Lab5;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v6

    .line 1280
    check-cast v6, Lp45;

    .line 1281
    .line 1282
    invoke-virtual {v7, v6}, Lub5;->W(Lp45;)Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v6

    .line 1286
    iput-object v6, v5, Lua5;->t:Ljava/lang/String;
    :try_end_f
    .catch Lfo4; {:try_start_f .. :try_end_f} :catch_7

    .line 1287
    .line 1288
    :cond_10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    :goto_15
    const/4 v5, 0x0

    .line 1292
    const/4 v6, 0x0

    .line 1293
    goto/16 :goto_11

    .line 1294
    .line 1295
    :catch_7
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v5

    .line 1299
    iget-object v5, v5, La25;->i:Lx15;

    .line 1300
    .line 1301
    const-string v6, "Failed to parse queued batch. appId"

    .line 1302
    .line 1303
    invoke-virtual {v5, v2, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_15

    .line 1307
    :cond_11
    :goto_16
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v5

    .line 1311
    iget-object v5, v5, La25;->n:Lx15;

    .line 1312
    .line 1313
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v6

    .line 1317
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v7

    .line 1321
    const-string v8, "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis"

    .line 1322
    .line 1323
    invoke-virtual {v5, v8, v2, v6, v7}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_15

    .line 1327
    :cond_12
    new-instance v3, Lza5;

    .line 1328
    .line 1329
    invoke-direct {v3, v4}, Lza5;-><init>(Ljava/util/ArrayList;)V

    .line 1330
    .line 1331
    .line 1332
    :try_start_10
    invoke-interface {v0, v3}, Ld15;->u(Lza5;)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    iget-object v0, v0, La25;->n:Lx15;

    .line 1340
    .line 1341
    const-string v4, "[sgtm] Sending queued upload batches to client. appId, count"

    .line 1342
    .line 1343
    iget-object v3, v3, Lza5;->n:Ljava/util/List;

    .line 1344
    .line 1345
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v3

    .line 1353
    invoke-virtual {v0, v2, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1354
    .line 1355
    .line 1356
    goto :goto_17

    .line 1357
    :catch_8
    move-exception v0

    .line 1358
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    iget-object v1, v1, La25;->f:Lx15;

    .line 1363
    .line 1364
    const-string v3, "[sgtm] Failed to return upload batches for app"

    .line 1365
    .line 1366
    invoke-virtual {v1, v2, v0, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    :goto_17
    return-void

    .line 1370
    :pswitch_a
    iget-object v1, v0, Le30;->o:Ljava/lang/Object;

    .line 1371
    .line 1372
    check-cast v1, Landroid/view/View;

    .line 1373
    .line 1374
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 1375
    .line 1376
    check-cast v2, Lqd4;

    .line 1377
    .line 1378
    iget-object v3, v0, Le30;->q:Ljava/lang/Object;

    .line 1379
    .line 1380
    check-cast v3, Lpc4;

    .line 1381
    .line 1382
    invoke-static {v1, v2, v3}, Lld4;->h(Landroid/view/View;Lqd4;Lpc4;)V

    .line 1383
    .line 1384
    .line 1385
    iget-object v0, v0, Le30;->r:Ljava/lang/Object;

    .line 1386
    .line 1387
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1388
    .line 1389
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1390
    .line 1391
    .line 1392
    return-void

    .line 1393
    :pswitch_b
    iget-object v1, v0, Le30;->r:Ljava/lang/Object;

    .line 1394
    .line 1395
    check-cast v1, Lwu4;

    .line 1396
    .line 1397
    iget-object v1, v1, Lwu4;->o:Ljava/lang/Object;

    .line 1398
    .line 1399
    check-cast v1, Lg30;

    .line 1400
    .line 1401
    iget-object v2, v0, Le30;->p:Ljava/lang/Object;

    .line 1402
    .line 1403
    check-cast v2, Lzb2;

    .line 1404
    .line 1405
    iget-object v3, v0, Le30;->o:Ljava/lang/Object;

    .line 1406
    .line 1407
    check-cast v3, Lf30;

    .line 1408
    .line 1409
    if-eqz v3, :cond_13

    .line 1410
    .line 1411
    iput-boolean v4, v1, Lg30;->M:Z

    .line 1412
    .line 1413
    iget-object v3, v3, Lf30;->b:Lub2;

    .line 1414
    .line 1415
    const/4 v4, 0x0

    .line 1416
    invoke-virtual {v3, v4}, Lub2;->c(Z)V

    .line 1417
    .line 1418
    .line 1419
    iput-boolean v4, v1, Lg30;->M:Z

    .line 1420
    .line 1421
    :cond_13
    invoke-virtual {v2}, Lzb2;->isEnabled()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v1

    .line 1425
    if-eqz v1, :cond_14

    .line 1426
    .line 1427
    invoke-virtual {v2}, Lzb2;->hasSubMenu()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    if-eqz v1, :cond_14

    .line 1432
    .line 1433
    iget-object v0, v0, Le30;->q:Ljava/lang/Object;

    .line 1434
    .line 1435
    check-cast v0, Lub2;

    .line 1436
    .line 1437
    const/4 v1, 0x4

    .line 1438
    const/4 v15, 0x0

    .line 1439
    invoke-virtual {v0, v2, v15, v1}, Lub2;->p(Landroid/view/MenuItem;Lac2;I)Z

    .line 1440
    .line 1441
    .line 1442
    :cond_14
    return-void

    .line 1443
    :pswitch_data_0
    .packed-switch 0x0
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
