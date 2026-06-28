.class public final Lhp3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lpe1;

.field public b:Ljava/lang/Object;

.field public c:Lcg2;

.field public d:I

.field public final e:Lkg2;

.field public final f:Lkg2;

.field public final g:Llg2;

.field public final h:Lug2;

.field public final i:Lzf1;

.field public j:Z

.field public k:I

.field public final l:Lkg2;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhp3;->a:Lpe1;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lhp3;->d:I

    .line 8
    .line 9
    invoke-static {}, Lht4;->k()Lkg2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lhp3;->e:Lkg2;

    .line 14
    .line 15
    new-instance p1, Lkg2;

    .line 16
    .line 17
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lhp3;->f:Lkg2;

    .line 21
    .line 22
    new-instance p1, Llg2;

    .line 23
    .line 24
    invoke-direct {p1}, Llg2;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lhp3;->g:Llg2;

    .line 28
    .line 29
    new-instance p1, Lug2;

    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    new-array v0, v0, [Los0;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lhp3;->h:Lug2;

    .line 39
    .line 40
    new-instance p1, Lzf1;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {p1, v0, p0}, Lzf1;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lhp3;->i:Lzf1;

    .line 47
    .line 48
    invoke-static {}, Lht4;->k()Lkg2;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lhp3;->l:Lkg2;

    .line 53
    .line 54
    new-instance p1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lhp3;->m:Ljava/util/HashMap;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Z
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget-object v2, Lw13;->S:Lw13;

    .line 6
    .line 7
    instance-of v3, v0, Lvd3;

    .line 8
    .line 9
    iget-object v4, v1, Lhp3;->h:Lug2;

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    const-wide/16 v16, 0x80

    .line 13
    .line 14
    iget-object v5, v1, Lhp3;->l:Lkg2;

    .line 15
    .line 16
    iget-object v6, v1, Lhp3;->m:Ljava/util/HashMap;

    .line 17
    .line 18
    const-wide/16 v18, 0xff

    .line 19
    .line 20
    iget-object v7, v1, Lhp3;->e:Lkg2;

    .line 21
    .line 22
    iget-object v8, v1, Lhp3;->g:Llg2;

    .line 23
    .line 24
    if-eqz v3, :cond_23

    .line 25
    .line 26
    check-cast v0, Lvd3;

    .line 27
    .line 28
    iget-object v0, v0, Lvd3;->n:Llg2;

    .line 29
    .line 30
    iget-object v3, v0, Llg2;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v0, v0, Llg2;->a:[J

    .line 33
    .line 34
    const/16 v20, 0x7

    .line 35
    .line 36
    array-length v9, v0

    .line 37
    sub-int/2addr v9, v10

    .line 38
    if-ltz v9, :cond_21

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :goto_0
    const/16 v23, 0x8

    .line 48
    .line 49
    aget-wide v13, v0, v11

    .line 50
    .line 51
    move/from16 p1, v11

    .line 52
    .line 53
    not-long v10, v13

    .line 54
    shl-long v10, v10, v20

    .line 55
    .line 56
    and-long/2addr v10, v13

    .line 57
    and-long v10, v10, v21

    .line 58
    .line 59
    cmp-long v10, v10, v21

    .line 60
    .line 61
    if-eqz v10, :cond_20

    .line 62
    .line 63
    sub-int v11, p1, v9

    .line 64
    .line 65
    not-int v10, v11

    .line 66
    ushr-int/lit8 v10, v10, 0x1f

    .line 67
    .line 68
    rsub-int/lit8 v10, v10, 0x8

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    :goto_1
    if-ge v11, v10, :cond_1f

    .line 72
    .line 73
    and-long v26, v13, v18

    .line 74
    .line 75
    cmp-long v26, v26, v16

    .line 76
    .line 77
    if-gez v26, :cond_1e

    .line 78
    .line 79
    shl-int/lit8 v26, p1, 0x3

    .line 80
    .line 81
    add-int v26, v26, v11

    .line 82
    .line 83
    aget-object v15, v3, v26

    .line 84
    .line 85
    move-object/from16 v26, v0

    .line 86
    .line 87
    instance-of v0, v15, Lcs3;

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    move-object v0, v15

    .line 92
    check-cast v0, Lcs3;

    .line 93
    .line 94
    move-object/from16 v28, v2

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-virtual {v0, v2}, Lcs3;->c(I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    goto/16 :goto_15

    .line 104
    .line 105
    :cond_0
    move-object/from16 v28, v2

    .line 106
    .line 107
    :cond_1
    iget-boolean v0, v1, Lhp3;->j:Z

    .line 108
    .line 109
    if-nez v0, :cond_18

    .line 110
    .line 111
    invoke-virtual {v5, v15}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_18

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, v1, Lhp3;->j:Z

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {v5, v15}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_17

    .line 125
    .line 126
    instance-of v2, v0, Llg2;

    .line 127
    .line 128
    if-eqz v2, :cond_10

    .line 129
    .line 130
    check-cast v0, Llg2;

    .line 131
    .line 132
    iget-object v2, v0, Llg2;->b:[Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v0, v0, Llg2;->a:[J

    .line 135
    .line 136
    move-object/from16 v29, v2

    .line 137
    .line 138
    array-length v2, v0

    .line 139
    const/16 v25, 0x2

    .line 140
    .line 141
    add-int/lit8 v2, v2, -0x2

    .line 142
    .line 143
    if-ltz v2, :cond_e

    .line 144
    .line 145
    move-object/from16 v30, v0

    .line 146
    .line 147
    move/from16 v31, v11

    .line 148
    .line 149
    move/from16 v32, v12

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    :goto_2
    aget-wide v11, v30, v0

    .line 153
    .line 154
    move-wide/from16 v33, v13

    .line 155
    .line 156
    not-long v13, v11

    .line 157
    shl-long v13, v13, v20

    .line 158
    .line 159
    and-long/2addr v13, v11

    .line 160
    and-long v13, v13, v21

    .line 161
    .line 162
    cmp-long v13, v13, v21

    .line 163
    .line 164
    if-eqz v13, :cond_d

    .line 165
    .line 166
    sub-int v13, v0, v2

    .line 167
    .line 168
    not-int v13, v13

    .line 169
    ushr-int/lit8 v13, v13, 0x1f

    .line 170
    .line 171
    rsub-int/lit8 v13, v13, 0x8

    .line 172
    .line 173
    const/4 v14, 0x0

    .line 174
    :goto_3
    if-ge v14, v13, :cond_b

    .line 175
    .line 176
    and-long v35, v11, v18

    .line 177
    .line 178
    cmp-long v35, v35, v16

    .line 179
    .line 180
    if-gez v35, :cond_a

    .line 181
    .line 182
    shl-int/lit8 v35, v0, 0x3

    .line 183
    .line 184
    add-int v35, v35, v14

    .line 185
    .line 186
    aget-object v35, v29, v35

    .line 187
    .line 188
    move-object/from16 v36, v3

    .line 189
    .line 190
    move-object/from16 v3, v35

    .line 191
    .line 192
    check-cast v3, Los0;

    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    move-wide/from16 v37, v11

    .line 198
    .line 199
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    iget-object v12, v3, Los0;->p:Lw13;

    .line 204
    .line 205
    if-nez v12, :cond_2

    .line 206
    .line 207
    move-object/from16 v12, v28

    .line 208
    .line 209
    :cond_2
    move/from16 v35, v14

    .line 210
    .line 211
    invoke-virtual {v3}, Los0;->h()Lns0;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    iget-object v14, v14, Lns0;->f:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {v12, v14, v11}, Lw13;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-nez v11, :cond_8

    .line 222
    .line 223
    invoke-virtual {v7, v3}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-eqz v3, :cond_6

    .line 228
    .line 229
    instance-of v11, v3, Llg2;

    .line 230
    .line 231
    if-eqz v11, :cond_7

    .line 232
    .line 233
    check-cast v3, Llg2;

    .line 234
    .line 235
    iget-object v11, v3, Llg2;->b:[Ljava/lang/Object;

    .line 236
    .line 237
    iget-object v3, v3, Llg2;->a:[J

    .line 238
    .line 239
    array-length v12, v3

    .line 240
    const/16 v25, 0x2

    .line 241
    .line 242
    add-int/lit8 v12, v12, -0x2

    .line 243
    .line 244
    if-ltz v12, :cond_6

    .line 245
    .line 246
    move/from16 v39, v9

    .line 247
    .line 248
    move/from16 v40, v10

    .line 249
    .line 250
    const/4 v14, 0x0

    .line 251
    :goto_4
    aget-wide v9, v3, v14

    .line 252
    .line 253
    move-object/from16 v41, v5

    .line 254
    .line 255
    move-object/from16 v42, v6

    .line 256
    .line 257
    not-long v5, v9

    .line 258
    shl-long v5, v5, v20

    .line 259
    .line 260
    and-long/2addr v5, v9

    .line 261
    and-long v5, v5, v21

    .line 262
    .line 263
    cmp-long v5, v5, v21

    .line 264
    .line 265
    if-eqz v5, :cond_5

    .line 266
    .line 267
    sub-int v5, v14, v12

    .line 268
    .line 269
    not-int v5, v5

    .line 270
    ushr-int/lit8 v5, v5, 0x1f

    .line 271
    .line 272
    rsub-int/lit8 v5, v5, 0x8

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    :goto_5
    if-ge v6, v5, :cond_4

    .line 276
    .line 277
    and-long v43, v9, v18

    .line 278
    .line 279
    cmp-long v43, v43, v16

    .line 280
    .line 281
    if-gez v43, :cond_3

    .line 282
    .line 283
    shl-int/lit8 v32, v14, 0x3

    .line 284
    .line 285
    add-int v32, v32, v6

    .line 286
    .line 287
    move-object/from16 v43, v3

    .line 288
    .line 289
    aget-object v3, v11, v32

    .line 290
    .line 291
    invoke-virtual {v8, v3}, Llg2;->a(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    const/16 v32, 0x1

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    const/4 v3, 0x0

    .line 299
    goto/16 :goto_10

    .line 300
    .line 301
    :cond_3
    move-object/from16 v43, v3

    .line 302
    .line 303
    :goto_6
    shr-long v9, v9, v23

    .line 304
    .line 305
    add-int/lit8 v6, v6, 0x1

    .line 306
    .line 307
    move-object/from16 v3, v43

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_4
    move-object/from16 v43, v3

    .line 311
    .line 312
    move/from16 v3, v23

    .line 313
    .line 314
    if-ne v5, v3, :cond_9

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_5
    move-object/from16 v43, v3

    .line 318
    .line 319
    :goto_7
    if-eq v14, v12, :cond_9

    .line 320
    .line 321
    add-int/lit8 v14, v14, 0x1

    .line 322
    .line 323
    move-object/from16 v5, v41

    .line 324
    .line 325
    move-object/from16 v6, v42

    .line 326
    .line 327
    move-object/from16 v3, v43

    .line 328
    .line 329
    const/16 v23, 0x8

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_6
    move-object/from16 v41, v5

    .line 333
    .line 334
    move-object/from16 v42, v6

    .line 335
    .line 336
    move/from16 v39, v9

    .line 337
    .line 338
    move/from16 v40, v10

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_7
    move-object/from16 v41, v5

    .line 342
    .line 343
    move-object/from16 v42, v6

    .line 344
    .line 345
    move/from16 v39, v9

    .line 346
    .line 347
    move/from16 v40, v10

    .line 348
    .line 349
    invoke-virtual {v8, v3}, Llg2;->a(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    const/16 v32, 0x1

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_8
    move-object/from16 v41, v5

    .line 356
    .line 357
    move-object/from16 v42, v6

    .line 358
    .line 359
    move/from16 v39, v9

    .line 360
    .line 361
    move/from16 v40, v10

    .line 362
    .line 363
    invoke-virtual {v4, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_9
    :goto_8
    const/16 v3, 0x8

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_a
    move-object/from16 v36, v3

    .line 370
    .line 371
    move-object/from16 v41, v5

    .line 372
    .line 373
    move-object/from16 v42, v6

    .line 374
    .line 375
    move/from16 v39, v9

    .line 376
    .line 377
    move/from16 v40, v10

    .line 378
    .line 379
    move-wide/from16 v37, v11

    .line 380
    .line 381
    move/from16 v35, v14

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :goto_9
    shr-long v11, v37, v3

    .line 385
    .line 386
    add-int/lit8 v14, v35, 0x1

    .line 387
    .line 388
    move/from16 v23, v3

    .line 389
    .line 390
    move-object/from16 v3, v36

    .line 391
    .line 392
    move/from16 v9, v39

    .line 393
    .line 394
    move/from16 v10, v40

    .line 395
    .line 396
    move-object/from16 v5, v41

    .line 397
    .line 398
    move-object/from16 v6, v42

    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_b
    move-object/from16 v36, v3

    .line 403
    .line 404
    move-object/from16 v41, v5

    .line 405
    .line 406
    move-object/from16 v42, v6

    .line 407
    .line 408
    move/from16 v39, v9

    .line 409
    .line 410
    move/from16 v40, v10

    .line 411
    .line 412
    move/from16 v3, v23

    .line 413
    .line 414
    if-ne v13, v3, :cond_c

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_c
    move/from16 v12, v32

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_d
    move-object/from16 v36, v3

    .line 421
    .line 422
    move-object/from16 v41, v5

    .line 423
    .line 424
    move-object/from16 v42, v6

    .line 425
    .line 426
    move/from16 v39, v9

    .line 427
    .line 428
    move/from16 v40, v10

    .line 429
    .line 430
    :goto_a
    if-eq v0, v2, :cond_c

    .line 431
    .line 432
    add-int/lit8 v0, v0, 0x1

    .line 433
    .line 434
    move-wide/from16 v13, v33

    .line 435
    .line 436
    move-object/from16 v3, v36

    .line 437
    .line 438
    move/from16 v9, v39

    .line 439
    .line 440
    move/from16 v10, v40

    .line 441
    .line 442
    move-object/from16 v5, v41

    .line 443
    .line 444
    move-object/from16 v6, v42

    .line 445
    .line 446
    const/16 v23, 0x8

    .line 447
    .line 448
    goto/16 :goto_2

    .line 449
    .line 450
    :cond_e
    move-object/from16 v36, v3

    .line 451
    .line 452
    move-object/from16 v41, v5

    .line 453
    .line 454
    move-object/from16 v42, v6

    .line 455
    .line 456
    move/from16 v39, v9

    .line 457
    .line 458
    move/from16 v40, v10

    .line 459
    .line 460
    move/from16 v31, v11

    .line 461
    .line 462
    move-wide/from16 v33, v13

    .line 463
    .line 464
    :goto_b
    move-object/from16 v2, v42

    .line 465
    .line 466
    :cond_f
    :goto_c
    const/4 v3, 0x0

    .line 467
    goto/16 :goto_f

    .line 468
    .line 469
    :cond_10
    move-object/from16 v36, v3

    .line 470
    .line 471
    move-object/from16 v41, v5

    .line 472
    .line 473
    move-object/from16 v42, v6

    .line 474
    .line 475
    move/from16 v39, v9

    .line 476
    .line 477
    move/from16 v40, v10

    .line 478
    .line 479
    move/from16 v31, v11

    .line 480
    .line 481
    move-wide/from16 v33, v13

    .line 482
    .line 483
    check-cast v0, Los0;

    .line 484
    .line 485
    move-object/from16 v2, v42

    .line 486
    .line 487
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    iget-object v5, v0, Los0;->p:Lw13;

    .line 492
    .line 493
    if-nez v5, :cond_11

    .line 494
    .line 495
    move-object/from16 v5, v28

    .line 496
    .line 497
    :cond_11
    invoke-virtual {v0}, Los0;->h()Lns0;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    iget-object v6, v6, Lns0;->f:Ljava/lang/Object;

    .line 502
    .line 503
    invoke-virtual {v5, v6, v3}, Lw13;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-nez v3, :cond_16

    .line 508
    .line 509
    invoke-virtual {v7, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-eqz v0, :cond_f

    .line 514
    .line 515
    instance-of v3, v0, Llg2;

    .line 516
    .line 517
    if-eqz v3, :cond_15

    .line 518
    .line 519
    check-cast v0, Llg2;

    .line 520
    .line 521
    iget-object v3, v0, Llg2;->b:[Ljava/lang/Object;

    .line 522
    .line 523
    iget-object v0, v0, Llg2;->a:[J

    .line 524
    .line 525
    array-length v5, v0

    .line 526
    const/16 v25, 0x2

    .line 527
    .line 528
    add-int/lit8 v5, v5, -0x2

    .line 529
    .line 530
    if-ltz v5, :cond_f

    .line 531
    .line 532
    const/4 v6, 0x0

    .line 533
    :goto_d
    aget-wide v9, v0, v6

    .line 534
    .line 535
    not-long v13, v9

    .line 536
    shl-long v13, v13, v20

    .line 537
    .line 538
    and-long/2addr v13, v9

    .line 539
    and-long v13, v13, v21

    .line 540
    .line 541
    cmp-long v11, v13, v21

    .line 542
    .line 543
    if-eqz v11, :cond_14

    .line 544
    .line 545
    sub-int v11, v6, v5

    .line 546
    .line 547
    not-int v11, v11

    .line 548
    ushr-int/lit8 v11, v11, 0x1f

    .line 549
    .line 550
    const/16 v23, 0x8

    .line 551
    .line 552
    rsub-int/lit8 v13, v11, 0x8

    .line 553
    .line 554
    const/4 v11, 0x0

    .line 555
    :goto_e
    if-ge v11, v13, :cond_13

    .line 556
    .line 557
    and-long v29, v9, v18

    .line 558
    .line 559
    cmp-long v14, v29, v16

    .line 560
    .line 561
    if-gez v14, :cond_12

    .line 562
    .line 563
    shl-int/lit8 v12, v6, 0x3

    .line 564
    .line 565
    add-int/2addr v12, v11

    .line 566
    aget-object v12, v3, v12

    .line 567
    .line 568
    invoke-virtual {v8, v12}, Llg2;->a(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    const/4 v12, 0x1

    .line 572
    :cond_12
    const/16 v14, 0x8

    .line 573
    .line 574
    shr-long/2addr v9, v14

    .line 575
    add-int/lit8 v11, v11, 0x1

    .line 576
    .line 577
    goto :goto_e

    .line 578
    :cond_13
    const/16 v14, 0x8

    .line 579
    .line 580
    if-ne v13, v14, :cond_f

    .line 581
    .line 582
    :cond_14
    if-eq v6, v5, :cond_f

    .line 583
    .line 584
    add-int/lit8 v6, v6, 0x1

    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_15
    invoke-virtual {v8, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    const/4 v12, 0x1

    .line 591
    goto :goto_c

    .line 592
    :cond_16
    invoke-virtual {v4, v0}, Lug2;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    .line 594
    .line 595
    goto/16 :goto_c

    .line 596
    .line 597
    :cond_17
    move-object/from16 v36, v3

    .line 598
    .line 599
    move-object/from16 v41, v5

    .line 600
    .line 601
    move-object v2, v6

    .line 602
    move/from16 v39, v9

    .line 603
    .line 604
    move/from16 v40, v10

    .line 605
    .line 606
    move/from16 v31, v11

    .line 607
    .line 608
    move-wide/from16 v33, v13

    .line 609
    .line 610
    goto/16 :goto_c

    .line 611
    .line 612
    :goto_f
    iput-boolean v3, v1, Lhp3;->j:Z

    .line 613
    .line 614
    goto :goto_11

    .line 615
    :goto_10
    iput-boolean v3, v1, Lhp3;->j:Z

    .line 616
    .line 617
    throw v0

    .line 618
    :cond_18
    move-object/from16 v36, v3

    .line 619
    .line 620
    move-object/from16 v41, v5

    .line 621
    .line 622
    move-object v2, v6

    .line 623
    move/from16 v39, v9

    .line 624
    .line 625
    move/from16 v40, v10

    .line 626
    .line 627
    move/from16 v31, v11

    .line 628
    .line 629
    move-wide/from16 v33, v13

    .line 630
    .line 631
    :goto_11
    invoke-virtual {v7, v15}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    if-eqz v0, :cond_1d

    .line 636
    .line 637
    instance-of v3, v0, Llg2;

    .line 638
    .line 639
    if-eqz v3, :cond_1c

    .line 640
    .line 641
    check-cast v0, Llg2;

    .line 642
    .line 643
    iget-object v3, v0, Llg2;->b:[Ljava/lang/Object;

    .line 644
    .line 645
    iget-object v0, v0, Llg2;->a:[J

    .line 646
    .line 647
    array-length v5, v0

    .line 648
    const/16 v25, 0x2

    .line 649
    .line 650
    add-int/lit8 v5, v5, -0x2

    .line 651
    .line 652
    if-ltz v5, :cond_1d

    .line 653
    .line 654
    const/4 v6, 0x0

    .line 655
    :goto_12
    aget-wide v9, v0, v6

    .line 656
    .line 657
    not-long v13, v9

    .line 658
    shl-long v13, v13, v20

    .line 659
    .line 660
    and-long/2addr v13, v9

    .line 661
    and-long v13, v13, v21

    .line 662
    .line 663
    cmp-long v11, v13, v21

    .line 664
    .line 665
    if-eqz v11, :cond_1b

    .line 666
    .line 667
    sub-int v11, v6, v5

    .line 668
    .line 669
    not-int v11, v11

    .line 670
    ushr-int/lit8 v11, v11, 0x1f

    .line 671
    .line 672
    const/16 v23, 0x8

    .line 673
    .line 674
    rsub-int/lit8 v13, v11, 0x8

    .line 675
    .line 676
    move-wide v10, v9

    .line 677
    const/4 v9, 0x0

    .line 678
    :goto_13
    if-ge v9, v13, :cond_1a

    .line 679
    .line 680
    and-long v14, v10, v18

    .line 681
    .line 682
    cmp-long v14, v14, v16

    .line 683
    .line 684
    if-gez v14, :cond_19

    .line 685
    .line 686
    shl-int/lit8 v12, v6, 0x3

    .line 687
    .line 688
    add-int/2addr v12, v9

    .line 689
    aget-object v12, v3, v12

    .line 690
    .line 691
    invoke-virtual {v8, v12}, Llg2;->a(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    const/4 v12, 0x1

    .line 695
    :cond_19
    const/16 v14, 0x8

    .line 696
    .line 697
    shr-long/2addr v10, v14

    .line 698
    add-int/lit8 v9, v9, 0x1

    .line 699
    .line 700
    goto :goto_13

    .line 701
    :cond_1a
    const/16 v14, 0x8

    .line 702
    .line 703
    if-ne v13, v14, :cond_1d

    .line 704
    .line 705
    :cond_1b
    if-eq v6, v5, :cond_1d

    .line 706
    .line 707
    add-int/lit8 v6, v6, 0x1

    .line 708
    .line 709
    goto :goto_12

    .line 710
    :cond_1c
    invoke-virtual {v8, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    const/4 v12, 0x1

    .line 714
    :cond_1d
    :goto_14
    const/16 v14, 0x8

    .line 715
    .line 716
    goto :goto_16

    .line 717
    :cond_1e
    move-object/from16 v26, v0

    .line 718
    .line 719
    move-object/from16 v28, v2

    .line 720
    .line 721
    :goto_15
    move-object/from16 v36, v3

    .line 722
    .line 723
    move-object/from16 v41, v5

    .line 724
    .line 725
    move-object v2, v6

    .line 726
    move/from16 v39, v9

    .line 727
    .line 728
    move/from16 v40, v10

    .line 729
    .line 730
    move/from16 v31, v11

    .line 731
    .line 732
    move-wide/from16 v33, v13

    .line 733
    .line 734
    goto :goto_14

    .line 735
    :goto_16
    shr-long v5, v33, v14

    .line 736
    .line 737
    add-int/lit8 v11, v31, 0x1

    .line 738
    .line 739
    move/from16 v23, v14

    .line 740
    .line 741
    move-object/from16 v0, v26

    .line 742
    .line 743
    move-object/from16 v3, v36

    .line 744
    .line 745
    move/from16 v9, v39

    .line 746
    .line 747
    move/from16 v10, v40

    .line 748
    .line 749
    move-wide v13, v5

    .line 750
    move-object/from16 v5, v41

    .line 751
    .line 752
    move-object v6, v2

    .line 753
    move-object/from16 v2, v28

    .line 754
    .line 755
    goto/16 :goto_1

    .line 756
    .line 757
    :cond_1f
    move-object/from16 v26, v0

    .line 758
    .line 759
    move-object/from16 v28, v2

    .line 760
    .line 761
    move-object/from16 v36, v3

    .line 762
    .line 763
    move-object/from16 v41, v5

    .line 764
    .line 765
    move-object v2, v6

    .line 766
    move/from16 v39, v9

    .line 767
    .line 768
    move v13, v10

    .line 769
    move/from16 v14, v23

    .line 770
    .line 771
    if-ne v13, v14, :cond_22

    .line 772
    .line 773
    move/from16 v9, v39

    .line 774
    .line 775
    :goto_17
    move/from16 v15, p1

    .line 776
    .line 777
    goto :goto_18

    .line 778
    :cond_20
    move-object/from16 v26, v0

    .line 779
    .line 780
    move-object/from16 v28, v2

    .line 781
    .line 782
    move-object/from16 v36, v3

    .line 783
    .line 784
    move-object/from16 v41, v5

    .line 785
    .line 786
    move-object v2, v6

    .line 787
    goto :goto_17

    .line 788
    :goto_18
    if-eq v15, v9, :cond_22

    .line 789
    .line 790
    add-int/lit8 v11, v15, 0x1

    .line 791
    .line 792
    move-object v6, v2

    .line 793
    move-object/from16 v0, v26

    .line 794
    .line 795
    move-object/from16 v2, v28

    .line 796
    .line 797
    move-object/from16 v3, v36

    .line 798
    .line 799
    move-object/from16 v5, v41

    .line 800
    .line 801
    const/4 v10, 0x2

    .line 802
    goto/16 :goto_0

    .line 803
    .line 804
    :cond_21
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    const/4 v12, 0x0

    .line 810
    :cond_22
    :goto_19
    const/4 v5, 0x0

    .line 811
    goto/16 :goto_33

    .line 812
    .line 813
    :cond_23
    move-object/from16 v28, v2

    .line 814
    .line 815
    move-object/from16 v41, v5

    .line 816
    .line 817
    move-object v2, v6

    .line 818
    const/16 v20, 0x7

    .line 819
    .line 820
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    check-cast v0, Ljava/lang/Iterable;

    .line 826
    .line 827
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    const/4 v3, 0x0

    .line 832
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    if-eqz v5, :cond_44

    .line 837
    .line 838
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    instance-of v6, v5, Lcs3;

    .line 843
    .line 844
    if-eqz v6, :cond_24

    .line 845
    .line 846
    move-object v6, v5

    .line 847
    check-cast v6, Lcs3;

    .line 848
    .line 849
    const/4 v9, 0x2

    .line 850
    invoke-virtual {v6, v9}, Lcs3;->c(I)Z

    .line 851
    .line 852
    .line 853
    move-result v6

    .line 854
    if-nez v6, :cond_24

    .line 855
    .line 856
    move-object/from16 p1, v0

    .line 857
    .line 858
    const/4 v5, 0x0

    .line 859
    goto/16 :goto_32

    .line 860
    .line 861
    :cond_24
    iget-boolean v6, v1, Lhp3;->j:Z

    .line 862
    .line 863
    if-nez v6, :cond_3e

    .line 864
    .line 865
    move-object/from16 v6, v41

    .line 866
    .line 867
    invoke-virtual {v6, v5}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v9

    .line 871
    if-eqz v9, :cond_3d

    .line 872
    .line 873
    const/4 v9, 0x1

    .line 874
    iput-boolean v9, v1, Lhp3;->j:Z

    .line 875
    .line 876
    :try_start_1
    invoke-virtual {v6, v5}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v10

    .line 880
    if-eqz v10, :cond_3c

    .line 881
    .line 882
    instance-of v11, v10, Llg2;

    .line 883
    .line 884
    if-eqz v11, :cond_32

    .line 885
    .line 886
    check-cast v10, Llg2;

    .line 887
    .line 888
    iget-object v11, v10, Llg2;->b:[Ljava/lang/Object;

    .line 889
    .line 890
    iget-object v10, v10, Llg2;->a:[J

    .line 891
    .line 892
    array-length v12, v10

    .line 893
    const/16 v25, 0x2

    .line 894
    .line 895
    add-int/lit8 v12, v12, -0x2

    .line 896
    .line 897
    if-ltz v12, :cond_3c

    .line 898
    .line 899
    move v13, v3

    .line 900
    const/4 v3, 0x0

    .line 901
    :goto_1b
    aget-wide v14, v10, v3

    .line 902
    .line 903
    move-object/from16 v26, v10

    .line 904
    .line 905
    not-long v9, v14

    .line 906
    shl-long v9, v9, v20

    .line 907
    .line 908
    and-long/2addr v9, v14

    .line 909
    and-long v9, v9, v21

    .line 910
    .line 911
    cmp-long v9, v9, v21

    .line 912
    .line 913
    if-eqz v9, :cond_31

    .line 914
    .line 915
    sub-int v9, v3, v12

    .line 916
    .line 917
    not-int v9, v9

    .line 918
    ushr-int/lit8 v9, v9, 0x1f

    .line 919
    .line 920
    const/16 v23, 0x8

    .line 921
    .line 922
    rsub-int/lit8 v9, v9, 0x8

    .line 923
    .line 924
    const/4 v10, 0x0

    .line 925
    :goto_1c
    if-ge v10, v9, :cond_2f

    .line 926
    .line 927
    and-long v29, v14, v18

    .line 928
    .line 929
    cmp-long v29, v29, v16

    .line 930
    .line 931
    if-gez v29, :cond_2e

    .line 932
    .line 933
    shl-int/lit8 v29, v3, 0x3

    .line 934
    .line 935
    add-int v29, v29, v10

    .line 936
    .line 937
    aget-object v29, v11, v29

    .line 938
    .line 939
    move-object/from16 p1, v0

    .line 940
    .line 941
    move-object/from16 v0, v29

    .line 942
    .line 943
    check-cast v0, Los0;

    .line 944
    .line 945
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    .line 947
    .line 948
    move-object/from16 v41, v6

    .line 949
    .line 950
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v6

    .line 954
    move/from16 v29, v10

    .line 955
    .line 956
    iget-object v10, v0, Los0;->p:Lw13;

    .line 957
    .line 958
    if-nez v10, :cond_25

    .line 959
    .line 960
    move-object/from16 v10, v28

    .line 961
    .line 962
    :cond_25
    move-object/from16 v30, v11

    .line 963
    .line 964
    invoke-virtual {v0}, Los0;->h()Lns0;

    .line 965
    .line 966
    .line 967
    move-result-object v11

    .line 968
    iget-object v11, v11, Lns0;->f:Ljava/lang/Object;

    .line 969
    .line 970
    invoke-virtual {v10, v11, v6}, Lw13;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-result v6

    .line 974
    if-nez v6, :cond_2d

    .line 975
    .line 976
    invoke-virtual {v7, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    if-eqz v0, :cond_2c

    .line 981
    .line 982
    instance-of v6, v0, Llg2;

    .line 983
    .line 984
    if-eqz v6, :cond_2b

    .line 985
    .line 986
    check-cast v0, Llg2;

    .line 987
    .line 988
    iget-object v6, v0, Llg2;->b:[Ljava/lang/Object;

    .line 989
    .line 990
    iget-object v0, v0, Llg2;->a:[J

    .line 991
    .line 992
    array-length v10, v0

    .line 993
    const/16 v25, 0x2

    .line 994
    .line 995
    add-int/lit8 v10, v10, -0x2

    .line 996
    .line 997
    if-ltz v10, :cond_2c

    .line 998
    .line 999
    move-wide/from16 v31, v14

    .line 1000
    .line 1001
    const/4 v11, 0x0

    .line 1002
    move v15, v13

    .line 1003
    :goto_1d
    aget-wide v13, v0, v11

    .line 1004
    .line 1005
    move-object/from16 v33, v5

    .line 1006
    .line 1007
    move-object/from16 v34, v6

    .line 1008
    .line 1009
    not-long v5, v13

    .line 1010
    shl-long v5, v5, v20

    .line 1011
    .line 1012
    and-long/2addr v5, v13

    .line 1013
    and-long v5, v5, v21

    .line 1014
    .line 1015
    cmp-long v5, v5, v21

    .line 1016
    .line 1017
    if-eqz v5, :cond_29

    .line 1018
    .line 1019
    sub-int v5, v11, v10

    .line 1020
    .line 1021
    not-int v5, v5

    .line 1022
    ushr-int/lit8 v5, v5, 0x1f

    .line 1023
    .line 1024
    const/16 v23, 0x8

    .line 1025
    .line 1026
    rsub-int/lit8 v5, v5, 0x8

    .line 1027
    .line 1028
    const/4 v6, 0x0

    .line 1029
    :goto_1e
    if-ge v6, v5, :cond_27

    .line 1030
    .line 1031
    and-long v35, v13, v18

    .line 1032
    .line 1033
    cmp-long v35, v35, v16

    .line 1034
    .line 1035
    if-gez v35, :cond_26

    .line 1036
    .line 1037
    shl-int/lit8 v15, v11, 0x3

    .line 1038
    .line 1039
    add-int/2addr v15, v6

    .line 1040
    aget-object v15, v34, v15

    .line 1041
    .line 1042
    invoke-virtual {v8, v15}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    const/4 v15, 0x1

    .line 1046
    :cond_26
    move-object/from16 v35, v0

    .line 1047
    .line 1048
    const/16 v0, 0x8

    .line 1049
    .line 1050
    goto :goto_1f

    .line 1051
    :catchall_1
    move-exception v0

    .line 1052
    const/4 v5, 0x0

    .line 1053
    goto/16 :goto_2e

    .line 1054
    .line 1055
    :goto_1f
    shr-long/2addr v13, v0

    .line 1056
    add-int/lit8 v6, v6, 0x1

    .line 1057
    .line 1058
    move-object/from16 v0, v35

    .line 1059
    .line 1060
    goto :goto_1e

    .line 1061
    :cond_27
    move-object/from16 v35, v0

    .line 1062
    .line 1063
    const/16 v0, 0x8

    .line 1064
    .line 1065
    if-ne v5, v0, :cond_28

    .line 1066
    .line 1067
    goto :goto_20

    .line 1068
    :cond_28
    move v0, v15

    .line 1069
    goto :goto_22

    .line 1070
    :cond_29
    move-object/from16 v35, v0

    .line 1071
    .line 1072
    :goto_20
    if-eq v11, v10, :cond_2a

    .line 1073
    .line 1074
    add-int/lit8 v11, v11, 0x1

    .line 1075
    .line 1076
    move-object/from16 v5, v33

    .line 1077
    .line 1078
    move-object/from16 v6, v34

    .line 1079
    .line 1080
    move-object/from16 v0, v35

    .line 1081
    .line 1082
    goto :goto_1d

    .line 1083
    :cond_2a
    move v13, v15

    .line 1084
    goto :goto_21

    .line 1085
    :cond_2b
    move-object/from16 v33, v5

    .line 1086
    .line 1087
    move-wide/from16 v31, v14

    .line 1088
    .line 1089
    invoke-virtual {v8, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    const/4 v0, 0x1

    .line 1093
    goto :goto_22

    .line 1094
    :cond_2c
    move-object/from16 v33, v5

    .line 1095
    .line 1096
    move-wide/from16 v31, v14

    .line 1097
    .line 1098
    :goto_21
    move v0, v13

    .line 1099
    :goto_22
    move v13, v0

    .line 1100
    goto :goto_23

    .line 1101
    :cond_2d
    move-object/from16 v33, v5

    .line 1102
    .line 1103
    move-wide/from16 v31, v14

    .line 1104
    .line 1105
    invoke-virtual {v4, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 1106
    .line 1107
    .line 1108
    :goto_23
    const/16 v14, 0x8

    .line 1109
    .line 1110
    goto :goto_24

    .line 1111
    :cond_2e
    move-object/from16 p1, v0

    .line 1112
    .line 1113
    move-object/from16 v33, v5

    .line 1114
    .line 1115
    move-object/from16 v41, v6

    .line 1116
    .line 1117
    move/from16 v29, v10

    .line 1118
    .line 1119
    move-object/from16 v30, v11

    .line 1120
    .line 1121
    move-wide/from16 v31, v14

    .line 1122
    .line 1123
    goto :goto_23

    .line 1124
    :goto_24
    shr-long v5, v31, v14

    .line 1125
    .line 1126
    add-int/lit8 v10, v29, 0x1

    .line 1127
    .line 1128
    move-object/from16 v0, p1

    .line 1129
    .line 1130
    move-wide v14, v5

    .line 1131
    move-object/from16 v11, v30

    .line 1132
    .line 1133
    move-object/from16 v5, v33

    .line 1134
    .line 1135
    move-object/from16 v6, v41

    .line 1136
    .line 1137
    goto/16 :goto_1c

    .line 1138
    .line 1139
    :cond_2f
    move-object/from16 p1, v0

    .line 1140
    .line 1141
    move-object/from16 v33, v5

    .line 1142
    .line 1143
    move-object/from16 v41, v6

    .line 1144
    .line 1145
    move-object/from16 v30, v11

    .line 1146
    .line 1147
    const/16 v14, 0x8

    .line 1148
    .line 1149
    if-ne v9, v14, :cond_30

    .line 1150
    .line 1151
    goto :goto_25

    .line 1152
    :cond_30
    move v3, v13

    .line 1153
    goto :goto_26

    .line 1154
    :cond_31
    move-object/from16 p1, v0

    .line 1155
    .line 1156
    move-object/from16 v33, v5

    .line 1157
    .line 1158
    move-object/from16 v41, v6

    .line 1159
    .line 1160
    move-object/from16 v30, v11

    .line 1161
    .line 1162
    :goto_25
    if-eq v3, v12, :cond_30

    .line 1163
    .line 1164
    add-int/lit8 v3, v3, 0x1

    .line 1165
    .line 1166
    move-object/from16 v0, p1

    .line 1167
    .line 1168
    move-object/from16 v10, v26

    .line 1169
    .line 1170
    move-object/from16 v11, v30

    .line 1171
    .line 1172
    move-object/from16 v5, v33

    .line 1173
    .line 1174
    move-object/from16 v6, v41

    .line 1175
    .line 1176
    const/4 v9, 0x1

    .line 1177
    goto/16 :goto_1b

    .line 1178
    .line 1179
    :goto_26
    const/4 v5, 0x0

    .line 1180
    goto/16 :goto_2c

    .line 1181
    .line 1182
    :cond_32
    move-object/from16 p1, v0

    .line 1183
    .line 1184
    move-object/from16 v33, v5

    .line 1185
    .line 1186
    move-object/from16 v41, v6

    .line 1187
    .line 1188
    check-cast v10, Los0;

    .line 1189
    .line 1190
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    iget-object v5, v10, Los0;->p:Lw13;

    .line 1195
    .line 1196
    if-nez v5, :cond_33

    .line 1197
    .line 1198
    move-object/from16 v5, v28

    .line 1199
    .line 1200
    :cond_33
    invoke-virtual {v10}, Los0;->h()Lns0;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v6

    .line 1204
    iget-object v6, v6, Lns0;->f:Ljava/lang/Object;

    .line 1205
    .line 1206
    invoke-virtual {v5, v6, v0}, Lw13;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    if-nez v0, :cond_3b

    .line 1211
    .line 1212
    invoke-virtual {v7, v10}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    if-eqz v0, :cond_3a

    .line 1217
    .line 1218
    instance-of v5, v0, Llg2;

    .line 1219
    .line 1220
    if-eqz v5, :cond_39

    .line 1221
    .line 1222
    check-cast v0, Llg2;

    .line 1223
    .line 1224
    iget-object v5, v0, Llg2;->b:[Ljava/lang/Object;

    .line 1225
    .line 1226
    iget-object v0, v0, Llg2;->a:[J

    .line 1227
    .line 1228
    array-length v6, v0

    .line 1229
    const/16 v25, 0x2

    .line 1230
    .line 1231
    add-int/lit8 v6, v6, -0x2

    .line 1232
    .line 1233
    if-ltz v6, :cond_3a

    .line 1234
    .line 1235
    move v9, v3

    .line 1236
    const/4 v3, 0x0

    .line 1237
    :goto_27
    aget-wide v10, v0, v3

    .line 1238
    .line 1239
    not-long v12, v10

    .line 1240
    shl-long v12, v12, v20

    .line 1241
    .line 1242
    and-long/2addr v12, v10

    .line 1243
    and-long v12, v12, v21

    .line 1244
    .line 1245
    cmp-long v12, v12, v21

    .line 1246
    .line 1247
    if-eqz v12, :cond_37

    .line 1248
    .line 1249
    sub-int v12, v3, v6

    .line 1250
    .line 1251
    not-int v12, v12

    .line 1252
    ushr-int/lit8 v12, v12, 0x1f

    .line 1253
    .line 1254
    const/16 v23, 0x8

    .line 1255
    .line 1256
    rsub-int/lit8 v13, v12, 0x8

    .line 1257
    .line 1258
    move-wide v11, v10

    .line 1259
    const/4 v10, 0x0

    .line 1260
    :goto_28
    if-ge v10, v13, :cond_35

    .line 1261
    .line 1262
    and-long v14, v11, v18

    .line 1263
    .line 1264
    cmp-long v14, v14, v16

    .line 1265
    .line 1266
    if-gez v14, :cond_34

    .line 1267
    .line 1268
    shl-int/lit8 v9, v3, 0x3

    .line 1269
    .line 1270
    add-int/2addr v9, v10

    .line 1271
    aget-object v9, v5, v9

    .line 1272
    .line 1273
    invoke-virtual {v8, v9}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    const/4 v9, 0x1

    .line 1277
    :cond_34
    const/16 v14, 0x8

    .line 1278
    .line 1279
    shr-long/2addr v11, v14

    .line 1280
    add-int/lit8 v10, v10, 0x1

    .line 1281
    .line 1282
    goto :goto_28

    .line 1283
    :cond_35
    const/16 v14, 0x8

    .line 1284
    .line 1285
    if-ne v13, v14, :cond_36

    .line 1286
    .line 1287
    goto :goto_29

    .line 1288
    :cond_36
    move v0, v9

    .line 1289
    goto :goto_2b

    .line 1290
    :cond_37
    :goto_29
    if-eq v3, v6, :cond_38

    .line 1291
    .line 1292
    add-int/lit8 v3, v3, 0x1

    .line 1293
    .line 1294
    goto :goto_27

    .line 1295
    :cond_38
    move v3, v9

    .line 1296
    goto :goto_2a

    .line 1297
    :cond_39
    invoke-virtual {v8, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    const/4 v0, 0x1

    .line 1301
    goto :goto_2b

    .line 1302
    :cond_3a
    :goto_2a
    move v0, v3

    .line 1303
    :goto_2b
    move v3, v0

    .line 1304
    goto :goto_26

    .line 1305
    :cond_3b
    invoke-virtual {v4, v10}, Lug2;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_26

    .line 1309
    .line 1310
    :cond_3c
    move-object/from16 p1, v0

    .line 1311
    .line 1312
    move-object/from16 v33, v5

    .line 1313
    .line 1314
    move-object/from16 v41, v6

    .line 1315
    .line 1316
    goto/16 :goto_26

    .line 1317
    .line 1318
    :goto_2c
    iput-boolean v5, v1, Lhp3;->j:Z

    .line 1319
    .line 1320
    :goto_2d
    move v0, v3

    .line 1321
    move-object/from16 v3, v33

    .line 1322
    .line 1323
    goto :goto_2f

    .line 1324
    :goto_2e
    iput-boolean v5, v1, Lhp3;->j:Z

    .line 1325
    .line 1326
    throw v0

    .line 1327
    :cond_3d
    move-object/from16 v41, v6

    .line 1328
    .line 1329
    :cond_3e
    move-object/from16 p1, v0

    .line 1330
    .line 1331
    move-object/from16 v33, v5

    .line 1332
    .line 1333
    const/4 v5, 0x0

    .line 1334
    goto :goto_2d

    .line 1335
    :goto_2f
    invoke-virtual {v7, v3}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    if-eqz v3, :cond_43

    .line 1340
    .line 1341
    instance-of v6, v3, Llg2;

    .line 1342
    .line 1343
    if-eqz v6, :cond_42

    .line 1344
    .line 1345
    check-cast v3, Llg2;

    .line 1346
    .line 1347
    iget-object v6, v3, Llg2;->b:[Ljava/lang/Object;

    .line 1348
    .line 1349
    iget-object v3, v3, Llg2;->a:[J

    .line 1350
    .line 1351
    array-length v9, v3

    .line 1352
    const/16 v25, 0x2

    .line 1353
    .line 1354
    add-int/lit8 v9, v9, -0x2

    .line 1355
    .line 1356
    if-ltz v9, :cond_43

    .line 1357
    .line 1358
    move v10, v5

    .line 1359
    :goto_30
    aget-wide v11, v3, v10

    .line 1360
    .line 1361
    not-long v13, v11

    .line 1362
    shl-long v13, v13, v20

    .line 1363
    .line 1364
    and-long/2addr v13, v11

    .line 1365
    and-long v13, v13, v21

    .line 1366
    .line 1367
    cmp-long v13, v13, v21

    .line 1368
    .line 1369
    if-eqz v13, :cond_41

    .line 1370
    .line 1371
    sub-int v13, v10, v9

    .line 1372
    .line 1373
    not-int v13, v13

    .line 1374
    ushr-int/lit8 v13, v13, 0x1f

    .line 1375
    .line 1376
    const/16 v23, 0x8

    .line 1377
    .line 1378
    rsub-int/lit8 v13, v13, 0x8

    .line 1379
    .line 1380
    move-wide v14, v11

    .line 1381
    move v11, v5

    .line 1382
    :goto_31
    if-ge v11, v13, :cond_40

    .line 1383
    .line 1384
    and-long v26, v14, v18

    .line 1385
    .line 1386
    cmp-long v12, v26, v16

    .line 1387
    .line 1388
    if-gez v12, :cond_3f

    .line 1389
    .line 1390
    shl-int/lit8 v0, v10, 0x3

    .line 1391
    .line 1392
    add-int/2addr v0, v11

    .line 1393
    aget-object v0, v6, v0

    .line 1394
    .line 1395
    invoke-virtual {v8, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1396
    .line 1397
    .line 1398
    const/4 v0, 0x1

    .line 1399
    :cond_3f
    const/16 v12, 0x8

    .line 1400
    .line 1401
    shr-long/2addr v14, v12

    .line 1402
    add-int/lit8 v11, v11, 0x1

    .line 1403
    .line 1404
    goto :goto_31

    .line 1405
    :cond_40
    const/16 v12, 0x8

    .line 1406
    .line 1407
    if-ne v13, v12, :cond_43

    .line 1408
    .line 1409
    :cond_41
    if-eq v10, v9, :cond_43

    .line 1410
    .line 1411
    add-int/lit8 v10, v10, 0x1

    .line 1412
    .line 1413
    goto :goto_30

    .line 1414
    :cond_42
    invoke-virtual {v8, v3}, Llg2;->a(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    const/4 v0, 0x1

    .line 1418
    :cond_43
    move v3, v0

    .line 1419
    :goto_32
    move-object/from16 v0, p1

    .line 1420
    .line 1421
    goto/16 :goto_1a

    .line 1422
    .line 1423
    :cond_44
    move v12, v3

    .line 1424
    goto/16 :goto_19

    .line 1425
    .line 1426
    :goto_33
    iget-boolean v0, v1, Lhp3;->j:Z

    .line 1427
    .line 1428
    if-nez v0, :cond_4f

    .line 1429
    .line 1430
    iget v0, v4, Lug2;->p:I

    .line 1431
    .line 1432
    if-eqz v0, :cond_4f

    .line 1433
    .line 1434
    iget-object v2, v4, Lug2;->n:[Ljava/lang/Object;

    .line 1435
    .line 1436
    move v3, v5

    .line 1437
    :goto_34
    if-ge v3, v0, :cond_4e

    .line 1438
    .line 1439
    aget-object v6, v2, v3

    .line 1440
    .line 1441
    check-cast v6, Los0;

    .line 1442
    .line 1443
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v8

    .line 1447
    invoke-virtual {v8}, Lpo3;->g()J

    .line 1448
    .line 1449
    .line 1450
    move-result-wide v8

    .line 1451
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 1452
    .line 1453
    .line 1454
    move-result v8

    .line 1455
    invoke-virtual {v7, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v9

    .line 1459
    if-eqz v9, :cond_4c

    .line 1460
    .line 1461
    instance-of v10, v9, Llg2;

    .line 1462
    .line 1463
    iget-object v11, v1, Lhp3;->f:Lkg2;

    .line 1464
    .line 1465
    if-eqz v10, :cond_4a

    .line 1466
    .line 1467
    check-cast v9, Llg2;

    .line 1468
    .line 1469
    iget-object v10, v9, Llg2;->b:[Ljava/lang/Object;

    .line 1470
    .line 1471
    iget-object v9, v9, Llg2;->a:[J

    .line 1472
    .line 1473
    array-length v13, v9

    .line 1474
    const/16 v25, 0x2

    .line 1475
    .line 1476
    add-int/lit8 v13, v13, -0x2

    .line 1477
    .line 1478
    if-ltz v13, :cond_49

    .line 1479
    .line 1480
    move v14, v5

    .line 1481
    move-object/from16 p1, v6

    .line 1482
    .line 1483
    :goto_35
    aget-wide v5, v9, v14

    .line 1484
    .line 1485
    move-object v15, v2

    .line 1486
    move/from16 v24, v3

    .line 1487
    .line 1488
    not-long v2, v5

    .line 1489
    shl-long v2, v2, v20

    .line 1490
    .line 1491
    and-long/2addr v2, v5

    .line 1492
    and-long v2, v2, v21

    .line 1493
    .line 1494
    cmp-long v2, v2, v21

    .line 1495
    .line 1496
    if-eqz v2, :cond_48

    .line 1497
    .line 1498
    sub-int v2, v14, v13

    .line 1499
    .line 1500
    not-int v2, v2

    .line 1501
    ushr-int/lit8 v2, v2, 0x1f

    .line 1502
    .line 1503
    const/16 v23, 0x8

    .line 1504
    .line 1505
    rsub-int/lit8 v2, v2, 0x8

    .line 1506
    .line 1507
    const/4 v3, 0x0

    .line 1508
    :goto_36
    if-ge v3, v2, :cond_47

    .line 1509
    .line 1510
    and-long v28, v5, v18

    .line 1511
    .line 1512
    cmp-long v26, v28, v16

    .line 1513
    .line 1514
    if-gez v26, :cond_46

    .line 1515
    .line 1516
    shl-int/lit8 v26, v14, 0x3

    .line 1517
    .line 1518
    add-int v26, v26, v3

    .line 1519
    .line 1520
    move/from16 v28, v0

    .line 1521
    .line 1522
    aget-object v0, v10, v26

    .line 1523
    .line 1524
    invoke-virtual {v11, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v26

    .line 1528
    check-cast v26, Lcg2;

    .line 1529
    .line 1530
    move/from16 v29, v3

    .line 1531
    .line 1532
    if-nez v26, :cond_45

    .line 1533
    .line 1534
    new-instance v3, Lcg2;

    .line 1535
    .line 1536
    invoke-direct {v3}, Lcg2;-><init>()V

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v11, v0, v3}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1540
    .line 1541
    .line 1542
    :goto_37
    move-object/from16 v26, v4

    .line 1543
    .line 1544
    move-object/from16 v4, p1

    .line 1545
    .line 1546
    goto :goto_38

    .line 1547
    :cond_45
    move-object/from16 v3, v26

    .line 1548
    .line 1549
    goto :goto_37

    .line 1550
    :goto_38
    invoke-virtual {v1, v4, v8, v0, v3}, Lhp3;->b(Ljava/lang/Object;ILjava/lang/Object;Lcg2;)V

    .line 1551
    .line 1552
    .line 1553
    :goto_39
    const/16 v3, 0x8

    .line 1554
    .line 1555
    goto :goto_3a

    .line 1556
    :cond_46
    move/from16 v28, v0

    .line 1557
    .line 1558
    move/from16 v29, v3

    .line 1559
    .line 1560
    move-object/from16 v26, v4

    .line 1561
    .line 1562
    move-object/from16 v4, p1

    .line 1563
    .line 1564
    goto :goto_39

    .line 1565
    :goto_3a
    shr-long/2addr v5, v3

    .line 1566
    add-int/lit8 v0, v29, 0x1

    .line 1567
    .line 1568
    move v3, v0

    .line 1569
    move-object/from16 p1, v4

    .line 1570
    .line 1571
    move-object/from16 v4, v26

    .line 1572
    .line 1573
    move/from16 v0, v28

    .line 1574
    .line 1575
    goto :goto_36

    .line 1576
    :cond_47
    move/from16 v28, v0

    .line 1577
    .line 1578
    move-object/from16 v26, v4

    .line 1579
    .line 1580
    const/16 v3, 0x8

    .line 1581
    .line 1582
    move-object/from16 v4, p1

    .line 1583
    .line 1584
    if-ne v2, v3, :cond_4d

    .line 1585
    .line 1586
    goto :goto_3b

    .line 1587
    :cond_48
    move/from16 v28, v0

    .line 1588
    .line 1589
    move-object/from16 v26, v4

    .line 1590
    .line 1591
    const/16 v3, 0x8

    .line 1592
    .line 1593
    move-object/from16 v4, p1

    .line 1594
    .line 1595
    :goto_3b
    if-eq v14, v13, :cond_4d

    .line 1596
    .line 1597
    add-int/lit8 v14, v14, 0x1

    .line 1598
    .line 1599
    move-object/from16 p1, v4

    .line 1600
    .line 1601
    move-object v2, v15

    .line 1602
    move/from16 v3, v24

    .line 1603
    .line 1604
    move-object/from16 v4, v26

    .line 1605
    .line 1606
    move/from16 v0, v28

    .line 1607
    .line 1608
    goto :goto_35

    .line 1609
    :cond_49
    move/from16 v28, v0

    .line 1610
    .line 1611
    move-object v15, v2

    .line 1612
    move/from16 v24, v3

    .line 1613
    .line 1614
    move-object/from16 v26, v4

    .line 1615
    .line 1616
    const/16 v3, 0x8

    .line 1617
    .line 1618
    goto :goto_3c

    .line 1619
    :cond_4a
    move/from16 v28, v0

    .line 1620
    .line 1621
    move-object v15, v2

    .line 1622
    move/from16 v24, v3

    .line 1623
    .line 1624
    move-object/from16 v26, v4

    .line 1625
    .line 1626
    move-object v4, v6

    .line 1627
    const/16 v3, 0x8

    .line 1628
    .line 1629
    const/16 v25, 0x2

    .line 1630
    .line 1631
    invoke-virtual {v11, v9}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v0

    .line 1635
    check-cast v0, Lcg2;

    .line 1636
    .line 1637
    if-nez v0, :cond_4b

    .line 1638
    .line 1639
    new-instance v0, Lcg2;

    .line 1640
    .line 1641
    invoke-direct {v0}, Lcg2;-><init>()V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v11, v9, v0}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1645
    .line 1646
    .line 1647
    :cond_4b
    invoke-virtual {v1, v4, v8, v9, v0}, Lhp3;->b(Ljava/lang/Object;ILjava/lang/Object;Lcg2;)V

    .line 1648
    .line 1649
    .line 1650
    goto :goto_3c

    .line 1651
    :cond_4c
    move/from16 v28, v0

    .line 1652
    .line 1653
    move-object v15, v2

    .line 1654
    move/from16 v24, v3

    .line 1655
    .line 1656
    move-object/from16 v26, v4

    .line 1657
    .line 1658
    const/16 v3, 0x8

    .line 1659
    .line 1660
    const/16 v25, 0x2

    .line 1661
    .line 1662
    :cond_4d
    :goto_3c
    add-int/lit8 v0, v24, 0x1

    .line 1663
    .line 1664
    move v3, v0

    .line 1665
    move-object v2, v15

    .line 1666
    move-object/from16 v4, v26

    .line 1667
    .line 1668
    move/from16 v0, v28

    .line 1669
    .line 1670
    const/4 v5, 0x0

    .line 1671
    goto/16 :goto_34

    .line 1672
    .line 1673
    :cond_4e
    move-object/from16 v26, v4

    .line 1674
    .line 1675
    invoke-virtual/range {v26 .. v26}, Lug2;->h()V

    .line 1676
    .line 1677
    .line 1678
    :cond_4f
    return v12
.end method

.method public final b(Ljava/lang/Object;ILjava/lang/Object;Lcg2;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Lhp3;->k:I

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v3, v1}, Lcg2;->c(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-gez v4, :cond_1

    .line 20
    .line 21
    not-int v4, v4

    .line 22
    const/4 v6, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v6, v3, Lcg2;->c:[I

    .line 25
    .line 26
    aget v6, v6, v4

    .line 27
    .line 28
    :goto_0
    iget-object v7, v3, Lcg2;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v1, v7, v4

    .line 31
    .line 32
    iget-object v3, v3, Lcg2;->c:[I

    .line 33
    .line 34
    aput v2, v3, v4

    .line 35
    .line 36
    instance-of v3, v1, Los0;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    if-eq v6, v2, :cond_6

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    check-cast v2, Los0;

    .line 45
    .line 46
    invoke-virtual {v2}, Los0;->h()Lns0;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, v0, Lhp3;->m:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v7, v2, Lns0;->f:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v2, v2, Lns0;->e:Lcg2;

    .line 58
    .line 59
    iget-object v3, v0, Lhp3;->l:Lkg2;

    .line 60
    .line 61
    invoke-static {v3, v1}, Lht4;->B(Lkg2;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v2, Lcg2;->b:[Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v2, v2, Lcg2;->a:[J

    .line 67
    .line 68
    array-length v8, v2

    .line 69
    sub-int/2addr v8, v4

    .line 70
    if-ltz v8, :cond_6

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    :goto_1
    aget-wide v11, v2, v10

    .line 74
    .line 75
    not-long v13, v11

    .line 76
    const/4 v15, 0x7

    .line 77
    shl-long/2addr v13, v15

    .line 78
    and-long/2addr v13, v11

    .line 79
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    and-long/2addr v13, v15

    .line 85
    cmp-long v13, v13, v15

    .line 86
    .line 87
    if-eqz v13, :cond_5

    .line 88
    .line 89
    sub-int v13, v10, v8

    .line 90
    .line 91
    not-int v13, v13

    .line 92
    ushr-int/lit8 v13, v13, 0x1f

    .line 93
    .line 94
    const/16 v14, 0x8

    .line 95
    .line 96
    rsub-int/lit8 v13, v13, 0x8

    .line 97
    .line 98
    const/4 v15, 0x0

    .line 99
    :goto_2
    if-ge v15, v13, :cond_4

    .line 100
    .line 101
    const-wide/16 v16, 0xff

    .line 102
    .line 103
    and-long v16, v11, v16

    .line 104
    .line 105
    const-wide/16 v18, 0x80

    .line 106
    .line 107
    cmp-long v16, v16, v18

    .line 108
    .line 109
    if-gez v16, :cond_3

    .line 110
    .line 111
    shl-int/lit8 v16, v10, 0x3

    .line 112
    .line 113
    add-int v16, v16, v15

    .line 114
    .line 115
    aget-object v16, v7, v16

    .line 116
    .line 117
    move-object/from16 v9, v16

    .line 118
    .line 119
    check-cast v9, Lbs3;

    .line 120
    .line 121
    instance-of v5, v9, Lcs3;

    .line 122
    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    move-object v5, v9

    .line 126
    check-cast v5, Lcs3;

    .line 127
    .line 128
    invoke-virtual {v5, v4}, Lcs3;->f(I)V

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {v3, v9, v1}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    shr-long/2addr v11, v14

    .line 135
    add-int/lit8 v15, v15, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    if-ne v13, v14, :cond_6

    .line 139
    .line 140
    :cond_5
    if-eq v10, v8, :cond_6

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    const/4 v2, -0x1

    .line 146
    if-ne v6, v2, :cond_8

    .line 147
    .line 148
    instance-of v2, v1, Lcs3;

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    move-object v2, v1

    .line 153
    check-cast v2, Lcs3;

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Lcs3;->f(I)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, v0, Lhp3;->e:Lkg2;

    .line 159
    .line 160
    move-object/from16 v2, p3

    .line 161
    .line 162
    invoke-static {v0, v1, v2}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhp3;->e:Lkg2;

    .line 2
    .line 3
    invoke-static {v0, p2, p1}, Lht4;->A(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Los0;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lhp3;->l:Lkg2;

    .line 17
    .line 18
    invoke-static {p1, p2}, Lht4;->B(Lkg2;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lhp3;->m:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lhp3;->f:Lkg2;

    .line 4
    .line 5
    iget-object v2, v1, Lkg2;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    if-ltz v3, :cond_9

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    aget-wide v6, v2, v5

    .line 14
    .line 15
    not-long v8, v6

    .line 16
    const/4 v10, 0x7

    .line 17
    shl-long/2addr v8, v10

    .line 18
    and-long/2addr v8, v6

    .line 19
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v8, v11

    .line 25
    cmp-long v8, v8, v11

    .line 26
    .line 27
    if-eqz v8, :cond_8

    .line 28
    .line 29
    sub-int v8, v5, v3

    .line 30
    .line 31
    not-int v8, v8

    .line 32
    ushr-int/lit8 v8, v8, 0x1f

    .line 33
    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    rsub-int/lit8 v8, v8, 0x8

    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    :goto_1
    if-ge v13, v8, :cond_7

    .line 40
    .line 41
    const-wide/16 v14, 0xff

    .line 42
    .line 43
    and-long v16, v6, v14

    .line 44
    .line 45
    const-wide/16 v18, 0x80

    .line 46
    .line 47
    cmp-long v16, v16, v18

    .line 48
    .line 49
    if-gez v16, :cond_6

    .line 50
    .line 51
    shl-int/lit8 v16, v5, 0x3

    .line 52
    .line 53
    add-int v4, v16, v13

    .line 54
    .line 55
    move/from16 v16, v10

    .line 56
    .line 57
    iget-object v10, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object v10, v10, v4

    .line 60
    .line 61
    move-wide/from16 v20, v11

    .line 62
    .line 63
    iget-object v11, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object v11, v11, v4

    .line 66
    .line 67
    check-cast v11, Lcg2;

    .line 68
    .line 69
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-object v12, v10

    .line 73
    check-cast v12, Ltr2;

    .line 74
    .line 75
    invoke-interface {v12}, Ltr2;->w()Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-nez v12, :cond_3

    .line 80
    .line 81
    move-wide/from16 v22, v14

    .line 82
    .line 83
    iget-object v14, v11, Lcg2;->b:[Ljava/lang/Object;

    .line 84
    .line 85
    iget-object v15, v11, Lcg2;->c:[I

    .line 86
    .line 87
    iget-object v11, v11, Lcg2;->a:[J

    .line 88
    .line 89
    move/from16 v24, v9

    .line 90
    .line 91
    array-length v9, v11

    .line 92
    add-int/lit8 v9, v9, -0x2

    .line 93
    .line 94
    if-ltz v9, :cond_3

    .line 95
    .line 96
    move-object/from16 v25, v2

    .line 97
    .line 98
    move-wide/from16 v26, v6

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    :goto_2
    aget-wide v6, v11, v2

    .line 102
    .line 103
    move-object/from16 v29, v11

    .line 104
    .line 105
    move/from16 v28, v12

    .line 106
    .line 107
    not-long v11, v6

    .line 108
    shl-long v11, v11, v16

    .line 109
    .line 110
    and-long/2addr v11, v6

    .line 111
    and-long v11, v11, v20

    .line 112
    .line 113
    cmp-long v11, v11, v20

    .line 114
    .line 115
    if-eqz v11, :cond_2

    .line 116
    .line 117
    sub-int v11, v2, v9

    .line 118
    .line 119
    not-int v11, v11

    .line 120
    ushr-int/lit8 v11, v11, 0x1f

    .line 121
    .line 122
    rsub-int/lit8 v11, v11, 0x8

    .line 123
    .line 124
    const/4 v12, 0x0

    .line 125
    :goto_3
    if-ge v12, v11, :cond_1

    .line 126
    .line 127
    and-long v30, v6, v22

    .line 128
    .line 129
    cmp-long v30, v30, v18

    .line 130
    .line 131
    if-gez v30, :cond_0

    .line 132
    .line 133
    shl-int/lit8 v30, v2, 0x3

    .line 134
    .line 135
    add-int v30, v30, v12

    .line 136
    .line 137
    move-wide/from16 v31, v6

    .line 138
    .line 139
    aget-object v6, v14, v30

    .line 140
    .line 141
    aget v7, v15, v30

    .line 142
    .line 143
    invoke-virtual {v0, v10, v6}, Lhp3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_0
    move-wide/from16 v31, v6

    .line 148
    .line 149
    :goto_4
    shr-long v6, v31, v24

    .line 150
    .line 151
    add-int/lit8 v12, v12, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_1
    move/from16 v6, v24

    .line 155
    .line 156
    if-ne v11, v6, :cond_4

    .line 157
    .line 158
    :cond_2
    if-eq v2, v9, :cond_4

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    move/from16 v12, v28

    .line 163
    .line 164
    move-object/from16 v11, v29

    .line 165
    .line 166
    const/16 v24, 0x8

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    move-object/from16 v25, v2

    .line 170
    .line 171
    move-wide/from16 v26, v6

    .line 172
    .line 173
    move/from16 v28, v12

    .line 174
    .line 175
    :cond_4
    if-nez v28, :cond_5

    .line 176
    .line 177
    invoke-virtual {v1, v4}, Lkg2;->l(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_5
    const/16 v6, 0x8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_6
    move-object/from16 v25, v2

    .line 184
    .line 185
    move-wide/from16 v26, v6

    .line 186
    .line 187
    move/from16 v16, v10

    .line 188
    .line 189
    move-wide/from16 v20, v11

    .line 190
    .line 191
    move v6, v9

    .line 192
    :goto_5
    shr-long v9, v26, v6

    .line 193
    .line 194
    add-int/lit8 v13, v13, 0x1

    .line 195
    .line 196
    move-wide v11, v9

    .line 197
    move v9, v6

    .line 198
    move-wide v6, v11

    .line 199
    move/from16 v10, v16

    .line 200
    .line 201
    move-wide/from16 v11, v20

    .line 202
    .line 203
    move-object/from16 v2, v25

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_7
    move-object/from16 v25, v2

    .line 208
    .line 209
    move v6, v9

    .line 210
    if-ne v8, v6, :cond_9

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_8
    move-object/from16 v25, v2

    .line 214
    .line 215
    :goto_6
    if-eq v5, v3, :cond_9

    .line 216
    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    move-object/from16 v2, v25

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_9
    return-void
.end method
