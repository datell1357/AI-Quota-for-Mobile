.class public final Ln63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrm1;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Ln63;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v1}, Lom1;->getRequestLine()Ld73;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lhv;

    .line 12
    .line 13
    iget-object v3, v3, Lhv;->o:Ljava/lang/String;

    .line 14
    .line 15
    const-string v4, "CONNECT"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    invoke-static {v2}, Lrl1;->c(Lul1;)Lrl1;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "http.cookie-store"

    .line 30
    .line 31
    const-class v5, Lth0;

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lth0;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 42
    .line 43
    const-string v1, "Cookie store not specified in HTTP context"

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const-string v5, "http.cookiespec-registry"

    .line 50
    .line 51
    const-class v6, Lr82;

    .line 52
    .line 53
    invoke-virtual {v3, v5, v6}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lr82;

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    iget-object v0, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 62
    .line 63
    const-string v1, "CookieSpec registry not specified in HTTP context"

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string v6, "http.target_host"

    .line 70
    .line 71
    const-class v7, Lem1;

    .line 72
    .line 73
    invoke-virtual {v3, v6, v7}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lem1;

    .line 78
    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    iget-object v0, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 82
    .line 83
    const-string v1, "Target host not set in the context"

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    const-string v7, "http.route"

    .line 90
    .line 91
    const-class v8, Lym1;

    .line 92
    .line 93
    invoke-virtual {v3, v7, v8}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Lua3;

    .line 98
    .line 99
    if-nez v7, :cond_4

    .line 100
    .line 101
    iget-object v0, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 102
    .line 103
    const-string v1, "Connection route not set in the context"

    .line 104
    .line 105
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-virtual {v3}, Lrl1;->d()Lv63;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    iget-object v8, v8, Lv63;->r:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v8, :cond_5

    .line 116
    .line 117
    const-string v8, "default"

    .line 118
    .line 119
    :cond_5
    iget-object v9, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 120
    .line 121
    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_6

    .line 126
    .line 127
    iget-object v9, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 128
    .line 129
    const-string v10, "CookieSpec selected: "

    .line 130
    .line 131
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    instance-of v9, v1, Lan1;

    .line 139
    .line 140
    const/4 v10, 0x0

    .line 141
    if-eqz v9, :cond_7

    .line 142
    .line 143
    move-object v9, v1

    .line 144
    check-cast v9, Lan1;

    .line 145
    .line 146
    invoke-interface {v9}, Lan1;->getURI()Ljava/net/URI;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    goto :goto_0

    .line 151
    :cond_7
    :try_start_0
    new-instance v9, Ljava/net/URI;

    .line 152
    .line 153
    invoke-interface {v1}, Lom1;->getRequestLine()Ld73;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    check-cast v11, Lhv;

    .line 158
    .line 159
    iget-object v11, v11, Lhv;->p:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {v9, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-object v9, v10

    .line 166
    :goto_0
    if-eqz v9, :cond_8

    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    :cond_8
    iget-object v9, v6, Lem1;->n:Ljava/lang/String;

    .line 173
    .line 174
    iget v6, v6, Lem1;->p:I

    .line 175
    .line 176
    if-gez v6, :cond_9

    .line 177
    .line 178
    invoke-interface {v7}, Lua3;->d()Lem1;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iget v6, v6, Lem1;->p:I

    .line 183
    .line 184
    :cond_9
    new-instance v11, Ljh0;

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    if-ltz v6, :cond_a

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_a
    move v6, v12

    .line 191
    :goto_1
    if-nez v10, :cond_b

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-nez v13, :cond_c

    .line 199
    .line 200
    :goto_2
    const-string v10, "/"

    .line 201
    .line 202
    :cond_c
    invoke-interface {v7}, Lua3;->a()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-direct {v11, v9, v10, v6, v7}, Ljh0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v5, v8}, Lr82;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lqh0;

    .line 214
    .line 215
    if-nez v5, :cond_e

    .line 216
    .line 217
    iget-object v1, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 218
    .line 219
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    iget-object v0, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 226
    .line 227
    const-string v1, "Unsupported cookie policy: "

    .line 228
    .line 229
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_d
    :goto_3
    return-void

    .line 237
    :cond_e
    invoke-interface {v5, v3}, Lqh0;->b(Lrl1;)Lnh0;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v4, Lmu;

    .line 242
    .line 243
    iget-object v5, v4, Lmu;->n:Ljava/util/TreeSet;

    .line 244
    .line 245
    iget-object v4, v4, Lmu;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 252
    .line 253
    .line 254
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 264
    .line 265
    .line 266
    new-instance v7, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    new-instance v8, Ljava/util/Date;

    .line 272
    .line 273
    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    move v10, v12

    .line 281
    :goto_4
    if-ge v10, v9, :cond_13

    .line 282
    .line 283
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    add-int/lit8 v10, v10, 0x1

    .line 288
    .line 289
    check-cast v13, Lku;

    .line 290
    .line 291
    invoke-virtual {v13, v8}, Lku;->b(Ljava/util/Date;)Z

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    const-string v15, "Cookie "

    .line 296
    .line 297
    if-nez v14, :cond_11

    .line 298
    .line 299
    invoke-interface {v3, v13, v11}, Lnh0;->b(Lku;Ljh0;)Z

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    if-eqz v14, :cond_10

    .line 304
    .line 305
    iget-object v14, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 306
    .line 307
    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    if-eqz v14, :cond_f

    .line 312
    .line 313
    iget-object v14, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 314
    .line 315
    move-object/from16 v16, v4

    .line 316
    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v15, " match "

    .line 326
    .line 327
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-interface {v14, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_f
    move-object/from16 v16, v4

    .line 342
    .line 343
    :goto_5
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_10
    move-object/from16 v16, v4

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_11
    move-object/from16 v16, v4

    .line 351
    .line 352
    iget-object v4, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 353
    .line 354
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-eqz v4, :cond_12

    .line 359
    .line 360
    iget-object v4, v0, Ln63;->n:Lorg/apache/commons/logging/Log;

    .line 361
    .line 362
    new-instance v12, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v13, " expired"

    .line 371
    .line 372
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    invoke-interface {v4, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_12
    const/4 v4, 0x1

    .line 383
    move v12, v4

    .line 384
    :goto_6
    move-object/from16 v4, v16

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_13
    move-object/from16 v16, v4

    .line 388
    .line 389
    if-eqz v12, :cond_16

    .line 390
    .line 391
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 396
    .line 397
    .line 398
    :try_start_2
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    :cond_14
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_15

    .line 407
    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Lku;

    .line 413
    .line 414
    invoke-virtual {v4, v8}, Lku;->b(Ljava/util/Date;)Z

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    if-eqz v4, :cond_14

    .line 419
    .line 420
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    .line 422
    .line 423
    goto :goto_7

    .line 424
    :catchall_0
    move-exception v0

    .line 425
    goto :goto_8

    .line 426
    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    .line 432
    .line 433
    goto :goto_9

    .line 434
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :cond_16
    :goto_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-nez v0, :cond_17

    .line 447
    .line 448
    invoke-interface {v3, v7}, Lnh0;->c(Ljava/util/ArrayList;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_17

    .line 461
    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    check-cast v4, Lgj1;

    .line 467
    .line 468
    invoke-interface {v1, v4}, Lim1;->addHeader(Lgj1;)V

    .line 469
    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_17
    invoke-interface {v3}, Lnh0;->f()I

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-lez v0, :cond_18

    .line 477
    .line 478
    invoke-interface {v3}, Lnh0;->d()Lgj1;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    if-eqz v0, :cond_18

    .line 483
    .line 484
    invoke-interface {v1, v0}, Lim1;->addHeader(Lgj1;)V

    .line 485
    .line 486
    .line 487
    :cond_18
    const-string v0, "http.cookie-spec"

    .line 488
    .line 489
    invoke-interface {v2, v3, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v0, "http.cookie-origin"

    .line 493
    .line 494
    invoke-interface {v2, v11, v0}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-void

    .line 498
    :catchall_1
    move-exception v0

    .line 499
    move-object/from16 v16, v4

    .line 500
    .line 501
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 506
    .line 507
    .line 508
    throw v0
.end method
