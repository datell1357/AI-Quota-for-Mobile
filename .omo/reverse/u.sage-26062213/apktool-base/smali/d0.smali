.class public abstract Ld0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public final c:Lxh1;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/LinkedList;

.field public final g:Ljava/util/LinkedList;

.field public final h:Ljava/util/HashMap;

.field public volatile i:Z

.field public volatile j:I

.field public volatile k:I

.field public volatile l:I


# direct methods
.method public constructor <init>(Lxh1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0;->c:Lxh1;

    .line 5
    .line 6
    const-string p1, "Max per route value"

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {v0, p1}, Lw80;->N(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput v0, p0, Ld0;->j:I

    .line 13
    .line 14
    const-string p1, "Max total value"

    .line 15
    .line 16
    const/16 v0, 0x14

    .line 17
    .line 18
    invoke-static {v0, p1}, Lw80;->N(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput v0, p0, Ld0;->k:I

    .line 22
    .line 23
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Ld0;->b:Ljava/util/concurrent/locks/Condition;

    .line 35
    .line 36
    new-instance p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Ld0;->d:Ljava/util/HashMap;

    .line 42
    .line 43
    new-instance p1, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Ld0;->e:Ljava/util/HashSet;

    .line 49
    .line 50
    new-instance p1, Ljava/util/LinkedList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 56
    .line 57
    new-instance p1, Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 63
    .line 64
    new-instance p1, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Ld0;->h:Ljava/util/HashMap;

    .line 70
    .line 71
    return-void
.end method

.method public static a(Ld0;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lc0;)Lmw2;
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p3

    .line 21
    add-long/2addr p3, v2

    .line 22
    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v1

    .line 27
    :goto_0
    iget-object p3, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_1
    :try_start_0
    iget-boolean p3, p0, Ld0;->i:Z

    .line 33
    .line 34
    const/4 p4, 0x1

    .line 35
    xor-int/2addr p3, p4

    .line 36
    const-string p5, "Connection pool shut down"

    .line 37
    .line 38
    invoke-static {p5, p3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p6, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string p5, "Operation aborted"

    .line 48
    .line 49
    if-nez p3, :cond_f

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p0, p1}, Ld0;->b(Ljava/lang/Object;)Lb0;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    :goto_2
    invoke-virtual {p3, p2}, Lb0;->b(Ljava/lang/Object;)Lmw2;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    invoke-virtual {v2, v4, v5}, Lmw2;->c(J)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Lmw2;->a()V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p1, v0

    .line 79
    goto/16 :goto_b

    .line 80
    .line 81
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lmw2;->b()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    iget-object v4, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2, v3}, Lb0;->a(Lmw2;Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 97
    .line 98
    iget-object p1, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Ld0;->e:Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    .line 112
    .line 113
    return-object v2

    .line 114
    :cond_5
    :try_start_2
    iget-object v2, p0, Ld0;->h:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/Integer;

    .line 121
    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    iget v2, p0, Ld0;->j:I

    .line 130
    .line 131
    :goto_5
    iget-object v4, p3, Lb0;->c:Ljava/util/LinkedList;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    iget-object v5, p3, Lb0;->b:Ljava/util/HashSet;

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    add-int/2addr v5, v4

    .line 144
    add-int/2addr v5, p4

    .line 145
    sub-int/2addr v5, v2

    .line 146
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-lez v4, :cond_9

    .line 151
    .line 152
    move v5, v3

    .line 153
    :goto_6
    if-ge v5, v4, :cond_9

    .line 154
    .line 155
    iget-object v6, p3, Lb0;->c:Ljava/util/LinkedList;

    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_7

    .line 162
    .line 163
    move-object v6, v1

    .line 164
    goto :goto_7

    .line 165
    :cond_7
    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Lmw2;

    .line 170
    .line 171
    :goto_7
    if-nez v6, :cond_8

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_8
    invoke-virtual {v6}, Lmw2;->a()V

    .line 175
    .line 176
    .line 177
    iget-object v7, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 178
    .line 179
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v6}, Lb0;->c(Lmw2;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    :goto_8
    iget-object v4, p3, Lb0;->c:Ljava/util/LinkedList;

    .line 189
    .line 190
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    iget-object v5, p3, Lb0;->b:Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    add-int/2addr v5, v4

    .line 201
    if-ge v5, v2, :cond_b

    .line 202
    .line 203
    iget-object v2, p0, Ld0;->e:Ljava/util/HashSet;

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    iget v4, p0, Ld0;->k:I

    .line 210
    .line 211
    sub-int/2addr v4, v2

    .line 212
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-lez v2, :cond_b

    .line 217
    .line 218
    iget-object p2, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    sub-int/2addr v2, p4

    .line 225
    if-le p2, v2, :cond_a

    .line 226
    .line 227
    iget-object p2, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    check-cast p2, Lmw2;

    .line 234
    .line 235
    invoke-virtual {p2}, Lmw2;->a()V

    .line 236
    .line 237
    .line 238
    iget-object p4, p2, Lmw2;->b:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual {p0, p4}, Ld0;->b(Ljava/lang/Object;)Lb0;

    .line 241
    .line 242
    .line 243
    move-result-object p4

    .line 244
    invoke-virtual {p4, p2}, Lb0;->c(Lmw2;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    iget-object p2, p0, Ld0;->c:Lxh1;

    .line 248
    .line 249
    invoke-virtual {p2, p1}, Lxh1;->j(Ljava/lang/Object;)Lv72;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iget-object p1, p3, Lb0;->f:Ld0;

    .line 254
    .line 255
    iget-object p2, p3, Lb0;->e:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p1, Lj00;

    .line 258
    .line 259
    move-object v3, p2

    .line 260
    check-cast v3, Lym1;

    .line 261
    .line 262
    sget-object p2, Lj00;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 265
    .line 266
    .line 267
    move-result-wide p4

    .line 268
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    new-instance v0, Lk00;

    .line 273
    .line 274
    iget-object v1, p1, Lj00;->m:Lorg/apache/commons/logging/Log;

    .line 275
    .line 276
    iget-wide v5, p1, Lj00;->n:J

    .line 277
    .line 278
    iget-object v7, p1, Lj00;->o:Ljava/util/concurrent/TimeUnit;

    .line 279
    .line 280
    invoke-direct/range {v0 .. v7}, Lk00;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;Lym1;Lv72;JLjava/util/concurrent/TimeUnit;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p3, Lb0;->b:Ljava/util/HashSet;

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Ld0;->e:Ljava/util/HashSet;

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .line 292
    .line 293
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 294
    .line 295
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_b
    :try_start_3
    iget-object v2, p3, Lb0;->d:Ljava/util/LinkedList;

    .line 300
    .line 301
    invoke-virtual {v2, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    iget-object v2, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 305
    .line 306
    invoke-virtual {v2, p6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 307
    .line 308
    .line 309
    iget-object v2, p0, Ld0;->b:Ljava/util/concurrent/locks/Condition;

    .line 310
    .line 311
    if-eqz v0, :cond_c

    .line 312
    .line 313
    :try_start_4
    invoke-interface {v2, v0}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    .line 314
    .line 315
    .line 316
    move-result p4

    .line 317
    goto :goto_9

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    move-object p1, v0

    .line 320
    goto :goto_a

    .line 321
    :cond_c
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 322
    .line 323
    .line 324
    :goto_9
    iget-object v2, p6, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 327
    .line 328
    .line 329
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 330
    if-nez v2, :cond_e

    .line 331
    .line 332
    :try_start_5
    iget-object p3, p3, Lb0;->d:Ljava/util/LinkedList;

    .line 333
    .line 334
    invoke-virtual {p3, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    iget-object p3, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 338
    .line 339
    invoke-virtual {p3, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    if-nez p4, :cond_1

    .line 343
    .line 344
    if-eqz v0, :cond_1

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 347
    .line 348
    .line 349
    move-result-wide p3

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 351
    .line 352
    .line 353
    move-result-wide v2

    .line 354
    cmp-long p3, p3, v2

    .line 355
    .line 356
    if-lez p3, :cond_d

    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_d
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 361
    .line 362
    const-string p2, "Timeout waiting for connection"

    .line 363
    .line 364
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    :cond_e
    :try_start_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 369
    .line 370
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 371
    .line 372
    invoke-direct {p2, p5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 379
    :goto_a
    :try_start_7
    iget-object p2, p3, Lb0;->d:Ljava/util/LinkedList;

    .line 380
    .line 381
    invoke-virtual {p2, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    iget-object p2, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 385
    .line 386
    invoke-virtual {p2, p6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :cond_f
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 391
    .line 392
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 393
    .line 394
    invoke-direct {p2, p5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 401
    :goto_b
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 402
    .line 403
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 404
    .line 405
    .line 406
    throw p1
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lb0;
    .locals 2

    .line 1
    iget-object v0, p0, Ld0;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lb0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lb0;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p1}, Lb0;-><init>(Ld0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v1
.end method

.method public final c(Lmw2;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Ld0;->e:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p1, Lmw2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ld0;->b(Ljava/lang/Object;)Lb0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1, p2}, Lb0;->a(Lmw2;Z)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-boolean p2, p0, Ld0;->i:Z

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    iget-object p2, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p1}, Lmw2;->a()V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, v0, Lb0;->d:Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    iget-object p2, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/concurrent/Future;

    .line 61
    .line 62
    :goto_1
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Ld0;->b:Ljava/util/concurrent/locks/Condition;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ld0;->i:Z

    .line 8
    .line 9
    iget-object v0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lmw2;

    .line 31
    .line 32
    invoke-virtual {v1}, Lmw2;->a()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    iget-object v0, p0, Ld0;->e:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lmw2;

    .line 55
    .line 56
    invoke-virtual {v1}, Lmw2;->a()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Ld0;->d:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lb0;

    .line 81
    .line 82
    invoke-virtual {v1}, Lb0;->d()V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object v0, p0, Ld0;->d:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Ld0;->e:Ljava/util/HashSet;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_3
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    .line 111
    .line 112
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "[leased: "

    .line 2
    .line 3
    iget-object v1, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ld0;->e:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "][available: "

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ld0;->f:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "][pending: "

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Ld0;->g:Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "]"

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
