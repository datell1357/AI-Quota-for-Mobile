.class public final synthetic Lo4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lne1;


# direct methods
.method public synthetic constructor <init>(ILne1;)V
    .locals 0

    .line 1
    iput p1, p0, Lo4;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lo4;->o:Lne1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lne1;II)V
    .locals 0

    .line 9
    iput p3, p0, Lo4;->n:I

    iput-object p1, p0, Lo4;->o:Lne1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo4;->n:I

    .line 4
    .line 5
    iget-object v2, v0, Lo4;->o:Lne1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lt64;->a:Lt64;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v13, p1

    .line 16
    .line 17
    check-cast v13, Lag1;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    and-int/lit8 v2, v1, 0x3

    .line 28
    .line 29
    if-eq v2, v4, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    :cond_0
    and-int/2addr v1, v5

    .line 33
    invoke-virtual {v13, v1, v3}, Lag1;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object v12, Lqn0;->b:Lka0;

    .line 40
    .line 41
    const/high16 v14, 0x180000

    .line 42
    .line 43
    const/16 v15, 0x3e

    .line 44
    .line 45
    iget-object v7, v0, Lo4;->o:Lne1;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    invoke-static/range {v7 .. v15}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v13}, Lag1;->Q()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-object v6

    .line 59
    :pswitch_0
    move-object/from16 v0, p1

    .line 60
    .line 61
    check-cast v0, Lag1;

    .line 62
    .line 63
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    and-int/lit8 v7, v1, 0x3

    .line 72
    .line 73
    if-eq v7, v4, :cond_2

    .line 74
    .line 75
    move v3, v5

    .line 76
    :cond_2
    and-int/2addr v1, v5

    .line 77
    invoke-virtual {v0, v1, v3}, Lag1;->N(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    sget-object v14, Lqn0;->a:Lka0;

    .line 84
    .line 85
    new-instance v1, Lo4;

    .line 86
    .line 87
    const/16 v3, 0xc

    .line 88
    .line 89
    invoke-direct {v1, v3, v2}, Lo4;-><init>(ILne1;)V

    .line 90
    .line 91
    .line 92
    const v2, 0x591cd292

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    sget-object v1, Ll04;->a:Lds2;

    .line 100
    .line 101
    move-object v4, v0

    .line 102
    sget-wide v0, Lt70;->e:J

    .line 103
    .line 104
    const-wide/16 v2, 0x0

    .line 105
    .line 106
    const/16 v5, 0x3e

    .line 107
    .line 108
    invoke-static/range {v0 .. v5}, Ll04;->a(JJLag1;I)Lk04;

    .line 109
    .line 110
    .line 111
    move-result-object v20

    .line 112
    const/16 v23, 0x186

    .line 113
    .line 114
    const/16 v24, 0x1ba

    .line 115
    .line 116
    const/4 v15, 0x0

    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v21, 0x0

    .line 124
    .line 125
    move-object/from16 v22, v4

    .line 126
    .line 127
    invoke-static/range {v14 .. v24}, Leg;->b(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;Lag1;II)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move-object v4, v0

    .line 132
    invoke-virtual {v4}, Lag1;->Q()V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-object v6

    .line 136
    :pswitch_1
    move-object/from16 v15, p1

    .line 137
    .line 138
    check-cast v15, Lag1;

    .line 139
    .line 140
    move-object/from16 v0, p2

    .line 141
    .line 142
    check-cast v0, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    and-int/lit8 v1, v0, 0x3

    .line 149
    .line 150
    if-eq v1, v4, :cond_4

    .line 151
    .line 152
    move v3, v5

    .line 153
    :cond_4
    and-int/2addr v0, v5

    .line 154
    invoke-virtual {v15, v0, v3}, Lag1;->N(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    sget-object v0, Lse0;->e:Lka0;

    .line 161
    .line 162
    new-instance v1, Lo4;

    .line 163
    .line 164
    const/4 v3, 0x6

    .line 165
    invoke-direct {v1, v3, v2}, Lo4;-><init>(ILne1;)V

    .line 166
    .line 167
    .line 168
    const v2, 0x3a969fee

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v1, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    sget-object v2, Ll04;->a:Lds2;

    .line 176
    .line 177
    sget-object v2, Lwa2;->a:Lis3;

    .line 178
    .line 179
    invoke-virtual {v15, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lua2;

    .line 184
    .line 185
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 186
    .line 187
    iget-wide v7, v3, Ly70;->n:J

    .line 188
    .line 189
    invoke-virtual {v15, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Lua2;

    .line 194
    .line 195
    iget-object v2, v2, Lua2;->a:Ly70;

    .line 196
    .line 197
    iget-wide v9, v2, Ly70;->o:J

    .line 198
    .line 199
    const/16 v12, 0x36

    .line 200
    .line 201
    move-object v11, v15

    .line 202
    invoke-static/range {v7 .. v12}, Ll04;->a(JJLag1;I)Lk04;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const/16 v16, 0x186

    .line 207
    .line 208
    const/16 v17, 0x1ba

    .line 209
    .line 210
    const/4 v8, 0x0

    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v14, 0x0

    .line 215
    move-object v7, v0

    .line 216
    move-object v9, v1

    .line 217
    invoke-static/range {v7 .. v17}, Leg;->b(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;Lag1;II)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    invoke-virtual {v15}, Lag1;->Q()V

    .line 222
    .line 223
    .line 224
    :goto_2
    return-object v6

    .line 225
    :pswitch_2
    move-object/from16 v0, p1

    .line 226
    .line 227
    check-cast v0, Lag1;

    .line 228
    .line 229
    move-object/from16 v1, p2

    .line 230
    .line 231
    check-cast v1, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const/4 v1, 0x7

    .line 237
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v2, v0, v1}, Lqj0;->k(Lne1;Lag1;I)V

    .line 242
    .line 243
    .line 244
    return-object v6

    .line 245
    :pswitch_3
    move-object/from16 v14, p1

    .line 246
    .line 247
    check-cast v14, Lag1;

    .line 248
    .line 249
    move-object/from16 v1, p2

    .line 250
    .line 251
    check-cast v1, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    and-int/lit8 v2, v1, 0x3

    .line 258
    .line 259
    if-eq v2, v4, :cond_6

    .line 260
    .line 261
    move v3, v5

    .line 262
    :cond_6
    and-int/2addr v1, v5

    .line 263
    invoke-virtual {v14, v1, v3}, Lag1;->N(IZ)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_7

    .line 268
    .line 269
    sget-object v13, Lse0;->h:Lka0;

    .line 270
    .line 271
    const/high16 v15, 0x30000000

    .line 272
    .line 273
    const/16 v16, 0x1fe

    .line 274
    .line 275
    iget-object v7, v0, Lo4;->o:Lne1;

    .line 276
    .line 277
    const/4 v8, 0x0

    .line 278
    const/4 v9, 0x0

    .line 279
    const/4 v10, 0x0

    .line 280
    const/4 v11, 0x0

    .line 281
    const/4 v12, 0x0

    .line 282
    invoke-static/range {v7 .. v16}, Ldm0;->i(Lne1;Lnd2;ZLjl3;Lkz;Lzr2;Lka0;Lag1;II)V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_7
    invoke-virtual {v14}, Lag1;->Q()V

    .line 287
    .line 288
    .line 289
    :goto_3
    return-object v6

    .line 290
    :pswitch_4
    move-object/from16 v1, p1

    .line 291
    .line 292
    check-cast v1, Lag1;

    .line 293
    .line 294
    move-object/from16 v2, p2

    .line 295
    .line 296
    check-cast v2, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    and-int/lit8 v7, v2, 0x3

    .line 303
    .line 304
    if-eq v7, v4, :cond_8

    .line 305
    .line 306
    move v3, v5

    .line 307
    :cond_8
    and-int/2addr v2, v5

    .line 308
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_9

    .line 313
    .line 314
    sget-object v21, Lse0;->l:Lka0;

    .line 315
    .line 316
    const/high16 v23, 0x30000000

    .line 317
    .line 318
    const/16 v24, 0x1fe

    .line 319
    .line 320
    iget-object v15, v0, Lo4;->o:Lne1;

    .line 321
    .line 322
    const/16 v16, 0x0

    .line 323
    .line 324
    const/16 v17, 0x0

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v19, 0x0

    .line 329
    .line 330
    const/16 v20, 0x0

    .line 331
    .line 332
    move-object/from16 v22, v1

    .line 333
    .line 334
    invoke-static/range {v15 .. v24}, Ldm0;->i(Lne1;Lnd2;ZLjl3;Lkz;Lzr2;Lka0;Lag1;II)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_9
    move-object/from16 v22, v1

    .line 339
    .line 340
    invoke-virtual/range {v22 .. v22}, Lag1;->Q()V

    .line 341
    .line 342
    .line 343
    :goto_4
    return-object v6

    .line 344
    :pswitch_5
    move-object/from16 v13, p1

    .line 345
    .line 346
    check-cast v13, Lag1;

    .line 347
    .line 348
    move-object/from16 v1, p2

    .line 349
    .line 350
    check-cast v1, Ljava/lang/Integer;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    and-int/lit8 v2, v1, 0x3

    .line 357
    .line 358
    if-eq v2, v4, :cond_a

    .line 359
    .line 360
    move v3, v5

    .line 361
    :cond_a
    and-int/2addr v1, v5

    .line 362
    invoke-virtual {v13, v1, v3}, Lag1;->N(IZ)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_b

    .line 367
    .line 368
    sget-object v12, Lse0;->f:Lka0;

    .line 369
    .line 370
    const/high16 v14, 0x180000

    .line 371
    .line 372
    const/16 v15, 0x3e

    .line 373
    .line 374
    iget-object v7, v0, Lo4;->o:Lne1;

    .line 375
    .line 376
    const/4 v8, 0x0

    .line 377
    const/4 v9, 0x0

    .line 378
    const/4 v10, 0x0

    .line 379
    const/4 v11, 0x0

    .line 380
    invoke-static/range {v7 .. v15}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 381
    .line 382
    .line 383
    goto :goto_5

    .line 384
    :cond_b
    invoke-virtual {v13}, Lag1;->Q()V

    .line 385
    .line 386
    .line 387
    :goto_5
    return-object v6

    .line 388
    :pswitch_6
    move-object/from16 v1, p1

    .line 389
    .line 390
    check-cast v1, Lag1;

    .line 391
    .line 392
    move-object/from16 v2, p2

    .line 393
    .line 394
    check-cast v2, Ljava/lang/Integer;

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    and-int/lit8 v7, v2, 0x3

    .line 401
    .line 402
    if-eq v7, v4, :cond_c

    .line 403
    .line 404
    move v3, v5

    .line 405
    :cond_c
    and-int/2addr v2, v5

    .line 406
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_d

    .line 411
    .line 412
    sget-object v19, Lca;->b:Lka0;

    .line 413
    .line 414
    const/high16 v21, 0x180000

    .line 415
    .line 416
    const/16 v22, 0x3e

    .line 417
    .line 418
    iget-object v14, v0, Lo4;->o:Lne1;

    .line 419
    .line 420
    const/4 v15, 0x0

    .line 421
    const/16 v16, 0x0

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    const/16 v18, 0x0

    .line 426
    .line 427
    move-object/from16 v20, v1

    .line 428
    .line 429
    invoke-static/range {v14 .. v22}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 430
    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_d
    move-object/from16 v20, v1

    .line 434
    .line 435
    invoke-virtual/range {v20 .. v20}, Lag1;->Q()V

    .line 436
    .line 437
    .line 438
    :goto_6
    return-object v6

    .line 439
    :pswitch_7
    move-object/from16 v0, p1

    .line 440
    .line 441
    check-cast v0, Lag1;

    .line 442
    .line 443
    move-object/from16 v1, p2

    .line 444
    .line 445
    check-cast v1, Ljava/lang/Integer;

    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    invoke-static {v5}, Lqj0;->f0(I)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    invoke-static {v2, v0, v1}, Lqj0;->g(Lne1;Lag1;I)V

    .line 455
    .line 456
    .line 457
    return-object v6

    .line 458
    :pswitch_8
    move-object/from16 v13, p1

    .line 459
    .line 460
    check-cast v13, Lag1;

    .line 461
    .line 462
    move-object/from16 v1, p2

    .line 463
    .line 464
    check-cast v1, Ljava/lang/Integer;

    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    and-int/lit8 v2, v1, 0x3

    .line 471
    .line 472
    if-eq v2, v4, :cond_e

    .line 473
    .line 474
    move v3, v5

    .line 475
    :cond_e
    and-int/2addr v1, v5

    .line 476
    invoke-virtual {v13, v1, v3}, Lag1;->N(IZ)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_f

    .line 481
    .line 482
    sget-object v12, Lw80;->d:Lka0;

    .line 483
    .line 484
    const/high16 v14, 0x180000

    .line 485
    .line 486
    const/16 v15, 0x3e

    .line 487
    .line 488
    iget-object v7, v0, Lo4;->o:Lne1;

    .line 489
    .line 490
    const/4 v8, 0x0

    .line 491
    const/4 v9, 0x0

    .line 492
    const/4 v10, 0x0

    .line 493
    const/4 v11, 0x0

    .line 494
    invoke-static/range {v7 .. v15}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 495
    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_f
    invoke-virtual {v13}, Lag1;->Q()V

    .line 499
    .line 500
    .line 501
    :goto_7
    return-object v6

    .line 502
    :pswitch_9
    move-object/from16 v0, p1

    .line 503
    .line 504
    check-cast v0, Lag1;

    .line 505
    .line 506
    move-object/from16 v1, p2

    .line 507
    .line 508
    check-cast v1, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    and-int/lit8 v7, v1, 0x3

    .line 515
    .line 516
    if-eq v7, v4, :cond_10

    .line 517
    .line 518
    move v3, v5

    .line 519
    :cond_10
    and-int/2addr v1, v5

    .line 520
    invoke-virtual {v0, v1, v3}, Lag1;->N(IZ)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-eqz v1, :cond_11

    .line 525
    .line 526
    sget-object v14, Lw80;->c:Lka0;

    .line 527
    .line 528
    new-instance v1, Lo4;

    .line 529
    .line 530
    const/4 v3, 0x3

    .line 531
    invoke-direct {v1, v3, v2}, Lo4;-><init>(ILne1;)V

    .line 532
    .line 533
    .line 534
    const v2, -0x219aabfc

    .line 535
    .line 536
    .line 537
    invoke-static {v2, v1, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 538
    .line 539
    .line 540
    move-result-object v16

    .line 541
    sget-object v1, Ll04;->a:Lds2;

    .line 542
    .line 543
    sget-object v1, Lwa2;->a:Lis3;

    .line 544
    .line 545
    invoke-virtual {v0, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    check-cast v2, Lua2;

    .line 550
    .line 551
    iget-object v2, v2, Lua2;->a:Ly70;

    .line 552
    .line 553
    iget-wide v2, v2, Ly70;->n:J

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    check-cast v1, Lua2;

    .line 560
    .line 561
    iget-object v1, v1, Lua2;->a:Ly70;

    .line 562
    .line 563
    iget-wide v4, v1, Ly70;->o:J

    .line 564
    .line 565
    move-wide/from16 v25, v4

    .line 566
    .line 567
    move-object v4, v0

    .line 568
    move-wide v0, v2

    .line 569
    move-wide/from16 v2, v25

    .line 570
    .line 571
    const/16 v5, 0x36

    .line 572
    .line 573
    invoke-static/range {v0 .. v5}, Ll04;->a(JJLag1;I)Lk04;

    .line 574
    .line 575
    .line 576
    move-result-object v20

    .line 577
    const/16 v23, 0x186

    .line 578
    .line 579
    const/16 v24, 0x1ba

    .line 580
    .line 581
    const/4 v15, 0x0

    .line 582
    const/16 v17, 0x0

    .line 583
    .line 584
    const/16 v18, 0x0

    .line 585
    .line 586
    const/16 v19, 0x0

    .line 587
    .line 588
    const/16 v21, 0x0

    .line 589
    .line 590
    move-object/from16 v22, v4

    .line 591
    .line 592
    invoke-static/range {v14 .. v24}, Leg;->b(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;Lag1;II)V

    .line 593
    .line 594
    .line 595
    goto :goto_8

    .line 596
    :cond_11
    move-object v4, v0

    .line 597
    invoke-virtual {v4}, Lag1;->Q()V

    .line 598
    .line 599
    .line 600
    :goto_8
    return-object v6

    .line 601
    :pswitch_a
    move-object/from16 v13, p1

    .line 602
    .line 603
    check-cast v13, Lag1;

    .line 604
    .line 605
    move-object/from16 v1, p2

    .line 606
    .line 607
    check-cast v1, Ljava/lang/Integer;

    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    and-int/lit8 v2, v1, 0x3

    .line 614
    .line 615
    if-eq v2, v4, :cond_12

    .line 616
    .line 617
    move v3, v5

    .line 618
    :cond_12
    and-int/2addr v1, v5

    .line 619
    invoke-virtual {v13, v1, v3}, Lag1;->N(IZ)Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_13

    .line 624
    .line 625
    sget-object v12, Lzf5;->b:Lka0;

    .line 626
    .line 627
    const/high16 v14, 0x180000

    .line 628
    .line 629
    const/16 v15, 0x3e

    .line 630
    .line 631
    iget-object v7, v0, Lo4;->o:Lne1;

    .line 632
    .line 633
    const/4 v8, 0x0

    .line 634
    const/4 v9, 0x0

    .line 635
    const/4 v10, 0x0

    .line 636
    const/4 v11, 0x0

    .line 637
    invoke-static/range {v7 .. v15}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 638
    .line 639
    .line 640
    goto :goto_9

    .line 641
    :cond_13
    invoke-virtual {v13}, Lag1;->Q()V

    .line 642
    .line 643
    .line 644
    :goto_9
    return-object v6

    .line 645
    :pswitch_b
    move-object/from16 v1, p1

    .line 646
    .line 647
    check-cast v1, Lag1;

    .line 648
    .line 649
    move-object/from16 v2, p2

    .line 650
    .line 651
    check-cast v2, Ljava/lang/Integer;

    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    and-int/lit8 v7, v2, 0x3

    .line 658
    .line 659
    if-eq v7, v4, :cond_14

    .line 660
    .line 661
    move v3, v5

    .line 662
    :cond_14
    and-int/2addr v2, v5

    .line 663
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_15

    .line 668
    .line 669
    sget-object v19, Lc75;->c:Lka0;

    .line 670
    .line 671
    const/high16 v21, 0x180000

    .line 672
    .line 673
    const/16 v22, 0x3e

    .line 674
    .line 675
    iget-object v14, v0, Lo4;->o:Lne1;

    .line 676
    .line 677
    const/4 v15, 0x0

    .line 678
    const/16 v16, 0x0

    .line 679
    .line 680
    const/16 v17, 0x0

    .line 681
    .line 682
    const/16 v18, 0x0

    .line 683
    .line 684
    move-object/from16 v20, v1

    .line 685
    .line 686
    invoke-static/range {v14 .. v22}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 687
    .line 688
    .line 689
    goto :goto_a

    .line 690
    :cond_15
    move-object/from16 v20, v1

    .line 691
    .line 692
    invoke-virtual/range {v20 .. v20}, Lag1;->Q()V

    .line 693
    .line 694
    .line 695
    :goto_a
    return-object v6

    .line 696
    nop

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
