.class public final Lb7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lb7;


# instance fields
.field public final synthetic a:I

.field public b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lb7;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lb7;-><init>([F)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lb7;->c:Lb7;

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        -0x4273b646    # -0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lb7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb7;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb7;->b:[F

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lb7;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    const/16 v6, 0x20

    .line 17
    .line 18
    if-ge v5, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-static {v7, v6}, Lnt1;->l(II)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-gtz v7, :cond_0

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :goto_1
    if-le v3, v5, :cond_1

    .line 34
    .line 35
    add-int/lit8 v7, v3, -0x1

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v7, v6}, Lnt1;->l(II)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-gtz v7, :cond_1

    .line 46
    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v7, v4

    .line 51
    :goto_2
    if-ge v5, v3, :cond_15

    .line 52
    .line 53
    :goto_3
    add-int/lit8 v8, v5, 0x1

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    or-int/lit8 v9, v5, 0x20

    .line 60
    .line 61
    add-int/lit8 v10, v9, -0x61

    .line 62
    .line 63
    add-int/lit8 v11, v9, -0x7a

    .line 64
    .line 65
    mul-int/2addr v11, v10

    .line 66
    if-gtz v11, :cond_2

    .line 67
    .line 68
    const/16 v10, 0x65

    .line 69
    .line 70
    if-eq v9, v10, :cond_2

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_2
    if-lt v8, v3, :cond_14

    .line 74
    .line 75
    move v5, v4

    .line 76
    :goto_4
    if-eqz v5, :cond_13

    .line 77
    .line 78
    or-int/lit8 v9, v5, 0x20

    .line 79
    .line 80
    const/16 v10, 0x7a

    .line 81
    .line 82
    const/4 v11, 0x1

    .line 83
    if-eq v9, v10, :cond_c

    .line 84
    .line 85
    :goto_5
    if-ge v8, v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-static {v7, v6}, Lnt1;->l(II)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-gtz v7, :cond_3

    .line 96
    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    const/16 v7, 0x61

    .line 101
    .line 102
    if-ne v9, v7, :cond_4

    .line 103
    .line 104
    move v7, v11

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    move v7, v4

    .line 107
    :goto_6
    move v9, v4

    .line 108
    :cond_5
    if-eqz v7, :cond_6

    .line 109
    .line 110
    const/4 v10, 0x3

    .line 111
    if-gt v10, v9, :cond_6

    .line 112
    .line 113
    const/4 v10, 0x5

    .line 114
    if-ge v9, v10, :cond_6

    .line 115
    .line 116
    add-int/lit8 v10, v8, 0x1

    .line 117
    .line 118
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    invoke-static {v8, v1, v10}, Lix;->G(ILjava/lang/String;I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v12

    .line 126
    goto :goto_7

    .line 127
    :cond_6
    invoke-static {v8, v1, v3}, Lix;->G(ILjava/lang/String;I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    :goto_7
    ushr-long v14, v12, v6

    .line 132
    .line 133
    long-to-int v8, v14

    .line 134
    const-wide v14, 0xffffffffL

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    and-long/2addr v12, v14

    .line 140
    long-to-int v10, v12

    .line 141
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    if-nez v12, :cond_8

    .line 150
    .line 151
    iget-object v12, v0, Lb7;->b:[F

    .line 152
    .line 153
    add-int/lit8 v13, v9, 0x1

    .line 154
    .line 155
    aput v10, v12, v9

    .line 156
    .line 157
    array-length v9, v12

    .line 158
    if-lt v13, v9, :cond_7

    .line 159
    .line 160
    mul-int/lit8 v9, v13, 0x2

    .line 161
    .line 162
    new-array v9, v9, [F

    .line 163
    .line 164
    iput-object v9, v0, Lb7;->b:[F

    .line 165
    .line 166
    array-length v14, v12

    .line 167
    invoke-static {v12, v4, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    .line 169
    .line 170
    :cond_7
    move v9, v13

    .line 171
    :cond_8
    :goto_8
    if-ge v8, v3, :cond_a

    .line 172
    .line 173
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    invoke-static {v12, v6}, Lnt1;->l(II)I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-lez v12, :cond_9

    .line 182
    .line 183
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    const/16 v13, 0x2c

    .line 188
    .line 189
    if-ne v12, v13, :cond_a

    .line 190
    .line 191
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_a
    if-ge v8, v3, :cond_b

    .line 195
    .line 196
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v10, :cond_5

    .line 201
    .line 202
    :cond_b
    move v7, v9

    .line 203
    :cond_c
    iget-object v9, v0, Lb7;->b:[F

    .line 204
    .line 205
    const/4 v10, 0x2

    .line 206
    const/4 v12, 0x0

    .line 207
    sparse-switch v5, :sswitch_data_0

    .line 208
    .line 209
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Unknown command for: "

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :sswitch_0
    add-int/lit8 v5, v7, -0x1

    .line 231
    .line 232
    move v10, v4

    .line 233
    :goto_9
    if-gt v10, v5, :cond_d

    .line 234
    .line 235
    new-instance v11, Lvt2;

    .line 236
    .line 237
    aget v12, v9, v10

    .line 238
    .line 239
    invoke-direct {v11, v12}, Lvt2;-><init>(F)V

    .line 240
    .line 241
    .line 242
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    add-int/lit8 v10, v10, 0x1

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_d
    move/from16 v21, v4

    .line 249
    .line 250
    goto/16 :goto_1f

    .line 251
    .line 252
    :sswitch_1
    add-int/lit8 v5, v7, -0x2

    .line 253
    .line 254
    move v10, v4

    .line 255
    :goto_a
    if-gt v10, v5, :cond_d

    .line 256
    .line 257
    new-instance v11, Lut2;

    .line 258
    .line 259
    aget v12, v9, v10

    .line 260
    .line 261
    add-int/lit8 v13, v10, 0x1

    .line 262
    .line 263
    aget v13, v9, v13

    .line 264
    .line 265
    invoke-direct {v11, v12, v13}, Lut2;-><init>(FF)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    add-int/lit8 v10, v10, 0x2

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :sswitch_2
    add-int/lit8 v5, v7, -0x4

    .line 275
    .line 276
    move v10, v4

    .line 277
    :goto_b
    if-gt v10, v5, :cond_d

    .line 278
    .line 279
    new-instance v11, Ltt2;

    .line 280
    .line 281
    aget v12, v9, v10

    .line 282
    .line 283
    add-int/lit8 v13, v10, 0x1

    .line 284
    .line 285
    aget v13, v9, v13

    .line 286
    .line 287
    add-int/lit8 v14, v10, 0x2

    .line 288
    .line 289
    aget v14, v9, v14

    .line 290
    .line 291
    add-int/lit8 v15, v10, 0x3

    .line 292
    .line 293
    aget v15, v9, v15

    .line 294
    .line 295
    invoke-direct {v11, v12, v13, v14, v15}, Ltt2;-><init>(FFFF)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    add-int/lit8 v10, v10, 0x4

    .line 302
    .line 303
    goto :goto_b

    .line 304
    :sswitch_3
    add-int/lit8 v5, v7, -0x4

    .line 305
    .line 306
    move v10, v4

    .line 307
    :goto_c
    if-gt v10, v5, :cond_d

    .line 308
    .line 309
    new-instance v11, Lst2;

    .line 310
    .line 311
    aget v12, v9, v10

    .line 312
    .line 313
    add-int/lit8 v13, v10, 0x1

    .line 314
    .line 315
    aget v13, v9, v13

    .line 316
    .line 317
    add-int/lit8 v14, v10, 0x2

    .line 318
    .line 319
    aget v14, v9, v14

    .line 320
    .line 321
    add-int/lit8 v15, v10, 0x3

    .line 322
    .line 323
    aget v15, v9, v15

    .line 324
    .line 325
    invoke-direct {v11, v12, v13, v14, v15}, Lst2;-><init>(FFFF)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    add-int/lit8 v10, v10, 0x4

    .line 332
    .line 333
    goto :goto_c

    .line 334
    :sswitch_4
    add-int/lit8 v5, v7, -0x2

    .line 335
    .line 336
    if-ltz v5, :cond_d

    .line 337
    .line 338
    new-instance v12, Lrt2;

    .line 339
    .line 340
    aget v13, v9, v4

    .line 341
    .line 342
    aget v11, v9, v11

    .line 343
    .line 344
    invoke-direct {v12, v13, v11}, Lrt2;-><init>(FF)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    :goto_d
    if-gt v10, v5, :cond_d

    .line 351
    .line 352
    new-instance v11, Lqt2;

    .line 353
    .line 354
    aget v12, v9, v10

    .line 355
    .line 356
    add-int/lit8 v13, v10, 0x1

    .line 357
    .line 358
    aget v13, v9, v13

    .line 359
    .line 360
    invoke-direct {v11, v12, v13}, Lqt2;-><init>(FF)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    add-int/lit8 v10, v10, 0x2

    .line 367
    .line 368
    goto :goto_d

    .line 369
    :sswitch_5
    add-int/lit8 v5, v7, -0x2

    .line 370
    .line 371
    move v10, v4

    .line 372
    :goto_e
    if-gt v10, v5, :cond_d

    .line 373
    .line 374
    new-instance v11, Lqt2;

    .line 375
    .line 376
    aget v12, v9, v10

    .line 377
    .line 378
    add-int/lit8 v13, v10, 0x1

    .line 379
    .line 380
    aget v13, v9, v13

    .line 381
    .line 382
    invoke-direct {v11, v12, v13}, Lqt2;-><init>(FF)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    add-int/lit8 v10, v10, 0x2

    .line 389
    .line 390
    goto :goto_e

    .line 391
    :sswitch_6
    add-int/lit8 v5, v7, -0x1

    .line 392
    .line 393
    move v10, v4

    .line 394
    :goto_f
    if-gt v10, v5, :cond_d

    .line 395
    .line 396
    new-instance v11, Lpt2;

    .line 397
    .line 398
    aget v12, v9, v10

    .line 399
    .line 400
    invoke-direct {v11, v12}, Lpt2;-><init>(F)V

    .line 401
    .line 402
    .line 403
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    add-int/lit8 v10, v10, 0x1

    .line 407
    .line 408
    goto :goto_f

    .line 409
    :sswitch_7
    add-int/lit8 v5, v7, -0x6

    .line 410
    .line 411
    move v10, v4

    .line 412
    :goto_10
    if-gt v10, v5, :cond_d

    .line 413
    .line 414
    new-instance v11, Lot2;

    .line 415
    .line 416
    aget v12, v9, v10

    .line 417
    .line 418
    add-int/lit8 v13, v10, 0x1

    .line 419
    .line 420
    aget v13, v9, v13

    .line 421
    .line 422
    add-int/lit8 v14, v10, 0x2

    .line 423
    .line 424
    aget v14, v9, v14

    .line 425
    .line 426
    add-int/lit8 v15, v10, 0x3

    .line 427
    .line 428
    aget v15, v9, v15

    .line 429
    .line 430
    add-int/lit8 v16, v10, 0x4

    .line 431
    .line 432
    aget v16, v9, v16

    .line 433
    .line 434
    add-int/lit8 v17, v10, 0x5

    .line 435
    .line 436
    aget v17, v9, v17

    .line 437
    .line 438
    invoke-direct/range {v11 .. v17}, Lot2;-><init>(FFFFFF)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    add-int/lit8 v10, v10, 0x6

    .line 445
    .line 446
    goto :goto_10

    .line 447
    :sswitch_8
    add-int/lit8 v5, v7, -0x7

    .line 448
    .line 449
    move v10, v4

    .line 450
    :goto_11
    if-gt v10, v5, :cond_d

    .line 451
    .line 452
    new-instance v13, Lnt2;

    .line 453
    .line 454
    aget v14, v9, v10

    .line 455
    .line 456
    add-int/lit8 v15, v10, 0x1

    .line 457
    .line 458
    aget v15, v9, v15

    .line 459
    .line 460
    add-int/lit8 v16, v10, 0x2

    .line 461
    .line 462
    aget v16, v9, v16

    .line 463
    .line 464
    add-int/lit8 v17, v10, 0x3

    .line 465
    .line 466
    move/from16 v21, v4

    .line 467
    .line 468
    aget v4, v9, v17

    .line 469
    .line 470
    invoke-static {v4, v12}, Ljava/lang/Float;->compare(FF)I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eqz v4, :cond_e

    .line 475
    .line 476
    move/from16 v17, v11

    .line 477
    .line 478
    goto :goto_12

    .line 479
    :cond_e
    move/from16 v17, v21

    .line 480
    .line 481
    :goto_12
    add-int/lit8 v4, v10, 0x4

    .line 482
    .line 483
    aget v4, v9, v4

    .line 484
    .line 485
    invoke-static {v4, v12}, Ljava/lang/Float;->compare(FF)I

    .line 486
    .line 487
    .line 488
    move-result v4

    .line 489
    if-eqz v4, :cond_f

    .line 490
    .line 491
    move/from16 v18, v11

    .line 492
    .line 493
    goto :goto_13

    .line 494
    :cond_f
    move/from16 v18, v21

    .line 495
    .line 496
    :goto_13
    add-int/lit8 v4, v10, 0x5

    .line 497
    .line 498
    aget v19, v9, v4

    .line 499
    .line 500
    add-int/lit8 v4, v10, 0x6

    .line 501
    .line 502
    aget v20, v9, v4

    .line 503
    .line 504
    invoke-direct/range {v13 .. v20}, Lnt2;-><init>(FFFZZFF)V

    .line 505
    .line 506
    .line 507
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    add-int/lit8 v10, v10, 0x7

    .line 511
    .line 512
    move/from16 v4, v21

    .line 513
    .line 514
    goto :goto_11

    .line 515
    :sswitch_9
    move/from16 v21, v4

    .line 516
    .line 517
    sget-object v4, Lft2;->c:Lft2;

    .line 518
    .line 519
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    goto/16 :goto_1f

    .line 523
    .line 524
    :sswitch_a
    move/from16 v21, v4

    .line 525
    .line 526
    add-int/lit8 v4, v7, -0x1

    .line 527
    .line 528
    move/from16 v5, v21

    .line 529
    .line 530
    :goto_14
    if-gt v5, v4, :cond_12

    .line 531
    .line 532
    new-instance v10, Lwt2;

    .line 533
    .line 534
    aget v11, v9, v5

    .line 535
    .line 536
    invoke-direct {v10, v11}, Lwt2;-><init>(F)V

    .line 537
    .line 538
    .line 539
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    add-int/lit8 v5, v5, 0x1

    .line 543
    .line 544
    goto :goto_14

    .line 545
    :sswitch_b
    move/from16 v21, v4

    .line 546
    .line 547
    add-int/lit8 v4, v7, -0x2

    .line 548
    .line 549
    move/from16 v5, v21

    .line 550
    .line 551
    :goto_15
    if-gt v5, v4, :cond_12

    .line 552
    .line 553
    new-instance v10, Lmt2;

    .line 554
    .line 555
    aget v11, v9, v5

    .line 556
    .line 557
    add-int/lit8 v12, v5, 0x1

    .line 558
    .line 559
    aget v12, v9, v12

    .line 560
    .line 561
    invoke-direct {v10, v11, v12}, Lmt2;-><init>(FF)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    add-int/lit8 v5, v5, 0x2

    .line 568
    .line 569
    goto :goto_15

    .line 570
    :sswitch_c
    move/from16 v21, v4

    .line 571
    .line 572
    add-int/lit8 v4, v7, -0x4

    .line 573
    .line 574
    move/from16 v5, v21

    .line 575
    .line 576
    :goto_16
    if-gt v5, v4, :cond_12

    .line 577
    .line 578
    new-instance v10, Llt2;

    .line 579
    .line 580
    aget v11, v9, v5

    .line 581
    .line 582
    add-int/lit8 v12, v5, 0x1

    .line 583
    .line 584
    aget v12, v9, v12

    .line 585
    .line 586
    add-int/lit8 v13, v5, 0x2

    .line 587
    .line 588
    aget v13, v9, v13

    .line 589
    .line 590
    add-int/lit8 v14, v5, 0x3

    .line 591
    .line 592
    aget v14, v9, v14

    .line 593
    .line 594
    invoke-direct {v10, v11, v12, v13, v14}, Llt2;-><init>(FFFF)V

    .line 595
    .line 596
    .line 597
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    add-int/lit8 v5, v5, 0x4

    .line 601
    .line 602
    goto :goto_16

    .line 603
    :sswitch_d
    move/from16 v21, v4

    .line 604
    .line 605
    add-int/lit8 v4, v7, -0x4

    .line 606
    .line 607
    move/from16 v5, v21

    .line 608
    .line 609
    :goto_17
    if-gt v5, v4, :cond_12

    .line 610
    .line 611
    new-instance v10, Lkt2;

    .line 612
    .line 613
    aget v11, v9, v5

    .line 614
    .line 615
    add-int/lit8 v12, v5, 0x1

    .line 616
    .line 617
    aget v12, v9, v12

    .line 618
    .line 619
    add-int/lit8 v13, v5, 0x2

    .line 620
    .line 621
    aget v13, v9, v13

    .line 622
    .line 623
    add-int/lit8 v14, v5, 0x3

    .line 624
    .line 625
    aget v14, v9, v14

    .line 626
    .line 627
    invoke-direct {v10, v11, v12, v13, v14}, Lkt2;-><init>(FFFF)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    add-int/lit8 v5, v5, 0x4

    .line 634
    .line 635
    goto :goto_17

    .line 636
    :sswitch_e
    move/from16 v21, v4

    .line 637
    .line 638
    add-int/lit8 v4, v7, -0x2

    .line 639
    .line 640
    if-ltz v4, :cond_12

    .line 641
    .line 642
    new-instance v5, Ljt2;

    .line 643
    .line 644
    aget v12, v9, v21

    .line 645
    .line 646
    aget v11, v9, v11

    .line 647
    .line 648
    invoke-direct {v5, v12, v11}, Ljt2;-><init>(FF)V

    .line 649
    .line 650
    .line 651
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    :goto_18
    if-gt v10, v4, :cond_12

    .line 655
    .line 656
    new-instance v5, Lit2;

    .line 657
    .line 658
    aget v11, v9, v10

    .line 659
    .line 660
    add-int/lit8 v12, v10, 0x1

    .line 661
    .line 662
    aget v12, v9, v12

    .line 663
    .line 664
    invoke-direct {v5, v11, v12}, Lit2;-><init>(FF)V

    .line 665
    .line 666
    .line 667
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    add-int/lit8 v10, v10, 0x2

    .line 671
    .line 672
    goto :goto_18

    .line 673
    :sswitch_f
    move/from16 v21, v4

    .line 674
    .line 675
    add-int/lit8 v4, v7, -0x2

    .line 676
    .line 677
    move/from16 v5, v21

    .line 678
    .line 679
    :goto_19
    if-gt v5, v4, :cond_12

    .line 680
    .line 681
    new-instance v10, Lit2;

    .line 682
    .line 683
    aget v11, v9, v5

    .line 684
    .line 685
    add-int/lit8 v12, v5, 0x1

    .line 686
    .line 687
    aget v12, v9, v12

    .line 688
    .line 689
    invoke-direct {v10, v11, v12}, Lit2;-><init>(FF)V

    .line 690
    .line 691
    .line 692
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    add-int/lit8 v5, v5, 0x2

    .line 696
    .line 697
    goto :goto_19

    .line 698
    :sswitch_10
    move/from16 v21, v4

    .line 699
    .line 700
    add-int/lit8 v4, v7, -0x1

    .line 701
    .line 702
    move/from16 v5, v21

    .line 703
    .line 704
    :goto_1a
    if-gt v5, v4, :cond_12

    .line 705
    .line 706
    new-instance v10, Lht2;

    .line 707
    .line 708
    aget v11, v9, v5

    .line 709
    .line 710
    invoke-direct {v10, v11}, Lht2;-><init>(F)V

    .line 711
    .line 712
    .line 713
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    add-int/lit8 v5, v5, 0x1

    .line 717
    .line 718
    goto :goto_1a

    .line 719
    :sswitch_11
    move/from16 v21, v4

    .line 720
    .line 721
    add-int/lit8 v4, v7, -0x6

    .line 722
    .line 723
    move/from16 v5, v21

    .line 724
    .line 725
    :goto_1b
    if-gt v5, v4, :cond_12

    .line 726
    .line 727
    new-instance v10, Lgt2;

    .line 728
    .line 729
    aget v11, v9, v5

    .line 730
    .line 731
    add-int/lit8 v12, v5, 0x1

    .line 732
    .line 733
    aget v12, v9, v12

    .line 734
    .line 735
    add-int/lit8 v13, v5, 0x2

    .line 736
    .line 737
    aget v13, v9, v13

    .line 738
    .line 739
    add-int/lit8 v14, v5, 0x3

    .line 740
    .line 741
    aget v14, v9, v14

    .line 742
    .line 743
    add-int/lit8 v15, v5, 0x4

    .line 744
    .line 745
    aget v15, v9, v15

    .line 746
    .line 747
    add-int/lit8 v16, v5, 0x5

    .line 748
    .line 749
    aget v16, v9, v16

    .line 750
    .line 751
    invoke-direct/range {v10 .. v16}, Lgt2;-><init>(FFFFFF)V

    .line 752
    .line 753
    .line 754
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    add-int/lit8 v5, v5, 0x6

    .line 758
    .line 759
    goto :goto_1b

    .line 760
    :sswitch_12
    move/from16 v21, v4

    .line 761
    .line 762
    add-int/lit8 v4, v7, -0x7

    .line 763
    .line 764
    move/from16 v5, v21

    .line 765
    .line 766
    :goto_1c
    if-gt v5, v4, :cond_12

    .line 767
    .line 768
    new-instance v13, Let2;

    .line 769
    .line 770
    aget v14, v9, v5

    .line 771
    .line 772
    add-int/lit8 v10, v5, 0x1

    .line 773
    .line 774
    aget v15, v9, v10

    .line 775
    .line 776
    add-int/lit8 v10, v5, 0x2

    .line 777
    .line 778
    aget v16, v9, v10

    .line 779
    .line 780
    add-int/lit8 v10, v5, 0x3

    .line 781
    .line 782
    aget v10, v9, v10

    .line 783
    .line 784
    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    .line 785
    .line 786
    .line 787
    move-result v10

    .line 788
    if-eqz v10, :cond_10

    .line 789
    .line 790
    move/from16 v17, v11

    .line 791
    .line 792
    goto :goto_1d

    .line 793
    :cond_10
    move/from16 v17, v21

    .line 794
    .line 795
    :goto_1d
    add-int/lit8 v10, v5, 0x4

    .line 796
    .line 797
    aget v10, v9, v10

    .line 798
    .line 799
    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    .line 800
    .line 801
    .line 802
    move-result v10

    .line 803
    if-eqz v10, :cond_11

    .line 804
    .line 805
    move/from16 v18, v11

    .line 806
    .line 807
    goto :goto_1e

    .line 808
    :cond_11
    move/from16 v18, v21

    .line 809
    .line 810
    :goto_1e
    add-int/lit8 v10, v5, 0x5

    .line 811
    .line 812
    aget v19, v9, v10

    .line 813
    .line 814
    add-int/lit8 v10, v5, 0x6

    .line 815
    .line 816
    aget v20, v9, v10

    .line 817
    .line 818
    invoke-direct/range {v13 .. v20}, Let2;-><init>(FFFZZFF)V

    .line 819
    .line 820
    .line 821
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    add-int/lit8 v5, v5, 0x7

    .line 825
    .line 826
    goto :goto_1c

    .line 827
    :cond_12
    :goto_1f
    move v5, v8

    .line 828
    move/from16 v4, v21

    .line 829
    .line 830
    goto/16 :goto_2

    .line 831
    .line 832
    :cond_13
    move v5, v8

    .line 833
    goto/16 :goto_2

    .line 834
    .line 835
    :cond_14
    move v5, v8

    .line 836
    goto/16 :goto_3

    .line 837
    .line 838
    :cond_15
    return-object v2

    .line 839
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb7;->a:I

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
    const-string p0, "Bradford"

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
