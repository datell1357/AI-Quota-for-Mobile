.class public final Li63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Li63;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p4, p0, Li63;->n:I

    iput-object p1, p0, Li63;->q:Ljava/lang/Object;

    iput-object p2, p0, Li63;->o:Ljava/lang/Object;

    iput-object p3, p0, Li63;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 18
    iput p4, p0, Li63;->n:I

    iput-object p1, p0, Li63;->o:Ljava/lang/Object;

    iput-object p2, p0, Li63;->p:Ljava/lang/Object;

    iput-object p3, p0, Li63;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;Lvc5;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Li63;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Li63;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Li63;->p:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Li63;->q:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Li63;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lw33;

    .line 17
    .line 18
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v1, Li63;->p:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lrf5;

    .line 25
    .line 26
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Le30;

    .line 29
    .line 30
    invoke-static {}, Lye5;->c()Lqf5;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v0}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :try_start_0
    invoke-virtual {v1}, Le30;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-static {v0}, Lxe5;->a(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    invoke-static {v2, v3}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_0
    invoke-static {}, Lmk0;->b()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lhg;

    .line 62
    .line 63
    iget-object v2, v1, Li63;->p:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljk3;

    .line 66
    .line 67
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lre5;

    .line 70
    .line 71
    :try_start_2
    invoke-static {v2}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    iget-object v0, v0, Lhg;->f:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Ljk3;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ls0;->m(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ls0;->o(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_2
    invoke-virtual {v1, v2}, Ls0;->o(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :pswitch_1
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lra3;

    .line 93
    .line 94
    iget-object v2, v1, Li63;->p:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, La25;

    .line 97
    .line 98
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Landroid/app/job/JobParameters;

    .line 101
    .line 102
    iget-object v2, v2, La25;->n:Lx15;

    .line 103
    .line 104
    const-string v3, "AppMeasurementJobService processed last upload request."

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lra3;->o:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroid/app/Service;

    .line 112
    .line 113
    check-cast v0, Lu95;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Lu95;->c(Landroid/app/job/JobParameters;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lo95;

    .line 122
    .line 123
    iget-object v2, v1, Li63;->p:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Lvc5;

    .line 126
    .line 127
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Lpo4;

    .line 130
    .line 131
    iget-object v3, v0, Lib0;->a:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Lr45;

    .line 134
    .line 135
    iget-object v4, v0, Lo95;->d:Ln05;

    .line 136
    .line 137
    if-nez v4, :cond_1

    .line 138
    .line 139
    iget-object v0, v3, Lr45;->f:La25;

    .line 140
    .line 141
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, La25;->f:Lx15;

    .line 145
    .line 146
    const-string v1, "[sgtm] Discarding data. Failed to update batch upload status."

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_1
    :try_start_3
    invoke-interface {v4, v2, v1}, Ln05;->s(Lvc5;Lpo4;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lo95;->I()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    iget-object v2, v3, Lr45;->f:La25;

    .line 161
    .line 162
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, v2, La25;->f:Lx15;

    .line 166
    .line 167
    iget-wide v3, v1, Lpo4;->n:J

    .line 168
    .line 169
    const-string v1, "[sgtm] Failed to update batch upload status, rowId, exception"

    .line 170
    .line 171
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3, v0, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void

    .line 179
    :pswitch_3
    const-string v2, "Failed to get app instance id"

    .line 180
    .line 181
    iget-object v0, v1, Li63;->p:Ljava/lang/Object;

    .line 182
    .line 183
    move-object v3, v0

    .line 184
    check-cast v3, Lmw4;

    .line 185
    .line 186
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 187
    .line 188
    move-object v4, v0

    .line 189
    check-cast v4, Lo95;

    .line 190
    .line 191
    :try_start_4
    iget-object v0, v4, Lib0;->a:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Lr45;

    .line 194
    .line 195
    iget-object v5, v0, Lr45;->e:Lf35;

    .line 196
    .line 197
    iget-object v7, v0, Lr45;->f:La25;

    .line 198
    .line 199
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Lf35;->C()Ly55;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    sget-object v9, Lx55;->p:Lx55;

    .line 207
    .line 208
    invoke-virtual {v8, v9}, Ly55;->i(Lx55;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_2

    .line 213
    .line 214
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v7, La25;->k:Lx15;

    .line 218
    .line 219
    const-string v7, "Analytics storage consent denied; will not get app instance id"

    .line 220
    .line 221
    invoke-virtual {v1, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lr45;->m:Lm75;

    .line 225
    .line 226
    invoke-static {v1}, Lr45;->k(Lj05;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v1, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    .line 231
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v5, Lf35;->g:Lmu0;

    .line 238
    .line 239
    invoke-virtual {v1, v6}, Lmu0;->i(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :catchall_3
    move-exception v0

    .line 244
    goto :goto_8

    .line 245
    :catch_1
    move-exception v0

    .line 246
    goto :goto_5

    .line 247
    :cond_2
    iget-object v8, v4, Lo95;->d:Ln05;

    .line 248
    .line 249
    if-nez v8, :cond_3

    .line 250
    .line 251
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v7, La25;->f:Lx15;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 257
    .line 258
    .line 259
    :goto_3
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 260
    .line 261
    :goto_4
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v6, v3}, Lac5;->h0(Ljava/lang/String;Lmw4;)V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_3
    :try_start_5
    iget-object v1, v1, Li63;->o:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v1, Lvc5;

    .line 271
    .line 272
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-interface {v8, v1}, Ln05;->t(Lvc5;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    if-eqz v6, :cond_4

    .line 280
    .line 281
    iget-object v0, v0, Lr45;->m:Lm75;

    .line 282
    .line 283
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, v0, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v5, Lf35;->g:Lmu0;

    .line 295
    .line 296
    invoke-virtual {v0, v6}, Lmu0;->i(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_4
    invoke-virtual {v4}, Lo95;->I()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :goto_5
    :try_start_6
    iget-object v1, v4, Lib0;->a:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v1, Lr45;

    .line 306
    .line 307
    iget-object v1, v1, Lr45;->f:La25;

    .line 308
    .line 309
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v1, La25;->f:Lx15;

    .line 313
    .line 314
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 315
    .line 316
    .line 317
    :goto_6
    iget-object v0, v4, Lib0;->a:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v0, Lr45;

    .line 320
    .line 321
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :goto_7
    return-void

    .line 325
    :goto_8
    iget-object v1, v4, Lib0;->a:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v1, Lr45;

    .line 328
    .line 329
    iget-object v1, v1, Lr45;->i:Lac5;

    .line 330
    .line 331
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v6, v3}, Lac5;->h0(Ljava/lang/String;Lmw4;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :pswitch_4
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 339
    .line 340
    move-object v2, v0

    .line 341
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 342
    .line 343
    monitor-enter v2

    .line 344
    :try_start_7
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v0, Lo95;

    .line 347
    .line 348
    iget-object v3, v0, Lib0;->a:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v3, Lr45;

    .line 351
    .line 352
    iget-object v4, v3, Lr45;->e:Lf35;

    .line 353
    .line 354
    invoke-static {v4}, Lr45;->j(Lib0;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Lf35;->C()Ly55;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    sget-object v5, Lx55;->p:Lx55;

    .line 362
    .line 363
    invoke-virtual {v4, v5}, Ly55;->i(Lx55;)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-nez v4, :cond_5

    .line 368
    .line 369
    iget-object v4, v3, Lr45;->f:La25;

    .line 370
    .line 371
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v4, La25;->k:Lx15;

    .line 375
    .line 376
    const-string v5, "Analytics storage consent denied; will not get app instance id"

    .line 377
    .line 378
    invoke-virtual {v4, v5}, Lx15;->a(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v0, Lr45;

    .line 384
    .line 385
    iget-object v0, v0, Lr45;->m:Lm75;

    .line 386
    .line 387
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v0, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v3, Lr45;->e:Lf35;

    .line 396
    .line 397
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v0, Lf35;->g:Lmu0;

    .line 401
    .line 402
    invoke-virtual {v0, v6}, Lmu0;->i(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 406
    .line 407
    .line 408
    :goto_9
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 409
    .line 410
    .line 411
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 412
    goto :goto_c

    .line 413
    :catchall_4
    move-exception v0

    .line 414
    goto :goto_e

    .line 415
    :catchall_5
    move-exception v0

    .line 416
    goto :goto_d

    .line 417
    :catch_2
    move-exception v0

    .line 418
    goto :goto_a

    .line 419
    :cond_5
    :try_start_9
    iget-object v4, v0, Lo95;->d:Ln05;

    .line 420
    .line 421
    if-nez v4, :cond_6

    .line 422
    .line 423
    iget-object v0, v3, Lr45;->f:La25;

    .line 424
    .line 425
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v0, La25;->f:Lx15;

    .line 429
    .line 430
    const-string v3, "Failed to get app instance id"

    .line 431
    .line 432
    invoke-virtual {v0, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_6
    iget-object v5, v1, Li63;->p:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v5, Lvc5;

    .line 439
    .line 440
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    invoke-interface {v4, v5}, Ln05;->t(Lvc5;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    check-cast v4, Ljava/lang/String;

    .line 455
    .line 456
    if-eqz v4, :cond_7

    .line 457
    .line 458
    iget-object v5, v0, Lib0;->a:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v5, Lr45;

    .line 461
    .line 462
    iget-object v5, v5, Lr45;->m:Lm75;

    .line 463
    .line 464
    invoke-static {v5}, Lr45;->k(Lj05;)V

    .line 465
    .line 466
    .line 467
    iget-object v5, v5, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 468
    .line 469
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    iget-object v3, v3, Lr45;->e:Lf35;

    .line 473
    .line 474
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 475
    .line 476
    .line 477
    iget-object v3, v3, Lf35;->g:Lmu0;

    .line 478
    .line 479
    invoke-virtual {v3, v4}, Lmu0;->i(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    :cond_7
    invoke-virtual {v0}, Lo95;->I()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 483
    .line 484
    .line 485
    :try_start_a
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 488
    .line 489
    goto :goto_b

    .line 490
    :goto_a
    :try_start_b
    iget-object v3, v1, Li63;->q:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v3, Lo95;

    .line 493
    .line 494
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v3, Lr45;

    .line 497
    .line 498
    iget-object v3, v3, Lr45;->f:La25;

    .line 499
    .line 500
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 501
    .line 502
    .line 503
    iget-object v3, v3, La25;->f:Lx15;

    .line 504
    .line 505
    const-string v4, "Failed to get app instance id"

    .line 506
    .line 507
    invoke-virtual {v3, v0, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 508
    .line 509
    .line 510
    :try_start_c
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 513
    .line 514
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 515
    .line 516
    .line 517
    monitor-exit v2

    .line 518
    :goto_c
    return-void

    .line 519
    :goto_d
    iget-object v1, v1, Li63;->o:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 524
    .line 525
    .line 526
    throw v0

    .line 527
    :goto_e
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 528
    throw v0

    .line 529
    :pswitch_5
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, Lo55;

    .line 532
    .line 533
    iget-object v2, v1, Li63;->p:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v2, Lvc5;

    .line 536
    .line 537
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v1, Lpo4;

    .line 540
    .line 541
    iget-object v7, v0, Lo55;->c:Lpb5;

    .line 542
    .line 543
    invoke-virtual {v7}, Lpb5;->V()V

    .line 544
    .line 545
    .line 546
    iget-object v0, v2, Lvc5;->n:Ljava/lang/String;

    .line 547
    .line 548
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    move-object v2, v0

    .line 553
    check-cast v2, Ljava/lang/String;

    .line 554
    .line 555
    iget-object v8, v7, Lpb5;->E:Ljava/util/HashMap;

    .line 556
    .line 557
    invoke-virtual {v7}, Lpb5;->d()Lj45;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lj45;->v()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7}, Lpb5;->l0()V

    .line 565
    .line 566
    .line 567
    iget-object v9, v7, Lpb5;->c:Lat4;

    .line 568
    .line 569
    invoke-static {v9}, Lpb5;->T(Lab5;)V

    .line 570
    .line 571
    .line 572
    iget-wide v11, v1, Lpo4;->n:J

    .line 573
    .line 574
    iget-wide v13, v1, Lpo4;->p:J

    .line 575
    .line 576
    invoke-virtual {v9}, Lib0;->v()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v9}, Lab5;->w()V

    .line 580
    .line 581
    .line 582
    const/4 v10, 0x4

    .line 583
    :try_start_d
    invoke-virtual {v9}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 584
    .line 585
    .line 586
    move-result-object v15

    .line 587
    const-string v16, "upload_queue"

    .line 588
    .line 589
    const-string v17, "rowId"

    .line 590
    .line 591
    const-string v18, "app_id"

    .line 592
    .line 593
    const-string v19, "measurement_batch"

    .line 594
    .line 595
    const-string v20, "upload_uri"

    .line 596
    .line 597
    const-string v21, "upload_headers"

    .line 598
    .line 599
    const-string v22, "upload_type"

    .line 600
    .line 601
    const-string v23, "retry_count"

    .line 602
    .line 603
    const-string v24, "creation_timestamp"

    .line 604
    .line 605
    const-string v25, "associated_row_id"

    .line 606
    .line 607
    const-string v26, "last_upload_timestamp"

    .line 608
    .line 609
    filled-new-array/range {v17 .. v26}, [Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v17

    .line 613
    const-string v18, "rowId=?"

    .line 614
    .line 615
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    filled-new-array {v0}, [Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v19

    .line 623
    const-string v23, "1"

    .line 624
    .line 625
    const/16 v20, 0x0

    .line 626
    .line 627
    const/16 v21, 0x0

    .line 628
    .line 629
    const/16 v22, 0x0

    .line 630
    .line 631
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 632
    .line 633
    .line 634
    move-result-object v15
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 635
    :try_start_e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-nez v0, :cond_8

    .line 640
    .line 641
    move v6, v10

    .line 642
    move-wide v4, v13

    .line 643
    goto/16 :goto_14

    .line 644
    .line 645
    :cond_8
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Ljava/lang/String;

    .line 654
    .line 655
    const/4 v6, 0x2

    .line 656
    invoke-interface {v15, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 657
    .line 658
    .line 659
    move-result-object v6
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 660
    move-wide/from16 v16, v13

    .line 661
    .line 662
    :try_start_f
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v14

    .line 666
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v13
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 670
    const/4 v10, 0x5

    .line 671
    :try_start_10
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 672
    .line 673
    .line 674
    move-result v10

    .line 675
    const/4 v5, 0x6

    .line 676
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    const/4 v4, 0x7

    .line 681
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 682
    .line 683
    .line 684
    move-result-wide v18

    .line 685
    const/16 v4, 0x8

    .line 686
    .line 687
    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 688
    .line 689
    .line 690
    move-result-wide v20

    .line 691
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v22
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 695
    move-wide/from16 v27, v16

    .line 696
    .line 697
    move/from16 v17, v5

    .line 698
    .line 699
    move-wide/from16 v4, v27

    .line 700
    .line 701
    move/from16 v16, v10

    .line 702
    .line 703
    move-object v3, v15

    .line 704
    move-object v10, v0

    .line 705
    move-object v15, v13

    .line 706
    move-object v13, v6

    .line 707
    const/4 v6, 0x4

    .line 708
    :try_start_11
    invoke-virtual/range {v9 .. v23}, Lat4;->Y(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Ltb5;

    .line 709
    .line 710
    .line 711
    move-result-object v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 712
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 713
    .line 714
    .line 715
    goto :goto_15

    .line 716
    :catchall_6
    move-exception v0

    .line 717
    goto :goto_f

    .line 718
    :catch_3
    move-exception v0

    .line 719
    goto :goto_10

    .line 720
    :catchall_7
    move-exception v0

    .line 721
    move-object v3, v15

    .line 722
    goto :goto_f

    .line 723
    :catch_4
    move-exception v0

    .line 724
    move-object v3, v15

    .line 725
    move-wide/from16 v4, v16

    .line 726
    .line 727
    const/4 v6, 0x4

    .line 728
    goto :goto_10

    .line 729
    :catch_5
    move-exception v0

    .line 730
    move v6, v10

    .line 731
    move-object v3, v15

    .line 732
    move-wide/from16 v4, v16

    .line 733
    .line 734
    goto :goto_10

    .line 735
    :catch_6
    move-exception v0

    .line 736
    move v6, v10

    .line 737
    move-wide v4, v13

    .line 738
    move-object v3, v15

    .line 739
    goto :goto_10

    .line 740
    :goto_f
    move-object v6, v3

    .line 741
    goto/16 :goto_1a

    .line 742
    .line 743
    :goto_10
    move-object v15, v3

    .line 744
    goto :goto_13

    .line 745
    :catchall_8
    move-exception v0

    .line 746
    goto :goto_11

    .line 747
    :catch_7
    move-exception v0

    .line 748
    move v6, v10

    .line 749
    move-wide v4, v13

    .line 750
    goto :goto_12

    .line 751
    :goto_11
    const/4 v6, 0x0

    .line 752
    goto/16 :goto_1a

    .line 753
    .line 754
    :goto_12
    const/4 v15, 0x0

    .line 755
    :goto_13
    :try_start_12
    iget-object v3, v9, Lib0;->a:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v3, Lr45;

    .line 758
    .line 759
    iget-object v3, v3, Lr45;->f:La25;

    .line 760
    .line 761
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v3, La25;->f:Lx15;

    .line 765
    .line 766
    const-string v9, "Error to querying MeasurementBatch from upload_queue. rowId"

    .line 767
    .line 768
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 769
    .line 770
    .line 771
    move-result-object v10

    .line 772
    invoke-virtual {v3, v10, v0, v9}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 773
    .line 774
    .line 775
    :goto_14
    if-eqz v15, :cond_9

    .line 776
    .line 777
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 778
    .line 779
    .line 780
    :cond_9
    const/4 v0, 0x0

    .line 781
    :goto_15
    if-nez v0, :cond_a

    .line 782
    .line 783
    invoke-virtual {v7}, Lpb5;->c()La25;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    iget-object v0, v0, La25;->i:Lx15;

    .line 788
    .line 789
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    const-string v3, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    .line 794
    .line 795
    invoke-virtual {v0, v2, v1, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_19

    .line 799
    .line 800
    :cond_a
    iget-object v0, v0, Ltb5;->c:Ljava/lang/String;

    .line 801
    .line 802
    iget v3, v1, Lpo4;->o:I

    .line 803
    .line 804
    const/4 v9, 0x1

    .line 805
    if-ne v3, v9, :cond_d

    .line 806
    .line 807
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-eqz v1, :cond_b

    .line 812
    .line 813
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    :cond_b
    iget-object v0, v7, Lpb5;->c:Lat4;

    .line 817
    .line 818
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 819
    .line 820
    .line 821
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    invoke-virtual {v0, v1}, Lat4;->C(Ljava/lang/Long;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v7}, Lpb5;->c()La25;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    iget-object v0, v0, La25;->n:Lx15;

    .line 833
    .line 834
    const-string v3, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    .line 835
    .line 836
    invoke-virtual {v0, v2, v1, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    const-wide/16 v0, 0x0

    .line 840
    .line 841
    cmp-long v0, v4, v0

    .line 842
    .line 843
    if-lez v0, :cond_10

    .line 844
    .line 845
    iget-object v0, v7, Lpb5;->c:Lat4;

    .line 846
    .line 847
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 848
    .line 849
    .line 850
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 851
    .line 852
    check-cast v1, Lr45;

    .line 853
    .line 854
    invoke-virtual {v0}, Lib0;->v()V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0}, Lab5;->w()V

    .line 858
    .line 859
    .line 860
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    new-instance v8, Landroid/content/ContentValues;

    .line 868
    .line 869
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .line 871
    .line 872
    const/16 v26, 0x1

    .line 873
    .line 874
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 875
    .line 876
    .line 877
    move-result-object v9

    .line 878
    const-string v10, "upload_type"

    .line 879
    .line 880
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    .line 882
    .line 883
    iget-object v9, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 884
    .line 885
    iget-object v1, v1, Lr45;->f:La25;

    .line 886
    .line 887
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 888
    .line 889
    .line 890
    move-result-wide v9

    .line 891
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 892
    .line 893
    .line 894
    move-result-object v9

    .line 895
    const-string v10, "creation_timestamp"

    .line 896
    .line 897
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 898
    .line 899
    .line 900
    :try_start_13
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    const-string v9, "upload_queue"

    .line 905
    .line 906
    const-string v10, "rowid=? AND app_id=? AND upload_type=?"

    .line 907
    .line 908
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v11

    .line 912
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v6

    .line 916
    filled-new-array {v11, v2, v6}, [Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v6

    .line 920
    invoke-virtual {v0, v9, v8, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    int-to-long v8, v0

    .line 925
    const-wide/16 v10, 0x1

    .line 926
    .line 927
    cmp-long v0, v8, v10

    .line 928
    .line 929
    if-eqz v0, :cond_c

    .line 930
    .line 931
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 932
    .line 933
    .line 934
    iget-object v0, v1, La25;->i:Lx15;

    .line 935
    .line 936
    const-string v6, "Google Signal pending batch not updated. appId, rowId"

    .line 937
    .line 938
    invoke-virtual {v0, v2, v3, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_8

    .line 939
    .line 940
    .line 941
    goto :goto_16

    .line 942
    :catch_8
    move-exception v0

    .line 943
    goto :goto_17

    .line 944
    :cond_c
    :goto_16
    invoke-virtual {v7}, Lpb5;->c()La25;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    iget-object v0, v0, La25;->n:Lx15;

    .line 949
    .line 950
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    const-string v3, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    .line 955
    .line 956
    invoke-virtual {v0, v2, v1, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v7, v2}, Lpb5;->t(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    goto :goto_19

    .line 963
    :goto_17
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 964
    .line 965
    .line 966
    iget-object v1, v1, La25;->f:Lx15;

    .line 967
    .line 968
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    const-string v4, "Failed to update google Signal pending batch. appid, rowId"

    .line 973
    .line 974
    invoke-virtual {v1, v4, v2, v3, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    throw v0

    .line 978
    :cond_d
    const/4 v4, 0x3

    .line 979
    if-ne v3, v4, :cond_f

    .line 980
    .line 981
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    check-cast v3, Lob5;

    .line 986
    .line 987
    if-nez v3, :cond_e

    .line 988
    .line 989
    new-instance v3, Lob5;

    .line 990
    .line 991
    invoke-direct {v3, v7}, Lob5;-><init>(Lpb5;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    goto :goto_18

    .line 998
    :cond_e
    iget v4, v3, Lob5;->b:I

    .line 999
    .line 1000
    const/16 v26, 0x1

    .line 1001
    .line 1002
    add-int/lit8 v4, v4, 0x1

    .line 1003
    .line 1004
    iput v4, v3, Lob5;->b:I

    .line 1005
    .line 1006
    invoke-virtual {v3}, Lob5;->a()J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v4

    .line 1010
    iput-wide v4, v3, Lob5;->c:J

    .line 1011
    .line 1012
    :goto_18
    invoke-virtual {v7}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v4

    .line 1020
    iget-wide v8, v3, Lob5;->c:J

    .line 1021
    .line 1022
    sub-long/2addr v8, v4

    .line 1023
    invoke-virtual {v7}, Lpb5;->c()La25;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    iget-object v3, v3, La25;->n:Lx15;

    .line 1028
    .line 1029
    const-wide/16 v4, 0x3e8

    .line 1030
    .line 1031
    div-long/2addr v8, v4

    .line 1032
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    const-string v5, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    .line 1037
    .line 1038
    invoke-virtual {v3, v5, v2, v0, v4}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    :cond_f
    iget-object v0, v7, Lpb5;->c:Lat4;

    .line 1042
    .line 1043
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 1044
    .line 1045
    .line 1046
    iget-wide v3, v1, Lpo4;->n:J

    .line 1047
    .line 1048
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-virtual {v0, v1}, Lat4;->H(Ljava/lang/Long;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v7}, Lpb5;->c()La25;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    iget-object v0, v0, La25;->n:Lx15;

    .line 1060
    .line 1061
    const-string v3, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    .line 1062
    .line 1063
    invoke-virtual {v0, v2, v1, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_10
    :goto_19
    return-void

    .line 1067
    :catchall_9
    move-exception v0

    .line 1068
    move-object v6, v15

    .line 1069
    :goto_1a
    if-eqz v6, :cond_11

    .line 1070
    .line 1071
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1072
    .line 1073
    .line 1074
    :cond_11
    throw v0

    .line 1075
    :pswitch_6
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v0, Lo55;

    .line 1078
    .line 1079
    iget-object v0, v0, Lo55;->c:Lpb5;

    .line 1080
    .line 1081
    invoke-virtual {v0}, Lpb5;->V()V

    .line 1082
    .line 1083
    .line 1084
    iget-object v2, v1, Li63;->o:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast v2, Lvb5;

    .line 1087
    .line 1088
    invoke-virtual {v2}, Lvb5;->Y()Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    iget-object v1, v1, Li63;->p:Ljava/lang/Object;

    .line 1093
    .line 1094
    check-cast v1, Lvc5;

    .line 1095
    .line 1096
    if-nez v3, :cond_12

    .line 1097
    .line 1098
    iget-object v2, v2, Lvb5;->o:Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-virtual {v0, v2, v1}, Lpb5;->X(Ljava/lang/String;Lvc5;)V

    .line 1101
    .line 1102
    .line 1103
    goto :goto_1b

    .line 1104
    :cond_12
    invoke-virtual {v0, v2, v1}, Lpb5;->W(Lvb5;Lvc5;)V

    .line 1105
    .line 1106
    .line 1107
    :goto_1b
    return-void

    .line 1108
    :pswitch_7
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 1109
    .line 1110
    check-cast v0, Lo55;

    .line 1111
    .line 1112
    iget-object v2, v0, Lo55;->c:Lpb5;

    .line 1113
    .line 1114
    invoke-virtual {v2}, Lpb5;->V()V

    .line 1115
    .line 1116
    .line 1117
    iget-object v0, v0, Lo55;->c:Lpb5;

    .line 1118
    .line 1119
    iget-object v2, v1, Li63;->o:Ljava/lang/Object;

    .line 1120
    .line 1121
    check-cast v2, Lbu4;

    .line 1122
    .line 1123
    iget-object v1, v1, Li63;->p:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v1, Ljava/lang/String;

    .line 1126
    .line 1127
    invoke-virtual {v0, v1, v2}, Lpb5;->h(Ljava/lang/String;Lbu4;)V

    .line 1128
    .line 1129
    .line 1130
    return-void

    .line 1131
    :pswitch_8
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 1132
    .line 1133
    check-cast v0, Lbu4;

    .line 1134
    .line 1135
    iget-object v3, v1, Li63;->p:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast v3, Lvc5;

    .line 1138
    .line 1139
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast v1, Lo55;

    .line 1142
    .line 1143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    iget-object v1, v1, Lo55;->c:Lpb5;

    .line 1147
    .line 1148
    const-string v4, "_cmp"

    .line 1149
    .line 1150
    iget-object v5, v0, Lbu4;->n:Ljava/lang/String;

    .line 1151
    .line 1152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v4

    .line 1156
    if-eqz v4, :cond_15

    .line 1157
    .line 1158
    iget-object v7, v0, Lbu4;->o:Lzt4;

    .line 1159
    .line 1160
    if-eqz v7, :cond_15

    .line 1161
    .line 1162
    iget-object v4, v7, Lzt4;->n:Landroid/os/Bundle;

    .line 1163
    .line 1164
    invoke-virtual {v4}, Landroid/os/BaseBundle;->size()I

    .line 1165
    .line 1166
    .line 1167
    move-result v5

    .line 1168
    if-nez v5, :cond_13

    .line 1169
    .line 1170
    goto :goto_1c

    .line 1171
    :cond_13
    const-string v5, "_cis"

    .line 1172
    .line 1173
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    const-string v5, "referrer broadcast"

    .line 1178
    .line 1179
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v5

    .line 1183
    if-nez v5, :cond_14

    .line 1184
    .line 1185
    const-string v5, "referrer API"

    .line 1186
    .line 1187
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v4

    .line 1191
    if-eqz v4, :cond_15

    .line 1192
    .line 1193
    :cond_14
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    iget-object v4, v4, La25;->l:Lx15;

    .line 1198
    .line 1199
    invoke-virtual {v0}, Lbu4;->toString()Ljava/lang/String;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v5

    .line 1203
    const-string v6, "Event has been filtered "

    .line 1204
    .line 1205
    invoke-virtual {v4, v5, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    new-instance v5, Lbu4;

    .line 1209
    .line 1210
    iget-object v8, v0, Lbu4;->p:Ljava/lang/String;

    .line 1211
    .line 1212
    iget-wide v9, v0, Lbu4;->q:J

    .line 1213
    .line 1214
    iget-wide v11, v0, Lbu4;->r:J

    .line 1215
    .line 1216
    const-string v6, "_cmpx"

    .line 1217
    .line 1218
    invoke-direct/range {v5 .. v12}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 1219
    .line 1220
    .line 1221
    move-object v0, v5

    .line 1222
    :cond_15
    :goto_1c
    iget-object v4, v0, Lbu4;->n:Ljava/lang/String;

    .line 1223
    .line 1224
    iget-object v5, v1, Lpb5;->a:Lw35;

    .line 1225
    .line 1226
    iget-object v6, v1, Lpb5;->g:Lub5;

    .line 1227
    .line 1228
    invoke-static {v5}, Lpb5;->T(Lab5;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v7, v3, Lvc5;->n:Ljava/lang/String;

    .line 1232
    .line 1233
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v8

    .line 1237
    if-eqz v8, :cond_16

    .line 1238
    .line 1239
    const/4 v5, 0x0

    .line 1240
    goto :goto_1d

    .line 1241
    :cond_16
    iget-object v5, v5, Lw35;->k:Lm35;

    .line 1242
    .line 1243
    invoke-virtual {v5, v7}, Ls82;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v5

    .line 1247
    check-cast v5, Lmv4;

    .line 1248
    .line 1249
    :goto_1d
    if-eqz v5, :cond_1a

    .line 1250
    .line 1251
    :try_start_14
    iget-object v7, v5, Lmv4;->c:Lui3;

    .line 1252
    .line 1253
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v8, v0, Lbu4;->o:Lzt4;

    .line 1257
    .line 1258
    invoke-virtual {v8}, Lzt4;->j0()Landroid/os/Bundle;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v8

    .line 1262
    const/4 v9, 0x1

    .line 1263
    invoke-static {v8, v9}, Lub5;->j0(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v8

    .line 1267
    sget-object v9, Lca;->l:[Ljava/lang/String;

    .line 1268
    .line 1269
    sget-object v10, Lca;->g:[Ljava/lang/String;

    .line 1270
    .line 1271
    invoke-static {v4, v9, v10}, Lvm4;->e(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v9

    .line 1275
    if-eqz v9, :cond_17

    .line 1276
    .line 1277
    goto :goto_1e

    .line 1278
    :cond_17
    move-object v9, v4

    .line 1279
    :goto_1e
    new-instance v10, Lxk4;

    .line 1280
    .line 1281
    iget-wide v11, v0, Lbu4;->q:J

    .line 1282
    .line 1283
    invoke-direct {v10, v9, v11, v12, v8}, Lxk4;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v5, v10}, Lmv4;->a(Lxk4;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v5
    :try_end_14
    .catch Lax4; {:try_start_14 .. :try_end_14} :catch_9

    .line 1290
    if-nez v5, :cond_18

    .line 1291
    .line 1292
    goto :goto_21

    .line 1293
    :cond_18
    iget-object v5, v7, Lui3;->p:Ljava/lang/Object;

    .line 1294
    .line 1295
    check-cast v5, Lxk4;

    .line 1296
    .line 1297
    iget-object v8, v7, Lui3;->o:Ljava/lang/Object;

    .line 1298
    .line 1299
    check-cast v8, Lxk4;

    .line 1300
    .line 1301
    invoke-virtual {v5, v8}, Lxk4;->equals(Ljava/lang/Object;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v5

    .line 1305
    if-nez v5, :cond_19

    .line 1306
    .line 1307
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    iget-object v0, v0, La25;->n:Lx15;

    .line 1312
    .line 1313
    const-string v5, "EES edited event"

    .line 1314
    .line 1315
    invoke-virtual {v0, v4, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 1319
    .line 1320
    .line 1321
    iget-object v0, v7, Lui3;->p:Ljava/lang/Object;

    .line 1322
    .line 1323
    check-cast v0, Lxk4;

    .line 1324
    .line 1325
    invoke-static {v0}, Lub5;->z(Lxk4;)Lbu4;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    invoke-virtual {v1}, Lpb5;->V()V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v1, v0, v3}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 1333
    .line 1334
    .line 1335
    goto :goto_1f

    .line 1336
    :cond_19
    invoke-virtual {v1}, Lpb5;->V()V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v1, v0, v3}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 1340
    .line 1341
    .line 1342
    :goto_1f
    iget-object v0, v7, Lui3;->q:Ljava/lang/Object;

    .line 1343
    .line 1344
    check-cast v0, Ljava/util/ArrayList;

    .line 1345
    .line 1346
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    if-nez v0, :cond_1b

    .line 1351
    .line 1352
    iget-object v0, v7, Lui3;->q:Ljava/lang/Object;

    .line 1353
    .line 1354
    check-cast v0, Ljava/util/ArrayList;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1357
    .line 1358
    .line 1359
    move-result v4

    .line 1360
    :goto_20
    if-ge v2, v4, :cond_1b

    .line 1361
    .line 1362
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5

    .line 1366
    add-int/lit8 v2, v2, 0x1

    .line 1367
    .line 1368
    check-cast v5, Lxk4;

    .line 1369
    .line 1370
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v7

    .line 1374
    iget-object v7, v7, La25;->n:Lx15;

    .line 1375
    .line 1376
    iget-object v8, v5, Lxk4;->a:Ljava/lang/String;

    .line 1377
    .line 1378
    const-string v9, "EES logging created event"

    .line 1379
    .line 1380
    invoke-virtual {v7, v8, v9}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v6}, Lpb5;->T(Lab5;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-static {v5}, Lub5;->z(Lxk4;)Lbu4;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v5

    .line 1390
    invoke-virtual {v1}, Lpb5;->V()V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v1, v5, v3}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 1394
    .line 1395
    .line 1396
    goto :goto_20

    .line 1397
    :catch_9
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    iget-object v2, v2, La25;->f:Lx15;

    .line 1402
    .line 1403
    iget-object v5, v3, Lvc5;->o:Ljava/lang/String;

    .line 1404
    .line 1405
    const-string v6, "EES error. appId, eventName"

    .line 1406
    .line 1407
    invoke-virtual {v2, v5, v4, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    :goto_21
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v2

    .line 1414
    iget-object v2, v2, La25;->n:Lx15;

    .line 1415
    .line 1416
    const-string v5, "EES was not applied to event"

    .line 1417
    .line 1418
    invoke-virtual {v2, v4, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v1}, Lpb5;->V()V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v1, v0, v3}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 1425
    .line 1426
    .line 1427
    goto :goto_22

    .line 1428
    :cond_1a
    invoke-virtual {v1}, Lpb5;->c()La25;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v2

    .line 1432
    iget-object v2, v2, La25;->n:Lx15;

    .line 1433
    .line 1434
    iget-object v4, v3, Lvc5;->n:Ljava/lang/String;

    .line 1435
    .line 1436
    const-string v5, "EES not loaded for"

    .line 1437
    .line 1438
    invoke-virtual {v2, v4, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v1}, Lpb5;->V()V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v1, v0, v3}, Lpb5;->j(Lbu4;Lvc5;)V

    .line 1445
    .line 1446
    .line 1447
    :cond_1b
    :goto_22
    return-void

    .line 1448
    :pswitch_9
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 1449
    .line 1450
    check-cast v0, Lo55;

    .line 1451
    .line 1452
    iget-object v0, v0, Lo55;->c:Lpb5;

    .line 1453
    .line 1454
    invoke-virtual {v0}, Lpb5;->V()V

    .line 1455
    .line 1456
    .line 1457
    iget-object v2, v1, Li63;->o:Ljava/lang/Object;

    .line 1458
    .line 1459
    check-cast v2, Lfq4;

    .line 1460
    .line 1461
    iget-object v3, v2, Lfq4;->p:Lvb5;

    .line 1462
    .line 1463
    invoke-virtual {v3}, Lvb5;->Y()Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    iget-object v1, v1, Li63;->p:Ljava/lang/Object;

    .line 1468
    .line 1469
    check-cast v1, Lvc5;

    .line 1470
    .line 1471
    if-nez v3, :cond_1c

    .line 1472
    .line 1473
    invoke-virtual {v0, v2, v1}, Lpb5;->a0(Lfq4;Lvc5;)V

    .line 1474
    .line 1475
    .line 1476
    goto :goto_23

    .line 1477
    :cond_1c
    invoke-virtual {v0, v2, v1}, Lpb5;->Z(Lfq4;Lvc5;)V

    .line 1478
    .line 1479
    .line 1480
    :goto_23
    return-void

    .line 1481
    :pswitch_a
    :try_start_15
    iget-object v0, v1, Li63;->o:Ljava/lang/Object;

    .line 1482
    .line 1483
    check-cast v0, Lcb1;

    .line 1484
    .line 1485
    invoke-virtual {v0}, Lcb1;->call()Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 1489
    goto :goto_24

    .line 1490
    :catch_a
    const/4 v6, 0x0

    .line 1491
    :goto_24
    iget-object v0, v1, Li63;->p:Ljava/lang/Object;

    .line 1492
    .line 1493
    check-cast v0, Ldb1;

    .line 1494
    .line 1495
    iget-object v1, v1, Li63;->q:Ljava/lang/Object;

    .line 1496
    .line 1497
    check-cast v1, Landroid/os/Handler;

    .line 1498
    .line 1499
    new-instance v2, Lrf1;

    .line 1500
    .line 1501
    invoke-direct {v2, v3, v0, v6}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1505
    .line 1506
    .line 1507
    return-void

    .line 1508
    :pswitch_b
    iget-object v0, v1, Li63;->q:Ljava/lang/Object;

    .line 1509
    .line 1510
    check-cast v0, Lj63;

    .line 1511
    .line 1512
    iget-object v3, v1, Li63;->o:Ljava/lang/Object;

    .line 1513
    .line 1514
    check-cast v3, Lpm;

    .line 1515
    .line 1516
    iget-object v1, v1, Li63;->p:Ljava/lang/Object;

    .line 1517
    .line 1518
    check-cast v1, Lpw3;

    .line 1519
    .line 1520
    invoke-virtual {v0, v3, v1}, Lj63;->b(Lpm;Lpw3;)V

    .line 1521
    .line 1522
    .line 1523
    iget-object v1, v0, Lj63;->i:Lxh1;

    .line 1524
    .line 1525
    iget-object v1, v1, Lxh1;->o:Ljava/lang/Object;

    .line 1526
    .line 1527
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1528
    .line 1529
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1530
    .line 1531
    .line 1532
    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    iget-wide v4, v0, Lj63;->a:D

    .line 1538
    .line 1539
    div-double/2addr v1, v4

    .line 1540
    iget-wide v4, v0, Lj63;->b:D

    .line 1541
    .line 1542
    invoke-virtual {v0}, Lj63;->a()I

    .line 1543
    .line 1544
    .line 1545
    move-result v0

    .line 1546
    int-to-double v6, v0

    .line 1547
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 1548
    .line 1549
    .line 1550
    move-result-wide v4

    .line 1551
    mul-double/2addr v4, v1

    .line 1552
    const-wide v0, 0x414b774000000000L    # 3600000.0

    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 1558
    .line 1559
    .line 1560
    move-result-wide v0

    .line 1561
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    const-string v4, "Delay for: "

    .line 1564
    .line 1565
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1569
    .line 1570
    const-string v5, "%.2f"

    .line 1571
    .line 1572
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    div-double v6, v0, v6

    .line 1578
    .line 1579
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v6

    .line 1583
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v6

    .line 1587
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v4

    .line 1591
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    .line 1594
    const-string v4, " s for report: "

    .line 1595
    .line 1596
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    .line 1598
    .line 1599
    iget-object v3, v3, Lpm;->b:Ljava/lang/String;

    .line 1600
    .line 1601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v2

    .line 1608
    const-string v3, "FirebaseCrashlytics"

    .line 1609
    .line 1610
    const/4 v4, 0x3

    .line 1611
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1612
    .line 1613
    .line 1614
    move-result v4

    .line 1615
    if-eqz v4, :cond_1d

    .line 1616
    .line 1617
    const/4 v4, 0x0

    .line 1618
    invoke-static {v3, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1619
    .line 1620
    .line 1621
    :cond_1d
    double-to-long v0, v0

    .line 1622
    :try_start_16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_b

    .line 1623
    .line 1624
    .line 1625
    :catch_b
    return-void

    .line 1626
    nop

    .line 1627
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Li63;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Li63;->q:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Le30;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0xe

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "propagating=["

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "]"

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
