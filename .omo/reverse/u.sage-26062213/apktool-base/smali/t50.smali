.class public final Lt50;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lt50;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lt50;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lt50;->n:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lt64;->a:Lt64;

    .line 12
    .line 13
    iget-object v0, v0, Lt50;->o:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    check-cast v2, Lgj3;

    .line 21
    .line 22
    check-cast v0, Lkm3;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lkm3;->h:Lgj3;

    .line 28
    .line 29
    iget-boolean v3, v0, Lkm3;->j:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput-boolean v5, v0, Lkm3;->j:Z

    .line 34
    .line 35
    invoke-virtual {v0}, Lkm3;->c()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v2, v2, Lgj3;->a:Llj3;

    .line 39
    .line 40
    iget-object v2, v2, Llj3;->a:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v3, Lhm3;->n:Lhm3;

    .line 43
    .line 44
    invoke-static {v0, v2, v3, v1}, Lkm3;->a(Lkm3;Ljava/lang/String;Lhm3;Ldh0;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-ne v0, v4, :cond_1

    .line 49
    .line 50
    move-object v6, v0

    .line 51
    :cond_1
    return-object v6

    .line 52
    :pswitch_0
    move-object/from16 v1, p1

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    check-cast v0, Lzd2;

    .line 61
    .line 62
    iget-object v0, v0, Lzd2;->p:Lss2;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lss2;->h(F)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :pswitch_1
    move-object/from16 v1, p1

    .line 69
    .line 70
    check-cast v1, Ljava/util/Map;

    .line 71
    .line 72
    sget-object v2, Lez3;->a:Lra3;

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    new-array v1, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Lu/sage/widget/UsageWidgetProvider;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    .line 87
    check-cast v0, Lu/sage/MainApplication;

    .line 88
    .line 89
    invoke-static {v0}, Lk75;->H(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    return-object v6

    .line 93
    :pswitch_2
    move-object/from16 v2, p1

    .line 94
    .line 95
    check-cast v2, Lt64;

    .line 96
    .line 97
    check-cast v0, Lfn0;

    .line 98
    .line 99
    iget-object v2, v0, Lfn0;->h:Lwu4;

    .line 100
    .line 101
    invoke-virtual {v2}, Lwu4;->m()Lsr3;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    instance-of v2, v2, Ly51;

    .line 106
    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    invoke-static {v0, v3, v1}, Lfn0;->g(Lfn0;ZLdh0;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-ne v0, v4, :cond_2

    .line 114
    .line 115
    move-object v6, v0

    .line 116
    :cond_2
    return-object v6

    .line 117
    :pswitch_3
    move-object/from16 v1, p1

    .line 118
    .line 119
    check-cast v1, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    check-cast v0, Lu/sage/ClaudeUsageService;

    .line 126
    .line 127
    iget-object v2, v0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 128
    .line 129
    new-instance v3, Lw50;

    .line 130
    .line 131
    invoke-direct {v3, v0, v1}, Lw50;-><init>(Lu/sage/ClaudeUsageService;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    return-object v6

    .line 138
    :pswitch_4
    move-object/from16 v1, p1

    .line 139
    .line 140
    check-cast v1, Lw24;

    .line 141
    .line 142
    check-cast v0, Landroid/content/Context;

    .line 143
    .line 144
    iget-object v2, v1, Lw24;->n:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Ld84;

    .line 147
    .line 148
    iget-object v4, v1, Lw24;->o:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v4, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iget-object v1, v1, Lw24;->p:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    if-nez v4, :cond_3

    .line 165
    .line 166
    sget-object v1, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, v0, Leg4;->b:Lmd0;

    .line 176
    .line 177
    iget-object v1, v1, Lmd0;->m:Lqv3;

    .line 178
    .line 179
    const-string v2, "CancelWorkByName_"

    .line 180
    .line 181
    const-string v3, "rolling_window_work"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v4, v0, Leg4;->d:Lqd1;

    .line 188
    .line 189
    iget-object v4, v4, Lqd1;->o:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v4, Lji3;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    new-instance v7, Lh4;

    .line 197
    .line 198
    const/4 v8, 0x6

    .line 199
    invoke-direct {v7, v8, v3, v0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v2, v4, v7}, Lmt1;->N(Lqv3;Ljava/lang/String;Ljava/util/concurrent/Executor;Lne1;)Lw13;

    .line 203
    .line 204
    .line 205
    const-string v0, "cancelRollingWindowAlarm: Canceled."

    .line 206
    .line 207
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lez3;->a:Lra3;

    .line 211
    .line 212
    new-array v1, v5, [Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_a

    .line 221
    .line 222
    :cond_3
    if-eqz v2, :cond_17

    .line 223
    .line 224
    sget-object v1, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    .line 226
    invoke-static {v0, v2, v7, v8}, Ltv4;->P(Landroid/content/Context;Ld84;J)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v9

    .line 233
    sget-object v1, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_4

    .line 240
    .line 241
    const-string v0, "checkImmediate: Skipped \u2014 already running."

    .line 242
    .line 243
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_a

    .line 247
    .line 248
    :cond_4
    invoke-virtual {v2}, Ld84;->c()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    const/4 v11, 0x0

    .line 261
    if-eqz v4, :cond_6

    .line 262
    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    move-object v12, v4

    .line 268
    check-cast v12, Lp84;

    .line 269
    .line 270
    invoke-virtual {v12}, Lp84;->d()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    const-string v13, "Current session"

    .line 275
    .line 276
    invoke-static {v12, v13}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    if-eqz v12, :cond_5

    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_6
    move-object v4, v11

    .line 284
    :goto_0
    check-cast v4, Lp84;

    .line 285
    .line 286
    invoke-virtual {v2}, Ld84;->c()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_8

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    move-object v13, v12

    .line 305
    check-cast v13, Lp84;

    .line 306
    .line 307
    invoke-virtual {v13}, Lp84;->d()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    const-string v14, "Weekly limits"

    .line 312
    .line 313
    invoke-static {v13, v14}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    if-eqz v13, :cond_7

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_8
    move-object v12, v11

    .line 321
    :goto_1
    check-cast v12, Lp84;

    .line 322
    .line 323
    const-wide/16 v13, 0x0

    .line 324
    .line 325
    if-eqz v4, :cond_9

    .line 326
    .line 327
    invoke-virtual {v4}, Lp84;->e()D

    .line 328
    .line 329
    .line 330
    move-result-wide v15

    .line 331
    move-object/from16 p0, v4

    .line 332
    .line 333
    move-wide v3, v15

    .line 334
    goto :goto_2

    .line 335
    :cond_9
    move-object/from16 p0, v4

    .line 336
    .line 337
    move-wide v3, v13

    .line 338
    :goto_2
    if-eqz p0, :cond_a

    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lp84;->b()Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    goto :goto_3

    .line 345
    :cond_a
    move-object v15, v11

    .line 346
    :goto_3
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 347
    .line 348
    cmpl-double v18, v3, v16

    .line 349
    .line 350
    if-ltz v18, :cond_c

    .line 351
    .line 352
    if-eqz v15, :cond_b

    .line 353
    .line 354
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 355
    .line 356
    .line 357
    move-result-wide v18

    .line 358
    cmp-long v15, v9, v18

    .line 359
    .line 360
    if-gez v15, :cond_c

    .line 361
    .line 362
    :cond_b
    const/4 v15, 0x1

    .line 363
    goto :goto_4

    .line 364
    :cond_c
    move v15, v5

    .line 365
    :goto_4
    if-eqz v12, :cond_d

    .line 366
    .line 367
    invoke-virtual {v12}, Lp84;->e()D

    .line 368
    .line 369
    .line 370
    move-result-wide v18

    .line 371
    move-object/from16 p0, v2

    .line 372
    .line 373
    move-wide/from16 v1, v18

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_d
    move-object/from16 p0, v2

    .line 377
    .line 378
    move-wide v1, v13

    .line 379
    :goto_5
    if-eqz v12, :cond_e

    .line 380
    .line 381
    invoke-virtual {v12}, Lp84;->b()Ljava/lang/Long;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    :cond_e
    cmpl-double v12, v1, v16

    .line 386
    .line 387
    if-ltz v12, :cond_10

    .line 388
    .line 389
    if-eqz v11, :cond_f

    .line 390
    .line 391
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 392
    .line 393
    .line 394
    move-result-wide v11

    .line 395
    cmp-long v11, v9, v11

    .line 396
    .line 397
    if-gez v11, :cond_10

    .line 398
    .line 399
    :cond_f
    const/4 v11, 0x1

    .line 400
    goto :goto_6

    .line 401
    :cond_10
    move v11, v5

    .line 402
    :goto_6
    if-nez v15, :cond_16

    .line 403
    .line 404
    if-eqz v11, :cond_11

    .line 405
    .line 406
    goto/16 :goto_9

    .line 407
    .line 408
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ld84;->c()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_17

    .line 421
    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Lp84;

    .line 427
    .line 428
    invoke-virtual {v2}, Lp84;->e()D

    .line 429
    .line 430
    .line 431
    move-result-wide v3

    .line 432
    cmpg-double v3, v3, v13

    .line 433
    .line 434
    if-nez v3, :cond_15

    .line 435
    .line 436
    invoke-virtual {v2}, Lp84;->c()Ljava/lang/Long;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    if-nez v3, :cond_15

    .line 441
    .line 442
    invoke-virtual {v2}, Lp84;->b()Ljava/lang/Long;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    if-nez v3, :cond_15

    .line 447
    .line 448
    sub-long v3, v9, v7

    .line 449
    .line 450
    const-wide/16 v11, 0x0

    .line 451
    .line 452
    cmp-long v11, v3, v11

    .line 453
    .line 454
    const-string v12, "checkImmediate: \'Not Started\' for "

    .line 455
    .line 456
    if-ltz v11, :cond_14

    .line 457
    .line 458
    const-wide/32 v15, 0x493e0

    .line 459
    .line 460
    .line 461
    cmp-long v11, v3, v15

    .line 462
    .line 463
    if-lez v11, :cond_13

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_13
    sget-object v11, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 467
    .line 468
    invoke-virtual {v2}, Lp84;->d()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    new-instance v15, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v11, " debounced. timeSince="

    .line 481
    .line 482
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v3, "ms"

    .line 489
    .line 490
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-static {v3}, Lit0;->a(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    sget-object v3, Lez3;->a:Lra3;

    .line 501
    .line 502
    new-array v4, v5, [Ljava/lang/Object;

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_14
    :goto_7
    sget-object v1, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 512
    .line 513
    invoke-virtual {v2}, Lp84;->d()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v1, ". Triggering immediate start."

    .line 526
    .line 527
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-static {v1}, Lit0;->a(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    sget-object v1, Lez3;->a:Lra3;

    .line 538
    .line 539
    new-array v2, v5, [Ljava/lang/Object;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-static {v2}, Lra3;->h([Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    invoke-static {v9, v10, v0}, Ltv4;->r(JLandroid/content/Context;)V

    .line 548
    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_15
    :goto_8
    invoke-virtual {v2}, Lp84;->b()Ljava/lang/Long;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    if-eqz v2, :cond_12

    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 558
    .line 559
    .line 560
    move-result-wide v3

    .line 561
    const-wide/16 v11, 0x1b58

    .line 562
    .line 563
    add-long/2addr v11, v3

    .line 564
    cmp-long v11, v9, v11

    .line 565
    .line 566
    if-ltz v11, :cond_12

    .line 567
    .line 568
    const-wide/32 v11, 0xdd6f8

    .line 569
    .line 570
    .line 571
    add-long/2addr v3, v11

    .line 572
    cmp-long v3, v9, v3

    .line 573
    .line 574
    if-gez v3, :cond_12

    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 577
    .line 578
    .line 579
    move-result-wide v3

    .line 580
    cmp-long v3, v7, v3

    .line 581
    .line 582
    if-eqz v3, :cond_12

    .line 583
    .line 584
    sget-object v1, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 585
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    const-string v3, "checkImmediate: Grace period trigger for reset="

    .line 589
    .line 590
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-static {v1}, Lit0;->a(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    sget-object v1, Lez3;->a:Lra3;

    .line 604
    .line 605
    new-array v3, v5, [Ljava/lang/Object;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    invoke-static {v3}, Lra3;->h([Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 614
    .line 615
    .line 616
    move-result-wide v1

    .line 617
    invoke-static {v1, v2, v0}, Ltv4;->r(JLandroid/content/Context;)V

    .line 618
    .line 619
    .line 620
    goto :goto_a

    .line 621
    :cond_16
    :goto_9
    sget-object v0, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 622
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v7, "checkImmediate: Aborting \u2014 limit reached. Session="

    .line 626
    .line 627
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v3, "%, Week="

    .line 634
    .line 635
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v1, "%"

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    sget-object v0, Lez3;->a:Lra3;

    .line 654
    .line 655
    new-array v1, v5, [Ljava/lang/Object;

    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    invoke-static {v1}, Lra3;->h([Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    :cond_17
    :goto_a
    return-object v6

    .line 664
    nop

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
