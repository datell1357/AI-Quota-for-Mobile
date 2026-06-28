.class public abstract La11;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, La11;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ltf4;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ltf4;->a:Leg4;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Ltf4;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ltf4;->b(Ltf4;)Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Ltf4;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 50
    .line 51
    iget-object v2, v0, Leg4;->b:Lmd0;

    .line 52
    .line 53
    invoke-virtual {v1}, Lga3;->b()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-static {v1, v2, p0}, Lnt1;->j(Landroidx/work/impl/WorkDatabase;Lmd0;Ltf4;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, La11;->b(Ltf4;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {v1}, Lga3;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lga3;->l()V

    .line 67
    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    iget-object p0, v0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 72
    .line 73
    iget-object v0, v0, Leg4;->e:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {v2, p0, v0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v1}, Lga3;->l()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    const-string v0, "WorkContinuation has cycles ("

    .line 85
    .line 86
    const-string v1, ")"

    .line 87
    .line 88
    invoke-static {p0, v1, v0}, Lmk0;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static b(Ltf4;)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Ltf4;->b(Ltf4;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Ltf4;->a:Leg4;

    .line 8
    .line 9
    iget-object v3, v0, Ltf4;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Ltf4;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, v0, Ltf4;->c:Lx31;

    .line 23
    .line 24
    iget-object v7, v2, Leg4;->b:Lmd0;

    .line 25
    .line 26
    iget-object v7, v7, Lmd0;->d:Lpr3;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    iget-object v9, v2, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    array-length v11, v1

    .line 40
    if-lez v11, :cond_0

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v11, v4

    .line 45
    :goto_0
    sget-object v12, Lcg4;->p:Lcg4;

    .line 46
    .line 47
    sget-object v13, Lcg4;->s:Lcg4;

    .line 48
    .line 49
    sget-object v14, Lcg4;->q:Lcg4;

    .line 50
    .line 51
    if-eqz v11, :cond_7

    .line 52
    .line 53
    array-length v15, v1

    .line 54
    move v10, v4

    .line 55
    move/from16 v17, v10

    .line 56
    .line 57
    move/from16 v18, v17

    .line 58
    .line 59
    const/16 v16, 0x1

    .line 60
    .line 61
    :goto_1
    if-ge v10, v15, :cond_6

    .line 62
    .line 63
    aget-object v4, v1, v10

    .line 64
    .line 65
    move-object/from16 v19, v3

    .line 66
    .line 67
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v4}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    invoke-static {}, Lt72;->g()Lt72;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Prerequisite "

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v3, La11;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1, v3, v2}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_2
    const/4 v1, 0x1

    .line 106
    const/4 v4, 0x0

    .line 107
    goto/16 :goto_13

    .line 108
    .line 109
    :cond_2
    iget-object v3, v3, Log4;->b:Lcg4;

    .line 110
    .line 111
    if-ne v3, v12, :cond_3

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const/4 v4, 0x0

    .line 116
    :goto_3
    and-int v16, v16, v4

    .line 117
    .line 118
    if-ne v3, v14, :cond_4

    .line 119
    .line 120
    const/16 v18, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    if-ne v3, v13, :cond_5

    .line 124
    .line 125
    const/16 v17, 0x1

    .line 126
    .line 127
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    move-object/from16 v3, v19

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    :goto_5
    move-object/from16 v19, v3

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    const/16 v16, 0x1

    .line 137
    .line 138
    const/16 v17, 0x0

    .line 139
    .line 140
    const/16 v18, 0x0

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    sget-object v4, Lcg4;->n:Lcg4;

    .line 148
    .line 149
    if-nez v3, :cond_16

    .line 150
    .line 151
    if-nez v11, :cond_16

    .line 152
    .line 153
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v10, v5}, Lqg4;->d(Ljava/lang/String;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-nez v15, :cond_16

    .line 166
    .line 167
    sget-object v15, Lx31;->p:Lx31;

    .line 168
    .line 169
    move/from16 v20, v3

    .line 170
    .line 171
    sget-object v3, Lx31;->q:Lx31;

    .line 172
    .line 173
    if-eq v6, v15, :cond_c

    .line 174
    .line 175
    if-ne v6, v3, :cond_8

    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_8
    sget-object v3, Lx31;->o:Lx31;

    .line 179
    .line 180
    if-ne v6, v3, :cond_a

    .line 181
    .line 182
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_a

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lng4;

    .line 197
    .line 198
    iget-object v6, v6, Lng4;->b:Lcg4;

    .line 199
    .line 200
    if-eq v6, v4, :cond_1

    .line 201
    .line 202
    sget-object v12, Lcg4;->o:Lcg4;

    .line 203
    .line 204
    if-ne v6, v12, :cond_9

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v3, Ll20;

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    invoke-direct {v3, v9, v5, v2, v6}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v3}, Lga3;->o(Ljava/lang/Runnable;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_b

    .line 232
    .line 233
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    check-cast v10, Lng4;

    .line 238
    .line 239
    iget-object v10, v10, Lng4;->a:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v3, v10}, Lqg4;->a(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_b
    move-object/from16 v24, v2

    .line 246
    .line 247
    move-object/from16 v22, v9

    .line 248
    .line 249
    const/4 v0, 0x1

    .line 250
    goto/16 :goto_e

    .line 251
    .line 252
    :cond_c
    :goto_8
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->r()Ljs0;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    new-instance v15, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v21

    .line 269
    if-eqz v21, :cond_11

    .line 270
    .line 271
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v21

    .line 275
    move-object/from16 v22, v9

    .line 276
    .line 277
    move-object/from16 v9, v21

    .line 278
    .line 279
    check-cast v9, Lng4;

    .line 280
    .line 281
    move-object/from16 v21, v10

    .line 282
    .line 283
    iget-object v10, v9, Lng4;->a:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iget-object v0, v11, Ljs0;->a:Lga3;

    .line 292
    .line 293
    move-object/from16 v23, v11

    .line 294
    .line 295
    new-instance v11, Lao0;

    .line 296
    .line 297
    move-object/from16 v24, v2

    .line 298
    .line 299
    const/4 v2, 0x1

    .line 300
    invoke-direct {v11, v10, v2}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    const/4 v10, 0x0

    .line 304
    invoke-static {v0, v2, v10, v11}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_10

    .line 315
    .line 316
    iget-object v0, v9, Lng4;->b:Lcg4;

    .line 317
    .line 318
    if-ne v0, v12, :cond_d

    .line 319
    .line 320
    const/4 v2, 0x1

    .line 321
    goto :goto_a

    .line 322
    :cond_d
    const/4 v2, 0x0

    .line 323
    :goto_a
    and-int v2, v16, v2

    .line 324
    .line 325
    if-ne v0, v14, :cond_e

    .line 326
    .line 327
    const/16 v18, 0x1

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_e
    if-ne v0, v13, :cond_f

    .line 331
    .line 332
    const/16 v17, 0x1

    .line 333
    .line 334
    :cond_f
    :goto_b
    iget-object v0, v9, Lng4;->a:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move/from16 v16, v2

    .line 340
    .line 341
    :cond_10
    move-object/from16 v0, p0

    .line 342
    .line 343
    move-object/from16 v10, v21

    .line 344
    .line 345
    move-object/from16 v9, v22

    .line 346
    .line 347
    move-object/from16 v11, v23

    .line 348
    .line 349
    move-object/from16 v2, v24

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_11
    move-object/from16 v24, v2

    .line 353
    .line 354
    move-object/from16 v22, v9

    .line 355
    .line 356
    if-ne v6, v3, :cond_14

    .line 357
    .line 358
    if-nez v17, :cond_12

    .line 359
    .line 360
    if-eqz v18, :cond_14

    .line 361
    .line 362
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0, v5}, Lqg4;->d(Ljava/lang/String;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_13

    .line 379
    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Lng4;

    .line 385
    .line 386
    iget-object v3, v3, Lng4;->a:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v3}, Lqg4;->a(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_13
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 393
    .line 394
    const/16 v17, 0x0

    .line 395
    .line 396
    const/16 v18, 0x0

    .line 397
    .line 398
    :cond_14
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    move-object v1, v0

    .line 403
    check-cast v1, [Ljava/lang/String;

    .line 404
    .line 405
    array-length v0, v1

    .line 406
    if-lez v0, :cond_15

    .line 407
    .line 408
    const/4 v11, 0x1

    .line 409
    goto :goto_d

    .line 410
    :cond_15
    const/4 v11, 0x0

    .line 411
    :goto_d
    const/4 v0, 0x0

    .line 412
    goto :goto_e

    .line 413
    :cond_16
    move-object/from16 v24, v2

    .line 414
    .line 415
    move/from16 v20, v3

    .line 416
    .line 417
    move-object/from16 v22, v9

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_1d

    .line 429
    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    check-cast v3, Lmg4;

    .line 435
    .line 436
    iget-object v6, v3, Lmg4;->b:Log4;

    .line 437
    .line 438
    iget-object v9, v3, Lmg4;->a:Ljava/util/UUID;

    .line 439
    .line 440
    if-eqz v11, :cond_19

    .line 441
    .line 442
    if-nez v16, :cond_19

    .line 443
    .line 444
    if-eqz v18, :cond_17

    .line 445
    .line 446
    iput-object v14, v6, Log4;->b:Lcg4;

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :cond_17
    if-eqz v17, :cond_18

    .line 450
    .line 451
    iput-object v13, v6, Log4;->b:Lcg4;

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_18
    sget-object v10, Lcg4;->r:Lcg4;

    .line 455
    .line 456
    iput-object v10, v6, Log4;->b:Lcg4;

    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_19
    iput-wide v7, v6, Log4;->n:J

    .line 460
    .line 461
    :goto_10
    iget-object v10, v6, Log4;->b:Lcg4;

    .line 462
    .line 463
    if-ne v10, v4, :cond_1a

    .line 464
    .line 465
    const/4 v0, 0x1

    .line 466
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    move-object/from16 v12, v24

    .line 471
    .line 472
    iget-object v15, v12, Leg4;->e:Ljava/util/List;

    .line 473
    .line 474
    invoke-static {v15, v6}, Lnt1;->Y(Ljava/util/List;Log4;)Log4;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    iget-object v15, v10, Lqg4;->a:Lga3;

    .line 482
    .line 483
    move/from16 v19, v0

    .line 484
    .line 485
    new-instance v0, Lq14;

    .line 486
    .line 487
    move-object/from16 v21, v2

    .line 488
    .line 489
    const/16 v2, 0x8

    .line 490
    .line 491
    invoke-direct {v0, v2, v10, v6}, Lq14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    const/4 v2, 0x1

    .line 495
    const/4 v6, 0x0

    .line 496
    invoke-static {v15, v6, v2, v0}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    if-eqz v11, :cond_1b

    .line 500
    .line 501
    array-length v0, v1

    .line 502
    const/4 v6, 0x0

    .line 503
    :goto_11
    if-ge v6, v0, :cond_1b

    .line 504
    .line 505
    aget-object v2, v1, v6

    .line 506
    .line 507
    new-instance v10, Lgs0;

    .line 508
    .line 509
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v15

    .line 513
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-direct {v10, v15, v2}, Lgs0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->r()Ljs0;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    iget-object v15, v2, Ljs0;->a:Lga3;

    .line 527
    .line 528
    move/from16 v23, v0

    .line 529
    .line 530
    new-instance v0, Lm;

    .line 531
    .line 532
    move-object/from16 v24, v1

    .line 533
    .line 534
    const/4 v1, 0x7

    .line 535
    invoke-direct {v0, v1, v2, v10}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    const/4 v2, 0x1

    .line 539
    const/4 v10, 0x0

    .line 540
    invoke-static {v15, v10, v2, v0}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    add-int/lit8 v6, v6, 0x1

    .line 544
    .line 545
    move/from16 v0, v23

    .line 546
    .line 547
    move-object/from16 v1, v24

    .line 548
    .line 549
    goto :goto_11

    .line 550
    :cond_1b
    move-object/from16 v24, v1

    .line 551
    .line 552
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->x()Ltg4;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    iget-object v2, v3, Lmg4;->c:Ljava/util/Set;

    .line 564
    .line 565
    invoke-virtual {v0, v1, v2}, Ltg4;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 566
    .line 567
    .line 568
    if-nez v20, :cond_1c

    .line 569
    .line 570
    invoke-virtual/range {v22 .. v22}, Landroidx/work/impl/WorkDatabase;->u()Lig4;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    new-instance v1, Lhg4;

    .line 575
    .line 576
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    invoke-direct {v1, v5, v2}, Lhg4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    iget-object v2, v0, Lig4;->a:Lga3;

    .line 590
    .line 591
    new-instance v3, Lq14;

    .line 592
    .line 593
    const/4 v6, 0x5

    .line 594
    invoke-direct {v3, v6, v0, v1}, Lq14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    const/4 v1, 0x1

    .line 598
    const/4 v6, 0x0

    .line 599
    invoke-static {v2, v6, v1, v3}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    goto :goto_12

    .line 603
    :cond_1c
    const/4 v1, 0x1

    .line 604
    const/4 v6, 0x0

    .line 605
    :goto_12
    move/from16 v0, v19

    .line 606
    .line 607
    move-object/from16 v2, v21

    .line 608
    .line 609
    move-object/from16 v1, v24

    .line 610
    .line 611
    move-object/from16 v24, v12

    .line 612
    .line 613
    goto/16 :goto_f

    .line 614
    .line 615
    :cond_1d
    const/4 v1, 0x1

    .line 616
    move v4, v0

    .line 617
    move-object/from16 v0, p0

    .line 618
    .line 619
    :goto_13
    iput-boolean v1, v0, Ltf4;->g:Z

    .line 620
    .line 621
    return v4
.end method
