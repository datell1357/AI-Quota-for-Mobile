.class public final synthetic Lya5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lqb5;


# direct methods
.method public synthetic constructor <init>(Lqb5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya5;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lya5;->o:Lqb5;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lya5;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lya5;->o:Lqb5;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lqb5;->a()Lic;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v3, v1, Lic;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, v0, Lqb5;->b:Lo75;

    .line 20
    .line 21
    iget-object v5, v4, Lo75;->d:Lcu3;

    .line 22
    .line 23
    iget-object v6, v4, Lo75;->g:Lyc5;

    .line 24
    .line 25
    invoke-virtual {v6}, Lyc5;->b()Lpc5;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-boolean v7, v6, Lpc5;->i:Z

    .line 30
    .line 31
    iget-boolean v6, v6, Lpc5;->j:Z

    .line 32
    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    invoke-static {v3}, Lzf5;->V(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    if-nez v7, :cond_0

    .line 42
    .line 43
    sget-object v0, Lap1;->o:Lap1;

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_0
    invoke-static {}, Ll85;->u()Lg85;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v1, v1, Lic;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, La13;

    .line 54
    .line 55
    iget v8, v1, La13;->b:I

    .line 56
    .line 57
    invoke-static {}, Lj85;->t()Li85;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-virtual {v9}, Lpn4;->b()V

    .line 62
    .line 63
    .line 64
    iget-object v10, v9, Lpn4;->o:Lrn4;

    .line 65
    .line 66
    check-cast v10, Lj85;

    .line 67
    .line 68
    invoke-virtual {v10, v8}, Lj85;->u(I)V

    .line 69
    .line 70
    .line 71
    iget v1, v1, La13;->c:I

    .line 72
    .line 73
    invoke-virtual {v9}, Lpn4;->b()V

    .line 74
    .line 75
    .line 76
    iget-object v8, v9, Lpn4;->o:Lrn4;

    .line 77
    .line 78
    check-cast v8, Lj85;

    .line 79
    .line 80
    invoke-virtual {v8, v1}, Lj85;->v(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Lpn4;->d()Lrn4;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lj85;

    .line 88
    .line 89
    invoke-virtual {v6}, Lpn4;->b()V

    .line 90
    .line 91
    .line 92
    iget-object v8, v6, Lpn4;->o:Lrn4;

    .line 93
    .line 94
    check-cast v8, Ll85;

    .line 95
    .line 96
    invoke-virtual {v8, v1}, Ll85;->w(Lj85;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lzf5;->V(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_1

    .line 104
    .line 105
    invoke-virtual {v6}, Lpn4;->b()V

    .line 106
    .line 107
    .line 108
    iget-object v1, v6, Lpn4;->o:Lrn4;

    .line 109
    .line 110
    check-cast v1, Ll85;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ll85;->v(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    if-eqz v7, :cond_2

    .line 116
    .line 117
    iget-object v1, v0, Lqb5;->c:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v6}, Lpn4;->b()V

    .line 120
    .line 121
    .line 122
    iget-object v3, v6, Lpn4;->o:Lrn4;

    .line 123
    .line 124
    check-cast v3, Ll85;

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ll85;->x(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-interface {v5}, Lcu3;->get()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lx85;

    .line 134
    .line 135
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Ll85;

    .line 140
    .line 141
    iget-object v1, v1, Lx85;->a:Lw65;

    .line 142
    .line 143
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    new-instance v6, Lra3;

    .line 148
    .line 149
    const/16 v7, 0x13

    .line 150
    .line 151
    invoke-direct {v6, v7, v3}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    sget-object v6, La65;->a:Lcom/google/android/gms/common/Feature;

    .line 159
    .line 160
    filled-new-array {v6}, [Lcom/google/android/gms/common/Feature;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Low3;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    sget-object v6, Lfu0;->n:Lfu0;

    .line 181
    .line 182
    new-instance v7, Lpc4;

    .line 183
    .line 184
    const/16 v8, 0x10

    .line 185
    .line 186
    invoke-direct {v7, v8, v1, v3}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v6, v7}, Low3;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1}, Lx85;->b(Low3;)Li;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    goto :goto_0

    .line 198
    :cond_3
    invoke-static {v3}, Lzf5;->V(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_4

    .line 203
    .line 204
    sget-object v0, Lap1;->o:Lap1;

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_4
    invoke-interface {v5}, Lcu3;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lx85;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v1, v1, Lx85;->a:Lw65;

    .line 220
    .line 221
    invoke-virtual {v1, v3}, Lw65;->a(Ljava/lang/String;)Low3;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v1}, Lx85;->b(Low3;)Li;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :goto_0
    new-instance v3, Lbb5;

    .line 230
    .line 231
    invoke-direct {v3, v2, v0}, Lbb5;-><init>(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Lo75;->a()Lwd2;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-class v2, Lt85;

    .line 239
    .line 240
    invoke-static {v1, v2, v3, v0}, Ltf1;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lqi;Ljava/util/concurrent/Executor;)Li;

    .line 241
    .line 242
    .line 243
    :goto_1
    return-void

    .line 244
    :pswitch_0
    iget-object v1, v0, Lqb5;->b:Lo75;

    .line 245
    .line 246
    iget-object v1, v1, Lo75;->i:Llc5;

    .line 247
    .line 248
    iget-boolean v0, v0, Lqb5;->e:Z

    .line 249
    .line 250
    sget-object v3, Lfb5;->a:Lfb5;

    .line 251
    .line 252
    iget-object v4, v1, Llc5;->c:Lcu3;

    .line 253
    .line 254
    invoke-interface {v4}, Lcu3;->get()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    check-cast v4, Loc5;

    .line 259
    .line 260
    if-nez v4, :cond_5

    .line 261
    .line 262
    if-nez v0, :cond_5

    .line 263
    .line 264
    sget-object v0, Lap1;->o:Lap1;

    .line 265
    .line 266
    goto/16 :goto_8

    .line 267
    .line 268
    :cond_5
    iget v0, v1, Llc5;->e:I

    .line 269
    .line 270
    and-int/lit8 v0, v0, 0x40

    .line 271
    .line 272
    if-nez v0, :cond_7

    .line 273
    .line 274
    iget-object v5, v1, Llc5;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 275
    .line 276
    monitor-enter v5

    .line 277
    :try_start_0
    iget v0, v1, Llc5;->e:I

    .line 278
    .line 279
    and-int/lit8 v6, v0, 0x40

    .line 280
    .line 281
    if-nez v6, :cond_6

    .line 282
    .line 283
    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    or-int/lit8 v0, v0, 0x40

    .line 287
    .line 288
    iput v0, v1, Llc5;->e:I

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :catchall_0
    move-exception v0

    .line 292
    goto :goto_3

    .line 293
    :cond_6
    :goto_2
    monitor-exit v5

    .line 294
    goto :goto_4

    .line 295
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    throw v0

    .line 297
    :cond_7
    :goto_4
    iget-object v0, v1, Llc5;->h:Ln91;

    .line 298
    .line 299
    if-nez v0, :cond_b

    .line 300
    .line 301
    iget-object v3, v1, Llc5;->g:Ljava/lang/Object;

    .line 302
    .line 303
    monitor-enter v3

    .line 304
    :try_start_1
    iget-object v0, v1, Llc5;->h:Ln91;

    .line 305
    .line 306
    if-nez v0, :cond_a

    .line 307
    .line 308
    if-nez v4, :cond_8

    .line 309
    .line 310
    sget-object v4, Ljc5;->a:Ljc5;

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :catchall_1
    move-exception v0

    .line 314
    goto :goto_7

    .line 315
    :cond_8
    :goto_5
    iget-object v0, v1, Llc5;->a:Landroid/content/Context;

    .line 316
    .line 317
    invoke-static {v0}, Lc75;->W(Landroid/content/Context;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-nez v5, :cond_9

    .line 322
    .line 323
    sget-object v5, Lf20;->o:Lf20;

    .line 324
    .line 325
    iget-object v6, v1, Llc5;->b:Lcu3;

    .line 326
    .line 327
    invoke-interface {v6}, Lcu3;->get()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 332
    .line 333
    const/4 v8, 0x0

    .line 334
    invoke-static {v5, v8}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-static {v0, v5, v7}, Lc75;->V(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ls0;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v5, Lic5;

    .line 343
    .line 344
    invoke-direct {v5, v2, v1, v4}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v6}, Lcu3;->get()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 352
    .line 353
    invoke-static {v0, v5, v2}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    iput-object v0, v1, Llc5;->h:Ln91;

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_9
    iget-object v0, v1, Llc5;->d:Lcu3;

    .line 361
    .line 362
    invoke-interface {v0}, Lcu3;->get()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lx85;

    .line 367
    .line 368
    new-instance v2, Lkc5;

    .line 369
    .line 370
    invoke-direct {v2, v1, v4}, Lkc5;-><init>(Llc5;Loc5;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v2}, Lx85;->a(Lkc5;)Li;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iput-object v0, v1, Llc5;->h:Ln91;

    .line 378
    .line 379
    :goto_6
    new-instance v2, Lo9;

    .line 380
    .line 381
    const/16 v4, 0x17

    .line 382
    .line 383
    invoke-direct {v2, v4, v0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v1, Llc5;->b:Lcu3;

    .line 387
    .line 388
    invoke-interface {v1}, Lcu3;->get()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 393
    .line 394
    invoke-virtual {v0, v2, v1}, Ls0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 395
    .line 396
    .line 397
    :cond_a
    monitor-exit v3

    .line 398
    goto :goto_8

    .line 399
    :goto_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 400
    throw v0

    .line 401
    :cond_b
    :goto_8
    return-void

    .line 402
    :pswitch_1
    iget-object v1, v0, Lqb5;->b:Lo75;

    .line 403
    .line 404
    iget-object v3, v0, Lqb5;->c:Ljava/lang/String;

    .line 405
    .line 406
    sget-object v4, Ldc5;->a:Loe5;

    .line 407
    .line 408
    sget-object v4, Lbx3;->s:Lbx3;

    .line 409
    .line 410
    iget-object v5, v1, Lo75;->b:Landroid/content/Context;

    .line 411
    .line 412
    sget-object v6, Lld5;->a:Ljava/util/regex/Pattern;

    .line 413
    .line 414
    new-instance v6, Lhg;

    .line 415
    .line 416
    invoke-direct {v6, v5}, Lhg;-><init>(Landroid/content/Context;)V

    .line 417
    .line 418
    .line 419
    const-string v5, "phenotype"

    .line 420
    .line 421
    invoke-virtual {v6, v5}, Lhg;->v(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const-string v5, "all_accounts.pb"

    .line 425
    .line 426
    invoke-virtual {v6, v5}, Lhg;->w(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6}, Lhg;->x()Landroid/net/Uri;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    if-eqz v5, :cond_18

    .line 434
    .line 435
    invoke-static {}, Laa5;->u()Laa5;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    if-eqz v6, :cond_17

    .line 440
    .line 441
    sget-object v7, Ldc5;->a:Loe5;

    .line 442
    .line 443
    new-instance v14, Lfy2;

    .line 444
    .line 445
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-direct {v14, v7}, Lfy2;-><init>(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    sget-object v7, Llp1;->o:Lhp1;

    .line 452
    .line 453
    sget-object v7, Lz43;->r:Lz43;

    .line 454
    .line 455
    new-instance v8, Lae5;

    .line 456
    .line 457
    invoke-direct {v8, v5, v6, v14, v7}, Lae5;-><init>(Landroid/net/Uri;Laa5;Lfy2;Llp1;)V

    .line 458
    .line 459
    .line 460
    sget-object v9, Ldc5;->c:Lrp;

    .line 461
    .line 462
    if-nez v9, :cond_d

    .line 463
    .line 464
    sget-object v11, Ldc5;->b:Ljava/lang/Object;

    .line 465
    .line 466
    monitor-enter v11

    .line 467
    :try_start_2
    sget-object v9, Ldc5;->c:Lrp;

    .line 468
    .line 469
    if-nez v9, :cond_c

    .line 470
    .line 471
    new-instance v9, Ljava/util/HashMap;

    .line 472
    .line 473
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    iget-object v13, v1, Lo75;->f:Lcu3;

    .line 481
    .line 482
    invoke-interface {v13}, Lcu3;->get()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v13

    .line 486
    check-cast v13, Lgd5;

    .line 487
    .line 488
    sget-object v15, Lde5;->a:Lde5;

    .line 489
    .line 490
    const/16 p0, 0x1

    .line 491
    .line 492
    const-string v10, "singleproc"

    .line 493
    .line 494
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v16

    .line 498
    xor-int/lit8 v2, v16, 0x1

    .line 499
    .line 500
    move-object/from16 v16, v1

    .line 501
    .line 502
    const-string v1, "There is already a factory registered for the ID %s"

    .line 503
    .line 504
    invoke-static {v1, v10, v2}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    new-instance v1, Lrp;

    .line 511
    .line 512
    invoke-direct {v1, v12, v13, v9}, Lrp;-><init>(Lwd2;Lgd5;Ljava/util/HashMap;)V

    .line 513
    .line 514
    .line 515
    sput-object v1, Ldc5;->c:Lrp;

    .line 516
    .line 517
    move-object v9, v1

    .line 518
    goto :goto_9

    .line 519
    :catchall_2
    move-exception v0

    .line 520
    goto :goto_a

    .line 521
    :cond_c
    move-object/from16 v16, v1

    .line 522
    .line 523
    const/16 p0, 0x1

    .line 524
    .line 525
    :goto_9
    monitor-exit v11

    .line 526
    goto :goto_b

    .line 527
    :goto_a
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 528
    throw v0

    .line 529
    :cond_d
    move-object/from16 v16, v1

    .line 530
    .line 531
    const/16 p0, 0x1

    .line 532
    .line 533
    :goto_b
    const-string v1, ""

    .line 534
    .line 535
    iget-object v2, v9, Lrp;->b:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 538
    .line 539
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v10

    .line 543
    check-cast v10, Landroid/util/Pair;

    .line 544
    .line 545
    if-nez v10, :cond_14

    .line 546
    .line 547
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 548
    .line 549
    .line 550
    move-result v10

    .line 551
    const-string v11, "Uri must be hierarchical: %s"

    .line 552
    .line 553
    invoke-static {v11, v5, v10}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    if-nez v10, :cond_e

    .line 561
    .line 562
    move-object v10, v1

    .line 563
    :cond_e
    const/16 v11, 0x2e

    .line 564
    .line 565
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 566
    .line 567
    .line 568
    move-result v12

    .line 569
    const/4 v13, -0x1

    .line 570
    if-ne v12, v13, :cond_f

    .line 571
    .line 572
    move-object v10, v1

    .line 573
    goto :goto_c

    .line 574
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 575
    .line 576
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v10

    .line 580
    :goto_c
    const-string v12, "pb"

    .line 581
    .line 582
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v10

    .line 586
    const-string v12, "Uri extension must be .pb: %s"

    .line 587
    .line 588
    invoke-static {v12, v5, v10}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 589
    .line 590
    .line 591
    iget-object v10, v9, Lrp;->f:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v10, Ljava/util/HashMap;

    .line 594
    .line 595
    const-string v12, "singleproc"

    .line 596
    .line 597
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v10

    .line 601
    check-cast v10, Lde5;

    .line 602
    .line 603
    if-eqz v10, :cond_10

    .line 604
    .line 605
    move/from16 v15, p0

    .line 606
    .line 607
    goto :goto_d

    .line 608
    :cond_10
    const/4 v15, 0x0

    .line 609
    :goto_d
    const-string v13, "No XDataStoreVariantFactory registered for ID %s"

    .line 610
    .line 611
    invoke-static {v13, v12, v15}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v12

    .line 618
    if-nez v12, :cond_11

    .line 619
    .line 620
    goto :goto_e

    .line 621
    :cond_11
    move-object v1, v12

    .line 622
    :goto_e
    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 623
    .line 624
    .line 625
    move-result v11

    .line 626
    const/4 v12, -0x1

    .line 627
    if-eq v11, v12, :cond_12

    .line 628
    .line 629
    const/4 v12, 0x0

    .line 630
    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    :cond_12
    invoke-static {v5}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 635
    .line 636
    .line 637
    move-result-object v11

    .line 638
    iget-object v12, v9, Lrp;->e:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v12, Lu85;

    .line 641
    .line 642
    sget-object v13, Lfu0;->n:Lfu0;

    .line 643
    .line 644
    invoke-static {v11, v12, v13}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    iget-object v12, v9, Lrp;->c:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v12, Ljava/util/concurrent/Executor;

    .line 651
    .line 652
    iget-object v9, v9, Lrp;->d:Ljava/lang/Object;

    .line 653
    .line 654
    move-object v13, v9

    .line 655
    check-cast v13, Lgd5;

    .line 656
    .line 657
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    invoke-static {}, Lkn4;->a()Lkn4;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    move-object v10, v11

    .line 665
    new-instance v11, Lpe5;

    .line 666
    .line 667
    invoke-direct {v11, v6, v9}, Lpe5;-><init>(Laa5;Lkn4;)V

    .line 668
    .line 669
    .line 670
    move-object v9, v8

    .line 671
    new-instance v8, Lbo;

    .line 672
    .line 673
    move-object v15, v10

    .line 674
    invoke-static {v5}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 675
    .line 676
    .line 677
    move-result-object v10

    .line 678
    move-object/from16 v17, v15

    .line 679
    .line 680
    new-instance v15, Lky4;

    .line 681
    .line 682
    move-object/from16 v18, v1

    .line 683
    .line 684
    const/16 v1, 0x1b

    .line 685
    .line 686
    invoke-direct {v15, v1}, Lky4;-><init>(I)V

    .line 687
    .line 688
    .line 689
    move-object v1, v6

    .line 690
    move/from16 v6, p0

    .line 691
    .line 692
    move-object/from16 p0, v4

    .line 693
    .line 694
    move-object/from16 v4, v17

    .line 695
    .line 696
    move-object/from16 v17, v1

    .line 697
    .line 698
    move-object v1, v9

    .line 699
    move-object/from16 v9, v18

    .line 700
    .line 701
    invoke-direct/range {v8 .. v15}, Lbo;-><init>(Ljava/lang/String;Lap1;Lpe5;Ljava/util/concurrent/Executor;Lgd5;Lfy2;Lky4;)V

    .line 702
    .line 703
    .line 704
    new-instance v9, Lce5;

    .line 705
    .line 706
    invoke-direct {v9, v8, v4}, Lce5;-><init>(Lbo;Lh2;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    if-nez v4, :cond_13

    .line 714
    .line 715
    new-instance v4, Lic5;

    .line 716
    .line 717
    invoke-direct {v4, v6, v7, v12}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    iget-object v8, v9, Lce5;->g:Ljava/lang/Object;

    .line 721
    .line 722
    monitor-enter v8

    .line 723
    :try_start_3
    iget-object v10, v9, Lce5;->i:Ljava/util/List;

    .line 724
    .line 725
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    monitor-exit v8

    .line 729
    goto :goto_f

    .line 730
    :catchall_3
    move-exception v0

    .line 731
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 732
    throw v0

    .line 733
    :cond_13
    :goto_f
    invoke-static {v9, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 734
    .line 735
    .line 736
    move-result-object v10

    .line 737
    invoke-virtual {v2, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    check-cast v2, Landroid/util/Pair;

    .line 742
    .line 743
    if-eqz v2, :cond_15

    .line 744
    .line 745
    move-object v10, v2

    .line 746
    goto :goto_10

    .line 747
    :cond_14
    move-object/from16 v17, v6

    .line 748
    .line 749
    move-object v1, v8

    .line 750
    move/from16 v6, p0

    .line 751
    .line 752
    move-object/from16 p0, v4

    .line 753
    .line 754
    :cond_15
    :goto_10
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v2, Lce5;

    .line 757
    .line 758
    iget-object v4, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v4, Lae5;

    .line 761
    .line 762
    invoke-virtual {v1, v4}, Lae5;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-eqz v1, :cond_16

    .line 767
    .line 768
    new-instance v1, Lgb5;

    .line 769
    .line 770
    invoke-direct {v1, v6, v3}, Lgb5;-><init>(ILjava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual/range {v16 .. v16}, Lo75;->a()Lwd2;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    invoke-virtual {v2, v1, v3}, Lce5;->a(Lgb5;Lwd2;)Li2;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    new-instance v2, Ldb5;

    .line 782
    .line 783
    const/4 v12, 0x0

    .line 784
    invoke-direct {v2, v0, v1, v12}, Ldb5;-><init>(Lqb5;Li2;I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual/range {v16 .. v16}, Lo75;->a()Lwd2;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-virtual {v1, v2, v0}, Ls0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 792
    .line 793
    .line 794
    goto :goto_11

    .line 795
    :cond_16
    const-class v0, Laa5;

    .line 796
    .line 797
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    const-string v1, "ProtoDataStoreConfig<%s> doesn\'t match previous call [uri=%s] [%s]"

    .line 806
    .line 807
    invoke-static {v1, v0}, Lht4;->w(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-object v1, v4, Lae5;->a:Landroid/net/Uri;

    .line 812
    .line 813
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    const-string v2, "uri"

    .line 818
    .line 819
    invoke-static {v0, v2, v1}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 820
    .line 821
    .line 822
    iget-object v1, v4, Lae5;->b:Laa5;

    .line 823
    .line 824
    move-object/from16 v2, v17

    .line 825
    .line 826
    invoke-virtual {v2, v1}, Lrn4;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    const-string v2, "schema"

    .line 831
    .line 832
    invoke-static {v0, v2, v1}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 833
    .line 834
    .line 835
    iget-object v1, v4, Lae5;->c:Lfy2;

    .line 836
    .line 837
    invoke-virtual {v14, v1}, Lfy2;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    const-string v2, "handler"

    .line 842
    .line 843
    invoke-static {v0, v2, v1}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 844
    .line 845
    .line 846
    iget-object v1, v4, Lae5;->d:Llp1;

    .line 847
    .line 848
    invoke-virtual {v7, v1}, Llp1;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    const-string v2, "migrations"

    .line 853
    .line 854
    invoke-static {v0, v2, v1}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 855
    .line 856
    .line 857
    move-object/from16 v1, p0

    .line 858
    .line 859
    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    const-string v2, "variantConfig"

    .line 864
    .line 865
    invoke-static {v0, v2, v1}, Ln44;->T(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 866
    .line 867
    .line 868
    const-string v1, "unknown"

    .line 869
    .line 870
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-static {v0, v1}, Lht4;->w(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    goto :goto_11

    .line 882
    :cond_17
    const-string v0, "Null schema"

    .line 883
    .line 884
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    goto :goto_11

    .line 888
    :cond_18
    const-string v0, "Null uri"

    .line 889
    .line 890
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    :goto_11
    return-void

    .line 894
    :pswitch_2
    invoke-virtual {v0}, Lqb5;->b()V

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
