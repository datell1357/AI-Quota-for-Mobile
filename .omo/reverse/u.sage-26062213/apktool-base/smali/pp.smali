.class public final synthetic Lpp;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lag1;Lk30;Ltn3;Loe2;)V
    .locals 0

    .line 1
    const/4 p4, 0x4

    .line 2
    iput p4, p0, Lpp;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpp;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lpp;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lpp;->q:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lpp;->n:I

    iput-object p1, p0, Lpp;->o:Ljava/lang/Object;

    iput-object p2, p0, Lpp;->p:Ljava/lang/Object;

    iput-object p3, p0, Lpp;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpp;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v6, v1

    .line 14
    check-cast v6, Leg4;

    .line 15
    .line 16
    iget-object v1, v0, Lpp;->p:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v1

    .line 19
    check-cast v7, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lfu2;

    .line 24
    .line 25
    iget-object v1, v6, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v7}, Lqg4;->d(Ljava/lang/String;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-gt v8, v3, :cond_c

    .line 40
    .line 41
    invoke-static {v5}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lng4;

    .line 46
    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    new-instance v5, Ltf4;

    .line 54
    .line 55
    sget-object v8, Lx31;->o:Lx31;

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-direct/range {v5 .. v10}, Ltf4;-><init>(Leg4;Ljava/lang/String;Lx31;Ljava/util/List;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v5}, La11;->a(Ltf4;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    iget-object v8, v5, Lng4;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v8}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v9, :cond_b

    .line 73
    .line 74
    invoke-virtual {v9}, Log4;->c()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_a

    .line 79
    .line 80
    iget-object v9, v5, Lng4;->b:Lcg4;

    .line 81
    .line 82
    sget-object v10, Lcg4;->s:Lcg4;

    .line 83
    .line 84
    if-ne v9, v10, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1, v8}, Lqg4;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    new-instance v5, Ltf4;

    .line 94
    .line 95
    sget-object v8, Lx31;->o:Lx31;

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    invoke-direct/range {v5 .. v10}, Ltf4;-><init>(Leg4;Ljava/lang/String;Lx31;Ljava/util/List;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, La11;->a(Ltf4;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_1
    iget-object v7, v0, Lmg4;->b:Log4;

    .line 107
    .line 108
    iget-object v8, v5, Lng4;->a:Ljava/lang/String;

    .line 109
    .line 110
    const/16 v19, 0x0

    .line 111
    .line 112
    const v20, 0x1fffffe

    .line 113
    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const-wide/16 v13, 0x0

    .line 120
    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const-wide/16 v17, 0x0

    .line 125
    .line 126
    invoke-static/range {v7 .. v20}, Log4;->b(Log4;Ljava/lang/String;Lcg4;Ljava/lang/String;Lzl0;IJIIJII)Log4;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v5, v6, Leg4;->f:Lez2;

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object v7, v6, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object v8, v6, Leg4;->b:Lmd0;

    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v6, v6, Leg4;->e:Ljava/util/List;

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, Lmg4;->c:Ljava/util/Set;

    .line 151
    .line 152
    const-string v9, "OneTime"

    .line 153
    .line 154
    const-string v10, "Periodic"

    .line 155
    .line 156
    iget-object v11, v1, Log4;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-virtual {v12, v11}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    if-eqz v12, :cond_9

    .line 167
    .line 168
    iget-object v4, v12, Log4;->b:Lcg4;

    .line 169
    .line 170
    invoke-virtual {v4}, Lcg4;->a()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_2

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {v12}, Log4;->c()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-virtual {v1}, Log4;->c()Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    xor-int/2addr v4, v13

    .line 186
    if-nez v4, :cond_6

    .line 187
    .line 188
    iget-object v4, v5, Lez2;->k:Ljava/lang/Object;

    .line 189
    .line 190
    monitor-enter v4

    .line 191
    :try_start_0
    invoke-virtual {v5, v11}, Lez2;->c(Ljava/lang/String;)Lhh4;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    if-eqz v5, :cond_3

    .line 196
    .line 197
    move/from16 v28, v3

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_3
    move/from16 v28, v2

    .line 201
    .line 202
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-nez v28, :cond_4

    .line 204
    .line 205
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_4

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lwd3;

    .line 220
    .line 221
    invoke-interface {v3, v11}, Lwd3;->a(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_4
    new-instance v21, Lxg4;

    .line 226
    .line 227
    move-object/from16 v27, v0

    .line 228
    .line 229
    move-object/from16 v24, v1

    .line 230
    .line 231
    move-object/from16 v25, v6

    .line 232
    .line 233
    move-object/from16 v22, v7

    .line 234
    .line 235
    move-object/from16 v26, v11

    .line 236
    .line 237
    move-object/from16 v23, v12

    .line 238
    .line 239
    invoke-direct/range {v21 .. v28}, Lxg4;-><init>(Landroidx/work/impl/WorkDatabase;Log4;Log4;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v2, v21

    .line 243
    .line 244
    move-object/from16 v0, v22

    .line 245
    .line 246
    move-object/from16 v1, v25

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Lga3;->o(Ljava/lang/Runnable;)V

    .line 249
    .line 250
    .line 251
    if-nez v28, :cond_5

    .line 252
    .line 253
    invoke-static {v8, v0, v1}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    :cond_5
    :goto_2
    sget-object v4, Lt64;->a:Lt64;

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    throw v0

    .line 262
    :cond_6
    move-object/from16 v24, v1

    .line 263
    .line 264
    move-object/from16 v23, v12

    .line 265
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 267
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v2, "Can\'t update "

    .line 271
    .line 272
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {v23 .. v23}, Log4;->c()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_7

    .line 280
    .line 281
    move-object v2, v10

    .line 282
    goto :goto_3

    .line 283
    :cond_7
    move-object v2, v9

    .line 284
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v2, " Worker to "

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {v24 .. v24}, Log4;->c()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_8

    .line 297
    .line 298
    move-object v9, v10

    .line 299
    :cond_8
    const-string v2, " Worker. Update operation must preserve worker\'s type."

    .line 300
    .line 301
    invoke-static {v1, v9, v2}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_9
    move-object v0, v11

    .line 310
    const-string v1, "Worker with "

    .line 311
    .line 312
    const-string v2, " doesn\'t exist"

    .line 313
    .line 314
    invoke-static {v1, v0, v2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_a
    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    .line 323
    .line 324
    invoke-static {v0}, Lp61;->s(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_b
    const-string v0, "WorkSpec with "

    .line 329
    .line 330
    const-string v1, ", that matches a name \""

    .line 331
    .line 332
    const-string v2, "\", wasn\'t found"

    .line 333
    .line 334
    invoke-static {v0, v8, v1, v7, v2}, Lxw1;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_c
    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    .line 343
    .line 344
    invoke-static {v0}, Lp61;->s(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :goto_4
    return-object v4

    .line 348
    :pswitch_0
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v1, Lvf1;

    .line 351
    .line 352
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v2, Lxn3;

    .line 355
    .line 356
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Lar2;

    .line 359
    .line 360
    if-eqz v1, :cond_d

    .line 361
    .line 362
    invoke-virtual {v2, v1}, Lxn3;->c(Lvf1;)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    iget v3, v2, Lxn3;->t:I

    .line 367
    .line 368
    sub-int/2addr v1, v3

    .line 369
    invoke-virtual {v2, v1}, Lxn3;->a(I)V

    .line 370
    .line 371
    .line 372
    :cond_d
    iget v1, v2, Lxn3;->t:I

    .line 373
    .line 374
    invoke-static {v2, v4, v1, v4}, Lqn0;->k(Lxn3;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v1}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    check-cast v2, Ljb0;

    .line 383
    .line 384
    if-eqz v2, :cond_e

    .line 385
    .line 386
    iget-object v2, v2, Ljb0;->b:Ljava/lang/Integer;

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_e
    move-object v2, v4

    .line 390
    :goto_5
    invoke-interface {v0, v2}, Lar2;->c(Ljava/lang/Integer;)Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    if-eqz v2, :cond_10

    .line 395
    .line 396
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-eqz v5, :cond_f

    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_f
    invoke-static {v3}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljb0;

    .line 408
    .line 409
    invoke-static {v3}, Lo70;->f0(Ljava/util/List;)Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    iget v5, v5, Ljb0;->a:I

    .line 414
    .line 415
    new-instance v6, Ljb0;

    .line 416
    .line 417
    invoke-direct {v6, v5, v4, v2}, Ljb0;-><init>(ILdm0;Ljava/lang/Integer;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v6}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2, v3}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    :cond_10
    :goto_6
    new-instance v2, Lhb0;

    .line 429
    .line 430
    invoke-static {v1, v3}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-interface {v0}, Lar2;->d()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-direct {v2, v1, v0}, Lhb0;-><init>(Ljava/util/List;Z)V

    .line 439
    .line 440
    .line 441
    return-object v2

    .line 442
    :pswitch_1
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, Los0;

    .line 445
    .line 446
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v2, Ln12;

    .line 449
    .line 450
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v0, Luz1;

    .line 453
    .line 454
    invoke-virtual {v1}, Los0;->getValue()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    check-cast v1, Ly02;

    .line 459
    .line 460
    new-instance v3, Lhb;

    .line 461
    .line 462
    iget-object v4, v2, Ln12;->e:Lic;

    .line 463
    .line 464
    iget-object v4, v4, Lic;->e:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v4, Lh02;

    .line 467
    .line 468
    invoke-virtual {v4}, Lh02;->getValue()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    check-cast v4, Lms1;

    .line 473
    .line 474
    invoke-direct {v3, v4, v1}, Lhb;-><init>(Lms1;Ly02;)V

    .line 475
    .line 476
    .line 477
    new-instance v4, La12;

    .line 478
    .line 479
    invoke-direct {v4, v2, v1, v0, v3}, La12;-><init>(Ln12;Ly02;Luz1;Lhb;)V

    .line 480
    .line 481
    .line 482
    return-object v4

    .line 483
    :pswitch_2
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v1, Ls33;

    .line 486
    .line 487
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 490
    .line 491
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v0, Lmq1;

    .line 494
    .line 495
    iget-boolean v1, v1, Ls33;->n:Z

    .line 496
    .line 497
    if-eqz v1, :cond_11

    .line 498
    .line 499
    invoke-static {}, Lt72;->g()Lt72;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    sget-object v3, Lsf4;->a:Ljava/lang/String;

    .line 504
    .line 505
    const-string v4, "NetworkRequestConstraintController unregister callback"

    .line 506
    .line 507
    invoke-virtual {v1, v3, v4}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 511
    .line 512
    .line 513
    :cond_11
    sget-object v0, Lt64;->a:Lt64;

    .line 514
    .line 515
    return-object v0

    .line 516
    :pswitch_3
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v1, Lag1;

    .line 519
    .line 520
    iget-object v3, v0, Lpp;->p:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v3, Lk30;

    .line 523
    .line 524
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v0, Ltn3;

    .line 527
    .line 528
    iget-object v5, v1, Lag1;->M:Ltb0;

    .line 529
    .line 530
    iget-object v6, v5, Ltb0;->b:Lk30;

    .line 531
    .line 532
    :try_start_2
    iput-object v3, v5, Ltb0;->b:Lk30;

    .line 533
    .line 534
    iget-object v3, v1, Lag1;->G:Ltn3;

    .line 535
    .line 536
    iget-object v7, v1, Lag1;->o:[I

    .line 537
    .line 538
    iget-object v8, v1, Lag1;->v:Ltf2;

    .line 539
    .line 540
    iput-object v4, v1, Lag1;->o:[I

    .line 541
    .line 542
    iput-object v4, v1, Lag1;->v:Ltf2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 543
    .line 544
    :try_start_3
    iput-object v0, v1, Lag1;->G:Ltn3;

    .line 545
    .line 546
    iget-boolean v9, v5, Ltb0;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 547
    .line 548
    :try_start_4
    iput-boolean v2, v5, Ltb0;->e:Z

    .line 549
    .line 550
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 551
    :catchall_1
    move-exception v0

    .line 552
    :try_start_5
    iput-boolean v9, v5, Ltb0;->e:Z

    .line 553
    .line 554
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 555
    :catchall_2
    move-exception v0

    .line 556
    :try_start_6
    iput-object v3, v1, Lag1;->G:Ltn3;

    .line 557
    .line 558
    iput-object v7, v1, Lag1;->o:[I

    .line 559
    .line 560
    iput-object v8, v1, Lag1;->v:Ltf2;

    .line 561
    .line 562
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 563
    :catchall_3
    move-exception v0

    .line 564
    iput-object v6, v5, Ltb0;->b:Lk30;

    .line 565
    .line 566
    throw v0

    .line 567
    :pswitch_4
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 568
    .line 569
    move-object v5, v1

    .line 570
    check-cast v5, Lfg0;

    .line 571
    .line 572
    iget-object v1, v0, Lpp;->p:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v1, Lt74;

    .line 575
    .line 576
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v0, Lgy;

    .line 579
    .line 580
    sget-object v12, Lt64;->a:Lt64;

    .line 581
    .line 582
    iget-object v13, v5, Lfg0;->F:Lzx;

    .line 583
    .line 584
    :goto_7
    iget-object v6, v13, Lzx;->a:Lug2;

    .line 585
    .line 586
    iget v7, v6, Lug2;->p:I

    .line 587
    .line 588
    if-eqz v7, :cond_14

    .line 589
    .line 590
    if-eqz v7, :cond_13

    .line 591
    .line 592
    add-int/lit8 v7, v7, -0x1

    .line 593
    .line 594
    iget-object v6, v6, Lug2;->n:[Ljava/lang/Object;

    .line 595
    .line 596
    aget-object v6, v6, v7

    .line 597
    .line 598
    check-cast v6, Ldg0;

    .line 599
    .line 600
    iget-object v6, v6, Ldg0;->a:Lay;

    .line 601
    .line 602
    invoke-virtual {v6}, Lay;->a()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    check-cast v6, Ll33;

    .line 607
    .line 608
    if-nez v6, :cond_12

    .line 609
    .line 610
    move v6, v3

    .line 611
    goto :goto_8

    .line 612
    :cond_12
    const-wide/16 v9, 0x0

    .line 613
    .line 614
    const/4 v11, 0x3

    .line 615
    const-wide/16 v7, 0x0

    .line 616
    .line 617
    invoke-static/range {v5 .. v11}, Lfg0;->I0(Lfg0;Ll33;JJI)Z

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    :goto_8
    if-eqz v6, :cond_14

    .line 622
    .line 623
    iget-object v6, v13, Lzx;->a:Lug2;

    .line 624
    .line 625
    iget v7, v6, Lug2;->p:I

    .line 626
    .line 627
    sub-int/2addr v7, v3

    .line 628
    invoke-virtual {v6, v7}, Lug2;->l(I)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    check-cast v6, Ldg0;

    .line 633
    .line 634
    iget-object v6, v6, Ldg0;->b:Lo20;

    .line 635
    .line 636
    invoke-virtual {v6, v12}, Lo20;->g(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto :goto_7

    .line 640
    :cond_13
    const-string v0, "MutableVector is empty."

    .line 641
    .line 642
    invoke-static {v0}, Lq73;->l(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto :goto_9

    .line 646
    :cond_14
    iget-boolean v4, v5, Lfg0;->G:Z

    .line 647
    .line 648
    if-eqz v4, :cond_15

    .line 649
    .line 650
    iget-object v4, v5, Lfg0;->E:Ltf3;

    .line 651
    .line 652
    invoke-virtual {v4}, Ltf3;->a()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    move-object v6, v4

    .line 657
    check-cast v6, Ll33;

    .line 658
    .line 659
    if-eqz v6, :cond_15

    .line 660
    .line 661
    const-wide/16 v9, 0x0

    .line 662
    .line 663
    const/4 v11, 0x3

    .line 664
    const-wide/16 v7, 0x0

    .line 665
    .line 666
    invoke-static/range {v5 .. v11}, Lfg0;->I0(Lfg0;Ll33;JJI)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-ne v4, v3, :cond_15

    .line 671
    .line 672
    iput-boolean v2, v5, Lfg0;->G:Z

    .line 673
    .line 674
    :cond_15
    const-wide/16 v2, 0x0

    .line 675
    .line 676
    invoke-static {v5, v0, v2, v3}, Lfg0;->G0(Lfg0;Lgy;J)F

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    iput v0, v1, Lt74;->e:F

    .line 681
    .line 682
    move-object v4, v12

    .line 683
    :goto_9
    return-object v4

    .line 684
    :pswitch_5
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Lj30;

    .line 687
    .line 688
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v2, Laj1;

    .line 691
    .line 692
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Le7;

    .line 695
    .line 696
    iget-object v1, v1, Lj30;->b:Lzf5;

    .line 697
    .line 698
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2}, Laj1;->a()Ljava/util/List;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    iget-object v0, v0, Le7;->h:Lcn1;

    .line 706
    .line 707
    iget-object v0, v0, Lcn1;->d:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v1, v0, v2}, Lzf5;->t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    return-object v0

    .line 714
    :pswitch_6
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 715
    .line 716
    check-cast v1, Ldy;

    .line 717
    .line 718
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v2, Lmm2;

    .line 721
    .line 722
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, Lj9;

    .line 725
    .line 726
    invoke-static {v1, v2, v0}, Ldy;->G0(Ldy;Lmm2;Lj9;)Ll33;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    if-eqz v6, :cond_17

    .line 731
    .line 732
    iget-object v5, v1, Ldy;->B:Lfg0;

    .line 733
    .line 734
    iget-wide v0, v5, Lfg0;->H:J

    .line 735
    .line 736
    const-wide/16 v2, -0x1

    .line 737
    .line 738
    invoke-static {v0, v1, v2, v3}, Lrs1;->a(JJ)Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_16

    .line 743
    .line 744
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 745
    .line 746
    invoke-static {v0}, Ldr1;->c(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :cond_16
    invoke-virtual {v5}, Lfg0;->H0()J

    .line 750
    .line 751
    .line 752
    move-result-wide v7

    .line 753
    const-wide/16 v9, 0x0

    .line 754
    .line 755
    invoke-virtual/range {v5 .. v10}, Lfg0;->K0(Ll33;JJ)J

    .line 756
    .line 757
    .line 758
    move-result-wide v0

    .line 759
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    xor-long/2addr v0, v2

    .line 765
    invoke-virtual {v6, v0, v1}, Ll33;->e(J)Ll33;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    :cond_17
    return-object v4

    .line 770
    :pswitch_7
    iget-object v1, v0, Lpp;->o:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v1, Lqp;

    .line 773
    .line 774
    iget-object v2, v0, Lpp;->p:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v2, Lrp;

    .line 777
    .line 778
    iget-object v0, v0, Lpp;->q:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v0, Lu33;

    .line 781
    .line 782
    invoke-virtual {v1}, Lqp;->a()V

    .line 783
    .line 784
    .line 785
    iget-object v1, v2, Lrp;->d:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast v1, Llj;

    .line 788
    .line 789
    iget v0, v0, Lu33;->n:I

    .line 790
    .line 791
    :cond_18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    ushr-int/lit8 v3, v2, 0x1b

    .line 796
    .line 797
    and-int/lit8 v3, v3, 0xf

    .line 798
    .line 799
    if-ne v3, v0, :cond_19

    .line 800
    .line 801
    add-int/lit8 v3, v2, -0x1

    .line 802
    .line 803
    goto :goto_a

    .line 804
    :cond_19
    move v3, v2

    .line 805
    :goto_a
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_18

    .line 810
    .line 811
    sget-object v0, Lt64;->a:Lt64;

    .line 812
    .line 813
    return-object v0

    .line 814
    nop

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
