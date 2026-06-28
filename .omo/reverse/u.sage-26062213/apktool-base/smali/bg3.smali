.class public final Lbg3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Ldg3;


# direct methods
.method public constructor <init>(Ldg3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbg3;->a:Ldg3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IJ)J
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v1, v1, Lbg3;->a:Ldg3;

    .line 8
    .line 9
    iput v0, v1, Ldg3;->j:I

    .line 10
    .line 11
    iget-object v4, v1, Ldg3;->b:Lwa;

    .line 12
    .line 13
    if-eqz v4, :cond_35

    .line 14
    .line 15
    invoke-virtual {v1}, Ldg3;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_35

    .line 20
    .line 21
    iget v0, v1, Ldg3;->j:I

    .line 22
    .line 23
    iget-object v1, v1, Ldg3;->m:Lv;

    .line 24
    .line 25
    iget-object v5, v4, Lwa;->c:Lqy0;

    .line 26
    .line 27
    iget-wide v6, v4, Lwa;->g:J

    .line 28
    .line 29
    invoke-static {v6, v7}, Lmn3;->c(J)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    iget-object v0, v1, Lv;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ldg3;

    .line 38
    .line 39
    iget-object v1, v0, Ldg3;->k:Ljf3;

    .line 40
    .line 41
    iget v4, v0, Ldg3;->j:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Ldg3;->d(Ljf3;JI)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    new-instance v2, Lgo2;

    .line 48
    .line 49
    invoke-direct {v2, v0, v1}, Lgo2;-><init>(J)V

    .line 50
    .line 51
    .line 52
    iget-wide v0, v2, Lgo2;->a:J

    .line 53
    .line 54
    return-wide v0

    .line 55
    :cond_0
    iget-boolean v6, v4, Lwa;->f:Z

    .line 56
    .line 57
    const-wide/16 v7, 0x0

    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    if-nez v6, :cond_5

    .line 61
    .line 62
    iget-object v6, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-static {v6}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    invoke-virtual {v4, v7, v8}, Lwa;->g(J)F

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v6, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    invoke-static {v6}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {v4, v7, v8}, Lwa;->h(J)F

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v6, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 85
    .line 86
    invoke-static {v6}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    invoke-virtual {v4, v7, v8}, Lwa;->i(J)F

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v6, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 96
    .line 97
    invoke-static {v6}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {v4, v7, v8}, Lwa;->f(J)F

    .line 104
    .line 105
    .line 106
    :cond_4
    iput-boolean v9, v4, Lwa;->f:Z

    .line 107
    .line 108
    :cond_5
    sget v6, Lkb;->a:I

    .line 109
    .line 110
    const/4 v6, 0x2

    .line 111
    if-ne v0, v6, :cond_6

    .line 112
    .line 113
    const/high16 v6, 0x40800000    # 4.0f

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    .line 117
    .line 118
    :goto_0
    invoke-static {v6, v2, v3}, Lgo2;->f(FJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    const-wide v12, 0xffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long v14, v2, v12

    .line 128
    .line 129
    long-to-int v14, v14

    .line 130
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    cmpg-float v15, v15, v16

    .line 137
    .line 138
    if-nez v15, :cond_8

    .line 139
    .line 140
    move-wide/from16 p0, v12

    .line 141
    .line 142
    :cond_7
    move/from16 v12, v16

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_8
    iget-object v15, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 147
    .line 148
    invoke-static {v15}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-eqz v15, :cond_b

    .line 153
    .line 154
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    cmpg-float v15, v15, v16

    .line 159
    .line 160
    if-gez v15, :cond_b

    .line 161
    .line 162
    invoke-virtual {v4, v10, v11}, Lwa;->i(J)F

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    move-wide/from16 p0, v12

    .line 167
    .line 168
    iget-object v12, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 169
    .line 170
    invoke-static {v12}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-nez v12, :cond_9

    .line 175
    .line 176
    invoke-virtual {v5}, Lqy0;->e()Landroid/widget/EdgeEffect;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    invoke-virtual {v12}, Landroid/widget/EdgeEffect;->finish()V

    .line 181
    .line 182
    .line 183
    :cond_9
    and-long v12, v10, p0

    .line 184
    .line 185
    long-to-int v12, v12

    .line 186
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    cmpg-float v12, v15, v12

    .line 191
    .line 192
    if-nez v12, :cond_a

    .line 193
    .line 194
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    goto :goto_1

    .line 199
    :cond_a
    div-float v12, v15, v6

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_b
    move-wide/from16 p0, v12

    .line 203
    .line 204
    iget-object v12, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 205
    .line 206
    invoke-static {v12}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    if-eqz v12, :cond_7

    .line 211
    .line 212
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    cmpl-float v12, v12, v16

    .line 217
    .line 218
    if-lez v12, :cond_7

    .line 219
    .line 220
    invoke-virtual {v4, v10, v11}, Lwa;->f(J)F

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    iget-object v13, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 225
    .line 226
    invoke-static {v13}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    if-nez v13, :cond_c

    .line 231
    .line 232
    invoke-virtual {v5}, Lqy0;->b()Landroid/widget/EdgeEffect;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    invoke-virtual {v13}, Landroid/widget/EdgeEffect;->finish()V

    .line 237
    .line 238
    .line 239
    :cond_c
    and-long v7, v10, p0

    .line 240
    .line 241
    long-to-int v7, v7

    .line 242
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    cmpg-float v7, v12, v7

    .line 247
    .line 248
    if-nez v7, :cond_d

    .line 249
    .line 250
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    goto :goto_1

    .line 255
    :cond_d
    div-float/2addr v12, v6

    .line 256
    :goto_1
    const/16 v13, 0x20

    .line 257
    .line 258
    shr-long v7, v2, v13

    .line 259
    .line 260
    long-to-int v7, v7

    .line 261
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    cmpg-float v8, v8, v16

    .line 266
    .line 267
    if-nez v8, :cond_f

    .line 268
    .line 269
    :cond_e
    move/from16 v6, v16

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_f
    iget-object v8, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 273
    .line 274
    invoke-static {v8}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-eqz v8, :cond_12

    .line 279
    .line 280
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    cmpg-float v8, v8, v16

    .line 285
    .line 286
    if-gez v8, :cond_12

    .line 287
    .line 288
    invoke-virtual {v4, v10, v11}, Lwa;->g(J)F

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    iget-object v15, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 293
    .line 294
    invoke-static {v15}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 295
    .line 296
    .line 297
    move-result v15

    .line 298
    if-nez v15, :cond_10

    .line 299
    .line 300
    invoke-virtual {v5}, Lqy0;->c()Landroid/widget/EdgeEffect;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    .line 305
    .line 306
    .line 307
    :cond_10
    shr-long/2addr v10, v13

    .line 308
    long-to-int v10, v10

    .line 309
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 310
    .line 311
    .line 312
    move-result v10

    .line 313
    cmpg-float v10, v8, v10

    .line 314
    .line 315
    if-nez v10, :cond_11

    .line 316
    .line 317
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    goto :goto_2

    .line 322
    :cond_11
    div-float v6, v8, v6

    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_12
    iget-object v8, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 326
    .line 327
    invoke-static {v8}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_e

    .line 332
    .line 333
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    cmpl-float v8, v8, v16

    .line 338
    .line 339
    if-lez v8, :cond_e

    .line 340
    .line 341
    invoke-virtual {v4, v10, v11}, Lwa;->h(J)F

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    iget-object v15, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 346
    .line 347
    invoke-static {v15}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    if-nez v15, :cond_13

    .line 352
    .line 353
    invoke-virtual {v5}, Lqy0;->d()Landroid/widget/EdgeEffect;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    invoke-virtual {v15}, Landroid/widget/EdgeEffect;->finish()V

    .line 358
    .line 359
    .line 360
    :cond_13
    shr-long/2addr v10, v13

    .line 361
    long-to-int v10, v10

    .line 362
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    cmpg-float v10, v8, v10

    .line 367
    .line 368
    if-nez v10, :cond_11

    .line 369
    .line 370
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    :goto_2
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    int-to-long v10, v6

    .line 379
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    move v12, v13

    .line 384
    move v8, v14

    .line 385
    int-to-long v13, v6

    .line 386
    shl-long/2addr v10, v12

    .line 387
    and-long v13, v13, p0

    .line 388
    .line 389
    or-long/2addr v10, v13

    .line 390
    const-wide/16 v13, 0x0

    .line 391
    .line 392
    invoke-static {v10, v11, v13, v14}, Lgo2;->b(JJ)Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-nez v6, :cond_14

    .line 397
    .line 398
    invoke-virtual {v4}, Lwa;->d()V

    .line 399
    .line 400
    .line 401
    :cond_14
    invoke-static {v2, v3, v10, v11}, Lgo2;->d(JJ)J

    .line 402
    .line 403
    .line 404
    move-result-wide v2

    .line 405
    iget-object v1, v1, Lv;->o:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v1, Ldg3;

    .line 408
    .line 409
    iget-object v6, v1, Ldg3;->k:Ljf3;

    .line 410
    .line 411
    iget v13, v1, Ldg3;->j:I

    .line 412
    .line 413
    invoke-virtual {v1, v6, v2, v3, v13}, Ldg3;->d(Ljf3;JI)J

    .line 414
    .line 415
    .line 416
    move-result-wide v13

    .line 417
    new-instance v1, Lgo2;

    .line 418
    .line 419
    invoke-direct {v1, v13, v14}, Lgo2;-><init>(J)V

    .line 420
    .line 421
    .line 422
    iget-wide v13, v1, Lgo2;->a:J

    .line 423
    .line 424
    move-wide/from16 v17, v10

    .line 425
    .line 426
    invoke-static {v2, v3, v13, v14}, Lgo2;->d(JJ)J

    .line 427
    .line 428
    .line 429
    move-result-wide v9

    .line 430
    move v6, v12

    .line 431
    move-wide/from16 p2, v13

    .line 432
    .line 433
    shr-long v12, v2, v6

    .line 434
    .line 435
    long-to-int v11, v12

    .line 436
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    cmpg-float v11, v11, v16

    .line 441
    .line 442
    if-nez v11, :cond_15

    .line 443
    .line 444
    and-long v11, v2, p0

    .line 445
    .line 446
    long-to-int v11, v11

    .line 447
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    cmpg-float v11, v11, v16

    .line 452
    .line 453
    if-nez v11, :cond_15

    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_15
    shr-long v11, p2, v6

    .line 457
    .line 458
    long-to-int v11, v11

    .line 459
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 460
    .line 461
    .line 462
    move-result v11

    .line 463
    cmpg-float v11, v11, v16

    .line 464
    .line 465
    if-nez v11, :cond_16

    .line 466
    .line 467
    and-long v11, p2, p0

    .line 468
    .line 469
    long-to-int v11, v11

    .line 470
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    cmpg-float v11, v11, v16

    .line 475
    .line 476
    if-nez v11, :cond_16

    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_16
    iget-object v11, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 480
    .line 481
    invoke-static {v11}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    if-nez v11, :cond_17

    .line 486
    .line 487
    iget-object v11, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 488
    .line 489
    invoke-static {v11}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    if-nez v11, :cond_17

    .line 494
    .line 495
    iget-object v11, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 496
    .line 497
    invoke-static {v11}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    if-nez v11, :cond_17

    .line 502
    .line 503
    iget-object v11, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 504
    .line 505
    invoke-static {v11}, Lqy0;->g(Landroid/widget/EdgeEffect;)Z

    .line 506
    .line 507
    .line 508
    move-result v11

    .line 509
    if-eqz v11, :cond_18

    .line 510
    .line 511
    :cond_17
    invoke-virtual {v4}, Lwa;->a()V

    .line 512
    .line 513
    .line 514
    :cond_18
    :goto_3
    const/4 v11, 0x0

    .line 515
    const/4 v1, 0x1

    .line 516
    if-ne v0, v1, :cond_1e

    .line 517
    .line 518
    shr-long v12, v9, v6

    .line 519
    .line 520
    long-to-int v0, v12

    .line 521
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    const/high16 v12, 0x3f000000    # 0.5f

    .line 526
    .line 527
    cmpl-float v6, v6, v12

    .line 528
    .line 529
    const/high16 v13, -0x41000000    # -0.5f

    .line 530
    .line 531
    if-lez v6, :cond_19

    .line 532
    .line 533
    invoke-virtual {v4, v9, v10}, Lwa;->g(J)F

    .line 534
    .line 535
    .line 536
    :goto_4
    move v0, v1

    .line 537
    goto :goto_5

    .line 538
    :cond_19
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    cmpg-float v0, v0, v13

    .line 543
    .line 544
    if-gez v0, :cond_1a

    .line 545
    .line 546
    invoke-virtual {v4, v9, v10}, Lwa;->h(J)F

    .line 547
    .line 548
    .line 549
    goto :goto_4

    .line 550
    :cond_1a
    move v0, v11

    .line 551
    :goto_5
    and-long v14, v9, p0

    .line 552
    .line 553
    long-to-int v6, v14

    .line 554
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 555
    .line 556
    .line 557
    move-result v14

    .line 558
    cmpl-float v12, v14, v12

    .line 559
    .line 560
    if-lez v12, :cond_1b

    .line 561
    .line 562
    invoke-virtual {v4, v9, v10}, Lwa;->i(J)F

    .line 563
    .line 564
    .line 565
    :goto_6
    move v6, v1

    .line 566
    goto :goto_7

    .line 567
    :cond_1b
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    cmpg-float v6, v6, v13

    .line 572
    .line 573
    if-gez v6, :cond_1c

    .line 574
    .line 575
    invoke-virtual {v4, v9, v10}, Lwa;->f(J)F

    .line 576
    .line 577
    .line 578
    goto :goto_6

    .line 579
    :cond_1c
    move v6, v11

    .line 580
    :goto_7
    if-nez v0, :cond_1d

    .line 581
    .line 582
    if-eqz v6, :cond_1e

    .line 583
    .line 584
    :cond_1d
    move v0, v1

    .line 585
    :goto_8
    const-wide/16 v13, 0x0

    .line 586
    .line 587
    goto :goto_9

    .line 588
    :cond_1e
    move v0, v11

    .line 589
    goto :goto_8

    .line 590
    :goto_9
    invoke-static {v2, v3, v13, v14}, Lgo2;->b(JJ)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-nez v2, :cond_33

    .line 595
    .line 596
    iget-object v2, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 597
    .line 598
    invoke-static {v2}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    if-eqz v2, :cond_21

    .line 603
    .line 604
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    cmpg-float v2, v2, v16

    .line 609
    .line 610
    if-gez v2, :cond_21

    .line 611
    .line 612
    invoke-virtual {v5}, Lqy0;->c()Landroid/widget/EdgeEffect;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    instance-of v6, v2, Llh1;

    .line 621
    .line 622
    if-eqz v6, :cond_1f

    .line 623
    .line 624
    check-cast v2, Llh1;

    .line 625
    .line 626
    iget v6, v2, Llh1;->b:F

    .line 627
    .line 628
    add-float/2addr v6, v3

    .line 629
    iput v6, v2, Llh1;->b:F

    .line 630
    .line 631
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    iget v6, v2, Llh1;->a:F

    .line 636
    .line 637
    cmpl-float v3, v3, v6

    .line 638
    .line 639
    if-lez v3, :cond_20

    .line 640
    .line 641
    invoke-virtual {v2}, Llh1;->onRelease()V

    .line 642
    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_1f
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 646
    .line 647
    .line 648
    :cond_20
    :goto_a
    iget-object v2, v5, Lqy0;->f:Landroid/widget/EdgeEffect;

    .line 649
    .line 650
    invoke-static {v2}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    goto :goto_b

    .line 655
    :cond_21
    move v2, v11

    .line 656
    :goto_b
    iget-object v3, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 657
    .line 658
    invoke-static {v3}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eqz v3, :cond_26

    .line 663
    .line 664
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    cmpl-float v3, v3, v16

    .line 669
    .line 670
    if-lez v3, :cond_26

    .line 671
    .line 672
    invoke-virtual {v5}, Lqy0;->d()Landroid/widget/EdgeEffect;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 677
    .line 678
    .line 679
    move-result v6

    .line 680
    instance-of v7, v3, Llh1;

    .line 681
    .line 682
    if-eqz v7, :cond_22

    .line 683
    .line 684
    check-cast v3, Llh1;

    .line 685
    .line 686
    iget v7, v3, Llh1;->b:F

    .line 687
    .line 688
    add-float/2addr v7, v6

    .line 689
    iput v7, v3, Llh1;->b:F

    .line 690
    .line 691
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    iget v7, v3, Llh1;->a:F

    .line 696
    .line 697
    cmpl-float v6, v6, v7

    .line 698
    .line 699
    if-lez v6, :cond_23

    .line 700
    .line 701
    invoke-virtual {v3}, Llh1;->onRelease()V

    .line 702
    .line 703
    .line 704
    goto :goto_c

    .line 705
    :cond_22
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 706
    .line 707
    .line 708
    :cond_23
    :goto_c
    if-nez v2, :cond_25

    .line 709
    .line 710
    iget-object v2, v5, Lqy0;->g:Landroid/widget/EdgeEffect;

    .line 711
    .line 712
    invoke-static {v2}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eqz v2, :cond_24

    .line 717
    .line 718
    goto :goto_d

    .line 719
    :cond_24
    move v2, v11

    .line 720
    goto :goto_e

    .line 721
    :cond_25
    :goto_d
    move v2, v1

    .line 722
    :cond_26
    :goto_e
    iget-object v3, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 723
    .line 724
    invoke-static {v3}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    if-eqz v3, :cond_2b

    .line 729
    .line 730
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 731
    .line 732
    .line 733
    move-result v3

    .line 734
    cmpg-float v3, v3, v16

    .line 735
    .line 736
    if-gez v3, :cond_2b

    .line 737
    .line 738
    invoke-virtual {v5}, Lqy0;->e()Landroid/widget/EdgeEffect;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    instance-of v7, v3, Llh1;

    .line 747
    .line 748
    if-eqz v7, :cond_27

    .line 749
    .line 750
    check-cast v3, Llh1;

    .line 751
    .line 752
    iget v7, v3, Llh1;->b:F

    .line 753
    .line 754
    add-float/2addr v7, v6

    .line 755
    iput v7, v3, Llh1;->b:F

    .line 756
    .line 757
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    iget v7, v3, Llh1;->a:F

    .line 762
    .line 763
    cmpl-float v6, v6, v7

    .line 764
    .line 765
    if-lez v6, :cond_28

    .line 766
    .line 767
    invoke-virtual {v3}, Llh1;->onRelease()V

    .line 768
    .line 769
    .line 770
    goto :goto_f

    .line 771
    :cond_27
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 772
    .line 773
    .line 774
    :cond_28
    :goto_f
    if-nez v2, :cond_2a

    .line 775
    .line 776
    iget-object v2, v5, Lqy0;->d:Landroid/widget/EdgeEffect;

    .line 777
    .line 778
    invoke-static {v2}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    if-eqz v2, :cond_29

    .line 783
    .line 784
    goto :goto_10

    .line 785
    :cond_29
    move v2, v11

    .line 786
    goto :goto_11

    .line 787
    :cond_2a
    :goto_10
    move v2, v1

    .line 788
    :cond_2b
    :goto_11
    iget-object v3, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 789
    .line 790
    invoke-static {v3}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    if-eqz v3, :cond_30

    .line 795
    .line 796
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    cmpl-float v3, v3, v16

    .line 801
    .line 802
    if-lez v3, :cond_30

    .line 803
    .line 804
    invoke-virtual {v5}, Lqy0;->b()Landroid/widget/EdgeEffect;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 809
    .line 810
    .line 811
    move-result v6

    .line 812
    instance-of v7, v3, Llh1;

    .line 813
    .line 814
    if-eqz v7, :cond_2c

    .line 815
    .line 816
    check-cast v3, Llh1;

    .line 817
    .line 818
    iget v7, v3, Llh1;->b:F

    .line 819
    .line 820
    add-float/2addr v7, v6

    .line 821
    iput v7, v3, Llh1;->b:F

    .line 822
    .line 823
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 824
    .line 825
    .line 826
    move-result v6

    .line 827
    iget v7, v3, Llh1;->a:F

    .line 828
    .line 829
    cmpl-float v6, v6, v7

    .line 830
    .line 831
    if-lez v6, :cond_2d

    .line 832
    .line 833
    invoke-virtual {v3}, Llh1;->onRelease()V

    .line 834
    .line 835
    .line 836
    goto :goto_12

    .line 837
    :cond_2c
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 838
    .line 839
    .line 840
    :cond_2d
    :goto_12
    if-nez v2, :cond_2f

    .line 841
    .line 842
    iget-object v2, v5, Lqy0;->e:Landroid/widget/EdgeEffect;

    .line 843
    .line 844
    invoke-static {v2}, Lqy0;->f(Landroid/widget/EdgeEffect;)Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    if-eqz v2, :cond_2e

    .line 849
    .line 850
    goto :goto_13

    .line 851
    :cond_2e
    move v2, v11

    .line 852
    goto :goto_14

    .line 853
    :cond_2f
    :goto_13
    move v2, v1

    .line 854
    :cond_30
    :goto_14
    if-nez v2, :cond_32

    .line 855
    .line 856
    if-eqz v0, :cond_31

    .line 857
    .line 858
    goto :goto_15

    .line 859
    :cond_31
    move v9, v11

    .line 860
    goto :goto_16

    .line 861
    :cond_32
    :goto_15
    move v9, v1

    .line 862
    :goto_16
    move v0, v9

    .line 863
    :cond_33
    if-eqz v0, :cond_34

    .line 864
    .line 865
    invoke-virtual {v4}, Lwa;->d()V

    .line 866
    .line 867
    .line 868
    :cond_34
    move-wide/from16 v2, p2

    .line 869
    .line 870
    move-wide/from16 v0, v17

    .line 871
    .line 872
    invoke-static {v0, v1, v2, v3}, Lgo2;->e(JJ)J

    .line 873
    .line 874
    .line 875
    move-result-wide v0

    .line 876
    return-wide v0

    .line 877
    :cond_35
    iget-object v4, v1, Ldg3;->k:Ljf3;

    .line 878
    .line 879
    invoke-virtual {v1, v4, v2, v3, v0}, Ldg3;->d(Ljf3;JI)J

    .line 880
    .line 881
    .line 882
    move-result-wide v0

    .line 883
    return-wide v0
.end method
