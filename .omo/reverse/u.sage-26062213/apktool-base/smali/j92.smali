.class public final Lj92;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public A:I

.field public final synthetic B:Lu/sage/MainActivity;

.field public r:Lu/sage/MainActivity;

.field public s:Ljava/util/Collection;

.field public t:Ljava/util/Iterator;

.field public u:Ly84;

.field public v:Ljava/util/Collection;

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lu/sage/MainActivity;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj92;->B:Lu/sage/MainActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lj92;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lj92;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lj92;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 0

    .line 1
    new-instance p2, Lj92;

    .line 2
    .line 3
    iget-object p0, p0, Lj92;->B:Lu/sage/MainActivity;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lj92;-><init>(Lu/sage/MainActivity;Ldh0;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj92;->A:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Lj92;->B:Lu/sage/MainActivity;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Lri0;->n:Lri0;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-eq v1, v4, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, Lj92;->z:Z

    .line 22
    .line 23
    iget v9, v0, Lj92;->x:I

    .line 24
    .line 25
    iget v10, v0, Lj92;->w:I

    .line 26
    .line 27
    iget-object v11, v0, Lj92;->v:Ljava/util/Collection;

    .line 28
    .line 29
    check-cast v11, Ljava/util/Collection;

    .line 30
    .line 31
    iget-object v12, v0, Lj92;->u:Ly84;

    .line 32
    .line 33
    iget-object v13, v0, Lj92;->t:Ljava/util/Iterator;

    .line 34
    .line 35
    iget-object v14, v0, Lj92;->s:Ljava/util/Collection;

    .line 36
    .line 37
    check-cast v14, Ljava/util/Collection;

    .line 38
    .line 39
    iget-object v15, v0, Lj92;->r:Lu/sage/MainActivity;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v16, v7

    .line 45
    .line 46
    move v4, v9

    .line 47
    move-object v9, v15

    .line 48
    move-object v15, v14

    .line 49
    move v14, v1

    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    :goto_0
    move v3, v10

    .line 53
    move-object v10, v13

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v7

    .line 62
    :cond_1
    iget v1, v0, Lj92;->y:I

    .line 63
    .line 64
    iget v9, v0, Lj92;->x:I

    .line 65
    .line 66
    iget v10, v0, Lj92;->w:I

    .line 67
    .line 68
    iget-object v11, v0, Lj92;->v:Ljava/util/Collection;

    .line 69
    .line 70
    check-cast v11, Ljava/util/Collection;

    .line 71
    .line 72
    iget-object v12, v0, Lj92;->u:Ly84;

    .line 73
    .line 74
    iget-object v13, v0, Lj92;->t:Ljava/util/Iterator;

    .line 75
    .line 76
    iget-object v14, v0, Lj92;->s:Ljava/util/Collection;

    .line 77
    .line 78
    check-cast v14, Ljava/util/Collection;

    .line 79
    .line 80
    iget-object v15, v0, Lj92;->r:Lu/sage/MainActivity;

    .line 81
    .line 82
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v17, v14

    .line 86
    .line 87
    move-object/from16 v14, p1

    .line 88
    .line 89
    move-object/from16 p1, v15

    .line 90
    .line 91
    move-object/from16 v15, v17

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    sget-object v9, Ly84;->x:Lt11;

    .line 100
    .line 101
    invoke-static {v9, v3}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    new-instance v10, Lg1;

    .line 109
    .line 110
    invoke-direct {v10, v6, v9}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v9, v5

    .line 114
    move v11, v6

    .line 115
    move v12, v11

    .line 116
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_a

    .line 121
    .line 122
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ly84;

    .line 127
    .line 128
    sget v14, Lu/sage/MainActivity;->C:I

    .line 129
    .line 130
    invoke-virtual {v9, v13}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    iput-object v9, v0, Lj92;->r:Lu/sage/MainActivity;

    .line 135
    .line 136
    move-object v15, v1

    .line 137
    check-cast v15, Ljava/util/Collection;

    .line 138
    .line 139
    iput-object v15, v0, Lj92;->s:Ljava/util/Collection;

    .line 140
    .line 141
    iput-object v10, v0, Lj92;->t:Ljava/util/Iterator;

    .line 142
    .line 143
    iput-object v13, v0, Lj92;->u:Ly84;

    .line 144
    .line 145
    iput-object v15, v0, Lj92;->v:Ljava/util/Collection;

    .line 146
    .line 147
    iput v11, v0, Lj92;->w:I

    .line 148
    .line 149
    iput v12, v0, Lj92;->x:I

    .line 150
    .line 151
    iput v6, v0, Lj92;->y:I

    .line 152
    .line 153
    iput v4, v0, Lj92;->A:I

    .line 154
    .line 155
    iget-object v14, v14, Lpt;->e:Lnv3;

    .line 156
    .line 157
    invoke-virtual {v14}, Lnv3;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    check-cast v14, La81;

    .line 162
    .line 163
    invoke-static {v14, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    if-ne v14, v8, :cond_3

    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_3
    move-object v15, v1

    .line 172
    move-object/from16 p1, v9

    .line 173
    .line 174
    move v9, v12

    .line 175
    move-object v12, v13

    .line 176
    move v1, v6

    .line 177
    move-object v13, v10

    .line 178
    move v10, v11

    .line 179
    move-object v11, v15

    .line 180
    :goto_2
    check-cast v14, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    move-object/from16 v16, v7

    .line 193
    .line 194
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_8

    .line 199
    .line 200
    const/4 v3, 0x4

    .line 201
    if-eq v7, v4, :cond_7

    .line 202
    .line 203
    if-eq v7, v2, :cond_6

    .line 204
    .line 205
    const/4 v4, 0x3

    .line 206
    if-eq v7, v4, :cond_5

    .line 207
    .line 208
    if-ne v7, v3, :cond_4

    .line 209
    .line 210
    new-instance v3, Ljf;

    .line 211
    .line 212
    move-object/from16 v7, p1

    .line 213
    .line 214
    invoke-direct {v3, v7, v4}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 215
    .line 216
    .line 217
    :goto_3
    const/4 v4, 0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_4
    invoke-static {}, Lp61;->x()V

    .line 220
    .line 221
    .line 222
    return-object v16

    .line 223
    :cond_5
    move-object/from16 v7, p1

    .line 224
    .line 225
    new-instance v3, Ljf;

    .line 226
    .line 227
    invoke-direct {v3, v7, v2}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    move-object/from16 v7, p1

    .line 232
    .line 233
    new-instance v3, Ljf;

    .line 234
    .line 235
    invoke-direct {v3, v7, v6}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_7
    move-object/from16 v7, p1

    .line 240
    .line 241
    new-instance v4, Ljf;

    .line 242
    .line 243
    invoke-direct {v4, v7, v3}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 244
    .line 245
    .line 246
    move-object v3, v4

    .line 247
    goto :goto_3

    .line 248
    :cond_8
    move-object/from16 v7, p1

    .line 249
    .line 250
    new-instance v3, Ljf;

    .line 251
    .line 252
    const/4 v4, 0x1

    .line 253
    invoke-direct {v3, v7, v4}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 254
    .line 255
    .line 256
    :goto_4
    iput-object v7, v0, Lj92;->r:Lu/sage/MainActivity;

    .line 257
    .line 258
    move-object v4, v15

    .line 259
    check-cast v4, Ljava/util/Collection;

    .line 260
    .line 261
    iput-object v4, v0, Lj92;->s:Ljava/util/Collection;

    .line 262
    .line 263
    iput-object v13, v0, Lj92;->t:Ljava/util/Iterator;

    .line 264
    .line 265
    iput-object v12, v0, Lj92;->u:Ly84;

    .line 266
    .line 267
    move-object v4, v11

    .line 268
    check-cast v4, Ljava/util/Collection;

    .line 269
    .line 270
    iput-object v4, v0, Lj92;->v:Ljava/util/Collection;

    .line 271
    .line 272
    iput v10, v0, Lj92;->w:I

    .line 273
    .line 274
    iput v9, v0, Lj92;->x:I

    .line 275
    .line 276
    iput v1, v0, Lj92;->y:I

    .line 277
    .line 278
    iput-boolean v14, v0, Lj92;->z:Z

    .line 279
    .line 280
    iput v2, v0, Lj92;->A:I

    .line 281
    .line 282
    invoke-virtual {v3, v0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    if-ne v1, v8, :cond_9

    .line 287
    .line 288
    :goto_5
    return-object v8

    .line 289
    :cond_9
    move v4, v9

    .line 290
    move-object v9, v7

    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :goto_6
    check-cast v1, Lw3;

    .line 294
    .line 295
    sget-object v7, Lzi3;->a:Lwr3;

    .line 296
    .line 297
    invoke-virtual {v1}, Lw3;->l()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance v7, Lyi3;

    .line 305
    .line 306
    invoke-direct {v7, v12, v14, v1}, Lyi3;-><init>(Ly84;ZZ)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move v11, v3

    .line 313
    move v12, v4

    .line 314
    move-object v1, v15

    .line 315
    move-object/from16 v7, v16

    .line 316
    .line 317
    const/16 v3, 0xa

    .line 318
    .line 319
    const/4 v4, 0x1

    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_a
    move-object/from16 v16, v7

    .line 323
    .line 324
    check-cast v1, Ljava/util/List;

    .line 325
    .line 326
    sget-object v0, Lzi3;->a:Lwr3;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    sget-object v0, Lzi3;->c:Lqh3;

    .line 332
    .line 333
    invoke-static {v1, v0}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    .line 338
    .line 339
    const/16 v3, 0xa

    .line 340
    .line 341
    invoke-static {v0, v3}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_b

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Lyi3;

    .line 363
    .line 364
    iget-object v3, v3, Lyi3;->a:Ly84;

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_b
    sget-object v0, Lzi3;->a:Lwr3;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    move-object/from16 v3, v16

    .line 376
    .line 377
    invoke-virtual {v0, v3, v2}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    :cond_c
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_d

    .line 394
    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    move-object v4, v3

    .line 400
    check-cast v4, Lyi3;

    .line 401
    .line 402
    iget-boolean v4, v4, Lyi3;->b:Z

    .line 403
    .line 404
    if-eqz v4, :cond_c

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    .line 411
    .line 412
    const/16 v3, 0xa

    .line 413
    .line 414
    invoke-static {v0, v3}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    move v3, v6

    .line 426
    :goto_9
    if-ge v3, v1, :cond_e

    .line 427
    .line 428
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    add-int/lit8 v3, v3, 0x1

    .line 433
    .line 434
    check-cast v4, Lyi3;

    .line 435
    .line 436
    iget-object v4, v4, Lyi3;->a:Ly84;

    .line 437
    .line 438
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_e
    invoke-virtual {v5}, Lu/sage/MainActivity;->i()Ln8;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    new-instance v11, Lt3;

    .line 447
    .line 448
    const/4 v1, 0x5

    .line 449
    invoke-direct {v11, v1}, Lt3;-><init>(I)V

    .line 450
    .line 451
    .line 452
    const/16 v12, 0x1e

    .line 453
    .line 454
    const-string v8, ","

    .line 455
    .line 456
    const/4 v9, 0x0

    .line 457
    const/4 v10, 0x0

    .line 458
    invoke-static/range {v7 .. v12}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-nez v3, :cond_f

    .line 467
    .line 468
    const-string v1, "none"

    .line 469
    .line 470
    :cond_f
    const-string v3, "active_services"

    .line 471
    .line 472
    invoke-virtual {v0, v3, v1}, Ln8;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {v5}, Lu/sage/MainActivity;->i()Ln8;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const-string v3, "is_onboarding"

    .line 484
    .line 485
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-virtual {v1, v3, v4}, Ln8;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    if-eqz v0, :cond_10

    .line 493
    .line 494
    invoke-virtual {v5}, Lu/sage/MainActivity;->i()Ln8;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    sget-object v1, Lez3;->a:Lra3;

    .line 499
    .line 500
    new-array v3, v6, [Ljava/lang/Object;

    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    const-string v1, "onboarding_started"

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    invoke-virtual {v0, v1, v3}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 519
    .line 520
    .line 521
    :cond_10
    sget-object v0, Lez3;->a:Lra3;

    .line 522
    .line 523
    new-instance v1, Ljava/util/ArrayList;

    .line 524
    .line 525
    const/16 v3, 0xa

    .line 526
    .line 527
    invoke-static {v2, v3}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    move v4, v6

    .line 539
    :goto_a
    if-ge v4, v3, :cond_11

    .line 540
    .line 541
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    add-int/lit8 v4, v4, 0x1

    .line 546
    .line 547
    check-cast v7, Ly84;

    .line 548
    .line 549
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_a

    .line 557
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    new-array v1, v6, [Ljava/lang/Object;

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    iget-object v0, v5, Lu/sage/MainActivity;->t:Lwr3;

    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    const/4 v3, 0x0

    .line 574
    invoke-virtual {v0, v3, v2}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    invoke-static {v2}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    check-cast v0, Ly84;

    .line 582
    .line 583
    invoke-static {v0}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    sget-object v1, Lez3;->a:Lra3;

    .line 588
    .line 589
    new-array v2, v6, [Ljava/lang/Object;

    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    iput-object v0, v5, Lu/sage/MainActivity;->B:Ljava/lang/String;

    .line 598
    .line 599
    sget-object v0, Lt64;->a:Lt64;

    .line 600
    .line 601
    return-object v0
.end method
