.class public final synthetic Lc4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p10, p0, Lc4;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lc4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lc4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lc4;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lc4;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lc4;->s:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Lc4;->t:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p7, p0, Lc4;->u:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p8, p0, Lc4;->v:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p9, p0, Lc4;->w:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc4;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lc4;->o:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Lh33;

    .line 13
    .line 14
    iget-object v1, v0, Lc4;->p:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v9, v1

    .line 17
    check-cast v9, Llg2;

    .line 18
    .line 19
    iget-object v1, v0, Lc4;->q:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v10, v1

    .line 22
    check-cast v10, Llg2;

    .line 23
    .line 24
    iget-object v1, v0, Lc4;->r:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v4, v1

    .line 27
    check-cast v4, Ljava/util/List;

    .line 28
    .line 29
    iget-object v1, v0, Lc4;->s:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v5, v1

    .line 32
    check-cast v5, Ljava/util/List;

    .line 33
    .line 34
    iget-object v1, v0, Lc4;->t:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v7, v1

    .line 37
    check-cast v7, Llg2;

    .line 38
    .line 39
    iget-object v1, v0, Lc4;->u:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v6, v1

    .line 42
    check-cast v6, Ljava/util/List;

    .line 43
    .line 44
    iget-object v1, v0, Lc4;->v:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v8, v1

    .line 47
    check-cast v8, Llg2;

    .line 48
    .line 49
    iget-object v0, v0, Lc4;->w:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ljava/util/Set;

    .line 52
    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v11

    .line 61
    iget-object v1, v3, Lh33;->c:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v1

    .line 64
    :try_start_0
    invoke-virtual {v3}, Lh33;->z()Z

    .line 65
    .line 66
    .line 67
    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    .line 68
    monitor-exit v1

    .line 69
    const/4 v1, 0x1

    .line 70
    if-eqz v13, :cond_2

    .line 71
    .line 72
    const-string v13, "Recomposer:animation"

    .line 73
    .line 74
    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :try_start_1
    iget-object v13, v3, Lh33;->a:Lqc;

    .line 78
    .line 79
    iget-object v13, v13, Lqc;->p:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v13, Lrp;

    .line 82
    .line 83
    new-instance v14, Ljy;

    .line 84
    .line 85
    invoke-direct {v14, v11, v12, v2}, Ljy;-><init>(JI)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13, v14}, Lrp;->g(Lpe1;)V

    .line 89
    .line 90
    .line 91
    sget-object v11, Lwo3;->c:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    sget-object v12, Lwo3;->j:Ljh1;

    .line 95
    .line 96
    iget-object v12, v12, Log2;->h:Llg2;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    invoke-virtual {v12}, Llg2;->h()Z

    .line 101
    .line 102
    .line 103
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-ne v12, v1, :cond_0

    .line 105
    .line 106
    move v12, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move v12, v2

    .line 109
    :goto_0
    :try_start_3
    monitor-exit v11

    .line 110
    if-eqz v12, :cond_1

    .line 111
    .line 112
    invoke-static {}, Lwo3;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    :try_start_4
    monitor-exit v11

    .line 121
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_2
    :goto_1
    const-string v11, "Recomposer:recompose"

    .line 128
    .line 129
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :try_start_5
    invoke-virtual {v3}, Lh33;->K()Z

    .line 133
    .line 134
    .line 135
    iget-object v11, v3, Lh33;->c:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    .line 138
    :try_start_6
    iget-object v12, v3, Lh33;->i:Lug2;

    .line 139
    .line 140
    iget-object v13, v12, Lug2;->n:[Ljava/lang/Object;

    .line 141
    .line 142
    iget v12, v12, Lug2;->p:I

    .line 143
    .line 144
    move v14, v2

    .line 145
    :goto_2
    if-ge v14, v12, :cond_3

    .line 146
    .line 147
    aget-object v15, v13, v14

    .line 148
    .line 149
    check-cast v15, Lec0;

    .line 150
    .line 151
    invoke-interface {v4, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    add-int/lit8 v14, v14, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_2
    move-exception v0

    .line 158
    goto/16 :goto_26

    .line 159
    .line 160
    :cond_3
    iget-object v12, v3, Lh33;->i:Lug2;

    .line 161
    .line 162
    invoke-virtual {v12}, Lug2;->h()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 163
    .line 164
    .line 165
    :try_start_7
    monitor-exit v11

    .line 166
    invoke-virtual {v9}, Llg2;->b()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10}, Llg2;->b()V

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    const/4 v12, 0x0

    .line 177
    if-eqz v11, :cond_15

    .line 178
    .line 179
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-nez v11, :cond_4

    .line 184
    .line 185
    goto/16 :goto_19

    .line 186
    .line 187
    :cond_4
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    instance-of v11, v0, Log2;

    .line 192
    .line 193
    if-eqz v11, :cond_5

    .line 194
    .line 195
    new-instance v13, Ls14;

    .line 196
    .line 197
    move-object v14, v0

    .line 198
    check-cast v14, Log2;

    .line 199
    .line 200
    const/16 v17, 0x1

    .line 201
    .line 202
    const/16 v18, 0x0

    .line 203
    .line 204
    const/4 v15, 0x0

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    invoke-direct/range {v13 .. v18}, Ls14;-><init>(Log2;Lpe1;Lpe1;ZZ)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_5
    new-instance v13, Lt14;

    .line 212
    .line 213
    invoke-direct {v13, v0, v12, v1, v2}, Lt14;-><init>(Lpo3;Lpe1;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    .line 214
    .line 215
    .line 216
    :goto_4
    :try_start_8
    invoke-virtual {v13}, Lpo3;->j()Lpo3;

    .line 217
    .line 218
    .line 219
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 220
    :try_start_9
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 224
    if-nez v0, :cond_8

    .line 225
    .line 226
    :try_start_a
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    move v11, v2

    .line 231
    :goto_5
    if-ge v11, v0, :cond_6

    .line 232
    .line 233
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    check-cast v14, Lec0;

    .line 238
    .line 239
    invoke-virtual {v8, v14}, Llg2;->a(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    add-int/lit8 v11, v11, 0x1

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :catchall_3
    move-exception v0

    .line 246
    goto :goto_7

    .line 247
    :cond_6
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    move v11, v2

    .line 252
    :goto_6
    if-ge v11, v0, :cond_7

    .line 253
    .line 254
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    check-cast v14, Lec0;

    .line 259
    .line 260
    invoke-virtual {v14}, Lec0;->d()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 261
    .line 262
    .line 263
    add-int/lit8 v11, v11, 0x1

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_7
    :try_start_b
    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 267
    .line 268
    .line 269
    goto :goto_8

    .line 270
    :catchall_4
    move-exception v0

    .line 271
    move-object/from16 v22, v1

    .line 272
    .line 273
    move-object/from16 p1, v13

    .line 274
    .line 275
    goto/16 :goto_17

    .line 276
    .line 277
    :goto_7
    :try_start_c
    invoke-virtual {v3, v0, v12}, Lh33;->J(Ljava/lang/Throwable;Lec0;)V

    .line 278
    .line 279
    .line 280
    invoke-static/range {v3 .. v10}, Lg33;->t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 281
    .line 282
    .line 283
    :try_start_d
    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 284
    .line 285
    .line 286
    :try_start_e
    invoke-static {v1}, Lpo3;->q(Lpo3;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 287
    .line 288
    .line 289
    :try_start_f
    invoke-virtual {v13}, Lpo3;->c()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_14

    .line 290
    .line 291
    .line 292
    goto/16 :goto_16

    .line 293
    .line 294
    :catchall_5
    move-exception v0

    .line 295
    move-object/from16 p1, v13

    .line 296
    .line 297
    goto/16 :goto_18

    .line 298
    .line 299
    :catchall_6
    move-exception v0

    .line 300
    :try_start_10
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_8
    :goto_8
    invoke-virtual {v7}, Llg2;->h()Z

    .line 305
    .line 306
    .line 307
    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 308
    const-wide/16 v16, 0xff

    .line 309
    .line 310
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    const/16 p0, 0x7

    .line 316
    .line 317
    const/16 v11, 0x8

    .line 318
    .line 319
    if-eqz v0, :cond_e

    .line 320
    .line 321
    :try_start_11
    invoke-virtual {v8, v7}, Llg2;->j(Llg2;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v7, Llg2;->b:[Ljava/lang/Object;

    .line 325
    .line 326
    const-wide/16 v20, 0x80

    .line 327
    .line 328
    iget-object v14, v7, Llg2;->a:[J

    .line 329
    .line 330
    array-length v15, v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 331
    add-int/lit8 v15, v15, -0x2

    .line 332
    .line 333
    if-ltz v15, :cond_c

    .line 334
    .line 335
    move-object/from16 p1, v13

    .line 336
    .line 337
    :goto_9
    :try_start_12
    aget-wide v12, v14, v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 338
    .line 339
    move-object/from16 v23, v0

    .line 340
    .line 341
    move-object/from16 v22, v1

    .line 342
    .line 343
    not-long v0, v12

    .line 344
    shl-long v0, v0, p0

    .line 345
    .line 346
    and-long/2addr v0, v12

    .line 347
    and-long v0, v0, v18

    .line 348
    .line 349
    cmp-long v0, v0, v18

    .line 350
    .line 351
    if-eqz v0, :cond_b

    .line 352
    .line 353
    sub-int v0, v2, v15

    .line 354
    .line 355
    not-int v0, v0

    .line 356
    ushr-int/lit8 v0, v0, 0x1f

    .line 357
    .line 358
    rsub-int/lit8 v0, v0, 0x8

    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    :goto_a
    if-ge v1, v0, :cond_a

    .line 362
    .line 363
    and-long v24, v12, v16

    .line 364
    .line 365
    cmp-long v24, v24, v20

    .line 366
    .line 367
    if-gez v24, :cond_9

    .line 368
    .line 369
    shl-int/lit8 v24, v2, 0x3

    .line 370
    .line 371
    add-int v24, v24, v1

    .line 372
    .line 373
    :try_start_13
    aget-object v24, v23, v24

    .line 374
    .line 375
    check-cast v24, Lec0;

    .line 376
    .line 377
    invoke-virtual/range {v24 .. v24}, Lec0;->f()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 378
    .line 379
    .line 380
    goto :goto_c

    .line 381
    :catchall_7
    move-exception v0

    .line 382
    :goto_b
    const/4 v1, 0x0

    .line 383
    goto :goto_d

    .line 384
    :cond_9
    :goto_c
    shr-long/2addr v12, v11

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_a
    if-ne v0, v11, :cond_d

    .line 389
    .line 390
    :cond_b
    if-eq v2, v15, :cond_d

    .line 391
    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 393
    .line 394
    move-object/from16 v1, v22

    .line 395
    .line 396
    move-object/from16 v0, v23

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :catchall_8
    move-exception v0

    .line 400
    move-object/from16 v22, v1

    .line 401
    .line 402
    goto :goto_b

    .line 403
    :cond_c
    move-object/from16 v22, v1

    .line 404
    .line 405
    move-object/from16 p1, v13

    .line 406
    .line 407
    :cond_d
    :try_start_14
    invoke-virtual {v7}, Llg2;->b()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 408
    .line 409
    .line 410
    goto :goto_f

    .line 411
    :catchall_9
    move-exception v0

    .line 412
    goto/16 :goto_17

    .line 413
    .line 414
    :catchall_a
    move-exception v0

    .line 415
    move-object/from16 v22, v1

    .line 416
    .line 417
    move-object/from16 p1, v13

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :goto_d
    :try_start_15
    invoke-virtual {v3, v0, v1}, Lh33;->J(Ljava/lang/Throwable;Lec0;)V

    .line 421
    .line 422
    .line 423
    invoke-static/range {v3 .. v10}, Lg33;->t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 424
    .line 425
    .line 426
    :try_start_16
    invoke-virtual {v7}, Llg2;->b()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 427
    .line 428
    .line 429
    :try_start_17
    invoke-static/range {v22 .. v22}, Lpo3;->q(Lpo3;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 430
    .line 431
    .line 432
    :goto_e
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lpo3;->c()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    .line 433
    .line 434
    .line 435
    goto/16 :goto_16

    .line 436
    .line 437
    :catchall_b
    move-exception v0

    .line 438
    goto/16 :goto_18

    .line 439
    .line 440
    :catchall_c
    move-exception v0

    .line 441
    :try_start_19
    invoke-virtual {v7}, Llg2;->b()V

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :cond_e
    move-object/from16 v22, v1

    .line 446
    .line 447
    move-object/from16 p1, v13

    .line 448
    .line 449
    const-wide/16 v20, 0x80

    .line 450
    .line 451
    :goto_f
    invoke-virtual {v8}, Llg2;->h()Z

    .line 452
    .line 453
    .line 454
    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 455
    if-eqz v0, :cond_13

    .line 456
    .line 457
    :try_start_1a
    iget-object v0, v8, Llg2;->b:[Ljava/lang/Object;

    .line 458
    .line 459
    iget-object v1, v8, Llg2;->a:[J

    .line 460
    .line 461
    array-length v2, v1

    .line 462
    add-int/lit8 v2, v2, -0x2

    .line 463
    .line 464
    if-ltz v2, :cond_12

    .line 465
    .line 466
    const/4 v12, 0x0

    .line 467
    :goto_10
    aget-wide v13, v1, v12

    .line 468
    .line 469
    move v15, v11

    .line 470
    move/from16 v23, v12

    .line 471
    .line 472
    not-long v11, v13

    .line 473
    shl-long v11, v11, p0

    .line 474
    .line 475
    and-long/2addr v11, v13

    .line 476
    and-long v11, v11, v18

    .line 477
    .line 478
    cmp-long v11, v11, v18

    .line 479
    .line 480
    if-eqz v11, :cond_11

    .line 481
    .line 482
    sub-int v12, v23, v2

    .line 483
    .line 484
    not-int v11, v12

    .line 485
    ushr-int/lit8 v11, v11, 0x1f

    .line 486
    .line 487
    rsub-int/lit8 v11, v11, 0x8

    .line 488
    .line 489
    const/4 v12, 0x0

    .line 490
    :goto_11
    if-ge v12, v11, :cond_10

    .line 491
    .line 492
    and-long v24, v13, v16

    .line 493
    .line 494
    cmp-long v24, v24, v20

    .line 495
    .line 496
    if-gez v24, :cond_f

    .line 497
    .line 498
    shl-int/lit8 v24, v23, 0x3

    .line 499
    .line 500
    add-int v24, v24, v12

    .line 501
    .line 502
    aget-object v24, v0, v24

    .line 503
    .line 504
    check-cast v24, Lec0;

    .line 505
    .line 506
    invoke-virtual/range {v24 .. v24}, Lec0;->g()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 507
    .line 508
    .line 509
    goto :goto_12

    .line 510
    :catchall_d
    move-exception v0

    .line 511
    const/4 v1, 0x0

    .line 512
    goto :goto_13

    .line 513
    :cond_f
    :goto_12
    shr-long/2addr v13, v15

    .line 514
    add-int/lit8 v12, v12, 0x1

    .line 515
    .line 516
    goto :goto_11

    .line 517
    :cond_10
    if-ne v11, v15, :cond_12

    .line 518
    .line 519
    :cond_11
    move/from16 v11, v23

    .line 520
    .line 521
    if-eq v11, v2, :cond_12

    .line 522
    .line 523
    add-int/lit8 v12, v11, 0x1

    .line 524
    .line 525
    move v11, v15

    .line 526
    goto :goto_10

    .line 527
    :cond_12
    :try_start_1b
    invoke-virtual {v8}, Llg2;->b()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 528
    .line 529
    .line 530
    goto :goto_14

    .line 531
    :goto_13
    :try_start_1c
    invoke-virtual {v3, v0, v1}, Lh33;->J(Ljava/lang/Throwable;Lec0;)V

    .line 532
    .line 533
    .line 534
    invoke-static/range {v3 .. v10}, Lg33;->t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 535
    .line 536
    .line 537
    :try_start_1d
    invoke-virtual {v8}, Llg2;->b()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 538
    .line 539
    .line 540
    :try_start_1e
    invoke-static/range {v22 .. v22}, Lpo3;->q(Lpo3;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 541
    .line 542
    .line 543
    goto :goto_e

    .line 544
    :catchall_e
    move-exception v0

    .line 545
    :try_start_1f
    invoke-virtual {v8}, Llg2;->b()V

    .line 546
    .line 547
    .line 548
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 549
    :cond_13
    :goto_14
    :try_start_20
    invoke-static/range {v22 .. v22}, Lpo3;->q(Lpo3;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 550
    .line 551
    .line 552
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Lpo3;->c()V

    .line 553
    .line 554
    .line 555
    iget-object v1, v3, Lh33;->c:Ljava/lang/Object;

    .line 556
    .line 557
    monitor-enter v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    .line 558
    :try_start_22
    invoke-virtual {v3}, Lh33;->y()Ln20;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-nez v0, :cond_14

    .line 563
    .line 564
    goto :goto_15

    .line 565
    :cond_14
    const-string v0, "unexpected to get continuation here"

    .line 566
    .line 567
    invoke-static {v0}, Lwb0;->a(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 568
    .line 569
    .line 570
    :goto_15
    :try_start_23
    monitor-exit v1

    .line 571
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lpo3;->m()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v10}, Llg2;->b()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v9}, Llg2;->b()V

    .line 582
    .line 583
    .line 584
    const/4 v1, 0x0

    .line 585
    iput-object v1, v3, Lh33;->q:Llg2;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_14

    .line 586
    .line 587
    :goto_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_25

    .line 591
    .line 592
    :catchall_f
    move-exception v0

    .line 593
    :try_start_24
    monitor-exit v1

    .line 594
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    .line 595
    :goto_17
    :try_start_25
    invoke-static/range {v22 .. v22}, Lpo3;->q(Lpo3;)V

    .line 596
    .line 597
    .line 598
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 599
    :goto_18
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Lpo3;->c()V

    .line 600
    .line 601
    .line 602
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    .line 603
    :cond_15
    :goto_19
    :try_start_27
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    const/4 v11, 0x0

    .line 608
    :goto_1a
    if-ge v11, v2, :cond_17

    .line 609
    .line 610
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v12

    .line 614
    check-cast v12, Lec0;

    .line 615
    .line 616
    invoke-virtual {v3, v12, v9}, Lh33;->I(Lec0;Llg2;)Lec0;

    .line 617
    .line 618
    .line 619
    move-result-object v13

    .line 620
    if-eqz v13, :cond_16

    .line 621
    .line 622
    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_1b

    .line 626
    :catchall_10
    move-exception v0

    .line 627
    const/4 v1, 0x0

    .line 628
    goto/16 :goto_24

    .line 629
    .line 630
    :cond_16
    :goto_1b
    invoke-virtual {v10, v12}, Llg2;->a(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 631
    .line 632
    .line 633
    add-int/lit8 v11, v11, 0x1

    .line 634
    .line 635
    goto :goto_1a

    .line 636
    :cond_17
    :try_start_28
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v9}, Llg2;->h()Z

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    if-nez v2, :cond_18

    .line 644
    .line 645
    iget-object v2, v3, Lh33;->i:Lug2;

    .line 646
    .line 647
    iget v2, v2, Lug2;->p:I

    .line 648
    .line 649
    if-eqz v2, :cond_1e

    .line 650
    .line 651
    :cond_18
    iget-object v2, v3, Lh33;->c:Ljava/lang/Object;

    .line 652
    .line 653
    monitor-enter v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    .line 654
    :try_start_29
    invoke-virtual {v3}, Lh33;->D()Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v11

    .line 658
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 659
    .line 660
    .line 661
    move-result v12

    .line 662
    const/4 v13, 0x0

    .line 663
    :goto_1c
    if-ge v13, v12, :cond_1a

    .line 664
    .line 665
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v14

    .line 669
    check-cast v14, Lec0;

    .line 670
    .line 671
    invoke-virtual {v10, v14}, Llg2;->c(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v15

    .line 675
    if-nez v15, :cond_19

    .line 676
    .line 677
    invoke-virtual {v14, v0}, Lec0;->w(Ljava/util/Set;)Z

    .line 678
    .line 679
    .line 680
    move-result v15

    .line 681
    if-eqz v15, :cond_19

    .line 682
    .line 683
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    goto :goto_1d

    .line 687
    :catchall_11
    move-exception v0

    .line 688
    goto/16 :goto_23

    .line 689
    .line 690
    :cond_19
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 691
    .line 692
    goto :goto_1c

    .line 693
    :cond_1a
    iget-object v11, v3, Lh33;->i:Lug2;

    .line 694
    .line 695
    iget v12, v11, Lug2;->p:I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 696
    .line 697
    const/4 v13, 0x0

    .line 698
    const/4 v14, 0x0

    .line 699
    :goto_1e
    iget-object v15, v11, Lug2;->n:[Ljava/lang/Object;

    .line 700
    .line 701
    if-ge v13, v12, :cond_1d

    .line 702
    .line 703
    :try_start_2a
    aget-object v15, v15, v13

    .line 704
    .line 705
    check-cast v15, Lec0;

    .line 706
    .line 707
    invoke-virtual {v10, v15}, Llg2;->c(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v16

    .line 711
    if-nez v16, :cond_1b

    .line 712
    .line 713
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v16

    .line 717
    if-nez v16, :cond_1b

    .line 718
    .line 719
    invoke-interface {v4, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    add-int/lit8 v14, v14, 0x1

    .line 723
    .line 724
    goto :goto_1f

    .line 725
    :cond_1b
    if-lez v14, :cond_1c

    .line 726
    .line 727
    iget-object v15, v11, Lug2;->n:[Ljava/lang/Object;

    .line 728
    .line 729
    sub-int v16, v13, v14

    .line 730
    .line 731
    aget-object v17, v15, v13

    .line 732
    .line 733
    aput-object v17, v15, v16

    .line 734
    .line 735
    :cond_1c
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    .line 736
    .line 737
    goto :goto_1e

    .line 738
    :cond_1d
    sub-int v13, v12, v14

    .line 739
    .line 740
    const/4 v14, 0x0

    .line 741
    invoke-static {v15, v13, v12, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    iput v13, v11, Lug2;->p:I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 745
    .line 746
    :try_start_2b
    monitor-exit v2

    .line 747
    :cond_1e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 748
    .line 749
    .line 750
    move-result v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    .line 751
    if-eqz v2, :cond_20

    .line 752
    .line 753
    :try_start_2c
    invoke-static {v5, v3}, Lg33;->u(Ljava/util/List;Lh33;)V

    .line 754
    .line 755
    .line 756
    :goto_20
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    if-nez v2, :cond_20

    .line 761
    .line 762
    invoke-virtual {v3, v5, v9}, Lh33;->H(Ljava/util/List;Llg2;)Ljava/util/List;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    if-eqz v11, :cond_1f

    .line 778
    .line 779
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v11

    .line 783
    invoke-virtual {v7, v11}, Llg2;->k(Ljava/lang/Object;)V

    .line 784
    .line 785
    .line 786
    goto :goto_21

    .line 787
    :cond_1f
    invoke-static {v5, v3}, Lg33;->u(Ljava/util/List;Lh33;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    .line 788
    .line 789
    .line 790
    goto :goto_20

    .line 791
    :catchall_12
    move-exception v0

    .line 792
    const/4 v1, 0x0

    .line 793
    goto :goto_22

    .line 794
    :cond_20
    const/4 v2, 0x0

    .line 795
    goto/16 :goto_3

    .line 796
    .line 797
    :goto_22
    :try_start_2d
    invoke-virtual {v3, v0, v1}, Lh33;->J(Ljava/lang/Throwable;Lec0;)V

    .line 798
    .line 799
    .line 800
    invoke-static/range {v3 .. v10}, Lg33;->t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_16

    .line 804
    .line 805
    :goto_23
    monitor-exit v2

    .line 806
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 807
    :goto_24
    :try_start_2e
    invoke-virtual {v3, v0, v1}, Lh33;->J(Ljava/lang/Throwable;Lec0;)V

    .line 808
    .line 809
    .line 810
    invoke-static/range {v3 .. v10}, Lg33;->t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    .line 811
    .line 812
    .line 813
    :try_start_2f
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    .line 814
    .line 815
    .line 816
    goto/16 :goto_16

    .line 817
    .line 818
    :goto_25
    sget-object v0, Lt64;->a:Lt64;

    .line 819
    .line 820
    return-object v0

    .line 821
    :catchall_13
    move-exception v0

    .line 822
    :try_start_30
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 823
    .line 824
    .line 825
    throw v0

    .line 826
    :goto_26
    monitor-exit v11

    .line 827
    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_14

    .line 828
    :catchall_14
    move-exception v0

    .line 829
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 830
    .line 831
    .line 832
    throw v0

    .line 833
    :catchall_15
    move-exception v0

    .line 834
    monitor-exit v1

    .line 835
    throw v0

    .line 836
    :pswitch_0
    iget-object v1, v0, Lc4;->o:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v1, Ln1;

    .line 839
    .line 840
    iget-object v2, v0, Lc4;->p:Ljava/lang/Object;

    .line 841
    .line 842
    move-object v7, v2

    .line 843
    check-cast v7, Lps;

    .line 844
    .line 845
    iget-object v2, v0, Lc4;->q:Ljava/lang/Object;

    .line 846
    .line 847
    check-cast v2, Lqi0;

    .line 848
    .line 849
    iget-object v3, v0, Lc4;->r:Ljava/lang/Object;

    .line 850
    .line 851
    move-object v11, v3

    .line 852
    check-cast v11, Lur3;

    .line 853
    .line 854
    iget-object v3, v0, Lc4;->s:Ljava/lang/Object;

    .line 855
    .line 856
    move-object v6, v3

    .line 857
    check-cast v6, Ly3;

    .line 858
    .line 859
    iget-object v3, v0, Lc4;->t:Ljava/lang/Object;

    .line 860
    .line 861
    move-object v4, v3

    .line 862
    check-cast v4, Ljava/lang/String;

    .line 863
    .line 864
    iget-object v3, v0, Lc4;->u:Ljava/lang/Object;

    .line 865
    .line 866
    move-object v5, v3

    .line 867
    check-cast v5, Ln8;

    .line 868
    .line 869
    iget-object v3, v0, Lc4;->v:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v3, Lne1;

    .line 872
    .line 873
    iget-object v0, v0, Lc4;->w:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Lpg2;

    .line 876
    .line 877
    move-object/from16 v8, p1

    .line 878
    .line 879
    check-cast v8, Landroid/content/Context;

    .line 880
    .line 881
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    .line 883
    .line 884
    new-instance v9, Lh4;

    .line 885
    .line 886
    const/4 v10, 0x0

    .line 887
    invoke-direct {v9, v10, v3, v0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    const-string v0, "AccountScreen ["

    .line 891
    .line 892
    const-string v3, "] LOGOUT"

    .line 893
    .line 894
    invoke-static {v0, v4, v3}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    new-instance v3, Ly4;

    .line 899
    .line 900
    const/4 v10, 0x0

    .line 901
    invoke-direct/range {v3 .. v10}, Ly4;-><init>(Ljava/lang/String;Ln8;Ly3;Lps;Landroid/content/Context;Lh4;Ldh0;)V

    .line 902
    .line 903
    .line 904
    invoke-static {v8, v1, v2, v0, v3}, Lxc4;->b(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Lpe1;)Lsc4;

    .line 905
    .line 906
    .line 907
    move-result-object v9

    .line 908
    new-instance v0, Landroid/webkit/WebView;

    .line 909
    .line 910
    invoke-direct {v0, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 911
    .line 912
    .line 913
    new-instance v13, Lt3;

    .line 914
    .line 915
    invoke-direct {v13, v4}, Lt3;-><init>(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    const/16 v14, 0x1c0

    .line 919
    .line 920
    const/4 v12, 0x0

    .line 921
    move-object v8, v0

    .line 922
    move-object v10, v11

    .line 923
    move-object v11, v6

    .line 924
    invoke-static/range {v8 .. v14}, Lix;->m(Landroid/webkit/WebView;Lsc4;Lur3;Ly3;Lsc4;Lt3;I)V

    .line 925
    .line 926
    .line 927
    sget-object v0, Lez3;->a:Lra3;

    .line 928
    .line 929
    const/4 v10, 0x0

    .line 930
    new-array v1, v10, [Ljava/lang/Object;

    .line 931
    .line 932
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    .line 934
    .line 935
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 936
    .line 937
    .line 938
    const-string v0, "https://gemini.google.com"

    .line 939
    .line 940
    invoke-virtual {v8, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    return-object v8

    .line 944
    nop

    .line 945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
