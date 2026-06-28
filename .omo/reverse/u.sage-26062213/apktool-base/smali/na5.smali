.class public abstract Lna5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcu3;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Lsb5;

.field public volatile p:I

.field public q:Ljj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsb5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna5;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lna5;->o:Lsb5;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lna5;->p:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lqj0;->j:Lqo3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lqo3;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, v1}, Lqo3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lqj0;->j:Lqo3;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lo75;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_11

    .line 25
    .line 26
    sget-object v2, Lo75;->l:Lo75;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_0
    const-string v2, "Given application context does not implement GeneratedComponentManager: "

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/lit8 v6, v6, 0x48

    .line 63
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    sget-object v2, Lo75;->j:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v2

    .line 87
    :try_start_1
    sget-object v4, Lo75;->l:Lo75;

    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    sget-object v0, Lo75;->l:Lo75;

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    :goto_0
    move-object v2, v0

    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_d

    .line 98
    .line 99
    :cond_2
    new-instance v4, Ldi2;

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-direct {v4, v0, v5}, Ldi2;-><init>(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ldi2;->get()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lo75;

    .line 110
    .line 111
    sput-object v0, Lo75;->l:Lo75;

    .line 112
    .line 113
    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 114
    .line 115
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "Application doesn\'t implement PhenotypeApplication interface, falling back to globally set context. See go/phenotype-flag#process-stable-init for more info."

    .line 120
    .line 121
    new-array v7, v3, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {v4, v5, v1, v6, v7}, Lgp4;->b(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    goto :goto_0

    .line 128
    :goto_1
    iget v0, p0, Lna5;->p:I

    .line 129
    .line 130
    const/4 v4, -0x1

    .line 131
    if-eq v0, v4, :cond_3

    .line 132
    .line 133
    iget-object v5, p0, Lna5;->q:Ljj;

    .line 134
    .line 135
    iget-object v5, v5, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-ge v0, v5, :cond_10

    .line 142
    .line 143
    :cond_3
    monitor-enter p0

    .line 144
    :try_start_2
    iget v0, p0, Lna5;->p:I

    .line 145
    .line 146
    if-ne v0, v4, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lo75;->b()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lna5;->o:Lsb5;

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Lsb5;->a(Lo75;)Lqb5;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v5, v4, Lqb5;->g:Ljj;

    .line 161
    .line 162
    iput-object v5, p0, Lna5;->q:Ljj;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    goto/16 :goto_c

    .line 167
    .line 168
    :cond_4
    move-object v4, v1

    .line 169
    :goto_2
    iget-object v5, p0, Lna5;->q:Ljj;

    .line 170
    .line 171
    iget-object v5, v5, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-ge v0, v5, :cond_f

    .line 178
    .line 179
    invoke-static {}, Lo75;->b()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v0, v2, Lo75;->b:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v0}, Lk75;->Q(Landroid/content/Context;)Lcr2;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcr2;->b()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_7

    .line 196
    .line 197
    invoke-virtual {v0}, Lcr2;->a()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Lj75;

    .line 202
    .line 203
    invoke-static {}, Ll75;->a()Landroid/net/Uri;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    iget-object v8, p0, Lna5;->n:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v7, :cond_5

    .line 210
    .line 211
    iget-object v6, v6, Lj75;->a:Lwm3;

    .line 212
    .line 213
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v6, v7}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lwm3;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-object v6, v1

    .line 228
    :goto_3
    if-nez v6, :cond_6

    .line 229
    .line 230
    move-object v6, v1

    .line 231
    goto :goto_4

    .line 232
    :cond_6
    invoke-virtual {v6, v8}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Ljava/lang/String;

    .line 237
    .line 238
    :goto_4
    if-nez v6, :cond_8

    .line 239
    .line 240
    :cond_7
    :goto_5
    move-object v6, v1

    .line 241
    goto :goto_7

    .line 242
    :cond_8
    const-string v7, "Invalid Phenotype flag value for flag "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    .line 244
    :try_start_3
    invoke-virtual {p0, v6}, Lna5;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    goto :goto_7

    .line 249
    :catch_1
    move-exception v6

    .line 250
    goto :goto_6

    .line 251
    :catch_2
    move-exception v6

    .line 252
    :goto_6
    :try_start_4
    const-string v8, "FilePhenotypeFlags"

    .line 253
    .line 254
    iget-object v9, p0, Lna5;->n:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-static {v8, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :goto_7
    if-nez v4, :cond_9

    .line 265
    .line 266
    iget-object v4, p0, Lna5;->o:Lsb5;

    .line 267
    .line 268
    invoke-virtual {v4, v2}, Lsb5;->a(Lo75;)Lqb5;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    :cond_9
    iget-object v7, v4, Lqb5;->c:Ljava/lang/String;

    .line 273
    .line 274
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 275
    .line 276
    const/16 v9, 0x1a

    .line 277
    .line 278
    if-lt v8, v9, :cond_a

    .line 279
    .line 280
    iget-object v8, v2, Lo75;->b:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    const-string v9, "com.android.vending"

    .line 287
    .line 288
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-nez v8, :cond_a

    .line 293
    .line 294
    const-string v8, "com.google.android.gms.measurement#"

    .line 295
    .line 296
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-nez v8, :cond_a

    .line 301
    .line 302
    invoke-virtual {v2}, Lo75;->a()Lwd2;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    new-instance v9, Lw85;

    .line 307
    .line 308
    const/4 v10, 0x6

    .line 309
    invoke-direct {v9, v10, v2, v7, v3}, Lw85;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v9}, Lwd2;->b(Lw85;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    new-instance v3, Lo9;

    .line 317
    .line 318
    const/16 v7, 0x16

    .line 319
    .line 320
    invoke-direct {v3, v7, v2}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    sget-object v7, Lfu0;->n:Lfu0;

    .line 324
    .line 325
    invoke-interface {v2, v3, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    const-string v2, "Invalid Phenotype flag value for flag "

    .line 329
    .line 330
    iget-object v3, p0, Lna5;->n:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v4}, Lqb5;->a()Lic;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    iget-object v4, v4, Lic;->d:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v4, Le53;

    .line 339
    .line 340
    invoke-virtual {v4, v3}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    if-nez v3, :cond_b

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_b
    :try_start_5
    invoke-virtual {p0, v3}, Lna5;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    goto :goto_9

    .line 352
    :catch_3
    move-exception v3

    .line 353
    goto :goto_8

    .line 354
    :catch_4
    move-exception v3

    .line 355
    :goto_8
    :try_start_6
    const-string v4, "FilePhenotypeFlags"

    .line 356
    .line 357
    iget-object v7, p0, Lna5;->n:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .line 365
    .line 366
    :goto_9
    invoke-virtual {v0}, Lcr2;->b()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    const/4 v2, 0x1

    .line 371
    if-ne v2, v0, :cond_c

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_c
    move-object v6, v1

    .line 375
    :goto_a
    if-nez v6, :cond_d

    .line 376
    .line 377
    invoke-virtual {p0}, Lna5;->a()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    :cond_d
    if-eqz v6, :cond_e

    .line 382
    .line 383
    invoke-virtual {p0, v6}, Lna5;->e(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    iput v5, p0, Lna5;->p:I

    .line 387
    .line 388
    :cond_e
    monitor-exit p0

    .line 389
    goto :goto_b

    .line 390
    :cond_f
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 391
    :cond_10
    invoke-virtual {p0}, Lna5;->d()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    :goto_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    return-object v6

    .line 399
    :goto_c
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 400
    throw v0

    .line 401
    :goto_d
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 402
    throw p0

    .line 403
    :cond_11
    sget-object p0, Lqj0;->h:Ljava/lang/Object;

    .line 404
    .line 405
    monitor-enter p0

    .line 406
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 407
    const-string p0, "Must call PhenotypeContext.setContext() first"

    .line 408
    .line 409
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    return-object v1

    .line 413
    :catchall_2
    move-exception v0

    .line 414
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 415
    throw v0
.end method
