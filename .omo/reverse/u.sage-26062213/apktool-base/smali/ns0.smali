.class public final Lns0;
.super Lds3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public c:J

.field public d:I

.field public e:Lcg2;

.field public f:Ljava/lang/Object;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lns0;->h:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lds3;-><init>(J)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lsn2;->a:Lcg2;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lns0;->e:Lcg2;

    .line 10
    .line 11
    sget-object p1, Lns0;->h:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lns0;->f:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lds3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lns0;

    .line 5
    .line 6
    iget-object v0, p1, Lns0;->e:Lcg2;

    .line 7
    .line 8
    iput-object v0, p0, Lns0;->e:Lcg2;

    .line 9
    .line 10
    iget-object v0, p1, Lns0;->f:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lns0;->f:Ljava/lang/Object;

    .line 13
    .line 14
    iget p1, p1, Lns0;->g:I

    .line 15
    .line 16
    iput p1, p0, Lns0;->g:I

    .line 17
    .line 18
    return-void
.end method

.method public final b(J)Lds3;
    .locals 0

    .line 1
    new-instance p0, Lns0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lns0;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final c(Los0;Lpo3;)Z
    .locals 6

    .line 1
    sget-object v0, Lwo3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lns0;->c:J

    .line 5
    .line 6
    invoke-virtual {p2}, Lpo3;->g()J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lns0;->d:I

    .line 17
    .line 18
    invoke-virtual {p2}, Lpo3;->h()I

    .line 19
    .line 20
    .line 21
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    :goto_0
    move v1, v2

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    iget-object v4, p0, Lns0;->f:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v5, Lns0;->h:Ljava/lang/Object;

    .line 34
    .line 35
    if-eq v4, v5, :cond_2

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget v4, p0, Lns0;->g:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lns0;->d(Los0;Lpo3;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ne v4, p1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v2, v3

    .line 49
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    invoke-virtual {p2}, Lpo3;->g()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    iput-wide v3, p0, Lns0;->c:J

    .line 59
    .line 60
    invoke-virtual {p2}, Lpo3;->h()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lns0;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return v2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    monitor-exit v0

    .line 70
    throw p0

    .line 71
    :cond_4
    return v2

    .line 72
    :goto_3
    monitor-exit v0

    .line 73
    throw p0
.end method

.method public final d(Los0;Lpo3;)I
    .locals 30

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    sget-object v1, Lwo3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, v2, Lns0;->e:Lcg2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    iget v1, v2, Lcg2;->e:I

    .line 12
    .line 13
    const/4 v3, 0x7

    .line 14
    if-eqz v1, :cond_11

    .line 15
    .line 16
    invoke-static {}, Lca;->l()Lug2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v4, v1, Lug2;->n:[Ljava/lang/Object;

    .line 21
    .line 22
    iget v5, v1, Lug2;->p:I

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    move v7, v6

    .line 26
    :goto_0
    if-ge v7, v5, :cond_0

    .line 27
    .line 28
    aget-object v8, v4, v7

    .line 29
    .line 30
    check-cast v8, Lzf1;

    .line 31
    .line 32
    invoke-virtual {v8}, Lzf1;->b()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    iget-object v4, v2, Lcg2;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v5, v2, Lcg2;->c:[I

    .line 41
    .line 42
    iget-object v2, v2, Lcg2;->a:[J

    .line 43
    .line 44
    array-length v7, v2

    .line 45
    add-int/lit8 v7, v7, -0x2

    .line 46
    .line 47
    if-ltz v7, :cond_d

    .line 48
    .line 49
    move v9, v3

    .line 50
    move v8, v6

    .line 51
    :goto_1
    aget-wide v10, v2, v8

    .line 52
    .line 53
    not-long v12, v10

    .line 54
    shl-long/2addr v12, v3

    .line 55
    and-long/2addr v12, v10

    .line 56
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v12, v14

    .line 62
    cmp-long v12, v12, v14

    .line 63
    .line 64
    if-eqz v12, :cond_b

    .line 65
    .line 66
    sub-int v12, v8, v7

    .line 67
    .line 68
    not-int v12, v12

    .line 69
    ushr-int/lit8 v12, v12, 0x1f

    .line 70
    .line 71
    const/16 v13, 0x8

    .line 72
    .line 73
    rsub-int/lit8 v12, v12, 0x8

    .line 74
    .line 75
    move/from16 p0, v3

    .line 76
    .line 77
    move v3, v6

    .line 78
    :goto_2
    if-ge v3, v12, :cond_a

    .line 79
    .line 80
    const-wide/16 v16, 0xff

    .line 81
    .line 82
    and-long v18, v10, v16

    .line 83
    .line 84
    const-wide/16 v20, 0x80

    .line 85
    .line 86
    cmp-long v18, v18, v20

    .line 87
    .line 88
    if-gez v18, :cond_9

    .line 89
    .line 90
    shl-int/lit8 v18, v8, 0x3

    .line 91
    .line 92
    add-int v18, v18, v3

    .line 93
    .line 94
    aget-object v19, v4, v18

    .line 95
    .line 96
    move-wide/from16 v22, v14

    .line 97
    .line 98
    aget v14, v5, v18

    .line 99
    .line 100
    move-object/from16 v15, v19

    .line 101
    .line 102
    check-cast v15, Lbs3;

    .line 103
    .line 104
    move/from16 p1, v13

    .line 105
    .line 106
    const/4 v13, 0x1

    .line 107
    if-eq v14, v13, :cond_1

    .line 108
    .line 109
    move-object/from16 v19, v2

    .line 110
    .line 111
    move/from16 v25, v3

    .line 112
    .line 113
    move-object/from16 v24, v4

    .line 114
    .line 115
    move-wide/from16 v26, v10

    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_1
    instance-of v13, v15, Los0;

    .line 120
    .line 121
    if-eqz v13, :cond_7

    .line 122
    .line 123
    check-cast v15, Los0;

    .line 124
    .line 125
    iget-object v13, v15, Los0;->q:Lns0;

    .line 126
    .line 127
    invoke-static {v13, v0}, Lwo3;->i(Lds3;Lpo3;)Lds3;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    check-cast v13, Lns0;

    .line 132
    .line 133
    iget-object v14, v15, Los0;->o:Lne1;

    .line 134
    .line 135
    invoke-virtual {v15, v13, v0, v6, v14}, Los0;->g(Lns0;Lpo3;ZLne1;)Lns0;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    iget-object v14, v13, Lns0;->e:Lcg2;

    .line 140
    .line 141
    iget-object v15, v14, Lcg2;->b:[Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v14, v14, Lcg2;->a:[J

    .line 144
    .line 145
    array-length v6, v14

    .line 146
    add-int/lit8 v6, v6, -0x2

    .line 147
    .line 148
    move-object/from16 v19, v2

    .line 149
    .line 150
    move/from16 v25, v3

    .line 151
    .line 152
    move-object/from16 v24, v4

    .line 153
    .line 154
    if-ltz v6, :cond_6

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_3
    aget-wide v3, v14, v2

    .line 158
    .line 159
    move-wide/from16 v26, v10

    .line 160
    .line 161
    move v11, v9

    .line 162
    not-long v9, v3

    .line 163
    shl-long v9, v9, p0

    .line 164
    .line 165
    and-long/2addr v9, v3

    .line 166
    and-long v9, v9, v22

    .line 167
    .line 168
    cmp-long v9, v9, v22

    .line 169
    .line 170
    if-eqz v9, :cond_4

    .line 171
    .line 172
    sub-int v9, v2, v6

    .line 173
    .line 174
    not-int v9, v9

    .line 175
    ushr-int/lit8 v9, v9, 0x1f

    .line 176
    .line 177
    rsub-int/lit8 v9, v9, 0x8

    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    :goto_4
    if-ge v10, v9, :cond_3

    .line 181
    .line 182
    and-long v28, v3, v16

    .line 183
    .line 184
    cmp-long v28, v28, v20

    .line 185
    .line 186
    if-gez v28, :cond_2

    .line 187
    .line 188
    shl-int/lit8 v28, v2, 0x3

    .line 189
    .line 190
    add-int v28, v28, v10

    .line 191
    .line 192
    aget-object v28, v15, v28

    .line 193
    .line 194
    check-cast v28, Lbs3;

    .line 195
    .line 196
    mul-int/lit8 v11, v11, 0x1f

    .line 197
    .line 198
    invoke-static/range {v28 .. v28}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v28

    .line 202
    add-int v11, v11, v28

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    goto/16 :goto_d

    .line 207
    .line 208
    :cond_2
    :goto_5
    shr-long v3, v3, p1

    .line 209
    .line 210
    add-int/lit8 v10, v10, 0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_3
    move/from16 v3, p1

    .line 214
    .line 215
    if-ne v9, v3, :cond_5

    .line 216
    .line 217
    :cond_4
    move v9, v11

    .line 218
    goto :goto_6

    .line 219
    :cond_5
    move v9, v11

    .line 220
    goto :goto_7

    .line 221
    :goto_6
    if-eq v2, v6, :cond_8

    .line 222
    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    move-wide/from16 v10, v26

    .line 226
    .line 227
    const/16 p1, 0x8

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    move-wide/from16 v26, v10

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_7
    move-object/from16 v19, v2

    .line 234
    .line 235
    move/from16 v25, v3

    .line 236
    .line 237
    move-object/from16 v24, v4

    .line 238
    .line 239
    move-wide/from16 v26, v10

    .line 240
    .line 241
    invoke-interface {v15}, Lbs3;->a()Lds3;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2, v0}, Lwo3;->i(Lds3;Lpo3;)Lds3;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    :cond_8
    :goto_7
    mul-int/lit8 v9, v9, 0x1f

    .line 250
    .line 251
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    add-int/2addr v9, v2

    .line 256
    mul-int/lit8 v9, v9, 0x1f

    .line 257
    .line 258
    iget-wide v2, v13, Lds3;->a:J

    .line 259
    .line 260
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 261
    .line 262
    .line 263
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    add-int/2addr v9, v2

    .line 265
    :goto_8
    const/16 v3, 0x8

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_9
    move-object/from16 v19, v2

    .line 269
    .line 270
    move/from16 v25, v3

    .line 271
    .line 272
    move-object/from16 v24, v4

    .line 273
    .line 274
    move-wide/from16 v26, v10

    .line 275
    .line 276
    move-wide/from16 v22, v14

    .line 277
    .line 278
    move v3, v13

    .line 279
    :goto_9
    shr-long v10, v26, v3

    .line 280
    .line 281
    add-int/lit8 v2, v25, 0x1

    .line 282
    .line 283
    move v13, v3

    .line 284
    move-wide/from16 v14, v22

    .line 285
    .line 286
    move-object/from16 v4, v24

    .line 287
    .line 288
    const/4 v6, 0x0

    .line 289
    move v3, v2

    .line 290
    move-object/from16 v2, v19

    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :cond_a
    move-object/from16 v19, v2

    .line 295
    .line 296
    move-object/from16 v24, v4

    .line 297
    .line 298
    move v3, v13

    .line 299
    if-ne v12, v3, :cond_e

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_b
    move-object/from16 v19, v2

    .line 303
    .line 304
    move/from16 p0, v3

    .line 305
    .line 306
    move-object/from16 v24, v4

    .line 307
    .line 308
    :goto_a
    if-eq v8, v7, :cond_c

    .line 309
    .line 310
    add-int/lit8 v8, v8, 0x1

    .line 311
    .line 312
    move/from16 v3, p0

    .line 313
    .line 314
    move-object/from16 v2, v19

    .line 315
    .line 316
    move-object/from16 v4, v24

    .line 317
    .line 318
    const/4 v6, 0x0

    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_c
    move v3, v9

    .line 322
    goto :goto_b

    .line 323
    :cond_d
    move/from16 p0, v3

    .line 324
    .line 325
    :goto_b
    move v9, v3

    .line 326
    :cond_e
    iget-object v0, v1, Lug2;->n:[Ljava/lang/Object;

    .line 327
    .line 328
    iget v1, v1, Lug2;->p:I

    .line 329
    .line 330
    const/4 v6, 0x0

    .line 331
    :goto_c
    if-ge v6, v1, :cond_f

    .line 332
    .line 333
    aget-object v2, v0, v6

    .line 334
    .line 335
    check-cast v2, Lzf1;

    .line 336
    .line 337
    invoke-virtual {v2}, Lzf1;->a()V

    .line 338
    .line 339
    .line 340
    add-int/lit8 v6, v6, 0x1

    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_f
    return v9

    .line 344
    :goto_d
    iget-object v2, v1, Lug2;->n:[Ljava/lang/Object;

    .line 345
    .line 346
    iget v1, v1, Lug2;->p:I

    .line 347
    .line 348
    const/4 v6, 0x0

    .line 349
    :goto_e
    if-ge v6, v1, :cond_10

    .line 350
    .line 351
    aget-object v3, v2, v6

    .line 352
    .line 353
    check-cast v3, Lzf1;

    .line 354
    .line 355
    invoke-virtual {v3}, Lzf1;->a()V

    .line 356
    .line 357
    .line 358
    add-int/lit8 v6, v6, 0x1

    .line 359
    .line 360
    goto :goto_e

    .line 361
    :cond_10
    throw v0

    .line 362
    :cond_11
    move/from16 p0, v3

    .line 363
    .line 364
    return p0

    .line 365
    :catchall_1
    move-exception v0

    .line 366
    monitor-exit v1

    .line 367
    throw v0
.end method
