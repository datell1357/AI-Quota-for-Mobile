.class public final synthetic Ljd3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljd3;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Ljd3;->n:I

    .line 2
    .line 3
    const-wide v0, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    sget-object v4, Lt64;->a:Lt64;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Lmn3;

    .line 18
    .line 19
    new-instance p0, Lye;

    .line 20
    .line 21
    iget-wide v4, p1, Lmn3;->a:J

    .line 22
    .line 23
    shr-long v2, v4, v3

    .line 24
    .line 25
    long-to-int v2, v2

    .line 26
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-wide v3, p1, Lmn3;->a:J

    .line 31
    .line 32
    and-long/2addr v0, v3

    .line 33
    long-to-int p1, v0

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, v2, p1}, Lye;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_0
    check-cast p1, Lye;

    .line 43
    .line 44
    iget p0, p1, Lye;->a:F

    .line 45
    .line 46
    iget p1, p1, Lye;->b:F

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    int-to-long v4, p0

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-long p0, p0

    .line 58
    shl-long v2, v4, v3

    .line 59
    .line 60
    and-long/2addr p0, v0

    .line 61
    or-long/2addr p0, v2

    .line 62
    new-instance v0, Lew0;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lew0;-><init>(J)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :pswitch_1
    check-cast p1, Lew0;

    .line 69
    .line 70
    new-instance p0, Lye;

    .line 71
    .line 72
    iget-wide v4, p1, Lew0;->a:J

    .line 73
    .line 74
    shr-long v2, v4, v3

    .line 75
    .line 76
    long-to-int v2, v2

    .line 77
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget-wide v3, p1, Lew0;->a:J

    .line 82
    .line 83
    and-long/2addr v0, v3

    .line 84
    long-to-int p1, v0

    .line 85
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, v2, p1}, Lye;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_2
    check-cast p1, Lxe;

    .line 94
    .line 95
    iget p0, p1, Lxe;->a:F

    .line 96
    .line 97
    new-instance p1, Lcw0;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcw0;-><init>(F)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :pswitch_3
    check-cast p1, Lcw0;

    .line 104
    .line 105
    new-instance p0, Lxe;

    .line 106
    .line 107
    iget p1, p1, Lcw0;->n:F

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lxe;-><init>(F)V

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :pswitch_4
    check-cast p1, Lxe;

    .line 114
    .line 115
    iget p0, p1, Lxe;->a:F

    .line 116
    .line 117
    float-to-int p0, p0

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    new-instance p1, Lxe;

    .line 130
    .line 131
    int-to-float p0, p0

    .line 132
    invoke-direct {p1, p0}, Lxe;-><init>(F)V

    .line 133
    .line 134
    .line 135
    return-object p1

    .line 136
    :pswitch_6
    check-cast p1, Ljava/lang/Float;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    new-instance p1, Lxe;

    .line 143
    .line 144
    invoke-direct {p1, p0}, Lxe;-><init>(F)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_7
    check-cast p1, Landroid/util/SizeF;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_8
    check-cast p1, Landroid/util/SizeF;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    div-int/lit8 p0, p0, 0x4

    .line 177
    .line 178
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    div-int/lit8 p0, p0, 0x4

    .line 190
    .line 191
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_b
    check-cast p1, Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    new-instance p0, Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    const/4 v0, -0x1

    .line 209
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_c
    check-cast p1, Lpb3;

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    new-instance p0, Lhk3;

    .line 222
    .line 223
    invoke-direct {p0}, Lhk3;-><init>()V

    .line 224
    .line 225
    .line 226
    :goto_0
    invoke-interface {p1}, Lpb3;->c0()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    .line 232
    invoke-interface {p1, v5}, Lpb3;->getLong(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    long-to-int v0, v0

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lhk3;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0}, Lis0;->o(Lhk3;)Lhk3;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    :pswitch_d
    check-cast p1, Lpg3;

    .line 251
    .line 252
    iget-wide v0, p1, Lpg3;->f:J

    .line 253
    .line 254
    iget-object p0, p1, Lpg3;->h:Lip3;

    .line 255
    .line 256
    if-eqz p0, :cond_1

    .line 257
    .line 258
    sget-object v2, Lht4;->o:Ljd3;

    .line 259
    .line 260
    iget-object v3, p1, Lpg3;->g:Lvc3;

    .line 261
    .line 262
    invoke-virtual {p0, p1, v2, v3}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 263
    .line 264
    .line 265
    :cond_1
    iget-wide v2, p1, Lpg3;->f:J

    .line 266
    .line 267
    cmp-long p0, v0, v2

    .line 268
    .line 269
    if-eqz p0, :cond_4

    .line 270
    .line 271
    iget-object p0, p1, Lpg3;->o:Lig3;

    .line 272
    .line 273
    if-eqz p0, :cond_3

    .line 274
    .line 275
    iget-wide v0, p0, Lig3;->a:J

    .line 276
    .line 277
    cmp-long v0, v0, v2

    .line 278
    .line 279
    if-lez v0, :cond_2

    .line 280
    .line 281
    invoke-virtual {p1}, Lpg3;->B()V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_2
    iput-wide v2, p0, Lig3;->g:J

    .line 286
    .line 287
    iget-object v0, p0, Lig3;->b:Lla4;

    .line 288
    .line 289
    if-nez v0, :cond_4

    .line 290
    .line 291
    iget-object v0, p0, Lig3;->e:Lxe;

    .line 292
    .line 293
    invoke-virtual {v0, v5}, Lxe;->a(I)F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    float-to-double v0, v0

    .line 298
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 299
    .line 300
    sub-double/2addr v2, v0

    .line 301
    iget-wide v0, p1, Lpg3;->f:J

    .line 302
    .line 303
    long-to-double v0, v0

    .line 304
    mul-double/2addr v2, v0

    .line 305
    invoke-static {v2, v3}, Lis0;->W(D)J

    .line 306
    .line 307
    .line 308
    move-result-wide v0

    .line 309
    iput-wide v0, p0, Lig3;->h:J

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_3
    const-wide/16 v0, 0x0

    .line 313
    .line 314
    cmp-long p0, v2, v0

    .line 315
    .line 316
    if-eqz p0, :cond_4

    .line 317
    .line 318
    invoke-virtual {p1}, Lpg3;->E()V

    .line 319
    .line 320
    .line 321
    :cond_4
    :goto_1
    return-object v4

    .line 322
    :pswitch_e
    check-cast p1, Lpb3;

    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-interface {p1}, Lpb3;->c0()Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :pswitch_f
    check-cast p1, Ljb3;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    const-string p0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 342
    .line 343
    invoke-interface {p1, p0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .line 351
    .line 352
    :goto_2
    invoke-interface {p0}, Lpb3;->c0()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_5

    .line 357
    .line 358
    invoke-interface {p0, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :catchall_0
    move-exception p1

    .line 367
    goto :goto_3

    .line 368
    :cond_5
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 369
    .line 370
    .line 371
    return-object p1

    .line 372
    :goto_3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 373
    .line 374
    .line 375
    throw p1

    .line 376
    :pswitch_10
    check-cast p1, Landroid/content/res/Resources;

    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 386
    .line 387
    and-int/lit8 p0, p0, 0x30

    .line 388
    .line 389
    if-ne p0, v3, :cond_6

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_6
    move v2, v5

    .line 393
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0

    .line 398
    :pswitch_11
    check-cast p1, Lue;

    .line 399
    .line 400
    return-object v4

    .line 401
    :pswitch_12
    check-cast p1, Lph3;

    .line 402
    .line 403
    sget-object p0, Lnh3;->a:[Lkx1;

    .line 404
    .line 405
    sget-object p0, Llh3;->m:Loh3;

    .line 406
    .line 407
    sget-object v0, Lnh3;->a:[Lkx1;

    .line 408
    .line 409
    const/4 v1, 0x5

    .line 410
    aget-object v0, v0, v1

    .line 411
    .line 412
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 413
    .line 414
    invoke-interface {p1, p0, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    return-object v4

    .line 418
    :pswitch_13
    check-cast p1, Luo3;

    .line 419
    .line 420
    sget-object p0, Lwo3;->a:Ljd3;

    .line 421
    .line 422
    return-object v4

    .line 423
    :pswitch_14
    check-cast p1, Ly84;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    return-object p0

    .line 433
    :pswitch_15
    if-nez p1, :cond_7

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_7
    move v2, v5

    .line 437
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    return-object p0

    .line 442
    :pswitch_16
    check-cast p1, Lph3;

    .line 443
    .line 444
    sget-object p0, Lnh3;->a:[Lkx1;

    .line 445
    .line 446
    sget-object p0, Llh3;->e:Loh3;

    .line 447
    .line 448
    invoke-interface {p1, p0, v4}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    return-object v4

    .line 452
    :pswitch_17
    check-cast p1, Lhw2;

    .line 453
    .line 454
    if-nez p1, :cond_8

    .line 455
    .line 456
    goto :goto_6

    .line 457
    :cond_8
    iget p0, p1, Lhw2;->a:I

    .line 458
    .line 459
    const/4 p1, 0x2

    .line 460
    if-ne p0, p1, :cond_9

    .line 461
    .line 462
    move v5, v2

    .line 463
    :cond_9
    :goto_6
    xor-int/lit8 p0, v5, 0x1

    .line 464
    .line 465
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    return-object p0

    .line 470
    :pswitch_18
    check-cast p1, Ljava/lang/Integer;

    .line 471
    .line 472
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    new-instance p1, Llf3;

    .line 477
    .line 478
    invoke-direct {p1, p0}, Llf3;-><init>(I)V

    .line 479
    .line 480
    .line 481
    return-object p1

    .line 482
    :pswitch_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    check-cast p1, Ljava/lang/Integer;

    .line 486
    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    new-instance p1, Lrx3;

    .line 492
    .line 493
    invoke-direct {p1, p0}, Lrx3;-><init>(I)V

    .line 494
    .line 495
    .line 496
    return-object p1

    .line 497
    :pswitch_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    check-cast p1, Ljava/util/List;

    .line 501
    .line 502
    new-instance p0, Lsx3;

    .line 503
    .line 504
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    const/4 v3, 0x0

    .line 515
    sget-object v4, Lkd3;->e:Lxh1;

    .line 516
    .line 517
    if-eqz v1, :cond_b

    .line 518
    .line 519
    :cond_a
    move-object v0, v3

    .line 520
    goto :goto_7

    .line 521
    :cond_b
    if-eqz v0, :cond_a

    .line 522
    .line 523
    iget-object v1, v4, Lxh1;->o:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v1, Lpe1;

    .line 526
    .line 527
    invoke-interface {v1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Lrx3;

    .line 532
    .line 533
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    iget v0, v0, Lrx3;->a:I

    .line 537
    .line 538
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    if-eqz p1, :cond_c

    .line 543
    .line 544
    move-object v3, p1

    .line 545
    check-cast v3, Ljava/lang/Boolean;

    .line 546
    .line 547
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    invoke-direct {p0, v0, p1}, Lsx3;-><init>(IZ)V

    .line 555
    .line 556
    .line 557
    return-object p0

    .line 558
    :pswitch_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    check-cast p1, Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result p0

    .line 567
    new-instance p1, Ld32;

    .line 568
    .line 569
    invoke-direct {p1, p0}, Ld32;-><init>(I)V

    .line 570
    .line 571
    .line 572
    return-object p1

    .line 573
    :pswitch_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    check-cast p1, Ljava/lang/Integer;

    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    new-instance p1, Luz0;

    .line 583
    .line 584
    invoke-direct {p1, p0}, Luz0;-><init>(I)V

    .line 585
    .line 586
    .line 587
    return-object p1

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
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
.end method
