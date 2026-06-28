.class public final Ls9;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x67452301

    .line 5
    .line 6
    .line 7
    iput v0, p0, Ls9;->a:I

    .line 8
    .line 9
    const v0, -0x10325477

    .line 10
    .line 11
    .line 12
    iput v0, p0, Ls9;->b:I

    .line 13
    .line 14
    const v0, -0x67452302

    .line 15
    .line 16
    .line 17
    iput v0, p0, Ls9;->c:I

    .line 18
    .line 19
    const v0, 0x10325476

    .line 20
    .line 21
    .line 22
    iput v0, p0, Ls9;->d:I

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Ls9;->e:J

    .line 27
    .line 28
    const/16 v0, 0x40

    .line 29
    .line 30
    new-array v0, v0, [B

    .line 31
    .line 32
    iput-object v0, p0, Ls9;->f:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lgh3;IIIIJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ls9;->f:Ljava/lang/Object;

    .line 37
    iput p2, p0, Ls9;->a:I

    .line 38
    iput p3, p0, Ls9;->b:I

    .line 39
    iput p4, p0, Ls9;->c:I

    .line 40
    iput p5, p0, Ls9;->d:I

    .line 41
    iput-wide p6, p0, Ls9;->e:J

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 9

    .line 1
    iget-wide v0, p0, Ls9;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3f

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    long-to-int v0, v0

    .line 7
    const/16 v1, 0x38

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    rsub-int/lit8 v1, v0, 0x78

    .line 14
    .line 15
    :goto_0
    add-int/lit8 v0, v1, 0x8

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    const/16 v2, -0x80

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-byte v2, v0, v3

    .line 23
    .line 24
    move v2, v3

    .line 25
    :goto_1
    const/16 v4, 0x8

    .line 26
    .line 27
    if-ge v2, v4, :cond_1

    .line 28
    .line 29
    add-int v4, v1, v2

    .line 30
    .line 31
    iget-wide v5, p0, Ls9;->e:J

    .line 32
    .line 33
    const-wide/16 v7, 0x8

    .line 34
    .line 35
    mul-long/2addr v5, v7

    .line 36
    mul-int/lit8 v7, v2, 0x8

    .line 37
    .line 38
    ushr-long/2addr v5, v7

    .line 39
    long-to-int v5, v5

    .line 40
    int-to-byte v5, v5

    .line 41
    aput-byte v5, v0, v4

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Ls9;->b([B)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    new-array v0, v0, [B

    .line 52
    .line 53
    iget v1, p0, Ls9;->a:I

    .line 54
    .line 55
    invoke-static {v0, v1, v3}, Lph2;->j([BII)V

    .line 56
    .line 57
    .line 58
    iget v1, p0, Ls9;->b:I

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    invoke-static {v0, v1, v2}, Lph2;->j([BII)V

    .line 62
    .line 63
    .line 64
    iget v1, p0, Ls9;->c:I

    .line 65
    .line 66
    invoke-static {v0, v1, v4}, Lph2;->j([BII)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Ls9;->d:I

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    invoke-static {v0, p0, v1}, Lph2;->j([BII)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public b([B)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Ls9;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, [B

    .line 8
    .line 9
    iget-wide v3, v0, Ls9;->e:J

    .line 10
    .line 11
    const-wide/16 v5, 0x3f

    .line 12
    .line 13
    and-long/2addr v3, v5

    .line 14
    long-to-int v3, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    array-length v6, v1

    .line 18
    sub-int/2addr v6, v5

    .line 19
    add-int/2addr v6, v3

    .line 20
    array-length v7, v2

    .line 21
    if-lt v6, v7, :cond_1

    .line 22
    .line 23
    array-length v6, v2

    .line 24
    sub-int/2addr v6, v3

    .line 25
    invoke-static {v1, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iget-wide v7, v0, Ls9;->e:J

    .line 29
    .line 30
    int-to-long v9, v6

    .line 31
    add-long/2addr v7, v9

    .line 32
    iput-wide v7, v0, Ls9;->e:J

    .line 33
    .line 34
    add-int/2addr v5, v6

    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    new-array v6, v3, [I

    .line 38
    .line 39
    move v7, v4

    .line 40
    :goto_1
    const/4 v8, 0x3

    .line 41
    const/16 v9, 0x8

    .line 42
    .line 43
    if-ge v7, v3, :cond_0

    .line 44
    .line 45
    mul-int/lit8 v10, v7, 0x4

    .line 46
    .line 47
    aget-byte v11, v2, v10

    .line 48
    .line 49
    and-int/lit16 v11, v11, 0xff

    .line 50
    .line 51
    add-int/lit8 v12, v10, 0x1

    .line 52
    .line 53
    aget-byte v12, v2, v12

    .line 54
    .line 55
    and-int/lit16 v12, v12, 0xff

    .line 56
    .line 57
    shl-int/lit8 v9, v12, 0x8

    .line 58
    .line 59
    add-int/2addr v11, v9

    .line 60
    add-int/lit8 v9, v10, 0x2

    .line 61
    .line 62
    aget-byte v9, v2, v9

    .line 63
    .line 64
    and-int/lit16 v9, v9, 0xff

    .line 65
    .line 66
    shl-int/2addr v9, v3

    .line 67
    add-int/2addr v11, v9

    .line 68
    add-int/2addr v10, v8

    .line 69
    aget-byte v8, v2, v10

    .line 70
    .line 71
    and-int/lit16 v8, v8, 0xff

    .line 72
    .line 73
    shl-int/lit8 v8, v8, 0x18

    .line 74
    .line 75
    add-int/2addr v11, v8

    .line 76
    aput v11, v6, v7

    .line 77
    .line 78
    add-int/lit8 v7, v7, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    iget v3, v0, Ls9;->a:I

    .line 82
    .line 83
    iget v7, v0, Ls9;->b:I

    .line 84
    .line 85
    iget v10, v0, Ls9;->c:I

    .line 86
    .line 87
    iget v11, v0, Ls9;->d:I

    .line 88
    .line 89
    invoke-static {v7, v10, v11}, Lph2;->a(III)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    add-int/2addr v12, v3

    .line 94
    aget v13, v6, v4

    .line 95
    .line 96
    add-int/2addr v12, v13

    .line 97
    invoke-static {v12, v8}, Lph2;->i(II)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    iput v12, v0, Ls9;->a:I

    .line 102
    .line 103
    iget v13, v0, Ls9;->d:I

    .line 104
    .line 105
    iget v14, v0, Ls9;->b:I

    .line 106
    .line 107
    iget v15, v0, Ls9;->c:I

    .line 108
    .line 109
    invoke-static {v12, v14, v15}, Lph2;->a(III)I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    add-int/2addr v12, v13

    .line 114
    const/4 v13, 0x1

    .line 115
    aget v14, v6, v13

    .line 116
    .line 117
    add-int/2addr v12, v14

    .line 118
    const/4 v14, 0x7

    .line 119
    invoke-static {v12, v14}, Lph2;->i(II)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    iput v12, v0, Ls9;->d:I

    .line 124
    .line 125
    iget v15, v0, Ls9;->c:I

    .line 126
    .line 127
    move/from16 v16, v4

    .line 128
    .line 129
    iget v4, v0, Ls9;->a:I

    .line 130
    .line 131
    move/from16 v17, v9

    .line 132
    .line 133
    iget v9, v0, Ls9;->b:I

    .line 134
    .line 135
    invoke-static {v12, v4, v9}, Lph2;->a(III)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    add-int/2addr v4, v15

    .line 140
    const/4 v9, 0x2

    .line 141
    aget v12, v6, v9

    .line 142
    .line 143
    add-int/2addr v4, v12

    .line 144
    const/16 v12, 0xb

    .line 145
    .line 146
    invoke-static {v4, v12}, Lph2;->i(II)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    iput v4, v0, Ls9;->c:I

    .line 151
    .line 152
    iget v15, v0, Ls9;->b:I

    .line 153
    .line 154
    move/from16 v18, v9

    .line 155
    .line 156
    iget v9, v0, Ls9;->d:I

    .line 157
    .line 158
    move/from16 v19, v13

    .line 159
    .line 160
    iget v13, v0, Ls9;->a:I

    .line 161
    .line 162
    invoke-static {v4, v9, v13}, Lph2;->a(III)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    add-int/2addr v4, v15

    .line 167
    aget v9, v6, v8

    .line 168
    .line 169
    add-int/2addr v4, v9

    .line 170
    const/16 v9, 0x13

    .line 171
    .line 172
    invoke-static {v4, v9}, Lph2;->i(II)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    iput v4, v0, Ls9;->b:I

    .line 177
    .line 178
    iget v13, v0, Ls9;->a:I

    .line 179
    .line 180
    iget v15, v0, Ls9;->c:I

    .line 181
    .line 182
    iget v9, v0, Ls9;->d:I

    .line 183
    .line 184
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    add-int/2addr v4, v13

    .line 189
    const/4 v9, 0x4

    .line 190
    aget v13, v6, v9

    .line 191
    .line 192
    add-int/2addr v4, v13

    .line 193
    invoke-static {v4, v8}, Lph2;->i(II)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    iput v4, v0, Ls9;->a:I

    .line 198
    .line 199
    iget v13, v0, Ls9;->d:I

    .line 200
    .line 201
    iget v15, v0, Ls9;->b:I

    .line 202
    .line 203
    move/from16 v21, v9

    .line 204
    .line 205
    iget v9, v0, Ls9;->c:I

    .line 206
    .line 207
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    add-int/2addr v4, v13

    .line 212
    const/4 v9, 0x5

    .line 213
    aget v13, v6, v9

    .line 214
    .line 215
    add-int/2addr v4, v13

    .line 216
    invoke-static {v4, v14}, Lph2;->i(II)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    iput v4, v0, Ls9;->d:I

    .line 221
    .line 222
    iget v13, v0, Ls9;->c:I

    .line 223
    .line 224
    iget v15, v0, Ls9;->a:I

    .line 225
    .line 226
    iget v9, v0, Ls9;->b:I

    .line 227
    .line 228
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    add-int/2addr v4, v13

    .line 233
    const/4 v9, 0x6

    .line 234
    aget v13, v6, v9

    .line 235
    .line 236
    add-int/2addr v4, v13

    .line 237
    invoke-static {v4, v12}, Lph2;->i(II)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    iput v4, v0, Ls9;->c:I

    .line 242
    .line 243
    iget v13, v0, Ls9;->b:I

    .line 244
    .line 245
    iget v15, v0, Ls9;->d:I

    .line 246
    .line 247
    move/from16 v23, v9

    .line 248
    .line 249
    iget v9, v0, Ls9;->a:I

    .line 250
    .line 251
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    add-int/2addr v4, v13

    .line 256
    aget v9, v6, v14

    .line 257
    .line 258
    add-int/2addr v4, v9

    .line 259
    const/16 v9, 0x13

    .line 260
    .line 261
    invoke-static {v4, v9}, Lph2;->i(II)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    iput v4, v0, Ls9;->b:I

    .line 266
    .line 267
    iget v9, v0, Ls9;->a:I

    .line 268
    .line 269
    iget v13, v0, Ls9;->c:I

    .line 270
    .line 271
    iget v15, v0, Ls9;->d:I

    .line 272
    .line 273
    invoke-static {v4, v13, v15}, Lph2;->a(III)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    add-int/2addr v4, v9

    .line 278
    aget v9, v6, v17

    .line 279
    .line 280
    add-int/2addr v4, v9

    .line 281
    invoke-static {v4, v8}, Lph2;->i(II)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    iput v4, v0, Ls9;->a:I

    .line 286
    .line 287
    iget v9, v0, Ls9;->d:I

    .line 288
    .line 289
    iget v13, v0, Ls9;->b:I

    .line 290
    .line 291
    iget v15, v0, Ls9;->c:I

    .line 292
    .line 293
    invoke-static {v4, v13, v15}, Lph2;->a(III)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    add-int/2addr v4, v9

    .line 298
    const/16 v9, 0x9

    .line 299
    .line 300
    aget v13, v6, v9

    .line 301
    .line 302
    add-int/2addr v4, v13

    .line 303
    invoke-static {v4, v14}, Lph2;->i(II)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    iput v4, v0, Ls9;->d:I

    .line 308
    .line 309
    iget v13, v0, Ls9;->c:I

    .line 310
    .line 311
    iget v15, v0, Ls9;->a:I

    .line 312
    .line 313
    iget v9, v0, Ls9;->b:I

    .line 314
    .line 315
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    add-int/2addr v4, v13

    .line 320
    const/16 v9, 0xa

    .line 321
    .line 322
    aget v13, v6, v9

    .line 323
    .line 324
    add-int/2addr v4, v13

    .line 325
    invoke-static {v4, v12}, Lph2;->i(II)I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    iput v4, v0, Ls9;->c:I

    .line 330
    .line 331
    iget v13, v0, Ls9;->b:I

    .line 332
    .line 333
    iget v15, v0, Ls9;->d:I

    .line 334
    .line 335
    move/from16 v24, v9

    .line 336
    .line 337
    iget v9, v0, Ls9;->a:I

    .line 338
    .line 339
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    add-int/2addr v4, v13

    .line 344
    aget v9, v6, v12

    .line 345
    .line 346
    add-int/2addr v4, v9

    .line 347
    const/16 v9, 0x13

    .line 348
    .line 349
    invoke-static {v4, v9}, Lph2;->i(II)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    iput v4, v0, Ls9;->b:I

    .line 354
    .line 355
    iget v9, v0, Ls9;->a:I

    .line 356
    .line 357
    iget v13, v0, Ls9;->c:I

    .line 358
    .line 359
    iget v15, v0, Ls9;->d:I

    .line 360
    .line 361
    invoke-static {v4, v13, v15}, Lph2;->a(III)I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    add-int/2addr v4, v9

    .line 366
    const/16 v9, 0xc

    .line 367
    .line 368
    aget v13, v6, v9

    .line 369
    .line 370
    add-int/2addr v4, v13

    .line 371
    invoke-static {v4, v8}, Lph2;->i(II)I

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    iput v4, v0, Ls9;->a:I

    .line 376
    .line 377
    iget v13, v0, Ls9;->d:I

    .line 378
    .line 379
    iget v15, v0, Ls9;->b:I

    .line 380
    .line 381
    move/from16 v25, v9

    .line 382
    .line 383
    iget v9, v0, Ls9;->c:I

    .line 384
    .line 385
    invoke-static {v4, v15, v9}, Lph2;->a(III)I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    add-int/2addr v4, v13

    .line 390
    const/16 v9, 0xd

    .line 391
    .line 392
    aget v13, v6, v9

    .line 393
    .line 394
    add-int/2addr v4, v13

    .line 395
    invoke-static {v4, v14}, Lph2;->i(II)I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    iput v4, v0, Ls9;->d:I

    .line 400
    .line 401
    iget v13, v0, Ls9;->c:I

    .line 402
    .line 403
    iget v15, v0, Ls9;->a:I

    .line 404
    .line 405
    move/from16 v26, v14

    .line 406
    .line 407
    iget v14, v0, Ls9;->b:I

    .line 408
    .line 409
    invoke-static {v4, v15, v14}, Lph2;->a(III)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    add-int/2addr v4, v13

    .line 414
    const/16 v13, 0xe

    .line 415
    .line 416
    aget v14, v6, v13

    .line 417
    .line 418
    add-int/2addr v4, v14

    .line 419
    invoke-static {v4, v12}, Lph2;->i(II)I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    iput v4, v0, Ls9;->c:I

    .line 424
    .line 425
    iget v14, v0, Ls9;->b:I

    .line 426
    .line 427
    iget v15, v0, Ls9;->d:I

    .line 428
    .line 429
    move/from16 v27, v13

    .line 430
    .line 431
    iget v13, v0, Ls9;->a:I

    .line 432
    .line 433
    invoke-static {v4, v15, v13}, Lph2;->a(III)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    add-int/2addr v4, v14

    .line 438
    const/16 v13, 0xf

    .line 439
    .line 440
    aget v14, v6, v13

    .line 441
    .line 442
    add-int/2addr v4, v14

    .line 443
    const/16 v14, 0x13

    .line 444
    .line 445
    invoke-static {v4, v14}, Lph2;->i(II)I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    iput v4, v0, Ls9;->b:I

    .line 450
    .line 451
    iget v14, v0, Ls9;->a:I

    .line 452
    .line 453
    iget v15, v0, Ls9;->c:I

    .line 454
    .line 455
    move/from16 v20, v13

    .line 456
    .line 457
    iget v13, v0, Ls9;->d:I

    .line 458
    .line 459
    invoke-static {v4, v15, v13}, Lph2;->b(III)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    add-int/2addr v4, v14

    .line 464
    aget v13, v6, v16

    .line 465
    .line 466
    const v14, 0x5a827999

    .line 467
    .line 468
    .line 469
    invoke-static {v4, v13, v14, v8}, Lxw1;->k(IIII)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    iput v4, v0, Ls9;->a:I

    .line 474
    .line 475
    iget v13, v0, Ls9;->d:I

    .line 476
    .line 477
    iget v15, v0, Ls9;->b:I

    .line 478
    .line 479
    move/from16 v28, v12

    .line 480
    .line 481
    iget v12, v0, Ls9;->c:I

    .line 482
    .line 483
    invoke-static {v4, v15, v12}, Lph2;->b(III)I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    add-int/2addr v4, v13

    .line 488
    aget v12, v6, v21

    .line 489
    .line 490
    const/4 v13, 0x5

    .line 491
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    iput v4, v0, Ls9;->d:I

    .line 496
    .line 497
    iget v12, v0, Ls9;->c:I

    .line 498
    .line 499
    iget v13, v0, Ls9;->a:I

    .line 500
    .line 501
    iget v15, v0, Ls9;->b:I

    .line 502
    .line 503
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    add-int/2addr v4, v12

    .line 508
    aget v12, v6, v17

    .line 509
    .line 510
    const/16 v13, 0x9

    .line 511
    .line 512
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    iput v4, v0, Ls9;->c:I

    .line 517
    .line 518
    iget v12, v0, Ls9;->b:I

    .line 519
    .line 520
    iget v13, v0, Ls9;->d:I

    .line 521
    .line 522
    iget v15, v0, Ls9;->a:I

    .line 523
    .line 524
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    add-int/2addr v4, v12

    .line 529
    aget v12, v6, v25

    .line 530
    .line 531
    invoke-static {v4, v12, v14, v9}, Lxw1;->k(IIII)I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    iput v4, v0, Ls9;->b:I

    .line 536
    .line 537
    iget v12, v0, Ls9;->a:I

    .line 538
    .line 539
    iget v13, v0, Ls9;->c:I

    .line 540
    .line 541
    iget v15, v0, Ls9;->d:I

    .line 542
    .line 543
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    add-int/2addr v4, v12

    .line 548
    aget v12, v6, v19

    .line 549
    .line 550
    invoke-static {v4, v12, v14, v8}, Lxw1;->k(IIII)I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    iput v4, v0, Ls9;->a:I

    .line 555
    .line 556
    iget v12, v0, Ls9;->d:I

    .line 557
    .line 558
    iget v13, v0, Ls9;->b:I

    .line 559
    .line 560
    iget v15, v0, Ls9;->c:I

    .line 561
    .line 562
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    add-int/2addr v4, v12

    .line 567
    const/4 v13, 0x5

    .line 568
    aget v12, v6, v13

    .line 569
    .line 570
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    iput v4, v0, Ls9;->d:I

    .line 575
    .line 576
    iget v12, v0, Ls9;->c:I

    .line 577
    .line 578
    iget v13, v0, Ls9;->a:I

    .line 579
    .line 580
    iget v15, v0, Ls9;->b:I

    .line 581
    .line 582
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    add-int/2addr v4, v12

    .line 587
    const/16 v13, 0x9

    .line 588
    .line 589
    aget v12, v6, v13

    .line 590
    .line 591
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    iput v4, v0, Ls9;->c:I

    .line 596
    .line 597
    iget v12, v0, Ls9;->b:I

    .line 598
    .line 599
    iget v13, v0, Ls9;->d:I

    .line 600
    .line 601
    iget v15, v0, Ls9;->a:I

    .line 602
    .line 603
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    add-int/2addr v4, v12

    .line 608
    aget v12, v6, v9

    .line 609
    .line 610
    invoke-static {v4, v12, v14, v9}, Lxw1;->k(IIII)I

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    iput v4, v0, Ls9;->b:I

    .line 615
    .line 616
    iget v12, v0, Ls9;->a:I

    .line 617
    .line 618
    iget v13, v0, Ls9;->c:I

    .line 619
    .line 620
    iget v15, v0, Ls9;->d:I

    .line 621
    .line 622
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    add-int/2addr v4, v12

    .line 627
    aget v12, v6, v18

    .line 628
    .line 629
    invoke-static {v4, v12, v14, v8}, Lxw1;->k(IIII)I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    iput v4, v0, Ls9;->a:I

    .line 634
    .line 635
    iget v12, v0, Ls9;->d:I

    .line 636
    .line 637
    iget v13, v0, Ls9;->b:I

    .line 638
    .line 639
    iget v15, v0, Ls9;->c:I

    .line 640
    .line 641
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 642
    .line 643
    .line 644
    move-result v4

    .line 645
    add-int/2addr v4, v12

    .line 646
    aget v12, v6, v23

    .line 647
    .line 648
    const/4 v13, 0x5

    .line 649
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 650
    .line 651
    .line 652
    move-result v4

    .line 653
    iput v4, v0, Ls9;->d:I

    .line 654
    .line 655
    iget v12, v0, Ls9;->c:I

    .line 656
    .line 657
    iget v13, v0, Ls9;->a:I

    .line 658
    .line 659
    iget v15, v0, Ls9;->b:I

    .line 660
    .line 661
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 662
    .line 663
    .line 664
    move-result v4

    .line 665
    add-int/2addr v4, v12

    .line 666
    aget v12, v6, v24

    .line 667
    .line 668
    const/16 v13, 0x9

    .line 669
    .line 670
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    iput v4, v0, Ls9;->c:I

    .line 675
    .line 676
    iget v12, v0, Ls9;->b:I

    .line 677
    .line 678
    iget v13, v0, Ls9;->d:I

    .line 679
    .line 680
    iget v15, v0, Ls9;->a:I

    .line 681
    .line 682
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    add-int/2addr v4, v12

    .line 687
    aget v12, v6, v27

    .line 688
    .line 689
    invoke-static {v4, v12, v14, v9}, Lxw1;->k(IIII)I

    .line 690
    .line 691
    .line 692
    move-result v4

    .line 693
    iput v4, v0, Ls9;->b:I

    .line 694
    .line 695
    iget v12, v0, Ls9;->a:I

    .line 696
    .line 697
    iget v13, v0, Ls9;->c:I

    .line 698
    .line 699
    iget v15, v0, Ls9;->d:I

    .line 700
    .line 701
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 702
    .line 703
    .line 704
    move-result v4

    .line 705
    add-int/2addr v4, v12

    .line 706
    aget v12, v6, v8

    .line 707
    .line 708
    invoke-static {v4, v12, v14, v8}, Lxw1;->k(IIII)I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    iput v4, v0, Ls9;->a:I

    .line 713
    .line 714
    iget v12, v0, Ls9;->d:I

    .line 715
    .line 716
    iget v13, v0, Ls9;->b:I

    .line 717
    .line 718
    iget v15, v0, Ls9;->c:I

    .line 719
    .line 720
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 721
    .line 722
    .line 723
    move-result v4

    .line 724
    add-int/2addr v4, v12

    .line 725
    aget v12, v6, v26

    .line 726
    .line 727
    const/4 v13, 0x5

    .line 728
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    iput v4, v0, Ls9;->d:I

    .line 733
    .line 734
    iget v12, v0, Ls9;->c:I

    .line 735
    .line 736
    iget v13, v0, Ls9;->a:I

    .line 737
    .line 738
    iget v15, v0, Ls9;->b:I

    .line 739
    .line 740
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    add-int/2addr v4, v12

    .line 745
    aget v12, v6, v28

    .line 746
    .line 747
    const/16 v13, 0x9

    .line 748
    .line 749
    invoke-static {v4, v12, v14, v13}, Lxw1;->k(IIII)I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    iput v4, v0, Ls9;->c:I

    .line 754
    .line 755
    iget v12, v0, Ls9;->b:I

    .line 756
    .line 757
    iget v13, v0, Ls9;->d:I

    .line 758
    .line 759
    iget v15, v0, Ls9;->a:I

    .line 760
    .line 761
    invoke-static {v4, v13, v15}, Lph2;->b(III)I

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    add-int/2addr v4, v12

    .line 766
    aget v12, v6, v20

    .line 767
    .line 768
    invoke-static {v4, v12, v14, v9}, Lxw1;->k(IIII)I

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    iput v4, v0, Ls9;->b:I

    .line 773
    .line 774
    iget v12, v0, Ls9;->a:I

    .line 775
    .line 776
    iget v13, v0, Ls9;->c:I

    .line 777
    .line 778
    iget v14, v0, Ls9;->d:I

    .line 779
    .line 780
    xor-int/2addr v4, v13

    .line 781
    xor-int/2addr v4, v14

    .line 782
    add-int/2addr v12, v4

    .line 783
    aget v4, v6, v16

    .line 784
    .line 785
    const v13, 0x6ed9eba1

    .line 786
    .line 787
    .line 788
    invoke-static {v12, v4, v13, v8}, Lxw1;->k(IIII)I

    .line 789
    .line 790
    .line 791
    move-result v4

    .line 792
    iput v4, v0, Ls9;->a:I

    .line 793
    .line 794
    iget v12, v0, Ls9;->d:I

    .line 795
    .line 796
    iget v14, v0, Ls9;->b:I

    .line 797
    .line 798
    iget v15, v0, Ls9;->c:I

    .line 799
    .line 800
    xor-int/2addr v4, v14

    .line 801
    xor-int/2addr v4, v15

    .line 802
    add-int/2addr v12, v4

    .line 803
    aget v4, v6, v17

    .line 804
    .line 805
    const/16 v14, 0x9

    .line 806
    .line 807
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    iput v4, v0, Ls9;->d:I

    .line 812
    .line 813
    iget v12, v0, Ls9;->c:I

    .line 814
    .line 815
    iget v14, v0, Ls9;->a:I

    .line 816
    .line 817
    iget v15, v0, Ls9;->b:I

    .line 818
    .line 819
    xor-int/2addr v4, v14

    .line 820
    xor-int/2addr v4, v15

    .line 821
    add-int/2addr v12, v4

    .line 822
    aget v4, v6, v21

    .line 823
    .line 824
    move/from16 v14, v28

    .line 825
    .line 826
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    iput v4, v0, Ls9;->c:I

    .line 831
    .line 832
    iget v12, v0, Ls9;->b:I

    .line 833
    .line 834
    iget v14, v0, Ls9;->d:I

    .line 835
    .line 836
    iget v15, v0, Ls9;->a:I

    .line 837
    .line 838
    xor-int/2addr v4, v14

    .line 839
    xor-int/2addr v4, v15

    .line 840
    add-int/2addr v12, v4

    .line 841
    aget v4, v6, v25

    .line 842
    .line 843
    move/from16 v14, v20

    .line 844
    .line 845
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    iput v4, v0, Ls9;->b:I

    .line 850
    .line 851
    iget v12, v0, Ls9;->a:I

    .line 852
    .line 853
    iget v14, v0, Ls9;->c:I

    .line 854
    .line 855
    iget v15, v0, Ls9;->d:I

    .line 856
    .line 857
    xor-int/2addr v4, v14

    .line 858
    xor-int/2addr v4, v15

    .line 859
    add-int/2addr v12, v4

    .line 860
    aget v4, v6, v18

    .line 861
    .line 862
    invoke-static {v12, v4, v13, v8}, Lxw1;->k(IIII)I

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    iput v4, v0, Ls9;->a:I

    .line 867
    .line 868
    iget v12, v0, Ls9;->d:I

    .line 869
    .line 870
    iget v14, v0, Ls9;->b:I

    .line 871
    .line 872
    iget v15, v0, Ls9;->c:I

    .line 873
    .line 874
    xor-int/2addr v4, v14

    .line 875
    xor-int/2addr v4, v15

    .line 876
    add-int/2addr v12, v4

    .line 877
    aget v4, v6, v24

    .line 878
    .line 879
    const/16 v14, 0x9

    .line 880
    .line 881
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    iput v4, v0, Ls9;->d:I

    .line 886
    .line 887
    iget v12, v0, Ls9;->c:I

    .line 888
    .line 889
    iget v14, v0, Ls9;->a:I

    .line 890
    .line 891
    iget v15, v0, Ls9;->b:I

    .line 892
    .line 893
    xor-int/2addr v4, v14

    .line 894
    xor-int/2addr v4, v15

    .line 895
    add-int/2addr v12, v4

    .line 896
    aget v4, v6, v23

    .line 897
    .line 898
    const/16 v14, 0xb

    .line 899
    .line 900
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    iput v4, v0, Ls9;->c:I

    .line 905
    .line 906
    iget v12, v0, Ls9;->b:I

    .line 907
    .line 908
    iget v14, v0, Ls9;->d:I

    .line 909
    .line 910
    iget v15, v0, Ls9;->a:I

    .line 911
    .line 912
    xor-int/2addr v4, v14

    .line 913
    xor-int/2addr v4, v15

    .line 914
    add-int/2addr v12, v4

    .line 915
    aget v4, v6, v27

    .line 916
    .line 917
    const/16 v14, 0xf

    .line 918
    .line 919
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    iput v4, v0, Ls9;->b:I

    .line 924
    .line 925
    iget v12, v0, Ls9;->a:I

    .line 926
    .line 927
    iget v14, v0, Ls9;->c:I

    .line 928
    .line 929
    iget v15, v0, Ls9;->d:I

    .line 930
    .line 931
    xor-int/2addr v4, v14

    .line 932
    xor-int/2addr v4, v15

    .line 933
    add-int/2addr v12, v4

    .line 934
    aget v4, v6, v19

    .line 935
    .line 936
    invoke-static {v12, v4, v13, v8}, Lxw1;->k(IIII)I

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    iput v4, v0, Ls9;->a:I

    .line 941
    .line 942
    iget v12, v0, Ls9;->d:I

    .line 943
    .line 944
    iget v14, v0, Ls9;->b:I

    .line 945
    .line 946
    iget v15, v0, Ls9;->c:I

    .line 947
    .line 948
    xor-int/2addr v4, v14

    .line 949
    xor-int/2addr v4, v15

    .line 950
    add-int/2addr v12, v4

    .line 951
    const/16 v14, 0x9

    .line 952
    .line 953
    aget v4, v6, v14

    .line 954
    .line 955
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 956
    .line 957
    .line 958
    move-result v4

    .line 959
    iput v4, v0, Ls9;->d:I

    .line 960
    .line 961
    iget v12, v0, Ls9;->c:I

    .line 962
    .line 963
    iget v14, v0, Ls9;->a:I

    .line 964
    .line 965
    iget v15, v0, Ls9;->b:I

    .line 966
    .line 967
    xor-int/2addr v4, v14

    .line 968
    xor-int/2addr v4, v15

    .line 969
    add-int/2addr v12, v4

    .line 970
    const/16 v22, 0x5

    .line 971
    .line 972
    aget v4, v6, v22

    .line 973
    .line 974
    const/16 v14, 0xb

    .line 975
    .line 976
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 977
    .line 978
    .line 979
    move-result v4

    .line 980
    iput v4, v0, Ls9;->c:I

    .line 981
    .line 982
    iget v12, v0, Ls9;->b:I

    .line 983
    .line 984
    iget v14, v0, Ls9;->d:I

    .line 985
    .line 986
    iget v15, v0, Ls9;->a:I

    .line 987
    .line 988
    xor-int/2addr v4, v14

    .line 989
    xor-int/2addr v4, v15

    .line 990
    add-int/2addr v12, v4

    .line 991
    aget v4, v6, v9

    .line 992
    .line 993
    const/16 v14, 0xf

    .line 994
    .line 995
    invoke-static {v12, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    iput v4, v0, Ls9;->b:I

    .line 1000
    .line 1001
    iget v9, v0, Ls9;->a:I

    .line 1002
    .line 1003
    iget v12, v0, Ls9;->c:I

    .line 1004
    .line 1005
    iget v14, v0, Ls9;->d:I

    .line 1006
    .line 1007
    xor-int/2addr v4, v12

    .line 1008
    xor-int/2addr v4, v14

    .line 1009
    add-int/2addr v9, v4

    .line 1010
    aget v4, v6, v8

    .line 1011
    .line 1012
    invoke-static {v9, v4, v13, v8}, Lxw1;->k(IIII)I

    .line 1013
    .line 1014
    .line 1015
    move-result v4

    .line 1016
    iput v4, v0, Ls9;->a:I

    .line 1017
    .line 1018
    iget v8, v0, Ls9;->d:I

    .line 1019
    .line 1020
    iget v9, v0, Ls9;->b:I

    .line 1021
    .line 1022
    iget v12, v0, Ls9;->c:I

    .line 1023
    .line 1024
    xor-int/2addr v4, v9

    .line 1025
    xor-int/2addr v4, v12

    .line 1026
    add-int/2addr v8, v4

    .line 1027
    const/16 v14, 0xb

    .line 1028
    .line 1029
    aget v4, v6, v14

    .line 1030
    .line 1031
    const/16 v9, 0x9

    .line 1032
    .line 1033
    invoke-static {v8, v4, v13, v9}, Lxw1;->k(IIII)I

    .line 1034
    .line 1035
    .line 1036
    move-result v4

    .line 1037
    iput v4, v0, Ls9;->d:I

    .line 1038
    .line 1039
    iget v8, v0, Ls9;->c:I

    .line 1040
    .line 1041
    iget v9, v0, Ls9;->a:I

    .line 1042
    .line 1043
    iget v12, v0, Ls9;->b:I

    .line 1044
    .line 1045
    xor-int/2addr v4, v9

    .line 1046
    xor-int/2addr v4, v12

    .line 1047
    add-int/2addr v8, v4

    .line 1048
    aget v4, v6, v26

    .line 1049
    .line 1050
    invoke-static {v8, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 1051
    .line 1052
    .line 1053
    move-result v4

    .line 1054
    iput v4, v0, Ls9;->c:I

    .line 1055
    .line 1056
    iget v8, v0, Ls9;->b:I

    .line 1057
    .line 1058
    iget v9, v0, Ls9;->d:I

    .line 1059
    .line 1060
    iget v12, v0, Ls9;->a:I

    .line 1061
    .line 1062
    xor-int/2addr v4, v9

    .line 1063
    xor-int/2addr v4, v12

    .line 1064
    add-int/2addr v8, v4

    .line 1065
    const/16 v14, 0xf

    .line 1066
    .line 1067
    aget v4, v6, v14

    .line 1068
    .line 1069
    invoke-static {v8, v4, v13, v14}, Lxw1;->k(IIII)I

    .line 1070
    .line 1071
    .line 1072
    move-result v4

    .line 1073
    iget v6, v0, Ls9;->a:I

    .line 1074
    .line 1075
    add-int/2addr v6, v3

    .line 1076
    iput v6, v0, Ls9;->a:I

    .line 1077
    .line 1078
    add-int/2addr v4, v7

    .line 1079
    iput v4, v0, Ls9;->b:I

    .line 1080
    .line 1081
    iget v3, v0, Ls9;->c:I

    .line 1082
    .line 1083
    add-int/2addr v3, v10

    .line 1084
    iput v3, v0, Ls9;->c:I

    .line 1085
    .line 1086
    iget v3, v0, Ls9;->d:I

    .line 1087
    .line 1088
    add-int/2addr v3, v11

    .line 1089
    iput v3, v0, Ls9;->d:I

    .line 1090
    .line 1091
    move/from16 v3, v16

    .line 1092
    .line 1093
    move v4, v3

    .line 1094
    goto/16 :goto_0

    .line 1095
    .line 1096
    :cond_1
    array-length v4, v1

    .line 1097
    if-ge v5, v4, :cond_2

    .line 1098
    .line 1099
    array-length v4, v1

    .line 1100
    sub-int/2addr v4, v5

    .line 1101
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    .line 1103
    .line 1104
    iget-wide v1, v0, Ls9;->e:J

    .line 1105
    .line 1106
    int-to-long v3, v4

    .line 1107
    add-long/2addr v1, v3

    .line 1108
    iput-wide v1, v0, Ls9;->e:J

    .line 1109
    .line 1110
    :cond_2
    return-void
.end method
