.class public final Ll05;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lh15;


# static fields
.field public static final k:[I

.field public static final l:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lxx4;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lsz4;

.field public final j:Lr25;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Ll05;->k:[I

    .line 5
    .line 6
    invoke-static {}, Li35;->e()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ll05;->l:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILxx4;[IIILsz4;Lr25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll05;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Ll05;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Ll05;->c:I

    .line 9
    .line 10
    iput p4, p0, Ll05;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Ll05;->f:[I

    .line 13
    .line 14
    iput p7, p0, Ll05;->g:I

    .line 15
    .line 16
    iput p8, p0, Ll05;->h:I

    .line 17
    .line 18
    iput-object p9, p0, Ll05;->i:Lsz4;

    .line 19
    .line 20
    iput-object p10, p0, Ll05;->j:Lr25;

    .line 21
    .line 22
    iput-object p5, p0, Ll05;->e:Lxx4;

    .line 23
    .line 24
    return-void
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lsy4;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lsy4;

    .line 10
    .line 11
    invoke-virtual {p0}, Lsy4;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static n(Le15;Lsz4;Lr25;)Ll05;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Le15;

    .line 4
    .line 5
    if-eqz v1, :cond_35

    .line 6
    .line 7
    iget v1, v0, Le15;->c:I

    .line 8
    .line 9
    const-string v2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const v5, 0xd800

    .line 17
    .line 18
    .line 19
    if-lt v4, v5, :cond_0

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-lt v4, v5, :cond_1

    .line 29
    .line 30
    move v4, v7

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v7, 0x1

    .line 33
    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 34
    .line 35
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-lt v7, v5, :cond_3

    .line 40
    .line 41
    and-int/lit16 v7, v7, 0x1fff

    .line 42
    .line 43
    const/16 v9, 0xd

    .line 44
    .line 45
    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-lt v4, v5, :cond_2

    .line 52
    .line 53
    and-int/lit16 v4, v4, 0x1fff

    .line 54
    .line 55
    shl-int/2addr v4, v9

    .line 56
    or-int/2addr v7, v4

    .line 57
    add-int/lit8 v9, v9, 0xd

    .line 58
    .line 59
    move v4, v10

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    shl-int/2addr v4, v9

    .line 62
    or-int/2addr v7, v4

    .line 63
    move v4, v10

    .line 64
    :cond_3
    if-nez v7, :cond_4

    .line 65
    .line 66
    sget-object v7, Ll05;->k:[I

    .line 67
    .line 68
    move v9, v3

    .line 69
    move v10, v9

    .line 70
    move v11, v10

    .line 71
    move v12, v11

    .line 72
    move v13, v12

    .line 73
    move/from16 v16, v13

    .line 74
    .line 75
    move-object v15, v7

    .line 76
    move/from16 v7, v16

    .line 77
    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-lt v4, v5, :cond_6

    .line 87
    .line 88
    and-int/lit16 v4, v4, 0x1fff

    .line 89
    .line 90
    const/16 v9, 0xd

    .line 91
    .line 92
    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 93
    .line 94
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-lt v7, v5, :cond_5

    .line 99
    .line 100
    and-int/lit16 v7, v7, 0x1fff

    .line 101
    .line 102
    shl-int/2addr v7, v9

    .line 103
    or-int/2addr v4, v7

    .line 104
    add-int/lit8 v9, v9, 0xd

    .line 105
    .line 106
    move v7, v10

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    shl-int/2addr v7, v9

    .line 109
    or-int/2addr v4, v7

    .line 110
    move v7, v10

    .line 111
    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 112
    .line 113
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-lt v7, v5, :cond_8

    .line 118
    .line 119
    and-int/lit16 v7, v7, 0x1fff

    .line 120
    .line 121
    const/16 v10, 0xd

    .line 122
    .line 123
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 124
    .line 125
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-lt v9, v5, :cond_7

    .line 130
    .line 131
    and-int/lit16 v9, v9, 0x1fff

    .line 132
    .line 133
    shl-int/2addr v9, v10

    .line 134
    or-int/2addr v7, v9

    .line 135
    add-int/lit8 v10, v10, 0xd

    .line 136
    .line 137
    move v9, v11

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    shl-int/2addr v9, v10

    .line 140
    or-int/2addr v7, v9

    .line 141
    move v9, v11

    .line 142
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 143
    .line 144
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-lt v9, v5, :cond_a

    .line 149
    .line 150
    and-int/lit16 v9, v9, 0x1fff

    .line 151
    .line 152
    const/16 v11, 0xd

    .line 153
    .line 154
    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 155
    .line 156
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-lt v10, v5, :cond_9

    .line 161
    .line 162
    and-int/lit16 v10, v10, 0x1fff

    .line 163
    .line 164
    shl-int/2addr v10, v11

    .line 165
    or-int/2addr v9, v10

    .line 166
    add-int/lit8 v11, v11, 0xd

    .line 167
    .line 168
    move v10, v12

    .line 169
    goto :goto_4

    .line 170
    :cond_9
    shl-int/2addr v10, v11

    .line 171
    or-int/2addr v9, v10

    .line 172
    move v10, v12

    .line 173
    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 174
    .line 175
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-lt v10, v5, :cond_c

    .line 180
    .line 181
    and-int/lit16 v10, v10, 0x1fff

    .line 182
    .line 183
    const/16 v12, 0xd

    .line 184
    .line 185
    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 186
    .line 187
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-lt v11, v5, :cond_b

    .line 192
    .line 193
    and-int/lit16 v11, v11, 0x1fff

    .line 194
    .line 195
    shl-int/2addr v11, v12

    .line 196
    or-int/2addr v10, v11

    .line 197
    add-int/lit8 v12, v12, 0xd

    .line 198
    .line 199
    move v11, v13

    .line 200
    goto :goto_5

    .line 201
    :cond_b
    shl-int/2addr v11, v12

    .line 202
    or-int/2addr v10, v11

    .line 203
    move v11, v13

    .line 204
    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 205
    .line 206
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-lt v11, v5, :cond_e

    .line 211
    .line 212
    and-int/lit16 v11, v11, 0x1fff

    .line 213
    .line 214
    const/16 v13, 0xd

    .line 215
    .line 216
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 217
    .line 218
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-lt v12, v5, :cond_d

    .line 223
    .line 224
    and-int/lit16 v12, v12, 0x1fff

    .line 225
    .line 226
    shl-int/2addr v12, v13

    .line 227
    or-int/2addr v11, v12

    .line 228
    add-int/lit8 v13, v13, 0xd

    .line 229
    .line 230
    move v12, v14

    .line 231
    goto :goto_6

    .line 232
    :cond_d
    shl-int/2addr v12, v13

    .line 233
    or-int/2addr v11, v12

    .line 234
    move v12, v14

    .line 235
    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 236
    .line 237
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-lt v12, v5, :cond_10

    .line 242
    .line 243
    and-int/lit16 v12, v12, 0x1fff

    .line 244
    .line 245
    const/16 v14, 0xd

    .line 246
    .line 247
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 248
    .line 249
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    if-lt v13, v5, :cond_f

    .line 254
    .line 255
    and-int/lit16 v13, v13, 0x1fff

    .line 256
    .line 257
    shl-int/2addr v13, v14

    .line 258
    or-int/2addr v12, v13

    .line 259
    add-int/lit8 v14, v14, 0xd

    .line 260
    .line 261
    move v13, v15

    .line 262
    goto :goto_7

    .line 263
    :cond_f
    shl-int/2addr v13, v14

    .line 264
    or-int/2addr v12, v13

    .line 265
    move v13, v15

    .line 266
    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 267
    .line 268
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    if-lt v13, v5, :cond_12

    .line 273
    .line 274
    and-int/lit16 v13, v13, 0x1fff

    .line 275
    .line 276
    const/16 v15, 0xd

    .line 277
    .line 278
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 279
    .line 280
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    if-lt v14, v5, :cond_11

    .line 285
    .line 286
    and-int/lit16 v14, v14, 0x1fff

    .line 287
    .line 288
    shl-int/2addr v14, v15

    .line 289
    or-int/2addr v13, v14

    .line 290
    add-int/lit8 v15, v15, 0xd

    .line 291
    .line 292
    move/from16 v14, v16

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    shl-int/2addr v14, v15

    .line 296
    or-int/2addr v13, v14

    .line 297
    move/from16 v14, v16

    .line 298
    .line 299
    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 300
    .line 301
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    if-lt v14, v5, :cond_14

    .line 306
    .line 307
    and-int/lit16 v14, v14, 0x1fff

    .line 308
    .line 309
    const/16 v16, 0xd

    .line 310
    .line 311
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 312
    .line 313
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    .line 314
    .line 315
    .line 316
    move-result v15

    .line 317
    if-lt v15, v5, :cond_13

    .line 318
    .line 319
    and-int/lit16 v15, v15, 0x1fff

    .line 320
    .line 321
    shl-int v15, v15, v16

    .line 322
    .line 323
    or-int/2addr v14, v15

    .line 324
    add-int/lit8 v16, v16, 0xd

    .line 325
    .line 326
    move/from16 v15, v17

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_13
    shl-int v15, v15, v16

    .line 330
    .line 331
    or-int/2addr v14, v15

    .line 332
    move/from16 v15, v17

    .line 333
    .line 334
    :cond_14
    add-int v16, v14, v12

    .line 335
    .line 336
    add-int v13, v16, v13

    .line 337
    .line 338
    add-int v16, v4, v4

    .line 339
    .line 340
    add-int v16, v16, v7

    .line 341
    .line 342
    new-array v7, v13, [I

    .line 343
    .line 344
    move-object v13, v7

    .line 345
    move v7, v4

    .line 346
    move v4, v15

    .line 347
    move-object v15, v13

    .line 348
    move v13, v12

    .line 349
    move v12, v9

    .line 350
    move v9, v13

    .line 351
    move v13, v10

    .line 352
    move/from16 v10, v16

    .line 353
    .line 354
    move/from16 v16, v14

    .line 355
    .line 356
    :goto_a
    sget-object v14, Ll05;->l:Lsun/misc/Unsafe;

    .line 357
    .line 358
    iget-object v3, v0, Le15;->b:[Ljava/lang/Object;

    .line 359
    .line 360
    const/16 v18, 0x1

    .line 361
    .line 362
    iget-object v6, v0, Le15;->a:Lxx4;

    .line 363
    .line 364
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    add-int v9, v16, v9

    .line 369
    .line 370
    add-int v8, v11, v11

    .line 371
    .line 372
    mul-int/lit8 v11, v11, 0x3

    .line 373
    .line 374
    new-array v11, v11, [I

    .line 375
    .line 376
    new-array v8, v8, [Ljava/lang/Object;

    .line 377
    .line 378
    move/from16 v23, v9

    .line 379
    .line 380
    move/from16 v22, v16

    .line 381
    .line 382
    const/16 v20, 0x0

    .line 383
    .line 384
    const/16 v21, 0x0

    .line 385
    .line 386
    :goto_b
    const/16 v5, 0xc

    .line 387
    .line 388
    if-ge v4, v5, :cond_34

    .line 389
    .line 390
    add-int/lit8 v25, v4, 0x1

    .line 391
    .line 392
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    const v5, 0xd800

    .line 397
    .line 398
    .line 399
    if-lt v4, v5, :cond_16

    .line 400
    .line 401
    and-int/lit16 v4, v4, 0x1fff

    .line 402
    .line 403
    move/from16 v5, v25

    .line 404
    .line 405
    const/16 v25, 0xd

    .line 406
    .line 407
    :goto_c
    add-int/lit8 v27, v5, 0x1

    .line 408
    .line 409
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    move/from16 v28, v1

    .line 414
    .line 415
    const v1, 0xd800

    .line 416
    .line 417
    .line 418
    if-lt v5, v1, :cond_15

    .line 419
    .line 420
    and-int/lit16 v1, v5, 0x1fff

    .line 421
    .line 422
    shl-int v1, v1, v25

    .line 423
    .line 424
    or-int/2addr v4, v1

    .line 425
    add-int/lit8 v25, v25, 0xd

    .line 426
    .line 427
    move/from16 v5, v27

    .line 428
    .line 429
    move/from16 v1, v28

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_15
    shl-int v1, v5, v25

    .line 433
    .line 434
    or-int/2addr v4, v1

    .line 435
    move/from16 v1, v27

    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_16
    move/from16 v28, v1

    .line 439
    .line 440
    move/from16 v1, v25

    .line 441
    .line 442
    :goto_d
    add-int/lit8 v5, v1, 0x1

    .line 443
    .line 444
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    move-object/from16 v25, v3

    .line 449
    .line 450
    const v3, 0xd800

    .line 451
    .line 452
    .line 453
    if-lt v1, v3, :cond_18

    .line 454
    .line 455
    and-int/lit16 v1, v1, 0x1fff

    .line 456
    .line 457
    const/16 v27, 0xd

    .line 458
    .line 459
    :goto_e
    add-int/lit8 v29, v5, 0x1

    .line 460
    .line 461
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-lt v5, v3, :cond_17

    .line 466
    .line 467
    and-int/lit16 v3, v5, 0x1fff

    .line 468
    .line 469
    shl-int v3, v3, v27

    .line 470
    .line 471
    or-int/2addr v1, v3

    .line 472
    add-int/lit8 v27, v27, 0xd

    .line 473
    .line 474
    move/from16 v5, v29

    .line 475
    .line 476
    const v3, 0xd800

    .line 477
    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_17
    shl-int v3, v5, v27

    .line 481
    .line 482
    or-int/2addr v1, v3

    .line 483
    move/from16 v5, v29

    .line 484
    .line 485
    :cond_18
    and-int/lit16 v3, v1, 0x400

    .line 486
    .line 487
    if-eqz v3, :cond_19

    .line 488
    .line 489
    add-int/lit8 v3, v20, 0x1

    .line 490
    .line 491
    aput v21, v15, v20

    .line 492
    .line 493
    move/from16 v20, v3

    .line 494
    .line 495
    :cond_19
    and-int/lit16 v3, v1, 0xff

    .line 496
    .line 497
    move/from16 v27, v4

    .line 498
    .line 499
    const/16 v4, 0x33

    .line 500
    .line 501
    move/from16 v29, v7

    .line 502
    .line 503
    if-lt v3, v4, :cond_22

    .line 504
    .line 505
    add-int/lit8 v4, v5, 0x1

    .line 506
    .line 507
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    const v7, 0xd800

    .line 512
    .line 513
    .line 514
    if-lt v5, v7, :cond_1b

    .line 515
    .line 516
    and-int/lit16 v5, v5, 0x1fff

    .line 517
    .line 518
    const/16 v32, 0xd

    .line 519
    .line 520
    :goto_f
    add-int/lit8 v33, v4, 0x1

    .line 521
    .line 522
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    if-lt v4, v7, :cond_1a

    .line 527
    .line 528
    and-int/lit16 v4, v4, 0x1fff

    .line 529
    .line 530
    shl-int v4, v4, v32

    .line 531
    .line 532
    or-int/2addr v5, v4

    .line 533
    add-int/lit8 v32, v32, 0xd

    .line 534
    .line 535
    move/from16 v4, v33

    .line 536
    .line 537
    const v7, 0xd800

    .line 538
    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_1a
    shl-int v4, v4, v32

    .line 542
    .line 543
    or-int/2addr v5, v4

    .line 544
    move/from16 v4, v33

    .line 545
    .line 546
    :cond_1b
    add-int/lit8 v7, v3, -0x33

    .line 547
    .line 548
    move/from16 v32, v4

    .line 549
    .line 550
    const/16 v4, 0x9

    .line 551
    .line 552
    if-eq v7, v4, :cond_1e

    .line 553
    .line 554
    const/16 v4, 0x11

    .line 555
    .line 556
    if-ne v7, v4, :cond_1c

    .line 557
    .line 558
    goto :goto_12

    .line 559
    :cond_1c
    const/16 v4, 0xc

    .line 560
    .line 561
    if-ne v7, v4, :cond_1f

    .line 562
    .line 563
    and-int/lit8 v4, v28, 0x1

    .line 564
    .line 565
    if-eqz v4, :cond_1d

    .line 566
    .line 567
    goto :goto_10

    .line 568
    :cond_1d
    and-int/lit16 v4, v1, 0x800

    .line 569
    .line 570
    if-eqz v4, :cond_1f

    .line 571
    .line 572
    :goto_10
    div-int/lit8 v4, v21, 0x3

    .line 573
    .line 574
    add-int/2addr v4, v4

    .line 575
    add-int/lit8 v4, v4, 0x1

    .line 576
    .line 577
    add-int/lit8 v7, v10, 0x1

    .line 578
    .line 579
    aget-object v10, v25, v10

    .line 580
    .line 581
    aput-object v10, v8, v4

    .line 582
    .line 583
    :goto_11
    move v10, v7

    .line 584
    goto :goto_13

    .line 585
    :cond_1e
    :goto_12
    div-int/lit8 v4, v21, 0x3

    .line 586
    .line 587
    add-int/2addr v4, v4

    .line 588
    add-int/lit8 v4, v4, 0x1

    .line 589
    .line 590
    add-int/lit8 v7, v10, 0x1

    .line 591
    .line 592
    aget-object v10, v25, v10

    .line 593
    .line 594
    aput-object v10, v8, v4

    .line 595
    .line 596
    goto :goto_11

    .line 597
    :cond_1f
    :goto_13
    add-int/2addr v5, v5

    .line 598
    aget-object v4, v25, v5

    .line 599
    .line 600
    instance-of v7, v4, Ljava/lang/reflect/Field;

    .line 601
    .line 602
    if-eqz v7, :cond_20

    .line 603
    .line 604
    check-cast v4, Ljava/lang/reflect/Field;

    .line 605
    .line 606
    :goto_14
    move v7, v5

    .line 607
    goto :goto_15

    .line 608
    :cond_20
    check-cast v4, Ljava/lang/String;

    .line 609
    .line 610
    invoke-static {v4, v6}, Ll05;->w(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    aput-object v4, v25, v5

    .line 615
    .line 616
    goto :goto_14

    .line 617
    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 618
    .line 619
    .line 620
    move-result-wide v4

    .line 621
    long-to-int v4, v4

    .line 622
    add-int/lit8 v5, v7, 0x1

    .line 623
    .line 624
    aget-object v7, v25, v5

    .line 625
    .line 626
    move/from16 v26, v4

    .line 627
    .line 628
    instance-of v4, v7, Ljava/lang/reflect/Field;

    .line 629
    .line 630
    if-eqz v4, :cond_21

    .line 631
    .line 632
    check-cast v7, Ljava/lang/reflect/Field;

    .line 633
    .line 634
    goto :goto_16

    .line 635
    :cond_21
    check-cast v7, Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {v7, v6}, Ll05;->w(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    aput-object v7, v25, v5

    .line 642
    .line 643
    :goto_16
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 644
    .line 645
    .line 646
    move-result-wide v4

    .line 647
    long-to-int v4, v4

    .line 648
    move-object/from16 v31, v2

    .line 649
    .line 650
    move v2, v4

    .line 651
    move/from16 v30, v10

    .line 652
    .line 653
    move/from16 v4, v26

    .line 654
    .line 655
    const/4 v5, 0x0

    .line 656
    move-object v10, v8

    .line 657
    move/from16 v8, v32

    .line 658
    .line 659
    goto/16 :goto_22

    .line 660
    .line 661
    :cond_22
    add-int/lit8 v4, v10, 0x1

    .line 662
    .line 663
    aget-object v7, v25, v10

    .line 664
    .line 665
    check-cast v7, Ljava/lang/String;

    .line 666
    .line 667
    invoke-static {v7, v6}, Ll05;->w(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 668
    .line 669
    .line 670
    move-result-object v7

    .line 671
    move/from16 v32, v4

    .line 672
    .line 673
    const/16 v4, 0x9

    .line 674
    .line 675
    if-eq v3, v4, :cond_2a

    .line 676
    .line 677
    const/16 v4, 0x11

    .line 678
    .line 679
    if-ne v3, v4, :cond_23

    .line 680
    .line 681
    goto/16 :goto_1c

    .line 682
    .line 683
    :cond_23
    const/16 v4, 0x1b

    .line 684
    .line 685
    if-eq v3, v4, :cond_29

    .line 686
    .line 687
    const/16 v4, 0x31

    .line 688
    .line 689
    if-ne v3, v4, :cond_24

    .line 690
    .line 691
    goto :goto_1b

    .line 692
    :cond_24
    const/16 v4, 0xc

    .line 693
    .line 694
    if-eq v3, v4, :cond_27

    .line 695
    .line 696
    const/16 v4, 0x1e

    .line 697
    .line 698
    if-eq v3, v4, :cond_27

    .line 699
    .line 700
    const/16 v4, 0x2c

    .line 701
    .line 702
    if-ne v3, v4, :cond_25

    .line 703
    .line 704
    goto :goto_18

    .line 705
    :cond_25
    const/16 v4, 0x32

    .line 706
    .line 707
    if-ne v3, v4, :cond_2b

    .line 708
    .line 709
    add-int/lit8 v4, v22, 0x1

    .line 710
    .line 711
    aput v21, v15, v22

    .line 712
    .line 713
    div-int/lit8 v22, v21, 0x3

    .line 714
    .line 715
    add-int/lit8 v26, v10, 0x2

    .line 716
    .line 717
    aget-object v30, v25, v32

    .line 718
    .line 719
    add-int v22, v22, v22

    .line 720
    .line 721
    aput-object v30, v8, v22

    .line 722
    .line 723
    move/from16 v30, v4

    .line 724
    .line 725
    and-int/lit16 v4, v1, 0x800

    .line 726
    .line 727
    if-eqz v4, :cond_26

    .line 728
    .line 729
    add-int/lit8 v22, v22, 0x1

    .line 730
    .line 731
    add-int/lit8 v4, v10, 0x3

    .line 732
    .line 733
    aget-object v10, v25, v26

    .line 734
    .line 735
    aput-object v10, v8, v22

    .line 736
    .line 737
    move-object v10, v8

    .line 738
    :goto_17
    move/from16 v22, v30

    .line 739
    .line 740
    goto :goto_1d

    .line 741
    :cond_26
    move-object v10, v8

    .line 742
    move/from16 v4, v26

    .line 743
    .line 744
    goto :goto_17

    .line 745
    :cond_27
    :goto_18
    and-int/lit8 v4, v28, 0x1

    .line 746
    .line 747
    if-eqz v4, :cond_28

    .line 748
    .line 749
    goto :goto_19

    .line 750
    :cond_28
    and-int/lit16 v4, v1, 0x800

    .line 751
    .line 752
    if-eqz v4, :cond_2b

    .line 753
    .line 754
    :goto_19
    div-int/lit8 v4, v21, 0x3

    .line 755
    .line 756
    add-int/2addr v4, v4

    .line 757
    add-int/lit8 v4, v4, 0x1

    .line 758
    .line 759
    add-int/lit8 v10, v10, 0x2

    .line 760
    .line 761
    aget-object v26, v25, v32

    .line 762
    .line 763
    aput-object v26, v8, v4

    .line 764
    .line 765
    :goto_1a
    move v4, v10

    .line 766
    move-object v10, v8

    .line 767
    goto :goto_1d

    .line 768
    :cond_29
    :goto_1b
    div-int/lit8 v4, v21, 0x3

    .line 769
    .line 770
    add-int/2addr v4, v4

    .line 771
    add-int/lit8 v4, v4, 0x1

    .line 772
    .line 773
    add-int/lit8 v10, v10, 0x2

    .line 774
    .line 775
    aget-object v26, v25, v32

    .line 776
    .line 777
    aput-object v26, v8, v4

    .line 778
    .line 779
    goto :goto_1a

    .line 780
    :cond_2a
    :goto_1c
    div-int/lit8 v4, v21, 0x3

    .line 781
    .line 782
    add-int/2addr v4, v4

    .line 783
    add-int/lit8 v4, v4, 0x1

    .line 784
    .line 785
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    move-result-object v10

    .line 789
    aput-object v10, v8, v4

    .line 790
    .line 791
    :cond_2b
    move-object v10, v8

    .line 792
    move/from16 v4, v32

    .line 793
    .line 794
    :goto_1d
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 795
    .line 796
    .line 797
    move-result-wide v7

    .line 798
    long-to-int v7, v7

    .line 799
    and-int/lit16 v8, v1, 0x1000

    .line 800
    .line 801
    const v26, 0xfffff

    .line 802
    .line 803
    .line 804
    if-eqz v8, :cond_2f

    .line 805
    .line 806
    const/16 v8, 0x11

    .line 807
    .line 808
    if-gt v3, v8, :cond_2f

    .line 809
    .line 810
    add-int/lit8 v8, v5, 0x1

    .line 811
    .line 812
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 813
    .line 814
    .line 815
    move-result v5

    .line 816
    move/from16 v30, v4

    .line 817
    .line 818
    const v4, 0xd800

    .line 819
    .line 820
    .line 821
    if-lt v5, v4, :cond_2d

    .line 822
    .line 823
    and-int/lit16 v5, v5, 0x1fff

    .line 824
    .line 825
    const/16 v24, 0xd

    .line 826
    .line 827
    :goto_1e
    add-int/lit8 v26, v8, 0x1

    .line 828
    .line 829
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 830
    .line 831
    .line 832
    move-result v8

    .line 833
    if-lt v8, v4, :cond_2c

    .line 834
    .line 835
    and-int/lit16 v8, v8, 0x1fff

    .line 836
    .line 837
    shl-int v8, v8, v24

    .line 838
    .line 839
    or-int/2addr v5, v8

    .line 840
    add-int/lit8 v24, v24, 0xd

    .line 841
    .line 842
    move/from16 v8, v26

    .line 843
    .line 844
    goto :goto_1e

    .line 845
    :cond_2c
    shl-int v8, v8, v24

    .line 846
    .line 847
    or-int/2addr v5, v8

    .line 848
    move/from16 v8, v26

    .line 849
    .line 850
    :cond_2d
    add-int v24, v29, v29

    .line 851
    .line 852
    div-int/lit8 v26, v5, 0x20

    .line 853
    .line 854
    add-int v26, v26, v24

    .line 855
    .line 856
    aget-object v4, v25, v26

    .line 857
    .line 858
    move-object/from16 v31, v2

    .line 859
    .line 860
    instance-of v2, v4, Ljava/lang/reflect/Field;

    .line 861
    .line 862
    if-eqz v2, :cond_2e

    .line 863
    .line 864
    check-cast v4, Ljava/lang/reflect/Field;

    .line 865
    .line 866
    :goto_1f
    move v2, v5

    .line 867
    goto :goto_20

    .line 868
    :cond_2e
    check-cast v4, Ljava/lang/String;

    .line 869
    .line 870
    invoke-static {v4, v6}, Ll05;->w(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    aput-object v4, v25, v26

    .line 875
    .line 876
    goto :goto_1f

    .line 877
    :goto_20
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 878
    .line 879
    .line 880
    move-result-wide v4

    .line 881
    long-to-int v4, v4

    .line 882
    rem-int/lit8 v5, v2, 0x20

    .line 883
    .line 884
    goto :goto_21

    .line 885
    :cond_2f
    move-object/from16 v31, v2

    .line 886
    .line 887
    move/from16 v30, v4

    .line 888
    .line 889
    move v8, v5

    .line 890
    move/from16 v4, v26

    .line 891
    .line 892
    const/4 v5, 0x0

    .line 893
    :goto_21
    const/16 v2, 0x12

    .line 894
    .line 895
    if-lt v3, v2, :cond_30

    .line 896
    .line 897
    const/16 v2, 0x31

    .line 898
    .line 899
    if-gt v3, v2, :cond_30

    .line 900
    .line 901
    add-int/lit8 v2, v23, 0x1

    .line 902
    .line 903
    aput v7, v15, v23

    .line 904
    .line 905
    move/from16 v23, v2

    .line 906
    .line 907
    :cond_30
    move v2, v4

    .line 908
    move v4, v7

    .line 909
    :goto_22
    add-int/lit8 v7, v21, 0x1

    .line 910
    .line 911
    aput v27, v11, v21

    .line 912
    .line 913
    add-int/lit8 v26, v21, 0x2

    .line 914
    .line 915
    move/from16 v27, v2

    .line 916
    .line 917
    and-int/lit16 v2, v1, 0x200

    .line 918
    .line 919
    if-eqz v2, :cond_31

    .line 920
    .line 921
    const/high16 v2, 0x20000000

    .line 922
    .line 923
    goto :goto_23

    .line 924
    :cond_31
    const/4 v2, 0x0

    .line 925
    :goto_23
    move/from16 v32, v2

    .line 926
    .line 927
    and-int/lit16 v2, v1, 0x100

    .line 928
    .line 929
    if-eqz v2, :cond_32

    .line 930
    .line 931
    const/high16 v2, 0x10000000

    .line 932
    .line 933
    goto :goto_24

    .line 934
    :cond_32
    const/4 v2, 0x0

    .line 935
    :goto_24
    and-int/lit16 v1, v1, 0x800

    .line 936
    .line 937
    if-eqz v1, :cond_33

    .line 938
    .line 939
    const/high16 v1, -0x80000000

    .line 940
    .line 941
    goto :goto_25

    .line 942
    :cond_33
    const/4 v1, 0x0

    .line 943
    :goto_25
    shl-int/lit8 v3, v3, 0x14

    .line 944
    .line 945
    or-int v2, v32, v2

    .line 946
    .line 947
    or-int/2addr v1, v2

    .line 948
    or-int/2addr v1, v3

    .line 949
    or-int/2addr v1, v4

    .line 950
    aput v1, v11, v7

    .line 951
    .line 952
    add-int/lit8 v21, v21, 0x3

    .line 953
    .line 954
    shl-int/lit8 v1, v5, 0x14

    .line 955
    .line 956
    or-int v1, v1, v27

    .line 957
    .line 958
    aput v1, v11, v26

    .line 959
    .line 960
    move v4, v8

    .line 961
    move-object v8, v10

    .line 962
    move-object/from16 v3, v25

    .line 963
    .line 964
    move/from16 v1, v28

    .line 965
    .line 966
    move/from16 v7, v29

    .line 967
    .line 968
    move/from16 v10, v30

    .line 969
    .line 970
    move-object/from16 v2, v31

    .line 971
    .line 972
    goto/16 :goto_b

    .line 973
    .line 974
    :cond_34
    move-object v10, v8

    .line 975
    new-instance v1, Ll05;

    .line 976
    .line 977
    iget-object v14, v0, Le15;->a:Lxx4;

    .line 978
    .line 979
    move-object/from16 v17, v11

    .line 980
    .line 981
    move-object v11, v10

    .line 982
    move-object/from16 v10, v17

    .line 983
    .line 984
    move-object/from16 v18, p1

    .line 985
    .line 986
    move-object/from16 v19, p2

    .line 987
    .line 988
    move/from16 v17, v9

    .line 989
    .line 990
    move-object v9, v1

    .line 991
    invoke-direct/range {v9 .. v19}, Ll05;-><init>([I[Ljava/lang/Object;IILxx4;[IIILsz4;Lr25;)V

    .line 992
    .line 993
    .line 994
    return-object v9

    .line 995
    :cond_35
    invoke-static {}, Lmk0;->b()V

    .line 996
    .line 997
    .line 998
    const/4 v0, 0x0

    .line 999
    return-object v0
.end method

.method public static o(Lsy4;J)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static q(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, " for "

    .line 41
    .line 42
    const-string v3, " not found. Known fields are "

    .line 43
    .line 44
    const-string v4, "Field "

    .line 45
    .line 46
    invoke-static {v4, p0, v2, p1, v3}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final a(Lsy4;Lsy4;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Ll05;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Ll05;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v5, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v6, v4, v5

    .line 16
    .line 17
    invoke-static {v4}, Ll05;->q(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    int-to-long v6, v6

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    .line 28
    .line 29
    aget v4, v0, v4

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    int-to-long v4, v4

    .line 33
    invoke-static {v4, v5, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-static {v4, v5, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v8, v4, :cond_2

    .line 42
    .line 43
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    :goto_1
    if-nez v4, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-static {v6, v7, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    cmp-long v4, v4, v6

    .line 125
    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-ne v4, v5, :cond_2

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_2

    .line 153
    .line 154
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    invoke-static {v6, v7, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    cmp-long v4, v4, v6

    .line 163
    .line 164
    if-nez v4, :cond_2

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_2

    .line 173
    .line 174
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ne v4, v5, :cond_2

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_2

    .line 191
    .line 192
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-ne v4, v5, :cond_2

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_2

    .line 209
    .line 210
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-ne v4, v5, :cond_2

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_2

    .line 227
    .line 228
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_2

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_2

    .line 249
    .line 250
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_2

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_2

    .line 271
    .line 272
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-static {v6, v7, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-static {v4, v5}, Ll15;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_2

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 293
    .line 294
    sget-object v4, Li35;->c:Lpp4;

    .line 295
    .line 296
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->j(JLjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {v4, v6, v7, p2}, Lpp4;->j(JLjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-ne v5, v4, :cond_2

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_2

    .line 313
    .line 314
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-ne v4, v5, :cond_2

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_2

    .line 331
    .line 332
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v4

    .line 336
    invoke-static {v6, v7, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 337
    .line 338
    .line 339
    move-result-wide v6

    .line 340
    cmp-long v4, v4, v6

    .line 341
    .line 342
    if-nez v4, :cond_2

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_2

    .line 351
    .line 352
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-static {v6, v7, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-ne v4, v5, :cond_2

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-eqz v4, :cond_2

    .line 368
    .line 369
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    invoke-static {v6, v7, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v6

    .line 377
    cmp-long v4, v4, v6

    .line 378
    .line 379
    if-nez v4, :cond_2

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_2

    .line 387
    .line 388
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    invoke-static {v6, v7, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v6

    .line 396
    cmp-long v4, v4, v6

    .line 397
    .line 398
    if-nez v4, :cond_2

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_2

    .line 406
    .line 407
    sget-object v4, Li35;->c:Lpp4;

    .line 408
    .line 409
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->c(JLjava/lang/Object;)F

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-virtual {v4, v6, v7, p2}, Lpp4;->c(JLjava/lang/Object;)F

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-ne v5, v4, :cond_2

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Ll05;->i(Lsy4;Lsy4;I)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_2

    .line 433
    .line 434
    sget-object v4, Li35;->c:Lpp4;

    .line 435
    .line 436
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->a(JLjava/lang/Object;)D

    .line 437
    .line 438
    .line 439
    move-result-wide v8

    .line 440
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v8

    .line 444
    invoke-virtual {v4, v6, v7, p2}, Lpp4;->a(JLjava/lang/Object;)D

    .line 445
    .line 446
    .line 447
    move-result-wide v4

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v4

    .line 452
    cmp-long v4, v8, v4

    .line 453
    .line 454
    if-nez v4, :cond_2

    .line 455
    .line 456
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1
    iget-object p0, p0, Ll05;->j:Lr25;

    .line 461
    .line 462
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-object p0, p1, Lsy4;->zzc:Lp25;

    .line 466
    .line 467
    iget-object p1, p2, Lsy4;->zzc:Lp25;

    .line 468
    .line 469
    invoke-virtual {p0, p1}, Lp25;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p0

    .line 473
    if-nez p0, :cond_3

    .line 474
    .line 475
    :cond_2
    :goto_3
    return v2

    .line 476
    :cond_3
    const/4 p0, 0x1

    .line 477
    return p0

    .line 478
    nop

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ll05;->k(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lsy4;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lsy4;

    .line 16
    .line 17
    invoke-virtual {v0}, Lsy4;->f()V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Lxx4;->zza:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lsy4;->d()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Ll05;->a:[I

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    move v3, v1

    .line 29
    :goto_0
    if-ge v3, v2, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ll05;->r(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const v5, 0xfffff

    .line 36
    .line 37
    .line 38
    and-int/2addr v5, v4

    .line 39
    invoke-static {v4}, Ll05;->q(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v5, v5

    .line 44
    const/16 v7, 0x9

    .line 45
    .line 46
    if-eq v4, v7, :cond_3

    .line 47
    .line 48
    const/16 v7, 0x3c

    .line 49
    .line 50
    if-eq v4, v7, :cond_2

    .line 51
    .line 52
    const/16 v7, 0x44

    .line 53
    .line 54
    if-eq v4, v7, :cond_2

    .line 55
    .line 56
    packed-switch v4, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_0
    sget-object v4, Ll05;->l:Lsun/misc/Unsafe;

    .line 61
    .line 62
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_4

    .line 67
    .line 68
    move-object v8, v7

    .line 69
    check-cast v8, Lxz4;

    .line 70
    .line 71
    iput-boolean v1, v8, Lxz4;->n:Z

    .line 72
    .line 73
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v4, p0, Ll05;->i:Lsz4;

    .line 78
    .line 79
    invoke-virtual {v4, v5, v6, p1}, Lsz4;->a(JLjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    aget v4, v0, v3

    .line 84
    .line 85
    invoke-virtual {p0, v4, v3, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ll05;->t(I)Lh15;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    sget-object v7, Ll05;->l:Lsun/misc/Unsafe;

    .line 96
    .line 97
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v4, v5}, Lh15;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Ll05;->j(ILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ll05;->t(I)Lh15;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    sget-object v7, Ll05;->l:Lsun/misc/Unsafe;

    .line 116
    .line 117
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {v4, v5}, Lh15;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    iget-object p0, p0, Ll05;->j:Lr25;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p1, Lsy4;

    .line 133
    .line 134
    iget-object p0, p1, Lsy4;->zzc:Lp25;

    .line 135
    .line 136
    iget-boolean p1, p0, Lp25;->d:Z

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    iput-boolean v1, p0, Lp25;->d:Z

    .line 141
    .line 142
    :cond_6
    :goto_2
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lsy4;)I
    .locals 12

    .line 1
    iget-object v0, p0, Ll05;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Ll05;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    invoke-static {v4}, Ll05;->q(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-long v6, v6

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    const/16 v11, 0x20

    .line 30
    .line 31
    packed-switch v4, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    :goto_2
    ushr-long v6, v4, v11

    .line 77
    .line 78
    xor-long/2addr v4, v6

    .line 79
    long-to-int v4, v4

    .line 80
    add-int/2addr v3, v4

    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    mul-int/lit8 v3, v3, 0x35

    .line 90
    .line 91
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    mul-int/lit8 v3, v3, 0x35

    .line 103
    .line 104
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    mul-int/lit8 v3, v3, 0x35

    .line 124
    .line 125
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    goto :goto_1

    .line 130
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    mul-int/lit8 v3, v3, 0x35

    .line 137
    .line 138
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    goto :goto_1

    .line 143
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    mul-int/lit8 v3, v3, 0x35

    .line 150
    .line 151
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    goto :goto_1

    .line 156
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_2

    .line 161
    .line 162
    mul-int/lit8 v3, v3, 0x35

    .line 163
    .line 164
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    goto :goto_1

    .line 173
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_2

    .line 178
    .line 179
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    mul-int/lit8 v3, v3, 0x35

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_2

    .line 196
    .line 197
    mul-int/lit8 v3, v3, 0x35

    .line 198
    .line 199
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_2

    .line 216
    .line 217
    mul-int/lit8 v3, v3, 0x35

    .line 218
    .line 219
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    sget-object v5, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 230
    .line 231
    if-eqz v4, :cond_0

    .line 232
    .line 233
    :goto_3
    move v8, v9

    .line 234
    :cond_0
    add-int/2addr v8, v3

    .line 235
    move v3, v8

    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_2

    .line 243
    .line 244
    mul-int/lit8 v3, v3, 0x35

    .line 245
    .line 246
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_2

    .line 257
    .line 258
    mul-int/lit8 v3, v3, 0x35

    .line 259
    .line 260
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v4

    .line 270
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_2

    .line 279
    .line 280
    mul-int/lit8 v3, v3, 0x35

    .line 281
    .line 282
    invoke-static {p1, v6, v7}, Ll05;->o(Lsy4;J)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 293
    .line 294
    mul-int/lit8 v3, v3, 0x35

    .line 295
    .line 296
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Ljava/lang/Long;

    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 303
    .line 304
    .line 305
    move-result-wide v4

    .line 306
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_2

    .line 315
    .line 316
    mul-int/lit8 v3, v3, 0x35

    .line 317
    .line 318
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/lang/Long;

    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 329
    .line 330
    goto/16 :goto_2

    .line 331
    .line 332
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_2

    .line 337
    .line 338
    mul-int/lit8 v3, v3, 0x35

    .line 339
    .line 340
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Ljava/lang/Float;

    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_2

    .line 361
    .line 362
    mul-int/lit8 v3, v3, 0x35

    .line 363
    .line 364
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Ljava/lang/Double;

    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 375
    .line 376
    .line 377
    move-result-wide v4

    .line 378
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 379
    .line 380
    goto/16 :goto_2

    .line 381
    .line 382
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 383
    .line 384
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    goto/16 :goto_1

    .line 393
    .line 394
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 395
    .line 396
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :pswitch_14
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    if-eqz v4, :cond_1

    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    :cond_1
    :goto_4
    mul-int/lit8 v3, v3, 0x35

    .line 417
    .line 418
    add-int/2addr v3, v10

    .line 419
    goto/16 :goto_5

    .line 420
    .line 421
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 422
    .line 423
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 428
    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 432
    .line 433
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 440
    .line 441
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 450
    .line 451
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 458
    .line 459
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 466
    .line 467
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    goto/16 :goto_1

    .line 484
    .line 485
    :pswitch_1c
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    if-eqz v4, :cond_1

    .line 490
    .line 491
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    goto :goto_4

    .line 496
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 497
    .line 498
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    goto/16 :goto_1

    .line 509
    .line 510
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 511
    .line 512
    sget-object v4, Li35;->c:Lpp4;

    .line 513
    .line 514
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->j(JLjava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    sget-object v5, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 519
    .line 520
    if-eqz v4, :cond_0

    .line 521
    .line 522
    goto/16 :goto_3

    .line 523
    .line 524
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 525
    .line 526
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 533
    .line 534
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 535
    .line 536
    .line 537
    move-result-wide v4

    .line 538
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 543
    .line 544
    invoke-static {v6, v7, p1}, Li35;->a(JLjava/lang/Object;)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    goto/16 :goto_1

    .line 549
    .line 550
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 551
    .line 552
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v4

    .line 556
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 557
    .line 558
    goto/16 :goto_2

    .line 559
    .line 560
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 561
    .line 562
    invoke-static {v6, v7, p1}, Li35;->b(JLjava/lang/Object;)J

    .line 563
    .line 564
    .line 565
    move-result-wide v4

    .line 566
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 567
    .line 568
    goto/16 :goto_2

    .line 569
    .line 570
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 571
    .line 572
    sget-object v4, Li35;->c:Lpp4;

    .line 573
    .line 574
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->c(JLjava/lang/Object;)F

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    goto/16 :goto_1

    .line 583
    .line 584
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 585
    .line 586
    sget-object v4, Li35;->c:Lpp4;

    .line 587
    .line 588
    invoke-virtual {v4, v6, v7, p1}, Lpp4;->a(JLjava/lang/Object;)D

    .line 589
    .line 590
    .line 591
    move-result-wide v4

    .line 592
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 593
    .line 594
    .line 595
    move-result-wide v4

    .line 596
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    .line 597
    .line 598
    goto/16 :goto_2

    .line 599
    .line 600
    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 605
    .line 606
    iget-object p0, p0, Ll05;->j:Lr25;

    .line 607
    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    iget-object p0, p1, Lsy4;->zzc:Lp25;

    .line 612
    .line 613
    invoke-virtual {p0}, Lp25;->hashCode()I

    .line 614
    .line 615
    .line 616
    move-result p0

    .line 617
    add-int/2addr p0, v3

    .line 618
    return p0

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final d(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xfffff

    .line 3
    .line 4
    .line 5
    move v2, v0

    .line 6
    move v4, v2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    iget v5, p0, Ll05;->g:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_f

    .line 12
    .line 13
    iget-object v5, p0, Ll05;->f:[I

    .line 14
    .line 15
    aget v5, v5, v2

    .line 16
    .line 17
    iget-object v7, p0, Ll05;->a:[I

    .line 18
    .line 19
    aget v8, v7, v5

    .line 20
    .line 21
    invoke-virtual {p0, v5}, Ll05;->r(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    add-int/lit8 v10, v5, 0x2

    .line 26
    .line 27
    aget v7, v7, v10

    .line 28
    .line 29
    and-int v10, v7, v1

    .line 30
    .line 31
    ushr-int/lit8 v7, v7, 0x14

    .line 32
    .line 33
    shl-int v7, v6, v7

    .line 34
    .line 35
    if-eq v10, v3, :cond_1

    .line 36
    .line 37
    if-eq v10, v1, :cond_0

    .line 38
    .line 39
    int-to-long v3, v10

    .line 40
    sget-object v11, Ll05;->l:Lsun/misc/Unsafe;

    .line 41
    .line 42
    invoke-virtual {v11, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :cond_0
    move v3, v10

    .line 47
    :cond_1
    const/high16 v10, 0x10000000

    .line 48
    .line 49
    and-int/2addr v10, v9

    .line 50
    if-eqz v10, :cond_4

    .line 51
    .line 52
    if-ne v3, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v5, p1}, Ll05;->j(ILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    and-int v10, v4, v7

    .line 60
    .line 61
    if-eqz v10, :cond_3

    .line 62
    .line 63
    move v10, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v10, v0

    .line 66
    :goto_1
    if-eqz v10, :cond_d

    .line 67
    .line 68
    :cond_4
    invoke-static {v9}, Ll05;->q(I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const/16 v11, 0x9

    .line 73
    .line 74
    if-eq v10, v11, :cond_a

    .line 75
    .line 76
    const/16 v11, 0x11

    .line 77
    .line 78
    if-eq v10, v11, :cond_a

    .line 79
    .line 80
    const/16 v6, 0x1b

    .line 81
    .line 82
    if-eq v10, v6, :cond_8

    .line 83
    .line 84
    const/16 v6, 0x3c

    .line 85
    .line 86
    if-eq v10, v6, :cond_7

    .line 87
    .line 88
    const/16 v6, 0x44

    .line 89
    .line 90
    if-eq v10, v6, :cond_7

    .line 91
    .line 92
    const/16 v6, 0x31

    .line 93
    .line 94
    if-eq v10, v6, :cond_8

    .line 95
    .line 96
    const/16 v6, 0x32

    .line 97
    .line 98
    if-eq v10, v6, :cond_5

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_5
    and-int v6, v9, v1

    .line 103
    .line 104
    int-to-long v6, v6

    .line 105
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Lxz4;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_6
    div-int/lit8 v5, v5, 0x3

    .line 120
    .line 121
    iget-object p0, p0, Ll05;->b:[Ljava/lang/Object;

    .line 122
    .line 123
    add-int/2addr v5, v5

    .line 124
    aget-object p0, p0, v5

    .line 125
    .line 126
    invoke-static {p0}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    throw p0

    .line 131
    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Ll05;->l(IILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_e

    .line 136
    .line 137
    invoke-virtual {p0, v5}, Ll05;->t(I)Lh15;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    and-int v6, v9, v1

    .line 142
    .line 143
    int-to-long v6, v6

    .line 144
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v5, v6}, Lh15;->d(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_e

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    and-int v6, v9, v1

    .line 156
    .line 157
    int-to-long v6, v6

    .line 158
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-nez v7, :cond_e

    .line 169
    .line 170
    invoke-virtual {p0, v5}, Ll05;->t(I)Lh15;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    move v7, v0

    .line 175
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-ge v7, v8, :cond_e

    .line 180
    .line 181
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-interface {v5, v8}, Lh15;->d(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-nez v8, :cond_9

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_a
    if-ne v3, v1, :cond_b

    .line 196
    .line 197
    invoke-virtual {p0, v5, p1}, Ll05;->j(ILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    goto :goto_3

    .line 202
    :cond_b
    and-int/2addr v7, v4

    .line 203
    if-eqz v7, :cond_c

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_c
    move v6, v0

    .line 207
    :goto_3
    if-eqz v6, :cond_e

    .line 208
    .line 209
    invoke-virtual {p0, v5}, Ll05;->t(I)Lh15;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    and-int v6, v9, v1

    .line 214
    .line 215
    int-to-long v6, v6

    .line 216
    invoke-static {v6, v7, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v5, v6}, Lh15;->d(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_e

    .line 225
    .line 226
    :cond_d
    :goto_4
    return v0

    .line 227
    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_f
    return v6
.end method

.method public final e(Ljava/lang/Object;[BIILh30;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Ll05;->m(Ljava/lang/Object;[BIIILh30;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static {p1}, Ll05;->k(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Ll05;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ll05;->r(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    aget v5, v1, v0

    .line 26
    .line 27
    invoke-static {v2}, Ll05;->q(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v8, v4

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_1
    move-object v7, p1

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Ll05;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Ll05;->l(IILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {v8, v9, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p1, v8, v9, v2}, Li35;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x2

    .line 56
    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-static {p1, v1, v2, v5}, Li35;->h(Ljava/lang/Object;JI)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Ll05;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Ll05;->l(IILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-static {v8, v9, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {p1, v8, v9, v2}, Li35;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    and-int/2addr v1, v3

    .line 87
    int-to-long v1, v1

    .line 88
    invoke-static {p1, v1, v2, v5}, Li35;->h(Ljava/lang/Object;JI)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_4
    sget-object v1, Ll15;->a:Ljava/lang/Class;

    .line 93
    .line 94
    invoke-static {v8, v9, p1}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v8, v9, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Lyz4;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxz4;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {p1, v8, v9, v1}, Li35;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_5
    iget-object v1, p0, Ll05;->i:Lsz4;

    .line 111
    .line 112
    invoke-virtual {v1, p1, v8, v9, p2}, Lsz4;->b(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Ll05;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    .line 126
    invoke-static {v8, v9, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {p1, v8, v9, v1, v2}, Li35;->i(Ljava/lang/Object;JJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    .line 160
    invoke-static {v8, v9, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    invoke-static {p1, v8, v9, v1, v2}, Li35;->i(Ljava/lang/Object;JJ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    .line 178
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    .line 196
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    .line 232
    invoke-static {v8, v9, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {p1, v8, v9, v1}, Li35;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Ll05;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    .line 255
    invoke-static {v8, v9, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {p1, v8, v9, v1}, Li35;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    .line 273
    sget-object v1, Li35;->c:Lpp4;

    .line 274
    .line 275
    invoke-virtual {v1, v8, v9, p2}, Lpp4;->j(JLjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-virtual {v1, p1, v8, v9, v2}, Lpp4;->e(Ljava/lang/Object;JZ)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    .line 293
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_0

    .line 310
    .line 311
    invoke-static {v8, v9, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 312
    .line 313
    .line 314
    move-result-wide v1

    .line 315
    invoke-static {p1, v8, v9, v1, v2}, Li35;->i(Ljava/lang/Object;JJ)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_0

    .line 328
    .line 329
    invoke-static {v8, v9, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-static {p1, v8, v9, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    .line 347
    invoke-static {v8, v9, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v1

    .line 351
    invoke-static {p1, v8, v9, v1, v2}, Li35;->i(Ljava/lang/Object;JJ)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    .line 365
    invoke-static {v8, v9, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v1

    .line 369
    invoke-static {p1, v8, v9, v1, v2}, Li35;->i(Ljava/lang/Object;JJ)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1

    .line 376
    .line 377
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_0

    .line 382
    .line 383
    sget-object v1, Li35;->c:Lpp4;

    .line 384
    .line 385
    invoke-virtual {v1, v8, v9, p2}, Lpp4;->c(JLjava/lang/Object;)F

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v1, p1, v8, v9, v2}, Lpp4;->h(Ljava/lang/Object;JF)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v0, p1}, Ll05;->z(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    .line 403
    sget-object v6, Li35;->c:Lpp4;

    .line 404
    .line 405
    invoke-virtual {v6, v8, v9, p2}, Lpp4;->a(JLjava/lang/Object;)D

    .line 406
    .line 407
    .line 408
    move-result-wide v10

    .line 409
    move-object v7, p1

    .line 410
    invoke-virtual/range {v6 .. v11}, Lpp4;->g(Ljava/lang/Object;JD)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v0, v7}, Ll05;->z(ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 417
    .line 418
    move-object p1, v7

    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_1
    move-object v7, p1

    .line 422
    iget-object p0, p0, Ll05;->j:Lr25;

    .line 423
    .line 424
    invoke-static {p0, v7, p2}, Ll15;->a(Lr25;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_2
    move-object v7, p1

    .line 429
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    const-string p1, "Mutating immutable message: "

    .line 434
    .line 435
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Ll05;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ll05;->r(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Ll05;->z(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Ll05;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ll05;->r(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v3, v1

    .line 12
    invoke-virtual {v0, p3, v3, v4, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    iget-object p0, p0, Ll05;->a:[I

    .line 18
    .line 19
    aget p0, p0, p2

    .line 20
    .line 21
    and-int/2addr p0, v2

    .line 22
    int-to-long v0, p0

    .line 23
    invoke-static {p3, v0, v1, p1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final i(Lsy4;Lsy4;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Ll05;->j(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final j(ILjava/lang/Object;)Z
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Ll05;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ll05;->r(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    and-int p1, p0, v1

    .line 27
    .line 28
    invoke-static {p0}, Ll05;->q(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v0, p1

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lq73;->d()V

    .line 39
    .line 40
    .line 41
    return v5

    .line 42
    :pswitch_0
    invoke-static {v0, v1, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-static {v0, v1, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    cmp-long p0, p0, v2

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_2
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_3
    invoke-static {v0, v1, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    cmp-long p0, p0, v2

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_4
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_5
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_6
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_7
    sget-object p0, Liy4;->p:Liy4;

    .line 103
    .line 104
    invoke-static {v0, v1, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Liy4;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_3

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_8
    invoke-static {v0, v1, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-eqz p0, :cond_3

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_9
    invoke-static {v0, v1, p2}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    instance-of p1, p0, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz p1, :cond_0

    .line 131
    .line 132
    check-cast p0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_3

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_0
    instance-of p1, p0, Liy4;

    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    sget-object p1, Liy4;->p:Liy4;

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Liy4;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_3

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-static {}, Lq73;->d()V

    .line 156
    .line 157
    .line 158
    return v5

    .line 159
    :pswitch_a
    sget-object p0, Li35;->c:Lpp4;

    .line 160
    .line 161
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->j(JLjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_b
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_3

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_c
    invoke-static {v0, v1, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    cmp-long p0, p0, v2

    .line 178
    .line 179
    if-eqz p0, :cond_3

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_d
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_3

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_e
    invoke-static {v0, v1, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 190
    .line 191
    .line 192
    move-result-wide p0

    .line 193
    cmp-long p0, p0, v2

    .line 194
    .line 195
    if-eqz p0, :cond_3

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_f
    invoke-static {v0, v1, p2}, Li35;->b(JLjava/lang/Object;)J

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    cmp-long p0, p0, v2

    .line 203
    .line 204
    if-eqz p0, :cond_3

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :pswitch_10
    sget-object p0, Li35;->c:Lpp4;

    .line 208
    .line 209
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->c(JLjava/lang/Object;)F

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_3

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_11
    sget-object p0, Li35;->c:Lpp4;

    .line 221
    .line 222
    invoke-virtual {p0, v0, v1, p2}, Lpp4;->a(JLjava/lang/Object;)D

    .line 223
    .line 224
    .line 225
    move-result-wide p0

    .line 226
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 227
    .line 228
    .line 229
    move-result-wide p0

    .line 230
    cmp-long p0, p0, v2

    .line 231
    .line 232
    if-eqz p0, :cond_3

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    .line 236
    .line 237
    shl-int p0, v6, p0

    .line 238
    .line 239
    invoke-static {v2, v3, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    and-int/2addr p0, p1

    .line 244
    if-eqz p0, :cond_3

    .line 245
    .line 246
    :goto_0
    return v6

    .line 247
    :cond_3
    return v5

    .line 248
    nop

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
.end method

.method public final l(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Ll05;->a:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {v0, v1, p3}, Li35;->a(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final m(Ljava/lang/Object;[BIIILh30;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    .line 1
    invoke-static {v2}, Ll05;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2
    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v6, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v13, v0, Ll05;->a:[I

    if-ge v4, v5, :cond_6b

    add-int/lit8 v15, v4, 0x1

    .line 3
    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    .line 4
    invoke-static {v4, v3, v15, v7}, Lve4;->h(I[BILh30;)I

    move-result v15

    iget v4, v7, Lh30;->b:I

    :cond_0
    move/from16 v31, v15

    move v15, v4

    move/from16 v4, v31

    ushr-int/lit8 v12, v15, 0x3

    iget v11, v0, Ll05;->d:I

    const/16 p3, 0x3

    iget v3, v0, Ll05;->c:I

    if-le v12, v6, :cond_2

    div-int/lit8 v8, v8, 0x3

    if-lt v12, v3, :cond_1

    if-gt v12, v11, :cond_1

    .line 5
    invoke-virtual {v0, v12, v8}, Ll05;->p(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    move v11, v3

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :cond_2
    if-lt v12, v3, :cond_3

    if-gt v12, v11, :cond_3

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v12, v3}, Ll05;->p(II)I

    move-result v6

    move v11, v6

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    const/4 v11, -0x1

    :goto_4
    if-ne v11, v3, :cond_4

    move/from16 v10, p5

    move-object/from16 v29, v1

    move/from16 v17, v3

    move v3, v4

    move-object/from16 v19, v13

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object v13, v2

    move v2, v15

    move-object v15, v7

    goto/16 :goto_35

    :cond_4
    and-int/lit8 v6, v15, 0x7

    add-int/lit8 v8, v11, 0x1

    .line 7
    aget v8, v13, v8

    invoke-static {v8}, Ll05;->q(I)I

    move-result v3

    move/from16 v19, v4

    and-int v4, v8, v16

    int-to-long v4, v4

    move-wide/from16 v20, v4

    const/16 v4, 0x11

    const-wide/16 v22, 0x1

    const-wide/16 v24, 0x0

    const/high16 v26, 0x20000000

    const-string v5, ""

    const/16 v27, 0x1

    if-gt v3, v4, :cond_25

    add-int/lit8 v4, v11, 0x2

    .line 8
    aget v4, v13, v4

    ushr-int/lit8 v28, v4, 0x14

    shl-int v28, v27, v28

    and-int v4, v4, v16

    if-eq v4, v9, :cond_7

    move/from16 v7, v16

    move/from16 v29, v8

    if-eq v9, v7, :cond_5

    int-to-long v7, v9

    .line 9
    invoke-virtual {v1, v2, v7, v8, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v7, 0xfffff

    :cond_5
    if-ne v4, v7, :cond_6

    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    int-to-long v7, v4

    .line 10
    invoke-virtual {v1, v2, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v14, v7

    :goto_5
    move/from16 v30, v14

    move v14, v4

    goto :goto_6

    :cond_7
    move/from16 v29, v8

    move/from16 v30, v14

    move v14, v9

    :goto_6
    packed-switch v3, :pswitch_data_0

    move/from16 v3, p3

    if-ne v6, v3, :cond_8

    .line 11
    invoke-virtual {v0, v11, v2}, Ll05;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v3, v12, 0x3

    or-int/lit8 v8, v3, 0x4

    .line 12
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v3

    .line 13
    check-cast v3, Ll05;

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v19

    const/16 v17, -0x1

    .line 14
    invoke-virtual/range {v3 .. v9}, Ll05;->m(Ljava/lang/Object;[BIIILh30;)I

    move-result v3

    move-object v7, v5

    iput-object v4, v9, Lh30;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v11, v2, v4}, Ll05;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v4, v30, v28

    move v5, v4

    move v4, v3

    move-object v3, v7

    move-object v7, v9

    move v9, v14

    move v14, v5

    move/from16 v5, p4

    :goto_7
    move v8, v11

    move v6, v12

    goto/16 :goto_0

    :cond_8
    const/16 v17, -0x1

    move-object/from16 v7, p2

    move-object v9, v1

    move-object v1, v2

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v20, v15

    move/from16 v15, v19

    move-object/from16 v13, p6

    goto/16 :goto_18

    :pswitch_0
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move/from16 v4, v19

    const/16 v17, -0x1

    if-nez v6, :cond_9

    .line 16
    invoke-static {v7, v4, v9}, Lve4;->i([BILh30;)I

    move-result v8

    iget-wide v3, v9, Lh30;->a:J

    and-long v5, v3, v22

    ushr-long v3, v3, v27

    neg-long v5, v5

    xor-long/2addr v5, v3

    move-wide/from16 v3, v20

    .line 17
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    or-int v3, v30, v28

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move v4, v14

    move v14, v3

    move-object v3, v7

    move-object v7, v9

    move v9, v4

    move/from16 v5, p4

    move v4, v8

    goto :goto_7

    :cond_9
    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v20, v15

    move v15, v4

    move-object v13, v9

    move-object v9, v2

    goto/16 :goto_18

    :pswitch_1
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/16 v17, -0x1

    if-nez v6, :cond_a

    .line 18
    invoke-static {v7, v4, v9}, Lve4;->g([BILh30;)I

    move-result v4

    iget v3, v9, Lh30;->b:I

    and-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    neg-int v5, v5

    xor-int/2addr v3, v5

    .line 19
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v14, v30, v28

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v7

    move-object v7, v9

    :goto_9
    move v8, v11

    move v6, v12

    :goto_a
    const v16, 0xfffff

    move/from16 v9, p3

    goto/16 :goto_1

    :cond_a
    move-object v13, v9

    move/from16 v20, v15

    move-object v9, v2

    :goto_b
    move v15, v4

    goto/16 :goto_18

    :pswitch_2
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/16 v17, -0x1

    if-nez v6, :cond_a

    .line 20
    invoke-static {v7, v4, v9}, Lve4;->g([BILh30;)I

    move-result v4

    iget v3, v9, Lh30;->b:I

    .line 21
    invoke-virtual {v0, v11}, Ll05;->s(I)V

    .line 22
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/4 v3, 0x2

    const/16 v17, -0x1

    if-ne v6, v3, :cond_a

    .line 23
    invoke-static {v7, v4, v9}, Lve4;->b([BILh30;)I

    move-result v4

    iget-object v3, v9, Lh30;->c:Ljava/lang/Object;

    .line 24
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object/from16 p3, v2

    move-object v2, v1

    move-object/from16 v1, p3

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    const/4 v3, 0x2

    const/16 v17, -0x1

    if-ne v6, v3, :cond_b

    move-object v3, v1

    .line 25
    invoke-virtual {v0, v11, v3}, Ll05;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 26
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v2

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v9

    move-object v9, v5

    move/from16 v5, p4

    .line 27
    invoke-static/range {v1 .. v6}, Lve4;->j(Ljava/lang/Object;Lh15;[BIILh30;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 28
    invoke-virtual {v0, v11, v7, v3}, Ll05;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v14, v30, v28

    move-object v3, v7

    move-object v7, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v9

    goto/16 :goto_9

    :cond_b
    move-object/from16 v31, v7

    move-object v7, v1

    move-object/from16 v1, v31

    move-object/from16 v31, v9

    move-object v9, v2

    move-object/from16 v2, v31

    move-object v13, v7

    move-object v7, v1

    move-object v1, v13

    move-object v13, v2

    move/from16 v20, v15

    goto/16 :goto_b

    :pswitch_5
    move-object v9, v1

    move-object v7, v2

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v6, v3, :cond_1f

    and-int v3, v29, v26

    if-eqz v3, :cond_1c

    .line 29
    invoke-static {v1, v4, v2}, Lve4;->g([BILh30;)I

    move-result v3

    iget v4, v2, Lh30;->b:I

    if-ltz v4, :cond_1b

    if-nez v4, :cond_c

    .line 30
    iput-object v5, v2, Lh30;->c:Ljava/lang/Object;

    move v4, v3

    move/from16 v20, v15

    goto/16 :goto_11

    .line 31
    :cond_c
    sget-object v5, Ln35;->a:Lny4;

    .line 32
    array-length v5, v1

    sub-int v6, v5, v3

    or-int v8, v3, v4

    sub-int/2addr v6, v4

    or-int/2addr v6, v8

    if-ltz v6, :cond_1a

    add-int v5, v3, v4

    .line 33
    new-array v4, v4, [C

    const/4 v6, 0x0

    :goto_c
    if-ge v3, v5, :cond_d

    .line 34
    aget-byte v8, v1, v3

    if-ltz v8, :cond_d

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v6, 0x1

    int-to-char v8, v8

    .line 35
    aput-char v8, v4, v6

    move/from16 v6, v19

    goto :goto_c

    :cond_d
    :goto_d
    if-ge v3, v5, :cond_19

    add-int/lit8 v8, v3, 0x1

    move/from16 v19, v3

    .line 36
    aget-byte v3, v1, v19

    if-ltz v3, :cond_e

    add-int/lit8 v19, v6, 0x1

    int-to-char v3, v3

    .line 37
    aput-char v3, v4, v6

    move v3, v8

    :goto_e
    move/from16 v6, v19

    if-ge v3, v5, :cond_d

    .line 38
    aget-byte v8, v1, v3

    if-ltz v8, :cond_d

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v19, v6, 0x1

    int-to-char v8, v8

    .line 39
    aput-char v8, v4, v6

    goto :goto_e

    :cond_e
    move/from16 v20, v15

    const/16 v15, -0x20

    if-ge v3, v15, :cond_11

    if-ge v8, v5, :cond_10

    add-int/lit8 v15, v19, 0x2

    .line 40
    aget-byte v8, v1, v8

    add-int/lit8 v19, v6, 0x1

    move/from16 v21, v5

    const/16 v5, -0x3e

    if-lt v3, v5, :cond_f

    .line 41
    invoke-static {v8}, Luj4;->d(B)Z

    move-result v5

    if-nez v5, :cond_f

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v8, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    .line 42
    aput-char v3, v4, v6

    move v3, v15

    move/from16 v6, v19

    :goto_f
    move/from16 v15, v20

    move/from16 v5, v21

    goto :goto_d

    .line 43
    :cond_f
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 44
    :cond_10
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    :cond_11
    move/from16 v21, v5

    const/16 v5, -0x10

    if-ge v3, v5, :cond_16

    add-int/lit8 v5, v21, -0x1

    if-ge v8, v5, :cond_15

    add-int/lit8 v5, v19, 0x2

    .line 45
    aget-byte v8, v1, v8

    add-int/lit8 v19, v19, 0x3

    aget-byte v5, v1, v5

    add-int/lit8 v22, v6, 0x1

    .line 46
    invoke-static {v8}, Luj4;->d(B)Z

    move-result v23

    if-nez v23, :cond_14

    move/from16 v23, v5

    const/16 v5, -0x60

    if-ne v3, v15, :cond_12

    if-lt v8, v5, :cond_14

    move v3, v15

    :cond_12
    const/16 v15, -0x13

    if-ne v3, v15, :cond_13

    if-ge v8, v5, :cond_14

    move v3, v15

    :cond_13
    invoke-static/range {v23 .. v23}, Luj4;->d(B)Z

    move-result v5

    if-nez v5, :cond_14

    and-int/lit8 v3, v3, 0xf

    and-int/lit8 v5, v8, 0x3f

    and-int/lit8 v8, v23, 0x3f

    shl-int/lit8 v3, v3, 0xc

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    or-int/2addr v3, v8

    int-to-char v3, v3

    .line 47
    aput-char v3, v4, v6

    move/from16 v3, v19

    move/from16 v15, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_d

    .line 48
    :cond_14
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 49
    :cond_15
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    :cond_16
    add-int/lit8 v5, v21, -0x2

    if-ge v8, v5, :cond_18

    add-int/lit8 v5, v19, 0x2

    .line 50
    aget-byte v8, v1, v8

    add-int/lit8 v15, v19, 0x3

    aget-byte v5, v1, v5

    add-int/lit8 v19, v19, 0x4

    aget-byte v15, v1, v15

    .line 51
    invoke-static {v8}, Luj4;->d(B)Z

    move-result v22

    if-nez v22, :cond_17

    shl-int/lit8 v22, v3, 0x1c

    add-int/lit8 v23, v8, 0x70

    add-int v23, v23, v22

    shr-int/lit8 v22, v23, 0x1e

    if-nez v22, :cond_17

    invoke-static {v5}, Luj4;->d(B)Z

    move-result v22

    if-nez v22, :cond_17

    invoke-static {v15}, Luj4;->d(B)Z

    move-result v22

    if-nez v22, :cond_17

    and-int/lit8 v3, v3, 0x7

    and-int/lit8 v8, v8, 0x3f

    and-int/lit8 v5, v5, 0x3f

    and-int/lit8 v15, v15, 0x3f

    shl-int/lit8 v3, v3, 0x12

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v3, v8

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    or-int/2addr v3, v15

    ushr-int/lit8 v5, v3, 0xa

    const v8, 0xd7c0

    add-int/2addr v5, v8

    int-to-char v5, v5

    .line 52
    aput-char v5, v4, v6

    add-int/lit8 v5, v6, 0x1

    and-int/lit16 v3, v3, 0x3ff

    const v8, 0xdc00

    add-int/2addr v3, v8

    int-to-char v3, v3

    .line 53
    aput-char v3, v4, v5

    add-int/lit8 v6, v6, 0x2

    move/from16 v3, v19

    goto/16 :goto_f

    .line 54
    :cond_17
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 55
    :cond_18
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    :cond_19
    move/from16 v21, v5

    move/from16 v20, v15

    .line 56
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, v2, Lh30;->c:Ljava/lang/Object;

    move/from16 v4, v21

    goto :goto_11

    .line 57
    :cond_1a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1b
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    :cond_1c
    move/from16 v20, v15

    .line 60
    invoke-static {v1, v4, v2}, Lve4;->g([BILh30;)I

    move-result v3

    iget v4, v2, Lh30;->b:I

    if-ltz v4, :cond_1e

    if-nez v4, :cond_1d

    .line 61
    iput-object v5, v2, Lh30;->c:Ljava/lang/Object;

    :goto_10
    move v4, v3

    goto :goto_11

    :cond_1d
    new-instance v5, Ljava/lang/String;

    .line 62
    sget-object v6, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v2, Lh30;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_10

    .line 63
    :goto_11
    iget-object v3, v2, Lh30;->c:Ljava/lang/Object;

    .line 64
    invoke-virtual {v9, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_12
    or-int v14, v30, v28

    move-object v3, v7

    move-object v7, v2

    move-object v2, v3

    move/from16 v5, p4

    move-object v3, v1

    move-object v1, v9

    move v8, v11

    move v6, v12

    :goto_13
    move/from16 v15, v20

    goto/16 :goto_a

    .line 65
    :cond_1e
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    :cond_1f
    move/from16 v20, v15

    :cond_20
    move-object v13, v7

    move-object v7, v1

    move-object v1, v13

    move-object v13, v2

    goto/16 :goto_b

    :pswitch_6
    move-object v9, v1

    move-object v7, v2

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    if-nez v6, :cond_20

    .line 66
    invoke-static {v1, v4, v2}, Lve4;->i([BILh30;)I

    move-result v4

    iget-wide v5, v2, Lh30;->a:J

    cmp-long v3, v5, v24

    if-eqz v3, :cond_21

    move/from16 v3, v27

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    .line 67
    :goto_14
    sget-object v5, Li35;->c:Lpp4;

    invoke-virtual {v5, v7, v13, v14, v3}, Lpp4;->e(Ljava/lang/Object;JZ)V

    goto :goto_12

    :pswitch_7
    move-object v9, v1

    move-object v7, v2

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    const/4 v3, 0x5

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    if-ne v6, v3, :cond_20

    .line 68
    invoke-static {v4, v1}, Lve4;->d(I[B)I

    move-result v3

    invoke-virtual {v9, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v4, 0x4

    goto :goto_12

    :pswitch_8
    move-object v9, v1

    move-object v7, v2

    move-object v8, v13

    move/from16 p3, v14

    move/from16 v4, v19

    move-wide/from16 v13, v20

    move/from16 v3, v27

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    if-ne v6, v3, :cond_22

    .line 69
    invoke-static {v4, v1}, Lve4;->k(I[B)J

    move-result-wide v5

    move v15, v4

    move-wide v3, v13

    move-object v13, v2

    move-object v2, v7

    move-object v7, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v4, v15, 0x8

    or-int v14, v30, v28

    move/from16 v9, p3

    move/from16 v5, p4

    move-object v3, v7

    move v8, v11

    move v6, v12

    move-object v7, v13

    move/from16 v15, v20

    goto/16 :goto_0

    :cond_22
    move-object v13, v2

    move v15, v4

    move-object v2, v7

    move-object v7, v1

    :cond_23
    :goto_15
    move-object v1, v2

    goto/16 :goto_18

    :pswitch_9
    move-object/from16 v7, p2

    move-object v8, v13

    move/from16 p3, v14

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move/from16 v20, v15

    move/from16 v15, v19

    if-nez v6, :cond_24

    .line 70
    invoke-static {v7, v15, v13}, Lve4;->g([BILh30;)I

    move-result v5

    iget v6, v13, Lh30;->b:I

    .line 71
    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v30, v28

    move/from16 v9, p3

    move v4, v5

    move-object v3, v7

    move v8, v11

    move v6, v12

    move-object v7, v13

    move/from16 v15, v20

    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    :cond_24
    move-object v9, v1

    goto :goto_15

    :pswitch_a
    move-object/from16 v7, p2

    move-object v8, v13

    move/from16 p3, v14

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move/from16 v20, v15

    move/from16 v15, v19

    if-nez v6, :cond_24

    .line 72
    invoke-static {v7, v15, v13}, Lve4;->i([BILh30;)I

    move-result v8

    iget-wide v5, v13, Lh30;->a:J

    .line 73
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v9, v1

    or-int v14, v30, v28

    move/from16 v5, p4

    move-object v3, v7

    move v4, v8

    :goto_16
    move v8, v11

    move v6, v12

    move-object v7, v13

    goto/16 :goto_13

    :pswitch_b
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v8, v13

    move/from16 p3, v14

    move-wide/from16 v3, v20

    const/4 v1, 0x5

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move/from16 v20, v15

    move/from16 v15, v19

    if-ne v6, v1, :cond_23

    .line 74
    invoke-static {v15, v7}, Lve4;->d(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 75
    sget-object v5, Li35;->c:Lpp4;

    invoke-virtual {v5, v2, v3, v4, v1}, Lpp4;->h(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v15, 0x4

    :goto_17
    or-int v14, v30, v28

    move/from16 v5, p4

    move-object v3, v7

    move-object v1, v9

    goto :goto_16

    :pswitch_c
    move-object/from16 v7, p2

    move-object v9, v1

    move-object v8, v13

    move/from16 p3, v14

    move-wide/from16 v3, v20

    move/from16 v1, v27

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move/from16 v20, v15

    move/from16 v15, v19

    if-ne v6, v1, :cond_23

    .line 76
    invoke-static {v15, v7}, Lve4;->k(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 77
    sget-object v1, Li35;->c:Lpp4;

    invoke-virtual/range {v1 .. v6}, Lpp4;->g(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v4, v15, 0x8

    goto :goto_17

    :goto_18
    move/from16 v10, p5

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v29, v9

    move v8, v11

    move v3, v15

    move/from16 v2, v20

    move/from16 v14, v30

    move/from16 v9, p3

    move-object v15, v13

    move-object v13, v1

    goto/16 :goto_35

    :cond_25
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    move/from16 v29, v8

    move-wide/from16 v7, v20

    const/16 v17, -0x1

    move/from16 v20, v15

    move/from16 v15, v19

    move-object/from16 v19, v13

    move-object/from16 v13, p6

    const/16 v4, 0x1b

    const/16 v21, 0xa

    if-ne v3, v4, :cond_29

    const/4 v4, 0x2

    if-ne v6, v4, :cond_28

    .line 78
    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvy4;

    .line 79
    move-object v4, v3

    check-cast v4, Lyx4;

    .line 80
    iget-boolean v4, v4, Lyx4;->n:Z

    if-nez v4, :cond_27

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_26

    :goto_19
    move/from16 v4, v21

    goto :goto_1a

    :cond_26
    add-int v21, v4, v4

    goto :goto_19

    .line 82
    :goto_1a
    invoke-interface {v3, v4}, Lvy4;->b(I)Lvy4;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v1, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_27
    move-object v6, v3

    .line 84
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v13

    move v4, v15

    move-object/from16 v13, p1

    move-object v15, v2

    move/from16 v2, v20

    .line 85
    invoke-static/range {v1 .. v7}, Lve4;->e(Lh15;I[BIILvy4;Lh30;)I

    move-result v4

    move-object/from16 v7, p6

    move v8, v11

    move v6, v12

    move-object v1, v15

    const v16, 0xfffff

    move v15, v2

    move-object v2, v13

    goto/16 :goto_1

    :cond_28
    move-object v13, v1

    move v4, v15

    move-object v15, v2

    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    goto/16 :goto_2b

    :cond_29
    move-object v13, v1

    move v4, v15

    move-object v15, v2

    move/from16 v2, v20

    const/16 v1, 0x31

    if-gt v3, v1, :cond_5a

    move/from16 v20, v2

    move/from16 v1, v29

    int-to-long v1, v1

    move-wide/from16 v22, v1

    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    .line 86
    invoke-virtual {v1, v13, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvy4;

    move/from16 v28, v4

    .line 87
    move-object v4, v2

    check-cast v4, Lyx4;

    .line 88
    iget-boolean v4, v4, Lyx4;->n:Z

    if-nez v4, :cond_2b

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2a

    :goto_1b
    move/from16 v4, v21

    goto :goto_1c

    :cond_2a
    add-int v21, v4, v4

    goto :goto_1b

    .line 90
    :goto_1c
    invoke-interface {v2, v4}, Lvy4;->b(I)Lvy4;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v13, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2b
    move-object v8, v2

    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x3

    if-ne v6, v3, :cond_2e

    .line 92
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v1

    and-int/lit8 v2, v20, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 93
    invoke-interface {v1}, Lh15;->zzd()Lsy4;

    move-result-object v2

    move-object v3, v1

    .line 94
    move-object v1, v3

    check-cast v1, Ll05;

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move/from16 v9, v20

    move/from16 v4, v28

    move/from16 v20, v14

    move-object v14, v3

    move-object/from16 v3, p2

    .line 95
    invoke-virtual/range {v1 .. v7}, Ll05;->m(Ljava/lang/Object;[BIIILh30;)I

    move-result v22

    iput-object v2, v7, Lh30;->c:Ljava/lang/Object;

    .line 96
    invoke-interface {v14, v2}, Lh15;->b(Ljava/lang/Object;)V

    iput-object v2, v7, Lh30;->c:Ljava/lang/Object;

    .line 97
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v22

    :goto_1d
    if-ge v2, v5, :cond_2d

    move/from16 v28, v4

    .line 98
    invoke-static {v3, v2, v7}, Lve4;->g([BILh30;)I

    move-result v4

    move-object/from16 p3, v1

    iget v1, v7, Lh30;->b:I

    if-ne v9, v1, :cond_2c

    .line 99
    invoke-interface {v14}, Lh15;->zzd()Lsy4;

    move-result-object v2

    move-object/from16 v1, p3

    move-object/from16 v29, v15

    move/from16 v15, v28

    .line 100
    invoke-virtual/range {v1 .. v7}, Ll05;->m(Ljava/lang/Object;[BIIILh30;)I

    move-result v4

    iput-object v2, v7, Lh30;->c:Ljava/lang/Object;

    .line 101
    invoke-interface {v14, v2}, Lh15;->b(Ljava/lang/Object;)V

    iput-object v2, v7, Lh30;->c:Ljava/lang/Object;

    .line 102
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    move v4, v15

    move-object/from16 v15, v29

    goto :goto_1d

    :cond_2c
    move-object/from16 v29, v15

    move/from16 v15, v28

    goto :goto_1e

    :cond_2d
    move-object/from16 v29, v15

    move v15, v4

    :goto_1e
    move v4, v2

    :goto_1f
    move-object v2, v3

    move v14, v5

    move v3, v15

    const/16 v18, 0x0

    move-object v15, v7

    goto/16 :goto_2a

    :cond_2e
    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v20, v14

    move-object/from16 v2, p2

    move/from16 v14, p4

    move-object/from16 v15, p6

    move/from16 v3, v28

    :cond_2f
    :goto_20
    const/16 v18, 0x0

    goto/16 :goto_29

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v15, v28

    const/4 v4, 0x2

    move/from16 v20, v14

    if-eq v6, v4, :cond_32

    if-eqz v6, :cond_31

    :cond_30
    move-object v2, v3

    move v14, v5

    move v3, v15

    const/16 v18, 0x0

    :goto_21
    move-object v15, v7

    goto/16 :goto_29

    .line 103
    :cond_31
    invoke-static {}, Lmk0;->b()V

    const/16 v18, 0x0

    return v18

    :cond_32
    const/16 v18, 0x0

    .line 104
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v15, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move/from16 v20, v14

    if-eq v6, v4, :cond_34

    if-eqz v6, :cond_33

    :goto_22
    move-object v2, v3

    move v14, v5

    move v3, v15

    goto :goto_21

    .line 105
    :cond_33
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 106
    :cond_34
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v15, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move/from16 v20, v14

    if-eq v6, v4, :cond_36

    if-eqz v6, :cond_35

    goto :goto_22

    .line 107
    :cond_35
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 108
    :cond_36
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v15, v28

    const/4 v4, 0x2

    move/from16 v20, v14

    if-ne v6, v4, :cond_30

    .line 109
    invoke-static {v3, v15, v7}, Lve4;->g([BILh30;)I

    move-result v1

    iget v2, v7, Lh30;->b:I

    if-ltz v2, :cond_3d

    .line 110
    array-length v4, v3

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_3c

    if-nez v2, :cond_37

    .line 111
    sget-object v2, Liy4;->p:Liy4;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 112
    :cond_37
    invoke-static {v3, v1, v2}, Liy4;->f([BII)Liy4;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/2addr v1, v2

    :goto_24
    if-ge v1, v5, :cond_3b

    .line 113
    invoke-static {v3, v1, v7}, Lve4;->g([BILh30;)I

    move-result v2

    iget v4, v7, Lh30;->b:I

    if-ne v9, v4, :cond_3b

    .line 114
    invoke-static {v3, v2, v7}, Lve4;->g([BILh30;)I

    move-result v1

    iget v2, v7, Lh30;->b:I

    if-ltz v2, :cond_3a

    .line 115
    array-length v4, v3

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_39

    if-nez v2, :cond_38

    .line 116
    sget-object v2, Liy4;->p:Liy4;

    .line 117
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 118
    :cond_38
    invoke-static {v3, v1, v2}, Liy4;->f([BII)Liy4;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 119
    :cond_39
    invoke-static {}, Lfz4;->c()Lfz4;

    move-result-object v0

    throw v0

    .line 120
    :cond_3a
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    :cond_3b
    move v4, v1

    goto/16 :goto_1f

    .line 121
    :cond_3c
    invoke-static {}, Lfz4;->c()Lfz4;

    move-result-object v0

    throw v0

    .line 122
    :cond_3d
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v15, v28

    const/4 v4, 0x2

    move/from16 v20, v14

    if-ne v6, v4, :cond_3f

    .line 123
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v1

    move-object v6, v8

    move v2, v9

    move v4, v15

    .line 124
    invoke-static/range {v1 .. v7}, Lve4;->e(Lh15;I[BIILvy4;Lh30;)I

    move-result v1

    move-object v2, v3

    move v3, v4

    move v14, v5

    move-object v15, v7

    move v4, v1

    :cond_3e
    const/16 v18, 0x0

    goto/16 :goto_2a

    :cond_3f
    move-object v2, v3

    move v14, v5

    move v3, v15

    move-object v15, v7

    goto/16 :goto_20

    :pswitch_12
    move-object/from16 v2, p2

    move-object v1, v8

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-ne v6, v4, :cond_2f

    const-wide/32 v6, 0x20000000

    and-long v6, v22, v6

    cmp-long v4, v6, v24

    if-nez v4, :cond_44

    .line 125
    invoke-static {v2, v3, v15}, Lve4;->g([BILh30;)I

    move-result v4

    iget v6, v15, Lh30;->b:I

    if-ltz v6, :cond_43

    if-nez v6, :cond_40

    .line 126
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 127
    :cond_40
    new-instance v7, Ljava/lang/String;

    .line 128
    sget-object v8, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 129
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/2addr v4, v6

    :goto_26
    if-ge v4, v14, :cond_3e

    .line 130
    invoke-static {v2, v4, v15}, Lve4;->g([BILh30;)I

    move-result v6

    iget v7, v15, Lh30;->b:I

    if-ne v9, v7, :cond_3e

    .line 131
    invoke-static {v2, v6, v15}, Lve4;->g([BILh30;)I

    move-result v4

    iget v6, v15, Lh30;->b:I

    if-ltz v6, :cond_42

    if-nez v6, :cond_41

    .line 132
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_41
    new-instance v7, Ljava/lang/String;

    .line 133
    sget-object v8, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 134
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 135
    :cond_42
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    .line 136
    :cond_43
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    .line 137
    :cond_44
    invoke-static {v2, v3, v15}, Lve4;->g([BILh30;)I

    move-result v4

    iget v6, v15, Lh30;->b:I

    if-ltz v6, :cond_4a

    if-nez v6, :cond_45

    .line 138
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_45
    add-int v7, v4, v6

    .line 139
    sget-object v8, Ln35;->a:Lny4;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v7}, Lny4;->c([BII)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 140
    new-instance v8, Ljava/lang/String;

    move/from16 p3, v7

    .line 141
    sget-object v7, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v4, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    move/from16 v4, p3

    :goto_28
    if-ge v4, v14, :cond_3e

    .line 143
    invoke-static {v2, v4, v15}, Lve4;->g([BILh30;)I

    move-result v6

    iget v7, v15, Lh30;->b:I

    if-ne v9, v7, :cond_3e

    .line 144
    invoke-static {v2, v6, v15}, Lve4;->g([BILh30;)I

    move-result v4

    iget v6, v15, Lh30;->b:I

    if-ltz v6, :cond_48

    if-nez v6, :cond_46

    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_46
    add-int v7, v4, v6

    .line 146
    sget-object v8, Ln35;->a:Lny4;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v7}, Lny4;->c([BII)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 147
    new-instance v8, Ljava/lang/String;

    move/from16 p3, v7

    .line 148
    sget-object v7, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v4, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 149
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 150
    :cond_47
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 151
    :cond_48
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    .line 152
    :cond_49
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 153
    :cond_4a
    invoke-static {}, Lfz4;->b()Lfz4;

    move-result-object v0

    throw v0

    :pswitch_13
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_4c

    if-eqz v6, :cond_4b

    goto/16 :goto_20

    .line 154
    :cond_4b
    invoke-static {}, Lmk0;->b()V

    const/16 v18, 0x0

    return v18

    :cond_4c
    const/16 v18, 0x0

    .line 155
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_14
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_4e

    const/4 v1, 0x5

    if-eq v6, v1, :cond_4d

    goto/16 :goto_29

    .line 156
    :cond_4d
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 157
    :cond_4e
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_15
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_50

    const/4 v1, 0x1

    if-eq v6, v1, :cond_4f

    goto/16 :goto_29

    .line 158
    :cond_4f
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 159
    :cond_50
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_16
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_52

    if-eqz v6, :cond_51

    goto/16 :goto_29

    .line 160
    :cond_51
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 161
    :cond_52
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_17
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_54

    if-eqz v6, :cond_53

    goto :goto_29

    .line 162
    :cond_53
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 163
    :cond_54
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_18
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_56

    const/4 v1, 0x5

    if-eq v6, v1, :cond_55

    goto :goto_29

    .line 164
    :cond_55
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 165
    :cond_56
    invoke-static {}, Lmk0;->b()V

    return v18

    :pswitch_19
    move-object/from16 v2, p2

    move/from16 v21, v9

    move-object/from16 v29, v15

    move/from16 v9, v20

    move/from16 v3, v28

    const/4 v4, 0x2

    const/16 v18, 0x0

    move-object/from16 v15, p6

    move/from16 v20, v14

    move/from16 v14, p4

    if-eq v6, v4, :cond_59

    const/4 v1, 0x1

    if-eq v6, v1, :cond_58

    :goto_29
    move v4, v3

    :goto_2a
    if-eq v4, v3, :cond_57

    move-object v3, v2

    move v8, v11

    move v6, v12

    move-object v2, v13

    move v5, v14

    move-object v7, v15

    move/from16 v14, v20

    move-object/from16 v1, v29

    const v16, 0xfffff

    move v15, v9

    move/from16 v9, v21

    goto/16 :goto_1

    :cond_57
    :goto_2b
    move/from16 v10, p5

    move v3, v4

    move v8, v11

    move/from16 v14, v20

    move-object v4, v2

    move v2, v9

    move/from16 v9, v21

    goto/16 :goto_35

    .line 166
    :cond_58
    invoke-static {}, Lmk0;->b()V

    return v18

    .line 167
    :cond_59
    invoke-static {}, Lmk0;->b()V

    return v18

    :cond_5a
    move/from16 v21, v9

    move/from16 v20, v14

    move/from16 v28, v29

    move/from16 v14, p4

    move v9, v2

    move-object/from16 v29, v15

    move-object/from16 v2, p2

    move-object/from16 v15, p6

    const/16 v1, 0x32

    if-ne v3, v1, :cond_5d

    const/4 v1, 0x2

    if-ne v6, v1, :cond_57

    .line 168
    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    const/4 v3, 0x3

    .line 169
    div-int/2addr v11, v3

    iget-object v0, v0, Ll05;->b:[Ljava/lang/Object;

    add-int/2addr v11, v11

    aget-object v0, v0, v11

    .line 170
    invoke-virtual {v1, v13, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 171
    move-object v3, v2

    check-cast v3, Lxz4;

    .line 172
    iget-boolean v3, v3, Lxz4;->n:Z

    if-nez v3, :cond_5c

    .line 173
    sget-object v3, Lxz4;->o:Lxz4;

    .line 174
    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 175
    new-instance v3, Lxz4;

    invoke-direct {v3}, Lxz4;-><init>()V

    goto :goto_2c

    :cond_5b
    new-instance v4, Lxz4;

    .line 176
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lxz4;->n:Z

    move-object v3, v4

    .line 177
    :goto_2c
    invoke-static {v3, v2}, Lyz4;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxz4;

    .line 178
    invoke-virtual {v1, v13, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 179
    :cond_5c
    invoke-static {v0}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    .line 180
    throw v0

    :cond_5d
    add-int/lit8 v1, v11, 0x2

    move/from16 v30, v1

    .line 181
    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    .line 182
    aget v30, v19, v30

    const v16, 0xfffff

    and-int v2, v30, v16

    move/from16 v30, v3

    int-to-long v2, v2

    packed-switch v30, :pswitch_data_2

    :cond_5e
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    move-object/from16 v4, p2

    goto/16 :goto_33

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v6, v3, :cond_5e

    .line 183
    invoke-virtual {v0, v12, v11, v13}, Ll05;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 184
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v1

    .line 185
    check-cast v1, Ll05;

    move-object/from16 v3, p2

    move v5, v14

    move-object v7, v15

    .line 186
    invoke-virtual/range {v1 .. v7}, Ll05;->m(Ljava/lang/Object;[BIIILh30;)I

    move-result v1

    move-object v5, v3

    iput-object v2, v15, Lh30;->c:Ljava/lang/Object;

    .line 187
    invoke-virtual {v0, v12, v11, v13, v2}, Ll05;->h(IILjava/lang/Object;Ljava/lang/Object;)V

    move v10, v4

    move-object v4, v5

    move v14, v9

    move/from16 v22, v11

    move v5, v1

    goto/16 :goto_34

    :pswitch_1b
    move-object/from16 v5, p2

    if-nez v6, :cond_5f

    .line 188
    invoke-static {v5, v4, v15}, Lve4;->i([BILh30;)I

    move-result v6

    move v14, v9

    iget-wide v9, v15, Lh30;->a:J

    move-wide/from16 v24, v9

    and-long v9, v24, v22

    const/16 v27, 0x1

    ushr-long v22, v24, v27

    neg-long v9, v9

    xor-long v9, v22, v9

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v13, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 190
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2d
    move v10, v4

    move-object v4, v5

    move v5, v6

    :goto_2e
    move/from16 v22, v11

    goto/16 :goto_34

    :cond_5f
    move v14, v9

    :cond_60
    move v10, v4

    move-object v4, v5

    :cond_61
    move/from16 v22, v11

    goto/16 :goto_33

    :pswitch_1c
    move-object/from16 v5, p2

    move v14, v9

    if-nez v6, :cond_60

    .line 191
    invoke-static {v5, v4, v15}, Lve4;->g([BILh30;)I

    move-result v6

    iget v9, v15, Lh30;->b:I

    and-int/lit8 v10, v9, 0x1

    const/16 v27, 0x1

    ushr-int/lit8 v9, v9, 0x1

    neg-int v10, v10

    xor-int/2addr v9, v10

    .line 192
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v13, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 193
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2d

    :pswitch_1d
    move-object/from16 v5, p2

    move v14, v9

    if-nez v6, :cond_60

    .line 194
    invoke-static {v5, v4, v15}, Lve4;->g([BILh30;)I

    move-result v6

    iget v9, v15, Lh30;->b:I

    .line 195
    invoke-virtual {v0, v11}, Ll05;->s(I)V

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v13, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 197
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2d

    :pswitch_1e
    move-object/from16 v5, p2

    move v14, v9

    const/4 v9, 0x2

    if-ne v6, v9, :cond_60

    .line 198
    invoke-static {v5, v4, v15}, Lve4;->b([BILh30;)I

    move-result v6

    iget-object v9, v15, Lh30;->c:Ljava/lang/Object;

    .line 199
    invoke-virtual {v1, v13, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 200
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2d

    :pswitch_1f
    move-object/from16 v5, p2

    move v14, v9

    const/4 v9, 0x2

    if-ne v6, v9, :cond_60

    .line 201
    invoke-virtual {v0, v12, v11, v13}, Ll05;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v11}, Ll05;->t(I)Lh15;

    move-result-object v2

    move-object v3, v5

    move-object v6, v15

    move/from16 v5, p4

    .line 203
    invoke-static/range {v1 .. v6}, Lve4;->j(Ljava/lang/Object;Lh15;[BIILh30;)I

    move-result v2

    move v10, v4

    move-object v4, v3

    .line 204
    invoke-virtual {v0, v12, v11, v13, v1}, Ll05;->h(IILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v2

    goto :goto_2e

    :pswitch_20
    move v10, v4

    move v14, v9

    const/4 v9, 0x2

    move-object/from16 v4, p2

    if-ne v6, v9, :cond_61

    .line 205
    invoke-static {v4, v10, v15}, Lve4;->g([BILh30;)I

    move-result v6

    iget v9, v15, Lh30;->b:I

    if-nez v9, :cond_62

    .line 206
    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v22, v11

    goto :goto_30

    :cond_62
    and-int v5, v28, v26

    if-eqz v5, :cond_64

    add-int v5, v6, v9

    .line 207
    sget-object v22, Ln35;->a:Lny4;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6, v5}, Lny4;->c([BII)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_2f

    .line 208
    :cond_63
    invoke-static {}, Lfz4;->a()Lfz4;

    move-result-object v0

    throw v0

    .line 209
    :cond_64
    :goto_2f
    new-instance v5, Ljava/lang/String;

    move/from16 v22, v11

    .line 210
    sget-object v11, Ldz4;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 211
    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v6, v9

    .line 212
    :goto_30
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v5, v6

    goto/16 :goto_34

    :pswitch_21
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    move-object/from16 v4, p2

    if-nez v6, :cond_66

    .line 213
    invoke-static {v4, v10, v15}, Lve4;->i([BILh30;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v15, Lh30;->a:J

    cmp-long v5, v5, v24

    if-eqz v5, :cond_65

    const/16 v27, 0x1

    goto :goto_31

    :cond_65
    const/16 v27, 0x0

    .line 214
    :goto_31
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 215
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_32
    move/from16 v5, p3

    goto/16 :goto_34

    :pswitch_22
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    const/4 v5, 0x5

    move-object/from16 v4, p2

    if-ne v6, v5, :cond_66

    .line 216
    invoke-static {v10, v4}, Lve4;->d(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v10, 0x4

    .line 217
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_34

    :pswitch_23
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    const/4 v5, 0x1

    move-object/from16 v4, p2

    if-ne v6, v5, :cond_66

    .line 218
    invoke-static {v10, v4}, Lve4;->k(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v10, 0x8

    .line 219
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_34

    :pswitch_24
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    move-object/from16 v4, p2

    if-nez v6, :cond_66

    .line 220
    invoke-static {v4, v10, v15}, Lve4;->g([BILh30;)I

    move-result v5

    iget v6, v15, Lh30;->b:I

    .line 221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v13, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 222
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_34

    :pswitch_25
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    move-object/from16 v4, p2

    if-nez v6, :cond_66

    .line 223
    invoke-static {v4, v10, v15}, Lve4;->i([BILh30;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v15, Lh30;->a:J

    .line 224
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_32

    :pswitch_26
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    const/4 v5, 0x5

    move-object/from16 v4, p2

    if-ne v6, v5, :cond_66

    .line 226
    invoke-static {v10, v4}, Lve4;->d(I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 227
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v10, 0x4

    .line 228
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_34

    :pswitch_27
    move v10, v4

    move v14, v9

    move/from16 v22, v11

    const/4 v5, 0x1

    move-object/from16 v4, p2

    if-ne v6, v5, :cond_66

    .line 229
    invoke-static {v10, v4}, Lve4;->k(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v13, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v10, 0x8

    .line 231
    invoke-virtual {v1, v13, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_34

    :cond_66
    :goto_33
    move v5, v10

    :goto_34
    if-eq v5, v10, :cond_67

    move-object v3, v4

    move v4, v5

    move v6, v12

    move-object v2, v13

    move-object v7, v15

    move/from16 v9, v21

    move/from16 v8, v22

    move-object/from16 v1, v29

    const v16, 0xfffff

    move/from16 v5, p4

    move v15, v14

    move/from16 v14, v20

    goto/16 :goto_1

    :cond_67
    move/from16 v10, p5

    move v3, v5

    move v2, v14

    move/from16 v14, v20

    move/from16 v9, v21

    move/from16 v8, v22

    :goto_35
    if-ne v2, v10, :cond_69

    if-nez v10, :cond_68

    goto :goto_37

    :cond_68
    move/from16 v5, p4

    move v15, v2

    move v4, v3

    move-object/from16 v1, v29

    :goto_36
    const v7, 0xfffff

    goto :goto_38

    .line 232
    :cond_69
    :goto_37
    move-object v1, v13

    check-cast v1, Lsy4;

    iget-object v5, v1, Lsy4;->zzc:Lp25;

    sget-object v6, Lp25;->e:Lp25;

    if-ne v5, v6, :cond_6a

    invoke-static {}, Lp25;->a()Lp25;

    move-result-object v5

    .line 233
    iput-object v5, v1, Lsy4;->zzc:Lp25;

    :cond_6a
    move v1, v2

    move-object v2, v4

    move-object v6, v15

    move/from16 v4, p4

    .line 234
    invoke-static/range {v1 .. v6}, Lve4;->f(I[BIILp25;Lh30;)I

    move-result v3

    move v2, v1

    move-object/from16 v7, p6

    move v15, v2

    move v5, v4

    move v6, v12

    move-object v2, v13

    move-object/from16 v1, v29

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_6b
    move/from16 v10, p5

    move/from16 v21, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-object v13, v2

    goto :goto_36

    :goto_38
    if-eq v9, v7, :cond_6c

    int-to-long v2, v9

    .line 235
    invoke-virtual {v1, v13, v2, v3, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6c
    iget v1, v0, Ll05;->g:I

    :goto_39
    iget v2, v0, Ll05;->h:I

    if-ge v1, v2, :cond_6e

    iget-object v2, v0, Ll05;->f:[I

    .line 236
    aget v2, v2, v1

    .line 237
    aget v3, v19, v2

    .line 238
    invoke-virtual {v0, v2}, Ll05;->r(I)I

    move-result v3

    const v16, 0xfffff

    and-int v3, v3, v16

    int-to-long v6, v3

    .line 239
    invoke-static {v6, v7, v13}, Li35;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6d

    goto :goto_3a

    .line 240
    :cond_6d
    invoke-virtual {v0, v2}, Ll05;->s(I)V

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 241
    :cond_6e
    const-string v0, "Failed to parse the message."

    if-nez v10, :cond_70

    if-ne v4, v5, :cond_6f

    goto :goto_3b

    .line 242
    :cond_6f
    new-instance v1, Lfz4;

    .line 243
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 244
    throw v1

    :cond_70
    if-gt v4, v5, :cond_71

    if-ne v15, v10, :cond_71

    :goto_3b
    return v4

    .line 245
    :cond_71
    new-instance v1, Lfz4;

    .line 246
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 247
    throw v1

    :cond_72
    move-object v13, v2

    .line 248
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    const/16 v18, 0x0

    return v18

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final p(II)I
    .locals 5

    .line 1
    iget-object p0, p0, Ll05;->a:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    :goto_0
    if-gt p2, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v0, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, p0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    if-ge p1, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v2, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public final r(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Ll05;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final s(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object p0, p0, Ll05;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lmk0;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t(I)Lh15;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object p0, p0, Ll05;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v0, p0, p1

    .line 7
    .line 8
    check-cast v0, Lh15;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lz05;->c:Lz05;

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    aget-object v1, p0, v1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lz05;->a(Ljava/lang/Class;)Lh15;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aput-object v0, p0, p1

    .line 26
    .line 27
    return-object v0
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ll05;->t(I)Lh15;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Ll05;->r(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {p0, p1, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lh15;->zzd()Lsy4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    int-to-long p0, v1

    .line 25
    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ll05;->k(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lh15;->zzd()Lsy4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final v(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Ll05;->t(I)Lh15;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Ll05;->l(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lh15;->zzd()Lsy4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p1, Ll05;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Ll05;->r(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const p2, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, p2

    .line 26
    int-to-long v1, p0

    .line 27
    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ll05;->k(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Lh15;->zzd()Lsy4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p1, p0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1
.end method

.method public final x(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Ll05;->j(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ll05;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Ll05;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ll05;->t(I)Lh15;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Ll05;->j(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Ll05;->k(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lh15;->zzd()Lsy4;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Ll05;->z(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Ll05;->k(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lh15;->zzd()Lsy4;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p3, p1, p0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p0, p1

    .line 80
    :cond_3
    invoke-interface {p3, p0, v0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object p0, p0, Ll05;->a:[I

    .line 87
    .line 88
    aget p0, p0, p1

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "Source subfield "

    .line 97
    .line 98
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p0, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final y(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll05;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Ll05;->l(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ll05;->r(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v4, Ll05;->l:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v5, v2

    .line 23
    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ll05;->t(I)Lh15;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Ll05;->l(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Ll05;->k(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lh15;->zzd()Lsy4;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p3, p0, v2}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v5, v6, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    aget p0, v0, p1

    .line 62
    .line 63
    and-int/2addr p0, v3

    .line 64
    int-to-long p0, p0

    .line 65
    invoke-static {p2, p0, p1, v1}, Li35;->h(Ljava/lang/Object;JI)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v4, p2, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Ll05;->k(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    invoke-interface {p3}, Lh15;->zzd()Lsy4;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p3, p1, p0}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p2, v5, v6, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p0, p1

    .line 90
    :cond_3
    invoke-interface {p3, p0, v2}, Lh15;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    aget p1, v0, p1

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, "Source subfield "

    .line 105
    .line 106
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, " is present but null: "

    .line 113
    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public final z(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Ll05;->a:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    const p1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p1, p0

    .line 11
    int-to-long v0, p1

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, p2}, Li35;->a(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v2, 0x1

    .line 27
    shl-int p0, v2, p0

    .line 28
    .line 29
    or-int/2addr p0, p1

    .line 30
    invoke-static {p2, v0, v1, p0}, Li35;->h(Ljava/lang/Object;JI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzd()Lsy4;
    .locals 0

    .line 1
    iget-object p0, p0, Ll05;->e:Lxx4;

    .line 2
    .line 3
    check-cast p0, Lsy4;

    .line 4
    .line 5
    invoke-virtual {p0}, Lsy4;->b()Lsy4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
