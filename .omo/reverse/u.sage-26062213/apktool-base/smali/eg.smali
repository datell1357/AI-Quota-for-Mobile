.class public abstract Leg;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ll6;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Llc0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Leg;->a:Llc0;

    .line 13
    .line 14
    new-instance v0, Ll6;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lw12;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lw12;-><init>(Lne1;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ldl0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const v2, 0x3e19999a    # 0.15f

    .line 29
    .line 30
    .line 31
    const v3, 0x3f4ccccd    # 0.8f

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3, v1, v3, v2}, Ldl0;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x40800000    # 4.0f

    .line 38
    .line 39
    sput v0, Leg;->b:F

    .line 40
    .line 41
    const/high16 v0, 0x41400000    # 12.0f

    .line 42
    .line 43
    sput v0, Leg;->c:F

    .line 44
    .line 45
    return-void
.end method

.method public static final a(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;Lag1;II)V
    .locals 24

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    sget-object v1, Lmj1;->z:Law;

    .line 8
    .line 9
    const v2, 0x29f527d8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lag1;->X(I)Lag1;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v11, 0x6

    .line 16
    .line 17
    move-object/from16 v14, p0

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v14}, Lag1;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v11

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v11

    .line 33
    :goto_1
    and-int/lit8 v5, v11, 0x30

    .line 34
    .line 35
    move-object/from16 v15, p1

    .line 36
    .line 37
    if-nez v5, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v2, v5

    .line 51
    :cond_3
    and-int/lit16 v5, v11, 0x180

    .line 52
    .line 53
    if-nez v5, :cond_5

    .line 54
    .line 55
    move-object/from16 v5, p2

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Lag1;->f(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_4

    .line 62
    .line 63
    const/16 v10, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v10, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v2, v10

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    move-object/from16 v5, p2

    .line 71
    .line 72
    :goto_4
    and-int/lit16 v10, v11, 0xc00

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    if-nez v10, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0, v13}, Lag1;->h(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_6

    .line 82
    .line 83
    const/16 v10, 0x800

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    const/16 v10, 0x400

    .line 87
    .line 88
    :goto_5
    or-int/2addr v2, v10

    .line 89
    :cond_7
    and-int/lit16 v10, v11, 0x6000

    .line 90
    .line 91
    if-nez v10, :cond_9

    .line 92
    .line 93
    move-object/from16 v10, p3

    .line 94
    .line 95
    invoke-virtual {v0, v10}, Lag1;->f(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_8

    .line 100
    .line 101
    const/16 v16, 0x4000

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    const/16 v16, 0x2000

    .line 105
    .line 106
    :goto_6
    or-int v2, v2, v16

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_9
    move-object/from16 v10, p3

    .line 110
    .line 111
    :goto_7
    const/high16 v16, 0x30000

    .line 112
    .line 113
    and-int v16, v11, v16

    .line 114
    .line 115
    if-nez v16, :cond_b

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_a

    .line 122
    .line 123
    const/high16 v1, 0x20000

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_a
    const/high16 v1, 0x10000

    .line 127
    .line 128
    :goto_8
    or-int/2addr v2, v1

    .line 129
    :cond_b
    const/high16 v1, 0x180000

    .line 130
    .line 131
    and-int/2addr v1, v11

    .line 132
    if-nez v1, :cond_d

    .line 133
    .line 134
    move-object/from16 v1, p4

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v16

    .line 140
    if-eqz v16, :cond_c

    .line 141
    .line 142
    const/high16 v16, 0x100000

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_c
    const/high16 v16, 0x80000

    .line 146
    .line 147
    :goto_9
    or-int v2, v2, v16

    .line 148
    .line 149
    goto :goto_a

    .line 150
    :cond_d
    move-object/from16 v1, p4

    .line 151
    .line 152
    :goto_a
    const/high16 v16, 0xc00000

    .line 153
    .line 154
    and-int v16, v11, v16

    .line 155
    .line 156
    move-object/from16 v3, p5

    .line 157
    .line 158
    if-nez v16, :cond_f

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v17

    .line 164
    if-eqz v17, :cond_e

    .line 165
    .line 166
    const/high16 v17, 0x800000

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_e
    const/high16 v17, 0x400000

    .line 170
    .line 171
    :goto_b
    or-int v2, v2, v17

    .line 172
    .line 173
    :cond_f
    const/high16 v17, 0x6000000

    .line 174
    .line 175
    and-int v17, v11, v17

    .line 176
    .line 177
    move/from16 v4, p6

    .line 178
    .line 179
    if-nez v17, :cond_11

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Lag1;->c(F)Z

    .line 182
    .line 183
    .line 184
    move-result v18

    .line 185
    if-eqz v18, :cond_10

    .line 186
    .line 187
    const/high16 v18, 0x4000000

    .line 188
    .line 189
    goto :goto_c

    .line 190
    :cond_10
    const/high16 v18, 0x2000000

    .line 191
    .line 192
    :goto_c
    or-int v2, v2, v18

    .line 193
    .line 194
    :cond_11
    const/high16 v18, 0x30000000

    .line 195
    .line 196
    and-int v18, v11, v18

    .line 197
    .line 198
    move-object/from16 v6, p7

    .line 199
    .line 200
    if-nez v18, :cond_13

    .line 201
    .line 202
    invoke-virtual {v0, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v19

    .line 206
    if-eqz v19, :cond_12

    .line 207
    .line 208
    const/high16 v19, 0x20000000

    .line 209
    .line 210
    goto :goto_d

    .line 211
    :cond_12
    const/high16 v19, 0x10000000

    .line 212
    .line 213
    :goto_d
    or-int v2, v2, v19

    .line 214
    .line 215
    :cond_13
    and-int/lit8 v19, v12, 0x6

    .line 216
    .line 217
    move-object/from16 v7, p8

    .line 218
    .line 219
    if-nez v19, :cond_15

    .line 220
    .line 221
    invoke-virtual {v0, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v20

    .line 225
    if-eqz v20, :cond_14

    .line 226
    .line 227
    const/16 v16, 0x4

    .line 228
    .line 229
    goto :goto_e

    .line 230
    :cond_14
    const/16 v16, 0x2

    .line 231
    .line 232
    :goto_e
    or-int v16, v12, v16

    .line 233
    .line 234
    goto :goto_f

    .line 235
    :cond_15
    move/from16 v16, v12

    .line 236
    .line 237
    :goto_f
    and-int/lit8 v17, v12, 0x30

    .line 238
    .line 239
    move-object/from16 v8, p9

    .line 240
    .line 241
    if-nez v17, :cond_17

    .line 242
    .line 243
    invoke-virtual {v0, v8}, Lag1;->f(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v20

    .line 247
    if-eqz v20, :cond_16

    .line 248
    .line 249
    const/16 v19, 0x20

    .line 250
    .line 251
    goto :goto_10

    .line 252
    :cond_16
    const/16 v19, 0x10

    .line 253
    .line 254
    :goto_10
    or-int v16, v16, v19

    .line 255
    .line 256
    :cond_17
    and-int/lit16 v9, v12, 0x180

    .line 257
    .line 258
    if-nez v9, :cond_19

    .line 259
    .line 260
    invoke-virtual {v0, v13}, Lag1;->f(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_18

    .line 265
    .line 266
    const/16 v17, 0x100

    .line 267
    .line 268
    goto :goto_11

    .line 269
    :cond_18
    const/16 v17, 0x80

    .line 270
    .line 271
    :goto_11
    or-int v16, v16, v17

    .line 272
    .line 273
    :cond_19
    move/from16 v9, v16

    .line 274
    .line 275
    const v13, 0x12492493

    .line 276
    .line 277
    .line 278
    and-int/2addr v13, v2

    .line 279
    const v1, 0x12492492

    .line 280
    .line 281
    .line 282
    move/from16 v16, v2

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    const/16 v17, 0x1

    .line 286
    .line 287
    if-ne v13, v1, :cond_1b

    .line 288
    .line 289
    and-int/lit16 v1, v9, 0x93

    .line 290
    .line 291
    const/16 v9, 0x92

    .line 292
    .line 293
    if-eq v1, v9, :cond_1a

    .line 294
    .line 295
    goto :goto_12

    .line 296
    :cond_1a
    move v1, v2

    .line 297
    goto :goto_13

    .line 298
    :cond_1b
    :goto_12
    move/from16 v1, v17

    .line 299
    .line 300
    :goto_13
    and-int/lit8 v9, v16, 0x1

    .line 301
    .line 302
    invoke-virtual {v0, v9, v1}, Lag1;->N(IZ)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_1c

    .line 307
    .line 308
    new-instance v13, Lcn3;

    .line 309
    .line 310
    move-object/from16 v18, p4

    .line 311
    .line 312
    move-object/from16 v19, v3

    .line 313
    .line 314
    move/from16 v20, v4

    .line 315
    .line 316
    move-object/from16 v16, v5

    .line 317
    .line 318
    move-object/from16 v21, v6

    .line 319
    .line 320
    move-object/from16 v22, v7

    .line 321
    .line 322
    move-object/from16 v23, v8

    .line 323
    .line 324
    move-object/from16 v17, v10

    .line 325
    .line 326
    invoke-direct/range {v13 .. v23}, Lcn3;-><init>(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;)V

    .line 327
    .line 328
    .line 329
    sget-object v1, Leg;->a:Llc0;

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Lgq0;

    .line 336
    .line 337
    invoke-virtual {v1, v13, v0, v2}, Lgq0;->a(Lcn3;Lag1;I)V

    .line 338
    .line 339
    .line 340
    goto :goto_14

    .line 341
    :cond_1c
    invoke-virtual {v0}, Lag1;->Q()V

    .line 342
    .line 343
    .line 344
    :goto_14
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    if-eqz v13, :cond_1d

    .line 349
    .line 350
    new-instance v0, Lcg;

    .line 351
    .line 352
    move-object/from16 v1, p0

    .line 353
    .line 354
    move-object/from16 v2, p1

    .line 355
    .line 356
    move-object/from16 v3, p2

    .line 357
    .line 358
    move-object/from16 v4, p3

    .line 359
    .line 360
    move-object/from16 v5, p4

    .line 361
    .line 362
    move-object/from16 v6, p5

    .line 363
    .line 364
    move/from16 v7, p6

    .line 365
    .line 366
    move-object/from16 v8, p7

    .line 367
    .line 368
    move-object/from16 v9, p8

    .line 369
    .line 370
    move-object/from16 v10, p9

    .line 371
    .line 372
    invoke-direct/range {v0 .. v12}, Lcg;-><init>(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;II)V

    .line 373
    .line 374
    .line 375
    iput-object v0, v13, Lc33;->d:Ldf1;

    .line 376
    .line 377
    :cond_1d
    return-void
.end method

.method public static final b(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;Lag1;II)V
    .locals 16

    .line 1
    move-object/from16 v10, p8

    .line 2
    .line 3
    move/from16 v13, p9

    .line 4
    .line 5
    const v0, 0x275fc769

    .line 6
    .line 7
    .line 8
    invoke-virtual {v10, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v13, 0x30

    .line 12
    .line 13
    and-int/lit8 v1, p10, 0x4

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    or-int/lit16 v0, v13, 0x1b0

    .line 18
    .line 19
    :cond_0
    move-object/from16 v2, p2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    and-int/lit16 v2, v13, 0x180

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    invoke-virtual {v10, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const/16 v3, 0x100

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v3, 0x80

    .line 38
    .line 39
    :goto_0
    or-int/2addr v0, v3

    .line 40
    :goto_1
    and-int/lit8 v3, p10, 0x8

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    or-int/lit16 v0, v0, 0xc00

    .line 45
    .line 46
    :cond_3
    move-object/from16 v4, p3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    and-int/lit16 v4, v13, 0xc00

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    move-object/from16 v4, p3

    .line 54
    .line 55
    invoke-virtual {v10, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    const/16 v5, 0x800

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    const/16 v5, 0x400

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v5

    .line 67
    :goto_3
    const v5, 0x16000

    .line 68
    .line 69
    .line 70
    or-int/2addr v0, v5

    .line 71
    move-object/from16 v7, p6

    .line 72
    .line 73
    invoke-virtual {v10, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    const/high16 v5, 0x100000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/high16 v5, 0x80000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v5

    .line 85
    const/high16 v5, 0x6c00000

    .line 86
    .line 87
    or-int/2addr v0, v5

    .line 88
    const v5, 0x2492493

    .line 89
    .line 90
    .line 91
    and-int/2addr v5, v0

    .line 92
    const v6, 0x2492492

    .line 93
    .line 94
    .line 95
    if-eq v5, v6, :cond_7

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/4 v5, 0x0

    .line 100
    :goto_5
    and-int/lit8 v6, v0, 0x1

    .line 101
    .line 102
    invoke-virtual {v10, v6, v5}, Lag1;->N(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_e

    .line 107
    .line 108
    invoke-virtual {v10}, Lag1;->S()V

    .line 109
    .line 110
    .line 111
    and-int/lit8 v5, v13, 0x1

    .line 112
    .line 113
    const/16 v6, 0xf

    .line 114
    .line 115
    const v8, -0x70001

    .line 116
    .line 117
    .line 118
    if-eqz v5, :cond_9

    .line 119
    .line 120
    invoke-virtual {v10}, Lag1;->x()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_8
    invoke-virtual {v10}, Lag1;->Q()V

    .line 128
    .line 129
    .line 130
    and-int/2addr v0, v8

    .line 131
    move/from16 v14, p4

    .line 132
    .line 133
    move-object/from16 v8, p5

    .line 134
    .line 135
    move-object/from16 v7, p7

    .line 136
    .line 137
    move v1, v0

    .line 138
    move-object v5, v4

    .line 139
    move-object/from16 v0, p1

    .line 140
    .line 141
    move-object v4, v2

    .line 142
    goto :goto_9

    .line 143
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 144
    .line 145
    sget-object v1, Lk75;->b:Lka0;

    .line 146
    .line 147
    goto :goto_7

    .line 148
    :cond_a
    move-object v1, v2

    .line 149
    :goto_7
    if-eqz v3, :cond_b

    .line 150
    .line 151
    sget-object v2, Lk75;->c:Lka0;

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_b
    move-object v2, v4

    .line 155
    :goto_8
    sget v3, Ll04;->b:F

    .line 156
    .line 157
    invoke-static {v10}, Lw80;->y(Lag1;)Ls64;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    or-int/lit8 v5, v6, 0x10

    .line 162
    .line 163
    new-instance v9, Lb32;

    .line 164
    .line 165
    invoke-direct {v9, v4, v5}, Lb32;-><init>(Ls64;I)V

    .line 166
    .line 167
    .line 168
    and-int/2addr v0, v8

    .line 169
    sget-object v4, Ll04;->a:Lds2;

    .line 170
    .line 171
    sget-object v5, Lkd2;->b:Lkd2;

    .line 172
    .line 173
    move v14, v3

    .line 174
    move-object v7, v4

    .line 175
    move-object v8, v9

    .line 176
    move-object v4, v1

    .line 177
    move v1, v0

    .line 178
    move-object v0, v5

    .line 179
    move-object v5, v2

    .line 180
    :goto_9
    invoke-virtual {v10}, Lag1;->q()V

    .line 181
    .line 182
    .line 183
    sget-object v2, Lnt1;->a:Lf54;

    .line 184
    .line 185
    invoke-static {v2, v10}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    sget-object v3, Lay3;->d:Lay3;

    .line 190
    .line 191
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 192
    .line 193
    invoke-static {v14, v9}, Lcw0;->b(FF)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-nez v9, :cond_d

    .line 198
    .line 199
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 200
    .line 201
    invoke-static {v14, v9}, Lcw0;->b(FF)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_c

    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_c
    move v9, v14

    .line 209
    goto :goto_b

    .line 210
    :cond_d
    :goto_a
    sget v9, Ll04;->b:F

    .line 211
    .line 212
    :goto_b
    shl-int/lit8 v11, v1, 0xc

    .line 213
    .line 214
    const/high16 v12, 0x380000

    .line 215
    .line 216
    and-int/2addr v12, v11

    .line 217
    const v15, 0x36c36

    .line 218
    .line 219
    .line 220
    or-int/2addr v12, v15

    .line 221
    const/high16 v15, 0x1c00000

    .line 222
    .line 223
    and-int/2addr v11, v15

    .line 224
    or-int/2addr v11, v12

    .line 225
    const/high16 v12, 0x30000000

    .line 226
    .line 227
    or-int/2addr v11, v12

    .line 228
    shr-int/2addr v1, v6

    .line 229
    and-int/lit16 v12, v1, 0x3fe

    .line 230
    .line 231
    move-object/from16 v1, p0

    .line 232
    .line 233
    move v6, v9

    .line 234
    move-object/from16 v9, p6

    .line 235
    .line 236
    invoke-static/range {v0 .. v12}, Leg;->a(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;Lag1;II)V

    .line 237
    .line 238
    .line 239
    move-object v2, v0

    .line 240
    move-object v3, v4

    .line 241
    move-object v4, v5

    .line 242
    move-object v6, v8

    .line 243
    move v5, v14

    .line 244
    move-object v8, v7

    .line 245
    goto :goto_c

    .line 246
    :cond_e
    invoke-virtual/range {p8 .. p8}, Lag1;->Q()V

    .line 247
    .line 248
    .line 249
    move/from16 v5, p4

    .line 250
    .line 251
    move-object/from16 v6, p5

    .line 252
    .line 253
    move-object/from16 v8, p7

    .line 254
    .line 255
    move-object v3, v2

    .line 256
    move-object/from16 v2, p1

    .line 257
    .line 258
    :goto_c
    invoke-virtual/range {p8 .. p8}, Lag1;->r()Lc33;

    .line 259
    .line 260
    .line 261
    move-result-object v11

    .line 262
    if-eqz v11, :cond_f

    .line 263
    .line 264
    new-instance v0, Lbg;

    .line 265
    .line 266
    move-object/from16 v1, p0

    .line 267
    .line 268
    move-object/from16 v7, p6

    .line 269
    .line 270
    move/from16 v10, p10

    .line 271
    .line 272
    move v9, v13

    .line 273
    invoke-direct/range {v0 .. v10}, Lbg;-><init>(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;II)V

    .line 274
    .line 275
    .line 276
    iput-object v0, v11, Lc33;->d:Ldf1;

    .line 277
    .line 278
    :cond_f
    return-void
.end method

.method public static final c(Lnd2;Ldq0;JJJJLka0;Lay3;Lay3;Lne1;Ldf1;Lka0;FLzr2;Lag1;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v9, p8

    move-object/from16 v15, p14

    move/from16 v0, p16

    move-object/from16 v5, p17

    move-object/from16 v6, p18

    sget-object v7, Lmj1;->z:Law;

    const v8, 0xe474a75

    .line 1
    invoke-virtual {v6, v8}, Lag1;->X(I)Lag1;

    invoke-virtual {v6, v1}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int v8, p19, v8

    invoke-virtual {v6, v2}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x20

    goto :goto_1

    :cond_1
    const/16 v12, 0x10

    :goto_1
    or-int/2addr v8, v12

    invoke-virtual {v6, v3, v4}, Lag1;->e(J)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x100

    goto :goto_2

    :cond_2
    const/16 v12, 0x80

    :goto_2
    or-int/2addr v8, v12

    move-wide/from16 v11, p4

    invoke-virtual {v6, v11, v12}, Lag1;->e(J)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x800

    goto :goto_3

    :cond_3
    const/16 v18, 0x400

    :goto_3
    or-int v8, v8, v18

    move-wide/from16 v13, p6

    invoke-virtual {v6, v13, v14}, Lag1;->e(J)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x4000

    goto :goto_4

    :cond_4
    const/16 v20, 0x2000

    :goto_4
    or-int v8, v8, v20

    invoke-virtual {v6, v9, v10}, Lag1;->e(J)Z

    move-result v20

    const/high16 v21, 0x10000

    const/high16 v22, 0x20000

    if-eqz v20, :cond_5

    move/from16 v20, v22

    goto :goto_5

    :cond_5
    move/from16 v20, v21

    :goto_5
    or-int v8, v8, v20

    move/from16 v20, v8

    move-object/from16 v8, p10

    invoke-virtual {v6, v8}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/high16 v23, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v23, 0x80000

    :goto_6
    or-int v20, v20, v23

    move-object/from16 v8, p11

    invoke-virtual {v6, v8}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v23

    const/high16 v24, 0x400000

    if-eqz v23, :cond_7

    const/high16 v23, 0x800000

    goto :goto_7

    :cond_7
    move/from16 v23, v24

    :goto_7
    or-int v20, v20, v23

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v25, 0x2000000

    const/high16 v26, 0x4000000

    if-eqz v8, :cond_8

    move/from16 v8, v26

    goto :goto_8

    :cond_8
    move/from16 v8, v25

    :goto_8
    or-int v8, v20, v8

    move/from16 v20, v8

    move-object/from16 v8, p12

    invoke-virtual {v6, v8}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const/high16 v27, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v27, 0x10000000

    :goto_9
    or-int v20, v20, v27

    invoke-virtual {v6, v7}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v16, 0x100

    goto :goto_a

    :cond_a
    const/16 v16, 0x80

    :goto_a
    const v7, 0x186c36

    or-int v7, v7, v16

    invoke-virtual {v6, v15}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v21, v22

    :cond_b
    or-int v7, v7, v21

    invoke-virtual {v6, v0}, Lag1;->c(F)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v24, 0x800000

    :cond_c
    or-int v7, v7, v24

    invoke-virtual {v6, v5}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v25, v26

    :cond_d
    or-int v7, v7, v25

    const v16, 0x12492493

    and-int v8, v20, v16

    const v11, 0x12492492

    if-ne v8, v11, :cond_f

    const v8, 0x2492493

    and-int/2addr v8, v7

    const v11, 0x2492492

    if-eq v8, v11, :cond_e

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v8, 0x1

    :goto_c
    and-int/lit8 v11, v20, 0x1

    invoke-virtual {v6, v11, v8}, Lag1;->N(IZ)Z

    move-result v8

    if-eqz v8, :cond_1a

    and-int/lit8 v8, v20, 0x70

    const/16 v11, 0x20

    if-eq v8, v11, :cond_10

    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    const/4 v8, 0x1

    :goto_d
    and-int/lit16 v11, v7, 0x380

    const/16 v12, 0x100

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    goto :goto_e

    :cond_11
    const/4 v11, 0x0

    :goto_e
    or-int/2addr v8, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v7

    const/high16 v12, 0x800000

    if-ne v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_f

    :cond_12
    const/4 v11, 0x0

    :goto_f
    or-int/2addr v8, v11

    .line 2
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    move-result-object v11

    .line 3
    sget-object v12, Lrb0;->a:Lbx3;

    if-nez v8, :cond_13

    if-ne v11, v12, :cond_14

    .line 4
    :cond_13
    new-instance v11, Ln04;

    invoke-direct {v11, v2, v0, v5}, Ln04;-><init>(Ldq0;FLzr2;)V

    .line 5
    invoke-virtual {v6, v11}, Lag1;->g0(Ljava/lang/Object;)V

    .line 6
    :cond_14
    check-cast v11, Ln04;

    move/from16 v16, v7

    .line 7
    iget-wide v7, v6, Lag1;->T:J

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    .line 9
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    move-result-object v8

    .line 10
    invoke-static {v6, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    move-result-object v0

    .line 11
    sget-object v18, Llb0;->c:Lkb0;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v1, Lkb0;->b:Lic0;

    .line 13
    invoke-virtual {v6}, Lag1;->Z()V

    .line 14
    iget-boolean v2, v6, Lag1;->S:Z

    if-eqz v2, :cond_15

    .line 15
    invoke-virtual {v6, v1}, Lag1;->k(Lne1;)V

    goto :goto_10

    .line 16
    :cond_15
    invoke-virtual {v6}, Lag1;->j0()V

    .line 17
    :goto_10
    sget-object v2, Lkb0;->f:Lfd;

    .line 18
    invoke-static {v2, v6, v11}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 19
    sget-object v11, Lkb0;->e:Lfd;

    .line 20
    invoke-static {v11, v6, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 22
    sget-object v8, Lkb0;->g:Lfd;

    .line 23
    invoke-static {v8, v6, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 24
    sget-object v7, Lkb0;->h:Ll9;

    .line 25
    invoke-static {v6, v7}, Lht4;->y(Lag1;Lpe1;)V

    .line 26
    sget-object v5, Lkb0;->d:Lfd;

    .line 27
    invoke-static {v5, v6, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 28
    const-string v0, "navigationIcon"

    invoke-static {v0}, Lon4;->E(Ljava/lang/String;)Lnd2;

    move-result-object v0

    sget v13, Leg;->b:F

    const/4 v14, 0x0

    const/16 v9, 0xe

    invoke-static {v0, v13, v14, v14, v9}, Lis0;->O(Lnd2;FFFI)Lnd2;

    move-result-object v0

    .line 29
    sget-object v10, Lmj1;->o:Lcw;

    move/from16 v18, v9

    const/4 v9, 0x0

    .line 30
    invoke-static {v10, v9}, Lqx;->d(Lcw;Z)Ldb2;

    move-result-object v14

    move-object/from16 v25, v10

    .line 31
    iget-wide v9, v6, Lag1;->T:J

    .line 32
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    .line 33
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    move-result-object v10

    .line 34
    invoke-static {v6, v0}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    move-result-object v0

    .line 35
    invoke-virtual {v6}, Lag1;->Z()V

    move-object/from16 v19, v12

    .line 36
    iget-boolean v12, v6, Lag1;->S:Z

    if-eqz v12, :cond_16

    .line 37
    invoke-virtual {v6, v1}, Lag1;->k(Lne1;)V

    goto :goto_11

    .line 38
    :cond_16
    invoke-virtual {v6}, Lag1;->j0()V

    .line 39
    :goto_11
    invoke-static {v2, v6, v14}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 40
    invoke-static {v11, v6, v10}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 41
    invoke-static {v9, v6, v8, v6, v7}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 42
    invoke-static {v5, v6, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lbg0;->a:Llc0;

    .line 44
    new-instance v9, Lt70;

    invoke-direct {v9, v3, v4}, Lt70;-><init>(J)V

    .line 45
    invoke-virtual {v0, v9}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v9

    shr-int/lit8 v10, v16, 0xc

    and-int/lit8 v10, v10, 0x70

    const/16 v12, 0x8

    or-int/2addr v10, v12

    .line 46
    invoke-static {v9, v15, v6, v10}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    const/4 v9, 0x1

    .line 47
    invoke-virtual {v6, v9}, Lag1;->p(Z)V

    const v9, 0x18598674

    .line 48
    invoke-virtual {v6, v9}, Lag1;->W(I)V

    .line 49
    const-string v9, "title"

    invoke-static {v9}, Lon4;->E(Ljava/lang/String;)Lnd2;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x2

    .line 50
    invoke-static {v9, v13, v10, v12}, Lis0;->M(Lnd2;FFI)Lnd2;

    move-result-object v9

    const v10, -0x17fced5a

    .line 51
    invoke-virtual {v6, v10}, Lag1;->W(I)V

    const/4 v10, 0x0

    .line 52
    invoke-virtual {v6, v10}, Lag1;->p(Z)V

    .line 53
    sget-object v10, Lkd2;->b:Lkd2;

    invoke-interface {v9, v10}, Lnd2;->c(Lnd2;)Lnd2;

    move-result-object v9

    .line 54
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v14, v19

    if-ne v10, v14, :cond_17

    .line 55
    new-instance v10, Lv;

    move-object/from16 v14, p13

    invoke-direct {v10, v12, v14}, Lv;-><init>(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v6, v10}, Lag1;->g0(Ljava/lang/Object;)V

    goto :goto_12

    :cond_17
    move-object/from16 v14, p13

    .line 57
    :goto_12
    check-cast v10, Lpe1;

    invoke-static {v9, v10}, Ln44;->q0(Lnd2;Lpe1;)Lnd2;

    move-result-object v9

    move-object/from16 v10, v25

    const/4 v12, 0x0

    .line 58
    invoke-static {v10, v12}, Lqx;->d(Lcw;Z)Ldb2;

    move-result-object v3

    .line 59
    iget-wide v14, v6, Lag1;->T:J

    .line 60
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    .line 61
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    move-result-object v12

    .line 62
    invoke-static {v6, v9}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    move-result-object v9

    .line 63
    invoke-virtual {v6}, Lag1;->Z()V

    .line 64
    iget-boolean v14, v6, Lag1;->S:Z

    if-eqz v14, :cond_18

    .line 65
    invoke-virtual {v6, v1}, Lag1;->k(Lne1;)V

    goto :goto_13

    .line 66
    :cond_18
    invoke-virtual {v6}, Lag1;->j0()V

    .line 67
    :goto_13
    invoke-static {v2, v6, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 68
    invoke-static {v11, v6, v12}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 69
    invoke-static {v4, v6, v8, v6, v7}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 70
    invoke-static {v5, v6, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    shr-int/lit8 v3, v20, 0x9

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v20, 0x12

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shr-int/lit8 v4, v20, 0xc

    and-int/lit16 v4, v4, 0x380

    or-int v21, v3, v4

    move-wide/from16 v16, p4

    move-object/from16 v19, p10

    move-object/from16 v18, p11

    move-object/from16 v20, v6

    .line 71
    invoke-static/range {v16 .. v21}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    const/4 v9, 0x1

    .line 72
    invoke-virtual {v6, v9}, Lag1;->p(Z)V

    const/4 v12, 0x0

    .line 73
    invoke-virtual {v6, v12}, Lag1;->p(Z)V

    .line 74
    const-string v3, "actionIcons"

    invoke-static {v3}, Lon4;->E(Ljava/lang/String;)Lnd2;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v9, 0x0

    invoke-static {v3, v9, v13, v9, v4}, Lis0;->O(Lnd2;FFFI)Lnd2;

    move-result-object v3

    .line 75
    invoke-static {v10, v12}, Lqx;->d(Lcw;Z)Ldb2;

    move-result-object v4

    .line 76
    iget-wide v9, v6, Lag1;->T:J

    .line 77
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    .line 78
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    move-result-object v10

    .line 79
    invoke-static {v6, v3}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    move-result-object v3

    .line 80
    invoke-virtual {v6}, Lag1;->Z()V

    .line 81
    iget-boolean v12, v6, Lag1;->S:Z

    if-eqz v12, :cond_19

    .line 82
    invoke-virtual {v6, v1}, Lag1;->k(Lne1;)V

    goto :goto_14

    .line 83
    :cond_19
    invoke-virtual {v6}, Lag1;->j0()V

    .line 84
    :goto_14
    invoke-static {v2, v6, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 85
    invoke-static {v11, v6, v10}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 86
    invoke-static {v9, v6, v8, v6, v7}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 87
    invoke-static {v5, v6, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 88
    new-instance v1, Lt70;

    move-wide/from16 v9, p8

    invoke-direct {v1, v9, v10}, Lt70;-><init>(J)V

    .line 89
    invoke-virtual {v0, v1}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, p15

    .line 90
    invoke-static {v0, v2, v6, v1}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    const/4 v0, 0x1

    .line 91
    invoke-virtual {v6, v0}, Lag1;->p(Z)V

    .line 92
    invoke-virtual {v6, v0}, Lag1;->p(Z)V

    goto :goto_15

    :cond_1a
    move-object/from16 v2, p15

    .line 93
    invoke-virtual {v6}, Lag1;->Q()V

    .line 94
    :goto_15
    invoke-virtual {v6}, Lag1;->r()Lc33;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v0

    new-instance v0, Ldg;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move-object/from16 v28, v1

    move-object/from16 v16, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Ldg;-><init>(Lnd2;Ldq0;JJJJLka0;Lay3;Lay3;Lne1;Ldf1;Lka0;FLzr2;I)V

    move-object/from16 v1, v28

    .line 95
    iput-object v0, v1, Lc33;->d:Ldf1;

    :cond_1b
    return-void
.end method
