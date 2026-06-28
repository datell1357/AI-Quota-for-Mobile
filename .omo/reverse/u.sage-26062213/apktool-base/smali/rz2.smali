.class public abstract Lrz2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ldl0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lge2;->b:Ldl0;

    .line 2
    .line 3
    sput-object v0, Lrz2;->a:Ldl0;

    .line 4
    .line 5
    return-void
.end method

.method public static final a(Lnd2;JFJIFLag1;I)V
    .locals 21

    .line 1
    move-wide/from16 v10, p1

    .line 2
    .line 3
    move-object/from16 v12, p8

    .line 4
    .line 5
    const v0, 0x13db87c1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v12, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v12, v10, v11}, Lag1;->e(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x10

    .line 21
    .line 22
    :goto_0
    or-int v0, p9, v0

    .line 23
    .line 24
    const v2, 0x36400

    .line 25
    .line 26
    .line 27
    or-int/2addr v0, v2

    .line 28
    const v2, 0x12493

    .line 29
    .line 30
    .line 31
    and-int/2addr v2, v0

    .line 32
    const v3, 0x12492

    .line 33
    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v13

    .line 41
    :goto_1
    and-int/lit8 v3, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {v12, v3, v2}, Lag1;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_a

    .line 48
    .line 49
    invoke-virtual {v12}, Lag1;->S()V

    .line 50
    .line 51
    .line 52
    and-int/lit8 v2, p9, 0x1

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v12}, Lag1;->x()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v12}, Lag1;->Q()V

    .line 64
    .line 65
    .line 66
    and-int/lit16 v0, v0, -0x1c01

    .line 67
    .line 68
    move-wide/from16 v7, p4

    .line 69
    .line 70
    move/from16 v17, p6

    .line 71
    .line 72
    move/from16 v3, p7

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    :goto_2
    sget-wide v2, Lt70;->e:J

    .line 76
    .line 77
    and-int/lit16 v0, v0, -0x1c01

    .line 78
    .line 79
    const/high16 v5, 0x40800000    # 4.0f

    .line 80
    .line 81
    move-wide v7, v2

    .line 82
    move v3, v5

    .line 83
    const/16 v17, 0x1

    .line 84
    .line 85
    :goto_3
    invoke-virtual {v12}, Lag1;->q()V

    .line 86
    .line 87
    .line 88
    sget-object v2, Lkc0;->h:Lis3;

    .line 89
    .line 90
    invoke-virtual {v12, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Las0;

    .line 95
    .line 96
    new-instance v9, Lht3;

    .line 97
    .line 98
    move/from16 v5, p3

    .line 99
    .line 100
    invoke-interface {v2, v5}, Las0;->v(F)F

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    const/16 v18, 0x0

    .line 105
    .line 106
    const/16 v19, 0x1a

    .line 107
    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    move-object v14, v9

    .line 111
    invoke-direct/range {v14 .. v19}, Lht3;-><init>(FFIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Lag1;->K()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget-object v6, Lrb0;->a:Lbx3;

    .line 119
    .line 120
    if-ne v2, v6, :cond_4

    .line 121
    .line 122
    new-instance v2, Lrq1;

    .line 123
    .line 124
    invoke-direct {v2}, Lrq1;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    check-cast v2, Lrq1;

    .line 131
    .line 132
    invoke-virtual {v2, v13, v12}, Lrq1;->a(ILag1;)V

    .line 133
    .line 134
    .line 135
    sget-object v14, Lny0;->c:Lmk0;

    .line 136
    .line 137
    const/16 v15, 0x1770

    .line 138
    .line 139
    const/4 v13, 0x2

    .line 140
    invoke-static {v15, v13, v14}, Ltv4;->V(IILmy0;)Ld34;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    const/4 v14, 0x6

    .line 145
    invoke-static {v13, v14}, Ltv4;->A(Ldy0;I)Loq1;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    const/4 v1, 0x0

    .line 150
    const/high16 v4, 0x44870000    # 1080.0f

    .line 151
    .line 152
    invoke-static {v2, v1, v4, v13, v12}, Lc75;->k(Lrq1;FFLoq1;Lag1;)Lpq1;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    new-instance v13, Lz82;

    .line 157
    .line 158
    const/16 v15, 0x15

    .line 159
    .line 160
    invoke-direct {v13, v15}, Lz82;-><init>(I)V

    .line 161
    .line 162
    .line 163
    new-instance v15, Lsx1;

    .line 164
    .line 165
    new-instance v1, Lrx1;

    .line 166
    .line 167
    invoke-direct {v1}, Lrx1;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v1}, Lz82;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    invoke-direct {v15, v1}, Lsx1;-><init>(Lrx1;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v15, v14}, Ltv4;->A(Ldy0;I)Loq1;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const/high16 v13, 0x43b40000    # 360.0f

    .line 181
    .line 182
    const/4 v15, 0x0

    .line 183
    invoke-static {v2, v15, v13, v1, v12}, Lc75;->k(Lrq1;FFLoq1;Lag1;)Lpq1;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v13, Lsx1;

    .line 188
    .line 189
    new-instance v15, Lrx1;

    .line 190
    .line 191
    invoke-direct {v15}, Lrx1;-><init>()V

    .line 192
    .line 193
    .line 194
    const/16 v14, 0x1770

    .line 195
    .line 196
    iput v14, v15, Lrx1;->a:I

    .line 197
    .line 198
    const p6, 0x3f5eb852    # 0.87f

    .line 199
    .line 200
    .line 201
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    move/from16 p7, v0

    .line 206
    .line 207
    const/16 v0, 0xbb8

    .line 208
    .line 209
    invoke-virtual {v15, v14, v0}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sget-object v14, Lrz2;->a:Ldl0;

    .line 214
    .line 215
    iput-object v14, v0, Lqx1;->b:Lmy0;

    .line 216
    .line 217
    const v0, 0x3dcccccd    # 0.1f

    .line 218
    .line 219
    .line 220
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    const/16 v0, 0x1770

    .line 225
    .line 226
    invoke-virtual {v15, v14, v0}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 227
    .line 228
    .line 229
    invoke-direct {v13, v15}, Lsx1;-><init>(Lrx1;)V

    .line 230
    .line 231
    .line 232
    const/4 v0, 0x6

    .line 233
    invoke-static {v13, v0}, Ltv4;->A(Ldy0;I)Loq1;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    move/from16 v13, p6

    .line 238
    .line 239
    const v14, 0x3dcccccd    # 0.1f

    .line 240
    .line 241
    .line 242
    invoke-static {v2, v14, v13, v0, v12}, Lc75;->k(Lrq1;FFLoq1;Lag1;)Lpq1;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v2, Lz82;

    .line 247
    .line 248
    const/16 v13, 0x16

    .line 249
    .line 250
    invoke-direct {v2, v13}, Lz82;-><init>(I)V

    .line 251
    .line 252
    .line 253
    sget-object v13, Ldh3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 254
    .line 255
    new-instance v13, Lgh;

    .line 256
    .line 257
    const/4 v14, 0x1

    .line 258
    invoke-direct {v13, v2, v14}, Lgh;-><init>(Lpe1;Z)V

    .line 259
    .line 260
    .line 261
    move-object/from16 v15, p0

    .line 262
    .line 263
    invoke-interface {v15, v13}, Lnd2;->c(Lnd2;)Lnd2;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const/high16 v13, 0x42200000    # 40.0f

    .line 268
    .line 269
    invoke-static {v2, v13}, Lon3;->c(Lnd2;F)Lnd2;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    invoke-virtual {v12, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v12, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v19

    .line 281
    or-int v2, v2, v19

    .line 282
    .line 283
    invoke-virtual {v12, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v19

    .line 287
    or-int v2, v2, v19

    .line 288
    .line 289
    invoke-virtual {v12, v7, v8}, Lag1;->e(J)Z

    .line 290
    .line 291
    .line 292
    move-result v19

    .line 293
    or-int v2, v2, v19

    .line 294
    .line 295
    invoke-virtual {v12, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v19

    .line 299
    or-int v2, v2, v19

    .line 300
    .line 301
    and-int/lit8 v19, p7, 0x70

    .line 302
    .line 303
    xor-int/lit8 v14, v19, 0x30

    .line 304
    .line 305
    move-object/from16 p4, v0

    .line 306
    .line 307
    const/16 v0, 0x20

    .line 308
    .line 309
    if-le v14, v0, :cond_5

    .line 310
    .line 311
    invoke-virtual {v12, v10, v11}, Lag1;->e(J)Z

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    if-nez v14, :cond_6

    .line 316
    .line 317
    :cond_5
    and-int/lit8 v14, p7, 0x30

    .line 318
    .line 319
    if-ne v14, v0, :cond_7

    .line 320
    .line 321
    :cond_6
    const/16 v20, 0x1

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_7
    const/16 v20, 0x0

    .line 325
    .line 326
    :goto_4
    or-int v0, v2, v20

    .line 327
    .line 328
    invoke-virtual {v12}, Lag1;->K()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    if-nez v0, :cond_8

    .line 333
    .line 334
    if-ne v2, v6, :cond_9

    .line 335
    .line 336
    :cond_8
    new-instance v0, Lpz2;

    .line 337
    .line 338
    move v2, v5

    .line 339
    move-object v5, v4

    .line 340
    move v4, v2

    .line 341
    move-object v6, v1

    .line 342
    move/from16 v2, v17

    .line 343
    .line 344
    move-object/from16 v1, p4

    .line 345
    .line 346
    invoke-direct/range {v0 .. v11}, Lpz2;-><init>(Lpq1;IFFLpq1;Lpq1;JLht3;J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v12, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    move-object v2, v0

    .line 353
    :cond_9
    check-cast v2, Lpe1;

    .line 354
    .line 355
    const/4 v0, 0x0

    .line 356
    invoke-static {v13, v2, v12, v0}, Ltv4;->b(Lnd2;Lpe1;Lag1;I)V

    .line 357
    .line 358
    .line 359
    move-wide v5, v7

    .line 360
    move/from16 v7, v17

    .line 361
    .line 362
    move v8, v3

    .line 363
    goto :goto_5

    .line 364
    :cond_a
    move-object/from16 v15, p0

    .line 365
    .line 366
    invoke-virtual {v12}, Lag1;->Q()V

    .line 367
    .line 368
    .line 369
    move-wide/from16 v5, p4

    .line 370
    .line 371
    move/from16 v7, p6

    .line 372
    .line 373
    move/from16 v8, p7

    .line 374
    .line 375
    :goto_5
    invoke-virtual {v12}, Lag1;->r()Lc33;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    if-eqz v10, :cond_b

    .line 380
    .line 381
    new-instance v0, Lqz2;

    .line 382
    .line 383
    move-wide/from16 v2, p1

    .line 384
    .line 385
    move/from16 v4, p3

    .line 386
    .line 387
    move/from16 v9, p9

    .line 388
    .line 389
    move-object v1, v15

    .line 390
    invoke-direct/range {v0 .. v9}, Lqz2;-><init>(Lnd2;JFJIFI)V

    .line 391
    .line 392
    .line 393
    iput-object v0, v10, Lc33;->d:Ldf1;

    .line 394
    .line 395
    :cond_b
    return-void
.end method

.method public static final b(Lkx0;FFJLht3;)V
    .locals 10

    .line 1
    iget v0, p5, Lht3;->f:F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    invoke-interface {p0}, Lkx0;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    shr-long/2addr v2, v4

    .line 13
    long-to-int v2, v2

    .line 14
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-float/2addr v1, v0

    .line 19
    sub-float/2addr v2, v1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v5, v1

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    shl-long/2addr v5, v4

    .line 31
    const-wide v7, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v7

    .line 37
    or-long/2addr v5, v0

    .line 38
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-long v0, v0

    .line 43
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    shl-long/2addr v0, v4

    .line 49
    and-long/2addr v2, v7

    .line 50
    or-long v7, v0, v2

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    move v3, p1

    .line 54
    move v4, p2

    .line 55
    move-wide v1, p3

    .line 56
    move-object v9, p5

    .line 57
    invoke-interface/range {v0 .. v9}, Lkx0;->s0(JFFJJLtv4;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
