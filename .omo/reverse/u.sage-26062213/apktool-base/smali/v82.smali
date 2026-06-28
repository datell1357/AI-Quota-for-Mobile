.class public final synthetic Lv82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lv82;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lv82;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lv82;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lv82;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv82;->n:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    sget-object v3, Lt64;->a:Lt64;

    .line 8
    .line 9
    sget-object v4, Lrb0;->a:Lbx3;

    .line 10
    .line 11
    iget-object v5, v0, Lv82;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lv82;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lv82;->o:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Lpt;

    .line 23
    .line 24
    check-cast v6, Lne1;

    .line 25
    .line 26
    check-cast v5, Lpg2;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Ldb3;

    .line 31
    .line 32
    move-object/from16 v15, p2

    .line 33
    .line 34
    check-cast v15, Lag1;

    .line 35
    .line 36
    move-object/from16 v9, p3

    .line 37
    .line 38
    check-cast v9, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v1, v9, 0x11

    .line 48
    .line 49
    if-eq v1, v2, :cond_0

    .line 50
    .line 51
    move v7, v8

    .line 52
    :cond_0
    and-int/lit8 v1, v9, 0x1

    .line 53
    .line 54
    invoke-virtual {v15, v1, v7}, Lag1;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v15, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    if-ne v2, v4, :cond_2

    .line 71
    .line 72
    :cond_1
    new-instance v2, Lqs;

    .line 73
    .line 74
    const/4 v1, 0x6

    .line 75
    invoke-direct {v2, v0, v1}, Lqs;-><init>(Lpt;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v15, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    move-object v9, v2

    .line 82
    check-cast v9, Lne1;

    .line 83
    .line 84
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    xor-int/lit8 v11, v0, 0x1

    .line 95
    .line 96
    new-instance v0, Lsp0;

    .line 97
    .line 98
    const/16 v1, 0x18

    .line 99
    .line 100
    invoke-direct {v0, v1, v5}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const v1, 0x4f675bcb    # 3.88155264E9f

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v0, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    const/high16 v16, 0x180000

    .line 111
    .line 112
    const/16 v17, 0x3a

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v13, 0x0

    .line 117
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    if-ne v1, v4, :cond_4

    .line 131
    .line 132
    :cond_3
    new-instance v1, Lzi1;

    .line 133
    .line 134
    const/4 v0, 0x3

    .line 135
    invoke-direct {v1, v0, v6}, Lzi1;-><init>(ILne1;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    move-object v9, v1

    .line 142
    check-cast v9, Lne1;

    .line 143
    .line 144
    sget-object v14, Ldm0;->j:Lka0;

    .line 145
    .line 146
    const/high16 v16, 0x180000

    .line 147
    .line 148
    const/16 v17, 0x3e

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    const/4 v11, 0x0

    .line 152
    const/4 v12, 0x0

    .line 153
    const/4 v13, 0x0

    .line 154
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v15}, Lag1;->Q()V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-object v3

    .line 162
    :pswitch_0
    check-cast v0, Landroid/content/Context;

    .line 163
    .line 164
    check-cast v6, Lpg2;

    .line 165
    .line 166
    check-cast v5, Lts2;

    .line 167
    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    check-cast v1, Ldb3;

    .line 171
    .line 172
    move-object/from16 v15, p2

    .line 173
    .line 174
    check-cast v15, Lag1;

    .line 175
    .line 176
    move-object/from16 v9, p3

    .line 177
    .line 178
    check-cast v9, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    and-int/lit8 v1, v9, 0x11

    .line 188
    .line 189
    if-eq v1, v2, :cond_6

    .line 190
    .line 191
    move v1, v8

    .line 192
    goto :goto_1

    .line 193
    :cond_6
    move v1, v7

    .line 194
    :goto_1
    and-int/lit8 v2, v9, 0x1

    .line 195
    .line 196
    invoke-virtual {v15, v2, v1}, Lag1;->N(IZ)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    invoke-interface {v6}, Ltr3;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-lez v1, :cond_a

    .line 213
    .line 214
    const v1, -0x43c6050a

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v1}, Lag1;->W(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-nez v1, :cond_7

    .line 229
    .line 230
    if-ne v2, v4, :cond_8

    .line 231
    .line 232
    :cond_7
    new-instance v2, Lh4;

    .line 233
    .line 234
    const/16 v1, 0xa

    .line 235
    .line 236
    invoke-direct {v2, v1, v0, v6}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v15, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    move-object v9, v2

    .line 243
    check-cast v9, Lne1;

    .line 244
    .line 245
    sget-object v14, Lca;->c:Lka0;

    .line 246
    .line 247
    const/high16 v16, 0x180000

    .line 248
    .line 249
    const/16 v17, 0x3e

    .line 250
    .line 251
    const/4 v10, 0x0

    .line 252
    const/4 v11, 0x0

    .line 253
    const/4 v12, 0x0

    .line 254
    const/4 v13, 0x0

    .line 255
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v4, :cond_9

    .line 263
    .line 264
    new-instance v0, Lh4;

    .line 265
    .line 266
    const/16 v1, 0xb

    .line 267
    .line 268
    invoke-direct {v0, v1, v6, v5, v7}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v15, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_9
    move-object v9, v0

    .line 275
    check-cast v9, Lne1;

    .line 276
    .line 277
    sget-object v14, Lca;->d:Lka0;

    .line 278
    .line 279
    const v16, 0x180006

    .line 280
    .line 281
    .line 282
    const/16 v17, 0x3e

    .line 283
    .line 284
    const/4 v10, 0x0

    .line 285
    const/4 v11, 0x0

    .line 286
    const/4 v12, 0x0

    .line 287
    const/4 v13, 0x0

    .line 288
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_a
    const v0, -0x43b7dac4

    .line 296
    .line 297
    .line 298
    invoke-virtual {v15, v0}, Lag1;->W(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_b
    invoke-virtual {v15}, Lag1;->Q()V

    .line 306
    .line 307
    .line 308
    :goto_2
    return-object v3

    .line 309
    :pswitch_1
    check-cast v0, Ln8;

    .line 310
    .line 311
    check-cast v6, Landroid/content/Context;

    .line 312
    .line 313
    check-cast v5, Ltr3;

    .line 314
    .line 315
    move-object/from16 v1, p1

    .line 316
    .line 317
    check-cast v1, Ldb3;

    .line 318
    .line 319
    move-object/from16 v15, p2

    .line 320
    .line 321
    check-cast v15, Lag1;

    .line 322
    .line 323
    move-object/from16 v9, p3

    .line 324
    .line 325
    check-cast v9, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    and-int/lit8 v1, v9, 0x11

    .line 335
    .line 336
    if-eq v1, v2, :cond_c

    .line 337
    .line 338
    move v1, v8

    .line 339
    goto :goto_3

    .line 340
    :cond_c
    move v1, v7

    .line 341
    :goto_3
    and-int/lit8 v2, v9, 0x1

    .line 342
    .line 343
    invoke-virtual {v15, v2, v1}, Lag1;->N(IZ)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_13

    .line 348
    .line 349
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_f

    .line 360
    .line 361
    const v1, 0x7754dba4

    .line 362
    .line 363
    .line 364
    invoke-virtual {v15, v1}, Lag1;->W(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v15, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-virtual {v15, v6}, Lag1;->h(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    or-int/2addr v1, v2

    .line 376
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-nez v1, :cond_d

    .line 381
    .line 382
    if-ne v2, v4, :cond_e

    .line 383
    .line 384
    :cond_d
    new-instance v2, Lh4;

    .line 385
    .line 386
    const/16 v1, 0x9

    .line 387
    .line 388
    invoke-direct {v2, v1, v0, v6}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v15, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_e
    move-object v9, v2

    .line 395
    check-cast v9, Lne1;

    .line 396
    .line 397
    sget-object v14, Lzf5;->c:Lka0;

    .line 398
    .line 399
    const/high16 v16, 0x180000

    .line 400
    .line 401
    const/16 v17, 0x3e

    .line 402
    .line 403
    const/4 v10, 0x0

    .line 404
    const/4 v11, 0x0

    .line 405
    const/4 v12, 0x0

    .line 406
    const/4 v13, 0x0

    .line 407
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_f
    const v1, 0x7760fc1f

    .line 415
    .line 416
    .line 417
    invoke-virtual {v15, v1}, Lag1;->W(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 421
    .line 422
    .line 423
    :goto_4
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Ljava/util/List;

    .line 428
    .line 429
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_12

    .line 434
    .line 435
    const v1, 0x77629891

    .line 436
    .line 437
    .line 438
    invoke-virtual {v15, v1}, Lag1;->W(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    if-nez v1, :cond_10

    .line 450
    .line 451
    if-ne v2, v4, :cond_11

    .line 452
    .line 453
    :cond_10
    new-instance v2, Lm8;

    .line 454
    .line 455
    invoke-direct {v2, v0, v8}, Lm8;-><init>(Ln8;I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v15, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_11
    move-object v9, v2

    .line 462
    check-cast v9, Lne1;

    .line 463
    .line 464
    sget-object v14, Lzf5;->d:Lka0;

    .line 465
    .line 466
    const/high16 v16, 0x180000

    .line 467
    .line 468
    const/16 v17, 0x3e

    .line 469
    .line 470
    const/4 v10, 0x0

    .line 471
    const/4 v11, 0x0

    .line 472
    const/4 v12, 0x0

    .line 473
    const/4 v13, 0x0

    .line 474
    invoke-static/range {v9 .. v17}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 478
    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_12
    const v0, 0x77677e5f

    .line 482
    .line 483
    .line 484
    invoke-virtual {v15, v0}, Lag1;->W(I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v15, v7}, Lag1;->p(Z)V

    .line 488
    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_13
    invoke-virtual {v15}, Lag1;->Q()V

    .line 492
    .line 493
    .line 494
    :goto_5
    return-object v3

    .line 495
    :pswitch_2
    check-cast v0, Lxi2;

    .line 496
    .line 497
    move-object/from16 v17, v6

    .line 498
    .line 499
    check-cast v17, Ljava/lang/String;

    .line 500
    .line 501
    check-cast v5, Lu/sage/MainActivity;

    .line 502
    .line 503
    move-object/from16 v1, p1

    .line 504
    .line 505
    check-cast v1, Lzr2;

    .line 506
    .line 507
    move-object/from16 v2, p2

    .line 508
    .line 509
    check-cast v2, Lag1;

    .line 510
    .line 511
    move-object/from16 v6, p3

    .line 512
    .line 513
    check-cast v6, Ljava/lang/Integer;

    .line 514
    .line 515
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 516
    .line 517
    .line 518
    move-result v6

    .line 519
    sget v9, Lu/sage/MainActivity;->C:I

    .line 520
    .line 521
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    and-int/lit8 v9, v6, 0x6

    .line 525
    .line 526
    if-nez v9, :cond_15

    .line 527
    .line 528
    invoke-virtual {v2, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-eqz v9, :cond_14

    .line 533
    .line 534
    const/4 v9, 0x4

    .line 535
    goto :goto_6

    .line 536
    :cond_14
    const/4 v9, 0x2

    .line 537
    :goto_6
    or-int/2addr v6, v9

    .line 538
    :cond_15
    and-int/lit8 v9, v6, 0x13

    .line 539
    .line 540
    const/16 v10, 0x12

    .line 541
    .line 542
    if-eq v9, v10, :cond_16

    .line 543
    .line 544
    move v7, v8

    .line 545
    :cond_16
    and-int/2addr v6, v8

    .line 546
    invoke-virtual {v2, v6, v7}, Lag1;->N(IZ)Z

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    if-eqz v6, :cond_19

    .line 551
    .line 552
    sget-object v6, Lon3;->b:Lu51;

    .line 553
    .line 554
    invoke-static {v6, v1}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 555
    .line 556
    .line 557
    move-result-object v6

    .line 558
    invoke-static {v6, v1}, Lk75;->o(Lnd2;Lzr2;)Lnd2;

    .line 559
    .line 560
    .line 561
    move-result-object v18

    .line 562
    invoke-virtual {v2, v5}, Lag1;->h(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    invoke-virtual {v2, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    or-int/2addr v1, v6

    .line 571
    invoke-virtual {v2}, Lag1;->K()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    if-nez v1, :cond_17

    .line 576
    .line 577
    if-ne v6, v4, :cond_18

    .line 578
    .line 579
    :cond_17
    new-instance v6, Lm;

    .line 580
    .line 581
    const/16 v1, 0xd

    .line 582
    .line 583
    invoke-direct {v6, v1, v5, v0}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    :cond_18
    move-object/from16 v24, v6

    .line 590
    .line 591
    check-cast v24, Lpe1;

    .line 592
    .line 593
    const/16 v26, 0x0

    .line 594
    .line 595
    const/16 v19, 0x0

    .line 596
    .line 597
    const/16 v20, 0x0

    .line 598
    .line 599
    const/16 v21, 0x0

    .line 600
    .line 601
    const/16 v22, 0x0

    .line 602
    .line 603
    const/16 v23, 0x0

    .line 604
    .line 605
    move-object/from16 v16, v0

    .line 606
    .line 607
    move-object/from16 v25, v2

    .line 608
    .line 609
    invoke-static/range {v16 .. v26}, Ln44;->G(Lxi2;Ljava/lang/String;Lnd2;Lcw;Lpe1;Lpe1;Lpe1;Lpe1;Lpe1;Lag1;I)V

    .line 610
    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_19
    move-object/from16 v25, v2

    .line 614
    .line 615
    invoke-virtual/range {v25 .. v25}, Lag1;->Q()V

    .line 616
    .line 617
    .line 618
    :goto_7
    return-object v3

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
