.class public final Lyj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;


# instance fields
.field public final synthetic a:Lne1;

.field public final synthetic b:Ldf1;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lne1;Ldf1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyj2;->a:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Lyj2;->b:Ldf1;

    .line 7
    .line 8
    iput-boolean p3, p0, Lyj2;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lyj2;->a:Lne1;

    .line 8
    .line 9
    invoke-interface {v3}, Lne1;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    cmpg-float v5, v3, v4

    .line 21
    .line 22
    if-gez v5, :cond_0

    .line 23
    .line 24
    move v9, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v9, v3

    .line 27
    :goto_0
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0xa

    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v14, 0x0

    .line 33
    move-wide/from16 v10, p3

    .line 34
    .line 35
    invoke-static/range {v10 .. v16}, Lmf0;->a(JIIIII)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_1
    const-string v8, "Collection contains no element matching the predicate."

    .line 45
    .line 46
    if-ge v7, v5, :cond_15

    .line 47
    .line 48
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    check-cast v11, Lya2;

    .line 53
    .line 54
    invoke-static {v11}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    const-string v13, "icon"

    .line 59
    .line 60
    invoke-static {v12, v13}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-eqz v12, :cond_14

    .line 65
    .line 66
    invoke-interface {v11, v3, v4}, Lya2;->e(J)Ldv2;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    iget v5, v14, Ldv2;->n:I

    .line 71
    .line 72
    sget v7, Lzj2;->d:F

    .line 73
    .line 74
    const/high16 v11, 0x40000000    # 2.0f

    .line 75
    .line 76
    mul-float/2addr v7, v11

    .line 77
    invoke-interface {v1, v7}, Las0;->N(F)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    add-int/2addr v7, v5

    .line 82
    int-to-float v5, v7

    .line 83
    mul-float/2addr v5, v9

    .line 84
    invoke-static {v5}, Lis0;->V(F)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iget v12, v14, Ldv2;->o:I

    .line 89
    .line 90
    sget v13, Lzj2;->e:F

    .line 91
    .line 92
    mul-float/2addr v13, v11

    .line 93
    invoke-interface {v1, v13}, Las0;->N(F)I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    add-int/2addr v13, v12

    .line 98
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const/4 v15, 0x0

    .line 103
    :goto_2
    if-ge v15, v12, :cond_13

    .line 104
    .line 105
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    move-object/from16 v6, v16

    .line 110
    .line 111
    check-cast v6, Lya2;

    .line 112
    .line 113
    const/16 v16, 0x0

    .line 114
    .line 115
    invoke-static {v6}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    move/from16 v18, v11

    .line 120
    .line 121
    const-string v11, "indicatorRipple"

    .line 122
    .line 123
    invoke-static {v10, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_12

    .line 128
    .line 129
    if-ltz v7, :cond_1

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_1
    const/4 v11, 0x0

    .line 134
    :goto_3
    if-ltz v13, :cond_2

    .line 135
    .line 136
    const/4 v12, 0x1

    .line 137
    goto :goto_4

    .line 138
    :cond_2
    const/4 v12, 0x0

    .line 139
    :goto_4
    and-int/2addr v11, v12

    .line 140
    const-string v12, "width and height must be >= 0"

    .line 141
    .line 142
    if-nez v11, :cond_3

    .line 143
    .line 144
    invoke-static {v12}, Lcr1;->a(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    invoke-static {v7, v7, v13, v13}, Lnf0;->g(IIII)J

    .line 148
    .line 149
    .line 150
    move-result-wide v10

    .line 151
    invoke-interface {v6, v10, v11}, Lya2;->e(J)Ldv2;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    const/4 v10, 0x0

    .line 160
    :goto_5
    if-ge v10, v7, :cond_5

    .line 161
    .line 162
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    move-object/from16 v19, v11

    .line 167
    .line 168
    check-cast v19, Lya2;

    .line 169
    .line 170
    invoke-static/range {v19 .. v19}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    move/from16 v19, v7

    .line 175
    .line 176
    const-string v7, "indicator"

    .line 177
    .line 178
    invoke-static {v15, v7}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_4

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 186
    .line 187
    move/from16 v7, v19

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_5
    move-object/from16 v11, v16

    .line 191
    .line 192
    :goto_6
    check-cast v11, Lya2;

    .line 193
    .line 194
    if-eqz v11, :cond_9

    .line 195
    .line 196
    if-ltz v5, :cond_6

    .line 197
    .line 198
    const/4 v7, 0x1

    .line 199
    goto :goto_7

    .line 200
    :cond_6
    const/4 v7, 0x0

    .line 201
    :goto_7
    if-ltz v13, :cond_7

    .line 202
    .line 203
    const/4 v10, 0x1

    .line 204
    goto :goto_8

    .line 205
    :cond_7
    const/4 v10, 0x0

    .line 206
    :goto_8
    and-int/2addr v7, v10

    .line 207
    if-nez v7, :cond_8

    .line 208
    .line 209
    invoke-static {v12}, Lcr1;->a(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    invoke-static {v5, v5, v13, v13}, Lnf0;->g(IIII)J

    .line 213
    .line 214
    .line 215
    move-result-wide v12

    .line 216
    invoke-interface {v11, v12, v13}, Lya2;->e(J)Ldv2;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    move-object v7, v5

    .line 221
    goto :goto_9

    .line 222
    :cond_9
    move-object/from16 v7, v16

    .line 223
    .line 224
    :goto_9
    iget-object v5, v0, Lyj2;->b:Ldf1;

    .line 225
    .line 226
    if-eqz v5, :cond_c

    .line 227
    .line 228
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    const/4 v11, 0x0

    .line 233
    :goto_a
    if-ge v11, v10, :cond_b

    .line 234
    .line 235
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    check-cast v12, Lya2;

    .line 240
    .line 241
    invoke-static {v12}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    const-string v15, "label"

    .line 246
    .line 247
    invoke-static {v13, v15}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    if-eqz v13, :cond_a

    .line 252
    .line 253
    invoke-interface {v12, v3, v4}, Lya2;->e(J)Ldv2;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    goto :goto_b

    .line 258
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_b
    invoke-static {v8}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lp61;->q()V

    .line 265
    .line 266
    .line 267
    return-object v16

    .line 268
    :cond_c
    move-object/from16 v10, v16

    .line 269
    .line 270
    :goto_b
    sget-object v2, Lh01;->n:Lh01;

    .line 271
    .line 272
    const v3, 0x7fffffff

    .line 273
    .line 274
    .line 275
    if-nez v5, :cond_e

    .line 276
    .line 277
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-ne v0, v3, :cond_d

    .line 282
    .line 283
    iget v0, v14, Ldv2;->n:I

    .line 284
    .line 285
    sget v3, Lzj2;->g:F

    .line 286
    .line 287
    invoke-interface {v1, v3}, Las0;->N(F)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    mul-int/lit8 v3, v3, 0x2

    .line 292
    .line 293
    add-int/2addr v3, v0

    .line 294
    :goto_c
    move/from16 v21, v3

    .line 295
    .line 296
    goto :goto_d

    .line 297
    :cond_d
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    goto :goto_c

    .line 302
    :goto_d
    sget v0, Lzj2;->a:F

    .line 303
    .line 304
    invoke-interface {v1, v0}, Las0;->N(F)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    move-wide/from16 v4, p3

    .line 309
    .line 310
    invoke-static {v0, v4, v5}, Lnf0;->e(IJ)I

    .line 311
    .line 312
    .line 313
    move-result v22

    .line 314
    iget v0, v14, Ldv2;->n:I

    .line 315
    .line 316
    sub-int v0, v21, v0

    .line 317
    .line 318
    div-int/lit8 v16, v0, 0x2

    .line 319
    .line 320
    iget v0, v14, Ldv2;->o:I

    .line 321
    .line 322
    sub-int v0, v22, v0

    .line 323
    .line 324
    div-int/lit8 v17, v0, 0x2

    .line 325
    .line 326
    iget v0, v6, Ldv2;->n:I

    .line 327
    .line 328
    sub-int v0, v21, v0

    .line 329
    .line 330
    div-int/lit8 v19, v0, 0x2

    .line 331
    .line 332
    iget v0, v6, Ldv2;->o:I

    .line 333
    .line 334
    sub-int v0, v22, v0

    .line 335
    .line 336
    div-int/lit8 v20, v0, 0x2

    .line 337
    .line 338
    new-instance v13, Luj2;

    .line 339
    .line 340
    move-object/from16 v18, v6

    .line 341
    .line 342
    move-object v15, v14

    .line 343
    move-object v14, v7

    .line 344
    invoke-direct/range {v13 .. v22}, Luj2;-><init>(Ldv2;Ldv2;IILdv2;IIII)V

    .line 345
    .line 346
    .line 347
    move/from16 v3, v21

    .line 348
    .line 349
    move/from16 v0, v22

    .line 350
    .line 351
    invoke-interface {v1, v3, v0, v2, v13}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    return-object v0

    .line 356
    :cond_e
    move-wide/from16 v4, p3

    .line 357
    .line 358
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    iget v8, v14, Ldv2;->o:I

    .line 362
    .line 363
    int-to-float v8, v8

    .line 364
    sget v11, Lzj2;->e:F

    .line 365
    .line 366
    invoke-interface {v1, v11}, Las0;->v(F)F

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    add-float/2addr v12, v8

    .line 371
    sget v8, Lzj2;->c:F

    .line 372
    .line 373
    invoke-interface {v1, v8}, Las0;->v(F)F

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    add-float/2addr v13, v12

    .line 378
    iget v12, v10, Ldv2;->o:I

    .line 379
    .line 380
    int-to-float v12, v12

    .line 381
    add-float/2addr v13, v12

    .line 382
    invoke-static {v4, v5}, Lmf0;->i(J)I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    int-to-float v12, v12

    .line 387
    sub-float/2addr v12, v13

    .line 388
    div-float v12, v12, v18

    .line 389
    .line 390
    invoke-interface {v1, v11}, Las0;->v(F)F

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    cmpg-float v16, v12, v15

    .line 395
    .line 396
    if-gez v16, :cond_f

    .line 397
    .line 398
    move/from16 v16, v15

    .line 399
    .line 400
    goto :goto_e

    .line 401
    :cond_f
    move/from16 v16, v12

    .line 402
    .line 403
    :goto_e
    mul-float v12, v16, v18

    .line 404
    .line 405
    add-float/2addr v12, v13

    .line 406
    iget-boolean v0, v0, Lyj2;->c:Z

    .line 407
    .line 408
    if-eqz v0, :cond_10

    .line 409
    .line 410
    move/from16 v13, v16

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_10
    iget v13, v14, Ldv2;->o:I

    .line 414
    .line 415
    int-to-float v13, v13

    .line 416
    sub-float v13, v12, v13

    .line 417
    .line 418
    div-float v13, v13, v18

    .line 419
    .line 420
    :goto_f
    sub-float v13, v13, v16

    .line 421
    .line 422
    const/high16 v15, 0x3f800000    # 1.0f

    .line 423
    .line 424
    sub-float/2addr v15, v9

    .line 425
    mul-float/2addr v13, v15

    .line 426
    iget v15, v14, Ldv2;->o:I

    .line 427
    .line 428
    int-to-float v15, v15

    .line 429
    add-float v15, v16, v15

    .line 430
    .line 431
    invoke-interface {v1, v11}, Las0;->v(F)F

    .line 432
    .line 433
    .line 434
    move-result v17

    .line 435
    add-float v17, v17, v15

    .line 436
    .line 437
    invoke-interface {v1, v8}, Las0;->v(F)F

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    add-float v8, v8, v17

    .line 442
    .line 443
    invoke-static {v4, v5}, Lmf0;->h(J)I

    .line 444
    .line 445
    .line 446
    move-result v15

    .line 447
    if-ne v15, v3, :cond_11

    .line 448
    .line 449
    iget v3, v14, Ldv2;->n:I

    .line 450
    .line 451
    sget v4, Lzj2;->g:F

    .line 452
    .line 453
    invoke-interface {v1, v4}, Las0;->N(F)I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    mul-int/lit8 v4, v4, 0x2

    .line 458
    .line 459
    add-int/2addr v4, v3

    .line 460
    :goto_10
    move/from16 v20, v4

    .line 461
    .line 462
    goto :goto_11

    .line 463
    :cond_11
    invoke-static {v4, v5}, Lmf0;->h(J)I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    goto :goto_10

    .line 468
    :goto_11
    iget v3, v10, Ldv2;->n:I

    .line 469
    .line 470
    sub-int v3, v20, v3

    .line 471
    .line 472
    div-int/lit8 v3, v3, 0x2

    .line 473
    .line 474
    iget v4, v14, Ldv2;->n:I

    .line 475
    .line 476
    sub-int v4, v20, v4

    .line 477
    .line 478
    div-int/lit8 v15, v4, 0x2

    .line 479
    .line 480
    iget v4, v6, Ldv2;->n:I

    .line 481
    .line 482
    sub-int v4, v20, v4

    .line 483
    .line 484
    div-int/lit8 v18, v4, 0x2

    .line 485
    .line 486
    invoke-interface {v1, v11}, Las0;->v(F)F

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    sub-float v19, v16, v4

    .line 491
    .line 492
    invoke-static {v12}, Lis0;->V(F)I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    move-object/from16 v17, v6

    .line 497
    .line 498
    new-instance v6, Ltj2;

    .line 499
    .line 500
    move v11, v3

    .line 501
    move v12, v8

    .line 502
    move v8, v0

    .line 503
    invoke-direct/range {v6 .. v20}, Ltj2;-><init>(Ldv2;ZFLdv2;IFFLdv2;IFLdv2;IFI)V

    .line 504
    .line 505
    .line 506
    move/from16 v0, v20

    .line 507
    .line 508
    invoke-interface {v1, v0, v4, v2, v6}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    return-object v0

    .line 513
    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 514
    .line 515
    move/from16 v11, v18

    .line 516
    .line 517
    goto/16 :goto_2

    .line 518
    .line 519
    :cond_13
    const/16 v16, 0x0

    .line 520
    .line 521
    invoke-static {v8}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 522
    .line 523
    .line 524
    invoke-static {}, Lp61;->q()V

    .line 525
    .line 526
    .line 527
    return-object v16

    .line 528
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 529
    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :cond_15
    const/16 v16, 0x0

    .line 533
    .line 534
    invoke-static {v8}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 535
    .line 536
    .line 537
    invoke-static {}, Lp61;->q()V

    .line 538
    .line 539
    .line 540
    return-object v16
.end method
