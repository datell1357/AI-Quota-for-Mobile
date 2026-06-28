.class public final Loh2;
.super Lb70;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final p:I

.field public final q:[B

.field public final r:[B

.field public final s:[B

.field public final t:[B

.field public final u:[B

.field public final v:[B

.field public final w:[B

.field public final x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 14

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move/from16 v2, p6

    .line 4
    .line 5
    sget-object v4, Lph2;->c:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    invoke-direct {p0}, Lb70;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz v4, :cond_17

    .line 15
    .line 16
    iput v2, p0, Loh2;->p:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    const/16 v7, 0x2e

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    move-object v1, v12

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eq v8, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    move-object v7, v12

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eq v7, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v7, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object v7, p1

    .line 54
    :goto_1
    iput-boolean v13, p0, Loh2;->x:Z

    .line 55
    .line 56
    new-instance v3, Llh2;

    .line 57
    .line 58
    move-object/from16 v8, p3

    .line 59
    .line 60
    move-object/from16 v9, p4

    .line 61
    .line 62
    move-object/from16 v10, p5

    .line 63
    .line 64
    move-object/from16 v11, p8

    .line 65
    .line 66
    invoke-direct/range {v3 .. v11}, Llh2;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 67
    .line 68
    .line 69
    const/high16 v0, 0x800000

    .line 70
    .line 71
    and-int/2addr v0, v2

    .line 72
    const/16 v5, 0x8

    .line 73
    .line 74
    const/16 v6, 0x10

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    if-eqz p8, :cond_6

    .line 79
    .line 80
    if-eqz p7, :cond_6

    .line 81
    .line 82
    :try_start_0
    invoke-virtual {v3}, Llh2;->i()[B

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Loh2;->u:[B

    .line 87
    .line 88
    invoke-virtual {v3}, Llh2;->c()[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Loh2;->t:[B

    .line 93
    .line 94
    and-int/lit16 v0, v2, 0x80

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Llh2;->d()[B

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_4
    iget-object v0, v3, Llh2;->x:[B

    .line 105
    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v3}, Llh2;->h()[B

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-array v4, v6, [B

    .line 113
    .line 114
    invoke-virtual {v3}, Llh2;->i()[B

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v8, v13, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    new-instance v8, Leh;

    .line 122
    .line 123
    invoke-direct {v8, v0}, Leh;-><init>([B)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v4}, Leh;->M([B)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Leh;->y()[B

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, v3, Llh2;->x:[B

    .line 134
    .line 135
    :cond_5
    iget-object v0, v3, Llh2;->x:[B

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_6
    const/high16 v0, 0x80000

    .line 140
    .line 141
    and-int/2addr v0, v2

    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    invoke-virtual {v3}, Llh2;->e()[B

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Loh2;->u:[B

    .line 149
    .line 150
    iget-object v0, v3, Llh2;->u:[B

    .line 151
    .line 152
    if-nez v0, :cond_8

    .line 153
    .line 154
    iget-object v0, v3, Llh2;->h:[B

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    new-array v0, v5, [B

    .line 159
    .line 160
    monitor-enter v4
    :try_end_0
    .catch Lkh2; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 162
    .line 163
    .line 164
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iput-object v0, v3, Llh2;->h:[B
    :try_end_2
    .catch Lkh2; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    throw v0

    .line 171
    :cond_7
    :goto_2
    iget-object v0, v3, Llh2;->h:[B

    .line 172
    .line 173
    const/16 v4, 0x18

    .line 174
    .line 175
    new-array v4, v4, [B

    .line 176
    .line 177
    iput-object v4, v3, Llh2;->u:[B

    .line 178
    .line 179
    array-length v8, v0

    .line 180
    invoke-static {v0, v13, v4, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    iget-object v4, v3, Llh2;->u:[B

    .line 184
    .line 185
    array-length v0, v0

    .line 186
    array-length v8, v4

    .line 187
    invoke-static {v4, v0, v8, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 188
    .line 189
    .line 190
    :cond_8
    iget-object v0, v3, Llh2;->u:[B

    .line 191
    .line 192
    iput-object v0, p0, Loh2;->t:[B

    .line 193
    .line 194
    and-int/lit16 v0, v2, 0x80

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    invoke-virtual {v3}, Llh2;->d()[B

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    invoke-virtual {v3}, Llh2;->f()[B

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_3

    .line 208
    :cond_a
    invoke-virtual {v3}, Llh2;->g()[B

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object/from16 v10, p5

    .line 213
    .line 214
    invoke-static {v0, v10}, Lph2;->g([B[B)[B

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Loh2;->u:[B

    .line 219
    .line 220
    invoke-virtual {v3}, Llh2;->b()[B

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v0, p0, Loh2;->t:[B

    .line 225
    .line 226
    and-int/lit16 v0, v2, 0x80

    .line 227
    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    invoke-virtual {v3}, Llh2;->d()[B

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    goto :goto_3

    .line 235
    :cond_b
    iget-object v0, v3, Llh2;->w:[B

    .line 236
    .line 237
    if-nez v0, :cond_c

    .line 238
    .line 239
    new-instance v0, Ls9;

    .line 240
    .line 241
    invoke-direct {v0}, Ls9;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Llh2;->g()[B

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v0, v4}, Ls9;->b([B)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ls9;->a()[B

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, v3, Llh2;->w:[B

    .line 256
    .line 257
    :cond_c
    iget-object v0, v3, Llh2;->w:[B
    :try_end_4
    .catch Lkh2; {:try_start_4 .. :try_end_4} :catch_0

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :catch_0
    new-array v0, v13, [B

    .line 261
    .line 262
    iput-object v0, p0, Loh2;->u:[B

    .line 263
    .line 264
    invoke-virtual {v3}, Llh2;->b()[B

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, p0, Loh2;->t:[B

    .line 269
    .line 270
    and-int/lit16 v0, v2, 0x80

    .line 271
    .line 272
    if-eqz v0, :cond_d

    .line 273
    .line 274
    invoke-virtual {v3}, Llh2;->d()[B

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    goto :goto_3

    .line 279
    :cond_d
    iget-object v0, v3, Llh2;->v:[B

    .line 280
    .line 281
    if-nez v0, :cond_e

    .line 282
    .line 283
    new-array v0, v6, [B

    .line 284
    .line 285
    iput-object v0, v3, Llh2;->v:[B

    .line 286
    .line 287
    invoke-virtual {v3}, Llh2;->a()[B

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v4, v3, Llh2;->v:[B

    .line 292
    .line 293
    invoke-static {v0, v13, v4, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v3, Llh2;->v:[B

    .line 297
    .line 298
    invoke-static {v0, v5, v6, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    .line 300
    .line 301
    :cond_e
    iget-object v0, v3, Llh2;->v:[B

    .line 302
    .line 303
    :goto_3
    and-int/lit8 v4, v2, 0x10

    .line 304
    .line 305
    const/4 v5, 0x1

    .line 306
    if-eqz v4, :cond_11

    .line 307
    .line 308
    const/high16 v4, 0x40000000    # 2.0f

    .line 309
    .line 310
    and-int/2addr v4, v2

    .line 311
    if-eqz v4, :cond_10

    .line 312
    .line 313
    iget-object v4, v3, Llh2;->j:[B

    .line 314
    .line 315
    if-nez v4, :cond_f

    .line 316
    .line 317
    iget-object v4, v3, Llh2;->a:Ljava/util/Random;

    .line 318
    .line 319
    sget-object v8, Lph2;->a:Ljava/nio/charset/Charset;

    .line 320
    .line 321
    new-array v6, v6, [B

    .line 322
    .line 323
    monitor-enter v4

    .line 324
    :try_start_5
    invoke-virtual {v4, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 325
    .line 326
    .line 327
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 328
    iput-object v6, v3, Llh2;->j:[B

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :catchall_1
    move-exception v0

    .line 332
    move-object p0, v0

    .line 333
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 334
    throw p0

    .line 335
    :cond_f
    :goto_4
    iget-object v3, v3, Llh2;->j:[B

    .line 336
    .line 337
    iput-object v3, p0, Loh2;->w:[B

    .line 338
    .line 339
    const-string v4, "RC4"

    .line 340
    .line 341
    :try_start_7
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 346
    .line 347
    invoke-direct {v8, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 354
    .line 355
    .line 356
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 357
    iput-object v0, p0, Loh2;->v:[B

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :catch_1
    move-exception v0

    .line 361
    move-object p0, v0

    .line 362
    new-instance v0, Lkh2;

    .line 363
    .line 364
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-direct {v0, v1, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_10
    iput-object v0, p0, Loh2;->v:[B

    .line 373
    .line 374
    iput-object v0, p0, Loh2;->w:[B

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_11
    iget-boolean v0, p0, Loh2;->x:Z

    .line 378
    .line 379
    if-nez v0, :cond_16

    .line 380
    .line 381
    iput-object v12, p0, Loh2;->v:[B

    .line 382
    .line 383
    iput-object v12, p0, Loh2;->w:[B

    .line 384
    .line 385
    :goto_5
    and-int/lit8 v0, v2, 0x1

    .line 386
    .line 387
    if-nez v0, :cond_12

    .line 388
    .line 389
    sget-object v0, Lph2;->b:Ljava/nio/charset/Charset;

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_12
    sget-object v0, Lph2;->a:Ljava/nio/charset/Charset;

    .line 393
    .line 394
    if-eqz v0, :cond_15

    .line 395
    .line 396
    :goto_6
    if-eqz v1, :cond_13

    .line 397
    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    goto :goto_7

    .line 403
    :cond_13
    move-object v1, v12

    .line 404
    :goto_7
    iput-object v1, p0, Loh2;->r:[B

    .line 405
    .line 406
    if-eqz v7, :cond_14

    .line 407
    .line 408
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 409
    .line 410
    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 415
    .line 416
    .line 417
    move-result-object v12

    .line 418
    :cond_14
    iput-object v12, p0, Loh2;->q:[B

    .line 419
    .line 420
    move-object/from16 v8, p3

    .line 421
    .line 422
    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iput-object v0, p0, Loh2;->s:[B

    .line 427
    .line 428
    return-void

    .line 429
    :cond_15
    new-instance p0, Lkh2;

    .line 430
    .line 431
    const-string v0, "Unicode not supported"

    .line 432
    .line 433
    invoke-direct {p0, v0}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw p0

    .line 437
    :cond_16
    new-instance p0, Lkh2;

    .line 438
    .line 439
    const-string v0, "Cannot sign/seal: no exported session key"

    .line 440
    .line 441
    invoke-static {v0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw p0

    .line 449
    :cond_17
    new-instance p0, Lkh2;

    .line 450
    .line 451
    const-string v0, "Random generator not available"

    .line 452
    .line 453
    invoke-static {v0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw p0
.end method


# virtual methods
.method public final e()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Loh2;->u:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    iget-object v3, v0, Loh2;->t:[B

    .line 7
    .line 8
    array-length v4, v3

    .line 9
    iget-object v6, v0, Loh2;->q:[B

    .line 10
    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    array-length v7, v6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v7, 0x0

    .line 16
    :goto_0
    iget-object v8, v0, Loh2;->r:[B

    .line 17
    .line 18
    if-eqz v8, :cond_1

    .line 19
    .line 20
    array-length v9, v8

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v9, 0x0

    .line 23
    :goto_1
    iget-object v10, v0, Loh2;->s:[B

    .line 24
    .line 25
    array-length v11, v10

    .line 26
    iget-object v12, v0, Loh2;->v:[B

    .line 27
    .line 28
    if-eqz v12, :cond_2

    .line 29
    .line 30
    array-length v13, v12

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v13, 0x0

    .line 33
    :goto_2
    iget-boolean v14, v0, Loh2;->x:Z

    .line 34
    .line 35
    if-eqz v14, :cond_3

    .line 36
    .line 37
    const/16 v15, 0x10

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    const/4 v15, 0x0

    .line 41
    :goto_3
    add-int/lit8 v15, v15, 0x48

    .line 42
    .line 43
    add-int v5, v15, v4

    .line 44
    .line 45
    move/from16 v16, v14

    .line 46
    .line 47
    add-int v14, v5, v2

    .line 48
    .line 49
    move-object/from16 v17, v12

    .line 50
    .line 51
    add-int v12, v14, v7

    .line 52
    .line 53
    move-object/from16 v18, v8

    .line 54
    .line 55
    add-int v8, v12, v11

    .line 56
    .line 57
    move-object/from16 v19, v10

    .line 58
    .line 59
    add-int v10, v8, v9

    .line 60
    .line 61
    move-object/from16 v20, v6

    .line 62
    .line 63
    add-int v6, v10, v13

    .line 64
    .line 65
    new-array v6, v6, [B

    .line 66
    .line 67
    iput-object v6, v0, Lb70;->o:Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    iput v6, v0, Lb70;->n:I

    .line 71
    .line 72
    sget-object v6, Lph2;->d:[B

    .line 73
    .line 74
    invoke-virtual {v0, v6}, Lb70;->b([B)V

    .line 75
    .line 76
    .line 77
    const/4 v6, 0x3

    .line 78
    invoke-virtual {v0, v6}, Lb70;->c(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v4}, Lb70;->d(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Lb70;->d(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v15}, Lb70;->c(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lb70;->d(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lb70;->d(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Lb70;->c(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v7}, Lb70;->d(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v7}, Lb70;->d(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v14}, Lb70;->c(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v11}, Lb70;->d(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v11}, Lb70;->d(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v12}, Lb70;->c(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v9}, Lb70;->d(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v9}, Lb70;->d(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v8}, Lb70;->c(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v13}, Lb70;->d(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v13}, Lb70;->d(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v10}, Lb70;->c(I)V

    .line 133
    .line 134
    .line 135
    iget v2, v0, Loh2;->p:I

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lb70;->c(I)V

    .line 138
    .line 139
    .line 140
    const/16 v2, 0x105

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lb70;->d(I)V

    .line 143
    .line 144
    .line 145
    const/16 v2, 0xa28

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lb70;->c(I)V

    .line 148
    .line 149
    .line 150
    const/16 v2, 0xf00

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lb70;->d(I)V

    .line 153
    .line 154
    .line 155
    if-eqz v16, :cond_4

    .line 156
    .line 157
    iget v2, v0, Lb70;->n:I

    .line 158
    .line 159
    add-int/lit8 v4, v2, 0x10

    .line 160
    .line 161
    iput v4, v0, Lb70;->n:I

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    const/4 v2, -0x1

    .line 165
    :goto_4
    invoke-virtual {v0, v3}, Lb70;->b([B)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lb70;->b([B)V

    .line 169
    .line 170
    .line 171
    move-object/from16 v1, v20

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lb70;->b([B)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v1, v19

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lb70;->b([B)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v1, v18

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lb70;->b([B)V

    .line 184
    .line 185
    .line 186
    if-eqz v17, :cond_5

    .line 187
    .line 188
    move-object/from16 v1, v17

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lb70;->b([B)V

    .line 191
    .line 192
    .line 193
    :cond_5
    if-eqz v16, :cond_6

    .line 194
    .line 195
    new-instance v1, Leh;

    .line 196
    .line 197
    iget-object v3, v0, Loh2;->w:[B

    .line 198
    .line 199
    invoke-direct {v1, v3}, Leh;-><init>([B)V

    .line 200
    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v1, v3}, Leh;->M([B)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3}, Leh;->M([B)V

    .line 207
    .line 208
    .line 209
    iget-object v3, v0, Lb70;->o:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v3, [B

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Leh;->M([B)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Leh;->y()[B

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v0, v0, Lb70;->o:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, [B

    .line 223
    .line 224
    array-length v3, v1

    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-static {v1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    :cond_6
    return-void
.end method
