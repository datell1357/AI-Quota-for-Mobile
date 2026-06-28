.class public final Lol2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lz41;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ler2;

.field public final c:Lqz1;

.field public final d:Lnv3;

.field public final e:Lqz1;

.field public final f:Ltq1;

.field public final g:Lqz1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ler2;Lnv3;Lnv3;Lnv3;Ltq1;Lnv3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lol2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lol2;->b:Ler2;

    .line 7
    .line 8
    iput-object p3, p0, Lol2;->c:Lqz1;

    .line 9
    .line 10
    iput-object p4, p0, Lol2;->d:Lnv3;

    .line 11
    .line 12
    iput-object p5, p0, Lol2;->e:Lqz1;

    .line 13
    .line 14
    iput-object p6, p0, Lol2;->f:Ltq1;

    .line 15
    .line 16
    iput-object p7, p0, Lol2;->g:Lqz1;

    .line 17
    .line 18
    return-void
.end method

.method public static final b(Lol2;Ldh0;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v7, v2, Lol2;->c:Lqz1;

    .line 6
    .line 7
    iget-object v1, v2, Lol2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v2, Lol2;->b:Ler2;

    .line 10
    .line 11
    instance-of v4, v0, Lll2;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lll2;

    .line 17
    .line 18
    iget v5, v4, Lll2;->u:I

    .line 19
    .line 20
    const/high16 v6, -0x80000000

    .line 21
    .line 22
    and-int v8, v5, v6

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v5, v6

    .line 27
    iput v5, v4, Lll2;->u:I

    .line 28
    .line 29
    :goto_0
    move-object v8, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v4, Lll2;

    .line 32
    .line 33
    invoke-direct {v4, v2, v0}, Lll2;-><init>(Lol2;Ldh0;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, v8, Lll2;->s:Ljava/lang/Object;

    .line 38
    .line 39
    iget v4, v8, Lll2;->u:I

    .line 40
    .line 41
    sget-object v5, Lkm0;->p:Lkm0;

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const/4 v10, 0x2

    .line 45
    const/4 v6, 0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    sget-object v12, Lri0;->n:Lri0;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    if-eq v4, v6, :cond_3

    .line 52
    .line 53
    if-eq v4, v10, :cond_2

    .line 54
    .line 55
    if-ne v4, v9, :cond_1

    .line 56
    .line 57
    iget-object v1, v8, Lll2;->q:Lw33;

    .line 58
    .line 59
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v11

    .line 73
    :cond_2
    iget-object v1, v8, Lll2;->q:Lw33;

    .line 74
    .line 75
    :try_start_1
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_3
    iget-object v4, v8, Lll2;->r:Lw33;

    .line 81
    .line 82
    iget-object v6, v8, Lll2;->q:Lw33;

    .line 83
    .line 84
    :try_start_2
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .line 86
    .line 87
    move-object/from16 v17, v6

    .line 88
    .line 89
    move-object v6, v4

    .line 90
    move-object/from16 v4, v17

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :catch_1
    move-exception v0

    .line 95
    move-object v1, v6

    .line 96
    goto/16 :goto_a

    .line 97
    .line 98
    :cond_4
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Lw33;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v0, v3, Ler2;->h:Ly00;

    .line 107
    .line 108
    iget-boolean v0, v0, Ly00;->n:Z

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget-object v0, v2, Lol2;->d:Lnv3;

    .line 113
    .line 114
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ll23;

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    iget-object v13, v3, Ler2;->e:Ljava/lang/String;

    .line 123
    .line 124
    if-nez v13, :cond_5

    .line 125
    .line 126
    move-object v13, v1

    .line 127
    :cond_5
    iget-object v0, v0, Ll23;->b:Lqu0;

    .line 128
    .line 129
    sget-object v14, Lg00;->q:Lg00;

    .line 130
    .line 131
    invoke-static {v13}, Lbx3;->o(Ljava/lang/String;)Lg00;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    const-string v14, "SHA-256"

    .line 136
    .line 137
    invoke-virtual {v13, v14}, Lg00;->b(Ljava/lang/String;)Lg00;

    .line 138
    .line 139
    .line 140
    move-result-object v13

    .line 141
    invoke-virtual {v13}, Lg00;->d()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-virtual {v0, v13}, Lqu0;->r(Ljava/lang/String;)Lou0;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    new-instance v13, Lk23;

    .line 152
    .line 153
    invoke-direct {v13, v0}, Lk23;-><init>(Lou0;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move-object v13, v11

    .line 158
    :goto_2
    iput-object v13, v4, Lw33;->n:Ljava/lang/Object;

    .line 159
    .line 160
    :try_start_3
    new-instance v0, Lw33;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    if-eqz v13, :cond_b

    .line 166
    .line 167
    invoke-virtual {v2}, Lol2;->e()Lr51;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    iget-object v14, v4, Lw33;->n:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v14, Lk23;

    .line 174
    .line 175
    iget-object v14, v14, Lk23;->n:Lou0;

    .line 176
    .line 177
    iget-boolean v15, v14, Lou0;->o:Z

    .line 178
    .line 179
    if-nez v15, :cond_c

    .line 180
    .line 181
    iget-object v14, v14, Lou0;->n:Lnu0;

    .line 182
    .line 183
    iget-object v14, v14, Lnu0;->c:Ljava/util/ArrayList;

    .line 184
    .line 185
    const/4 v15, 0x0

    .line 186
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    check-cast v14, Lbt2;

    .line 191
    .line 192
    invoke-virtual {v13, v14}, Lr51;->K(Lbt2;)Li51;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    iget-object v13, v13, Li51;->d:Ljava/lang/Long;

    .line 197
    .line 198
    if-nez v13, :cond_7

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v13

    .line 205
    const-wide/16 v15, 0x0

    .line 206
    .line 207
    cmp-long v13, v13, v15

    .line 208
    .line 209
    if-nez v13, :cond_8

    .line 210
    .line 211
    new-instance v0, Lzp3;

    .line 212
    .line 213
    iget-object v3, v4, Lw33;->n:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v3, Lk23;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Lol2;->i(Lk23;)Lg51;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v1, v11}, Lol2;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v2, v1, v5}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :catch_2
    move-exception v0

    .line 230
    move-object v1, v4

    .line 231
    goto/16 :goto_a

    .line 232
    .line 233
    :cond_8
    :goto_3
    iget-object v13, v4, Lw33;->n:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v13, Lk23;

    .line 236
    .line 237
    invoke-virtual {v2, v13}, Lol2;->j(Lk23;)Lvl2;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    iput-object v13, v0, Lw33;->n:Ljava/lang/Object;

    .line 242
    .line 243
    if-eqz v13, :cond_b

    .line 244
    .line 245
    invoke-static {v13}, Lol2;->h(Lvl2;)V

    .line 246
    .line 247
    .line 248
    iget-object v13, v2, Lol2;->e:Lqz1;

    .line 249
    .line 250
    invoke-interface {v13}, Lqz1;->getValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    check-cast v13, Lb10;

    .line 255
    .line 256
    iget-object v14, v0, Lw33;->n:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v14, Lvl2;

    .line 259
    .line 260
    invoke-virtual {v2}, Lol2;->g()Lsl2;

    .line 261
    .line 262
    .line 263
    iput-object v4, v8, Lll2;->q:Lw33;

    .line 264
    .line 265
    iput-object v0, v8, Lll2;->r:Lw33;

    .line 266
    .line 267
    iput v6, v8, Lll2;->u:I

    .line 268
    .line 269
    check-cast v13, Lco0;

    .line 270
    .line 271
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v6, Lz00;

    .line 275
    .line 276
    invoke-direct {v6, v14}, Lz00;-><init>(Lvl2;)V

    .line 277
    .line 278
    .line 279
    if-ne v6, v12, :cond_9

    .line 280
    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_9
    move-object/from16 v17, v6

    .line 284
    .line 285
    move-object v6, v0

    .line 286
    move-object/from16 v0, v17

    .line 287
    .line 288
    :goto_4
    check-cast v0, Lz00;

    .line 289
    .line 290
    iget-object v13, v0, Lz00;->a:Lvl2;

    .line 291
    .line 292
    if-eqz v13, :cond_a

    .line 293
    .line 294
    new-instance v3, Lzp3;

    .line 295
    .line 296
    iget-object v6, v4, Lw33;->n:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v6, Lk23;

    .line 299
    .line 300
    invoke-virtual {v2, v6}, Lol2;->i(Lk23;)Lg51;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    iget-object v0, v0, Lz00;->a:Lvl2;

    .line 305
    .line 306
    iget-object v0, v0, Lvl2;->d:Lpl2;

    .line 307
    .line 308
    invoke-virtual {v0}, Lpl2;->a()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v1, v0}, Lol2;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-direct {v3, v2, v0, v5}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 317
    .line 318
    .line 319
    return-object v3

    .line 320
    :cond_a
    move-object v0, v6

    .line 321
    :cond_b
    move-object v1, v4

    .line 322
    goto :goto_5

    .line 323
    :cond_c
    const-string v0, "snapshot is closed"

    .line 324
    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 331
    :goto_5
    :try_start_4
    iget-object v3, v3, Ler2;->i:Ly00;

    .line 332
    .line 333
    iget-boolean v3, v3, Ly00;->n:Z

    .line 334
    .line 335
    if-eqz v3, :cond_e

    .line 336
    .line 337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_d

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :cond_d
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    .line 353
    .line 354
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_e
    :goto_6
    invoke-virtual {v2}, Lol2;->g()Lsl2;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-interface {v7}, Lqz1;->getValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    move-object v13, v3

    .line 367
    check-cast v13, Lt10;

    .line 368
    .line 369
    move-object v3, v0

    .line 370
    new-instance v0, Lrd;

    .line 371
    .line 372
    const/4 v5, 0x0

    .line 373
    const/4 v6, 0x5

    .line 374
    invoke-direct/range {v0 .. v6}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 375
    .line 376
    .line 377
    iput-object v1, v8, Lll2;->q:Lw33;

    .line 378
    .line 379
    iput-object v11, v8, Lll2;->r:Lw33;

    .line 380
    .line 381
    iput v10, v8, Lll2;->u:I

    .line 382
    .line 383
    iget-object v3, v13, Lt10;->a:Lio2;

    .line 384
    .line 385
    invoke-static {v3, v4, v0, v8}, Lt10;->a(Lio2;Lsl2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-ne v0, v12, :cond_f

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_f
    :goto_7
    check-cast v0, Lzp3;

    .line 393
    .line 394
    if-nez v0, :cond_11

    .line 395
    .line 396
    invoke-interface {v7}, Lqz1;->getValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Lt10;

    .line 401
    .line 402
    invoke-virtual {v2}, Lol2;->g()Lsl2;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    new-instance v4, Ln;

    .line 407
    .line 408
    const/16 v5, 0x18

    .line 409
    .line 410
    invoke-direct {v4, v2, v11, v5}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 411
    .line 412
    .line 413
    iput-object v1, v8, Lll2;->q:Lw33;

    .line 414
    .line 415
    iput v9, v8, Lll2;->u:I

    .line 416
    .line 417
    iget-object v0, v0, Lt10;->a:Lio2;

    .line 418
    .line 419
    invoke-static {v0, v3, v4, v8}, Lt10;->a(Lio2;Lsl2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-ne v0, v12, :cond_10

    .line 424
    .line 425
    :goto_8
    return-object v12

    .line 426
    :cond_10
    :goto_9
    check-cast v0, Lzp3;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 427
    .line 428
    :cond_11
    return-object v0

    .line 429
    :goto_a
    iget-object v1, v1, Lw33;->n:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v1, Lk23;

    .line 432
    .line 433
    if-eqz v1, :cond_12

    .line 434
    .line 435
    :try_start_5
    invoke-static {v1}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 436
    .line 437
    .line 438
    goto :goto_b

    .line 439
    :catch_3
    move-exception v0

    .line 440
    throw v0

    .line 441
    :catch_4
    :cond_12
    :goto_b
    throw v0
.end method

.method public static final c(Lol2;Ldq3;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lml2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Lml2;

    .line 10
    .line 11
    iget v1, v0, Lml2;->t:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lml2;->t:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lml2;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lml2;-><init>(Lol2;Lfh0;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Lml2;->r:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Lml2;->t:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lml2;->q:Lsy;

    .line 39
    .line 40
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lsy;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p2, v0, Lml2;->q:Lsy;

    .line 59
    .line 60
    iput v3, v0, Lml2;->t:I

    .line 61
    .line 62
    iget-object p1, p1, Ldq3;->n:Lfz;

    .line 63
    .line 64
    invoke-interface {p1, p2}, Lfz;->W(Lez;)J

    .line 65
    .line 66
    .line 67
    sget-object p1, Lt64;->a:Lt64;

    .line 68
    .line 69
    sget-object v0, Lri0;->n:Lri0;

    .line 70
    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    move-object p1, p2

    .line 75
    :goto_1
    invoke-virtual {p0}, Lol2;->e()Lr51;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p2, Laq3;

    .line 80
    .line 81
    invoke-direct {p2, p1, p0, v2}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 82
    .line 83
    .line 84
    return-object p2
.end method

.method public static final d(Lol2;Lk23;Lvl2;Lvl2;Lfh0;)Ljava/lang/Object;
    .locals 22

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    instance-of v5, v4, Lnl2;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    move-object v5, v4

    .line 19
    check-cast v5, Lnl2;

    .line 20
    .line 21
    iget v6, v5, Lnl2;->v:I

    .line 22
    .line 23
    const/high16 v7, -0x80000000

    .line 24
    .line 25
    and-int v8, v6, v7

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    sub-int/2addr v6, v7

    .line 30
    iput v6, v5, Lnl2;->v:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v5, Lnl2;

    .line 34
    .line 35
    invoke-direct {v5, v1, v4}, Lnl2;-><init>(Lol2;Lfh0;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v4, v5, Lnl2;->t:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v6, Lri0;->n:Lri0;

    .line 41
    .line 42
    iget v7, v5, Lnl2;->v:I

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, 0x1

    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    if-eq v7, v10, :cond_2

    .line 51
    .line 52
    if-ne v7, v8, :cond_1

    .line 53
    .line 54
    iget-object v1, v5, Lnl2;->s:Ldh1;

    .line 55
    .line 56
    iget-object v2, v5, Lnl2;->r:Lvl2;

    .line 57
    .line 58
    iget-object v0, v5, Lnl2;->q:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v3, v0

    .line 61
    check-cast v3, Lvl2;

    .line 62
    .line 63
    :try_start_0
    invoke-static {v4}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    move-object/from16 p4, v11

    .line 67
    .line 68
    goto/16 :goto_10

    .line 69
    .line 70
    :catch_0
    move-exception v0

    .line 71
    goto/16 :goto_12

    .line 72
    .line 73
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v11

    .line 79
    :cond_2
    iget-object v0, v5, Lnl2;->r:Lvl2;

    .line 80
    .line 81
    iget-object v2, v5, Lnl2;->q:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lk23;

    .line 84
    .line 85
    invoke-static {v4}, Lgg4;->T(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v3, v0

    .line 89
    move-object v0, v2

    .line 90
    move-object/from16 p4, v11

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_3
    invoke-static {v4}, Lgg4;->T(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v1, Lol2;->b:Ler2;

    .line 98
    .line 99
    iget-object v4, v4, Ler2;->h:Ly00;

    .line 100
    .line 101
    iget-boolean v4, v4, Ly00;->o:Z

    .line 102
    .line 103
    if-nez v4, :cond_5

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    :try_start_1
    invoke-static {v0}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    .line 110
    :catch_1
    return-object v11

    .line 111
    :catch_2
    move-exception v0

    .line 112
    throw v0

    .line 113
    :cond_4
    move-object/from16 p4, v11

    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :cond_5
    iget-object v4, v1, Lol2;->e:Lqz1;

    .line 118
    .line 119
    invoke-interface {v4}, Lqz1;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lb10;

    .line 124
    .line 125
    iput-object v0, v5, Lnl2;->q:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v3, v5, Lnl2;->r:Lvl2;

    .line 128
    .line 129
    iput v10, v5, Lnl2;->v:I

    .line 130
    .line 131
    check-cast v4, Lco0;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget v4, v3, Lvl2;->a:I

    .line 137
    .line 138
    const/16 v7, 0x130

    .line 139
    .line 140
    if-ne v4, v7, :cond_8

    .line 141
    .line 142
    if-eqz v2, :cond_8

    .line 143
    .line 144
    iget-object v2, v2, Lvl2;->d:Lpl2;

    .line 145
    .line 146
    iget-object v4, v3, Lvl2;->d:Lpl2;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-object v2, v2, Lpl2;->a:Ljava/util/Map;

    .line 152
    .line 153
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Ljava/lang/Iterable;

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_6

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    check-cast v12, Ljava/util/Map$Entry;

    .line 179
    .line 180
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    check-cast v12, Ljava/util/Collection;

    .line 189
    .line 190
    invoke-static {v12}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    iget-object v2, v4, Lpl2;->a:Ljava/util/Map;

    .line 199
    .line 200
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_7

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Ljava/util/Map$Entry;

    .line 219
    .line 220
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Ljava/util/List;

    .line 231
    .line 232
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 233
    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v4}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_7
    new-instance v2, Lpl2;

    .line 250
    .line 251
    invoke-static {v7}, Loa2;->e0(Ljava/util/Map;)Ljava/util/Map;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-direct {v2, v4}, Lpl2;-><init>(Ljava/util/Map;)V

    .line 256
    .line 257
    .line 258
    new-instance v4, La10;

    .line 259
    .line 260
    iget v14, v3, Lvl2;->a:I

    .line 261
    .line 262
    iget-wide v12, v3, Lvl2;->b:J

    .line 263
    .line 264
    move-object/from16 p4, v11

    .line 265
    .line 266
    move-wide v15, v12

    .line 267
    iget-wide v11, v3, Lvl2;->c:J

    .line 268
    .line 269
    iget-object v7, v3, Lvl2;->f:Ljava/lang/Object;

    .line 270
    .line 271
    new-instance v13, Lvl2;

    .line 272
    .line 273
    const/16 v20, 0x0

    .line 274
    .line 275
    move-object/from16 v19, v2

    .line 276
    .line 277
    move-object/from16 v21, v7

    .line 278
    .line 279
    move-wide/from16 v17, v11

    .line 280
    .line 281
    invoke-direct/range {v13 .. v21}, Lvl2;-><init>(IJJLpl2;Ldq3;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-direct {v4, v13}, La10;-><init>(Lvl2;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_8
    move-object/from16 p4, v11

    .line 289
    .line 290
    const/16 v2, 0xc8

    .line 291
    .line 292
    if-gt v2, v4, :cond_9

    .line 293
    .line 294
    const/16 v2, 0x12c

    .line 295
    .line 296
    if-ge v4, v2, :cond_9

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_9
    sget-object v2, Lco0;->b:Ljava/util/Set;

    .line 300
    .line 301
    new-instance v7, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_a

    .line 311
    .line 312
    :goto_3
    new-instance v2, La10;

    .line 313
    .line 314
    invoke-direct {v2, v3}, La10;-><init>(Lvl2;)V

    .line 315
    .line 316
    .line 317
    :goto_4
    move-object v4, v2

    .line 318
    goto :goto_5

    .line 319
    :cond_a
    sget-object v2, La10;->b:La10;

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :goto_5
    if-ne v4, v6, :cond_b

    .line 323
    .line 324
    goto/16 :goto_11

    .line 325
    .line 326
    :cond_b
    :goto_6
    check-cast v4, La10;

    .line 327
    .line 328
    iget-object v2, v4, La10;->a:Lvl2;

    .line 329
    .line 330
    if-nez v2, :cond_c

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_c
    if-eqz v0, :cond_d

    .line 334
    .line 335
    iget-object v0, v0, Lk23;->n:Lou0;

    .line 336
    .line 337
    iget-object v4, v0, Lou0;->p:Lqu0;

    .line 338
    .line 339
    iget-object v7, v4, Lqu0;->u:Ljava/lang/Object;

    .line 340
    .line 341
    monitor-enter v7

    .line 342
    :try_start_2
    invoke-virtual {v0}, Lou0;->close()V

    .line 343
    .line 344
    .line 345
    iget-object v0, v0, Lou0;->n:Lnu0;

    .line 346
    .line 347
    iget-object v0, v0, Lnu0;->a:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v4, v0}, Lqu0;->j(Ljava/lang/String;)Lmu0;

    .line 350
    .line 351
    .line 352
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    monitor-exit v7

    .line 354
    if-eqz v0, :cond_f

    .line 355
    .line 356
    new-instance v4, Ldh1;

    .line 357
    .line 358
    invoke-direct {v4, v0}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :catchall_0
    move-exception v0

    .line 363
    monitor-exit v7

    .line 364
    throw v0

    .line 365
    :cond_d
    iget-object v0, v1, Lol2;->d:Lnv3;

    .line 366
    .line 367
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Ll23;

    .line 372
    .line 373
    if-eqz v0, :cond_f

    .line 374
    .line 375
    iget-object v4, v1, Lol2;->b:Ler2;

    .line 376
    .line 377
    iget-object v4, v4, Ler2;->e:Ljava/lang/String;

    .line 378
    .line 379
    if-nez v4, :cond_e

    .line 380
    .line 381
    iget-object v4, v1, Lol2;->a:Ljava/lang/String;

    .line 382
    .line 383
    :cond_e
    iget-object v0, v0, Ll23;->b:Lqu0;

    .line 384
    .line 385
    sget-object v7, Lg00;->q:Lg00;

    .line 386
    .line 387
    invoke-static {v4}, Lbx3;->o(Ljava/lang/String;)Lg00;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    const-string v7, "SHA-256"

    .line 392
    .line 393
    invoke-virtual {v4, v7}, Lg00;->b(Ljava/lang/String;)Lg00;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v4}, Lg00;->d()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v0, v4}, Lqu0;->j(Ljava/lang/String;)Lmu0;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    if-eqz v0, :cond_f

    .line 406
    .line 407
    new-instance v4, Ldh1;

    .line 408
    .line 409
    invoke-direct {v4, v0}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_f
    move-object/from16 v4, p4

    .line 414
    .line 415
    :goto_7
    if-nez v4, :cond_10

    .line 416
    .line 417
    :goto_8
    return-object p4

    .line 418
    :cond_10
    :try_start_3
    invoke-virtual {v1}, Lol2;->e()Lr51;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v7, v4, Ldh1;->n:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v7, Lmu0;

    .line 425
    .line 426
    invoke-virtual {v7, v9}, Lmu0;->c(I)Lbt2;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-virtual {v0, v7, v9}, Lr51;->R(Lbt2;Z)Lkn3;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    new-instance v7, Lc23;

    .line 438
    .line 439
    invoke-direct {v7, v0}, Lc23;-><init>(Lkn3;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 440
    .line 441
    .line 442
    :try_start_4
    invoke-static {v2, v7}, Lis0;->a0(Lvl2;Lc23;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 443
    .line 444
    .line 445
    :try_start_5
    invoke-virtual {v7}, Lc23;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 446
    .line 447
    .line 448
    move-object/from16 v0, p4

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :catchall_1
    move-exception v0

    .line 452
    goto :goto_a

    .line 453
    :catchall_2
    move-exception v0

    .line 454
    move-object v11, v0

    .line 455
    :try_start_6
    invoke-virtual {v7}, Lc23;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 456
    .line 457
    .line 458
    goto :goto_9

    .line 459
    :catchall_3
    move-exception v0

    .line 460
    :try_start_7
    invoke-static {v11, v0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 461
    .line 462
    .line 463
    :goto_9
    move-object v0, v11

    .line 464
    :goto_a
    if-nez v0, :cond_14

    .line 465
    .line 466
    iget-object v0, v2, Lvl2;->e:Ldq3;

    .line 467
    .line 468
    if-eqz v0, :cond_12

    .line 469
    .line 470
    invoke-virtual {v1}, Lol2;->e()Lr51;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    iget-object v7, v4, Ldh1;->n:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v7, Lmu0;

    .line 477
    .line 478
    invoke-virtual {v7, v10}, Lmu0;->c(I)Lbt2;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    iput-object v3, v5, Lnl2;->q:Ljava/lang/Object;

    .line 483
    .line 484
    iput-object v2, v5, Lnl2;->r:Lvl2;

    .line 485
    .line 486
    iput-object v4, v5, Lnl2;->s:Ldh1;

    .line 487
    .line 488
    iput v8, v5, Lnl2;->v:I

    .line 489
    .line 490
    iget-object v0, v0, Ldq3;->n:Lfz;

    .line 491
    .line 492
    invoke-virtual {v1, v7, v9}, Lr51;->R(Lbt2;Z)Lkn3;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    new-instance v5, Lc23;

    .line 500
    .line 501
    invoke-direct {v5, v1}, Lc23;-><init>(Lkn3;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 502
    .line 503
    .line 504
    :try_start_8
    invoke-interface {v0, v5}, Lfz;->W(Lez;)J

    .line 505
    .line 506
    .line 507
    move-result-wide v0

    .line 508
    new-instance v7, Ljava/lang/Long;

    .line 509
    .line 510
    invoke-direct {v7, v0, v1}, Ljava/lang/Long;-><init>(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 511
    .line 512
    .line 513
    :try_start_9
    invoke-virtual {v5}, Lc23;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 514
    .line 515
    .line 516
    move-object/from16 v0, p4

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :catchall_4
    move-exception v0

    .line 520
    goto :goto_e

    .line 521
    :goto_b
    move-object v1, v0

    .line 522
    goto :goto_c

    .line 523
    :catchall_5
    move-exception v0

    .line 524
    goto :goto_b

    .line 525
    :goto_c
    :try_start_a
    invoke-virtual {v5}, Lc23;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 526
    .line 527
    .line 528
    goto :goto_d

    .line 529
    :catchall_6
    move-exception v0

    .line 530
    :try_start_b
    invoke-static {v1, v0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 531
    .line 532
    .line 533
    :goto_d
    move-object v0, v1

    .line 534
    :goto_e
    if-nez v0, :cond_11

    .line 535
    .line 536
    sget-object v0, Lt64;->a:Lt64;

    .line 537
    .line 538
    if-ne v0, v6, :cond_12

    .line 539
    .line 540
    goto :goto_11

    .line 541
    :cond_11
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 542
    :goto_f
    move-object v1, v4

    .line 543
    goto :goto_12

    .line 544
    :catch_3
    move-exception v0

    .line 545
    goto :goto_f

    .line 546
    :cond_12
    move-object v1, v4

    .line 547
    :goto_10
    :try_start_c
    iget-object v0, v1, Ldh1;->n:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Lmu0;

    .line 550
    .line 551
    iget-object v4, v0, Lmu0;->d:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v4, Lqu0;

    .line 554
    .line 555
    iget-object v5, v4, Lqu0;->u:Ljava/lang/Object;

    .line 556
    .line 557
    monitor-enter v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 558
    :try_start_d
    invoke-virtual {v0, v10}, Lmu0;->b(Z)V

    .line 559
    .line 560
    .line 561
    iget-object v0, v0, Lmu0;->b:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v0, Lnu0;

    .line 564
    .line 565
    iget-object v0, v0, Lnu0;->a:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v4, v0}, Lqu0;->r(Ljava/lang/String;)Lou0;

    .line 568
    .line 569
    .line 570
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 571
    :try_start_e
    monitor-exit v5

    .line 572
    if-eqz v0, :cond_13

    .line 573
    .line 574
    new-instance v4, Lk23;

    .line 575
    .line 576
    invoke-direct {v4, v0}, Lk23;-><init>(Lou0;)V

    .line 577
    .line 578
    .line 579
    move-object v6, v4

    .line 580
    goto :goto_11

    .line 581
    :cond_13
    move-object/from16 v6, p4

    .line 582
    .line 583
    :goto_11
    return-object v6

    .line 584
    :catchall_7
    move-exception v0

    .line 585
    monitor-exit v5

    .line 586
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 587
    :cond_14
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 588
    :goto_12
    :try_start_10
    iget-object v1, v1, Ldh1;->n:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v1, Lmu0;

    .line 591
    .line 592
    invoke-virtual {v1, v9}, Lmu0;->b(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 593
    .line 594
    .line 595
    :catch_4
    iget-object v1, v3, Lvl2;->e:Ldq3;

    .line 596
    .line 597
    if-eqz v1, :cond_15

    .line 598
    .line 599
    :try_start_11
    invoke-static {v1}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 600
    .line 601
    .line 602
    goto :goto_13

    .line 603
    :catch_5
    move-exception v0

    .line 604
    throw v0

    .line 605
    :catch_6
    :cond_15
    :goto_13
    iget-object v1, v2, Lvl2;->e:Ldq3;

    .line 606
    .line 607
    if-eqz v1, :cond_16

    .line 608
    .line 609
    :try_start_12
    invoke-static {v1}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 610
    .line 611
    .line 612
    goto :goto_14

    .line 613
    :catch_7
    move-exception v0

    .line 614
    throw v0

    .line 615
    :catch_8
    :cond_16
    :goto_14
    throw v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "text/plain"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v1, v2}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :goto_0
    move-object v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v1, 0x23

    .line 22
    .line 23
    invoke-static {p0, v1}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v1, 0x3f

    .line 28
    .line 29
    invoke-static {p0, v1}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v1, 0x2f

    .line 34
    .line 35
    invoke-static {p0, v1, p0}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/16 v1, 0x2e

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-static {p0, v1, v2}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Lcd2;->a:Lca2;

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lca2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    if-eqz p1, :cond_5

    .line 85
    .line 86
    const/16 p0, 0x3b

    .line 87
    .line 88
    invoke-static {p1, p0}, Lzs3;->U0(Ljava/lang/String;C)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_5
    return-object v0
.end method

.method public static h(Lvl2;)V
    .locals 2

    .line 1
    iget p0, p0, Lvl2;->a:I

    .line 2
    .line 3
    const/16 v0, 0xc8

    .line 4
    .line 5
    if-gt v0, p0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x130

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Lv00;

    .line 18
    .line 19
    const-string v1, "HTTP "

    .line 20
    .line 21
    invoke-static {p0, v1}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-direct {v0, p0, v1}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method


# virtual methods
.method public final a(Lv01;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lol2;->g:Lqz1;

    .line 2
    .line 3
    invoke-interface {v0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln64;

    .line 8
    .line 9
    iget-object v1, p0, Lol2;->b:Ler2;

    .line 10
    .line 11
    iget-object v1, v1, Ler2;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lol2;->b(Lol2;Ldh0;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final e()Lr51;
    .locals 1

    .line 1
    iget-object v0, p0, Lol2;->d:Lnv3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll23;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Ll23;->a:Lr51;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0

    .line 17
    :cond_1
    :goto_0
    iget-object p0, p0, Lol2;->b:Ler2;

    .line 18
    .line 19
    iget-object p0, p0, Ler2;->f:Lr51;

    .line 20
    .line 21
    return-object p0
.end method

.method public final g()Lsl2;
    .locals 5

    .line 1
    sget-object v0, Lko1;->b:Li3;

    .line 2
    .line 3
    iget-object v1, p0, Lol2;->b:Ler2;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lpl2;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lyl0;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lyl0;-><init>(Lpl2;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Ler2;->h:Ly00;

    .line 20
    .line 21
    iget-boolean v3, v0, Ly00;->n:Z

    .line 22
    .line 23
    iget-object v4, v1, Ler2;->i:Ly00;

    .line 24
    .line 25
    iget-boolean v4, v4, Ly00;->n:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lol2;->f:Ltq1;

    .line 30
    .line 31
    iget-object v4, v4, Ltq1;->n:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Lqe0;

    .line 34
    .line 35
    invoke-interface {v4}, Lqe0;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, 0x0

    .line 44
    :goto_0
    if-nez v4, :cond_1

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v0, "only-if-cached, max-stale=2147483647"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lyl0;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-eqz v4, :cond_3

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    iget-boolean v0, v0, Ly00;->o:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string v0, "no-cache"

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lyl0;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "no-cache, no-store"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lyl0;->d(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    if-nez v4, :cond_4

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    const-string v0, "no-cache, only-if-cached"

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Lyl0;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    new-instance v0, Lsl2;

    .line 84
    .line 85
    sget-object v3, Lko1;->a:Li3;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    new-instance v4, Lpl2;

    .line 94
    .line 95
    iget-object v2, v2, Lyl0;->a:Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-static {v2}, Loa2;->e0(Ljava/util/Map;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v4, v2}, Lpl2;-><init>(Ljava/util/Map;)V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lko1;->c:Li3;

    .line 105
    .line 106
    invoke-static {v1, v2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    iget-object v1, v1, Ler2;->j:Lh41;

    .line 113
    .line 114
    iget-object p0, p0, Lol2;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v0, p0, v3, v4, v1}, Lsl2;-><init>(Ljava/lang/String;Ljava/lang/String;Lpl2;Lh41;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    invoke-static {}, Lmk0;->b()V

    .line 121
    .line 122
    .line 123
    const/4 p0, 0x0

    .line 124
    return-object p0
.end method

.method public final i(Lk23;)Lg51;
    .locals 3

    .line 1
    iget-object v0, p1, Lk23;->n:Lou0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lou0;->o:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lou0;->n:Lnu0;

    .line 8
    .line 9
    iget-object v0, v0, Lnu0;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lbt2;

    .line 17
    .line 18
    invoke-virtual {p0}, Lol2;->e()Lr51;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lol2;->b:Ler2;

    .line 23
    .line 24
    iget-object v2, v2, Ler2;->e:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lol2;->a:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    const/16 p0, 0x10

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1, p0}, Lon4;->d(Lbt2;Lr51;Ljava/lang/String;Lk23;I)Lg51;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "snapshot is closed"

    .line 38
    .line 39
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final j(Lk23;)Lvl2;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lol2;->e()Lr51;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object p1, p1, Lk23;->n:Lou0;

    .line 7
    .line 8
    iget-boolean v1, p1, Lou0;->o:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lou0;->n:Lnu0;

    .line 13
    .line 14
    iget-object p1, p1, Lnu0;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lbt2;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lr51;->V(Lbt2;)Lyp3;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p1, Ld23;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ld23;-><init>(Lyp3;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-static {p1}, Lis0;->S(Ld23;)Lvl2;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {p1}, Ld23;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    move-object p1, v0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    invoke-virtual {p1}, Ld23;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_2
    move-exception p1

    .line 52
    :try_start_4
    invoke-static {p0, p1}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    move-object p1, p0

    .line 56
    move-object p0, v0

    .line 57
    :goto_1
    if-nez p1, :cond_0

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_0
    throw p1

    .line 61
    :cond_1
    const-string p0, "snapshot is closed"

    .line 62
    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 69
    :catch_0
    return-object v0
.end method
