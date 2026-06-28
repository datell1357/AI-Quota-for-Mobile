.class public final synthetic Llq;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Llq;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Llq;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Llq;->n:I

    .line 4
    .line 5
    const/high16 v1, 0x41800000    # 16.0f

    .line 6
    .line 7
    const v2, 0x7f100216

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/16 v4, 0xe

    .line 12
    .line 13
    const/high16 v5, 0x41000000    # 8.0f

    .line 14
    .line 15
    sget-object v6, Lkd2;->b:Lkd2;

    .line 16
    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    sget-object v10, Lt64;->a:Lt64;

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    move-object/from16 v0, p1

    .line 27
    .line 28
    check-cast v0, Lpe;

    .line 29
    .line 30
    move-object/from16 v1, p2

    .line 31
    .line 32
    check-cast v1, Lag1;

    .line 33
    .line 34
    move-object/from16 v2, p3

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/high16 v0, 0x40800000    # 4.0f

    .line 45
    .line 46
    invoke-static {v0}, Loa3;->a(F)Lna3;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    sget-object v0, Lwa2;->a:Lis3;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lua2;

    .line 57
    .line 58
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 59
    .line 60
    iget-wide v13, v0, Ly70;->O:J

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v6, v5, v0, v0, v4}, Lis0;->O(Lnd2;FFFI)Lnd2;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    sget-object v19, Ldm0;->k:Lka0;

    .line 68
    .line 69
    const v21, 0xc00006

    .line 70
    .line 71
    .line 72
    const/16 v22, 0x78

    .line 73
    .line 74
    const-wide/16 v15, 0x0

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    move-object/from16 v20, v1

    .line 81
    .line 82
    invoke-static/range {v11 .. v22}, Lwu3;->a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V

    .line 83
    .line 84
    .line 85
    return-object v10

    .line 86
    :pswitch_0
    move-object/from16 v0, p1

    .line 87
    .line 88
    check-cast v0, Lfo3;

    .line 89
    .line 90
    move-object/from16 v1, p2

    .line 91
    .line 92
    check-cast v1, Lag1;

    .line 93
    .line 94
    move-object/from16 v2, p3

    .line 95
    .line 96
    check-cast v2, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    and-int/lit8 v5, v2, 0x6

    .line 103
    .line 104
    if-nez v5, :cond_1

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_0

    .line 111
    .line 112
    const/4 v3, 0x4

    .line 113
    :cond_0
    or-int/2addr v2, v3

    .line 114
    :cond_1
    and-int/lit8 v3, v2, 0x13

    .line 115
    .line 116
    const/16 v5, 0x12

    .line 117
    .line 118
    if-eq v3, v5, :cond_2

    .line 119
    .line 120
    move v8, v9

    .line 121
    :cond_2
    and-int/lit8 v3, v2, 0x1

    .line 122
    .line 123
    invoke-virtual {v1, v3, v8}, Lag1;->N(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    const-wide/16 v34, 0x0

    .line 130
    .line 131
    and-int/lit8 v37, v2, 0xe

    .line 132
    .line 133
    const/16 v24, 0x0

    .line 134
    .line 135
    const/16 v25, 0x0

    .line 136
    .line 137
    const-wide/16 v26, 0x0

    .line 138
    .line 139
    const-wide/16 v28, 0x0

    .line 140
    .line 141
    const-wide/16 v30, 0x0

    .line 142
    .line 143
    const-wide/16 v32, 0x0

    .line 144
    .line 145
    move-object/from16 v23, v0

    .line 146
    .line 147
    move-object/from16 v36, v1

    .line 148
    .line 149
    invoke-static/range {v23 .. v37}, Lc75;->h(Lfo3;Lnd2;Ljl3;JJJJJLag1;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    move-object/from16 v36, v1

    .line 154
    .line 155
    invoke-virtual/range {v36 .. v36}, Lag1;->Q()V

    .line 156
    .line 157
    .line 158
    :goto_0
    return-object v10

    .line 159
    :pswitch_1
    move-object/from16 v0, p1

    .line 160
    .line 161
    check-cast v0, Ldb3;

    .line 162
    .line 163
    move-object/from16 v1, p2

    .line 164
    .line 165
    check-cast v1, Lag1;

    .line 166
    .line 167
    move-object/from16 v3, p3

    .line 168
    .line 169
    check-cast v3, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    and-int/lit8 v0, v3, 0x11

    .line 179
    .line 180
    if-eq v0, v7, :cond_4

    .line 181
    .line 182
    move v8, v9

    .line 183
    :cond_4
    and-int/lit8 v0, v3, 0x1

    .line 184
    .line 185
    invoke-virtual {v1, v0, v8}, Lag1;->N(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    invoke-static {v2, v1}, Lon4;->O(ILag1;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    const/16 v31, 0x0

    .line 196
    .line 197
    const v32, 0x3fffe

    .line 198
    .line 199
    .line 200
    const/4 v12, 0x0

    .line 201
    const-wide/16 v13, 0x0

    .line 202
    .line 203
    const-wide/16 v15, 0x0

    .line 204
    .line 205
    const/16 v17, 0x0

    .line 206
    .line 207
    const/16 v18, 0x0

    .line 208
    .line 209
    const-wide/16 v19, 0x0

    .line 210
    .line 211
    const/16 v21, 0x0

    .line 212
    .line 213
    const-wide/16 v22, 0x0

    .line 214
    .line 215
    const/16 v24, 0x0

    .line 216
    .line 217
    const/16 v25, 0x0

    .line 218
    .line 219
    const/16 v26, 0x0

    .line 220
    .line 221
    const/16 v27, 0x0

    .line 222
    .line 223
    const/16 v28, 0x0

    .line 224
    .line 225
    const/16 v30, 0x0

    .line 226
    .line 227
    move-object/from16 v29, v1

    .line 228
    .line 229
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_5
    move-object/from16 v29, v1

    .line 234
    .line 235
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 236
    .line 237
    .line 238
    :goto_1
    return-object v10

    .line 239
    :pswitch_2
    move-object/from16 v0, p1

    .line 240
    .line 241
    check-cast v0, Ldb3;

    .line 242
    .line 243
    move-object/from16 v1, p2

    .line 244
    .line 245
    check-cast v1, Lag1;

    .line 246
    .line 247
    move-object/from16 v3, p3

    .line 248
    .line 249
    check-cast v3, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    and-int/lit8 v0, v3, 0x11

    .line 259
    .line 260
    if-eq v0, v7, :cond_6

    .line 261
    .line 262
    move v8, v9

    .line 263
    :cond_6
    and-int/lit8 v0, v3, 0x1

    .line 264
    .line 265
    invoke-virtual {v1, v0, v8}, Lag1;->N(IZ)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    invoke-static {v2, v1}, Lon4;->O(ILag1;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    const/16 v31, 0x0

    .line 276
    .line 277
    const v32, 0x3fffe

    .line 278
    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    const-wide/16 v13, 0x0

    .line 282
    .line 283
    const-wide/16 v15, 0x0

    .line 284
    .line 285
    const/16 v17, 0x0

    .line 286
    .line 287
    const/16 v18, 0x0

    .line 288
    .line 289
    const-wide/16 v19, 0x0

    .line 290
    .line 291
    const/16 v21, 0x0

    .line 292
    .line 293
    const-wide/16 v22, 0x0

    .line 294
    .line 295
    const/16 v24, 0x0

    .line 296
    .line 297
    const/16 v25, 0x0

    .line 298
    .line 299
    const/16 v26, 0x0

    .line 300
    .line 301
    const/16 v27, 0x0

    .line 302
    .line 303
    const/16 v28, 0x0

    .line 304
    .line 305
    const/16 v30, 0x0

    .line 306
    .line 307
    move-object/from16 v29, v1

    .line 308
    .line 309
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_7
    move-object/from16 v29, v1

    .line 314
    .line 315
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 316
    .line 317
    .line 318
    :goto_2
    return-object v10

    .line 319
    :pswitch_3
    move-object/from16 v0, p1

    .line 320
    .line 321
    check-cast v0, Ldb3;

    .line 322
    .line 323
    move-object/from16 v1, p2

    .line 324
    .line 325
    check-cast v1, Lag1;

    .line 326
    .line 327
    move-object/from16 v2, p3

    .line 328
    .line 329
    check-cast v2, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    and-int/lit8 v0, v2, 0x11

    .line 339
    .line 340
    if-eq v0, v7, :cond_8

    .line 341
    .line 342
    move v8, v9

    .line 343
    :cond_8
    and-int/lit8 v0, v2, 0x1

    .line 344
    .line 345
    invoke-virtual {v1, v0, v8}, Lag1;->N(IZ)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_9

    .line 350
    .line 351
    const/16 v31, 0x0

    .line 352
    .line 353
    const v32, 0x3fffe

    .line 354
    .line 355
    .line 356
    const-string v11, "Freeze Copilot"

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    const-wide/16 v13, 0x0

    .line 360
    .line 361
    const-wide/16 v15, 0x0

    .line 362
    .line 363
    const/16 v17, 0x0

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    const-wide/16 v19, 0x0

    .line 368
    .line 369
    const/16 v21, 0x0

    .line 370
    .line 371
    const-wide/16 v22, 0x0

    .line 372
    .line 373
    const/16 v24, 0x0

    .line 374
    .line 375
    const/16 v25, 0x0

    .line 376
    .line 377
    const/16 v26, 0x0

    .line 378
    .line 379
    const/16 v27, 0x0

    .line 380
    .line 381
    const/16 v28, 0x0

    .line 382
    .line 383
    const/16 v30, 0x6

    .line 384
    .line 385
    move-object/from16 v29, v1

    .line 386
    .line 387
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_9
    move-object/from16 v29, v1

    .line 392
    .line 393
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 394
    .line 395
    .line 396
    :goto_3
    return-object v10

    .line 397
    :pswitch_4
    move-object/from16 v0, p1

    .line 398
    .line 399
    check-cast v0, Ldb3;

    .line 400
    .line 401
    move-object/from16 v1, p2

    .line 402
    .line 403
    check-cast v1, Lag1;

    .line 404
    .line 405
    move-object/from16 v2, p3

    .line 406
    .line 407
    check-cast v2, Ljava/lang/Integer;

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    and-int/lit8 v0, v2, 0x11

    .line 417
    .line 418
    if-eq v0, v7, :cond_a

    .line 419
    .line 420
    move v8, v9

    .line 421
    :cond_a
    and-int/lit8 v0, v2, 0x1

    .line 422
    .line 423
    invoke-virtual {v1, v0, v8}, Lag1;->N(IZ)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_b

    .line 428
    .line 429
    const/16 v31, 0x0

    .line 430
    .line 431
    const v32, 0x3fffe

    .line 432
    .line 433
    .line 434
    const-string v11, "Freeze Claude"

    .line 435
    .line 436
    const/4 v12, 0x0

    .line 437
    const-wide/16 v13, 0x0

    .line 438
    .line 439
    const-wide/16 v15, 0x0

    .line 440
    .line 441
    const/16 v17, 0x0

    .line 442
    .line 443
    const/16 v18, 0x0

    .line 444
    .line 445
    const-wide/16 v19, 0x0

    .line 446
    .line 447
    const/16 v21, 0x0

    .line 448
    .line 449
    const-wide/16 v22, 0x0

    .line 450
    .line 451
    const/16 v24, 0x0

    .line 452
    .line 453
    const/16 v25, 0x0

    .line 454
    .line 455
    const/16 v26, 0x0

    .line 456
    .line 457
    const/16 v27, 0x0

    .line 458
    .line 459
    const/16 v28, 0x0

    .line 460
    .line 461
    const/16 v30, 0x6

    .line 462
    .line 463
    move-object/from16 v29, v1

    .line 464
    .line 465
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_b
    move-object/from16 v29, v1

    .line 470
    .line 471
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 472
    .line 473
    .line 474
    :goto_4
    return-object v10

    .line 475
    :pswitch_5
    move-object/from16 v0, p1

    .line 476
    .line 477
    check-cast v0, Ldb3;

    .line 478
    .line 479
    move-object/from16 v2, p2

    .line 480
    .line 481
    check-cast v2, Lag1;

    .line 482
    .line 483
    move-object/from16 v3, p3

    .line 484
    .line 485
    check-cast v3, Ljava/lang/Integer;

    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    and-int/lit8 v0, v3, 0x11

    .line 495
    .line 496
    if-eq v0, v7, :cond_c

    .line 497
    .line 498
    move v8, v9

    .line 499
    :cond_c
    and-int/lit8 v0, v3, 0x1

    .line 500
    .line 501
    invoke-virtual {v2, v0, v8}, Lag1;->N(IZ)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_d

    .line 506
    .line 507
    invoke-static {}, Lfl4;->r()Lso1;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    invoke-static {v6, v1}, Lon3;->c(Lnd2;F)Lnd2;

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    const/16 v17, 0x1b0

    .line 516
    .line 517
    const/16 v18, 0x8

    .line 518
    .line 519
    const/4 v12, 0x0

    .line 520
    const-wide/16 v14, 0x0

    .line 521
    .line 522
    move-object/from16 v16, v2

    .line 523
    .line 524
    invoke-static/range {v11 .. v18}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 525
    .line 526
    .line 527
    move-object/from16 v0, v16

    .line 528
    .line 529
    invoke-static {v5}, Lon3;->f(F)Lnd2;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Lmt1;->f(Lag1;Lnd2;)V

    .line 534
    .line 535
    .line 536
    const/16 v31, 0x0

    .line 537
    .line 538
    const v32, 0x3fffe

    .line 539
    .line 540
    .line 541
    const-string v11, "In 60s"

    .line 542
    .line 543
    const-wide/16 v13, 0x0

    .line 544
    .line 545
    const-wide/16 v15, 0x0

    .line 546
    .line 547
    const/16 v17, 0x0

    .line 548
    .line 549
    const/16 v18, 0x0

    .line 550
    .line 551
    const-wide/16 v19, 0x0

    .line 552
    .line 553
    const/16 v21, 0x0

    .line 554
    .line 555
    const-wide/16 v22, 0x0

    .line 556
    .line 557
    const/16 v24, 0x0

    .line 558
    .line 559
    const/16 v25, 0x0

    .line 560
    .line 561
    const/16 v26, 0x0

    .line 562
    .line 563
    const/16 v27, 0x0

    .line 564
    .line 565
    const/16 v28, 0x0

    .line 566
    .line 567
    const/16 v30, 0x6

    .line 568
    .line 569
    move-object/from16 v29, v0

    .line 570
    .line 571
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 572
    .line 573
    .line 574
    goto :goto_5

    .line 575
    :cond_d
    move-object/from16 v29, v2

    .line 576
    .line 577
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 578
    .line 579
    .line 580
    :goto_5
    return-object v10

    .line 581
    :pswitch_6
    move-object/from16 v0, p1

    .line 582
    .line 583
    check-cast v0, Ldb3;

    .line 584
    .line 585
    move-object/from16 v2, p2

    .line 586
    .line 587
    check-cast v2, Lag1;

    .line 588
    .line 589
    move-object/from16 v3, p3

    .line 590
    .line 591
    check-cast v3, Ljava/lang/Integer;

    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    and-int/lit8 v0, v3, 0x11

    .line 601
    .line 602
    if-eq v0, v7, :cond_e

    .line 603
    .line 604
    move v8, v9

    .line 605
    :cond_e
    and-int/lit8 v0, v3, 0x1

    .line 606
    .line 607
    invoke-virtual {v2, v0, v8}, Lag1;->N(IZ)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_f

    .line 612
    .line 613
    invoke-static {}, Lfl4;->r()Lso1;

    .line 614
    .line 615
    .line 616
    move-result-object v11

    .line 617
    invoke-static {v6, v1}, Lon3;->c(Lnd2;F)Lnd2;

    .line 618
    .line 619
    .line 620
    move-result-object v13

    .line 621
    const/16 v17, 0x1b0

    .line 622
    .line 623
    const/16 v18, 0x8

    .line 624
    .line 625
    const/4 v12, 0x0

    .line 626
    const-wide/16 v14, 0x0

    .line 627
    .line 628
    move-object/from16 v16, v2

    .line 629
    .line 630
    invoke-static/range {v11 .. v18}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 631
    .line 632
    .line 633
    move-object/from16 v0, v16

    .line 634
    .line 635
    invoke-static {v5}, Lon3;->f(F)Lnd2;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-static {v0, v1}, Lmt1;->f(Lag1;Lnd2;)V

    .line 640
    .line 641
    .line 642
    const/16 v31, 0x0

    .line 643
    .line 644
    const v32, 0x3fffe

    .line 645
    .line 646
    .line 647
    const-string v11, "In 10s"

    .line 648
    .line 649
    const-wide/16 v13, 0x0

    .line 650
    .line 651
    const-wide/16 v15, 0x0

    .line 652
    .line 653
    const/16 v17, 0x0

    .line 654
    .line 655
    const/16 v18, 0x0

    .line 656
    .line 657
    const-wide/16 v19, 0x0

    .line 658
    .line 659
    const/16 v21, 0x0

    .line 660
    .line 661
    const-wide/16 v22, 0x0

    .line 662
    .line 663
    const/16 v24, 0x0

    .line 664
    .line 665
    const/16 v25, 0x0

    .line 666
    .line 667
    const/16 v26, 0x0

    .line 668
    .line 669
    const/16 v27, 0x0

    .line 670
    .line 671
    const/16 v28, 0x0

    .line 672
    .line 673
    const/16 v30, 0x6

    .line 674
    .line 675
    move-object/from16 v29, v0

    .line 676
    .line 677
    invoke-static/range {v11 .. v32}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 678
    .line 679
    .line 680
    goto :goto_6

    .line 681
    :cond_f
    move-object/from16 v29, v2

    .line 682
    .line 683
    invoke-virtual/range {v29 .. v29}, Lag1;->Q()V

    .line 684
    .line 685
    .line 686
    :goto_6
    return-object v10

    .line 687
    :pswitch_7
    move-object/from16 v0, p1

    .line 688
    .line 689
    check-cast v0, Ldb3;

    .line 690
    .line 691
    move-object/from16 v0, p2

    .line 692
    .line 693
    check-cast v0, Lag1;

    .line 694
    .line 695
    move-object/from16 v1, p3

    .line 696
    .line 697
    check-cast v1, Ljava/lang/Integer;

    .line 698
    .line 699
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    and-int/lit8 v2, v1, 0x11

    .line 704
    .line 705
    if-eq v2, v7, :cond_10

    .line 706
    .line 707
    move v8, v9

    .line 708
    :cond_10
    and-int/2addr v1, v9

    .line 709
    invoke-virtual {v0, v1, v8}, Lag1;->N(IZ)Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-eqz v1, :cond_11

    .line 714
    .line 715
    goto :goto_7

    .line 716
    :cond_11
    invoke-virtual {v0}, Lag1;->Q()V

    .line 717
    .line 718
    .line 719
    :goto_7
    return-object v10

    .line 720
    :pswitch_8
    move-object/from16 v0, p1

    .line 721
    .line 722
    check-cast v0, Lpe;

    .line 723
    .line 724
    move-object/from16 v0, p2

    .line 725
    .line 726
    check-cast v0, Lag1;

    .line 727
    .line 728
    move-object/from16 v1, p3

    .line 729
    .line 730
    check-cast v1, Ljava/lang/Integer;

    .line 731
    .line 732
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    .line 734
    .line 735
    const v1, -0x48a6af2b

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v1}, Lag1;->W(I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, v8}, Lag1;->p(Z)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    sget-object v2, Lrb0;->a:Lbx3;

    .line 749
    .line 750
    if-ne v1, v2, :cond_12

    .line 751
    .line 752
    const/4 v1, 0x0

    .line 753
    invoke-static {v1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v0, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    :cond_12
    check-cast v1, Lpg2;

    .line 761
    .line 762
    sget-object v2, Lmj1;->s:Lcw;

    .line 763
    .line 764
    invoke-static {v2, v8}, Lqx;->d(Lcw;Z)Ldb2;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    iget-wide v3, v0, Lag1;->T:J

    .line 769
    .line 770
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    invoke-static {v0, v6}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    sget-object v6, Llb0;->c:Lkb0;

    .line 783
    .line 784
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    sget-object v6, Lkb0;->b:Lic0;

    .line 788
    .line 789
    invoke-virtual {v0}, Lag1;->Z()V

    .line 790
    .line 791
    .line 792
    iget-boolean v7, v0, Lag1;->S:Z

    .line 793
    .line 794
    if-eqz v7, :cond_13

    .line 795
    .line 796
    invoke-virtual {v0, v6}, Lag1;->k(Lne1;)V

    .line 797
    .line 798
    .line 799
    goto :goto_8

    .line 800
    :cond_13
    invoke-virtual {v0}, Lag1;->j0()V

    .line 801
    .line 802
    .line 803
    :goto_8
    sget-object v6, Lkb0;->f:Lfd;

    .line 804
    .line 805
    invoke-static {v6, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 806
    .line 807
    .line 808
    sget-object v2, Lkb0;->e:Lfd;

    .line 809
    .line 810
    invoke-static {v2, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    sget-object v3, Lkb0;->g:Lfd;

    .line 818
    .line 819
    invoke-static {v3, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    sget-object v2, Lkb0;->h:Ll9;

    .line 823
    .line 824
    invoke-static {v0, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 825
    .line 826
    .line 827
    sget-object v2, Lkb0;->d:Lfd;

    .line 828
    .line 829
    invoke-static {v2, v0, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 830
    .line 831
    .line 832
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    check-cast v1, Ldf1;

    .line 837
    .line 838
    if-nez v1, :cond_14

    .line 839
    .line 840
    const v1, -0x272c31f8

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, v1}, Lag1;->W(I)V

    .line 844
    .line 845
    .line 846
    :goto_9
    invoke-virtual {v0, v8}, Lag1;->p(Z)V

    .line 847
    .line 848
    .line 849
    goto :goto_a

    .line 850
    :cond_14
    const v2, 0x2806d519

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, v2}, Lag1;->W(I)V

    .line 854
    .line 855
    .line 856
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-interface {v1, v0, v2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    goto :goto_9

    .line 864
    :goto_a
    invoke-virtual {v0, v9}, Lag1;->p(Z)V

    .line 865
    .line 866
    .line 867
    return-object v10

    .line 868
    :pswitch_9
    move-object/from16 v11, p1

    .line 869
    .line 870
    check-cast v11, Lgb2;

    .line 871
    .line 872
    move-object/from16 v0, p2

    .line 873
    .line 874
    check-cast v0, Lya2;

    .line 875
    .line 876
    move-object/from16 v1, p3

    .line 877
    .line 878
    check-cast v1, Lmf0;

    .line 879
    .line 880
    iget-wide v1, v1, Lmf0;->a:J

    .line 881
    .line 882
    invoke-interface {v0, v1, v2}, Lya2;->e(J)Ldv2;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    iget v12, v0, Ldv2;->n:I

    .line 887
    .line 888
    iget v13, v0, Ldv2;->o:I

    .line 889
    .line 890
    new-instance v15, Lt3;

    .line 891
    .line 892
    const/16 v1, 0x9

    .line 893
    .line 894
    invoke-direct {v15, v1}, Lt3;-><init>(I)V

    .line 895
    .line 896
    .line 897
    new-instance v1, Le0;

    .line 898
    .line 899
    invoke-direct {v1, v0, v3}, Le0;-><init>(Ldv2;I)V

    .line 900
    .line 901
    .line 902
    sget-object v14, Lh01;->n:Lh01;

    .line 903
    .line 904
    move-object/from16 v16, v1

    .line 905
    .line 906
    invoke-interface/range {v11 .. v16}, Lgb2;->L(IILjava/util/Map;Lpe1;Lpe1;)Leb2;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    return-object v0

    .line 911
    :pswitch_data_0
    .packed-switch 0x0
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
