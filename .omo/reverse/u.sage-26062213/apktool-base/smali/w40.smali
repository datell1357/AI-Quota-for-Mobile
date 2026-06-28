.class public final synthetic Lw40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:F

.field public final synthetic o:Lzr2;

.field public final synthetic p:Lqh;

.field public final synthetic q:Ldf1;

.field public final synthetic r:Lyq3;

.field public final synthetic s:Lyq3;

.field public final synthetic t:Lyq3;

.field public final synthetic u:Lyq3;

.field public final synthetic v:J

.field public final synthetic w:Lka0;

.field public final synthetic x:J


# direct methods
.method public synthetic constructor <init>(FLzr2;Lqh;Ldf1;Lyq3;Lyq3;Lyq3;Lyq3;JLka0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lw40;->n:F

    .line 5
    .line 6
    iput-object p2, p0, Lw40;->o:Lzr2;

    .line 7
    .line 8
    iput-object p3, p0, Lw40;->p:Lqh;

    .line 9
    .line 10
    iput-object p4, p0, Lw40;->q:Ldf1;

    .line 11
    .line 12
    iput-object p5, p0, Lw40;->r:Lyq3;

    .line 13
    .line 14
    iput-object p6, p0, Lw40;->s:Lyq3;

    .line 15
    .line 16
    iput-object p7, p0, Lw40;->t:Lyq3;

    .line 17
    .line 18
    iput-object p8, p0, Lw40;->u:Lyq3;

    .line 19
    .line 20
    iput-wide p9, p0, Lw40;->v:J

    .line 21
    .line 22
    iput-object p11, p0, Lw40;->w:Lka0;

    .line 23
    .line 24
    iput-wide p12, p0, Lw40;->x:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    check-cast v6, Lag1;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x2

    .line 20
    if-eq v2, v11, :cond_0

    .line 21
    .line 22
    move v2, v10

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v9

    .line 25
    :goto_0
    and-int/2addr v1, v10

    .line 26
    invoke-virtual {v6, v1, v2}, Lag1;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    sget v1, La50;->b:F

    .line 33
    .line 34
    invoke-static {v1}, Lon3;->g(F)Lnd2;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 39
    .line 40
    iget v3, v0, Lw40;->n:F

    .line 41
    .line 42
    invoke-static {v1, v2, v3}, Lon3;->a(Lnd2;FF)Lnd2;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, v0, Lw40;->o:Lzr2;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v12, Lmj1;->y:Lbw;

    .line 53
    .line 54
    const/16 v2, 0x30

    .line 55
    .line 56
    iget-object v3, v0, Lw40;->p:Lqh;

    .line 57
    .line 58
    invoke-static {v3, v12, v6, v2}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-wide v3, v6, Lag1;->T:J

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v6, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v5, Llb0;->c:Lkb0;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object v13, Lkb0;->b:Lic0;

    .line 82
    .line 83
    invoke-virtual {v6}, Lag1;->Z()V

    .line 84
    .line 85
    .line 86
    iget-boolean v5, v6, Lag1;->S:Z

    .line 87
    .line 88
    if-eqz v5, :cond_1

    .line 89
    .line 90
    invoke-virtual {v6, v13}, Lag1;->k(Lne1;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v6}, Lag1;->j0()V

    .line 95
    .line 96
    .line 97
    :goto_1
    sget-object v14, Lkb0;->f:Lfd;

    .line 98
    .line 99
    invoke-static {v14, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object v15, Lkb0;->e:Lfd;

    .line 103
    .line 104
    invoke-static {v15, v6, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget-object v3, Lkb0;->g:Lfd;

    .line 112
    .line 113
    invoke-static {v3, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lkb0;->h:Ll9;

    .line 117
    .line 118
    invoke-static {v6, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 119
    .line 120
    .line 121
    sget-object v4, Lkb0;->d:Lfd;

    .line 122
    .line 123
    invoke-static {v4, v6, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lmj1;->o:Lcw;

    .line 127
    .line 128
    invoke-static {v1, v9}, Lqx;->d(Lcw;Z)Ldb2;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    iget-wide v7, v6, Lag1;->T:J

    .line 133
    .line 134
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    sget-object v10, Lkd2;->b:Lkd2;

    .line 143
    .line 144
    invoke-static {v6, v10}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v6}, Lag1;->Z()V

    .line 149
    .line 150
    .line 151
    iget-boolean v11, v6, Lag1;->S:Z

    .line 152
    .line 153
    if-eqz v11, :cond_2

    .line 154
    .line 155
    invoke-virtual {v6, v13}, Lag1;->k(Lne1;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {v6}, Lag1;->j0()V

    .line 160
    .line 161
    .line 162
    :goto_2
    invoke-static {v14, v6, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v15, v6, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v7, v6, v3, v6, v2}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v6, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget-object v9, v0, Lw40;->q:Ldf1;

    .line 175
    .line 176
    move-object v5, v1

    .line 177
    if-eqz v9, :cond_3

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    goto :goto_3

    .line 181
    :cond_3
    const/4 v1, 0x0

    .line 182
    :goto_3
    sget-object v7, Lmj1;->z:Law;

    .line 183
    .line 184
    iget-object v11, v0, Lw40;->r:Lyq3;

    .line 185
    .line 186
    const/16 v8, 0xc

    .line 187
    .line 188
    move/from16 v16, v1

    .line 189
    .line 190
    invoke-static {v11, v7, v8}, Lj11;->b(Lyq3;Law;I)Lo11;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    move-object/from16 v17, v2

    .line 195
    .line 196
    iget-object v2, v0, Lw40;->s:Lyq3;

    .line 197
    .line 198
    move-object/from16 v19, v3

    .line 199
    .line 200
    const/4 v8, 0x2

    .line 201
    invoke-static {v2, v8}, Lj11;->c(Lz51;I)Lo11;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1, v3}, Lo11;->a(Lo11;)Lo11;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    iget-object v1, v0, Lw40;->t:Lyq3;

    .line 210
    .line 211
    const/16 v8, 0xc

    .line 212
    .line 213
    invoke-static {v1, v7, v8}, Lj11;->e(Lyq3;Law;I)Ly31;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    move-object/from16 v18, v2

    .line 218
    .line 219
    iget-object v2, v0, Lw40;->u:Lyq3;

    .line 220
    .line 221
    move-object/from16 v20, v1

    .line 222
    .line 223
    const/4 v8, 0x2

    .line 224
    invoke-static {v2, v8}, Lj11;->d(Lz51;I)Ly31;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v7, v1}, Ly31;->a(Ly31;)Ly31;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v7, Ly40;

    .line 233
    .line 234
    move-object/from16 v21, v1

    .line 235
    .line 236
    move-object v8, v2

    .line 237
    iget-wide v1, v0, Lw40;->v:J

    .line 238
    .line 239
    invoke-direct {v7, v1, v2, v9}, Ly40;-><init>(JLdf1;)V

    .line 240
    .line 241
    .line 242
    const v1, -0xad3e62c

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v7, v6}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const/4 v2, 0x0

    .line 250
    move-object v7, v5

    .line 251
    const/4 v5, 0x0

    .line 252
    move-object/from16 v22, v8

    .line 253
    .line 254
    const v8, 0x180006

    .line 255
    .line 256
    .line 257
    move-object/from16 v24, v7

    .line 258
    .line 259
    move-object/from16 v23, v9

    .line 260
    .line 261
    move-object/from16 v25, v18

    .line 262
    .line 263
    move-object/from16 v9, v19

    .line 264
    .line 265
    move-object/from16 v26, v20

    .line 266
    .line 267
    move-object/from16 v27, v22

    .line 268
    .line 269
    move-object v7, v6

    .line 270
    move-object v6, v1

    .line 271
    move/from16 v1, v16

    .line 272
    .line 273
    move-object/from16 v16, v11

    .line 274
    .line 275
    move-object/from16 v11, v17

    .line 276
    .line 277
    move-object/from16 v17, v10

    .line 278
    .line 279
    move-object v10, v4

    .line 280
    move-object/from16 v4, v21

    .line 281
    .line 282
    invoke-static/range {v1 .. v8}, Lmt1;->c(ZLnd2;Lo11;Ly31;Ljava/lang/String;Lka0;Lag1;I)V

    .line 283
    .line 284
    .line 285
    move-object v6, v7

    .line 286
    move v7, v8

    .line 287
    const/4 v8, 0x0

    .line 288
    if-nez v23, :cond_4

    .line 289
    .line 290
    const v1, -0x2364d91

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v1}, Lag1;->W(I)V

    .line 294
    .line 295
    .line 296
    invoke-static {v8}, Lon3;->f(F)Lnd2;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v6, v1}, Lmt1;->f(Lag1;Lnd2;)V

    .line 301
    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-virtual {v6, v1}, Lag1;->p(Z)V

    .line 305
    .line 306
    .line 307
    :goto_4
    const/4 v2, 0x1

    .line 308
    goto :goto_5

    .line 309
    :cond_4
    const/4 v1, 0x0

    .line 310
    const v2, -0x23506fa

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v2}, Lag1;->W(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v1}, Lag1;->p(Z)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :goto_5
    invoke-virtual {v6, v2}, Lag1;->p(Z)V

    .line 321
    .line 322
    .line 323
    new-instance v2, Lnz1;

    .line 324
    .line 325
    const/high16 v3, 0x3f800000    # 1.0f

    .line 326
    .line 327
    invoke-direct {v2, v3, v1}, Lnz1;-><init>(FZ)V

    .line 328
    .line 329
    .line 330
    sget-object v1, Lth;->a:Lph;

    .line 331
    .line 332
    const/16 v3, 0x36

    .line 333
    .line 334
    invoke-static {v1, v12, v6, v3}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-wide v3, v6, Lag1;->T:J

    .line 339
    .line 340
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v6, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v6}, Lag1;->Z()V

    .line 353
    .line 354
    .line 355
    iget-boolean v5, v6, Lag1;->S:Z

    .line 356
    .line 357
    if-eqz v5, :cond_5

    .line 358
    .line 359
    invoke-virtual {v6, v13}, Lag1;->k(Lne1;)V

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_5
    invoke-virtual {v6}, Lag1;->j0()V

    .line 364
    .line 365
    .line 366
    :goto_6
    invoke-static {v14, v6, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v15, v6, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v3, v6, v9, v6, v11}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 373
    .line 374
    .line 375
    invoke-static {v10, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    const/4 v1, 0x0

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iget-object v3, v0, Lw40;->w:Lka0;

    .line 384
    .line 385
    invoke-virtual {v3, v6, v2}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    const/4 v2, 0x1

    .line 389
    invoke-virtual {v6, v2}, Lag1;->p(Z)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v5, v24

    .line 393
    .line 394
    invoke-static {v5, v1}, Lqx;->d(Lcw;Z)Ldb2;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    iget-wide v3, v6, Lag1;->T:J

    .line 399
    .line 400
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    invoke-virtual {v6}, Lag1;->l()Lhu2;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    move-object/from16 v5, v17

    .line 409
    .line 410
    invoke-static {v6, v5}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-virtual {v6}, Lag1;->Z()V

    .line 415
    .line 416
    .line 417
    iget-boolean v12, v6, Lag1;->S:Z

    .line 418
    .line 419
    if-eqz v12, :cond_6

    .line 420
    .line 421
    invoke-virtual {v6, v13}, Lag1;->k(Lne1;)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_6
    invoke-virtual {v6}, Lag1;->j0()V

    .line 426
    .line 427
    .line 428
    :goto_7
    invoke-static {v14, v6, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v15, v6, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v3, v6, v9, v6, v11}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v10, v6, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    sget-object v2, Lmj1;->B:Law;

    .line 441
    .line 442
    move-object/from16 v4, v16

    .line 443
    .line 444
    const/16 v3, 0xc

    .line 445
    .line 446
    invoke-static {v4, v2, v3}, Lj11;->b(Lyq3;Law;I)Lo11;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    move-object/from16 v5, v25

    .line 451
    .line 452
    const/4 v9, 0x2

    .line 453
    invoke-static {v5, v9}, Lj11;->c(Lz51;I)Lo11;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v4, v5}, Lo11;->a(Lo11;)Lo11;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    move-object/from16 v5, v26

    .line 462
    .line 463
    invoke-static {v5, v2, v3}, Lj11;->e(Lyq3;Law;I)Ly31;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    move-object/from16 v3, v27

    .line 468
    .line 469
    invoke-static {v3, v9}, Lj11;->d(Lz51;I)Ly31;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Ly31;->a(Ly31;)Ly31;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    new-instance v2, Llq;

    .line 478
    .line 479
    iget-wide v9, v0, Lw40;->x:J

    .line 480
    .line 481
    invoke-direct {v2, v9, v10}, Llq;-><init>(J)V

    .line 482
    .line 483
    .line 484
    const v0, -0x41029ef5

    .line 485
    .line 486
    .line 487
    invoke-static {v0, v2, v6}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    move v0, v1

    .line 492
    const/4 v1, 0x0

    .line 493
    move-object v2, v4

    .line 494
    const/4 v4, 0x0

    .line 495
    invoke-static/range {v0 .. v7}, Lmt1;->c(ZLnd2;Lo11;Ly31;Ljava/lang/String;Lka0;Lag1;I)V

    .line 496
    .line 497
    .line 498
    const v1, -0x5a49a908

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v1}, Lag1;->W(I)V

    .line 502
    .line 503
    .line 504
    invoke-static {v8}, Lon3;->f(F)Lnd2;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-static {v6, v1}, Lmt1;->f(Lag1;Lnd2;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v6, v0}, Lag1;->p(Z)V

    .line 512
    .line 513
    .line 514
    const/4 v2, 0x1

    .line 515
    invoke-virtual {v6, v2}, Lag1;->p(Z)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6, v2}, Lag1;->p(Z)V

    .line 519
    .line 520
    .line 521
    goto :goto_8

    .line 522
    :cond_7
    invoke-virtual {v6}, Lag1;->Q()V

    .line 523
    .line 524
    .line 525
    :goto_8
    sget-object v0, Lt64;->a:Lt64;

    .line 526
    .line 527
    return-object v0
.end method
