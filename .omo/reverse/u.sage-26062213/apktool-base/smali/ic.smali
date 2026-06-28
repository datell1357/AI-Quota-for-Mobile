.class public final Lic;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li95;La13;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lic;->a:Z

    .line 10
    .line 11
    iget-object v3, v1, Li95;->a:Lb95;

    .line 12
    .line 13
    iget-object v4, v1, Li95;->b:Lz85;

    .line 14
    .line 15
    iget-object v3, v3, Lb95;->a:Lpp1;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lz85;->A()Lz85;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v4}, Lrn4;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :cond_0
    invoke-virtual {v4}, Lz85;->t()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, v0, Lic;->b:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v4}, Lz85;->u()Lzm4;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v0, Lic;->c:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lz85;->x()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v5, 0x0

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    move-object v3, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v4}, Lz85;->y()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    instance-of v6, v3, Lnp1;

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    instance-of v6, v3, Ljava/util/SortedSet;

    .line 73
    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    move-object v6, v3

    .line 77
    check-cast v6, Lnp1;

    .line 78
    .line 79
    invoke-virtual {v6}, Ldp1;->g()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    array-length v6, v3

    .line 91
    invoke-static {v6, v3}, Lnp1;->k(I[Ljava/lang/Object;)Lnp1;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    sget-object v3, Lf53;->v:[Ljava/lang/Object;

    .line 96
    .line 97
    :goto_1
    invoke-virtual {v4}, Lz85;->x()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget-object v1, v1, Li95;->a:Lb95;

    .line 102
    .line 103
    const/4 v6, 0x3

    .line 104
    const/4 v7, 0x0

    .line 105
    if-lez v3, :cond_c

    .line 106
    .line 107
    invoke-virtual {v4}, Lz85;->y()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    sget-object v3, Le53;->t:Le53;

    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_4
    new-instance v8, Lhb;

    .line 122
    .line 123
    const/4 v9, 0x4

    .line 124
    invoke-direct {v8, v9}, Lhb;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_b

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    check-cast v10, Ls85;

    .line 142
    .line 143
    invoke-virtual {v10}, Ls85;->H()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    add-int/lit8 v12, v11, -0x1

    .line 148
    .line 149
    if-eqz v11, :cond_a

    .line 150
    .line 151
    if-eqz v12, :cond_9

    .line 152
    .line 153
    if-eq v12, v2, :cond_8

    .line 154
    .line 155
    const/4 v11, 0x2

    .line 156
    if-eq v12, v11, :cond_7

    .line 157
    .line 158
    if-eq v12, v6, :cond_6

    .line 159
    .line 160
    if-ne v12, v9, :cond_5

    .line 161
    .line 162
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v10}, Ls85;->y()Lzm4;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Lzm4;->l()[B

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v8, v11, v10}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v1, "Could not serialize Flag for override: "

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v5

    .line 196
    :cond_6
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-virtual {v10}, Ls85;->x()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v8, v11, v10}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-virtual {v10}, Ls85;->w()D

    .line 213
    .line 214
    .line 215
    move-result-wide v12

    .line 216
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v8, v11, v10}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v10}, Ls85;->v()Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-virtual {v8, v11, v10}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {v10}, Ls85;->t()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v10}, Ls85;->u()J

    .line 245
    .line 246
    .line 247
    move-result-wide v12

    .line 248
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-virtual {v8, v11, v10}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_a
    throw v5

    .line 257
    :cond_b
    invoke-virtual {v8, v7}, Lhb;->b(Z)Le53;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    :goto_3
    invoke-virtual {v3}, Le53;->isEmpty()Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-eqz v8, :cond_d

    .line 266
    .line 267
    :cond_c
    move/from16 p1, v6

    .line 268
    .line 269
    goto/16 :goto_12

    .line 270
    .line 271
    :cond_d
    new-instance v8, Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v1, Lb95;->a:Lpp1;

    .line 277
    .line 278
    new-instance v3, Lop1;

    .line 279
    .line 280
    invoke-direct {v3}, Lop1;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ldp1;->h()Ly64;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    :goto_4
    move-object v9, v1

    .line 288
    check-cast v9, Lhp1;

    .line 289
    .line 290
    invoke-virtual {v9}, Lhp1;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    const-string v11, ": "

    .line 295
    .line 296
    if-eqz v10, :cond_16

    .line 297
    .line 298
    invoke-virtual {v9}, Lhp1;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    check-cast v9, La95;

    .line 303
    .line 304
    iget-object v10, v9, La95;->o:Ljava/lang/String;

    .line 305
    .line 306
    iget-wide v12, v9, La95;->n:J

    .line 307
    .line 308
    if-eqz v10, :cond_e

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_e
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    :goto_5
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    if-nez v10, :cond_f

    .line 320
    .line 321
    invoke-virtual {v3, v9}, Lcp1;->a(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_f
    instance-of v14, v10, Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v14, :cond_10

    .line 328
    .line 329
    new-instance v14, La95;

    .line 330
    .line 331
    iget-wide v11, v9, La95;->n:J

    .line 332
    .line 333
    iget-object v9, v9, La95;->o:Ljava/lang/String;

    .line 334
    .line 335
    const/16 v18, 0x4

    .line 336
    .line 337
    const-wide/16 v19, 0x0

    .line 338
    .line 339
    move-object/from16 v17, v9

    .line 340
    .line 341
    move-object/from16 v21, v10

    .line 342
    .line 343
    move-wide v15, v11

    .line 344
    invoke-direct/range {v14 .. v21}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v14}, Lcp1;->a(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_10
    instance-of v14, v10, [B

    .line 352
    .line 353
    if-eqz v14, :cond_11

    .line 354
    .line 355
    new-instance v14, La95;

    .line 356
    .line 357
    iget-wide v11, v9, La95;->n:J

    .line 358
    .line 359
    iget-object v9, v9, La95;->o:Ljava/lang/String;

    .line 360
    .line 361
    const/16 v18, 0x5

    .line 362
    .line 363
    const-wide/16 v19, 0x0

    .line 364
    .line 365
    move-object/from16 v17, v9

    .line 366
    .line 367
    move-object/from16 v21, v10

    .line 368
    .line 369
    move-wide v15, v11

    .line 370
    invoke-direct/range {v14 .. v21}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v14}, Lcp1;->a(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_11
    instance-of v14, v10, Ljava/lang/Boolean;

    .line 378
    .line 379
    if-eqz v14, :cond_12

    .line 380
    .line 381
    check-cast v10, Ljava/lang/Boolean;

    .line 382
    .line 383
    new-instance v11, La95;

    .line 384
    .line 385
    iget-wide v12, v9, La95;->n:J

    .line 386
    .line 387
    iget-object v14, v9, La95;->o:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 390
    .line 391
    .line 392
    move-result v15

    .line 393
    const-wide/16 v16, 0x0

    .line 394
    .line 395
    const/16 v18, 0x0

    .line 396
    .line 397
    invoke-direct/range {v11 .. v18}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v11}, Lcp1;->a(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_12
    instance-of v14, v10, Ljava/lang/Long;

    .line 405
    .line 406
    if-eqz v14, :cond_13

    .line 407
    .line 408
    new-instance v15, La95;

    .line 409
    .line 410
    iget-wide v11, v9, La95;->n:J

    .line 411
    .line 412
    iget-object v9, v9, La95;->o:Ljava/lang/String;

    .line 413
    .line 414
    check-cast v10, Ljava/lang/Long;

    .line 415
    .line 416
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 417
    .line 418
    .line 419
    move-result-wide v20

    .line 420
    const/16 v22, 0x0

    .line 421
    .line 422
    const/16 v19, 0x2

    .line 423
    .line 424
    move-object/from16 v18, v9

    .line 425
    .line 426
    move-wide/from16 v16, v11

    .line 427
    .line 428
    invoke-direct/range {v15 .. v22}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v15}, Lcp1;->a(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_13
    instance-of v14, v10, Ljava/lang/Double;

    .line 437
    .line 438
    if-eqz v14, :cond_14

    .line 439
    .line 440
    check-cast v10, Ljava/lang/Double;

    .line 441
    .line 442
    new-instance v11, La95;

    .line 443
    .line 444
    iget-wide v12, v9, La95;->n:J

    .line 445
    .line 446
    iget-object v14, v9, La95;->o:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 449
    .line 450
    .line 451
    move-result-wide v9

    .line 452
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 453
    .line 454
    .line 455
    move-result-wide v16

    .line 456
    const/16 v18, 0x0

    .line 457
    .line 458
    const/4 v15, 0x3

    .line 459
    invoke-direct/range {v11 .. v18}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v11}, Lcp1;->a(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 468
    .line 469
    iget-object v1, v9, La95;->o:Ljava/lang/String;

    .line 470
    .line 471
    if-eqz v1, :cond_15

    .line 472
    .line 473
    goto :goto_6

    .line 474
    :cond_15
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    :goto_6
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    add-int/lit8 v3, v3, 0x2e

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    add-int/2addr v3, v4

    .line 499
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    .line 501
    .line 502
    const-string v3, "Cannot serialize override for existing flag "

    .line 503
    .line 504
    invoke-static {v5, v3, v1, v11, v2}, Lxw1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v0

    .line 512
    :cond_16
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v9

    .line 524
    if-eqz v9, :cond_27

    .line 525
    .line 526
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    check-cast v9, Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v10

    .line 536
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    const/16 v13, 0x13

    .line 541
    .line 542
    if-gt v12, v13, :cond_20

    .line 543
    .line 544
    if-nez v12, :cond_17

    .line 545
    .line 546
    move-object/from16 v20, v5

    .line 547
    .line 548
    move/from16 p1, v6

    .line 549
    .line 550
    :goto_8
    const-wide/16 v17, 0x0

    .line 551
    .line 552
    const-wide/16 v23, 0x0

    .line 553
    .line 554
    goto/16 :goto_f

    .line 555
    .line 556
    :cond_17
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    .line 557
    .line 558
    .line 559
    move-result v13

    .line 560
    add-int/lit8 v13, v13, -0x30

    .line 561
    .line 562
    move-object/from16 v20, v5

    .line 563
    .line 564
    move/from16 p1, v6

    .line 565
    .line 566
    int-to-long v5, v13

    .line 567
    const-wide/16 v16, 0x1

    .line 568
    .line 569
    cmp-long v13, v5, v16

    .line 570
    .line 571
    if-ltz v13, :cond_1f

    .line 572
    .line 573
    const-wide/16 v16, 0x9

    .line 574
    .line 575
    cmp-long v13, v5, v16

    .line 576
    .line 577
    if-lez v13, :cond_18

    .line 578
    .line 579
    goto :goto_8

    .line 580
    :cond_18
    move v13, v2

    .line 581
    :goto_9
    if-ge v13, v12, :cond_1d

    .line 582
    .line 583
    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    .line 584
    .line 585
    .line 586
    move-result v16

    .line 587
    add-int/lit8 v2, v16, -0x30

    .line 588
    .line 589
    if-gez v2, :cond_19

    .line 590
    .line 591
    const/16 v16, 0x1

    .line 592
    .line 593
    :goto_a
    const-wide/16 v17, 0x0

    .line 594
    .line 595
    goto :goto_b

    .line 596
    :cond_19
    move/from16 v16, v7

    .line 597
    .line 598
    goto :goto_a

    .line 599
    :goto_b
    const/16 v14, 0x9

    .line 600
    .line 601
    if-le v2, v14, :cond_1a

    .line 602
    .line 603
    const/4 v14, 0x1

    .line 604
    goto :goto_c

    .line 605
    :cond_1a
    move v14, v7

    .line 606
    :goto_c
    or-int v14, v16, v14

    .line 607
    .line 608
    if-eqz v14, :cond_1c

    .line 609
    .line 610
    :cond_1b
    :goto_d
    move-wide/from16 v23, v17

    .line 611
    .line 612
    goto :goto_f

    .line 613
    :cond_1c
    const-wide/16 v14, 0xa

    .line 614
    .line 615
    mul-long/2addr v5, v14

    .line 616
    int-to-long v14, v2

    .line 617
    add-long/2addr v5, v14

    .line 618
    add-int/lit8 v13, v13, 0x1

    .line 619
    .line 620
    const/4 v2, 0x1

    .line 621
    goto :goto_9

    .line 622
    :cond_1d
    const-wide/16 v17, 0x0

    .line 623
    .line 624
    cmp-long v2, v5, v17

    .line 625
    .line 626
    if-ltz v2, :cond_1b

    .line 627
    .line 628
    const-wide v12, 0x1fffffffffffffffL

    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    cmp-long v2, v5, v12

    .line 634
    .line 635
    if-lez v2, :cond_1e

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_1e
    move-wide/from16 v23, v5

    .line 639
    .line 640
    goto :goto_f

    .line 641
    :cond_1f
    :goto_e
    const-wide/16 v17, 0x0

    .line 642
    .line 643
    goto :goto_d

    .line 644
    :cond_20
    move-object/from16 v20, v5

    .line 645
    .line 646
    move/from16 p1, v6

    .line 647
    .line 648
    goto :goto_e

    .line 649
    :goto_f
    cmp-long v2, v23, v17

    .line 650
    .line 651
    if-nez v2, :cond_21

    .line 652
    .line 653
    move-object/from16 v25, v9

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_21
    move-object/from16 v25, v20

    .line 657
    .line 658
    :goto_10
    instance-of v2, v10, Ljava/lang/String;

    .line 659
    .line 660
    if-eqz v2, :cond_22

    .line 661
    .line 662
    new-instance v12, La95;

    .line 663
    .line 664
    const/16 v16, 0x4

    .line 665
    .line 666
    const-wide/16 v17, 0x0

    .line 667
    .line 668
    move-object/from16 v19, v10

    .line 669
    .line 670
    move-wide/from16 v13, v23

    .line 671
    .line 672
    move-object/from16 v15, v25

    .line 673
    .line 674
    invoke-direct/range {v12 .. v19}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3, v12}, Lcp1;->a(Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    :goto_11
    move/from16 v6, p1

    .line 681
    .line 682
    move-object/from16 v5, v20

    .line 683
    .line 684
    const/4 v2, 0x1

    .line 685
    goto/16 :goto_7

    .line 686
    .line 687
    :cond_22
    move-object v2, v10

    .line 688
    instance-of v5, v2, [B

    .line 689
    .line 690
    if-eqz v5, :cond_23

    .line 691
    .line 692
    new-instance v12, La95;

    .line 693
    .line 694
    const/16 v16, 0x5

    .line 695
    .line 696
    const-wide/16 v17, 0x0

    .line 697
    .line 698
    move-object/from16 v19, v2

    .line 699
    .line 700
    move-wide/from16 v13, v23

    .line 701
    .line 702
    move-object/from16 v15, v25

    .line 703
    .line 704
    invoke-direct/range {v12 .. v19}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v3, v12}, Lcp1;->a(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    goto :goto_11

    .line 711
    :cond_23
    instance-of v5, v2, Ljava/lang/Boolean;

    .line 712
    .line 713
    if-eqz v5, :cond_24

    .line 714
    .line 715
    move-object v10, v2

    .line 716
    check-cast v10, Ljava/lang/Boolean;

    .line 717
    .line 718
    new-instance v22, La95;

    .line 719
    .line 720
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 721
    .line 722
    .line 723
    move-result v26

    .line 724
    const-wide/16 v27, 0x0

    .line 725
    .line 726
    const/16 v29, 0x0

    .line 727
    .line 728
    invoke-direct/range {v22 .. v29}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 729
    .line 730
    .line 731
    move-object/from16 v2, v22

    .line 732
    .line 733
    invoke-virtual {v3, v2}, Lcp1;->a(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    goto :goto_11

    .line 737
    :cond_24
    instance-of v5, v2, Ljava/lang/Long;

    .line 738
    .line 739
    if-eqz v5, :cond_25

    .line 740
    .line 741
    new-instance v22, La95;

    .line 742
    .line 743
    move-object v10, v2

    .line 744
    check-cast v10, Ljava/lang/Long;

    .line 745
    .line 746
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 747
    .line 748
    .line 749
    move-result-wide v27

    .line 750
    const/16 v29, 0x0

    .line 751
    .line 752
    const/16 v26, 0x2

    .line 753
    .line 754
    invoke-direct/range {v22 .. v29}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v2, v22

    .line 758
    .line 759
    invoke-virtual {v3, v2}, Lcp1;->a(Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    goto :goto_11

    .line 763
    :cond_25
    instance-of v5, v2, Ljava/lang/Double;

    .line 764
    .line 765
    if-eqz v5, :cond_26

    .line 766
    .line 767
    move-object v10, v2

    .line 768
    check-cast v10, Ljava/lang/Double;

    .line 769
    .line 770
    new-instance v22, La95;

    .line 771
    .line 772
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 773
    .line 774
    .line 775
    move-result-wide v5

    .line 776
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 777
    .line 778
    .line 779
    move-result-wide v27

    .line 780
    const/16 v29, 0x0

    .line 781
    .line 782
    const/16 v26, 0x3

    .line 783
    .line 784
    invoke-direct/range {v22 .. v29}, La95;-><init>(JLjava/lang/String;IJLjava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    move-object/from16 v2, v22

    .line 788
    .line 789
    invoke-virtual {v3, v2}, Lcp1;->a(Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    goto :goto_11

    .line 793
    :cond_26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    add-int/lit8 v1, v1, 0x1c

    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    add-int/2addr v1, v2

    .line 810
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 811
    .line 812
    .line 813
    const-string v1, "Cannot serialize override "

    .line 814
    .line 815
    invoke-static {v3, v1, v9, v11, v0}, Lxw1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    throw v20

    .line 823
    :cond_27
    move/from16 p1, v6

    .line 824
    .line 825
    new-instance v1, Lb95;

    .line 826
    .line 827
    invoke-virtual {v3}, Lop1;->c()Lg53;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    invoke-direct {v1, v2}, Lb95;-><init>(Lpp1;)V

    .line 832
    .line 833
    .line 834
    :goto_12
    iget-object v2, v1, Lb95;->a:Lpp1;

    .line 835
    .line 836
    check-cast v2, Lg53;

    .line 837
    .line 838
    iget-object v2, v2, Lg53;->t:Llp1;

    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    add-int/lit8 v2, v2, 0x3

    .line 845
    .line 846
    const-string v3, "expectedSize"

    .line 847
    .line 848
    invoke-static {v2, v3}, Lht4;->i(ILjava/lang/String;)V

    .line 849
    .line 850
    .line 851
    new-instance v3, Lhb;

    .line 852
    .line 853
    invoke-direct {v3, v2}, Lhb;-><init>(I)V

    .line 854
    .line 855
    .line 856
    iget-object v1, v1, Lb95;->a:Lpp1;

    .line 857
    .line 858
    invoke-virtual {v1}, Ldp1;->h()Ly64;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    :goto_13
    move-object v2, v1

    .line 863
    check-cast v2, Lhp1;

    .line 864
    .line 865
    invoke-virtual {v2}, Lhp1;->hasNext()Z

    .line 866
    .line 867
    .line 868
    move-result v5

    .line 869
    if-eqz v5, :cond_29

    .line 870
    .line 871
    invoke-virtual {v2}, Lhp1;->next()Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    check-cast v2, La95;

    .line 876
    .line 877
    iget-object v5, v2, La95;->o:Ljava/lang/String;

    .line 878
    .line 879
    if-eqz v5, :cond_28

    .line 880
    .line 881
    goto :goto_14

    .line 882
    :cond_28
    iget-wide v5, v2, La95;->n:J

    .line 883
    .line 884
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    :goto_14
    invoke-virtual {v2}, La95;->a()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-virtual {v3, v5, v2}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    goto :goto_13

    .line 896
    :cond_29
    invoke-virtual {v4}, Lz85;->v()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    const-string v2, "__phenotype_server_token"

    .line 901
    .line 902
    invoke-virtual {v3, v2, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v4}, Lz85;->t()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    const-string v2, "__phenotype_snapshot_token"

    .line 910
    .line 911
    invoke-virtual {v3, v2, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v4}, Lz85;->w()J

    .line 915
    .line 916
    .line 917
    move-result-wide v1

    .line 918
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    const-string v2, "__phenotype_configuration_version"

    .line 923
    .line 924
    invoke-virtual {v3, v2, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3, v7}, Lhb;->b(Z)Le53;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    iput-object v1, v0, Lic;->d:Ljava/lang/Object;

    .line 932
    .line 933
    move-object/from16 v1, p2

    .line 934
    .line 935
    iput-object v1, v0, Lic;->e:Ljava/lang/Object;

    .line 936
    .line 937
    return-void
.end method

.method public constructor <init>(Lrc5;La13;)V
    .locals 8

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lic;->a:Z

    invoke-static {}, Lrc5;->A()Lrc5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrn4;->equals(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {p1}, Lrc5;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lic;->b:Ljava/lang/Object;

    .line 940
    invoke-virtual {p1}, Lrc5;->u()Lzm4;

    move-result-object v1

    iput-object v1, p0, Lic;->c:Ljava/lang/Object;

    .line 941
    sget v1, Lnp1;->p:I

    .line 942
    sget-object v1, Lf53;->v:[Ljava/lang/Object;

    .line 943
    invoke-virtual {p1}, Lrc5;->y()I

    move-result v1

    const/4 v2, 0x3

    add-int/2addr v1, v2

    .line 944
    const-string v3, "expectedSize"

    invoke-static {v1, v3}, Lht4;->i(ILjava/lang/String;)V

    .line 945
    new-instance v3, Lhb;

    invoke-direct {v3, v1}, Lhb;-><init>(I)V

    .line 946
    invoke-virtual {p1}, Lrc5;->x()Ldo4;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc5;

    .line 947
    invoke-virtual {v4}, Ltc5;->G()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    if-eq v6, v5, :cond_3

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    if-eq v6, v2, :cond_1

    const/4 v5, 0x4

    if-eq v6, v5, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {v4}, Ltc5;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ltc5;->y()Lzm4;

    move-result-object v4

    invoke-virtual {v4}, Lzm4;->l()[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {v4}, Ltc5;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ltc5;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 950
    :cond_2
    invoke-virtual {v4}, Ltc5;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ltc5;->w()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 951
    :cond_3
    invoke-virtual {v4}, Ltc5;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ltc5;->v()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 952
    :cond_4
    invoke-virtual {v4}, Ltc5;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ltc5;->u()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 953
    throw p0

    .line 954
    :cond_6
    invoke-virtual {p1}, Lrc5;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__phenotype_server_token"

    invoke-virtual {v3, v2, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 955
    invoke-virtual {p1}, Lrc5;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__phenotype_snapshot_token"

    invoke-virtual {v3, v2, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    invoke-virtual {p1}, Lrc5;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "__phenotype_configuration_version"

    .line 957
    invoke-virtual {v3, v1, p1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 958
    invoke-virtual {v3, v0}, Lhb;->b(Z)Le53;

    move-result-object p1

    .line 959
    iput-object p1, p0, Lic;->d:Ljava/lang/Object;

    iput-object p2, p0, Lic;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(III[I[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lic;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    iget-boolean v1, p0, Lic;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lic;->c(I)Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v3, 0x1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz p5, :cond_a

    .line 25
    .line 26
    aput v2, p5, v2

    .line 27
    .line 28
    aput v2, p5, v3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 34
    .line 35
    .line 36
    aget v4, p5, v2

    .line 37
    .line 38
    aget v5, p5, v3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v4, v2

    .line 42
    move v5, v4

    .line 43
    :goto_1
    if-nez p4, :cond_5

    .line 44
    .line 45
    iget-object p4, p0, Lic;->e:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p4, [I

    .line 48
    .line 49
    if-nez p4, :cond_4

    .line 50
    .line 51
    const/4 p4, 0x2

    .line 52
    new-array p4, p4, [I

    .line 53
    .line 54
    iput-object p4, p0, Lic;->e:Ljava/lang/Object;

    .line 55
    .line 56
    :cond_4
    iget-object p0, p0, Lic;->e:Ljava/lang/Object;

    .line 57
    .line 58
    move-object p4, p0

    .line 59
    check-cast p4, [I

    .line 60
    .line 61
    :cond_5
    aput v2, p4, v2

    .line 62
    .line 63
    aput v2, p4, v3

    .line 64
    .line 65
    instance-of p0, v1, Lcl2;

    .line 66
    .line 67
    if-eqz p0, :cond_6

    .line 68
    .line 69
    check-cast v1, Lcl2;

    .line 70
    .line 71
    invoke-interface {v1, p1, p2, p4, p3}, Lcl2;->d(II[II)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    if-nez p3, :cond_7

    .line 76
    .line 77
    :try_start_0
    invoke-interface {v1, v0, p1, p2, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p2, "ViewParent "

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, " does not implement interface method onNestedPreScroll"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p2, "ViewParentCompat"

    .line 102
    .line 103
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_2
    if-eqz p5, :cond_8

    .line 107
    .line 108
    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 109
    .line 110
    .line 111
    aget p0, p5, v2

    .line 112
    .line 113
    sub-int/2addr p0, v4

    .line 114
    aput p0, p5, v2

    .line 115
    .line 116
    aget p0, p5, v3

    .line 117
    .line 118
    sub-int/2addr p0, v5

    .line 119
    aput p0, p5, v3

    .line 120
    .line 121
    :cond_8
    aget p0, p4, v2

    .line 122
    .line 123
    if-nez p0, :cond_9

    .line 124
    .line 125
    aget p0, p4, v3

    .line 126
    .line 127
    if-eqz p0, :cond_a

    .line 128
    .line 129
    :cond_9
    move v2, v3

    .line 130
    :cond_a
    :goto_3
    return v2
.end method

.method public b(IIII[II[I)Z
    .locals 14

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    move/from16 v8, p6

    .line 4
    .line 5
    iget-object v0, p0, Lic;->d:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    iget-boolean v0, p0, Lic;->a:Z

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v0, :cond_a

    .line 14
    .line 15
    invoke-virtual {p0, v8}, Lic;->c(I)Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/4 v11, 0x1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    if-nez p3, :cond_2

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v1, :cond_a

    .line 34
    .line 35
    aput v10, v1, v10

    .line 36
    .line 37
    aput v10, v1, v11

    .line 38
    .line 39
    return v10

    .line 40
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    .line 44
    .line 45
    aget v0, v1, v10

    .line 46
    .line 47
    aget v4, v1, v11

    .line 48
    .line 49
    move v12, v0

    .line 50
    move v13, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v12, v10

    .line 53
    move v13, v12

    .line 54
    :goto_1
    if-nez p7, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, [I

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [I

    .line 64
    .line 65
    iput-object v0, p0, Lic;->e:Ljava/lang/Object;

    .line 66
    .line 67
    :cond_4
    iget-object p0, p0, Lic;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, [I

    .line 70
    .line 71
    aput v10, p0, v10

    .line 72
    .line 73
    aput v10, p0, v11

    .line 74
    .line 75
    move-object v9, p0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object/from16 v9, p7

    .line 78
    .line 79
    :goto_2
    instance-of p0, v2, Ldl2;

    .line 80
    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    check-cast v2, Ldl2;

    .line 84
    .line 85
    move v4, p1

    .line 86
    move/from16 v5, p2

    .line 87
    .line 88
    move/from16 v6, p3

    .line 89
    .line 90
    move/from16 v7, p4

    .line 91
    .line 92
    invoke-interface/range {v2 .. v9}, Ldl2;->c(Landroidx/core/widget/NestedScrollView;IIIII[I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    aget p0, v9, v10

    .line 97
    .line 98
    add-int p0, p0, p3

    .line 99
    .line 100
    aput p0, v9, v10

    .line 101
    .line 102
    aget p0, v9, v11

    .line 103
    .line 104
    add-int p0, p0, p4

    .line 105
    .line 106
    aput p0, v9, v11

    .line 107
    .line 108
    instance-of p0, v2, Lcl2;

    .line 109
    .line 110
    if-eqz p0, :cond_7

    .line 111
    .line 112
    check-cast v2, Lcl2;

    .line 113
    .line 114
    move v4, p1

    .line 115
    move/from16 v5, p2

    .line 116
    .line 117
    move/from16 v6, p3

    .line 118
    .line 119
    move/from16 v7, p4

    .line 120
    .line 121
    move/from16 v8, p6

    .line 122
    .line 123
    invoke-interface/range {v2 .. v8}, Lcl2;->e(Landroidx/core/widget/NestedScrollView;IIIII)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    if-nez p6, :cond_8

    .line 128
    .line 129
    move v4, p1

    .line 130
    move/from16 v5, p2

    .line 131
    .line 132
    move/from16 v6, p3

    .line 133
    .line 134
    move/from16 v7, p4

    .line 135
    .line 136
    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    move-object p0, v0

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v0, "ViewParent "

    .line 145
    .line 146
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, " does not implement interface method onNestedScroll"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v0, "ViewParentCompat"

    .line 162
    .line 163
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    .line 170
    .line 171
    aget p0, v1, v10

    .line 172
    .line 173
    sub-int/2addr p0, v12

    .line 174
    aput p0, v1, v10

    .line 175
    .line 176
    aget p0, v1, v11

    .line 177
    .line 178
    sub-int/2addr p0, v13

    .line 179
    aput p0, v1, v11

    .line 180
    .line 181
    :cond_9
    return v11

    .line 182
    :cond_a
    :goto_4
    return v10
.end method

.method public c(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lic;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/view/ViewParent;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    iget-object p0, p0, Lic;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/view/ViewParent;

    .line 16
    .line 17
    return-object p0
.end method

.method public d(Lxh1;Lq9;Z)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lic;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lwj1;

    .line 6
    .line 7
    iget-object v2, v1, Lic;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lzj1;

    .line 10
    .line 11
    iget-boolean v3, v1, Lic;->a:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return v4

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    :try_start_0
    iput-boolean v3, v1, Lic;->a:Z

    .line 19
    .line 20
    iget-object v5, v1, Lic;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Ldh1;

    .line 23
    .line 24
    move-object/from16 v6, p1

    .line 25
    .line 26
    move-object/from16 v7, p2

    .line 27
    .line 28
    invoke-virtual {v5, v6, v7}, Ldh1;->p(Lxh1;Lq9;)Lft1;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v6, v5, Lft1;->p:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Le82;

    .line 35
    .line 36
    invoke-virtual {v6}, Le82;->e()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move v8, v4

    .line 41
    :goto_0
    if-ge v8, v7, :cond_3

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Le82;->f(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Lzv2;

    .line 48
    .line 49
    iget-boolean v10, v9, Lzv2;->d:Z

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget-boolean v9, v9, Lzv2;->h:Z

    .line 54
    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_2
    :goto_1
    move v7, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v7, v3

    .line 67
    :goto_2
    invoke-virtual {v6}, Le82;->e()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    move v9, v4

    .line 72
    :goto_3
    if-ge v9, v8, :cond_6

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Le82;->f(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Lzv2;

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    invoke-static {v10}, Lse0;->d(Lzv2;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_5

    .line 87
    .line 88
    :cond_4
    iget-object v11, v1, Lic;->b:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v12, v11

    .line 91
    check-cast v12, Lxy1;

    .line 92
    .line 93
    iget-wide v13, v10, Lzv2;->c:J

    .line 94
    .line 95
    iget-object v11, v1, Lic;->e:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v15, v11

    .line 98
    check-cast v15, Lzj1;

    .line 99
    .line 100
    iget v11, v10, Lzv2;->i:I

    .line 101
    .line 102
    const/16 v17, 0x1

    .line 103
    .line 104
    move/from16 v16, v11

    .line 105
    .line 106
    invoke-virtual/range {v12 .. v17}, Lxy1;->A(JLzj1;IZ)V

    .line 107
    .line 108
    .line 109
    iget-object v11, v2, Lzj1;->n:Ldg2;

    .line 110
    .line 111
    invoke-virtual {v11}, Ldg2;->h()Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_5

    .line 116
    .line 117
    iget-wide v11, v10, Lzv2;->a:J

    .line 118
    .line 119
    invoke-static {v10}, Lse0;->d(Lzv2;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v0, v11, v12, v2, v10}, Lwj1;->a(JLjava/util/List;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lzj1;->clear()V

    .line 127
    .line 128
    .line 129
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move/from16 v2, p3

    .line 133
    .line 134
    invoke-virtual {v0, v5, v2}, Lwj1;->b(Lft1;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-boolean v2, v5, Lft1;->o:Z

    .line 139
    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    :cond_7
    move v2, v4

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {v6}, Le82;->e()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move v5, v4

    .line 149
    :goto_4
    if-ge v5, v2, :cond_7

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Le82;->f(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Lzv2;

    .line 156
    .line 157
    invoke-static {v7, v3}, Lse0;->C(Lzv2;Z)J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    const-wide/16 v10, 0x0

    .line 162
    .line 163
    invoke-static {v8, v9, v10, v11}, Lgo2;->b(JJ)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_9

    .line 168
    .line 169
    invoke-virtual {v7}, Lzv2;->c()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_9

    .line 174
    .line 175
    move v2, v3

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :goto_5
    invoke-virtual {v6}, Le82;->e()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    move v7, v4

    .line 185
    :goto_6
    if-ge v7, v5, :cond_b

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Le82;->f(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Lzv2;

    .line 192
    .line 193
    invoke-virtual {v8}, Lzv2;->c()Z

    .line 194
    .line 195
    .line 196
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v8, :cond_a

    .line 198
    .line 199
    move v5, v3

    .line 200
    goto :goto_7

    .line 201
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    move v5, v4

    .line 205
    :goto_7
    shl-int/2addr v2, v3

    .line 206
    or-int/2addr v0, v2

    .line 207
    shl-int/lit8 v2, v5, 0x2

    .line 208
    .line 209
    or-int/2addr v0, v2

    .line 210
    iput-boolean v4, v1, Lic;->a:Z

    .line 211
    .line 212
    return v0

    .line 213
    :goto_8
    iput-boolean v4, v1, Lic;->a:Z

    .line 214
    .line 215
    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lic;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lic;->a:Z

    .line 10
    .line 11
    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lic;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lgc;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lgc;->b(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lic;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lhc;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lic;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v0
.end method

.method public f(II)V
    .locals 3

    .line 1
    int-to-float v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    cmpl-float v0, v0, v1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Index should be non-negative ("

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ldr1;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lic;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lts2;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lts2;->h(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lic;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lh02;

    .line 40
    .line 41
    iget v1, v0, Lh02;->o:I

    .line 42
    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    iput p1, v0, Lh02;->o:I

    .line 46
    .line 47
    div-int/lit8 p1, p1, 0x1e

    .line 48
    .line 49
    mul-int/lit8 p1, p1, 0x1e

    .line 50
    .line 51
    add-int/lit8 v1, p1, -0x64

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit16 p1, p1, 0x82

    .line 59
    .line 60
    invoke-static {v1, p1}, Lix;->a0(II)Lms1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, v0, Lh02;->n:Lws2;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p0, p0, Lic;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lts2;

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lts2;->h(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
