.class public final synthetic Lvc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvc3;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lvc3;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lvc3;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v0, v0, Lvc3;->o:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v0, Landroidx/work/Worker;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/work/Worker;->c()Lt42;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_0
    check-cast v0, Leg4;

    .line 21
    .line 22
    iget-object v1, v0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 23
    .line 24
    iget-object v2, v0, Leg4;->a:Landroid/content/Context;

    .line 25
    .line 26
    sget-object v5, Law3;->s:Ljava/lang/String;

    .line 27
    .line 28
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v6, 0x22

    .line 31
    .line 32
    if-lt v5, v6, :cond_0

    .line 33
    .line 34
    invoke-static {v2}, Lxu1;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string v5, "jobscheduler"

    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/app/job/JobScheduler;

    .line 48
    .line 49
    invoke-static {v2, v5}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move v7, v3

    .line 66
    :goto_0
    if-ge v7, v6, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    check-cast v8, Landroid/app/job/JobInfo;

    .line 75
    .line 76
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    invoke-static {v5, v8}, Law3;->b(Landroid/app/job/JobScheduler;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lqg4;->a:Lga3;

    .line 89
    .line 90
    new-instance v5, Lba4;

    .line 91
    .line 92
    const/16 v6, 0x13

    .line 93
    .line 94
    invoke-direct {v5, v6}, Lba4;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3, v4, v5}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    iget-object v2, v0, Leg4;->b:Lmd0;

    .line 107
    .line 108
    iget-object v0, v0, Leg4;->e:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v2, v1, v0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lt64;->a:Lt64;

    .line 114
    .line 115
    return-object v0

    .line 116
    :pswitch_1
    check-cast v0, Ltf4;

    .line 117
    .line 118
    invoke-static {v0}, La11;->a(Ltf4;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lt64;->a:Lt64;

    .line 122
    .line 123
    return-object v0

    .line 124
    :pswitch_2
    check-cast v0, Lvz3;

    .line 125
    .line 126
    iget-object v1, v0, Lvz3;->Z:Lpe1;

    .line 127
    .line 128
    iget-boolean v0, v0, Lvz3;->Y:Z

    .line 129
    .line 130
    xor-int/2addr v0, v4

    .line 131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    sget-object v0, Lt64;->a:Lt64;

    .line 139
    .line 140
    return-object v0

    .line 141
    :pswitch_3
    check-cast v0, Lzx3;

    .line 142
    .line 143
    iput-object v2, v0, Lzx3;->L:Lyx3;

    .line 144
    .line 145
    invoke-static {v0}, Lw80;->A(Leh3;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lca;->u(Loy1;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lkt4;->Q(Ljx0;)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 155
    .line 156
    return-object v0

    .line 157
    :pswitch_4
    move-object v1, v0

    .line 158
    check-cast v1, Lip3;

    .line 159
    .line 160
    :goto_1
    iget-object v2, v1, Lip3;->g:Ljava/lang/Object;

    .line 161
    .line 162
    monitor-enter v2

    .line 163
    :try_start_0
    iget-boolean v0, v1, Lip3;->c:Z

    .line 164
    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    iput-boolean v4, v1, Lip3;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    .line 169
    :try_start_1
    iget-object v0, v1, Lip3;->f:Lug2;

    .line 170
    .line 171
    iget-object v5, v0, Lug2;->n:[Ljava/lang/Object;

    .line 172
    .line 173
    iget v0, v0, Lug2;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 174
    .line 175
    move v6, v3

    .line 176
    :goto_2
    if-ge v6, v0, :cond_7

    .line 177
    .line 178
    :try_start_2
    aget-object v7, v5, v6

    .line 179
    .line 180
    check-cast v7, Lhp3;

    .line 181
    .line 182
    iget-object v8, v7, Lhp3;->g:Llg2;

    .line 183
    .line 184
    iget-object v7, v7, Lhp3;->a:Lpe1;

    .line 185
    .line 186
    iget-object v9, v8, Llg2;->b:[Ljava/lang/Object;

    .line 187
    .line 188
    iget-object v10, v8, Llg2;->a:[J

    .line 189
    .line 190
    array-length v11, v10

    .line 191
    add-int/lit8 v11, v11, -0x2

    .line 192
    .line 193
    if-ltz v11, :cond_5

    .line 194
    .line 195
    move v12, v3

    .line 196
    :goto_3
    aget-wide v13, v10, v12

    .line 197
    .line 198
    move-object/from16 p0, v5

    .line 199
    .line 200
    not-long v4, v13

    .line 201
    const/16 v16, 0x7

    .line 202
    .line 203
    shl-long v4, v4, v16

    .line 204
    .line 205
    and-long/2addr v4, v13

    .line 206
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    and-long v4, v4, v16

    .line 212
    .line 213
    cmp-long v4, v4, v16

    .line 214
    .line 215
    if-eqz v4, :cond_4

    .line 216
    .line 217
    sub-int v4, v12, v11

    .line 218
    .line 219
    not-int v4, v4

    .line 220
    ushr-int/lit8 v4, v4, 0x1f

    .line 221
    .line 222
    const/16 v5, 0x8

    .line 223
    .line 224
    rsub-int/lit8 v4, v4, 0x8

    .line 225
    .line 226
    move v15, v3

    .line 227
    :goto_4
    if-ge v15, v4, :cond_3

    .line 228
    .line 229
    const-wide/16 v17, 0xff

    .line 230
    .line 231
    and-long v17, v13, v17

    .line 232
    .line 233
    const-wide/16 v19, 0x80

    .line 234
    .line 235
    cmp-long v17, v17, v19

    .line 236
    .line 237
    if-gez v17, :cond_2

    .line 238
    .line 239
    shl-int/lit8 v17, v12, 0x3

    .line 240
    .line 241
    add-int v17, v17, v15

    .line 242
    .line 243
    aget-object v3, v9, v17

    .line 244
    .line 245
    invoke-interface {v7, v3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    :cond_2
    shr-long/2addr v13, v5

    .line 249
    add-int/lit8 v15, v15, 0x1

    .line 250
    .line 251
    const/4 v3, 0x0

    .line 252
    goto :goto_4

    .line 253
    :cond_3
    if-ne v4, v5, :cond_6

    .line 254
    .line 255
    :cond_4
    if-eq v12, v11, :cond_6

    .line 256
    .line 257
    add-int/lit8 v12, v12, 0x1

    .line 258
    .line 259
    move-object/from16 v5, p0

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v4, 0x1

    .line 263
    goto :goto_3

    .line 264
    :cond_5
    move-object/from16 p0, v5

    .line 265
    .line 266
    :cond_6
    invoke-virtual {v8}, Llg2;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .line 268
    .line 269
    add-int/lit8 v6, v6, 0x1

    .line 270
    .line 271
    move-object/from16 v5, p0

    .line 272
    .line 273
    const/4 v3, 0x0

    .line 274
    const/4 v4, 0x1

    .line 275
    goto :goto_2

    .line 276
    :goto_5
    const/4 v3, 0x0

    .line 277
    goto :goto_6

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    goto :goto_5

    .line 280
    :cond_7
    :try_start_3
    iput-boolean v3, v1, Lip3;->c:Z

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :catchall_1
    move-exception v0

    .line 284
    goto :goto_8

    .line 285
    :catchall_2
    move-exception v0

    .line 286
    :goto_6
    iput-boolean v3, v1, Lip3;->c:Z

    .line 287
    .line 288
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    :cond_8
    :goto_7
    monitor-exit v2

    .line 290
    invoke-virtual {v1}, Lip3;->b()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-nez v0, :cond_9

    .line 295
    .line 296
    sget-object v0, Lt64;->a:Lt64;

    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_9
    const/4 v3, 0x0

    .line 300
    const/4 v4, 0x1

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :goto_8
    monitor-exit v2

    .line 304
    throw v0

    .line 305
    :pswitch_5
    check-cast v0, Lfo3;

    .line 306
    .line 307
    iget-object v0, v0, Lfo3;->b:Lo20;

    .line 308
    .line 309
    invoke-virtual {v0}, Lo20;->w()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    instance-of v1, v1, Lzm2;

    .line 314
    .line 315
    if-eqz v1, :cond_a

    .line 316
    .line 317
    sget-object v1, Lno3;->n:Lno3;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Lo20;->g(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 323
    .line 324
    return-object v0

    .line 325
    :pswitch_6
    check-cast v0, Lgl3;

    .line 326
    .line 327
    iget-object v1, v0, Lgl3;->p:Lws2;

    .line 328
    .line 329
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    check-cast v3, Lmn3;

    .line 334
    .line 335
    iget-wide v3, v3, Lmn3;->a:J

    .line 336
    .line 337
    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    cmp-long v3, v3, v5

    .line 343
    .line 344
    if-nez v3, :cond_b

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_b
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    check-cast v3, Lmn3;

    .line 352
    .line 353
    iget-wide v3, v3, Lmn3;->a:J

    .line 354
    .line 355
    invoke-static {v3, v4}, Lmn3;->c(J)Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_c

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_c
    iget-object v0, v0, Lgl3;->n:Lqy;

    .line 363
    .line 364
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lmn3;

    .line 369
    .line 370
    iget-wide v1, v1, Lmn3;->a:J

    .line 371
    .line 372
    iget-object v2, v0, Lqy;->j:Landroid/graphics/Shader;

    .line 373
    .line 374
    :goto_9
    return-object v2

    .line 375
    :pswitch_7
    check-cast v0, Ly84;

    .line 376
    .line 377
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    return-object v0

    .line 382
    :pswitch_8
    check-cast v0, Lii3;

    .line 383
    .line 384
    iget-object v1, v0, Lii3;->j:[Lgi3;

    .line 385
    .line 386
    invoke-static {v0, v1}, Lca;->t(Lgi3;[Lgi3;)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    :pswitch_9
    return-object v0

    .line 395
    :pswitch_a
    check-cast v0, Lpg3;

    .line 396
    .line 397
    iget-object v1, v0, Lpg3;->e:Ln14;

    .line 398
    .line 399
    if-eqz v1, :cond_d

    .line 400
    .line 401
    iget-object v1, v1, Ln14;->m:Los0;

    .line 402
    .line 403
    invoke-virtual {v1}, Los0;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, Ljava/lang/Number;

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 410
    .line 411
    .line 412
    move-result-wide v1

    .line 413
    goto :goto_a

    .line 414
    :cond_d
    const-wide/16 v1, 0x0

    .line 415
    .line 416
    :goto_a
    iput-wide v1, v0, Lpg3;->f:J

    .line 417
    .line 418
    sget-object v0, Lt64;->a:Lt64;

    .line 419
    .line 420
    return-object v0

    .line 421
    :pswitch_b
    check-cast v0, Lnf3;

    .line 422
    .line 423
    sget-object v1, Lqr2;->a:Llc0;

    .line 424
    .line 425
    invoke-static {v0, v1}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    check-cast v1, Lxa;

    .line 430
    .line 431
    iput-object v1, v0, Lnf3;->M:Lxa;

    .line 432
    .line 433
    if-eqz v1, :cond_e

    .line 434
    .line 435
    new-instance v3, Lwa;

    .line 436
    .line 437
    iget-object v4, v1, Lxa;->a:Landroid/content/Context;

    .line 438
    .line 439
    iget-object v5, v1, Lxa;->b:Las0;

    .line 440
    .line 441
    iget-wide v6, v1, Lxa;->c:J

    .line 442
    .line 443
    iget-object v8, v1, Lxa;->d:Lzr2;

    .line 444
    .line 445
    invoke-direct/range {v3 .. v8}, Lwa;-><init>(Landroid/content/Context;Las0;JLzr2;)V

    .line 446
    .line 447
    .line 448
    move-object v2, v3

    .line 449
    :cond_e
    iput-object v2, v0, Lnf3;->N:Lwa;

    .line 450
    .line 451
    sget-object v0, Lt64;->a:Lt64;

    .line 452
    .line 453
    return-object v0

    .line 454
    :pswitch_c
    check-cast v0, Lyc3;

    .line 455
    .line 456
    invoke-interface {v0}, Lp22;->getLifecycle()Lh22;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    new-instance v2, Lk33;

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    invoke-direct {v2, v3, v0}, Lk33;-><init>(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v2}, Lh22;->a(Lo22;)V

    .line 467
    .line 468
    .line 469
    sget-object v0, Lt64;->a:Lt64;

    .line 470
    .line 471
    return-object v0

    .line 472
    nop

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
