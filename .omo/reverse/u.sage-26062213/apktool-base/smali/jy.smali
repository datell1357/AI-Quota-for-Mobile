.class public final synthetic Ljy;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Ljy;->n:I

    .line 2
    .line 3
    iput-wide p1, p0, Ljy;->o:J

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
    .locals 84

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljy;->n:I

    .line 4
    .line 5
    iget-wide v3, v0, Ljy;->o:J

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p1

    .line 11
    .line 12
    check-cast v0, Ljb3;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-interface {v1, v0, v3, v4}, Lpb3;->h(IJ)V

    .line 25
    .line 26
    .line 27
    const-string v3, "id"

    .line 28
    .line 29
    invoke-static {v1, v3}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v4, "state"

    .line 34
    .line 35
    invoke-static {v1, v4}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "worker_class_name"

    .line 40
    .line 41
    invoke-static {v1, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "input_merger_class_name"

    .line 46
    .line 47
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "input"

    .line 52
    .line 53
    invoke-static {v1, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "output"

    .line 58
    .line 59
    invoke-static {v1, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const-string v9, "initial_delay"

    .line 64
    .line 65
    invoke-static {v1, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const-string v10, "interval_duration"

    .line 70
    .line 71
    invoke-static {v1, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const-string v11, "flex_duration"

    .line 76
    .line 77
    invoke-static {v1, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const-string v12, "run_attempt_count"

    .line 82
    .line 83
    invoke-static {v1, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const-string v13, "backoff_policy"

    .line 88
    .line 89
    invoke-static {v1, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "backoff_delay_duration"

    .line 94
    .line 95
    invoke-static {v1, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const-string v15, "last_enqueue_time"

    .line 100
    .line 101
    invoke-static {v1, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const-string v0, "minimum_retention_duration"

    .line 106
    .line 107
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const-string v2, "schedule_requested_at"

    .line 114
    .line 115
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    move/from16 p1, v2

    .line 120
    .line 121
    const-string v2, "run_in_foreground"

    .line 122
    .line 123
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move/from16 v17, v2

    .line 128
    .line 129
    const-string v2, "out_of_quota_policy"

    .line 130
    .line 131
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    move/from16 v18, v2

    .line 136
    .line 137
    const-string v2, "period_count"

    .line 138
    .line 139
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move/from16 v19, v2

    .line 144
    .line 145
    const-string v2, "generation"

    .line 146
    .line 147
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move/from16 v20, v2

    .line 152
    .line 153
    const-string v2, "next_schedule_time_override"

    .line 154
    .line 155
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    move/from16 v21, v2

    .line 160
    .line 161
    const-string v2, "next_schedule_time_override_generation"

    .line 162
    .line 163
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    move/from16 v22, v2

    .line 168
    .line 169
    const-string v2, "stop_reason"

    .line 170
    .line 171
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    move/from16 v23, v2

    .line 176
    .line 177
    const-string v2, "trace_tag"

    .line 178
    .line 179
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    move/from16 v24, v2

    .line 184
    .line 185
    const-string v2, "backoff_on_system_interruptions"

    .line 186
    .line 187
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    move/from16 v25, v2

    .line 192
    .line 193
    const-string v2, "required_network_type"

    .line 194
    .line 195
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    move/from16 v26, v2

    .line 200
    .line 201
    const-string v2, "required_network_request"

    .line 202
    .line 203
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    move/from16 v27, v2

    .line 208
    .line 209
    const-string v2, "requires_charging"

    .line 210
    .line 211
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    move/from16 v28, v2

    .line 216
    .line 217
    const-string v2, "requires_device_idle"

    .line 218
    .line 219
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    move/from16 v29, v2

    .line 224
    .line 225
    const-string v2, "requires_battery_not_low"

    .line 226
    .line 227
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    move/from16 v30, v2

    .line 232
    .line 233
    const-string v2, "requires_storage_not_low"

    .line 234
    .line 235
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    move/from16 v31, v2

    .line 240
    .line 241
    const-string v2, "trigger_content_update_delay"

    .line 242
    .line 243
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    move/from16 v32, v2

    .line 248
    .line 249
    const-string v2, "trigger_max_content_delay"

    .line 250
    .line 251
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    move/from16 v33, v2

    .line 256
    .line 257
    const-string v2, "content_uri_triggers"

    .line 258
    .line 259
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    move/from16 v34, v2

    .line 264
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    :goto_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 271
    .line 272
    .line 273
    move-result v35

    .line 274
    if-eqz v35, :cond_9

    .line 275
    .line 276
    invoke-interface {v1, v3}, Lpb3;->o(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v37

    .line 280
    move-object/from16 v70, v2

    .line 281
    .line 282
    move/from16 v35, v3

    .line 283
    .line 284
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    long-to-int v2, v2

    .line 289
    invoke-static {v2}, Lug4;->f(I)Lcg4;

    .line 290
    .line 291
    .line 292
    move-result-object v38

    .line 293
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v39

    .line 297
    invoke-interface {v1, v6}, Lpb3;->o(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v40

    .line 301
    invoke-interface {v1, v7}, Lpb3;->getBlob(I)[B

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    sget-object v3, Lzl0;->b:Lzl0;

    .line 306
    .line 307
    invoke-static {v2}, Lbi4;->s([B)Lzl0;

    .line 308
    .line 309
    .line 310
    move-result-object v41

    .line 311
    invoke-interface {v1, v8}, Lpb3;->getBlob(I)[B

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-static {v2}, Lbi4;->s([B)Lzl0;

    .line 316
    .line 317
    .line 318
    move-result-object v42

    .line 319
    invoke-interface {v1, v9}, Lpb3;->getLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v43

    .line 323
    invoke-interface {v1, v10}, Lpb3;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v45

    .line 327
    invoke-interface {v1, v11}, Lpb3;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v47

    .line 331
    invoke-interface {v1, v12}, Lpb3;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v2

    .line 335
    long-to-int v2, v2

    .line 336
    move/from16 v50, v2

    .line 337
    .line 338
    invoke-interface {v1, v13}, Lpb3;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    long-to-int v2, v2

    .line 343
    invoke-static {v2}, Lug4;->c(I)Ljq;

    .line 344
    .line 345
    .line 346
    move-result-object v51

    .line 347
    invoke-interface {v1, v14}, Lpb3;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v52

    .line 351
    invoke-interface {v1, v15}, Lpb3;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v54

    .line 355
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v56

    .line 359
    move/from16 v2, p1

    .line 360
    .line 361
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v58

    .line 365
    move/from16 p1, v4

    .line 366
    .line 367
    move/from16 v3, v17

    .line 368
    .line 369
    move/from16 v17, v5

    .line 370
    .line 371
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    long-to-int v4, v4

    .line 376
    if-eqz v4, :cond_0

    .line 377
    .line 378
    const/16 v60, 0x1

    .line 379
    .line 380
    :goto_1
    move/from16 v4, v18

    .line 381
    .line 382
    move/from16 v18, v6

    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_0
    const/16 v60, 0x0

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :goto_2
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    long-to-int v5, v5

    .line 393
    invoke-static {v5}, Lug4;->e(I)Ljr2;

    .line 394
    .line 395
    .line 396
    move-result-object v61

    .line 397
    move v6, v2

    .line 398
    move/from16 v5, v19

    .line 399
    .line 400
    move/from16 v19, v3

    .line 401
    .line 402
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 403
    .line 404
    .line 405
    move-result-wide v2

    .line 406
    long-to-int v2, v2

    .line 407
    move/from16 v71, v5

    .line 408
    .line 409
    move/from16 v3, v20

    .line 410
    .line 411
    move/from16 v20, v4

    .line 412
    .line 413
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 414
    .line 415
    .line 416
    move-result-wide v4

    .line 417
    long-to-int v4, v4

    .line 418
    move/from16 v5, v21

    .line 419
    .line 420
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 421
    .line 422
    .line 423
    move-result-wide v64

    .line 424
    move/from16 v21, v0

    .line 425
    .line 426
    move/from16 v62, v2

    .line 427
    .line 428
    move/from16 v0, v22

    .line 429
    .line 430
    move/from16 v22, v3

    .line 431
    .line 432
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v2

    .line 436
    long-to-int v2, v2

    .line 437
    move/from16 v63, v4

    .line 438
    .line 439
    move/from16 v3, v23

    .line 440
    .line 441
    move/from16 v23, v5

    .line 442
    .line 443
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 444
    .line 445
    .line 446
    move-result-wide v4

    .line 447
    long-to-int v4, v4

    .line 448
    move/from16 v5, v24

    .line 449
    .line 450
    invoke-interface {v1, v5}, Lpb3;->isNull(I)Z

    .line 451
    .line 452
    .line 453
    move-result v24

    .line 454
    if-eqz v24, :cond_1

    .line 455
    .line 456
    move-object/from16 v68, v16

    .line 457
    .line 458
    :goto_3
    move/from16 v24, v0

    .line 459
    .line 460
    move/from16 v0, v25

    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_1
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v24

    .line 467
    move-object/from16 v68, v24

    .line 468
    .line 469
    goto :goto_3

    .line 470
    :goto_4
    invoke-interface {v1, v0}, Lpb3;->isNull(I)Z

    .line 471
    .line 472
    .line 473
    move-result v25

    .line 474
    if-eqz v25, :cond_2

    .line 475
    .line 476
    move/from16 v66, v2

    .line 477
    .line 478
    move/from16 v25, v3

    .line 479
    .line 480
    move-object/from16 v2, v16

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_2
    move/from16 v66, v2

    .line 484
    .line 485
    move/from16 v25, v3

    .line 486
    .line 487
    invoke-interface {v1, v0}, Lpb3;->getLong(I)J

    .line 488
    .line 489
    .line 490
    move-result-wide v2

    .line 491
    long-to-int v2, v2

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    :goto_5
    if-eqz v2, :cond_4

    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_3

    .line 503
    .line 504
    const/4 v2, 0x1

    .line 505
    goto :goto_6

    .line 506
    :cond_3
    const/4 v2, 0x0

    .line 507
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    move-object/from16 v69, v2

    .line 512
    .line 513
    :goto_7
    move/from16 v67, v4

    .line 514
    .line 515
    move/from16 v2, v26

    .line 516
    .line 517
    goto :goto_8

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    move-object/from16 v32, v1

    .line 520
    .line 521
    goto/16 :goto_11

    .line 522
    .line 523
    :cond_4
    move-object/from16 v69, v16

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :goto_8
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    long-to-int v3, v3

    .line 531
    invoke-static {v3}, Lug4;->d(I)Lzl2;

    .line 532
    .line 533
    .line 534
    move-result-object v74

    .line 535
    move/from16 v3, v27

    .line 536
    .line 537
    invoke-interface {v1, v3}, Lpb3;->getBlob(I)[B

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-static {v4}, Lug4;->j([B)Ltl2;

    .line 542
    .line 543
    .line 544
    move-result-object v73

    .line 545
    move/from16 v26, v2

    .line 546
    .line 547
    move/from16 v27, v3

    .line 548
    .line 549
    move/from16 v4, v28

    .line 550
    .line 551
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 552
    .line 553
    .line 554
    move-result-wide v2

    .line 555
    long-to-int v2, v2

    .line 556
    if-eqz v2, :cond_5

    .line 557
    .line 558
    const/16 v75, 0x1

    .line 559
    .line 560
    :goto_9
    move/from16 v28, v4

    .line 561
    .line 562
    move/from16 v2, v29

    .line 563
    .line 564
    goto :goto_a

    .line 565
    :cond_5
    const/16 v75, 0x0

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :goto_a
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 569
    .line 570
    .line 571
    move-result-wide v3

    .line 572
    long-to-int v3, v3

    .line 573
    if-eqz v3, :cond_6

    .line 574
    .line 575
    const/16 v76, 0x1

    .line 576
    .line 577
    :goto_b
    move/from16 v29, v5

    .line 578
    .line 579
    move/from16 v3, v30

    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_6
    const/16 v76, 0x0

    .line 583
    .line 584
    goto :goto_b

    .line 585
    :goto_c
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 586
    .line 587
    .line 588
    move-result-wide v4

    .line 589
    long-to-int v4, v4

    .line 590
    if-eqz v4, :cond_7

    .line 591
    .line 592
    const/16 v77, 0x1

    .line 593
    .line 594
    :goto_d
    move v5, v2

    .line 595
    move/from16 v30, v3

    .line 596
    .line 597
    move/from16 v4, v31

    .line 598
    .line 599
    goto :goto_e

    .line 600
    :cond_7
    const/16 v77, 0x0

    .line 601
    .line 602
    goto :goto_d

    .line 603
    :goto_e
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 604
    .line 605
    .line 606
    move-result-wide v2

    .line 607
    long-to-int v2, v2

    .line 608
    if-eqz v2, :cond_8

    .line 609
    .line 610
    const/16 v78, 0x1

    .line 611
    .line 612
    :goto_f
    move/from16 v2, v32

    .line 613
    .line 614
    goto :goto_10

    .line 615
    :cond_8
    const/16 v78, 0x0

    .line 616
    .line 617
    goto :goto_f

    .line 618
    :goto_10
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 619
    .line 620
    .line 621
    move-result-wide v79

    .line 622
    move/from16 v3, v33

    .line 623
    .line 624
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 625
    .line 626
    .line 627
    move-result-wide v81

    .line 628
    move/from16 v31, v0

    .line 629
    .line 630
    move/from16 v0, v34

    .line 631
    .line 632
    invoke-interface {v1, v0}, Lpb3;->getBlob(I)[B

    .line 633
    .line 634
    .line 635
    move-result-object v32

    .line 636
    invoke-static/range {v32 .. v32}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 637
    .line 638
    .line 639
    move-result-object v83

    .line 640
    new-instance v49, Llf0;

    .line 641
    .line 642
    move-object/from16 v72, v49

    .line 643
    .line 644
    invoke-direct/range {v72 .. v83}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 645
    .line 646
    .line 647
    move-object/from16 v49, v72

    .line 648
    .line 649
    new-instance v36, Log4;

    .line 650
    .line 651
    invoke-direct/range {v36 .. v69}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .line 653
    .line 654
    move/from16 v34, v0

    .line 655
    .line 656
    move-object/from16 v0, v36

    .line 657
    .line 658
    move-object/from16 v32, v1

    .line 659
    .line 660
    move-object/from16 v1, v70

    .line 661
    .line 662
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 663
    .line 664
    .line 665
    move v0, v2

    .line 666
    move-object v2, v1

    .line 667
    move-object/from16 v1, v32

    .line 668
    .line 669
    move/from16 v32, v0

    .line 670
    .line 671
    move/from16 v33, v3

    .line 672
    .line 673
    move/from16 v0, v21

    .line 674
    .line 675
    move/from16 v21, v23

    .line 676
    .line 677
    move/from16 v23, v25

    .line 678
    .line 679
    move/from16 v25, v31

    .line 680
    .line 681
    move/from16 v3, v35

    .line 682
    .line 683
    move/from16 v31, v4

    .line 684
    .line 685
    move/from16 v4, p1

    .line 686
    .line 687
    move/from16 p1, v6

    .line 688
    .line 689
    move/from16 v6, v18

    .line 690
    .line 691
    move/from16 v18, v20

    .line 692
    .line 693
    move/from16 v20, v22

    .line 694
    .line 695
    move/from16 v22, v24

    .line 696
    .line 697
    move/from16 v24, v29

    .line 698
    .line 699
    move/from16 v29, v5

    .line 700
    .line 701
    move/from16 v5, v17

    .line 702
    .line 703
    move/from16 v17, v19

    .line 704
    .line 705
    move/from16 v19, v71

    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :catchall_1
    move-exception v0

    .line 710
    goto :goto_11

    .line 711
    :cond_9
    move-object/from16 v32, v1

    .line 712
    .line 713
    move-object v1, v2

    .line 714
    invoke-interface/range {v32 .. v32}, Ljava/lang/AutoCloseable;->close()V

    .line 715
    .line 716
    .line 717
    return-object v1

    .line 718
    :goto_11
    invoke-interface/range {v32 .. v32}, Ljava/lang/AutoCloseable;->close()V

    .line 719
    .line 720
    .line 721
    throw v0

    .line 722
    :pswitch_0
    const/16 v16, 0x0

    .line 723
    .line 724
    move-object/from16 v0, p1

    .line 725
    .line 726
    check-cast v0, Lhg2;

    .line 727
    .line 728
    sget-object v1, Lpj1;->b:Lrx2;

    .line 729
    .line 730
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-virtual {v0, v1, v2}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    return-object v16

    .line 738
    :pswitch_1
    move-object/from16 v0, p1

    .line 739
    .line 740
    check-cast v0, Lky;

    .line 741
    .line 742
    iget-object v1, v0, Lky;->b:Lpe1;

    .line 743
    .line 744
    if-nez v1, :cond_a

    .line 745
    .line 746
    goto :goto_13

    .line 747
    :cond_a
    iget-object v2, v0, Lky;->a:Lo20;

    .line 748
    .line 749
    if-eqz v2, :cond_b

    .line 750
    .line 751
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-interface {v1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 759
    goto :goto_12

    .line 760
    :catchall_2
    move-exception v0

    .line 761
    new-instance v1, Lf83;

    .line 762
    .line 763
    invoke-direct {v1, v0}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 764
    .line 765
    .line 766
    move-object v0, v1

    .line 767
    :goto_12
    invoke-virtual {v2, v0}, Lo20;->g(Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    :cond_b
    :goto_13
    sget-object v0, Lt64;->a:Lt64;

    .line 771
    .line 772
    return-object v0

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
