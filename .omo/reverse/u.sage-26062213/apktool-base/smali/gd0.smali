.class public final synthetic Lgd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leh0;
.implements Lmv3;
.implements Lc20;
.implements Ljp2;
.implements Lmb3;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lgd0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lgd0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lgd0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lgd0;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lgd0;->n:I

    .line 4
    .line 5
    const-string v2, "bytes"

    .line 6
    .line 7
    const-string v3, "PRAGMA page_size"

    .line 8
    .line 9
    const-string v4, "PRAGMA page_count"

    .line 10
    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x5

    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x3

    .line 15
    sget-object v9, Lo72;->q:Lo72;

    .line 16
    .line 17
    const/4 v10, 0x2

    .line 18
    const/4 v12, 0x1

    .line 19
    iget-object v13, v0, Lgd0;->q:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v14, v0, Lgd0;->p:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Lgd0;->o:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v15, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast v0, Lob3;

    .line 30
    .line 31
    check-cast v14, Ljava/util/HashMap;

    .line 32
    .line 33
    check-cast v13, Lqd1;

    .line 34
    .line 35
    iget-object v1, v13, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    move-object/from16 v2, p1

    .line 40
    .line 41
    check-cast v2, Landroid/database/Cursor;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-eqz v11, :cond_8

    .line 51
    .line 52
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    sget-object v16, Lo72;->o:Lo72;

    .line 61
    .line 62
    if-nez v15, :cond_0

    .line 63
    .line 64
    :goto_1
    move-object/from16 v5, v16

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    if-ne v15, v12, :cond_1

    .line 68
    .line 69
    sget-object v16, Lo72;->p:Lo72;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    if-ne v15, v10, :cond_2

    .line 73
    .line 74
    move-object v5, v9

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    if-ne v15, v8, :cond_3

    .line 77
    .line 78
    sget-object v16, Lo72;->r:Lo72;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    if-ne v15, v7, :cond_4

    .line 82
    .line 83
    sget-object v16, Lo72;->s:Lo72;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    if-ne v15, v6, :cond_5

    .line 87
    .line 88
    sget-object v16, Lo72;->t:Lo72;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    if-ne v15, v5, :cond_6

    .line 92
    .line 93
    sget-object v16, Lo72;->u:Lo72;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    const-string v5, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 97
    .line 98
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    const-string v6, "SQLiteEventStore"

    .line 103
    .line 104
    invoke-static {v15, v6, v5}, Lqj0;->C(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_2
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v16

    .line 116
    if-nez v16, :cond_7

    .line 117
    .line 118
    new-instance v6, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Ljava/util/List;

    .line 131
    .line 132
    new-instance v11, Lp72;

    .line 133
    .line 134
    invoke-direct {v11, v7, v8, v5}, Lp72;-><init>(JLo72;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    const/4 v5, 0x6

    .line 141
    const/4 v6, 0x5

    .line 142
    const/4 v7, 0x4

    .line 143
    const/4 v8, 0x3

    .line 144
    const/4 v15, 0x0

    .line 145
    goto :goto_0

    .line 146
    :cond_8
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_9

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/util/Map$Entry;

    .line 165
    .line 166
    sget v6, Lr72;->c:I

    .line 167
    .line 168
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    check-cast v6, Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Ljava/util/List;

    .line 184
    .line 185
    new-instance v7, Lr72;

    .line 186
    .line 187
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-direct {v7, v6, v5}, Lr72;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_9
    iget-object v2, v0, Lob3;->o:Lpr3;

    .line 199
    .line 200
    invoke-virtual {v2}, Lpr3;->i()J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    .line 210
    .line 211
    :try_start_0
    const-string v7, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    new-array v9, v8, [Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v2, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 217
    .line 218
    .line 219
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 221
    .line 222
    .line 223
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    new-instance v10, Lkz3;

    .line 228
    .line 229
    invoke-direct {v10, v8, v9, v5, v6}, Lkz3;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .line 231
    .line 232
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    .line 240
    .line 241
    iput-object v10, v13, Lqd1;->p:Ljava/lang/Object;

    .line 242
    .line 243
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    mul-long/2addr v2, v4

    .line 268
    sget-object v4, Leo;->f:Leo;

    .line 269
    .line 270
    iget-wide v4, v4, Leo;->a:J

    .line 271
    .line 272
    new-instance v6, Lqs3;

    .line 273
    .line 274
    invoke-direct {v6, v2, v3, v4, v5}, Lqs3;-><init>(JJ)V

    .line 275
    .line 276
    .line 277
    new-instance v2, Leh1;

    .line 278
    .line 279
    invoke-direct {v2, v6}, Leh1;-><init>(Lqs3;)V

    .line 280
    .line 281
    .line 282
    iput-object v2, v13, Lqd1;->q:Ljava/lang/Object;

    .line 283
    .line 284
    iget-object v0, v0, Lob3;->r:Lm03;

    .line 285
    .line 286
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Ljava/lang/String;

    .line 291
    .line 292
    iput-object v0, v13, Lqd1;->r:Ljava/lang/Object;

    .line 293
    .line 294
    new-instance v0, Lm60;

    .line 295
    .line 296
    iget-object v2, v13, Lqd1;->p:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v2, Lkz3;

    .line 299
    .line 300
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v3, v13, Lqd1;->q:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v3, Leh1;

    .line 307
    .line 308
    iget-object v4, v13, Lqd1;->r:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v4, Ljava/lang/String;

    .line 311
    .line 312
    invoke-direct {v0, v2, v1, v3, v4}, Lm60;-><init>(Lkz3;Ljava/util/List;Leh1;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    goto :goto_4

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 320
    .line 321
    .line 322
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    :goto_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :pswitch_0
    check-cast v0, Lob3;

    .line 328
    .line 329
    check-cast v14, Ljava/util/ArrayList;

    .line 330
    .line 331
    check-cast v13, Lhp;

    .line 332
    .line 333
    move-object/from16 v1, p1

    .line 334
    .line 335
    check-cast v1, Landroid/database/Cursor;

    .line 336
    .line 337
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_16

    .line 342
    .line 343
    const/4 v8, 0x0

    .line 344
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v3

    .line 348
    const/4 v5, 0x7

    .line 349
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_a

    .line 354
    .line 355
    move v5, v12

    .line 356
    goto :goto_6

    .line 357
    :cond_a
    const/4 v5, 0x0

    .line 358
    :goto_6
    new-instance v7, Lbo;

    .line 359
    .line 360
    invoke-direct {v7}, Lbo;-><init>()V

    .line 361
    .line 362
    .line 363
    new-instance v6, Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 366
    .line 367
    .line 368
    iput-object v6, v7, Lbo;->i:Ljava/lang/Object;

    .line 369
    .line 370
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    if-eqz v6, :cond_15

    .line 375
    .line 376
    iput-object v6, v7, Lbo;->b:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 379
    .line 380
    .line 381
    move-result-wide v8

    .line 382
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    iput-object v6, v7, Lbo;->g:Ljava/lang/Object;

    .line 387
    .line 388
    const/4 v15, 0x3

    .line 389
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 390
    .line 391
    .line 392
    move-result-wide v8

    .line 393
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iput-object v6, v7, Lbo;->h:Ljava/lang/Object;

    .line 398
    .line 399
    if-eqz v5, :cond_c

    .line 400
    .line 401
    new-instance v5, Ll01;

    .line 402
    .line 403
    const/4 v6, 0x4

    .line 404
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    if-nez v8, :cond_b

    .line 409
    .line 410
    sget-object v8, Lob3;->s:Lo01;

    .line 411
    .line 412
    :goto_7
    const/4 v9, 0x5

    .line 413
    goto :goto_8

    .line 414
    :cond_b
    new-instance v9, Lo01;

    .line 415
    .line 416
    invoke-direct {v9, v8}, Lo01;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    move-object v8, v9

    .line 420
    goto :goto_7

    .line 421
    :goto_8
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-direct {v5, v8, v6}, Ll01;-><init>(Lo01;[B)V

    .line 426
    .line 427
    .line 428
    iput-object v5, v7, Lbo;->f:Ljava/lang/Object;

    .line 429
    .line 430
    move-object/from16 v22, v0

    .line 431
    .line 432
    const/16 v21, 0x0

    .line 433
    .line 434
    :goto_9
    const/4 v0, 0x6

    .line 435
    goto/16 :goto_d

    .line 436
    .line 437
    :cond_c
    const/4 v9, 0x5

    .line 438
    new-instance v5, Ll01;

    .line 439
    .line 440
    const/4 v6, 0x4

    .line 441
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    if-nez v8, :cond_d

    .line 446
    .line 447
    sget-object v8, Lob3;->s:Lo01;

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_d
    new-instance v6, Lo01;

    .line 451
    .line 452
    invoke-direct {v6, v8}, Lo01;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    move-object v8, v6

    .line 456
    :goto_a
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 457
    .line 458
    .line 459
    move-result-object v17

    .line 460
    filled-new-array {v2}, [Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v19

    .line 464
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    filled-new-array {v6}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v21

    .line 472
    const/16 v23, 0x0

    .line 473
    .line 474
    const-string v24, "sequence_num"

    .line 475
    .line 476
    const-string v18, "event_payloads"

    .line 477
    .line 478
    const-string v20, "event_id = ?"

    .line 479
    .line 480
    const/16 v22, 0x0

    .line 481
    .line 482
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    :try_start_4
    new-instance v9, Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .line 490
    .line 491
    const/4 v10, 0x0

    .line 492
    :goto_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 493
    .line 494
    .line 495
    move-result v19

    .line 496
    if-eqz v19, :cond_e

    .line 497
    .line 498
    const/4 v12, 0x0

    .line 499
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 500
    .line 501
    .line 502
    move-result-object v15

    .line 503
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    array-length v12, v15

    .line 507
    add-int/2addr v10, v12

    .line 508
    const/4 v12, 0x1

    .line 509
    const/4 v15, 0x3

    .line 510
    goto :goto_b

    .line 511
    :cond_e
    new-array v10, v10, [B

    .line 512
    .line 513
    const/4 v12, 0x0

    .line 514
    const/4 v15, 0x0

    .line 515
    const/16 v21, 0x0

    .line 516
    .line 517
    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v11

    .line 521
    if-ge v12, v11, :cond_f

    .line 522
    .line 523
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v11

    .line 527
    check-cast v11, [B

    .line 528
    .line 529
    move-object/from16 v22, v0

    .line 530
    .line 531
    array-length v0, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 532
    move-object/from16 p1, v6

    .line 533
    .line 534
    const/4 v6, 0x0

    .line 535
    :try_start_5
    invoke-static {v11, v6, v10, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    .line 537
    .line 538
    array-length v0, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 539
    add-int/2addr v15, v0

    .line 540
    add-int/lit8 v12, v12, 0x1

    .line 541
    .line 542
    move-object/from16 v6, p1

    .line 543
    .line 544
    move-object/from16 v0, v22

    .line 545
    .line 546
    goto :goto_c

    .line 547
    :catchall_2
    move-exception v0

    .line 548
    goto :goto_e

    .line 549
    :cond_f
    move-object/from16 v22, v0

    .line 550
    .line 551
    move-object/from16 p1, v6

    .line 552
    .line 553
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 554
    .line 555
    .line 556
    invoke-direct {v5, v8, v10}, Ll01;-><init>(Lo01;[B)V

    .line 557
    .line 558
    .line 559
    iput-object v5, v7, Lbo;->f:Ljava/lang/Object;

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :goto_d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-nez v5, :cond_10

    .line 567
    .line 568
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    iput-object v5, v7, Lbo;->d:Ljava/lang/Object;

    .line 577
    .line 578
    :cond_10
    const/16 v5, 0x8

    .line 579
    .line 580
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    if-nez v6, :cond_11

    .line 585
    .line 586
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    iput-object v5, v7, Lbo;->e:Ljava/lang/Object;

    .line 595
    .line 596
    :cond_11
    const/16 v5, 0x9

    .line 597
    .line 598
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-nez v6, :cond_12

    .line 603
    .line 604
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    iput-object v5, v7, Lbo;->c:Ljava/lang/Object;

    .line 609
    .line 610
    :cond_12
    const/16 v5, 0xa

    .line 611
    .line 612
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    if-nez v6, :cond_13

    .line 617
    .line 618
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    iput-object v5, v7, Lbo;->j:Ljava/lang/Object;

    .line 623
    .line 624
    :cond_13
    const/16 v5, 0xb

    .line 625
    .line 626
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    if-nez v6, :cond_14

    .line 631
    .line 632
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    iput-object v5, v7, Lbo;->k:Ljava/lang/Object;

    .line 637
    .line 638
    :cond_14
    invoke-virtual {v7}, Lbo;->c()Lco;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    new-instance v6, Lro;

    .line 643
    .line 644
    invoke-direct {v6, v3, v4, v13, v5}, Lro;-><init>(JLhp;Lco;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-object/from16 v0, v22

    .line 651
    .line 652
    const/4 v10, 0x2

    .line 653
    const/4 v12, 0x1

    .line 654
    goto/16 :goto_5

    .line 655
    .line 656
    :catchall_3
    move-exception v0

    .line 657
    move-object/from16 p1, v6

    .line 658
    .line 659
    :goto_e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 660
    .line 661
    .line 662
    throw v0

    .line 663
    :cond_15
    const/16 v21, 0x0

    .line 664
    .line 665
    const-string v0, "Null transportName"

    .line 666
    .line 667
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_16
    const/16 v21, 0x0

    .line 672
    .line 673
    :goto_f
    return-object v21

    .line 674
    :pswitch_1
    const/16 v21, 0x0

    .line 675
    .line 676
    check-cast v0, Lob3;

    .line 677
    .line 678
    check-cast v14, Lco;

    .line 679
    .line 680
    iget-object v1, v14, Lco;->c:Ll01;

    .line 681
    .line 682
    iget-object v5, v14, Lco;->a:Ljava/lang/String;

    .line 683
    .line 684
    check-cast v13, Lhp;

    .line 685
    .line 686
    move-object/from16 v6, p1

    .line 687
    .line 688
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 689
    .line 690
    const/4 v8, 0x0

    .line 691
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 704
    .line 705
    .line 706
    move-result-wide v10

    .line 707
    invoke-virtual {v0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 716
    .line 717
    .line 718
    move-result-wide v3

    .line 719
    mul-long/2addr v3, v10

    .line 720
    iget-object v8, v0, Lob3;->q:Leo;

    .line 721
    .line 722
    iget-wide v10, v8, Leo;->a:J

    .line 723
    .line 724
    cmp-long v3, v3, v10

    .line 725
    .line 726
    if-ltz v3, :cond_17

    .line 727
    .line 728
    const-wide/16 v1, 0x1

    .line 729
    .line 730
    invoke-virtual {v0, v1, v2, v9, v5}, Lob3;->A(JLo72;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const-wide/16 v0, -0x1

    .line 734
    .line 735
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    goto/16 :goto_15

    .line 740
    .line 741
    :cond_17
    invoke-static {v6, v13}, Lob3;->j(Landroid/database/sqlite/SQLiteDatabase;Lhp;)Ljava/lang/Long;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    if-eqz v0, :cond_18

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 748
    .line 749
    .line 750
    move-result-wide v3

    .line 751
    goto :goto_10

    .line 752
    :cond_18
    new-instance v0, Landroid/content/ContentValues;

    .line 753
    .line 754
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 755
    .line 756
    .line 757
    const-string v3, "backend_name"

    .line 758
    .line 759
    iget-object v4, v13, Lhp;->a:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v13, Lhp;->c:Lry2;

    .line 765
    .line 766
    invoke-static {v3}, Lsy2;->a(Lry2;)I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    const-string v4, "priority"

    .line 775
    .line 776
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    .line 778
    .line 779
    const-string v3, "next_request_ms"

    .line 780
    .line 781
    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    .line 783
    .line 784
    iget-object v3, v13, Lhp;->b:[B

    .line 785
    .line 786
    if-eqz v3, :cond_19

    .line 787
    .line 788
    const-string v4, "extras"

    .line 789
    .line 790
    const/4 v12, 0x0

    .line 791
    invoke-static {v3, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    :cond_19
    const-string v3, "transport_contexts"

    .line 799
    .line 800
    move-object/from16 v4, v21

    .line 801
    .line 802
    invoke-virtual {v6, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 803
    .line 804
    .line 805
    move-result-wide v9

    .line 806
    move-wide v3, v9

    .line 807
    :goto_10
    iget v0, v8, Leo;->e:I

    .line 808
    .line 809
    iget-object v8, v1, Ll01;->b:[B

    .line 810
    .line 811
    array-length v9, v8

    .line 812
    if-gt v9, v0, :cond_1a

    .line 813
    .line 814
    const/4 v9, 0x1

    .line 815
    goto :goto_11

    .line 816
    :cond_1a
    const/4 v9, 0x0

    .line 817
    :goto_11
    new-instance v10, Landroid/content/ContentValues;

    .line 818
    .line 819
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 820
    .line 821
    .line 822
    const-string v11, "context_id"

    .line 823
    .line 824
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    .line 830
    .line 831
    const-string v3, "transport_name"

    .line 832
    .line 833
    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    iget-wide v3, v14, Lco;->d:J

    .line 837
    .line 838
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    const-string v4, "timestamp_ms"

    .line 843
    .line 844
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 845
    .line 846
    .line 847
    iget-wide v3, v14, Lco;->e:J

    .line 848
    .line 849
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    const-string v4, "uptime_ms"

    .line 854
    .line 855
    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    .line 857
    .line 858
    iget-object v1, v1, Ll01;->a:Lo01;

    .line 859
    .line 860
    iget-object v1, v1, Lo01;->a:Ljava/lang/String;

    .line 861
    .line 862
    const-string v3, "payload_encoding"

    .line 863
    .line 864
    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string v1, "code"

    .line 868
    .line 869
    iget-object v3, v14, Lco;->b:Ljava/lang/Integer;

    .line 870
    .line 871
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    .line 873
    .line 874
    const-string v1, "num_attempts"

    .line 875
    .line 876
    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    .line 878
    .line 879
    const-string v1, "inline"

    .line 880
    .line 881
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 886
    .line 887
    .line 888
    if-eqz v9, :cond_1b

    .line 889
    .line 890
    move-object v1, v8

    .line 891
    goto :goto_12

    .line 892
    :cond_1b
    const/4 v12, 0x0

    .line 893
    new-array v1, v12, [B

    .line 894
    .line 895
    :goto_12
    const-string v3, "payload"

    .line 896
    .line 897
    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 898
    .line 899
    .line 900
    const-string v1, "product_id"

    .line 901
    .line 902
    iget-object v3, v14, Lco;->g:Ljava/lang/Integer;

    .line 903
    .line 904
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    .line 906
    .line 907
    const-string v1, "pseudonymous_id"

    .line 908
    .line 909
    iget-object v3, v14, Lco;->h:Ljava/lang/String;

    .line 910
    .line 911
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    const-string v1, "experiment_ids_clear_blob"

    .line 915
    .line 916
    iget-object v3, v14, Lco;->i:[B

    .line 917
    .line 918
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 919
    .line 920
    .line 921
    const-string v1, "experiment_ids_encrypted_blob"

    .line 922
    .line 923
    iget-object v3, v14, Lco;->j:[B

    .line 924
    .line 925
    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 926
    .line 927
    .line 928
    const-string v1, "events"

    .line 929
    .line 930
    const/4 v4, 0x0

    .line 931
    invoke-virtual {v6, v1, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 932
    .line 933
    .line 934
    move-result-wide v10

    .line 935
    const-string v1, "event_id"

    .line 936
    .line 937
    if-nez v9, :cond_1c

    .line 938
    .line 939
    array-length v3, v8

    .line 940
    int-to-double v3, v3

    .line 941
    int-to-double v12, v0

    .line 942
    div-double/2addr v3, v12

    .line 943
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 944
    .line 945
    .line 946
    move-result-wide v3

    .line 947
    double-to-int v3, v3

    .line 948
    const/4 v12, 0x1

    .line 949
    :goto_13
    if-gt v12, v3, :cond_1c

    .line 950
    .line 951
    add-int/lit8 v4, v12, -0x1

    .line 952
    .line 953
    mul-int/2addr v4, v0

    .line 954
    mul-int v5, v12, v0

    .line 955
    .line 956
    array-length v7, v8

    .line 957
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    invoke-static {v8, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    new-instance v5, Landroid/content/ContentValues;

    .line 966
    .line 967
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 968
    .line 969
    .line 970
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 971
    .line 972
    .line 973
    move-result-object v7

    .line 974
    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    .line 976
    .line 977
    const-string v7, "sequence_num"

    .line 978
    .line 979
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 980
    .line 981
    .line 982
    move-result-object v9

    .line 983
    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 987
    .line 988
    .line 989
    const-string v4, "event_payloads"

    .line 990
    .line 991
    const/4 v7, 0x0

    .line 992
    invoke-virtual {v6, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 993
    .line 994
    .line 995
    add-int/lit8 v12, v12, 0x1

    .line 996
    .line 997
    goto :goto_13

    .line 998
    :cond_1c
    iget-object v0, v14, Lco;->f:Ljava/util/Map;

    .line 999
    .line 1000
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    if-eqz v2, :cond_1d

    .line 1017
    .line 1018
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    check-cast v2, Ljava/util/Map$Entry;

    .line 1023
    .line 1024
    new-instance v3, Landroid/content/ContentValues;

    .line 1025
    .line 1026
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v4

    .line 1033
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    check-cast v4, Ljava/lang/String;

    .line 1041
    .line 1042
    const-string v5, "name"

    .line 1043
    .line 1044
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    check-cast v2, Ljava/lang/String;

    .line 1052
    .line 1053
    const-string v4, "value"

    .line 1054
    .line 1055
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    const-string v2, "event_metadata"

    .line 1059
    .line 1060
    const/4 v4, 0x0

    .line 1061
    invoke-virtual {v6, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1062
    .line 1063
    .line 1064
    goto :goto_14

    .line 1065
    :cond_1d
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    :goto_15
    return-object v0

    .line 1070
    nop

    .line 1071
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lgd0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Laq0;

    .line 4
    .line 5
    iget-object v1, p0, Lgd0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lhp;

    .line 8
    .line 9
    iget-object p0, p0, Lgd0;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lco;

    .line 12
    .line 13
    iget-object v2, v0, Laq0;->d:Lob3;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Lhp;->c:Lry2;

    .line 19
    .line 20
    iget-object v4, p0, Lco;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, v1, Lhp;->a:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "SQLiteEventStore"

    .line 25
    .line 26
    invoke-static {v6}, Lqj0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x3

    .line 31
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v8, "Storing event with priority="

    .line 40
    .line 41
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", name="

    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " for destination "

    .line 56
    .line 57
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    new-instance v3, Lgd0;

    .line 71
    .line 72
    const/4 v4, 0x6

    .line 73
    invoke-direct {v3, v2, p0, v1, v4}, Lgd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lob3;->r(Lmb3;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Long;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p0, v0, Laq0;->a:Leh;

    .line 86
    .line 87
    const/4 v0, 0x1

    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, v1, v0, v2}, Leh;->F(Lhp;IZ)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method public d(Lb20;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lgd0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhi0;

    .line 4
    .line 5
    iget-object v1, p0, Lgd0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lti0;

    .line 8
    .line 9
    iget-object p0, p0, Lgd0;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ldf1;

    .line 12
    .line 13
    sget-object v2, Lmj1;->W:Lmj1;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Lhi0;->K(Lgi0;)Lfi0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ltu1;

    .line 20
    .line 21
    new-instance v3, Ly;

    .line 22
    .line 23
    const/4 v4, 0x5

    .line 24
    invoke-direct {v3, v4, v2}, Ly;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lb20;->c:Lj73;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    sget-object v4, Leu0;->n:Leu0;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Lb2;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Lp;

    .line 41
    .line 42
    const/16 v3, 0xf

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v2, p0, p1, v4, v3}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    invoke-static {v0, v4, v1, v2, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgd0;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lqd1;

    .line 4
    .line 5
    iget-object v1, p0, Lgd0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Low3;

    .line 8
    .line 9
    iget-object p0, p0, Lgd0;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkj0;

    .line 12
    .line 13
    check-cast p1, Lad0;

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v1}, Low3;->g()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lad0;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lqd1;->p:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lxh1;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lxh1;->o(Lad0;)Lxo;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, v0, Lqd1;->q:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    new-instance v1, Lba3;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, p1, v2}, Lba3;-><init>(Lkj0;Lxo;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lu61; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "FirebaseRemoteConfig"

    .line 47
    .line 48
    const-string v0, "Exception publishing RolloutsState to subscriber. Continuing to listen for changes."

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public then(Low3;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lgd0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lgd0;->q:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lgd0;->p:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lgd0;->o:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Ls61;

    .line 14
    .line 15
    check-cast v3, Low3;

    .line 16
    .line 17
    check-cast v2, Low3;

    .line 18
    .line 19
    invoke-virtual {v3}, Low3;->j()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v3}, Low3;->g()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v3}, Low3;->g()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lad0;

    .line 37
    .line 38
    invoke-virtual {v2}, Low3;->j()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Low3;->g()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lad0;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, p1, Lad0;->c:Ljava/util/Date;

    .line 53
    .line 54
    iget-object v0, v0, Lad0;->c:Ljava/util/Date;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Ls61;->d:Lyc0;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lyc0;->d(Lad0;)Lef5;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 77
    .line 78
    new-instance v1, Lr61;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lr61;-><init>(Ls61;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Lef5;->d(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :goto_2
    return-object p0

    .line 95
    :pswitch_0
    check-cast p0, Lpw3;

    .line 96
    .line 97
    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    check-cast v2, Lwu4;

    .line 100
    .line 101
    invoke-virtual {p1}, Low3;->j()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Low3;->g()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lpw3;->d(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lpw3;->c(Ljava/lang/Exception;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const/4 p0, 0x1

    .line 130
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_6

    .line 135
    .line 136
    iget-object p0, v2, Lwu4;->o:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lgt4;

    .line 139
    .line 140
    iget-object p0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Lef5;

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Lef5;->o(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_3
    invoke-static {v1}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :pswitch_1
    check-cast p0, Lhd0;

    .line 153
    .line 154
    check-cast v3, Low3;

    .line 155
    .line 156
    check-cast v2, Low3;

    .line 157
    .line 158
    invoke-virtual {v3}, Low3;->j()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_7

    .line 163
    .line 164
    new-instance p0, Lt61;

    .line 165
    .line 166
    const-string p1, "Firebase Installations failed to get installation auth token for config update listener connection."

    .line 167
    .line 168
    invoke-virtual {v3}, Low3;->f()Ljava/lang/Exception;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v0}, Lu61;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    goto :goto_5

    .line 180
    :cond_7
    invoke-virtual {v2}, Low3;->j()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_8

    .line 185
    .line 186
    new-instance p0, Lt61;

    .line 187
    .line 188
    const-string p1, "Firebase Installations failed to get installation ID for config update listener connection."

    .line 189
    .line 190
    invoke-virtual {v2}, Low3;->f()Ljava/lang/Exception;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {p0, p1, v0}, Lu61;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p0}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    goto :goto_5

    .line 202
    :cond_8
    :try_start_0
    new-instance p1, Ljava/net/URL;

    .line 203
    .line 204
    iget-object v0, p0, Lhd0;->n:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p0, v0}, Lhd0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .line 212
    .line 213
    move-object v1, p1

    .line 214
    goto :goto_4

    .line 215
    :catch_0
    :try_start_1
    const-string p1, "FirebaseRemoteConfig"

    .line 216
    .line 217
    const-string v0, "URL is malformed"

    .line 218
    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 227
    .line 228
    invoke-virtual {v3}, Low3;->g()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Llo;

    .line 233
    .line 234
    iget-object v0, v0, Llo;->a:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v2}, Low3;->g()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {p0, p1, v1, v0}, Lhd0;->i(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    goto :goto_5

    .line 250
    :catch_1
    move-exception p0

    .line 251
    new-instance p1, Lt61;

    .line 252
    .line 253
    const-string v0, "Failed to open HTTP stream connection"

    .line 254
    .line 255
    invoke-direct {p1, v0, p0}, Lu61;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lmt1;->s(Ljava/lang/Exception;)Lef5;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    :goto_5
    return-object p0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
