.class public final synthetic Lat0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:Llf3;

.field public final synthetic o:Lqi0;

.field public final synthetic p:Lus0;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Lne1;

.field public final synthetic s:Lne1;

.field public final synthetic t:Ltr3;

.field public final synthetic u:Ltr3;

.field public final synthetic v:Ltr3;


# direct methods
.method public synthetic constructor <init>(Llf3;Lqi0;Lus0;Landroid/content/Context;Lne1;Lne1;Lpg2;Lpg2;Lpg2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lat0;->n:Llf3;

    .line 5
    .line 6
    iput-object p2, p0, Lat0;->o:Lqi0;

    .line 7
    .line 8
    iput-object p3, p0, Lat0;->p:Lus0;

    .line 9
    .line 10
    iput-object p4, p0, Lat0;->q:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lat0;->r:Lne1;

    .line 13
    .line 14
    iput-object p6, p0, Lat0;->s:Lne1;

    .line 15
    .line 16
    iput-object p7, p0, Lat0;->t:Ltr3;

    .line 17
    .line 18
    iput-object p8, p0, Lat0;->u:Ltr3;

    .line 19
    .line 20
    iput-object p9, p0, Lat0;->v:Ltr3;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lzr2;

    .line 6
    .line 7
    move-object/from16 v6, p2

    .line 8
    .line 9
    check-cast v6, Lag1;

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x6

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v6, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v4

    .line 36
    :goto_0
    or-int/2addr v2, v3

    .line 37
    :cond_1
    and-int/lit8 v3, v2, 0x13

    .line 38
    .line 39
    const/16 v5, 0x12

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    move v3, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v3, v8

    .line 48
    :goto_1
    and-int/2addr v2, v7

    .line 49
    invoke-virtual {v6, v2, v3}, Lag1;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_b

    .line 54
    .line 55
    sget-object v2, Lon3;->b:Lu51;

    .line 56
    .line 57
    invoke-static {v2, v1}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lat0;->n:Llf3;

    .line 62
    .line 63
    invoke-static {v1, v2, v7}, Lw80;->T(Lnd2;Llf3;Z)Lnd2;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Lth;->c:Loh;

    .line 68
    .line 69
    sget-object v3, Lmj1;->z:Law;

    .line 70
    .line 71
    invoke-static {v2, v3, v6, v8}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-wide v9, v6, Lag1;->T:J

    .line 76
    .line 77
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v6, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget-object v9, Llb0;->c:Lkb0;

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    sget-object v9, Lkb0;->b:Lic0;

    .line 95
    .line 96
    invoke-virtual {v6}, Lag1;->Z()V

    .line 97
    .line 98
    .line 99
    iget-boolean v10, v6, Lag1;->S:Z

    .line 100
    .line 101
    if-eqz v10, :cond_3

    .line 102
    .line 103
    invoke-virtual {v6, v9}, Lag1;->k(Lne1;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v6}, Lag1;->j0()V

    .line 108
    .line 109
    .line 110
    :goto_2
    sget-object v9, Lkb0;->f:Lfd;

    .line 111
    .line 112
    invoke-static {v9, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v2, Lkb0;->e:Lfd;

    .line 116
    .line 117
    invoke-static {v2, v6, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v3, Lkb0;->g:Lfd;

    .line 125
    .line 126
    invoke-static {v3, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object v2, Lkb0;->h:Ll9;

    .line 130
    .line 131
    invoke-static {v6, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Lkb0;->d:Lfd;

    .line 135
    .line 136
    invoke-static {v2, v6, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Lis0;->C(Lag1;)Le54;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Le54;->m:Lay3;

    .line 144
    .line 145
    invoke-static {v6}, Lis0;->y(Lag1;)Ly70;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-wide v2, v2, Ly70;->a:J

    .line 150
    .line 151
    sget-object v5, Lkd2;->b:Lkd2;

    .line 152
    .line 153
    const/high16 v9, 0x41800000    # 16.0f

    .line 154
    .line 155
    const/high16 v10, 0x41000000    # 8.0f

    .line 156
    .line 157
    move-wide v11, v2

    .line 158
    invoke-static {v5, v9, v10}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const/16 v22, 0x0

    .line 163
    .line 164
    const v23, 0x1fff8

    .line 165
    .line 166
    .line 167
    const-string v2, "Debug Options"

    .line 168
    .line 169
    move-object/from16 v20, v6

    .line 170
    .line 171
    move v13, v7

    .line 172
    const-wide/16 v6, 0x0

    .line 173
    .line 174
    move v14, v8

    .line 175
    const/4 v8, 0x0

    .line 176
    move v15, v9

    .line 177
    const/4 v9, 0x0

    .line 178
    move-object/from16 v16, v5

    .line 179
    .line 180
    move/from16 v17, v10

    .line 181
    .line 182
    move-wide/from16 v37, v11

    .line 183
    .line 184
    move v12, v4

    .line 185
    move-wide/from16 v4, v37

    .line 186
    .line 187
    const-wide/16 v10, 0x0

    .line 188
    .line 189
    move/from16 v18, v12

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    move/from16 v19, v13

    .line 193
    .line 194
    move/from16 v21, v14

    .line 195
    .line 196
    const-wide/16 v13, 0x0

    .line 197
    .line 198
    move/from16 v24, v15

    .line 199
    .line 200
    const/4 v15, 0x0

    .line 201
    move-object/from16 v25, v16

    .line 202
    .line 203
    const/16 v16, 0x0

    .line 204
    .line 205
    move/from16 v26, v17

    .line 206
    .line 207
    const/16 v17, 0x0

    .line 208
    .line 209
    move/from16 v27, v18

    .line 210
    .line 211
    const/16 v18, 0x0

    .line 212
    .line 213
    move/from16 v28, v21

    .line 214
    .line 215
    const/16 v21, 0x36

    .line 216
    .line 217
    move-object/from16 v19, v1

    .line 218
    .line 219
    move/from16 v1, v24

    .line 220
    .line 221
    move-object/from16 v30, v25

    .line 222
    .line 223
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 224
    .line 225
    .line 226
    move-object/from16 v6, v20

    .line 227
    .line 228
    sget-object v2, Ltv4;->e:Lso1;

    .line 229
    .line 230
    const/4 v9, 0x0

    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    :goto_3
    move-object v4, v2

    .line 234
    goto/16 :goto_4

    .line 235
    .line 236
    :cond_4
    new-instance v10, Lro1;

    .line 237
    .line 238
    const/16 v18, 0x0

    .line 239
    .line 240
    const/16 v20, 0x60

    .line 241
    .line 242
    const/16 v19, 0x0

    .line 243
    .line 244
    const/high16 v12, 0x41c00000    # 24.0f

    .line 245
    .line 246
    const/high16 v13, 0x41c00000    # 24.0f

    .line 247
    .line 248
    const/high16 v14, 0x41c00000    # 24.0f

    .line 249
    .line 250
    const/high16 v15, 0x41c00000    # 24.0f

    .line 251
    .line 252
    const-wide/16 v16, 0x0

    .line 253
    .line 254
    const-string v11, "Outlined.Visibility"

    .line 255
    .line 256
    invoke-direct/range {v10 .. v20}, Lro1;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 257
    .line 258
    .line 259
    sget v2, Lea4;->a:I

    .line 260
    .line 261
    new-instance v2, Lsp3;

    .line 262
    .line 263
    sget-wide v3, Lt70;->b:J

    .line 264
    .line 265
    invoke-direct {v2, v3, v4}, Lsp3;-><init>(J)V

    .line 266
    .line 267
    .line 268
    new-instance v11, Lct2;

    .line 269
    .line 270
    invoke-direct {v11}, Lct2;-><init>()V

    .line 271
    .line 272
    .line 273
    const/high16 v3, 0x40c00000    # 6.0f

    .line 274
    .line 275
    const/high16 v4, 0x41400000    # 12.0f

    .line 276
    .line 277
    invoke-virtual {v11, v4, v3}, Lct2;->h(FF)V

    .line 278
    .line 279
    .line 280
    const v16, 0x410d1eb8    # 8.82f

    .line 281
    .line 282
    .line 283
    const/high16 v17, 0x40b00000    # 5.5f

    .line 284
    .line 285
    const v12, 0x40728f5c    # 3.79f

    .line 286
    .line 287
    .line 288
    const/4 v13, 0x0

    .line 289
    const v14, 0x40e570a4    # 7.17f

    .line 290
    .line 291
    .line 292
    const v15, 0x400851ec    # 2.13f

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {v11 .. v17}, Lct2;->c(FFFFFF)V

    .line 296
    .line 297
    .line 298
    const/high16 v16, 0x41400000    # 12.0f

    .line 299
    .line 300
    const/high16 v17, 0x41880000    # 17.0f

    .line 301
    .line 302
    const v12, 0x41995c29    # 19.17f

    .line 303
    .line 304
    .line 305
    const v13, 0x416deb85    # 14.87f

    .line 306
    .line 307
    .line 308
    const v14, 0x417ca3d7    # 15.79f

    .line 309
    .line 310
    .line 311
    const/high16 v15, 0x41880000    # 17.0f

    .line 312
    .line 313
    invoke-virtual/range {v11 .. v17}, Lct2;->b(FFFFFF)V

    .line 314
    .line 315
    .line 316
    const v3, -0x3ef2e148    # -8.82f

    .line 317
    .line 318
    .line 319
    const/high16 v4, -0x3f500000    # -5.5f

    .line 320
    .line 321
    const v5, -0x3f1a8f5c    # -7.17f

    .line 322
    .line 323
    .line 324
    const v7, -0x3ff7ae14    # -2.13f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v5, v7, v3, v4}, Lct2;->j(FFFF)V

    .line 328
    .line 329
    .line 330
    const/high16 v17, 0x40c00000    # 6.0f

    .line 331
    .line 332
    const v12, 0x409a8f5c    # 4.83f

    .line 333
    .line 334
    .line 335
    const v13, 0x4102147b    # 8.13f

    .line 336
    .line 337
    .line 338
    const v14, 0x41035c29    # 8.21f

    .line 339
    .line 340
    .line 341
    const/high16 v15, 0x40c00000    # 6.0f

    .line 342
    .line 343
    invoke-virtual/range {v11 .. v17}, Lct2;->b(FFFFFF)V

    .line 344
    .line 345
    .line 346
    new-instance v3, Lrt2;

    .line 347
    .line 348
    const/high16 v4, -0x40000000    # -2.0f

    .line 349
    .line 350
    invoke-direct {v3, v9, v4}, Lrt2;-><init>(FF)V

    .line 351
    .line 352
    .line 353
    iget-object v4, v11, Lct2;->n:Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    const/high16 v16, 0x3f800000    # 1.0f

    .line 359
    .line 360
    const/high16 v17, 0x41380000    # 11.5f

    .line 361
    .line 362
    const/high16 v12, 0x40e00000    # 7.0f

    .line 363
    .line 364
    const/high16 v13, 0x40800000    # 4.0f

    .line 365
    .line 366
    const v14, 0x402eb852    # 2.73f

    .line 367
    .line 368
    .line 369
    const v15, 0x40e3851f    # 7.11f

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {v11 .. v17}, Lct2;->b(FFFFFF)V

    .line 373
    .line 374
    .line 375
    const/high16 v16, 0x41400000    # 12.0f

    .line 376
    .line 377
    const/high16 v17, 0x41980000    # 19.0f

    .line 378
    .line 379
    const v12, 0x402eb852    # 2.73f

    .line 380
    .line 381
    .line 382
    const v13, 0x417e3d71    # 15.89f

    .line 383
    .line 384
    .line 385
    const/high16 v14, 0x40e00000    # 7.0f

    .line 386
    .line 387
    const/high16 v15, 0x41980000    # 19.0f

    .line 388
    .line 389
    invoke-virtual/range {v11 .. v17}, Lct2;->b(FFFFFF)V

    .line 390
    .line 391
    .line 392
    const/high16 v3, 0x41300000    # 11.0f

    .line 393
    .line 394
    const/high16 v5, -0x3f100000    # -7.5f

    .line 395
    .line 396
    const v7, 0x411451ec    # 9.27f

    .line 397
    .line 398
    .line 399
    const v8, -0x3fb8f5c3    # -3.11f

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11, v7, v8, v3, v5}, Lct2;->j(FFFF)V

    .line 403
    .line 404
    .line 405
    const/high16 v17, 0x40800000    # 4.0f

    .line 406
    .line 407
    const v12, 0x41aa28f6    # 21.27f

    .line 408
    .line 409
    .line 410
    const v13, 0x40e3851f    # 7.11f

    .line 411
    .line 412
    .line 413
    const/high16 v14, 0x41880000    # 17.0f

    .line 414
    .line 415
    const/high16 v15, 0x40800000    # 4.0f

    .line 416
    .line 417
    invoke-virtual/range {v11 .. v17}, Lct2;->b(FFFFFF)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11}, Lct2;->a()V

    .line 421
    .line 422
    .line 423
    const/high16 v3, 0x41100000    # 9.0f

    .line 424
    .line 425
    const/high16 v5, 0x41400000    # 12.0f

    .line 426
    .line 427
    invoke-virtual {v11, v5, v3}, Lct2;->h(FF)V

    .line 428
    .line 429
    .line 430
    const/high16 v16, 0x40200000    # 2.5f

    .line 431
    .line 432
    const/high16 v17, 0x40200000    # 2.5f

    .line 433
    .line 434
    const v12, 0x3fb0a3d7    # 1.38f

    .line 435
    .line 436
    .line 437
    const/4 v13, 0x0

    .line 438
    const/high16 v14, 0x40200000    # 2.5f

    .line 439
    .line 440
    const v15, 0x3f8f5c29    # 1.12f

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {v11 .. v17}, Lct2;->c(FFFFFF)V

    .line 444
    .line 445
    .line 446
    const v3, 0x4156147b    # 13.38f

    .line 447
    .line 448
    .line 449
    const/high16 v5, 0x41600000    # 14.0f

    .line 450
    .line 451
    const/high16 v7, 0x41400000    # 12.0f

    .line 452
    .line 453
    invoke-virtual {v11, v3, v5, v7, v5}, Lct2;->i(FFFF)V

    .line 454
    .line 455
    .line 456
    const v3, -0x4070a3d7    # -1.12f

    .line 457
    .line 458
    .line 459
    const/high16 v5, -0x3fe00000    # -2.5f

    .line 460
    .line 461
    invoke-virtual {v11, v5, v3, v5, v5}, Lct2;->j(FFFF)V

    .line 462
    .line 463
    .line 464
    const v3, 0x4129eb85    # 10.62f

    .line 465
    .line 466
    .line 467
    const/high16 v5, 0x41100000    # 9.0f

    .line 468
    .line 469
    invoke-virtual {v11, v3, v5, v7, v5}, Lct2;->i(FFFF)V

    .line 470
    .line 471
    .line 472
    new-instance v3, Lrt2;

    .line 473
    .line 474
    const/high16 v5, -0x40000000    # -2.0f

    .line 475
    .line 476
    invoke-direct {v3, v9, v5}, Lrt2;-><init>(FF)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    const/high16 v16, -0x3f700000    # -4.5f

    .line 483
    .line 484
    const/high16 v17, 0x40900000    # 4.5f

    .line 485
    .line 486
    const v12, -0x3fe147ae    # -2.48f

    .line 487
    .line 488
    .line 489
    const/high16 v14, -0x3f700000    # -4.5f

    .line 490
    .line 491
    const v15, 0x400147ae    # 2.02f

    .line 492
    .line 493
    .line 494
    invoke-virtual/range {v11 .. v17}, Lct2;->c(FFFFFF)V

    .line 495
    .line 496
    .line 497
    const v3, 0x411851ec    # 9.52f

    .line 498
    .line 499
    .line 500
    const/high16 v5, 0x41400000    # 12.0f

    .line 501
    .line 502
    invoke-virtual {v11, v3, v1, v5, v1}, Lct2;->i(FFFF)V

    .line 503
    .line 504
    .line 505
    const v3, -0x3ffeb852    # -2.02f

    .line 506
    .line 507
    .line 508
    const/high16 v5, -0x3f700000    # -4.5f

    .line 509
    .line 510
    const/high16 v7, 0x40900000    # 4.5f

    .line 511
    .line 512
    invoke-virtual {v11, v7, v3, v7, v5}, Lct2;->j(FFFF)V

    .line 513
    .line 514
    .line 515
    const v3, 0x4167ae14    # 14.48f

    .line 516
    .line 517
    .line 518
    const/high16 v5, 0x40e00000    # 7.0f

    .line 519
    .line 520
    const/high16 v7, 0x41400000    # 12.0f

    .line 521
    .line 522
    invoke-virtual {v11, v3, v5, v7, v5}, Lct2;->i(FFFF)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v11}, Lct2;->a()V

    .line 526
    .line 527
    .line 528
    invoke-static {v10, v4, v2}, Lro1;->a(Lro1;Ljava/util/ArrayList;Lsp3;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v10}, Lro1;->b()Lso1;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    sput-object v2, Ltv4;->e:Lso1;

    .line 536
    .line 537
    goto/16 :goto_3

    .line 538
    .line 539
    :goto_4
    iget-object v2, v0, Lat0;->t:Ltr3;

    .line 540
    .line 541
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    check-cast v2, Ljava/lang/Boolean;

    .line 546
    .line 547
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    iget-object v10, v0, Lat0;->o:Lqi0;

    .line 552
    .line 553
    invoke-virtual {v6, v10}, Lag1;->h(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    iget-object v11, v0, Lat0;->p:Lus0;

    .line 558
    .line 559
    invoke-virtual {v6, v11}, Lag1;->h(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    or-int/2addr v2, v3

    .line 564
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    sget-object v12, Lrb0;->a:Lbx3;

    .line 569
    .line 570
    if-nez v2, :cond_6

    .line 571
    .line 572
    if-ne v3, v12, :cond_5

    .line 573
    .line 574
    goto :goto_5

    .line 575
    :cond_5
    const/4 v13, 0x0

    .line 576
    goto :goto_6

    .line 577
    :cond_6
    :goto_5
    new-instance v3, Lct0;

    .line 578
    .line 579
    const/4 v13, 0x0

    .line 580
    invoke-direct {v3, v10, v11, v13}, Lct0;-><init>(Lqi0;Lus0;I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v6, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    :goto_6
    check-cast v3, Lpe1;

    .line 587
    .line 588
    const/16 v8, 0x36

    .line 589
    .line 590
    const-string v2, "Show WebView"

    .line 591
    .line 592
    move-object/from16 v20, v6

    .line 593
    .line 594
    move-object v6, v3

    .line 595
    const-string v3, "Display background WebViews in Usage screen"

    .line 596
    .line 597
    move-object/from16 v7, v20

    .line 598
    .line 599
    invoke-static/range {v2 .. v8}, Lon4;->c(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;Lag1;I)V

    .line 600
    .line 601
    .line 602
    move-object v6, v7

    .line 603
    invoke-static {}, Lw80;->v()Lso1;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    iget-object v2, v0, Lat0;->u:Ltr3;

    .line 608
    .line 609
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    check-cast v2, Ljava/lang/Boolean;

    .line 614
    .line 615
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    invoke-virtual {v6, v10}, Lag1;->h(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    invoke-virtual {v6, v11}, Lag1;->h(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    or-int/2addr v2, v3

    .line 628
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    if-nez v2, :cond_8

    .line 633
    .line 634
    if-ne v3, v12, :cond_7

    .line 635
    .line 636
    goto :goto_7

    .line 637
    :cond_7
    const/4 v14, 0x1

    .line 638
    goto :goto_8

    .line 639
    :cond_8
    :goto_7
    new-instance v3, Lct0;

    .line 640
    .line 641
    const/4 v14, 0x1

    .line 642
    invoke-direct {v3, v10, v11, v14}, Lct0;-><init>(Lqi0;Lus0;I)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    :goto_8
    check-cast v3, Lpe1;

    .line 649
    .line 650
    const/16 v8, 0x36

    .line 651
    .line 652
    const-string v2, "Simulate Logged Out (Copilot)"

    .line 653
    .line 654
    move-object/from16 v20, v6

    .line 655
    .line 656
    move-object v6, v3

    .line 657
    const-string v3, "Force handleLoggedOutState() when entitlement fetch fails"

    .line 658
    .line 659
    move-object/from16 v7, v20

    .line 660
    .line 661
    invoke-static/range {v2 .. v8}, Lon4;->c(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;Lag1;I)V

    .line 662
    .line 663
    .line 664
    move-object/from16 v15, v30

    .line 665
    .line 666
    const/high16 v2, 0x41000000    # 8.0f

    .line 667
    .line 668
    invoke-static {v15, v9, v2, v14}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    const/4 v7, 0x6

    .line 673
    const/4 v8, 0x6

    .line 674
    move/from16 v31, v2

    .line 675
    .line 676
    move-object v2, v3

    .line 677
    const/4 v3, 0x0

    .line 678
    const-wide/16 v4, 0x0

    .line 679
    .line 680
    move-object/from16 v6, v20

    .line 681
    .line 682
    move/from16 v9, v31

    .line 683
    .line 684
    invoke-static/range {v2 .. v8}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 685
    .line 686
    .line 687
    invoke-static/range {v20 .. v20}, Lis0;->C(Lag1;)Le54;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    iget-object v2, v2, Le54;->m:Lay3;

    .line 692
    .line 693
    invoke-static/range {v20 .. v20}, Lis0;->y(Lag1;)Ly70;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    iget-wide v4, v3, Ly70;->a:J

    .line 698
    .line 699
    invoke-static {v15, v1, v9}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    const/16 v22, 0x0

    .line 704
    .line 705
    const v23, 0x1fff8

    .line 706
    .line 707
    .line 708
    move-object/from16 v19, v2

    .line 709
    .line 710
    const-string v2, "Analytics"

    .line 711
    .line 712
    const-wide/16 v6, 0x0

    .line 713
    .line 714
    const/4 v8, 0x0

    .line 715
    const/4 v9, 0x0

    .line 716
    move-object/from16 v16, v10

    .line 717
    .line 718
    move-object/from16 v17, v11

    .line 719
    .line 720
    const-wide/16 v10, 0x0

    .line 721
    .line 722
    move-object/from16 v18, v12

    .line 723
    .line 724
    const/4 v12, 0x0

    .line 725
    move/from16 v28, v13

    .line 726
    .line 727
    move/from16 v29, v14

    .line 728
    .line 729
    const-wide/16 v13, 0x0

    .line 730
    .line 731
    const/4 v15, 0x0

    .line 732
    move-object/from16 v21, v16

    .line 733
    .line 734
    const/16 v16, 0x0

    .line 735
    .line 736
    move-object/from16 v24, v17

    .line 737
    .line 738
    const/16 v17, 0x0

    .line 739
    .line 740
    move-object/from16 v25, v18

    .line 741
    .line 742
    const/16 v18, 0x0

    .line 743
    .line 744
    move-object/from16 v26, v21

    .line 745
    .line 746
    const/16 v21, 0x36

    .line 747
    .line 748
    move-object/from16 v32, v24

    .line 749
    .line 750
    move-object/from16 v33, v25

    .line 751
    .line 752
    move-object/from16 v1, v26

    .line 753
    .line 754
    move-object/from16 v34, v30

    .line 755
    .line 756
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 757
    .line 758
    .line 759
    move-object/from16 v6, v20

    .line 760
    .line 761
    invoke-static {}, Lw80;->u()Lso1;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    iget-object v2, v0, Lat0;->v:Ltr3;

    .line 766
    .line 767
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    check-cast v2, Ljava/lang/Boolean;

    .line 772
    .line 773
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    invoke-virtual {v6, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    move-object/from16 v3, v32

    .line 782
    .line 783
    invoke-virtual {v6, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v7

    .line 787
    or-int/2addr v2, v7

    .line 788
    iget-object v9, v0, Lat0;->q:Landroid/content/Context;

    .line 789
    .line 790
    invoke-virtual {v6, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v7

    .line 794
    or-int/2addr v2, v7

    .line 795
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    if-nez v2, :cond_9

    .line 800
    .line 801
    move-object/from16 v2, v33

    .line 802
    .line 803
    if-ne v7, v2, :cond_a

    .line 804
    .line 805
    :cond_9
    new-instance v7, Lmd;

    .line 806
    .line 807
    const/4 v12, 0x2

    .line 808
    invoke-direct {v7, v1, v9, v3, v12}, Lmd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v6, v7}, Lag1;->g0(Ljava/lang/Object;)V

    .line 812
    .line 813
    .line 814
    :cond_a
    check-cast v7, Lpe1;

    .line 815
    .line 816
    const/16 v8, 0x36

    .line 817
    .line 818
    const-string v2, "Firebase Analytics"

    .line 819
    .line 820
    const-string v3, "Send usage events to Google Analytics"

    .line 821
    .line 822
    move-object/from16 v37, v7

    .line 823
    .line 824
    move-object v7, v6

    .line 825
    move-object/from16 v6, v37

    .line 826
    .line 827
    invoke-static/range {v2 .. v8}, Lon4;->c(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;Lag1;I)V

    .line 828
    .line 829
    .line 830
    move-object/from16 v20, v7

    .line 831
    .line 832
    invoke-static {}, Lw80;->u()Lso1;

    .line 833
    .line 834
    .line 835
    move-result-object v4

    .line 836
    const/16 v7, 0x36

    .line 837
    .line 838
    const-string v2, "Analytics Debugger"

    .line 839
    .line 840
    const-string v3, "View and debug analytics events"

    .line 841
    .line 842
    iget-object v5, v0, Lat0;->r:Lne1;

    .line 843
    .line 844
    move-object/from16 v6, v20

    .line 845
    .line 846
    invoke-static/range {v2 .. v7}, Lon4;->a(Ljava/lang/String;Ljava/lang/String;Lso1;Lne1;Lag1;I)V

    .line 847
    .line 848
    .line 849
    invoke-static {}, Lw80;->v()Lso1;

    .line 850
    .line 851
    .line 852
    move-result-object v4

    .line 853
    const-string v2, "Diagnostic Logs"

    .line 854
    .line 855
    const-string v3, "View persistent RollingWindowWorker logs"

    .line 856
    .line 857
    iget-object v5, v0, Lat0;->s:Lne1;

    .line 858
    .line 859
    invoke-static/range {v2 .. v7}, Lon4;->a(Ljava/lang/String;Ljava/lang/String;Lso1;Lne1;Lag1;I)V

    .line 860
    .line 861
    .line 862
    move-object/from16 v10, v34

    .line 863
    .line 864
    const/4 v0, 0x0

    .line 865
    const/4 v1, 0x1

    .line 866
    const/high16 v11, 0x41000000    # 8.0f

    .line 867
    .line 868
    invoke-static {v10, v0, v11, v1}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    const/4 v7, 0x6

    .line 873
    const/4 v8, 0x6

    .line 874
    const/4 v3, 0x0

    .line 875
    const-wide/16 v4, 0x0

    .line 876
    .line 877
    invoke-static/range {v2 .. v8}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 878
    .line 879
    .line 880
    invoke-static/range {v20 .. v20}, Lis0;->C(Lag1;)Le54;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    iget-object v2, v2, Le54;->m:Lay3;

    .line 885
    .line 886
    invoke-static/range {v20 .. v20}, Lis0;->y(Lag1;)Ly70;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    iget-wide v4, v3, Ly70;->a:J

    .line 891
    .line 892
    const/high16 v15, 0x41800000    # 16.0f

    .line 893
    .line 894
    invoke-static {v10, v15, v11}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    const/16 v22, 0x0

    .line 899
    .line 900
    const v23, 0x1fff8

    .line 901
    .line 902
    .line 903
    move-object/from16 v19, v2

    .line 904
    .line 905
    const-string v2, "Rolling Window Testing"

    .line 906
    .line 907
    const-wide/16 v6, 0x0

    .line 908
    .line 909
    const/4 v8, 0x0

    .line 910
    move-object v12, v9

    .line 911
    const/4 v9, 0x0

    .line 912
    move-object/from16 v30, v10

    .line 913
    .line 914
    move/from16 v31, v11

    .line 915
    .line 916
    const-wide/16 v10, 0x0

    .line 917
    .line 918
    move-object v13, v12

    .line 919
    const/4 v12, 0x0

    .line 920
    move-object v15, v13

    .line 921
    const-wide/16 v13, 0x0

    .line 922
    .line 923
    move-object/from16 v16, v15

    .line 924
    .line 925
    const/4 v15, 0x0

    .line 926
    move-object/from16 v17, v16

    .line 927
    .line 928
    const/16 v16, 0x0

    .line 929
    .line 930
    move-object/from16 v18, v17

    .line 931
    .line 932
    const/16 v17, 0x0

    .line 933
    .line 934
    move-object/from16 v21, v18

    .line 935
    .line 936
    const/16 v18, 0x0

    .line 937
    .line 938
    move-object/from16 v24, v21

    .line 939
    .line 940
    const/16 v21, 0x36

    .line 941
    .line 942
    move-object/from16 v0, v24

    .line 943
    .line 944
    move-object/from16 v35, v30

    .line 945
    .line 946
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 947
    .line 948
    .line 949
    move-object/from16 v6, v20

    .line 950
    .line 951
    const/4 v9, 0x0

    .line 952
    invoke-static {v0, v6, v9}, Lon4;->f(Landroid/content/Context;Lag1;I)V

    .line 953
    .line 954
    .line 955
    move-object/from16 v10, v35

    .line 956
    .line 957
    const/4 v2, 0x0

    .line 958
    const/high16 v11, 0x41000000    # 8.0f

    .line 959
    .line 960
    invoke-static {v10, v2, v11, v1}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    const/4 v7, 0x6

    .line 965
    const/4 v8, 0x6

    .line 966
    move-object v2, v3

    .line 967
    const/4 v3, 0x0

    .line 968
    const-wide/16 v4, 0x0

    .line 969
    .line 970
    invoke-static/range {v2 .. v8}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 971
    .line 972
    .line 973
    invoke-static/range {v20 .. v20}, Lis0;->C(Lag1;)Le54;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    iget-object v2, v2, Le54;->m:Lay3;

    .line 978
    .line 979
    invoke-static/range {v20 .. v20}, Lis0;->y(Lag1;)Ly70;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    iget-wide v4, v3, Ly70;->a:J

    .line 984
    .line 985
    const/high16 v15, 0x41800000    # 16.0f

    .line 986
    .line 987
    invoke-static {v10, v15, v11}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    move-object/from16 v19, v2

    .line 992
    .line 993
    const-string v2, "WebView Freeze Testing"

    .line 994
    .line 995
    const-wide/16 v6, 0x0

    .line 996
    .line 997
    const/4 v8, 0x0

    .line 998
    move/from16 v28, v9

    .line 999
    .line 1000
    const/4 v9, 0x0

    .line 1001
    move-object/from16 v30, v10

    .line 1002
    .line 1003
    move/from16 v31, v11

    .line 1004
    .line 1005
    const-wide/16 v10, 0x0

    .line 1006
    .line 1007
    const/4 v15, 0x0

    .line 1008
    move/from16 v1, v28

    .line 1009
    .line 1010
    move-object/from16 v36, v30

    .line 1011
    .line 1012
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 1013
    .line 1014
    .line 1015
    move-object/from16 v6, v20

    .line 1016
    .line 1017
    invoke-static {v0, v6, v1}, Lon4;->h(Landroid/content/Context;Lag1;I)V

    .line 1018
    .line 1019
    .line 1020
    move-object/from16 v1, v36

    .line 1021
    .line 1022
    const/4 v0, 0x0

    .line 1023
    const/high16 v11, 0x41000000    # 8.0f

    .line 1024
    .line 1025
    const/4 v13, 0x1

    .line 1026
    invoke-static {v1, v0, v11, v13}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    const/4 v7, 0x6

    .line 1031
    const/4 v8, 0x6

    .line 1032
    const/4 v3, 0x0

    .line 1033
    const-wide/16 v4, 0x0

    .line 1034
    .line 1035
    invoke-static/range {v2 .. v8}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static/range {v20 .. v20}, Lis0;->C(Lag1;)Le54;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    iget-object v0, v0, Le54;->l:Lay3;

    .line 1043
    .line 1044
    invoke-static/range {v20 .. v20}, Lis0;->y(Lag1;)Ly70;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    iget-wide v4, v2, Ly70;->s:J

    .line 1049
    .line 1050
    const/high16 v15, 0x41800000    # 16.0f

    .line 1051
    .line 1052
    invoke-static {v1, v15, v11}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    const-string v2, "These settings are for debugging purposes only."

    .line 1057
    .line 1058
    const-wide/16 v6, 0x0

    .line 1059
    .line 1060
    const/4 v8, 0x0

    .line 1061
    const-wide/16 v10, 0x0

    .line 1062
    .line 1063
    const-wide/16 v13, 0x0

    .line 1064
    .line 1065
    const/4 v15, 0x0

    .line 1066
    move-object/from16 v19, v0

    .line 1067
    .line 1068
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v6, v20

    .line 1072
    .line 1073
    const/high16 v15, 0x41800000    # 16.0f

    .line 1074
    .line 1075
    invoke-static {v1, v15}, Lon3;->b(Lnd2;F)Lnd2;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    invoke-static {v6, v0}, Lmt1;->f(Lag1;Lnd2;)V

    .line 1080
    .line 1081
    .line 1082
    const/4 v13, 0x1

    .line 1083
    invoke-virtual {v6, v13}, Lag1;->p(Z)V

    .line 1084
    .line 1085
    .line 1086
    goto :goto_9

    .line 1087
    :cond_b
    invoke-virtual {v6}, Lag1;->Q()V

    .line 1088
    .line 1089
    .line 1090
    :goto_9
    sget-object v0, Lt64;->a:Lt64;

    .line 1091
    .line 1092
    return-object v0
.end method
