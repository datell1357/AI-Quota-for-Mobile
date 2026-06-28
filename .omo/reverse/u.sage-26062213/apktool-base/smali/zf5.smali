.class public abstract Lzf5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lka0;

.field public static final b:Lka0;

.field public static final c:Lka0;

.field public static final d:Lka0;

.field public static final e:Lhv0;

.field public static final f:Lp93;

.field public static final g:[C


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsq;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lka0;

    .line 8
    .line 9
    const v2, 0x7c4fa44e

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lzf5;->a:Lka0;

    .line 17
    .line 18
    new-instance v0, Lsq;

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lka0;

    .line 25
    .line 26
    const v2, 0x2bb51fae

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lzf5;->b:Lka0;

    .line 33
    .line 34
    new-instance v0, Lsq;

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lka0;

    .line 41
    .line 42
    const v2, -0x6c001084

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lzf5;->c:Lka0;

    .line 49
    .line 50
    new-instance v0, Lsq;

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lka0;

    .line 58
    .line 59
    const v2, -0x41bfddcd

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lzf5;->d:Lka0;

    .line 66
    .line 67
    new-instance v0, Lhv0;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lzf5;->e:Lhv0;

    .line 73
    .line 74
    new-instance v0, Lp93;

    .line 75
    .line 76
    new-instance v1, Lo93;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Lp93;-><init>(Lo93;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lzf5;->f:Lp93;

    .line 85
    .line 86
    const/16 v0, 0x10

    .line 87
    .line 88
    new-array v0, v0, [C

    .line 89
    .line 90
    fill-array-data v0, :array_0

    .line 91
    .line 92
    .line 93
    sput-object v0, Lzf5;->g:[C

    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static final A(JLdh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lo20;

    .line 9
    .line 10
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1, p2}, Lo20;-><init>(ILdh0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lo20;->x()V

    .line 19
    .line 20
    .line 21
    const-wide v1, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long p2, p0, v1

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    iget-object p2, v0, Lo20;->r:Lhi0;

    .line 31
    .line 32
    invoke-static {p2}, Lzf5;->F(Lhi0;)Lhr0;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2, p0, p1, v0}, Lhr0;->z(JLo20;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object p1, Lri0;->n:Lri0;

    .line 44
    .line 45
    if-ne p0, p1, :cond_2

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final B(Lkx0;Lzh1;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Lkx0;->z()Leh;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Leh;->u()Lv20;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface/range {p0 .. p0}, Lkx0;->z()Leh;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lzh1;

    .line 18
    .line 19
    iget-object v8, v0, Lzh1;->a:Lbi1;

    .line 20
    .line 21
    iget-boolean v3, v0, Lzh1;->s:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-wide v9, v0, Lzh1;->h:J

    .line 27
    .line 28
    invoke-static {v2}, Lz8;->a(Lv20;)Landroid/graphics/Canvas;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    invoke-virtual {v11}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 33
    .line 34
    .line 35
    move-result v17

    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v17, :cond_4

    .line 38
    .line 39
    iget-wide v4, v0, Lzh1;->t:J

    .line 40
    .line 41
    const/16 v6, 0x20

    .line 42
    .line 43
    shr-long v12, v4, v6

    .line 44
    .line 45
    long-to-int v7, v12

    .line 46
    int-to-float v7, v7

    .line 47
    iget v12, v0, Lzh1;->v:I

    .line 48
    .line 49
    int-to-float v12, v12

    .line 50
    sub-float v12, v7, v12

    .line 51
    .line 52
    const-wide v18, 0xffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long v4, v4, v18

    .line 58
    .line 59
    long-to-int v4, v4

    .line 60
    int-to-float v4, v4

    .line 61
    iget v5, v0, Lzh1;->w:I

    .line 62
    .line 63
    int-to-float v5, v5

    .line 64
    sub-float v13, v4, v5

    .line 65
    .line 66
    iget-wide v14, v0, Lzh1;->u:J

    .line 67
    .line 68
    move/from16 p0, v6

    .line 69
    .line 70
    move v5, v7

    .line 71
    shr-long v6, v14, p0

    .line 72
    .line 73
    long-to-int v6, v6

    .line 74
    int-to-float v6, v6

    .line 75
    add-float v7, v5, v6

    .line 76
    .line 77
    iget v5, v0, Lzh1;->x:I

    .line 78
    .line 79
    int-to-float v5, v5

    .line 80
    add-float/2addr v7, v5

    .line 81
    and-long v5, v14, v18

    .line 82
    .line 83
    long-to-int v5, v5

    .line 84
    int-to-float v5, v5

    .line 85
    add-float/2addr v4, v5

    .line 86
    iget v5, v0, Lzh1;->y:I

    .line 87
    .line 88
    int-to-float v5, v5

    .line 89
    add-float v15, v4, v5

    .line 90
    .line 91
    invoke-interface {v8}, Lbi1;->c()F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-interface {v8}, Lbi1;->A()Low;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-interface {v8}, Lbi1;->N()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    const/high16 v14, 0x3f800000    # 1.0f

    .line 104
    .line 105
    cmpg-float v14, v4, v14

    .line 106
    .line 107
    if-ltz v14, :cond_2

    .line 108
    .line 109
    const/4 v14, 0x3

    .line 110
    if-ne v6, v14, :cond_2

    .line 111
    .line 112
    if-nez v5, :cond_2

    .line 113
    .line 114
    invoke-interface {v8}, Lbi1;->x()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-ne v14, v3, :cond_1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    :goto_0
    iget-object v14, v0, Lzh1;->p:Llb;

    .line 126
    .line 127
    if-nez v14, :cond_3

    .line 128
    .line 129
    invoke-static {}, Lon4;->e()Llb;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    iput-object v14, v0, Lzh1;->p:Llb;

    .line 134
    .line 135
    :cond_3
    invoke-virtual {v14, v4}, Llb;->d(F)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v6}, Llb;->e(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14, v5}, Llb;->g(Low;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v14, Llb;->o:Ljava/lang/Object;

    .line 145
    .line 146
    move-object/from16 v16, v4

    .line 147
    .line 148
    check-cast v16, Landroid/graphics/Paint;

    .line 149
    .line 150
    move v14, v7

    .line 151
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v8}, Lbi1;->F()Landroid/graphics/Matrix;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget v5, v0, Lzh1;->v:I

    .line 162
    .line 163
    int-to-float v5, v5

    .line 164
    iget v6, v0, Lzh1;->w:I

    .line 165
    .line 166
    int-to-float v6, v6

    .line 167
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 171
    .line 172
    .line 173
    iget-wide v4, v0, Lzh1;->h:J

    .line 174
    .line 175
    iget v6, v0, Lzh1;->v:I

    .line 176
    .line 177
    int-to-float v6, v6

    .line 178
    iget v7, v0, Lzh1;->w:I

    .line 179
    .line 180
    int-to-float v7, v7

    .line 181
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    int-to-long v12, v6

    .line 186
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    int-to-long v6, v6

    .line 191
    shl-long v12, v12, p0

    .line 192
    .line 193
    and-long v6, v6, v18

    .line 194
    .line 195
    or-long/2addr v6, v12

    .line 196
    invoke-static {v4, v5, v6, v7}, Lgo2;->d(JJ)J

    .line 197
    .line 198
    .line 199
    move-result-wide v4

    .line 200
    iput-wide v4, v0, Lzh1;->h:J

    .line 201
    .line 202
    :cond_4
    invoke-virtual {v0}, Lzh1;->a()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v8}, Lbi1;->K()Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_5

    .line 210
    .line 211
    :try_start_0
    iget-object v4, v0, Lzh1;->a:Lbi1;

    .line 212
    .line 213
    iget-object v5, v0, Lzh1;->b:Las0;

    .line 214
    .line 215
    iget-object v6, v0, Lzh1;->c:Lhy1;

    .line 216
    .line 217
    iget-object v7, v0, Lzh1;->e:Lc8;

    .line 218
    .line 219
    invoke-interface {v4, v5, v6, v0, v7}, Lbi1;->z(Las0;Lhy1;Lzh1;Lc8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .line 221
    .line 222
    :catchall_0
    :cond_5
    invoke-interface {v8}, Lbi1;->J()F

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    const/4 v5, 0x0

    .line 227
    cmpl-float v4, v4, v5

    .line 228
    .line 229
    const/4 v12, 0x0

    .line 230
    if-lez v4, :cond_6

    .line 231
    .line 232
    move v13, v3

    .line 233
    goto :goto_2

    .line 234
    :cond_6
    move v13, v12

    .line 235
    :goto_2
    if-eqz v13, :cond_7

    .line 236
    .line 237
    invoke-interface {v2}, Lv20;->p()V

    .line 238
    .line 239
    .line 240
    :cond_7
    if-nez v17, :cond_8

    .line 241
    .line 242
    iget-boolean v4, v0, Lzh1;->A:Z

    .line 243
    .line 244
    if-eqz v4, :cond_8

    .line 245
    .line 246
    move v14, v3

    .line 247
    goto :goto_3

    .line 248
    :cond_8
    move v14, v12

    .line 249
    :goto_3
    if-eqz v14, :cond_d

    .line 250
    .line 251
    invoke-interface {v2}, Lv20;->j()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lzh1;->d()Lfl4;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    instance-of v5, v4, Llr2;

    .line 259
    .line 260
    if-eqz v5, :cond_9

    .line 261
    .line 262
    check-cast v4, Llr2;

    .line 263
    .line 264
    iget-object v4, v4, Llr2;->x:Ll33;

    .line 265
    .line 266
    move v5, v3

    .line 267
    iget v3, v4, Ll33;->a:F

    .line 268
    .line 269
    iget v6, v4, Ll33;->b:F

    .line 270
    .line 271
    move v7, v5

    .line 272
    iget v5, v4, Ll33;->c:F

    .line 273
    .line 274
    iget v4, v4, Ll33;->d:F

    .line 275
    .line 276
    move v15, v7

    .line 277
    const/4 v7, 0x1

    .line 278
    move/from16 v20, v6

    .line 279
    .line 280
    move v6, v4

    .line 281
    move/from16 v4, v20

    .line 282
    .line 283
    invoke-interface/range {v2 .. v7}, Lv20;->e(FFFFI)V

    .line 284
    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_9
    move v15, v3

    .line 288
    instance-of v3, v4, Lmr2;

    .line 289
    .line 290
    if-eqz v3, :cond_b

    .line 291
    .line 292
    iget-object v3, v0, Lzh1;->m:Lsb;

    .line 293
    .line 294
    if-eqz v3, :cond_a

    .line 295
    .line 296
    iget-object v5, v3, Lsb;->a:Landroid/graphics/Path;

    .line 297
    .line 298
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_a
    invoke-static {}, Lub;->a()Lsb;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    iput-object v3, v0, Lzh1;->m:Lsb;

    .line 307
    .line 308
    :goto_4
    check-cast v4, Lmr2;

    .line 309
    .line 310
    iget-object v4, v4, Lmr2;->x:Lka3;

    .line 311
    .line 312
    invoke-static {v3, v4}, Lsb;->b(Lsb;Lka3;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v2, v3}, Lv20;->q(Lsb;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_b
    instance-of v3, v4, Lkr2;

    .line 320
    .line 321
    if-eqz v3, :cond_c

    .line 322
    .line 323
    check-cast v4, Lkr2;

    .line 324
    .line 325
    iget-object v3, v4, Lkr2;->x:Lsb;

    .line 326
    .line 327
    invoke-interface {v2, v3}, Lv20;->q(Lsb;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_c
    invoke-static {}, Lp61;->x()V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :cond_d
    move v15, v3

    .line 336
    :goto_5
    if-eqz v1, :cond_13

    .line 337
    .line 338
    iget-object v1, v1, Lzh1;->r:Lic;

    .line 339
    .line 340
    iget-boolean v3, v1, Lic;->a:Z

    .line 341
    .line 342
    if-nez v3, :cond_e

    .line 343
    .line 344
    const-string v3, "Only add dependencies during a tracking"

    .line 345
    .line 346
    invoke-static {v3}, Lzq1;->a(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_e
    iget-object v3, v1, Lic;->d:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v3, Llg2;

    .line 352
    .line 353
    const/4 v4, 0x0

    .line 354
    if-eqz v3, :cond_f

    .line 355
    .line 356
    invoke-virtual {v3, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_f
    iget-object v3, v1, Lic;->b:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v3, Lzh1;

    .line 363
    .line 364
    if-eqz v3, :cond_10

    .line 365
    .line 366
    sget-object v3, Lud3;->a:Llg2;

    .line 367
    .line 368
    new-instance v3, Llg2;

    .line 369
    .line 370
    invoke-direct {v3}, Llg2;-><init>()V

    .line 371
    .line 372
    .line 373
    iget-object v5, v1, Lic;->b:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v5, Lzh1;

    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v5}, Llg2;->a(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    iput-object v3, v1, Lic;->d:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v4, v1, Lic;->b:Ljava/lang/Object;

    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_10
    iput-object v0, v1, Lic;->b:Ljava/lang/Object;

    .line 392
    .line 393
    :goto_6
    iget-object v3, v1, Lic;->e:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v3, Llg2;

    .line 396
    .line 397
    if-eqz v3, :cond_11

    .line 398
    .line 399
    invoke-virtual {v3, v0}, Llg2;->l(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    xor-int/lit8 v3, v1, 0x1

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_11
    iget-object v3, v1, Lic;->c:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v3, Lzh1;

    .line 409
    .line 410
    if-eq v3, v0, :cond_12

    .line 411
    .line 412
    move v3, v15

    .line 413
    goto :goto_7

    .line 414
    :cond_12
    iput-object v4, v1, Lic;->c:Ljava/lang/Object;

    .line 415
    .line 416
    move v3, v12

    .line 417
    :goto_7
    if-eqz v3, :cond_13

    .line 418
    .line 419
    iget v1, v0, Lzh1;->q:I

    .line 420
    .line 421
    add-int/2addr v1, v15

    .line 422
    iput v1, v0, Lzh1;->q:I

    .line 423
    .line 424
    :cond_13
    move-object v1, v2

    .line 425
    check-cast v1, Ly8;

    .line 426
    .line 427
    iget-object v1, v1, Ly8;->a:Landroid/graphics/Canvas;

    .line 428
    .line 429
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_15

    .line 434
    .line 435
    iget-object v1, v0, Lzh1;->o:Lx20;

    .line 436
    .line 437
    if-nez v1, :cond_14

    .line 438
    .line 439
    new-instance v1, Lx20;

    .line 440
    .line 441
    invoke-direct {v1}, Lx20;-><init>()V

    .line 442
    .line 443
    .line 444
    iput-object v1, v0, Lzh1;->o:Lx20;

    .line 445
    .line 446
    :cond_14
    iget-object v3, v1, Lx20;->o:Leh;

    .line 447
    .line 448
    iget-object v4, v0, Lzh1;->b:Las0;

    .line 449
    .line 450
    iget-object v5, v0, Lzh1;->c:Lhy1;

    .line 451
    .line 452
    iget-wide v6, v0, Lzh1;->u:J

    .line 453
    .line 454
    invoke-static {v6, v7}, Lse0;->H(J)J

    .line 455
    .line 456
    .line 457
    move-result-wide v6

    .line 458
    invoke-virtual {v3}, Leh;->v()Las0;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-virtual {v3}, Leh;->x()Lhy1;

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 467
    .line 468
    .line 469
    move-result-object v15

    .line 470
    move/from16 p0, v13

    .line 471
    .line 472
    move/from16 v16, v14

    .line 473
    .line 474
    invoke-virtual {v3}, Leh;->z()J

    .line 475
    .line 476
    .line 477
    move-result-wide v13

    .line 478
    move-object/from16 v18, v11

    .line 479
    .line 480
    iget-object v11, v3, Leh;->p:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v11, Lzh1;

    .line 483
    .line 484
    invoke-virtual {v3, v4}, Leh;->I(Las0;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v5}, Leh;->J(Lhy1;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3, v2}, Leh;->H(Lv20;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v3, v6, v7}, Leh;->K(J)V

    .line 494
    .line 495
    .line 496
    iput-object v0, v3, Leh;->p:Ljava/lang/Object;

    .line 497
    .line 498
    invoke-interface {v2}, Lv20;->j()V

    .line 499
    .line 500
    .line 501
    :try_start_1
    invoke-virtual {v0, v1}, Lzh1;->c(Lkx0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    .line 503
    .line 504
    invoke-interface {v2}, Lv20;->h()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v8}, Leh;->I(Las0;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v12}, Leh;->J(Lhy1;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3, v15}, Leh;->H(Lv20;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v13, v14}, Leh;->K(J)V

    .line 517
    .line 518
    .line 519
    iput-object v11, v3, Leh;->p:Ljava/lang/Object;

    .line 520
    .line 521
    goto :goto_8

    .line 522
    :catchall_1
    move-exception v0

    .line 523
    invoke-interface {v2}, Lv20;->h()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3, v8}, Leh;->I(Las0;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v12}, Leh;->J(Lhy1;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v15}, Leh;->H(Lv20;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v13, v14}, Leh;->K(J)V

    .line 536
    .line 537
    .line 538
    iput-object v11, v3, Leh;->p:Ljava/lang/Object;

    .line 539
    .line 540
    throw v0

    .line 541
    :cond_15
    move-object/from16 v18, v11

    .line 542
    .line 543
    move/from16 p0, v13

    .line 544
    .line 545
    move/from16 v16, v14

    .line 546
    .line 547
    invoke-interface {v8, v2}, Lbi1;->v(Lv20;)V

    .line 548
    .line 549
    .line 550
    :goto_8
    if-eqz v16, :cond_16

    .line 551
    .line 552
    invoke-interface {v2}, Lv20;->h()V

    .line 553
    .line 554
    .line 555
    :cond_16
    if-eqz p0, :cond_17

    .line 556
    .line 557
    invoke-interface {v2}, Lv20;->l()V

    .line 558
    .line 559
    .line 560
    :cond_17
    if-nez v17, :cond_18

    .line 561
    .line 562
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Canvas;->restore()V

    .line 563
    .line 564
    .line 565
    :cond_18
    iput-wide v9, v0, Lzh1;->h:J

    .line 566
    .line 567
    return-void
.end method

.method public static final C(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static final D(Lgy1;)Lgy1;
    .locals 2

    .line 1
    invoke-interface {p0}, Lgy1;->j()Lgy1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    move-object v1, v0

    .line 6
    move-object v0, p0

    .line 7
    move-object p0, v1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lgy1;->j()Lgy1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of p0, v0, Lmm2;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    move-object p0, v0

    .line 20
    check-cast p0, Lmm2;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_1
    if-nez p0, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    iget-object v0, p0, Lmm2;->H:Lmm2;

    .line 28
    .line 29
    :goto_2
    move-object v1, v0

    .line 30
    move-object v0, p0

    .line 31
    move-object p0, v1

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lmm2;->H:Lmm2;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    return-object v0
.end method

.method public static E(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ls73;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0}, Ls73;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lt73;->c:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    sget-object v3, Lt73;->b:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lez v5, :cond_3

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lr73;

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    iget-object v6, v5, Lr73;->b:Landroid/content/res/Configuration;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    iget v6, v5, Lr73;->c:I

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 65
    .line 66
    iget v6, v5, Lr73;->c:I

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-ne v6, v7, :cond_2

    .line 73
    .line 74
    :cond_1
    iget-object v3, v5, Lr73;->a:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    monitor-exit v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    move-object v3, v4

    .line 83
    :goto_1
    if-eqz v3, :cond_4

    .line 84
    .line 85
    return-object v3

    .line 86
    :cond_4
    sget-object v2, Lt73;->a:Ljava/lang/ThreadLocal;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/util/TypedValue;

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    new-instance v3, Landroid/util/TypedValue;

    .line 97
    .line 98
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 106
    .line 107
    .line 108
    iget v2, v3, Landroid/util/TypedValue;->type:I

    .line 109
    .line 110
    const/16 v3, 0x1c

    .line 111
    .line 112
    if-lt v2, v3, :cond_6

    .line 113
    .line 114
    const/16 v3, 0x1f

    .line 115
    .line 116
    if-gt v2, v3, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :try_start_1
    invoke-static {v0, v2, p0}, Lf80;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const-string v3, "ResourcesCompat"

    .line 130
    .line 131
    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 132
    .line 133
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    :goto_2
    if-eqz v4, :cond_8

    .line 137
    .line 138
    sget-object v2, Lt73;->c:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v2

    .line 141
    :try_start_2
    sget-object v0, Lt73;->b:Ljava/util/WeakHashMap;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroid/util/SparseArray;

    .line 148
    .line 149
    if-nez v3, :cond_7

    .line 150
    .line 151
    new-instance v3, Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    new-instance v0, Lr73;

    .line 163
    .line 164
    iget-object v1, v1, Ls73;->a:Landroid/content/res/Resources;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v4, v1, p0}, Lr73;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    monitor-exit v2

    .line 177
    goto :goto_5

    .line 178
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    throw p0

    .line 180
    :cond_8
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :goto_5
    return-object v4

    .line 185
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    throw p0
.end method

.method public static final F(Lhi0;)Lhr0;
    .locals 1

    .line 1
    sget-object v0, Lw13;->s:Lw13;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of v0, p0, Lhr0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lhr0;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lro0;->a:Lhr0;

    .line 18
    .line 19
    :cond_1
    return-object p0
.end method

.method public static G(Landroid/widget/EdgeEffect;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Loy0;->b(Landroid/widget/EdgeEffect;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static H(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lo73;->b()Lo73;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lo73;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final I(Lbh3;Loh3;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lbh3;->n:Lkg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_0
    return-object p0
.end method

.method public static final J(III)I
    .locals 1

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    add-int/2addr v0, p2

    .line 12
    :goto_0
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    add-int/2addr p0, p2

    .line 17
    :goto_1
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    add-int/2addr v0, p2

    .line 23
    :goto_2
    sub-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_4
    if-gez p2, :cond_9

    .line 26
    .line 27
    if-gt p0, p1, :cond_5

    .line 28
    .line 29
    :goto_3
    return p1

    .line 30
    :cond_5
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_6

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_6
    add-int/2addr p0, p2

    .line 36
    :goto_4
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_7

    .line 39
    .line 40
    goto :goto_5

    .line 41
    :cond_7
    add-int/2addr v0, p2

    .line 42
    :goto_5
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_8

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_8
    add-int/2addr p0, p2

    .line 48
    :goto_6
    add-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :cond_9
    const-string p0, "Step is zero."

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public static final K(Ly84;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static L(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq p0, v1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-eq p0, v2, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    const-string v0, "type needs to be >= FIRST and <= LAST, type="

    .line 42
    .line 43
    invoke-static {p0, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_1
    return v1

    .line 53
    :cond_2
    const/4 p0, 0x7

    .line 54
    return p0

    .line 55
    :cond_3
    const/4 p0, 0x6

    .line 56
    return p0

    .line 57
    :cond_4
    const/4 p0, 0x5

    .line 58
    return p0

    .line 59
    :cond_5
    return v0

    .line 60
    :cond_6
    const/4 p0, 0x3

    .line 61
    return p0

    .line 62
    :cond_7
    return v1

    .line 63
    :cond_8
    return v0

    .line 64
    :cond_9
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public static final M([F)[F
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    aget v4, v0, v3

    .line 8
    .line 9
    const/4 v5, 0x6

    .line 10
    aget v6, v0, v5

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    aget v8, v0, v7

    .line 14
    .line 15
    const/4 v9, 0x4

    .line 16
    aget v10, v0, v9

    .line 17
    .line 18
    const/4 v11, 0x7

    .line 19
    aget v12, v0, v11

    .line 20
    .line 21
    const/4 v13, 0x2

    .line 22
    aget v14, v0, v13

    .line 23
    .line 24
    const/4 v15, 0x5

    .line 25
    aget v16, v0, v15

    .line 26
    .line 27
    const/16 v17, 0x8

    .line 28
    .line 29
    aget v18, v0, v17

    .line 30
    .line 31
    mul-float v19, v10, v18

    .line 32
    .line 33
    mul-float v20, v12, v16

    .line 34
    .line 35
    sub-float v19, v19, v20

    .line 36
    .line 37
    mul-float v20, v12, v14

    .line 38
    .line 39
    mul-float v21, v8, v18

    .line 40
    .line 41
    sub-float v20, v20, v21

    .line 42
    .line 43
    mul-float v21, v8, v16

    .line 44
    .line 45
    mul-float v22, v10, v14

    .line 46
    .line 47
    sub-float v21, v21, v22

    .line 48
    .line 49
    mul-float v22, v2, v19

    .line 50
    .line 51
    mul-float v23, v4, v20

    .line 52
    .line 53
    add-float v23, v23, v22

    .line 54
    .line 55
    mul-float v22, v6, v21

    .line 56
    .line 57
    add-float v22, v22, v23

    .line 58
    .line 59
    array-length v0, v0

    .line 60
    new-array v0, v0, [F

    .line 61
    .line 62
    div-float v19, v19, v22

    .line 63
    .line 64
    aput v19, v0, v1

    .line 65
    .line 66
    div-float v20, v20, v22

    .line 67
    .line 68
    aput v20, v0, v7

    .line 69
    .line 70
    div-float v21, v21, v22

    .line 71
    .line 72
    aput v21, v0, v13

    .line 73
    .line 74
    mul-float v1, v6, v16

    .line 75
    .line 76
    mul-float v7, v4, v18

    .line 77
    .line 78
    sub-float/2addr v1, v7

    .line 79
    div-float v1, v1, v22

    .line 80
    .line 81
    aput v1, v0, v3

    .line 82
    .line 83
    mul-float v18, v18, v2

    .line 84
    .line 85
    mul-float v1, v6, v14

    .line 86
    .line 87
    sub-float v18, v18, v1

    .line 88
    .line 89
    div-float v18, v18, v22

    .line 90
    .line 91
    aput v18, v0, v9

    .line 92
    .line 93
    mul-float/2addr v14, v4

    .line 94
    mul-float v16, v16, v2

    .line 95
    .line 96
    sub-float v14, v14, v16

    .line 97
    .line 98
    div-float v14, v14, v22

    .line 99
    .line 100
    aput v14, v0, v15

    .line 101
    .line 102
    mul-float v1, v4, v12

    .line 103
    .line 104
    mul-float v3, v6, v10

    .line 105
    .line 106
    sub-float/2addr v1, v3

    .line 107
    div-float v1, v1, v22

    .line 108
    .line 109
    aput v1, v0, v5

    .line 110
    .line 111
    mul-float/2addr v6, v8

    .line 112
    mul-float/2addr v12, v2

    .line 113
    sub-float/2addr v6, v12

    .line 114
    div-float v6, v6, v22

    .line 115
    .line 116
    aput v6, v0, v11

    .line 117
    .line 118
    mul-float/2addr v2, v10

    .line 119
    mul-float/2addr v4, v8

    .line 120
    sub-float/2addr v2, v4

    .line 121
    div-float v2, v2, v22

    .line 122
    .line 123
    aput v2, v0, v17

    .line 124
    .line 125
    return-object v0
.end method

.method public static final N(ILjava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    add-int/lit8 v0, p0, 0x2

    .line 5
    .line 6
    if-ge v0, p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/16 v1, 0x25

    .line 13
    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    add-int/2addr p0, p2

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Lfi4;->j(C)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Lfi4;->j(C)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eq p0, v1, :cond_0

    .line 38
    .line 39
    return p2

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static final O(Lza3;IIIIILgb2;Ljava/util/List;[Ldv2;II[II)Leb2;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move/from16 v9, p10

    .line 12
    .line 13
    int-to-long v5, v3

    .line 14
    sub-int v7, v9, p9

    .line 15
    .line 16
    new-array v8, v7, [I

    .line 17
    .line 18
    move/from16 v12, p9

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    :goto_0
    if-ge v12, v9, :cond_5

    .line 29
    .line 30
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v18

    .line 34
    move-object/from16 v11, v18

    .line 35
    .line 36
    check-cast v11, Lya2;

    .line 37
    .line 38
    invoke-static {v11}, Lk75;->B(Lya2;)Lab3;

    .line 39
    .line 40
    .line 41
    move-result-object v18

    .line 42
    invoke-static/range {v18 .. v18}, Lk75;->C(Lab3;)F

    .line 43
    .line 44
    .line 45
    move-result v18

    .line 46
    cmpl-float v19, v18, v17

    .line 47
    .line 48
    if-lez v19, :cond_0

    .line 49
    .line 50
    add-float v16, v16, v18

    .line 51
    .line 52
    add-int/lit8 v13, v13, 0x1

    .line 53
    .line 54
    move-wide/from16 v19, v5

    .line 55
    .line 56
    move/from16 v21, v12

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_0
    sub-int v15, v1, v14

    .line 60
    .line 61
    aget-object v18, p8, v12

    .line 62
    .line 63
    move-wide/from16 v19, v5

    .line 64
    .line 65
    if-nez v18, :cond_3

    .line 66
    .line 67
    const v5, 0x7fffffff

    .line 68
    .line 69
    .line 70
    if-ne v1, v5, :cond_1

    .line 71
    .line 72
    move/from16 v21, v12

    .line 73
    .line 74
    move/from16 v22, v13

    .line 75
    .line 76
    const v5, 0x7fffffff

    .line 77
    .line 78
    .line 79
    :goto_1
    const/4 v6, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    move/from16 v21, v12

    .line 82
    .line 83
    move/from16 v22, v13

    .line 84
    .line 85
    if-gez v15, :cond_2

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v5, v15

    .line 90
    goto :goto_1

    .line 91
    :goto_2
    invoke-interface {v0, v6, v5, v2, v6}, Lza3;->d(IIIZ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    invoke-interface {v11, v12, v13}, Lya2;->e(J)Ldv2;

    .line 96
    .line 97
    .line 98
    move-result-object v18

    .line 99
    :goto_3
    move-object/from16 v5, v18

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_3
    move/from16 v21, v12

    .line 103
    .line 104
    move/from16 v22, v13

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :goto_4
    invoke-interface {v0, v5}, Lza3;->h(Ldv2;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-interface {v0, v5}, Lza3;->e(Ldv2;)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    sub-int v12, v21, p9

    .line 116
    .line 117
    aput v6, v8, v12

    .line 118
    .line 119
    sub-int v12, v15, v6

    .line 120
    .line 121
    if-gez v12, :cond_4

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    :cond_4
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    add-int/2addr v6, v15

    .line 129
    add-int/2addr v14, v6

    .line 130
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    aput-object v5, p8, v21

    .line 135
    .line 136
    move/from16 v13, v22

    .line 137
    .line 138
    :goto_5
    add-int/lit8 v12, v21, 0x1

    .line 139
    .line 140
    move-wide/from16 v5, v19

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    move-wide/from16 v19, v5

    .line 144
    .line 145
    move/from16 v22, v13

    .line 146
    .line 147
    if-nez v22, :cond_6

    .line 148
    .line 149
    sub-int/2addr v14, v15

    .line 150
    const/4 v6, 0x0

    .line 151
    goto/16 :goto_e

    .line 152
    .line 153
    :cond_6
    const v5, 0x7fffffff

    .line 154
    .line 155
    .line 156
    if-eq v1, v5, :cond_7

    .line 157
    .line 158
    move v3, v1

    .line 159
    goto :goto_6

    .line 160
    :cond_7
    move/from16 v3, p1

    .line 161
    .line 162
    :goto_6
    const/4 v5, 0x1

    .line 163
    add-int/lit8 v13, v22, -0x1

    .line 164
    .line 165
    int-to-long v11, v13

    .line 166
    mul-long v11, v11, v19

    .line 167
    .line 168
    sub-int/2addr v3, v14

    .line 169
    int-to-long v5, v3

    .line 170
    sub-long/2addr v5, v11

    .line 171
    const-wide/16 v19, 0x0

    .line 172
    .line 173
    cmp-long v3, v5, v19

    .line 174
    .line 175
    if-gez v3, :cond_8

    .line 176
    .line 177
    move-wide/from16 v5, v19

    .line 178
    .line 179
    :cond_8
    long-to-float v3, v5

    .line 180
    div-float v3, v3, v16

    .line 181
    .line 182
    move/from16 v13, p9

    .line 183
    .line 184
    :goto_7
    if-ge v13, v9, :cond_9

    .line 185
    .line 186
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    check-cast v15, Lya2;

    .line 191
    .line 192
    invoke-static {v15}, Lk75;->B(Lya2;)Lab3;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    invoke-static {v15}, Lk75;->C(Lab3;)F

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    mul-float/2addr v15, v3

    .line 201
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    move-wide/from16 v19, v5

    .line 206
    .line 207
    int-to-long v5, v15

    .line 208
    sub-long v5, v19, v5

    .line 209
    .line 210
    add-int/lit8 v13, v13, 0x1

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_9
    move-wide/from16 v19, v5

    .line 214
    .line 215
    move/from16 v15, p9

    .line 216
    .line 217
    move v13, v10

    .line 218
    const/4 v10, 0x0

    .line 219
    :goto_8
    if-ge v15, v9, :cond_e

    .line 220
    .line 221
    aget-object v16, p8, v15

    .line 222
    .line 223
    if-nez v16, :cond_d

    .line 224
    .line 225
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    move-object/from16 v1, v16

    .line 230
    .line 231
    check-cast v1, Lya2;

    .line 232
    .line 233
    move/from16 v16, v3

    .line 234
    .line 235
    invoke-static {v1}, Lk75;->B(Lya2;)Lab3;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {v3}, Lk75;->C(Lab3;)F

    .line 240
    .line 241
    .line 242
    move-result v18

    .line 243
    cmpl-float v19, v18, v17

    .line 244
    .line 245
    if-lez v19, :cond_a

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_a
    const-string v19, "All weights <= 0 should have placeables"

    .line 249
    .line 250
    invoke-static/range {v19 .. v19}, Lyq1;->b(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_9
    invoke-static {v5, v6}, Ljava/lang/Long;->signum(J)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    move-wide/from16 v19, v5

    .line 258
    .line 259
    int-to-long v5, v4

    .line 260
    sub-long v5, v19, v5

    .line 261
    .line 262
    mul-float v18, v18, v16

    .line 263
    .line 264
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 265
    .line 266
    .line 267
    move-result v18

    .line 268
    add-int v4, v18, v4

    .line 269
    .line 270
    move-wide/from16 v19, v5

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v3, :cond_b

    .line 278
    .line 279
    iget-boolean v3, v3, Lab3;->b:Z

    .line 280
    .line 281
    goto :goto_a

    .line 282
    :cond_b
    const/4 v3, 0x1

    .line 283
    :goto_a
    const v5, 0x7fffffff

    .line 284
    .line 285
    .line 286
    if-eqz v3, :cond_c

    .line 287
    .line 288
    if-eq v6, v5, :cond_c

    .line 289
    .line 290
    move v3, v6

    .line 291
    :goto_b
    const/4 v4, 0x1

    .line 292
    goto :goto_c

    .line 293
    :cond_c
    const/4 v3, 0x0

    .line 294
    goto :goto_b

    .line 295
    :goto_c
    invoke-interface {v0, v3, v6, v2, v4}, Lza3;->d(IIIZ)J

    .line 296
    .line 297
    .line 298
    move-result-wide v5

    .line 299
    invoke-interface {v1, v5, v6}, Lya2;->e(J)Ldv2;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Lza3;->h(Ldv2;)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-interface {v0, v1}, Lza3;->e(Ldv2;)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    sub-int v6, v15, p9

    .line 312
    .line 313
    aput v3, v8, v6

    .line 314
    .line 315
    add-int/2addr v10, v3

    .line 316
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    aput-object v1, p8, v15

    .line 321
    .line 322
    move v13, v3

    .line 323
    move-wide/from16 v5, v19

    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_d
    move/from16 v16, v3

    .line 327
    .line 328
    move-wide/from16 v19, v5

    .line 329
    .line 330
    const/4 v4, 0x1

    .line 331
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 332
    .line 333
    move/from16 v1, p3

    .line 334
    .line 335
    move-object/from16 v4, p7

    .line 336
    .line 337
    move/from16 v3, v16

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :cond_e
    int-to-long v1, v10

    .line 341
    add-long/2addr v1, v11

    .line 342
    long-to-int v6, v1

    .line 343
    sub-int v1, p3, v14

    .line 344
    .line 345
    if-gez v6, :cond_f

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    :cond_f
    if-le v6, v1, :cond_10

    .line 349
    .line 350
    move v6, v1

    .line 351
    :cond_10
    move v10, v13

    .line 352
    :goto_e
    add-int/2addr v6, v14

    .line 353
    if-gez v6, :cond_11

    .line 354
    .line 355
    const/4 v6, 0x0

    .line 356
    :cond_11
    move/from16 v1, p1

    .line 357
    .line 358
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    move/from16 v1, p2

    .line 363
    .line 364
    const/4 v5, 0x0

    .line 365
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    new-array v3, v7, [I

    .line 374
    .line 375
    move-object/from16 v2, p6

    .line 376
    .line 377
    invoke-interface {v0, v4, v2, v8, v3}, Lza3;->b(ILgb2;[I[I)V

    .line 378
    .line 379
    .line 380
    move-object/from16 v1, p8

    .line 381
    .line 382
    move/from16 v8, p9

    .line 383
    .line 384
    move-object/from16 v6, p11

    .line 385
    .line 386
    move/from16 v7, p12

    .line 387
    .line 388
    invoke-interface/range {v0 .. v9}, Lza3;->j([Ldv2;Lgb2;[III[IIII)Leb2;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    return-object v0
.end method

.method public static final P([F[F)[F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    new-array v3, v2, [F

    .line 8
    .line 9
    array-length v4, v0

    .line 10
    if-ge v4, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    array-length v4, v1

    .line 14
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    :goto_0
    return-object v3

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    aget v4, v0, v2

    .line 19
    .line 20
    aget v5, v1, v2

    .line 21
    .line 22
    mul-float/2addr v4, v5

    .line 23
    const/4 v5, 0x3

    .line 24
    aget v6, v0, v5

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    aget v8, v1, v7

    .line 28
    .line 29
    mul-float v9, v6, v8

    .line 30
    .line 31
    add-float/2addr v9, v4

    .line 32
    const/4 v4, 0x6

    .line 33
    aget v10, v0, v4

    .line 34
    .line 35
    const/4 v11, 0x2

    .line 36
    aget v12, v1, v11

    .line 37
    .line 38
    mul-float v13, v10, v12

    .line 39
    .line 40
    add-float/2addr v13, v9

    .line 41
    aput v13, v3, v2

    .line 42
    .line 43
    aget v9, v0, v7

    .line 44
    .line 45
    aget v13, v1, v2

    .line 46
    .line 47
    mul-float/2addr v9, v13

    .line 48
    const/4 v14, 0x4

    .line 49
    aget v15, v0, v14

    .line 50
    .line 51
    mul-float/2addr v8, v15

    .line 52
    add-float/2addr v8, v9

    .line 53
    const/4 v9, 0x7

    .line 54
    aget v16, v0, v9

    .line 55
    .line 56
    mul-float v17, v16, v12

    .line 57
    .line 58
    add-float v17, v17, v8

    .line 59
    .line 60
    aput v17, v3, v7

    .line 61
    .line 62
    aget v8, v0, v11

    .line 63
    .line 64
    mul-float/2addr v8, v13

    .line 65
    const/4 v13, 0x5

    .line 66
    aget v17, v0, v13

    .line 67
    .line 68
    aget v18, v1, v7

    .line 69
    .line 70
    mul-float v18, v18, v17

    .line 71
    .line 72
    add-float v18, v18, v8

    .line 73
    .line 74
    const/16 v8, 0x8

    .line 75
    .line 76
    aget v19, v0, v8

    .line 77
    .line 78
    mul-float v12, v12, v19

    .line 79
    .line 80
    add-float v12, v12, v18

    .line 81
    .line 82
    aput v12, v3, v11

    .line 83
    .line 84
    aget v2, v0, v2

    .line 85
    .line 86
    aget v12, v1, v5

    .line 87
    .line 88
    mul-float/2addr v12, v2

    .line 89
    aget v18, v1, v14

    .line 90
    .line 91
    mul-float v6, v6, v18

    .line 92
    .line 93
    add-float/2addr v6, v12

    .line 94
    aget v12, v1, v13

    .line 95
    .line 96
    mul-float v20, v10, v12

    .line 97
    .line 98
    add-float v20, v20, v6

    .line 99
    .line 100
    aput v20, v3, v5

    .line 101
    .line 102
    aget v6, v0, v7

    .line 103
    .line 104
    aget v7, v1, v5

    .line 105
    .line 106
    mul-float v20, v6, v7

    .line 107
    .line 108
    mul-float v15, v15, v18

    .line 109
    .line 110
    add-float v15, v15, v20

    .line 111
    .line 112
    mul-float v18, v16, v12

    .line 113
    .line 114
    add-float v18, v18, v15

    .line 115
    .line 116
    aput v18, v3, v14

    .line 117
    .line 118
    aget v11, v0, v11

    .line 119
    .line 120
    mul-float/2addr v7, v11

    .line 121
    aget v15, v1, v14

    .line 122
    .line 123
    mul-float v17, v17, v15

    .line 124
    .line 125
    add-float v17, v17, v7

    .line 126
    .line 127
    mul-float v12, v12, v19

    .line 128
    .line 129
    add-float v12, v12, v17

    .line 130
    .line 131
    aput v12, v3, v13

    .line 132
    .line 133
    aget v7, v1, v4

    .line 134
    .line 135
    mul-float/2addr v2, v7

    .line 136
    aget v5, v0, v5

    .line 137
    .line 138
    aget v7, v1, v9

    .line 139
    .line 140
    mul-float/2addr v5, v7

    .line 141
    add-float/2addr v5, v2

    .line 142
    aget v2, v1, v8

    .line 143
    .line 144
    mul-float/2addr v10, v2

    .line 145
    add-float/2addr v10, v5

    .line 146
    aput v10, v3, v4

    .line 147
    .line 148
    aget v4, v1, v4

    .line 149
    .line 150
    mul-float/2addr v6, v4

    .line 151
    aget v5, v0, v14

    .line 152
    .line 153
    mul-float/2addr v5, v7

    .line 154
    add-float/2addr v5, v6

    .line 155
    mul-float v16, v16, v2

    .line 156
    .line 157
    add-float v16, v16, v5

    .line 158
    .line 159
    aput v16, v3, v9

    .line 160
    .line 161
    mul-float/2addr v11, v4

    .line 162
    aget v0, v0, v13

    .line 163
    .line 164
    aget v1, v1, v9

    .line 165
    .line 166
    mul-float/2addr v0, v1

    .line 167
    add-float/2addr v0, v11

    .line 168
    mul-float v19, v19, v2

    .line 169
    .line 170
    add-float v19, v19, v0

    .line 171
    .line 172
    aput v19, v3, v8

    .line 173
    .line 174
    return-object v3
.end method

.method public static final Q([F[F)[F
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    :goto_0
    return-object p1

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    aget v2, p1, v0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget v4, p1, v3

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    aget v6, p1, v5

    .line 20
    .line 21
    aget v7, p0, v0

    .line 22
    .line 23
    mul-float/2addr v7, v2

    .line 24
    aget v1, p0, v1

    .line 25
    .line 26
    mul-float/2addr v1, v4

    .line 27
    add-float/2addr v1, v7

    .line 28
    const/4 v7, 0x6

    .line 29
    aget v7, p0, v7

    .line 30
    .line 31
    mul-float/2addr v7, v6

    .line 32
    add-float/2addr v7, v1

    .line 33
    aput v7, p1, v0

    .line 34
    .line 35
    aget v0, p0, v3

    .line 36
    .line 37
    mul-float/2addr v0, v2

    .line 38
    const/4 v1, 0x4

    .line 39
    aget v1, p0, v1

    .line 40
    .line 41
    mul-float/2addr v1, v4

    .line 42
    add-float/2addr v1, v0

    .line 43
    const/4 v0, 0x7

    .line 44
    aget v0, p0, v0

    .line 45
    .line 46
    mul-float/2addr v0, v6

    .line 47
    add-float/2addr v0, v1

    .line 48
    aput v0, p1, v3

    .line 49
    .line 50
    aget v0, p0, v5

    .line 51
    .line 52
    mul-float/2addr v0, v2

    .line 53
    const/4 v1, 0x5

    .line 54
    aget v1, p0, v1

    .line 55
    .line 56
    mul-float/2addr v1, v4

    .line 57
    add-float/2addr v1, v0

    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    aget p0, p0, v0

    .line 61
    .line 62
    mul-float/2addr p0, v6

    .line 63
    add-float/2addr p0, v1

    .line 64
    aput p0, p1, v5

    .line 65
    .line 66
    return-object p1
.end method

.method public static R(Landroid/widget/EdgeEffect;FF)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Loy0;->c(Landroid/widget/EdgeEffect;FF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public static S(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 5

    .line 1
    invoke-static {p0}, Lzf5;->p(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/math/BigDecimal;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x2710

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 26
    .line 27
    const-string v1, "Number has unsupported scale: "

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static T(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_1
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x1

    .line 21
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move p2, p0

    .line 25
    :goto_1
    if-ge p2, p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v2, 0x2b

    .line 32
    .line 33
    const/16 v3, 0x25

    .line 34
    .line 35
    if-eq v0, v3, :cond_4

    .line 36
    .line 37
    if-ne v0, v2, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    :goto_2
    new-instance v0, Lsy;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0, p3, p2}, Lsy;->t0(ILjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :goto_3
    if-ge p2, p1, :cond_7

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Ljava/lang/String;->codePointAt(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-ne p0, v3, :cond_5

    .line 60
    .line 61
    add-int/lit8 v4, p2, 0x2

    .line 62
    .line 63
    if-ge v4, p1, :cond_5

    .line 64
    .line 65
    add-int/lit8 v5, p2, 0x1

    .line 66
    .line 67
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Lfi4;->j(C)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-static {v6}, Lfi4;->j(C)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, -0x1

    .line 84
    if-eq v5, v7, :cond_6

    .line 85
    .line 86
    if-eq v6, v7, :cond_6

    .line 87
    .line 88
    shl-int/lit8 p2, v5, 0x4

    .line 89
    .line 90
    add-int/2addr p2, v6

    .line 91
    invoke-virtual {v0, p2}, Lsy;->o0(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    add-int p2, p0, v4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    if-ne p0, v2, :cond_6

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    const/16 p0, 0x20

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Lsy;->o0(I)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p2, p2, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v0, p0}, Lsy;->v0(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    add-int/2addr p2, p0

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    invoke-virtual {v0}, Lsy;->V()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_8
    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static final U(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static V(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static W(J)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p0, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr p0, v2

    .line 16
    long-to-int p0, p0

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    cmpg-float p1, v1, p1

    .line 22
    .line 23
    const-string v1, ")"

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Lk75;->N(F)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "CornerRadius.circular("

    .line 36
    .line 37
    invoke-static {p1, p0, v1}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Lk75;->N(F)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {p0}, Lk75;->N(F)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "CornerRadius.elliptical("

    .line 59
    .line 60
    const-string v2, ", "

    .line 61
    .line 62
    invoke-static {v0, p1, v2, p0, v1}, Lxw1;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static X(Landroid/content/Context;Ly84;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    sget-object v1, Lez3;->a:Lra3;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Landroid/content/ComponentName;

    .line 33
    .line 34
    const-class v3, Lu/sage/widget/UsageWidgetProvider;

    .line 35
    .line 36
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    array-length v4, v2

    .line 52
    move v5, v0

    .line 53
    :goto_0
    if-ge v5, v4, :cond_1

    .line 54
    .line 55
    aget v6, v2, v5

    .line 56
    .line 57
    invoke-static {p0, v6}, Lc75;->G(Landroid/content/Context;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-static {v7, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    sget-object v7, Lez3;->a:Lra3;

    .line 72
    .line 73
    new-array v8, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v6, v0}, Lc75;->P(Landroid/content/Context;IZ)V

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v4, 0x1f

    .line 103
    .line 104
    if-ge v2, v4, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move v4, v0

    .line 111
    :goto_1
    if-ge v4, v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    check-cast v5, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    sget-object v6, Lez3;->a:Lra3;

    .line 126
    .line 127
    new-array v7, v0, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const v6, 0x7f0900e4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v5, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v1

    .line 146
    sget-object v4, Lez3;->a:Lra3;

    .line 147
    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    new-array v5, v0, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    new-instance v4, Landroid/os/Handler;

    .line 167
    .line 168
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    .line 174
    .line 175
    new-instance v5, Lh7;

    .line 176
    .line 177
    invoke-direct {v5, v1, v2, v3, p0}, Lh7;-><init>(JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    new-array p0, v0, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_3
    sget-object p0, Lez3;->a:Lra3;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    new-array p1, v0, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 210
    .line 211
    new-array p1, v0, [Ljava/lang/Object;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public static final Y(Lfe2;Lag1;)Lyq3;
    .locals 1

    .line 1
    sget-object v0, Lwa2;->a:Lis3;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lua2;

    .line 8
    .line 9
    iget-object p1, p1, Lua2;->d:Lee2;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_5

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p0, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    if-ne p0, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p0, Lee2;->g:Lyq3;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object p0, Lee2;->f:Lyq3;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p0, Lee2;->e:Lyq3;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object p0, Lee2;->d:Lyq3;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object p0, Lee2;->c:Lyq3;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object p0, Lee2;->b:Lyq3;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    return-object p0
.end method

.method public static final a(Ljava/lang/Object;Lpe1;Lag1;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lrb0;->a:Lbx3;

    .line 12
    .line 13
    if-ne v0, p0, :cond_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lfv0;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lfv0;-><init>(Lpe1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    check-cast v0, Lfv0;

    .line 24
    .line 25
    return-void
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;Lpe1;Lag1;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p3, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    or-int/2addr p0, p1

    .line 10
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lrb0;->a:Lbx3;

    .line 17
    .line 18
    if-ne p1, p0, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Lfv0;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lfv0;-><init>(Lpe1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    check-cast p1, Lfv0;

    .line 29
    .line 30
    return-void
.end method

.method public static final c(Ldf1;Lag1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lag1;->R:Lhi0;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lrb0;->a:Lbx3;

    .line 14
    .line 15
    if-ne v1, p2, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v1, Lyx1;

    .line 18
    .line 19
    invoke-direct {v1, v0, p0}, Lyx1;-><init>(Lhi0;Ldf1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    check-cast v1, Lyx1;

    .line 26
    .line 27
    return-void
.end method

.method public static final d(Ljava/lang/Object;Ljava/lang/Object;Ldf1;Lag1;)V
    .locals 1

    .line 1
    iget-object v0, p3, Lag1;->R:Lhi0;

    .line 2
    .line 3
    invoke-virtual {p3, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p3, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    or-int/2addr p0, p1

    .line 12
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lrb0;->a:Lbx3;

    .line 19
    .line 20
    if-ne p1, p0, :cond_1

    .line 21
    .line 22
    :cond_0
    new-instance p1, Lyx1;

    .line 23
    .line 24
    invoke-direct {p1, v0, p2}, Lyx1;-><init>(Lhi0;Ldf1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    check-cast p1, Lyx1;

    .line 31
    .line 32
    return-void
.end method

.method public static final e(Lnd2;JLjava/util/List;Lag1;I)V
    .locals 10

    .line 1
    const v0, 0x171e4e1f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    invoke-virtual {p4, p1, p2}, Lag1;->e(J)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x10

    .line 19
    .line 20
    :goto_0
    or-int/2addr v0, v1

    .line 21
    or-int/lit16 v0, v0, 0x80

    .line 22
    .line 23
    and-int/lit16 v1, v0, 0x93

    .line 24
    .line 25
    const/16 v2, 0x92

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 33
    .line 34
    invoke-virtual {p4, v2, v1}, Lag1;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p4}, Lag1;->S()V

    .line 41
    .line 42
    .line 43
    and-int/lit8 v1, p5, 0x1

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p4}, Lag1;->x()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    invoke-virtual {p4}, Lag1;->Q()V

    .line 55
    .line 56
    .line 57
    and-int/lit16 v0, v0, -0x381

    .line 58
    .line 59
    :goto_2
    move-object v1, p0

    .line 60
    move-object v7, p3

    .line 61
    goto :goto_4

    .line 62
    :cond_3
    :goto_3
    sget-object p3, Lo52;->c:Ljava/util/List;

    .line 63
    .line 64
    and-int/lit16 v0, v0, -0x381

    .line 65
    .line 66
    sget-object p0, Lkd2;->b:Lkd2;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_4
    invoke-virtual {p4}, Lag1;->q()V

    .line 70
    .line 71
    .line 72
    sget-wide v2, Lt70;->f:J

    .line 73
    .line 74
    sget p0, Lo52;->a:F

    .line 75
    .line 76
    sget-object p0, Lw80;->l:Lll3;

    .line 77
    .line 78
    invoke-static {p0, p4}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    shl-int/lit8 p0, v0, 0x3

    .line 83
    .line 84
    and-int/lit16 p0, p0, 0x380

    .line 85
    .line 86
    const/16 p3, 0x36

    .line 87
    .line 88
    or-int v9, p3, p0

    .line 89
    .line 90
    move-wide v4, p1

    .line 91
    move-object v8, p4

    .line 92
    invoke-static/range {v1 .. v9}, Lzf5;->f(Lnd2;JJLjl3;Ljava/util/List;Lag1;I)V

    .line 93
    .line 94
    .line 95
    move-object p1, v1

    .line 96
    move-object p4, v7

    .line 97
    goto :goto_5

    .line 98
    :cond_4
    move-wide v4, p1

    .line 99
    move-object v8, p4

    .line 100
    invoke-virtual {v8}, Lag1;->Q()V

    .line 101
    .line 102
    .line 103
    move-object p1, p0

    .line 104
    move-object p4, p3

    .line 105
    :goto_5
    invoke-virtual {v8}, Lag1;->r()Lc33;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    new-instance p0, Lsz;

    .line 112
    .line 113
    move-wide p2, v4

    .line 114
    invoke-direct/range {p0 .. p5}, Lsz;-><init>(Lnd2;JLjava/util/List;I)V

    .line 115
    .line 116
    .line 117
    iput-object p0, v0, Lc33;->d:Ldf1;

    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public static final f(Lnd2;JJLjl3;Ljava/util/List;Lag1;I)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v6, p5

    .line 6
    .line 7
    move-object/from16 v7, p6

    .line 8
    .line 9
    move-object/from16 v0, p7

    .line 10
    .line 11
    move/from16 v8, p8

    .line 12
    .line 13
    const v4, -0x69de31f5

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v4}, Lag1;->X(I)Lag1;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v4, v8, 0x6

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x2

    .line 32
    :goto_0
    or-int/2addr v4, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v8

    .line 35
    :goto_1
    and-int/lit8 v10, v8, 0x30

    .line 36
    .line 37
    if-nez v10, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lag1;->e(J)Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-eqz v10, :cond_2

    .line 44
    .line 45
    const/16 v10, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v10, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v4, v10

    .line 51
    :cond_3
    and-int/lit16 v10, v8, 0x180

    .line 52
    .line 53
    move-wide/from16 v12, p3

    .line 54
    .line 55
    if-nez v10, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0, v12, v13}, Lag1;->e(J)Z

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
    or-int/2addr v4, v10

    .line 69
    :cond_5
    and-int/lit16 v10, v8, 0xc00

    .line 70
    .line 71
    if-nez v10, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_6

    .line 78
    .line 79
    const/16 v10, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v10, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v4, v10

    .line 85
    :cond_7
    and-int/lit16 v10, v8, 0x6000

    .line 86
    .line 87
    if-nez v10, :cond_9

    .line 88
    .line 89
    invoke-virtual {v0, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_8

    .line 94
    .line 95
    const/16 v10, 0x4000

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    const/16 v10, 0x2000

    .line 99
    .line 100
    :goto_5
    or-int/2addr v4, v10

    .line 101
    :cond_9
    and-int/lit16 v10, v4, 0x2493

    .line 102
    .line 103
    const/16 v14, 0x2492

    .line 104
    .line 105
    const/4 v11, 0x1

    .line 106
    if-eq v10, v14, :cond_a

    .line 107
    .line 108
    move v10, v11

    .line 109
    goto :goto_6

    .line 110
    :cond_a
    const/4 v10, 0x0

    .line 111
    :goto_6
    and-int/lit8 v14, v4, 0x1

    .line 112
    .line 113
    invoke-virtual {v0, v14, v10}, Lag1;->N(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_21

    .line 118
    .line 119
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-le v10, v11, :cond_20

    .line 124
    .line 125
    invoke-virtual {v0, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    move/from16 v23, v11

    .line 134
    .line 135
    sget-object v11, Lrb0;->a:Lbx3;

    .line 136
    .line 137
    if-nez v10, :cond_b

    .line 138
    .line 139
    if-ne v14, v11, :cond_e

    .line 140
    .line 141
    :cond_b
    invoke-static {}, Ltv4;->p()La42;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    const/4 v9, 0x0

    .line 150
    :goto_7
    if-ge v9, v14, :cond_d

    .line 151
    .line 152
    add-int/lit8 v5, v9, 0x1

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    if-ge v5, v15, :cond_c

    .line 159
    .line 160
    new-instance v15, Lxd2;

    .line 161
    .line 162
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    check-cast v9, Lpa3;

    .line 167
    .line 168
    invoke-virtual {v9}, Lpa3;->b()Lpa3;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v20

    .line 176
    check-cast v20, Lpa3;

    .line 177
    .line 178
    move/from16 v21, v5

    .line 179
    .line 180
    invoke-virtual/range {v20 .. v20}, Lpa3;->b()Lpa3;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-direct {v15, v9, v5}, Lxd2;-><init>(Lpa3;Lpa3;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10, v15}, La42;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_c
    move/from16 v21, v5

    .line 192
    .line 193
    new-instance v5, Lxd2;

    .line 194
    .line 195
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Lpa3;

    .line 200
    .line 201
    invoke-virtual {v9}, Lpa3;->b()Lpa3;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const/4 v15, 0x0

    .line 206
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v20

    .line 210
    check-cast v20, Lpa3;

    .line 211
    .line 212
    invoke-virtual/range {v20 .. v20}, Lpa3;->b()Lpa3;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    invoke-direct {v5, v9, v15}, Lxd2;-><init>(Lpa3;Lpa3;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v5}, La42;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :goto_8
    move/from16 v9, v21

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_d
    invoke-static {v10}, Ltv4;->l(La42;)La42;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    invoke-virtual {v0, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_e
    check-cast v14, Ljava/util/List;

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    if-nez v5, :cond_f

    .line 243
    .line 244
    if-ne v9, v11, :cond_10

    .line 245
    .line 246
    :cond_f
    const/4 v5, 0x4

    .line 247
    goto :goto_9

    .line 248
    :cond_10
    const/16 v20, 0x0

    .line 249
    .line 250
    goto/16 :goto_c

    .line 251
    .line 252
    :goto_9
    new-array v9, v5, [F

    .line 253
    .line 254
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    const/high16 v15, 0x3f800000    # 1.0f

    .line 259
    .line 260
    const/4 v10, 0x0

    .line 261
    const/16 v20, 0x0

    .line 262
    .line 263
    :goto_a
    if-ge v10, v5, :cond_12

    .line 264
    .line 265
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v21

    .line 269
    move/from16 v22, v5

    .line 270
    .line 271
    move-object/from16 v5, v21

    .line 272
    .line 273
    check-cast v5, Lpa3;

    .line 274
    .line 275
    const/4 v8, 0x2

    .line 276
    invoke-static {v5, v9, v8}, Lpa3;->a(Lpa3;[FI)[F

    .line 277
    .line 278
    .line 279
    iget-object v8, v5, Lpa3;->d:La42;

    .line 280
    .line 281
    move-object/from16 v21, v9

    .line 282
    .line 283
    iget v9, v5, Lpa3;->c:F

    .line 284
    .line 285
    iget v5, v5, Lpa3;->b:F

    .line 286
    .line 287
    move/from16 v24, v5

    .line 288
    .line 289
    invoke-virtual {v8}, Lp1;->a()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    move/from16 v25, v9

    .line 294
    .line 295
    move/from16 v26, v10

    .line 296
    .line 297
    move/from16 v10, v20

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    :goto_b
    if-ge v9, v5, :cond_11

    .line 301
    .line 302
    invoke-virtual {v8, v9}, La42;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v27

    .line 306
    move/from16 v28, v5

    .line 307
    .line 308
    move-object/from16 v5, v27

    .line 309
    .line 310
    check-cast v5, Lcl0;

    .line 311
    .line 312
    move-object/from16 v27, v8

    .line 313
    .line 314
    iget-object v8, v5, Lcl0;->a:[F

    .line 315
    .line 316
    const/16 v19, 0x0

    .line 317
    .line 318
    aget v29, v8, v19

    .line 319
    .line 320
    sub-float v29, v29, v24

    .line 321
    .line 322
    aget v8, v8, v23

    .line 323
    .line 324
    sub-float v8, v8, v25

    .line 325
    .line 326
    sget v30, Lk94;->b:F

    .line 327
    .line 328
    mul-float v29, v29, v29

    .line 329
    .line 330
    mul-float/2addr v8, v8

    .line 331
    add-float v8, v8, v29

    .line 332
    .line 333
    move/from16 v29, v9

    .line 334
    .line 335
    const/high16 v9, 0x3f000000    # 0.5f

    .line 336
    .line 337
    invoke-virtual {v5, v9}, Lcl0;->c(F)J

    .line 338
    .line 339
    .line 340
    move-result-wide v30

    .line 341
    invoke-static/range {v30 .. v31}, Lix;->x(J)F

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    sub-float v5, v5, v24

    .line 346
    .line 347
    invoke-static/range {v30 .. v31}, Lix;->y(J)F

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    sub-float v9, v9, v25

    .line 352
    .line 353
    mul-float/2addr v5, v5

    .line 354
    mul-float/2addr v9, v9

    .line 355
    add-float/2addr v9, v5

    .line 356
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    .line 361
    .line 362
    .line 363
    move-result v10

    .line 364
    add-int/lit8 v9, v29, 0x1

    .line 365
    .line 366
    move-object/from16 v8, v27

    .line 367
    .line 368
    move/from16 v5, v28

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_11
    float-to-double v8, v10

    .line 372
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 373
    .line 374
    .line 375
    move-result-wide v8

    .line 376
    double-to-float v5, v8

    .line 377
    sub-float v8, v24, v5

    .line 378
    .line 379
    sub-float v9, v25, v5

    .line 380
    .line 381
    add-float v10, v24, v5

    .line 382
    .line 383
    add-float v5, v25, v5

    .line 384
    .line 385
    move/from16 v24, v5

    .line 386
    .line 387
    move/from16 v18, v8

    .line 388
    .line 389
    const/4 v5, 0x4

    .line 390
    new-array v8, v5, [F

    .line 391
    .line 392
    const/16 v19, 0x0

    .line 393
    .line 394
    aput v18, v8, v19

    .line 395
    .line 396
    aput v9, v8, v23

    .line 397
    .line 398
    const/16 v17, 0x2

    .line 399
    .line 400
    aput v10, v8, v17

    .line 401
    .line 402
    const/4 v9, 0x3

    .line 403
    aput v24, v8, v9

    .line 404
    .line 405
    aget v10, v21, v17

    .line 406
    .line 407
    aget v18, v21, v19

    .line 408
    .line 409
    sub-float v10, v10, v18

    .line 410
    .line 411
    aget v18, v8, v17

    .line 412
    .line 413
    aget v24, v8, v19

    .line 414
    .line 415
    sub-float v18, v18, v24

    .line 416
    .line 417
    div-float v10, v10, v18

    .line 418
    .line 419
    aget v18, v21, v9

    .line 420
    .line 421
    aget v24, v21, v23

    .line 422
    .line 423
    sub-float v18, v18, v24

    .line 424
    .line 425
    aget v9, v8, v9

    .line 426
    .line 427
    aget v8, v8, v23

    .line 428
    .line 429
    sub-float/2addr v9, v8

    .line 430
    div-float v8, v18, v9

    .line 431
    .line 432
    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    .line 437
    .line 438
    .line 439
    move-result v15

    .line 440
    add-int/lit8 v10, v26, 0x1

    .line 441
    .line 442
    move/from16 v8, p8

    .line 443
    .line 444
    move-object/from16 v9, v21

    .line 445
    .line 446
    move/from16 v5, v22

    .line 447
    .line 448
    goto/16 :goto_a

    .line 449
    .line 450
    :cond_12
    sget v5, Lo52;->d:F

    .line 451
    .line 452
    mul-float/2addr v15, v5

    .line 453
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    invoke-virtual {v0, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_c
    check-cast v9, Ljava/lang/Number;

    .line 461
    .line 462
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    if-ne v8, v11, :cond_13

    .line 471
    .line 472
    invoke-static/range {v20 .. v20}, Ldm0;->a(F)Lpd;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    invoke-virtual {v0, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_13
    check-cast v8, Lpd;

    .line 480
    .line 481
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    if-ne v9, v11, :cond_14

    .line 486
    .line 487
    new-instance v9, Lss2;

    .line 488
    .line 489
    const/high16 v10, 0x42b40000    # 90.0f

    .line 490
    .line 491
    invoke-direct {v9, v10}, Lss2;-><init>(F)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_14
    move-object/from16 v28, v9

    .line 498
    .line 499
    check-cast v28, Lss2;

    .line 500
    .line 501
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    if-ne v9, v11, :cond_15

    .line 506
    .line 507
    invoke-static/range {v20 .. v20}, Ldm0;->a(F)Lpd;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    invoke-virtual {v0, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    :cond_15
    check-cast v9, Lpd;

    .line 515
    .line 516
    invoke-virtual {v0, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v10

    .line 520
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v15

    .line 524
    if-nez v10, :cond_16

    .line 525
    .line 526
    if-ne v15, v11, :cond_17

    .line 527
    .line 528
    :cond_16
    new-instance v15, Lts2;

    .line 529
    .line 530
    const/4 v10, 0x0

    .line 531
    invoke-direct {v15, v10}, Lts2;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v15}, Lag1;->g0(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    :cond_17
    check-cast v15, Lts2;

    .line 538
    .line 539
    invoke-virtual {v0, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v10

    .line 543
    invoke-virtual {v0, v15}, Lag1;->f(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v17

    .line 547
    or-int v10, v10, v17

    .line 548
    .line 549
    invoke-virtual {v0, v14}, Lag1;->h(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v17

    .line 553
    or-int v10, v10, v17

    .line 554
    .line 555
    invoke-virtual {v0, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v17

    .line 559
    or-int v10, v10, v17

    .line 560
    .line 561
    move-object/from16 v25, v8

    .line 562
    .line 563
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    if-nez v10, :cond_19

    .line 568
    .line 569
    if-ne v8, v11, :cond_18

    .line 570
    .line 571
    goto :goto_d

    .line 572
    :cond_18
    move-object/from16 v13, v25

    .line 573
    .line 574
    goto :goto_e

    .line 575
    :cond_19
    :goto_d
    new-instance v24, Lf5;

    .line 576
    .line 577
    const/16 v30, 0x0

    .line 578
    .line 579
    move-object/from16 v29, v9

    .line 580
    .line 581
    move-object/from16 v26, v14

    .line 582
    .line 583
    move-object/from16 v27, v15

    .line 584
    .line 585
    invoke-direct/range {v24 .. v30}, Lf5;-><init>(Lpd;Ljava/util/List;Lts2;Lss2;Lpd;Ldh0;)V

    .line 586
    .line 587
    .line 588
    move-object/from16 v8, v24

    .line 589
    .line 590
    move-object/from16 v13, v25

    .line 591
    .line 592
    invoke-virtual {v0, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :goto_e
    check-cast v8, Ldf1;

    .line 596
    .line 597
    invoke-static {v8, v0, v7}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    if-ne v8, v11, :cond_1a

    .line 605
    .line 606
    invoke-static {}, Lub;->a()Lsb;

    .line 607
    .line 608
    .line 609
    move-result-object v8

    .line 610
    invoke-virtual {v0, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    :cond_1a
    check-cast v8, Lsb;

    .line 614
    .line 615
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v10

    .line 619
    if-ne v10, v11, :cond_1b

    .line 620
    .line 621
    invoke-static {}, Lxa2;->a()[F

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    new-instance v12, Lxa2;

    .line 626
    .line 627
    invoke-direct {v12, v10}, Lxa2;-><init>([F)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    move-object v10, v12

    .line 634
    :cond_1b
    check-cast v10, Lxa2;

    .line 635
    .line 636
    iget-object v10, v10, Lxa2;->a:[F

    .line 637
    .line 638
    new-instance v12, Lz82;

    .line 639
    .line 640
    const/16 v7, 0x16

    .line 641
    .line 642
    invoke-direct {v12, v7}, Lz82;-><init>(I)V

    .line 643
    .line 644
    .line 645
    sget-object v7, Ldh3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 646
    .line 647
    new-instance v7, Lgh;

    .line 648
    .line 649
    move-object/from16 v17, v11

    .line 650
    .line 651
    move/from16 v11, v23

    .line 652
    .line 653
    invoke-direct {v7, v12, v11}, Lgh;-><init>(Lpe1;Z)V

    .line 654
    .line 655
    .line 656
    invoke-interface {v1, v7}, Lnd2;->c(Lnd2;)Lnd2;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    sget v11, Lo52;->a:F

    .line 661
    .line 662
    sget v12, Lo52;->b:F

    .line 663
    .line 664
    invoke-static {v7, v11, v12}, Lon3;->d(Lnd2;FF)Lnd2;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    sget-object v11, Lon3;->b:Lu51;

    .line 669
    .line 670
    invoke-interface {v7, v11}, Lnd2;->c(Lnd2;)Lnd2;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-static {v7, v6}, Ln44;->c0(Lnd2;Ljl3;)Lnd2;

    .line 675
    .line 676
    .line 677
    move-result-object v7

    .line 678
    sget-object v11, Lk75;->d:Lfk1;

    .line 679
    .line 680
    invoke-static {v7, v2, v3, v11}, Lbi4;->j(Lnd2;JLjl3;)Lnd2;

    .line 681
    .line 682
    .line 683
    move-result-object v7

    .line 684
    sget-object v11, Lmj1;->s:Lcw;

    .line 685
    .line 686
    const/4 v12, 0x0

    .line 687
    invoke-static {v11, v12}, Lqx;->d(Lcw;Z)Ldb2;

    .line 688
    .line 689
    .line 690
    move-result-object v11

    .line 691
    move-object/from16 v25, v13

    .line 692
    .line 693
    iget-wide v12, v0, Lag1;->T:J

    .line 694
    .line 695
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 696
    .line 697
    .line 698
    move-result v12

    .line 699
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 700
    .line 701
    .line 702
    move-result-object v13

    .line 703
    invoke-static {v0, v7}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    sget-object v18, Llb0;->c:Lkb0;

    .line 708
    .line 709
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    sget-object v1, Lkb0;->b:Lic0;

    .line 713
    .line 714
    invoke-virtual {v0}, Lag1;->Z()V

    .line 715
    .line 716
    .line 717
    iget-boolean v2, v0, Lag1;->S:Z

    .line 718
    .line 719
    if-eqz v2, :cond_1c

    .line 720
    .line 721
    invoke-virtual {v0, v1}, Lag1;->k(Lne1;)V

    .line 722
    .line 723
    .line 724
    goto :goto_f

    .line 725
    :cond_1c
    invoke-virtual {v0}, Lag1;->j0()V

    .line 726
    .line 727
    .line 728
    :goto_f
    sget-object v1, Lkb0;->f:Lfd;

    .line 729
    .line 730
    invoke-static {v1, v0, v11}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    sget-object v1, Lkb0;->e:Lfd;

    .line 734
    .line 735
    invoke-static {v1, v0, v13}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    sget-object v2, Lkb0;->g:Lfd;

    .line 743
    .line 744
    invoke-static {v2, v0, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    sget-object v1, Lkb0;->h:Ll9;

    .line 748
    .line 749
    invoke-static {v0, v1}, Lht4;->y(Lag1;Lpe1;)V

    .line 750
    .line 751
    .line 752
    sget-object v1, Lkb0;->d:Lfd;

    .line 753
    .line 754
    invoke-static {v1, v0, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    invoke-static {}, Lgg4;->g()Lnd2;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    move-object/from16 v13, v25

    .line 762
    .line 763
    invoke-virtual {v0, v13}, Lag1;->h(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    invoke-virtual {v0, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    or-int/2addr v2, v3

    .line 772
    invoke-virtual {v0, v14}, Lag1;->h(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v3

    .line 776
    or-int/2addr v2, v3

    .line 777
    invoke-virtual {v0, v15}, Lag1;->f(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    or-int/2addr v2, v3

    .line 782
    invoke-virtual {v0, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    or-int/2addr v2, v3

    .line 787
    invoke-virtual {v0, v5}, Lag1;->c(F)Z

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    or-int/2addr v2, v3

    .line 792
    invoke-virtual {v0, v10}, Lag1;->h(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    or-int/2addr v2, v3

    .line 797
    and-int/lit16 v3, v4, 0x380

    .line 798
    .line 799
    const/16 v4, 0x100

    .line 800
    .line 801
    if-ne v3, v4, :cond_1d

    .line 802
    .line 803
    const/16 v19, 0x1

    .line 804
    .line 805
    goto :goto_10

    .line 806
    :cond_1d
    const/16 v19, 0x0

    .line 807
    .line 808
    :goto_10
    or-int v2, v2, v19

    .line 809
    .line 810
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    if-nez v2, :cond_1e

    .line 815
    .line 816
    move-object/from16 v2, v17

    .line 817
    .line 818
    if-ne v3, v2, :cond_1f

    .line 819
    .line 820
    :cond_1e
    new-instance v12, Lp52;

    .line 821
    .line 822
    move-wide/from16 v20, p3

    .line 823
    .line 824
    move/from16 v18, v5

    .line 825
    .line 826
    move-object/from16 v17, v8

    .line 827
    .line 828
    move-object/from16 v19, v10

    .line 829
    .line 830
    move-object/from16 v16, v14

    .line 831
    .line 832
    move-object/from16 v22, v15

    .line 833
    .line 834
    move-object/from16 v15, v28

    .line 835
    .line 836
    move-object v14, v9

    .line 837
    invoke-direct/range {v12 .. v22}, Lp52;-><init>(Lpd;Lpd;Lss2;Ljava/util/List;Lsb;F[FJLts2;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    move-object v3, v12

    .line 844
    :cond_1f
    check-cast v3, Lpe1;

    .line 845
    .line 846
    new-instance v2, Lmx0;

    .line 847
    .line 848
    invoke-direct {v2, v3}, Lmx0;-><init>(Lpe1;)V

    .line 849
    .line 850
    .line 851
    invoke-interface {v1, v2}, Lnd2;->c(Lnd2;)Lnd2;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-static {v0, v1}, Lmt1;->f(Lag1;Lnd2;)V

    .line 856
    .line 857
    .line 858
    const/4 v11, 0x1

    .line 859
    invoke-virtual {v0, v11}, Lag1;->p(Z)V

    .line 860
    .line 861
    .line 862
    goto :goto_11

    .line 863
    :cond_20
    const-string v0, "indicatorPolygons should have, at least, two RoundedPolygons"

    .line 864
    .line 865
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :cond_21
    invoke-virtual {v0}, Lag1;->Q()V

    .line 870
    .line 871
    .line 872
    :goto_11
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 873
    .line 874
    .line 875
    move-result-object v9

    .line 876
    if-eqz v9, :cond_22

    .line 877
    .line 878
    new-instance v0, Lq52;

    .line 879
    .line 880
    move-object/from16 v1, p0

    .line 881
    .line 882
    move-wide/from16 v2, p1

    .line 883
    .line 884
    move-wide/from16 v4, p3

    .line 885
    .line 886
    move-object/from16 v7, p6

    .line 887
    .line 888
    move/from16 v8, p8

    .line 889
    .line 890
    invoke-direct/range {v0 .. v8}, Lq52;-><init>(Lnd2;JJLjl3;Ljava/util/List;I)V

    .line 891
    .line 892
    .line 893
    iput-object v0, v9, Lc33;->d:Ldf1;

    .line 894
    .line 895
    :cond_22
    return-void
.end method

.method public static final g(Lne1;Lag1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lag1;->M:Ltb0;

    .line 2
    .line 3
    iget-object p1, p1, Ltb0;->b:Lk30;

    .line 4
    .line 5
    iget-object p1, p1, Lk30;->a:Lbr2;

    .line 6
    .line 7
    sget-object v0, Lpq2;->c:Lpq2;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lbr2;->S0(Lzq2;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Lis0;->X(Lbr2;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final h(Ljava/io/File;Lpe1;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lo51;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lo51;

    .line 7
    .line 8
    iget v1, v0, Lo51;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lo51;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lo51;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lo51;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lo51;->s:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p0, v0, Lo51;->q:Ljava/io/File;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput-object p0, v0, Lo51;->q:Ljava/io/File;

    .line 53
    .line 54
    iput v2, v0, Lo51;->s:I

    .line 55
    .line 56
    invoke-interface {p1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    sget-object p1, Lri0;->n:Lri0;

    .line 61
    .line 62
    if-ne p0, p1, :cond_3

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    return-object p0

    .line 66
    :goto_1
    instance-of p2, p1, Lxi0;

    .line 67
    .line 68
    if-nez p2, :cond_c

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_b

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    goto :goto_2

    .line 123
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_8

    .line 134
    .line 135
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    goto :goto_2

    .line 145
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_a

    .line 150
    .line 151
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    goto :goto_2

    .line 156
    :cond_a
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    goto :goto_2

    .line 161
    :cond_b
    invoke-static {p0, p1}, Lk75;->k(Ljava/io/File;Ljava/io/IOException;)Ljava/io/IOException;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :goto_2
    throw p0

    .line 166
    :cond_c
    throw p1
.end method

.method public static i(Lb80;)Lb80;
    .locals 11

    .line 1
    sget-object v3, Lfl4;->r:Lcd4;

    .line 2
    .line 3
    iget-wide v0, p0, Lb80;->b:J

    .line 4
    .line 5
    const-wide v4, 0x300000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v4, v5}, Lk75;->v(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Lw83;

    .line 18
    .line 19
    iget-object v1, v0, Lw83;->d:Lcd4;

    .line 20
    .line 21
    invoke-static {v1, v3}, Lzf5;->v(Lcd4;Lcd4;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Lcd4;->a()[F

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v2, Lb7;->c:Lb7;

    .line 33
    .line 34
    iget-object v2, v2, Lb7;->b:[F

    .line 35
    .line 36
    invoke-virtual {v1}, Lcd4;->a()[F

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v2, v1, p0}, Lzf5;->s([F[F[F)[F

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object v1, v0, Lw83;->i:[F

    .line 45
    .line 46
    invoke-static {p0, v1}, Lzf5;->P([F[F)[F

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    move-object p0, v0

    .line 51
    new-instance v0, Lw83;

    .line 52
    .line 53
    iget-object v1, p0, Lb80;->a:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lw83;->h:[F

    .line 56
    .line 57
    iget-object v5, p0, Lw83;->k:Lyv0;

    .line 58
    .line 59
    iget-object v6, p0, Lw83;->n:Lyv0;

    .line 60
    .line 61
    iget v7, p0, Lw83;->e:F

    .line 62
    .line 63
    iget v8, p0, Lw83;->f:F

    .line 64
    .line 65
    iget-object v9, p0, Lw83;->g:Le14;

    .line 66
    .line 67
    const/4 v10, -0x1

    .line 68
    invoke-direct/range {v0 .. v10}, Lw83;-><init>(Ljava/lang/String;[FLcd4;[FLyv0;Lyv0;FFLe14;I)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final k(Lgy1;)Ll33;
    .locals 6

    .line 1
    invoke-interface {p0}, Lgy1;->j()Lgy1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, p0, v1}, Lgy1;->H(Lgy1;Z)Ll33;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ll33;

    .line 14
    .line 15
    invoke-interface {p0}, Lgy1;->I()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    shr-long/2addr v1, v3

    .line 22
    long-to-int v1, v1

    .line 23
    int-to-float v1, v1

    .line 24
    invoke-interface {p0}, Lgy1;->I()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide v4, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v2, v4

    .line 34
    long-to-int p0, v2

    .line 35
    int-to-float p0, p0

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v0, v2, v2, v1, p0}, Ll33;-><init>(FFFF)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public static final l(Lgy1;Z)Ll33;
    .locals 14

    .line 1
    invoke-static {p0}, Lzf5;->D(Lgy1;)Lgy1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgy1;->I()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    shr-long/2addr v1, v3

    .line 12
    long-to-int v1, v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-interface {v0}, Lgy1;->I()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    const-wide v6, 0xffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr v4, v6

    .line 24
    long-to-int v2, v4

    .line 25
    int-to-float v2, v2

    .line 26
    invoke-interface {v0, p0, p1}, Lgy1;->H(Lgy1;Z)Ll33;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget v4, p0, Ll33;->a:F

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    cmpg-float v8, v4, v5

    .line 36
    .line 37
    if-gez v8, :cond_0

    .line 38
    .line 39
    move v4, v5

    .line 40
    :cond_0
    cmpl-float v8, v4, v1

    .line 41
    .line 42
    if-lez v8, :cond_1

    .line 43
    .line 44
    move v4, v1

    .line 45
    :cond_1
    iget v8, p0, Ll33;->b:F

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    cmpg-float v9, v8, v5

    .line 50
    .line 51
    if-gez v9, :cond_2

    .line 52
    .line 53
    move v8, v5

    .line 54
    :cond_2
    cmpl-float v9, v8, v2

    .line 55
    .line 56
    if-lez v9, :cond_3

    .line 57
    .line 58
    move v8, v2

    .line 59
    :cond_3
    iget v9, p0, Ll33;->c:F

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    cmpg-float v10, v9, v5

    .line 64
    .line 65
    if-gez v10, :cond_4

    .line 66
    .line 67
    move v9, v5

    .line 68
    :cond_4
    cmpl-float v10, v9, v1

    .line 69
    .line 70
    if-lez v10, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    move v1, v9

    .line 74
    :goto_0
    move v9, v1

    .line 75
    :cond_6
    iget p0, p0, Ll33;->d:F

    .line 76
    .line 77
    if-eqz p1, :cond_9

    .line 78
    .line 79
    cmpg-float p1, p0, v5

    .line 80
    .line 81
    if-gez p1, :cond_7

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_7
    move v5, p0

    .line 85
    :goto_1
    cmpl-float p0, v5, v2

    .line 86
    .line 87
    if-lez p0, :cond_8

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_8
    move v2, v5

    .line 91
    :goto_2
    move p0, v2

    .line 92
    :cond_9
    cmpg-float p1, v4, v9

    .line 93
    .line 94
    if-nez p1, :cond_a

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_a
    cmpg-float p1, v8, p0

    .line 98
    .line 99
    if-nez p1, :cond_b

    .line 100
    .line 101
    :goto_3
    sget-object p0, Ll33;->e:Ll33;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_b
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    int-to-long v1, p1

    .line 109
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-long v10, p1

    .line 114
    shl-long/2addr v1, v3

    .line 115
    and-long/2addr v10, v6

    .line 116
    or-long/2addr v1, v10

    .line 117
    invoke-interface {v0, v1, v2}, Lgy1;->h(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-long v10, p1

    .line 126
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    int-to-long v12, p1

    .line 131
    shl-long/2addr v10, v3

    .line 132
    and-long/2addr v12, v6

    .line 133
    or-long/2addr v10, v12

    .line 134
    invoke-interface {v0, v10, v11}, Lgy1;->h(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v10

    .line 138
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    int-to-long v8, p1

    .line 143
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    int-to-long v12, p1

    .line 148
    shl-long/2addr v8, v3

    .line 149
    and-long/2addr v12, v6

    .line 150
    or-long/2addr v8, v12

    .line 151
    invoke-interface {v0, v8, v9}, Lgy1;->h(J)J

    .line 152
    .line 153
    .line 154
    move-result-wide v8

    .line 155
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    int-to-long v4, p1

    .line 160
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    int-to-long p0, p0

    .line 165
    shl-long/2addr v4, v3

    .line 166
    and-long/2addr p0, v6

    .line 167
    or-long/2addr p0, v4

    .line 168
    invoke-interface {v0, p0, p1}, Lgy1;->h(J)J

    .line 169
    .line 170
    .line 171
    move-result-wide p0

    .line 172
    shr-long v4, v1, v3

    .line 173
    .line 174
    long-to-int v0, v4

    .line 175
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    shr-long v4, v10, v3

    .line 180
    .line 181
    long-to-int v4, v4

    .line 182
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    shr-long v12, p0, v3

    .line 187
    .line 188
    long-to-int v5, v12

    .line 189
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    shr-long v12, v8, v3

    .line 194
    .line 195
    long-to-int v3, v12

    .line 196
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    and-long/2addr v1, v6

    .line 225
    long-to-int v1, v1

    .line 226
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    and-long v2, v10, v6

    .line 231
    .line 232
    long-to-int v2, v2

    .line 233
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    and-long/2addr p0, v6

    .line 238
    long-to-int p0, p0

    .line 239
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    and-long v3, v8, v6

    .line 244
    .line 245
    long-to-int p1, v3

    .line 246
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    new-instance p1, Ll33;

    .line 275
    .line 276
    invoke-direct {p1, v12, v3, v0, p0}, Ll33;-><init>(FFFF)V

    .line 277
    .line 278
    .line 279
    return-object p1
.end method

.method public static m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, p4, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move/from16 v4, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v5, p4, 0x8

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v5, v6

    .line 33
    :goto_2
    and-int/lit8 v7, p4, 0x10

    .line 34
    .line 35
    if-eqz v7, :cond_3

    .line 36
    .line 37
    move v7, v3

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v7, v6

    .line 40
    :goto_3
    and-int/lit8 v8, p4, 0x20

    .line 41
    .line 42
    if-eqz v8, :cond_4

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move v8, v6

    .line 47
    :goto_4
    and-int/lit8 v9, p4, 0x40

    .line 48
    .line 49
    if-eqz v9, :cond_5

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move v3, v6

    .line 53
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move v6, v2

    .line 57
    :goto_6
    if-ge v6, v4, :cond_15

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const/16 v10, 0x20

    .line 64
    .line 65
    const/16 v11, 0x80

    .line 66
    .line 67
    const/16 v12, 0x2b

    .line 68
    .line 69
    const/16 v13, 0x25

    .line 70
    .line 71
    const/16 v14, 0x7f

    .line 72
    .line 73
    if-lt v9, v10, :cond_9

    .line 74
    .line 75
    if-eq v9, v14, :cond_9

    .line 76
    .line 77
    if-lt v9, v11, :cond_6

    .line 78
    .line 79
    if-eqz v3, :cond_9

    .line 80
    .line 81
    :cond_6
    int-to-char v15, v9

    .line 82
    invoke-static {v1, v15}, Lzs3;->C0(Ljava/lang/CharSequence;C)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-nez v15, :cond_9

    .line 87
    .line 88
    if-ne v9, v13, :cond_7

    .line 89
    .line 90
    if-eqz v5, :cond_9

    .line 91
    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    invoke-static {v6, v0, v4}, Lzf5;->N(ILjava/lang/String;I)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-eqz v15, :cond_9

    .line 99
    .line 100
    :cond_7
    if-ne v9, v12, :cond_8

    .line 101
    .line 102
    if-eqz v8, :cond_8

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    add-int/2addr v6, v9

    .line 110
    goto :goto_6

    .line 111
    :cond_9
    :goto_7
    new-instance v9, Lsy;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v2, v0, v6}, Lsy;->t0(ILjava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    :goto_8
    if-ge v6, v4, :cond_14

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-eqz v5, :cond_a

    .line 127
    .line 128
    const/16 v13, 0x9

    .line 129
    .line 130
    if-eq v15, v13, :cond_10

    .line 131
    .line 132
    const/16 v13, 0xa

    .line 133
    .line 134
    if-eq v15, v13, :cond_10

    .line 135
    .line 136
    const/16 v13, 0xc

    .line 137
    .line 138
    if-eq v15, v13, :cond_10

    .line 139
    .line 140
    const/16 v13, 0xd

    .line 141
    .line 142
    if-ne v15, v13, :cond_a

    .line 143
    .line 144
    goto :goto_b

    .line 145
    :cond_a
    const-string v13, "+"

    .line 146
    .line 147
    if-ne v15, v10, :cond_b

    .line 148
    .line 149
    const-string v11, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 150
    .line 151
    if-ne v1, v11, :cond_b

    .line 152
    .line 153
    invoke-virtual {v9, v13}, Lsy;->u0(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_9
    const/16 v11, 0x80

    .line 157
    .line 158
    goto :goto_b

    .line 159
    :cond_b
    if-ne v15, v12, :cond_d

    .line 160
    .line 161
    if-eqz v8, :cond_d

    .line 162
    .line 163
    if-eqz v5, :cond_c

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_c
    const-string v13, "%2B"

    .line 167
    .line 168
    :goto_a
    invoke-virtual {v9, v13}, Lsy;->u0(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_d
    if-lt v15, v10, :cond_11

    .line 173
    .line 174
    if-eq v15, v14, :cond_11

    .line 175
    .line 176
    const/16 v11, 0x80

    .line 177
    .line 178
    if-lt v15, v11, :cond_e

    .line 179
    .line 180
    if-eqz v3, :cond_12

    .line 181
    .line 182
    :cond_e
    int-to-char v13, v15

    .line 183
    invoke-static {v1, v13}, Lzs3;->C0(Ljava/lang/CharSequence;C)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_12

    .line 188
    .line 189
    const/16 v13, 0x25

    .line 190
    .line 191
    if-ne v15, v13, :cond_f

    .line 192
    .line 193
    if-eqz v5, :cond_12

    .line 194
    .line 195
    if-eqz v7, :cond_f

    .line 196
    .line 197
    invoke-static {v6, v0, v4}, Lzf5;->N(ILjava/lang/String;I)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-nez v13, :cond_f

    .line 202
    .line 203
    goto :goto_c

    .line 204
    :cond_f
    invoke-virtual {v9, v15}, Lsy;->v0(I)V

    .line 205
    .line 206
    .line 207
    :cond_10
    :goto_b
    const/16 v11, 0x25

    .line 208
    .line 209
    goto :goto_e

    .line 210
    :cond_11
    const/16 v11, 0x80

    .line 211
    .line 212
    :cond_12
    :goto_c
    if-nez v2, :cond_13

    .line 213
    .line 214
    new-instance v2, Lsy;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 217
    .line 218
    .line 219
    :cond_13
    invoke-virtual {v2, v15}, Lsy;->v0(I)V

    .line 220
    .line 221
    .line 222
    :goto_d
    invoke-virtual {v2}, Lsy;->r()Z

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    if-nez v13, :cond_10

    .line 227
    .line 228
    invoke-virtual {v2}, Lsy;->readByte()B

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    and-int/lit16 v10, v13, 0xff

    .line 233
    .line 234
    const/16 v11, 0x25

    .line 235
    .line 236
    invoke-virtual {v9, v11}, Lsy;->o0(I)V

    .line 237
    .line 238
    .line 239
    shr-int/lit8 v10, v10, 0x4

    .line 240
    .line 241
    and-int/lit8 v10, v10, 0xf

    .line 242
    .line 243
    sget-object v16, Lzf5;->g:[C

    .line 244
    .line 245
    aget-char v10, v16, v10

    .line 246
    .line 247
    invoke-virtual {v9, v10}, Lsy;->o0(I)V

    .line 248
    .line 249
    .line 250
    and-int/lit8 v10, v13, 0xf

    .line 251
    .line 252
    aget-char v10, v16, v10

    .line 253
    .line 254
    invoke-virtual {v9, v10}, Lsy;->o0(I)V

    .line 255
    .line 256
    .line 257
    const/16 v10, 0x20

    .line 258
    .line 259
    const/16 v11, 0x80

    .line 260
    .line 261
    goto :goto_d

    .line 262
    :goto_e
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    add-int/2addr v6, v10

    .line 267
    move v13, v11

    .line 268
    const/16 v10, 0x20

    .line 269
    .line 270
    const/16 v11, 0x80

    .line 271
    .line 272
    goto/16 :goto_8

    .line 273
    .line 274
    :cond_14
    invoke-virtual {v9}, Lsy;->V()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0

    .line 279
    :cond_15
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0
.end method

.method public static final o(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lmk0;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2710

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x1e

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Number string too large: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "..."

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static final q(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lmk0;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final r(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", toIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p2}, Lk21;->k(Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final s([F[F[F)[F
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static/range {p0 .. p1}, Lzf5;->Q([F[F)[F

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lzf5;->Q([F[F)[F

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v1, v2

    .line 13
    .line 14
    aget v4, p1, v2

    .line 15
    .line 16
    div-float/2addr v3, v4

    .line 17
    const/4 v4, 0x1

    .line 18
    aget v5, v1, v4

    .line 19
    .line 20
    aget v6, p1, v4

    .line 21
    .line 22
    div-float/2addr v5, v6

    .line 23
    const/4 v6, 0x2

    .line 24
    aget v1, v1, v6

    .line 25
    .line 26
    aget v7, p1, v6

    .line 27
    .line 28
    div-float/2addr v1, v7

    .line 29
    const/4 v7, 0x3

    .line 30
    new-array v8, v7, [F

    .line 31
    .line 32
    aput v3, v8, v2

    .line 33
    .line 34
    aput v5, v8, v4

    .line 35
    .line 36
    aput v1, v8, v6

    .line 37
    .line 38
    invoke-static {v0}, Lzf5;->M([F)[F

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    aget v3, v8, v2

    .line 43
    .line 44
    aget v5, v0, v2

    .line 45
    .line 46
    mul-float/2addr v5, v3

    .line 47
    aget v9, v8, v4

    .line 48
    .line 49
    aget v10, v0, v4

    .line 50
    .line 51
    mul-float/2addr v10, v9

    .line 52
    aget v8, v8, v6

    .line 53
    .line 54
    aget v11, v0, v6

    .line 55
    .line 56
    mul-float/2addr v11, v8

    .line 57
    aget v12, v0, v7

    .line 58
    .line 59
    mul-float/2addr v12, v3

    .line 60
    const/4 v13, 0x4

    .line 61
    aget v14, v0, v13

    .line 62
    .line 63
    mul-float/2addr v14, v9

    .line 64
    const/4 v15, 0x5

    .line 65
    aget v16, v0, v15

    .line 66
    .line 67
    mul-float v16, v16, v8

    .line 68
    .line 69
    const/16 v17, 0x6

    .line 70
    .line 71
    aget v18, v0, v17

    .line 72
    .line 73
    mul-float v3, v3, v18

    .line 74
    .line 75
    const/16 v18, 0x7

    .line 76
    .line 77
    aget v19, v0, v18

    .line 78
    .line 79
    mul-float v9, v9, v19

    .line 80
    .line 81
    const/16 v19, 0x8

    .line 82
    .line 83
    aget v0, v0, v19

    .line 84
    .line 85
    mul-float/2addr v8, v0

    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    new-array v0, v0, [F

    .line 89
    .line 90
    aput v5, v0, v2

    .line 91
    .line 92
    aput v10, v0, v4

    .line 93
    .line 94
    aput v11, v0, v6

    .line 95
    .line 96
    aput v12, v0, v7

    .line 97
    .line 98
    aput v14, v0, v13

    .line 99
    .line 100
    aput v16, v0, v15

    .line 101
    .line 102
    aput v3, v0, v17

    .line 103
    .line 104
    aput v9, v0, v18

    .line 105
    .line 106
    aput v8, v0, v19

    .line 107
    .line 108
    invoke-static {v1, v0}, Lzf5;->P([F[F)[F

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method

.method public static u(JLag1;)Lgv3;
    .locals 35

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    sget-object v1, Lgg4;->r:Lz70;

    .line 4
    .line 5
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sget-object v1, Lgg4;->u:Lz70;

    .line 10
    .line 11
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    sget-wide v7, Lt70;->e:J

    .line 16
    .line 17
    sget-object v1, Lgg4;->t:Lz70;

    .line 18
    .line 19
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v9

    .line 23
    sget-object v1, Lgg4;->B:Lz70;

    .line 24
    .line 25
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v11

    .line 29
    sget-object v1, Lgg4;->A:Lz70;

    .line 30
    .line 31
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v15

    .line 35
    sget-object v1, Lgg4;->D:Lz70;

    .line 36
    .line 37
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v17

    .line 41
    sget-object v1, Lgg4;->d:Lz70;

    .line 42
    .line 43
    invoke-static {v1, v0}, La80;->d(Lz70;Lag1;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    sget v13, Lgg4;->e:F

    .line 48
    .line 49
    invoke-static {v13, v1, v2}, Lt70;->b(FJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    sget-object v13, Lwa2;->a:Lis3;

    .line 54
    .line 55
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    check-cast v14, Lua2;

    .line 60
    .line 61
    iget-object v14, v14, Lua2;->a:Ly70;

    .line 62
    .line 63
    move-wide/from16 v19, v3

    .line 64
    .line 65
    iget-wide v3, v14, Ly70;->p:J

    .line 66
    .line 67
    invoke-static {v1, v2, v3, v4}, Lc75;->q(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    sget-object v3, Lgg4;->h:Lz70;

    .line 72
    .line 73
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    sget v14, Lgg4;->i:F

    .line 78
    .line 79
    invoke-static {v14, v3, v4}, Lt70;->b(FJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v21

    .line 87
    move-wide/from16 v22, v1

    .line 88
    .line 89
    move-object/from16 v1, v21

    .line 90
    .line 91
    check-cast v1, Lua2;

    .line 92
    .line 93
    iget-object v1, v1, Lua2;->a:Ly70;

    .line 94
    .line 95
    iget-wide v1, v1, Ly70;->p:J

    .line 96
    .line 97
    invoke-static {v3, v4, v1, v2}, Lc75;->q(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    sget-object v3, Lgg4;->f:Lz70;

    .line 102
    .line 103
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    move-wide/from16 v24, v1

    .line 108
    .line 109
    sget v1, Lgg4;->g:F

    .line 110
    .line 111
    invoke-static {v1, v3, v4}, Lt70;->b(FJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lua2;

    .line 120
    .line 121
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 122
    .line 123
    iget-wide v3, v3, Ly70;->p:J

    .line 124
    .line 125
    invoke-static {v1, v2, v3, v4}, Lc75;->q(JJ)J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    sget-object v3, Lgg4;->j:Lz70;

    .line 130
    .line 131
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    move-wide/from16 v26, v1

    .line 136
    .line 137
    sget v1, Lgg4;->k:F

    .line 138
    .line 139
    invoke-static {v1, v3, v4}, Lt70;->b(FJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lua2;

    .line 148
    .line 149
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 150
    .line 151
    iget-wide v3, v3, Ly70;->p:J

    .line 152
    .line 153
    invoke-static {v1, v2, v3, v4}, Lc75;->q(JJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    sget-object v3, Lgg4;->n:Lz70;

    .line 158
    .line 159
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    invoke-static {v14, v3, v4}, Lt70;->b(FJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v21

    .line 171
    move-wide/from16 v28, v1

    .line 172
    .line 173
    move-object/from16 v1, v21

    .line 174
    .line 175
    check-cast v1, Lua2;

    .line 176
    .line 177
    iget-object v1, v1, Lua2;->a:Ly70;

    .line 178
    .line 179
    iget-wide v1, v1, Ly70;->p:J

    .line 180
    .line 181
    invoke-static {v3, v4, v1, v2}, Lc75;->q(JJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    sget-object v3, Lgg4;->o:Lz70;

    .line 186
    .line 187
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    invoke-static {v14, v3, v4}, Lt70;->b(FJ)J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    check-cast v14, Lua2;

    .line 200
    .line 201
    iget-object v14, v14, Lua2;->a:Ly70;

    .line 202
    .line 203
    move-wide/from16 v30, v1

    .line 204
    .line 205
    iget-wide v1, v14, Ly70;->p:J

    .line 206
    .line 207
    invoke-static {v3, v4, v1, v2}, Lc75;->q(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    sget-object v3, Lgg4;->l:Lz70;

    .line 212
    .line 213
    invoke-static {v3, v0}, La80;->d(Lz70;Lag1;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    sget v14, Lgg4;->m:F

    .line 218
    .line 219
    invoke-static {v14, v3, v4}, Lt70;->b(FJ)J

    .line 220
    .line 221
    .line 222
    move-result-wide v3

    .line 223
    invoke-virtual {v0, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lua2;

    .line 228
    .line 229
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 230
    .line 231
    iget-wide v13, v0, Ly70;->p:J

    .line 232
    .line 233
    invoke-static {v3, v4, v13, v14}, Lc75;->q(JJ)J

    .line 234
    .line 235
    .line 236
    move-result-wide v33

    .line 237
    move-wide/from16 v3, v19

    .line 238
    .line 239
    move-wide/from16 v19, v22

    .line 240
    .line 241
    move-wide/from16 v21, v24

    .line 242
    .line 243
    move-wide/from16 v25, v26

    .line 244
    .line 245
    move-wide/from16 v27, v28

    .line 246
    .line 247
    move-wide/from16 v29, v30

    .line 248
    .line 249
    move-wide/from16 v31, v1

    .line 250
    .line 251
    new-instance v2, Lgv3;

    .line 252
    .line 253
    move-wide/from16 v23, v7

    .line 254
    .line 255
    move-wide/from16 v13, p0

    .line 256
    .line 257
    invoke-direct/range {v2 .. v34}, Lgv3;-><init>(JJJJJJJJJJJJJJJJ)V

    .line 258
    .line 259
    .line 260
    return-object v2
.end method

.method public static final v(Lcd4;Lcd4;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget v1, p0, Lcd4;->a:F

    .line 6
    .line 7
    iget v2, p1, Lcd4;->a:F

    .line 8
    .line 9
    sub-float/2addr v1, v2

    .line 10
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, 0x3a83126f    # 0.001f

    .line 15
    .line 16
    .line 17
    cmpg-float v1, v1, v2

    .line 18
    .line 19
    if-gez v1, :cond_1

    .line 20
    .line 21
    iget p0, p0, Lcd4;->b:F

    .line 22
    .line 23
    iget p1, p1, Lcd4;->b:F

    .line 24
    .line 25
    sub-float/2addr p0, p1

    .line 26
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    cmpg-float p0, p0, v2

    .line 31
    .line 32
    if-gez p0, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static final x(Lag1;)Lqi0;
    .locals 1

    .line 1
    iget-object p0, p0, Lag1;->R:Lhi0;

    .line 2
    .line 3
    new-instance v0, Lp53;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lp53;-><init>(Lhi0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final y(Lb80;Lb80;)Lve0;
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lte0;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p1, p0, p0, v0}, Lve0;-><init>(Lb80;Lb80;I)V

    .line 7
    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-wide v0, p0, Lb80;->b:J

    .line 11
    .line 12
    const-wide v2, 0x300000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lk75;->v(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-wide v0, p1, Lb80;->b:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lk75;->v(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lue0;

    .line 32
    .line 33
    check-cast p0, Lw83;

    .line 34
    .line 35
    check-cast p1, Lw83;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lue0;-><init>(Lw83;Lw83;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lve0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, p1, v1}, Lve0;-><init>(Lb80;Lb80;I)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public abstract j(FJLlb;)V
.end method

.method public abstract n()V
.end method

.method public abstract t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract w(Ls80;Ljava/util/Set;)V
.end method

.method public abstract z(Ls80;)I
.end method
