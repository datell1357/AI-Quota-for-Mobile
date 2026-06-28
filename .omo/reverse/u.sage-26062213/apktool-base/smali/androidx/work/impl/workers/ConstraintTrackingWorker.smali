.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final g:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    .line 11
    .line 12
    return-void
.end method

.method public static final d(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lv42;Lct2;Log4;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lff0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lff0;

    .line 7
    .line 8
    iget v1, v0, Lff0;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lff0;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lff0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lff0;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lff0;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget p4, v0, Lff0;->s:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    if-ne p4, v2, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lrd;

    .line 49
    .line 50
    invoke-direct {p0, p1, p2, p3, v1}, Lrd;-><init>(Lv42;Lct2;Log4;Ldh0;)V

    .line 51
    .line 52
    .line 53
    iput v2, v0, Lff0;->s:I

    .line 54
    .line 55
    invoke-static {p0, v0}, Ldm0;->r(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object p1, Lri0;->n:Lri0;

    .line 60
    .line 61
    if-ne p0, p1, :cond_3

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    return-object p0
.end method

.method public static final e(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lfh0;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v7, v1, Lv42;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    .line 8
    .line 9
    iget-object v3, v1, Lv42;->a:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v4, v1, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 12
    .line 13
    instance-of v5, v0, Lgf0;

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    move-object v5, v0

    .line 18
    check-cast v5, Lgf0;

    .line 19
    .line 20
    iget v6, v5, Lgf0;->t:I

    .line 21
    .line 22
    const/high16 v8, -0x80000000

    .line 23
    .line 24
    and-int v9, v6, v8

    .line 25
    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    sub-int/2addr v6, v8

    .line 29
    iput v6, v5, Lgf0;->t:I

    .line 30
    .line 31
    :goto_0
    move-object v8, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance v5, Lgf0;

    .line 34
    .line 35
    invoke-direct {v5, v1, v0}, Lgf0;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lfh0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    iget-object v0, v8, Lgf0;->r:Ljava/lang/Object;

    .line 40
    .line 41
    iget v5, v8, Lgf0;->t:I

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x1

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    if-ne v5, v10, :cond_1

    .line 48
    .line 49
    iget-object v1, v8, Lgf0;->q:Lv42;

    .line 50
    .line 51
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    move-object/from16 p1, v9

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object/from16 p1, v9

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v9

    .line 69
    :cond_2
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v4, Landroidx/work/WorkerParameters;->b:Lzl0;

    .line 73
    .line 74
    const-string v5, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 75
    .line 76
    iget-object v0, v0, Lzl0;->a:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    instance-of v5, v0, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    check-cast v0, Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v0, v9

    .line 90
    :goto_2
    const-string v5, "No worker to delegate to."

    .line 91
    .line 92
    if-eqz v0, :cond_11

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_a

    .line 101
    .line 102
    :cond_4
    invoke-static {v3}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v11, v6, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 107
    .line 108
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    iget-object v12, v4, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v12}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-nez v11, :cond_5

    .line 126
    .line 127
    new-instance v0, Lr42;

    .line 128
    .line 129
    invoke-direct {v0}, Lr42;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_5
    new-instance v12, Lct2;

    .line 134
    .line 135
    iget-object v13, v6, Leg4;->j:Lrp;

    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-direct {v12, v13}, Lct2;-><init>(Lrp;)V

    .line 141
    .line 142
    .line 143
    new-instance v14, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v13, v12, Lct2;->n:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    move-object/from16 p1, v9

    .line 157
    .line 158
    move/from16 v9, v16

    .line 159
    .line 160
    :goto_3
    if-ge v9, v15, :cond_7

    .line 161
    .line 162
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    add-int/lit8 v9, v9, 0x1

    .line 167
    .line 168
    move-object v1, v10

    .line 169
    check-cast v1, Lbf0;

    .line 170
    .line 171
    invoke-interface {v1, v11}, Lbf0;->b(Log4;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_6
    move-object/from16 v1, p0

    .line 181
    .line 182
    const/4 v10, 0x1

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_8

    .line 189
    .line 190
    invoke-static {}, Lt72;->g()Lt72;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    sget-object v9, Lsf4;->a:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v13, "Work "

    .line 199
    .line 200
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v13, v11, Log4;->a:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v13, " constrained by "

    .line 209
    .line 210
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    new-instance v13, Lba4;

    .line 214
    .line 215
    const/16 v15, 0xb

    .line 216
    .line 217
    invoke-direct {v13, v15}, Lba4;-><init>(I)V

    .line 218
    .line 219
    .line 220
    const/16 v19, 0x1f

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    const/16 v17, 0x0

    .line 226
    .line 227
    move-object/from16 v18, v13

    .line 228
    .line 229
    invoke-static/range {v14 .. v19}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v1, v9, v10}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_9

    .line 248
    .line 249
    sget-object v1, Ljf0;->a:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {}, Lt72;->g()Lt72;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v4, "Constraints not met for delegate "

    .line 258
    .line 259
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v0, ". Requesting retry."

    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v2, v1, v0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Ls42;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 280
    .line 281
    .line 282
    return-object v0

    .line 283
    :cond_9
    sget-object v1, Ljf0;->a:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {}, Lt72;->g()Lt72;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    const-string v10, "Constraints met for delegate "

    .line 290
    .line 291
    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    invoke-virtual {v9, v1, v10}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :try_start_1
    iget-object v1, v4, Landroidx/work/WorkerParameters;->g:Lw13;

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v3, v0, v2}, Lw13;->d(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lv42;

    .line 304
    .line 305
    .line 306
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    iget-object v0, v2, Landroidx/work/WorkerParameters;->f:Lqd1;

    .line 308
    .line 309
    iget-object v0, v0, Lqd1;->r:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lc73;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    :try_start_2
    invoke-static {v0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    new-instance v0, Lqd;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    .line 321
    .line 322
    const/4 v5, 0x0

    .line 323
    const/4 v6, 0x3

    .line 324
    move-object v2, v1

    .line 325
    move-object v4, v11

    .line 326
    move-object v3, v12

    .line 327
    move-object/from16 v1, p0

    .line 328
    .line 329
    :try_start_3
    invoke-direct/range {v0 .. v6}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 330
    .line 331
    .line 332
    iput-object v2, v8, Lgf0;->q:Lv42;

    .line 333
    .line 334
    const/4 v1, 0x1

    .line 335
    iput v1, v8, Lgf0;->t:I

    .line 336
    .line 337
    invoke-static {v9, v0, v8}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 341
    sget-object v1, Lri0;->n:Lri0;

    .line 342
    .line 343
    if-ne v0, v1, :cond_a

    .line 344
    .line 345
    return-object v1

    .line 346
    :cond_a
    move-object v1, v2

    .line 347
    :goto_4
    :try_start_4
    check-cast v0, Lu42;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 348
    .line 349
    return-object v0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    goto :goto_5

    .line 352
    :catch_2
    move-exception v0

    .line 353
    move-object v1, v2

    .line 354
    goto :goto_5

    .line 355
    :catch_3
    move-exception v0

    .line 356
    move-object v2, v1

    .line 357
    :goto_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    const/16 v3, -0x100

    .line 362
    .line 363
    if-eq v2, v3, :cond_b

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_b
    instance-of v2, v0, Lef0;

    .line 367
    .line 368
    if-eqz v2, :cond_f

    .line 369
    .line 370
    :goto_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 371
    .line 372
    const/16 v4, 0x1f

    .line 373
    .line 374
    if-ge v2, v4, :cond_c

    .line 375
    .line 376
    const/16 v2, -0x200

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_c
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eq v2, v3, :cond_d

    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    goto :goto_7

    .line 390
    :cond_d
    instance-of v2, v0, Lef0;

    .line 391
    .line 392
    if-eqz v2, :cond_e

    .line 393
    .line 394
    move-object v2, v0

    .line 395
    check-cast v2, Lef0;

    .line 396
    .line 397
    iget v2, v2, Lef0;->n:I

    .line 398
    .line 399
    :goto_7
    iget-object v1, v1, Lv42;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 400
    .line 401
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_e
    const-string v0, "Unreachable"

    .line 406
    .line 407
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-object p1

    .line 411
    :cond_f
    :goto_8
    instance-of v1, v0, Lef0;

    .line 412
    .line 413
    if-eqz v1, :cond_10

    .line 414
    .line 415
    new-instance v0, Ls42;

    .line 416
    .line 417
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_10
    throw v0

    .line 422
    :catchall_0
    sget-object v0, Ljf0;->a:Ljava/lang/String;

    .line 423
    .line 424
    invoke-static {}, Lt72;->g()Lt72;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1, v0, v5}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v6, Leg4;->b:Lmd0;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    new-instance v0, Lr42;

    .line 437
    .line 438
    invoke-direct {v0}, Lr42;-><init>()V

    .line 439
    .line 440
    .line 441
    :goto_9
    return-object v0

    .line 442
    :cond_11
    :goto_a
    sget-object v0, Ljf0;->a:Ljava/lang/String;

    .line 443
    .line 444
    invoke-static {}, Lt72;->g()Lt72;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v1, v0, v5}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    new-instance v0, Lr42;

    .line 452
    .line 453
    invoke-direct {v0}, Lr42;-><init>()V

    .line 454
    .line 455
    .line 456
    return-object v0
.end method


# virtual methods
.method public final c(Ldh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/WorkerParameters;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lx50;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, p0, v2, v3}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
