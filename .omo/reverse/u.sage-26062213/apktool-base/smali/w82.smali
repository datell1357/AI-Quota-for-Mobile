.class public final synthetic Lw82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ltr3;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Lu/sage/MainActivity;

.field public final synthetic r:Lpg2;

.field public final synthetic s:Lxi2;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ltr3;Ljava/util/List;Lu/sage/MainActivity;Lpg2;Lxi2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw82;->n:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lw82;->o:Ltr3;

    .line 7
    .line 8
    iput-object p3, p0, Lw82;->p:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lw82;->q:Lu/sage/MainActivity;

    .line 11
    .line 12
    iput-object p5, p0, Lw82;->r:Lpg2;

    .line 13
    .line 14
    iput-object p6, p0, Lw82;->s:Lxi2;

    .line 15
    .line 16
    iput-object p7, p0, Lw82;->t:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Ldb3;

    .line 6
    .line 7
    move-object/from16 v10, p2

    .line 8
    .line 9
    check-cast v10, Lag1;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget v3, Lu/sage/MainActivity;->C:I

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v3, v2, 0x6

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v10, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v3

    .line 38
    :cond_1
    move v12, v2

    .line 39
    and-int/lit8 v2, v12, 0x13

    .line 40
    .line 41
    const/16 v3, 0x12

    .line 42
    .line 43
    if-eq v2, v3, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :goto_1
    and-int/lit8 v3, v12, 0x1

    .line 49
    .line 50
    invoke-virtual {v10, v3, v2}, Lag1;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_13

    .line 55
    .line 56
    iget-object v2, v0, Lw82;->o:Ltr3;

    .line 57
    .line 58
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {v10, v3}, Lag1;->f(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v10}, Lag1;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v15, v0, Lw82;->n:Ljava/util/ArrayList;

    .line 73
    .line 74
    sget-object v5, Lrb0;->a:Lbx3;

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    if-ne v4, v5, :cond_9

    .line 79
    .line 80
    :cond_3
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x0

    .line 99
    if-eqz v3, :cond_7

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v6, v3

    .line 106
    check-cast v6, Lyh2;

    .line 107
    .line 108
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/4 v8, 0x0

    .line 120
    :cond_6
    if-ge v8, v7, :cond_4

    .line 121
    .line 122
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    check-cast v9, Lgx;

    .line 129
    .line 130
    iget-object v9, v9, Lgx;->a:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v11, v6, Lyh2;->o:Lqi2;

    .line 133
    .line 134
    iget-object v11, v11, Lqi2;->o:Lgg;

    .line 135
    .line 136
    iget-object v11, v11, Lgg;->e:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v11, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v9, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-eqz v9, :cond_6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move-object v3, v4

    .line 148
    :goto_3
    check-cast v3, Lyh2;

    .line 149
    .line 150
    if-eqz v3, :cond_8

    .line 151
    .line 152
    iget-object v2, v3, Lyh2;->o:Lqi2;

    .line 153
    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object v2, v2, Lqi2;->o:Lgg;

    .line 157
    .line 158
    iget-object v2, v2, Lgg;->e:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    move-object v4, v2

    .line 163
    :cond_8
    invoke-virtual {v10, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    move-object v2, v4

    .line 167
    check-cast v2, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    const/4 v4, 0x0

    .line 174
    :goto_4
    if-ge v4, v3, :cond_14

    .line 175
    .line 176
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    add-int/lit8 v16, v4, 0x1

    .line 181
    .line 182
    check-cast v6, Lgx;

    .line 183
    .line 184
    iget-object v4, v6, Lgx;->a:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v4, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    sget-object v7, Lwa2;->a:Lis3;

    .line 191
    .line 192
    invoke-virtual {v10, v7}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    check-cast v8, Lua2;

    .line 197
    .line 198
    iget-object v8, v8, Lua2;->a:Ly70;

    .line 199
    .line 200
    iget-wide v8, v8, Ly70;->q:J

    .line 201
    .line 202
    invoke-virtual {v10, v7}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    check-cast v11, Lua2;

    .line 207
    .line 208
    iget-object v11, v11, Lua2;->a:Ly70;

    .line 209
    .line 210
    move-object/from16 p2, v15

    .line 211
    .line 212
    iget-wide v14, v11, Ly70;->q:J

    .line 213
    .line 214
    invoke-virtual {v10, v7}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    check-cast v11, Lua2;

    .line 219
    .line 220
    iget-object v11, v11, Lua2;->a:Ly70;

    .line 221
    .line 222
    move-wide/from16 v17, v14

    .line 223
    .line 224
    iget-wide v13, v11, Ly70;->H:J

    .line 225
    .line 226
    sget-object v11, Lgy3;->c:Lis3;

    .line 227
    .line 228
    invoke-virtual {v10, v11}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    check-cast v15, Ln50;

    .line 233
    .line 234
    move-object/from16 v25, v1

    .line 235
    .line 236
    move-object/from16 v26, v2

    .line 237
    .line 238
    iget-wide v1, v15, Ln50;->P:J

    .line 239
    .line 240
    invoke-virtual {v10, v11}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    check-cast v11, Ln50;

    .line 245
    .line 246
    move-wide/from16 v19, v1

    .line 247
    .line 248
    iget-wide v1, v11, Ln50;->P:J

    .line 249
    .line 250
    sget-wide v21, Lt70;->f:J

    .line 251
    .line 252
    invoke-virtual {v10, v7}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    check-cast v7, Lua2;

    .line 257
    .line 258
    iget-object v7, v7, Lua2;->a:Ly70;

    .line 259
    .line 260
    invoke-static {v7}, Lfl4;->p(Ly70;)Lrj2;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    const-wide/16 v23, 0x10

    .line 265
    .line 266
    cmp-long v11, v8, v23

    .line 267
    .line 268
    if-eqz v11, :cond_a

    .line 269
    .line 270
    :goto_5
    move-wide/from16 v28, v8

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_a
    iget-wide v8, v7, Lrj2;->a:J

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :goto_6
    cmp-long v8, v17, v23

    .line 277
    .line 278
    if-eqz v8, :cond_b

    .line 279
    .line 280
    move-wide/from16 v30, v17

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_b
    iget-wide v8, v7, Lrj2;->b:J

    .line 284
    .line 285
    move-wide/from16 v30, v8

    .line 286
    .line 287
    :goto_7
    cmp-long v8, v13, v23

    .line 288
    .line 289
    if-eqz v8, :cond_c

    .line 290
    .line 291
    :goto_8
    move-wide/from16 v32, v13

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_c
    iget-wide v13, v7, Lrj2;->c:J

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :goto_9
    cmp-long v8, v19, v23

    .line 298
    .line 299
    if-eqz v8, :cond_d

    .line 300
    .line 301
    move-wide/from16 v34, v19

    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_d
    iget-wide v8, v7, Lrj2;->d:J

    .line 305
    .line 306
    move-wide/from16 v34, v8

    .line 307
    .line 308
    :goto_a
    cmp-long v8, v1, v23

    .line 309
    .line 310
    if-eqz v8, :cond_e

    .line 311
    .line 312
    :goto_b
    move-wide/from16 v36, v1

    .line 313
    .line 314
    goto :goto_c

    .line 315
    :cond_e
    iget-wide v1, v7, Lrj2;->e:J

    .line 316
    .line 317
    goto :goto_b

    .line 318
    :goto_c
    cmp-long v1, v21, v23

    .line 319
    .line 320
    if-eqz v1, :cond_f

    .line 321
    .line 322
    move-wide/from16 v38, v21

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_f
    iget-wide v8, v7, Lrj2;->f:J

    .line 326
    .line 327
    move-wide/from16 v38, v8

    .line 328
    .line 329
    :goto_d
    if-eqz v1, :cond_10

    .line 330
    .line 331
    move-wide/from16 v40, v21

    .line 332
    .line 333
    goto :goto_e

    .line 334
    :cond_10
    iget-wide v1, v7, Lrj2;->g:J

    .line 335
    .line 336
    move-wide/from16 v40, v1

    .line 337
    .line 338
    :goto_e
    new-instance v9, Lrj2;

    .line 339
    .line 340
    move-object/from16 v27, v9

    .line 341
    .line 342
    invoke-direct/range {v27 .. v41}, Lrj2;-><init>(JJJJJJJ)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    iget-object v2, v0, Lw82;->p:Ljava/util/List;

    .line 350
    .line 351
    invoke-virtual {v10, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    or-int/2addr v1, v7

    .line 356
    iget-object v7, v0, Lw82;->q:Lu/sage/MainActivity;

    .line 357
    .line 358
    invoke-virtual {v10, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    or-int/2addr v1, v8

    .line 363
    iget-object v8, v0, Lw82;->r:Lpg2;

    .line 364
    .line 365
    invoke-virtual {v10, v8}, Lag1;->f(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v11

    .line 369
    or-int/2addr v1, v11

    .line 370
    invoke-virtual {v10, v4}, Lag1;->g(Z)Z

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    or-int/2addr v1, v11

    .line 375
    iget-object v11, v0, Lw82;->s:Lxi2;

    .line 376
    .line 377
    invoke-virtual {v10, v11}, Lag1;->h(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    or-int/2addr v1, v13

    .line 382
    iget-object v13, v0, Lw82;->t:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v10, v13}, Lag1;->f(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v14

    .line 388
    or-int/2addr v1, v14

    .line 389
    invoke-virtual {v10}, Lag1;->K()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    if-nez v1, :cond_12

    .line 394
    .line 395
    if-ne v14, v5, :cond_11

    .line 396
    .line 397
    goto :goto_f

    .line 398
    :cond_11
    move v2, v4

    .line 399
    goto :goto_10

    .line 400
    :cond_12
    :goto_f
    new-instance v17, Lb92;

    .line 401
    .line 402
    move-object/from16 v19, v2

    .line 403
    .line 404
    move/from16 v21, v4

    .line 405
    .line 406
    move-object/from16 v18, v6

    .line 407
    .line 408
    move-object/from16 v20, v7

    .line 409
    .line 410
    move-object/from16 v23, v8

    .line 411
    .line 412
    move-object/from16 v22, v11

    .line 413
    .line 414
    move-object/from16 v24, v13

    .line 415
    .line 416
    invoke-direct/range {v17 .. v24}, Lb92;-><init>(Lgx;Ljava/util/List;Lu/sage/MainActivity;ZLxi2;Lpg2;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    move-object/from16 v14, v17

    .line 420
    .line 421
    move/from16 v2, v21

    .line 422
    .line 423
    invoke-virtual {v10, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :goto_10
    check-cast v14, Lne1;

    .line 427
    .line 428
    new-instance v1, Lc92;

    .line 429
    .line 430
    const/4 v13, 0x0

    .line 431
    invoke-direct {v1, v6, v13}, Lc92;-><init>(Lgx;I)V

    .line 432
    .line 433
    .line 434
    const v4, 0x7cfbd8a8

    .line 435
    .line 436
    .line 437
    invoke-static {v4, v1, v10}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    new-instance v1, Lc92;

    .line 442
    .line 443
    const/4 v15, 0x1

    .line 444
    invoke-direct {v1, v6, v15}, Lc92;-><init>(Lgx;I)V

    .line 445
    .line 446
    .line 447
    const v6, 0x413312ab

    .line 448
    .line 449
    .line 450
    invoke-static {v6, v1, v10}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    and-int/lit8 v1, v12, 0xe

    .line 455
    .line 456
    const v6, 0x180c00

    .line 457
    .line 458
    .line 459
    or-int v11, v1, v6

    .line 460
    .line 461
    move-object v1, v5

    .line 462
    const/4 v5, 0x0

    .line 463
    const/4 v6, 0x0

    .line 464
    const/4 v8, 0x0

    .line 465
    move-object/from16 v17, v14

    .line 466
    .line 467
    move v14, v3

    .line 468
    move-object/from16 v3, v17

    .line 469
    .line 470
    move-object/from16 v17, v1

    .line 471
    .line 472
    move-object/from16 v1, v25

    .line 473
    .line 474
    invoke-static/range {v1 .. v11}, Lzj2;->b(Ldb3;ZLne1;Lka0;Lnd2;ZLdf1;ZLrj2;Lag1;I)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v15, p2

    .line 478
    .line 479
    move v3, v14

    .line 480
    move/from16 v4, v16

    .line 481
    .line 482
    move-object/from16 v5, v17

    .line 483
    .line 484
    move-object/from16 v2, v26

    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :cond_13
    invoke-virtual {v10}, Lag1;->Q()V

    .line 489
    .line 490
    .line 491
    :cond_14
    sget-object v0, Lt64;->a:Lt64;

    .line 492
    .line 493
    return-object v0
.end method
