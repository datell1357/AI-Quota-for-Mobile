.class public final Lmx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextUtils$TruncateAt;

.field public final c:Z

.field public final d:Z

.field public final e:Landroid/text/Layout;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:Landroid/graphics/Paint$FontMetricsInt;

.field public final m:I

.field public final n:[Lj32;

.field public final o:Landroid/graphics/Rect;

.field public p:Lrp;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILmy1;)V
    .locals 21

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
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v6, p7

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object/from16 v4, p3

    .line 15
    .line 16
    iput-object v4, v0, Lmx3;->a:Landroid/text/TextPaint;

    .line 17
    .line 18
    move-object/from16 v7, p5

    .line 19
    .line 20
    iput-object v7, v0, Lmx3;->b:Landroid/text/TextUtils$TruncateAt;

    .line 21
    .line 22
    iput-boolean v6, v0, Lmx3;->c:Z

    .line 23
    .line 24
    new-instance v5, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v5, v0, Lmx3;->o:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-static/range {p6 .. p6}, Lpx3;->b(I)Landroid/text/TextDirectionHeuristic;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    sget-object v8, Lww3;->a:Landroid/text/Layout$Alignment;

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    const/4 v14, 0x2

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    if-eq v3, v13, :cond_3

    .line 46
    .line 47
    if-eq v3, v14, :cond_2

    .line 48
    .line 49
    const/4 v8, 0x3

    .line 50
    if-eq v3, v8, :cond_1

    .line 51
    .line 52
    const/4 v8, 0x4

    .line 53
    if-eq v3, v8, :cond_0

    .line 54
    .line 55
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object v3, Lww3;->b:Landroid/text/Layout$Alignment;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    sget-object v3, Lww3;->a:Landroid/text/Layout$Alignment;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 71
    .line 72
    :goto_0
    instance-of v8, v1, Landroid/text/Spanned;

    .line 73
    .line 74
    if-eqz v8, :cond_5

    .line 75
    .line 76
    move-object v8, v1

    .line 77
    check-cast v8, Landroid/text/Spanned;

    .line 78
    .line 79
    const/4 v9, -0x1

    .line 80
    const-class v10, Lfu;

    .line 81
    .line 82
    invoke-interface {v8, v9, v5, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-ge v8, v5, :cond_5

    .line 87
    .line 88
    move v5, v13

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    const/4 v5, 0x0

    .line 91
    :goto_1
    const-string v8, "TextLayout:initLayout"

    .line 92
    .line 93
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    invoke-virtual/range {p14 .. p14}, Lmy1;->a()Landroid/text/BoringLayout$Metrics;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    float-to-double v9, v2

    .line 101
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v14

    .line 105
    double-to-float v11, v14

    .line 106
    float-to-int v11, v11

    .line 107
    const/16 v14, 0x21

    .line 108
    .line 109
    if-eqz v8, :cond_9

    .line 110
    .line 111
    invoke-virtual/range {p14 .. p14}, Lmy1;->c()F

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    cmpg-float v2, v15, v2

    .line 116
    .line 117
    if-gtz v2, :cond_9

    .line 118
    .line 119
    if-nez v5, :cond_9

    .line 120
    .line 121
    iput-boolean v13, v0, Lmx3;->k:Z

    .line 122
    .line 123
    if-ltz v11, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const-string v2, "negative width"

    .line 127
    .line 128
    invoke-static {v2}, Lbr1;->a(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    if-ltz v11, :cond_7

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    const-string v2, "negative ellipsized width"

    .line 135
    .line 136
    invoke-static {v2}, Lbr1;->a(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .line 141
    if-lt v2, v14, :cond_8

    .line 142
    .line 143
    move-object v5, v8

    .line 144
    move v8, v11

    .line 145
    move-object v2, v4

    .line 146
    move-object v4, v3

    .line 147
    move v3, v11

    .line 148
    invoke-static/range {v1 .. v8}, Lc3;->e(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    move-object v4, v3

    .line 154
    move-object v5, v8

    .line 155
    move v3, v11

    .line 156
    new-instance v1, Landroid/text/BoringLayout;

    .line 157
    .line 158
    const/high16 v6, 0x3f800000    # 1.0f

    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    move v11, v3

    .line 162
    move-object/from16 v2, p1

    .line 163
    .line 164
    move-object/from16 v10, p5

    .line 165
    .line 166
    move/from16 v9, p7

    .line 167
    .line 168
    move-object v8, v5

    .line 169
    move-object v5, v4

    .line 170
    move v4, v3

    .line 171
    move-object/from16 v3, p3

    .line 172
    .line 173
    invoke-direct/range {v1 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    .line 174
    .line 175
    .line 176
    move-object v2, v1

    .line 177
    :goto_4
    move/from16 v7, p8

    .line 178
    .line 179
    move-object v5, v12

    .line 180
    goto :goto_5

    .line 181
    :cond_9
    move-object v4, v3

    .line 182
    move v3, v11

    .line 183
    const/4 v1, 0x0

    .line 184
    iput-boolean v1, v0, Lmx3;->k:Z

    .line 185
    .line 186
    move-object v5, v4

    .line 187
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v6

    .line 195
    double-to-float v2, v6

    .line 196
    float-to-int v9, v2

    .line 197
    move-object/from16 v1, p1

    .line 198
    .line 199
    move-object/from16 v2, p3

    .line 200
    .line 201
    move-object/from16 v8, p5

    .line 202
    .line 203
    move/from16 v11, p7

    .line 204
    .line 205
    move/from16 v7, p8

    .line 206
    .line 207
    move/from16 v13, p10

    .line 208
    .line 209
    move/from16 v14, p11

    .line 210
    .line 211
    move/from16 v15, p12

    .line 212
    .line 213
    move/from16 v10, p13

    .line 214
    .line 215
    move-object v6, v5

    .line 216
    move-object v5, v12

    .line 217
    move/from16 v12, p9

    .line 218
    .line 219
    invoke-static/range {v1 .. v15}, Lgg4;->p(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    :goto_5
    iput-object v2, v0, Lmx3;->e:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iput v1, v0, Lmx3;->f:I

    .line 237
    .line 238
    add-int/lit8 v3, v1, -0x1

    .line 239
    .line 240
    if-ge v1, v7, :cond_b

    .line 241
    .line 242
    :cond_a
    const/4 v13, 0x0

    .line 243
    goto :goto_6

    .line 244
    :cond_b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-gtz v4, :cond_c

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eq v4, v6, :cond_a

    .line 259
    .line 260
    :cond_c
    const/4 v13, 0x1

    .line 261
    :goto_6
    iput-boolean v13, v0, Lmx3;->d:Z

    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    instance-of v4, v4, Landroid/text/Spanned;

    .line 268
    .line 269
    if-nez v4, :cond_d

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_d
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    check-cast v4, Landroid/text/Spanned;

    .line 280
    .line 281
    const-class v7, Lj32;

    .line 282
    .line 283
    invoke-static {v4, v7}, Lis0;->E(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_e

    .line 288
    .line 289
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-lez v4, :cond_e

    .line 298
    .line 299
    :goto_7
    const/4 v4, 0x0

    .line 300
    const/4 v9, 0x0

    .line 301
    goto :goto_8

    .line 302
    :cond_e
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    check-cast v4, Landroid/text/Spanned;

    .line 310
    .line 311
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    const/4 v9, 0x0

    .line 320
    invoke-interface {v4, v9, v8, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    check-cast v4, [Lj32;

    .line 325
    .line 326
    :goto_8
    iput-object v4, v0, Lmx3;->n:[Lj32;

    .line 327
    .line 328
    if-eqz v4, :cond_12

    .line 329
    .line 330
    array-length v7, v4

    .line 331
    if-nez v7, :cond_f

    .line 332
    .line 333
    const/4 v7, 0x0

    .line 334
    goto :goto_9

    .line 335
    :cond_f
    aget-object v7, v4, v9

    .line 336
    .line 337
    :goto_9
    if-eqz v7, :cond_12

    .line 338
    .line 339
    iget-boolean v8, v7, Lj32;->p:Z

    .line 340
    .line 341
    if-eqz v8, :cond_10

    .line 342
    .line 343
    iget v7, v7, Lj32;->s:I

    .line 344
    .line 345
    const/4 v8, 0x2

    .line 346
    if-ne v7, v8, :cond_11

    .line 347
    .line 348
    const/4 v13, 0x1

    .line 349
    goto :goto_a

    .line 350
    :cond_10
    const/4 v8, 0x2

    .line 351
    :cond_11
    move v13, v9

    .line 352
    :goto_a
    move v15, v13

    .line 353
    goto :goto_b

    .line 354
    :cond_12
    const/4 v8, 0x2

    .line 355
    move v15, v9

    .line 356
    :goto_b
    if-eqz v4, :cond_14

    .line 357
    .line 358
    array-length v7, v4

    .line 359
    if-nez v7, :cond_13

    .line 360
    .line 361
    const/4 v7, 0x0

    .line 362
    goto :goto_c

    .line 363
    :cond_13
    aget-object v7, v4, v9

    .line 364
    .line 365
    :goto_c
    if-eqz v7, :cond_14

    .line 366
    .line 367
    iget-boolean v10, v7, Lj32;->q:Z

    .line 368
    .line 369
    if-eqz v10, :cond_14

    .line 370
    .line 371
    iget v7, v7, Lj32;->s:I

    .line 372
    .line 373
    if-ne v7, v8, :cond_14

    .line 374
    .line 375
    const/4 v13, 0x1

    .line 376
    goto :goto_d

    .line 377
    :cond_14
    move v13, v9

    .line 378
    :goto_d
    if-eqz v15, :cond_15

    .line 379
    .line 380
    if-eqz v13, :cond_15

    .line 381
    .line 382
    sget-wide v1, Lpx3;->b:J

    .line 383
    .line 384
    const/16 p1, 0x0

    .line 385
    .line 386
    const/16 p2, 0x20

    .line 387
    .line 388
    const-wide p3, 0xffffffffL

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    const/4 v10, 0x1

    .line 394
    const/16 v14, 0x21

    .line 395
    .line 396
    goto/16 :goto_16

    .line 397
    .line 398
    :cond_15
    sget-wide v16, Lpx3;->b:J

    .line 399
    .line 400
    if-nez p7, :cond_1e

    .line 401
    .line 402
    iget-boolean v8, v0, Lmx3;->k:Z

    .line 403
    .line 404
    if-eqz v8, :cond_17

    .line 405
    .line 406
    move-object v8, v2

    .line 407
    check-cast v8, Landroid/text/BoringLayout;

    .line 408
    .line 409
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .line 411
    const/16 v14, 0x21

    .line 412
    .line 413
    if-lt v12, v14, :cond_16

    .line 414
    .line 415
    invoke-static {v8}, Lc3;->m(Landroid/text/BoringLayout;)Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    goto :goto_e

    .line 420
    :cond_16
    move v8, v9

    .line 421
    goto :goto_e

    .line 422
    :cond_17
    const/16 v14, 0x21

    .line 423
    .line 424
    move-object v8, v2

    .line 425
    check-cast v8, Landroid/text/StaticLayout;

    .line 426
    .line 427
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    .line 429
    if-lt v12, v14, :cond_18

    .line 430
    .line 431
    invoke-static {v8}, Lc3;->n(Landroid/text/StaticLayout;)Z

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    goto :goto_e

    .line 436
    :cond_18
    const/16 v8, 0x1c

    .line 437
    .line 438
    if-lt v12, v8, :cond_16

    .line 439
    .line 440
    const/4 v8, 0x1

    .line 441
    :goto_e
    if-eqz v8, :cond_19

    .line 442
    .line 443
    const/16 p1, 0x0

    .line 444
    .line 445
    const/16 p2, 0x20

    .line 446
    .line 447
    const-wide p3, 0xffffffffL

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    const/4 v10, 0x1

    .line 453
    goto :goto_13

    .line 454
    :cond_19
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    const/16 p1, 0x0

    .line 463
    .line 464
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    const/16 p2, 0x20

    .line 469
    .line 470
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineEnd(I)I

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    invoke-static {v8, v12, v6, v7}, Lht4;->s(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineAscent(I)I

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    const-wide p3, 0xffffffffL

    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 488
    .line 489
    if-ge v10, v7, :cond_1a

    .line 490
    .line 491
    sub-int/2addr v7, v10

    .line 492
    :goto_f
    const/4 v10, 0x1

    .line 493
    goto :goto_10

    .line 494
    :cond_1a
    invoke-virtual {v2}, Landroid/text/Layout;->getTopPadding()I

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    goto :goto_f

    .line 499
    :goto_10
    if-ne v1, v10, :cond_1b

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_1b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    invoke-static {v8, v12, v1, v6}, Lht4;->s(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    :goto_11
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineDescent(I)I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 519
    .line 520
    if-le v6, v1, :cond_1c

    .line 521
    .line 522
    sub-int/2addr v6, v1

    .line 523
    goto :goto_12

    .line 524
    :cond_1c
    invoke-virtual {v2}, Landroid/text/Layout;->getBottomPadding()I

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    :goto_12
    if-nez v7, :cond_1d

    .line 529
    .line 530
    if-nez v6, :cond_1d

    .line 531
    .line 532
    goto :goto_13

    .line 533
    :cond_1d
    invoke-static {v7, v6}, Lpx3;->a(II)J

    .line 534
    .line 535
    .line 536
    move-result-wide v16

    .line 537
    goto :goto_13

    .line 538
    :cond_1e
    const/16 p1, 0x0

    .line 539
    .line 540
    const/16 p2, 0x20

    .line 541
    .line 542
    const-wide p3, 0xffffffffL

    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    const/4 v10, 0x1

    .line 548
    const/16 v14, 0x21

    .line 549
    .line 550
    :goto_13
    if-eqz v15, :cond_1f

    .line 551
    .line 552
    move v15, v9

    .line 553
    goto :goto_14

    .line 554
    :cond_1f
    shr-long v1, v16, p2

    .line 555
    .line 556
    long-to-int v15, v1

    .line 557
    :goto_14
    if-eqz v13, :cond_20

    .line 558
    .line 559
    move v1, v9

    .line 560
    goto :goto_15

    .line 561
    :cond_20
    and-long v1, v16, p3

    .line 562
    .line 563
    long-to-int v1, v1

    .line 564
    :goto_15
    invoke-static {v15, v1}, Lpx3;->a(II)J

    .line 565
    .line 566
    .line 567
    move-result-wide v1

    .line 568
    :goto_16
    if-eqz v4, :cond_25

    .line 569
    .line 570
    array-length v6, v4

    .line 571
    move v7, v9

    .line 572
    move v8, v7

    .line 573
    move v15, v8

    .line 574
    :goto_17
    if-ge v15, v6, :cond_23

    .line 575
    .line 576
    aget-object v11, v4, v15

    .line 577
    .line 578
    iget v12, v11, Lj32;->x:I

    .line 579
    .line 580
    if-gez v12, :cond_21

    .line 581
    .line 582
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 583
    .line 584
    .line 585
    move-result v12

    .line 586
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    :cond_21
    iget v11, v11, Lj32;->y:I

    .line 591
    .line 592
    if-gez v11, :cond_22

    .line 593
    .line 594
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 595
    .line 596
    .line 597
    move-result v8

    .line 598
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    :cond_22
    add-int/lit8 v15, v15, 0x1

    .line 603
    .line 604
    goto :goto_17

    .line 605
    :cond_23
    if-nez v7, :cond_24

    .line 606
    .line 607
    if-nez v8, :cond_24

    .line 608
    .line 609
    sget-wide v6, Lpx3;->b:J

    .line 610
    .line 611
    goto :goto_18

    .line 612
    :cond_24
    invoke-static {v7, v8}, Lpx3;->a(II)J

    .line 613
    .line 614
    .line 615
    move-result-wide v6

    .line 616
    goto :goto_18

    .line 617
    :cond_25
    sget-wide v6, Lpx3;->b:J

    .line 618
    .line 619
    :goto_18
    shr-long v11, v1, p2

    .line 620
    .line 621
    long-to-int v4, v11

    .line 622
    shr-long v11, v6, p2

    .line 623
    .line 624
    long-to-int v8, v11

    .line 625
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    iput v4, v0, Lmx3;->g:I

    .line 630
    .line 631
    and-long v1, v1, p3

    .line 632
    .line 633
    long-to-int v1, v1

    .line 634
    and-long v6, v6, p3

    .line 635
    .line 636
    long-to-int v2, v6

    .line 637
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    iput v1, v0, Lmx3;->h:I

    .line 642
    .line 643
    iget-object v7, v0, Lmx3;->a:Landroid/text/TextPaint;

    .line 644
    .line 645
    iget-object v1, v0, Lmx3;->n:[Lj32;

    .line 646
    .line 647
    iget v2, v0, Lmx3;->f:I

    .line 648
    .line 649
    sub-int/2addr v2, v10

    .line 650
    iget-object v4, v0, Lmx3;->e:Landroid/text/Layout;

    .line 651
    .line 652
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineEnd(I)I

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-ne v6, v4, :cond_29

    .line 661
    .line 662
    if-eqz v1, :cond_29

    .line 663
    .line 664
    array-length v4, v1

    .line 665
    if-nez v4, :cond_26

    .line 666
    .line 667
    goto/16 :goto_1a

    .line 668
    .line 669
    :cond_26
    new-instance v6, Landroid/text/SpannableString;

    .line 670
    .line 671
    const-string v4, "\u200b"

    .line 672
    .line 673
    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    array-length v4, v1

    .line 677
    if-eqz v4, :cond_28

    .line 678
    .line 679
    aget-object v1, v1, v9

    .line 680
    .line 681
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    if-eqz v2, :cond_27

    .line 686
    .line 687
    iget-boolean v2, v1, Lj32;->q:Z

    .line 688
    .line 689
    if-eqz v2, :cond_27

    .line 690
    .line 691
    move v15, v9

    .line 692
    goto :goto_19

    .line 693
    :cond_27
    iget-boolean v15, v1, Lj32;->q:Z

    .line 694
    .line 695
    :goto_19
    new-instance v2, Lj32;

    .line 696
    .line 697
    iget v8, v1, Lj32;->n:F

    .line 698
    .line 699
    iget-boolean v10, v1, Lj32;->q:Z

    .line 700
    .line 701
    iget v11, v1, Lj32;->r:F

    .line 702
    .line 703
    iget v1, v1, Lj32;->s:I

    .line 704
    .line 705
    move/from16 p7, v1

    .line 706
    .line 707
    move-object/from16 p1, v2

    .line 708
    .line 709
    move/from16 p3, v4

    .line 710
    .line 711
    move/from16 p2, v8

    .line 712
    .line 713
    move/from16 p5, v10

    .line 714
    .line 715
    move/from16 p6, v11

    .line 716
    .line 717
    move/from16 p4, v15

    .line 718
    .line 719
    invoke-direct/range {p1 .. p7}, Lj32;-><init>(FIZZFI)V

    .line 720
    .line 721
    .line 722
    move-object/from16 v1, p1

    .line 723
    .line 724
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    invoke-virtual {v6, v1, v9, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 729
    .line 730
    .line 731
    move v1, v9

    .line 732
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 733
    .line 734
    .line 735
    move-result v9

    .line 736
    iget-boolean v2, v0, Lmx3;->c:Z

    .line 737
    .line 738
    sget-object v11, Lfy1;->a:Landroid/text/Layout$Alignment;

    .line 739
    .line 740
    const/16 v19, 0x0

    .line 741
    .line 742
    const/16 v20, 0x0

    .line 743
    .line 744
    const v8, 0x7fffffff

    .line 745
    .line 746
    .line 747
    const v12, 0x7fffffff

    .line 748
    .line 749
    .line 750
    const/4 v13, 0x0

    .line 751
    const v14, 0x7fffffff

    .line 752
    .line 753
    .line 754
    const/4 v15, 0x0

    .line 755
    const/16 v17, 0x0

    .line 756
    .line 757
    const/16 v18, 0x0

    .line 758
    .line 759
    move/from16 v16, v2

    .line 760
    .line 761
    move-object v10, v5

    .line 762
    invoke-static/range {v6 .. v20}, Lgg4;->p(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)Landroid/text/StaticLayout;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    new-instance v6, Landroid/graphics/Paint$FontMetricsInt;

    .line 767
    .line 768
    invoke-direct {v6}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineAscent(I)I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 776
    .line 777
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    .line 778
    .line 779
    .line 780
    move-result v4

    .line 781
    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 782
    .line 783
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 788
    .line 789
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    iput v2, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 794
    .line 795
    goto :goto_1b

    .line 796
    :cond_28
    const-string v0, "Array is empty."

    .line 797
    .line 798
    invoke-static {v0}, Lq73;->l(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    throw p1

    .line 802
    :cond_29
    :goto_1a
    move v1, v9

    .line 803
    move-object/from16 v6, p1

    .line 804
    .line 805
    :goto_1b
    if-eqz v6, :cond_2a

    .line 806
    .line 807
    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 808
    .line 809
    invoke-virtual {v0, v3}, Lmx3;->d(I)F

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    invoke-virtual {v0, v3}, Lmx3;->g(I)F

    .line 814
    .line 815
    .line 816
    move-result v4

    .line 817
    sub-float/2addr v2, v4

    .line 818
    float-to-int v2, v2

    .line 819
    sub-int v15, v1, v2

    .line 820
    .line 821
    goto :goto_1c

    .line 822
    :cond_2a
    move v15, v1

    .line 823
    :goto_1c
    iput v15, v0, Lmx3;->m:I

    .line 824
    .line 825
    iput-object v6, v0, Lmx3;->l:Landroid/graphics/Paint$FontMetricsInt;

    .line 826
    .line 827
    iget-object v1, v0, Lmx3;->e:Landroid/text/Layout;

    .line 828
    .line 829
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-static {v1, v3, v2}, Lkt4;->G(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    iput v1, v0, Lmx3;->i:F

    .line 838
    .line 839
    iget-object v1, v0, Lmx3;->e:Landroid/text/Layout;

    .line 840
    .line 841
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-static {v1, v3, v2}, Lkt4;->H(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    iput v1, v0, Lmx3;->j:F

    .line 850
    .line 851
    return-void

    .line 852
    :catchall_0
    move-exception v0

    .line 853
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 854
    .line 855
    .line 856
    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmx3;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lmx3;->e:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lmx3;->f:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    iget v1, p0, Lmx3;->g:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    iget v1, p0, Lmx3;->h:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iget p0, p0, Lmx3;->m:I

    .line 27
    .line 28
    add-int/2addr v0, p0

    .line 29
    return v0
.end method

.method public final b()Lrp;
    .locals 2

    .line 1
    iget-object v0, p0, Lmx3;->p:Lrp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lrp;

    .line 6
    .line 7
    iget-object v1, p0, Lmx3;->e:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lrp;-><init>(Landroid/text/Layout;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lmx3;->p:Lrp;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final c(I)F
    .locals 2

    .line 1
    iget v0, p0, Lmx3;->g:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmx3;->f:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lmx3;->l:Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lmx3;->g(I)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    sub-float/2addr p0, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lmx3;->e:Landroid/text/Layout;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-float p0, p0

    .line 30
    :goto_0
    add-float/2addr v0, p0

    .line 31
    return v0
.end method

.method public final d(I)F
    .locals 3

    .line 1
    iget v0, p0, Lmx3;->f:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iget-object v2, p0, Lmx3;->e:Landroid/text/Layout;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lmx3;->l:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    iget p1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    add-float/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_0
    iget v1, p0, Lmx3;->g:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v1, v2

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    iget p0, p0, Lmx3;->h:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    int-to-float p0, p0

    .line 43
    add-float/2addr v1, p0

    .line 44
    return v1
.end method

.method public final e(I)I
    .locals 2

    .line 1
    sget-object v0, Lpx3;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    iget-object v0, p0, Lmx3;->e:Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lmx3;->b:Landroid/text/TextUtils$TruncateAt;

    .line 12
    .line 13
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget v0, p0, Lmx3;->f:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lmx3;->e:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    if-le p0, v0, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    return p0
.end method

.method public final g(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lmx3;->e:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Lmx3;->g:I

    .line 13
    .line 14
    :goto_0
    int-to-float p0, p0

    .line 15
    add-float/2addr v0, p0

    .line 16
    return v0
.end method

.method public final h(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx3;->b()Lrp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lrp;->i(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1}, Lmx3;->f(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v0, p0, Lmx3;->f:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lmx3;->i:F

    .line 20
    .line 21
    iget p0, p0, Lmx3;->j:F

    .line 22
    .line 23
    add-float/2addr p1, p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    add-float/2addr p1, p2

    .line 27
    return p1
.end method

.method public final i(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmx3;->b()Lrp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lrp;->i(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1}, Lmx3;->f(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget v0, p0, Lmx3;->f:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget p1, p0, Lmx3;->i:F

    .line 21
    .line 22
    iget p0, p0, Lmx3;->j:F

    .line 23
    .line 24
    add-float/2addr p1, p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    add-float/2addr p1, p2

    .line 28
    return p1
.end method
