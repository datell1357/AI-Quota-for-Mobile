.class public final Lc8;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lc8;->o:I

    iput-object p2, p0, Lc8;->p:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lwu4;Lgw0;Ls33;)V
    .locals 0

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    iput p1, p0, Lc8;->o:I

    .line 4
    .line 5
    iput-object p3, p0, Lc8;->p:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lc8;->o:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    sget-object v4, La24;->o:La24;

    .line 9
    .line 10
    sget-object v5, La24;->n:La24;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    sget-object v9, Lt64;->a:Lt64;

    .line 16
    .line 17
    iget-object v0, v0, Lc8;->p:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v1, Ljava/lang/Throwable;

    .line 23
    .line 24
    check-cast v0, Lev3;

    .line 25
    .line 26
    iget-object v2, v0, Lev3;->p:Lo20;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lo20;->l(Ljava/lang/Throwable;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-object v8, v0, Lev3;->p:Lo20;

    .line 34
    .line 35
    return-object v9

    .line 36
    :pswitch_0
    check-cast v1, Lo83;

    .line 37
    .line 38
    check-cast v0, Lxm3;

    .line 39
    .line 40
    iget v2, v0, Lxm3;->B:F

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lo83;->e(F)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Lxm3;->C:F

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lo83;->g(F)V

    .line 48
    .line 49
    .line 50
    iget v2, v0, Lxm3;->D:F

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lo83;->c(F)V

    .line 53
    .line 54
    .line 55
    iget v2, v0, Lxm3;->E:F

    .line 56
    .line 57
    iget v3, v1, Lo83;->r:F

    .line 58
    .line 59
    cmpg-float v3, v3, v2

    .line 60
    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v3, v1, Lo83;->n:I

    .line 65
    .line 66
    or-int/lit8 v3, v3, 0x20

    .line 67
    .line 68
    iput v3, v1, Lo83;->n:I

    .line 69
    .line 70
    iput v2, v1, Lo83;->r:F

    .line 71
    .line 72
    :goto_0
    iget v2, v0, Lxm3;->F:F

    .line 73
    .line 74
    iget v3, v1, Lo83;->u:F

    .line 75
    .line 76
    cmpg-float v3, v3, v2

    .line 77
    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget v3, v1, Lo83;->n:I

    .line 82
    .line 83
    or-int/lit16 v3, v3, 0x800

    .line 84
    .line 85
    iput v3, v1, Lo83;->n:I

    .line 86
    .line 87
    iput v2, v1, Lo83;->u:F

    .line 88
    .line 89
    :goto_1
    iget-wide v2, v0, Lxm3;->G:J

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lo83;->h(J)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lxm3;->H:Ljl3;

    .line 95
    .line 96
    iget-object v3, v1, Lo83;->w:Ljl3;

    .line 97
    .line 98
    invoke-static {v3, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    iget v3, v1, Lo83;->n:I

    .line 105
    .line 106
    or-int/lit16 v3, v3, 0x2000

    .line 107
    .line 108
    iput v3, v1, Lo83;->n:I

    .line 109
    .line 110
    iput-object v2, v1, Lo83;->w:Ljl3;

    .line 111
    .line 112
    :cond_3
    iget-boolean v2, v0, Lxm3;->I:Z

    .line 113
    .line 114
    iget-boolean v3, v1, Lo83;->x:Z

    .line 115
    .line 116
    if-eq v3, v2, :cond_4

    .line 117
    .line 118
    iget v3, v1, Lo83;->n:I

    .line 119
    .line 120
    or-int/lit16 v3, v3, 0x4000

    .line 121
    .line 122
    iput v3, v1, Lo83;->n:I

    .line 123
    .line 124
    iput-boolean v2, v1, Lo83;->x:Z

    .line 125
    .line 126
    :cond_4
    iget-wide v2, v0, Lxm3;->J:J

    .line 127
    .line 128
    iget-wide v4, v1, Lo83;->s:J

    .line 129
    .line 130
    invoke-static {v4, v5, v2, v3}, Lt70;->c(JJ)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_5

    .line 135
    .line 136
    iget v4, v1, Lo83;->n:I

    .line 137
    .line 138
    or-int/lit8 v4, v4, 0x40

    .line 139
    .line 140
    iput v4, v1, Lo83;->n:I

    .line 141
    .line 142
    iput-wide v2, v1, Lo83;->s:J

    .line 143
    .line 144
    :cond_5
    iget-wide v2, v0, Lxm3;->K:J

    .line 145
    .line 146
    iget-wide v4, v1, Lo83;->t:J

    .line 147
    .line 148
    invoke-static {v4, v5, v2, v3}, Lt70;->c(JJ)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_6

    .line 153
    .line 154
    iget v4, v1, Lo83;->n:I

    .line 155
    .line 156
    or-int/lit16 v4, v4, 0x80

    .line 157
    .line 158
    iput v4, v1, Lo83;->n:I

    .line 159
    .line 160
    iput-wide v2, v1, Lo83;->t:J

    .line 161
    .line 162
    :cond_6
    iget v2, v0, Lxm3;->L:I

    .line 163
    .line 164
    iget v3, v1, Lo83;->C:I

    .line 165
    .line 166
    if-ne v3, v2, :cond_7

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    iget v3, v1, Lo83;->n:I

    .line 170
    .line 171
    const/high16 v4, 0x80000

    .line 172
    .line 173
    or-int/2addr v3, v4

    .line 174
    iput v3, v1, Lo83;->n:I

    .line 175
    .line 176
    iput v2, v1, Lo83;->C:I

    .line 177
    .line 178
    :goto_2
    iget-object v0, v0, Lxm3;->M:Lby1;

    .line 179
    .line 180
    iget-object v2, v1, Lo83;->z:Lby1;

    .line 181
    .line 182
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_8

    .line 187
    .line 188
    iget v2, v1, Lo83;->n:I

    .line 189
    .line 190
    const/high16 v3, 0x100000

    .line 191
    .line 192
    or-int/2addr v2, v3

    .line 193
    iput v2, v1, Lo83;->n:I

    .line 194
    .line 195
    iput-object v0, v1, Lo83;->z:Lby1;

    .line 196
    .line 197
    :cond_8
    return-object v9

    .line 198
    :pswitch_1
    check-cast v1, Ljava/util/List;

    .line 199
    .line 200
    check-cast v0, Lv02;

    .line 201
    .line 202
    invoke-virtual {v0}, Lv02;->a()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Ljava/lang/Float;

    .line 207
    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0

    .line 216
    :pswitch_2
    check-cast v1, Lph3;

    .line 217
    .line 218
    check-cast v0, Ljava/lang/String;

    .line 219
    .line 220
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 221
    .line 222
    sget-object v2, Llh3;->a:Loh3;

    .line 223
    .line 224
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v1, v2, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-object v9

    .line 232
    :pswitch_3
    check-cast v1, Lph3;

    .line 233
    .line 234
    check-cast v0, Lq93;

    .line 235
    .line 236
    iget v0, v0, Lq93;->a:I

    .line 237
    .line 238
    invoke-static {v1, v0}, Lnh3;->c(Lph3;I)V

    .line 239
    .line 240
    .line 241
    return-object v9

    .line 242
    :pswitch_4
    check-cast v1, Landroid/view/MotionEvent;

    .line 243
    .line 244
    check-cast v0, Lfw2;

    .line 245
    .line 246
    invoke-virtual {v0}, Lfw2;->e()Lpe1;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lwc;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    return-object v9

    .line 256
    :pswitch_5
    check-cast v1, Lld2;

    .line 257
    .line 258
    check-cast v0, Lug2;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 264
    .line 265
    return-object v0

    .line 266
    :pswitch_6
    check-cast v1, Ljava/lang/Throwable;

    .line 267
    .line 268
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 269
    .line 270
    invoke-interface {v0, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 271
    .line 272
    .line 273
    return-object v9

    .line 274
    :pswitch_7
    check-cast v1, Lu94;

    .line 275
    .line 276
    check-cast v0, Lli1;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lli1;->g(Lu94;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, v0, Lli1;->i:Lpe1;

    .line 282
    .line 283
    if-eqz v0, :cond_9

    .line 284
    .line 285
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    :cond_9
    return-object v9

    .line 289
    :pswitch_8
    check-cast v1, Lkx0;

    .line 290
    .line 291
    check-cast v0, Lci1;

    .line 292
    .line 293
    invoke-interface {v1}, Lkx0;->z()Leh;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v2}, Leh;->u()Lv20;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v0, v0, Lci1;->q:Ldf1;

    .line 302
    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    invoke-interface {v1}, Lkx0;->z()Leh;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v1, Lzh1;

    .line 312
    .line 313
    invoke-interface {v0, v2, v1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :cond_a
    return-object v9

    .line 317
    :pswitch_9
    check-cast v1, Lkx0;

    .line 318
    .line 319
    check-cast v0, Lzh1;

    .line 320
    .line 321
    iget-object v2, v0, Lzh1;->l:Lsb;

    .line 322
    .line 323
    iget-boolean v3, v0, Lzh1;->n:Z

    .line 324
    .line 325
    if-eqz v3, :cond_b

    .line 326
    .line 327
    iget-boolean v3, v0, Lzh1;->A:Z

    .line 328
    .line 329
    if-eqz v3, :cond_b

    .line 330
    .line 331
    if-eqz v2, :cond_b

    .line 332
    .line 333
    invoke-interface {v1}, Lkx0;->z()Leh;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v3}, Leh;->z()J

    .line 338
    .line 339
    .line 340
    move-result-wide v4

    .line 341
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-interface {v6}, Lv20;->j()V

    .line 346
    .line 347
    .line 348
    :try_start_0
    iget-object v6, v3, Leh;->o:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v6, Ldh1;

    .line 351
    .line 352
    iget-object v6, v6, Ldh1;->n:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v6, Leh;

    .line 355
    .line 356
    invoke-virtual {v6}, Leh;->u()Lv20;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-interface {v6, v2}, Lv20;->q(Lsb;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Lzh1;->c(Lkx0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-interface {v0}, Lv20;->h()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v4, v5}, Leh;->K(J)V

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-interface {v1}, Lv20;->h()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v4, v5}, Leh;->K(J)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :cond_b
    invoke-virtual {v0, v1}, Lzh1;->c(Lkx0;)V

    .line 390
    .line 391
    .line 392
    :goto_3
    return-object v9

    .line 393
    :pswitch_a
    sget-object v1, Lkh1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 394
    .line 395
    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_c

    .line 400
    .line 401
    check-cast v0, Lzy;

    .line 402
    .line 403
    invoke-interface {v0, v9}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    :cond_c
    return-object v9

    .line 407
    :pswitch_b
    check-cast v1, Lgw0;

    .line 408
    .line 409
    iget-object v2, v1, Lmd2;->n:Lmd2;

    .line 410
    .line 411
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 412
    .line 413
    if-nez v2, :cond_d

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_d
    iget-object v2, v1, Lgw0;->C:Lgw0;

    .line 417
    .line 418
    if-eqz v2, :cond_f

    .line 419
    .line 420
    check-cast v0, Lwu4;

    .line 421
    .line 422
    new-instance v3, Lc8;

    .line 423
    .line 424
    const/16 v4, 0xc

    .line 425
    .line 426
    invoke-direct {v3, v4, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v2}, Lc8;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    if-eq v0, v5, :cond_e

    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_e
    invoke-static {v2, v3}, Lqj0;->e0(Lb24;Lpe1;)V

    .line 437
    .line 438
    .line 439
    :cond_f
    :goto_4
    iput-object v8, v1, Lgw0;->C:Lgw0;

    .line 440
    .line 441
    iput-object v8, v1, Lgw0;->B:Lgw0;

    .line 442
    .line 443
    move-object v4, v5

    .line 444
    :goto_5
    return-object v4

    .line 445
    :pswitch_c
    check-cast v1, Lgw0;

    .line 446
    .line 447
    iget-boolean v2, v1, Lmd2;->A:Z

    .line 448
    .line 449
    if-nez v2, :cond_10

    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_10
    iget-object v2, v1, Lgw0;->C:Lgw0;

    .line 453
    .line 454
    if-nez v2, :cond_11

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_11
    const-string v2, "DragAndDropTarget self reference must be null at the start of a drag and drop session"

    .line 458
    .line 459
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :goto_6
    iput-object v8, v1, Lgw0;->C:Lgw0;

    .line 463
    .line 464
    check-cast v0, Ls33;

    .line 465
    .line 466
    iget-boolean v1, v0, Ls33;->n:Z

    .line 467
    .line 468
    iput-boolean v1, v0, Ls33;->n:Z

    .line 469
    .line 470
    move-object v4, v5

    .line 471
    :goto_7
    return-object v4

    .line 472
    :pswitch_d
    check-cast v1, Lhv0;

    .line 473
    .line 474
    check-cast v0, Lkv0;

    .line 475
    .line 476
    new-instance v1, Ls6;

    .line 477
    .line 478
    invoke-direct {v1, v3, v0}, Ls6;-><init>(ILjava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    return-object v1

    .line 482
    :pswitch_e
    check-cast v1, Ljava/lang/Throwable;

    .line 483
    .line 484
    if-eqz v1, :cond_12

    .line 485
    .line 486
    check-cast v0, Landroid/os/CancellationSignal;

    .line 487
    .line 488
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 489
    .line 490
    .line 491
    :cond_12
    return-object v9

    .line 492
    :pswitch_f
    check-cast v1, Laf;

    .line 493
    .line 494
    iget v2, v1, Laf;->b:F

    .line 495
    .line 496
    const/4 v3, 0x0

    .line 497
    cmpg-float v4, v2, v3

    .line 498
    .line 499
    if-gez v4, :cond_13

    .line 500
    .line 501
    move v2, v3

    .line 502
    :cond_13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 503
    .line 504
    cmpl-float v5, v2, v4

    .line 505
    .line 506
    if-lez v5, :cond_14

    .line 507
    .line 508
    move v2, v4

    .line 509
    :cond_14
    iget v5, v1, Laf;->c:F

    .line 510
    .line 511
    const/high16 v6, -0x41000000    # -0.5f

    .line 512
    .line 513
    cmpg-float v7, v5, v6

    .line 514
    .line 515
    if-gez v7, :cond_15

    .line 516
    .line 517
    move v5, v6

    .line 518
    :cond_15
    const/high16 v7, 0x3f000000    # 0.5f

    .line 519
    .line 520
    cmpl-float v8, v5, v7

    .line 521
    .line 522
    if-lez v8, :cond_16

    .line 523
    .line 524
    move v5, v7

    .line 525
    :cond_16
    iget v8, v1, Laf;->d:F

    .line 526
    .line 527
    cmpg-float v9, v8, v6

    .line 528
    .line 529
    if-gez v9, :cond_17

    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_17
    move v6, v8

    .line 533
    :goto_8
    cmpl-float v8, v6, v7

    .line 534
    .line 535
    if-lez v8, :cond_18

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_18
    move v7, v6

    .line 539
    :goto_9
    iget v1, v1, Laf;->a:F

    .line 540
    .line 541
    cmpg-float v6, v1, v3

    .line 542
    .line 543
    if-gez v6, :cond_19

    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_19
    move v3, v1

    .line 547
    :goto_a
    cmpl-float v1, v3, v4

    .line 548
    .line 549
    if-lez v1, :cond_1a

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_1a
    move v4, v3

    .line 553
    :goto_b
    sget-object v1, Le80;->x:Lko2;

    .line 554
    .line 555
    invoke-static {v2, v5, v7, v4, v1}, Lc75;->a(FFFFLb80;)J

    .line 556
    .line 557
    .line 558
    move-result-wide v1

    .line 559
    check-cast v0, Lb80;

    .line 560
    .line 561
    invoke-static {v1, v2, v0}, Lt70;->a(JLb80;)J

    .line 562
    .line 563
    .line 564
    move-result-wide v0

    .line 565
    new-instance v2, Lt70;

    .line 566
    .line 567
    invoke-direct {v2, v0, v1}, Lt70;-><init>(J)V

    .line 568
    .line 569
    .line 570
    return-object v2

    .line 571
    :pswitch_10
    check-cast v1, Ll33;

    .line 572
    .line 573
    check-cast v0, Lyx;

    .line 574
    .line 575
    iget-boolean v2, v0, Lmd2;->A:Z

    .line 576
    .line 577
    if-eqz v2, :cond_1b

    .line 578
    .line 579
    invoke-virtual {v0}, Lmd2;->u0()Lqi0;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    new-instance v3, Ln;

    .line 584
    .line 585
    const/4 v4, 0x4

    .line 586
    invoke-direct {v3, v0, v1, v8, v4}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 587
    .line 588
    .line 589
    const/4 v0, 0x3

    .line 590
    invoke-static {v2, v8, v8, v3, v0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 591
    .line 592
    .line 593
    :cond_1b
    return-object v9

    .line 594
    :pswitch_11
    invoke-static {v1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    return-object v0

    .line 603
    :pswitch_12
    check-cast v1, Las0;

    .line 604
    .line 605
    check-cast v0, Lxy1;

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Lxy1;->b0(Las0;)V

    .line 608
    .line 609
    .line 610
    return-object v9

    .line 611
    :pswitch_13
    check-cast v1, Lgh3;

    .line 612
    .line 613
    check-cast v0, Landroid/content/res/Resources;

    .line 614
    .line 615
    invoke-static {v1, v0}, Lmt1;->j(Lgh3;Landroid/content/res/Resources;)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    return-object v0

    .line 624
    :pswitch_14
    check-cast v1, Lgh3;

    .line 625
    .line 626
    check-cast v0, Lhs1;

    .line 627
    .line 628
    iget v1, v1, Lgh3;->f:I

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Lhs1;->a(I)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    return-object v0

    .line 639
    :pswitch_15
    check-cast v1, Lka1;

    .line 640
    .line 641
    check-cast v0, Lp91;

    .line 642
    .line 643
    iget v0, v0, Lp91;->a:I

    .line 644
    .line 645
    invoke-virtual {v1, v0}, Lka1;->N0(I)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    return-object v0

    .line 654
    :pswitch_16
    check-cast v1, Lek1;

    .line 655
    .line 656
    check-cast v0, Lf9;

    .line 657
    .line 658
    iget-object v2, v0, Lf9;->B:Lue4;

    .line 659
    .line 660
    if-nez v2, :cond_1c

    .line 661
    .line 662
    new-instance v2, Lue4;

    .line 663
    .line 664
    iget-object v4, v0, Lf9;->E:Lq9;

    .line 665
    .line 666
    invoke-virtual {v4}, Lq9;->getInsetsWatcher()Lxe4;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-direct {v2, v4}, Lue4;-><init>(Lxe4;)V

    .line 671
    .line 672
    .line 673
    iput-object v2, v0, Lf9;->B:Lue4;

    .line 674
    .line 675
    :cond_1c
    sget-object v0, Lue4;->e:Ltf2;

    .line 676
    .line 677
    iget-object v2, v0, Lhs1;->b:[I

    .line 678
    .line 679
    iget-object v4, v0, Lhs1;->c:[Ljava/lang/Object;

    .line 680
    .line 681
    iget-object v0, v0, Lhs1;->a:[J

    .line 682
    .line 683
    array-length v5, v0

    .line 684
    sub-int/2addr v5, v3

    .line 685
    if-ltz v5, :cond_28

    .line 686
    .line 687
    move v3, v6

    .line 688
    move v8, v3

    .line 689
    :goto_c
    aget-wide v9, v0, v3

    .line 690
    .line 691
    not-long v11, v9

    .line 692
    const/4 v13, 0x7

    .line 693
    shl-long/2addr v11, v13

    .line 694
    and-long/2addr v11, v9

    .line 695
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    and-long/2addr v11, v13

    .line 701
    cmp-long v11, v11, v13

    .line 702
    .line 703
    if-eqz v11, :cond_27

    .line 704
    .line 705
    sub-int v11, v3, v5

    .line 706
    .line 707
    not-int v11, v11

    .line 708
    ushr-int/lit8 v11, v11, 0x1f

    .line 709
    .line 710
    const/16 v12, 0x8

    .line 711
    .line 712
    rsub-int/lit8 v11, v11, 0x8

    .line 713
    .line 714
    move v13, v6

    .line 715
    :goto_d
    if-ge v13, v11, :cond_26

    .line 716
    .line 717
    const-wide/16 v14, 0xff

    .line 718
    .line 719
    and-long/2addr v14, v9

    .line 720
    const-wide/16 v16, 0x80

    .line 721
    .line 722
    cmp-long v14, v14, v16

    .line 723
    .line 724
    if-gez v14, :cond_25

    .line 725
    .line 726
    shl-int/lit8 v14, v3, 0x3

    .line 727
    .line 728
    add-int/2addr v14, v13

    .line 729
    aget v15, v2, v14

    .line 730
    .line 731
    aget-object v14, v4, v14

    .line 732
    .line 733
    check-cast v14, Lse4;

    .line 734
    .line 735
    move-object v6, v14

    .line 736
    check-cast v6, Lte4;

    .line 737
    .line 738
    iget-object v6, v6, Lte4;->c:Lhr1;

    .line 739
    .line 740
    invoke-static {v1, v6}, Lue4;->a(Lek1;Lhr1;)Z

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    if-eqz v6, :cond_1d

    .line 745
    .line 746
    :goto_e
    move v6, v7

    .line 747
    move v8, v6

    .line 748
    goto :goto_11

    .line 749
    :cond_1d
    check-cast v14, Lte4;

    .line 750
    .line 751
    iget-object v6, v14, Lte4;->d:Lhr1;

    .line 752
    .line 753
    invoke-static {v1, v6}, Lue4;->a(Lek1;Lhr1;)Z

    .line 754
    .line 755
    .line 756
    move-result v6

    .line 757
    if-eqz v6, :cond_1e

    .line 758
    .line 759
    :goto_f
    goto :goto_e

    .line 760
    :cond_1e
    const/4 v6, -0x1

    .line 761
    if-ne v15, v6, :cond_1f

    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_1f
    sget-object v6, Lue4;->c:Ltf2;

    .line 765
    .line 766
    invoke-virtual {v6, v15}, Lhs1;->b(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v6

    .line 770
    check-cast v6, Lhr1;

    .line 771
    .line 772
    if-nez v6, :cond_21

    .line 773
    .line 774
    :cond_20
    :goto_10
    const/4 v6, 0x0

    .line 775
    goto :goto_11

    .line 776
    :cond_21
    invoke-static {v1, v6}, Lue4;->a(Lek1;Lhr1;)Z

    .line 777
    .line 778
    .line 779
    move-result v6

    .line 780
    if-eqz v6, :cond_22

    .line 781
    .line 782
    goto :goto_e

    .line 783
    :cond_22
    sget-object v6, Lue4;->d:Ltf2;

    .line 784
    .line 785
    invoke-virtual {v6, v15}, Lhs1;->b(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    check-cast v6, Lhr1;

    .line 790
    .line 791
    if-nez v6, :cond_23

    .line 792
    .line 793
    goto :goto_10

    .line 794
    :cond_23
    invoke-static {v1, v6}, Lue4;->a(Lek1;Lhr1;)Z

    .line 795
    .line 796
    .line 797
    move-result v6

    .line 798
    if-eqz v6, :cond_20

    .line 799
    .line 800
    goto :goto_f

    .line 801
    :goto_11
    if-eqz v6, :cond_25

    .line 802
    .line 803
    :cond_24
    :goto_12
    move v7, v8

    .line 804
    goto :goto_16

    .line 805
    :cond_25
    shr-long/2addr v9, v12

    .line 806
    add-int/lit8 v13, v13, 0x1

    .line 807
    .line 808
    const/4 v6, 0x0

    .line 809
    goto :goto_d

    .line 810
    :cond_26
    if-ne v11, v12, :cond_29

    .line 811
    .line 812
    :cond_27
    if-eq v3, v5, :cond_29

    .line 813
    .line 814
    add-int/lit8 v3, v3, 0x1

    .line 815
    .line 816
    const/4 v6, 0x0

    .line 817
    goto/16 :goto_c

    .line 818
    .line 819
    :cond_28
    const/4 v8, 0x0

    .line 820
    :cond_29
    sget-object v0, Lse4;->a:Lre4;

    .line 821
    .line 822
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    sget-object v0, Lre4;->j:Lte4;

    .line 826
    .line 827
    iget-object v2, v0, Lte4;->c:Lhr1;

    .line 828
    .line 829
    invoke-static {v1, v2}, Lue4;->a(Lek1;Lhr1;)Z

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    if-eqz v2, :cond_2a

    .line 834
    .line 835
    :goto_13
    move v0, v7

    .line 836
    move v8, v0

    .line 837
    goto :goto_14

    .line 838
    :cond_2a
    iget-object v0, v0, Lte4;->d:Lhr1;

    .line 839
    .line 840
    invoke-static {v1, v0}, Lue4;->a(Lek1;Lhr1;)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-eqz v0, :cond_2b

    .line 845
    .line 846
    goto :goto_13

    .line 847
    :cond_2b
    const/4 v0, 0x0

    .line 848
    :goto_14
    if-eqz v0, :cond_2c

    .line 849
    .line 850
    goto :goto_12

    .line 851
    :cond_2c
    sget-object v0, Lue4;->b:[Lhr1;

    .line 852
    .line 853
    array-length v2, v0

    .line 854
    const/4 v6, 0x0

    .line 855
    :goto_15
    if-ge v6, v2, :cond_24

    .line 856
    .line 857
    aget-object v3, v0, v6

    .line 858
    .line 859
    invoke-static {v1, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 860
    .line 861
    .line 862
    move-result v3

    .line 863
    if-eqz v3, :cond_2d

    .line 864
    .line 865
    goto :goto_16

    .line 866
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 867
    .line 868
    goto :goto_15

    .line 869
    :goto_16
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    return-object v0

    .line 874
    :pswitch_17
    check-cast v1, Ld8;

    .line 875
    .line 876
    check-cast v0, Lyy1;

    .line 877
    .line 878
    invoke-interface {v1}, Ld8;->O()I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    const v3, 0x7fffffff

    .line 883
    .line 884
    .line 885
    if-ne v2, v3, :cond_2e

    .line 886
    .line 887
    goto/16 :goto_1a

    .line 888
    .line 889
    :cond_2e
    invoke-interface {v1}, Ld8;->c()Lyy1;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    iget-boolean v2, v2, Lyy1;->b:Z

    .line 894
    .line 895
    if-eqz v2, :cond_2f

    .line 896
    .line 897
    invoke-interface {v1}, Ld8;->x()V

    .line 898
    .line 899
    .line 900
    :cond_2f
    invoke-interface {v1}, Ld8;->c()Lyy1;

    .line 901
    .line 902
    .line 903
    move-result-object v2

    .line 904
    iget-object v2, v2, Lyy1;->i:Ljava/util/HashMap;

    .line 905
    .line 906
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-eqz v3, :cond_30

    .line 919
    .line 920
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    check-cast v3, Ljava/util/Map$Entry;

    .line 925
    .line 926
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v4

    .line 930
    check-cast v4, Ly7;

    .line 931
    .line 932
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    check-cast v3, Ljava/lang/Number;

    .line 937
    .line 938
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 939
    .line 940
    .line 941
    move-result v3

    .line 942
    invoke-interface {v1}, Ld8;->n()Lgr1;

    .line 943
    .line 944
    .line 945
    move-result-object v5

    .line 946
    invoke-static {v0, v4, v3, v5}, Lyy1;->a(Lyy1;Ly7;ILmm2;)V

    .line 947
    .line 948
    .line 949
    goto :goto_17

    .line 950
    :cond_30
    invoke-interface {v1}, Ld8;->n()Lgr1;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    iget-object v1, v1, Lmm2;->H:Lmm2;

    .line 955
    .line 956
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 957
    .line 958
    .line 959
    :goto_18
    iget-object v2, v0, Lyy1;->a:Ld8;

    .line 960
    .line 961
    invoke-interface {v2}, Ld8;->n()Lgr1;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    if-nez v2, :cond_32

    .line 970
    .line 971
    invoke-virtual {v0, v1}, Lyy1;->b(Lmm2;)Ljava/util/Map;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    check-cast v2, Ljava/lang/Iterable;

    .line 980
    .line 981
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-eqz v3, :cond_31

    .line 990
    .line 991
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    check-cast v3, Ly7;

    .line 996
    .line 997
    invoke-virtual {v0, v1, v3}, Lyy1;->c(Lmm2;Ly7;)I

    .line 998
    .line 999
    .line 1000
    move-result v4

    .line 1001
    invoke-static {v0, v3, v4, v1}, Lyy1;->a(Lyy1;Ly7;ILmm2;)V

    .line 1002
    .line 1003
    .line 1004
    goto :goto_19

    .line 1005
    :cond_31
    iget-object v1, v1, Lmm2;->H:Lmm2;

    .line 1006
    .line 1007
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    .line 1009
    .line 1010
    goto :goto_18

    .line 1011
    :cond_32
    :goto_1a
    return-object v9

    .line 1012
    nop

    .line 1013
    :pswitch_data_0
    .packed-switch 0x0
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
