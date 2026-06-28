.class public final Loa;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;


# static fields
.field public static final b:Loa;

.field public static final c:Loa;

.field public static final d:Loa;

.field public static final e:Lt3;

.field public static final f:Loa;

.field public static final g:Loa;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Loa;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Loa;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Loa;->b:Loa;

    .line 8
    .line 9
    new-instance v0, Loa;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Loa;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Loa;->c:Loa;

    .line 16
    .line 17
    new-instance v0, Loa;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Loa;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Loa;->d:Loa;

    .line 24
    .line 25
    new-instance v0, Lt3;

    .line 26
    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Loa;->e:Lt3;

    .line 33
    .line 34
    new-instance v0, Loa;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-direct {v0, v1}, Loa;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Loa;->f:Loa;

    .line 41
    .line 42
    new-instance v0, Loa;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-direct {v0, v1}, Loa;-><init>(I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Loa;->g:Loa;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Loa;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget v2, v2, Loa;->a:I

    .line 10
    .line 11
    const/16 v5, 0xb

    .line 12
    .line 13
    sget-object v9, Lh01;->n:Lh01;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v4}, Lmf0;->h(J)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/high16 v5, 0x44160000    # 600.0f

    .line 23
    .line 24
    invoke-interface {v0, v5}, Las0;->N(F)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    if-ge v5, v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    move-object v11, v7

    .line 44
    check-cast v11, Lya2;

    .line 45
    .line 46
    invoke-static {v11}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    const-string v12, "action"

    .line 51
    .line 52
    invoke-static {v11, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    if-eqz v11, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v7, 0x0

    .line 63
    :goto_1
    check-cast v7, Lya2;

    .line 64
    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    invoke-interface {v7, v3, v4}, Lya2;->e(J)Ldv2;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v14, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 v14, 0x0

    .line 74
    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_3
    if-ge v5, v2, :cond_4

    .line 80
    .line 81
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    move-object v11, v7

    .line 86
    check-cast v11, Lya2;

    .line 87
    .line 88
    invoke-static {v11}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const-string v12, "dismissAction"

    .line 93
    .line 94
    invoke-static {v11, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_3

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const/4 v7, 0x0

    .line 105
    :goto_4
    check-cast v7, Lya2;

    .line 106
    .line 107
    if-eqz v7, :cond_5

    .line 108
    .line 109
    invoke-interface {v7, v3, v4}, Lya2;->e(J)Ldv2;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    move-object v11, v2

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    const/4 v11, 0x0

    .line 116
    :goto_5
    if-eqz v14, :cond_6

    .line 117
    .line 118
    iget v2, v14, Ldv2;->n:I

    .line 119
    .line 120
    move v12, v2

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    const/4 v12, 0x0

    .line 123
    :goto_6
    if-eqz v14, :cond_7

    .line 124
    .line 125
    iget v2, v14, Ldv2;->o:I

    .line 126
    .line 127
    move v13, v2

    .line 128
    goto :goto_7

    .line 129
    :cond_7
    const/4 v13, 0x0

    .line 130
    :goto_7
    if-eqz v11, :cond_8

    .line 131
    .line 132
    iget v2, v11, Ldv2;->n:I

    .line 133
    .line 134
    move v15, v2

    .line 135
    goto :goto_8

    .line 136
    :cond_8
    const/4 v15, 0x0

    .line 137
    :goto_8
    if-eqz v11, :cond_9

    .line 138
    .line 139
    iget v2, v11, Ldv2;->o:I

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_9
    const/4 v2, 0x0

    .line 143
    :goto_9
    if-nez v15, :cond_a

    .line 144
    .line 145
    const/high16 v5, 0x41000000    # 8.0f

    .line 146
    .line 147
    invoke-interface {v0, v5}, Las0;->N(F)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    goto :goto_a

    .line 152
    :cond_a
    const/4 v5, 0x0

    .line 153
    :goto_a
    sub-int v7, v10, v12

    .line 154
    .line 155
    sub-int/2addr v7, v15

    .line 156
    sub-int/2addr v7, v5

    .line 157
    invoke-static {v3, v4}, Lmf0;->j(J)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-ge v7, v5, :cond_b

    .line 162
    .line 163
    move v7, v5

    .line 164
    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    const/4 v6, 0x0

    .line 169
    :goto_b
    if-ge v6, v5, :cond_13

    .line 170
    .line 171
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    move-object/from16 v8, v16

    .line 176
    .line 177
    check-cast v8, Lya2;

    .line 178
    .line 179
    move/from16 v16, v2

    .line 180
    .line 181
    invoke-static {v8}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const-string v3, "text"

    .line 186
    .line 187
    invoke-static {v2, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_12

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    move v4, v7

    .line 195
    const/16 v7, 0x9

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    const/4 v5, 0x0

    .line 199
    move-wide/from16 v1, p3

    .line 200
    .line 201
    move/from16 v18, v12

    .line 202
    .line 203
    move/from16 v12, v16

    .line 204
    .line 205
    invoke-static/range {v1 .. v7}, Lmf0;->a(JIIIII)J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    invoke-interface {v8, v1, v2}, Lya2;->e(J)Ldv2;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    sget-object v2, Lb8;->a:Lck1;

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ldv2;->V(Ly7;)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    sget-object v4, Lb8;->b:Lck1;

    .line 220
    .line 221
    invoke-virtual {v1, v4}, Ldv2;->V(Ly7;)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    const/4 v5, 0x1

    .line 226
    const/high16 v6, -0x80000000

    .line 227
    .line 228
    if-eq v3, v6, :cond_c

    .line 229
    .line 230
    if-eq v4, v6, :cond_c

    .line 231
    .line 232
    move v7, v5

    .line 233
    goto :goto_c

    .line 234
    :cond_c
    const/4 v7, 0x0

    .line 235
    :goto_c
    if-eq v3, v4, :cond_e

    .line 236
    .line 237
    if-nez v7, :cond_d

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :cond_d
    const/4 v5, 0x0

    .line 241
    :cond_e
    :goto_d
    move/from16 v8, v18

    .line 242
    .line 243
    sub-int v18, v10, v15

    .line 244
    .line 245
    sub-int v15, v18, v8

    .line 246
    .line 247
    if-eqz v5, :cond_10

    .line 248
    .line 249
    sget v4, Lmt1;->k:F

    .line 250
    .line 251
    invoke-interface {v0, v4}, Las0;->N(F)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    iget v5, v1, Ldv2;->o:I

    .line 264
    .line 265
    sub-int v5, v4, v5

    .line 266
    .line 267
    div-int/lit8 v5, v5, 0x2

    .line 268
    .line 269
    if-eqz v14, :cond_f

    .line 270
    .line 271
    invoke-virtual {v14, v2}, Ldv2;->V(Ly7;)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eq v2, v6, :cond_f

    .line 276
    .line 277
    add-int/2addr v3, v5

    .line 278
    sub-int/2addr v3, v2

    .line 279
    goto :goto_e

    .line 280
    :cond_f
    const/4 v3, 0x0

    .line 281
    :goto_e
    move/from16 v16, v3

    .line 282
    .line 283
    move v13, v5

    .line 284
    goto :goto_f

    .line 285
    :cond_10
    const/high16 v2, 0x41f00000    # 30.0f

    .line 286
    .line 287
    invoke-interface {v0, v2}, Las0;->N(F)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    sub-int v5, v2, v3

    .line 292
    .line 293
    sget v2, Lmt1;->l:F

    .line 294
    .line 295
    invoke-interface {v0, v2}, Las0;->N(F)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    iget v3, v1, Ldv2;->o:I

    .line 300
    .line 301
    add-int/2addr v3, v5

    .line 302
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v14, :cond_f

    .line 307
    .line 308
    iget v2, v14, Ldv2;->o:I

    .line 309
    .line 310
    sub-int v2, v4, v2

    .line 311
    .line 312
    div-int/lit8 v2, v2, 0x2

    .line 313
    .line 314
    move v3, v2

    .line 315
    goto :goto_e

    .line 316
    :goto_f
    if-eqz v11, :cond_11

    .line 317
    .line 318
    iget v2, v11, Ldv2;->o:I

    .line 319
    .line 320
    sub-int v2, v4, v2

    .line 321
    .line 322
    div-int/lit8 v8, v2, 0x2

    .line 323
    .line 324
    move/from16 v19, v8

    .line 325
    .line 326
    :goto_10
    move-object/from16 v17, v11

    .line 327
    .line 328
    goto :goto_11

    .line 329
    :cond_11
    const/16 v19, 0x0

    .line 330
    .line 331
    goto :goto_10

    .line 332
    :goto_11
    new-instance v11, Lmo3;

    .line 333
    .line 334
    move-object v12, v1

    .line 335
    invoke-direct/range {v11 .. v19}, Lmo3;-><init>(Ldv2;ILdv2;IILdv2;II)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v0, v10, v4, v9, v11}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    goto :goto_12

    .line 343
    :cond_12
    move-wide/from16 v3, p3

    .line 344
    .line 345
    move-object v2, v11

    .line 346
    move v8, v12

    .line 347
    move/from16 v12, v16

    .line 348
    .line 349
    add-int/lit8 v6, v6, 0x1

    .line 350
    .line 351
    move v2, v12

    .line 352
    move v12, v8

    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :cond_13
    const-string v0, "Collection contains no element matching the predicate."

    .line 356
    .line 357
    invoke-static {v0}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Lp61;->q()V

    .line 361
    .line 362
    .line 363
    const/4 v6, 0x0

    .line 364
    :goto_12
    return-object v6

    .line 365
    :pswitch_0
    invoke-static {v3, v4}, Lmf0;->j(J)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-static {v3, v4}, Lmf0;->i(J)I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    new-instance v3, Lt3;

    .line 374
    .line 375
    invoke-direct {v3, v5}, Lt3;-><init>(I)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v0, v1, v2, v9, v3}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0

    .line 383
    :pswitch_1
    invoke-static {v3, v4}, Lmf0;->f(J)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_14

    .line 388
    .line 389
    invoke-static {v3, v4}, Lmf0;->h(J)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    goto :goto_13

    .line 394
    :cond_14
    const/4 v1, 0x0

    .line 395
    :goto_13
    invoke-static {v3, v4}, Lmf0;->e(J)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_15

    .line 400
    .line 401
    invoke-static {v3, v4}, Lmf0;->g(J)I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    goto :goto_14

    .line 406
    :cond_15
    const/4 v8, 0x0

    .line 407
    :goto_14
    new-instance v2, Lt3;

    .line 408
    .line 409
    invoke-direct {v2, v5}, Lt3;-><init>(I)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v1, v8, v9, v2}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    return-object v0

    .line 417
    :pswitch_2
    invoke-static {v3, v4}, Lmf0;->h(J)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    invoke-static {v3, v4}, Lmf0;->g(J)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    sget-object v3, Loa;->e:Lt3;

    .line 426
    .line 427
    invoke-interface {v0, v1, v2, v9, v3}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    return-object v0

    .line 432
    :pswitch_3
    invoke-static {v3, v4}, Lmf0;->j(J)I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    invoke-static {v3, v4}, Lmf0;->i(J)I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    new-instance v3, Lt3;

    .line 441
    .line 442
    invoke-direct {v3, v5}, Lt3;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v1, v2, v9, v3}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    return-object v0

    .line 450
    :pswitch_4
    new-instance v2, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    const/4 v6, 0x0

    .line 464
    const/4 v7, 0x0

    .line 465
    const/4 v8, 0x0

    .line 466
    :goto_15
    if-ge v6, v5, :cond_16

    .line 467
    .line 468
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    check-cast v10, Lya2;

    .line 473
    .line 474
    invoke-interface {v10, v3, v4}, Lya2;->e(J)Ldv2;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    iget v11, v10, Ldv2;->n:I

    .line 479
    .line 480
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    iget v11, v10, Ldv2;->o:I

    .line 485
    .line 486
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    add-int/lit8 v6, v6, 0x1

    .line 494
    .line 495
    goto :goto_15

    .line 496
    :cond_16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_17

    .line 501
    .line 502
    invoke-static {v3, v4}, Lmf0;->j(J)I

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    invoke-static {v3, v4}, Lmf0;->i(J)I

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    :cond_17
    new-instance v1, Lna;

    .line 511
    .line 512
    const/4 v3, 0x0

    .line 513
    invoke-direct {v1, v3, v2}, Lna;-><init>(ILjava/util/ArrayList;)V

    .line 514
    .line 515
    .line 516
    invoke-interface {v0, v7, v8, v9, v1}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    return-object v0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
