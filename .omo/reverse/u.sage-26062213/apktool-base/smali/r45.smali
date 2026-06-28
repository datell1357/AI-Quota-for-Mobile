.class public final Lr45;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ls55;


# static fields
.field public static volatile F:Lr45;


# instance fields
.field public A:I

.field public B:I

.field public final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final D:J

.field public final E:J

.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:Lpr3;

.field public final d:Lds4;

.field public final e:Lf35;

.field public final f:La25;

.field public final g:Lj45;

.field public final h:Lia5;

.field public final i:Lac5;

.field public final j:Lp15;

.field public final k:Lcom/google/android/gms/common/util/Clock;

.field public final l:Lf85;

.field public final m:Lm75;

.field public final n:Lbx4;

.field public final o:Lr75;

.field public final p:Ljava/lang/String;

.field public q:Lm15;

.field public r:Lo95;

.field public s:Lst4;

.field public t:Lg15;

.field public u:Ls75;

.field public v:Z

.field public w:Ljava/lang/Boolean;

.field public x:J

.field public volatile y:Ljava/lang/Boolean;

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lf65;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lr45;->v:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lf65;->a:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lpr3;

    .line 20
    .line 21
    const/16 v3, 0x10

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lpr3;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lr45;->c:Lpr3;

    .line 27
    .line 28
    sput-object v2, Lye4;->a:Lpr3;

    .line 29
    .line 30
    iput-object v1, p0, Lr45;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-boolean v2, p1, Lf65;->e:Z

    .line 33
    .line 34
    iput-boolean v2, p0, Lr45;->b:Z

    .line 35
    .line 36
    iget-object v2, p1, Lf65;->b:Ljava/lang/Boolean;

    .line 37
    .line 38
    iput-object v2, p0, Lr45;->y:Ljava/lang/Boolean;

    .line 39
    .line 40
    iget-object v2, p1, Lf65;->h:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v2, p0, Lr45;->p:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lr45;->z:Z

    .line 46
    .line 47
    sget-object v3, Ly75;->b:Lg75;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    if-nez v3, :cond_8

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_0
    sget-object v3, Ly75;->a:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v3

    .line 58
    :try_start_0
    sget-object v5, Ly75;->b:Lg75;

    .line 59
    .line 60
    if-nez v5, :cond_7

    .line 61
    .line 62
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    sget-object v5, Ly75;->b:Lg75;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v6, v1

    .line 73
    :goto_0
    if-eqz v5, :cond_2

    .line 74
    .line 75
    iget-object v7, v5, Lg75;->a:Landroid/content/Context;

    .line 76
    .line 77
    if-eq v7, v6, :cond_6

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 83
    .line 84
    sget-object v5, Lh75;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_3

    .line 99
    .line 100
    invoke-static {}, Le85;->a()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-nez p0, :cond_4

    .line 109
    .line 110
    throw v4

    .line 111
    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    .line 112
    .line 113
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_5
    :goto_2
    new-instance v5, Ldi2;

    .line 118
    .line 119
    const/4 v7, 0x5

    .line 120
    invoke-direct {v5, v6, v7}, Ldi2;-><init>(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v5}, Lc75;->M(Lcu3;)Lcu3;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v7, Lg75;

    .line 128
    .line 129
    invoke-direct {v7, v6, v5}, Lg75;-><init>(Landroid/content/Context;Lcu3;)V

    .line 130
    .line 131
    .line 132
    sput-object v7, Ly75;->b:Lg75;

    .line 133
    .line 134
    sget-object v5, Ly75;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    .line 138
    .line 139
    :cond_6
    monitor-exit v3

    .line 140
    goto :goto_4

    .line 141
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    throw p0

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    :goto_4
    monitor-exit v3

    .line 146
    goto :goto_6

    .line 147
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    throw p0

    .line 149
    :cond_8
    :goto_6
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 154
    .line 155
    sget-object v3, Ll65;->a:Lcom/google/android/gms/common/api/Api;

    .line 156
    .line 157
    new-instance v3, Lw65;

    .line 158
    .line 159
    sget-object v5, Ll65;->a:Lcom/google/android/gms/common/api/Api;

    .line 160
    .line 161
    sget-object v6, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 162
    .line 163
    sget-object v7, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 164
    .line 165
    invoke-direct {v3, v1, v5, v6, v7}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    new-array v6, v0, [Ljava/lang/String;

    .line 177
    .line 178
    const-string v7, "com.google.android.gms.measurement#"

    .line 179
    .line 180
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    new-instance v8, Lpc4;

    .line 189
    .line 190
    const/16 v9, 0x11

    .line 191
    .line 192
    invoke-direct {v8, v9, v5, v6}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v3, v5}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Low3;

    .line 204
    .line 205
    .line 206
    sget-object v3, Lo75;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    if-eqz v5, :cond_9

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_9
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 219
    goto :goto_7

    .line 220
    :catch_0
    invoke-static {}, Lo75;->b()V

    .line 221
    .line 222
    .line 223
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 224
    .line 225
    sget-object v5, Lo75;->m:Lcu3;

    .line 226
    .line 227
    invoke-interface {v5}, Lcu3;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 232
    .line 233
    const-string v6, "context.getApplicationContext() yielded NullPointerException"

    .line 234
    .line 235
    new-array v7, v0, [Ljava/lang/Object;

    .line 236
    .line 237
    invoke-static {v1, v5, v4, v6, v7}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    move-object v1, v4

    .line 241
    :goto_7
    if-eqz v1, :cond_c

    .line 242
    .line 243
    :cond_a
    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_b

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-eqz v5, :cond_a

    .line 255
    .line 256
    :cond_c
    :goto_8
    iget-object v1, p1, Lf65;->f:Ljava/lang/Long;

    .line 257
    .line 258
    if-eqz v1, :cond_d

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 261
    .line 262
    .line 263
    move-result-wide v3

    .line 264
    goto :goto_9

    .line 265
    :cond_d
    iget-object v1, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 266
    .line 267
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v3

    .line 271
    :goto_9
    iput-wide v3, p0, Lr45;->D:J

    .line 272
    .line 273
    iget-object v1, p1, Lf65;->g:Ljava/lang/Long;

    .line 274
    .line 275
    if-eqz v1, :cond_e

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    goto :goto_a

    .line 282
    :cond_e
    iget-object v1, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 283
    .line 284
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 285
    .line 286
    .line 287
    move-result-wide v3

    .line 288
    :goto_a
    iput-wide v3, p0, Lr45;->E:J

    .line 289
    .line 290
    new-instance v1, Lds4;

    .line 291
    .line 292
    invoke-direct {v1, p0}, Lib0;-><init>(Lr45;)V

    .line 293
    .line 294
    .line 295
    sget-object v3, Lur4;->a:Lur4;

    .line 296
    .line 297
    iput-object v3, v1, Lds4;->d:Lbs4;

    .line 298
    .line 299
    iput-object v1, p0, Lr45;->d:Lds4;

    .line 300
    .line 301
    new-instance v1, Lf35;

    .line 302
    .line 303
    invoke-direct {v1, p0}, Lf35;-><init>(Lr45;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lq55;->y()V

    .line 307
    .line 308
    .line 309
    iput-object v1, p0, Lr45;->e:Lf35;

    .line 310
    .line 311
    new-instance v1, La25;

    .line 312
    .line 313
    invoke-direct {v1, p0}, La25;-><init>(Lr45;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Lq55;->y()V

    .line 317
    .line 318
    .line 319
    iput-object v1, p0, Lr45;->f:La25;

    .line 320
    .line 321
    new-instance v3, Lac5;

    .line 322
    .line 323
    invoke-direct {v3, p0}, Lac5;-><init>(Lr45;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Lq55;->y()V

    .line 327
    .line 328
    .line 329
    iput-object v3, p0, Lr45;->i:Lac5;

    .line 330
    .line 331
    new-instance v3, Le65;

    .line 332
    .line 333
    invoke-direct {v3, p1, p0}, Le65;-><init>(Lf65;Lr45;)V

    .line 334
    .line 335
    .line 336
    new-instance v4, Lp15;

    .line 337
    .line 338
    invoke-direct {v4, v3}, Lp15;-><init>(Le65;)V

    .line 339
    .line 340
    .line 341
    iput-object v4, p0, Lr45;->j:Lp15;

    .line 342
    .line 343
    new-instance v3, Lbx4;

    .line 344
    .line 345
    invoke-direct {v3, p0}, Lbx4;-><init>(Lr45;)V

    .line 346
    .line 347
    .line 348
    iput-object v3, p0, Lr45;->n:Lbx4;

    .line 349
    .line 350
    new-instance v3, Lf85;

    .line 351
    .line 352
    invoke-direct {v3, p0}, Lf85;-><init>(Lr45;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Lj05;->x()V

    .line 356
    .line 357
    .line 358
    iput-object v3, p0, Lr45;->l:Lf85;

    .line 359
    .line 360
    new-instance v3, Lm75;

    .line 361
    .line 362
    invoke-direct {v3, p0}, Lm75;-><init>(Lr45;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Lj05;->x()V

    .line 366
    .line 367
    .line 368
    iput-object v3, p0, Lr45;->m:Lm75;

    .line 369
    .line 370
    new-instance v4, Lia5;

    .line 371
    .line 372
    invoke-direct {v4, p0}, Lia5;-><init>(Lr45;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4}, Lj05;->x()V

    .line 376
    .line 377
    .line 378
    iput-object v4, p0, Lr45;->h:Lia5;

    .line 379
    .line 380
    new-instance v4, Lr75;

    .line 381
    .line 382
    invoke-direct {v4, p0}, Lq55;-><init>(Lr45;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4}, Lq55;->y()V

    .line 386
    .line 387
    .line 388
    iput-object v4, p0, Lr45;->o:Lr75;

    .line 389
    .line 390
    new-instance v4, Lj45;

    .line 391
    .line 392
    invoke-direct {v4, p0}, Lj45;-><init>(Lr45;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Lq55;->y()V

    .line 396
    .line 397
    .line 398
    iput-object v4, p0, Lr45;->g:Lj45;

    .line 399
    .line 400
    iget-object v5, p1, Lf65;->d:Lix4;

    .line 401
    .line 402
    if-eqz v5, :cond_f

    .line 403
    .line 404
    iget-wide v5, v5, Lix4;->o:J

    .line 405
    .line 406
    const-wide/16 v7, 0x0

    .line 407
    .line 408
    cmp-long v5, v5, v7

    .line 409
    .line 410
    if-eqz v5, :cond_f

    .line 411
    .line 412
    move v5, v0

    .line 413
    goto :goto_b

    .line 414
    :cond_f
    move v5, v2

    .line 415
    :goto_b
    iget-object v6, p0, Lr45;->a:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    instance-of v6, v6, Landroid/app/Application;

    .line 422
    .line 423
    if-eqz v6, :cond_11

    .line 424
    .line 425
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v3, Lib0;->a:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v1, Lr45;

    .line 431
    .line 432
    iget-object v1, v1, Lr45;->a:Landroid/content/Context;

    .line 433
    .line 434
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    instance-of v1, v1, Landroid/app/Application;

    .line 439
    .line 440
    if-eqz v1, :cond_12

    .line 441
    .line 442
    iget-object v1, v3, Lib0;->a:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, Lr45;

    .line 445
    .line 446
    iget-object v1, v1, Lr45;->a:Landroid/content/Context;

    .line 447
    .line 448
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Landroid/app/Application;

    .line 453
    .line 454
    iget-object v6, v3, Lm75;->c:Lty4;

    .line 455
    .line 456
    if-nez v6, :cond_10

    .line 457
    .line 458
    new-instance v6, Lty4;

    .line 459
    .line 460
    invoke-direct {v6, v2, v3}, Lty4;-><init>(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    iput-object v6, v3, Lm75;->c:Lty4;

    .line 464
    .line 465
    :cond_10
    if-eqz v5, :cond_12

    .line 466
    .line 467
    iget-object v2, v3, Lm75;->c:Lty4;

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v3, Lm75;->c:Lty4;

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v3, Lib0;->a:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v1, Lr45;

    .line 480
    .line 481
    iget-object v1, v1, Lr45;->f:La25;

    .line 482
    .line 483
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v1, La25;->n:Lx15;

    .line 487
    .line 488
    const-string v2, "Registered activity lifecycle callback"

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_11
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 495
    .line 496
    .line 497
    iget-object v1, v1, La25;->i:Lx15;

    .line 498
    .line 499
    const-string v2, "Application context is not an Application"

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_12
    :goto_c
    new-instance v1, Lrf1;

    .line 505
    .line 506
    const/16 v2, 0x14

    .line 507
    .line 508
    invoke-direct {v1, v2, p0, p1, v0}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 512
    .line 513
    .line 514
    return-void
.end method

.method public static final i(Laz4;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p0, "Component not created"

    .line 5
    .line 6
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final j(Lib0;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p0, "Component not created"

    .line 5
    .line 6
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final k(Lj05;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lj05;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "Component not initialized: "

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "Component not created"

    .line 27
    .line 28
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final l(Lq55;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Lq55;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "Component not initialized: "

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "Component not created"

    .line 27
    .line 28
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static r(Landroid/content/Context;Lix4;Ljava/lang/Long;Ljava/lang/Long;)Lr45;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v6, p1, Lix4;->q:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-boolean v5, p1, Lix4;->p:Z

    .line 6
    .line 7
    iget-wide v3, p1, Lix4;->o:J

    .line 8
    .line 9
    iget-wide v1, p1, Lix4;->n:J

    .line 10
    .line 11
    new-instance v0, Lix4;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    invoke-direct/range {v0 .. v7}, Lix4;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lr45;->F:Lr45;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const-class v1, Lr45;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lr45;->F:Lr45;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lf65;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1, p2, p3}, Lf65;-><init>(Landroid/content/Context;Lix4;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lr45;

    .line 45
    .line 46
    invoke-direct {p0, v0}, Lr45;-><init>(Lf65;)V

    .line 47
    .line 48
    .line 49
    sput-object p0, Lr45;->F:Lr45;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit v1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p0, p1, Lix4;->q:Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    const-string p1, "dataCollectionDefaultEnabled"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    sget-object p1, Lr45;->F:Lr45;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    sget-object p1, Lr45;->F:Lr45;

    .line 79
    .line 80
    const-string p2, "dataCollectionDefaultEnabled"

    .line 81
    .line 82
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iput-object p0, p1, Lr45;->y:Ljava/lang/Boolean;

    .line 91
    .line 92
    :cond_3
    :goto_2
    sget-object p0, Lr45;->F:Lr45;

    .line 93
    .line 94
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object p0, Lr45;->F:Lr45;

    .line 98
    .line 99
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lr45;->g()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final b()Lpr3;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->c:Lpr3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()La25;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->f:La25;

    .line 2
    .line 3
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final d()Lj45;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 2
    .line 3
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()I
    .locals 5

    .line 1
    iget-object v0, p0, Lr45;->g:Lj45;

    .line 2
    .line 3
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lj45;->v()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr45;->d:Lds4;

    .line 10
    .line 11
    invoke-virtual {v1}, Lds4;->J()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_8

    .line 17
    .line 18
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lj45;->v()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lr45;->z:Z

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    iget-object v0, p0, Lr45;->e:Lf35;

    .line 29
    .line 30
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lib0;->v()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v4, "measurement_enabled"

    .line 41
    .line 42
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 p0, 0x3

    .line 72
    return p0

    .line 73
    :cond_2
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lr45;

    .line 76
    .line 77
    iget-object v0, v0, Lr45;->c:Lpr3;

    .line 78
    .line 79
    const-string v0, "firebase_analytics_collection_enabled"

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p0, 0x4

    .line 95
    return p0

    .line 96
    :cond_4
    iget-object v0, p0, Lr45;->y:Ljava/lang/Boolean;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget-object p0, p0, Lr45;->y:Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const/4 p0, 0x7

    .line 110
    return p0

    .line 111
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 112
    return p0

    .line 113
    :cond_7
    const/16 p0, 0x8

    .line 114
    .line 115
    return p0

    .line 116
    :cond_8
    return v3
.end method

.method public final h()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lr45;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lr45;->g:Lj45;

    .line 7
    .line 8
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lj45;->v()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr45;->w:Ljava/lang/Boolean;

    .line 15
    .line 16
    iget-object v2, p0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-wide v3, p0, Lr45;->x:J

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    cmp-long v3, v3, v5

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iget-wide v5, p0, Lr45;->x:J

    .line 39
    .line 40
    sub-long/2addr v3, v5

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    cmp-long v0, v3, v5

    .line 48
    .line 49
    if-lez v0, :cond_4

    .line 50
    .line 51
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lr45;->x:J

    .line 56
    .line 57
    iget-object v0, p0, Lr45;->i:Lac5;

    .line 58
    .line 59
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "android.permission.INTERNET"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lac5;->X(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lac5;->X(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lr45;->a:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v4, 0x1

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    iget-object v3, p0, Lr45;->d:Lds4;

    .line 92
    .line 93
    invoke-virtual {v3}, Lds4;->y()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    invoke-static {v2}, Lac5;->p0(Landroid/content/Context;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v3, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 109
    .line 110
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-nez v5, :cond_1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    .line 118
    .line 119
    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    :cond_2
    move v1, v4

    .line 133
    :catch_0
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, p0, Lr45;->w:Ljava/lang/Boolean;

    .line 138
    .line 139
    if-eqz v1, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Lr45;->q()Lg15;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lg15;->C()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lac5;->B(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lr45;->w:Ljava/lang/Boolean;

    .line 158
    .line 159
    :cond_4
    iget-object p0, p0, Lr45;->w:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :cond_5
    const-string p0, "AppMeasurement is not initialized"

    .line 167
    .line 168
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return v1
.end method

.method public final m()Lp15;
    .locals 0

    .line 1
    iget-object p0, p0, Lr45;->j:Lp15;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n()Lm15;
    .locals 1

    .line 1
    iget-object v0, p0, Lr45;->q:Lm15;

    .line 2
    .line 3
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lr45;->q:Lm15;

    .line 7
    .line 8
    return-object p0
.end method

.method public final o()Lo95;
    .locals 1

    .line 1
    iget-object v0, p0, Lr45;->r:Lo95;

    .line 2
    .line 3
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lr45;->r:Lo95;

    .line 7
    .line 8
    return-object p0
.end method

.method public final p()Lst4;
    .locals 1

    .line 1
    iget-object v0, p0, Lr45;->s:Lst4;

    .line 2
    .line 3
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lr45;->s:Lst4;

    .line 7
    .line 8
    return-object p0
.end method

.method public final q()Lg15;
    .locals 1

    .line 1
    iget-object v0, p0, Lr45;->t:Lg15;

    .line 2
    .line 3
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lr45;->t:Lg15;

    .line 7
    .line 8
    return-object p0
.end method
