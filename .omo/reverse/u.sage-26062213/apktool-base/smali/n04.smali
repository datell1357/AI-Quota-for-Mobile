.class public final Ln04;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;


# instance fields
.field public final a:Ldq0;

.field public final b:F

.field public final c:Lzr2;


# direct methods
.method public constructor <init>(Ldq0;FLzr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln04;->a:Ldq0;

    .line 5
    .line 6
    iput p2, p0, Ln04;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Ln04;->c:Lzr2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljt1;Ljava/util/List;I)I
    .locals 5

    .line 1
    iget p0, p0, Ln04;->b:F

    .line 2
    .line 3
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lya2;

    .line 21
    .line 22
    invoke-interface {p1, p3}, Lya2;->g(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    sub-int/2addr v1, v2

    .line 36
    if-gt v2, v1, :cond_2

    .line 37
    .line 38
    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lya2;

    .line 43
    .line 44
    invoke-interface {v3, p3}, Lya2;->g(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lez v4, :cond_1

    .line 57
    .line 58
    move-object p1, v3

    .line 59
    :cond_1
    if-eq v2, v1, :cond_2

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0
.end method

.method public final c(Ljt1;Ljava/util/List;I)I
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x0

    .line 6
    move v0, p1

    .line 7
    :goto_0
    if-ge p1, p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lya2;

    .line 14
    .line 15
    invoke-interface {v1, p3}, Lya2;->R(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v0
.end method

.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    const/4 v4, 0x0

    .line 14
    const-string v5, "Collection contains no element matching the predicate."

    .line 15
    .line 16
    if-ge v3, v1, :cond_f

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lya2;

    .line 23
    .line 24
    invoke-static {v6}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const-string v8, "navigationIcon"

    .line 29
    .line 30
    invoke-static {v7, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_e

    .line 35
    .line 36
    const/16 v18, 0x0

    .line 37
    .line 38
    const/16 v19, 0xe

    .line 39
    .line 40
    const/4 v15, 0x0

    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    move-wide/from16 v13, p3

    .line 46
    .line 47
    invoke-static/range {v13 .. v19}, Lmf0;->a(JIIIII)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    invoke-interface {v6, v7, v8}, Lya2;->e(J)Ldv2;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    move v6, v2

    .line 60
    :goto_1
    if-ge v6, v3, :cond_d

    .line 61
    .line 62
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lya2;

    .line 67
    .line 68
    invoke-static {v7}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v10, "actionIcons"

    .line 73
    .line 74
    invoke-static {v8, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_c

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v19, 0xe

    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/16 v17, 0x0

    .line 88
    .line 89
    move-wide/from16 v13, p3

    .line 90
    .line 91
    invoke-static/range {v13 .. v19}, Lmf0;->a(JIIIII)J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    invoke-interface {v7, v10, v11}, Lya2;->e(J)Ldv2;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v12}, Ljt1;->getLayoutDirection()Lhy1;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    sget-object v7, Lhy1;->n:Lhy1;

    .line 104
    .line 105
    iget-object v8, v9, Ln04;->c:Lzr2;

    .line 106
    .line 107
    if-ne v6, v7, :cond_0

    .line 108
    .line 109
    invoke-interface {v8, v6}, Lzr2;->a(Lhy1;)F

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    goto :goto_2

    .line 114
    :cond_0
    invoke-interface {v8, v6}, Lzr2;->b(Lhy1;)F

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    :goto_2
    invoke-interface {v12}, Ljt1;->getLayoutDirection()Lhy1;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    if-ne v10, v7, :cond_1

    .line 123
    .line 124
    invoke-interface {v8, v10}, Lzr2;->b(Lhy1;)F

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    goto :goto_3

    .line 129
    :cond_1
    invoke-interface {v8, v10}, Lzr2;->a(Lhy1;)F

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    :goto_3
    sget v11, Leg;->c:F

    .line 134
    .line 135
    invoke-interface {v12, v11}, Las0;->N(F)I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    iget v13, v1, Ldv2;->n:I

    .line 140
    .line 141
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    const v14, 0x7fffffff

    .line 150
    .line 151
    .line 152
    if-ne v13, v14, :cond_2

    .line 153
    .line 154
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    :goto_4
    move/from16 v16, v6

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_2
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    sub-int/2addr v13, v11

    .line 166
    iget v11, v3, Ldv2;->n:I

    .line 167
    .line 168
    sub-int/2addr v13, v11

    .line 169
    invoke-interface {v12, v6}, Las0;->N(F)I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    sub-int/2addr v13, v6

    .line 174
    invoke-interface {v12, v10}, Las0;->N(F)I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    sub-int/2addr v13, v6

    .line 179
    if-gez v13, :cond_3

    .line 180
    .line 181
    move v6, v2

    .line 182
    goto :goto_4

    .line 183
    :cond_3
    move v6, v13

    .line 184
    goto :goto_4

    .line 185
    :goto_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    move v10, v2

    .line 190
    :goto_6
    if-ge v10, v6, :cond_b

    .line 191
    .line 192
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    check-cast v11, Lya2;

    .line 197
    .line 198
    invoke-static {v11}, Lon4;->z(Lya2;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    const-string v15, "title"

    .line 203
    .line 204
    invoke-static {v13, v15}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    if-eqz v13, :cond_a

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    const/16 v19, 0xc

    .line 213
    .line 214
    const/4 v15, 0x0

    .line 215
    const/16 v17, 0x0

    .line 216
    .line 217
    move v0, v14

    .line 218
    move-wide/from16 v13, p3

    .line 219
    .line 220
    invoke-static/range {v13 .. v19}, Lmf0;->a(JIIIII)J

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    invoke-interface {v11, v4, v5}, Lya2;->e(J)Ldv2;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    sget-object v5, Lb8;->b:Lck1;

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Ldv2;->V(Ly7;)I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    const/high16 v10, -0x80000000

    .line 235
    .line 236
    if-eq v6, v10, :cond_4

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Ldv2;->V(Ly7;)I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    move v10, v5

    .line 243
    goto :goto_7

    .line 244
    :cond_4
    move v10, v2

    .line 245
    :goto_7
    iget-object v5, v9, Ln04;->a:Ldq0;

    .line 246
    .line 247
    iget-object v5, v5, Ldq0;->a:Lcn3;

    .line 248
    .line 249
    const/4 v5, 0x0

    .line 250
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_5

    .line 255
    .line 256
    move v5, v2

    .line 257
    goto :goto_8

    .line 258
    :cond_5
    invoke-static {v5}, Lis0;->V(F)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    :goto_8
    invoke-interface {v8}, Lzr2;->d()F

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    invoke-interface {v12, v6}, Las0;->N(F)I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-interface {v8}, Lzr2;->c()F

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    invoke-interface {v12, v11}, Las0;->N(F)I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    iget v13, v9, Ln04;->b:F

    .line 279
    .line 280
    invoke-interface {v12, v13}, Las0;->N(F)I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    iget v14, v4, Ldv2;->o:I

    .line 285
    .line 286
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    add-int/2addr v13, v6

    .line 291
    add-int/2addr v11, v13

    .line 292
    invoke-static/range {p3 .. p4}, Lmf0;->g(J)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-ne v6, v0, :cond_6

    .line 297
    .line 298
    move v13, v11

    .line 299
    goto :goto_a

    .line 300
    :cond_6
    add-int/2addr v5, v11

    .line 301
    if-gez v5, :cond_7

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_7
    move v2, v5

    .line 305
    :goto_9
    move v13, v2

    .line 306
    :goto_a
    invoke-interface {v8}, Lzr2;->d()F

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    invoke-interface {v12, v0}, Las0;->N(F)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-interface {v8}, Lzr2;->c()F

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-interface {v12, v2}, Las0;->N(F)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-interface {v12}, Ljt1;->getLayoutDirection()Lhy1;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    if-ne v5, v7, :cond_8

    .line 327
    .line 328
    invoke-interface {v8, v5}, Lzr2;->a(Lhy1;)F

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    goto :goto_b

    .line 333
    :cond_8
    invoke-interface {v8, v5}, Lzr2;->b(Lhy1;)F

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    :goto_b
    invoke-interface {v12, v5}, Las0;->N(F)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-interface {v12}, Ljt1;->getLayoutDirection()Lhy1;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    if-ne v6, v7, :cond_9

    .line 346
    .line 347
    invoke-interface {v8, v6}, Lzr2;->b(Lhy1;)F

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    goto :goto_c

    .line 352
    :cond_9
    invoke-interface {v8, v6}, Lzr2;->a(Lhy1;)F

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    :goto_c
    invoke-interface {v12, v6}, Las0;->N(F)I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    add-int/2addr v0, v13

    .line 361
    sub-int/2addr v0, v2

    .line 362
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    move v2, v5

    .line 367
    move-object v5, v3

    .line 368
    move v3, v0

    .line 369
    new-instance v0, Lm04;

    .line 370
    .line 371
    move-wide/from16 v6, p3

    .line 372
    .line 373
    invoke-direct/range {v0 .. v11}, Lm04;-><init>(Ldv2;IILdv2;Ldv2;JILn04;II)V

    .line 374
    .line 375
    .line 376
    sget-object v1, Lh01;->n:Lh01;

    .line 377
    .line 378
    invoke-interface {v12, v14, v13, v1, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    return-object v0

    .line 383
    :cond_a
    move v9, v14

    .line 384
    add-int/lit8 v10, v10, 0x1

    .line 385
    .line 386
    move-object/from16 v9, p0

    .line 387
    .line 388
    goto/16 :goto_6

    .line 389
    .line 390
    :cond_b
    invoke-static {v5}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lp61;->q()V

    .line 394
    .line 395
    .line 396
    return-object v4

    .line 397
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 398
    .line 399
    move-object/from16 v9, p0

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :cond_d
    invoke-static {v5}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 404
    .line 405
    .line 406
    invoke-static {}, Lp61;->q()V

    .line 407
    .line 408
    .line 409
    return-object v4

    .line 410
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 411
    .line 412
    move-object/from16 v9, p0

    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_f
    invoke-static {v5}, Ln42;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 417
    .line 418
    .line 419
    invoke-static {}, Lp61;->q()V

    .line 420
    .line 421
    .line 422
    return-object v4
.end method

.method public final g(Ljt1;Ljava/util/List;I)I
    .locals 5

    .line 1
    iget p0, p0, Ln04;->b:F

    .line 2
    .line 3
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lya2;

    .line 21
    .line 22
    invoke-interface {p1, p3}, Lya2;->T(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    sub-int/2addr v1, v2

    .line 36
    if-gt v2, v1, :cond_2

    .line 37
    .line 38
    :goto_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lya2;

    .line 43
    .line 44
    invoke-interface {v3, p3}, Lya2;->T(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lez v4, :cond_1

    .line 57
    .line 58
    move-object p1, v3

    .line 59
    :cond_1
    if-eq v2, v1, :cond_2

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0
.end method

.method public final i(Ljt1;Ljava/util/List;I)I
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x0

    .line 6
    move v0, p1

    .line 7
    :goto_0
    if-ge p1, p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lya2;

    .line 14
    .line 15
    invoke-interface {v1, p3}, Lya2;->K(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v0
.end method
