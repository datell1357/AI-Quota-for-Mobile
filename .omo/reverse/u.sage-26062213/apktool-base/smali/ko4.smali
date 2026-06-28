.class public final Lko4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lui3;


# direct methods
.method public constructor <init>(Lup4;Lup4;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lui3;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p1, p2, p3, v1}, Lui3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lko4;->a:Lui3;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Ljn4;Lui3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lup4;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v0, v1, p2}, Lmn4;->b(Ljn4;Lup4;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lui3;->p:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lup4;

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-static {p0, p1, p2, p3}, Lmn4;->b(Ljn4;Lup4;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Lui3;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lui3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lup4;

    .line 4
    .line 5
    iget-object p0, p0, Lui3;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lup4;

    .line 8
    .line 9
    sget v1, Lmn4;->c:I

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-static {v1}, Ljn4;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Lup4;->q:Lup4;

    .line 18
    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    add-int/2addr v2, v2

    .line 22
    :cond_0
    sget-object v4, Lvp4;->n:Lvp4;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v4, 0x1

    .line 29
    const/16 v5, 0x3f

    .line 30
    .line 31
    const-string v6, "There is no way to get here, but the compiler thinks otherwise."

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    add-long v10, v8, v8

    .line 50
    .line 51
    shr-long/2addr v8, v5

    .line 52
    xor-long/2addr v8, v10

    .line 53
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    add-int v0, p1, p1

    .line 66
    .line 67
    shr-int/lit8 p1, p1, 0x1f

    .line 68
    .line 69
    xor-int/2addr p1, v0

    .line 70
    invoke-static {p1}, Ljn4;->a(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    :goto_0
    move p1, v1

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :goto_1
    move p1, v7

    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_4
    instance-of v0, p1, Ltn4;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    check-cast p1, Ltn4;

    .line 97
    .line 98
    invoke-interface {p1}, Ltn4;->zza()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    int-to-long v8, p1

    .line 103
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    int-to-long v8, p1

    .line 116
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Ljn4;->a(I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :pswitch_6
    instance-of v0, p1, Lzm4;

    .line 135
    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    check-cast p1, Lzm4;

    .line 139
    .line 140
    invoke-virtual {p1}, Lzm4;->c()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {p1}, Ljn4;->a(I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    :goto_2
    add-int/2addr p1, v0

    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :cond_2
    check-cast p1, [B

    .line 152
    .line 153
    array-length p1, p1

    .line 154
    invoke-static {p1}, Ljn4;->a(I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    goto :goto_2

    .line 159
    :pswitch_7
    check-cast p1, Lsm4;

    .line 160
    .line 161
    check-cast p1, Lrn4;

    .line 162
    .line 163
    invoke-virtual {p1}, Lrn4;->m()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-static {p1}, Ljn4;->a(I)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    goto :goto_2

    .line 172
    :pswitch_8
    check-cast p1, Lsm4;

    .line 173
    .line 174
    check-cast p1, Lrn4;

    .line 175
    .line 176
    invoke-virtual {p1}, Lrn4;->m()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    goto :goto_3

    .line 181
    :pswitch_9
    instance-of v0, p1, Lzm4;

    .line 182
    .line 183
    if-eqz v0, :cond_3

    .line 184
    .line 185
    check-cast p1, Lzm4;

    .line 186
    .line 187
    invoke-virtual {p1}, Lzm4;->c()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-static {p1}, Ljn4;->a(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    goto :goto_2

    .line 196
    :cond_3
    check-cast p1, Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {p1}, Ltp4;->b(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-static {p1}, Ljn4;->a(I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    goto :goto_2

    .line 207
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move p1, v4

    .line 213
    goto :goto_3

    .line 214
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    int-to-long v8, p1

    .line 235
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    goto :goto_3

    .line 240
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 243
    .line 244
    .line 245
    move-result-wide v8

    .line 246
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    goto :goto_3

    .line 251
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 254
    .line 255
    .line 256
    move-result-wide v8

    .line 257
    invoke-static {v8, v9}, Ljn4;->b(J)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    goto :goto_3

    .line 262
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :goto_3
    add-int/2addr p1, v2

    .line 277
    const/16 v0, 0x10

    .line 278
    .line 279
    invoke-static {v0}, Ljn4;->a(I)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-ne p0, v3, :cond_4

    .line 284
    .line 285
    add-int/2addr v0, v0

    .line 286
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    packed-switch p0, :pswitch_data_1

    .line 291
    .line 292
    .line 293
    new-instance p0, Ljava/lang/RuntimeException;

    .line 294
    .line 295
    invoke-direct {p0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :pswitch_12
    check-cast p2, Ljava/lang/Long;

    .line 300
    .line 301
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 302
    .line 303
    .line 304
    move-result-wide v1

    .line 305
    add-long v3, v1, v1

    .line 306
    .line 307
    shr-long/2addr v1, v5

    .line 308
    xor-long/2addr v1, v3

    .line 309
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    goto/16 :goto_6

    .line 314
    .line 315
    :pswitch_13
    check-cast p2, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    add-int p2, p0, p0

    .line 322
    .line 323
    shr-int/lit8 p0, p0, 0x1f

    .line 324
    .line 325
    xor-int/2addr p0, p2

    .line 326
    invoke-static {p0}, Ljn4;->a(I)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :pswitch_14
    check-cast p2, Ljava/lang/Long;

    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    goto/16 :goto_6

    .line 338
    .line 339
    :pswitch_15
    check-cast p2, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    :goto_4
    move v1, v7

    .line 345
    goto/16 :goto_6

    .line 346
    .line 347
    :pswitch_16
    instance-of p0, p2, Ltn4;

    .line 348
    .line 349
    if-eqz p0, :cond_5

    .line 350
    .line 351
    check-cast p2, Ltn4;

    .line 352
    .line 353
    invoke-interface {p2}, Ltn4;->zza()I

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    int-to-long v1, p0

    .line 358
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    goto/16 :goto_6

    .line 363
    .line 364
    :cond_5
    check-cast p2, Ljava/lang/Integer;

    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    int-to-long v1, p0

    .line 371
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    goto/16 :goto_6

    .line 376
    .line 377
    :pswitch_17
    check-cast p2, Ljava/lang/Integer;

    .line 378
    .line 379
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result p0

    .line 383
    invoke-static {p0}, Ljn4;->a(I)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :pswitch_18
    instance-of p0, p2, Lzm4;

    .line 390
    .line 391
    if-eqz p0, :cond_6

    .line 392
    .line 393
    check-cast p2, Lzm4;

    .line 394
    .line 395
    invoke-virtual {p2}, Lzm4;->c()I

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    invoke-static {p0}, Ljn4;->a(I)I

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    :goto_5
    add-int v1, p2, p0

    .line 404
    .line 405
    goto/16 :goto_6

    .line 406
    .line 407
    :cond_6
    check-cast p2, [B

    .line 408
    .line 409
    array-length p0, p2

    .line 410
    invoke-static {p0}, Ljn4;->a(I)I

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    goto :goto_5

    .line 415
    :pswitch_19
    check-cast p2, Lsm4;

    .line 416
    .line 417
    check-cast p2, Lrn4;

    .line 418
    .line 419
    invoke-virtual {p2}, Lrn4;->m()I

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    invoke-static {p0}, Ljn4;->a(I)I

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    goto :goto_5

    .line 428
    :pswitch_1a
    check-cast p2, Lsm4;

    .line 429
    .line 430
    check-cast p2, Lrn4;

    .line 431
    .line 432
    invoke-virtual {p2}, Lrn4;->m()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    goto :goto_6

    .line 437
    :pswitch_1b
    instance-of p0, p2, Lzm4;

    .line 438
    .line 439
    if-eqz p0, :cond_7

    .line 440
    .line 441
    check-cast p2, Lzm4;

    .line 442
    .line 443
    invoke-virtual {p2}, Lzm4;->c()I

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    invoke-static {p0}, Ljn4;->a(I)I

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    goto :goto_5

    .line 452
    :cond_7
    check-cast p2, Ljava/lang/String;

    .line 453
    .line 454
    invoke-static {p2}, Ltp4;->b(Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    invoke-static {p0}, Ljn4;->a(I)I

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    goto :goto_5

    .line 463
    :pswitch_1c
    check-cast p2, Ljava/lang/Boolean;

    .line 464
    .line 465
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    move v1, v4

    .line 469
    goto :goto_6

    .line 470
    :pswitch_1d
    check-cast p2, Ljava/lang/Integer;

    .line 471
    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    goto/16 :goto_4

    .line 476
    .line 477
    :pswitch_1e
    check-cast p2, Ljava/lang/Long;

    .line 478
    .line 479
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    goto :goto_6

    .line 483
    :pswitch_1f
    check-cast p2, Ljava/lang/Integer;

    .line 484
    .line 485
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result p0

    .line 489
    int-to-long v1, p0

    .line 490
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    goto :goto_6

    .line 495
    :pswitch_20
    check-cast p2, Ljava/lang/Long;

    .line 496
    .line 497
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 498
    .line 499
    .line 500
    move-result-wide v1

    .line 501
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    goto :goto_6

    .line 506
    :pswitch_21
    check-cast p2, Ljava/lang/Long;

    .line 507
    .line 508
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 509
    .line 510
    .line 511
    move-result-wide v1

    .line 512
    invoke-static {v1, v2}, Ljn4;->b(J)I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    goto :goto_6

    .line 517
    :pswitch_22
    check-cast p2, Ljava/lang/Float;

    .line 518
    .line 519
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    goto/16 :goto_4

    .line 523
    .line 524
    :pswitch_23
    check-cast p2, Ljava/lang/Double;

    .line 525
    .line 526
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    :goto_6
    add-int/2addr v1, v0

    .line 530
    add-int/2addr v1, p1

    .line 531
    return v1

    .line 532
    nop

    .line 533
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

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
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


# virtual methods
.method public final c()Lui3;
    .locals 0

    .line 1
    iget-object p0, p0, Lko4;->a:Lui3;

    .line 2
    .line 3
    return-object p0
.end method
