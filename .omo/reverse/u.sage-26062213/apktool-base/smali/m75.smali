.class public final Lm75;
.super Lj05;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public c:Lty4;

.field public d:Lpc4;

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/lang/Object;

.field public i:Z

.field public j:I

.field public k:Li65;

.field public l:Li65;

.field public m:Ljava/util/PriorityQueue;

.field public n:Ly55;

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public p:J

.field public final q:Le65;

.field public r:Z

.field public s:Li65;

.field public t:Li75;

.field public u:Li65;

.field public final v:Lra3;


# direct methods
.method public constructor <init>(Lr45;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lj05;-><init>(Lr45;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm75;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm75;->h:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lm75;->i:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lm75;->j:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lm75;->r:Z

    .line 25
    .line 26
    new-instance v0, Lra3;

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lm75;->v:Lra3;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    .line 42
    sget-object v0, Ly55;->c:Ly55;

    .line 43
    .line 44
    iput-object v0, p0, Lm75;->n:Ly55;

    .line 45
    .line 46
    const-wide/16 v0, -0x1

    .line 47
    .line 48
    iput-wide v0, p0, Lm75;->p:J

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    .line 52
    const-wide/16 v1, 0x0

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lm75;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    .line 59
    new-instance v0, Le65;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Le65;-><init>(Lr45;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lm75;->q:Le65;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v0, p3

    .line 12
    .line 13
    :goto_0
    const-string v2, "screen_view"

    .line 14
    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    if-eqz v2, :cond_c

    .line 27
    .line 28
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lr45;

    .line 31
    .line 32
    iget-object v2, v1, Lr45;->l:Lf85;

    .line 33
    .line 34
    invoke-static {v2}, Lr45;->k(Lj05;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v1, Lr45;->d:Lds4;

    .line 38
    .line 39
    sget-object v3, Le05;->e1:Ld05;

    .line 40
    .line 41
    invoke-virtual {v1, v7, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v8, v1, :cond_1

    .line 46
    .line 47
    move-wide/from16 v17, v5

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-wide/from16 v17, p8

    .line 51
    .line 52
    :goto_1
    iget-object v9, v2, Lf85;->l:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v9

    .line 55
    :try_start_0
    iget-boolean v1, v2, Lf85;->k:Z

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lr45;

    .line 62
    .line 63
    iget-object v0, v0, Lr45;->f:La25;

    .line 64
    .line 65
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, La25;->k:Lx15;

    .line 69
    .line 70
    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v9

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_2
    const-string v1, "screen_name"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    const/16 v1, 0x1f4

    .line 87
    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-lez v3, :cond_3

    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iget-object v5, v2, Lib0;->a:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v5, Lr45;

    .line 103
    .line 104
    iget-object v5, v5, Lr45;->d:Lds4;

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    if-le v3, v1, :cond_4

    .line 110
    .line 111
    :cond_3
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Lr45;

    .line 114
    .line 115
    iget-object v0, v0, Lr45;->f:La25;

    .line 116
    .line 117
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v0, La25;->k:Lx15;

    .line 121
    .line 122
    const-string v1, "Invalid screen name length for screen view. Length"

    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    monitor-exit v9

    .line 136
    return-void

    .line 137
    :cond_4
    const-string v3, "screen_class"

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-lez v5, :cond_5

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iget-object v6, v2, Lib0;->a:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v6, Lr45;

    .line 158
    .line 159
    iget-object v6, v6, Lr45;->d:Lds4;

    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    if-le v5, v1, :cond_6

    .line 165
    .line 166
    :cond_5
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Lr45;

    .line 169
    .line 170
    iget-object v0, v0, Lr45;->f:La25;

    .line 171
    .line 172
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v0, La25;->k:Lx15;

    .line 176
    .line 177
    const-string v1, "Invalid screen class length for screen view. Length"

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v0, v2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v9

    .line 191
    return-void

    .line 192
    :cond_6
    if-nez v3, :cond_7

    .line 193
    .line 194
    iget-object v1, v2, Lf85;->g:Ljx4;

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    iget-object v1, v1, Ljx4;->o:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Lf85;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    :cond_7
    :goto_2
    move-object v11, v3

    .line 205
    goto :goto_3

    .line 206
    :cond_8
    const-string v3, "Activity"

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :goto_3
    iget-object v1, v2, Lf85;->c:Lw75;

    .line 210
    .line 211
    iget-boolean v3, v2, Lf85;->h:Z

    .line 212
    .line 213
    if-eqz v3, :cond_9

    .line 214
    .line 215
    if-eqz v1, :cond_9

    .line 216
    .line 217
    iput-boolean v4, v2, Lf85;->h:Z

    .line 218
    .line 219
    iget-object v3, v1, Lw75;->b:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iget-object v1, v1, Lw75;->a:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v1, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    if-eqz v1, :cond_9

    .line 234
    .line 235
    iget-object v0, v2, Lib0;->a:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v0, Lr45;

    .line 238
    .line 239
    iget-object v0, v0, Lr45;->f:La25;

    .line 240
    .line 241
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v0, La25;->k:Lx15;

    .line 245
    .line 246
    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    monitor-exit v9

    .line 252
    return-void

    .line 253
    :cond_9
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v1, v2, Lib0;->a:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v1, Lr45;

    .line 257
    .line 258
    iget-object v3, v1, Lr45;->f:La25;

    .line 259
    .line 260
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v3, La25;->n:Lx15;

    .line 264
    .line 265
    if-nez v10, :cond_a

    .line 266
    .line 267
    const-string v4, "null"

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_a
    move-object v4, v10

    .line 271
    :goto_4
    const-string v5, "Logging screen view with name, class"

    .line 272
    .line 273
    invoke-virtual {v3, v4, v11, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v3, v2, Lf85;->c:Lw75;

    .line 277
    .line 278
    if-nez v3, :cond_b

    .line 279
    .line 280
    iget-object v3, v2, Lf85;->d:Lw75;

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_b
    iget-object v3, v2, Lf85;->c:Lw75;

    .line 284
    .line 285
    :goto_5
    new-instance v9, Lw75;

    .line 286
    .line 287
    iget-object v4, v1, Lr45;->i:Lac5;

    .line 288
    .line 289
    invoke-static {v4}, Lr45;->j(Lib0;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4}, Lac5;->s0()J

    .line 293
    .line 294
    .line 295
    move-result-wide v12

    .line 296
    const/4 v14, 0x1

    .line 297
    move-wide/from16 v15, p6

    .line 298
    .line 299
    invoke-direct/range {v9 .. v18}, Lw75;-><init>(Ljava/lang/String;Ljava/lang/String;JZJJ)V

    .line 300
    .line 301
    .line 302
    iput-object v9, v2, Lf85;->c:Lw75;

    .line 303
    .line 304
    iput-object v3, v2, Lf85;->d:Lw75;

    .line 305
    .line 306
    iput-object v9, v2, Lf85;->i:Lw75;

    .line 307
    .line 308
    iget-object v4, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 309
    .line 310
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    iget-object v1, v1, Lr45;->g:Lj45;

    .line 315
    .line 316
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 317
    .line 318
    .line 319
    new-instance v6, Lw45;

    .line 320
    .line 321
    move-object/from16 p2, v0

    .line 322
    .line 323
    move-object/from16 p1, v2

    .line 324
    .line 325
    move-object/from16 p4, v3

    .line 326
    .line 327
    move-wide/from16 p5, v4

    .line 328
    .line 329
    move-object/from16 p0, v6

    .line 330
    .line 331
    move-object/from16 p3, v9

    .line 332
    .line 333
    invoke-direct/range {p0 .. p6}, Lw45;-><init>(Lf85;Landroid/os/Bundle;Lw75;Lw75;J)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :goto_6
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    throw v0

    .line 344
    :cond_c
    if-eqz p5, :cond_d

    .line 345
    .line 346
    iget-object v2, v1, Lm75;->d:Lpc4;

    .line 347
    .line 348
    if-eqz v2, :cond_d

    .line 349
    .line 350
    invoke-static {v3}, Lac5;->Y(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-eqz v2, :cond_e

    .line 355
    .line 356
    :cond_d
    move v10, v8

    .line 357
    goto :goto_7

    .line 358
    :cond_e
    move v10, v4

    .line 359
    :goto_7
    if-nez p1, :cond_f

    .line 360
    .line 361
    const-string v2, "app"

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_f
    move-object/from16 v2, p1

    .line 365
    .line 366
    :goto_8
    iget-object v9, v1, Lib0;->a:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v9, Lr45;

    .line 369
    .line 370
    iget-object v9, v9, Lr45;->d:Lds4;

    .line 371
    .line 372
    sget-object v11, Le05;->e1:Ld05;

    .line 373
    .line 374
    invoke-virtual {v9, v7, v11}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-eq v8, v7, :cond_10

    .line 379
    .line 380
    move-wide v6, v5

    .line 381
    goto :goto_9

    .line 382
    :cond_10
    move-wide/from16 v6, p8

    .line 383
    .line 384
    :goto_9
    new-instance v8, Landroid/os/Bundle;

    .line 385
    .line 386
    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :cond_11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_16

    .line 402
    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    instance-of v11, v9, Landroid/os/Bundle;

    .line 414
    .line 415
    if-eqz v11, :cond_12

    .line 416
    .line 417
    new-instance v11, Landroid/os/Bundle;

    .line 418
    .line 419
    check-cast v9, Landroid/os/Bundle;

    .line 420
    .line 421
    invoke-direct {v11, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8, v5, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 425
    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_12
    instance-of v5, v9, [Landroid/os/Parcelable;

    .line 429
    .line 430
    if-eqz v5, :cond_14

    .line 431
    .line 432
    check-cast v9, [Landroid/os/Parcelable;

    .line 433
    .line 434
    move v5, v4

    .line 435
    :goto_b
    array-length v11, v9

    .line 436
    if-ge v5, v11, :cond_11

    .line 437
    .line 438
    aget-object v11, v9, v5

    .line 439
    .line 440
    instance-of v12, v11, Landroid/os/Bundle;

    .line 441
    .line 442
    if-eqz v12, :cond_13

    .line 443
    .line 444
    new-instance v12, Landroid/os/Bundle;

    .line 445
    .line 446
    check-cast v11, Landroid/os/Bundle;

    .line 447
    .line 448
    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 449
    .line 450
    .line 451
    aput-object v12, v9, v5

    .line 452
    .line 453
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_14
    instance-of v5, v9, Ljava/util/List;

    .line 457
    .line 458
    if-eqz v5, :cond_11

    .line 459
    .line 460
    check-cast v9, Ljava/util/List;

    .line 461
    .line 462
    move v5, v4

    .line 463
    :goto_c
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-ge v5, v11, :cond_11

    .line 468
    .line 469
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    instance-of v12, v11, Landroid/os/Bundle;

    .line 474
    .line 475
    if-eqz v12, :cond_15

    .line 476
    .line 477
    new-instance v12, Landroid/os/Bundle;

    .line 478
    .line 479
    check-cast v11, Landroid/os/Bundle;

    .line 480
    .line 481
    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 482
    .line 483
    .line 484
    invoke-interface {v9, v5, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 488
    .line 489
    goto :goto_c

    .line 490
    :cond_16
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, Lr45;

    .line 493
    .line 494
    iget-object v12, v0, Lr45;->g:Lj45;

    .line 495
    .line 496
    invoke-static {v12}, Lr45;->l(Lq55;)V

    .line 497
    .line 498
    .line 499
    new-instance v0, Lt65;

    .line 500
    .line 501
    move/from16 v11, p4

    .line 502
    .line 503
    move/from16 v9, p5

    .line 504
    .line 505
    move-wide/from16 v4, p6

    .line 506
    .line 507
    invoke-direct/range {v0 .. v11}, Lt65;-><init>(Lm75;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;ZZZ)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v12, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 511
    .line 512
    .line 513
    return-void
.end method

.method public final B()V
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Laz4;->v()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lr45;

    .line 9
    .line 10
    iget-object v2, v1, Lr45;->f:La25;

    .line 11
    .line 12
    iget-object v3, v1, Lr45;->f:La25;

    .line 13
    .line 14
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v2, La25;->m:Lx15;

    .line 18
    .line 19
    const-string v4, "Handle tcf update."

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Lx15;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 25
    .line 26
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lf35;->A()Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v5, Lma5;->a:Lz43;

    .line 34
    .line 35
    sget-object v6, Lkm4;->o:Lkm4;

    .line 36
    .line 37
    sget-object v7, Lla5;->n:Lla5;

    .line 38
    .line 39
    sget-object v8, Lkm4;->p:Lkm4;

    .line 40
    .line 41
    sget-object v9, Lla5;->o:Lla5;

    .line 42
    .line 43
    sget-object v10, Lkm4;->q:Lkm4;

    .line 44
    .line 45
    sget-object v11, Lkm4;->r:Lkm4;

    .line 46
    .line 47
    sget-object v12, Lkm4;->s:Lkm4;

    .line 48
    .line 49
    sget-object v16, Lkm4;->t:Lkm4;

    .line 50
    .line 51
    sget-object v18, Lkm4;->u:Lkm4;

    .line 52
    .line 53
    move-object v14, v12

    .line 54
    move-object v12, v11

    .line 55
    move-object v11, v7

    .line 56
    move-object v13, v7

    .line 57
    move-object v15, v9

    .line 58
    move-object/from16 v17, v9

    .line 59
    .line 60
    move-object/from16 v19, v9

    .line 61
    .line 62
    filled-new-array/range {v6 .. v19}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v7, v10

    .line 67
    move-object v8, v12

    .line 68
    move-object v9, v14

    .line 69
    const/4 v10, 0x7

    .line 70
    const/4 v11, 0x0

    .line 71
    invoke-static {v10, v5, v11}, Le53;->a(I[Ljava/lang/Object;Lhb;)Le53;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    sget v5, Lnp1;->p:I

    .line 76
    .line 77
    new-instance v15, Ljn3;

    .line 78
    .line 79
    const-string v5, "CH"

    .line 80
    .line 81
    invoke-direct {v15, v5}, Ljn3;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x5

    .line 85
    new-array v10, v5, [C

    .line 86
    .line 87
    const-string v13, "IABTCF_TCString"

    .line 88
    .line 89
    invoke-interface {v4, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "IABTCF_CmpSdkID"

    .line 94
    .line 95
    const/4 v5, -0x1

    .line 96
    :try_start_0
    invoke-interface {v4, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v14
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move v14, v5

    .line 102
    :goto_0
    const-string v11, "IABTCF_PolicyVersion"

    .line 103
    .line 104
    :try_start_1
    invoke-interface {v4, v11, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v11
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    move-object/from16 v25, v2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move v11, v5

    .line 112
    goto :goto_1

    .line 113
    :goto_2
    const-string v2, "IABTCF_gdprApplies"

    .line 114
    .line 115
    :try_start_2
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v2
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_3
    move-object/from16 v17, v10

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :catch_2
    move v2, v5

    .line 123
    goto :goto_3

    .line 124
    :goto_4
    const-string v10, "IABTCF_PurposeOneTreatment"

    .line 125
    .line 126
    :try_start_3
    invoke-interface {v4, v10, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v10
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 130
    :goto_5
    move/from16 v18, v11

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :catch_3
    move v10, v5

    .line 134
    goto :goto_5

    .line 135
    :goto_6
    const-string v11, "IABTCF_EnableAdvertiserConsentMode"

    .line 136
    .line 137
    :try_start_4
    invoke-interface {v4, v11, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v11
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 141
    goto :goto_7

    .line 142
    :catch_4
    move v11, v5

    .line 143
    :goto_7
    const-string v5, "IABTCF_PublisherCC"

    .line 144
    .line 145
    invoke-static {v4, v5}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    move/from16 v19, v13

    .line 150
    .line 151
    new-instance v13, Lhb;

    .line 152
    .line 153
    move/from16 v20, v14

    .line 154
    .line 155
    const/4 v14, 0x4

    .line 156
    invoke-direct {v13, v14}, Lhb;-><init>(I)V

    .line 157
    .line 158
    .line 159
    iget-object v14, v12, Le53;->o:Lc53;

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    if-nez v14, :cond_0

    .line 163
    .line 164
    new-instance v14, Ld53;

    .line 165
    .line 166
    move-object/from16 v22, v15

    .line 167
    .line 168
    iget-object v15, v12, Le53;->r:[Ljava/lang/Object;

    .line 169
    .line 170
    move-object/from16 v26, v1

    .line 171
    .line 172
    iget v1, v12, Le53;->s:I

    .line 173
    .line 174
    invoke-direct {v14, v15, v0, v1}, Ld53;-><init>([Ljava/lang/Object;II)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lc53;

    .line 178
    .line 179
    invoke-direct {v1, v12, v14}, Lc53;-><init>(Le53;Ld53;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v12, Le53;->o:Lc53;

    .line 183
    .line 184
    move-object v14, v1

    .line 185
    goto :goto_8

    .line 186
    :cond_0
    move-object/from16 v26, v1

    .line 187
    .line 188
    move-object/from16 v22, v15

    .line 189
    .line 190
    :goto_8
    invoke-virtual {v14}, Lc53;->h()Ly64;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    sget-object v15, Llm4;->r:Llm4;

    .line 199
    .line 200
    move/from16 v27, v0

    .line 201
    .line 202
    if-eqz v14, :cond_7

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    check-cast v14, Lkm4;

    .line 209
    .line 210
    invoke-virtual {v14}, Lkm4;->zza()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v29

    .line 218
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v29

    .line 222
    move-object/from16 v30, v1

    .line 223
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    move-object/from16 v31, v12

    .line 227
    .line 228
    add-int/lit8 v12, v29, 0x1c

    .line 229
    .line 230
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .line 232
    .line 233
    const-string v12, "IABTCF_PublisherRestrictions"

    .line 234
    .line 235
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v4, v0}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_6

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    const/16 v12, 0x2f3

    .line 260
    .line 261
    if-ge v1, v12, :cond_1

    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_1
    const/16 v1, 0x2f2

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    const/16 v1, 0xa

    .line 271
    .line 272
    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    sget-object v1, Llm4;->o:Llm4;

    .line 277
    .line 278
    if-ltz v0, :cond_5

    .line 279
    .line 280
    invoke-static {}, Llm4;->values()[Llm4;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    array-length v12, v12

    .line 285
    if-le v0, v12, :cond_2

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_2
    if-eqz v0, :cond_5

    .line 289
    .line 290
    const/4 v12, 0x1

    .line 291
    if-eq v0, v12, :cond_4

    .line 292
    .line 293
    const/4 v1, 0x2

    .line 294
    if-eq v0, v1, :cond_3

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_3
    sget-object v15, Llm4;->q:Llm4;

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_4
    sget-object v15, Llm4;->p:Llm4;

    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_5
    :goto_a
    move-object v15, v1

    .line 304
    :cond_6
    :goto_b
    invoke-virtual {v13, v14, v15}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    move/from16 v0, v27

    .line 308
    .line 309
    move-object/from16 v1, v30

    .line 310
    .line 311
    move-object/from16 v12, v31

    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_7
    move-object/from16 v31, v12

    .line 315
    .line 316
    const/4 v12, 0x1

    .line 317
    invoke-virtual {v13, v12}, Lhb;->b(Z)Le53;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    const-string v0, "IABTCF_PurposeConsents"

    .line 322
    .line 323
    invoke-static {v4, v0}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v1, "IABTCF_VendorConsents"

    .line 328
    .line 329
    invoke-static {v4, v1}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v12

    .line 337
    if-nez v12, :cond_8

    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    const/16 v14, 0x2f3

    .line 344
    .line 345
    if-lt v12, v14, :cond_8

    .line 346
    .line 347
    const/16 v12, 0x2f2

    .line 348
    .line 349
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    const/16 v12, 0x31

    .line 354
    .line 355
    if-ne v1, v12, :cond_8

    .line 356
    .line 357
    const/4 v1, 0x1

    .line 358
    goto :goto_c

    .line 359
    :cond_8
    move/from16 v1, v27

    .line 360
    .line 361
    :goto_c
    const-string v12, "IABTCF_PurposeLegitimateInterests"

    .line 362
    .line 363
    invoke-static {v4, v12}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    const-string v14, "IABTCF_VendorLegitimateInterests"

    .line 368
    .line 369
    invoke-static {v4, v14}, Lma5;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    if-nez v14, :cond_a

    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    move-object/from16 v30, v15

    .line 384
    .line 385
    const/16 v15, 0x2f3

    .line 386
    .line 387
    if-lt v14, v15, :cond_9

    .line 388
    .line 389
    const/16 v14, 0x2f2

    .line 390
    .line 391
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    const/16 v14, 0x31

    .line 396
    .line 397
    if-ne v4, v14, :cond_9

    .line 398
    .line 399
    const/4 v4, 0x1

    .line 400
    goto :goto_e

    .line 401
    :cond_9
    :goto_d
    move/from16 v4, v27

    .line 402
    .line 403
    goto :goto_e

    .line 404
    :cond_a
    move-object/from16 v30, v15

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :goto_e
    const/16 v14, 0x32

    .line 408
    .line 409
    aput-char v14, v17, v27

    .line 410
    .line 411
    new-instance v14, Lja5;

    .line 412
    .line 413
    const-string v15, "CmpSdkID"

    .line 414
    .line 415
    move-object/from16 v29, v3

    .line 416
    .line 417
    const-string v3, "EnableAdvertiserConsentMode"

    .line 418
    .line 419
    move-object/from16 v23, v14

    .line 420
    .line 421
    const-string v14, "gdprApplies"

    .line 422
    .line 423
    move-object/from16 v24, v0

    .line 424
    .line 425
    const-string v0, "Version"

    .line 426
    .line 427
    move-object/from16 v32, v12

    .line 428
    .line 429
    const-string v12, "0"

    .line 430
    .line 431
    move-object/from16 v33, v12

    .line 432
    .line 433
    const-string v12, "1"

    .line 434
    .line 435
    if-nez v19, :cond_b

    .line 436
    .line 437
    sget-object v1, Le53;->t:Le53;

    .line 438
    .line 439
    move-object/from16 v30, v3

    .line 440
    .line 441
    move-object v3, v12

    .line 442
    move-object/from16 v31, v14

    .line 443
    .line 444
    move-object v5, v15

    .line 445
    move-object/from16 v2, v23

    .line 446
    .line 447
    goto/16 :goto_21

    .line 448
    .line 449
    :cond_b
    invoke-virtual {v13, v6}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v19

    .line 453
    check-cast v19, Llm4;

    .line 454
    .line 455
    invoke-virtual {v13, v7}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v34

    .line 459
    check-cast v34, Llm4;

    .line 460
    .line 461
    invoke-virtual {v13, v8}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v35

    .line 465
    check-cast v35, Llm4;

    .line 466
    .line 467
    invoke-virtual {v13, v9}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v36

    .line 471
    check-cast v36, Llm4;

    .line 472
    .line 473
    move-object/from16 v37, v12

    .line 474
    .line 475
    new-instance v12, Lhb;

    .line 476
    .line 477
    move-object/from16 v38, v13

    .line 478
    .line 479
    const/4 v13, 0x4

    .line 480
    invoke-direct {v12, v13}, Lhb;-><init>(I)V

    .line 481
    .line 482
    .line 483
    const-string v13, "2"

    .line 484
    .line 485
    invoke-virtual {v12, v0, v13}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    const/4 v13, 0x1

    .line 489
    if-eq v13, v1, :cond_c

    .line 490
    .line 491
    move-object/from16 v13, v33

    .line 492
    .line 493
    :goto_f
    move/from16 v39, v1

    .line 494
    .line 495
    goto :goto_10

    .line 496
    :cond_c
    move-object/from16 v13, v37

    .line 497
    .line 498
    goto :goto_f

    .line 499
    :goto_10
    const-string v1, "VendorConsent"

    .line 500
    .line 501
    invoke-virtual {v12, v1, v13}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    const/4 v13, 0x1

    .line 505
    if-eq v13, v4, :cond_d

    .line 506
    .line 507
    move-object/from16 v1, v33

    .line 508
    .line 509
    :goto_11
    move/from16 v40, v4

    .line 510
    .line 511
    goto :goto_12

    .line 512
    :cond_d
    move-object/from16 v1, v37

    .line 513
    .line 514
    goto :goto_11

    .line 515
    :goto_12
    const-string v4, "VendorLegitimateInterest"

    .line 516
    .line 517
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    if-eq v2, v13, :cond_e

    .line 521
    .line 522
    move-object/from16 v1, v33

    .line 523
    .line 524
    goto :goto_13

    .line 525
    :cond_e
    move-object/from16 v1, v37

    .line 526
    .line 527
    :goto_13
    invoke-virtual {v12, v14, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    if-eq v11, v13, :cond_f

    .line 531
    .line 532
    move-object/from16 v1, v33

    .line 533
    .line 534
    goto :goto_14

    .line 535
    :cond_f
    move-object/from16 v1, v37

    .line 536
    .line 537
    :goto_14
    invoke-virtual {v12, v3, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    const-string v4, "PolicyVersion"

    .line 545
    .line 546
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {v12, v15, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    if-eq v10, v13, :cond_10

    .line 557
    .line 558
    move-object/from16 v1, v33

    .line 559
    .line 560
    goto :goto_15

    .line 561
    :cond_10
    move-object/from16 v1, v37

    .line 562
    .line 563
    :goto_15
    const-string v4, "PurposeOneTreatment"

    .line 564
    .line 565
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    const-string v1, "PublisherCC"

    .line 569
    .line 570
    invoke-virtual {v12, v1, v5}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    if-eqz v19, :cond_11

    .line 574
    .line 575
    invoke-virtual/range {v19 .. v19}, Llm4;->zza()I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    goto :goto_16

    .line 580
    :cond_11
    invoke-virtual/range {v30 .. v30}, Llm4;->zza()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    :goto_16
    const-string v4, "PublisherRestrictions1"

    .line 585
    .line 586
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    if-eqz v34, :cond_12

    .line 594
    .line 595
    invoke-virtual/range {v34 .. v34}, Llm4;->zza()I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    goto :goto_17

    .line 600
    :cond_12
    invoke-virtual/range {v30 .. v30}, Llm4;->zza()I

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    :goto_17
    const-string v4, "PublisherRestrictions3"

    .line 605
    .line 606
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    if-eqz v35, :cond_13

    .line 614
    .line 615
    invoke-virtual/range {v35 .. v35}, Llm4;->zza()I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    goto :goto_18

    .line 620
    :cond_13
    invoke-virtual/range {v30 .. v30}, Llm4;->zza()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    :goto_18
    const-string v4, "PublisherRestrictions4"

    .line 625
    .line 626
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    if-eqz v36, :cond_14

    .line 634
    .line 635
    invoke-virtual/range {v36 .. v36}, Llm4;->zza()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    goto :goto_19

    .line 640
    :cond_14
    invoke-virtual/range {v30 .. v30}, Llm4;->zza()I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    :goto_19
    const-string v4, "PublisherRestrictions7"

    .line 645
    .line 646
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-virtual {v12, v4, v1}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v1, v24

    .line 654
    .line 655
    move-object/from16 v4, v32

    .line 656
    .line 657
    invoke-static {v6, v1, v4}, Lma5;->d(Lkm4;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v42

    .line 661
    invoke-static {v7, v1, v4}, Lma5;->d(Lkm4;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v44

    .line 665
    invoke-static {v8, v1, v4}, Lma5;->d(Lkm4;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v46

    .line 669
    invoke-static {v9, v1, v4}, Lma5;->d(Lkm4;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v48

    .line 673
    const-string v43, "Purpose3"

    .line 674
    .line 675
    const-string v41, "Purpose1"

    .line 676
    .line 677
    const-string v45, "Purpose4"

    .line 678
    .line 679
    const-string v47, "Purpose7"

    .line 680
    .line 681
    filled-new-array/range {v41 .. v48}, [Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    move/from16 v16, v2

    .line 686
    .line 687
    const/4 v1, 0x4

    .line 688
    const/4 v2, 0x0

    .line 689
    invoke-static {v1, v13, v2}, Le53;->a(I[Ljava/lang/Object;Lhb;)Le53;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    invoke-virtual {v12, v1}, Lhb;->i(Le53;)V

    .line 694
    .line 695
    .line 696
    move/from16 v1, v16

    .line 697
    .line 698
    move-object/from16 v16, v4

    .line 699
    .line 700
    move-object v4, v12

    .line 701
    move v12, v1

    .line 702
    move-object v1, v2

    .line 703
    move-object/from16 v30, v3

    .line 704
    .line 705
    move-object/from16 v19, v7

    .line 706
    .line 707
    move v13, v10

    .line 708
    move-object/from16 v10, v17

    .line 709
    .line 710
    move-object/from16 v2, v23

    .line 711
    .line 712
    move-object/from16 v7, v31

    .line 713
    .line 714
    move-object/from16 v3, v37

    .line 715
    .line 716
    move/from16 v17, v39

    .line 717
    .line 718
    move/from16 v18, v40

    .line 719
    .line 720
    move-object/from16 v23, v8

    .line 721
    .line 722
    move-object/from16 v31, v14

    .line 723
    .line 724
    move-object/from16 v8, v38

    .line 725
    .line 726
    move-object v14, v5

    .line 727
    move-object v5, v15

    .line 728
    move-object/from16 v15, v24

    .line 729
    .line 730
    move-object/from16 v24, v9

    .line 731
    .line 732
    move-object/from16 v9, v22

    .line 733
    .line 734
    invoke-static/range {v6 .. v18}, Lma5;->b(Lkm4;Le53;Le53;Ljn3;[CIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 735
    .line 736
    .line 737
    move-result v6

    .line 738
    move-object/from16 v20, v14

    .line 739
    .line 740
    move-object/from16 v21, v15

    .line 741
    .line 742
    move-object/from16 v32, v16

    .line 743
    .line 744
    move/from16 v22, v17

    .line 745
    .line 746
    move-object v15, v9

    .line 747
    move-object/from16 v16, v10

    .line 748
    .line 749
    move/from16 v17, v12

    .line 750
    .line 751
    move/from16 v18, v13

    .line 752
    .line 753
    const/4 v9, 0x1

    .line 754
    if-eq v9, v6, :cond_15

    .line 755
    .line 756
    move-object/from16 v42, v33

    .line 757
    .line 758
    :goto_1a
    move-object v12, v8

    .line 759
    move-object v13, v15

    .line 760
    move-object/from16 v14, v16

    .line 761
    .line 762
    move/from16 v16, v17

    .line 763
    .line 764
    move/from16 v17, v18

    .line 765
    .line 766
    move-object/from16 v10, v19

    .line 767
    .line 768
    move-object/from16 v18, v20

    .line 769
    .line 770
    move-object/from16 v19, v21

    .line 771
    .line 772
    move/from16 v21, v22

    .line 773
    .line 774
    move-object/from16 v20, v32

    .line 775
    .line 776
    move/from16 v22, v40

    .line 777
    .line 778
    move v15, v11

    .line 779
    move-object v11, v7

    .line 780
    goto :goto_1b

    .line 781
    :cond_15
    move-object/from16 v42, v3

    .line 782
    .line 783
    goto :goto_1a

    .line 784
    :goto_1b
    invoke-static/range {v10 .. v22}, Lma5;->b(Lkm4;Le53;Le53;Ljn3;[CIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    move-object v7, v11

    .line 789
    move-object v8, v12

    .line 790
    move v11, v15

    .line 791
    move-object/from16 v32, v20

    .line 792
    .line 793
    move/from16 v40, v22

    .line 794
    .line 795
    move-object v15, v13

    .line 796
    move-object/from16 v20, v18

    .line 797
    .line 798
    move/from16 v22, v21

    .line 799
    .line 800
    move/from16 v18, v17

    .line 801
    .line 802
    move-object/from16 v21, v19

    .line 803
    .line 804
    move/from16 v17, v16

    .line 805
    .line 806
    move-object/from16 v16, v14

    .line 807
    .line 808
    if-eq v9, v6, :cond_16

    .line 809
    .line 810
    move-object/from16 v44, v33

    .line 811
    .line 812
    :goto_1c
    move-object v12, v7

    .line 813
    move-object v13, v8

    .line 814
    move-object v14, v15

    .line 815
    move-object/from16 v15, v16

    .line 816
    .line 817
    move-object/from16 v19, v20

    .line 818
    .line 819
    move-object/from16 v20, v21

    .line 820
    .line 821
    move-object/from16 v21, v32

    .line 822
    .line 823
    move/from16 v16, v11

    .line 824
    .line 825
    move-object/from16 v11, v23

    .line 826
    .line 827
    move/from16 v23, v40

    .line 828
    .line 829
    goto :goto_1d

    .line 830
    :cond_16
    move-object/from16 v44, v3

    .line 831
    .line 832
    goto :goto_1c

    .line 833
    :goto_1d
    invoke-static/range {v11 .. v23}, Lma5;->b(Lkm4;Le53;Le53;Ljn3;[CIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 834
    .line 835
    .line 836
    move-result v6

    .line 837
    move-object v7, v12

    .line 838
    move-object v8, v13

    .line 839
    move/from16 v11, v16

    .line 840
    .line 841
    move-object/from16 v32, v21

    .line 842
    .line 843
    move/from16 v40, v23

    .line 844
    .line 845
    move-object/from16 v16, v15

    .line 846
    .line 847
    move-object/from16 v21, v20

    .line 848
    .line 849
    move-object v15, v14

    .line 850
    move-object/from16 v20, v19

    .line 851
    .line 852
    if-eq v9, v6, :cond_17

    .line 853
    .line 854
    move-object/from16 v46, v33

    .line 855
    .line 856
    :goto_1e
    move-object v13, v7

    .line 857
    move-object v14, v8

    .line 858
    move/from16 v19, v18

    .line 859
    .line 860
    move/from16 v23, v22

    .line 861
    .line 862
    move-object/from16 v12, v24

    .line 863
    .line 864
    move-object/from16 v22, v32

    .line 865
    .line 866
    move/from16 v24, v40

    .line 867
    .line 868
    move/from16 v18, v17

    .line 869
    .line 870
    move/from16 v17, v11

    .line 871
    .line 872
    goto :goto_1f

    .line 873
    :cond_17
    move-object/from16 v46, v3

    .line 874
    .line 875
    goto :goto_1e

    .line 876
    :goto_1f
    invoke-static/range {v12 .. v24}, Lma5;->b(Lkm4;Le53;Le53;Ljn3;[CIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 877
    .line 878
    .line 879
    move-result v6

    .line 880
    move-object/from16 v15, v16

    .line 881
    .line 882
    if-eq v9, v6, :cond_18

    .line 883
    .line 884
    move-object/from16 v48, v33

    .line 885
    .line 886
    goto :goto_20

    .line 887
    :cond_18
    move-object/from16 v48, v3

    .line 888
    .line 889
    :goto_20
    new-instance v6, Ljava/lang/String;

    .line 890
    .line 891
    invoke-direct {v6, v15}, Ljava/lang/String;-><init>([C)V

    .line 892
    .line 893
    .line 894
    const-string v43, "AuthorizePurpose3"

    .line 895
    .line 896
    const-string v41, "AuthorizePurpose1"

    .line 897
    .line 898
    const-string v45, "AuthorizePurpose4"

    .line 899
    .line 900
    const-string v47, "AuthorizePurpose7"

    .line 901
    .line 902
    const-string v49, "PurposeDiagnostics"

    .line 903
    .line 904
    move-object/from16 v50, v6

    .line 905
    .line 906
    filled-new-array/range {v41 .. v50}, [Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v6

    .line 910
    const/4 v7, 0x5

    .line 911
    invoke-static {v7, v6, v1}, Le53;->a(I[Ljava/lang/Object;Lhb;)Le53;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    invoke-virtual {v4, v1}, Lhb;->i(Le53;)V

    .line 916
    .line 917
    .line 918
    const/4 v12, 0x1

    .line 919
    invoke-virtual {v4, v12}, Lhb;->b(Z)Le53;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    :goto_21
    invoke-direct {v2, v1}, Lja5;-><init>(Ljava/util/Map;)V

    .line 924
    .line 925
    .line 926
    invoke-static/range {v29 .. v29}, Lr45;->l(Lq55;)V

    .line 927
    .line 928
    .line 929
    move-object/from16 v1, v29

    .line 930
    .line 931
    iget-object v4, v1, La25;->n:Lx15;

    .line 932
    .line 933
    const-string v6, "Tcf preferences read"

    .line 934
    .line 935
    invoke-virtual {v4, v2, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    invoke-virtual/range {v25 .. v25}, Lib0;->v()V

    .line 939
    .line 940
    .line 941
    invoke-virtual/range {v25 .. v25}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 942
    .line 943
    .line 944
    move-result-object v4

    .line 945
    const-string v6, "stored_tcf_param"

    .line 946
    .line 947
    const-string v7, ""

    .line 948
    .line 949
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    new-instance v8, Ljava/util/HashMap;

    .line 954
    .line 955
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 956
    .line 957
    .line 958
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 959
    .line 960
    .line 961
    move-result v9

    .line 962
    if-eqz v9, :cond_19

    .line 963
    .line 964
    new-instance v4, Lja5;

    .line 965
    .line 966
    invoke-direct {v4, v8}, Lja5;-><init>(Ljava/util/Map;)V

    .line 967
    .line 968
    .line 969
    const/4 v13, 0x2

    .line 970
    goto :goto_23

    .line 971
    :cond_19
    const-string v9, ";"

    .line 972
    .line 973
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v4

    .line 977
    array-length v9, v4

    .line 978
    move/from16 v10, v27

    .line 979
    .line 980
    :goto_22
    if-ge v10, v9, :cond_1b

    .line 981
    .line 982
    aget-object v11, v4, v10

    .line 983
    .line 984
    const-string v12, "="

    .line 985
    .line 986
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v11

    .line 990
    array-length v12, v11

    .line 991
    const/4 v13, 0x2

    .line 992
    if-lt v12, v13, :cond_1a

    .line 993
    .line 994
    sget-object v12, Lma5;->a:Lz43;

    .line 995
    .line 996
    aget-object v14, v11, v27

    .line 997
    .line 998
    invoke-virtual {v12, v14}, Llp1;->contains(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v12

    .line 1002
    if-eqz v12, :cond_1a

    .line 1003
    .line 1004
    aget-object v12, v11, v27

    .line 1005
    .line 1006
    const/16 v28, 0x1

    .line 1007
    .line 1008
    aget-object v11, v11, v28

    .line 1009
    .line 1010
    invoke-virtual {v8, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    .line 1014
    .line 1015
    goto :goto_22

    .line 1016
    :cond_1b
    const/4 v13, 0x2

    .line 1017
    new-instance v4, Lja5;

    .line 1018
    .line 1019
    invoke-direct {v4, v8}, Lja5;-><init>(Ljava/util/Map;)V

    .line 1020
    .line 1021
    .line 1022
    :goto_23
    invoke-virtual/range {v25 .. v25}, Lib0;->v()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual/range {v25 .. v25}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v8

    .line 1029
    invoke-interface {v8, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v7

    .line 1033
    invoke-virtual {v2}, Lja5;->a()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v8

    .line 1037
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v7

    .line 1041
    if-nez v7, :cond_28

    .line 1042
    .line 1043
    invoke-virtual/range {v25 .. v25}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v7

    .line 1047
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v7

    .line 1051
    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v2}, Lja5;->b()Landroid/os/Bundle;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v6

    .line 1061
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 1062
    .line 1063
    .line 1064
    iget-object v1, v1, La25;->n:Lx15;

    .line 1065
    .line 1066
    const-string v7, "Consent generated from Tcf"

    .line 1067
    .line 1068
    invoke-virtual {v1, v6, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1072
    .line 1073
    if-eq v6, v1, :cond_1c

    .line 1074
    .line 1075
    move-object/from16 v1, v26

    .line 1076
    .line 1077
    iget-object v1, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 1078
    .line 1079
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1080
    .line 1081
    .line 1082
    move-result-wide v7

    .line 1083
    const/16 v1, -0x1e

    .line 1084
    .line 1085
    move-object/from16 v9, p0

    .line 1086
    .line 1087
    invoke-virtual {v9, v6, v1, v7, v8}, Lm75;->P(Landroid/os/Bundle;IJ)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_24

    .line 1091
    :cond_1c
    move-object/from16 v9, p0

    .line 1092
    .line 1093
    :goto_24
    new-instance v1, Landroid/os/Bundle;

    .line 1094
    .line 1095
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .line 1097
    .line 1098
    iget-object v6, v4, Lja5;->a:Ljava/util/HashMap;

    .line 1099
    .line 1100
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v7

    .line 1104
    if-nez v7, :cond_1d

    .line 1105
    .line 1106
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    check-cast v0, Ljava/lang/String;

    .line 1111
    .line 1112
    if-nez v0, :cond_1d

    .line 1113
    .line 1114
    move-object v12, v3

    .line 1115
    goto :goto_25

    .line 1116
    :cond_1d
    move-object/from16 v12, v33

    .line 1117
    .line 1118
    :goto_25
    invoke-virtual {v2}, Lja5;->b()Landroid/os/Bundle;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    invoke-virtual {v4}, Lja5;->b()Landroid/os/Bundle;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    .line 1127
    .line 1128
    .line 1129
    move-result v6

    .line 1130
    invoke-virtual {v4}, Landroid/os/BaseBundle;->size()I

    .line 1131
    .line 1132
    .line 1133
    move-result v7

    .line 1134
    if-eq v6, v7, :cond_1e

    .line 1135
    .line 1136
    goto :goto_26

    .line 1137
    :cond_1e
    const-string v6, "ad_storage"

    .line 1138
    .line 1139
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v7

    .line 1143
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v6

    .line 1147
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v6

    .line 1151
    if-nez v6, :cond_1f

    .line 1152
    .line 1153
    goto :goto_26

    .line 1154
    :cond_1f
    const-string v6, "ad_personalization"

    .line 1155
    .line 1156
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v7

    .line 1160
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v6

    .line 1164
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v6

    .line 1168
    if-nez v6, :cond_20

    .line 1169
    .line 1170
    goto :goto_26

    .line 1171
    :cond_20
    const-string v6, "ad_user_data"

    .line 1172
    .line 1173
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v4

    .line 1181
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v0

    .line 1185
    if-nez v0, :cond_21

    .line 1186
    .line 1187
    :goto_26
    move-object v0, v3

    .line 1188
    goto :goto_27

    .line 1189
    :cond_21
    move-object/from16 v0, v33

    .line 1190
    .line 1191
    :goto_27
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    const-string v4, "_tcfm"

    .line 1196
    .line 1197
    invoke-virtual {v1, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    const-string v0, "PurposeDiagnostics"

    .line 1201
    .line 1202
    iget-object v4, v2, Lja5;->a:Ljava/util/HashMap;

    .line 1203
    .line 1204
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    check-cast v0, Ljava/lang/String;

    .line 1209
    .line 1210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v6

    .line 1214
    if-eqz v6, :cond_22

    .line 1215
    .line 1216
    const-string v0, "200000"

    .line 1217
    .line 1218
    :cond_22
    const-string v6, "_tcfd2"

    .line 1219
    .line 1220
    invoke-virtual {v1, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1226
    .line 1227
    .line 1228
    :try_start_5
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v5

    .line 1232
    check-cast v5, Ljava/lang/String;

    .line 1233
    .line 1234
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v6

    .line 1238
    if-nez v6, :cond_23

    .line 1239
    .line 1240
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    move-result v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1244
    goto :goto_28

    .line 1245
    :catch_5
    :cond_23
    const/4 v5, -0x1

    .line 1246
    :goto_28
    const/16 v6, 0x3f

    .line 1247
    .line 1248
    const-string v7, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    .line 1249
    .line 1250
    if-ltz v5, :cond_24

    .line 1251
    .line 1252
    const/16 v8, 0xfff

    .line 1253
    .line 1254
    if-gt v5, v8, :cond_24

    .line 1255
    .line 1256
    shr-int/lit8 v8, v5, 0x6

    .line 1257
    .line 1258
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 1259
    .line 1260
    .line 1261
    move-result v8

    .line 1262
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    and-int/2addr v5, v6

    .line 1266
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 1267
    .line 1268
    .line 1269
    move-result v5

    .line 1270
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    goto :goto_29

    .line 1274
    :cond_24
    const-string v5, "00"

    .line 1275
    .line 1276
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    :goto_29
    invoke-virtual {v2}, Lja5;->c()I

    .line 1280
    .line 1281
    .line 1282
    move-result v2

    .line 1283
    if-ltz v2, :cond_25

    .line 1284
    .line 1285
    if-gt v2, v6, :cond_25

    .line 1286
    .line 1287
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    .line 1288
    .line 1289
    .line 1290
    move-result v2

    .line 1291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    :goto_2a
    const/4 v12, 0x1

    .line 1295
    goto :goto_2b

    .line 1296
    :cond_25
    move-object/from16 v2, v33

    .line 1297
    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    goto :goto_2a

    .line 1302
    :goto_2b
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1303
    .line 1304
    .line 1305
    move-object/from16 v2, v31

    .line 1306
    .line 1307
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v2

    .line 1311
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result v2

    .line 1315
    if-eq v12, v2, :cond_26

    .line 1316
    .line 1317
    :goto_2c
    move-object/from16 v2, v30

    .line 1318
    .line 1319
    goto :goto_2d

    .line 1320
    :cond_26
    move/from16 v27, v13

    .line 1321
    .line 1322
    goto :goto_2c

    .line 1323
    :goto_2d
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    or-int/lit8 v3, v27, 0x4

    .line 1332
    .line 1333
    if-eqz v2, :cond_27

    .line 1334
    .line 1335
    or-int/lit8 v3, v27, 0xc

    .line 1336
    .line 1337
    :cond_27
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    .line 1338
    .line 1339
    .line 1340
    move-result v2

    .line 1341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    const-string v2, "_tcfd"

    .line 1349
    .line 1350
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    const-string v0, "auto"

    .line 1354
    .line 1355
    const-string v2, "_tcf"

    .line 1356
    .line 1357
    invoke-virtual {v9, v0, v2, v1}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1358
    .line 1359
    .line 1360
    :cond_28
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lr45;

    .line 7
    .line 8
    iget-object v1, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    sget-object v5, Le05;->e1:Ld05;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :goto_0
    move-object v2, p0

    .line 32
    move-object v8, p1

    .line 33
    move-object v9, p2

    .line 34
    move-object v7, p3

    .line 35
    move-wide v5, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    invoke-virtual/range {v2 .. v9}, Lm75;->D(JJLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final D(JJLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lm75;->d:Lpc4;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static/range {p7 .. p7}, Lac5;->Y(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v9, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    const/4 v8, 0x1

    .line 20
    const/4 v10, 0x1

    .line 21
    move-object v0, p0

    .line 22
    move-wide v3, p1

    .line 23
    move-wide v5, p3

    .line 24
    move-object/from16 v7, p5

    .line 25
    .line 26
    move-object/from16 v1, p6

    .line 27
    .line 28
    move-object/from16 v2, p7

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v10}, Lm75;->E(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;ZZZ)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;ZZZ)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p7

    .line 8
    .line 9
    move/from16 v10, p10

    .line 10
    .line 11
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Laz4;->v()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lj05;->w()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v11, v0

    .line 26
    check-cast v11, Lr45;

    .line 27
    .line 28
    invoke-virtual {v11}, Lr45;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v12, v11, Lr45;->h:Lia5;

    .line 33
    .line 34
    iget-object v13, v11, Lr45;->d:Lds4;

    .line 35
    .line 36
    iget-object v2, v11, Lr45;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v14, v11, Lr45;->i:Lac5;

    .line 39
    .line 40
    iget-object v15, v11, Lr45;->f:La25;

    .line 41
    .line 42
    if-eqz v0, :cond_2a

    .line 43
    .line 44
    invoke-virtual {v11}, Lr45;->q()Lg15;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lg15;->k:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v15, La25;->m:Lx15;

    .line 62
    .line 63
    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 64
    .line 65
    invoke-virtual {v0, v8, v7, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    iget-boolean v0, v1, Lm75;->f:Z

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x1

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iput-boolean v4, v1, Lm75;->f:Z

    .line 76
    .line 77
    :try_start_0
    iget-boolean v0, v11, Lr45;->b:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .line 79
    const-string v5, "com.google.android.gms.tagmanager.TagManagerService"

    .line 80
    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v5, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_0
    :try_start_2
    const-string v5, "initialize"

    .line 97
    .line 98
    const-class v6, Landroid/content/Context;

    .line 99
    .line 100
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_3
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, v15, La25;->i:Lx15;

    .line 121
    .line 122
    const-string v5, "Failed to invoke Tag Manager\'s initialize() method"

    .line 123
    .line 124
    invoke-virtual {v2, v0, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_1
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v15, La25;->l:Lx15;

    .line 132
    .line 133
    const-string v2, "Tag Manager is not found and thus will not be used"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_1
    iget-object v0, v11, Lr45;->j:Lp15;

    .line 139
    .line 140
    iget-object v2, v11, Lr45;->e:Lf35;

    .line 141
    .line 142
    iget-object v5, v11, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 143
    .line 144
    sget-object v6, Le05;->Z0:Ld05;

    .line 145
    .line 146
    invoke-virtual {v13, v3, v6}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-nez v6, :cond_3

    .line 151
    .line 152
    const-string v6, "_cmp"

    .line 153
    .line 154
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_3

    .line 159
    .line 160
    const-string v6, "gclid"

    .line 161
    .line 162
    invoke-virtual {v9, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v16

    .line 166
    if-eqz v16, :cond_3

    .line 167
    .line 168
    invoke-virtual {v9, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    move-object/from16 v16, v2

    .line 173
    .line 174
    move-object/from16 v17, v3

    .line 175
    .line 176
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    move-object/from16 v18, v5

    .line 181
    .line 182
    const-string v5, "auto"

    .line 183
    .line 184
    move/from16 v19, v4

    .line 185
    .line 186
    move-object v4, v6

    .line 187
    const-string v6, "_lgclid"

    .line 188
    .line 189
    move-object/from16 v20, v13

    .line 190
    .line 191
    move-object/from16 v13, v17

    .line 192
    .line 193
    invoke-virtual/range {v1 .. v6}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_3
    move-object/from16 v16, v2

    .line 198
    .line 199
    move-object/from16 v18, v5

    .line 200
    .line 201
    move-object/from16 v20, v13

    .line 202
    .line 203
    move-object v13, v3

    .line 204
    :goto_2
    const/4 v2, 0x0

    .line 205
    if-eqz p8, :cond_4

    .line 206
    .line 207
    sget-object v3, Lac5;->j:[Ljava/lang/String;

    .line 208
    .line 209
    aget-object v3, v3, v2

    .line 210
    .line 211
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_4

    .line 216
    .line 217
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 218
    .line 219
    .line 220
    invoke-static/range {v16 .. v16}, Lr45;->j(Lib0;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v3, v16

    .line 224
    .line 225
    iget-object v4, v3, Lf35;->y:Lqd1;

    .line 226
    .line 227
    invoke-virtual {v4}, Lqd1;->J()Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v14, v9, v4}, Lac5;->I(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_4
    move-object/from16 v3, v16

    .line 236
    .line 237
    :goto_3
    iget-object v4, v1, Lm75;->v:Lra3;

    .line 238
    .line 239
    if-nez v10, :cond_b

    .line 240
    .line 241
    const-string v6, "_iap"

    .line 242
    .line 243
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-nez v6, :cond_b

    .line 248
    .line 249
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 250
    .line 251
    .line 252
    const-string v6, "event"

    .line 253
    .line 254
    invoke-virtual {v14, v6, v8}, Lac5;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v16

    .line 258
    const/16 v17, 0x2

    .line 259
    .line 260
    if-nez v16, :cond_5

    .line 261
    .line 262
    move-object/from16 v22, v4

    .line 263
    .line 264
    :goto_4
    const/16 v2, 0x28

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_5
    iget-object v2, v14, Lib0;->a:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v2, Lr45;

    .line 270
    .line 271
    sget-object v5, Lca;->g:[Ljava/lang/String;

    .line 272
    .line 273
    iget-object v2, v2, Lr45;->d:Lds4;

    .line 274
    .line 275
    move-object/from16 v22, v4

    .line 276
    .line 277
    sget-object v4, Le05;->f1:Ld05;

    .line 278
    .line 279
    invoke-virtual {v2, v13, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_6

    .line 284
    .line 285
    sget-object v2, Lca;->i:[Ljava/lang/String;

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_6
    sget-object v2, Lca;->h:[Ljava/lang/String;

    .line 289
    .line 290
    :goto_5
    invoke-virtual {v14, v6, v5, v2, v8}, Lac5;->z0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_7

    .line 295
    .line 296
    const/16 v17, 0xd

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_7
    const/16 v2, 0x28

    .line 300
    .line 301
    invoke-virtual {v14, v6, v2, v8}, Lac5;->A0(Ljava/lang/String;ILjava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-nez v4, :cond_8

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_8
    const/16 v17, 0x0

    .line 309
    .line 310
    :goto_6
    if-eqz v17, :cond_a

    .line 311
    .line 312
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v15, La25;->h:Lx15;

    .line 316
    .line 317
    invoke-virtual {v0, v8}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 322
    .line 323
    invoke-virtual {v1, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x1

    .line 330
    invoke-static {v8, v2, v4}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v8, :cond_9

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    goto :goto_7

    .line 341
    :cond_9
    const/4 v2, 0x0

    .line 342
    :goto_7
    const/4 v1, 0x0

    .line 343
    const-string v3, "_ev"

    .line 344
    .line 345
    move-object/from16 p4, v0

    .line 346
    .line 347
    move-object/from16 p1, v1

    .line 348
    .line 349
    move/from16 p5, v2

    .line 350
    .line 351
    move-object/from16 p3, v3

    .line 352
    .line 353
    move/from16 p2, v17

    .line 354
    .line 355
    move-object/from16 p0, v22

    .line 356
    .line 357
    invoke-static/range {p0 .. p5}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_a
    :goto_8
    const/4 v4, 0x1

    .line 362
    goto :goto_9

    .line 363
    :cond_b
    move-object/from16 v22, v4

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :goto_9
    iget-object v2, v11, Lr45;->l:Lf85;

    .line 367
    .line 368
    invoke-static {v2}, Lr45;->k(Lj05;)V

    .line 369
    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    invoke-virtual {v2, v5}, Lf85;->z(Z)Lw75;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    const-string v5, "_sc"

    .line 377
    .line 378
    if-eqz v6, :cond_c

    .line 379
    .line 380
    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v17

    .line 384
    if-nez v17, :cond_c

    .line 385
    .line 386
    iput-boolean v4, v6, Lw75;->d:Z

    .line 387
    .line 388
    :cond_c
    if-eqz p8, :cond_d

    .line 389
    .line 390
    if-nez v10, :cond_d

    .line 391
    .line 392
    move v13, v4

    .line 393
    goto :goto_a

    .line 394
    :cond_d
    const/4 v13, 0x0

    .line 395
    :goto_a
    invoke-static {v6, v9, v13}, Lac5;->q0(Lw75;Landroid/os/Bundle;Z)V

    .line 396
    .line 397
    .line 398
    const-string v6, "am"

    .line 399
    .line 400
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    invoke-static {v8}, Lac5;->Y(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    if-eqz p8, :cond_f

    .line 409
    .line 410
    iget-object v4, v1, Lm75;->d:Lpc4;

    .line 411
    .line 412
    if-eqz v4, :cond_f

    .line 413
    .line 414
    if-nez v13, :cond_f

    .line 415
    .line 416
    if-eqz v6, :cond_e

    .line 417
    .line 418
    const/4 v13, 0x1

    .line 419
    goto :goto_b

    .line 420
    :cond_e
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v15, La25;->m:Lx15;

    .line 424
    .line 425
    invoke-virtual {v0, v8}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v0, v9}, Lp15;->e(Landroid/os/Bundle;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v4, "Passing event to registered event handler (FE)"

    .line 434
    .line 435
    invoke-virtual {v2, v3, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v0, v1, Lm75;->d:Lpc4;

    .line 439
    .line 440
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    iget-object v6, v1, Lm75;->d:Lpc4;

    .line 444
    .line 445
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    :try_start_4
    iget-object v0, v6, Lpc4;->o:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v0, Ltw4;

    .line 451
    .line 452
    move-wide/from16 v4, p3

    .line 453
    .line 454
    move-object v1, v7

    .line 455
    move-object v2, v8

    .line 456
    move-object v3, v9

    .line 457
    invoke-interface/range {v0 .. v5}, Ltw4;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 458
    .line 459
    .line 460
    goto/16 :goto_1c

    .line 461
    .line 462
    :catch_2
    move-exception v0

    .line 463
    iget-object v1, v6, Lpc4;->p:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 466
    .line 467
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lr45;

    .line 468
    .line 469
    if-eqz v1, :cond_29

    .line 470
    .line 471
    iget-object v1, v1, Lr45;->f:La25;

    .line 472
    .line 473
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v1, La25;->i:Lx15;

    .line 477
    .line 478
    const-string v2, "Event interceptor threw exception"

    .line 479
    .line 480
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_1c

    .line 484
    .line 485
    :cond_f
    move v13, v6

    .line 486
    :goto_b
    invoke-virtual {v11}, Lr45;->h()Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-nez v4, :cond_10

    .line 491
    .line 492
    goto/16 :goto_1c

    .line 493
    .line 494
    :cond_10
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 495
    .line 496
    .line 497
    iget-object v4, v14, Lib0;->a:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast v4, Lr45;

    .line 500
    .line 501
    invoke-virtual {v14, v8}, Lac5;->B0(Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    if-eqz v6, :cond_12

    .line 506
    .line 507
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v15, La25;->h:Lx15;

    .line 511
    .line 512
    invoke-virtual {v0, v8}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    const-string v2, "Invalid event name. Event will not be logged (FE)"

    .line 517
    .line 518
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const/4 v1, 0x1

    .line 522
    const/16 v2, 0x28

    .line 523
    .line 524
    invoke-static {v8, v2, v1}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    if-eqz v8, :cond_11

    .line 529
    .line 530
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    goto :goto_c

    .line 535
    :cond_11
    const/4 v2, 0x0

    .line 536
    :goto_c
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 537
    .line 538
    .line 539
    const-string v1, "_ev"

    .line 540
    .line 541
    const/4 v3, 0x0

    .line 542
    move-object/from16 p4, v0

    .line 543
    .line 544
    move-object/from16 p3, v1

    .line 545
    .line 546
    move/from16 p5, v2

    .line 547
    .line 548
    move-object/from16 p1, v3

    .line 549
    .line 550
    move/from16 p2, v6

    .line 551
    .line 552
    move-object/from16 p0, v22

    .line 553
    .line 554
    invoke-static/range {p0 .. p5}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :cond_12
    const/16 v21, 0x1

    .line 559
    .line 560
    const-string v0, "_sn"

    .line 561
    .line 562
    const-string v6, "_si"

    .line 563
    .line 564
    move-object/from16 v19, v11

    .line 565
    .line 566
    const-string v11, "_o"

    .line 567
    .line 568
    filled-new-array {v11, v0, v5, v6}, [Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v14, v8, v9, v0, v10}, Lac5;->F(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    invoke-static {v2}, Lr45;->k(Lj05;)V

    .line 584
    .line 585
    .line 586
    const/4 v5, 0x0

    .line 587
    invoke-virtual {v2, v5}, Lf85;->z(Z)Lw75;

    .line 588
    .line 589
    .line 590
    move-result-object v6

    .line 591
    const-string v9, "_ae"

    .line 592
    .line 593
    move-object/from16 p8, v11

    .line 594
    .line 595
    if-eqz v6, :cond_13

    .line 596
    .line 597
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    if-eqz v6, :cond_13

    .line 602
    .line 603
    invoke-static {v12}, Lr45;->k(Lj05;)V

    .line 604
    .line 605
    .line 606
    iget-object v6, v12, Lia5;->f:Lx23;

    .line 607
    .line 608
    iget-object v5, v6, Lx23;->q:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v5, Lia5;

    .line 611
    .line 612
    iget-object v5, v5, Lib0;->a:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v5, Lr45;

    .line 615
    .line 616
    iget-object v5, v5, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 617
    .line 618
    const-wide/16 v22, 0x0

    .line 619
    .line 620
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 621
    .line 622
    .line 623
    move-result-wide v10

    .line 624
    move-object v5, v2

    .line 625
    iget-wide v1, v6, Lx23;->o:J

    .line 626
    .line 627
    sub-long v1, v10, v1

    .line 628
    .line 629
    iput-wide v10, v6, Lx23;->o:J

    .line 630
    .line 631
    cmp-long v6, v1, v22

    .line 632
    .line 633
    if-lez v6, :cond_14

    .line 634
    .line 635
    invoke-virtual {v14, v0, v1, v2}, Lac5;->g0(Landroid/os/Bundle;J)V

    .line 636
    .line 637
    .line 638
    goto :goto_d

    .line 639
    :cond_13
    move-object v5, v2

    .line 640
    const-wide/16 v22, 0x0

    .line 641
    .line 642
    :cond_14
    :goto_d
    const-string v1, "auto"

    .line 643
    .line 644
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    const-string v2, "_ffr"

    .line 649
    .line 650
    if-nez v1, :cond_18

    .line 651
    .line 652
    const-string v1, "_ssr"

    .line 653
    .line 654
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_18

    .line 659
    .line 660
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-static {v1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_15

    .line 669
    .line 670
    const/4 v1, 0x0

    .line 671
    goto :goto_e

    .line 672
    :cond_15
    if-eqz v1, :cond_16

    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    :cond_16
    :goto_e
    iget-object v2, v4, Lr45;->e:Lf35;

    .line 679
    .line 680
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 681
    .line 682
    .line 683
    iget-object v2, v2, Lf35;->v:Lmu0;

    .line 684
    .line 685
    invoke-virtual {v2}, Lmu0;->h()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-nez v2, :cond_17

    .line 694
    .line 695
    iget-object v2, v4, Lr45;->e:Lf35;

    .line 696
    .line 697
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 698
    .line 699
    .line 700
    iget-object v2, v2, Lf35;->v:Lmu0;

    .line 701
    .line 702
    invoke-virtual {v2, v1}, Lmu0;->i(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    goto :goto_f

    .line 706
    :cond_17
    iget-object v0, v4, Lr45;->f:La25;

    .line 707
    .line 708
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v0, La25;->m:Lx15;

    .line 712
    .line 713
    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 714
    .line 715
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :cond_18
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-eqz v1, :cond_19

    .line 724
    .line 725
    iget-object v1, v4, Lr45;->e:Lf35;

    .line 726
    .line 727
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 728
    .line 729
    .line 730
    iget-object v1, v1, Lf35;->v:Lmu0;

    .line 731
    .line 732
    invoke-virtual {v1}, Lmu0;->h()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 737
    .line 738
    .line 739
    move-result v4

    .line 740
    if-nez v4, :cond_19

    .line 741
    .line 742
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :cond_19
    :goto_f
    new-instance v10, Ljava/util/ArrayList;

    .line 746
    .line 747
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    sget-object v1, Le05;->S0:Ld05;

    .line 754
    .line 755
    move-object/from16 v2, v20

    .line 756
    .line 757
    const/4 v11, 0x0

    .line 758
    invoke-virtual {v2, v11, v1}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    if-eqz v1, :cond_1a

    .line 763
    .line 764
    invoke-static {v12}, Lr45;->k(Lj05;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v12}, Laz4;->v()V

    .line 768
    .line 769
    .line 770
    iget-boolean v1, v12, Lia5;->d:Z

    .line 771
    .line 772
    goto :goto_10

    .line 773
    :cond_1a
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 774
    .line 775
    .line 776
    iget-object v1, v3, Lf35;->s:Lu25;

    .line 777
    .line 778
    invoke-virtual {v1}, Lu25;->a()Z

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    :goto_10
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 783
    .line 784
    .line 785
    iget-object v2, v3, Lf35;->p:Ly25;

    .line 786
    .line 787
    invoke-virtual {v2}, Ly25;->a()J

    .line 788
    .line 789
    .line 790
    move-result-wide v24

    .line 791
    cmp-long v2, v24, v22

    .line 792
    .line 793
    if-lez v2, :cond_1c

    .line 794
    .line 795
    move-object/from16 v17, v12

    .line 796
    .line 797
    move-wide/from16 v11, p3

    .line 798
    .line 799
    invoke-virtual {v3, v11, v12}, Lf35;->E(J)Z

    .line 800
    .line 801
    .line 802
    move-result v2

    .line 803
    if-eqz v2, :cond_1b

    .line 804
    .line 805
    if-eqz v1, :cond_1b

    .line 806
    .line 807
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v15, La25;->n:Lx15;

    .line 811
    .line 812
    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 813
    .line 814
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    move-object v1, v3

    .line 818
    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 819
    .line 820
    .line 821
    move-result-wide v2

    .line 822
    const-string v6, "_sid"

    .line 823
    .line 824
    const/4 v4, 0x0

    .line 825
    move-object/from16 v24, v5

    .line 826
    .line 827
    const-string v5, "auto"

    .line 828
    .line 829
    move/from16 v8, v21

    .line 830
    .line 831
    move/from16 v21, v13

    .line 832
    .line 833
    move v13, v8

    .line 834
    move-object v8, v1

    .line 835
    const/16 v16, 0x0

    .line 836
    .line 837
    move-object/from16 v1, p0

    .line 838
    .line 839
    invoke-virtual/range {v1 .. v6}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 843
    .line 844
    .line 845
    move-result-wide v2

    .line 846
    const-string v6, "_sno"

    .line 847
    .line 848
    const-string v5, "auto"

    .line 849
    .line 850
    invoke-virtual/range {v1 .. v6}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 854
    .line 855
    .line 856
    move-result-wide v2

    .line 857
    const-string v6, "_se"

    .line 858
    .line 859
    const-string v5, "auto"

    .line 860
    .line 861
    invoke-virtual/range {v1 .. v6}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    iget-object v1, v8, Lf35;->q:Ly25;

    .line 865
    .line 866
    move-wide/from16 v2, v22

    .line 867
    .line 868
    invoke-virtual {v1, v2, v3}, Ly25;->b(J)V

    .line 869
    .line 870
    .line 871
    goto :goto_11

    .line 872
    :cond_1b
    move/from16 v2, v21

    .line 873
    .line 874
    move/from16 v21, v13

    .line 875
    .line 876
    move v13, v2

    .line 877
    move-object/from16 v24, v5

    .line 878
    .line 879
    move-wide/from16 v2, v22

    .line 880
    .line 881
    const/16 v16, 0x0

    .line 882
    .line 883
    goto :goto_11

    .line 884
    :cond_1c
    move/from16 v2, v21

    .line 885
    .line 886
    move/from16 v21, v13

    .line 887
    .line 888
    move v13, v2

    .line 889
    move-object/from16 v24, v5

    .line 890
    .line 891
    move-object/from16 v17, v12

    .line 892
    .line 893
    move-wide/from16 v2, v22

    .line 894
    .line 895
    const/16 v16, 0x0

    .line 896
    .line 897
    move-wide/from16 v11, p3

    .line 898
    .line 899
    :goto_11
    const-string v1, "extend_session"

    .line 900
    .line 901
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 902
    .line 903
    .line 904
    move-result-wide v1

    .line 905
    const-wide/16 v3, 0x1

    .line 906
    .line 907
    cmp-long v1, v1, v3

    .line 908
    .line 909
    if-nez v1, :cond_1d

    .line 910
    .line 911
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 912
    .line 913
    .line 914
    iget-object v1, v15, La25;->n:Lx15;

    .line 915
    .line 916
    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 917
    .line 918
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-static/range {v17 .. v17}, Lr45;->k(Lj05;)V

    .line 922
    .line 923
    .line 924
    move-object/from16 v8, v17

    .line 925
    .line 926
    iget-object v1, v8, Lia5;->e:Lgt4;

    .line 927
    .line 928
    move-wide/from16 v2, p5

    .line 929
    .line 930
    invoke-virtual {v1, v11, v12, v2, v3}, Lgt4;->d(JJ)V

    .line 931
    .line 932
    .line 933
    goto :goto_12

    .line 934
    :cond_1d
    move-wide/from16 v2, p5

    .line 935
    .line 936
    move-object/from16 v8, v17

    .line 937
    .line 938
    :goto_12
    new-instance v1, Ljava/util/ArrayList;

    .line 939
    .line 940
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 941
    .line 942
    .line 943
    move-result-object v4

    .line 944
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 945
    .line 946
    .line 947
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 951
    .line 952
    .line 953
    move-result v4

    .line 954
    move/from16 v5, v16

    .line 955
    .line 956
    :goto_13
    if-ge v5, v4, :cond_23

    .line 957
    .line 958
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v6

    .line 962
    check-cast v6, Ljava/lang/String;

    .line 963
    .line 964
    if-eqz v6, :cond_21

    .line 965
    .line 966
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v15

    .line 973
    move-object/from16 p7, v1

    .line 974
    .line 975
    instance-of v1, v15, Landroid/os/Bundle;

    .line 976
    .line 977
    if-eqz v1, :cond_1e

    .line 978
    .line 979
    new-array v1, v13, [Landroid/os/Bundle;

    .line 980
    .line 981
    check-cast v15, Landroid/os/Bundle;

    .line 982
    .line 983
    aput-object v15, v1, v16

    .line 984
    .line 985
    goto :goto_14

    .line 986
    :cond_1e
    instance-of v1, v15, [Landroid/os/Parcelable;

    .line 987
    .line 988
    if-eqz v1, :cond_1f

    .line 989
    .line 990
    check-cast v15, [Landroid/os/Parcelable;

    .line 991
    .line 992
    array-length v1, v15

    .line 993
    const-class v13, [Landroid/os/Bundle;

    .line 994
    .line 995
    invoke-static {v15, v1, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    check-cast v1, [Landroid/os/Bundle;

    .line 1000
    .line 1001
    goto :goto_14

    .line 1002
    :cond_1f
    instance-of v1, v15, Ljava/util/ArrayList;

    .line 1003
    .line 1004
    if-eqz v1, :cond_20

    .line 1005
    .line 1006
    check-cast v15, Ljava/util/ArrayList;

    .line 1007
    .line 1008
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1009
    .line 1010
    .line 1011
    move-result v1

    .line 1012
    new-array v1, v1, [Landroid/os/Bundle;

    .line 1013
    .line 1014
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    check-cast v1, [Landroid/os/Bundle;

    .line 1019
    .line 1020
    goto :goto_14

    .line 1021
    :cond_20
    const/4 v1, 0x0

    .line 1022
    :goto_14
    if-eqz v1, :cond_22

    .line 1023
    .line 1024
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_15

    .line 1028
    :cond_21
    move-object/from16 p7, v1

    .line 1029
    .line 1030
    :cond_22
    :goto_15
    add-int/lit8 v5, v5, 0x1

    .line 1031
    .line 1032
    move-object/from16 v1, p7

    .line 1033
    .line 1034
    const/4 v13, 0x1

    .line 1035
    goto :goto_13

    .line 1036
    :cond_23
    move/from16 v13, v16

    .line 1037
    .line 1038
    :goto_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    if-ge v13, v0, :cond_28

    .line 1043
    .line 1044
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    check-cast v0, Landroid/os/Bundle;

    .line 1049
    .line 1050
    if-eqz v13, :cond_24

    .line 1051
    .line 1052
    const-string v1, "_ep"

    .line 1053
    .line 1054
    :goto_17
    move-object/from16 v15, p8

    .line 1055
    .line 1056
    goto :goto_18

    .line 1057
    :cond_24
    move-object/from16 v1, p2

    .line 1058
    .line 1059
    goto :goto_17

    .line 1060
    :goto_18
    invoke-virtual {v0, v15, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    if-eqz p9, :cond_25

    .line 1064
    .line 1065
    invoke-virtual {v14, v0}, Lac5;->a0(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    :cond_25
    new-instance v6, Lbu4;

    .line 1070
    .line 1071
    new-instance v2, Lzt4;

    .line 1072
    .line 1073
    invoke-direct {v2, v0}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 1074
    .line 1075
    .line 1076
    move-object v3, v7

    .line 1077
    move-wide v4, v11

    .line 1078
    move-object/from16 v11, p0

    .line 1079
    .line 1080
    move-object v12, v0

    .line 1081
    move-object v0, v6

    .line 1082
    move-wide/from16 v6, p5

    .line 1083
    .line 1084
    invoke-direct/range {v0 .. v7}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 1085
    .line 1086
    .line 1087
    move-object v6, v0

    .line 1088
    invoke-virtual/range {v19 .. v19}, Lr45;->o()Lo95;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v3}, Laz4;->v()V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v3}, Lj05;->w()V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v3}, Lo95;->H()V

    .line 1105
    .line 1106
    .line 1107
    iget-object v0, v3, Lib0;->a:Ljava/lang/Object;

    .line 1108
    .line 1109
    check-cast v0, Lr45;

    .line 1110
    .line 1111
    invoke-virtual {v0}, Lr45;->n()Lm15;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    move/from16 v5, v16

    .line 1123
    .line 1124
    invoke-static {v6, v1, v5}, Ld6;->a(Lbu4;Landroid/os/Parcel;I)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    .line 1133
    .line 1134
    array-length v1, v2

    .line 1135
    const/high16 v4, 0x20000

    .line 1136
    .line 1137
    if-le v1, v4, :cond_26

    .line 1138
    .line 1139
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast v0, Lr45;

    .line 1142
    .line 1143
    iget-object v0, v0, Lr45;->f:La25;

    .line 1144
    .line 1145
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 1146
    .line 1147
    .line 1148
    iget-object v0, v0, La25;->g:Lx15;

    .line 1149
    .line 1150
    const-string v1, "Event is too long for local database. Sending event directly to service"

    .line 1151
    .line 1152
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    const/4 v5, 0x0

    .line 1156
    :goto_19
    const/4 v1, 0x1

    .line 1157
    goto :goto_1a

    .line 1158
    :cond_26
    const/4 v5, 0x0

    .line 1159
    invoke-virtual {v0, v5, v2}, Lm15;->C(I[B)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    move v5, v2

    .line 1164
    goto :goto_19

    .line 1165
    :goto_1a
    invoke-virtual {v3, v1}, Lo95;->L(Z)Lvc5;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4

    .line 1169
    new-instance v2, Lo85;

    .line 1170
    .line 1171
    const/4 v7, 0x1

    .line 1172
    invoke-direct/range {v2 .. v7}, Lo85;-><init>(Lo95;Lvc5;ZLcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v3, v2}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 1176
    .line 1177
    .line 1178
    if-nez v21, :cond_27

    .line 1179
    .line 1180
    iget-object v0, v11, Lm75;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1181
    .line 1182
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v6

    .line 1186
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v0

    .line 1190
    if-eqz v0, :cond_27

    .line 1191
    .line 1192
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    check-cast v0, Lc65;

    .line 1197
    .line 1198
    new-instance v3, Landroid/os/Bundle;

    .line 1199
    .line 1200
    invoke-direct {v3, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1201
    .line 1202
    .line 1203
    move-object/from16 v1, p1

    .line 1204
    .line 1205
    move-object/from16 v2, p2

    .line 1206
    .line 1207
    move-wide/from16 v4, p3

    .line 1208
    .line 1209
    invoke-interface/range {v0 .. v5}, Lc65;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 1210
    .line 1211
    .line 1212
    goto :goto_1b

    .line 1213
    :cond_27
    move-object/from16 v2, p2

    .line 1214
    .line 1215
    add-int/lit8 v13, v13, 0x1

    .line 1216
    .line 1217
    move-object/from16 v7, p1

    .line 1218
    .line 1219
    move-wide/from16 v11, p3

    .line 1220
    .line 1221
    move-wide/from16 v2, p5

    .line 1222
    .line 1223
    move-object/from16 p8, v15

    .line 1224
    .line 1225
    const/16 v16, 0x0

    .line 1226
    .line 1227
    goto/16 :goto_16

    .line 1228
    .line 1229
    :cond_28
    move-object/from16 v2, p2

    .line 1230
    .line 1231
    invoke-static/range {v24 .. v24}, Lr45;->k(Lj05;)V

    .line 1232
    .line 1233
    .line 1234
    move-object/from16 v5, v24

    .line 1235
    .line 1236
    const/4 v0, 0x0

    .line 1237
    invoke-virtual {v5, v0}, Lf85;->z(Z)Lw75;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    if-eqz v0, :cond_29

    .line 1242
    .line 1243
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v0

    .line 1247
    if-eqz v0, :cond_29

    .line 1248
    .line 1249
    invoke-static {v8}, Lr45;->k(Lj05;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 1253
    .line 1254
    .line 1255
    move-result-wide v0

    .line 1256
    iget-object v2, v8, Lia5;->f:Lx23;

    .line 1257
    .line 1258
    const/4 v13, 0x1

    .line 1259
    invoke-virtual {v2, v13, v13, v0, v1}, Lx23;->i(ZZJ)Z

    .line 1260
    .line 1261
    .line 1262
    :cond_29
    :goto_1c
    return-void

    .line 1263
    :cond_2a
    invoke-static {v15}, Lr45;->l(Lq55;)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v0, v15, La25;->m:Lx15;

    .line 1267
    .line 1268
    const-string v1, "Event not sent since app measurement is disabled"

    .line 1269
    .line 1270
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 11

    .line 1
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v2, Lr45;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/16 v5, 0x18

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-object v6, v2, Lr45;->i:Lac5;

    .line 11
    .line 12
    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6, p2}, Lac5;->D0(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v6, v2, Lr45;->i:Lac5;

    .line 21
    .line 22
    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 23
    .line 24
    .line 25
    const-string v7, "user property"

    .line 26
    .line 27
    invoke-virtual {v6, v7, p2}, Lac5;->x0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x6

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    :goto_0
    move v6, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object v8, Lse0;->E:[Ljava/lang/String;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    invoke-virtual {v6, v7, v8, v10, p2}, Lac5;->z0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    const/16 v6, 0xf

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v8, v6, Lib0;->a:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v8, Lr45;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v7, v5, p2}, Lac5;->A0(Ljava/lang/String;ILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v6, v4

    .line 63
    :goto_1
    iget-object v7, p0, Lm75;->v:Lra3;

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    iget-object v0, v2, Lr45;->i:Lac5;

    .line 69
    .line 70
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v5, v8}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    :cond_4
    iget-object v1, v2, Lr45;->i:Lac5;

    .line 84
    .line 85
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    const-string v2, "_ev"

    .line 90
    .line 91
    move-object p4, v0

    .line 92
    move-object p1, v1

    .line 93
    move-object p3, v2

    .line 94
    move/from16 p5, v4

    .line 95
    .line 96
    move p2, v6

    .line 97
    move-object p0, v7

    .line 98
    invoke-static/range {p0 .. p5}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    move-object v6, v7

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    const-string v7, "app"

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    move-object v7, p1

    .line 109
    :goto_2
    if-eqz p3, :cond_b

    .line 110
    .line 111
    iget-object v9, v2, Lr45;->i:Lac5;

    .line 112
    .line 113
    iget-object v10, v2, Lr45;->i:Lac5;

    .line 114
    .line 115
    invoke-static {v9}, Lr45;->j(Lib0;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, p3, p2}, Lac5;->K(Ljava/lang/Object;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_9

    .line 123
    .line 124
    invoke-static {v10}, Lr45;->j(Lib0;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p2, v5, v8}, Lac5;->C(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    instance-of v2, p3, Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    instance-of v2, p3, Ljava/lang/CharSequence;

    .line 136
    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    :cond_8
    invoke-static {v10}, Lr45;->j(Lib0;)V

    .line 148
    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    const-string v2, "_ev"

    .line 152
    .line 153
    move-object p1, v0

    .line 154
    move-object p4, v1

    .line 155
    move-object p3, v2

    .line 156
    move/from16 p5, v4

    .line 157
    .line 158
    move-object p0, v6

    .line 159
    move p2, v9

    .line 160
    invoke-static/range {p0 .. p5}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_9
    invoke-static {v10}, Lr45;->j(Lib0;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, p3, p2}, Lac5;->L(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_a

    .line 172
    .line 173
    iget-object v8, v2, Lr45;->g:Lj45;

    .line 174
    .line 175
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lw45;

    .line 179
    .line 180
    move-object v2, v7

    .line 181
    const/4 v7, 0x1

    .line 182
    move-object v1, p0

    .line 183
    move-object v3, p2

    .line 184
    move-wide/from16 v5, p5

    .line 185
    .line 186
    invoke-direct/range {v0 .. v7}, Lw45;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JI)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    :cond_a
    return-void

    .line 193
    :cond_b
    iget-object v8, v2, Lr45;->g:Lj45;

    .line 194
    .line 195
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lw45;

    .line 199
    .line 200
    move-object v2, v7

    .line 201
    const/4 v7, 0x1

    .line 202
    const/4 v4, 0x0

    .line 203
    move-object v1, p0

    .line 204
    move-object v3, p2

    .line 205
    move-wide/from16 v5, p5

    .line 206
    .line 207
    invoke-direct/range {v0 .. v7}, Lw45;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JI)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lr45;

    .line 6
    .line 7
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Laz4;->v()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lj05;->w()V

    .line 17
    .line 18
    .line 19
    const-string v1, "allow_personalized_ads"

    .line 20
    .line 21
    move-object/from16 v3, p5

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    instance-of v1, v0, Ljava/lang/String;

    .line 31
    .line 32
    const-string v5, "_npa"

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "false"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-wide/16 v6, 0x1

    .line 58
    .line 59
    if-eq v4, v0, :cond_0

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-wide v8, v6

    .line 65
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v3, v2, Lr45;->e:Lf35;

    .line 70
    .line 71
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v3, Lf35;->m:Lmu0;

    .line 75
    .line 76
    cmp-long v6, v8, v6

    .line 77
    .line 78
    if-nez v6, :cond_1

    .line 79
    .line 80
    const-string v1, "true"

    .line 81
    .line 82
    :cond_1
    invoke-virtual {v3, v1}, Lmu0;->i(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget-object v1, v2, Lr45;->e:Lf35;

    .line 89
    .line 90
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v1, Lf35;->m:Lmu0;

    .line 94
    .line 95
    const-string v3, "unset"

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Lmu0;->i(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-object v5, v3

    .line 102
    :goto_1
    iget-object v1, v2, Lr45;->f:La25;

    .line 103
    .line 104
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v1, La25;->n:Lx15;

    .line 108
    .line 109
    const-string v3, "Setting user property(FE)"

    .line 110
    .line 111
    const-string v6, "non_personalized_ads(_npa)"

    .line 112
    .line 113
    invoke-virtual {v1, v6, v0, v3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v11, v5

    .line 117
    :goto_2
    move-object v10, v0

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    move-object v11, v3

    .line 120
    goto :goto_2

    .line 121
    :goto_3
    invoke-virtual {v2}, Lr45;->a()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    iget-object v0, v2, Lr45;->f:La25;

    .line 128
    .line 129
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v0, La25;->n:Lx15;

    .line 133
    .line 134
    const-string v1, "User property not set since app measurement is disabled"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    invoke-virtual {v2}, Lr45;->h()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_6

    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    new-instance v7, Lvb5;

    .line 148
    .line 149
    move-wide v8, p1

    .line 150
    move-object/from16 v12, p4

    .line 151
    .line 152
    invoke-direct/range {v7 .. v12}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lr45;->o()Lo95;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Laz4;->v()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lj05;->w()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lo95;->H()V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lr45;

    .line 171
    .line 172
    invoke-virtual {v1}, Lr45;->n()Lm15;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v7, v2}, Lav4;->a(Lvb5;Landroid/os/Parcel;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 191
    .line 192
    .line 193
    array-length v2, v3

    .line 194
    const/high16 v5, 0x20000

    .line 195
    .line 196
    if-le v2, v5, :cond_7

    .line 197
    .line 198
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v1, Lr45;

    .line 201
    .line 202
    iget-object v1, v1, Lr45;->f:La25;

    .line 203
    .line 204
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v1, La25;->g:Lx15;

    .line 208
    .line 209
    const-string v2, "User property too long for local database. Sending directly to service"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x0

    .line 215
    goto :goto_4

    .line 216
    :cond_7
    invoke-virtual {v1, v4, v3}, Lm15;->C(I[B)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    :goto_4
    invoke-virtual {v0, v4}, Lo95;->L(Z)Lvc5;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    new-instance v3, Lo85;

    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    move-object p1, v0

    .line 228
    move/from16 p3, v1

    .line 229
    .line 230
    move-object p2, v2

    .line 231
    move-object p0, v3

    .line 232
    move/from16 p5, v4

    .line 233
    .line 234
    move-object/from16 p4, v7

    .line 235
    .line 236
    invoke-direct/range {p0 .. p5}, Lo85;-><init>(Lo95;Lvc5;ZLcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;I)V

    .line 237
    .line 238
    .line 239
    move-object v1, p0

    .line 240
    invoke-virtual {v0, v1}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final H()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj05;->w()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr45;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr45;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 20
    .line 21
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lr45;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lr45;->f:La25;

    .line 43
    .line 44
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v1, La25;->m:Lx15;

    .line 48
    .line 49
    const-string v2, "Deferred Deep Link feature enabled."

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lr45;->g:Lj45;

    .line 55
    .line 56
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lh65;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v2, p0, v3}, Lh65;-><init>(Lm75;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Laz4;->v()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lj05;->w()V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v1, v2}, Lo95;->L(Z)Lvc5;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1}, Lo95;->H()V

    .line 84
    .line 85
    .line 86
    iget-object v4, v1, Lib0;->a:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Lr45;

    .line 89
    .line 90
    iget-object v5, v4, Lr45;->d:Lds4;

    .line 91
    .line 92
    sget-object v6, Le05;->W0:Ld05;

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-virtual {v5, v7, v6}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lr45;->n()Lm15;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const/4 v5, 0x3

    .line 103
    const/4 v6, 0x0

    .line 104
    new-array v8, v6, [B

    .line 105
    .line 106
    invoke-virtual {v4, v5, v8}, Lm15;->C(I[B)Z

    .line 107
    .line 108
    .line 109
    new-instance v4, Lq85;

    .line 110
    .line 111
    invoke-direct {v4, v1, v3, v2}, Lq85;-><init>(Lo95;Lvc5;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    iput-boolean v6, p0, Lm75;->r:Z

    .line 118
    .line 119
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 120
    .line 121
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lib0;->v()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v3, "previous_os_version"

    .line 132
    .line 133
    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-object v4, v1, Lib0;->a:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Lr45;

    .line 140
    .line 141
    invoke-virtual {v4}, Lr45;->p()Lst4;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lq55;->x()V

    .line 146
    .line 147
    .line 148
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_2

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_2

    .line 161
    .line 162
    invoke-virtual {v1}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    .line 175
    .line 176
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0}, Lr45;->p()Lst4;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lq55;->x()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_3

    .line 194
    .line 195
    new-instance v0, Landroid/os/Bundle;

    .line 196
    .line 197
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v1, "_po"

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "auto"

    .line 206
    .line 207
    const-string v2, "_ou"

    .line 208
    .line 209
    invoke-virtual {p0, v1, v2, v0}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    :goto_0
    return-void
.end method

.method public final I(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "app_id"

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v0, Lr45;->f:La25;

    .line 26
    .line 27
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v2, La25;->i:Lx15;

    .line 31
    .line 32
    const-string v3, "Package name should be null when calling setConditionalUserProperty"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-class v2, Ljava/lang/String;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v1, p1, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const-string p1, "origin"

    .line 50
    .line 51
    invoke-static {v1, p1, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v4, "name"

    .line 55
    .line 56
    invoke-static {v1, v4, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-class v5, Ljava/lang/Object;

    .line 60
    .line 61
    const-string v6, "value"

    .line 62
    .line 63
    invoke-static {v1, v6, v5, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const-string v5, "trigger_event_name"

    .line 67
    .line 68
    invoke-static {v1, v5, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .line 73
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, "trigger_timeout"

    .line 78
    .line 79
    const-class v9, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-static {v1, v8, v9, v7}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v10, "timed_out_event_name"

    .line 85
    .line 86
    invoke-static {v1, v10, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v10, "timed_out_event_params"

    .line 90
    .line 91
    const-class v11, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-static {v1, v10, v11, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v10, "triggered_event_name"

    .line 97
    .line 98
    invoke-static {v1, v10, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string v10, "triggered_event_params"

    .line 102
    .line 103
    invoke-static {v1, v10, v11, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string v10, "time_to_live"

    .line 107
    .line 108
    invoke-static {v1, v10, v9, v7}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v7, "expired_event_name"

    .line 112
    .line 113
    invoke-static {v1, v7, v2, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v2, "expired_event_params"

    .line 117
    .line 118
    invoke-static {v1, v2, v11, v3}, Lil4;->d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string p1, "creation_timestamp"

    .line 143
    .line 144
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object p3, v0, Lr45;->i:Lac5;

    .line 156
    .line 157
    iget-object v2, v0, Lr45;->j:Lp15;

    .line 158
    .line 159
    iget-object v3, v0, Lr45;->f:La25;

    .line 160
    .line 161
    invoke-static {p3}, Lr45;->j(Lib0;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p1}, Lac5;->D0(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_7

    .line 169
    .line 170
    invoke-static {p3}, Lr45;->j(Lib0;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p2, p1}, Lac5;->K(Ljava/lang/Object;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_6

    .line 178
    .line 179
    invoke-virtual {p3, p2, p1}, Lac5;->L(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    if-nez p3, :cond_1

    .line 184
    .line 185
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 186
    .line 187
    .line 188
    iget-object p0, v3, La25;->f:Lx15;

    .line 189
    .line 190
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string p3, "Unable to normalize conditional user property value"

    .line 195
    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_1
    invoke-static {v1, p3}, Lil4;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 204
    .line 205
    .line 206
    move-result-wide p2

    .line 207
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    const-wide/16 v5, 0x1

    .line 216
    .line 217
    const-wide v7, 0x39ef8b000L

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    if-nez v4, :cond_3

    .line 223
    .line 224
    cmp-long v4, p2, v7

    .line 225
    .line 226
    if-gtz v4, :cond_2

    .line 227
    .line 228
    cmp-long v4, p2, v5

    .line 229
    .line 230
    if-gez v4, :cond_3

    .line 231
    .line 232
    :cond_2
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 233
    .line 234
    .line 235
    iget-object p0, v3, La25;->f:Lx15;

    .line 236
    .line 237
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    const-string p3, "Invalid conditional user property timeout"

    .line 246
    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :cond_3
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 252
    .line 253
    .line 254
    move-result-wide p2

    .line 255
    cmp-long v4, p2, v7

    .line 256
    .line 257
    if-gtz v4, :cond_5

    .line 258
    .line 259
    cmp-long v4, p2, v5

    .line 260
    .line 261
    if-gez v4, :cond_4

    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_4
    iget-object p1, v0, Lr45;->g:Lj45;

    .line 265
    .line 266
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 267
    .line 268
    .line 269
    new-instance p2, Lv65;

    .line 270
    .line 271
    const/4 p3, 0x0

    .line 272
    invoke-direct {p2, p0, v1, p3}, Lv65;-><init>(Lm75;Landroid/os/Bundle;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_5
    :goto_0
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, v3, La25;->f:Lx15;

    .line 283
    .line 284
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    const-string p3, "Invalid conditional user property time to live"

    .line 293
    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_6
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 299
    .line 300
    .line 301
    iget-object p0, v3, La25;->f:Lx15;

    .line 302
    .line 303
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string p3, "Invalid conditional user property value"

    .line 308
    .line 309
    invoke-virtual {p0, p1, p2, p3}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_7
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 314
    .line 315
    .line 316
    iget-object p0, v3, La25;->f:Lx15;

    .line 317
    .line 318
    invoke-virtual {v2, p1}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    const-string p2, "Invalid conditional user property name"

    .line 323
    .line 324
    invoke-virtual {p0, p1, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    iget-object v1, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "name"

    .line 20
    .line 21
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "creation_timestamp"

    .line 25
    .line 26
    invoke-virtual {v3, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const-string p1, "expired_event_name"

    .line 32
    .line 33
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "expired_event_params"

    .line 37
    .line 38
    invoke-virtual {v3, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, v0, Lr45;->g:Lj45;

    .line 42
    .line 43
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lv65;

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    invoke-direct {p2, p0, v3, p3}, Lv65;-><init>(Lm75;Landroid/os/Bundle;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final K()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lr45;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lr45;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lr45;->p:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lvm4;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object p0, p0, Lr45;->f:La25;

    .line 16
    .line 17
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, La25;->f:Lx15;

    .line 21
    .line 22
    const-string v1, "getGoogleAppId failed with exception"

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final L(Ly55;JZ)V
    .locals 7

    .line 1
    iget v0, p1, Ly55;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Laz4;->v()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lj05;->w()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lr45;

    .line 12
    .line 13
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 14
    .line 15
    iget-object v3, v1, Lr45;->f:La25;

    .line 16
    .line 17
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lf35;->C()Ly55;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-wide v4, p0, Lm75;->p:J

    .line 25
    .line 26
    cmp-long v4, p2, v4

    .line 27
    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    iget v2, v2, Ly55;->b:I

    .line 31
    .line 32
    invoke-static {v2, v0}, Ly55;->l(II)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, v3, La25;->l:Lx15;

    .line 42
    .line 43
    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 50
    .line 51
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lib0;->v()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/16 v5, 0x64

    .line 62
    .line 63
    const-string v6, "consent_source"

    .line 64
    .line 65
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-static {v0, v4}, Ly55;->l(II)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1}, Ly55;->g()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v5, "consent_settings"

    .line 88
    .line 89
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v3, La25;->n:Lx15;

    .line 102
    .line 103
    const-string v2, "Setting storage consent(FE)"

    .line 104
    .line 105
    invoke-virtual {v0, p1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-wide p2, p0, Lm75;->p:J

    .line 109
    .line 110
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lo95;->F()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_1

    .line 119
    .line 120
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Laz4;->v()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lj05;->w()V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lh95;

    .line 131
    .line 132
    const/4 p2, 0x2

    .line 133
    invoke-direct {p1, p0, p2}, Lh95;-><init>(Lo95;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Laz4;->v()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lj05;->w()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lo95;->E()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_2

    .line 155
    .line 156
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lo95;->L(Z)Lvc5;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance p2, Lq85;

    .line 162
    .line 163
    invoke-direct {p2, p0, p1}, Lq85;-><init>(Lo95;Lvc5;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 170
    .line 171
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lo95;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    return-void

    .line 184
    :cond_4
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 185
    .line 186
    .line 187
    iget-object p0, v3, La25;->l:Lx15;

    .line 188
    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string p2, "Lower precedence consent source ignored, proposed source"

    .line 194
    .line 195
    invoke-virtual {p0, p1, p2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final M(Ljava/lang/Boolean;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj05;->w()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr45;

    .line 10
    .line 11
    iget-object v1, v0, Lr45;->f:La25;

    .line 12
    .line 13
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, La25;->m:Lx15;

    .line 17
    .line 18
    const-string v2, "Setting app measurement enabled (FE)"

    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 24
    .line 25
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lib0;->v()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "measurement_enabled"

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lib0;->v()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string v1, "measurement_enabled_from_api"

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {p2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p2, v0, Lr45;->g:Lj45;

    .line 89
    .line 90
    invoke-static {p2}, Lr45;->l(Lq55;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lj45;->v()V

    .line 94
    .line 95
    .line 96
    iget-boolean p2, v0, Lr45;->z:Z

    .line 97
    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    return-void

    .line 110
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lm75;->N()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final N()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    check-cast v6, Lr45;

    .line 8
    .line 9
    iget-object v1, v6, Lr45;->e:Lf35;

    .line 10
    .line 11
    iget-object v7, v6, Lr45;->f:La25;

    .line 12
    .line 13
    iget-object v2, v6, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 14
    .line 15
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lf35;->m:Lmu0;

    .line 19
    .line 20
    invoke-virtual {v1}, Lmu0;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const-string v3, "unset"

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    const-string v5, "_npa"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const-string v4, "app"

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v0, "true"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eq v8, v0, :cond_1

    .line 56
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v0, 0x1

    .line 61
    .line 62
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    const-string v4, "app"

    .line 71
    .line 72
    const-string v5, "_npa"

    .line 73
    .line 74
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lr45;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-boolean v1, p0, Lm75;->r:Z

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v7, La25;->m:Lx15;

    .line 92
    .line 93
    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lm75;->H()V

    .line 99
    .line 100
    .line 101
    iget-object v1, v6, Lr45;->h:Lia5;

    .line 102
    .line 103
    invoke-static {v1}, Lr45;->k(Lj05;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v1, Lia5;->e:Lgt4;

    .line 107
    .line 108
    invoke-virtual {v1}, Lgt4;->a()V

    .line 109
    .line 110
    .line 111
    iget-object v1, v6, Lr45;->g:Lj45;

    .line 112
    .line 113
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lh65;

    .line 117
    .line 118
    invoke-direct {v2, p0, v8}, Lh65;-><init>(Lm75;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    invoke-static {v7}, Lr45;->l(Lq55;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v7, La25;->m:Lx15;

    .line 129
    .line 130
    const-string v1, "Updating Scion state (FE)"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lr45;->o()Lo95;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Laz4;->v()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lj05;->w()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v8}, Lo95;->L(Z)Lvc5;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, Lq85;

    .line 150
    .line 151
    const/4 v3, 0x3

    .line 152
    invoke-direct {v2, v0, v1, v3}, Lq85;-><init>(Lo95;Lvc5;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    iget-object v1, v0, Lr45;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v1, v1, Landroid/app/Application;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lm75;->c:Lty4;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lr45;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/Application;

    .line 26
    .line 27
    iget-object p0, p0, Lm75;->c:Lty4;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final P(Landroid/os/Bundle;IJ)V
    .locals 10

    .line 1
    iget-object v3, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v3, Lr45;

    .line 4
    .line 5
    invoke-virtual {p0}, Lj05;->w()V

    .line 6
    .line 7
    .line 8
    sget-object v4, Ly55;->c:Ly55;

    .line 9
    .line 10
    sget-object v4, Lv55;->o:Lv55;

    .line 11
    .line 12
    iget-object v4, v4, Lv55;->n:[Lx55;

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    const/4 v7, 0x0

    .line 17
    if-ge v6, v5, :cond_3

    .line 18
    .line 19
    aget-object v8, v4, v6

    .line 20
    .line 21
    iget-object v8, v8, Lx55;->n:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    if-eqz v8, :cond_2

    .line 34
    .line 35
    const-string v9, "granted"

    .line 36
    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-eqz v9, :cond_0

    .line 42
    .line 43
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v9, "denied"

    .line 47
    .line 48
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v9, v7

    .line 58
    :goto_1
    if-nez v9, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v8, v7

    .line 65
    :goto_2
    if-eqz v8, :cond_4

    .line 66
    .line 67
    iget-object v4, v3, Lr45;->f:La25;

    .line 68
    .line 69
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v4, La25;->k:Lx15;

    .line 73
    .line 74
    const-string v5, "Ignoring invalid consent setting"

    .line 75
    .line 76
    invoke-virtual {v4, v8, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v3, Lr45;->f:La25;

    .line 80
    .line 81
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v4, La25;->k:Lx15;

    .line 85
    .line 86
    const-string v5, "Valid consent values are \'granted\', \'denied\'"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Lx15;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v3, v3, Lr45;->g:Lj45;

    .line 92
    .line 93
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lj45;->B()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {p2, p1}, Ly55;->b(ILandroid/os/Bundle;)Ly55;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v5, v4, Ly55;->a:Ljava/util/EnumMap;

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    sget-object v8, Lu55;->o:Lu55;

    .line 119
    .line 120
    if-eqz v6, :cond_6

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Lu55;

    .line 127
    .line 128
    if-eq v6, v8, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0, v4, v3}, Lm75;->R(Ly55;Z)V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-static {p2, p1}, Lrt4;->c(ILandroid/os/Bundle;)Lrt4;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iget-object v5, v4, Lrt4;->e:Ljava/util/EnumMap;

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_8

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Lu55;

    .line 158
    .line 159
    if-eq v6, v8, :cond_7

    .line 160
    .line 161
    invoke-virtual {p0, v4, v3}, Lm75;->Q(Lrt4;Z)V

    .line 162
    .line 163
    .line 164
    :cond_8
    if-nez p1, :cond_9

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    const-string v4, "ad_personalization"

    .line 168
    .line 169
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v1}, Ly55;->d(Ljava/lang/String;)Lu55;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const/4 v4, 0x2

    .line 182
    if-eq v1, v4, :cond_b

    .line 183
    .line 184
    const/4 v4, 0x3

    .line 185
    if-eq v1, v4, :cond_a

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_b
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 192
    .line 193
    :goto_3
    if-eqz v7, :cond_e

    .line 194
    .line 195
    const/16 v1, -0x1e

    .line 196
    .line 197
    if-ne p2, v1, :cond_c

    .line 198
    .line 199
    const-string v1, "tcf"

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_c
    const-string v1, "app"

    .line 203
    .line 204
    :goto_4
    if-eqz v3, :cond_d

    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const-string v5, "allow_personalized_ads"

    .line 211
    .line 212
    move-object v0, p0

    .line 213
    move-object v4, v1

    .line 214
    move-wide v1, p3

    .line 215
    invoke-virtual/range {v0 .. v5}, Lm75;->G(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const-string v2, "allow_personalized_ads"

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    move-object v0, p0

    .line 227
    move-wide v5, p3

    .line 228
    invoke-virtual/range {v0 .. v6}, Lm75;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 229
    .line 230
    .line 231
    :cond_e
    return-void
.end method

.method public final Q(Lrt4;Z)V
    .locals 3

    .line 1
    new-instance v0, Lrf1;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p0, p1, v2}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Laz4;->v()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lrf1;->run()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lr45;

    .line 21
    .line 22
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 23
    .line 24
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final R(Ly55;Z)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lj05;->w()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Ly55;->b:I

    .line 5
    .line 6
    const/16 v1, -0xa

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v2, p1, Ly55;->a:Ljava/util/EnumMap;

    .line 11
    .line 12
    sget-object v3, Lx55;->o:Lx55;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lu55;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lu55;->o:Lu55;

    .line 23
    .line 24
    :cond_0
    sget-object v3, Lu55;->o:Lu55;

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget-object v2, p1, Ly55;->a:Ljava/util/EnumMap;

    .line 29
    .line 30
    sget-object v4, Lx55;->p:Lx55;

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lu55;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    move-object v2, v3

    .line 41
    :cond_1
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lr45;

    .line 46
    .line 47
    iget-object p0, p0, Lr45;->f:La25;

    .line 48
    .line 49
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, La25;->k:Lx15;

    .line 53
    .line 54
    const-string p1, "Ignoring empty consent settings"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lm75;->h:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v3, p0, Lm75;->n:Ly55;

    .line 64
    .line 65
    iget v3, v3, Ly55;->b:I

    .line 66
    .line 67
    invoke-static {v0, v3}, Ly55;->l(II)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    iget-object v3, p0, Lm75;->n:Ly55;

    .line 75
    .line 76
    iget-object v5, p1, Ly55;->a:Ljava/util/EnumMap;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-array v7, v4, [Lx55;

    .line 83
    .line 84
    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, [Lx55;

    .line 89
    .line 90
    array-length v7, v6

    .line 91
    move v8, v4

    .line 92
    :goto_0
    const/4 v9, 0x1

    .line 93
    if-ge v8, v7, :cond_4

    .line 94
    .line 95
    aget-object v10, v6, v8

    .line 96
    .line 97
    invoke-virtual {v5, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, Lu55;

    .line 102
    .line 103
    iget-object v12, v3, Ly55;->a:Ljava/util/EnumMap;

    .line 104
    .line 105
    invoke-virtual {v12, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    check-cast v10, Lu55;

    .line 110
    .line 111
    sget-object v12, Lu55;->q:Lu55;

    .line 112
    .line 113
    if-ne v11, v12, :cond_3

    .line 114
    .line 115
    if-eq v10, v12, :cond_3

    .line 116
    .line 117
    move v3, v9

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move v3, v4

    .line 123
    :goto_1
    sget-object v5, Lx55;->p:Lx55;

    .line 124
    .line 125
    invoke-virtual {p1, v5}, Ly55;->i(Lx55;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_5

    .line 130
    .line 131
    iget-object v6, p0, Lm75;->n:Ly55;

    .line 132
    .line 133
    invoke-virtual {v6, v5}, Ly55;->i(Lx55;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_5

    .line 138
    .line 139
    move v4, v9

    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object p0, v0

    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :cond_5
    :goto_2
    iget-object v5, p0, Lm75;->n:Ly55;

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ly55;->k(Ly55;)Ly55;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lm75;->n:Ly55;

    .line 152
    .line 153
    move v8, v4

    .line 154
    move v4, v9

    .line 155
    :goto_3
    move-object v5, p1

    .line 156
    goto :goto_4

    .line 157
    :cond_6
    move v3, v4

    .line 158
    move v8, v3

    .line 159
    goto :goto_3

    .line 160
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-nez v4, :cond_7

    .line 162
    .line 163
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p0, Lr45;

    .line 166
    .line 167
    iget-object p0, p0, Lr45;->f:La25;

    .line 168
    .line 169
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, La25;->l:Lx15;

    .line 173
    .line 174
    const-string p1, "Ignoring lower-priority consent settings, proposed settings"

    .line 175
    .line 176
    invoke-virtual {p0, v5, p1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    iget-object p1, p0, Lm75;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    if-eqz v3, :cond_9

    .line 187
    .line 188
    iget-object p1, p0, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Lz65;

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    move-object v4, p0

    .line 198
    invoke-direct/range {v3 .. v9}, Lz65;-><init>(Lm75;Ly55;JZI)V

    .line 199
    .line 200
    .line 201
    if-eqz p2, :cond_8

    .line 202
    .line 203
    invoke-virtual {v4}, Laz4;->v()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Lz65;->run()V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_8
    iget-object p0, v4, Lib0;->a:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p0, Lr45;

    .line 213
    .line 214
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 215
    .line 216
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v3}, Lj45;->G(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    move-object v4, p0

    .line 224
    new-instance v3, Lz65;

    .line 225
    .line 226
    const/4 v9, 0x1

    .line 227
    invoke-direct/range {v3 .. v9}, Lz65;-><init>(Lm75;Ly55;JZI)V

    .line 228
    .line 229
    .line 230
    if-eqz p2, :cond_a

    .line 231
    .line 232
    invoke-virtual {v4}, Laz4;->v()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lz65;->run()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_a
    const/16 p0, 0x1e

    .line 240
    .line 241
    if-eq v0, p0, :cond_c

    .line 242
    .line 243
    if-ne v0, v1, :cond_b

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_b
    iget-object p0, v4, Lib0;->a:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast p0, Lr45;

    .line 249
    .line 250
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 251
    .line 252
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v3}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_c
    :goto_5
    iget-object p0, v4, Lib0;->a:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p0, Lr45;

    .line 262
    .line 263
    iget-object p0, p0, Lr45;->g:Lj45;

    .line 264
    .line 265
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v3}, Lj45;->G(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    throw p0
.end method

.method public final S()V
    .locals 8

    .line 1
    invoke-static {}, Ler4;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lr45;

    .line 7
    .line 8
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 9
    .line 10
    iget-object v2, v0, Lr45;->g:Lj45;

    .line 11
    .line 12
    iget-object v0, v0, Lr45;->f:La25;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    sget-object v4, Le05;->P0:Ld05;

    .line 16
    .line 17
    invoke-virtual {v1, v3, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lj45;->B()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lpr3;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lj05;->w()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, La25;->n:Lx15;

    .line 45
    .line 46
    const-string v3, "Getting trigger URIs (FE)"

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lu65;

    .line 60
    .line 61
    const/4 v1, 0x5

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v7, p0, v3, v1, v4}, Lu65;-><init>(Lm75;Ljava/util/concurrent/atomic/AtomicReference;IZ)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v4, 0x2710

    .line 67
    .line 68
    const-string v6, "get trigger URIs"

    .line 69
    .line 70
    invoke-virtual/range {v2 .. v7}, Lj45;->F(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/List;

    .line 78
    .line 79
    if-nez v1, :cond_0

    .line 80
    .line 81
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, v0, La25;->h:Lx15;

    .line 85
    .line 86
    const-string v0, "Timed out waiting for get trigger URIs"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lrf1;

    .line 96
    .line 97
    const/16 v3, 0x1b

    .line 98
    .line 99
    invoke-direct {v0, v3, p0, v1}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, v0, La25;->f:Lx15;

    .line 110
    .line 111
    const-string v0, "Cannot get trigger URIs from main thread"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_2
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, v0, La25;->f:Lx15;

    .line 121
    .line 122
    const-string v0, "Cannot get trigger URIs from analytics worker thread"

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method

.method public final T()Ljava/util/PriorityQueue;
    .locals 3

    .line 1
    iget-object v0, p0, Lm75;->m:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/PriorityQueue;

    .line 6
    .line 7
    sget-object v1, Lf75;->a:Lf75;

    .line 8
    .line 9
    sget-object v2, Llh0;->u:Llh0;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lm75;->m:Ljava/util/PriorityQueue;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lm75;->m:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    return-object p0
.end method

.method public final U()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm75;->T()Ljava/util/PriorityQueue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lm75;->i:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lm75;->T()Ljava/util/PriorityQueue;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Loa5;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lr45;

    .line 34
    .line 35
    iget-object v2, v1, Lr45;->i:Lac5;

    .line 36
    .line 37
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lac5;->Q()Llb2;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    iput-boolean v3, p0, Lm75;->i:Z

    .line 48
    .line 49
    iget-object v1, v1, Lr45;->f:La25;

    .line 50
    .line 51
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, La25;->n:Lx15;

    .line 55
    .line 56
    iget-object v3, v0, Loa5;->n:Ljava/lang/String;

    .line 57
    .line 58
    const-string v4, "Registering trigger URI"

    .line 59
    .line 60
    invoke-virtual {v1, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Llb2;->e(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    iput-boolean v2, p0, Lm75;->i:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Lm75;->T()Ljava/util/PriorityQueue;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    new-instance v3, Lc73;

    .line 85
    .line 86
    const/4 v4, 0x3

    .line 87
    invoke-direct {v3, v4, p0}, Lc73;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lpc4;

    .line 91
    .line 92
    const/16 v5, 0xf

    .line 93
    .line 94
    invoke-direct {v4, v5, p0, v0, v2}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Lrf1;

    .line 98
    .line 99
    invoke-direct {p0, v2, v1, v4}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, p0, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_0
    return-void
.end method

.method public final V(Ly55;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx55;->p:Lx55;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ly55;->i(Lx55;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lx55;->o:Lx55;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ly55;->i(Lx55;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    move p1, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    :goto_1
    iget-object p1, p0, Lib0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lr45;

    .line 28
    .line 29
    invoke-virtual {p1}, Lr45;->o()Lo95;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lo95;->E()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move p1, v1

    .line 41
    :goto_2
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lr45;

    .line 44
    .line 45
    iget-object v3, v0, Lr45;->g:Lj45;

    .line 46
    .line 47
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lj45;->v()V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, v0, Lr45;->z:Z

    .line 54
    .line 55
    if-eq p1, v3, :cond_5

    .line 56
    .line 57
    iget-object v3, v0, Lr45;->g:Lj45;

    .line 58
    .line 59
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lj45;->v()V

    .line 63
    .line 64
    .line 65
    iput-boolean p1, v0, Lr45;->z:Z

    .line 66
    .line 67
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lr45;

    .line 70
    .line 71
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 72
    .line 73
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lib0;->v()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "measurement_enabled_from_api"

    .line 84
    .line 85
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 v0, 0x0

    .line 105
    :goto_3
    if-eqz p1, :cond_4

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1, v1}, Lm75;->M(Ljava/lang/Boolean;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method public final y()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    iget-object v1, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v3, Le05;->e1:Ld05;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    move-wide v10, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x1

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p3

    .line 39
    invoke-virtual/range {v2 .. v11}, Lm75;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
