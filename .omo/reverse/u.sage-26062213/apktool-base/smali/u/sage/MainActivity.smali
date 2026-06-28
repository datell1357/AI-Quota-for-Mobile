.class public final Lu/sage/MainActivity;
.super Lu90;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Lri3;

.field public B:Ljava/lang/String;

.field public volatile n:La6;

.field public final o:Ljava/lang/Object;

.field public p:Z

.field public final q:Lnv3;

.field public final r:Li6;

.field public final s:Lwl3;

.field public final t:Lwr3;

.field public u:Lv50;

.field public v:Lyh0;

.field public w:Lpf;

.field public x:Ljg1;

.field public y:Li70;

.field public z:Ln8;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lu90;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu/sage/MainActivity;->o:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lu/sage/MainActivity;->p:Z

    .line 13
    .line 14
    new-instance v1, Luj1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Luj1;-><init>(Lu/sage/MainActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lu90;->addOnContextAvailableListener(Lap2;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcc;

    .line 23
    .line 24
    const/16 v2, 0x11

    .line 25
    .line 26
    invoke-direct {v1, v2, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lnv3;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lnv3;-><init>(Lne1;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lu/sage/MainActivity;->q:Lnv3;

    .line 35
    .line 36
    new-instance v1, Lh6;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-direct {v1, v2}, Lh6;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lp61;

    .line 43
    .line 44
    const/16 v3, 0x12

    .line 45
    .line 46
    invoke-direct {v2, v3}, Lp61;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v2}, Lu90;->registerForActivityResult(Lg6;Lf6;)Li6;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lu/sage/MainActivity;->r:Li6;

    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-static {v0, v1}, Lxl3;->a(II)Lwl3;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lu/sage/MainActivity;->s:Lwl3;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lu/sage/MainActivity;->t:Lwr3;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/sage/MainActivity;->h()La6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, La6;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lag1;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const v0, -0x1c366bd0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, v0}, Lag1;->X(I)Lag1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v11, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v15, 0x4

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v15

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    or-int v0, p5, v0

    .line 26
    .line 27
    invoke-virtual {v11, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v3, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v3

    .line 39
    move-object/from16 v3, p3

    .line 40
    .line 41
    invoke-virtual {v11, v3}, Lag1;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v6, 0x100

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    move v5, v6

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v5, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v5

    .line 54
    invoke-virtual {v11, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    const/16 v5, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v5, 0x400

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v5

    .line 66
    and-int/lit16 v5, v0, 0x493

    .line 67
    .line 68
    const/16 v8, 0x492

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x1

    .line 72
    if-eq v5, v8, :cond_4

    .line 73
    .line 74
    move v5, v10

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v5, v9

    .line 77
    :goto_4
    and-int/lit8 v8, v0, 0x1

    .line 78
    .line 79
    invoke-virtual {v11, v8, v5}, Lag1;->N(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_21

    .line 84
    .line 85
    new-array v5, v9, [Llk2;

    .line 86
    .line 87
    sget-object v8, Lea;->b:Lis3;

    .line 88
    .line 89
    invoke-virtual {v11, v8}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    new-instance v12, Lei0;

    .line 100
    .line 101
    const/16 v13, 0x8

    .line 102
    .line 103
    invoke-direct {v12, v13}, Lei0;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v13, Lv;

    .line 107
    .line 108
    const/16 v4, 0x13

    .line 109
    .line 110
    invoke-direct {v13, v4, v8}, Lv;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move v4, v9

    .line 114
    new-instance v9, Lxh1;

    .line 115
    .line 116
    invoke-direct {v9, v12, v13}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    sget-object v14, Lrb0;->a:Lbx3;

    .line 128
    .line 129
    if-nez v12, :cond_5

    .line 130
    .line 131
    if-ne v13, v14, :cond_6

    .line 132
    .line 133
    :cond_5
    new-instance v13, Lws0;

    .line 134
    .line 135
    const/4 v12, 0x6

    .line 136
    invoke-direct {v13, v8, v12}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v13}, Lag1;->g0(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    check-cast v13, Lne1;

    .line 143
    .line 144
    const/4 v12, 0x0

    .line 145
    move v8, v10

    .line 146
    move-object v10, v13

    .line 147
    const/4 v13, 0x4

    .line 148
    move/from16 v21, v8

    .line 149
    .line 150
    move-object v8, v5

    .line 151
    move/from16 v5, v21

    .line 152
    .line 153
    invoke-static/range {v8 .. v13}, Ln44;->K0([Ljava/lang/Object;Lbd3;Lne1;Lag1;II)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    check-cast v8, Lxi2;

    .line 158
    .line 159
    iget-object v9, v8, Lxi2;->b:Lii2;

    .line 160
    .line 161
    iget-object v9, v9, Lii2;->A:Lwl3;

    .line 162
    .line 163
    move-object v10, v8

    .line 164
    new-instance v8, Lz13;

    .line 165
    .line 166
    invoke-direct {v8, v9}, Lz13;-><init>(Lwl3;)V

    .line 167
    .line 168
    .line 169
    const/16 v12, 0x30

    .line 170
    .line 171
    const/4 v13, 0x2

    .line 172
    const/4 v9, 0x0

    .line 173
    move-object v11, v10

    .line 174
    const/4 v10, 0x0

    .line 175
    move-object v4, v11

    .line 176
    move-object/from16 v11, p4

    .line 177
    .line 178
    invoke-static/range {v8 .. v13}, Lca;->g(La81;Ljava/lang/Object;Lhi0;Lag1;II)Lpg2;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-interface {v8}, Ltr3;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    check-cast v9, Lyh2;

    .line 187
    .line 188
    if-eqz v9, :cond_7

    .line 189
    .line 190
    iget-object v9, v9, Lyh2;->o:Lqi2;

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    const/4 v9, 0x0

    .line 194
    :goto_5
    iget-object v12, v4, Lxi2;->b:Lii2;

    .line 195
    .line 196
    iget-object v12, v12, Lii2;->h:Lb23;

    .line 197
    .line 198
    invoke-static {v12, v11}, Lca;->h(Lur3;Lag1;)Lpg2;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    and-int/lit16 v13, v0, 0x380

    .line 203
    .line 204
    if-ne v13, v6, :cond_8

    .line 205
    .line 206
    move v6, v5

    .line 207
    goto :goto_6

    .line 208
    :cond_8
    const/4 v6, 0x0

    .line 209
    :goto_6
    and-int/lit8 v13, v0, 0xe

    .line 210
    .line 211
    if-ne v13, v15, :cond_9

    .line 212
    .line 213
    move v0, v5

    .line 214
    goto :goto_7

    .line 215
    :cond_9
    const/4 v0, 0x0

    .line 216
    :goto_7
    or-int/2addr v0, v6

    .line 217
    invoke-virtual {v11, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    or-int/2addr v0, v6

    .line 222
    invoke-virtual {v11, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    or-int/2addr v0, v6

    .line 227
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    if-nez v0, :cond_b

    .line 232
    .line 233
    if-ne v6, v14, :cond_a

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_a
    move v15, v5

    .line 237
    move-object v0, v6

    .line 238
    const/16 v10, 0x10

    .line 239
    .line 240
    move-object v6, v1

    .line 241
    goto :goto_9

    .line 242
    :cond_b
    :goto_8
    new-instance v0, Lqd;

    .line 243
    .line 244
    move v6, v5

    .line 245
    const/4 v5, 0x0

    .line 246
    move/from16 v18, v6

    .line 247
    .line 248
    const/4 v6, 0x7

    .line 249
    move-object v10, v2

    .line 250
    move-object v2, v1

    .line 251
    move-object v1, v3

    .line 252
    move-object v3, v10

    .line 253
    move/from16 v15, v18

    .line 254
    .line 255
    const/16 v10, 0x10

    .line 256
    .line 257
    invoke-direct/range {v0 .. v6}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 258
    .line 259
    .line 260
    move-object v6, v2

    .line 261
    invoke-virtual {v11, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :goto_9
    check-cast v0, Ldf1;

    .line 265
    .line 266
    sget-object v1, Lt64;->a:Lt64;

    .line 267
    .line 268
    invoke-static {v0, v11, v1}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    const v0, 0x17b6ef9d

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v0}, Lag1;->W(I)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 278
    .line 279
    const/16 v1, 0xa

    .line 280
    .line 281
    invoke-static {v7, v1}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-static {v2}, Loa2;->a0(I)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-ge v2, v10, :cond_c

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_c
    move v10, v2

    .line 293
    :goto_a
    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_12

    .line 305
    .line 306
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    move-object v3, v2

    .line 311
    check-cast v3, Ly84;

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eqz v3, :cond_11

    .line 321
    .line 322
    if-eq v3, v15, :cond_10

    .line 323
    .line 324
    const/4 v5, 0x2

    .line 325
    if-eq v3, v5, :cond_f

    .line 326
    .line 327
    const/4 v1, 0x3

    .line 328
    if-eq v3, v1, :cond_e

    .line 329
    .line 330
    const/4 v1, 0x4

    .line 331
    if-ne v3, v1, :cond_d

    .line 332
    .line 333
    new-instance v1, Lwh0;

    .line 334
    .line 335
    invoke-direct {v1, v6}, Lwh0;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_d
    invoke-static {}, Lp61;->x()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_e
    new-instance v1, Lg70;

    .line 344
    .line 345
    invoke-direct {v1, v6}, Lg70;-><init>(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_f
    new-instance v1, Lnf;

    .line 350
    .line 351
    invoke-direct {v1, v6}, Lnf;-><init>(Landroid/content/Context;)V

    .line 352
    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_10
    const/4 v5, 0x2

    .line 356
    new-instance v1, Lhg1;

    .line 357
    .line 358
    invoke-direct {v1, v6}, Lhg1;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_11
    const/4 v5, 0x2

    .line 363
    new-instance v1, Lr50;

    .line 364
    .line 365
    invoke-direct {v1, v6}, Lr50;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    :goto_c
    iget-object v1, v1, Lps;->h:Lnv3;

    .line 369
    .line 370
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    check-cast v1, La81;

    .line 375
    .line 376
    move-object v3, v0

    .line 377
    move-object v0, v1

    .line 378
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 379
    .line 380
    move-object/from16 v17, v4

    .line 381
    .line 382
    const/16 v4, 0x30

    .line 383
    .line 384
    move/from16 v18, v5

    .line 385
    .line 386
    const/4 v5, 0x2

    .line 387
    move-object/from16 v20, v2

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    move-object v15, v3

    .line 391
    move-object/from16 v16, v8

    .line 392
    .line 393
    move-object v3, v11

    .line 394
    move-object/from16 v11, v17

    .line 395
    .line 396
    move-object/from16 v8, v20

    .line 397
    .line 398
    move-object/from16 v17, v10

    .line 399
    .line 400
    move/from16 v20, v18

    .line 401
    .line 402
    const/16 v10, 0xa

    .line 403
    .line 404
    invoke-static/range {v0 .. v5}, Lca;->g(La81;Ljava/lang/Object;Lhi0;Lag1;II)Lpg2;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    move-object v1, v3

    .line 409
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Ljava/lang/Boolean;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-interface {v15, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-object v4, v11

    .line 422
    move-object v0, v15

    .line 423
    move-object/from16 v8, v16

    .line 424
    .line 425
    const/4 v15, 0x1

    .line 426
    move-object v11, v1

    .line 427
    move v1, v10

    .line 428
    move-object/from16 v10, v17

    .line 429
    .line 430
    goto/16 :goto_b

    .line 431
    .line 432
    :cond_12
    move-object v15, v0

    .line 433
    move v10, v1

    .line 434
    move-object/from16 v16, v8

    .line 435
    .line 436
    move-object v1, v11

    .line 437
    const/4 v8, 0x0

    .line 438
    move-object v11, v4

    .line 439
    invoke-virtual {v1, v8}, Lag1;->p(Z)V

    .line 440
    .line 441
    .line 442
    iget-object v0, v6, Lu/sage/MainActivity;->A:Lri3;

    .line 443
    .line 444
    if-eqz v0, :cond_20

    .line 445
    .line 446
    iget-object v0, v0, Lri3;->c:Lb23;

    .line 447
    .line 448
    invoke-static {v0, v1}, Lca;->h(Lur3;Lag1;)Lpg2;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-eqz v4, :cond_14

    .line 466
    .line 467
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    move-object v5, v4

    .line 472
    check-cast v5, Ly84;

    .line 473
    .line 474
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v17

    .line 478
    move-object/from16 v8, v17

    .line 479
    .line 480
    check-cast v8, Ljava/util/Map;

    .line 481
    .line 482
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-static {v5, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    if-nez v5, :cond_13

    .line 493
    .line 494
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    :cond_13
    const/4 v8, 0x0

    .line 498
    goto :goto_d

    .line 499
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    const/4 v4, 0x0

    .line 509
    :goto_e
    if-ge v4, v3, :cond_16

    .line 510
    .line 511
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    add-int/lit8 v4, v4, 0x1

    .line 516
    .line 517
    move-object v8, v5

    .line 518
    check-cast v8, Ly84;

    .line 519
    .line 520
    invoke-virtual {v15, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 525
    .line 526
    invoke-static {v8, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    if-eqz v8, :cond_15

    .line 531
    .line 532
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    :cond_15
    const/16 v10, 0xa

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_17

    .line 543
    .line 544
    goto :goto_f

    .line 545
    :cond_17
    move-object v2, v0

    .line 546
    :goto_f
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_18

    .line 551
    .line 552
    move-object v3, v7

    .line 553
    goto :goto_10

    .line 554
    :cond_18
    move-object v3, v2

    .line 555
    :goto_10
    new-instance v8, Ljava/util/ArrayList;

    .line 556
    .line 557
    const/16 v10, 0xa

    .line 558
    .line 559
    invoke-static {v3, v10}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 564
    .line 565
    .line 566
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-eqz v2, :cond_19

    .line 575
    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    check-cast v2, Ly84;

    .line 581
    .line 582
    new-instance v4, Lgx;

    .line 583
    .line 584
    invoke-static {v2}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    iget-object v10, v2, Ly84;->n:Ljava/lang/String;

    .line 589
    .line 590
    iget v2, v2, Ly84;->o:I

    .line 591
    .line 592
    invoke-direct {v4, v5, v2, v10}, Lgx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    goto :goto_11

    .line 599
    :cond_19
    invoke-virtual {v1, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    invoke-virtual {v1, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    or-int/2addr v0, v2

    .line 608
    invoke-virtual {v1, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    or-int/2addr v0, v2

    .line 613
    invoke-virtual {v1, v11}, Lag1;->h(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    or-int/2addr v0, v2

    .line 618
    const/4 v2, 0x4

    .line 619
    if-ne v13, v2, :cond_1a

    .line 620
    .line 621
    const/4 v2, 0x1

    .line 622
    goto :goto_12

    .line 623
    :cond_1a
    const/4 v2, 0x0

    .line 624
    :goto_12
    or-int/2addr v0, v2

    .line 625
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    if-nez v0, :cond_1c

    .line 630
    .line 631
    if-ne v2, v14, :cond_1b

    .line 632
    .line 633
    goto :goto_13

    .line 634
    :cond_1b
    move-object v0, v2

    .line 635
    move-object v4, v11

    .line 636
    move-object/from16 v2, p1

    .line 637
    .line 638
    move-object v11, v1

    .line 639
    move-object v1, v9

    .line 640
    goto :goto_14

    .line 641
    :cond_1c
    :goto_13
    new-instance v0, Lcy;

    .line 642
    .line 643
    const/4 v6, 0x0

    .line 644
    const/4 v7, 0x1

    .line 645
    move-object/from16 v5, p1

    .line 646
    .line 647
    move-object/from16 v2, p2

    .line 648
    .line 649
    move-object v4, v11

    .line 650
    move-object v11, v1

    .line 651
    move-object v1, v9

    .line 652
    invoke-direct/range {v0 .. v7}, Lcy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 653
    .line 654
    .line 655
    move-object v2, v5

    .line 656
    invoke-virtual {v11, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :goto_14
    check-cast v0, Ldf1;

    .line 660
    .line 661
    invoke-static {v1, v3, v0, v11}, Lzf5;->d(Ljava/lang/Object;Ljava/lang/Object;Ldf1;Lag1;)V

    .line 662
    .line 663
    .line 664
    const/4 v1, 0x4

    .line 665
    if-ne v13, v1, :cond_1d

    .line 666
    .line 667
    const/4 v9, 0x1

    .line 668
    goto :goto_15

    .line 669
    :cond_1d
    const/4 v9, 0x0

    .line 670
    :goto_15
    invoke-virtual {v11, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    or-int/2addr v0, v9

    .line 675
    invoke-virtual {v11, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    or-int/2addr v0, v1

    .line 680
    invoke-virtual {v11}, Lag1;->K()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    if-nez v0, :cond_1e

    .line 685
    .line 686
    if-ne v1, v14, :cond_1f

    .line 687
    .line 688
    :cond_1e
    new-instance v1, Lq4;

    .line 689
    .line 690
    const/4 v0, 0x0

    .line 691
    invoke-direct {v1, v2, v3, v4, v0}, Lq4;-><init>(Ljava/lang/String;Ljava/util/List;Lxi2;Ldh0;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v11, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    :cond_1f
    check-cast v1, Ldf1;

    .line 698
    .line 699
    invoke-static {v1, v11, v3}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    sget-object v9, Lon3;->b:Lu51;

    .line 703
    .line 704
    new-instance v0, Lu82;

    .line 705
    .line 706
    move-object/from16 v3, p2

    .line 707
    .line 708
    move-object v7, v2

    .line 709
    move-object v6, v4

    .line 710
    move-object v1, v8

    .line 711
    move-object v2, v12

    .line 712
    move-object/from16 v5, v16

    .line 713
    .line 714
    move-object/from16 v4, p0

    .line 715
    .line 716
    invoke-direct/range {v0 .. v7}, Lu82;-><init>(Ljava/util/ArrayList;Lpg2;Ljava/util/List;Lu/sage/MainActivity;Lpg2;Lxi2;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    move-object v1, v0

    .line 720
    move-object v15, v4

    .line 721
    move-object v4, v6

    .line 722
    move-object v0, v7

    .line 723
    const v2, 0x4f629ff5    # 3.80213376E9f

    .line 724
    .line 725
    .line 726
    invoke-static {v2, v1, v11}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    new-instance v1, Lv82;

    .line 731
    .line 732
    const/4 v8, 0x0

    .line 733
    invoke-direct {v1, v4, v0, v15, v8}, Lv82;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 734
    .line 735
    .line 736
    const v3, -0x6eb33d41

    .line 737
    .line 738
    .line 739
    invoke-static {v3, v1, v11}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    const v13, 0x30000186

    .line 744
    .line 745
    .line 746
    const/16 v14, 0x1fa

    .line 747
    .line 748
    move-object v11, v1

    .line 749
    const/4 v1, 0x0

    .line 750
    const/4 v3, 0x0

    .line 751
    const/4 v4, 0x0

    .line 752
    const/4 v5, 0x0

    .line 753
    const-wide/16 v6, 0x0

    .line 754
    .line 755
    move-object v0, v9

    .line 756
    const-wide/16 v8, 0x0

    .line 757
    .line 758
    const/4 v10, 0x0

    .line 759
    move-object/from16 v12, p4

    .line 760
    .line 761
    invoke-static/range {v0 .. v14}, Ln44;->H(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;Lag1;II)V

    .line 762
    .line 763
    .line 764
    goto :goto_16

    .line 765
    :cond_20
    const-string v0, "serviceAvailabilityManager"

    .line 766
    .line 767
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const/16 v19, 0x0

    .line 771
    .line 772
    throw v19

    .line 773
    :cond_21
    move-object v15, v1

    .line 774
    invoke-virtual/range {p4 .. p4}, Lag1;->Q()V

    .line 775
    .line 776
    .line 777
    :goto_16
    invoke-virtual/range {p4 .. p4}, Lag1;->r()Lc33;

    .line 778
    .line 779
    .line 780
    move-result-object v6

    .line 781
    if-eqz v6, :cond_22

    .line 782
    .line 783
    new-instance v0, Lg4;

    .line 784
    .line 785
    move-object/from16 v2, p1

    .line 786
    .line 787
    move-object/from16 v3, p2

    .line 788
    .line 789
    move-object/from16 v4, p3

    .line 790
    .line 791
    move/from16 v5, p5

    .line 792
    .line 793
    move-object v1, v15

    .line 794
    invoke-direct/range {v0 .. v5}, Lg4;-><init>(Lu/sage/MainActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 795
    .line 796
    .line 797
    iput-object v0, v6, Lc33;->d:Ldf1;

    .line 798
    .line 799
    :cond_22
    return-void
.end method

.method public final getDefaultViewModelProviderFactory()Lzb4;
    .locals 2

    .line 1
    invoke-super {p0}, Lu90;->getDefaultViewModelProviderFactory()Lzb4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Luq0;

    .line 6
    .line 7
    invoke-static {p0, v1}, Lbi4;->u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Luq0;

    .line 12
    .line 13
    check-cast p0, Lql0;

    .line 14
    .line 15
    new-instance v1, Lqv3;

    .line 16
    .line 17
    iget-object p0, p0, Lql0;->a:Lvl0;

    .line 18
    .line 19
    const/16 p0, 0x19

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lqv3;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ltj1;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Ltj1;-><init>(Lzb4;Lqv3;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public final h()La6;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/sage/MainActivity;->n:La6;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu/sage/MainActivity;->o:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lu/sage/MainActivity;->n:La6;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, La6;

    .line 13
    .line 14
    invoke-direct {v1, p0}, La6;-><init>(Lu/sage/MainActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lu/sage/MainActivity;->n:La6;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    iget-object p0, p0, Lu/sage/MainActivity;->n:La6;

    .line 27
    .line 28
    return-object p0
.end method

.method public final i()Ln8;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/MainActivity;->z:Ln8;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "analyticsManager"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final j(Ly84;)Lpt;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lu/sage/MainActivity;->v:Lyh0;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "copilotUsageRepository"

    .line 26
    .line 27
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static {}, Lp61;->x()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    iget-object p0, p0, Lu/sage/MainActivity;->y:Li70;

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    const-string p0, "codexUsageRepository"

    .line 41
    .line 42
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_4
    iget-object p0, p0, Lu/sage/MainActivity;->w:Lpf;

    .line 47
    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_5
    const-string p0, "antigravityUsageRepository"

    .line 52
    .line 53
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_6
    iget-object p0, p0, Lu/sage/MainActivity;->x:Ljg1;

    .line 58
    .line 59
    if-eqz p0, :cond_7

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_7
    const-string p0, "geminiUsageRepository"

    .line 63
    .line 64
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_8
    iget-object p0, p0, Lu/sage/MainActivity;->u:Lv50;

    .line 69
    .line 70
    if-eqz p0, :cond_9

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_9
    const-string p0, "claudeUsageRepository"

    .line 74
    .line 75
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lu90;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu/sage/MainActivity;->h()La6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p1, p0, La6;->q:Ly6;

    .line 9
    .line 10
    iget-object v0, p1, Ly6;->n:Lu/sage/MainActivity;

    .line 11
    .line 12
    iget-object p1, p1, Ly6;->o:Lu/sage/MainActivity;

    .line 13
    .line 14
    invoke-static {v0, p1}, Ly6;->b(Lu/sage/MainActivity;Lu/sage/MainActivity;)Lwu4;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class v0, Lw6;

    .line 19
    .line 20
    invoke-static {v0}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lwu4;->l(Li50;)Lvb4;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lw6;

    .line 29
    .line 30
    iget-object p1, p1, Lw6;->c:Lsb0;

    .line 31
    .line 32
    iput-object p1, p0, La6;->r:Lsb0;

    .line 33
    .line 34
    iget-object v0, p1, Lsb0;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lvk0;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, La6;->p:Lu/sage/MainActivity;

    .line 41
    .line 42
    invoke-virtual {p0}, Lu90;->getDefaultViewModelCreationExtras()Lvk0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-boolean v0, p1, Lsb0;->n:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iput-object p0, p1, Lsb0;->o:Ljava/lang/Object;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const-string p0, "setExtras should only be called for an Activity that extends ComponentActivity"

    .line 54
    .line 55
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

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
    new-instance v1, Lsq3;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lsq3;-><init>(Lu/sage/MainActivity;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lxh1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lxh1;-><init>(Lu/sage/MainActivity;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1}, Lxh1;->t()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lu/sage/MainActivity;->k(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lu/sage/MainActivity;->q:Lnv3;

    .line 25
    .line 26
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lk05;

    .line 31
    .line 32
    invoke-virtual {p1}, Lk05;->a()Lef5;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Lh92;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, p0, v3}, Lh92;-><init>(Lu/sage/MainActivity;I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lr6;

    .line 43
    .line 44
    const/16 v5, 0xc

    .line 45
    .line 46
    invoke-direct {v4, v5, v2}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v2, Lqw3;->a:Lc73;

    .line 53
    .line 54
    invoke-virtual {p1, v2, v4}, Lef5;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 55
    .line 56
    .line 57
    sget-object p1, Lez3;->a:Lra3;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    new-array v4, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lr6;

    .line 69
    .line 70
    const/16 v4, 0xa

    .line 71
    .line 72
    invoke-direct {p1, v4, p0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Lxh1;->x(Lr6;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Lsy0;->a(Lu90;)V

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x21

    .line 82
    .line 83
    if-lt v0, p1, :cond_1

    .line 84
    .line 85
    if-lt v0, p1, :cond_1

    .line 86
    .line 87
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 88
    .line 89
    invoke-static {p0, p1}, Lk75;->m(Landroid/content/Context;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    filled-new-array {p1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/16 v0, 0x3e9

    .line 100
    .line 101
    invoke-static {p0, p1, v0}, Lk75;->J(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-static {p0}, Ltv4;->w(Lp22;)Li22;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance v0, Lp10;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-direct {v0, p0, v1}, Lp10;-><init>(Lu/sage/MainActivity;Ldh0;)V

    .line 112
    .line 113
    .line 114
    const/4 v4, 0x3

    .line 115
    invoke-static {p1, v1, v1, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Ltv4;->w(Lp22;)Li22;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v0, Lj92;

    .line 123
    .line 124
    invoke-direct {v0, p0, v1}, Lj92;-><init>(Lu/sage/MainActivity;Ldh0;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v1, v1, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "extra_nav_route"

    .line 135
    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    move-object p1, v1

    .line 144
    :goto_1
    if-eqz p1, :cond_8

    .line 145
    .line 146
    sget-object v4, Ly84;->x:Lt11;

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance v5, Lg1;

    .line 152
    .line 153
    invoke-direct {v5, v2, v4}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {v5}, Lg1;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-virtual {v5}, Lg1;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v4, v2

    .line 167
    check-cast v4, Ly84;

    .line 168
    .line 169
    invoke-static {v4}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    move-object v2, v1

    .line 181
    :goto_2
    check-cast v2, Ly84;

    .line 182
    .line 183
    if-eqz v2, :cond_7

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_5

    .line 190
    .line 191
    const-string v1, "extra_source"

    .line 192
    .line 193
    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :cond_5
    const-string v4, "widget"

    .line 198
    .line 199
    invoke-static {v1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    invoke-virtual {p0}, Lu/sage/MainActivity;->i()Ln8;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1, v2}, Ln8;->k(Ly84;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    invoke-virtual {p0}, Lu/sage/MainActivity;->i()Ln8;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v1, v2}, Ln8;->f(Ly84;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_8
    new-instance v0, Ll4;

    .line 228
    .line 229
    const/16 v1, 0xd

    .line 230
    .line 231
    invoke-direct {v0, v1, p0, p1}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    new-instance p1, Lka0;

    .line 235
    .line 236
    const v1, -0x2d5c9743

    .line 237
    .line 238
    .line 239
    invoke-direct {p1, v1, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p1}, Lv90;->a(Lu90;Lka0;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu/sage/MainActivity;->h()La6;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, La6;->r:Lsb0;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lsb0;->o:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lu90;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "extra_nav_route"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    sget-object v1, Lez3;->a:Lra3;

    .line 19
    .line 20
    const-string v2, "MainActivity: onNewIntent received route: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Ltv4;->w(Lp22;)Li22;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    new-instance v1, Lp;

    .line 39
    .line 40
    const/16 v6, 0x10

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v2, p0

    .line 44
    move-object v4, p1

    .line 45
    invoke-direct/range {v1 .. v6}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    invoke-static {v7, v5, v5, v1, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lu90;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 8
    .line 9
    .line 10
    const/16 p2, 0x3e9

    .line 11
    .line 12
    if-ne p1, p2, :cond_1

    .line 13
    .line 14
    array-length p1, p3

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    aget p1, p3, p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Ltv4;->w(Lp22;)Li22;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lp10;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-direct {p2, p0, p3}, Lp10;-><init>(Lu/sage/MainActivity;Ldh0;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    invoke-static {p1, p3, p3, p2, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu/sage/MainActivity;->q:Lnv3;

    .line 5
    .line 6
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lk05;

    .line 11
    .line 12
    invoke-virtual {v0}, Lk05;->a()Lef5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lh92;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, Lh92;-><init>(Lu/sage/MainActivity;I)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lr6;

    .line 23
    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    invoke-direct {p0, v2, v1}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v1, Lqw3;->a:Lc73;

    .line 33
    .line 34
    invoke-virtual {v0, v1, p0}, Lef5;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lu/sage/a;->D:Lwr3;

    .line 5
    .line 6
    sget-object v0, Lu/sage/a;->D:Lwr3;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ltv4;->w(Lp22;)Li22;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lx4;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-direct {v1, p0, v2, v3}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2, v2, v1, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lu/sage/a;->D:Lwr3;

    .line 5
    .line 6
    sget-object p0, Lu/sage/a;->D:Lwr3;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
