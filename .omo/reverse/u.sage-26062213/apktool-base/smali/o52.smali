.class public abstract Lo52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:Ljava/util/List;

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    sget v0, Lw80;->m:F

    .line 2
    .line 3
    sput v0, Lo52;->a:F

    .line 4
    .line 5
    sget v1, Lw80;->k:F

    .line 6
    .line 7
    sput v1, Lo52;->b:F

    .line 8
    .line 9
    sget v2, Lw80;->j:F

    .line 10
    .line 11
    sget-object v3, Lta2;->a:Lb21;

    .line 12
    .line 13
    invoke-virtual {v3}, Lb21;->y()Lpa3;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v5, Lta2;->l:Lpa3;

    .line 18
    .line 19
    const/16 v11, 0x10

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    sget-object v6, Lta2;->c:Lbi0;

    .line 26
    .line 27
    invoke-static {v5, v6}, Lon4;->N(ILbi0;)Lpa3;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v6, Lta2;->e:[F

    .line 32
    .line 33
    new-instance v7, Ldd1;

    .line 34
    .line 35
    invoke-direct {v7, v11, v6}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v7}, Lpa3;->c(Luv2;)Lpa3;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lpa3;->b()Lpa3;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    sput-object v5, Lta2;->l:Lpa3;

    .line 47
    .line 48
    :cond_0
    sget-object v6, Lta2;->i:Lpa3;

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    const/high16 v8, 0x3f000000    # 0.5f

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    const/16 v10, 0x20

    .line 55
    .line 56
    if-nez v6, :cond_1

    .line 57
    .line 58
    new-instance v6, Lsa2;

    .line 59
    .line 60
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    int-to-long v14, v14

    .line 65
    const v16, -0x43ec8b44    # -0.009f

    .line 66
    .line 67
    .line 68
    move/from16 v17, v8

    .line 69
    .line 70
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const-wide v18, 0xffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    int-to-long v12, v8

    .line 80
    shl-long/2addr v14, v10

    .line 81
    and-long v12, v12, v18

    .line 82
    .line 83
    or-long/2addr v12, v14

    .line 84
    new-instance v8, Lbi0;

    .line 85
    .line 86
    const v14, 0x3e3020c5    # 0.172f

    .line 87
    .line 88
    .line 89
    invoke-direct {v8, v9, v14}, Lbi0;-><init>(IF)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, v12, v13, v8}, Lsa2;-><init>(JLbi0;)V

    .line 93
    .line 94
    .line 95
    new-instance v8, Lsa2;

    .line 96
    .line 97
    const v12, 0x3f83d70a    # 1.03f

    .line 98
    .line 99
    .line 100
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    int-to-long v12, v12

    .line 105
    const v14, 0x3ebae148    # 0.365f

    .line 106
    .line 107
    .line 108
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    int-to-long v14, v14

    .line 113
    shl-long/2addr v12, v10

    .line 114
    and-long v14, v14, v18

    .line 115
    .line 116
    or-long/2addr v12, v14

    .line 117
    new-instance v14, Lbi0;

    .line 118
    .line 119
    const v15, 0x3e27ef9e    # 0.164f

    .line 120
    .line 121
    .line 122
    invoke-direct {v14, v9, v15}, Lbi0;-><init>(IF)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v8, v12, v13, v14}, Lsa2;-><init>(JLbi0;)V

    .line 126
    .line 127
    .line 128
    new-instance v12, Lsa2;

    .line 129
    .line 130
    const v13, 0x3f53f7cf    # 0.828f

    .line 131
    .line 132
    .line 133
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    int-to-long v13, v13

    .line 138
    const v15, 0x3f7851ec    # 0.97f

    .line 139
    .line 140
    .line 141
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    move/from16 v20, v10

    .line 146
    .line 147
    int-to-long v10, v15

    .line 148
    shl-long v13, v13, v20

    .line 149
    .line 150
    and-long v10, v10, v18

    .line 151
    .line 152
    or-long/2addr v10, v13

    .line 153
    new-instance v13, Lbi0;

    .line 154
    .line 155
    const v14, 0x3e2d0e56    # 0.169f

    .line 156
    .line 157
    .line 158
    invoke-direct {v13, v9, v14}, Lbi0;-><init>(IF)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v12, v10, v11, v13}, Lsa2;-><init>(JLbi0;)V

    .line 162
    .line 163
    .line 164
    filled-new-array {v6, v8, v12}, [Lsa2;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-static {v6}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    const/4 v8, 0x1

    .line 173
    invoke-static {v3, v6, v8, v7}, Lb21;->x(Lb21;Ljava/util/List;II)Lpa3;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lpa3;->b()Lpa3;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    sput-object v6, Lta2;->i:Lpa3;

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_1
    move/from16 v17, v8

    .line 185
    .line 186
    move/from16 v20, v10

    .line 187
    .line 188
    const-wide v18, 0xffffffffL

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :goto_0
    sget-object v8, Lta2;->h:Lpa3;

    .line 194
    .line 195
    const/high16 v10, 0x3f800000    # 1.0f

    .line 196
    .line 197
    if-nez v8, :cond_2

    .line 198
    .line 199
    new-instance v8, Lsa2;

    .line 200
    .line 201
    const v11, 0x3f760419    # 0.961f

    .line 202
    .line 203
    .line 204
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    int-to-long v11, v11

    .line 209
    const v13, 0x3d1fbe77    # 0.039f

    .line 210
    .line 211
    .line 212
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    int-to-long v13, v13

    .line 217
    shl-long v11, v11, v20

    .line 218
    .line 219
    and-long v13, v13, v18

    .line 220
    .line 221
    or-long/2addr v11, v13

    .line 222
    new-instance v13, Lbi0;

    .line 223
    .line 224
    const v14, 0x3eda1cac    # 0.426f

    .line 225
    .line 226
    .line 227
    invoke-direct {v13, v9, v14}, Lbi0;-><init>(IF)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v8, v11, v12, v13}, Lsa2;-><init>(JLbi0;)V

    .line 231
    .line 232
    .line 233
    new-instance v11, Lsa2;

    .line 234
    .line 235
    const v12, 0x3f8020c5    # 1.001f

    .line 236
    .line 237
    .line 238
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    int-to-long v12, v12

    .line 243
    const v14, 0x3edb22d1    # 0.428f

    .line 244
    .line 245
    .line 246
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    int-to-long v14, v14

    .line 251
    shl-long v12, v12, v20

    .line 252
    .line 253
    and-long v14, v14, v18

    .line 254
    .line 255
    or-long/2addr v12, v14

    .line 256
    sget-object v14, Lbi0;->b:Lbi0;

    .line 257
    .line 258
    invoke-direct {v11, v12, v13, v14}, Lsa2;-><init>(JLbi0;)V

    .line 259
    .line 260
    .line 261
    new-instance v12, Lsa2;

    .line 262
    .line 263
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    int-to-long v13, v13

    .line 268
    const v15, 0x3f1be76d    # 0.609f

    .line 269
    .line 270
    .line 271
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    move-object/from16 v21, v8

    .line 276
    .line 277
    int-to-long v7, v15

    .line 278
    shl-long v13, v13, v20

    .line 279
    .line 280
    and-long v7, v7, v18

    .line 281
    .line 282
    or-long/2addr v7, v13

    .line 283
    new-instance v13, Lbi0;

    .line 284
    .line 285
    invoke-direct {v13, v9, v10}, Lbi0;-><init>(IF)V

    .line 286
    .line 287
    .line 288
    invoke-direct {v12, v7, v8, v13}, Lsa2;-><init>(JLbi0;)V

    .line 289
    .line 290
    .line 291
    move-object/from16 v7, v21

    .line 292
    .line 293
    filled-new-array {v7, v11, v12}, [Lsa2;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-static {v7}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    const/4 v8, 0x4

    .line 302
    invoke-static {v3, v7, v9, v8}, Lb21;->x(Lb21;Ljava/util/List;II)Lpa3;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v7}, Lpa3;->b()Lpa3;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    sput-object v8, Lta2;->h:Lpa3;

    .line 311
    .line 312
    :cond_2
    move-object v7, v8

    .line 313
    sget-object v8, Lta2;->j:Lpa3;

    .line 314
    .line 315
    if-nez v8, :cond_3

    .line 316
    .line 317
    const/16 v8, 0x8

    .line 318
    .line 319
    sget-object v11, Lta2;->b:Lbi0;

    .line 320
    .line 321
    invoke-static {v8, v11}, Lon4;->N(ILbi0;)Lpa3;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v8}, Lpa3;->b()Lpa3;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    sput-object v8, Lta2;->j:Lpa3;

    .line 330
    .line 331
    :cond_3
    sget-object v11, Lta2;->k:Lpa3;

    .line 332
    .line 333
    if-nez v11, :cond_4

    .line 334
    .line 335
    new-instance v11, Lsa2;

    .line 336
    .line 337
    const v12, 0x3f9e5604    # 1.237f

    .line 338
    .line 339
    .line 340
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    int-to-long v12, v12

    .line 345
    const v14, 0x3f9e353f    # 1.236f

    .line 346
    .line 347
    .line 348
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    int-to-long v14, v14

    .line 353
    shl-long v12, v12, v20

    .line 354
    .line 355
    and-long v14, v14, v18

    .line 356
    .line 357
    or-long/2addr v12, v14

    .line 358
    new-instance v14, Lbi0;

    .line 359
    .line 360
    const v15, 0x3e841893    # 0.258f

    .line 361
    .line 362
    .line 363
    invoke-direct {v14, v9, v15}, Lbi0;-><init>(IF)V

    .line 364
    .line 365
    .line 366
    invoke-direct {v11, v12, v13, v14}, Lsa2;-><init>(JLbi0;)V

    .line 367
    .line 368
    .line 369
    new-instance v12, Lsa2;

    .line 370
    .line 371
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 372
    .line 373
    .line 374
    move-result v13

    .line 375
    int-to-long v13, v13

    .line 376
    const v15, 0x3f6b020c    # 0.918f

    .line 377
    .line 378
    .line 379
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    move-object/from16 v21, v11

    .line 384
    .line 385
    int-to-long v10, v15

    .line 386
    shl-long v13, v13, v20

    .line 387
    .line 388
    and-long v10, v10, v18

    .line 389
    .line 390
    or-long/2addr v10, v13

    .line 391
    new-instance v13, Lbi0;

    .line 392
    .line 393
    const v14, 0x3e6e978d    # 0.233f

    .line 394
    .line 395
    .line 396
    invoke-direct {v13, v9, v14}, Lbi0;-><init>(IF)V

    .line 397
    .line 398
    .line 399
    invoke-direct {v12, v10, v11, v13}, Lsa2;-><init>(JLbi0;)V

    .line 400
    .line 401
    .line 402
    move-object/from16 v9, v21

    .line 403
    .line 404
    filled-new-array {v9, v12}, [Lsa2;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-static {v9}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    const/16 v10, 0xc

    .line 413
    .line 414
    const/4 v11, 0x4

    .line 415
    invoke-static {v3, v9, v11, v10}, Lb21;->x(Lb21;Ljava/util/List;II)Lpa3;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-virtual {v9}, Lpa3;->b()Lpa3;

    .line 420
    .line 421
    .line 422
    move-result-object v11

    .line 423
    sput-object v11, Lta2;->k:Lpa3;

    .line 424
    .line 425
    :cond_4
    move-object v9, v11

    .line 426
    sget-object v10, Lta2;->g:Lpa3;

    .line 427
    .line 428
    if-nez v10, :cond_5

    .line 429
    .line 430
    invoke-static {}, Lxa2;->a()[F

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    const v11, 0x3f23d70a    # 0.64f

    .line 435
    .line 436
    .line 437
    const/high16 v12, 0x3f800000    # 1.0f

    .line 438
    .line 439
    invoke-static {v10, v12, v11}, Lxa2;->f([FFF)V

    .line 440
    .line 441
    .line 442
    const/16 v11, 0xf

    .line 443
    .line 444
    invoke-static {v11}, Lon4;->o(I)Lpa3;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    new-instance v12, Ldd1;

    .line 449
    .line 450
    const/16 v13, 0x10

    .line 451
    .line 452
    invoke-direct {v12, v13, v10}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v11, v12}, Lpa3;->c(Luv2;)Lpa3;

    .line 456
    .line 457
    .line 458
    move-result-object v10

    .line 459
    sget-object v11, Lta2;->d:[F

    .line 460
    .line 461
    new-instance v12, Ldd1;

    .line 462
    .line 463
    invoke-direct {v12, v13, v11}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v10, v12}, Lpa3;->c(Luv2;)Lpa3;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    invoke-virtual {v10}, Lpa3;->b()Lpa3;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    sput-object v10, Lta2;->g:Lpa3;

    .line 475
    .line 476
    :cond_5
    filled-new-array/range {v4 .. v10}, [Lpa3;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-static {v4}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    sput-object v4, Lo52;->c:Ljava/util/List;

    .line 485
    .line 486
    sget-object v4, Lta2;->f:Lpa3;

    .line 487
    .line 488
    if-nez v4, :cond_6

    .line 489
    .line 490
    const/16 v4, 0xe

    .line 491
    .line 492
    invoke-static {v4}, Lon4;->o(I)Lpa3;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-virtual {v4}, Lpa3;->b()Lpa3;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    sput-object v4, Lta2;->f:Lpa3;

    .line 501
    .line 502
    :cond_6
    invoke-static {}, Lxa2;->a()[F

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    const/high16 v6, 0x41900000    # 18.0f

    .line 507
    .line 508
    invoke-static {v5, v6}, Lxa2;->e([FF)V

    .line 509
    .line 510
    .line 511
    new-instance v6, Ldd1;

    .line 512
    .line 513
    const/16 v13, 0x10

    .line 514
    .line 515
    invoke-direct {v6, v13, v5}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v6}, Lpa3;->c(Luv2;)Lpa3;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v3}, Lb21;->y()Lpa3;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    filled-new-array {v4, v3}, [Lpa3;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v3}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    div-float/2addr v2, v0

    .line 538
    sput v2, Lo52;->d:F

    .line 539
    .line 540
    return-void
.end method
