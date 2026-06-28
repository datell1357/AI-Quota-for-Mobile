.class public final Lga2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Leh;


# direct methods
.method public constructor <init>(Lpf4;Lpf4;Lay2;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Leh;

    .line 5
    .line 6
    const/16 v4, 0x14

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lga2;->a:Leh;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Leh;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13

    .line 1
    iget-object v0, p0, Leh;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpf4;

    .line 4
    .line 5
    sget v1, Lb51;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ld70;->h(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sget-object v3, Lpf4;->q:Lmf4;

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    mul-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v4, 0x3f

    .line 23
    .line 24
    const-string v5, "There is no way to get here, but the compiler thinks otherwise."

    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    const/4 v7, 0x4

    .line 29
    const/4 v8, 0x0

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v9

    .line 45
    shl-long v11, v9, v1

    .line 46
    .line 47
    shr-long/2addr v9, v4

    .line 48
    xor-long/2addr v9, v11

    .line 49
    invoke-static {v9, v10}, Ld70;->j(J)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    shl-int/lit8 v0, p1, 0x1

    .line 62
    .line 63
    shr-int/lit8 p1, p1, 0x1f

    .line 64
    .line 65
    xor-int/2addr p1, v0

    .line 66
    invoke-static {p1}, Ld70;->i(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :goto_0
    move p1, v6

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    :goto_1
    move p1, v7

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-long v9, p1

    .line 95
    invoke-static {v9, v10}, Ld70;->j(J)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-static {p1}, Ld70;->i(I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :pswitch_6
    instance-of v0, p1, Lf00;

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    check-cast p1, Lf00;

    .line 118
    .line 119
    invoke-virtual {p1}, Lf00;->size()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-static {p1}, Ld70;->i(I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :goto_2
    add-int/2addr p1, v0

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_1
    check-cast p1, [B

    .line 131
    .line 132
    array-length p1, p1

    .line 133
    invoke-static {p1}, Ld70;->i(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    goto :goto_2

    .line 138
    :pswitch_7
    check-cast p1, Ll1;

    .line 139
    .line 140
    check-cast p1, Lsg1;

    .line 141
    .line 142
    invoke-virtual {p1, v8}, Lsg1;->a(Lbe3;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-static {p1}, Ld70;->i(I)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    goto :goto_2

    .line 151
    :pswitch_8
    check-cast p1, Ll1;

    .line 152
    .line 153
    check-cast p1, Lsg1;

    .line 154
    .line 155
    invoke-virtual {p1, v8}, Lsg1;->a(Lbe3;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    goto :goto_3

    .line 160
    :pswitch_9
    instance-of v0, p1, Lf00;

    .line 161
    .line 162
    if-eqz v0, :cond_2

    .line 163
    .line 164
    check-cast p1, Lf00;

    .line 165
    .line 166
    invoke-virtual {p1}, Lf00;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-static {p1}, Ld70;->i(I)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    check-cast p1, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {p1}, Ld70;->g(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    goto :goto_3

    .line 182
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    move p1, v1

    .line 188
    goto :goto_3

    .line 189
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    int-to-long v9, p1

    .line 208
    invoke-static {v9, v10}, Ld70;->j(J)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    goto :goto_3

    .line 213
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 216
    .line 217
    .line 218
    move-result-wide v9

    .line 219
    invoke-static {v9, v10}, Ld70;->j(J)I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    goto :goto_3

    .line 224
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v9

    .line 230
    invoke-static {v9, v10}, Ld70;->j(J)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    goto :goto_3

    .line 235
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :goto_3
    add-int/2addr p1, v2

    .line 250
    iget-object p0, p0, Leh;->p:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p0, Lpf4;

    .line 253
    .line 254
    const/4 v0, 0x2

    .line 255
    invoke-static {v0}, Ld70;->h(I)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-ne p0, v3, :cond_3

    .line 260
    .line 261
    mul-int/lit8 v0, v0, 0x2

    .line 262
    .line 263
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    packed-switch p0, :pswitch_data_1

    .line 268
    .line 269
    .line 270
    new-instance p0, Ljava/lang/RuntimeException;

    .line 271
    .line 272
    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p0

    .line 276
    :pswitch_12
    check-cast p2, Ljava/lang/Long;

    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 279
    .line 280
    .line 281
    move-result-wide v2

    .line 282
    shl-long v5, v2, v1

    .line 283
    .line 284
    shr-long v1, v2, v4

    .line 285
    .line 286
    xor-long/2addr v1, v5

    .line 287
    invoke-static {v1, v2}, Ld70;->j(J)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :pswitch_13
    check-cast p2, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    shl-int/lit8 p2, p0, 0x1

    .line 300
    .line 301
    shr-int/lit8 p0, p0, 0x1f

    .line 302
    .line 303
    xor-int/2addr p0, p2

    .line 304
    invoke-static {p0}, Ld70;->i(I)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    goto/16 :goto_7

    .line 309
    .line 310
    :pswitch_14
    check-cast p2, Ljava/lang/Long;

    .line 311
    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    :goto_4
    move v1, v6

    .line 316
    goto/16 :goto_7

    .line 317
    .line 318
    :pswitch_15
    check-cast p2, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    :goto_5
    move v1, v7

    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :pswitch_16
    check-cast p2, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    int-to-long v1, p0

    .line 333
    invoke-static {v1, v2}, Ld70;->j(J)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :pswitch_17
    check-cast p2, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    invoke-static {p0}, Ld70;->i(I)I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    goto/16 :goto_7

    .line 350
    .line 351
    :pswitch_18
    instance-of p0, p2, Lf00;

    .line 352
    .line 353
    if-eqz p0, :cond_4

    .line 354
    .line 355
    check-cast p2, Lf00;

    .line 356
    .line 357
    invoke-virtual {p2}, Lf00;->size()I

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    invoke-static {p0}, Ld70;->i(I)I

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    :goto_6
    add-int v1, p2, p0

    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :cond_4
    check-cast p2, [B

    .line 370
    .line 371
    array-length p0, p2

    .line 372
    invoke-static {p0}, Ld70;->i(I)I

    .line 373
    .line 374
    .line 375
    move-result p2

    .line 376
    goto :goto_6

    .line 377
    :pswitch_19
    check-cast p2, Ll1;

    .line 378
    .line 379
    check-cast p2, Lsg1;

    .line 380
    .line 381
    invoke-virtual {p2, v8}, Lsg1;->a(Lbe3;)I

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    invoke-static {p0}, Ld70;->i(I)I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    goto :goto_6

    .line 390
    :pswitch_1a
    check-cast p2, Ll1;

    .line 391
    .line 392
    check-cast p2, Lsg1;

    .line 393
    .line 394
    invoke-virtual {p2, v8}, Lsg1;->a(Lbe3;)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    goto :goto_7

    .line 399
    :pswitch_1b
    instance-of p0, p2, Lf00;

    .line 400
    .line 401
    if-eqz p0, :cond_5

    .line 402
    .line 403
    check-cast p2, Lf00;

    .line 404
    .line 405
    invoke-virtual {p2}, Lf00;->size()I

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    invoke-static {p0}, Ld70;->i(I)I

    .line 410
    .line 411
    .line 412
    move-result p2

    .line 413
    goto :goto_6

    .line 414
    :cond_5
    check-cast p2, Ljava/lang/String;

    .line 415
    .line 416
    invoke-static {p2}, Ld70;->g(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    goto :goto_7

    .line 421
    :pswitch_1c
    check-cast p2, Ljava/lang/Boolean;

    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    goto :goto_7

    .line 427
    :pswitch_1d
    check-cast p2, Ljava/lang/Integer;

    .line 428
    .line 429
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :pswitch_1e
    check-cast p2, Ljava/lang/Long;

    .line 434
    .line 435
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    goto :goto_4

    .line 439
    :pswitch_1f
    check-cast p2, Ljava/lang/Integer;

    .line 440
    .line 441
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result p0

    .line 445
    int-to-long v1, p0

    .line 446
    invoke-static {v1, v2}, Ld70;->j(J)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    goto :goto_7

    .line 451
    :pswitch_20
    check-cast p2, Ljava/lang/Long;

    .line 452
    .line 453
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 454
    .line 455
    .line 456
    move-result-wide v1

    .line 457
    invoke-static {v1, v2}, Ld70;->j(J)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    goto :goto_7

    .line 462
    :pswitch_21
    check-cast p2, Ljava/lang/Long;

    .line 463
    .line 464
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 465
    .line 466
    .line 467
    move-result-wide v1

    .line 468
    invoke-static {v1, v2}, Ld70;->j(J)I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    goto :goto_7

    .line 473
    :pswitch_22
    check-cast p2, Ljava/lang/Float;

    .line 474
    .line 475
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    goto/16 :goto_5

    .line 479
    .line 480
    :pswitch_23
    check-cast p2, Ljava/lang/Double;

    .line 481
    .line 482
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    goto/16 :goto_4

    .line 486
    .line 487
    :goto_7
    add-int/2addr v1, v0

    .line 488
    add-int/2addr v1, p1

    .line 489
    return v1

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
