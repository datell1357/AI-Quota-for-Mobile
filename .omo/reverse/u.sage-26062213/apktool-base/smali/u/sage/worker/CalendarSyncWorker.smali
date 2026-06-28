.class public final Lu/sage/worker/CalendarSyncWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ldh0;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lq10;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lq10;

    .line 11
    .line 12
    iget v3, v2, Lq10;->D:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lq10;->D:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lq10;

    .line 25
    .line 26
    check-cast v0, Lfh0;

    .line 27
    .line 28
    invoke-direct {v2, v1, v0}, Lq10;-><init>(Lu/sage/worker/CalendarSyncWorker;Lfh0;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v2, Lq10;->B:Ljava/lang/Object;

    .line 32
    .line 33
    iget v3, v2, Lq10;->D:I

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x2

    .line 38
    iget-object v7, v1, Lv42;->a:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v10, 0x0

    .line 42
    sget-object v11, Lri0;->n:Lri0;

    .line 43
    .line 44
    packed-switch v3, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v10

    .line 53
    :pswitch_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_1
    iget v3, v2, Lq10;->A:I

    .line 58
    .line 59
    iget v4, v2, Lq10;->z:I

    .line 60
    .line 61
    iget v5, v2, Lq10;->y:I

    .line 62
    .line 63
    iget-wide v6, v2, Lq10;->x:J

    .line 64
    .line 65
    iget-boolean v8, v2, Lq10;->w:Z

    .line 66
    .line 67
    iget-object v12, v2, Lq10;->s:Lm10;

    .line 68
    .line 69
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_14

    .line 73
    .line 74
    :pswitch_2
    iget v3, v2, Lq10;->z:I

    .line 75
    .line 76
    iget v4, v2, Lq10;->y:I

    .line 77
    .line 78
    iget-wide v5, v2, Lq10;->x:J

    .line 79
    .line 80
    iget-boolean v8, v2, Lq10;->w:Z

    .line 81
    .line 82
    iget-object v12, v2, Lq10;->v:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v13, v2, Lq10;->u:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v14, v2, Lq10;->t:Ld84;

    .line 87
    .line 88
    iget-object v15, v2, Lq10;->s:Lm10;

    .line 89
    .line 90
    move-object/from16 p1, v10

    .line 91
    .line 92
    iget-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v9, v2, Lq10;->q:Ly84;

    .line 95
    .line 96
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    move/from16 v21, v4

    .line 100
    .line 101
    move v4, v3

    .line 102
    move v3, v8

    .line 103
    move-wide/from16 v22, v5

    .line 104
    .line 105
    move/from16 v5, v21

    .line 106
    .line 107
    move-object v6, v9

    .line 108
    move-wide/from16 v8, v22

    .line 109
    .line 110
    goto/16 :goto_13

    .line 111
    .line 112
    :pswitch_3
    move-object/from16 p1, v10

    .line 113
    .line 114
    iget v3, v2, Lq10;->z:I

    .line 115
    .line 116
    iget v4, v2, Lq10;->y:I

    .line 117
    .line 118
    iget-wide v5, v2, Lq10;->x:J

    .line 119
    .line 120
    iget-boolean v8, v2, Lq10;->w:Z

    .line 121
    .line 122
    iget-object v9, v2, Lq10;->u:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, v2, Lq10;->t:Ld84;

    .line 125
    .line 126
    iget-object v12, v2, Lq10;->s:Lm10;

    .line 127
    .line 128
    iget-object v13, v2, Lq10;->r:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v14, v2, Lq10;->q:Ly84;

    .line 131
    .line 132
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v21, v13

    .line 136
    .line 137
    move-object v13, v9

    .line 138
    move-object v9, v14

    .line 139
    move-object v14, v10

    .line 140
    :goto_2
    move-object/from16 v10, v21

    .line 141
    .line 142
    goto/16 :goto_12

    .line 143
    .line 144
    :pswitch_4
    move-object/from16 p1, v10

    .line 145
    .line 146
    iget v3, v2, Lq10;->z:I

    .line 147
    .line 148
    iget v4, v2, Lq10;->y:I

    .line 149
    .line 150
    iget-wide v5, v2, Lq10;->x:J

    .line 151
    .line 152
    iget-boolean v8, v2, Lq10;->w:Z

    .line 153
    .line 154
    iget-object v9, v2, Lq10;->u:Ljava/lang/String;

    .line 155
    .line 156
    check-cast v9, Ln84;

    .line 157
    .line 158
    iget-object v9, v2, Lq10;->t:Ld84;

    .line 159
    .line 160
    iget-object v10, v2, Lq10;->s:Lm10;

    .line 161
    .line 162
    iget-object v12, v2, Lq10;->r:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v13, v2, Lq10;->q:Ly84;

    .line 165
    .line 166
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_f

    .line 170
    .line 171
    :pswitch_5
    move-object/from16 p1, v10

    .line 172
    .line 173
    iget-boolean v3, v2, Lq10;->w:Z

    .line 174
    .line 175
    iget-object v9, v2, Lq10;->s:Lm10;

    .line 176
    .line 177
    iget-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v12, v2, Lq10;->q:Ly84;

    .line 180
    .line 181
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    move-object v13, v12

    .line 185
    move-object v12, v10

    .line 186
    move-object v10, v9

    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :pswitch_6
    move-object/from16 p1, v10

    .line 190
    .line 191
    iget-boolean v3, v2, Lq10;->w:Z

    .line 192
    .line 193
    iget-object v9, v2, Lq10;->s:Lm10;

    .line 194
    .line 195
    iget-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v12, v2, Lq10;->q:Ly84;

    .line 198
    .line 199
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :pswitch_7
    move-object/from16 p1, v10

    .line 205
    .line 206
    iget-object v3, v2, Lq10;->s:Lm10;

    .line 207
    .line 208
    iget-object v9, v2, Lq10;->r:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v10, v2, Lq10;->q:Ly84;

    .line 211
    .line 212
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    move-object v12, v10

    .line 216
    move-object v10, v9

    .line 217
    move-object v9, v3

    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :pswitch_8
    move-object/from16 p1, v10

    .line 221
    .line 222
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, v1, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 226
    .line 227
    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Lzl0;

    .line 228
    .line 229
    const-string v3, "service_type"

    .line 230
    .line 231
    iget-object v0, v0, Lzl0;->a:Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    instance-of v3, v0, Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v3, :cond_2

    .line 240
    .line 241
    check-cast v0, Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_2
    move-object/from16 v0, p1

    .line 245
    .line 246
    :goto_3
    if-eqz v0, :cond_4

    .line 247
    .line 248
    :try_start_0
    invoke-static {v0}, Ly84;->valueOf(Ljava/lang/String;)Ly84;

    .line 249
    .line 250
    .line 251
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    goto :goto_4

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    new-instance v3, Lf83;

    .line 255
    .line 256
    invoke-direct {v3, v0}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    move-object v0, v3

    .line 260
    :goto_4
    nop

    .line 261
    instance-of v3, v0, Lf83;

    .line 262
    .line 263
    if-eqz v3, :cond_3

    .line 264
    .line 265
    move-object/from16 v0, p1

    .line 266
    .line 267
    :cond_3
    check-cast v0, Ly84;

    .line 268
    .line 269
    if-eqz v0, :cond_4

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_4
    sget-object v0, Ly84;->r:Ly84;

    .line 273
    .line 274
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    const-string v9, "CalendarSyncWorker["

    .line 279
    .line 280
    const-string v10, "]"

    .line 281
    .line 282
    invoke-static {v9, v3, v10}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    sget-object v9, Lez3;->a:Lra3;

    .line 287
    .line 288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    const/4 v10, 0x0

    .line 296
    new-array v12, v10, [Ljava/lang/Object;

    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-static {v12}, Lra3;->c([Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    new-instance v9, Lm10;

    .line 305
    .line 306
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-direct {v9, v7, v0}, Lm10;-><init>(Landroid/content/Context;Ly84;)V

    .line 310
    .line 311
    .line 312
    iput-object v0, v2, Lq10;->q:Ly84;

    .line 313
    .line 314
    iput-object v3, v2, Lq10;->r:Ljava/lang/String;

    .line 315
    .line 316
    iput-object v9, v2, Lq10;->s:Lm10;

    .line 317
    .line 318
    iput v8, v2, Lq10;->D:I

    .line 319
    .line 320
    iget-object v10, v9, Lm10;->b:Lnv3;

    .line 321
    .line 322
    invoke-virtual {v10}, Lnv3;->getValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    check-cast v10, La81;

    .line 327
    .line 328
    invoke-static {v10, v2}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    if-ne v10, v11, :cond_5

    .line 333
    .line 334
    goto/16 :goto_15

    .line 335
    .line 336
    :cond_5
    move-object v12, v0

    .line 337
    move-object v0, v10

    .line 338
    move-object v10, v3

    .line 339
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    iput-object v12, v2, Lq10;->q:Ly84;

    .line 346
    .line 347
    iput-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 348
    .line 349
    iput-object v9, v2, Lq10;->s:Lm10;

    .line 350
    .line 351
    iput-boolean v3, v2, Lq10;->w:Z

    .line 352
    .line 353
    iput v6, v2, Lq10;->D:I

    .line 354
    .line 355
    iget-object v0, v9, Lm10;->c:Lnv3;

    .line 356
    .line 357
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, La81;

    .line 362
    .line 363
    invoke-static {v0, v2}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    if-ne v0, v11, :cond_6

    .line 368
    .line 369
    goto/16 :goto_15

    .line 370
    .line 371
    :cond_6
    :goto_7
    check-cast v0, Ljava/lang/String;

    .line 372
    .line 373
    sget-object v0, Lez3;->a:Lra3;

    .line 374
    .line 375
    const/4 v13, 0x0

    .line 376
    new-array v14, v13, [Ljava/lang/Object;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-static {v14}, Lra3;->c([Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    if-nez v3, :cond_7

    .line 385
    .line 386
    new-array v0, v13, [Ljava/lang/Object;

    .line 387
    .line 388
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lt42;

    .line 392
    .line 393
    invoke-direct {v0}, Lt42;-><init>()V

    .line 394
    .line 395
    .line 396
    return-object v0

    .line 397
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_c

    .line 408
    .line 409
    if-eq v0, v8, :cond_b

    .line 410
    .line 411
    if-eq v0, v6, :cond_a

    .line 412
    .line 413
    if-eq v0, v5, :cond_9

    .line 414
    .line 415
    if-ne v0, v4, :cond_8

    .line 416
    .line 417
    new-instance v0, Lwh0;

    .line 418
    .line 419
    invoke-direct {v0, v7}, Lwh0;-><init>(Landroid/content/Context;)V

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_8
    invoke-static {}, Lp61;->x()V

    .line 424
    .line 425
    .line 426
    return-object p1

    .line 427
    :cond_9
    new-instance v0, Lg70;

    .line 428
    .line 429
    invoke-direct {v0, v7}, Lg70;-><init>(Landroid/content/Context;)V

    .line 430
    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_a
    new-instance v0, Lnf;

    .line 434
    .line 435
    invoke-direct {v0, v7}, Lnf;-><init>(Landroid/content/Context;)V

    .line 436
    .line 437
    .line 438
    goto :goto_8

    .line 439
    :cond_b
    new-instance v0, Lhg1;

    .line 440
    .line 441
    invoke-direct {v0, v7}, Lhg1;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_c
    new-instance v0, Lr50;

    .line 446
    .line 447
    invoke-direct {v0, v7}, Lr50;-><init>(Landroid/content/Context;)V

    .line 448
    .line 449
    .line 450
    :goto_8
    invoke-virtual {v0}, Lps;->c()La81;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    iput-object v12, v2, Lq10;->q:Ly84;

    .line 455
    .line 456
    iput-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 457
    .line 458
    iput-object v9, v2, Lq10;->s:Lm10;

    .line 459
    .line 460
    iput-boolean v3, v2, Lq10;->w:Z

    .line 461
    .line 462
    iput v5, v2, Lq10;->D:I

    .line 463
    .line 464
    invoke-static {v0, v2}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-ne v0, v11, :cond_1

    .line 469
    .line 470
    goto/16 :goto_15

    .line 471
    .line 472
    :goto_9
    move-object v9, v0

    .line 473
    check-cast v9, Ld84;

    .line 474
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 476
    .line 477
    .line 478
    move-result-wide v14

    .line 479
    if-eqz v9, :cond_f

    .line 480
    .line 481
    invoke-virtual {v9}, Ld84;->c()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    if-eqz v0, :cond_f

    .line 486
    .line 487
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v17

    .line 491
    if-eqz v17, :cond_d

    .line 492
    .line 493
    goto :goto_a

    .line 494
    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 499
    .line 500
    .line 501
    move-result v17

    .line 502
    if-eqz v17, :cond_f

    .line 503
    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v17

    .line 508
    check-cast v17, Lp84;

    .line 509
    .line 510
    invoke-virtual/range {v17 .. v17}, Lp84;->b()Ljava/lang/Long;

    .line 511
    .line 512
    .line 513
    move-result-object v18

    .line 514
    if-eqz v18, :cond_e

    .line 515
    .line 516
    invoke-virtual/range {v17 .. v17}, Lp84;->b()Ljava/lang/Long;

    .line 517
    .line 518
    .line 519
    move-result-object v17

    .line 520
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    .line 521
    .line 522
    .line 523
    move-result-wide v17

    .line 524
    cmp-long v17, v17, v14

    .line 525
    .line 526
    if-gez v17, :cond_e

    .line 527
    .line 528
    move v0, v8

    .line 529
    goto :goto_b

    .line 530
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 531
    :goto_b
    if-eqz v9, :cond_11

    .line 532
    .line 533
    invoke-virtual {v9}, Ld84;->b()J

    .line 534
    .line 535
    .line 536
    move-result-wide v17

    .line 537
    sub-long v17, v14, v17

    .line 538
    .line 539
    const-wide/32 v19, 0x36ee80

    .line 540
    .line 541
    .line 542
    cmp-long v17, v17, v19

    .line 543
    .line 544
    if-gtz v17, :cond_11

    .line 545
    .line 546
    if-eqz v0, :cond_10

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_10
    const/4 v4, 0x0

    .line 550
    goto :goto_d

    .line 551
    :cond_11
    :goto_c
    move v4, v8

    .line 552
    :goto_d
    if-eqz v4, :cond_19

    .line 553
    .line 554
    sget-object v18, Lez3;->a:Lra3;

    .line 555
    .line 556
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    const/4 v5, 0x0

    .line 560
    new-array v6, v5, [Ljava/lang/Object;

    .line 561
    .line 562
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    if-eqz v5, :cond_16

    .line 576
    .line 577
    if-eq v5, v8, :cond_15

    .line 578
    .line 579
    const/4 v6, 0x2

    .line 580
    if-eq v5, v6, :cond_14

    .line 581
    .line 582
    const/4 v8, 0x3

    .line 583
    if-eq v5, v8, :cond_13

    .line 584
    .line 585
    const/4 v8, 0x4

    .line 586
    if-ne v5, v8, :cond_12

    .line 587
    .line 588
    new-instance v5, Lq50;

    .line 589
    .line 590
    invoke-direct {v5, v7, v6}, Lq50;-><init>(Landroid/content/Context;I)V

    .line 591
    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_12
    invoke-static {}, Lp61;->x()V

    .line 595
    .line 596
    .line 597
    return-object p1

    .line 598
    :cond_13
    new-instance v5, Lq50;

    .line 599
    .line 600
    const/4 v6, 0x1

    .line 601
    invoke-direct {v5, v7, v6}, Lq50;-><init>(Landroid/content/Context;I)V

    .line 602
    .line 603
    .line 604
    goto :goto_e

    .line 605
    :cond_14
    new-instance v5, Lmf;

    .line 606
    .line 607
    const/4 v8, 0x0

    .line 608
    invoke-direct {v5, v7, v8}, Lmf;-><init>(Landroid/content/Context;I)V

    .line 609
    .line 610
    .line 611
    goto :goto_e

    .line 612
    :cond_15
    move v6, v8

    .line 613
    const/4 v8, 0x0

    .line 614
    new-instance v5, Lmf;

    .line 615
    .line 616
    invoke-direct {v5, v7, v6}, Lmf;-><init>(Landroid/content/Context;I)V

    .line 617
    .line 618
    .line 619
    goto :goto_e

    .line 620
    :cond_16
    const/4 v8, 0x0

    .line 621
    new-instance v5, Lq50;

    .line 622
    .line 623
    invoke-direct {v5, v7, v8}, Lq50;-><init>(Landroid/content/Context;I)V

    .line 624
    .line 625
    .line 626
    :goto_e
    iput-object v13, v2, Lq10;->q:Ly84;

    .line 627
    .line 628
    iput-object v12, v2, Lq10;->r:Ljava/lang/String;

    .line 629
    .line 630
    iput-object v10, v2, Lq10;->s:Lm10;

    .line 631
    .line 632
    iput-object v9, v2, Lq10;->t:Ld84;

    .line 633
    .line 634
    move-object/from16 v6, p1

    .line 635
    .line 636
    iput-object v6, v2, Lq10;->u:Ljava/lang/String;

    .line 637
    .line 638
    iput-boolean v3, v2, Lq10;->w:Z

    .line 639
    .line 640
    iput-wide v14, v2, Lq10;->x:J

    .line 641
    .line 642
    iput v0, v2, Lq10;->y:I

    .line 643
    .line 644
    iput v4, v2, Lq10;->z:I

    .line 645
    .line 646
    const/4 v8, 0x4

    .line 647
    iput v8, v2, Lq10;->D:I

    .line 648
    .line 649
    invoke-static {v5, v2}, Ln84;->a(Ln84;Lfh0;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    if-ne v5, v11, :cond_17

    .line 654
    .line 655
    goto/16 :goto_15

    .line 656
    .line 657
    :cond_17
    move v8, v3

    .line 658
    move v3, v4

    .line 659
    move v4, v0

    .line 660
    move-object v0, v5

    .line 661
    move-wide v5, v14

    .line 662
    :goto_f
    check-cast v0, Ld84;

    .line 663
    .line 664
    if-eqz v0, :cond_18

    .line 665
    .line 666
    sget-object v9, Lez3;->a:Lra3;

    .line 667
    .line 668
    const/4 v14, 0x0

    .line 669
    new-array v15, v14, [Ljava/lang/Object;

    .line 670
    .line 671
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    invoke-static {v15}, Lra3;->c([Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    move-wide/from16 v21, v5

    .line 678
    .line 679
    move v5, v14

    .line 680
    move-wide/from16 v14, v21

    .line 681
    .line 682
    move-object v9, v0

    .line 683
    goto :goto_10

    .line 684
    :cond_18
    const/4 v14, 0x0

    .line 685
    sget-object v0, Lez3;->a:Lra3;

    .line 686
    .line 687
    new-array v15, v14, [Ljava/lang/Object;

    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    invoke-static {v15}, Lra3;->m([Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    move-wide/from16 v21, v5

    .line 696
    .line 697
    move v5, v14

    .line 698
    move-wide/from16 v14, v21

    .line 699
    .line 700
    goto :goto_10

    .line 701
    :cond_19
    const/4 v5, 0x0

    .line 702
    move v8, v3

    .line 703
    move v3, v4

    .line 704
    move v4, v0

    .line 705
    :goto_10
    if-nez v9, :cond_1a

    .line 706
    .line 707
    sget-object v0, Lez3;->a:Lra3;

    .line 708
    .line 709
    new-array v1, v5, [Ljava/lang/Object;

    .line 710
    .line 711
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    new-instance v0, Lt42;

    .line 718
    .line 719
    invoke-direct {v0}, Lt42;-><init>()V

    .line 720
    .line 721
    .line 722
    return-object v0

    .line 723
    :cond_1a
    sget-object v0, Lez3;->a:Lra3;

    .line 724
    .line 725
    invoke-virtual {v9}, Ld84;->c()Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 730
    .line 731
    .line 732
    new-array v6, v5, [Ljava/lang/Object;

    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v9}, Ld84;->c()Ljava/util/List;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    const/4 v5, 0x0

    .line 749
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    if-eqz v6, :cond_1c

    .line 754
    .line 755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    add-int/lit8 v17, v5, 0x1

    .line 760
    .line 761
    if-ltz v5, :cond_1b

    .line 762
    .line 763
    check-cast v6, Lp84;

    .line 764
    .line 765
    sget-object v5, Lez3;->a:Lra3;

    .line 766
    .line 767
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    move-object/from16 v18, v0

    .line 771
    .line 772
    const/4 v6, 0x0

    .line 773
    new-array v0, v6, [Ljava/lang/Object;

    .line 774
    .line 775
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    move/from16 v5, v17

    .line 782
    .line 783
    move-object/from16 v0, v18

    .line 784
    .line 785
    goto :goto_11

    .line 786
    :cond_1b
    invoke-static {}, Ltv4;->S()V

    .line 787
    .line 788
    .line 789
    const/4 v6, 0x0

    .line 790
    throw v6

    .line 791
    :cond_1c
    invoke-virtual {v9}, Ld84;->c()Ljava/util/List;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-static {v0}, Lgg4;->z(Ljava/util/List;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    iput-object v13, v2, Lq10;->q:Ly84;

    .line 800
    .line 801
    iput-object v12, v2, Lq10;->r:Ljava/lang/String;

    .line 802
    .line 803
    iput-object v10, v2, Lq10;->s:Lm10;

    .line 804
    .line 805
    iput-object v9, v2, Lq10;->t:Ld84;

    .line 806
    .line 807
    iput-object v0, v2, Lq10;->u:Ljava/lang/String;

    .line 808
    .line 809
    iput-boolean v8, v2, Lq10;->w:Z

    .line 810
    .line 811
    iput-wide v14, v2, Lq10;->x:J

    .line 812
    .line 813
    iput v4, v2, Lq10;->y:I

    .line 814
    .line 815
    iput v3, v2, Lq10;->z:I

    .line 816
    .line 817
    const/4 v5, 0x5

    .line 818
    iput v5, v2, Lq10;->D:I

    .line 819
    .line 820
    invoke-virtual {v10, v2}, Lm10;->b(Lfh0;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    if-ne v5, v11, :cond_1d

    .line 825
    .line 826
    goto/16 :goto_15

    .line 827
    .line 828
    :cond_1d
    move-object/from16 v21, v13

    .line 829
    .line 830
    move-object v13, v0

    .line 831
    move-object v0, v5

    .line 832
    move-wide v5, v14

    .line 833
    move-object v14, v9

    .line 834
    move-object/from16 v9, v21

    .line 835
    .line 836
    move-object/from16 v21, v12

    .line 837
    .line 838
    move-object v12, v10

    .line 839
    goto/16 :goto_2

    .line 840
    .line 841
    :goto_12
    check-cast v0, Ljava/lang/String;

    .line 842
    .line 843
    iput-object v9, v2, Lq10;->q:Ly84;

    .line 844
    .line 845
    iput-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 846
    .line 847
    iput-object v12, v2, Lq10;->s:Lm10;

    .line 848
    .line 849
    iput-object v14, v2, Lq10;->t:Ld84;

    .line 850
    .line 851
    iput-object v13, v2, Lq10;->u:Ljava/lang/String;

    .line 852
    .line 853
    iput-object v0, v2, Lq10;->v:Ljava/lang/String;

    .line 854
    .line 855
    iput-boolean v8, v2, Lq10;->w:Z

    .line 856
    .line 857
    iput-wide v5, v2, Lq10;->x:J

    .line 858
    .line 859
    iput v4, v2, Lq10;->y:I

    .line 860
    .line 861
    iput v3, v2, Lq10;->z:I

    .line 862
    .line 863
    const/4 v15, 0x6

    .line 864
    iput v15, v2, Lq10;->D:I

    .line 865
    .line 866
    invoke-virtual {v12, v2}, Lm10;->a(Lfh0;)Ljava/io/Serializable;

    .line 867
    .line 868
    .line 869
    move-result-object v15

    .line 870
    if-ne v15, v11, :cond_1e

    .line 871
    .line 872
    goto/16 :goto_15

    .line 873
    .line 874
    :cond_1e
    move-object/from16 v21, v12

    .line 875
    .line 876
    move-object v12, v0

    .line 877
    move-object v0, v15

    .line 878
    move-object/from16 v15, v21

    .line 879
    .line 880
    goto/16 :goto_1

    .line 881
    .line 882
    :goto_13
    check-cast v0, Ljava/util/Collection;

    .line 883
    .line 884
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    move/from16 v17, v0

    .line 889
    .line 890
    xor-int/lit8 v0, v17, 0x1

    .line 891
    .line 892
    invoke-static {v13, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    move-result v12

    .line 896
    if-eqz v12, :cond_1f

    .line 897
    .line 898
    if-nez v17, :cond_1f

    .line 899
    .line 900
    sget-object v0, Lez3;->a:Lra3;

    .line 901
    .line 902
    const/4 v13, 0x0

    .line 903
    new-array v1, v13, [Ljava/lang/Object;

    .line 904
    .line 905
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    .line 907
    .line 908
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    new-instance v0, Lt42;

    .line 912
    .line 913
    invoke-direct {v0}, Lt42;-><init>()V

    .line 914
    .line 915
    .line 916
    return-object v0

    .line 917
    :cond_1f
    const/4 v13, 0x0

    .line 918
    sget-object v12, Lez3;->a:Lra3;

    .line 919
    .line 920
    move-object/from16 v16, v12

    .line 921
    .line 922
    new-array v12, v13, [Ljava/lang/Object;

    .line 923
    .line 924
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    invoke-static {v12}, Lra3;->c([Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    new-instance v12, Lwh1;

    .line 931
    .line 932
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    .line 934
    .line 935
    invoke-direct {v12, v7, v6, v15}, Lwh1;-><init>(Landroid/content/Context;Ly84;Lm10;)V

    .line 936
    .line 937
    .line 938
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 939
    .line 940
    .line 941
    move-result-object v6

    .line 942
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 946
    .line 947
    .line 948
    new-array v6, v13, [Ljava/lang/Object;

    .line 949
    .line 950
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 951
    .line 952
    .line 953
    const/4 v6, 0x0

    .line 954
    iput-object v6, v2, Lq10;->q:Ly84;

    .line 955
    .line 956
    iput-object v10, v2, Lq10;->r:Ljava/lang/String;

    .line 957
    .line 958
    iput-object v15, v2, Lq10;->s:Lm10;

    .line 959
    .line 960
    iput-object v6, v2, Lq10;->t:Ld84;

    .line 961
    .line 962
    iput-object v6, v2, Lq10;->u:Ljava/lang/String;

    .line 963
    .line 964
    iput-object v6, v2, Lq10;->v:Ljava/lang/String;

    .line 965
    .line 966
    iput-boolean v3, v2, Lq10;->w:Z

    .line 967
    .line 968
    iput-wide v8, v2, Lq10;->x:J

    .line 969
    .line 970
    iput v5, v2, Lq10;->y:I

    .line 971
    .line 972
    iput v4, v2, Lq10;->z:I

    .line 973
    .line 974
    iput v0, v2, Lq10;->A:I

    .line 975
    .line 976
    const/4 v6, 0x7

    .line 977
    iput v6, v2, Lq10;->D:I

    .line 978
    .line 979
    invoke-virtual {v12, v14, v2}, Lwh1;->h(Ld84;Lfh0;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v6

    .line 983
    if-ne v6, v11, :cond_20

    .line 984
    .line 985
    goto :goto_15

    .line 986
    :cond_20
    move v12, v3

    .line 987
    move v3, v0

    .line 988
    move-object v0, v6

    .line 989
    move-wide v6, v8

    .line 990
    move v8, v12

    .line 991
    move-object v12, v15

    .line 992
    :goto_14
    check-cast v0, Lnh1;

    .line 993
    .line 994
    iget-boolean v9, v0, Lnh1;->a:Z

    .line 995
    .line 996
    if-eqz v9, :cond_21

    .line 997
    .line 998
    sget-object v0, Lez3;->a:Lra3;

    .line 999
    .line 1000
    const/4 v13, 0x0

    .line 1001
    new-array v1, v13, [Ljava/lang/Object;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    new-instance v0, Lt42;

    .line 1010
    .line 1011
    invoke-direct {v0}, Lt42;-><init>()V

    .line 1012
    .line 1013
    .line 1014
    return-object v0

    .line 1015
    :cond_21
    const/4 v13, 0x0

    .line 1016
    sget-object v9, Lez3;->a:Lra3;

    .line 1017
    .line 1018
    new-array v10, v13, [Ljava/lang/Object;

    .line 1019
    .line 1020
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v10}, Lra3;->m([Ljava/lang/Object;)V

    .line 1024
    .line 1025
    .line 1026
    const/4 v9, 0x0

    .line 1027
    iput-object v9, v2, Lq10;->q:Ly84;

    .line 1028
    .line 1029
    iput-object v9, v2, Lq10;->r:Ljava/lang/String;

    .line 1030
    .line 1031
    iput-object v9, v2, Lq10;->s:Lm10;

    .line 1032
    .line 1033
    iput-object v9, v2, Lq10;->t:Ld84;

    .line 1034
    .line 1035
    iput-object v9, v2, Lq10;->u:Ljava/lang/String;

    .line 1036
    .line 1037
    iput-object v9, v2, Lq10;->v:Ljava/lang/String;

    .line 1038
    .line 1039
    iput-boolean v8, v2, Lq10;->w:Z

    .line 1040
    .line 1041
    iput-wide v6, v2, Lq10;->x:J

    .line 1042
    .line 1043
    iput v5, v2, Lq10;->y:I

    .line 1044
    .line 1045
    iput v4, v2, Lq10;->z:I

    .line 1046
    .line 1047
    iput v3, v2, Lq10;->A:I

    .line 1048
    .line 1049
    const/16 v3, 0x8

    .line 1050
    .line 1051
    iput v3, v2, Lq10;->D:I

    .line 1052
    .line 1053
    invoke-virtual {v1, v0, v12, v2}, Lu/sage/worker/CalendarSyncWorker;->d(Lnh1;Lm10;Lfh0;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    if-ne v0, v11, :cond_22

    .line 1058
    .line 1059
    :goto_15
    return-object v11

    .line 1060
    :cond_22
    return-object v0

    .line 1061
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final d(Lnh1;Lm10;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lr10;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lr10;

    .line 7
    .line 8
    iget v1, v0, Lr10;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lr10;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr10;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lr10;-><init>(Lu/sage/worker/CalendarSyncWorker;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lr10;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr10;->s:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lnh1;->c:Ljava/lang/String;

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    const-string v1, "usageLimits"

    .line 55
    .line 56
    invoke-static {p1, v1, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne v1, v2, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    if-eqz p1, :cond_4

    .line 64
    .line 65
    const-string v1, "rateLimitExceeded"

    .line 66
    .line 67
    invoke-static {p1, v1, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, v2, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const-string v1, "quotaExceeded"

    .line 77
    .line 78
    invoke-static {p1, v1, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-ne v1, v2, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-eqz p1, :cond_6

    .line 86
    .line 87
    const-string v1, "429"

    .line 88
    .line 89
    invoke-static {p1, v1, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ne v1, v2, :cond_6

    .line 94
    .line 95
    :goto_1
    move v1, v2

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    move v1, p3

    .line 98
    :goto_2
    if-eqz p1, :cond_7

    .line 99
    .line 100
    const-string v3, "Not signed in"

    .line 101
    .line 102
    invoke-static {p1, v3, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ne v3, v2, :cond_7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    if-eqz p1, :cond_8

    .line 110
    .line 111
    const-string v3, "401"

    .line 112
    .line 113
    invoke-static {p1, v3, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-ne v3, v2, :cond_8

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    if-eqz p1, :cond_a

    .line 121
    .line 122
    const-string v3, "403"

    .line 123
    .line 124
    invoke-static {p1, v3, v2}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-ne p1, v2, :cond_a

    .line 129
    .line 130
    if-nez v1, :cond_a

    .line 131
    .line 132
    :goto_3
    sget-object p0, Lez3;->a:Lra3;

    .line 133
    .line 134
    new-array p1, p3, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lra3;->f([Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput v2, v0, Lr10;->s:I

    .line 143
    .line 144
    invoke-virtual {p2, p3, v0}, Lm10;->e(ZLfh0;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    sget-object p1, Lri0;->n:Lri0;

    .line 149
    .line 150
    if-ne p0, p1, :cond_9

    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_9
    :goto_4
    new-instance p0, Lr42;

    .line 154
    .line 155
    invoke-direct {p0}, Lr42;-><init>()V

    .line 156
    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_a
    iget-object p0, p0, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 160
    .line 161
    if-nez v1, :cond_c

    .line 162
    .line 163
    iget p1, p0, Landroidx/work/WorkerParameters;->c:I

    .line 164
    .line 165
    const/4 p2, 0x5

    .line 166
    if-gt p1, p2, :cond_b

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_b
    sget-object p0, Lez3;->a:Lra3;

    .line 170
    .line 171
    new-array p1, p3, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lra3;->f([Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Lr42;

    .line 180
    .line 181
    invoke-direct {p0}, Lr42;-><init>()V

    .line 182
    .line 183
    .line 184
    return-object p0

    .line 185
    :cond_c
    :goto_5
    sget-object p1, Lez3;->a:Lra3;

    .line 186
    .line 187
    iget p0, p0, Landroidx/work/WorkerParameters;->c:I

    .line 188
    .line 189
    new-array p0, p3, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance p0, Ls42;

    .line 198
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    .line 201
    .line 202
    return-object p0
.end method
