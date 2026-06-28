.class public final synthetic Lao0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lao0;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lao0;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 79

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lao0;->n:I

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    sget-object v4, Lt64;->a:Lt64;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object v0, v0, Lao0;->o:Ljava/lang/String;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Ljb3;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "DELETE FROM worktag WHERE work_spec_id=?"

    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_0
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_0
    move-object/from16 v1, p1

    .line 44
    .line 45
    check-cast v1, Ljb3;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 51
    .line 52
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :try_start_1
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :pswitch_1
    move-object/from16 v1, p1

    .line 89
    .line 90
    check-cast v1, Ljb3;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string v2, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 96
    .line 97
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :try_start_2
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    long-to-int v3, v3

    .line 124
    invoke-static {v3}, Lug4;->f(I)Lcg4;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v4, Lng4;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v2, v4, Lng4;->a:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v3, v4, Lng4;->b:Lcg4;

    .line 139
    .line 140
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_2
    move-exception v0

    .line 145
    goto :goto_3

    .line 146
    :cond_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :pswitch_2
    move-object/from16 v1, p1

    .line 155
    .line 156
    check-cast v1, Ljb3;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const-string v2, "DELETE FROM workspec WHERE id=?"

    .line 162
    .line 163
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :try_start_3
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 171
    .line 172
    .line 173
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 174
    .line 175
    .line 176
    return-object v4

    .line 177
    :catchall_3
    move-exception v0

    .line 178
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :pswitch_3
    move-object/from16 v1, p1

    .line 183
    .line 184
    check-cast v1, Ljb3;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    .line 190
    .line 191
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :try_start_4
    invoke-interface {v2, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v2}, Lpb3;->c0()Z

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lse0;->t(Ljb3;)I

    .line 202
    .line 203
    .line 204
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 205
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    return-object v0

    .line 213
    :catchall_4
    move-exception v0

    .line 214
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :pswitch_4
    move-object/from16 v1, p1

    .line 219
    .line 220
    check-cast v1, Ljb3;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const-string v2, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 226
    .line 227
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :try_start_5
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    :goto_4
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_2

    .line 244
    .line 245
    invoke-interface {v1, v5}, Lpb3;->getBlob(I)[B

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    sget-object v3, Lzl0;->b:Lzl0;

    .line 250
    .line 251
    invoke-static {v2}, Lbi4;->s([B)Lzl0;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catchall_5
    move-exception v0

    .line 260
    goto :goto_5

    .line 261
    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :pswitch_5
    move-object/from16 v1, p1

    .line 270
    .line 271
    check-cast v1, Ljb3;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    const-string v2, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    .line 277
    .line 278
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    :try_start_6
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 286
    .line 287
    .line 288
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 289
    .line 290
    .line 291
    return-object v4

    .line 292
    :catchall_6
    move-exception v0

    .line 293
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :pswitch_6
    move-object/from16 v1, p1

    .line 298
    .line 299
    check-cast v1, Ljb3;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    .line 305
    .line 306
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    :try_start_7
    invoke-interface {v2, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v2}, Lpb3;->c0()Z

    .line 314
    .line 315
    .line 316
    invoke-static {v1}, Lse0;->t(Ljb3;)I

    .line 317
    .line 318
    .line 319
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 320
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 321
    .line 322
    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    return-object v0

    .line 328
    :catchall_7
    move-exception v0

    .line 329
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :pswitch_7
    move-object/from16 v1, p1

    .line 334
    .line 335
    check-cast v1, Ljb3;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    .line 341
    .line 342
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    :try_start_8
    invoke-interface {v2, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v2}, Lpb3;->c0()Z

    .line 350
    .line 351
    .line 352
    invoke-static {v1}, Lse0;->t(Ljb3;)I

    .line 353
    .line 354
    .line 355
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 356
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 357
    .line 358
    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :catchall_8
    move-exception v0

    .line 365
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :pswitch_8
    move-object/from16 v1, p1

    .line 370
    .line 371
    check-cast v1, Ljb3;

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 377
    .line 378
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    :try_start_9
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 383
    .line 384
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    :goto_6
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_3

    .line 395
    .line 396
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :catchall_9
    move-exception v0

    .line 405
    goto :goto_7

    .line 406
    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 407
    .line 408
    .line 409
    return-object v0

    .line 410
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :pswitch_9
    move-object/from16 v1, p1

    .line 415
    .line 416
    check-cast v1, Ljb3;

    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    const-string v3, "SELECT state FROM workspec WHERE id=?"

    .line 422
    .line 423
    invoke-interface {v1, v3}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    :try_start_a
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_5

    .line 435
    .line 436
    invoke-interface {v1, v5}, Lpb3;->isNull(I)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_4

    .line 441
    .line 442
    const/4 v0, 0x0

    .line 443
    goto :goto_8

    .line 444
    :cond_4
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 445
    .line 446
    .line 447
    move-result-wide v3

    .line 448
    long-to-int v0, v3

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    :goto_8
    if-nez v0, :cond_6

    .line 454
    .line 455
    :cond_5
    const/4 v2, 0x0

    .line 456
    goto :goto_9

    .line 457
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-static {v0}, Lug4;->f(I)Lcg4;

    .line 462
    .line 463
    .line 464
    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 465
    goto :goto_9

    .line 466
    :catchall_a
    move-exception v0

    .line 467
    goto :goto_a

    .line 468
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 469
    .line 470
    .line 471
    return-object v2

    .line 472
    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :pswitch_a
    move-object/from16 v1, p1

    .line 477
    .line 478
    check-cast v1, Ljb3;

    .line 479
    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 484
    .line 485
    invoke-interface {v1, v3}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    :try_start_b
    invoke-interface {v1, v6, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v0, "id"

    .line 493
    .line 494
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    const-string v3, "state"

    .line 499
    .line 500
    invoke-static {v1, v3}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    const-string v4, "worker_class_name"

    .line 505
    .line 506
    invoke-static {v1, v4}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    const-string v7, "input_merger_class_name"

    .line 511
    .line 512
    invoke-static {v1, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v7

    .line 516
    const-string v8, "input"

    .line 517
    .line 518
    invoke-static {v1, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    const-string v9, "output"

    .line 523
    .line 524
    invoke-static {v1, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v9

    .line 528
    const-string v10, "initial_delay"

    .line 529
    .line 530
    invoke-static {v1, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    const-string v11, "interval_duration"

    .line 535
    .line 536
    invoke-static {v1, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    const-string v12, "flex_duration"

    .line 541
    .line 542
    invoke-static {v1, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    const-string v13, "run_attempt_count"

    .line 547
    .line 548
    invoke-static {v1, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v13

    .line 552
    const-string v14, "backoff_policy"

    .line 553
    .line 554
    invoke-static {v1, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    move-result v14

    .line 558
    const-string v15, "backoff_delay_duration"

    .line 559
    .line 560
    invoke-static {v1, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    move-result v15

    .line 564
    const-string v2, "last_enqueue_time"

    .line 565
    .line 566
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    const-string v5, "minimum_retention_duration"

    .line 571
    .line 572
    invoke-static {v1, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    const-string v6, "schedule_requested_at"

    .line 577
    .line 578
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    move/from16 p0, v6

    .line 583
    .line 584
    const-string v6, "run_in_foreground"

    .line 585
    .line 586
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    move/from16 p1, v6

    .line 591
    .line 592
    const-string v6, "out_of_quota_policy"

    .line 593
    .line 594
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    move/from16 v16, v6

    .line 599
    .line 600
    const-string v6, "period_count"

    .line 601
    .line 602
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    move/from16 v17, v6

    .line 607
    .line 608
    const-string v6, "generation"

    .line 609
    .line 610
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    move/from16 v18, v6

    .line 615
    .line 616
    const-string v6, "next_schedule_time_override"

    .line 617
    .line 618
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    move/from16 v19, v6

    .line 623
    .line 624
    const-string v6, "next_schedule_time_override_generation"

    .line 625
    .line 626
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    move/from16 v20, v6

    .line 631
    .line 632
    const-string v6, "stop_reason"

    .line 633
    .line 634
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    move/from16 v21, v6

    .line 639
    .line 640
    const-string v6, "trace_tag"

    .line 641
    .line 642
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    move/from16 v22, v6

    .line 647
    .line 648
    const-string v6, "backoff_on_system_interruptions"

    .line 649
    .line 650
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    move/from16 v23, v6

    .line 655
    .line 656
    const-string v6, "required_network_type"

    .line 657
    .line 658
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    move-result v6

    .line 662
    move/from16 v24, v6

    .line 663
    .line 664
    const-string v6, "required_network_request"

    .line 665
    .line 666
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    move-result v6

    .line 670
    move/from16 v25, v6

    .line 671
    .line 672
    const-string v6, "requires_charging"

    .line 673
    .line 674
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    move/from16 v26, v6

    .line 679
    .line 680
    const-string v6, "requires_device_idle"

    .line 681
    .line 682
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    move/from16 v27, v6

    .line 687
    .line 688
    const-string v6, "requires_battery_not_low"

    .line 689
    .line 690
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    move/from16 v28, v6

    .line 695
    .line 696
    const-string v6, "requires_storage_not_low"

    .line 697
    .line 698
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    move/from16 v29, v6

    .line 703
    .line 704
    const-string v6, "trigger_content_update_delay"

    .line 705
    .line 706
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v6

    .line 710
    move/from16 v30, v6

    .line 711
    .line 712
    const-string v6, "trigger_max_content_delay"

    .line 713
    .line 714
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    move/from16 v31, v6

    .line 719
    .line 720
    const-string v6, "content_uri_triggers"

    .line 721
    .line 722
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    move-result v6

    .line 726
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 727
    .line 728
    .line 729
    move-result v32

    .line 730
    if-eqz v32, :cond_10

    .line 731
    .line 732
    invoke-interface {v1, v0}, Lpb3;->o(I)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v34

    .line 736
    move v0, v5

    .line 737
    move/from16 v32, v6

    .line 738
    .line 739
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 740
    .line 741
    .line 742
    move-result-wide v5

    .line 743
    long-to-int v3, v5

    .line 744
    invoke-static {v3}, Lug4;->f(I)Lcg4;

    .line 745
    .line 746
    .line 747
    move-result-object v35

    .line 748
    invoke-interface {v1, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v36

    .line 752
    invoke-interface {v1, v7}, Lpb3;->o(I)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v37

    .line 756
    invoke-interface {v1, v8}, Lpb3;->getBlob(I)[B

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    sget-object v4, Lzl0;->b:Lzl0;

    .line 761
    .line 762
    invoke-static {v3}, Lbi4;->s([B)Lzl0;

    .line 763
    .line 764
    .line 765
    move-result-object v38

    .line 766
    invoke-interface {v1, v9}, Lpb3;->getBlob(I)[B

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    invoke-static {v3}, Lbi4;->s([B)Lzl0;

    .line 771
    .line 772
    .line 773
    move-result-object v39

    .line 774
    invoke-interface {v1, v10}, Lpb3;->getLong(I)J

    .line 775
    .line 776
    .line 777
    move-result-wide v40

    .line 778
    invoke-interface {v1, v11}, Lpb3;->getLong(I)J

    .line 779
    .line 780
    .line 781
    move-result-wide v42

    .line 782
    invoke-interface {v1, v12}, Lpb3;->getLong(I)J

    .line 783
    .line 784
    .line 785
    move-result-wide v44

    .line 786
    invoke-interface {v1, v13}, Lpb3;->getLong(I)J

    .line 787
    .line 788
    .line 789
    move-result-wide v3

    .line 790
    long-to-int v3, v3

    .line 791
    invoke-interface {v1, v14}, Lpb3;->getLong(I)J

    .line 792
    .line 793
    .line 794
    move-result-wide v4

    .line 795
    long-to-int v4, v4

    .line 796
    invoke-static {v4}, Lug4;->c(I)Ljq;

    .line 797
    .line 798
    .line 799
    move-result-object v48

    .line 800
    invoke-interface {v1, v15}, Lpb3;->getLong(I)J

    .line 801
    .line 802
    .line 803
    move-result-wide v49

    .line 804
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 805
    .line 806
    .line 807
    move-result-wide v51

    .line 808
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 809
    .line 810
    .line 811
    move-result-wide v53

    .line 812
    move/from16 v0, p0

    .line 813
    .line 814
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 815
    .line 816
    .line 817
    move-result-wide v55

    .line 818
    move/from16 v0, p1

    .line 819
    .line 820
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 821
    .line 822
    .line 823
    move-result-wide v4

    .line 824
    long-to-int v0, v4

    .line 825
    if-eqz v0, :cond_7

    .line 826
    .line 827
    const/16 v57, 0x1

    .line 828
    .line 829
    :goto_b
    move/from16 v0, v16

    .line 830
    .line 831
    goto :goto_c

    .line 832
    :cond_7
    const/16 v57, 0x0

    .line 833
    .line 834
    goto :goto_b

    .line 835
    :goto_c
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 836
    .line 837
    .line 838
    move-result-wide v4

    .line 839
    long-to-int v0, v4

    .line 840
    invoke-static {v0}, Lug4;->e(I)Ljr2;

    .line 841
    .line 842
    .line 843
    move-result-object v58

    .line 844
    move/from16 v0, v17

    .line 845
    .line 846
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 847
    .line 848
    .line 849
    move-result-wide v4

    .line 850
    long-to-int v0, v4

    .line 851
    move/from16 v2, v18

    .line 852
    .line 853
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 854
    .line 855
    .line 856
    move-result-wide v4

    .line 857
    long-to-int v2, v4

    .line 858
    move/from16 v4, v19

    .line 859
    .line 860
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 861
    .line 862
    .line 863
    move-result-wide v61

    .line 864
    move/from16 v4, v20

    .line 865
    .line 866
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 867
    .line 868
    .line 869
    move-result-wide v4

    .line 870
    long-to-int v4, v4

    .line 871
    move/from16 v5, v21

    .line 872
    .line 873
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 874
    .line 875
    .line 876
    move-result-wide v5

    .line 877
    long-to-int v5, v5

    .line 878
    move/from16 v6, v22

    .line 879
    .line 880
    invoke-interface {v1, v6}, Lpb3;->isNull(I)Z

    .line 881
    .line 882
    .line 883
    move-result v7

    .line 884
    if-eqz v7, :cond_8

    .line 885
    .line 886
    const/16 v65, 0x0

    .line 887
    .line 888
    :goto_d
    move/from16 v6, v23

    .line 889
    .line 890
    goto :goto_e

    .line 891
    :cond_8
    invoke-interface {v1, v6}, Lpb3;->o(I)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v6

    .line 895
    move-object/from16 v65, v6

    .line 896
    .line 897
    goto :goto_d

    .line 898
    :goto_e
    invoke-interface {v1, v6}, Lpb3;->isNull(I)Z

    .line 899
    .line 900
    .line 901
    move-result v7

    .line 902
    if-eqz v7, :cond_9

    .line 903
    .line 904
    const/4 v6, 0x0

    .line 905
    goto :goto_f

    .line 906
    :cond_9
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 907
    .line 908
    .line 909
    move-result-wide v6

    .line 910
    long-to-int v6, v6

    .line 911
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 912
    .line 913
    .line 914
    move-result-object v6

    .line 915
    :goto_f
    if-eqz v6, :cond_b

    .line 916
    .line 917
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 918
    .line 919
    .line 920
    move-result v6

    .line 921
    if-eqz v6, :cond_a

    .line 922
    .line 923
    const/4 v6, 0x1

    .line 924
    goto :goto_10

    .line 925
    :cond_a
    const/4 v6, 0x0

    .line 926
    :goto_10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 927
    .line 928
    .line 929
    move-result-object v6

    .line 930
    move-object/from16 v66, v6

    .line 931
    .line 932
    :goto_11
    move/from16 v6, v24

    .line 933
    .line 934
    goto :goto_12

    .line 935
    :catchall_b
    move-exception v0

    .line 936
    goto/16 :goto_1c

    .line 937
    .line 938
    :cond_b
    const/16 v66, 0x0

    .line 939
    .line 940
    goto :goto_11

    .line 941
    :goto_12
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 942
    .line 943
    .line 944
    move-result-wide v6

    .line 945
    long-to-int v6, v6

    .line 946
    invoke-static {v6}, Lug4;->d(I)Lzl2;

    .line 947
    .line 948
    .line 949
    move-result-object v69

    .line 950
    move/from16 v6, v25

    .line 951
    .line 952
    invoke-interface {v1, v6}, Lpb3;->getBlob(I)[B

    .line 953
    .line 954
    .line 955
    move-result-object v6

    .line 956
    invoke-static {v6}, Lug4;->j([B)Ltl2;

    .line 957
    .line 958
    .line 959
    move-result-object v68

    .line 960
    move/from16 v6, v26

    .line 961
    .line 962
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 963
    .line 964
    .line 965
    move-result-wide v6

    .line 966
    long-to-int v6, v6

    .line 967
    if-eqz v6, :cond_c

    .line 968
    .line 969
    const/16 v70, 0x1

    .line 970
    .line 971
    :goto_13
    move/from16 v6, v27

    .line 972
    .line 973
    goto :goto_14

    .line 974
    :cond_c
    const/16 v70, 0x0

    .line 975
    .line 976
    goto :goto_13

    .line 977
    :goto_14
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 978
    .line 979
    .line 980
    move-result-wide v6

    .line 981
    long-to-int v6, v6

    .line 982
    if-eqz v6, :cond_d

    .line 983
    .line 984
    const/16 v71, 0x1

    .line 985
    .line 986
    :goto_15
    move/from16 v6, v28

    .line 987
    .line 988
    goto :goto_16

    .line 989
    :cond_d
    const/16 v71, 0x0

    .line 990
    .line 991
    goto :goto_15

    .line 992
    :goto_16
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 993
    .line 994
    .line 995
    move-result-wide v6

    .line 996
    long-to-int v6, v6

    .line 997
    if-eqz v6, :cond_e

    .line 998
    .line 999
    const/16 v72, 0x1

    .line 1000
    .line 1001
    :goto_17
    move/from16 v6, v29

    .line 1002
    .line 1003
    goto :goto_18

    .line 1004
    :cond_e
    const/16 v72, 0x0

    .line 1005
    .line 1006
    goto :goto_17

    .line 1007
    :goto_18
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 1008
    .line 1009
    .line 1010
    move-result-wide v6

    .line 1011
    long-to-int v6, v6

    .line 1012
    if-eqz v6, :cond_f

    .line 1013
    .line 1014
    const/16 v73, 0x1

    .line 1015
    .line 1016
    :goto_19
    move/from16 v6, v30

    .line 1017
    .line 1018
    goto :goto_1a

    .line 1019
    :cond_f
    const/16 v73, 0x0

    .line 1020
    .line 1021
    goto :goto_19

    .line 1022
    :goto_1a
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v74

    .line 1026
    move/from16 v6, v31

    .line 1027
    .line 1028
    invoke-interface {v1, v6}, Lpb3;->getLong(I)J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v76

    .line 1032
    move/from16 v6, v32

    .line 1033
    .line 1034
    invoke-interface {v1, v6}, Lpb3;->getBlob(I)[B

    .line 1035
    .line 1036
    .line 1037
    move-result-object v6

    .line 1038
    invoke-static {v6}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v78

    .line 1042
    new-instance v46, Llf0;

    .line 1043
    .line 1044
    move-object/from16 v67, v46

    .line 1045
    .line 1046
    invoke-direct/range {v67 .. v78}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 1047
    .line 1048
    .line 1049
    move-object/from16 v46, v67

    .line 1050
    .line 1051
    new-instance v33, Log4;

    .line 1052
    .line 1053
    move/from16 v59, v0

    .line 1054
    .line 1055
    move/from16 v60, v2

    .line 1056
    .line 1057
    move/from16 v47, v3

    .line 1058
    .line 1059
    move/from16 v63, v4

    .line 1060
    .line 1061
    move/from16 v64, v5

    .line 1062
    .line 1063
    invoke-direct/range {v33 .. v66}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1064
    .line 1065
    .line 1066
    move-object/from16 v2, v33

    .line 1067
    .line 1068
    goto :goto_1b

    .line 1069
    :cond_10
    const/4 v2, 0x0

    .line 1070
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1071
    .line 1072
    .line 1073
    return-object v2

    .line 1074
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1075
    .line 1076
    .line 1077
    throw v0

    .line 1078
    :pswitch_b
    move-object/from16 v1, p1

    .line 1079
    .line 1080
    check-cast v1, Ljb3;

    .line 1081
    .line 1082
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1083
    .line 1084
    .line 1085
    const-string v2, "DELETE from WorkProgress where work_spec_id=?"

    .line 1086
    .line 1087
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    const/4 v2, 0x1

    .line 1092
    :try_start_c
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1096
    .line 1097
    .line 1098
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1099
    .line 1100
    .line 1101
    return-object v4

    .line 1102
    :catchall_c
    move-exception v0

    .line 1103
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1104
    .line 1105
    .line 1106
    throw v0

    .line 1107
    :pswitch_c
    move-object/from16 v1, p1

    .line 1108
    .line 1109
    check-cast v1, Ljb3;

    .line 1110
    .line 1111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1112
    .line 1113
    .line 1114
    const-string v2, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 1115
    .line 1116
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    const/4 v2, 0x1

    .line 1121
    :try_start_d
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    .line 1125
    .line 1126
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .line 1128
    .line 1129
    :goto_1d
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v2

    .line 1133
    if-eqz v2, :cond_11

    .line 1134
    .line 1135
    const/4 v2, 0x0

    .line 1136
    invoke-interface {v1, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1141
    .line 1142
    .line 1143
    goto :goto_1d

    .line 1144
    :catchall_d
    move-exception v0

    .line 1145
    goto :goto_1e

    .line 1146
    :cond_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1147
    .line 1148
    .line 1149
    return-object v0

    .line 1150
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1151
    .line 1152
    .line 1153
    throw v0

    .line 1154
    :pswitch_d
    move-object/from16 v1, p1

    .line 1155
    .line 1156
    check-cast v1, Ljb3;

    .line 1157
    .line 1158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    const-string v2, "DELETE FROM SystemIdInfo where work_spec_id=?"

    .line 1162
    .line 1163
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    const/4 v2, 0x1

    .line 1168
    :try_start_e
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1172
    .line 1173
    .line 1174
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1175
    .line 1176
    .line 1177
    return-object v4

    .line 1178
    :catchall_e
    move-exception v0

    .line 1179
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1180
    .line 1181
    .line 1182
    throw v0

    .line 1183
    :pswitch_e
    move-object/from16 v1, p1

    .line 1184
    .line 1185
    check-cast v1, Ljava/lang/String;

    .line 1186
    .line 1187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 1191
    .line 1192
    .line 1193
    move-result v2

    .line 1194
    if-eqz v2, :cond_13

    .line 1195
    .line 1196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1197
    .line 1198
    .line 1199
    move-result v2

    .line 1200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1201
    .line 1202
    .line 1203
    move-result v3

    .line 1204
    if-ge v2, v3, :cond_12

    .line 1205
    .line 1206
    goto :goto_1f

    .line 1207
    :cond_12
    move-object v0, v1

    .line 1208
    goto :goto_1f

    .line 1209
    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    :goto_1f
    return-object v0

    .line 1214
    :pswitch_f
    move-object/from16 v1, p1

    .line 1215
    .line 1216
    check-cast v1, Ljb3;

    .line 1217
    .line 1218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    .line 1222
    .line 1223
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    const/4 v2, 0x1

    .line 1228
    :try_start_f
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-eqz v0, :cond_14

    .line 1236
    .line 1237
    const/4 v2, 0x0

    .line 1238
    invoke-interface {v1, v2}, Lpb3;->isNull(I)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    if-eqz v0, :cond_15

    .line 1243
    .line 1244
    :cond_14
    const/4 v2, 0x0

    .line 1245
    goto :goto_20

    .line 1246
    :cond_15
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 1247
    .line 1248
    .line 1249
    move-result-wide v2

    .line 1250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1254
    goto :goto_20

    .line 1255
    :catchall_f
    move-exception v0

    .line 1256
    goto :goto_21

    .line 1257
    :goto_20
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1258
    .line 1259
    .line 1260
    return-object v2

    .line 1261
    :goto_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1262
    .line 1263
    .line 1264
    throw v0

    .line 1265
    :pswitch_10
    move-object/from16 v1, p1

    .line 1266
    .line 1267
    check-cast v1, Lkj2;

    .line 1268
    .line 1269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v1, v0}, Lkj2;->b(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v1, v3}, Lkj2;->a(I)V

    .line 1279
    .line 1280
    .line 1281
    const/4 v2, 0x1

    .line 1282
    iput-boolean v2, v1, Lkj2;->f:Z

    .line 1283
    .line 1284
    const/4 v5, 0x0

    .line 1285
    iput-boolean v5, v1, Lkj2;->g:Z

    .line 1286
    .line 1287
    iput-boolean v2, v1, Lkj2;->b:Z

    .line 1288
    .line 1289
    return-object v4

    .line 1290
    :pswitch_11
    move v2, v6

    .line 1291
    move-object/from16 v1, p1

    .line 1292
    .line 1293
    check-cast v1, Lkj2;

    .line 1294
    .line 1295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v1, v0}, Lkj2;->b(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v1, v3}, Lkj2;->a(I)V

    .line 1305
    .line 1306
    .line 1307
    iput-boolean v5, v1, Lkj2;->f:Z

    .line 1308
    .line 1309
    iput-boolean v2, v1, Lkj2;->g:Z

    .line 1310
    .line 1311
    iput-boolean v2, v1, Lkj2;->b:Z

    .line 1312
    .line 1313
    iput-boolean v5, v1, Lkj2;->c:Z

    .line 1314
    .line 1315
    return-object v4

    .line 1316
    :pswitch_12
    move v2, v6

    .line 1317
    move-object/from16 v1, p1

    .line 1318
    .line 1319
    check-cast v1, Lkj2;

    .line 1320
    .line 1321
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v1, v0}, Lkj2;->b(Ljava/lang/String;)V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v1, v3}, Lkj2;->a(I)V

    .line 1331
    .line 1332
    .line 1333
    iput-boolean v5, v1, Lkj2;->f:Z

    .line 1334
    .line 1335
    iput-boolean v2, v1, Lkj2;->g:Z

    .line 1336
    .line 1337
    iput-boolean v2, v1, Lkj2;->b:Z

    .line 1338
    .line 1339
    iput-boolean v5, v1, Lkj2;->c:Z

    .line 1340
    .line 1341
    return-object v4

    .line 1342
    :pswitch_13
    move v2, v6

    .line 1343
    move-object/from16 v1, p1

    .line 1344
    .line 1345
    check-cast v1, Lkj2;

    .line 1346
    .line 1347
    sget v6, Lu/sage/MainActivity;->C:I

    .line 1348
    .line 1349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v1, v0}, Lkj2;->b(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v1, v3}, Lkj2;->a(I)V

    .line 1359
    .line 1360
    .line 1361
    iput-boolean v5, v1, Lkj2;->f:Z

    .line 1362
    .line 1363
    iput-boolean v2, v1, Lkj2;->g:Z

    .line 1364
    .line 1365
    iput-boolean v2, v1, Lkj2;->b:Z

    .line 1366
    .line 1367
    iput-boolean v2, v1, Lkj2;->c:Z

    .line 1368
    .line 1369
    return-object v4

    .line 1370
    :pswitch_14
    move-object/from16 v1, p1

    .line 1371
    .line 1372
    check-cast v1, Lph3;

    .line 1373
    .line 1374
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 1375
    .line 1376
    sget-object v2, Llh3;->a:Loh3;

    .line 1377
    .line 1378
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    invoke-interface {v1, v2, v0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 1383
    .line 1384
    .line 1385
    const/4 v0, 0x5

    .line 1386
    invoke-static {v1, v0}, Lnh3;->c(Lph3;I)V

    .line 1387
    .line 1388
    .line 1389
    return-object v4

    .line 1390
    :pswitch_15
    move-object/from16 v1, p1

    .line 1391
    .line 1392
    check-cast v1, Ljb3;

    .line 1393
    .line 1394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    const-string v2, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1398
    .line 1399
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v1

    .line 1403
    const/4 v2, 0x1

    .line 1404
    :try_start_10
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    if-eqz v0, :cond_16

    .line 1412
    .line 1413
    const/4 v2, 0x0

    .line 1414
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 1415
    .line 1416
    .line 1417
    move-result-wide v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1418
    long-to-int v0, v3

    .line 1419
    if-eqz v0, :cond_16

    .line 1420
    .line 1421
    const/4 v5, 0x1

    .line 1422
    goto :goto_22

    .line 1423
    :catchall_10
    move-exception v0

    .line 1424
    goto :goto_23

    .line 1425
    :cond_16
    const/4 v5, 0x0

    .line 1426
    :goto_22
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1427
    .line 1428
    .line 1429
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    return-object v0

    .line 1434
    :goto_23
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1435
    .line 1436
    .line 1437
    throw v0

    .line 1438
    :pswitch_16
    move-object/from16 v1, p1

    .line 1439
    .line 1440
    check-cast v1, Ljb3;

    .line 1441
    .line 1442
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1443
    .line 1444
    .line 1445
    const-string v2, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 1446
    .line 1447
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    const/4 v2, 0x1

    .line 1452
    :try_start_11
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    .line 1456
    .line 1457
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1458
    .line 1459
    .line 1460
    :goto_24
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 1461
    .line 1462
    .line 1463
    move-result v2

    .line 1464
    if-eqz v2, :cond_17

    .line 1465
    .line 1466
    const/4 v2, 0x0

    .line 1467
    invoke-interface {v1, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1472
    .line 1473
    .line 1474
    goto :goto_24

    .line 1475
    :catchall_11
    move-exception v0

    .line 1476
    goto :goto_25

    .line 1477
    :cond_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1478
    .line 1479
    .line 1480
    return-object v0

    .line 1481
    :goto_25
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1482
    .line 1483
    .line 1484
    throw v0

    .line 1485
    :pswitch_17
    move-object/from16 v1, p1

    .line 1486
    .line 1487
    check-cast v1, Ljb3;

    .line 1488
    .line 1489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1490
    .line 1491
    .line 1492
    const-string v2, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 1493
    .line 1494
    invoke-interface {v1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    const/4 v2, 0x1

    .line 1499
    :try_start_12
    invoke-interface {v1, v2, v0}, Lpb3;->P(ILjava/lang/String;)V

    .line 1500
    .line 1501
    .line 1502
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    if-eqz v0, :cond_18

    .line 1507
    .line 1508
    const/4 v5, 0x0

    .line 1509
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 1510
    .line 1511
    .line 1512
    move-result-wide v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 1513
    long-to-int v0, v3

    .line 1514
    if-eqz v0, :cond_19

    .line 1515
    .line 1516
    move v5, v2

    .line 1517
    goto :goto_26

    .line 1518
    :catchall_12
    move-exception v0

    .line 1519
    goto :goto_27

    .line 1520
    :cond_18
    const/4 v5, 0x0

    .line 1521
    :cond_19
    :goto_26
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1522
    .line 1523
    .line 1524
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    return-object v0

    .line 1529
    :goto_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1530
    .line 1531
    .line 1532
    throw v0

    .line 1533
    :pswitch_18
    move-object/from16 v1, p1

    .line 1534
    .line 1535
    check-cast v1, Lph3;

    .line 1536
    .line 1537
    invoke-static {v1, v0}, Lnh3;->b(Lph3;Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    return-object v4

    .line 1541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
