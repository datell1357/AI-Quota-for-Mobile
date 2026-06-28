.class public final synthetic Lxx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lzx3;


# direct methods
.method public synthetic constructor <init>(Lzx3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxx3;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lxx3;->o:Lzx3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lxx3;->n:I

    .line 4
    .line 5
    iget-object v0, v0, Lxx3;->o:Lzx3;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v4, v0, Lzx3;->L:Lyx3;

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v1, v4, Lyx3;->c:Z

    .line 25
    .line 26
    invoke-static {v0}, Lw80;->A(Leh3;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lca;->u(Loy1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkt4;->Q(Ljx0;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_0
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Lff;

    .line 44
    .line 45
    iget-object v3, v1, Lff;->o:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, v0, Lzx3;->L:Lyx3;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v2, v1, Lyx3;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v3, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iput-object v3, v1, Lyx3;->b:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, v1, Lyx3;->d:Lps2;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v2, v0, Lzx3;->C:Lay3;

    .line 67
    .line 68
    iget-object v4, v0, Lzx3;->D:Lqa1;

    .line 69
    .line 70
    iget v5, v0, Lzx3;->E:I

    .line 71
    .line 72
    iget-boolean v6, v0, Lzx3;->F:Z

    .line 73
    .line 74
    iget v7, v0, Lzx3;->G:I

    .line 75
    .line 76
    iget v8, v0, Lzx3;->H:I

    .line 77
    .line 78
    iput-object v3, v1, Lps2;->a:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v2, v1, Lps2;->b:Lay3;

    .line 81
    .line 82
    iput-object v4, v1, Lps2;->c:Lqa1;

    .line 83
    .line 84
    iput v5, v1, Lps2;->d:I

    .line 85
    .line 86
    iput-boolean v6, v1, Lps2;->e:Z

    .line 87
    .line 88
    iput v7, v1, Lps2;->f:I

    .line 89
    .line 90
    iput v8, v1, Lps2;->g:I

    .line 91
    .line 92
    iget-wide v2, v1, Lps2;->s:J

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    shl-long/2addr v2, v4

    .line 96
    const-wide/16 v4, 0x2

    .line 97
    .line 98
    or-long/2addr v2, v4

    .line 99
    iput-wide v2, v1, Lps2;->s:J

    .line 100
    .line 101
    invoke-virtual {v1}, Lps2;->c()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v1, Lyx3;

    .line 106
    .line 107
    iget-object v2, v0, Lzx3;->B:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v1, v2, v3}, Lyx3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lps2;

    .line 113
    .line 114
    iget-object v4, v0, Lzx3;->C:Lay3;

    .line 115
    .line 116
    iget-object v5, v0, Lzx3;->D:Lqa1;

    .line 117
    .line 118
    iget v6, v0, Lzx3;->E:I

    .line 119
    .line 120
    iget-boolean v7, v0, Lzx3;->F:Z

    .line 121
    .line 122
    iget v8, v0, Lzx3;->G:I

    .line 123
    .line 124
    iget v9, v0, Lzx3;->H:I

    .line 125
    .line 126
    invoke-direct/range {v2 .. v9}, Lps2;-><init>(Ljava/lang/String;Lay3;Lqa1;IZII)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lzx3;->G0()Lps2;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    iget-object v3, v3, Lps2;->i:Las0;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Lps2;->d(Las0;)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v1, Lyx3;->d:Lps2;

    .line 139
    .line 140
    iput-object v1, v0, Lzx3;->L:Lyx3;

    .line 141
    .line 142
    :cond_3
    :goto_1
    invoke-static {v0}, Lw80;->A(Leh3;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lca;->u(Loy1;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lkt4;->Q(Ljx0;)V

    .line 149
    .line 150
    .line 151
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    return-object v0

    .line 154
    :pswitch_1
    move-object/from16 v1, p1

    .line 155
    .line 156
    check-cast v1, Ljava/util/List;

    .line 157
    .line 158
    invoke-virtual {v0}, Lzx3;->G0()Lps2;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iget-object v5, v0, Lzx3;->C:Lay3;

    .line 163
    .line 164
    sget-wide v6, Lt70;->f:J

    .line 165
    .line 166
    const-wide/16 v15, 0x0

    .line 167
    .line 168
    const v17, 0xfffffe

    .line 169
    .line 170
    .line 171
    const-wide/16 v8, 0x0

    .line 172
    .line 173
    const/4 v10, 0x0

    .line 174
    const/4 v11, 0x0

    .line 175
    const-wide/16 v12, 0x0

    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    invoke-static/range {v5 .. v17}, Lay3;->d(Lay3;JJLpb1;Lra1;JIJI)Lay3;

    .line 179
    .line 180
    .line 181
    move-result-object v20

    .line 182
    iget-object v0, v4, Lps2;->o:Lhy1;

    .line 183
    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    :goto_2
    const/4 v7, 0x0

    .line 187
    const/4 v8, 0x0

    .line 188
    goto/16 :goto_d

    .line 189
    .line 190
    :cond_4
    iget-object v6, v4, Lps2;->i:Las0;

    .line 191
    .line 192
    if-nez v6, :cond_5

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    new-instance v7, Lff;

    .line 196
    .line 197
    iget-object v8, v4, Lps2;->a:Ljava/lang/String;

    .line 198
    .line 199
    invoke-direct {v7, v8}, Lff;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v8, v4, Lps2;->j:Lnb;

    .line 203
    .line 204
    if-nez v8, :cond_6

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    iget-object v8, v4, Lps2;->n:Los2;

    .line 208
    .line 209
    if-nez v8, :cond_7

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    iget-wide v8, v4, Lps2;->p:J

    .line 213
    .line 214
    const-wide v10, -0x1fffffffdL

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    and-long v28, v8, v10

    .line 220
    .line 221
    new-instance v8, Lox3;

    .line 222
    .line 223
    new-instance v18, Lnx3;

    .line 224
    .line 225
    iget v9, v4, Lps2;->f:I

    .line 226
    .line 227
    iget-boolean v10, v4, Lps2;->e:Z

    .line 228
    .line 229
    iget v11, v4, Lps2;->d:I

    .line 230
    .line 231
    iget-object v12, v4, Lps2;->c:Lqa1;

    .line 232
    .line 233
    sget-object v21, Lg01;->n:Lg01;

    .line 234
    .line 235
    move-object/from16 v26, v0

    .line 236
    .line 237
    move-object/from16 v25, v6

    .line 238
    .line 239
    move-object/from16 v19, v7

    .line 240
    .line 241
    move/from16 v22, v9

    .line 242
    .line 243
    move/from16 v23, v10

    .line 244
    .line 245
    move/from16 v24, v11

    .line 246
    .line 247
    move-object/from16 v27, v12

    .line 248
    .line 249
    invoke-direct/range {v18 .. v29}, Lnx3;-><init>(Lff;Lay3;Ljava/util/List;IZILas0;Lhy1;Lqa1;J)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v0, v18

    .line 253
    .line 254
    move-object/from16 v22, v25

    .line 255
    .line 256
    move-object/from16 v23, v27

    .line 257
    .line 258
    new-instance v6, Lse2;

    .line 259
    .line 260
    new-instance v18, Lrp;

    .line 261
    .line 262
    invoke-direct/range {v18 .. v23}, Lrp;-><init>(Lff;Lay3;Ljava/util/List;Las0;Lqa1;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v7, v18

    .line 266
    .line 267
    iget v9, v4, Lps2;->f:I

    .line 268
    .line 269
    iget v13, v4, Lps2;->d:I

    .line 270
    .line 271
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 272
    .line 273
    .line 274
    iput-object v7, v6, Lse2;->c:Ljava/lang/Object;

    .line 275
    .line 276
    iput v9, v6, Lse2;->a:I

    .line 277
    .line 278
    invoke-static/range {v28 .. v29}, Lmf0;->j(J)I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-nez v9, :cond_8

    .line 283
    .line 284
    invoke-static/range {v28 .. v29}, Lmf0;->i(J)I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-nez v9, :cond_8

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_8
    const-string v9, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    .line 292
    .line 293
    invoke-static {v9}, Lbr1;->a(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-object v7, v7, Lrp;->f:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v7, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    move/from16 v12, v16

    .line 312
    .line 313
    const/4 v11, 0x0

    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    :goto_4
    if-ge v11, v10, :cond_c

    .line 317
    .line 318
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v14

    .line 322
    check-cast v14, Lns2;

    .line 323
    .line 324
    move v15, v11

    .line 325
    iget-object v11, v14, Lns2;->a:Lrb;

    .line 326
    .line 327
    invoke-static/range {v28 .. v29}, Lmf0;->h(J)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-static/range {v28 .. v29}, Lmf0;->c(J)Z

    .line 332
    .line 333
    .line 334
    move-result v17

    .line 335
    if-eqz v17, :cond_a

    .line 336
    .line 337
    invoke-static/range {v28 .. v29}, Lmf0;->g(J)I

    .line 338
    .line 339
    .line 340
    move-result v17

    .line 341
    move-object/from16 p0, v4

    .line 342
    .line 343
    float-to-double v3, v12

    .line 344
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 345
    .line 346
    .line 347
    move-result-wide v3

    .line 348
    double-to-float v3, v3

    .line 349
    float-to-int v3, v3

    .line 350
    sub-int v17, v17, v3

    .line 351
    .line 352
    if-gez v17, :cond_9

    .line 353
    .line 354
    const/16 v17, 0x0

    .line 355
    .line 356
    :cond_9
    :goto_5
    move/from16 v3, v17

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :cond_a
    move-object/from16 p0, v4

    .line 360
    .line 361
    invoke-static/range {v28 .. v29}, Lmf0;->g(J)I

    .line 362
    .line 363
    .line 364
    move-result v17

    .line 365
    goto :goto_5

    .line 366
    :goto_6
    const/4 v4, 0x5

    .line 367
    invoke-static {v2, v3, v4}, Lnf0;->b(III)J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    iget v4, v6, Lse2;->a:I

    .line 372
    .line 373
    sub-int v4, v4, v21

    .line 374
    .line 375
    new-instance v18, Lnb;

    .line 376
    .line 377
    move/from16 v23, v12

    .line 378
    .line 379
    move v12, v4

    .line 380
    move-object v4, v14

    .line 381
    move-wide/from16 v30, v2

    .line 382
    .line 383
    move v2, v10

    .line 384
    move v3, v15

    .line 385
    move-object/from16 v10, v18

    .line 386
    .line 387
    move-wide/from16 v14, v30

    .line 388
    .line 389
    invoke-direct/range {v10 .. v15}, Lnb;-><init>(Lrb;IIJ)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v10}, Lnb;->b()F

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    add-float v24, v11, v23

    .line 397
    .line 398
    iget-object v11, v10, Lnb;->d:Lmx3;

    .line 399
    .line 400
    iget v12, v11, Lmx3;->f:I

    .line 401
    .line 402
    add-int v22, v21, v12

    .line 403
    .line 404
    new-instance v17, Lms2;

    .line 405
    .line 406
    iget v12, v4, Lns2;->b:I

    .line 407
    .line 408
    iget v4, v4, Lns2;->c:I

    .line 409
    .line 410
    move/from16 v20, v4

    .line 411
    .line 412
    move/from16 v19, v12

    .line 413
    .line 414
    invoke-direct/range {v17 .. v24}, Lms2;-><init>(Lnb;IIIIFF)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v10, v17

    .line 418
    .line 419
    move/from16 v4, v22

    .line 420
    .line 421
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    iget-boolean v10, v11, Lmx3;->d:Z

    .line 425
    .line 426
    if-nez v10, :cond_d

    .line 427
    .line 428
    iget v10, v6, Lse2;->a:I

    .line 429
    .line 430
    if-ne v4, v10, :cond_b

    .line 431
    .line 432
    iget-object v10, v6, Lse2;->c:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v10, Lrp;

    .line 435
    .line 436
    iget-object v10, v10, Lrp;->f:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v10, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-static {v10}, Ltv4;->v(Ljava/util/List;)I

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    if-eq v3, v10, :cond_b

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_b
    add-int/lit8 v11, v3, 0x1

    .line 448
    .line 449
    move v10, v2

    .line 450
    move/from16 v21, v4

    .line 451
    .line 452
    move/from16 v12, v24

    .line 453
    .line 454
    move-object/from16 v4, p0

    .line 455
    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :cond_c
    move-object/from16 p0, v4

    .line 459
    .line 460
    move/from16 v4, v21

    .line 461
    .line 462
    :cond_d
    :goto_7
    iput v4, v6, Lse2;->b:I

    .line 463
    .line 464
    iput-object v9, v6, Lse2;->e:Ljava/lang/Object;

    .line 465
    .line 466
    new-instance v2, Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    const/4 v4, 0x0

    .line 480
    :goto_8
    if-ge v4, v3, :cond_10

    .line 481
    .line 482
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    check-cast v7, Lms2;

    .line 487
    .line 488
    iget-object v10, v7, Lms2;->a:Lnb;

    .line 489
    .line 490
    iget-object v10, v10, Lnb;->f:Ljava/util/List;

    .line 491
    .line 492
    new-instance v11, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 495
    .line 496
    .line 497
    move-result v12

    .line 498
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .line 500
    .line 501
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    const/4 v13, 0x0

    .line 506
    :goto_9
    if-ge v13, v12, :cond_f

    .line 507
    .line 508
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v14

    .line 512
    check-cast v14, Ll33;

    .line 513
    .line 514
    if-eqz v14, :cond_e

    .line 515
    .line 516
    iget v15, v7, Lms2;->f:F

    .line 517
    .line 518
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    move/from16 v17, v3

    .line 523
    .line 524
    move/from16 v18, v4

    .line 525
    .line 526
    int-to-long v3, v5

    .line 527
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    move-wide/from16 v19, v3

    .line 532
    .line 533
    int-to-long v3, v5

    .line 534
    const/16 v5, 0x20

    .line 535
    .line 536
    shl-long v19, v19, v5

    .line 537
    .line 538
    const-wide v21, 0xffffffffL

    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    and-long v3, v3, v21

    .line 544
    .line 545
    or-long v3, v19, v3

    .line 546
    .line 547
    invoke-virtual {v14, v3, v4}, Ll33;->e(J)Ll33;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    goto :goto_a

    .line 552
    :cond_e
    move/from16 v17, v3

    .line 553
    .line 554
    move/from16 v18, v4

    .line 555
    .line 556
    const/4 v3, 0x0

    .line 557
    :goto_a
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    add-int/lit8 v13, v13, 0x1

    .line 561
    .line 562
    move/from16 v3, v17

    .line 563
    .line 564
    move/from16 v4, v18

    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_f
    move/from16 v17, v3

    .line 568
    .line 569
    move/from16 v18, v4

    .line 570
    .line 571
    invoke-static {v11, v2}, Lo70;->d0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 572
    .line 573
    .line 574
    add-int/lit8 v4, v18, 0x1

    .line 575
    .line 576
    goto :goto_8

    .line 577
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    iget-object v4, v6, Lse2;->c:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v4, Lrp;

    .line 584
    .line 585
    iget-object v4, v4, Lrp;->c:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v4, Ljava/util/List;

    .line 588
    .line 589
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-ge v3, v4, :cond_12

    .line 594
    .line 595
    iget-object v3, v6, Lse2;->c:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v3, Lrp;

    .line 598
    .line 599
    iget-object v3, v3, Lrp;->c:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v3, Ljava/util/List;

    .line 602
    .line 603
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    sub-int/2addr v3, v4

    .line 612
    new-instance v4, Ljava/util/ArrayList;

    .line 613
    .line 614
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    .line 616
    .line 617
    const/4 v5, 0x0

    .line 618
    :goto_b
    const/4 v7, 0x0

    .line 619
    if-ge v5, v3, :cond_11

    .line 620
    .line 621
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    add-int/lit8 v5, v5, 0x1

    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_11
    invoke-static {v2, v4}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    goto :goto_c

    .line 632
    :cond_12
    const/4 v7, 0x0

    .line 633
    :goto_c
    iput-object v2, v6, Lse2;->d:Ljava/lang/Object;

    .line 634
    .line 635
    move-object/from16 v2, p0

    .line 636
    .line 637
    iget-wide v2, v2, Lps2;->l:J

    .line 638
    .line 639
    invoke-direct {v8, v0, v6, v2, v3}, Lox3;-><init>(Lnx3;Lse2;J)V

    .line 640
    .line 641
    .line 642
    :goto_d
    if-eqz v8, :cond_13

    .line 643
    .line 644
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-object v5, v8

    .line 648
    goto :goto_e

    .line 649
    :cond_13
    move-object v5, v7

    .line 650
    :goto_e
    if-eqz v5, :cond_14

    .line 651
    .line 652
    const/4 v2, 0x1

    .line 653
    goto :goto_f

    .line 654
    :cond_14
    const/4 v2, 0x0

    .line 655
    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    return-object v0

    .line 660
    nop

    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
