.class public final Lol1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lqb3;

.field public b:Lax2;

.field public c:Lsv3;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public final a()Let1;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lfo0;->t:Lfo0;

    .line 4
    .line 5
    invoke-static {}, Lu03;->a()Lzw2;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v4, Lqm1;

    .line 10
    .line 11
    invoke-direct {v4}, Lqm1;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lol1;->b:Lax2;

    .line 15
    .line 16
    const/4 v10, 0x2

    .line 17
    const-string v5, "http.keepAlive"

    .line 18
    .line 19
    const-string v11, "ID"

    .line 20
    .line 21
    const-string v6, "true"

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-nez v3, :cond_a

    .line 25
    .line 26
    iget-object v3, v0, Lol1;->a:Lqb3;

    .line 27
    .line 28
    if-nez v3, :cond_5

    .line 29
    .line 30
    iget-boolean v3, v0, Lol1;->d:Z

    .line 31
    .line 32
    const-string v8, " *, *"

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v3, "https.protocols"

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lht4;->v(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move-object v3, v7

    .line 55
    :goto_1
    iget-boolean v9, v0, Lol1;->d:Z

    .line 56
    .line 57
    if-eqz v9, :cond_3

    .line 58
    .line 59
    const-string v9, "https.cipherSuites"

    .line 60
    .line 61
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v9}, Lht4;->v(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-eqz v12, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    :goto_2
    move-object v8, v7

    .line 78
    :goto_3
    new-instance v9, Lzo0;

    .line 79
    .line 80
    invoke-direct {v9, v2}, Lzo0;-><init>(Lzw2;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v12, v0, Lol1;->d:Z

    .line 84
    .line 85
    if-eqz v12, :cond_4

    .line 86
    .line 87
    new-instance v12, Lqb3;

    .line 88
    .line 89
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    check-cast v13, Ljavax/net/ssl/SSLSocketFactory;

    .line 94
    .line 95
    invoke-direct {v12, v13, v3, v8, v9}, Lqb3;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lzo0;)V

    .line 96
    .line 97
    .line 98
    move-object v3, v12

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    new-instance v3, Lqb3;

    .line 101
    .line 102
    invoke-static {}, Ldm0;->t()Ljavax/net/ssl/SSLContext;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-direct {v3, v8, v9}, Lqb3;-><init>(Ljavax/net/ssl/SSLContext;Lzo0;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_4
    new-instance v8, Lax2;

    .line 110
    .line 111
    new-instance v9, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v12, "http"

    .line 117
    .line 118
    invoke-static {v12, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    sget-object v14, Lhv2;->n:Lhv2;

    .line 128
    .line 129
    invoke-virtual {v9, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string v12, "https"

    .line 133
    .line 134
    invoke-static {v12, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-virtual {v9, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    new-instance v3, Ly43;

    .line 145
    .line 146
    invoke-direct {v3, v9}, Ly43;-><init>(Ljava/util/HashMap;)V

    .line 147
    .line 148
    .line 149
    iget-object v9, v0, Lol1;->i:Ljava/util/concurrent/TimeUnit;

    .line 150
    .line 151
    if-eqz v9, :cond_6

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    .line 156
    :goto_5
    invoke-direct {v8, v3, v9}, Lax2;-><init>(Ly43;Ljava/util/concurrent/TimeUnit;)V

    .line 157
    .line 158
    .line 159
    iget-boolean v3, v0, Lol1;->d:Z

    .line 160
    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_7

    .line 172
    .line 173
    const-string v3, "http.maxConnections"

    .line 174
    .line 175
    const-string v9, "5"

    .line 176
    .line 177
    invoke-static {v3, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual {v8, v3}, Lax2;->F(I)V

    .line 186
    .line 187
    .line 188
    mul-int/2addr v3, v10

    .line 189
    invoke-virtual {v8, v3}, Lax2;->K(I)V

    .line 190
    .line 191
    .line 192
    :cond_7
    iget v3, v0, Lol1;->g:I

    .line 193
    .line 194
    if-lez v3, :cond_8

    .line 195
    .line 196
    invoke-virtual {v8, v3}, Lax2;->K(I)V

    .line 197
    .line 198
    .line 199
    :cond_8
    iget v3, v0, Lol1;->h:I

    .line 200
    .line 201
    if-lez v3, :cond_9

    .line 202
    .line 203
    invoke-virtual {v8, v3}, Lax2;->F(I)V

    .line 204
    .line 205
    .line 206
    :cond_9
    move-object v14, v8

    .line 207
    goto :goto_6

    .line 208
    :cond_a
    move-object v14, v3

    .line 209
    :goto_6
    iget-boolean v3, v0, Lol1;->d:Z

    .line 210
    .line 211
    if-eqz v3, :cond_c

    .line 212
    .line 213
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_b

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_b
    sget-object v1, Lmj1;->a0:Lmj1;

    .line 225
    .line 226
    :cond_c
    :goto_7
    move-object v6, v1

    .line 227
    sget-object v8, Lkw3;->e:Lkw3;

    .line 228
    .line 229
    sget-object v9, Lo03;->e:Lo03;

    .line 230
    .line 231
    iget-boolean v1, v0, Lol1;->d:Z

    .line 232
    .line 233
    if-eqz v1, :cond_d

    .line 234
    .line 235
    const-string v1, "http.agent"

    .line 236
    .line 237
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    goto :goto_8

    .line 242
    :cond_d
    move-object v1, v7

    .line 243
    :goto_8
    if-nez v1, :cond_e

    .line 244
    .line 245
    const-class v1, Lol1;

    .line 246
    .line 247
    invoke-static {v1}, Lrp;->j(Ljava/lang/Class;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    :cond_e
    new-instance v3, Lfp1;

    .line 252
    .line 253
    new-instance v5, Lw63;

    .line 254
    .line 255
    const/4 v12, 0x4

    .line 256
    invoke-direct {v5, v12}, Lw63;-><init>(I)V

    .line 257
    .line 258
    .line 259
    new-instance v13, Lm63;

    .line 260
    .line 261
    invoke-direct {v13, v1}, Lm63;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-array v15, v10, [Lrm1;

    .line 265
    .line 266
    move/from16 v16, v10

    .line 267
    .line 268
    const/4 v10, 0x0

    .line 269
    aput-object v5, v15, v10

    .line 270
    .line 271
    const/4 v5, 0x1

    .line 272
    aput-object v13, v15, v5

    .line 273
    .line 274
    invoke-direct {v3, v15, v7}, Lfp1;-><init>([Lrm1;[Lwm1;)V

    .line 275
    .line 276
    .line 277
    move-object v7, v3

    .line 278
    new-instance v3, Lm92;

    .line 279
    .line 280
    move v13, v5

    .line 281
    move-object v5, v14

    .line 282
    invoke-direct/range {v3 .. v9}, Lm92;-><init>(Lqm1;Lql1;Lie0;Lfp1;Lyj;Lyj;)V

    .line 283
    .line 284
    .line 285
    new-instance v4, Lw63;

    .line 286
    .line 287
    invoke-direct {v4, v13}, Lw63;-><init>(I)V

    .line 288
    .line 289
    .line 290
    new-instance v6, Lw63;

    .line 291
    .line 292
    invoke-direct {v6, v10}, Lw63;-><init>(I)V

    .line 293
    .line 294
    .line 295
    new-instance v7, Lw63;

    .line 296
    .line 297
    invoke-direct {v7, v12}, Lw63;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-instance v8, Lt63;

    .line 301
    .line 302
    invoke-direct {v8}, Lt63;-><init>()V

    .line 303
    .line 304
    .line 305
    new-instance v9, Lm63;

    .line 306
    .line 307
    invoke-direct {v9, v1}, Lm63;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lw63;

    .line 311
    .line 312
    const/4 v14, 0x3

    .line 313
    invoke-direct {v1, v14}, Lw63;-><init>(I)V

    .line 314
    .line 315
    .line 316
    const/4 v15, 0x6

    .line 317
    move/from16 v17, v12

    .line 318
    .line 319
    new-array v12, v15, [Lrm1;

    .line 320
    .line 321
    aput-object v4, v12, v10

    .line 322
    .line 323
    aput-object v6, v12, v13

    .line 324
    .line 325
    aput-object v7, v12, v16

    .line 326
    .line 327
    aput-object v8, v12, v14

    .line 328
    .line 329
    aput-object v9, v12, v17

    .line 330
    .line 331
    const/4 v4, 0x5

    .line 332
    aput-object v1, v12, v4

    .line 333
    .line 334
    new-instance v1, Lgw4;

    .line 335
    .line 336
    const/16 v4, 0x9

    .line 337
    .line 338
    invoke-direct {v1, v4}, Lgw4;-><init>(I)V

    .line 339
    .line 340
    .line 341
    move v6, v10

    .line 342
    :goto_9
    if-ge v6, v15, :cond_11

    .line 343
    .line 344
    aget-object v7, v12, v6

    .line 345
    .line 346
    iget-object v8, v1, Lgw4;->o:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v8, Ljava/util/LinkedList;

    .line 349
    .line 350
    if-nez v7, :cond_f

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_f
    iget-object v9, v1, Lgw4;->p:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v9, Ljava/util/HashMap;

    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    move-result-object v15

    .line 361
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    if-eqz v15, :cond_10

    .line 366
    .line 367
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    invoke-virtual {v9, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 381
    .line 382
    const/4 v15, 0x6

    .line 383
    goto :goto_9

    .line 384
    :cond_11
    new-instance v6, Ln63;

    .line 385
    .line 386
    invoke-direct {v6}, Ln63;-><init>()V

    .line 387
    .line 388
    .line 389
    iget-object v7, v1, Lgw4;->o:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v7, Ljava/util/LinkedList;

    .line 392
    .line 393
    iget-object v8, v1, Lgw4;->p:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v8, Ljava/util/HashMap;

    .line 396
    .line 397
    const-class v9, Ln63;

    .line 398
    .line 399
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    if-eqz v12, :cond_12

    .line 404
    .line 405
    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    :cond_12
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    new-instance v6, Lm63;

    .line 415
    .line 416
    invoke-direct {v6}, Lm63;-><init>()V

    .line 417
    .line 418
    .line 419
    iget-object v7, v1, Lgw4;->o:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v7, Ljava/util/LinkedList;

    .line 422
    .line 423
    iget-object v8, v1, Lgw4;->p:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v8, Ljava/util/HashMap;

    .line 426
    .line 427
    const-class v9, Lm63;

    .line 428
    .line 429
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    if-eqz v12, :cond_13

    .line 434
    .line 435
    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    :cond_13
    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    new-instance v6, Lo63;

    .line 445
    .line 446
    invoke-direct {v6}, Lo63;-><init>()V

    .line 447
    .line 448
    .line 449
    iget-object v7, v1, Lgw4;->o:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v7, Ljava/util/LinkedList;

    .line 452
    .line 453
    iget-object v1, v1, Lgw4;->p:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v1, Ljava/util/HashMap;

    .line 456
    .line 457
    const-class v8, Lo63;

    .line 458
    .line 459
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    if-eqz v9, :cond_14

    .line 464
    .line 465
    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    :cond_14
    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Lb83;

    .line 475
    .line 476
    invoke-direct {v1}, Lb83;-><init>()V

    .line 477
    .line 478
    .line 479
    new-instance v6, Lgw4;

    .line 480
    .line 481
    invoke-direct {v6, v4}, Lgw4;-><init>(I)V

    .line 482
    .line 483
    .line 484
    iget-object v4, v6, Lgw4;->o:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v4, Ljava/util/LinkedList;

    .line 487
    .line 488
    iget-object v8, v6, Lgw4;->p:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v8, Ljava/util/HashMap;

    .line 491
    .line 492
    const-class v9, Lb83;

    .line 493
    .line 494
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    if-eqz v12, :cond_15

    .line 499
    .line 500
    invoke-virtual {v4, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    :cond_15
    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    new-instance v1, Lz73;

    .line 510
    .line 511
    invoke-direct {v1}, Lz73;-><init>()V

    .line 512
    .line 513
    .line 514
    iget-object v4, v6, Lgw4;->o:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v4, Ljava/util/LinkedList;

    .line 517
    .line 518
    iget-object v6, v6, Lgw4;->p:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v6, Ljava/util/HashMap;

    .line 521
    .line 522
    const-class v8, Lz73;

    .line 523
    .line 524
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    if-eqz v9, :cond_16

    .line 529
    .line 530
    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    :cond_16
    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    new-instance v1, Lfp1;

    .line 540
    .line 541
    new-instance v6, Ljava/util/LinkedList;

    .line 542
    .line 543
    invoke-direct {v6, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 544
    .line 545
    .line 546
    new-instance v7, Ljava/util/LinkedList;

    .line 547
    .line 548
    invoke-direct {v7, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 549
    .line 550
    .line 551
    invoke-direct {v1, v6, v7}, Lfp1;-><init>(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 552
    .line 553
    .line 554
    new-instance v4, Lf03;

    .line 555
    .line 556
    invoke-direct {v4, v3, v1}, Lf03;-><init>(Lm92;Lfp1;)V

    .line 557
    .line 558
    .line 559
    iget-boolean v1, v0, Lol1;->f:Z

    .line 560
    .line 561
    if-nez v1, :cond_17

    .line 562
    .line 563
    sget-object v1, Lcp0;->c:Lcp0;

    .line 564
    .line 565
    new-instance v3, Lm83;

    .line 566
    .line 567
    invoke-direct {v3, v4, v1}, Lm83;-><init>(Lf03;Lsm1;)V

    .line 568
    .line 569
    .line 570
    move-object v4, v3

    .line 571
    :cond_17
    iget-object v1, v0, Lol1;->c:Lsv3;

    .line 572
    .line 573
    if-nez v1, :cond_19

    .line 574
    .line 575
    sget-object v1, Lmj1;->K:Lmj1;

    .line 576
    .line 577
    iget-boolean v3, v0, Lol1;->d:Z

    .line 578
    .line 579
    if-eqz v3, :cond_18

    .line 580
    .line 581
    new-instance v3, Lsv3;

    .line 582
    .line 583
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-direct {v3, v1, v6}, Lsv3;-><init>(Lmj1;Ljava/net/ProxySelector;)V

    .line 588
    .line 589
    .line 590
    :goto_b
    move-object v15, v3

    .line 591
    goto :goto_c

    .line 592
    :cond_18
    new-instance v3, Lbx3;

    .line 593
    .line 594
    invoke-direct {v3, v1}, Lbx3;-><init>(Lmj1;)V

    .line 595
    .line 596
    .line 597
    goto :goto_b

    .line 598
    :cond_19
    move-object v15, v1

    .line 599
    :goto_c
    iget-boolean v1, v0, Lol1;->e:Z

    .line 600
    .line 601
    if-nez v1, :cond_1a

    .line 602
    .line 603
    sget-object v1, Lwp0;->p:Lwp0;

    .line 604
    .line 605
    new-instance v3, Lo33;

    .line 606
    .line 607
    invoke-direct {v3, v4, v15, v1}, Lo33;-><init>(Lj60;Lzm1;Lr33;)V

    .line 608
    .line 609
    .line 610
    move-object v4, v3

    .line 611
    :cond_1a
    new-instance v1, Ljava/util/HashMap;

    .line 612
    .line 613
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 614
    .line 615
    .line 616
    new-instance v3, Ljv;

    .line 617
    .line 618
    invoke-direct {v3, v10}, Ljv;-><init>(I)V

    .line 619
    .line 620
    .line 621
    const-string v6, "Basic"

    .line 622
    .line 623
    invoke-static {v6, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 627
    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    new-instance v3, Ljv;

    .line 636
    .line 637
    invoke-direct {v3, v13}, Ljv;-><init>(I)V

    .line 638
    .line 639
    .line 640
    const-string v6, "Digest"

    .line 641
    .line 642
    invoke-static {v6, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 646
    .line 647
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    new-instance v3, Ljv;

    .line 655
    .line 656
    invoke-direct {v3, v14}, Ljv;-><init>(I)V

    .line 657
    .line 658
    .line 659
    const-string v6, "NTLM"

    .line 660
    .line 661
    invoke-static {v6, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 665
    .line 666
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v6

    .line 670
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    new-instance v3, Ljv;

    .line 674
    .line 675
    move/from16 v6, v17

    .line 676
    .line 677
    invoke-direct {v3, v6}, Ljv;-><init>(I)V

    .line 678
    .line 679
    .line 680
    const-string v6, "Negotiate"

    .line 681
    .line 682
    invoke-static {v6, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 686
    .line 687
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v6

    .line 691
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    new-instance v3, Ljv;

    .line 695
    .line 696
    move/from16 v6, v16

    .line 697
    .line 698
    invoke-direct {v3, v6}, Ljv;-><init>(I)V

    .line 699
    .line 700
    .line 701
    const-string v7, "Kerberos"

    .line 702
    .line 703
    invoke-static {v7, v11}, Lw80;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 707
    .line 708
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    new-instance v3, Ly43;

    .line 716
    .line 717
    invoke-direct {v3, v1}, Ly43;-><init>(Ljava/util/HashMap;)V

    .line 718
    .line 719
    .line 720
    new-instance v1, Lio0;

    .line 721
    .line 722
    invoke-direct {v1, v2}, Lio0;-><init>(Lzw2;)V

    .line 723
    .line 724
    .line 725
    new-instance v7, Lo13;

    .line 726
    .line 727
    invoke-direct {v7, v6, v2}, Lo13;-><init>(ILzw2;)V

    .line 728
    .line 729
    .line 730
    new-instance v6, Lo13;

    .line 731
    .line 732
    invoke-direct {v6, v13, v2}, Lo13;-><init>(ILzw2;)V

    .line 733
    .line 734
    .line 735
    new-instance v2, Ldd1;

    .line 736
    .line 737
    const/16 v8, 0xc

    .line 738
    .line 739
    invoke-direct {v2, v8}, Ldd1;-><init>(I)V

    .line 740
    .line 741
    .line 742
    const-string v8, "default"

    .line 743
    .line 744
    invoke-virtual {v2, v1, v8}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const-string v8, "best-match"

    .line 748
    .line 749
    invoke-virtual {v2, v1, v8}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    const-string v8, "compatibility"

    .line 753
    .line 754
    invoke-virtual {v2, v1, v8}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    const-string v1, "standard"

    .line 758
    .line 759
    invoke-virtual {v2, v7, v1}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    const-string v1, "standard-strict"

    .line 763
    .line 764
    invoke-virtual {v2, v6, v1}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    new-instance v1, Lyn1;

    .line 768
    .line 769
    invoke-direct {v1, v13}, Lyn1;-><init>(I)V

    .line 770
    .line 771
    .line 772
    const-string v6, "netscape"

    .line 773
    .line 774
    invoke-virtual {v2, v1, v6}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    new-instance v1, Lyn1;

    .line 778
    .line 779
    invoke-direct {v1, v10}, Lyn1;-><init>(I)V

    .line 780
    .line 781
    .line 782
    const-string v6, "ignoreCookies"

    .line 783
    .line 784
    invoke-virtual {v2, v1, v6}, Ldd1;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    new-instance v1, Ly43;

    .line 788
    .line 789
    iget-object v2, v2, Ldd1;->o:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v2, Ljava/util/HashMap;

    .line 792
    .line 793
    invoke-direct {v1, v2}, Ly43;-><init>(Ljava/util/HashMap;)V

    .line 794
    .line 795
    .line 796
    new-instance v18, Lmu;

    .line 797
    .line 798
    invoke-direct/range {v18 .. v18}, Lmu;-><init>()V

    .line 799
    .line 800
    .line 801
    iget-boolean v0, v0, Lol1;->d:Z

    .line 802
    .line 803
    if-eqz v0, :cond_1b

    .line 804
    .line 805
    new-instance v0, Lpv3;

    .line 806
    .line 807
    invoke-direct {v0}, Lpv3;-><init>()V

    .line 808
    .line 809
    .line 810
    :goto_d
    move-object/from16 v19, v0

    .line 811
    .line 812
    goto :goto_e

    .line 813
    :cond_1b
    new-instance v0, Lnu;

    .line 814
    .line 815
    invoke-direct {v0}, Lnu;-><init>()V

    .line 816
    .line 817
    .line 818
    goto :goto_d

    .line 819
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    .line 820
    .line 821
    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 822
    .line 823
    .line 824
    new-instance v2, Lel0;

    .line 825
    .line 826
    invoke-direct {v2, v5}, Lel0;-><init>(Lql1;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    new-instance v12, Let1;

    .line 833
    .line 834
    move-object/from16 v20, v0

    .line 835
    .line 836
    move-object/from16 v16, v1

    .line 837
    .line 838
    move-object/from16 v17, v3

    .line 839
    .line 840
    move-object v13, v4

    .line 841
    move-object v14, v5

    .line 842
    invoke-direct/range {v12 .. v20}, Let1;-><init>(Lj60;Lql1;Lzm1;Ly43;Ly43;Lmu;Lzk0;Ljava/util/ArrayList;)V

    .line 843
    .line 844
    .line 845
    return-object v12
.end method
