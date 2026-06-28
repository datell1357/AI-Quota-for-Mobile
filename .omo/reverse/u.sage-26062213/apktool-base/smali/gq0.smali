.class public final Lgq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lgq0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgq0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgq0;->a:Lgq0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcn3;Lag1;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcn3;->g:F

    .line 6
    .line 7
    const v3, 0x7f677649

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v3}, Lag1;->X(I)Lag1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x4

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move v3, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v4

    .line 24
    :goto_0
    or-int v3, p3, v3

    .line 25
    .line 26
    and-int/lit8 v6, v3, 0x3

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    if-eq v6, v4, :cond_1

    .line 31
    .line 32
    move v4, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v7

    .line 35
    :goto_1
    and-int/lit8 v6, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v6, v4}, Lag1;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v6, 0x7

    .line 42
    if-eqz v4, :cond_e

    .line 43
    .line 44
    iget-object v4, v0, Lcn3;->j:Lk04;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-nez v9, :cond_d

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const v9, 0x7fffffff

    .line 57
    .line 58
    .line 59
    and-int/2addr v2, v9

    .line 60
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 61
    .line 62
    if-ge v2, v9, :cond_d

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-virtual {v1, v9}, Lag1;->f(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    or-int/2addr v2, v9

    .line 74
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    sget-object v10, Lrb0;->a:Lbx3;

    .line 79
    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    if-ne v9, v10, :cond_3

    .line 83
    .line 84
    :cond_2
    new-instance v2, Lfq0;

    .line 85
    .line 86
    invoke-direct {v2, v7, v0}, Lfq0;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lca;->m(Lne1;)Los0;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v1, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    check-cast v9, Ltr3;

    .line 97
    .line 98
    invoke-interface {v9}, Ltr3;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lt70;

    .line 103
    .line 104
    iget-wide v11, v2, Lt70;->a:J

    .line 105
    .line 106
    sget-object v2, Lfe2;->o:Lfe2;

    .line 107
    .line 108
    invoke-static {v2, v1}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v11, v12, v2, v1}, Len3;->a(JLyq3;Lag1;)Ltr3;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v9, Lsp0;

    .line 117
    .line 118
    invoke-direct {v9, v6, v0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const v11, -0x62e0c0ee

    .line 122
    .line 123
    .line 124
    invoke-static {v11, v9, v1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    const v9, 0x2921b6f1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v9}, Lag1;->W(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v7}, Lag1;->p(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v9, v0, Lcn3;->a:Lnd2;

    .line 138
    .line 139
    sget-object v11, Lkd2;->b:Lkd2;

    .line 140
    .line 141
    invoke-interface {v9, v11}, Lnd2;->c(Lnd2;)Lnd2;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v1, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    if-nez v12, :cond_4

    .line 154
    .line 155
    if-ne v13, v10, :cond_5

    .line 156
    .line 157
    :cond_4
    new-instance v13, Lnn0;

    .line 158
    .line 159
    invoke-direct {v13, v2, v8}, Lnn0;-><init>(Ltr3;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v13}, Lag1;->g0(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    check-cast v13, Lpe1;

    .line 166
    .line 167
    invoke-static {v9, v13}, Lk75;->u(Lnd2;Lpe1;)Lnd2;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    if-ne v9, v10, :cond_6

    .line 176
    .line 177
    new-instance v9, Lt3;

    .line 178
    .line 179
    const/16 v12, 0x14

    .line 180
    .line 181
    invoke-direct {v9, v12}, Lt3;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    check-cast v9, Lpe1;

    .line 188
    .line 189
    invoke-static {v2, v9}, Ldh3;->a(Lnd2;Lpe1;)Lnd2;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    if-ne v9, v10, :cond_7

    .line 198
    .line 199
    sget-object v9, Leq0;->b:Leq0;

    .line 200
    .line 201
    invoke-virtual {v1, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 205
    .line 206
    sget-object v12, Lt64;->a:Lt64;

    .line 207
    .line 208
    invoke-static {v2, v12, v9}, Ldv3;->a(Lnd2;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lnd2;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    sget-object v9, Lmj1;->o:Lcw;

    .line 213
    .line 214
    invoke-static {v9, v7}, Lqx;->d(Lcw;Z)Ldb2;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    iget-wide v12, v1, Lag1;->T:J

    .line 219
    .line 220
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    invoke-virtual {v1}, Lag1;->l()Lhu2;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-static {v1, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    sget-object v14, Llb0;->c:Lkb0;

    .line 233
    .line 234
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    sget-object v14, Lkb0;->b:Lic0;

    .line 238
    .line 239
    invoke-virtual {v1}, Lag1;->Z()V

    .line 240
    .line 241
    .line 242
    iget-boolean v15, v1, Lag1;->S:Z

    .line 243
    .line 244
    if-eqz v15, :cond_8

    .line 245
    .line 246
    invoke-virtual {v1, v14}, Lag1;->k(Lne1;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    invoke-virtual {v1}, Lag1;->j0()V

    .line 251
    .line 252
    .line 253
    :goto_2
    sget-object v14, Lkb0;->f:Lfd;

    .line 254
    .line 255
    invoke-static {v14, v1, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    sget-object v9, Lkb0;->e:Lfd;

    .line 259
    .line 260
    invoke-static {v9, v1, v13}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    sget-object v12, Lkb0;->g:Lfd;

    .line 268
    .line 269
    invoke-static {v12, v1, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    sget-object v9, Lkb0;->h:Ll9;

    .line 273
    .line 274
    invoke-static {v1, v9}, Lht4;->y(Lag1;Lpe1;)V

    .line 275
    .line 276
    .line 277
    sget-object v9, Lkb0;->d:Lfd;

    .line 278
    .line 279
    invoke-static {v9, v1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v0, Lcn3;->i:Lhd4;

    .line 283
    .line 284
    invoke-static {v11, v2}, Lk75;->P(Lnd2;Lhd4;)Lnd2;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v2}, Ln44;->d0(Lnd2;)Lnd2;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    sget-object v9, Leg;->a:Llc0;

    .line 293
    .line 294
    and-int/lit8 v3, v3, 0xe

    .line 295
    .line 296
    if-ne v3, v5, :cond_9

    .line 297
    .line 298
    move v7, v8

    .line 299
    :cond_9
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    if-nez v7, :cond_a

    .line 304
    .line 305
    if-ne v3, v10, :cond_b

    .line 306
    .line 307
    :cond_a
    new-instance v3, Ldq0;

    .line 308
    .line 309
    invoke-direct {v3, v0}, Ldq0;-><init>(Lcn3;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_b
    check-cast v3, Ldq0;

    .line 316
    .line 317
    iget-wide v11, v4, Lk04;->c:J

    .line 318
    .line 319
    move v7, v6

    .line 320
    iget-wide v5, v4, Lk04;->d:J

    .line 321
    .line 322
    iget-wide v13, v4, Lk04;->e:J

    .line 323
    .line 324
    iget-wide v7, v4, Lk04;->f:J

    .line 325
    .line 326
    move-wide/from16 v22, v11

    .line 327
    .line 328
    move-object v12, v2

    .line 329
    move-object v2, v3

    .line 330
    move-wide/from16 v3, v22

    .line 331
    .line 332
    iget-object v11, v0, Lcn3;->b:Lka0;

    .line 333
    .line 334
    move-object/from16 v17, v12

    .line 335
    .line 336
    iget-object v12, v0, Lcn3;->c:Lay3;

    .line 337
    .line 338
    move-wide/from16 v18, v13

    .line 339
    .line 340
    iget-object v13, v0, Lcn3;->d:Lay3;

    .line 341
    .line 342
    const/4 v14, 0x7

    .line 343
    iget-object v15, v0, Lcn3;->e:Ldf1;

    .line 344
    .line 345
    iget v9, v0, Lcn3;->g:F

    .line 346
    .line 347
    iget-object v14, v0, Lcn3;->h:Lzr2;

    .line 348
    .line 349
    move-object/from16 v21, v2

    .line 350
    .line 351
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    if-ne v2, v10, :cond_c

    .line 356
    .line 357
    new-instance v2, Ll6;

    .line 358
    .line 359
    const/16 v10, 0xa

    .line 360
    .line 361
    invoke-direct {v2, v10}, Ll6;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_c
    check-cast v2, Lne1;

    .line 368
    .line 369
    const/4 v10, 0x1

    .line 370
    const/16 v20, 0x0

    .line 371
    .line 372
    move v0, v10

    .line 373
    move-wide/from16 v22, v18

    .line 374
    .line 375
    move-object/from16 v19, v1

    .line 376
    .line 377
    move-object/from16 v18, v14

    .line 378
    .line 379
    move-object/from16 v1, v17

    .line 380
    .line 381
    move-object v14, v2

    .line 382
    move/from16 v17, v9

    .line 383
    .line 384
    move-wide/from16 v9, v22

    .line 385
    .line 386
    move-object/from16 v2, v21

    .line 387
    .line 388
    invoke-static/range {v1 .. v20}, Leg;->c(Lnd2;Ldq0;JJJJLka0;Lay3;Lay3;Lne1;Ldf1;Lka0;FLzr2;Lag1;I)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v1, v19

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Lag1;->p(Z)V

    .line 394
    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_d
    const-string v0, "The expandedHeight is expected to be specified and finite"

    .line 398
    .line 399
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_e
    invoke-virtual {v1}, Lag1;->Q()V

    .line 404
    .line 405
    .line 406
    :goto_3
    invoke-virtual {v1}, Lag1;->r()Lc33;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_f

    .line 411
    .line 412
    new-instance v1, Ll4;

    .line 413
    .line 414
    move-object/from16 v2, p0

    .line 415
    .line 416
    move-object/from16 v3, p1

    .line 417
    .line 418
    move/from16 v4, p3

    .line 419
    .line 420
    const/4 v14, 0x7

    .line 421
    invoke-direct {v1, v4, v14, v2, v3}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    iput-object v1, v0, Lc33;->d:Ldf1;

    .line 425
    .line 426
    :cond_f
    return-void
.end method
