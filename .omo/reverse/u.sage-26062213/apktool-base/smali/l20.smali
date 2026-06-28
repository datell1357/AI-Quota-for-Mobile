.class public final synthetic Ll20;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll20;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ll20;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ll20;->o:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ll20;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Ll20;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    iget-object v1, p0, Ll20;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lb20;

    .line 16
    .line 17
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lne1;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Lb20;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    invoke-virtual {v1, p0}, Lb20;->b(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lpc4;

    .line 45
    .line 46
    iget-object p0, p0, Ll20;->o:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lnr3;

    .line 49
    .line 50
    iget-object v0, v0, Lpc4;->o:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v8, v0

    .line 53
    check-cast v8, Lez2;

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v0, "Work "

    .line 59
    .line 60
    iget-object v12, p0, Lnr3;->a:Lbg4;

    .line 61
    .line 62
    iget-object v13, v12, Lbg4;->a:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v11, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v4, v8, Lez2;->e:Landroidx/work/impl/WorkDatabase;

    .line 70
    .line 71
    new-instance v5, Ls00;

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    invoke-direct {v5, v8, v11, v13, v6}, Ls00;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Lga3;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    move-object v10, v4

    .line 82
    check-cast v10, Log4;

    .line 83
    .line 84
    const/16 v4, 0xf

    .line 85
    .line 86
    if-nez v10, :cond_1

    .line 87
    .line 88
    invoke-static {}, Lt72;->g()Lt72;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sget-object v0, Lez2;->l:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Didn\'t find WorkSpec for id "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0, v0, v1}, Lt72;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, v8, Lez2;->d:Lqd1;

    .line 112
    .line 113
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lc73;

    .line 116
    .line 117
    new-instance v0, Lh7;

    .line 118
    .line 119
    invoke-direct {v0, v4, v8, v12}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lc73;->execute(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_1
    iget-object v14, v8, Lez2;->k:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v14

    .line 130
    :try_start_1
    iget-object v5, v8, Lez2;->k:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    invoke-virtual {v8, v13}, Lez2;->c(Ljava/lang/String;)Lhh4;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-eqz v6, :cond_2

    .line 138
    .line 139
    move v2, v3

    .line 140
    :cond_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    :try_start_3
    iget-object v1, v8, Lez2;->h:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/util/Set;

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lnr3;

    .line 160
    .line 161
    iget-object v2, v2, Lnr3;->a:Lbg4;

    .line 162
    .line 163
    iget v2, v2, Lbg4;->b:I

    .line 164
    .line 165
    iget v3, v12, Lbg4;->b:I

    .line 166
    .line 167
    if-ne v2, v3, :cond_3

    .line 168
    .line 169
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lt72;->g()Lt72;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    sget-object v1, Lez2;->l:Ljava/lang/String;

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, " is already enqueued for processing"

    .line 187
    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v1, v0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    move-object p0, v0

    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_3
    iget-object p0, v8, Lez2;->d:Lqd1;

    .line 204
    .line 205
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Lc73;

    .line 208
    .line 209
    new-instance v0, Lh7;

    .line 210
    .line 211
    invoke-direct {v0, v4, v8, v12}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lc73;->execute(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    :goto_1
    monitor-exit v14

    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_4
    iget v0, v10, Log4;->t:I

    .line 221
    .line 222
    iget v2, v12, Lbg4;->b:I

    .line 223
    .line 224
    if-eq v0, v2, :cond_5

    .line 225
    .line 226
    iget-object p0, v8, Lez2;->d:Lqd1;

    .line 227
    .line 228
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p0, Lc73;

    .line 231
    .line 232
    new-instance v0, Lh7;

    .line 233
    .line 234
    invoke-direct {v0, v4, v8, v12}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Lc73;->execute(Ljava/lang/Runnable;)V

    .line 238
    .line 239
    .line 240
    monitor-exit v14

    .line 241
    goto :goto_2

    .line 242
    :cond_5
    new-instance v4, Lj04;

    .line 243
    .line 244
    iget-object v5, v8, Lez2;->b:Landroid/content/Context;

    .line 245
    .line 246
    iget-object v6, v8, Lez2;->c:Lmd0;

    .line 247
    .line 248
    iget-object v7, v8, Lez2;->d:Lqd1;

    .line 249
    .line 250
    iget-object v9, v8, Lez2;->e:Landroidx/work/impl/WorkDatabase;

    .line 251
    .line 252
    invoke-direct/range {v4 .. v11}, Lj04;-><init>(Landroid/content/Context;Lmd0;Lqd1;Lez2;Landroidx/work/impl/WorkDatabase;Log4;Ljava/util/ArrayList;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lhh4;

    .line 256
    .line 257
    invoke-direct {v0, v4}, Lhh4;-><init>(Lj04;)V

    .line 258
    .line 259
    .line 260
    iget-object v2, v0, Lhh4;->d:Lqd1;

    .line 261
    .line 262
    iget-object v2, v2, Lqd1;->p:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v2, Lji0;

    .line 265
    .line 266
    invoke-static {}, Ln44;->E()Lvu1;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {v2, v4}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    new-instance v4, Leh4;

    .line 278
    .line 279
    invoke-direct {v4, v0, v1, v3}, Leh4;-><init>(Lhh4;Ldh0;I)V

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v4}, Lw80;->E(Lhi0;Ldf1;)Le20;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    new-instance v2, Ll20;

    .line 287
    .line 288
    const/4 v3, 0x4

    .line 289
    invoke-direct {v2, v8, v1, v0, v3}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    iget-object v3, v8, Lez2;->d:Lqd1;

    .line 293
    .line 294
    iget-object v3, v3, Lqd1;->r:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v3, Lc73;

    .line 297
    .line 298
    iget-object v1, v1, Le20;->o:Ld20;

    .line 299
    .line 300
    invoke-virtual {v1, v2, v3}, Lb2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v8, Lez2;->g:Ljava/util/HashMap;

    .line 304
    .line 305
    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    new-instance v0, Ljava/util/HashSet;

    .line 309
    .line 310
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    iget-object p0, v8, Lez2;->h:Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-virtual {p0, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    invoke-static {}, Lt72;->g()Lt72;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    sget-object v0, Lez2;->l:Ljava/lang/String;

    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-class v2, Lez2;

    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v2, ": processing "

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p0, v0, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :goto_2
    return-void

    .line 358
    :catchall_2
    move-exception v0

    .line 359
    move-object p0, v0

    .line 360
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 361
    :try_start_5
    throw p0

    .line 362
    :goto_3
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 363
    throw p0

    .line 364
    :pswitch_1
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Lez2;

    .line 367
    .line 368
    iget-object v1, p0, Ll20;->o:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, Le20;

    .line 371
    .line 372
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p0, Lhh4;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    :try_start_6
    iget-object v1, v1, Le20;->o:Ld20;

    .line 380
    .line 381
    invoke-virtual {v1}, Lb2;->get()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Ljava/lang/Boolean;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    .line 389
    .line 390
    move-result v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0

    .line 391
    :catch_0
    iget-object v4, v0, Lez2;->k:Ljava/lang/Object;

    .line 392
    .line 393
    monitor-enter v4

    .line 394
    :try_start_7
    iget-object v1, p0, Lhh4;->a:Log4;

    .line 395
    .line 396
    invoke-static {v1}, Lrg4;->a(Log4;)Lbg4;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v5, v1, Lbg4;->a:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v0, v5}, Lez2;->c(Ljava/lang/String;)Lhh4;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    if-ne v6, p0, :cond_6

    .line 407
    .line 408
    invoke-virtual {v0, v5}, Lez2;->b(Ljava/lang/String;)Lhh4;

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :catchall_3
    move-exception v0

    .line 413
    move-object p0, v0

    .line 414
    goto :goto_6

    .line 415
    :cond_6
    :goto_4
    invoke-static {}, Lt72;->g()Lt72;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    sget-object v6, Lez2;->l:Ljava/lang/String;

    .line 420
    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    const-class v8, Lez2;

    .line 427
    .line 428
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v8, " "

    .line 436
    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v5, " executed; reschedule = "

    .line 444
    .line 445
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {p0, v6, v5}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object p0, v0, Lez2;->j:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    :goto_5
    if-ge v2, v0, :cond_7

    .line 465
    .line 466
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    add-int/lit8 v2, v2, 0x1

    .line 471
    .line 472
    check-cast v5, Lf31;

    .line 473
    .line 474
    invoke-interface {v5, v1, v3}, Lf31;->d(Lbg4;Z)V

    .line 475
    .line 476
    .line 477
    goto :goto_5

    .line 478
    :cond_7
    monitor-exit v4

    .line 479
    return-void

    .line 480
    :goto_6
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 481
    throw p0

    .line 482
    :pswitch_2
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 485
    .line 486
    iget-object v2, p0, Ll20;->o:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v2, Lb20;

    .line 489
    .line 490
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast p0, Lj4;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_8

    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lj4;->a()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v1}, Lb20;->a(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :catchall_4
    move-exception v0

    .line 509
    move-object p0, v0

    .line 510
    invoke-virtual {v2, p0}, Lb20;->b(Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    :goto_7
    return-void

    .line 514
    :pswitch_3
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v0, Lih;

    .line 517
    .line 518
    iget-object v1, p0, Ll20;->o:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Lix;

    .line 521
    .line 522
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 525
    .line 526
    :try_start_9
    iget-object v0, v0, Lih;->a:Landroid/content/Context;

    .line 527
    .line 528
    invoke-static {v0}, Lk75;->q(Landroid/content/Context;)Lbb1;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-eqz v0, :cond_9

    .line 533
    .line 534
    iget-object v2, v0, Ldz0;->b:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v2, Lgz0;

    .line 537
    .line 538
    check-cast v2, Lab1;

    .line 539
    .line 540
    iget-object v3, v2, Lab1;->d:Ljava/lang/Object;

    .line 541
    .line 542
    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 543
    :try_start_a
    iput-object p0, v2, Lab1;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 544
    .line 545
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 546
    :try_start_b
    iget-object v0, v0, Ldz0;->b:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v0, Lgz0;

    .line 549
    .line 550
    new-instance v2, Ljz0;

    .line 551
    .line 552
    invoke-direct {v2, v1, p0}, Ljz0;-><init>(Lix;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 553
    .line 554
    .line 555
    invoke-interface {v0, v2}, Lgz0;->a(Lix;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 556
    .line 557
    .line 558
    goto :goto_9

    .line 559
    :catchall_5
    move-exception v0

    .line 560
    goto :goto_8

    .line 561
    :catchall_6
    move-exception v0

    .line 562
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 563
    :try_start_d
    throw v0

    .line 564
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 565
    .line 566
    const-string v2, "EmojiCompat font provider not available on this device."

    .line 567
    .line 568
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 572
    :goto_8
    invoke-virtual {v1, v0}, Lix;->I(Ljava/lang/Throwable;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 576
    .line 577
    .line 578
    :goto_9
    return-void

    .line 579
    :pswitch_4
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v0, Lcom/google/android/gms/common/util/BiConsumer;

    .line 582
    .line 583
    iget-object v1, p0, Ll20;->o:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v1, Ljava/lang/String;

    .line 586
    .line 587
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast p0, Lad0;

    .line 590
    .line 591
    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    return-void

    .line 595
    :pswitch_5
    iget-object v0, p0, Ll20;->p:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 598
    .line 599
    iget-object v1, p0, Ll20;->o:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v1, Ljava/lang/String;

    .line 602
    .line 603
    iget-object p0, p0, Ll20;->q:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast p0, Leg4;

    .line 606
    .line 607
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    iget-object v0, v0, Lqg4;->a:Lga3;

    .line 618
    .line 619
    new-instance v4, Lao0;

    .line 620
    .line 621
    const/16 v5, 0x10

    .line 622
    .line 623
    invoke-direct {v4, v1, v5}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 624
    .line 625
    .line 626
    invoke-static {v0, v3, v2, v4}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    check-cast v0, Ljava/util/List;

    .line 631
    .line 632
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_a

    .line 641
    .line 642
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    check-cast v1, Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {p0, v1}, Lht4;->h(Leg4;Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    goto :goto_a

    .line 652
    :cond_a
    return-void

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
