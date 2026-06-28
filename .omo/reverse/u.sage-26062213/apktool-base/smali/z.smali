.class public final Lz;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lz;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Lz;->p:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(La0;II)V
    .locals 0

    .line 10
    iput p3, p0, Lz;->o:I

    iput-object p1, p0, Lz;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lz;->o:I

    .line 4
    .line 5
    sget-object v2, Lkd2;->b:Lkd2;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    sget-object v4, Lt64;->a:Lt64;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v0, v0, Lz;->p:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Lag1;

    .line 20
    .line 21
    move-object/from16 v2, p2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    and-int/lit8 v7, v2, 0x3

    .line 30
    .line 31
    if-eq v7, v3, :cond_0

    .line 32
    .line 33
    move v3, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v5

    .line 36
    :goto_0
    and-int/2addr v2, v6

    .line 37
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v0, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    move v3, v5

    .line 50
    :goto_1
    if-ge v3, v2, :cond_3

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Ldf1;

    .line 57
    .line 58
    iget-wide v8, v1, Lag1;->T:J

    .line 59
    .line 60
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    sget-object v9, Llb0;->c:Lkb0;

    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v9, Lkb0;->c:Lda;

    .line 70
    .line 71
    invoke-virtual {v1}, Lag1;->Z()V

    .line 72
    .line 73
    .line 74
    iget-boolean v10, v1, Lag1;->S:Z

    .line 75
    .line 76
    if-eqz v10, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v9}, Lag1;->k(Lne1;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual {v1}, Lag1;->j0()V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    sget-object v9, Lkb0;->g:Lfd;

    .line 90
    .line 91
    invoke-static {v9, v1, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-interface {v7, v1, v8}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v6}, Lag1;->p(Z)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v1}, Lag1;->Q()V

    .line 108
    .line 109
    .line 110
    :cond_3
    return-object v4

    .line 111
    :pswitch_0
    move-object/from16 v1, p1

    .line 112
    .line 113
    check-cast v1, Lag1;

    .line 114
    .line 115
    move-object/from16 v2, p2

    .line 116
    .line 117
    check-cast v2, Ljava/lang/Number;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 120
    .line 121
    .line 122
    check-cast v0, Lst0;

    .line 123
    .line 124
    invoke-static {v6}, Lqj0;->f0(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v0, v2, v1}, Lst0;->a(ILag1;)V

    .line 129
    .line 130
    .line 131
    return-object v4

    .line 132
    :pswitch_1
    move-object/from16 v1, p1

    .line 133
    .line 134
    check-cast v1, Lnd2;

    .line 135
    .line 136
    move-object/from16 v3, p2

    .line 137
    .line 138
    check-cast v3, Lld2;

    .line 139
    .line 140
    check-cast v0, Lag1;

    .line 141
    .line 142
    instance-of v4, v3, Lqb0;

    .line 143
    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    check-cast v3, Lqb0;

    .line 147
    .line 148
    iget-object v3, v3, Lqb0;->b:Lff1;

    .line 149
    .line 150
    const/4 v4, 0x3

    .line 151
    invoke-static {v4, v3}, Ln44;->R(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v3, v2, v0, v4}, Lff1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lnd2;

    .line 163
    .line 164
    invoke-static {v0, v2}, Lis0;->G(Lag1;Lnd2;)Lnd2;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    :cond_4
    invoke-interface {v1, v3}, Lnd2;->c(Lnd2;)Lnd2;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :pswitch_2
    move-object/from16 v1, p1

    .line 174
    .line 175
    check-cast v1, Lag1;

    .line 176
    .line 177
    move-object/from16 v2, p2

    .line 178
    .line 179
    check-cast v2, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 182
    .line 183
    .line 184
    check-cast v0, Lmb0;

    .line 185
    .line 186
    invoke-static {v6}, Lqj0;->f0(I)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-virtual {v0, v2, v1}, Lmb0;->a(ILag1;)V

    .line 191
    .line 192
    .line 193
    return-object v4

    .line 194
    :pswitch_3
    move-object/from16 v1, p1

    .line 195
    .line 196
    check-cast v1, Lb11;

    .line 197
    .line 198
    move-object/from16 v2, p2

    .line 199
    .line 200
    check-cast v2, Lb11;

    .line 201
    .line 202
    sget-object v3, Lb11;->p:Lb11;

    .line 203
    .line 204
    if-ne v1, v3, :cond_5

    .line 205
    .line 206
    if-ne v2, v3, :cond_5

    .line 207
    .line 208
    check-cast v0, Ly31;

    .line 209
    .line 210
    iget-object v0, v0, Ly31;->a:Lo14;

    .line 211
    .line 212
    iget-boolean v0, v0, Lo14;->d:Z

    .line 213
    .line 214
    if-nez v0, :cond_5

    .line 215
    .line 216
    move v5, v6

    .line 217
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :pswitch_4
    move-object/from16 v1, p1

    .line 223
    .line 224
    check-cast v1, Lag1;

    .line 225
    .line 226
    move-object/from16 v7, p2

    .line 227
    .line 228
    check-cast v7, Ljava/lang/Number;

    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    and-int/lit8 v8, v7, 0x3

    .line 235
    .line 236
    if-eq v8, v3, :cond_6

    .line 237
    .line 238
    move v3, v6

    .line 239
    goto :goto_3

    .line 240
    :cond_6
    move v3, v5

    .line 241
    :goto_3
    and-int/2addr v6, v7

    .line 242
    invoke-virtual {v1, v6, v3}, Lag1;->N(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    sget-object v6, Lrb0;->a:Lbx3;

    .line 253
    .line 254
    if-ne v3, v6, :cond_7

    .line 255
    .line 256
    sget-object v3, Ll9;->t:Ll9;

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    check-cast v3, Lpe1;

    .line 262
    .line 263
    invoke-static {v2, v3}, Ldh3;->a(Lnd2;Lpe1;)Lnd2;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v0, Lpg2;

    .line 268
    .line 269
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Ldf1;

    .line 274
    .line 275
    invoke-static {v2, v0, v1, v5}, Ln44;->J(Lnd2;Ldf1;Lag1;I)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_8
    invoke-virtual {v1}, Lag1;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_4
    return-object v4

    .line 283
    :pswitch_5
    move-object/from16 v1, p1

    .line 284
    .line 285
    check-cast v1, Lf82;

    .line 286
    .line 287
    move-object/from16 v2, p2

    .line 288
    .line 289
    check-cast v2, Lek1;

    .line 290
    .line 291
    check-cast v0, Lf9;

    .line 292
    .line 293
    iget-object v6, v0, Lf9;->B:Lue4;

    .line 294
    .line 295
    if-nez v6, :cond_9

    .line 296
    .line 297
    new-instance v6, Lue4;

    .line 298
    .line 299
    iget-object v7, v0, Lf9;->E:Lq9;

    .line 300
    .line 301
    invoke-virtual {v7}, Lq9;->getInsetsWatcher()Lxe4;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-direct {v6, v7}, Lue4;-><init>(Lxe4;)V

    .line 306
    .line 307
    .line 308
    iput-object v6, v0, Lf9;->B:Lue4;

    .line 309
    .line 310
    :cond_9
    iget-object v0, v6, Lue4;->a:Lxe4;

    .line 311
    .line 312
    sget-object v6, Lue4;->e:Ltf2;

    .line 313
    .line 314
    iget-object v7, v6, Lhs1;->b:[I

    .line 315
    .line 316
    iget-object v8, v6, Lhs1;->c:[Ljava/lang/Object;

    .line 317
    .line 318
    iget-object v6, v6, Lhs1;->a:[J

    .line 319
    .line 320
    array-length v9, v6

    .line 321
    sub-int/2addr v9, v3

    .line 322
    sget-object v3, Lnr1;->e:Lnr1;

    .line 323
    .line 324
    if-ltz v9, :cond_23

    .line 325
    .line 326
    move v10, v5

    .line 327
    :goto_5
    aget-wide v11, v6, v10

    .line 328
    .line 329
    not-long v13, v11

    .line 330
    const/4 v15, 0x7

    .line 331
    shl-long/2addr v13, v15

    .line 332
    and-long/2addr v13, v11

    .line 333
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    and-long/2addr v13, v15

    .line 339
    cmp-long v13, v13, v15

    .line 340
    .line 341
    if-eqz v13, :cond_22

    .line 342
    .line 343
    sub-int v13, v10, v9

    .line 344
    .line 345
    not-int v13, v13

    .line 346
    ushr-int/lit8 v13, v13, 0x1f

    .line 347
    .line 348
    const/16 v14, 0x8

    .line 349
    .line 350
    rsub-int/lit8 v13, v13, 0x8

    .line 351
    .line 352
    move v15, v5

    .line 353
    :goto_6
    if-ge v15, v13, :cond_21

    .line 354
    .line 355
    const-wide/16 v16, 0xff

    .line 356
    .line 357
    and-long v16, v11, v16

    .line 358
    .line 359
    const-wide/16 v18, 0x80

    .line 360
    .line 361
    cmp-long v16, v16, v18

    .line 362
    .line 363
    if-gez v16, :cond_1f

    .line 364
    .line 365
    shl-int/lit8 v16, v10, 0x3

    .line 366
    .line 367
    add-int v16, v16, v15

    .line 368
    .line 369
    aget v5, v7, v16

    .line 370
    .line 371
    aget-object v16, v8, v16

    .line 372
    .line 373
    move/from16 p0, v14

    .line 374
    .line 375
    move-object/from16 v14, v16

    .line 376
    .line 377
    check-cast v14, Lse4;

    .line 378
    .line 379
    move-object/from16 p1, v3

    .line 380
    .line 381
    move-object v3, v14

    .line 382
    check-cast v3, Lte4;

    .line 383
    .line 384
    iget-object v3, v3, Lte4;->c:Lhr1;

    .line 385
    .line 386
    invoke-static {v2, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    const/16 v16, 0x0

    .line 391
    .line 392
    if-eqz v3, :cond_e

    .line 393
    .line 394
    move-object v2, v14

    .line 395
    check-cast v2, Lte4;

    .line 396
    .line 397
    iget-object v2, v2, Lte4;->c:Lhr1;

    .line 398
    .line 399
    sget-object v3, Lse4;->a:Lre4;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    sget-object v3, Lre4;->j:Lte4;

    .line 405
    .line 406
    if-ne v14, v3, :cond_c

    .line 407
    .line 408
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    if-nez v0, :cond_a

    .line 413
    .line 414
    goto/16 :goto_14

    .line 415
    .line 416
    :cond_a
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 417
    .line 418
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    if-eqz v0, :cond_b

    .line 423
    .line 424
    :goto_7
    invoke-virtual {v0}, Lav0;->a()Lnr1;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    goto :goto_8

    .line 429
    :cond_b
    move-object/from16 v3, p1

    .line 430
    .line 431
    :goto_8
    invoke-static {v1, v2, v3}, Lue4;->b(Lf82;Lhr1;Lnr1;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_14

    .line 435
    .line 436
    :cond_c
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-eqz v0, :cond_d

    .line 441
    .line 442
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 443
    .line 444
    invoke-virtual {v0, v5}, Lhe4;->i(I)Lnr1;

    .line 445
    .line 446
    .line 447
    move-result-object v16

    .line 448
    :cond_d
    move-object/from16 v0, v16

    .line 449
    .line 450
    if-eqz v0, :cond_2d

    .line 451
    .line 452
    invoke-static {v1, v2, v0}, Lue4;->b(Lf82;Lhr1;Lnr1;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_14

    .line 456
    .line 457
    :cond_e
    move-object v3, v14

    .line 458
    check-cast v3, Lte4;

    .line 459
    .line 460
    iget-object v3, v3, Lte4;->d:Lhr1;

    .line 461
    .line 462
    invoke-static {v2, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 463
    .line 464
    .line 465
    move-result v18

    .line 466
    if-eqz v18, :cond_14

    .line 467
    .line 468
    sget-object v2, Lse4;->a:Lre4;

    .line 469
    .line 470
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    sget-object v2, Lre4;->j:Lte4;

    .line 474
    .line 475
    if-ne v14, v2, :cond_11

    .line 476
    .line 477
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-nez v0, :cond_f

    .line 482
    .line 483
    goto/16 :goto_14

    .line 484
    .line 485
    :cond_f
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 486
    .line 487
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    if-eqz v0, :cond_10

    .line 492
    .line 493
    :goto_9
    invoke-virtual {v0}, Lav0;->a()Lnr1;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    goto :goto_a

    .line 498
    :cond_10
    move-object/from16 v0, p1

    .line 499
    .line 500
    :goto_a
    invoke-static {v1, v3, v0}, Lue4;->b(Lf82;Lhr1;Lnr1;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_14

    .line 504
    .line 505
    :cond_11
    sget-object v2, Lre4;->d:Lte4;

    .line 506
    .line 507
    if-ne v14, v2, :cond_13

    .line 508
    .line 509
    :cond_12
    :goto_b
    move-object/from16 v0, v16

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_13
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    if-eqz v0, :cond_12

    .line 517
    .line 518
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 519
    .line 520
    invoke-virtual {v0, v5}, Lhe4;->j(I)Lnr1;

    .line 521
    .line 522
    .line 523
    move-result-object v16

    .line 524
    goto :goto_b

    .line 525
    :goto_c
    if-eqz v0, :cond_2d

    .line 526
    .line 527
    :goto_d
    invoke-static {v1, v3, v0}, Lue4;->b(Lf82;Lhr1;Lnr1;)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_14

    .line 531
    .line 532
    :cond_14
    const/4 v3, -0x1

    .line 533
    if-ne v5, v3, :cond_15

    .line 534
    .line 535
    goto/16 :goto_10

    .line 536
    .line 537
    :cond_15
    sget-object v3, Lue4;->c:Ltf2;

    .line 538
    .line 539
    invoke-virtual {v3, v5}, Lhs1;->b(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    check-cast v3, Lhr1;

    .line 544
    .line 545
    if-nez v3, :cond_16

    .line 546
    .line 547
    goto/16 :goto_10

    .line 548
    .line 549
    :cond_16
    invoke-static {v2, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 550
    .line 551
    .line 552
    move-result v18

    .line 553
    if-eqz v18, :cond_1a

    .line 554
    .line 555
    sget-object v2, Lse4;->a:Lre4;

    .line 556
    .line 557
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    sget-object v2, Lre4;->j:Lte4;

    .line 561
    .line 562
    if-ne v14, v2, :cond_18

    .line 563
    .line 564
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    if-nez v0, :cond_17

    .line 569
    .line 570
    goto/16 :goto_14

    .line 571
    .line 572
    :cond_17
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 573
    .line 574
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    if-eqz v0, :cond_10

    .line 579
    .line 580
    goto :goto_9

    .line 581
    :cond_18
    invoke-virtual {v0, v5}, Lxe4;->O(I)Lpg2;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Lwe4;

    .line 590
    .line 591
    if-eqz v0, :cond_19

    .line 592
    .line 593
    iget-object v0, v0, Lwe4;->a:Lnr1;

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_19
    move-object/from16 v0, v16

    .line 597
    .line 598
    :goto_e
    if-eqz v0, :cond_2d

    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_1a
    sget-object v3, Lue4;->d:Ltf2;

    .line 602
    .line 603
    invoke-virtual {v3, v5}, Lhs1;->b(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    check-cast v3, Lhr1;

    .line 608
    .line 609
    if-nez v3, :cond_1b

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_1b
    invoke-static {v2, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 613
    .line 614
    .line 615
    move-result v18

    .line 616
    if-eqz v18, :cond_20

    .line 617
    .line 618
    sget-object v2, Lse4;->a:Lre4;

    .line 619
    .line 620
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    sget-object v2, Lre4;->j:Lte4;

    .line 624
    .line 625
    if-ne v14, v2, :cond_1d

    .line 626
    .line 627
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    if-nez v0, :cond_1c

    .line 632
    .line 633
    goto/16 :goto_14

    .line 634
    .line 635
    :cond_1c
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 636
    .line 637
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    if-eqz v0, :cond_10

    .line 642
    .line 643
    goto/16 :goto_9

    .line 644
    .line 645
    :cond_1d
    invoke-virtual {v0, v5}, Lxe4;->O(I)Lpg2;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Lwe4;

    .line 654
    .line 655
    if-eqz v0, :cond_1e

    .line 656
    .line 657
    iget-object v0, v0, Lwe4;->b:Lnr1;

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_1e
    move-object/from16 v0, v16

    .line 661
    .line 662
    :goto_f
    if-eqz v0, :cond_2d

    .line 663
    .line 664
    goto/16 :goto_d

    .line 665
    .line 666
    :cond_1f
    move-object/from16 p1, v3

    .line 667
    .line 668
    move/from16 p0, v14

    .line 669
    .line 670
    :cond_20
    :goto_10
    shr-long v11, v11, p0

    .line 671
    .line 672
    add-int/lit8 v15, v15, 0x1

    .line 673
    .line 674
    move/from16 v14, p0

    .line 675
    .line 676
    move-object/from16 v3, p1

    .line 677
    .line 678
    const/4 v5, 0x0

    .line 679
    goto/16 :goto_6

    .line 680
    .line 681
    :cond_21
    move-object/from16 p1, v3

    .line 682
    .line 683
    move v3, v14

    .line 684
    if-ne v13, v3, :cond_24

    .line 685
    .line 686
    goto :goto_11

    .line 687
    :cond_22
    move-object/from16 p1, v3

    .line 688
    .line 689
    :goto_11
    if-eq v10, v9, :cond_24

    .line 690
    .line 691
    add-int/lit8 v10, v10, 0x1

    .line 692
    .line 693
    move-object/from16 v3, p1

    .line 694
    .line 695
    const/4 v5, 0x0

    .line 696
    goto/16 :goto_5

    .line 697
    .line 698
    :cond_23
    move-object/from16 p1, v3

    .line 699
    .line 700
    :cond_24
    sget-object v3, Lse4;->a:Lre4;

    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    sget-object v3, Lre4;->j:Lte4;

    .line 706
    .line 707
    iget-object v5, v3, Lte4;->c:Lhr1;

    .line 708
    .line 709
    invoke-static {v2, v5}, Lue4;->a(Lek1;Lhr1;)Z

    .line 710
    .line 711
    .line 712
    move-result v5

    .line 713
    if-eqz v5, :cond_26

    .line 714
    .line 715
    iget-object v2, v3, Lte4;->c:Lhr1;

    .line 716
    .line 717
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    if-nez v0, :cond_25

    .line 722
    .line 723
    goto/16 :goto_14

    .line 724
    .line 725
    :cond_25
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 726
    .line 727
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    if-eqz v0, :cond_b

    .line 732
    .line 733
    goto/16 :goto_7

    .line 734
    .line 735
    :cond_26
    iget-object v3, v3, Lte4;->d:Lhr1;

    .line 736
    .line 737
    invoke-static {v2, v3}, Lue4;->a(Lek1;Lhr1;)Z

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    if-eqz v5, :cond_28

    .line 742
    .line 743
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    if-nez v0, :cond_27

    .line 748
    .line 749
    goto/16 :goto_14

    .line 750
    .line 751
    :cond_27
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 752
    .line 753
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    if-eqz v0, :cond_10

    .line 758
    .line 759
    goto/16 :goto_9

    .line 760
    .line 761
    :cond_28
    sget-object v3, Lue4;->b:[Lhr1;

    .line 762
    .line 763
    array-length v5, v3

    .line 764
    const/4 v6, 0x0

    .line 765
    const/4 v7, 0x0

    .line 766
    :goto_12
    if-ge v6, v5, :cond_2d

    .line 767
    .line 768
    aget-object v8, v3, v6

    .line 769
    .line 770
    add-int/lit8 v9, v7, 0x1

    .line 771
    .line 772
    invoke-static {v2, v8}, Lue4;->a(Lek1;Lhr1;)Z

    .line 773
    .line 774
    .line 775
    move-result v10

    .line 776
    if-eqz v10, :cond_2c

    .line 777
    .line 778
    invoke-virtual {v0}, Lxe4;->M()Lke4;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    if-nez v0, :cond_29

    .line 783
    .line 784
    goto :goto_14

    .line 785
    :cond_29
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 786
    .line 787
    invoke-virtual {v0}, Lhe4;->h()Lav0;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    if-nez v0, :cond_2a

    .line 792
    .line 793
    goto :goto_14

    .line 794
    :cond_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 795
    .line 796
    const/16 v3, 0x1c

    .line 797
    .line 798
    if-lt v2, v3, :cond_2b

    .line 799
    .line 800
    iget-object v0, v0, Lav0;->a:Landroid/view/DisplayCutout;

    .line 801
    .line 802
    invoke-static {v0}, Ltf;->c(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    goto :goto_13

    .line 807
    :cond_2b
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 808
    .line 809
    :goto_13
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Landroid/graphics/Rect;

    .line 814
    .line 815
    invoke-virtual {v8}, Lhr1;->b()Lek1;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 820
    .line 821
    int-to-float v3, v3

    .line 822
    invoke-virtual {v1, v2, v3}, Lf82;->c(Lek1;F)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v8}, Lhr1;->d()Lek1;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 830
    .line 831
    int-to-float v3, v3

    .line 832
    invoke-virtual {v1, v2, v3}, Lf82;->c(Lek1;F)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v8}, Lhr1;->c()Lek1;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 840
    .line 841
    int-to-float v3, v3

    .line 842
    invoke-virtual {v1, v2, v3}, Lf82;->c(Lek1;F)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v8}, Lhr1;->a()Lek1;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 850
    .line 851
    int-to-float v0, v0

    .line 852
    invoke-virtual {v1, v2, v0}, Lf82;->c(Lek1;F)V

    .line 853
    .line 854
    .line 855
    goto :goto_14

    .line 856
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    .line 857
    .line 858
    move v7, v9

    .line 859
    goto :goto_12

    .line 860
    :cond_2d
    :goto_14
    return-object v4

    .line 861
    :pswitch_6
    move-object/from16 v1, p1

    .line 862
    .line 863
    check-cast v1, Lag1;

    .line 864
    .line 865
    move-object/from16 v2, p2

    .line 866
    .line 867
    check-cast v2, Ljava/lang/Number;

    .line 868
    .line 869
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    and-int/lit8 v5, v2, 0x3

    .line 874
    .line 875
    if-eq v5, v3, :cond_2e

    .line 876
    .line 877
    move v3, v6

    .line 878
    goto :goto_15

    .line 879
    :cond_2e
    const/4 v3, 0x0

    .line 880
    :goto_15
    and-int/2addr v2, v6

    .line 881
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    if-eqz v2, :cond_2f

    .line 886
    .line 887
    check-cast v0, La0;

    .line 888
    .line 889
    const/4 v2, 0x0

    .line 890
    invoke-virtual {v0, v2, v1}, La0;->a(ILag1;)V

    .line 891
    .line 892
    .line 893
    goto :goto_16

    .line 894
    :cond_2f
    invoke-virtual {v1}, Lag1;->Q()V

    .line 895
    .line 896
    .line 897
    :goto_16
    return-object v4

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
