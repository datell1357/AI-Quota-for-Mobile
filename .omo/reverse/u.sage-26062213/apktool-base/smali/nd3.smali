.class public final synthetic Lnd3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lhd4;

.field public final synthetic o:Ldf1;

.field public final synthetic p:Ldf1;

.field public final synthetic q:Ldf1;

.field public final synthetic r:I

.field public final synthetic s:Ldf1;

.field public final synthetic t:Lpd3;

.field public final synthetic u:Lka0;


# direct methods
.method public synthetic constructor <init>(Lhd4;Ldf1;Ldf1;Ldf1;ILdf1;Lpd3;Lka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnd3;->n:Lhd4;

    .line 5
    .line 6
    iput-object p2, p0, Lnd3;->o:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lnd3;->p:Ldf1;

    .line 9
    .line 10
    iput-object p4, p0, Lnd3;->q:Ldf1;

    .line 11
    .line 12
    iput p5, p0, Lnd3;->r:I

    .line 13
    .line 14
    iput-object p6, p0, Lnd3;->s:Ldf1;

    .line 15
    .line 16
    iput-object p7, p0, Lnd3;->t:Lpd3;

    .line 17
    .line 18
    iput-object p8, p0, Lnd3;->u:Lka0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    check-cast v9, Lqt3;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Lmf0;

    .line 10
    .line 11
    iget-wide v2, v1, Lmf0;->a:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Lmf0;->h(J)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-wide v2, v1, Lmf0;->a:J

    .line 18
    .line 19
    invoke-static {v2, v3}, Lmf0;->g(J)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    iget-wide v11, v1, Lmf0;->a:J

    .line 24
    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    const/16 v17, 0xa

    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    const/4 v14, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    invoke-static/range {v11 .. v17}, Lmf0;->a(JIIIII)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v8, v0, Lnd3;->n:Lhd4;

    .line 41
    .line 42
    invoke-interface {v8, v9, v3}, Lhd4;->d(Las0;Lhy1;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v8, v9, v4}, Lhd4;->c(Las0;Lhy1;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-interface {v8, v9}, Lhd4;->a(Las0;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sget-object v7, Lqd3;->n:Lqd3;

    .line 59
    .line 60
    iget-object v11, v0, Lnd3;->o:Ldf1;

    .line 61
    .line 62
    invoke-interface {v9, v11, v7}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-instance v11, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    move v14, v13

    .line 80
    :goto_0
    if-ge v14, v12, :cond_0

    .line 81
    .line 82
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    check-cast v15, Lya2;

    .line 87
    .line 88
    invoke-interface {v15, v1, v2}, Lya2;->e(J)Ldv2;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v14, v14, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const/4 v14, 0x1

    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    move/from16 p2, v14

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    move-object v15, v7

    .line 114
    check-cast v15, Ldv2;

    .line 115
    .line 116
    iget v15, v15, Ldv2;->o:I

    .line 117
    .line 118
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    add-int/lit8 v12, v16, -0x1

    .line 123
    .line 124
    move/from16 p2, v14

    .line 125
    .line 126
    if-gt v14, v12, :cond_3

    .line 127
    .line 128
    :goto_1
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    move-object/from16 v13, v16

    .line 133
    .line 134
    check-cast v13, Ldv2;

    .line 135
    .line 136
    iget v13, v13, Ldv2;->o:I

    .line 137
    .line 138
    if-ge v15, v13, :cond_2

    .line 139
    .line 140
    move v15, v13

    .line 141
    move-object/from16 v7, v16

    .line 142
    .line 143
    :cond_2
    if-eq v14, v12, :cond_3

    .line 144
    .line 145
    add-int/lit8 v14, v14, 0x1

    .line 146
    .line 147
    const/4 v13, 0x0

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    :goto_2
    check-cast v7, Ldv2;

    .line 150
    .line 151
    if-eqz v7, :cond_4

    .line 152
    .line 153
    iget v7, v7, Ldv2;->o:I

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    const/4 v7, 0x0

    .line 157
    :goto_3
    sget-object v12, Lqd3;->p:Lqd3;

    .line 158
    .line 159
    iget-object v13, v0, Lnd3;->p:Ldf1;

    .line 160
    .line 161
    invoke-interface {v9, v13, v12}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    new-instance v13, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    const/4 v15, 0x0

    .line 179
    :goto_4
    if-ge v15, v14, :cond_5

    .line 180
    .line 181
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v16

    .line 185
    move/from16 v18, v4

    .line 186
    .line 187
    move-object/from16 v4, v16

    .line 188
    .line 189
    check-cast v4, Lya2;

    .line 190
    .line 191
    move/from16 v16, v6

    .line 192
    .line 193
    neg-int v6, v3

    .line 194
    sub-int v6, v6, v18

    .line 195
    .line 196
    move/from16 v19, v10

    .line 197
    .line 198
    neg-int v10, v5

    .line 199
    move-object/from16 v20, v11

    .line 200
    .line 201
    invoke-static {v6, v10, v1, v2}, Lnf0;->h(IIJ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v10

    .line 205
    invoke-interface {v4, v10, v11}, Lya2;->e(J)Ldv2;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    add-int/lit8 v15, v15, 0x1

    .line 213
    .line 214
    move/from16 v6, v16

    .line 215
    .line 216
    move/from16 v4, v18

    .line 217
    .line 218
    move/from16 v10, v19

    .line 219
    .line 220
    move-object/from16 v11, v20

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_5
    move/from16 v18, v4

    .line 224
    .line 225
    move/from16 v16, v6

    .line 226
    .line 227
    move/from16 v19, v10

    .line 228
    .line 229
    move-object/from16 v20, v11

    .line 230
    .line 231
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_6

    .line 236
    .line 237
    const/4 v6, 0x0

    .line 238
    goto :goto_6

    .line 239
    :cond_6
    const/4 v4, 0x0

    .line 240
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    move-object v4, v6

    .line 245
    check-cast v4, Ldv2;

    .line 246
    .line 247
    iget v4, v4, Ldv2;->o:I

    .line 248
    .line 249
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    add-int/lit8 v10, v10, -0x1

    .line 254
    .line 255
    move/from16 v11, p2

    .line 256
    .line 257
    if-gt v11, v10, :cond_9

    .line 258
    .line 259
    move-object v11, v6

    .line 260
    move v6, v4

    .line 261
    const/4 v4, 0x1

    .line 262
    :goto_5
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    move-object v14, v12

    .line 267
    check-cast v14, Ldv2;

    .line 268
    .line 269
    iget v14, v14, Ldv2;->o:I

    .line 270
    .line 271
    if-ge v6, v14, :cond_7

    .line 272
    .line 273
    move-object v11, v12

    .line 274
    move v6, v14

    .line 275
    :cond_7
    if-eq v4, v10, :cond_8

    .line 276
    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_8
    move-object v6, v11

    .line 281
    :cond_9
    :goto_6
    check-cast v6, Ldv2;

    .line 282
    .line 283
    if-eqz v6, :cond_a

    .line 284
    .line 285
    iget v4, v6, Ldv2;->o:I

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_a
    const/4 v4, 0x0

    .line 289
    :goto_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_b

    .line 294
    .line 295
    const/4 v10, 0x0

    .line 296
    goto :goto_9

    .line 297
    :cond_b
    const/4 v6, 0x0

    .line 298
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    move-object v6, v10

    .line 303
    check-cast v6, Ldv2;

    .line 304
    .line 305
    iget v6, v6, Ldv2;->n:I

    .line 306
    .line 307
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    const/4 v12, 0x1

    .line 312
    sub-int/2addr v11, v12

    .line 313
    if-gt v12, v11, :cond_e

    .line 314
    .line 315
    move-object v12, v10

    .line 316
    move v10, v6

    .line 317
    const/4 v6, 0x1

    .line 318
    :goto_8
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v14

    .line 322
    move-object v15, v14

    .line 323
    check-cast v15, Ldv2;

    .line 324
    .line 325
    iget v15, v15, Ldv2;->n:I

    .line 326
    .line 327
    if-ge v10, v15, :cond_c

    .line 328
    .line 329
    move-object v12, v14

    .line 330
    move v10, v15

    .line 331
    :cond_c
    if-eq v6, v11, :cond_d

    .line 332
    .line 333
    add-int/lit8 v6, v6, 0x1

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_d
    move-object v10, v12

    .line 337
    :cond_e
    :goto_9
    check-cast v10, Ldv2;

    .line 338
    .line 339
    if-eqz v10, :cond_f

    .line 340
    .line 341
    iget v6, v10, Ldv2;->n:I

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_f
    const/4 v6, 0x0

    .line 345
    :goto_a
    sget-object v10, Lqd3;->q:Lqd3;

    .line 346
    .line 347
    iget-object v11, v0, Lnd3;->q:Ldf1;

    .line 348
    .line 349
    invoke-interface {v9, v11, v10}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    move-object v11, v13

    .line 354
    new-instance v13, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    const/4 v14, 0x0

    .line 368
    :goto_b
    if-ge v14, v12, :cond_12

    .line 369
    .line 370
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    check-cast v15, Lya2;

    .line 375
    .line 376
    move/from16 v21, v4

    .line 377
    .line 378
    neg-int v4, v3

    .line 379
    sub-int v4, v4, v18

    .line 380
    .line 381
    move/from16 v22, v3

    .line 382
    .line 383
    neg-int v3, v5

    .line 384
    invoke-static {v4, v3, v1, v2}, Lnf0;->h(IIJ)J

    .line 385
    .line 386
    .line 387
    move-result-wide v3

    .line 388
    invoke-interface {v15, v3, v4}, Lya2;->e(J)Ldv2;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    iget v4, v3, Ldv2;->o:I

    .line 393
    .line 394
    if-eqz v4, :cond_10

    .line 395
    .line 396
    iget v4, v3, Ldv2;->n:I

    .line 397
    .line 398
    if-eqz v4, :cond_10

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_10
    const/4 v3, 0x0

    .line 402
    :goto_c
    if-eqz v3, :cond_11

    .line 403
    .line 404
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 408
    .line 409
    move/from16 v4, v21

    .line 410
    .line 411
    move/from16 v3, v22

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_12
    move/from16 v22, v3

    .line 415
    .line 416
    move/from16 v21, v4

    .line 417
    .line 418
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    sget-object v4, Lhy1;->n:Lhy1;

    .line 423
    .line 424
    iget v5, v0, Lnd3;->r:I

    .line 425
    .line 426
    if-nez v3, :cond_1f

    .line 427
    .line 428
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-eqz v3, :cond_13

    .line 433
    .line 434
    const/4 v14, 0x0

    .line 435
    goto :goto_e

    .line 436
    :cond_13
    const/4 v3, 0x0

    .line 437
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    move-object v3, v14

    .line 442
    check-cast v3, Ldv2;

    .line 443
    .line 444
    iget v3, v3, Ldv2;->n:I

    .line 445
    .line 446
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v15

    .line 450
    const/4 v10, 0x1

    .line 451
    sub-int/2addr v15, v10

    .line 452
    if-gt v10, v15, :cond_15

    .line 453
    .line 454
    move v10, v3

    .line 455
    const/4 v3, 0x1

    .line 456
    :goto_d
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v23

    .line 460
    move-object/from16 v12, v23

    .line 461
    .line 462
    check-cast v12, Ldv2;

    .line 463
    .line 464
    iget v12, v12, Ldv2;->n:I

    .line 465
    .line 466
    if-ge v10, v12, :cond_14

    .line 467
    .line 468
    move v10, v12

    .line 469
    move-object/from16 v14, v23

    .line 470
    .line 471
    :cond_14
    if-eq v3, v15, :cond_15

    .line 472
    .line 473
    add-int/lit8 v3, v3, 0x1

    .line 474
    .line 475
    goto :goto_d

    .line 476
    :cond_15
    :goto_e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    check-cast v14, Ldv2;

    .line 480
    .line 481
    iget v3, v14, Ldv2;->n:I

    .line 482
    .line 483
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 484
    .line 485
    .line 486
    move-result v10

    .line 487
    if-eqz v10, :cond_16

    .line 488
    .line 489
    move/from16 v24, v3

    .line 490
    .line 491
    const/4 v12, 0x0

    .line 492
    goto :goto_10

    .line 493
    :cond_16
    const/4 v10, 0x0

    .line 494
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    move-object v10, v12

    .line 499
    check-cast v10, Ldv2;

    .line 500
    .line 501
    iget v10, v10, Ldv2;->o:I

    .line 502
    .line 503
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    const/4 v15, 0x1

    .line 508
    sub-int/2addr v14, v15

    .line 509
    if-gt v15, v14, :cond_19

    .line 510
    .line 511
    move-object v15, v12

    .line 512
    move v12, v10

    .line 513
    const/4 v10, 0x1

    .line 514
    :goto_f
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v23

    .line 518
    move/from16 v24, v3

    .line 519
    .line 520
    move-object/from16 v3, v23

    .line 521
    .line 522
    check-cast v3, Ldv2;

    .line 523
    .line 524
    iget v3, v3, Ldv2;->o:I

    .line 525
    .line 526
    if-ge v12, v3, :cond_17

    .line 527
    .line 528
    move v12, v3

    .line 529
    move-object/from16 v15, v23

    .line 530
    .line 531
    :cond_17
    if-eq v10, v14, :cond_18

    .line 532
    .line 533
    add-int/lit8 v10, v10, 0x1

    .line 534
    .line 535
    move/from16 v3, v24

    .line 536
    .line 537
    goto :goto_f

    .line 538
    :cond_18
    move-object v12, v15

    .line 539
    goto :goto_10

    .line 540
    :cond_19
    move/from16 v24, v3

    .line 541
    .line 542
    :goto_10
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    check-cast v12, Ldv2;

    .line 546
    .line 547
    iget v3, v12, Ldv2;->o:I

    .line 548
    .line 549
    if-nez v5, :cond_1b

    .line 550
    .line 551
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    if-ne v10, v4, :cond_1a

    .line 556
    .line 557
    const/high16 v10, 0x41800000    # 16.0f

    .line 558
    .line 559
    invoke-interface {v9, v10}, Las0;->N(F)I

    .line 560
    .line 561
    .line 562
    move-result v12

    .line 563
    :goto_11
    add-int v12, v12, v22

    .line 564
    .line 565
    goto :goto_13

    .line 566
    :cond_1a
    const/high16 v10, 0x41800000    # 16.0f

    .line 567
    .line 568
    invoke-interface {v9, v10}, Las0;->N(F)I

    .line 569
    .line 570
    .line 571
    move-result v12

    .line 572
    sub-int v10, v16, v12

    .line 573
    .line 574
    sub-int v10, v10, v24

    .line 575
    .line 576
    sub-int v12, v10, v18

    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_1b
    const/4 v10, 0x2

    .line 580
    if-ne v5, v10, :cond_1c

    .line 581
    .line 582
    goto :goto_12

    .line 583
    :cond_1c
    const/4 v12, 0x3

    .line 584
    if-ne v5, v12, :cond_1e

    .line 585
    .line 586
    :goto_12
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 587
    .line 588
    .line 589
    move-result-object v10

    .line 590
    if-ne v10, v4, :cond_1d

    .line 591
    .line 592
    const/high16 v10, 0x41800000    # 16.0f

    .line 593
    .line 594
    invoke-interface {v9, v10}, Las0;->N(F)I

    .line 595
    .line 596
    .line 597
    move-result v12

    .line 598
    sub-int v12, v16, v12

    .line 599
    .line 600
    sub-int v12, v12, v24

    .line 601
    .line 602
    sub-int v12, v12, v18

    .line 603
    .line 604
    goto :goto_13

    .line 605
    :cond_1d
    const/high16 v10, 0x41800000    # 16.0f

    .line 606
    .line 607
    invoke-interface {v9, v10}, Las0;->N(F)I

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    goto :goto_11

    .line 612
    :cond_1e
    sub-int v12, v16, v24

    .line 613
    .line 614
    add-int v12, v12, v22

    .line 615
    .line 616
    sub-int v12, v12, v18

    .line 617
    .line 618
    div-int/2addr v12, v10

    .line 619
    :goto_13
    new-instance v10, La13;

    .line 620
    .line 621
    const/4 v15, 0x1

    .line 622
    invoke-direct {v10, v12, v3, v15}, La13;-><init>(III)V

    .line 623
    .line 624
    .line 625
    goto :goto_14

    .line 626
    :cond_1f
    const/4 v10, 0x0

    .line 627
    :goto_14
    sget-object v3, Lqd3;->r:Lqd3;

    .line 628
    .line 629
    iget-object v12, v0, Lnd3;->s:Ldf1;

    .line 630
    .line 631
    invoke-interface {v9, v12, v3}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    new-instance v12, Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 638
    .line 639
    .line 640
    move-result v14

    .line 641
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    .line 643
    .line 644
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 645
    .line 646
    .line 647
    move-result v14

    .line 648
    const/4 v15, 0x0

    .line 649
    :goto_15
    if-ge v15, v14, :cond_20

    .line 650
    .line 651
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v18

    .line 655
    move-object/from16 v22, v3

    .line 656
    .line 657
    move-object/from16 v3, v18

    .line 658
    .line 659
    check-cast v3, Lya2;

    .line 660
    .line 661
    invoke-interface {v3, v1, v2}, Lya2;->e(J)Ldv2;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    add-int/lit8 v15, v15, 0x1

    .line 669
    .line 670
    move-object/from16 v3, v22

    .line 671
    .line 672
    goto :goto_15

    .line 673
    :cond_20
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    if-eqz v3, :cond_21

    .line 678
    .line 679
    move/from16 v22, v6

    .line 680
    .line 681
    move-object/from16 v23, v11

    .line 682
    .line 683
    const/4 v14, 0x0

    .line 684
    goto :goto_17

    .line 685
    :cond_21
    const/4 v3, 0x0

    .line 686
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v14

    .line 690
    move-object v15, v14

    .line 691
    check-cast v15, Ldv2;

    .line 692
    .line 693
    iget v15, v15, Ldv2;->o:I

    .line 694
    .line 695
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 696
    .line 697
    .line 698
    move-result v17

    .line 699
    move/from16 v22, v6

    .line 700
    .line 701
    const/4 v3, 0x1

    .line 702
    add-int/lit8 v6, v17, -0x1

    .line 703
    .line 704
    if-gt v3, v6, :cond_23

    .line 705
    .line 706
    const/4 v3, 0x1

    .line 707
    :goto_16
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v17

    .line 711
    move-object/from16 v23, v11

    .line 712
    .line 713
    move-object/from16 v11, v17

    .line 714
    .line 715
    check-cast v11, Ldv2;

    .line 716
    .line 717
    iget v11, v11, Ldv2;->o:I

    .line 718
    .line 719
    if-ge v15, v11, :cond_22

    .line 720
    .line 721
    move v15, v11

    .line 722
    move-object/from16 v14, v17

    .line 723
    .line 724
    :cond_22
    if-eq v3, v6, :cond_24

    .line 725
    .line 726
    add-int/lit8 v3, v3, 0x1

    .line 727
    .line 728
    move-object/from16 v11, v23

    .line 729
    .line 730
    goto :goto_16

    .line 731
    :cond_23
    move-object/from16 v23, v11

    .line 732
    .line 733
    :cond_24
    :goto_17
    check-cast v14, Ldv2;

    .line 734
    .line 735
    if-eqz v14, :cond_25

    .line 736
    .line 737
    iget v3, v14, Ldv2;->o:I

    .line 738
    .line 739
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    goto :goto_18

    .line 744
    :cond_25
    const/4 v3, 0x0

    .line 745
    :goto_18
    if-eqz v10, :cond_28

    .line 746
    .line 747
    iget v6, v10, La13;->c:I

    .line 748
    .line 749
    if-eqz v3, :cond_26

    .line 750
    .line 751
    const/4 v11, 0x3

    .line 752
    if-ne v5, v11, :cond_27

    .line 753
    .line 754
    :cond_26
    const/high16 v11, 0x41800000    # 16.0f

    .line 755
    .line 756
    goto :goto_1a

    .line 757
    :cond_27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    add-int/2addr v5, v6

    .line 762
    const/high16 v11, 0x41800000    # 16.0f

    .line 763
    .line 764
    invoke-interface {v9, v11}, Las0;->N(F)I

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    :goto_19
    add-int/2addr v6, v5

    .line 769
    goto :goto_1b

    .line 770
    :goto_1a
    invoke-interface {v9, v11}, Las0;->N(F)I

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    add-int/2addr v5, v6

    .line 775
    invoke-interface {v8, v9}, Lhd4;->a(Las0;)I

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    goto :goto_19

    .line 780
    :goto_1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    move-object v14, v5

    .line 785
    goto :goto_1c

    .line 786
    :cond_28
    const/4 v14, 0x0

    .line 787
    :goto_1c
    if-eqz v21, :cond_2b

    .line 788
    .line 789
    if-eqz v14, :cond_29

    .line 790
    .line 791
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    goto :goto_1d

    .line 796
    :cond_29
    if-eqz v3, :cond_2a

    .line 797
    .line 798
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v5

    .line 802
    goto :goto_1d

    .line 803
    :cond_2a
    invoke-interface {v8, v9}, Lhd4;->a(Las0;)I

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    :goto_1d
    add-int v5, v21, v5

    .line 808
    .line 809
    move v11, v5

    .line 810
    goto :goto_1e

    .line 811
    :cond_2b
    const/4 v11, 0x0

    .line 812
    :goto_1e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    if-eqz v5, :cond_2c

    .line 817
    .line 818
    invoke-interface {v8, v9}, Lhd4;->b(Las0;)I

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    invoke-interface {v9, v5}, Las0;->p0(I)F

    .line 823
    .line 824
    .line 825
    move-result v5

    .line 826
    goto :goto_1f

    .line 827
    :cond_2c
    invoke-interface {v9, v7}, Las0;->p0(I)F

    .line 828
    .line 829
    .line 830
    move-result v5

    .line 831
    :goto_1f
    if-eqz v3, :cond_2d

    .line 832
    .line 833
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v6

    .line 837
    invoke-interface {v9, v6}, Las0;->p0(I)F

    .line 838
    .line 839
    .line 840
    move-result v6

    .line 841
    goto :goto_20

    .line 842
    :cond_2d
    invoke-interface {v8, v9}, Lhd4;->a(Las0;)I

    .line 843
    .line 844
    .line 845
    move-result v6

    .line 846
    invoke-interface {v9, v6}, Las0;->p0(I)F

    .line 847
    .line 848
    .line 849
    move-result v6

    .line 850
    :goto_20
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 851
    .line 852
    .line 853
    move-result-object v7

    .line 854
    if-ne v7, v4, :cond_2e

    .line 855
    .line 856
    invoke-interface {v8, v9, v7}, Lhd4;->d(Las0;Lhy1;)I

    .line 857
    .line 858
    .line 859
    move-result v7

    .line 860
    invoke-interface {v9, v7}, Las0;->p0(I)F

    .line 861
    .line 862
    .line 863
    move-result v7

    .line 864
    goto :goto_21

    .line 865
    :cond_2e
    invoke-interface {v8, v9, v7}, Lhd4;->c(Las0;Lhy1;)I

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    invoke-interface {v9, v7}, Las0;->p0(I)F

    .line 870
    .line 871
    .line 872
    move-result v7

    .line 873
    :goto_21
    invoke-interface {v9}, Ljt1;->getLayoutDirection()Lhy1;

    .line 874
    .line 875
    .line 876
    move-result-object v15

    .line 877
    if-ne v15, v4, :cond_2f

    .line 878
    .line 879
    invoke-interface {v8, v9, v15}, Lhd4;->c(Las0;Lhy1;)I

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    invoke-interface {v9, v4}, Las0;->p0(I)F

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    goto :goto_22

    .line 888
    :cond_2f
    invoke-interface {v8, v9, v15}, Lhd4;->d(Las0;Lhy1;)I

    .line 889
    .line 890
    .line 891
    move-result v4

    .line 892
    invoke-interface {v9, v4}, Las0;->p0(I)F

    .line 893
    .line 894
    .line 895
    move-result v4

    .line 896
    :goto_22
    new-instance v15, Lds2;

    .line 897
    .line 898
    invoke-direct {v15, v7, v5, v4, v6}, Lds2;-><init>(FFFF)V

    .line 899
    .line 900
    .line 901
    iget-object v4, v0, Lnd3;->t:Lpd3;

    .line 902
    .line 903
    iget-object v5, v4, Lpd3;->a:Lws2;

    .line 904
    .line 905
    invoke-virtual {v5, v15}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 906
    .line 907
    .line 908
    new-instance v5, Ll4;

    .line 909
    .line 910
    const/16 v6, 0x10

    .line 911
    .line 912
    iget-object v0, v0, Lnd3;->u:Lka0;

    .line 913
    .line 914
    invoke-direct {v5, v6, v0, v4}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    new-instance v0, Lka0;

    .line 918
    .line 919
    const v4, -0x10924627

    .line 920
    .line 921
    .line 922
    const/4 v15, 0x1

    .line 923
    invoke-direct {v0, v4, v15, v5}, Lka0;-><init>(IZLef1;)V

    .line 924
    .line 925
    .line 926
    sget-object v4, Lqd3;->o:Lqd3;

    .line 927
    .line 928
    invoke-interface {v9, v0, v4}, Lqt3;->o(Ldf1;Ljava/lang/Object;)Ljava/util/List;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    new-instance v4, Ljava/util/ArrayList;

    .line 933
    .line 934
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 935
    .line 936
    .line 937
    move-result v5

    .line 938
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 939
    .line 940
    .line 941
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    const/4 v6, 0x0

    .line 946
    :goto_23
    if-ge v6, v5, :cond_30

    .line 947
    .line 948
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    check-cast v7, Lya2;

    .line 953
    .line 954
    invoke-interface {v7, v1, v2}, Lya2;->e(J)Ldv2;

    .line 955
    .line 956
    .line 957
    move-result-object v7

    .line 958
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    add-int/lit8 v6, v6, 0x1

    .line 962
    .line 963
    goto :goto_23

    .line 964
    :cond_30
    new-instance v0, Lod3;

    .line 965
    .line 966
    move-object v1, v4

    .line 967
    move-object v5, v10

    .line 968
    move-object v4, v12

    .line 969
    move/from16 v6, v16

    .line 970
    .line 971
    move/from16 v10, v19

    .line 972
    .line 973
    move-object/from16 v2, v20

    .line 974
    .line 975
    move/from16 v7, v22

    .line 976
    .line 977
    move-object v12, v3

    .line 978
    move-object/from16 v3, v23

    .line 979
    .line 980
    invoke-direct/range {v0 .. v14}, Lod3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;La13;IILhd4;Lqt3;IILjava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 981
    .line 982
    .line 983
    sget-object v1, Lh01;->n:Lh01;

    .line 984
    .line 985
    invoke-interface {v9, v6, v10, v1, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    return-object v0
.end method
