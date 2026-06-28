.class public abstract Ltv4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static a:Landroid/os/UserManager; = null

.field public static volatile b:Z = false

.field public static final c:[B

.field public static final d:[B

.field public static e:Lso1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Ltv4;->c:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Ltv4;->d:[B

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :array_1
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data
.end method

.method public static A(Ldy0;I)Loq1;
    .locals 1

    .line 1
    new-instance p1, Loq1;

    .line 2
    .line 3
    sget-object v0, Ld63;->n:Ld63;

    .line 4
    .line 5
    invoke-direct {p1, p0, v0}, Loq1;-><init>(Ldy0;Ld63;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public static final B(Lag1;Ldf1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0, p1}, Ln44;->R(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, p0, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final C(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lk30;->c(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lnx1;->h:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lnx1;->a(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    sget-wide v2, Lnx1;->k:J

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lnx1;->a(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-wide v2, Lnx1;->o:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lnx1;->a(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    sget-wide v2, Lnx1;->j:J

    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Lnx1;->a(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public static final D(Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ly2;->y()Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static E(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static varargs F([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lg01;->n:Lg01;

    .line 13
    .line 14
    return-object p0
.end method

.method public static G(Lxn3;ILxn3;ZZZ)Ljava/util/List;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lxn3;->u(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int v4, v1, v3

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lxn3;->f(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {v0, v4}, Lxn3;->f(I)I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    sub-int v7, v6, v5

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    if-ltz v1, :cond_0

    .line 25
    .line 26
    iget-object v10, v0, Lxn3;->b:[I

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p1}, Lxn3;->r(I)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    mul-int/lit8 v11, v11, 0x5

    .line 33
    .line 34
    add-int/2addr v11, v9

    .line 35
    aget v10, v10, v11

    .line 36
    .line 37
    const/high16 v11, 0xc000000

    .line 38
    .line 39
    and-int/2addr v10, v11

    .line 40
    if-eqz v10, :cond_0

    .line 41
    .line 42
    move v10, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v10, 0x0

    .line 45
    :goto_0
    invoke-virtual {v2, v3}, Lxn3;->w(I)V

    .line 46
    .line 47
    .line 48
    iget v11, v2, Lxn3;->t:I

    .line 49
    .line 50
    invoke-virtual {v2, v7, v11}, Lxn3;->x(II)V

    .line 51
    .line 52
    .line 53
    iget v11, v0, Lxn3;->g:I

    .line 54
    .line 55
    if-ge v11, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Lxn3;->B(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget v11, v0, Lxn3;->k:I

    .line 61
    .line 62
    if-ge v11, v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, v6, v4}, Lxn3;->C(II)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v6, v2, Lxn3;->b:[I

    .line 68
    .line 69
    iget v11, v2, Lxn3;->t:I

    .line 70
    .line 71
    iget-object v12, v0, Lxn3;->b:[I

    .line 72
    .line 73
    mul-int/lit8 v13, v11, 0x5

    .line 74
    .line 75
    mul-int/lit8 v14, v1, 0x5

    .line 76
    .line 77
    mul-int/lit8 v15, v4, 0x5

    .line 78
    .line 79
    invoke-static {v13, v14, v15, v12, v6}, Lji;->N(III[I[I)V

    .line 80
    .line 81
    .line 82
    iget-object v12, v2, Lxn3;->c:[Ljava/lang/Object;

    .line 83
    .line 84
    iget v14, v2, Lxn3;->i:I

    .line 85
    .line 86
    iget-object v15, v0, Lxn3;->c:[Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {v15, v5, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    iget v15, v2, Lxn3;->v:I

    .line 92
    .line 93
    add-int/lit8 v16, v13, 0x2

    .line 94
    .line 95
    aput v15, v6, v16

    .line 96
    .line 97
    sub-int v16, v11, v1

    .line 98
    .line 99
    add-int v8, v11, v3

    .line 100
    .line 101
    invoke-virtual {v2, v6, v11}, Lxn3;->g([II)I

    .line 102
    .line 103
    .line 104
    move-result v18

    .line 105
    sub-int v18, v14, v18

    .line 106
    .line 107
    move/from16 v19, v9

    .line 108
    .line 109
    iget v9, v2, Lxn3;->m:I

    .line 110
    .line 111
    move/from16 v20, v9

    .line 112
    .line 113
    iget v9, v2, Lxn3;->l:I

    .line 114
    .line 115
    array-length v12, v12

    .line 116
    move/from16 v21, v10

    .line 117
    .line 118
    move/from16 v10, v20

    .line 119
    .line 120
    move/from16 v20, v13

    .line 121
    .line 122
    move v13, v11

    .line 123
    :goto_1
    if-ge v13, v8, :cond_6

    .line 124
    .line 125
    if-eq v13, v11, :cond_3

    .line 126
    .line 127
    mul-int/lit8 v22, v13, 0x5

    .line 128
    .line 129
    add-int/lit8 v22, v22, 0x2

    .line 130
    .line 131
    aget v23, v6, v22

    .line 132
    .line 133
    add-int v23, v23, v16

    .line 134
    .line 135
    aput v23, v6, v22

    .line 136
    .line 137
    :cond_3
    invoke-virtual {v2, v6, v13}, Lxn3;->g([II)I

    .line 138
    .line 139
    .line 140
    move-result v22

    .line 141
    move-object/from16 v23, v6

    .line 142
    .line 143
    add-int v6, v22, v18

    .line 144
    .line 145
    if-ge v10, v13, :cond_4

    .line 146
    .line 147
    move/from16 v22, v11

    .line 148
    .line 149
    const/4 v11, 0x0

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    move/from16 v22, v11

    .line 152
    .line 153
    iget v11, v2, Lxn3;->k:I

    .line 154
    .line 155
    :goto_2
    invoke-static {v6, v11, v9, v12}, Lxn3;->i(IIII)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    mul-int/lit8 v11, v13, 0x5

    .line 160
    .line 161
    add-int/lit8 v11, v11, 0x4

    .line 162
    .line 163
    aput v6, v23, v11

    .line 164
    .line 165
    if-ne v13, v10, :cond_5

    .line 166
    .line 167
    add-int/lit8 v10, v10, 0x1

    .line 168
    .line 169
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    move/from16 v11, v22

    .line 172
    .line 173
    move-object/from16 v6, v23

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    move-object/from16 v23, v6

    .line 177
    .line 178
    iput v10, v2, Lxn3;->m:I

    .line 179
    .line 180
    iget-object v6, v0, Lxn3;->d:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v0}, Lxn3;->p()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-static {v6, v1, v9}, Lwn3;->a(Ljava/util/ArrayList;II)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    iget-object v9, v0, Lxn3;->d:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0}, Lxn3;->p()I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    invoke-static {v9, v4, v10}, Lwn3;->a(Ljava/util/ArrayList;II)I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-ge v6, v4, :cond_8

    .line 201
    .line 202
    iget-object v9, v0, Lxn3;->d:Ljava/util/ArrayList;

    .line 203
    .line 204
    new-instance v10, Ljava/util/ArrayList;

    .line 205
    .line 206
    sub-int v11, v4, v6

    .line 207
    .line 208
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .line 210
    .line 211
    move v11, v6

    .line 212
    :goto_3
    if-ge v11, v4, :cond_7

    .line 213
    .line 214
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Lvf1;

    .line 219
    .line 220
    iget v13, v12, Lvf1;->a:I

    .line 221
    .line 222
    add-int v13, v13, v16

    .line 223
    .line 224
    iput v13, v12, Lvf1;->a:I

    .line 225
    .line 226
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    add-int/lit8 v11, v11, 0x1

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    iget-object v11, v2, Lxn3;->d:Ljava/util/ArrayList;

    .line 233
    .line 234
    iget v12, v2, Lxn3;->t:I

    .line 235
    .line 236
    invoke-virtual {v2}, Lxn3;->p()I

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    invoke-static {v11, v12, v13}, Lwn3;->a(Ljava/util/ArrayList;II)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    iget-object v12, v2, Lxn3;->d:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    sget-object v10, Lg01;->n:Lg01;

    .line 258
    .line 259
    :goto_4
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-nez v4, :cond_9

    .line 264
    .line 265
    iget-object v4, v0, Lxn3;->e:Ljava/util/HashMap;

    .line 266
    .line 267
    iget-object v6, v2, Lxn3;->e:Ljava/util/HashMap;

    .line 268
    .line 269
    if-eqz v4, :cond_9

    .line 270
    .line 271
    if-eqz v6, :cond_9

    .line 272
    .line 273
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    const/4 v9, 0x0

    .line 278
    :goto_5
    if-ge v9, v6, :cond_9

    .line 279
    .line 280
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    check-cast v11, Lvf1;

    .line 285
    .line 286
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    check-cast v11, Lcg1;

    .line 291
    .line 292
    add-int/lit8 v9, v9, 0x1

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_9
    iget v4, v2, Lxn3;->v:I

    .line 296
    .line 297
    invoke-virtual {v2, v15}, Lxn3;->O(I)Lcg1;

    .line 298
    .line 299
    .line 300
    iget-object v4, v0, Lxn3;->b:[I

    .line 301
    .line 302
    invoke-virtual {v0, v4, v1}, Lxn3;->E([II)I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez p5, :cond_a

    .line 307
    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_a
    if-eqz p3, :cond_e

    .line 312
    .line 313
    if-ltz v4, :cond_b

    .line 314
    .line 315
    move/from16 v17, v19

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_b
    const/16 v17, 0x0

    .line 319
    .line 320
    :goto_6
    if-eqz v17, :cond_c

    .line 321
    .line 322
    invoke-virtual {v0}, Lxn3;->P()V

    .line 323
    .line 324
    .line 325
    iget v3, v0, Lxn3;->t:I

    .line 326
    .line 327
    sub-int/2addr v4, v3

    .line 328
    invoke-virtual {v0, v4}, Lxn3;->a(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Lxn3;->P()V

    .line 332
    .line 333
    .line 334
    :cond_c
    iget v3, v0, Lxn3;->t:I

    .line 335
    .line 336
    sub-int/2addr v1, v3

    .line 337
    invoke-virtual {v0, v1}, Lxn3;->a(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lxn3;->H()Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v17, :cond_d

    .line 345
    .line 346
    invoke-virtual {v0}, Lxn3;->M()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lxn3;->j()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Lxn3;->M()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lxn3;->j()V

    .line 356
    .line 357
    .line 358
    :cond_d
    move/from16 v17, v1

    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_e
    invoke-virtual {v0, v1, v3}, Lxn3;->I(II)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    add-int/lit8 v1, v1, -0x1

    .line 366
    .line 367
    invoke-virtual {v0, v5, v7, v1}, Lxn3;->J(III)V

    .line 368
    .line 369
    .line 370
    move/from16 v17, v3

    .line 371
    .line 372
    :goto_7
    if-eqz v17, :cond_f

    .line 373
    .line 374
    const-string v0, "Unexpectedly removed anchors"

    .line 375
    .line 376
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_f
    iget v0, v2, Lxn3;->o:I

    .line 380
    .line 381
    add-int/lit8 v13, v20, 0x1

    .line 382
    .line 383
    aget v1, v23, v13

    .line 384
    .line 385
    const/high16 v3, 0x40000000    # 2.0f

    .line 386
    .line 387
    and-int/2addr v3, v1

    .line 388
    if-eqz v3, :cond_10

    .line 389
    .line 390
    move/from16 v9, v19

    .line 391
    .line 392
    goto :goto_8

    .line 393
    :cond_10
    const v3, 0x3ffffff

    .line 394
    .line 395
    .line 396
    and-int v9, v1, v3

    .line 397
    .line 398
    :goto_8
    add-int/2addr v0, v9

    .line 399
    iput v0, v2, Lxn3;->o:I

    .line 400
    .line 401
    if-eqz p4, :cond_11

    .line 402
    .line 403
    iput v8, v2, Lxn3;->t:I

    .line 404
    .line 405
    add-int/2addr v14, v7

    .line 406
    iput v14, v2, Lxn3;->i:I

    .line 407
    .line 408
    :cond_11
    if-eqz v21, :cond_12

    .line 409
    .line 410
    invoke-virtual {v2, v15}, Lxn3;->T(I)V

    .line 411
    .line 412
    .line 413
    :cond_12
    return-object v10
.end method

.method public static varargs H([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Luh;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Luh;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final I(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lg01;->n:Lg01;

    .line 22
    .line 23
    return-object p0
.end method

.method public static J(Ljava/io/ByteArrayInputStream;I)[I
    .locals 5

    .line 1
    new-array v0, p1, [I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {p0, v3}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    long-to-int v3, v3

    .line 13
    add-int/2addr v2, v3

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static K(Ljava/io/FileInputStream;[B[B[Lft0;)[Lft0;
    .locals 7

    .line 1
    sget-object v0, Lk30;->k:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "Unsupported meta version"

    .line 9
    .line 10
    const-string v4, "Content found after the end of file"

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    sget-object v1, Lk30;->f:[B

    .line 16
    .line 17
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-static {p0, p1}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    long-to-int p1, p1

    .line 35
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    long-to-int p2, v5

    .line 44
    long-to-int v0, v0

    .line 45
    invoke-static {p0, p2, v0}, Ldm0;->H(Ljava/io/FileInputStream;II)[B

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-gtz p0, :cond_0

    .line 54
    .line 55
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 56
    .line 57
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-static {p0, p1, p3}, Ltv4;->L(Ljava/io/ByteArrayInputStream;I[Lft0;)[Lft0;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    throw p1

    .line 78
    :cond_0
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_1
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :cond_2
    const-string p0, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    .line 87
    .line 88
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_3
    sget-object v0, Lk30;->l:[B

    .line 93
    .line 94
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    const/4 p1, 0x2

    .line 101
    invoke-static {p0, p1}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    long-to-int p1, v0

    .line 106
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    long-to-int v3, v5

    .line 115
    long-to-int v0, v0

    .line 116
    invoke-static {p0, v3, v0}, Ldm0;->H(Ljava/io/FileInputStream;II)[B

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-gtz p0, :cond_4

    .line 125
    .line 126
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 129
    .line 130
    .line 131
    :try_start_2
    invoke-static {p0, p2, p1, p3}, Ltv4;->M(Ljava/io/ByteArrayInputStream;[BI[Lft0;)[Lft0;

    .line 132
    .line 133
    .line 134
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 135
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 136
    .line 137
    .line 138
    return-object p1

    .line 139
    :catchall_2
    move-exception p1

    .line 140
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_3
    move-exception p0

    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    throw p1

    .line 149
    :cond_4
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :cond_5
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object v2
.end method

.method public static L(Ljava/io/ByteArrayInputStream;I[Lft0;)[Lft0;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lft0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne p1, v0, :cond_4

    .line 14
    .line 15
    new-array v0, p1, [Ljava/lang/String;

    .line 16
    .line 17
    new-array v3, p1, [I

    .line 18
    .line 19
    move v4, v1

    .line 20
    :goto_0
    if-ge v4, p1, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    long-to-int v6, v6

    .line 28
    invoke-static {p0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    long-to-int v5, v7

    .line 33
    aput v5, v3, v4

    .line 34
    .line 35
    new-instance v5, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v6}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    aput-object v5, v0, v4

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 52
    .line 53
    aget-object v4, p2, v1

    .line 54
    .line 55
    iget-object v5, v4, Lft0;->b:Ljava/lang/String;

    .line 56
    .line 57
    aget-object v6, v0, v1

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    aget v5, v3, v1

    .line 66
    .line 67
    iput v5, v4, Lft0;->e:I

    .line 68
    .line 69
    invoke-static {p0, v5}, Ltv4;->J(Ljava/io/ByteArrayInputStream;I)[I

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iput-object v5, v4, Lft0;->h:[I

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string p0, "Order of dexfiles in metadata did not match baseline"

    .line 79
    .line 80
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v2

    .line 84
    :cond_3
    return-object p2

    .line 85
    :cond_4
    const-string p0, "Mismatched number of dex files found in metadata"

    .line 86
    .line 87
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method

.method public static M(Ljava/io/ByteArrayInputStream;[BI[Lft0;)[Lft0;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Lft0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    array-length v0, p3

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne p2, v0, :cond_9

    .line 14
    .line 15
    move v0, v1

    .line 16
    :goto_0
    if-ge v0, p2, :cond_8

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-static {p0, v3}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v3}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    long-to-int v4, v4

    .line 27
    new-instance v5, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v4}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    invoke-static {p0, v4}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-static {p0, v3}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    long-to-int v3, v3

    .line 48
    array-length v4, p3

    .line 49
    if-gtz v4, :cond_2

    .line 50
    .line 51
    :cond_1
    move-object v4, v2

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    const-string v4, "!"

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-gez v4, :cond_3

    .line 60
    .line 61
    const-string v4, ":"

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    :cond_3
    if-lez v4, :cond_4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object v4, v5

    .line 77
    :goto_1
    move v8, v1

    .line 78
    :goto_2
    array-length v9, p3

    .line 79
    if-ge v8, v9, :cond_1

    .line 80
    .line 81
    aget-object v9, p3, v8

    .line 82
    .line 83
    iget-object v9, v9, Lft0;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_5

    .line 90
    .line 91
    aget-object v4, p3, v8

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_3
    if-eqz v4, :cond_7

    .line 98
    .line 99
    iput-wide v6, v4, Lft0;->d:J

    .line 100
    .line 101
    invoke-static {p0, v3}, Ltv4;->J(Ljava/io/ByteArrayInputStream;I)[I

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    sget-object v6, Lk30;->j:[B

    .line 106
    .line 107
    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_6

    .line 112
    .line 113
    iput v3, v4, Lft0;->e:I

    .line 114
    .line 115
    iput-object v5, v4, Lft0;->h:[I

    .line 116
    .line 117
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    const-string p0, "Missing profile key: "

    .line 121
    .line 122
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    :cond_8
    return-object p3

    .line 131
    :cond_9
    const-string p0, "Mismatched number of dex files found in metadata"

    .line 132
    .line 133
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v2
.end method

.method public static N(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lft0;
    .locals 6

    .line 1
    sget-object v0, Lk30;->g:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-static {p0, p1}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    long-to-int p1, v1

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-static {p0, v1}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {p0, v1}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    long-to-int v1, v4

    .line 26
    long-to-int v2, v2

    .line 27
    invoke-static {p0, v1, v2}, Ldm0;->H(Ljava/io/FileInputStream;II)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-gtz p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-static {p0, p2, p1}, Ltv4;->O(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lft0;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    throw p1

    .line 60
    :cond_0
    const-string p0, "Content found after the end of file"

    .line 61
    .line 62
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    const-string p0, "Unsupported version"

    .line 67
    .line 68
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public static O(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Lft0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-array v0, v3, [Lft0;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-array v2, v1, [Lft0;

    .line 16
    .line 17
    move v4, v3

    .line 18
    :goto_0
    const/4 v5, 0x2

    .line 19
    if-ge v4, v1, :cond_1

    .line 20
    .line 21
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    long-to-int v6, v6

    .line 26
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    long-to-int v14, v7

    .line 31
    const/4 v5, 0x4

    .line 32
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v12

    .line 40
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    new-instance v5, Lft0;

    .line 45
    .line 46
    new-instance v11, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v6}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v11, v6, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    long-to-int v15, v7

    .line 58
    long-to-int v6, v9

    .line 59
    new-array v7, v14, [I

    .line 60
    .line 61
    new-instance v18, Ljava/util/TreeMap;

    .line 62
    .line 63
    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    .line 64
    .line 65
    .line 66
    move-object/from16 v10, p1

    .line 67
    .line 68
    move-object v9, v5

    .line 69
    move/from16 v16, v6

    .line 70
    .line 71
    move-object/from16 v17, v7

    .line 72
    .line 73
    invoke-direct/range {v9 .. v18}, Lft0;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    .line 74
    .line 75
    .line 76
    aput-object v9, v2, v4

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move v4, v3

    .line 82
    :goto_1
    if-ge v4, v1, :cond_e

    .line 83
    .line 84
    aget-object v6, v2, v4

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v8, v6, Lft0;->f:I

    .line 91
    .line 92
    iget v9, v6, Lft0;->g:I

    .line 93
    .line 94
    iget-object v10, v6, Lft0;->i:Ljava/util/TreeMap;

    .line 95
    .line 96
    sub-int/2addr v7, v8

    .line 97
    move v8, v3

    .line 98
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x7

    .line 103
    if-le v11, v7, :cond_7

    .line 104
    .line 105
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    long-to-int v11, v13

    .line 110
    add-int/2addr v8, v11

    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    const/4 v13, 0x1

    .line 116
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-virtual {v10, v11, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v14

    .line 127
    long-to-int v11, v14

    .line 128
    :goto_2
    if-lez v11, :cond_2

    .line 129
    .line 130
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v13}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    long-to-int v14, v14

    .line 138
    const/4 v15, 0x6

    .line 139
    if-ne v14, v15, :cond_4

    .line 140
    .line 141
    :cond_3
    :goto_3
    move v15, v3

    .line 142
    move/from16 v16, v4

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_4
    if-ne v14, v12, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    :goto_4
    if-lez v14, :cond_3

    .line 149
    .line 150
    invoke-static {v0, v13}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 151
    .line 152
    .line 153
    move v15, v3

    .line 154
    move/from16 v16, v4

    .line 155
    .line 156
    invoke-static {v0, v13}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    long-to-int v3, v3

    .line 161
    :goto_5
    if-lez v3, :cond_6

    .line 162
    .line 163
    invoke-static {v0, v5}, Ldm0;->I(Ljava/io/InputStream;I)J

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, -0x1

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_6
    add-int/lit8 v14, v14, -0x1

    .line 170
    .line 171
    move v3, v15

    .line 172
    move/from16 v4, v16

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :goto_6
    add-int/lit8 v11, v11, -0x1

    .line 176
    .line 177
    move v3, v15

    .line 178
    move/from16 v4, v16

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    move v15, v3

    .line 182
    move/from16 v16, v4

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-ne v3, v7, :cond_d

    .line 189
    .line 190
    iget v3, v6, Lft0;->e:I

    .line 191
    .line 192
    invoke-static {v0, v3}, Ltv4;->J(Ljava/io/ByteArrayInputStream;I)[I

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iput-object v3, v6, Lft0;->h:[I

    .line 197
    .line 198
    mul-int/lit8 v3, v9, 0x2

    .line 199
    .line 200
    add-int/2addr v3, v12

    .line 201
    and-int/lit8 v3, v3, -0x8

    .line 202
    .line 203
    div-int/lit8 v3, v3, 0x8

    .line 204
    .line 205
    invoke-static {v0, v3}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    move v4, v15

    .line 214
    :goto_7
    if-ge v4, v9, :cond_c

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    move v6, v5

    .line 223
    goto :goto_8

    .line 224
    :cond_8
    move v6, v15

    .line 225
    :goto_8
    add-int v7, v4, v9

    .line 226
    .line 227
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_9

    .line 232
    .line 233
    or-int/lit8 v6, v6, 0x4

    .line 234
    .line 235
    :cond_9
    if-eqz v6, :cond_b

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-virtual {v10, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    check-cast v7, Ljava/lang/Integer;

    .line 246
    .line 247
    if-nez v7, :cond_a

    .line 248
    .line 249
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    or-int/2addr v6, v7

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v10, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_c
    add-int/lit8 v4, v16, 0x1

    .line 273
    .line 274
    move v3, v15

    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_d
    const-string v0, "Read too much data during profile line parse"

    .line 278
    .line 279
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const/4 v0, 0x0

    .line 283
    return-object v0

    .line 284
    :cond_e
    return-object v2
.end method

.method public static P(Landroid/content/Context;Ld84;J)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lez3;->a:Lra3;

    .line 17
    .line 18
    new-array p1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Ld84;->c()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-wide v2, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v5, v4

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lp84;

    .line 53
    .line 54
    invoke-virtual {v6}, Lp84;->b()Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    const-wide/16 v9, 0x1b58

    .line 65
    .line 66
    add-long/2addr v9, v7

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11

    .line 71
    cmp-long v11, v9, v11

    .line 72
    .line 73
    const/4 v12, 0x1

    .line 74
    if-lez v11, :cond_2

    .line 75
    .line 76
    move v11, v12

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v11, v1

    .line 79
    :goto_1
    cmp-long v7, p2, v7

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v12, v1

    .line 85
    :goto_2
    if-eqz v11, :cond_1

    .line 86
    .line 87
    if-eqz v12, :cond_1

    .line 88
    .line 89
    cmp-long v7, v9, v2

    .line 90
    .line 91
    if-gez v7, :cond_1

    .line 92
    .line 93
    move-object v5, v6

    .line 94
    move-wide v2, v9

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    if-eqz v5, :cond_5

    .line 97
    .line 98
    new-instance v4, Ljs2;

    .line 99
    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {v4, v0, v5}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    if-nez v4, :cond_7

    .line 108
    .line 109
    sget-object p0, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 110
    .line 111
    invoke-virtual {p1}, Ld84;->c()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    const/16 v0, 0xa

    .line 118
    .line 119
    invoke-static {p0, v0}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lp84;

    .line 141
    .line 142
    invoke-virtual {v0}, Lp84;->d()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lp84;->b()Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, "\u2192reset="

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v0, "scheduleNext: No future trigger found. Limits: "

    .line 177
    .line 178
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p0}, Lit0;->a(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    iget-object p1, v4, Ljs2;->n:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    iget-object p1, v4, Ljs2;->o:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p1, Ljava/lang/Number;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v4

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    cmp-long p1, v2, v6

    .line 213
    .line 214
    if-gtz p1, :cond_8

    .line 215
    .line 216
    sget-object p0, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 217
    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string p1, "scheduleNext: Trigger time already passed. triggerTime="

    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string p1, ", now="

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p0}, Lit0;->a(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_8
    sub-long v6, v2, v6

    .line 245
    .line 246
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 247
    .line 248
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v0, "rolling_window_trigger_timestamp"

    .line 252
    .line 253
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-interface {p1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v0, Lzl0;

    .line 261
    .line 262
    invoke-direct {v0, p1}, Lzl0;-><init>(Ljava/util/LinkedHashMap;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Lbi4;->L(Lzl0;)[B

    .line 266
    .line 267
    .line 268
    new-instance p1, Lnp2;

    .line 269
    .line 270
    const-class v8, Lu/sage/worker/RollingWindowWorker;

    .line 271
    .line 272
    invoke-direct {p1, v8, v1}, Lnp2;-><init>(Ljava/lang/Class;I)V

    .line 273
    .line 274
    .line 275
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 276
    .line 277
    invoke-virtual {p1, v6, v7, v8}, Lnp2;->b(JLjava/util/concurrent/TimeUnit;)Lnp2;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object v8, p1, Lnp2;->c:Log4;

    .line 282
    .line 283
    iput-object v0, v8, Log4;->e:Lzl0;

    .line 284
    .line 285
    const-string v0, "rolling_window"

    .line 286
    .line 287
    iget-object v8, p1, Lnp2;->d:Ljava/util/LinkedHashSet;

    .line 288
    .line 289
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lnp2;->a()Lmg4;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Lop2;

    .line 297
    .line 298
    sget-object v0, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 299
    .line 300
    new-instance v0, Ljava/util/Date;

    .line 301
    .line 302
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 303
    .line 304
    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v9, "scheduleNext: Scheduling for "

    .line 308
    .line 309
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v0, " (delay="

    .line 316
    .line 317
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v0, "ms, ts="

    .line 324
    .line 325
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v0, ")"

    .line 332
    .line 333
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    sget-object v0, Lez3;->a:Lra3;

    .line 344
    .line 345
    new-instance v4, Ljava/util/Date;

    .line 346
    .line 347
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    new-array v1, v1, [Ljava/lang/Object;

    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-static {p0}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    const-string v0, "rolling_window_work"

    .line 366
    .line 367
    invoke-virtual {p0, v0, p1}, Leg4;->b(Ljava/lang/String;Lop2;)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public static Q(FFLjava/lang/Object;I)Lyq3;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const p1, 0x44bb8000    # 1500.0f

    .line 12
    .line 13
    .line 14
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 15
    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_2
    new-instance p3, Lyq3;

    .line 20
    .line 21
    invoke-direct {p3, p0, p1, p2}, Lyq3;-><init>(FFLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p3
.end method

.method public static final R(Lsf2;)I
    .locals 10

    .line 1
    iget v0, p0, Lsf2;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lsf2;->c(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    iget v2, p0, Lsf2;->b:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lsf2;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lsf2;->d()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0, v2}, Lsf2;->f(II)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lsf2;->b:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lsf2;->e(I)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lsf2;->b:I

    .line 33
    .line 34
    ushr-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lsf2;->c(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/lit8 v6, v4, 0x1

    .line 44
    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    add-int/lit8 v7, v6, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v7}, Lsf2;->c(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ge v6, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Lsf2;->c(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-le v9, v8, :cond_1

    .line 60
    .line 61
    if-le v9, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v9}, Lsf2;->f(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v5}, Lsf2;->f(II)V

    .line 67
    .line 68
    .line 69
    move v4, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-le v8, v5, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v4, v8}, Lsf2;->f(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v5}, Lsf2;->f(II)V

    .line 77
    .line 78
    .line 79
    move v4, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v1
.end method

.method public static S()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 2
    .line 3
    const-string v1, "Index overflow has happened."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public static T(Landroid/content/Context;I)I
    .locals 1

    .line 1
    const v0, 0x1030001

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method public static U(Ljava/io/ByteArrayOutputStream;[B[Lft0;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lk30;->j:[B

    .line 8
    .line 9
    sget-object v4, Lk30;->i:[B

    .line 10
    .line 11
    sget-object v5, Lk30;->f:[B

    .line 12
    .line 13
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x1

    .line 20
    if-eqz v6, :cond_a

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .line 37
    .line 38
    :try_start_0
    array-length v10, v2

    .line 39
    invoke-static {v6, v10}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 40
    .line 41
    .line 42
    const/4 v10, 0x2

    .line 43
    move v11, v8

    .line 44
    move v12, v10

    .line 45
    :goto_0
    array-length v13, v2

    .line 46
    if-ge v11, v13, :cond_0

    .line 47
    .line 48
    aget-object v13, v2, v11

    .line 49
    .line 50
    iget-wide v14, v13, Lft0;->c:J

    .line 51
    .line 52
    invoke-static {v6, v14, v15, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 53
    .line 54
    .line 55
    iget-wide v14, v13, Lft0;->d:J

    .line 56
    .line 57
    invoke-static {v6, v14, v15, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 58
    .line 59
    .line 60
    iget v14, v13, Lft0;->g:I

    .line 61
    .line 62
    int-to-long v14, v14

    .line 63
    invoke-static {v6, v14, v15, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 64
    .line 65
    .line 66
    iget-object v14, v13, Lft0;->a:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v13, v13, Lft0;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v14, v13, v5}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    add-int/lit8 v12, v12, 0xe

    .line 75
    .line 76
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    array-length v15, v15

    .line 83
    invoke-static {v6, v15}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 84
    .line 85
    .line 86
    add-int/2addr v12, v15

    .line 87
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    invoke-virtual {v6, v13}, Ljava/io/OutputStream;->write([B)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v11, v11, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_1
    move-object v1, v0

    .line 98
    goto/16 :goto_11

    .line 99
    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    array-length v11, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string v13, ", does not match actual size "

    .line 108
    .line 109
    const-string v14, "Expected size "

    .line 110
    .line 111
    if-ne v12, v11, :cond_9

    .line 112
    .line 113
    :try_start_1
    new-instance v11, Lqh4;

    .line 114
    .line 115
    invoke-direct {v11, v9, v5, v8}, Lqh4;-><init>(I[BZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .line 128
    .line 129
    move v6, v8

    .line 130
    move v11, v6

    .line 131
    :goto_2
    :try_start_2
    array-length v12, v2

    .line 132
    if-ge v6, v12, :cond_2

    .line 133
    .line 134
    aget-object v12, v2, v6

    .line 135
    .line 136
    invoke-static {v5, v6}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v11, v11, 0x4

    .line 140
    .line 141
    iget v15, v12, Lft0;->e:I

    .line 142
    .line 143
    invoke-static {v5, v15}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 144
    .line 145
    .line 146
    iget v15, v12, Lft0;->e:I

    .line 147
    .line 148
    mul-int/2addr v15, v10

    .line 149
    add-int/2addr v11, v15

    .line 150
    iget-object v12, v12, Lft0;->h:[I

    .line 151
    .line 152
    array-length v15, v12

    .line 153
    move/from16 v16, v8

    .line 154
    .line 155
    move/from16 p1, v10

    .line 156
    .line 157
    move/from16 v10, v16

    .line 158
    .line 159
    :goto_3
    if-ge v10, v15, :cond_1

    .line 160
    .line 161
    aget v17, v12, v10

    .line 162
    .line 163
    sub-int v8, v17, v16

    .line 164
    .line 165
    invoke-static {v5, v8}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v10, v10, 0x1

    .line 169
    .line 170
    move/from16 v16, v17

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    goto :goto_3

    .line 174
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 175
    .line 176
    move/from16 v10, p1

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    goto :goto_2

    .line 180
    :goto_4
    move-object v1, v0

    .line 181
    goto/16 :goto_f

    .line 182
    .line 183
    :catchall_1
    move-exception v0

    .line 184
    goto :goto_4

    .line 185
    :cond_2
    move/from16 p1, v10

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    array-length v8, v6

    .line 192
    if-ne v11, v8, :cond_8

    .line 193
    .line 194
    new-instance v8, Lqh4;

    .line 195
    .line 196
    invoke-direct {v8, v3, v6, v9}, Lqh4;-><init>(I[BZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    const/4 v6, 0x0

    .line 212
    :goto_5
    :try_start_3
    array-length v8, v2

    .line 213
    if-ge v5, v8, :cond_4

    .line 214
    .line 215
    aget-object v8, v2, v5

    .line 216
    .line 217
    iget-object v10, v8, Lft0;->i:Ljava/util/TreeMap;

    .line 218
    .line 219
    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    const/4 v11, 0x0

    .line 228
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_3

    .line 233
    .line 234
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    check-cast v12, Ljava/util/Map$Entry;

    .line 239
    .line 240
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    or-int/2addr v11, v12

    .line 251
    goto :goto_6

    .line 252
    :cond_3
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 253
    .line 254
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 255
    .line 256
    .line 257
    :try_start_4
    invoke-static {v10, v11, v8}, Ltv4;->Y(Ljava/io/ByteArrayOutputStream;ILft0;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 261
    .line 262
    .line 263
    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 264
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 265
    .line 266
    .line 267
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 268
    .line 269
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 270
    .line 271
    .line 272
    :try_start_6
    invoke-static {v10, v8}, Ltv4;->Z(Ljava/io/ByteArrayOutputStream;Lft0;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 276
    .line 277
    .line 278
    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 279
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v5}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 283
    .line 284
    .line 285
    array-length v10, v12

    .line 286
    add-int/lit8 v10, v10, 0x2

    .line 287
    .line 288
    array-length v15, v8

    .line 289
    add-int/2addr v10, v15

    .line 290
    add-int/lit8 v6, v6, 0x6

    .line 291
    .line 292
    move v15, v5

    .line 293
    move/from16 v16, v6

    .line 294
    .line 295
    int-to-long v5, v10

    .line 296
    invoke-static {v3, v5, v6, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 297
    .line 298
    .line 299
    invoke-static {v3, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 306
    .line 307
    .line 308
    add-int v6, v16, v10

    .line 309
    .line 310
    add-int/lit8 v5, v15, 0x1

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :catchall_2
    move-exception v0

    .line 314
    move-object v1, v0

    .line 315
    goto/16 :goto_d

    .line 316
    .line 317
    :catchall_3
    move-exception v0

    .line 318
    move-object v1, v0

    .line 319
    :try_start_8
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :catchall_4
    move-exception v0

    .line 324
    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    :goto_7
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 328
    :catchall_5
    move-exception v0

    .line 329
    move-object v1, v0

    .line 330
    :try_start_a
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :catchall_6
    move-exception v0

    .line 335
    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 336
    .line 337
    .line 338
    :goto_8
    throw v1

    .line 339
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    array-length v5, v2

    .line 344
    if-ne v6, v5, :cond_7

    .line 345
    .line 346
    new-instance v5, Lqh4;

    .line 347
    .line 348
    invoke-direct {v5, v7, v2, v9}, Lqh4;-><init>(I[BZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    mul-int/lit8 v2, v2, 0x10

    .line 362
    .line 363
    int-to-long v2, v2

    .line 364
    const-wide/16 v5, 0xc

    .line 365
    .line 366
    add-long/2addr v5, v2

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    int-to-long v2, v2

    .line 372
    invoke-static {v0, v2, v3, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 373
    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-ge v2, v3, :cond_6

    .line 381
    .line 382
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Lqh4;

    .line 387
    .line 388
    iget v8, v3, Lqh4;->a:I

    .line 389
    .line 390
    iget-object v10, v3, Lqh4;->b:[B

    .line 391
    .line 392
    invoke-static {v8}, Ldi0;->k(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v11

    .line 396
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v5, v6, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 400
    .line 401
    .line 402
    iget-boolean v3, v3, Lqh4;->c:Z

    .line 403
    .line 404
    if-eqz v3, :cond_5

    .line 405
    .line 406
    array-length v3, v10

    .line 407
    int-to-long v11, v3

    .line 408
    invoke-static {v10}, Ldm0;->q([B)[B

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    array-length v8, v3

    .line 416
    int-to-long v13, v8

    .line 417
    invoke-static {v0, v13, v14, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 418
    .line 419
    .line 420
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 421
    .line 422
    .line 423
    array-length v3, v3

    .line 424
    :goto_a
    int-to-long v10, v3

    .line 425
    add-long/2addr v5, v10

    .line 426
    goto :goto_b

    .line 427
    :cond_5
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    array-length v3, v10

    .line 431
    int-to-long v11, v3

    .line 432
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 433
    .line 434
    .line 435
    const-wide/16 v11, 0x0

    .line 436
    .line 437
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 438
    .line 439
    .line 440
    array-length v3, v10

    .line 441
    goto :goto_a

    .line 442
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 443
    .line 444
    goto :goto_9

    .line 445
    :cond_6
    const/4 v8, 0x0

    .line 446
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-ge v8, v1, :cond_12

    .line 451
    .line 452
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, [B

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 459
    .line 460
    .line 461
    add-int/lit8 v8, v8, 0x1

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_7
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    array-length v1, v2

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 487
    .line 488
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 492
    :goto_d
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 493
    .line 494
    .line 495
    goto :goto_e

    .line 496
    :catchall_7
    move-exception v0

    .line 497
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    :goto_e
    throw v1

    .line 501
    :cond_8
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    array-length v1, v6

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 524
    .line 525
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 529
    :goto_f
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 530
    .line 531
    .line 532
    goto :goto_10

    .line 533
    :catchall_8
    move-exception v0

    .line 534
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 535
    .line 536
    .line 537
    :goto_10
    throw v1

    .line 538
    :cond_9
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    array-length v1, v5

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 561
    .line 562
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 566
    :goto_11
    :try_start_11
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 567
    .line 568
    .line 569
    goto :goto_12

    .line 570
    :catchall_9
    move-exception v0

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    :goto_12
    throw v1

    .line 575
    :cond_a
    sget-object v5, Lk30;->g:[B

    .line 576
    .line 577
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-eqz v6, :cond_b

    .line 582
    .line 583
    invoke-static {v2, v5}, Ltv4;->o([Lft0;[B)[B

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    array-length v2, v2

    .line 588
    int-to-long v2, v2

    .line 589
    invoke-static {v0, v2, v3, v9}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 590
    .line 591
    .line 592
    array-length v2, v1

    .line 593
    int-to-long v2, v2

    .line 594
    invoke-static {v0, v2, v3, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 595
    .line 596
    .line 597
    invoke-static {v1}, Ldm0;->q([B)[B

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    array-length v2, v1

    .line 602
    int-to-long v2, v2

    .line 603
    invoke-static {v0, v2, v3, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 607
    .line 608
    .line 609
    return v9

    .line 610
    :cond_b
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    if-eqz v5, :cond_e

    .line 615
    .line 616
    array-length v1, v2

    .line 617
    int-to-long v5, v1

    .line 618
    invoke-static {v0, v5, v6, v9}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 619
    .line 620
    .line 621
    array-length v1, v2

    .line 622
    const/4 v3, 0x0

    .line 623
    :goto_13
    if-ge v3, v1, :cond_12

    .line 624
    .line 625
    aget-object v5, v2, v3

    .line 626
    .line 627
    iget-object v6, v5, Lft0;->i:Ljava/util/TreeMap;

    .line 628
    .line 629
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    mul-int/2addr v6, v7

    .line 634
    iget-object v8, v5, Lft0;->a:Ljava/lang/String;

    .line 635
    .line 636
    iget-object v10, v5, Lft0;->b:Ljava/lang/String;

    .line 637
    .line 638
    invoke-static {v8, v10, v4}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 643
    .line 644
    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    array-length v11, v11

    .line 649
    invoke-static {v0, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 650
    .line 651
    .line 652
    iget-object v11, v5, Lft0;->h:[I

    .line 653
    .line 654
    array-length v11, v11

    .line 655
    invoke-static {v0, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 656
    .line 657
    .line 658
    int-to-long v11, v6

    .line 659
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 660
    .line 661
    .line 662
    iget-wide v11, v5, Lft0;->c:J

    .line 663
    .line 664
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 672
    .line 673
    .line 674
    iget-object v6, v5, Lft0;->i:Ljava/util/TreeMap;

    .line 675
    .line 676
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_c

    .line 689
    .line 690
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v8

    .line 694
    check-cast v8, Ljava/lang/Integer;

    .line 695
    .line 696
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 697
    .line 698
    .line 699
    move-result v8

    .line 700
    invoke-static {v0, v8}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 701
    .line 702
    .line 703
    const/4 v8, 0x0

    .line 704
    invoke-static {v0, v8}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 705
    .line 706
    .line 707
    goto :goto_14

    .line 708
    :cond_c
    iget-object v5, v5, Lft0;->h:[I

    .line 709
    .line 710
    array-length v6, v5

    .line 711
    const/4 v8, 0x0

    .line 712
    :goto_15
    if-ge v8, v6, :cond_d

    .line 713
    .line 714
    aget v10, v5, v8

    .line 715
    .line 716
    invoke-static {v0, v10}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 717
    .line 718
    .line 719
    add-int/lit8 v8, v8, 0x1

    .line 720
    .line 721
    goto :goto_15

    .line 722
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 723
    .line 724
    goto :goto_13

    .line 725
    :cond_e
    sget-object v4, Lk30;->h:[B

    .line 726
    .line 727
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    if-eqz v5, :cond_f

    .line 732
    .line 733
    invoke-static {v2, v4}, Ltv4;->o([Lft0;[B)[B

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    array-length v2, v2

    .line 738
    int-to-long v2, v2

    .line 739
    invoke-static {v0, v2, v3, v9}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 740
    .line 741
    .line 742
    array-length v2, v1

    .line 743
    int-to-long v2, v2

    .line 744
    invoke-static {v0, v2, v3, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 745
    .line 746
    .line 747
    invoke-static {v1}, Ldm0;->q([B)[B

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    array-length v2, v1

    .line 752
    int-to-long v2, v2

    .line 753
    invoke-static {v0, v2, v3, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 757
    .line 758
    .line 759
    return v9

    .line 760
    :cond_f
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    if-eqz v1, :cond_13

    .line 765
    .line 766
    array-length v1, v2

    .line 767
    invoke-static {v0, v1}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 768
    .line 769
    .line 770
    array-length v1, v2

    .line 771
    const/4 v8, 0x0

    .line 772
    :goto_16
    if-ge v8, v1, :cond_12

    .line 773
    .line 774
    aget-object v4, v2, v8

    .line 775
    .line 776
    iget-object v5, v4, Lft0;->a:Ljava/lang/String;

    .line 777
    .line 778
    iget-object v6, v4, Lft0;->i:Ljava/util/TreeMap;

    .line 779
    .line 780
    iget-object v10, v4, Lft0;->b:Ljava/lang/String;

    .line 781
    .line 782
    invoke-static {v5, v10, v3}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 787
    .line 788
    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 789
    .line 790
    .line 791
    move-result-object v11

    .line 792
    array-length v11, v11

    .line 793
    invoke-static {v0, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    .line 797
    .line 798
    .line 799
    move-result v11

    .line 800
    invoke-static {v0, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 801
    .line 802
    .line 803
    iget-object v11, v4, Lft0;->h:[I

    .line 804
    .line 805
    array-length v11, v11

    .line 806
    invoke-static {v0, v11}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 807
    .line 808
    .line 809
    iget-wide v11, v4, Lft0;->c:J

    .line 810
    .line 811
    invoke-static {v0, v11, v12, v7}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 815
    .line 816
    .line 817
    move-result-object v5

    .line 818
    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 822
    .line 823
    .line 824
    move-result-object v5

    .line 825
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    if-eqz v6, :cond_10

    .line 834
    .line 835
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v6

    .line 839
    check-cast v6, Ljava/lang/Integer;

    .line 840
    .line 841
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 842
    .line 843
    .line 844
    move-result v6

    .line 845
    invoke-static {v0, v6}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 846
    .line 847
    .line 848
    goto :goto_17

    .line 849
    :cond_10
    iget-object v4, v4, Lft0;->h:[I

    .line 850
    .line 851
    array-length v5, v4

    .line 852
    const/4 v6, 0x0

    .line 853
    :goto_18
    if-ge v6, v5, :cond_11

    .line 854
    .line 855
    aget v10, v4, v6

    .line 856
    .line 857
    invoke-static {v0, v10}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 858
    .line 859
    .line 860
    add-int/lit8 v6, v6, 0x1

    .line 861
    .line 862
    goto :goto_18

    .line 863
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 864
    .line 865
    goto :goto_16

    .line 866
    :cond_12
    return v9

    .line 867
    :cond_13
    const/16 v18, 0x0

    .line 868
    .line 869
    return v18
.end method

.method public static V(IILmy0;)Ld34;
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x5a

    .line 8
    .line 9
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object p2, Lny0;->a:Ldl0;

    .line 14
    .line 15
    :cond_1
    new-instance p1, Ld34;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0, p2}, Ld34;-><init>(IILmy0;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public static W(Ljava/io/ByteArrayOutputStream;Lft0;)V
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ltv4;->Z(Ljava/io/ByteArrayOutputStream;Lft0;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lft0;->g:I

    .line 5
    .line 6
    iget-object v1, p1, Lft0;->h:[I

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    aget v5, v1, v3

    .line 14
    .line 15
    sub-int v4, v5, v4

    .line 16
    .line 17
    invoke-static {p0, v4}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    move v4, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x7

    .line 27
    .line 28
    and-int/lit8 v1, v1, -0x8

    .line 29
    .line 30
    div-int/lit8 v1, v1, 0x8

    .line 31
    .line 32
    new-array v1, v1, [B

    .line 33
    .line 34
    iget-object p1, p1, Lft0;->i:Ljava/util/TreeMap;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    and-int/lit8 v4, v2, 0x2

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    div-int/lit8 v4, v3, 0x8

    .line 82
    .line 83
    aget-byte v6, v1, v4

    .line 84
    .line 85
    rem-int/lit8 v7, v3, 0x8

    .line 86
    .line 87
    shl-int v7, v5, v7

    .line 88
    .line 89
    or-int/2addr v6, v7

    .line 90
    int-to-byte v6, v6

    .line 91
    aput-byte v6, v1, v4

    .line 92
    .line 93
    :cond_2
    and-int/lit8 v2, v2, 0x4

    .line 94
    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    add-int/2addr v3, v0

    .line 98
    div-int/lit8 v2, v3, 0x8

    .line 99
    .line 100
    aget-byte v4, v1, v2

    .line 101
    .line 102
    rem-int/lit8 v3, v3, 0x8

    .line 103
    .line 104
    shl-int v3, v5, v3

    .line 105
    .line 106
    or-int/2addr v3, v4

    .line 107
    int-to-byte v3, v3

    .line 108
    aput-byte v3, v1, v2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static X(Ljava/io/ByteArrayOutputStream;Lft0;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-static {p0, v1}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Lft0;->e:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 14
    .line 15
    .line 16
    iget v1, p1, Lft0;->f:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {p0, v1, v2, v3}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p1, Lft0;->c:J

    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lft0;->g:I

    .line 29
    .line 30
    int-to-long v1, p1

    .line 31
    invoke-static {p0, v1, v2, v3}, Ldm0;->P(Ljava/io/ByteArrayOutputStream;JI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static Y(Ljava/io/ByteArrayOutputStream;ILft0;)V
    .locals 10

    .line 1
    iget v0, p2, Lft0;->g:I

    .line 2
    .line 3
    and-int/lit8 v1, p1, -0x2

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/2addr v1, v0

    .line 10
    add-int/lit8 v1, v1, 0x7

    .line 11
    .line 12
    and-int/lit8 v1, v1, -0x8

    .line 13
    .line 14
    div-int/lit8 v1, v1, 0x8

    .line 15
    .line 16
    new-array v1, v1, [B

    .line 17
    .line 18
    iget-object p2, p2, Lft0;->i:Ljava/util/TreeMap;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v4, 0x1

    .line 61
    const/4 v5, 0x0

    .line 62
    move v6, v4

    .line 63
    :goto_0
    const/4 v7, 0x4

    .line 64
    if-gt v6, v7, :cond_0

    .line 65
    .line 66
    if-ne v6, v4, :cond_1

    .line 67
    .line 68
    :goto_1
    shl-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    and-int v7, v6, p1

    .line 72
    .line 73
    if-nez v7, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    and-int v7, v6, v2

    .line 77
    .line 78
    if-ne v7, v6, :cond_3

    .line 79
    .line 80
    mul-int v7, v5, v0

    .line 81
    .line 82
    add-int/2addr v7, v3

    .line 83
    div-int/lit8 v8, v7, 0x8

    .line 84
    .line 85
    aget-byte v9, v1, v8

    .line 86
    .line 87
    rem-int/lit8 v7, v7, 0x8

    .line 88
    .line 89
    shl-int v7, v4, v7

    .line 90
    .line 91
    or-int/2addr v7, v9

    .line 92
    int-to-byte v7, v7

    .line 93
    aput-byte v7, v1, v8

    .line 94
    .line 95
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static Z(Ljava/io/ByteArrayOutputStream;Lft0;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lft0;->i:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sub-int v1, v3, v1

    .line 51
    .line 52
    invoke-static {p0, v1}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Ldm0;->Q(Ljava/io/ByteArrayOutputStream;I)V

    .line 56
    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public static final a(Ls52;Lag1;I)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v2, -0x6a608a34

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lag1;->X(I)Lag1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v3

    .line 24
    :goto_0
    or-int v2, p2, v2

    .line 25
    .line 26
    and-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eq v4, v3, :cond_1

    .line 31
    .line 32
    move v3, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v6

    .line 35
    :goto_1
    and-int/2addr v2, v5

    .line 36
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    sget-object v2, Lth;->c:Loh;

    .line 43
    .line 44
    sget-object v3, Lmj1;->z:Law;

    .line 45
    .line 46
    invoke-static {v2, v3, v1, v6}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-wide v3, v1, Lag1;->T:J

    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v1}, Lag1;->l()Lhu2;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    sget-object v7, Lkd2;->b:Lkd2;

    .line 61
    .line 62
    invoke-static {v1, v7}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    sget-object v9, Llb0;->c:Lkb0;

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v9, Lkb0;->b:Lic0;

    .line 72
    .line 73
    invoke-virtual {v1}, Lag1;->Z()V

    .line 74
    .line 75
    .line 76
    iget-boolean v10, v1, Lag1;->S:Z

    .line 77
    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1, v9}, Lag1;->k(Lne1;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {v1}, Lag1;->j0()V

    .line 85
    .line 86
    .line 87
    :goto_2
    sget-object v10, Lkb0;->f:Lfd;

    .line 88
    .line 89
    invoke-static {v10, v1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object v2, Lkb0;->e:Lfd;

    .line 93
    .line 94
    invoke-static {v2, v1, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    sget-object v4, Lkb0;->g:Lfd;

    .line 102
    .line 103
    invoke-static {v4, v1, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v3, Lkb0;->h:Ll9;

    .line 107
    .line 108
    invoke-static {v1, v3}, Lht4;->y(Lag1;Lpe1;)V

    .line 109
    .line 110
    .line 111
    sget-object v11, Lkb0;->d:Lfd;

    .line 112
    .line 113
    invoke-static {v11, v1, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object v8, Lmj1;->y:Lbw;

    .line 117
    .line 118
    sget-object v12, Lth;->a:Lph;

    .line 119
    .line 120
    const/16 v13, 0x30

    .line 121
    .line 122
    invoke-static {v12, v8, v1, v13}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iget-wide v12, v1, Lag1;->T:J

    .line 127
    .line 128
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    invoke-virtual {v1}, Lag1;->l()Lhu2;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-static {v1, v7}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    invoke-virtual {v1}, Lag1;->Z()V

    .line 141
    .line 142
    .line 143
    iget-boolean v15, v1, Lag1;->S:Z

    .line 144
    .line 145
    if-eqz v15, :cond_3

    .line 146
    .line 147
    invoke-virtual {v1, v9}, Lag1;->k(Lne1;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v1}, Lag1;->j0()V

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-static {v10, v1, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v1, v13}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v12, v1, v4, v1, v3}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v11, v1, v14}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Ls52;->a:Ljava/lang/String;

    .line 167
    .line 168
    sget-object v3, Lwa2;->a:Lis3;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lua2;

    .line 175
    .line 176
    iget-object v4, v4, Lua2;->b:Le54;

    .line 177
    .line 178
    iget-object v4, v4, Le54;->h:Lay3;

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    check-cast v8, Lua2;

    .line 185
    .line 186
    iget-object v8, v8, Lua2;->a:Ly70;

    .line 187
    .line 188
    iget-wide v8, v8, Ly70;->a:J

    .line 189
    .line 190
    const/16 v21, 0x0

    .line 191
    .line 192
    const v22, 0x1fffa

    .line 193
    .line 194
    .line 195
    move-object v1, v2

    .line 196
    const/4 v2, 0x0

    .line 197
    move v10, v5

    .line 198
    move v11, v6

    .line 199
    const-wide/16 v5, 0x0

    .line 200
    .line 201
    move-object v12, v7

    .line 202
    const/4 v7, 0x0

    .line 203
    move-object/from16 v18, v4

    .line 204
    .line 205
    move-wide/from16 v28, v8

    .line 206
    .line 207
    move-object v9, v3

    .line 208
    move-wide/from16 v3, v28

    .line 209
    .line 210
    const/4 v8, 0x0

    .line 211
    move-object v13, v9

    .line 212
    move v14, v10

    .line 213
    const-wide/16 v9, 0x0

    .line 214
    .line 215
    move v15, v11

    .line 216
    const/4 v11, 0x0

    .line 217
    move-object/from16 v17, v12

    .line 218
    .line 219
    move-object/from16 v16, v13

    .line 220
    .line 221
    const-wide/16 v12, 0x0

    .line 222
    .line 223
    move/from16 v19, v14

    .line 224
    .line 225
    const/4 v14, 0x0

    .line 226
    move/from16 v20, v15

    .line 227
    .line 228
    const/4 v15, 0x0

    .line 229
    move-object/from16 v23, v16

    .line 230
    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    move-object/from16 v24, v17

    .line 234
    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    move/from16 v25, v20

    .line 238
    .line 239
    const/16 v20, 0x0

    .line 240
    .line 241
    move/from16 v0, v19

    .line 242
    .line 243
    move-object/from16 v26, v23

    .line 244
    .line 245
    move-object/from16 v27, v24

    .line 246
    .line 247
    move-object/from16 v19, p1

    .line 248
    .line 249
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v1, v19

    .line 253
    .line 254
    new-instance v2, Lnz1;

    .line 255
    .line 256
    const/high16 v3, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-direct {v2, v3, v0}, Lnz1;-><init>(FZ)V

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v2}, Lmt1;->f(Lag1;Lnd2;)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 265
    .line 266
    const-string v3, "HH:mm:ss"

    .line 267
    .line 268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v3, p0

    .line 276
    .line 277
    iget-wide v4, v3, Ls52;->c:J

    .line 278
    .line 279
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    move-object/from16 v13, v26

    .line 291
    .line 292
    invoke-virtual {v1, v13}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Lua2;

    .line 297
    .line 298
    iget-object v4, v4, Lua2;->b:Le54;

    .line 299
    .line 300
    iget-object v4, v4, Le54;->l:Lay3;

    .line 301
    .line 302
    const v22, 0x1fffe

    .line 303
    .line 304
    .line 305
    move-object v1, v2

    .line 306
    const/4 v2, 0x0

    .line 307
    move-object/from16 v18, v4

    .line 308
    .line 309
    const-wide/16 v3, 0x0

    .line 310
    .line 311
    const-wide/16 v5, 0x0

    .line 312
    .line 313
    const-wide/16 v12, 0x0

    .line 314
    .line 315
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v1, v19

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Lag1;->p(Z)V

    .line 321
    .line 322
    .line 323
    const v2, -0x651283aa

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Lag1;->W(I)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v2, p0

    .line 330
    .line 331
    iget-object v3, v2, Ls52;->b:Ljava/util/LinkedHashMap;

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v23

    .line 341
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_4

    .line 346
    .line 347
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    check-cast v3, Ljava/util/Map$Entry;

    .line 352
    .line 353
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    check-cast v4, Ljava/lang/String;

    .line 358
    .line 359
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v4, ": "

    .line 372
    .line 373
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    sget-object v4, Lwa2;->a:Lis3;

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    check-cast v4, Lua2;

    .line 390
    .line 391
    iget-object v4, v4, Lua2;->b:Le54;

    .line 392
    .line 393
    iget-object v4, v4, Le54;->l:Lay3;

    .line 394
    .line 395
    const/high16 v5, 0x41000000    # 8.0f

    .line 396
    .line 397
    const/16 v6, 0xe

    .line 398
    .line 399
    const/4 v7, 0x0

    .line 400
    move-object/from16 v8, v27

    .line 401
    .line 402
    invoke-static {v8, v5, v7, v7, v6}, Lis0;->O(Lnd2;FFFI)Lnd2;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    const/16 v21, 0x0

    .line 407
    .line 408
    const v22, 0x1fffc

    .line 409
    .line 410
    .line 411
    move-object v1, v3

    .line 412
    move-object/from16 v18, v4

    .line 413
    .line 414
    const-wide/16 v3, 0x0

    .line 415
    .line 416
    move-object v2, v5

    .line 417
    const-wide/16 v5, 0x0

    .line 418
    .line 419
    const/4 v7, 0x0

    .line 420
    move-object/from16 v17, v8

    .line 421
    .line 422
    const/4 v8, 0x0

    .line 423
    const-wide/16 v9, 0x0

    .line 424
    .line 425
    const/4 v11, 0x0

    .line 426
    const-wide/16 v12, 0x0

    .line 427
    .line 428
    const/4 v14, 0x0

    .line 429
    const/4 v15, 0x0

    .line 430
    const/16 v16, 0x0

    .line 431
    .line 432
    move-object/from16 v24, v17

    .line 433
    .line 434
    const/16 v17, 0x0

    .line 435
    .line 436
    const/16 v20, 0x30

    .line 437
    .line 438
    move-object/from16 v19, p1

    .line 439
    .line 440
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v2, p0

    .line 444
    .line 445
    move-object/from16 v1, v19

    .line 446
    .line 447
    move-object/from16 v27, v24

    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_4
    const/4 v15, 0x0

    .line 451
    invoke-virtual {v1, v15}, Lag1;->p(Z)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v0}, Lag1;->p(Z)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_5
    invoke-virtual {v1}, Lag1;->Q()V

    .line 459
    .line 460
    .line 461
    :goto_5
    invoke-virtual {v1}, Lag1;->r()Lc33;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    if-eqz v0, :cond_6

    .line 466
    .line 467
    new-instance v1, Lsp0;

    .line 468
    .line 469
    const/4 v2, 0x5

    .line 470
    move-object/from16 v3, p0

    .line 471
    .line 472
    move/from16 v4, p2

    .line 473
    .line 474
    invoke-direct {v1, v4, v2, v3}, Lsp0;-><init>(IILjava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    iput-object v1, v0, Lc33;->d:Ldf1;

    .line 478
    .line 479
    :cond_6
    return-void
.end method

.method public static final b(Lnd2;Lpe1;Lag1;I)V
    .locals 4

    .line 1
    const v0, -0x3799f46e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v2, 0x12

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    move v1, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 v1, 0x0

    .line 39
    :goto_2
    and-int/2addr v0, v3

    .line 40
    invoke-virtual {p2, v0, v1}, Lag1;->N(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-static {p0, p1}, Lk75;->u(Lnd2;Lpe1;)Lnd2;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p2, v0}, Lmt1;->f(Lag1;Lnd2;)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {p2}, Lag1;->Q()V

    .line 55
    .line 56
    .line 57
    :goto_3
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    new-instance v0, Ll4;

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-direct {v0, p3, v1, p0, p1}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public static final c(Lpe1;Lne1;Lag1;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    const v2, 0x8ec5254

    .line 8
    .line 9
    .line 10
    invoke-virtual {v14, v2}, Lag1;->X(I)Lag1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v14, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    or-int v2, p3, v2

    .line 24
    .line 25
    invoke-virtual {v14, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v4, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v2, v4

    .line 37
    and-int/lit8 v4, v2, 0x13

    .line 38
    .line 39
    const/16 v5, 0x12

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-eq v4, v5, :cond_2

    .line 43
    .line 44
    move v4, v6

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/4 v4, 0x0

    .line 47
    :goto_2
    and-int/2addr v2, v6

    .line 48
    invoke-virtual {v14, v2, v4}, Lag1;->N(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    new-instance v2, Lo4;

    .line 55
    .line 56
    const/16 v4, 0xb

    .line 57
    .line 58
    invoke-direct {v2, v4, v1}, Lo4;-><init>(ILne1;)V

    .line 59
    .line 60
    .line 61
    const v4, -0x3b2c46e8

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v2, v14}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget-object v4, Lqe4;->v:Ljava/util/WeakHashMap;

    .line 69
    .line 70
    invoke-static {v14}, Lls3;->d(Lag1;)Lqe4;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v12, v4, Lqe4;->g:Ljd;

    .line 75
    .line 76
    new-instance v4, Lmn0;

    .line 77
    .line 78
    invoke-direct {v4, v3, v0}, Lmn0;-><init>(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const v3, -0x32f85e9d    # -1.422188E8f

    .line 82
    .line 83
    .line 84
    invoke-static {v3, v4, v14}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    const v15, 0x30000030

    .line 89
    .line 90
    .line 91
    const/16 v16, 0xfd

    .line 92
    .line 93
    move-object v3, v2

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    const-wide/16 v8, 0x0

    .line 100
    .line 101
    const-wide/16 v10, 0x0

    .line 102
    .line 103
    invoke-static/range {v2 .. v16}, Ln44;->H(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;Lag1;II)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lag1;->Q()V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lag1;->r()Lc33;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    new-instance v3, Ll4;

    .line 117
    .line 118
    const/16 v4, 0x14

    .line 119
    .line 120
    move/from16 v5, p3

    .line 121
    .line 122
    invoke-direct {v3, v5, v4, v0, v1}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object v3, v2, Lc33;->d:Ldf1;

    .line 126
    .line 127
    :cond_4
    return-void
.end method

.method public static final d(Ln8;Lne1;Lag1;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v2, -0x15229e32

    .line 11
    .line 12
    .line 13
    invoke-virtual {v14, v2}, Lag1;->X(I)Lag1;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v14, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x4

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    :goto_0
    or-int v2, p3, v2

    .line 27
    .line 28
    invoke-virtual {v14, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v4, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v2, v4

    .line 40
    and-int/lit8 v4, v2, 0x13

    .line 41
    .line 42
    const/16 v5, 0x12

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    if-eq v4, v5, :cond_2

    .line 47
    .line 48
    move v4, v7

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v4, v6

    .line 51
    :goto_2
    and-int/2addr v2, v7

    .line 52
    invoke-virtual {v14, v2, v4}, Lag1;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    sget-object v2, Lea;->b:Lis3;

    .line 59
    .line 60
    invoke-virtual {v14, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/content/Context;

    .line 65
    .line 66
    iget-object v4, v0, Ln8;->d:Lb23;

    .line 67
    .line 68
    invoke-static {v4, v14}, Lca;->h(Lur3;Lag1;)Lpg2;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Lg4;

    .line 73
    .line 74
    invoke-direct {v5, v1, v0, v2, v4}, Lg4;-><init>(Lne1;Ln8;Landroid/content/Context;Lpg2;)V

    .line 75
    .line 76
    .line 77
    const v2, 0x6946c092

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v5, v14}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v5, Lmn0;

    .line 85
    .line 86
    invoke-direct {v5, v6, v4}, Lmn0;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const v4, 0x3e6eb2dd

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5, v14}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    const v15, 0x30000030

    .line 97
    .line 98
    .line 99
    const/16 v16, 0x1fd

    .line 100
    .line 101
    move v4, v3

    .line 102
    move-object v3, v2

    .line 103
    const/4 v2, 0x0

    .line 104
    move v5, v4

    .line 105
    const/4 v4, 0x0

    .line 106
    move v6, v5

    .line 107
    const/4 v5, 0x0

    .line 108
    move v7, v6

    .line 109
    const/4 v6, 0x0

    .line 110
    move v8, v7

    .line 111
    const/4 v7, 0x0

    .line 112
    move v10, v8

    .line 113
    const-wide/16 v8, 0x0

    .line 114
    .line 115
    move v12, v10

    .line 116
    const-wide/16 v10, 0x0

    .line 117
    .line 118
    move/from16 v17, v12

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    invoke-static/range {v2 .. v16}, Ln44;->H(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;Lag1;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lag1;->Q()V

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lag1;->r()Lc33;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    new-instance v3, Ll4;

    .line 135
    .line 136
    move/from16 v4, p3

    .line 137
    .line 138
    const/4 v12, 0x4

    .line 139
    invoke-direct {v3, v4, v12, v0, v1}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput-object v3, v2, Lc33;->d:Ldf1;

    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method public static final e(Lnd2;FJLag1;II)V
    .locals 20

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const v1, 0x47a9d25

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lag1;->X(I)Lag1;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v1, p6, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    or-int/lit8 v2, p5, 0x6

    .line 14
    .line 15
    move v3, v2

    .line 16
    move-object/from16 v2, p0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    and-int/lit8 v2, p5, 0x6

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    move-object/from16 v2, p0

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x2

    .line 34
    :goto_0
    or-int v3, p5, v3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object/from16 v2, p0

    .line 38
    .line 39
    move/from16 v3, p5

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v4, p6, 0x2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x30

    .line 48
    .line 49
    :cond_3
    move/from16 v6, p1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    and-int/lit8 v6, p5, 0x30

    .line 53
    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    move/from16 v6, p1

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Lag1;->c(F)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_5

    .line 63
    .line 64
    move v7, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    const/16 v7, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v3, v7

    .line 69
    :goto_3
    and-int/lit8 v7, p6, 0x4

    .line 70
    .line 71
    const/16 v8, 0x100

    .line 72
    .line 73
    move-wide/from16 v9, p2

    .line 74
    .line 75
    if-nez v7, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0, v9, v10}, Lag1;->e(J)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_6

    .line 82
    .line 83
    move v7, v8

    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v7, 0x80

    .line 86
    .line 87
    :goto_4
    or-int/2addr v3, v7

    .line 88
    and-int/lit16 v7, v3, 0x93

    .line 89
    .line 90
    const/16 v11, 0x92

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x1

    .line 94
    if-eq v7, v11, :cond_7

    .line 95
    .line 96
    move v7, v13

    .line 97
    goto :goto_5

    .line 98
    :cond_7
    move v7, v12

    .line 99
    :goto_5
    and-int/lit8 v11, v3, 0x1

    .line 100
    .line 101
    invoke-virtual {v0, v11, v7}, Lag1;->N(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_14

    .line 106
    .line 107
    invoke-virtual {v0}, Lag1;->S()V

    .line 108
    .line 109
    .line 110
    and-int/lit8 v7, p5, 0x1

    .line 111
    .line 112
    if-eqz v7, :cond_a

    .line 113
    .line 114
    invoke-virtual {v0}, Lag1;->x()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_8

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_8
    invoke-virtual {v0}, Lag1;->Q()V

    .line 122
    .line 123
    .line 124
    and-int/lit8 v1, p6, 0x4

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    and-int/lit16 v3, v3, -0x381

    .line 129
    .line 130
    :cond_9
    move-object v1, v2

    .line 131
    move v2, v6

    .line 132
    goto :goto_9

    .line 133
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 134
    .line 135
    sget-object v1, Lkd2;->b:Lkd2;

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_b
    move-object v1, v2

    .line 139
    :goto_7
    if-eqz v4, :cond_c

    .line 140
    .line 141
    sget v2, Lpv0;->a:F

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_c
    move v2, v6

    .line 145
    :goto_8
    and-int/lit8 v4, p6, 0x4

    .line 146
    .line 147
    if-eqz v4, :cond_d

    .line 148
    .line 149
    sget v4, Lpv0;->a:F

    .line 150
    .line 151
    sget-object v4, Lk30;->d:Lz70;

    .line 152
    .line 153
    invoke-static {v4, v0}, La80;->d(Lz70;Lag1;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    and-int/lit16 v3, v3, -0x381

    .line 158
    .line 159
    move-wide v9, v6

    .line 160
    :cond_d
    :goto_9
    invoke-virtual {v0}, Lag1;->q()V

    .line 161
    .line 162
    .line 163
    sget-object v4, Lon3;->a:Lu51;

    .line 164
    .line 165
    invoke-interface {v1, v4}, Lnd2;->c(Lnd2;)Lnd2;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v4, v2}, Lon3;->b(Lnd2;F)Lnd2;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    and-int/lit8 v6, v3, 0x70

    .line 174
    .line 175
    if-ne v6, v5, :cond_e

    .line 176
    .line 177
    move v5, v13

    .line 178
    goto :goto_a

    .line 179
    :cond_e
    move v5, v12

    .line 180
    :goto_a
    and-int/lit16 v6, v3, 0x380

    .line 181
    .line 182
    xor-int/lit16 v6, v6, 0x180

    .line 183
    .line 184
    if-le v6, v8, :cond_f

    .line 185
    .line 186
    invoke-virtual {v0, v9, v10}, Lag1;->e(J)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-nez v6, :cond_11

    .line 191
    .line 192
    :cond_f
    and-int/lit16 v3, v3, 0x180

    .line 193
    .line 194
    if-ne v3, v8, :cond_10

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :cond_10
    move v13, v12

    .line 198
    :cond_11
    :goto_b
    or-int v3, v5, v13

    .line 199
    .line 200
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    if-nez v3, :cond_12

    .line 205
    .line 206
    sget-object v3, Lrb0;->a:Lbx3;

    .line 207
    .line 208
    if-ne v5, v3, :cond_13

    .line 209
    .line 210
    :cond_12
    new-instance v5, Lqv0;

    .line 211
    .line 212
    invoke-direct {v5, v2, v9, v10}, Lqv0;-><init>(FJ)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v5}, Lag1;->g0(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_13
    check-cast v5, Lpe1;

    .line 219
    .line 220
    invoke-static {v4, v5, v0, v12}, Ltv4;->b(Lnd2;Lpe1;Lag1;I)V

    .line 221
    .line 222
    .line 223
    move-object v14, v1

    .line 224
    move v15, v2

    .line 225
    :goto_c
    move-wide/from16 v16, v9

    .line 226
    .line 227
    goto :goto_d

    .line 228
    :cond_14
    invoke-virtual {v0}, Lag1;->Q()V

    .line 229
    .line 230
    .line 231
    move-object v14, v2

    .line 232
    move v15, v6

    .line 233
    goto :goto_c

    .line 234
    :goto_d
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_15

    .line 239
    .line 240
    new-instance v13, Lrv0;

    .line 241
    .line 242
    move/from16 v18, p5

    .line 243
    .line 244
    move/from16 v19, p6

    .line 245
    .line 246
    invoke-direct/range {v13 .. v19}, Lrv0;-><init>(Lnd2;FJII)V

    .line 247
    .line 248
    .line 249
    iput-object v13, v0, Lc33;->d:Ldf1;

    .line 250
    .line 251
    :cond_15
    return-void
.end method

.method public static final f(Ly84;Lne1;Lag1;I)V
    .locals 12

    .line 1
    move v10, p3

    .line 2
    const v1, 0x7bfec617

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v1}, Lag1;->X(I)Lag1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p2, v1}, Lag1;->d(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x2

    .line 21
    :goto_0
    or-int/2addr v1, v10

    .line 22
    invoke-virtual {p2, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v2, 0x10

    .line 32
    .line 33
    :goto_1
    or-int/2addr v1, v2

    .line 34
    and-int/lit8 v2, v1, 0x13

    .line 35
    .line 36
    const/16 v3, 0x12

    .line 37
    .line 38
    const/4 v11, 0x1

    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    move v2, v11

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_2
    and-int/lit8 v3, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {p2, v3, v2}, Lag1;->N(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    move v2, v1

    .line 53
    sget-object v1, Lon3;->a:Lu51;

    .line 54
    .line 55
    sget-object v3, Lwa2;->a:Lis3;

    .line 56
    .line 57
    invoke-virtual {p2, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lua2;

    .line 62
    .line 63
    iget-object v4, v4, Lua2;->a:Ly70;

    .line 64
    .line 65
    iget-wide v4, v4, Ly70;->I:J

    .line 66
    .line 67
    invoke-static {v4, v5, p2}, Lc75;->n(JLag1;)Lz20;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p2, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lua2;

    .line 76
    .line 77
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 78
    .line 79
    iget-wide v5, v3, Ly70;->B:J

    .line 80
    .line 81
    new-instance v3, Lfx;

    .line 82
    .line 83
    new-instance v7, Lsp3;

    .line 84
    .line 85
    invoke-direct {v7, v5, v6}, Lsp3;-><init>(J)V

    .line 86
    .line 87
    .line 88
    const/high16 v5, 0x3f800000    # 1.0f

    .line 89
    .line 90
    invoke-direct {v3, v5, v7}, Lfx;-><init>(FLsp3;)V

    .line 91
    .line 92
    .line 93
    new-instance v5, Lmn0;

    .line 94
    .line 95
    const/4 v6, 0x3

    .line 96
    invoke-direct {v5, v6, p0}, Lmn0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const v7, 0x659c720c

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v5, p2}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    shr-int/2addr v2, v6

    .line 107
    and-int/lit8 v2, v2, 0xe

    .line 108
    .line 109
    const v5, 0x6000030

    .line 110
    .line 111
    .line 112
    or-int v9, v2, v5

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    move-object v6, v3

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v5, 0x0

    .line 118
    move-object v0, p1

    .line 119
    move-object v8, p2

    .line 120
    invoke-static/range {v0 .. v9}, Lk75;->a(Lne1;Lnd2;ZLjl3;Lz20;La30;Lfx;Lka0;Lag1;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {p2}, Lag1;->Q()V

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    new-instance v2, Lal3;

    .line 134
    .line 135
    invoke-direct {v2, p0, p1, p3, v11}, Lal3;-><init>(Ly84;Lne1;II)V

    .line 136
    .line 137
    .line 138
    iput-object v2, v1, Lc33;->d:Ldf1;

    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method public static final g(Lay3;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lay3;->c:Lpv2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lpv2;->a:Lmv2;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lmv2;->b:I

    .line 10
    .line 11
    new-instance v0, Luz0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Luz0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    const/4 p0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget v0, v0, Luz0;->a:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    move p0, v1

    .line 28
    :cond_2
    :goto_1
    xor-int/2addr p0, v1

    .line 29
    return p0
.end method

.method public static final h(Lsf2;I)V
    .locals 3

    .line 1
    iget v0, p0, Lsf2;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lsf2;->c(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lsf2;->b:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lsf2;->c(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Lsf2;->b:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lsf2;->a(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-lez v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lsf2;->c(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le p1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Lsf2;->f(II)V

    .line 43
    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p1}, Lsf2;->f(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static final i(Lxf3;FLyq3;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lbf3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lbf3;

    .line 7
    .line 8
    iget v1, v0, Lbf3;->s:I

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
    iput v1, v0, Lbf3;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lbf3;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lbf3;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lbf3;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lbf3;->q:Lt33;

    .line 36
    .line 37
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p3, Lt33;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcf3;

    .line 56
    .line 57
    invoke-direct {v1, p1, p2, p3, v2}, Lcf3;-><init>(FLve;Lt33;Ldh0;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, v0, Lbf3;->q:Lt33;

    .line 61
    .line 62
    iput v3, v0, Lbf3;->s:I

    .line 63
    .line 64
    sget-object p1, Lxg2;->n:Lxg2;

    .line 65
    .line 66
    invoke-interface {p0, p1, v1, v0}, Lxf3;->f(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Lri0;->n:Lri0;

    .line 71
    .line 72
    if-ne p0, p1, :cond_3

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    move-object p0, p3

    .line 76
    :goto_1
    iget p0, p0, Lt33;->n:F

    .line 77
    .line 78
    new-instance p1, Ljava/lang/Float;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method

.method public static varargs j([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Luh;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Luh;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static k(Ljava/util/ArrayList;Ljava/lang/Comparable;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, ")."

    .line 14
    .line 15
    if-ltz v0, :cond_4

    .line 16
    .line 17
    if-gt v0, v1, :cond_3

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-gt v2, v0, :cond_2

    .line 22
    .line 23
    add-int v1, v2, v0

    .line 24
    .line 25
    ushr-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Comparable;

    .line 32
    .line 33
    invoke-static {v3, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    add-int/lit8 v2, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    if-lez v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v0, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    neg-int p0, v2

    .line 51
    return p0

    .line 52
    :cond_3
    const-string p0, "toIndex ("

    .line 53
    .line 54
    const-string p1, ") is greater than size ("

    .line 55
    .line 56
    invoke-static {p0, v0, p1, v1, v3}, Lk21;->g(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "fromIndex ("

    .line 65
    .line 66
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ") is greater than toIndex ("

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static l(La42;)La42;
    .locals 1

    .line 1
    invoke-virtual {p0}, La42;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La42;->p:Z

    .line 6
    .line 7
    iget v0, p0, La42;->o:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, La42;->q:La42;

    .line 13
    .line 14
    return-object p0
.end method

.method public static m(Lnd2;Lvf2;Ln93;ZLq93;Lne1;I)Lnd2;
    .locals 7

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    new-instance v0, Lb60;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v3, p1

    .line 13
    move-object v2, p2

    .line 14
    move v6, p3

    .line 15
    move-object v1, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Lb60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v3, p1

    .line 21
    move-object v2, p2

    .line 22
    move v6, p3

    .line 23
    move-object v1, p5

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    new-instance v0, Lb60;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct/range {v0 .. v6}, Lb60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-eqz v3, :cond_3

    .line 35
    .line 36
    sget-object p1, Lkd2;->b:Lkd2;

    .line 37
    .line 38
    invoke-static {p1, v3, v2}, Lwp1;->a(Lnd2;Lxs1;Lzp1;)Lnd2;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lb60;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct/range {v0 .. v6}, Lb60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    new-instance p1, Ld60;

    .line 55
    .line 56
    invoke-direct {p1, v2, v6, v4, v1}, Ld60;-><init>(Lzp1;ZLq93;Lne1;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lqb0;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lqb0;-><init>(Lff1;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static n(Lnd2;Lne1;)Lnd2;
    .locals 7

    .line 1
    new-instance v0, Lb60;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lb60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static o([Lft0;[B)[B
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    iget-object v5, v4, Lft0;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v4, Lft0;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v5, v6, p1}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    array-length v5, v5

    .line 24
    add-int/lit8 v5, v5, 0x10

    .line 25
    .line 26
    iget v6, v4, Lft0;->e:I

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v5

    .line 31
    iget v5, v4, Lft0;->f:I

    .line 32
    .line 33
    add-int/2addr v6, v5

    .line 34
    iget v4, v4, Lft0;->g:I

    .line 35
    .line 36
    mul-int/lit8 v4, v4, 0x2

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x7

    .line 39
    .line 40
    and-int/lit8 v4, v4, -0x8

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0x8

    .line 43
    .line 44
    add-int/2addr v4, v6

    .line 45
    add-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lk30;->h:[B

    .line 55
    .line 56
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    array-length v2, p0

    .line 63
    :goto_1
    if-ge v1, v2, :cond_3

    .line 64
    .line 65
    aget-object v4, p0, v1

    .line 66
    .line 67
    iget-object v5, v4, Lft0;->a:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v6, v4, Lft0;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v5, v6, p1}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v0, v4, v5}, Ltv4;->X(Ljava/io/ByteArrayOutputStream;Lft0;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v4}, Ltv4;->W(Ljava/io/ByteArrayOutputStream;Lft0;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    array-length v2, p0

    .line 85
    move v4, v1

    .line 86
    :goto_2
    if-ge v4, v2, :cond_2

    .line 87
    .line 88
    aget-object v5, p0, v4

    .line 89
    .line 90
    iget-object v6, v5, Lft0;->a:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v7, v5, Lft0;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v6, v7, p1}, Ltv4;->s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v0, v5, v6}, Ltv4;->X(Ljava/io/ByteArrayOutputStream;Lft0;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    array-length p1, p0

    .line 105
    :goto_3
    if-ge v1, p1, :cond_3

    .line 106
    .line 107
    aget-object v2, p0, v1

    .line 108
    .line 109
    invoke-static {v0, v2}, Ltv4;->W(Ljava/io/ByteArrayOutputStream;Lft0;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-ne p0, v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v0, "The bytes saved do not match expectation. actual="

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p0, " expected="

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public static p()La42;
    .locals 2

    .line 1
    new-instance v0, La42;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, La42;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final q()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static r(JLandroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "rolling_window_trigger_timestamp"

    .line 7
    .line 8
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string p0, "force_rolling_window"

    .line 16
    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance p0, Lzl0;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lzl0;-><init>(Ljava/util/LinkedHashMap;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lbi4;->L(Lzl0;)[B

    .line 28
    .line 29
    .line 30
    new-instance p1, Lnp2;

    .line 31
    .line 32
    const-class v0, Lu/sage/worker/RollingWindowWorker;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p1, v0, v1}, Lnp2;-><init>(Ljava/lang/Class;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lnp2;->c:Log4;

    .line 39
    .line 40
    iput-object p0, v0, Log4;->e:Lzl0;

    .line 41
    .line 42
    const-string p0, "rolling_window"

    .line 43
    .line 44
    iget-object v0, p1, Lnp2;->d:Ljava/util/LinkedHashSet;

    .line 45
    .line 46
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lnp2;->a()Lmg4;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lop2;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "rolling_window_work_immediate"

    .line 63
    .line 64
    invoke-virtual {p1, p2, p0}, Leg4;->b(Ljava/lang/String;Lop2;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lk30;->i:[B

    .line 2
    .line 3
    sget-object v1, Lk30;->j:[B

    .line 4
    .line 5
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "!"

    .line 10
    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    :goto_0
    move-object v2, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v2, v3

    .line 25
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gtz v5, :cond_3

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_b

    .line 47
    .line 48
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_3
    const-string v5, "classes.dex"

    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_9

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    const-string v2, ".apk"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_7

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_8

    .line 104
    .line 105
    :goto_2
    move-object v3, v4

    .line 106
    :cond_8
    invoke-static {v2, v3, p1}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_9
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_a

    .line 116
    .line 117
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_b

    .line 127
    .line 128
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_b
    :goto_4
    return-object p1
.end method

.method public static final t(Lgi3;)Li50;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lyg0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    instance-of v0, p0, Lhi3;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lhi3;

    .line 15
    .line 16
    iget-object p0, p0, Lhi3;->a:Lgi3;

    .line 17
    .line 18
    invoke-static {p0}, Ltv4;->t(Lgi3;)Li50;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    return-object v1
.end method

.method public static final u(Lp84;Landroid/content/Context;Ly84;)Ljava/lang/String;
    .locals 6

    .line 1
    const v0, 0x7f100453

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f100463

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lp84;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const p0, 0x7f10044f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const-string v2, "Current session"

    .line 46
    .line 47
    const-string v3, "Weekly limits"

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz p2, :cond_11

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-eq p2, v5, :cond_f

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    if-eq p2, v5, :cond_6

    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    if-eq p2, v5, :cond_9

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    if-ne p2, v0, :cond_8

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const v0, -0x2ba61873

    .line 69
    .line 70
    .line 71
    if-eq p2, v0, :cond_5

    .line 72
    .line 73
    const v0, 0x1567c0f4

    .line 74
    .line 75
    .line 76
    if-eq p2, v0, :cond_3

    .line 77
    .line 78
    const v0, 0x61d7ba84

    .line 79
    .line 80
    .line 81
    if-eq p2, v0, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string p2, "Code completions"

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const p2, 0x7f10021d

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_3
    const-string p2, "Chat messages"

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const p2, 0x7f1000ea

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_5
    const-string p2, "Premium requests"

    .line 121
    .line 122
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-nez p2, :cond_7

    .line 127
    .line 128
    :cond_6
    :goto_0
    move-object v0, v4

    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_7
    const p2, 0x7f10031c

    .line 132
    .line 133
    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_8
    invoke-static {}, Lp61;->x()V

    .line 141
    .line 142
    .line 143
    return-object v4

    .line 144
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    const v5, -0x467ff531

    .line 149
    .line 150
    .line 151
    if-eq p2, v5, :cond_e

    .line 152
    .line 153
    const v0, -0xe1b1f89

    .line 154
    .line 155
    .line 156
    if-eq p2, v0, :cond_c

    .line 157
    .line 158
    const v0, 0x5fac17ab

    .line 159
    .line 160
    .line 161
    if-eq p2, v0, :cond_a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    const-string p2, "Monthly limits"

    .line 165
    .line 166
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_b

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_b
    const p2, 0x7f100459

    .line 174
    .line 175
    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_c
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-nez p2, :cond_d

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_d
    :goto_1
    move-object v0, v1

    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_6

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_f
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_10

    .line 205
    .line 206
    goto/16 :goto_3

    .line 207
    .line 208
    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_6

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    sparse-switch p2, :sswitch_data_0

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :sswitch_0
    const-string p2, "Sonnet only"

    .line 224
    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-nez p2, :cond_12

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_12
    const p2, 0x7f10045f

    .line 233
    .line 234
    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    goto :goto_3

    .line 240
    :sswitch_1
    const-string p2, "Opus only"

    .line 241
    .line 242
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-nez p2, :cond_13

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_13
    const p2, 0x7f10045a

    .line 250
    .line 251
    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_3

    .line 257
    :sswitch_2
    const-string p2, "Cowork only"

    .line 258
    .line 259
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-nez p2, :cond_14

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_14
    const p2, 0x7f100452

    .line 267
    .line 268
    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    goto :goto_3

    .line 274
    :sswitch_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-nez p2, :cond_d

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :sswitch_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_6

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :sswitch_5
    const-string p2, "Claude Design"

    .line 289
    .line 290
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    if-nez p2, :cond_15

    .line 295
    .line 296
    :goto_2
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_15
    const p2, 0x7f100451

    .line 299
    .line 300
    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :goto_3
    if-eqz v0, :cond_16

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    :cond_16
    return-object p0

    .line 319
    :sswitch_data_0
    .sparse-switch
        -0x4762f380 -> :sswitch_5
        -0x467ff531 -> :sswitch_4
        -0xe1b1f89 -> :sswitch_3
        0x2138e04f -> :sswitch_2
        0x270f56cd -> :sswitch_1
        0x30e593c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static v(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    add-int/lit8 p0, p0, -0x1

    .line 9
    .line 10
    return p0
.end method

.method public static final w(Lp22;)Li22;
    .locals 5

    .line 1
    invoke-interface {p0}, Lp22;->getLifecycle()Lh22;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lh22;->a:Lwu4;

    .line 9
    .line 10
    :goto_0
    iget-object v1, v0, Lwu4;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Li22;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v1, Li22;

    .line 24
    .line 25
    invoke-static {}, Lk30;->f()Lbu3;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lzu0;->a:Lzp0;

    .line 30
    .line 31
    sget-object v3, Ln92;->a:Lxi1;

    .line 32
    .line 33
    iget-object v3, v3, Lxi1;->s:Lxi1;

    .line 34
    .line 35
    invoke-static {v2, v3}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, p0, v2}, Li22;-><init>(Lh22;Lhi0;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lwu4;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    sget-object p0, Lzu0;->a:Lzp0;

    .line 54
    .line 55
    sget-object p0, Ln92;->a:Lxi1;

    .line 56
    .line 57
    iget-object p0, p0, Lxi1;->s:Lxi1;

    .line 58
    .line 59
    new-instance v0, Lp4;

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    invoke-direct {v0, v1, v3, v2}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 63
    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    invoke-static {v1, p0, v3, v0, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    goto :goto_0
.end method

.method public static x(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lmk2;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    const-class v1, Lkk2;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lkk2;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Lkk2;->value()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "No @Navigator.Name annotation found for "

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public static final y(ILag1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lea;->a:Llc0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lea;->c:Llc0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/content/res/Resources;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final z(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    return p0
.end method
