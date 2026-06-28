.class public final Lfe0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lce0;


# instance fields
.field public final n:Llw2;

.field public final o:Llw2;

.field public final p:Ljava/lang/ThreadLocal;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final r:J


# direct methods
.method public constructor <init>(Lgw4;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lfe0;->p:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lfe0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sget-object v0, Lcy0;->o:Lbx3;

    const/16 v0, 0x1e

    sget-object v1, Lgy0;->q:Lgy0;

    invoke-static {v0, v1}, Lc75;->S(ILgy0;)J

    move-result-wide v0

    iput-wide v0, p0, Lfe0;->r:J

    .line 73
    new-instance v0, Llw2;

    new-instance v1, Lcc;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcc;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Llw2;-><init>(ILne1;)V

    iput-object v0, p0, Lfe0;->n:Llw2;

    .line 74
    iput-object v0, p0, Lfe0;->o:Llw2;

    return-void
.end method

.method public constructor <init>(Lgw4;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lfe0;->p:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lfe0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    sget-object v0, Lcy0;->o:Lbx3;

    .line 23
    .line 24
    const/16 v0, 0x1e

    .line 25
    .line 26
    sget-object v2, Lgy0;->q:Lgy0;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lc75;->S(ILgy0;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iput-wide v2, p0, Lfe0;->r:J

    .line 33
    .line 34
    if-lez p3, :cond_0

    .line 35
    .line 36
    new-instance v0, Llw2;

    .line 37
    .line 38
    new-instance v2, Lde0;

    .line 39
    .line 40
    invoke-direct {v2, p1, p2, v1}, Lde0;-><init>(Lgw4;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p3, v2}, Llw2;-><init>(ILne1;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lfe0;->n:Llw2;

    .line 47
    .line 48
    new-instance p3, Llw2;

    .line 49
    .line 50
    new-instance v0, Lde0;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, p1, p2, v1}, Lde0;-><init>(Lgw4;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p3, v1, v0}, Llw2;-><init>(ILne1;)V

    .line 57
    .line 58
    .line 59
    iput-object p3, p0, Lfe0;->o:Llw2;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 63
    .line 64
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    throw p0
.end method


# virtual methods
.method public final G(ZLdf1;Lfh0;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    instance-of v4, v0, Lee0;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lee0;

    .line 15
    .line 16
    iget v5, v4, Lee0;->z:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lee0;->z:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lee0;

    .line 29
    .line 30
    invoke-direct {v4, v1, v0}, Lee0;-><init>(Lfe0;Lfh0;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v5, v4, Lfh0;->o:Lhi0;

    .line 34
    .line 35
    iget-object v0, v4, Lee0;->x:Ljava/lang/Object;

    .line 36
    .line 37
    iget v6, v4, Lee0;->z:I

    .line 38
    .line 39
    const-string v7, "ROLLBACK TRANSACTION"

    .line 40
    .line 41
    const/4 v9, 0x4

    .line 42
    const/4 v10, 0x3

    .line 43
    const/4 v11, 0x2

    .line 44
    const/4 v12, 0x1

    .line 45
    const/4 v13, 0x0

    .line 46
    sget-object v14, Lri0;->n:Lri0;

    .line 47
    .line 48
    if-eqz v6, :cond_5

    .line 49
    .line 50
    if-eq v6, v12, :cond_4

    .line 51
    .line 52
    if-eq v6, v11, :cond_3

    .line 53
    .line 54
    if-eq v6, v10, :cond_2

    .line 55
    .line 56
    if-ne v6, v9, :cond_1

    .line 57
    .line 58
    iget-object v1, v4, Lee0;->r:Ljava/io/Serializable;

    .line 59
    .line 60
    check-cast v1, Lw33;

    .line 61
    .line 62
    iget-object v2, v4, Lee0;->q:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Llw2;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_12

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v11, v1

    .line 73
    :goto_1
    move-object v1, v0

    .line 74
    goto/16 :goto_13

    .line 75
    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v13

    .line 82
    :cond_2
    iget-boolean v1, v4, Lee0;->w:Z

    .line 83
    .line 84
    iget-object v2, v4, Lee0;->v:Lw33;

    .line 85
    .line 86
    iget-object v5, v4, Lee0;->u:Lhi0;

    .line 87
    .line 88
    iget-object v3, v4, Lee0;->t:Lw33;

    .line 89
    .line 90
    iget-object v6, v4, Lee0;->s:Llw2;

    .line 91
    .line 92
    iget-object v10, v4, Lee0;->r:Ljava/io/Serializable;

    .line 93
    .line 94
    check-cast v10, Ldf1;

    .line 95
    .line 96
    iget-object v11, v4, Lee0;->q:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v11, Lfe0;

    .line 99
    .line 100
    :try_start_1
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    .line 103
    move-object v15, v2

    .line 104
    move-object v12, v14

    .line 105
    move v2, v1

    .line 106
    move-object v1, v11

    .line 107
    move-object v11, v3

    .line 108
    move-object v3, v10

    .line 109
    goto/16 :goto_b

    .line 110
    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v15, v2

    .line 113
    move-object v12, v14

    .line 114
    move v2, v1

    .line 115
    move-object v1, v11

    .line 116
    move-object v11, v3

    .line 117
    move-object v3, v10

    .line 118
    goto/16 :goto_d

    .line 119
    .line 120
    :cond_3
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_4
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_5
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v1, Lfe0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_1d

    .line 138
    .line 139
    iget-object v0, v1, Lfe0;->p:Ljava/lang/ThreadLocal;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Lvw2;

    .line 146
    .line 147
    sget-object v15, Lzd0;->o:Lbx3;

    .line 148
    .line 149
    if-nez v6, :cond_7

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-interface {v5, v15}, Lhi0;->K(Lgi0;)Lfi0;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Lzd0;

    .line 159
    .line 160
    if-eqz v6, :cond_6

    .line 161
    .line 162
    iget-object v6, v6, Lzd0;->n:Lvw2;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    move-object v6, v13

    .line 166
    :cond_7
    :goto_2
    if-eqz v6, :cond_d

    .line 167
    .line 168
    if-nez v2, :cond_9

    .line 169
    .line 170
    iget-boolean v1, v6, Lvw2;->b:Z

    .line 171
    .line 172
    if-nez v1, :cond_8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 176
    .line 177
    invoke-static {v12, v0}, Lix;->U(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v13

    .line 181
    :cond_9
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-interface {v5, v15}, Lhi0;->K(Lgi0;)Lfi0;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_b

    .line 189
    .line 190
    new-instance v1, Lzd0;

    .line 191
    .line 192
    invoke-direct {v1, v6}, Lzd0;-><init>(Lvw2;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v2, Lly3;

    .line 199
    .line 200
    invoke-direct {v2, v6, v0}, Lly3;-><init>(Lvw2;Ljava/lang/ThreadLocal;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v2}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v1, Ln;

    .line 208
    .line 209
    const/16 v2, 0xd

    .line 210
    .line 211
    invoke-direct {v1, v3, v6, v13, v2}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 212
    .line 213
    .line 214
    iput v12, v4, Lee0;->z:I

    .line 215
    .line 216
    invoke-static {v0, v1, v4}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-ne v0, v14, :cond_a

    .line 221
    .line 222
    :goto_4
    move-object v12, v14

    .line 223
    goto/16 :goto_11

    .line 224
    .line 225
    :cond_a
    return-object v0

    .line 226
    :cond_b
    iput v11, v4, Lee0;->z:I

    .line 227
    .line 228
    invoke-interface {v3, v6, v4}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-ne v0, v14, :cond_c

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_c
    return-object v0

    .line 236
    :cond_d
    if-eqz v2, :cond_e

    .line 237
    .line 238
    iget-object v0, v1, Lfe0;->n:Llw2;

    .line 239
    .line 240
    :goto_5
    move-object v6, v0

    .line 241
    goto :goto_6

    .line 242
    :cond_e
    iget-object v0, v1, Lfe0;->o:Llw2;

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :goto_6
    new-instance v11, Lw33;

    .line 246
    .line 247
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v15, Lw33;

    .line 254
    .line 255
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 256
    .line 257
    .line 258
    :try_start_3
    iget-wide v8, v1, Lfe0;->r:J

    .line 259
    .line 260
    new-instance v0, Lp;

    .line 261
    .line 262
    const/16 v12, 0x8

    .line 263
    .line 264
    invoke-direct {v0, v15, v6, v13, v12}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 265
    .line 266
    .line 267
    iput-object v1, v4, Lee0;->q:Ljava/lang/Object;

    .line 268
    .line 269
    move-object v12, v3

    .line 270
    check-cast v12, Ljava/io/Serializable;

    .line 271
    .line 272
    iput-object v12, v4, Lee0;->r:Ljava/io/Serializable;

    .line 273
    .line 274
    iput-object v6, v4, Lee0;->s:Llw2;

    .line 275
    .line 276
    iput-object v11, v4, Lee0;->t:Lw33;

    .line 277
    .line 278
    iput-object v5, v4, Lee0;->u:Lhi0;

    .line 279
    .line 280
    iput-object v15, v4, Lee0;->v:Lw33;

    .line 281
    .line 282
    iput-boolean v2, v4, Lee0;->w:Z

    .line 283
    .line 284
    iput v10, v4, Lee0;->z:I

    .line 285
    .line 286
    sget-object v10, Lcy0;->o:Lbx3;

    .line 287
    .line 288
    const-wide/16 v16, 0x0

    .line 289
    .line 290
    cmp-long v10, v8, v16

    .line 291
    .line 292
    if-lez v10, :cond_f

    .line 293
    .line 294
    const/4 v10, 0x1

    .line 295
    :goto_7
    const/4 v12, 0x1

    .line 296
    goto :goto_8

    .line 297
    :cond_f
    const/4 v10, 0x0

    .line 298
    goto :goto_7

    .line 299
    :goto_8
    if-ne v10, v12, :cond_10

    .line 300
    .line 301
    sget-object v10, Lgy0;->o:Lgy0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 302
    .line 303
    move-object v12, v14

    .line 304
    const-wide/32 v13, 0xf423f

    .line 305
    .line 306
    .line 307
    :try_start_4
    invoke-static {v13, v14, v10}, Lc75;->T(JLgy0;)J

    .line 308
    .line 309
    .line 310
    move-result-wide v13

    .line 311
    invoke-static {v8, v9, v13, v14}, Lcy0;->g(JJ)J

    .line 312
    .line 313
    .line 314
    move-result-wide v8

    .line 315
    invoke-static {v8, v9}, Lcy0;->d(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v16

    .line 319
    :goto_9
    move-wide/from16 v8, v16

    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_10
    move-object v12, v14

    .line 323
    if-nez v10, :cond_12

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :goto_a
    invoke-static {v8, v9, v0, v4}, Lw80;->Y(JLdf1;Lfh0;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-ne v0, v12, :cond_11

    .line 331
    .line 332
    goto/16 :goto_11

    .line 333
    .line 334
    :cond_11
    :goto_b
    const/4 v8, 0x0

    .line 335
    :goto_c
    move-object v0, v1

    .line 336
    move-object v1, v11

    .line 337
    goto :goto_e

    .line 338
    :cond_12
    new-instance v0, Lv00;

    .line 339
    .line 340
    const/4 v8, 0x7

    .line 341
    invoke-direct {v0, v8}, Lv00;-><init>(I)V

    .line 342
    .line 343
    .line 344
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 345
    :catchall_2
    move-exception v0

    .line 346
    goto :goto_d

    .line 347
    :catchall_3
    move-exception v0

    .line 348
    move-object v12, v14

    .line 349
    :goto_d
    move-object v8, v0

    .line 350
    goto :goto_c

    .line 351
    :goto_e
    :try_start_5
    iget-object v9, v15, Lw33;->n:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v9, Loe0;

    .line 354
    .line 355
    if-eqz v9, :cond_14

    .line 356
    .line 357
    new-instance v10, Lvw2;

    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    iput-object v5, v9, Loe0;->p:Lhi0;

    .line 363
    .line 364
    new-instance v5, Ljava/lang/Throwable;

    .line 365
    .line 366
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 367
    .line 368
    .line 369
    iput-object v5, v9, Loe0;->q:Ljava/lang/Throwable;

    .line 370
    .line 371
    iget-object v5, v0, Lfe0;->n:Llw2;

    .line 372
    .line 373
    iget-object v11, v0, Lfe0;->o:Llw2;

    .line 374
    .line 375
    if-eq v5, v11, :cond_13

    .line 376
    .line 377
    if-eqz v2, :cond_13

    .line 378
    .line 379
    const/4 v5, 0x1

    .line 380
    goto :goto_f

    .line 381
    :cond_13
    const/4 v5, 0x0

    .line 382
    :goto_f
    invoke-direct {v10, v9, v5}, Lvw2;-><init>(Loe0;Z)V

    .line 383
    .line 384
    .line 385
    goto :goto_10

    .line 386
    :catchall_4
    move-exception v0

    .line 387
    move-object v11, v1

    .line 388
    move-object v2, v6

    .line 389
    goto/16 :goto_1

    .line 390
    .line 391
    :cond_14
    const/4 v10, 0x0

    .line 392
    :goto_10
    iput-object v10, v1, Lw33;->n:Ljava/lang/Object;

    .line 393
    .line 394
    instance-of v5, v8, Lnz3;

    .line 395
    .line 396
    if-nez v5, :cond_1a

    .line 397
    .line 398
    if-nez v8, :cond_19

    .line 399
    .line 400
    if-eqz v10, :cond_18

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    new-instance v2, Lzd0;

    .line 406
    .line 407
    invoke-direct {v2, v10}, Lzd0;-><init>(Lvw2;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v0, Lfe0;->p:Ljava/lang/ThreadLocal;

    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    new-instance v5, Lly3;

    .line 416
    .line 417
    invoke-direct {v5, v10, v0}, Lly3;-><init>(Lvw2;Ljava/lang/ThreadLocal;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v2, v5}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    new-instance v2, Ln;

    .line 425
    .line 426
    const/16 v5, 0xe

    .line 427
    .line 428
    const/4 v8, 0x0

    .line 429
    invoke-direct {v2, v3, v1, v8, v5}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 430
    .line 431
    .line 432
    iput-object v6, v4, Lee0;->q:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v1, v4, Lee0;->r:Ljava/io/Serializable;

    .line 435
    .line 436
    iput-object v8, v4, Lee0;->s:Llw2;

    .line 437
    .line 438
    iput-object v8, v4, Lee0;->t:Lw33;

    .line 439
    .line 440
    iput-object v8, v4, Lee0;->u:Lhi0;

    .line 441
    .line 442
    iput-object v8, v4, Lee0;->v:Lw33;

    .line 443
    .line 444
    const/4 v3, 0x4

    .line 445
    iput v3, v4, Lee0;->z:I

    .line 446
    .line 447
    invoke-static {v0, v2, v4}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 451
    if-ne v0, v12, :cond_15

    .line 452
    .line 453
    :goto_11
    return-object v12

    .line 454
    :cond_15
    move-object v2, v6

    .line 455
    :goto_12
    :try_start_6
    iget-object v1, v1, Lw33;->n:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v1, Lvw2;

    .line 458
    .line 459
    if-eqz v1, :cond_17

    .line 460
    .line 461
    iget-object v3, v1, Lvw2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    const/4 v12, 0x1

    .line 465
    invoke-virtual {v3, v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 466
    .line 467
    .line 468
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 469
    if-eqz v3, :cond_16

    .line 470
    .line 471
    :try_start_7
    iget-object v3, v1, Lvw2;->a:Loe0;

    .line 472
    .line 473
    invoke-static {v3, v7}, Lix;->r(Ljb3;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 474
    .line 475
    .line 476
    :catch_0
    :cond_16
    :try_start_8
    iget-object v1, v1, Lvw2;->a:Loe0;

    .line 477
    .line 478
    const/4 v8, 0x0

    .line 479
    iput-object v8, v1, Loe0;->p:Lhi0;

    .line 480
    .line 481
    iput-object v8, v1, Loe0;->q:Ljava/lang/Throwable;

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Llw2;->d(Loe0;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 484
    .line 485
    .line 486
    :catchall_5
    :cond_17
    return-object v0

    .line 487
    :cond_18
    :try_start_9
    const-string v0, "Required value was null."

    .line 488
    .line 489
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 490
    .line 491
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw v2

    .line 495
    :cond_19
    throw v8

    .line 496
    :cond_1a
    invoke-virtual {v0, v2}, Lfe0;->b(Z)V

    .line 497
    .line 498
    .line 499
    const/16 v18, 0x0

    .line 500
    .line 501
    throw v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 502
    :catchall_6
    move-exception v0

    .line 503
    move-object v1, v0

    .line 504
    move-object v2, v6

    .line 505
    :goto_13
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 506
    :catchall_7
    move-exception v0

    .line 507
    move-object v3, v0

    .line 508
    :try_start_b
    iget-object v0, v11, Lw33;->n:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v0, Lvw2;

    .line 511
    .line 512
    if-eqz v0, :cond_1c

    .line 513
    .line 514
    iget-object v4, v0, Lvw2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 515
    .line 516
    const/4 v5, 0x0

    .line 517
    const/4 v12, 0x1

    .line 518
    invoke-virtual {v4, v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 519
    .line 520
    .line 521
    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 522
    if-eqz v4, :cond_1b

    .line 523
    .line 524
    :try_start_c
    iget-object v4, v0, Lvw2;->a:Loe0;

    .line 525
    .line 526
    invoke-static {v4, v7}, Lix;->r(Ljb3;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 527
    .line 528
    .line 529
    :catch_1
    :cond_1b
    :try_start_d
    iget-object v0, v0, Lvw2;->a:Loe0;

    .line 530
    .line 531
    const/4 v8, 0x0

    .line 532
    iput-object v8, v0, Loe0;->p:Lhi0;

    .line 533
    .line 534
    iput-object v8, v0, Loe0;->q:Ljava/lang/Throwable;

    .line 535
    .line 536
    invoke-virtual {v2, v0}, Llw2;->d(Loe0;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 537
    .line 538
    .line 539
    goto :goto_14

    .line 540
    :catchall_8
    move-exception v0

    .line 541
    invoke-static {v1, v0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    :cond_1c
    :goto_14
    throw v3

    .line 545
    :cond_1d
    const/16 v0, 0x15

    .line 546
    .line 547
    const-string v1, "Connection pool is closed"

    .line 548
    .line 549
    invoke-static {v0, v1}, Lix;->U(ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const/16 v18, 0x0

    .line 553
    .line 554
    throw v18
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "reader"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "writer"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Timed out attempting to acquire a "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " connection."

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "\n\nWriter pool:\n"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lfe0;->o:Llw2;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Llw2;->c(Ljava/lang/StringBuilder;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "Reader pool:"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 p1, 0xa

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lfe0;->n:Llw2;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Llw2;->c(Ljava/lang/StringBuilder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const/4 p1, 0x5

    .line 65
    invoke-static {p1, p0}, Lix;->U(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lfe0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lfe0;->n:Llw2;

    .line 12
    .line 13
    invoke-virtual {v0}, Llw2;->b()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lfe0;->o:Llw2;

    .line 17
    .line 18
    invoke-virtual {p0}, Llw2;->b()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
