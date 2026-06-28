.class public final Lxd2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lpa3;Lpa3;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lld;

    .line 9
    .line 10
    iget v3, v0, Lpa3;->b:F

    .line 11
    .line 12
    iget v4, v0, Lpa3;->c:F

    .line 13
    .line 14
    invoke-direct {v2, v3, v4}, Lld;-><init>(FF)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0}, Lfl4;->s(Lld;Lpa3;)Lib2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lld;

    .line 22
    .line 23
    iget v3, v1, Lpa3;->b:F

    .line 24
    .line 25
    iget v4, v1, Lpa3;->c:F

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Lld;-><init>(FF)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v1}, Lfl4;->s(Lld;Lpa3;)Lib2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, v0, Lib2;->p:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, v1, Lib2;->p:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ltv4;->p()La42;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x0

    .line 53
    move v7, v6

    .line 54
    :goto_0
    if-ge v7, v5, :cond_1

    .line 55
    .line 56
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    check-cast v8, Lsz2;

    .line 61
    .line 62
    iget-object v8, v8, Lsz2;->b:Lw41;

    .line 63
    .line 64
    instance-of v8, v8, Lu41;

    .line 65
    .line 66
    if-eqz v8, :cond_0

    .line 67
    .line 68
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v4, v8}, La42;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v4}, Ltv4;->l(La42;)La42;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {}, Ltv4;->p()La42;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    move v7, v6

    .line 91
    :goto_1
    if-ge v7, v5, :cond_3

    .line 92
    .line 93
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Lsz2;

    .line 98
    .line 99
    iget-object v8, v8, Lsz2;->b:Lw41;

    .line 100
    .line 101
    instance-of v8, v8, Lu41;

    .line 102
    .line 103
    if-eqz v8, :cond_2

    .line 104
    .line 105
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v4, v8}, La42;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-static {v4}, Ltv4;->l(La42;)La42;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v2}, Lp1;->a()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-virtual {v4}, Lp1;->a()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-le v5, v7, :cond_4

    .line 128
    .line 129
    invoke-static {v4, v2}, Lc75;->y(La42;La42;)Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v5, Ljs2;

    .line 134
    .line 135
    invoke-direct {v5, v2, v4}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    invoke-static {v2, v4}, Lc75;->y(La42;La42;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    new-instance v5, Ljs2;

    .line 144
    .line 145
    invoke-direct {v5, v2, v4}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-object v2, v5, Ljs2;->n:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Ljava/util/List;

    .line 151
    .line 152
    iget-object v4, v5, Ljs2;->o:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v4, Ljava/util/List;

    .line 155
    .line 156
    invoke-static {}, Ltv4;->p()La42;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    move v8, v6

    .line 165
    :goto_3
    if-ge v8, v7, :cond_5

    .line 166
    .line 167
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eq v8, v9, :cond_5

    .line 172
    .line 173
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Lsz2;

    .line 178
    .line 179
    iget v9, v9, Lsz2;->a:F

    .line 180
    .line 181
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Lsz2;

    .line 190
    .line 191
    iget v10, v10, Lsz2;->a:F

    .line 192
    .line 193
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    new-instance v11, Ljs2;

    .line 198
    .line 199
    invoke-direct {v11, v9, v10}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v11}, La42;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    add-int/lit8 v8, v8, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_5
    invoke-static {v5}, Ltv4;->l(La42;)La42;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    new-instance v4, Lzv0;

    .line 213
    .line 214
    new-array v5, v6, [Ljs2;

    .line 215
    .line 216
    invoke-virtual {v2, v5}, La42;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, [Ljs2;

    .line 221
    .line 222
    array-length v5, v2

    .line 223
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, [Ljs2;

    .line 228
    .line 229
    invoke-direct {v4, v2}, Lzv0;-><init>([Ljs2;)V

    .line 230
    .line 231
    .line 232
    iget-object v2, v4, Lzv0;->a:Lqf2;

    .line 233
    .line 234
    iget-object v4, v4, Lzv0;->b:Lqf2;

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    invoke-static {v2, v4, v5}, Lse0;->z(Lqf2;Lqf2;F)F

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    iget-object v8, v1, Lib2;->o:Ljava/util/ArrayList;

    .line 242
    .line 243
    cmpg-float v9, v5, v7

    .line 244
    .line 245
    if-gtz v9, :cond_14

    .line 246
    .line 247
    const/high16 v9, 0x3f800000    # 1.0f

    .line 248
    .line 249
    cmpg-float v11, v7, v9

    .line 250
    .line 251
    if-gtz v11, :cond_14

    .line 252
    .line 253
    const v11, 0x38d1b717    # 1.0E-4f

    .line 254
    .line 255
    .line 256
    cmpg-float v11, v7, v11

    .line 257
    .line 258
    const/4 v12, 0x1

    .line 259
    if-gez v11, :cond_6

    .line 260
    .line 261
    const/16 p2, 0x0

    .line 262
    .line 263
    goto/16 :goto_a

    .line 264
    .line 265
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    move v13, v6

    .line 270
    move v14, v13

    .line 271
    :goto_4
    if-ge v14, v11, :cond_8

    .line 272
    .line 273
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    add-int/lit8 v14, v14, 0x1

    .line 278
    .line 279
    check-cast v15, Lhb2;

    .line 280
    .line 281
    iget v5, v15, Lhb2;->c:F

    .line 282
    .line 283
    iget v15, v15, Lhb2;->d:F

    .line 284
    .line 285
    cmpg-float v15, v7, v15

    .line 286
    .line 287
    if-gtz v15, :cond_7

    .line 288
    .line 289
    cmpg-float v5, v5, v7

    .line 290
    .line 291
    if-gtz v5, :cond_7

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 295
    .line 296
    const/4 v5, 0x0

    .line 297
    goto :goto_4

    .line 298
    :cond_8
    const/4 v13, -0x1

    .line 299
    :goto_5
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    check-cast v5, Lhb2;

    .line 304
    .line 305
    invoke-virtual {v5, v7}, Lhb2;->a(F)Ljs2;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    iget-object v11, v5, Ljs2;->n:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v11, Lhb2;

    .line 312
    .line 313
    iget-object v5, v5, Ljs2;->o:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v5, Lhb2;

    .line 316
    .line 317
    iget-object v5, v5, Lhb2;->a:Lcl0;

    .line 318
    .line 319
    filled-new-array {v5}, [Lcl0;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-static {v5}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    move v15, v12

    .line 332
    :goto_6
    if-ge v15, v14, :cond_9

    .line 333
    .line 334
    add-int v16, v15, v13

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 337
    .line 338
    .line 339
    move-result v17

    .line 340
    const/16 p2, 0x0

    .line 341
    .line 342
    rem-int v10, v16, v17

    .line 343
    .line 344
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    check-cast v10, Lhb2;

    .line 349
    .line 350
    iget-object v10, v10, Lhb2;->a:Lcl0;

    .line 351
    .line 352
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    add-int/lit8 v15, v15, 0x1

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_9
    const/16 p2, 0x0

    .line 359
    .line 360
    iget-object v10, v11, Lhb2;->a:Lcl0;

    .line 361
    .line 362
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    new-instance v10, Lqf2;

    .line 366
    .line 367
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    add-int/lit8 v11, v11, 0x2

    .line 372
    .line 373
    invoke-direct {v10, v11}, Lqf2;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    add-int/lit8 v11, v11, 0x2

    .line 381
    .line 382
    move v14, v6

    .line 383
    :goto_7
    if-ge v14, v11, :cond_c

    .line 384
    .line 385
    if-nez v14, :cond_a

    .line 386
    .line 387
    const/4 v15, 0x0

    .line 388
    goto :goto_8

    .line 389
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 390
    .line 391
    .line 392
    move-result v15

    .line 393
    add-int/2addr v15, v12

    .line 394
    if-ne v14, v15, :cond_b

    .line 395
    .line 396
    move v15, v9

    .line 397
    goto :goto_8

    .line 398
    :cond_b
    add-int v15, v13, v14

    .line 399
    .line 400
    sub-int/2addr v15, v12

    .line 401
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v16

    .line 405
    rem-int v15, v15, v16

    .line 406
    .line 407
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v15

    .line 411
    check-cast v15, Lhb2;

    .line 412
    .line 413
    iget v15, v15, Lhb2;->d:F

    .line 414
    .line 415
    sub-float/2addr v15, v7

    .line 416
    invoke-static {v15, v9}, Lk94;->d(FF)F

    .line 417
    .line 418
    .line 419
    move-result v15

    .line 420
    :goto_8
    invoke-virtual {v10, v15}, Lqf2;->a(F)V

    .line 421
    .line 422
    .line 423
    add-int/lit8 v14, v14, 0x1

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_c
    invoke-static {}, Ltv4;->p()La42;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    move v13, v6

    .line 435
    :goto_9
    if-ge v13, v11, :cond_d

    .line 436
    .line 437
    new-instance v14, Lsz2;

    .line 438
    .line 439
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v15

    .line 443
    check-cast v15, Lsz2;

    .line 444
    .line 445
    iget v15, v15, Lsz2;->a:F

    .line 446
    .line 447
    sub-float/2addr v15, v7

    .line 448
    invoke-static {v15, v9}, Lk94;->d(FF)F

    .line 449
    .line 450
    .line 451
    move-result v15

    .line 452
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v16

    .line 456
    move-object/from16 v12, v16

    .line 457
    .line 458
    check-cast v12, Lsz2;

    .line 459
    .line 460
    iget-object v12, v12, Lsz2;->b:Lw41;

    .line 461
    .line 462
    invoke-direct {v14, v15, v12}, Lsz2;-><init>(FLw41;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8, v14}, La42;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    add-int/lit8 v13, v13, 0x1

    .line 469
    .line 470
    const/4 v12, 0x1

    .line 471
    goto :goto_9

    .line 472
    :cond_d
    invoke-static {v8}, Ltv4;->l(La42;)La42;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    new-instance v8, Lib2;

    .line 477
    .line 478
    iget-object v1, v1, Lib2;->n:Lld;

    .line 479
    .line 480
    invoke-direct {v8, v1, v3, v5, v10}, Lib2;-><init>(Lld;La42;Ljava/util/ArrayList;Lqf2;)V

    .line 481
    .line 482
    .line 483
    move-object v1, v8

    .line 484
    :goto_a
    new-instance v3, Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .line 488
    .line 489
    invoke-static {v6, v0}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    check-cast v5, Lhb2;

    .line 494
    .line 495
    invoke-static {v6, v1}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Lhb2;

    .line 500
    .line 501
    const/4 v8, 0x1

    .line 502
    const/4 v12, 0x1

    .line 503
    :goto_b
    if-eqz v5, :cond_12

    .line 504
    .line 505
    if-eqz v6, :cond_12

    .line 506
    .line 507
    iget-object v10, v0, Lib2;->o:Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 510
    .line 511
    .line 512
    move-result v10

    .line 513
    if-ne v12, v10, :cond_e

    .line 514
    .line 515
    move v10, v9

    .line 516
    goto :goto_c

    .line 517
    :cond_e
    iget v10, v5, Lhb2;->d:F

    .line 518
    .line 519
    :goto_c
    iget-object v11, v1, Lib2;->o:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 522
    .line 523
    .line 524
    move-result v11

    .line 525
    if-ne v8, v11, :cond_f

    .line 526
    .line 527
    move v11, v9

    .line 528
    goto :goto_d

    .line 529
    :cond_f
    iget v11, v6, Lhb2;->d:F

    .line 530
    .line 531
    add-float/2addr v11, v7

    .line 532
    invoke-static {v11, v9}, Lk94;->d(FF)F

    .line 533
    .line 534
    .line 535
    move-result v11

    .line 536
    invoke-static {v4, v2, v11}, Lse0;->z(Lqf2;Lqf2;F)F

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    :goto_d
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    .line 541
    .line 542
    .line 543
    move-result v13

    .line 544
    const v14, 0x358637bd    # 1.0E-6f

    .line 545
    .line 546
    .line 547
    add-float/2addr v14, v13

    .line 548
    cmpl-float v10, v10, v14

    .line 549
    .line 550
    if-lez v10, :cond_10

    .line 551
    .line 552
    invoke-virtual {v5, v13}, Lhb2;->a(F)Ljs2;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    goto :goto_e

    .line 557
    :cond_10
    add-int/lit8 v10, v12, 0x1

    .line 558
    .line 559
    invoke-static {v12, v0}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v12

    .line 563
    new-instance v15, Ljs2;

    .line 564
    .line 565
    invoke-direct {v15, v5, v12}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    move v12, v10

    .line 569
    move-object v5, v15

    .line 570
    :goto_e
    iget-object v10, v5, Ljs2;->n:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v10, Lhb2;

    .line 573
    .line 574
    iget-object v5, v5, Ljs2;->o:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v5, Lhb2;

    .line 577
    .line 578
    cmpl-float v11, v11, v14

    .line 579
    .line 580
    if-lez v11, :cond_11

    .line 581
    .line 582
    invoke-static {v2, v4, v13}, Lse0;->z(Lqf2;Lqf2;F)F

    .line 583
    .line 584
    .line 585
    move-result v11

    .line 586
    sub-float/2addr v11, v7

    .line 587
    invoke-static {v11, v9}, Lk94;->d(FF)F

    .line 588
    .line 589
    .line 590
    move-result v11

    .line 591
    invoke-virtual {v6, v11}, Lhb2;->a(F)Ljs2;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    goto :goto_f

    .line 596
    :cond_11
    add-int/lit8 v11, v8, 0x1

    .line 597
    .line 598
    invoke-static {v8, v1}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v8

    .line 602
    new-instance v13, Ljs2;

    .line 603
    .line 604
    invoke-direct {v13, v6, v8}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    move v8, v11

    .line 608
    move-object v6, v13

    .line 609
    :goto_f
    iget-object v11, v6, Ljs2;->n:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v11, Lhb2;

    .line 612
    .line 613
    iget-object v6, v6, Ljs2;->o:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v6, Lhb2;

    .line 616
    .line 617
    iget-object v10, v10, Lhb2;->a:Lcl0;

    .line 618
    .line 619
    iget-object v11, v11, Lhb2;->a:Lcl0;

    .line 620
    .line 621
    new-instance v13, Ljs2;

    .line 622
    .line 623
    invoke-direct {v13, v10, v11}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_b

    .line 630
    :cond_12
    if-nez v5, :cond_13

    .line 631
    .line 632
    if-nez v6, :cond_13

    .line 633
    .line 634
    move-object/from16 v0, p0

    .line 635
    .line 636
    iput-object v3, v0, Lxd2;->a:Ljava/util/ArrayList;

    .line 637
    .line 638
    return-void

    .line 639
    :cond_13
    const-string v0, "Expected both Polygon\'s Cubic to be fully matched"

    .line 640
    .line 641
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw p2

    .line 645
    :cond_14
    const/16 p2, 0x0

    .line 646
    .line 647
    const-string v0, "Cutting point is expected to be between 0 and 1"

    .line 648
    .line 649
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    throw p2
.end method
