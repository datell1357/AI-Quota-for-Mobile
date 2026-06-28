.class public final Los0;
.super Lcs3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr3;


# instance fields
.field public final o:Lne1;

.field public final p:Lw13;

.field public q:Lns0;


# direct methods
.method public constructor <init>(Lne1;Lw13;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcs3;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Los0;->o:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Los0;->p:Lw13;

    .line 7
    .line 8
    new-instance p1, Lns0;

    .line 9
    .line 10
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lpo3;->g()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-direct {p1, v0, v1}, Lns0;-><init>(J)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Los0;->q:Lns0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lds3;
    .locals 0

    .line 1
    iget-object p0, p0, Los0;->q:Lns0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Lds3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lns0;

    .line 5
    .line 6
    iput-object p1, p0, Los0;->q:Lns0;

    .line 7
    .line 8
    return-void
.end method

.method public final g(Lns0;Lpo3;ZLne1;)Lns0;
    .locals 20

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
    invoke-virtual {v1, v0, v2}, Lns0;->c(Los0;Lpo3;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_9

    .line 12
    .line 13
    if-eqz p3, :cond_8

    .line 14
    .line 15
    invoke-static {}, Lca;->l()Lug2;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v0, v3, Lug2;->n:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v5, v3, Lug2;->p:I

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    if-ge v6, v5, :cond_0

    .line 25
    .line 26
    aget-object v7, v0, v6

    .line 27
    .line 28
    check-cast v7, Lzf1;

    .line 29
    .line 30
    invoke-virtual {v7}, Lzf1;->b()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, v1, Lns0;->e:Lcg2;

    .line 37
    .line 38
    sget-object v5, Lcp3;->a:Lui3;

    .line 39
    .line 40
    invoke-virtual {v5}, Lui3;->c()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Los1;

    .line 45
    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    new-instance v6, Los1;

    .line 49
    .line 50
    invoke-direct {v6}, Los1;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Lui3;->k(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    :goto_1
    iget v5, v6, Los1;->a:I

    .line 61
    .line 62
    iget-object v7, v0, Lcg2;->b:[Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v8, v0, Lcg2;->c:[I

    .line 65
    .line 66
    iget-object v0, v0, Lcg2;->a:[J

    .line 67
    .line 68
    array-length v9, v0

    .line 69
    add-int/lit8 v9, v9, -0x2

    .line 70
    .line 71
    if-ltz v9, :cond_6

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    :goto_2
    aget-wide v11, v0, v10

    .line 75
    .line 76
    not-long v13, v11

    .line 77
    const/4 v15, 0x7

    .line 78
    shl-long/2addr v13, v15

    .line 79
    and-long/2addr v13, v11

    .line 80
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    and-long/2addr v13, v15

    .line 86
    cmp-long v13, v13, v15

    .line 87
    .line 88
    if-eqz v13, :cond_5

    .line 89
    .line 90
    sub-int v13, v10, v9

    .line 91
    .line 92
    not-int v13, v13

    .line 93
    ushr-int/lit8 v13, v13, 0x1f

    .line 94
    .line 95
    const/16 v14, 0x8

    .line 96
    .line 97
    rsub-int/lit8 v13, v13, 0x8

    .line 98
    .line 99
    const/4 v15, 0x0

    .line 100
    :goto_3
    if-ge v15, v13, :cond_4

    .line 101
    .line 102
    const-wide/16 v16, 0xff

    .line 103
    .line 104
    and-long v16, v11, v16

    .line 105
    .line 106
    const-wide/16 v18, 0x80

    .line 107
    .line 108
    cmp-long v16, v16, v18

    .line 109
    .line 110
    if-gez v16, :cond_2

    .line 111
    .line 112
    shl-int/lit8 v16, v10, 0x3

    .line 113
    .line 114
    add-int v16, v16, v15

    .line 115
    .line 116
    aget-object v17, v7, v16

    .line 117
    .line 118
    aget v16, v8, v16

    .line 119
    .line 120
    move-object/from16 v4, v17

    .line 121
    .line 122
    check-cast v4, Lbs3;

    .line 123
    .line 124
    move/from16 p0, v14

    .line 125
    .line 126
    add-int v14, v5, v16

    .line 127
    .line 128
    iput v14, v6, Los1;->a:I

    .line 129
    .line 130
    invoke-virtual {v2}, Lpo3;->e()Lpe1;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    if-eqz v14, :cond_3

    .line 135
    .line 136
    invoke-interface {v14, v4}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_2
    move/from16 p0, v14

    .line 141
    .line 142
    :cond_3
    :goto_4
    shr-long v11, v11, p0

    .line 143
    .line 144
    add-int/lit8 v15, v15, 0x1

    .line 145
    .line 146
    move/from16 v14, p0

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    move v4, v14

    .line 150
    if-ne v13, v4, :cond_6

    .line 151
    .line 152
    :cond_5
    if-eq v10, v9, :cond_6

    .line 153
    .line 154
    add-int/lit8 v10, v10, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    iput v5, v6, Los1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    iget-object v0, v3, Lug2;->n:[Ljava/lang/Object;

    .line 160
    .line 161
    iget v2, v3, Lug2;->p:I

    .line 162
    .line 163
    const/4 v4, 0x0

    .line 164
    :goto_5
    if-ge v4, v2, :cond_8

    .line 165
    .line 166
    aget-object v3, v0, v4

    .line 167
    .line 168
    check-cast v3, Lzf1;

    .line 169
    .line 170
    invoke-virtual {v3}, Lzf1;->a()V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :goto_6
    iget-object v1, v3, Lug2;->n:[Ljava/lang/Object;

    .line 177
    .line 178
    iget v2, v3, Lug2;->p:I

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    :goto_7
    if-ge v4, v2, :cond_7

    .line 182
    .line 183
    aget-object v3, v1, v4

    .line 184
    .line 185
    check-cast v3, Lzf1;

    .line 186
    .line 187
    invoke-virtual {v3}, Lzf1;->a()V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_7
    throw v0

    .line 194
    :cond_8
    return-object v1

    .line 195
    :cond_9
    new-instance v2, Lcg2;

    .line 196
    .line 197
    invoke-direct {v2}, Lcg2;-><init>()V

    .line 198
    .line 199
    .line 200
    sget-object v3, Lcp3;->a:Lui3;

    .line 201
    .line 202
    invoke-virtual {v3}, Lui3;->c()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Los1;

    .line 207
    .line 208
    if-nez v4, :cond_a

    .line 209
    .line 210
    new-instance v4, Los1;

    .line 211
    .line 212
    invoke-direct {v4}, Los1;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Lui3;->k(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_a
    iget v3, v4, Los1;->a:I

    .line 219
    .line 220
    invoke-static {}, Lca;->l()Lug2;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    iget-object v6, v5, Lug2;->n:[Ljava/lang/Object;

    .line 225
    .line 226
    iget v7, v5, Lug2;->p:I

    .line 227
    .line 228
    const/4 v8, 0x0

    .line 229
    :goto_8
    if-ge v8, v7, :cond_b

    .line 230
    .line 231
    aget-object v9, v6, v8

    .line 232
    .line 233
    check-cast v9, Lzf1;

    .line 234
    .line 235
    invoke-virtual {v9}, Lzf1;->b()V

    .line 236
    .line 237
    .line 238
    add-int/lit8 v8, v8, 0x1

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_b
    add-int/lit8 v6, v3, 0x1

    .line 242
    .line 243
    :try_start_1
    iput v6, v4, Los1;->a:I

    .line 244
    .line 245
    new-instance v6, Lms0;

    .line 246
    .line 247
    invoke-direct {v6, v0, v4, v2, v3}, Lms0;-><init>(Los0;Los1;Lcg2;I)V

    .line 248
    .line 249
    .line 250
    move-object/from16 v7, p4

    .line 251
    .line 252
    invoke-static {v6, v7}, Lk75;->F(Lms0;Lne1;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    iput v3, v4, Los1;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 257
    .line 258
    iget-object v3, v5, Lug2;->n:[Ljava/lang/Object;

    .line 259
    .line 260
    iget v4, v5, Lug2;->p:I

    .line 261
    .line 262
    const/4 v5, 0x0

    .line 263
    :goto_9
    if-ge v5, v4, :cond_c

    .line 264
    .line 265
    aget-object v7, v3, v5

    .line 266
    .line 267
    check-cast v7, Lzf1;

    .line 268
    .line 269
    invoke-virtual {v7}, Lzf1;->a()V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_c
    sget-object v3, Lwo3;->c:Ljava/lang/Object;

    .line 276
    .line 277
    monitor-enter v3

    .line 278
    :try_start_2
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    iget-object v5, v1, Lns0;->f:Ljava/lang/Object;

    .line 283
    .line 284
    sget-object v7, Lns0;->h:Ljava/lang/Object;

    .line 285
    .line 286
    if-eq v5, v7, :cond_d

    .line 287
    .line 288
    iget-object v7, v0, Los0;->p:Lw13;

    .line 289
    .line 290
    if-eqz v7, :cond_d

    .line 291
    .line 292
    invoke-virtual {v7, v6, v5}, Lw13;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    const/4 v7, 0x1

    .line 297
    if-ne v5, v7, :cond_d

    .line 298
    .line 299
    iput-object v2, v1, Lns0;->e:Lcg2;

    .line 300
    .line 301
    invoke-virtual {v1, v0, v4}, Lns0;->d(Los0;Lpo3;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iput v0, v1, Lns0;->g:I

    .line 306
    .line 307
    goto :goto_a

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    goto :goto_b

    .line 310
    :cond_d
    iget-object v1, v0, Los0;->q:Lns0;

    .line 311
    .line 312
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    :try_start_3
    invoke-static {v1, v0}, Lwo3;->m(Lds3;Lbs3;)Lds3;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v5, v1}, Lds3;->a(Lds3;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Lpo3;->g()J

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    iput-wide v7, v5, Lds3;->a:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 325
    .line 326
    :try_start_4
    monitor-exit v3

    .line 327
    move-object v1, v5

    .line 328
    check-cast v1, Lns0;

    .line 329
    .line 330
    iput-object v2, v1, Lns0;->e:Lcg2;

    .line 331
    .line 332
    invoke-virtual {v1, v0, v4}, Lns0;->d(Los0;Lpo3;)I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iput v0, v1, Lns0;->g:I

    .line 337
    .line 338
    iput-object v6, v1, Lns0;->f:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    .line 340
    :goto_a
    monitor-exit v3

    .line 341
    sget-object v0, Lcp3;->a:Lui3;

    .line 342
    .line 343
    invoke-virtual {v0}, Lui3;->c()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Los1;

    .line 348
    .line 349
    if-eqz v0, :cond_e

    .line 350
    .line 351
    iget v0, v0, Los1;->a:I

    .line 352
    .line 353
    if-nez v0, :cond_e

    .line 354
    .line 355
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lpo3;->m()V

    .line 360
    .line 361
    .line 362
    monitor-enter v3

    .line 363
    :try_start_5
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lpo3;->g()J

    .line 368
    .line 369
    .line 370
    move-result-wide v4

    .line 371
    iput-wide v4, v1, Lns0;->c:J

    .line 372
    .line 373
    invoke-virtual {v0}, Lpo3;->h()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    iput v0, v1, Lns0;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    .line 379
    monitor-exit v3

    .line 380
    return-object v1

    .line 381
    :catchall_2
    move-exception v0

    .line 382
    monitor-exit v3

    .line 383
    throw v0

    .line 384
    :cond_e
    return-object v1

    .line 385
    :catchall_3
    move-exception v0

    .line 386
    :try_start_6
    monitor-exit v3

    .line 387
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 388
    :goto_b
    monitor-exit v3

    .line 389
    throw v0

    .line 390
    :catchall_4
    move-exception v0

    .line 391
    iget-object v1, v5, Lug2;->n:[Ljava/lang/Object;

    .line 392
    .line 393
    iget v2, v5, Lug2;->p:I

    .line 394
    .line 395
    const/4 v4, 0x0

    .line 396
    :goto_c
    if-ge v4, v2, :cond_f

    .line 397
    .line 398
    aget-object v3, v1, v4

    .line 399
    .line 400
    check-cast v3, Lzf1;

    .line 401
    .line 402
    invoke-virtual {v3}, Lzf1;->a()V

    .line 403
    .line 404
    .line 405
    add-int/lit8 v4, v4, 0x1

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_f
    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpo3;->e()Lpe1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Los0;->q:Lns0;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lwo3;->i(Lds3;Lpo3;)Lds3;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lns0;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    iget-object v3, p0, Los0;->o:Lne1;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0, v2, v3}, Los0;->g(Lns0;Lpo3;ZLne1;)Lns0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lns0;->f:Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0
.end method

.method public final h()Lns0;
    .locals 4

    .line 1
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Los0;->q:Lns0;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lwo3;->i(Lds3;Lpo3;)Lds3;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lns0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Los0;->o:Lne1;

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0, v2, v3}, Los0;->g(Lns0;Lpo3;ZLne1;)Lns0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Los0;->q:Lns0;

    .line 2
    .line 3
    invoke-static {v0}, Lwo3;->h(Lds3;)Lds3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lns0;

    .line 8
    .line 9
    iget-object v0, p0, Los0;->q:Lns0;

    .line 10
    .line 11
    invoke-static {v0}, Lwo3;->h(Lds3;)Lds3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lns0;

    .line 16
    .line 17
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, p0, v1}, Lns0;->c(Los0;Lpo3;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lns0;->f:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "<Not calculated>"

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "DerivedState(value="

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ")@"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
