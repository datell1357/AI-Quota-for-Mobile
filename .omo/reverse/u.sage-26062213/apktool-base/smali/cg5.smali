.class public final Lcg5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbg5;
.implements Lng5;


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/logging/Level;

.field public final b:J

.field public c:Lgg5;

.field public d:Lkg5;

.field public e:Lsg5;

.field public f:Lel4;

.field public g:[Ljava/lang/Object;

.field public final synthetic h:Lwu4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcg5;->i:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lwu4;Ljava/util/logging/Level;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg5;->h:Lwu4;

    .line 5
    .line 6
    sget-object p1, Lbl4;->a:Lcl4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcg5;->c:Lgg5;

    .line 26
    .line 27
    iput-object p1, p0, Lcg5;->d:Lkg5;

    .line 28
    .line 29
    iput-object p1, p0, Lcg5;->e:Lsg5;

    .line 30
    .line 31
    iput-object p1, p0, Lcg5;->f:Lel4;

    .line 32
    .line 33
    iput-object p1, p0, Lcg5;->g:[Ljava/lang/Object;

    .line 34
    .line 35
    const-string p1, "level"

    .line 36
    .line 37
    invoke-static {p2, p1}, Lhm4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcg5;->a:Ljava/util/logging/Level;

    .line 41
    .line 42
    iput-wide v0, p0, Lcg5;->b:J

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lng5;
    .locals 2

    .line 1
    sget-object v0, Lfg5;->a:Log5;

    .line 2
    .line 3
    const-string v1, "metadata key"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhm4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcg5;->e(Log5;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public final b()Lng5;
    .locals 2

    .line 1
    new-instance v0, Ljg5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Ljg5;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lcg5;->d:Lkg5;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Lcg5;->d:Lkg5;

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcg5;->d:Lkg5;

    .line 8
    .line 9
    sget-object v4, Lkg5;->a:Lig5;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    sget-object v3, Lbl4;->a:Lcl4;

    .line 14
    .line 15
    check-cast v3, Lgl4;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v3, Lgl4;->b:Lpr3;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object v4, v1, Lcg5;->d:Lkg5;

    .line 26
    .line 27
    :cond_0
    iget-object v3, v1, Lcg5;->d:Lkg5;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    if-eq v3, v4, :cond_2

    .line 32
    .line 33
    iget-object v4, v1, Lcg5;->c:Lgg5;

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    iget v7, v4, Lgg5;->c:I

    .line 38
    .line 39
    if-lez v7, :cond_3

    .line 40
    .line 41
    const-string v7, "logSiteKey"

    .line 42
    .line 43
    invoke-static {v3, v7}, Lhm4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v7, v4, Lgg5;->c:I

    .line 47
    .line 48
    move v8, v6

    .line 49
    :goto_0
    if-ge v8, v7, :cond_3

    .line 50
    .line 51
    sget-object v9, Lfg5;->f:Leg5;

    .line 52
    .line 53
    invoke-virtual {v4, v8}, Lgg5;->c(I)Log5;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v8}, Lgg5;->d(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    new-instance v10, Lug5;

    .line 68
    .line 69
    invoke-direct {v10, v3, v9}, Lug5;-><init>(Llg5;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v3, v10

    .line 73
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v3, v5

    .line 77
    :cond_3
    invoke-virtual {v1}, Lcg5;->d()Lye4;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lye4;->b()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    move v8, v6

    .line 86
    :goto_1
    if-ge v8, v7, :cond_5

    .line 87
    .line 88
    invoke-virtual {v4, v8}, Lye4;->c(I)Log5;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget-object v9, v9, Log5;->a:Ljava/lang/String;

    .line 93
    .line 94
    const-string v10, "eye3tag"

    .line 95
    .line 96
    if-ne v9, v10, :cond_4

    .line 97
    .line 98
    sget-object v7, Lfg5;->a:Log5;

    .line 99
    .line 100
    invoke-virtual {v4, v7}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-nez v7, :cond_5

    .line 105
    .line 106
    sget-object v7, Lfg5;->i:Log5;

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-nez v4, :cond_5

    .line 113
    .line 114
    sget-object v4, Lvg5;->o:Lvg5;

    .line 115
    .line 116
    invoke-virtual {v1, v7, v4}, Lcg5;->e(Log5;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    :goto_2
    iget-object v4, v1, Lcg5;->c:Lgg5;

    .line 124
    .line 125
    const/4 v7, -0x1

    .line 126
    sget-object v8, Lsg5;->a:Lpg5;

    .line 127
    .line 128
    const/4 v9, 0x1

    .line 129
    if-eqz v4, :cond_21

    .line 130
    .line 131
    if-eqz v3, :cond_13

    .line 132
    .line 133
    sget v10, Lag5;->d:I

    .line 134
    .line 135
    sget-object v10, Lfg5;->d:Log5;

    .line 136
    .line 137
    invoke-virtual {v4, v10}, Lgg5;->e(Log5;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-nez v4, :cond_12

    .line 142
    .line 143
    iget-object v4, v1, Lcg5;->c:Lgg5;

    .line 144
    .line 145
    sget-object v10, Lyf5;->d:Lxf5;

    .line 146
    .line 147
    sget-object v10, Lfg5;->b:Log5;

    .line 148
    .line 149
    invoke-virtual {v4, v10}, Lgg5;->e(Log5;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    check-cast v10, Ljava/lang/Integer;

    .line 154
    .line 155
    if-nez v10, :cond_6

    .line 156
    .line 157
    move-object v4, v5

    .line 158
    goto :goto_3

    .line 159
    :cond_6
    sget-object v11, Lyf5;->d:Lxf5;

    .line 160
    .line 161
    invoke-virtual {v11, v3, v4}, Lib0;->u(Llg5;Lye4;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lyf5;

    .line 166
    .line 167
    iget-object v11, v4, Lyf5;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    int-to-long v12, v10

    .line 174
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 175
    .line 176
    .line 177
    move-result-wide v10

    .line 178
    cmp-long v10, v10, v12

    .line 179
    .line 180
    if-ltz v10, :cond_7

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    move-object v4, v8

    .line 184
    :goto_3
    iget-object v10, v1, Lcg5;->c:Lgg5;

    .line 185
    .line 186
    sget-object v11, Ltg5;->d:Lxf5;

    .line 187
    .line 188
    sget-object v11, Lfg5;->c:Log5;

    .line 189
    .line 190
    invoke-virtual {v10, v11}, Lgg5;->e(Log5;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    check-cast v11, Ljava/lang/Integer;

    .line 195
    .line 196
    if-eqz v11, :cond_b

    .line 197
    .line 198
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-gtz v12, :cond_8

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    sget-object v12, Ltg5;->d:Lxf5;

    .line 206
    .line 207
    invoke-virtual {v12, v3, v10}, Lib0;->u(Llg5;Lye4;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    check-cast v10, Ltg5;

    .line 212
    .line 213
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    sget-object v12, Ltg5;->e:Llc;

    .line 218
    .line 219
    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    check-cast v12, Ljava/util/Random;

    .line 224
    .line 225
    invoke-virtual {v12, v11}, Ljava/util/Random;->nextInt(I)I

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    iget-object v12, v10, Ltg5;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    .line 231
    if-nez v11, :cond_9

    .line 232
    .line 233
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    :goto_4
    if-lez v11, :cond_a

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_a
    move-object v10, v8

    .line 246
    goto :goto_6

    .line 247
    :cond_b
    :goto_5
    move-object v10, v5

    .line 248
    :goto_6
    if-nez v4, :cond_d

    .line 249
    .line 250
    :cond_c
    :goto_7
    move-object v4, v10

    .line 251
    goto :goto_8

    .line 252
    :cond_d
    if-nez v10, :cond_e

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_e
    if-eq v4, v8, :cond_11

    .line 256
    .line 257
    sget-object v11, Lsg5;->b:Lpg5;

    .line 258
    .line 259
    if-ne v10, v11, :cond_f

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_f
    if-eq v10, v8, :cond_c

    .line 263
    .line 264
    if-ne v4, v11, :cond_10

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_10
    new-instance v11, Lqg5;

    .line 268
    .line 269
    invoke-direct {v11, v4, v10}, Lqg5;-><init>(Lsg5;Lsg5;)V

    .line 270
    .line 271
    .line 272
    move-object v4, v11

    .line 273
    :cond_11
    :goto_8
    iput-object v4, v1, Lcg5;->e:Lsg5;

    .line 274
    .line 275
    if-ne v4, v8, :cond_13

    .line 276
    .line 277
    move v4, v6

    .line 278
    goto/16 :goto_11

    .line 279
    .line 280
    :cond_12
    invoke-static {}, Lmk0;->b()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_13
    iget-object v4, v1, Lcg5;->c:Lgg5;

    .line 285
    .line 286
    sget-object v10, Lfg5;->i:Log5;

    .line 287
    .line 288
    invoke-virtual {v4, v10}, Lgg5;->e(Log5;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Lvg5;

    .line 293
    .line 294
    if-eqz v4, :cond_21

    .line 295
    .line 296
    iget-object v11, v1, Lcg5;->c:Lgg5;

    .line 297
    .line 298
    if-eqz v11, :cond_16

    .line 299
    .line 300
    invoke-virtual {v11, v10}, Lgg5;->g(Log5;)I

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-ltz v12, :cond_16

    .line 305
    .line 306
    add-int/2addr v12, v12

    .line 307
    add-int/lit8 v13, v12, 0x2

    .line 308
    .line 309
    :goto_9
    iget v14, v11, Lgg5;->c:I

    .line 310
    .line 311
    add-int v15, v14, v14

    .line 312
    .line 313
    if-ge v13, v15, :cond_15

    .line 314
    .line 315
    iget-object v14, v11, Lgg5;->b:[Ljava/lang/Object;

    .line 316
    .line 317
    aget-object v14, v14, v13

    .line 318
    .line 319
    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    if-nez v15, :cond_14

    .line 324
    .line 325
    iget-object v15, v11, Lgg5;->b:[Ljava/lang/Object;

    .line 326
    .line 327
    aput-object v14, v15, v12

    .line 328
    .line 329
    add-int/lit8 v14, v12, 0x1

    .line 330
    .line 331
    add-int/lit8 v16, v13, 0x1

    .line 332
    .line 333
    aget-object v16, v15, v16

    .line 334
    .line 335
    aput-object v16, v15, v14

    .line 336
    .line 337
    add-int/lit8 v12, v12, 0x2

    .line 338
    .line 339
    :cond_14
    add-int/lit8 v13, v13, 0x2

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_15
    sub-int v10, v13, v12

    .line 343
    .line 344
    shr-int/2addr v10, v9

    .line 345
    sub-int/2addr v14, v10

    .line 346
    iput v14, v11, Lgg5;->c:I

    .line 347
    .line 348
    :goto_a
    if-ge v12, v13, :cond_16

    .line 349
    .line 350
    iget-object v10, v11, Lgg5;->b:[Ljava/lang/Object;

    .line 351
    .line 352
    add-int/lit8 v14, v12, 0x1

    .line 353
    .line 354
    aput-object v5, v10, v12

    .line 355
    .line 356
    move v12, v14

    .line 357
    goto :goto_a

    .line 358
    :cond_16
    new-instance v5, Lmg5;

    .line 359
    .line 360
    invoke-virtual {v1}, Lcg5;->d()Lye4;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    sget-object v11, Lfg5;->a:Log5;

    .line 365
    .line 366
    invoke-virtual {v10, v11}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    check-cast v10, Ljava/lang/Throwable;

    .line 371
    .line 372
    iget v12, v4, Lvg5;->n:I

    .line 373
    .line 374
    sget-object v13, Lgm4;->a:[Ljava/lang/String;

    .line 375
    .line 376
    if-gtz v12, :cond_18

    .line 377
    .line 378
    if-ne v12, v7, :cond_17

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_17
    const-string v0, "invalid maximum depth: 0"

    .line 382
    .line 383
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :cond_18
    :goto_b
    sget-object v13, Lgm4;->b:Ljm4;

    .line 388
    .line 389
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    if-eq v12, v7, :cond_19

    .line 393
    .line 394
    if-lez v12, :cond_1a

    .line 395
    .line 396
    :cond_19
    move v13, v9

    .line 397
    goto :goto_c

    .line 398
    :cond_1a
    move v13, v6

    .line 399
    :goto_c
    if-eqz v13, :cond_22

    .line 400
    .line 401
    new-instance v13, Ljava/lang/Throwable;

    .line 402
    .line 403
    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 407
    .line 408
    .line 409
    move-result-object v13

    .line 410
    const-class v14, Lcg5;

    .line 411
    .line 412
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v14

    .line 416
    const/4 v15, 0x3

    .line 417
    move/from16 v16, v6

    .line 418
    .line 419
    :goto_d
    array-length v9, v13

    .line 420
    if-ge v15, v9, :cond_1d

    .line 421
    .line 422
    aget-object v9, v13, v15

    .line 423
    .line 424
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v9

    .line 432
    if-eqz v9, :cond_1b

    .line 433
    .line 434
    const/16 v16, 0x1

    .line 435
    .line 436
    goto :goto_e

    .line 437
    :cond_1b
    if-eqz v16, :cond_1c

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_1c
    :goto_e
    add-int/lit8 v15, v15, 0x1

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_1d
    move v15, v7

    .line 444
    :goto_f
    if-ne v15, v7, :cond_1e

    .line 445
    .line 446
    new-array v9, v6, [Ljava/lang/StackTraceElement;

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_1e
    array-length v9, v13

    .line 450
    sub-int/2addr v9, v15

    .line 451
    if-lez v12, :cond_1f

    .line 452
    .line 453
    if-lt v12, v9, :cond_20

    .line 454
    .line 455
    :cond_1f
    move v12, v9

    .line 456
    :cond_20
    new-array v9, v12, [Ljava/lang/StackTraceElement;

    .line 457
    .line 458
    invoke-static {v13, v15, v9, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    .line 460
    .line 461
    :goto_10
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-direct {v5, v4, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5, v9}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v11, v5}, Lcg5;->e(Log5;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_21
    const/4 v4, 0x1

    .line 475
    goto :goto_11

    .line 476
    :cond_22
    const-string v0, "maxDepth must be > 0 or -1"

    .line 477
    .line 478
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    :goto_11
    iget-object v5, v1, Lcg5;->e:Lsg5;

    .line 483
    .line 484
    if-eqz v5, :cond_27

    .line 485
    .line 486
    iget-object v9, v1, Lcg5;->c:Lgg5;

    .line 487
    .line 488
    sget-object v10, Lrg5;->c:Lxf5;

    .line 489
    .line 490
    invoke-virtual {v10, v3, v9}, Lib0;->u(Llg5;Lye4;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    check-cast v3, Lrg5;

    .line 495
    .line 496
    iget-object v9, v3, Lrg5;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 497
    .line 498
    iget-object v3, v3, Lrg5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 501
    .line 502
    .line 503
    move-result v10

    .line 504
    if-eq v5, v8, :cond_24

    .line 505
    .line 506
    const/4 v8, 0x1

    .line 507
    invoke-virtual {v3, v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 508
    .line 509
    .line 510
    move-result v11

    .line 511
    if-nez v11, :cond_23

    .line 512
    .line 513
    goto :goto_12

    .line 514
    :cond_23
    :try_start_0
    invoke-virtual {v5}, Lsg5;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 518
    .line 519
    .line 520
    neg-int v3, v10

    .line 521
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 522
    .line 523
    .line 524
    add-int/2addr v7, v10

    .line 525
    goto :goto_12

    .line 526
    :catchall_0
    move-exception v0

    .line 527
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :cond_24
    :goto_12
    if-eqz v4, :cond_25

    .line 532
    .line 533
    if-lez v7, :cond_25

    .line 534
    .line 535
    iget-object v3, v1, Lcg5;->c:Lgg5;

    .line 536
    .line 537
    if-eqz v3, :cond_25

    .line 538
    .line 539
    sget-object v5, Lfg5;->e:Log5;

    .line 540
    .line 541
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-virtual {v3, v5, v8}, Lgg5;->f(Log5;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    :cond_25
    if-ltz v7, :cond_26

    .line 549
    .line 550
    const/4 v8, 0x1

    .line 551
    goto :goto_13

    .line 552
    :cond_26
    move v8, v6

    .line 553
    :goto_13
    and-int/2addr v4, v8

    .line 554
    :cond_27
    if-eqz v4, :cond_2f

    .line 555
    .line 556
    array-length v3, v2

    .line 557
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    iput-object v2, v1, Lcg5;->g:[Ljava/lang/Object;

    .line 562
    .line 563
    :goto_14
    array-length v3, v2

    .line 564
    if-ge v6, v3, :cond_28

    .line 565
    .line 566
    aget-object v3, v2, v6

    .line 567
    .line 568
    add-int/lit8 v6, v6, 0x1

    .line 569
    .line 570
    goto :goto_14

    .line 571
    :cond_28
    sget-object v2, Lcg5;->i:Ljava/lang/String;

    .line 572
    .line 573
    if-eq v0, v2, :cond_29

    .line 574
    .line 575
    new-instance v2, Lel4;

    .line 576
    .line 577
    sget-object v3, Lem4;->b:Lem4;

    .line 578
    .line 579
    invoke-direct {v2, v0}, Lel4;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iput-object v2, v1, Lcg5;->f:Lel4;

    .line 583
    .line 584
    :cond_29
    sget-object v0, Lbl4;->a:Lcl4;

    .line 585
    .line 586
    check-cast v0, Lgl4;

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    sget-object v0, Lml4;->b:Lml4;

    .line 592
    .line 593
    invoke-virtual {v0}, Lml4;->b()Lzl4;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    iget-object v2, v0, Lzl4;->a:Lyl4;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_2c

    .line 604
    .line 605
    invoke-virtual {v1}, Lcg5;->d()Lye4;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    sget-object v3, Lfg5;->h:Leg5;

    .line 610
    .line 611
    invoke-virtual {v2, v3}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    check-cast v2, Lzl4;

    .line 616
    .line 617
    if-eqz v2, :cond_2b

    .line 618
    .line 619
    iget-object v4, v2, Lzl4;->a:Lyl4;

    .line 620
    .line 621
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    if-nez v5, :cond_2b

    .line 626
    .line 627
    iget-object v0, v0, Lzl4;->a:Lyl4;

    .line 628
    .line 629
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eqz v5, :cond_2a

    .line 634
    .line 635
    :goto_15
    move-object v0, v2

    .line 636
    goto :goto_16

    .line 637
    :cond_2a
    new-instance v2, Lzl4;

    .line 638
    .line 639
    new-instance v5, Lyl4;

    .line 640
    .line 641
    invoke-direct {v5, v0, v4}, Lyl4;-><init>(Lyl4;Lyl4;)V

    .line 642
    .line 643
    .line 644
    invoke-direct {v2, v5}, Lzl4;-><init>(Lyl4;)V

    .line 645
    .line 646
    .line 647
    goto :goto_15

    .line 648
    :cond_2b
    :goto_16
    invoke-virtual {v1, v3, v0}, Lcg5;->e(Log5;Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    :cond_2c
    iget-object v0, v1, Lcg5;->h:Lwu4;

    .line 652
    .line 653
    iget-object v0, v0, Lwu4;->o:Ljava/lang/Object;

    .line 654
    .line 655
    move-object v2, v0

    .line 656
    check-cast v2, Lv43;

    .line 657
    .line 658
    :try_start_1
    sget-object v0, Lim4;->o:Llc;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    move-object v3, v0

    .line 665
    check-cast v3, Lim4;

    .line 666
    .line 667
    iget v0, v3, Lim4;->n:I

    .line 668
    .line 669
    const/16 v17, 0x1

    .line 670
    .line 671
    add-int/lit8 v0, v0, 0x1

    .line 672
    .line 673
    iput v0, v3, Lim4;->n:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 674
    .line 675
    if-eqz v0, :cond_2e

    .line 676
    .line 677
    const/16 v4, 0x64

    .line 678
    .line 679
    if-gt v0, v4, :cond_2d

    .line 680
    .line 681
    :try_start_2
    invoke-virtual {v2, v1}, Lv43;->b(Lcg5;)V

    .line 682
    .line 683
    .line 684
    goto :goto_17

    .line 685
    :catchall_1
    move-exception v0

    .line 686
    move-object v4, v0

    .line 687
    goto :goto_18

    .line 688
    :cond_2d
    const-string v0, "unbounded recursion in log statement"

    .line 689
    .line 690
    invoke-static {v0, v1}, Lwu4;->w(Ljava/lang/String;Lcg5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 691
    .line 692
    .line 693
    :goto_17
    :try_start_3
    invoke-virtual {v3}, Lim4;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    goto :goto_1a

    .line 699
    :goto_18
    :try_start_4
    invoke-virtual {v3}, Lim4;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 700
    .line 701
    .line 702
    goto :goto_19

    .line 703
    :catchall_2
    move-exception v0

    .line 704
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 705
    .line 706
    .line 707
    :goto_19
    throw v4

    .line 708
    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    .line 709
    .line 710
    const-string v3, "Overflow of RecursionDepth (possible error in core library)"

    .line 711
    .line 712
    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 716
    :goto_1a
    :try_start_6
    invoke-virtual {v2, v0, v1}, Lv43;->c(Ljava/lang/RuntimeException;Lcg5;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 717
    .line 718
    .line 719
    goto :goto_1b

    .line 720
    :catch_1
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    add-int/lit8 v4, v4, 0x2

    .line 742
    .line 743
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    new-instance v6, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    add-int/2addr v4, v5

    .line 750
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    const-string v2, ": "

    .line 757
    .line 758
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-static {v2, v1}, Lwu4;->w(Ljava/lang/String;Lcg5;)V

    .line 769
    .line 770
    .line 771
    :try_start_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 772
    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 774
    .line 775
    .line 776
    :catch_2
    :cond_2f
    :goto_1b
    return-void
.end method

.method public final d()Lye4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcg5;->c:Lgg5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lch5;->b:Lch5;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e(Log5;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcg5;->c:Lgg5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lgg5;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, v0, Lgg5;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lgg5;->c:I

    .line 18
    .line 19
    iput-object v0, p0, Lcg5;->c:Lgg5;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcg5;->c:Lgg5;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lgg5;->f(Log5;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
