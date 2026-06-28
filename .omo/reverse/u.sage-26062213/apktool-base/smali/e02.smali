.class public final synthetic Le02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Le02;->n:I

    iput-object p1, p0, Le02;->o:Ljava/lang/Object;

    iput-object p2, p0, Le02;->p:Ljava/lang/Object;

    iput-object p3, p0, Le02;->q:Ljava/lang/Object;

    iput-object p4, p0, Le02;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ly84;Lne1;Lpg2;Lpg2;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Le02;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le02;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Le02;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Le02;->r:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Le02;->q:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le02;->n:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    sget-object v5, Lt64;->a:Lt64;

    .line 9
    .line 10
    sget-object v6, Lrb0;->a:Lbx3;

    .line 11
    .line 12
    iget-object v7, v0, Le02;->q:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Le02;->r:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Le02;->p:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Le02;->o:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object v13, v0

    .line 25
    check-cast v13, Ly84;

    .line 26
    .line 27
    check-cast v9, Lne1;

    .line 28
    .line 29
    check-cast v8, Lpg2;

    .line 30
    .line 31
    check-cast v7, Lpg2;

    .line 32
    .line 33
    move-object/from16 v0, p1

    .line 34
    .line 35
    check-cast v0, Lpe;

    .line 36
    .line 37
    move-object/from16 v15, p2

    .line 38
    .line 39
    check-cast v15, Lag1;

    .line 40
    .line 41
    move-object/from16 v1, p3

    .line 42
    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-interface {v8}, Ltr3;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v11, v0

    .line 56
    check-cast v11, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v7}, Ltr3;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v12, v0

    .line 63
    check-cast v12, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v15, v9}, Lag1;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    if-ne v1, v6, :cond_1

    .line 76
    .line 77
    :cond_0
    new-instance v1, Lzi1;

    .line 78
    .line 79
    invoke-direct {v1, v4, v9}, Lzi1;-><init>(ILne1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    move-object v14, v1

    .line 86
    check-cast v14, Lne1;

    .line 87
    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    invoke-static/range {v11 .. v16}, Lkt4;->i(Ljava/lang/String;Ljava/lang/String;Ly84;Lne1;Lag1;I)V

    .line 91
    .line 92
    .line 93
    return-object v5

    .line 94
    :pswitch_0
    check-cast v0, Lfo3;

    .line 95
    .line 96
    check-cast v9, Lfo3;

    .line 97
    .line 98
    check-cast v7, Lm41;

    .line 99
    .line 100
    check-cast v8, Ljava/lang/String;

    .line 101
    .line 102
    move-object/from16 v1, p1

    .line 103
    .line 104
    check-cast v1, Ldf1;

    .line 105
    .line 106
    move-object/from16 v11, p2

    .line 107
    .line 108
    check-cast v11, Lag1;

    .line 109
    .line 110
    move-object/from16 v12, p3

    .line 111
    .line 112
    check-cast v12, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    and-int/lit8 v13, v12, 0x6

    .line 119
    .line 120
    if-nez v13, :cond_3

    .line 121
    .line 122
    invoke-virtual {v11, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v13, :cond_2

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    move v2, v4

    .line 130
    :goto_0
    or-int/2addr v12, v2

    .line 131
    :cond_3
    and-int/lit8 v2, v12, 0x13

    .line 132
    .line 133
    const/16 v4, 0x12

    .line 134
    .line 135
    if-eq v2, v4, :cond_4

    .line 136
    .line 137
    const/4 v2, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move v2, v10

    .line 140
    :goto_1
    and-int/lit8 v4, v12, 0x1

    .line 141
    .line 142
    invoke-virtual {v11, v4, v2}, Lag1;->N(IZ)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_12

    .line 147
    .line 148
    invoke-static {v0, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    sget-object v4, Lfe2;->p:Lfe2;

    .line 153
    .line 154
    invoke-static {v4, v11}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v11, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    invoke-virtual {v11, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    or-int/2addr v9, v14

    .line 167
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    if-nez v9, :cond_5

    .line 172
    .line 173
    if-ne v14, v6, :cond_6

    .line 174
    .line 175
    :cond_5
    new-instance v14, Ldo3;

    .line 176
    .line 177
    invoke-direct {v14, v10, v0, v7}, Ldo3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    check-cast v14, Lne1;

    .line 184
    .line 185
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    if-ne v7, v6, :cond_8

    .line 190
    .line 191
    if-nez v2, :cond_7

    .line 192
    .line 193
    const/high16 v7, 0x3f800000    # 1.0f

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    const/4 v7, 0x0

    .line 197
    :goto_2
    invoke-static {v7}, Ldm0;->a(F)Lpd;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-virtual {v11, v7}, Lag1;->g0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    move-object v15, v7

    .line 205
    check-cast v15, Lpd;

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v11, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v16

    .line 215
    invoke-virtual {v11, v2}, Lag1;->g(Z)Z

    .line 216
    .line 217
    .line 218
    move-result v17

    .line 219
    or-int v16, v16, v17

    .line 220
    .line 221
    invoke-virtual {v11, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v17

    .line 225
    or-int v16, v16, v17

    .line 226
    .line 227
    invoke-virtual {v11, v14}, Lag1;->f(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    or-int v16, v16, v17

    .line 232
    .line 233
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    if-nez v16, :cond_9

    .line 238
    .line 239
    if-ne v9, v6, :cond_a

    .line 240
    .line 241
    :cond_9
    move-object/from16 v18, v14

    .line 242
    .line 243
    new-instance v14, Ls93;

    .line 244
    .line 245
    const/16 v19, 0x0

    .line 246
    .line 247
    move/from16 v16, v2

    .line 248
    .line 249
    move-object/from16 v17, v4

    .line 250
    .line 251
    invoke-direct/range {v14 .. v19}, Ls93;-><init>(Lpd;ZLyq3;Lne1;Ldh0;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    move-object v9, v14

    .line 258
    :cond_a
    check-cast v9, Ldf1;

    .line 259
    .line 260
    invoke-static {v9, v11, v7}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v4, v15, Lpd;->c:Lwe;

    .line 264
    .line 265
    sget-object v7, Lfe2;->n:Lfe2;

    .line 266
    .line 267
    invoke-static {v7, v11}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    if-ne v9, v6, :cond_c

    .line 276
    .line 277
    if-nez v2, :cond_b

    .line 278
    .line 279
    const/high16 v9, 0x3f800000    # 1.0f

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_b
    const v9, 0x3f4ccccd    # 0.8f

    .line 283
    .line 284
    .line 285
    :goto_3
    invoke-static {v9}, Ldm0;->a(F)Lpd;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-virtual {v11, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_c
    check-cast v9, Lpd;

    .line 293
    .line 294
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    invoke-virtual {v11, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v15

    .line 302
    invoke-virtual {v11, v2}, Lag1;->g(Z)Z

    .line 303
    .line 304
    .line 305
    move-result v16

    .line 306
    or-int v15, v15, v16

    .line 307
    .line 308
    invoke-virtual {v11, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v16

    .line 312
    or-int v15, v15, v16

    .line 313
    .line 314
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    if-nez v15, :cond_d

    .line 319
    .line 320
    if-ne v13, v6, :cond_e

    .line 321
    .line 322
    :cond_d
    new-instance v13, Lml0;

    .line 323
    .line 324
    invoke-direct {v13, v9, v2, v7, v3}, Lml0;-><init>(Lpd;ZLyq3;Ldh0;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v13}, Lag1;->g0(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_e
    check-cast v13, Ldf1;

    .line 331
    .line 332
    invoke-static {v13, v11, v14}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iget-object v3, v9, Lpd;->c:Lwe;

    .line 336
    .line 337
    iget-object v7, v3, Lwe;->o:Lws2;

    .line 338
    .line 339
    invoke-virtual {v7}, Lws2;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    check-cast v7, Ljava/lang/Number;

    .line 344
    .line 345
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    iget-object v3, v3, Lwe;->o:Lws2;

    .line 350
    .line 351
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Ljava/lang/Number;

    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 358
    .line 359
    .line 360
    move-result v15

    .line 361
    iget-object v3, v4, Lwe;->o:Lws2;

    .line 362
    .line 363
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Ljava/lang/Number;

    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 370
    .line 371
    .line 372
    move-result v16

    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    const v20, 0xffff8

    .line 376
    .line 377
    .line 378
    sget-object v13, Lkd2;->b:Lkd2;

    .line 379
    .line 380
    const/16 v17, 0x0

    .line 381
    .line 382
    const/16 v18, 0x0

    .line 383
    .line 384
    invoke-static/range {v13 .. v20}, Ln44;->r0(Lnd2;FFFFLjl3;ZI)Lnd2;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v11, v2}, Lag1;->g(Z)Z

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    invoke-virtual {v11, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    or-int/2addr v4, v7

    .line 397
    invoke-virtual {v11, v8}, Lag1;->f(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    or-int/2addr v4, v7

    .line 402
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    if-nez v4, :cond_f

    .line 407
    .line 408
    if-ne v7, v6, :cond_10

    .line 409
    .line 410
    :cond_f
    new-instance v7, Lot0;

    .line 411
    .line 412
    invoke-direct {v7, v2, v8, v0}, Lot0;-><init>(ZLjava/lang/String;Lfo3;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11, v7}, Lag1;->g0(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_10
    check-cast v7, Lpe1;

    .line 419
    .line 420
    invoke-static {v3, v7}, Ldh3;->a(Lnd2;Lpe1;)Lnd2;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    sget-object v2, Lmj1;->o:Lcw;

    .line 425
    .line 426
    invoke-static {v2, v10}, Lqx;->d(Lcw;Z)Ldb2;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    iget-wide v3, v11, Lag1;->T:J

    .line 431
    .line 432
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    invoke-virtual {v11}, Lag1;->l()Lhu2;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v11, v0}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    sget-object v6, Llb0;->c:Lkb0;

    .line 445
    .line 446
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    sget-object v6, Lkb0;->b:Lic0;

    .line 450
    .line 451
    invoke-virtual {v11}, Lag1;->Z()V

    .line 452
    .line 453
    .line 454
    iget-boolean v7, v11, Lag1;->S:Z

    .line 455
    .line 456
    if-eqz v7, :cond_11

    .line 457
    .line 458
    invoke-virtual {v11, v6}, Lag1;->k(Lne1;)V

    .line 459
    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_11
    invoke-virtual {v11}, Lag1;->j0()V

    .line 463
    .line 464
    .line 465
    :goto_4
    sget-object v6, Lkb0;->f:Lfd;

    .line 466
    .line 467
    invoke-static {v6, v11, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    sget-object v2, Lkb0;->e:Lfd;

    .line 471
    .line 472
    invoke-static {v2, v11, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    sget-object v3, Lkb0;->g:Lfd;

    .line 480
    .line 481
    invoke-static {v3, v11, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    sget-object v2, Lkb0;->h:Ll9;

    .line 485
    .line 486
    invoke-static {v11, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 487
    .line 488
    .line 489
    sget-object v2, Lkb0;->d:Lfd;

    .line 490
    .line 491
    invoke-static {v2, v11, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    and-int/lit8 v0, v12, 0xe

    .line 495
    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-interface {v1, v11, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    const/4 v0, 0x1

    .line 504
    invoke-virtual {v11, v0}, Lag1;->p(Z)V

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_12
    invoke-virtual {v11}, Lag1;->Q()V

    .line 509
    .line 510
    .line 511
    :goto_5
    return-object v5

    .line 512
    :pswitch_1
    move-object v13, v0

    .line 513
    check-cast v13, Ln02;

    .line 514
    .line 515
    check-cast v9, Lnd2;

    .line 516
    .line 517
    check-cast v7, Le12;

    .line 518
    .line 519
    check-cast v8, Lpg2;

    .line 520
    .line 521
    move-object/from16 v0, p1

    .line 522
    .line 523
    check-cast v0, Lfc3;

    .line 524
    .line 525
    move-object/from16 v1, p2

    .line 526
    .line 527
    check-cast v1, Lag1;

    .line 528
    .line 529
    move-object/from16 v4, p3

    .line 530
    .line 531
    check-cast v4, Ljava/lang/Integer;

    .line 532
    .line 533
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    if-ne v4, v6, :cond_13

    .line 541
    .line 542
    new-instance v4, Lc02;

    .line 543
    .line 544
    new-instance v11, Lf02;

    .line 545
    .line 546
    invoke-direct {v11, v8, v10}, Lf02;-><init>(Lpg2;I)V

    .line 547
    .line 548
    .line 549
    invoke-direct {v4, v0, v11}, Lc02;-><init>(Lfc3;Lf02;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_13
    move-object v14, v4

    .line 556
    check-cast v14, Lc02;

    .line 557
    .line 558
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-ne v0, v6, :cond_14

    .line 563
    .line 564
    new-instance v0, Lpt3;

    .line 565
    .line 566
    new-instance v4, Lxh1;

    .line 567
    .line 568
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 569
    .line 570
    .line 571
    iput-object v14, v4, Lxh1;->n:Ljava/lang/Object;

    .line 572
    .line 573
    sget-object v8, Lsn2;->a:Lcg2;

    .line 574
    .line 575
    new-instance v8, Lcg2;

    .line 576
    .line 577
    invoke-direct {v8}, Lcg2;-><init>()V

    .line 578
    .line 579
    .line 580
    iput-object v8, v4, Lxh1;->o:Ljava/lang/Object;

    .line 581
    .line 582
    invoke-direct {v0, v4}, Lpt3;-><init>(Lst3;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    :cond_14
    move-object v15, v0

    .line 589
    check-cast v15, Lpt3;

    .line 590
    .line 591
    if-eqz v13, :cond_20

    .line 592
    .line 593
    const v0, 0x67eb8deb

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v0}, Lag1;->W(I)V

    .line 597
    .line 598
    .line 599
    const v0, 0x34e696b7

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v0}, Lag1;->W(I)V

    .line 603
    .line 604
    .line 605
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 606
    .line 607
    if-eqz v0, :cond_16

    .line 608
    .line 609
    const-string v4, "robolectric"

    .line 610
    .line 611
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-eqz v0, :cond_16

    .line 616
    .line 617
    const v0, 0x503371a7

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v0}, Lag1;->W(I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    if-ne v0, v6, :cond_15

    .line 628
    .line 629
    new-instance v0, Ley2;

    .line 630
    .line 631
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :cond_15
    check-cast v0, Ley2;

    .line 638
    .line 639
    invoke-virtual {v1, v10}, Lag1;->p(Z)V

    .line 640
    .line 641
    .line 642
    goto :goto_6

    .line 643
    :cond_16
    const v0, 0x503633a1

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v0}, Lag1;->W(I)V

    .line 647
    .line 648
    .line 649
    sget-object v0, Lea;->f:Lis3;

    .line 650
    .line 651
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    check-cast v0, Landroid/view/View;

    .line 656
    .line 657
    invoke-virtual {v1, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    if-nez v4, :cond_17

    .line 666
    .line 667
    if-ne v8, v6, :cond_1a

    .line 668
    .line 669
    :cond_17
    const v4, 0x7f090054

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    instance-of v11, v8, Ldy2;

    .line 677
    .line 678
    if-eqz v11, :cond_18

    .line 679
    .line 680
    move-object v3, v8

    .line 681
    check-cast v3, Ldy2;

    .line 682
    .line 683
    :cond_18
    if-nez v3, :cond_19

    .line 684
    .line 685
    new-instance v3, Lac;

    .line 686
    .line 687
    invoke-direct {v3, v0}, Lac;-><init>(Landroid/view/View;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    :cond_19
    move-object v8, v3

    .line 694
    invoke-virtual {v1, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    :cond_1a
    move-object v0, v8

    .line 698
    check-cast v0, Ldy2;

    .line 699
    .line 700
    invoke-virtual {v1, v10}, Lag1;->p(Z)V

    .line 701
    .line 702
    .line 703
    :goto_6
    invoke-virtual {v1, v10}, Lag1;->p(Z)V

    .line 704
    .line 705
    .line 706
    filled-new-array {v13, v14, v15, v0}, [Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    invoke-virtual {v1, v13}, Lag1;->f(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    invoke-virtual {v1, v14}, Lag1;->h(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v8

    .line 718
    or-int/2addr v4, v8

    .line 719
    invoke-virtual {v1, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    or-int/2addr v4, v8

    .line 724
    invoke-virtual {v1, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v8

    .line 728
    or-int/2addr v4, v8

    .line 729
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    if-nez v4, :cond_1b

    .line 734
    .line 735
    if-ne v8, v6, :cond_1c

    .line 736
    .line 737
    :cond_1b
    new-instance v12, Lk4;

    .line 738
    .line 739
    const/16 v17, 0x4

    .line 740
    .line 741
    move-object/from16 v16, v0

    .line 742
    .line 743
    invoke-direct/range {v12 .. v17}, Lk4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    move-object v8, v12

    .line 750
    :cond_1c
    check-cast v8, Lpe1;

    .line 751
    .line 752
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    array-length v2, v0

    .line 757
    move v3, v10

    .line 758
    move v4, v3

    .line 759
    :goto_7
    if-ge v3, v2, :cond_1d

    .line 760
    .line 761
    aget-object v11, v0, v3

    .line 762
    .line 763
    invoke-virtual {v1, v11}, Lag1;->f(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v11

    .line 767
    or-int/2addr v4, v11

    .line 768
    add-int/lit8 v3, v3, 0x1

    .line 769
    .line 770
    goto :goto_7

    .line 771
    :cond_1d
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    if-nez v4, :cond_1e

    .line 776
    .line 777
    if-ne v0, v6, :cond_1f

    .line 778
    .line 779
    :cond_1e
    new-instance v0, Lfv0;

    .line 780
    .line 781
    invoke-direct {v0, v8}, Lfv0;-><init>(Lpe1;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    :cond_1f
    invoke-virtual {v1, v10}, Lag1;->p(Z)V

    .line 788
    .line 789
    .line 790
    goto :goto_8

    .line 791
    :cond_20
    const v0, 0x67f47fcd

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1, v0}, Lag1;->W(I)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v10}, Lag1;->p(Z)V

    .line 798
    .line 799
    .line 800
    :goto_8
    sget v0, Lo02;->a:I

    .line 801
    .line 802
    if-eqz v13, :cond_22

    .line 803
    .line 804
    new-instance v0, Lc24;

    .line 805
    .line 806
    invoke-direct {v0, v13}, Lc24;-><init>(Ln02;)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v9, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    if-nez v0, :cond_21

    .line 814
    .line 815
    goto :goto_9

    .line 816
    :cond_21
    move-object v9, v0

    .line 817
    :cond_22
    :goto_9
    invoke-virtual {v1, v14}, Lag1;->f(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    invoke-virtual {v1, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    or-int/2addr v0, v2

    .line 826
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    if-nez v0, :cond_23

    .line 831
    .line 832
    if-ne v2, v6, :cond_24

    .line 833
    .line 834
    :cond_23
    new-instance v2, Ll4;

    .line 835
    .line 836
    const/16 v0, 0xb

    .line 837
    .line 838
    invoke-direct {v2, v0, v14, v7}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    :cond_24
    check-cast v2, Ldf1;

    .line 845
    .line 846
    const/16 v0, 0x8

    .line 847
    .line 848
    invoke-static {v15, v9, v2, v1, v0}, Lmt3;->b(Lpt3;Lnd2;Ldf1;Lag1;I)V

    .line 849
    .line 850
    .line 851
    return-object v5

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
