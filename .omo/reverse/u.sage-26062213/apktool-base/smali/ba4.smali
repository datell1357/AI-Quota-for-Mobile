.class public final synthetic Lba4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lba4;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 84

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljb3;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide/16 v2, 0xc8

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Lpb3;->h(IJ)V

    .line 18
    .line 19
    .line 20
    const-string v2, "id"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "state"

    .line 27
    .line 28
    invoke-static {v1, v3}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "worker_class_name"

    .line 33
    .line 34
    invoke-static {v1, v4}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, "input_merger_class_name"

    .line 39
    .line 40
    invoke-static {v1, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "input"

    .line 45
    .line 46
    invoke-static {v1, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "output"

    .line 51
    .line 52
    invoke-static {v1, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "initial_delay"

    .line 57
    .line 58
    invoke-static {v1, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string v9, "interval_duration"

    .line 63
    .line 64
    invoke-static {v1, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v10, "flex_duration"

    .line 69
    .line 70
    invoke-static {v1, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-string v11, "run_attempt_count"

    .line 75
    .line 76
    invoke-static {v1, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11

    .line 80
    const-string v12, "backoff_policy"

    .line 81
    .line 82
    invoke-static {v1, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const-string v13, "backoff_delay_duration"

    .line 87
    .line 88
    invoke-static {v1, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    const-string v14, "last_enqueue_time"

    .line 93
    .line 94
    invoke-static {v1, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    const-string v15, "minimum_retention_duration"

    .line 99
    .line 100
    invoke-static {v1, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    const-string v0, "schedule_requested_at"

    .line 105
    .line 106
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    move/from16 p1, v0

    .line 111
    .line 112
    const-string v0, "run_in_foreground"

    .line 113
    .line 114
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    move/from16 v16, v0

    .line 119
    .line 120
    const-string v0, "out_of_quota_policy"

    .line 121
    .line 122
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    move/from16 v17, v0

    .line 127
    .line 128
    const-string v0, "period_count"

    .line 129
    .line 130
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    move/from16 v18, v0

    .line 135
    .line 136
    const-string v0, "generation"

    .line 137
    .line 138
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    move/from16 v19, v0

    .line 143
    .line 144
    const-string v0, "next_schedule_time_override"

    .line 145
    .line 146
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    move/from16 v20, v0

    .line 151
    .line 152
    const-string v0, "next_schedule_time_override_generation"

    .line 153
    .line 154
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    move/from16 v21, v0

    .line 159
    .line 160
    const-string v0, "stop_reason"

    .line 161
    .line 162
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    move/from16 v22, v0

    .line 167
    .line 168
    const-string v0, "trace_tag"

    .line 169
    .line 170
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    move/from16 v23, v0

    .line 175
    .line 176
    const-string v0, "backoff_on_system_interruptions"

    .line 177
    .line 178
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    move/from16 v24, v0

    .line 183
    .line 184
    const-string v0, "required_network_type"

    .line 185
    .line 186
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    move/from16 v25, v0

    .line 191
    .line 192
    const-string v0, "required_network_request"

    .line 193
    .line 194
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    move/from16 v26, v0

    .line 199
    .line 200
    const-string v0, "requires_charging"

    .line 201
    .line 202
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move/from16 v27, v0

    .line 207
    .line 208
    const-string v0, "requires_device_idle"

    .line 209
    .line 210
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    move/from16 v28, v0

    .line 215
    .line 216
    const-string v0, "requires_battery_not_low"

    .line 217
    .line 218
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    move/from16 v29, v0

    .line 223
    .line 224
    const-string v0, "requires_storage_not_low"

    .line 225
    .line 226
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    move/from16 v30, v0

    .line 231
    .line 232
    const-string v0, "trigger_content_update_delay"

    .line 233
    .line 234
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    move/from16 v31, v0

    .line 239
    .line 240
    const-string v0, "trigger_max_content_delay"

    .line 241
    .line 242
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    move/from16 v32, v0

    .line 247
    .line 248
    const-string v0, "content_uri_triggers"

    .line 249
    .line 250
    invoke-static {v1, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    move/from16 v33, v0

    .line 255
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    :goto_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 262
    .line 263
    .line 264
    move-result v34

    .line 265
    if-eqz v34, :cond_9

    .line 266
    .line 267
    invoke-interface {v1, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v36

    .line 271
    move/from16 v34, v14

    .line 272
    .line 273
    move/from16 v69, v15

    .line 274
    .line 275
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 276
    .line 277
    .line 278
    move-result-wide v14

    .line 279
    long-to-int v14, v14

    .line 280
    invoke-static {v14}, Lug4;->f(I)Lcg4;

    .line 281
    .line 282
    .line 283
    move-result-object v37

    .line 284
    invoke-interface {v1, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v38

    .line 288
    invoke-interface {v1, v5}, Lpb3;->o(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v39

    .line 292
    invoke-interface {v1, v6}, Lpb3;->getBlob(I)[B

    .line 293
    .line 294
    .line 295
    move-result-object v14

    .line 296
    sget-object v15, Lzl0;->b:Lzl0;

    .line 297
    .line 298
    invoke-static {v14}, Lbi4;->s([B)Lzl0;

    .line 299
    .line 300
    .line 301
    move-result-object v40

    .line 302
    invoke-interface {v1, v7}, Lpb3;->getBlob(I)[B

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    invoke-static {v14}, Lbi4;->s([B)Lzl0;

    .line 307
    .line 308
    .line 309
    move-result-object v41

    .line 310
    invoke-interface {v1, v8}, Lpb3;->getLong(I)J

    .line 311
    .line 312
    .line 313
    move-result-wide v42

    .line 314
    invoke-interface {v1, v9}, Lpb3;->getLong(I)J

    .line 315
    .line 316
    .line 317
    move-result-wide v44

    .line 318
    invoke-interface {v1, v10}, Lpb3;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v46

    .line 322
    invoke-interface {v1, v11}, Lpb3;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v14

    .line 326
    long-to-int v14, v14

    .line 327
    move v15, v2

    .line 328
    move/from16 v70, v3

    .line 329
    .line 330
    invoke-interface {v1, v12}, Lpb3;->getLong(I)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    long-to-int v2, v2

    .line 335
    invoke-static {v2}, Lug4;->c(I)Ljq;

    .line 336
    .line 337
    .line 338
    move-result-object v50

    .line 339
    invoke-interface {v1, v13}, Lpb3;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v51

    .line 343
    move/from16 v2, v34

    .line 344
    .line 345
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v53

    .line 349
    move/from16 v3, v69

    .line 350
    .line 351
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v55

    .line 355
    move/from16 v34, v2

    .line 356
    .line 357
    move/from16 v2, p1

    .line 358
    .line 359
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v57

    .line 363
    move/from16 p1, v2

    .line 364
    .line 365
    move/from16 v69, v3

    .line 366
    .line 367
    move/from16 v2, v16

    .line 368
    .line 369
    move/from16 v16, v4

    .line 370
    .line 371
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 372
    .line 373
    .line 374
    move-result-wide v3

    .line 375
    long-to-int v3, v3

    .line 376
    if-eqz v3, :cond_0

    .line 377
    .line 378
    const/16 v59, 0x1

    .line 379
    .line 380
    :goto_1
    move/from16 v3, v17

    .line 381
    .line 382
    move/from16 v17, v5

    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_0
    const/16 v59, 0x0

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :goto_2
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    long-to-int v4, v4

    .line 393
    invoke-static {v4}, Lug4;->e(I)Ljr2;

    .line 394
    .line 395
    .line 396
    move-result-object v60

    .line 397
    move v5, v2

    .line 398
    move/from16 v4, v18

    .line 399
    .line 400
    move/from16 v18, v3

    .line 401
    .line 402
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

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
    move/from16 v3, v19

    .line 410
    .line 411
    move/from16 v19, v4

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
    move/from16 v5, v20

    .line 419
    .line 420
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 421
    .line 422
    .line 423
    move-result-wide v63

    .line 424
    move/from16 v61, v2

    .line 425
    .line 426
    move/from16 v20, v3

    .line 427
    .line 428
    move/from16 v62, v4

    .line 429
    .line 430
    move/from16 v2, v21

    .line 431
    .line 432
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v3

    .line 436
    long-to-int v3, v3

    .line 437
    move/from16 v21, v2

    .line 438
    .line 439
    move/from16 v65, v3

    .line 440
    .line 441
    move/from16 v4, v22

    .line 442
    .line 443
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 444
    .line 445
    .line 446
    move-result-wide v2

    .line 447
    long-to-int v2, v2

    .line 448
    move/from16 v3, v23

    .line 449
    .line 450
    invoke-interface {v1, v3}, Lpb3;->isNull(I)Z

    .line 451
    .line 452
    .line 453
    move-result v22

    .line 454
    const/16 v23, 0x0

    .line 455
    .line 456
    if-eqz v22, :cond_1

    .line 457
    .line 458
    move-object/from16 v67, v23

    .line 459
    .line 460
    :goto_3
    move/from16 v66, v2

    .line 461
    .line 462
    move/from16 v2, v24

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_1
    invoke-interface {v1, v3}, Lpb3;->o(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v22

    .line 469
    move-object/from16 v67, v22

    .line 470
    .line 471
    goto :goto_3

    .line 472
    :goto_4
    invoke-interface {v1, v2}, Lpb3;->isNull(I)Z

    .line 473
    .line 474
    .line 475
    move-result v22

    .line 476
    if-eqz v22, :cond_2

    .line 477
    .line 478
    move/from16 v24, v3

    .line 479
    .line 480
    move/from16 v22, v4

    .line 481
    .line 482
    move-object/from16 v3, v23

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_2
    move/from16 v24, v3

    .line 486
    .line 487
    move/from16 v22, v4

    .line 488
    .line 489
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 490
    .line 491
    .line 492
    move-result-wide v3

    .line 493
    long-to-int v3, v3

    .line 494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    :goto_5
    if-eqz v3, :cond_4

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_3

    .line 505
    .line 506
    const/4 v3, 0x1

    .line 507
    goto :goto_6

    .line 508
    :cond_3
    const/4 v3, 0x0

    .line 509
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 510
    .line 511
    .line 512
    move-result-object v23

    .line 513
    :cond_4
    move-object/from16 v68, v23

    .line 514
    .line 515
    move/from16 v3, v25

    .line 516
    .line 517
    move/from16 v23, v5

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :catchall_0
    move-exception v0

    .line 521
    goto/16 :goto_10

    .line 522
    .line 523
    :goto_7
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 524
    .line 525
    .line 526
    move-result-wide v4

    .line 527
    long-to-int v4, v4

    .line 528
    invoke-static {v4}, Lug4;->d(I)Lzl2;

    .line 529
    .line 530
    .line 531
    move-result-object v74

    .line 532
    move/from16 v4, v26

    .line 533
    .line 534
    invoke-interface {v1, v4}, Lpb3;->getBlob(I)[B

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-static {v5}, Lug4;->j([B)Ltl2;

    .line 539
    .line 540
    .line 541
    move-result-object v73

    .line 542
    move/from16 v25, v2

    .line 543
    .line 544
    move/from16 v26, v3

    .line 545
    .line 546
    move/from16 v5, v27

    .line 547
    .line 548
    invoke-interface {v1, v5}, Lpb3;->getLong(I)J

    .line 549
    .line 550
    .line 551
    move-result-wide v2

    .line 552
    long-to-int v2, v2

    .line 553
    if-eqz v2, :cond_5

    .line 554
    .line 555
    const/16 v75, 0x1

    .line 556
    .line 557
    :goto_8
    move/from16 v27, v4

    .line 558
    .line 559
    move/from16 v2, v28

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_5
    const/16 v75, 0x0

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :goto_9
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 566
    .line 567
    .line 568
    move-result-wide v3

    .line 569
    long-to-int v3, v3

    .line 570
    if-eqz v3, :cond_6

    .line 571
    .line 572
    const/16 v76, 0x1

    .line 573
    .line 574
    :goto_a
    move/from16 v28, v5

    .line 575
    .line 576
    move/from16 v3, v29

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_6
    const/16 v76, 0x0

    .line 580
    .line 581
    goto :goto_a

    .line 582
    :goto_b
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 583
    .line 584
    .line 585
    move-result-wide v4

    .line 586
    long-to-int v4, v4

    .line 587
    if-eqz v4, :cond_7

    .line 588
    .line 589
    const/16 v77, 0x1

    .line 590
    .line 591
    :goto_c
    move v5, v2

    .line 592
    move/from16 v29, v3

    .line 593
    .line 594
    move/from16 v4, v30

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_7
    const/16 v77, 0x0

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :goto_d
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 601
    .line 602
    .line 603
    move-result-wide v2

    .line 604
    long-to-int v2, v2

    .line 605
    if-eqz v2, :cond_8

    .line 606
    .line 607
    const/16 v78, 0x1

    .line 608
    .line 609
    :goto_e
    move/from16 v2, v31

    .line 610
    .line 611
    goto :goto_f

    .line 612
    :cond_8
    const/16 v78, 0x0

    .line 613
    .line 614
    goto :goto_e

    .line 615
    :goto_f
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 616
    .line 617
    .line 618
    move-result-wide v79

    .line 619
    move/from16 v3, v32

    .line 620
    .line 621
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v81

    .line 625
    move/from16 v31, v2

    .line 626
    .line 627
    move/from16 v2, v33

    .line 628
    .line 629
    invoke-interface {v1, v2}, Lpb3;->getBlob(I)[B

    .line 630
    .line 631
    .line 632
    move-result-object v30

    .line 633
    invoke-static/range {v30 .. v30}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 634
    .line 635
    .line 636
    move-result-object v83

    .line 637
    new-instance v48, Llf0;

    .line 638
    .line 639
    move-object/from16 v72, v48

    .line 640
    .line 641
    invoke-direct/range {v72 .. v83}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 642
    .line 643
    .line 644
    move-object/from16 v48, v72

    .line 645
    .line 646
    new-instance v35, Log4;

    .line 647
    .line 648
    move/from16 v49, v14

    .line 649
    .line 650
    invoke-direct/range {v35 .. v68}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v14, v35

    .line 654
    .line 655
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .line 657
    .line 658
    move/from16 v14, v28

    .line 659
    .line 660
    move/from16 v28, v5

    .line 661
    .line 662
    move/from16 v5, v17

    .line 663
    .line 664
    move/from16 v17, v18

    .line 665
    .line 666
    move/from16 v18, v19

    .line 667
    .line 668
    move/from16 v19, v20

    .line 669
    .line 670
    move/from16 v20, v23

    .line 671
    .line 672
    move/from16 v23, v24

    .line 673
    .line 674
    move/from16 v24, v25

    .line 675
    .line 676
    move/from16 v25, v26

    .line 677
    .line 678
    move/from16 v26, v27

    .line 679
    .line 680
    move/from16 v27, v14

    .line 681
    .line 682
    move/from16 v33, v2

    .line 683
    .line 684
    move/from16 v32, v3

    .line 685
    .line 686
    move/from16 v30, v4

    .line 687
    .line 688
    move v2, v15

    .line 689
    move/from16 v4, v16

    .line 690
    .line 691
    move/from16 v14, v34

    .line 692
    .line 693
    move/from16 v15, v69

    .line 694
    .line 695
    move/from16 v3, v70

    .line 696
    .line 697
    move/from16 v16, v71

    .line 698
    .line 699
    goto/16 :goto_0

    .line 700
    .line 701
    :cond_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 702
    .line 703
    .line 704
    return-object v0

    .line 705
    :goto_10
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 706
    .line 707
    .line 708
    throw v0
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 86

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lba4;->n:I

    .line 4
    .line 5
    const-string v2, "out_of_quota_policy"

    .line 6
    .line 7
    const-string v3, "run_in_foreground"

    .line 8
    .line 9
    const-string v4, "schedule_requested_at"

    .line 10
    .line 11
    const-string v5, "minimum_retention_duration"

    .line 12
    .line 13
    const-string v6, "last_enqueue_time"

    .line 14
    .line 15
    const-string v7, "backoff_delay_duration"

    .line 16
    .line 17
    const-string v8, "backoff_policy"

    .line 18
    .line 19
    const-string v9, "run_attempt_count"

    .line 20
    .line 21
    const-string v10, "flex_duration"

    .line 22
    .line 23
    const-string v11, "interval_duration"

    .line 24
    .line 25
    const-string v12, "initial_delay"

    .line 26
    .line 27
    const-string v13, "output"

    .line 28
    .line 29
    const-string v14, "input"

    .line 30
    .line 31
    const-string v15, "input_merger_class_name"

    .line 32
    .line 33
    const-string v0, "worker_class_name"

    .line 34
    .line 35
    move/from16 v16, v1

    .line 36
    .line 37
    const-string v1, "state"

    .line 38
    .line 39
    move-object/from16 v17, v2

    .line 40
    .line 41
    const-string v2, "id"

    .line 42
    .line 43
    const/16 v18, 0x0

    .line 44
    .line 45
    const/16 v19, 0x1

    .line 46
    .line 47
    move-object/from16 v20, v3

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const-wide v21, 0xffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const/16 v23, 0x20

    .line 56
    .line 57
    packed-switch v16, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    move-object/from16 v0, p1

    .line 61
    .line 62
    check-cast v0, Lwh4;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    return-object v0

    .line 70
    :pswitch_0
    move-object/from16 v0, p1

    .line 71
    .line 72
    check-cast v0, Ljb3;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v1, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :try_start_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lse0;->t(Ljb3;)I

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lba4;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_2
    move-object/from16 v0, p1

    .line 109
    .line 110
    check-cast v0, Ljb3;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 116
    .line 117
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :try_start_1
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    long-to-int v0, v4

    .line 132
    if-eqz v0, :cond_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    move/from16 v19, v3

    .line 136
    .line 137
    :goto_0
    move/from16 v3, v19

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    goto :goto_2

    .line 142
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 143
    .line 144
    .line 145
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0

    .line 150
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :pswitch_3
    move-object/from16 v0, p1

    .line 155
    .line 156
    check-cast v0, Ljb3;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const-string v1, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    .line 162
    .line 163
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :try_start_2
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    invoke-interface {v1, v3}, Lpb3;->getLong(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    long-to-int v3, v2

    .line 178
    goto :goto_3

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    goto :goto_4

    .line 181
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :pswitch_4
    move-object/from16 v3, p1

    .line 194
    .line 195
    check-cast v3, Ljb3;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-object/from16 v24, v4

    .line 201
    .line 202
    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    .line 203
    .line 204
    invoke-interface {v3, v4}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    :try_start_3
    invoke-static {v3, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-static {v3, v1}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-static {v3, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    invoke-static {v3, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    invoke-static {v3, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-static {v3, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    invoke-static {v3, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v11

    .line 240
    invoke-static {v3, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-static {v3, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    invoke-static {v3, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    invoke-static {v3, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    invoke-static {v3, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-static {v3, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    move-object/from16 v15, v24

    .line 265
    .line 266
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    move/from16 p0, v15

    .line 271
    .line 272
    move-object/from16 v15, v20

    .line 273
    .line 274
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    move/from16 p1, v15

    .line 279
    .line 280
    move-object/from16 v15, v17

    .line 281
    .line 282
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    move/from16 v17, v15

    .line 287
    .line 288
    const-string v15, "period_count"

    .line 289
    .line 290
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v15

    .line 294
    move/from16 v20, v15

    .line 295
    .line 296
    const-string v15, "generation"

    .line 297
    .line 298
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v15

    .line 302
    move/from16 v21, v15

    .line 303
    .line 304
    const-string v15, "next_schedule_time_override"

    .line 305
    .line 306
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v15

    .line 310
    move/from16 v22, v15

    .line 311
    .line 312
    const-string v15, "next_schedule_time_override_generation"

    .line 313
    .line 314
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    move/from16 v23, v15

    .line 319
    .line 320
    const-string v15, "stop_reason"

    .line 321
    .line 322
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    move/from16 v24, v15

    .line 327
    .line 328
    const-string v15, "trace_tag"

    .line 329
    .line 330
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    move-result v15

    .line 334
    move/from16 v25, v15

    .line 335
    .line 336
    const-string v15, "backoff_on_system_interruptions"

    .line 337
    .line 338
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    move/from16 v26, v15

    .line 343
    .line 344
    const-string v15, "required_network_type"

    .line 345
    .line 346
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    move/from16 v27, v15

    .line 351
    .line 352
    const-string v15, "required_network_request"

    .line 353
    .line 354
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v15

    .line 358
    move/from16 v28, v15

    .line 359
    .line 360
    const-string v15, "requires_charging"

    .line 361
    .line 362
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v15

    .line 366
    move/from16 v29, v15

    .line 367
    .line 368
    const-string v15, "requires_device_idle"

    .line 369
    .line 370
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v15

    .line 374
    move/from16 v30, v15

    .line 375
    .line 376
    const-string v15, "requires_battery_not_low"

    .line 377
    .line 378
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v15

    .line 382
    move/from16 v31, v15

    .line 383
    .line 384
    const-string v15, "requires_storage_not_low"

    .line 385
    .line 386
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    move/from16 v32, v15

    .line 391
    .line 392
    const-string v15, "trigger_content_update_delay"

    .line 393
    .line 394
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v15

    .line 398
    move/from16 v33, v15

    .line 399
    .line 400
    const-string v15, "trigger_max_content_delay"

    .line 401
    .line 402
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    move-result v15

    .line 406
    move/from16 v34, v15

    .line 407
    .line 408
    const-string v15, "content_uri_triggers"

    .line 409
    .line 410
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v15

    .line 414
    move/from16 v35, v15

    .line 415
    .line 416
    new-instance v15, Ljava/util/ArrayList;

    .line 417
    .line 418
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .line 420
    .line 421
    :goto_5
    invoke-interface {v3}, Lpb3;->c0()Z

    .line 422
    .line 423
    .line 424
    move-result v36

    .line 425
    if-eqz v36, :cond_c

    .line 426
    .line 427
    invoke-interface {v3, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v38

    .line 431
    move/from16 v71, v5

    .line 432
    .line 433
    move/from16 v36, v6

    .line 434
    .line 435
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v5

    .line 439
    long-to-int v5, v5

    .line 440
    invoke-static {v5}, Lug4;->f(I)Lcg4;

    .line 441
    .line 442
    .line 443
    move-result-object v39

    .line 444
    invoke-interface {v3, v0}, Lpb3;->o(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v40

    .line 448
    invoke-interface {v3, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v41

    .line 452
    invoke-interface {v3, v14}, Lpb3;->getBlob(I)[B

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    sget-object v6, Lzl0;->b:Lzl0;

    .line 457
    .line 458
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 459
    .line 460
    .line 461
    move-result-object v42

    .line 462
    invoke-interface {v3, v13}, Lpb3;->getBlob(I)[B

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 467
    .line 468
    .line 469
    move-result-object v43

    .line 470
    invoke-interface {v3, v12}, Lpb3;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v44

    .line 474
    invoke-interface {v3, v11}, Lpb3;->getLong(I)J

    .line 475
    .line 476
    .line 477
    move-result-wide v46

    .line 478
    invoke-interface {v3, v10}, Lpb3;->getLong(I)J

    .line 479
    .line 480
    .line 481
    move-result-wide v48

    .line 482
    invoke-interface {v3, v9}, Lpb3;->getLong(I)J

    .line 483
    .line 484
    .line 485
    move-result-wide v5

    .line 486
    long-to-int v5, v5

    .line 487
    move/from16 v73, v0

    .line 488
    .line 489
    move/from16 v72, v1

    .line 490
    .line 491
    invoke-interface {v3, v8}, Lpb3;->getLong(I)J

    .line 492
    .line 493
    .line 494
    move-result-wide v0

    .line 495
    long-to-int v0, v0

    .line 496
    invoke-static {v0}, Lug4;->c(I)Ljq;

    .line 497
    .line 498
    .line 499
    move-result-object v52

    .line 500
    invoke-interface {v3, v7}, Lpb3;->getLong(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v53

    .line 504
    move/from16 v0, v36

    .line 505
    .line 506
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 507
    .line 508
    .line 509
    move-result-wide v55

    .line 510
    move/from16 v1, v71

    .line 511
    .line 512
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v57

    .line 516
    move/from16 v6, p0

    .line 517
    .line 518
    invoke-interface {v3, v6}, Lpb3;->getLong(I)J

    .line 519
    .line 520
    .line 521
    move-result-wide v59

    .line 522
    move/from16 v36, v0

    .line 523
    .line 524
    move/from16 v71, v1

    .line 525
    .line 526
    move/from16 p0, v2

    .line 527
    .line 528
    move/from16 v0, p1

    .line 529
    .line 530
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 531
    .line 532
    .line 533
    move-result-wide v1

    .line 534
    long-to-int v1, v1

    .line 535
    if-eqz v1, :cond_3

    .line 536
    .line 537
    move/from16 v61, v19

    .line 538
    .line 539
    :goto_6
    move/from16 p1, v4

    .line 540
    .line 541
    move/from16 v51, v5

    .line 542
    .line 543
    move/from16 v1, v17

    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_3
    const/16 v61, 0x0

    .line 547
    .line 548
    goto :goto_6

    .line 549
    :goto_7
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 550
    .line 551
    .line 552
    move-result-wide v4

    .line 553
    long-to-int v2, v4

    .line 554
    invoke-static {v2}, Lug4;->e(I)Ljr2;

    .line 555
    .line 556
    .line 557
    move-result-object v62

    .line 558
    move/from16 v2, v20

    .line 559
    .line 560
    invoke-interface {v3, v2}, Lpb3;->getLong(I)J

    .line 561
    .line 562
    .line 563
    move-result-wide v4

    .line 564
    long-to-int v4, v4

    .line 565
    move/from16 v17, v0

    .line 566
    .line 567
    move/from16 v20, v1

    .line 568
    .line 569
    move/from16 v5, v21

    .line 570
    .line 571
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 572
    .line 573
    .line 574
    move-result-wide v0

    .line 575
    long-to-int v0, v0

    .line 576
    move/from16 v1, v22

    .line 577
    .line 578
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 579
    .line 580
    .line 581
    move-result-wide v65

    .line 582
    move/from16 v64, v0

    .line 583
    .line 584
    move/from16 v21, v2

    .line 585
    .line 586
    move/from16 v0, v23

    .line 587
    .line 588
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 589
    .line 590
    .line 591
    move-result-wide v1

    .line 592
    long-to-int v1, v1

    .line 593
    move/from16 v23, v0

    .line 594
    .line 595
    move/from16 v67, v1

    .line 596
    .line 597
    move/from16 v2, v24

    .line 598
    .line 599
    invoke-interface {v3, v2}, Lpb3;->getLong(I)J

    .line 600
    .line 601
    .line 602
    move-result-wide v0

    .line 603
    long-to-int v0, v0

    .line 604
    move/from16 v1, v25

    .line 605
    .line 606
    invoke-interface {v3, v1}, Lpb3;->isNull(I)Z

    .line 607
    .line 608
    .line 609
    move-result v24

    .line 610
    if-eqz v24, :cond_4

    .line 611
    .line 612
    move-object/from16 v69, v18

    .line 613
    .line 614
    :goto_8
    move/from16 v68, v0

    .line 615
    .line 616
    move/from16 v0, v26

    .line 617
    .line 618
    goto :goto_9

    .line 619
    :cond_4
    invoke-interface {v3, v1}, Lpb3;->o(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v24

    .line 623
    move-object/from16 v69, v24

    .line 624
    .line 625
    goto :goto_8

    .line 626
    :goto_9
    invoke-interface {v3, v0}, Lpb3;->isNull(I)Z

    .line 627
    .line 628
    .line 629
    move-result v24

    .line 630
    if-eqz v24, :cond_5

    .line 631
    .line 632
    move/from16 v25, v1

    .line 633
    .line 634
    move/from16 v24, v2

    .line 635
    .line 636
    move-object/from16 v1, v18

    .line 637
    .line 638
    goto :goto_a

    .line 639
    :cond_5
    move/from16 v25, v1

    .line 640
    .line 641
    move/from16 v24, v2

    .line 642
    .line 643
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 644
    .line 645
    .line 646
    move-result-wide v1

    .line 647
    long-to-int v1, v1

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    :goto_a
    if-eqz v1, :cond_7

    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_6

    .line 659
    .line 660
    move/from16 v1, v19

    .line 661
    .line 662
    goto :goto_b

    .line 663
    :cond_6
    const/4 v1, 0x0

    .line 664
    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    move-object/from16 v70, v1

    .line 669
    .line 670
    :goto_c
    move/from16 v63, v4

    .line 671
    .line 672
    move v2, v5

    .line 673
    move/from16 v1, v27

    .line 674
    .line 675
    goto :goto_d

    .line 676
    :catchall_3
    move-exception v0

    .line 677
    goto/16 :goto_16

    .line 678
    .line 679
    :cond_7
    move-object/from16 v70, v18

    .line 680
    .line 681
    goto :goto_c

    .line 682
    :goto_d
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 683
    .line 684
    .line 685
    move-result-wide v4

    .line 686
    long-to-int v4, v4

    .line 687
    invoke-static {v4}, Lug4;->d(I)Lzl2;

    .line 688
    .line 689
    .line 690
    move-result-object v76

    .line 691
    move/from16 v4, v28

    .line 692
    .line 693
    invoke-interface {v3, v4}, Lpb3;->getBlob(I)[B

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    invoke-static {v5}, Lug4;->j([B)Ltl2;

    .line 698
    .line 699
    .line 700
    move-result-object v75

    .line 701
    move/from16 v26, v0

    .line 702
    .line 703
    move/from16 v27, v1

    .line 704
    .line 705
    move/from16 v5, v29

    .line 706
    .line 707
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 708
    .line 709
    .line 710
    move-result-wide v0

    .line 711
    long-to-int v0, v0

    .line 712
    if-eqz v0, :cond_8

    .line 713
    .line 714
    move/from16 v77, v19

    .line 715
    .line 716
    :goto_e
    move/from16 v28, v2

    .line 717
    .line 718
    move/from16 v0, v30

    .line 719
    .line 720
    goto :goto_f

    .line 721
    :cond_8
    const/16 v77, 0x0

    .line 722
    .line 723
    goto :goto_e

    .line 724
    :goto_f
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 725
    .line 726
    .line 727
    move-result-wide v1

    .line 728
    long-to-int v1, v1

    .line 729
    if-eqz v1, :cond_9

    .line 730
    .line 731
    move/from16 v78, v19

    .line 732
    .line 733
    :goto_10
    move v2, v4

    .line 734
    move/from16 v29, v5

    .line 735
    .line 736
    move/from16 v1, v31

    .line 737
    .line 738
    goto :goto_11

    .line 739
    :cond_9
    const/16 v78, 0x0

    .line 740
    .line 741
    goto :goto_10

    .line 742
    :goto_11
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 743
    .line 744
    .line 745
    move-result-wide v4

    .line 746
    long-to-int v4, v4

    .line 747
    if-eqz v4, :cond_a

    .line 748
    .line 749
    move/from16 v79, v19

    .line 750
    .line 751
    :goto_12
    move/from16 v30, v0

    .line 752
    .line 753
    move/from16 v31, v1

    .line 754
    .line 755
    move/from16 v4, v32

    .line 756
    .line 757
    goto :goto_13

    .line 758
    :cond_a
    const/16 v79, 0x0

    .line 759
    .line 760
    goto :goto_12

    .line 761
    :goto_13
    invoke-interface {v3, v4}, Lpb3;->getLong(I)J

    .line 762
    .line 763
    .line 764
    move-result-wide v0

    .line 765
    long-to-int v0, v0

    .line 766
    if-eqz v0, :cond_b

    .line 767
    .line 768
    move/from16 v80, v19

    .line 769
    .line 770
    :goto_14
    move/from16 v0, v33

    .line 771
    .line 772
    goto :goto_15

    .line 773
    :cond_b
    const/16 v80, 0x0

    .line 774
    .line 775
    goto :goto_14

    .line 776
    :goto_15
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 777
    .line 778
    .line 779
    move-result-wide v81

    .line 780
    move/from16 v1, v34

    .line 781
    .line 782
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 783
    .line 784
    .line 785
    move-result-wide v83

    .line 786
    move/from16 v5, v35

    .line 787
    .line 788
    invoke-interface {v3, v5}, Lpb3;->getBlob(I)[B

    .line 789
    .line 790
    .line 791
    move-result-object v32

    .line 792
    invoke-static/range {v32 .. v32}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 793
    .line 794
    .line 795
    move-result-object v85

    .line 796
    new-instance v50, Llf0;

    .line 797
    .line 798
    move-object/from16 v74, v50

    .line 799
    .line 800
    invoke-direct/range {v74 .. v85}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 801
    .line 802
    .line 803
    move-object/from16 v50, v74

    .line 804
    .line 805
    new-instance v37, Log4;

    .line 806
    .line 807
    invoke-direct/range {v37 .. v70}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 808
    .line 809
    .line 810
    move/from16 v33, v0

    .line 811
    .line 812
    move-object/from16 v0, v37

    .line 813
    .line 814
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 815
    .line 816
    .line 817
    move/from16 v34, v1

    .line 818
    .line 819
    move/from16 v32, v4

    .line 820
    .line 821
    move/from16 v35, v5

    .line 822
    .line 823
    move/from16 v5, v71

    .line 824
    .line 825
    move/from16 v1, v72

    .line 826
    .line 827
    move/from16 v0, v73

    .line 828
    .line 829
    move/from16 v4, p1

    .line 830
    .line 831
    move/from16 p1, v17

    .line 832
    .line 833
    move/from16 v17, v20

    .line 834
    .line 835
    move/from16 v20, v21

    .line 836
    .line 837
    move/from16 v21, v28

    .line 838
    .line 839
    move/from16 v28, v2

    .line 840
    .line 841
    move/from16 v2, p0

    .line 842
    .line 843
    move/from16 p0, v6

    .line 844
    .line 845
    move/from16 v6, v36

    .line 846
    .line 847
    goto/16 :goto_5

    .line 848
    .line 849
    :cond_c
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 850
    .line 851
    .line 852
    return-object v15

    .line 853
    :goto_16
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 854
    .line 855
    .line 856
    throw v0

    .line 857
    :pswitch_5
    move-object/from16 v3, p1

    .line 858
    .line 859
    check-cast v3, Ljb3;

    .line 860
    .line 861
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    move-object/from16 v24, v4

    .line 865
    .line 866
    const-string v4, "SELECT * FROM workspec WHERE state=1"

    .line 867
    .line 868
    invoke-interface {v3, v4}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    :try_start_4
    invoke-static {v3, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    invoke-static {v3, v1}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    invoke-static {v3, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    invoke-static {v3, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    move-result v14

    .line 892
    invoke-static {v3, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 893
    .line 894
    .line 895
    move-result v13

    .line 896
    invoke-static {v3, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 897
    .line 898
    .line 899
    move-result v12

    .line 900
    invoke-static {v3, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 901
    .line 902
    .line 903
    move-result v11

    .line 904
    invoke-static {v3, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 905
    .line 906
    .line 907
    move-result v10

    .line 908
    invoke-static {v3, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    move-result v9

    .line 912
    invoke-static {v3, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 913
    .line 914
    .line 915
    move-result v8

    .line 916
    invoke-static {v3, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 917
    .line 918
    .line 919
    move-result v7

    .line 920
    invoke-static {v3, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    move-result v6

    .line 924
    invoke-static {v3, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 925
    .line 926
    .line 927
    move-result v5

    .line 928
    move-object/from16 v15, v24

    .line 929
    .line 930
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 931
    .line 932
    .line 933
    move-result v15

    .line 934
    move/from16 p0, v15

    .line 935
    .line 936
    move-object/from16 v15, v20

    .line 937
    .line 938
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 939
    .line 940
    .line 941
    move-result v15

    .line 942
    move/from16 p1, v15

    .line 943
    .line 944
    move-object/from16 v15, v17

    .line 945
    .line 946
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 947
    .line 948
    .line 949
    move-result v15

    .line 950
    move/from16 v17, v15

    .line 951
    .line 952
    const-string v15, "period_count"

    .line 953
    .line 954
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    move-result v15

    .line 958
    move/from16 v20, v15

    .line 959
    .line 960
    const-string v15, "generation"

    .line 961
    .line 962
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    move-result v15

    .line 966
    move/from16 v21, v15

    .line 967
    .line 968
    const-string v15, "next_schedule_time_override"

    .line 969
    .line 970
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 971
    .line 972
    .line 973
    move-result v15

    .line 974
    move/from16 v22, v15

    .line 975
    .line 976
    const-string v15, "next_schedule_time_override_generation"

    .line 977
    .line 978
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 979
    .line 980
    .line 981
    move-result v15

    .line 982
    move/from16 v23, v15

    .line 983
    .line 984
    const-string v15, "stop_reason"

    .line 985
    .line 986
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 987
    .line 988
    .line 989
    move-result v15

    .line 990
    move/from16 v24, v15

    .line 991
    .line 992
    const-string v15, "trace_tag"

    .line 993
    .line 994
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 995
    .line 996
    .line 997
    move-result v15

    .line 998
    move/from16 v25, v15

    .line 999
    .line 1000
    const-string v15, "backoff_on_system_interruptions"

    .line 1001
    .line 1002
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1003
    .line 1004
    .line 1005
    move-result v15

    .line 1006
    move/from16 v26, v15

    .line 1007
    .line 1008
    const-string v15, "required_network_type"

    .line 1009
    .line 1010
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v15

    .line 1014
    move/from16 v27, v15

    .line 1015
    .line 1016
    const-string v15, "required_network_request"

    .line 1017
    .line 1018
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    move-result v15

    .line 1022
    move/from16 v28, v15

    .line 1023
    .line 1024
    const-string v15, "requires_charging"

    .line 1025
    .line 1026
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1027
    .line 1028
    .line 1029
    move-result v15

    .line 1030
    move/from16 v29, v15

    .line 1031
    .line 1032
    const-string v15, "requires_device_idle"

    .line 1033
    .line 1034
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1035
    .line 1036
    .line 1037
    move-result v15

    .line 1038
    move/from16 v30, v15

    .line 1039
    .line 1040
    const-string v15, "requires_battery_not_low"

    .line 1041
    .line 1042
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1043
    .line 1044
    .line 1045
    move-result v15

    .line 1046
    move/from16 v31, v15

    .line 1047
    .line 1048
    const-string v15, "requires_storage_not_low"

    .line 1049
    .line 1050
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    move-result v15

    .line 1054
    move/from16 v32, v15

    .line 1055
    .line 1056
    const-string v15, "trigger_content_update_delay"

    .line 1057
    .line 1058
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    move-result v15

    .line 1062
    move/from16 v33, v15

    .line 1063
    .line 1064
    const-string v15, "trigger_max_content_delay"

    .line 1065
    .line 1066
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    move-result v15

    .line 1070
    move/from16 v34, v15

    .line 1071
    .line 1072
    const-string v15, "content_uri_triggers"

    .line 1073
    .line 1074
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v15

    .line 1078
    move/from16 v35, v15

    .line 1079
    .line 1080
    new-instance v15, Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .line 1084
    .line 1085
    :goto_17
    invoke-interface {v3}, Lpb3;->c0()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v36

    .line 1089
    if-eqz v36, :cond_16

    .line 1090
    .line 1091
    invoke-interface {v3, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v38

    .line 1095
    move/from16 v71, v5

    .line 1096
    .line 1097
    move/from16 v36, v6

    .line 1098
    .line 1099
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v5

    .line 1103
    long-to-int v5, v5

    .line 1104
    invoke-static {v5}, Lug4;->f(I)Lcg4;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v39

    .line 1108
    invoke-interface {v3, v0}, Lpb3;->o(I)Ljava/lang/String;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v40

    .line 1112
    invoke-interface {v3, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v41

    .line 1116
    invoke-interface {v3, v14}, Lpb3;->getBlob(I)[B

    .line 1117
    .line 1118
    .line 1119
    move-result-object v5

    .line 1120
    sget-object v6, Lzl0;->b:Lzl0;

    .line 1121
    .line 1122
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v42

    .line 1126
    invoke-interface {v3, v13}, Lpb3;->getBlob(I)[B

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v43

    .line 1134
    invoke-interface {v3, v12}, Lpb3;->getLong(I)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v44

    .line 1138
    invoke-interface {v3, v11}, Lpb3;->getLong(I)J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v46

    .line 1142
    invoke-interface {v3, v10}, Lpb3;->getLong(I)J

    .line 1143
    .line 1144
    .line 1145
    move-result-wide v48

    .line 1146
    invoke-interface {v3, v9}, Lpb3;->getLong(I)J

    .line 1147
    .line 1148
    .line 1149
    move-result-wide v5

    .line 1150
    long-to-int v5, v5

    .line 1151
    move/from16 v73, v0

    .line 1152
    .line 1153
    move/from16 v72, v1

    .line 1154
    .line 1155
    invoke-interface {v3, v8}, Lpb3;->getLong(I)J

    .line 1156
    .line 1157
    .line 1158
    move-result-wide v0

    .line 1159
    long-to-int v0, v0

    .line 1160
    invoke-static {v0}, Lug4;->c(I)Ljq;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v52

    .line 1164
    invoke-interface {v3, v7}, Lpb3;->getLong(I)J

    .line 1165
    .line 1166
    .line 1167
    move-result-wide v53

    .line 1168
    move/from16 v0, v36

    .line 1169
    .line 1170
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1171
    .line 1172
    .line 1173
    move-result-wide v55

    .line 1174
    move/from16 v1, v71

    .line 1175
    .line 1176
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1177
    .line 1178
    .line 1179
    move-result-wide v57

    .line 1180
    move/from16 v6, p0

    .line 1181
    .line 1182
    invoke-interface {v3, v6}, Lpb3;->getLong(I)J

    .line 1183
    .line 1184
    .line 1185
    move-result-wide v59

    .line 1186
    move/from16 v36, v0

    .line 1187
    .line 1188
    move/from16 v71, v1

    .line 1189
    .line 1190
    move/from16 p0, v2

    .line 1191
    .line 1192
    move/from16 v0, p1

    .line 1193
    .line 1194
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1195
    .line 1196
    .line 1197
    move-result-wide v1

    .line 1198
    long-to-int v1, v1

    .line 1199
    if-eqz v1, :cond_d

    .line 1200
    .line 1201
    move/from16 v61, v19

    .line 1202
    .line 1203
    :goto_18
    move/from16 p1, v4

    .line 1204
    .line 1205
    move/from16 v51, v5

    .line 1206
    .line 1207
    move/from16 v1, v17

    .line 1208
    .line 1209
    goto :goto_19

    .line 1210
    :cond_d
    const/16 v61, 0x0

    .line 1211
    .line 1212
    goto :goto_18

    .line 1213
    :goto_19
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1214
    .line 1215
    .line 1216
    move-result-wide v4

    .line 1217
    long-to-int v2, v4

    .line 1218
    invoke-static {v2}, Lug4;->e(I)Ljr2;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v62

    .line 1222
    move/from16 v2, v20

    .line 1223
    .line 1224
    invoke-interface {v3, v2}, Lpb3;->getLong(I)J

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v4

    .line 1228
    long-to-int v4, v4

    .line 1229
    move/from16 v17, v0

    .line 1230
    .line 1231
    move/from16 v20, v1

    .line 1232
    .line 1233
    move/from16 v5, v21

    .line 1234
    .line 1235
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 1236
    .line 1237
    .line 1238
    move-result-wide v0

    .line 1239
    long-to-int v0, v0

    .line 1240
    move/from16 v1, v22

    .line 1241
    .line 1242
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1243
    .line 1244
    .line 1245
    move-result-wide v65

    .line 1246
    move/from16 v64, v0

    .line 1247
    .line 1248
    move/from16 v21, v2

    .line 1249
    .line 1250
    move/from16 v0, v23

    .line 1251
    .line 1252
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1253
    .line 1254
    .line 1255
    move-result-wide v1

    .line 1256
    long-to-int v1, v1

    .line 1257
    move/from16 v23, v0

    .line 1258
    .line 1259
    move/from16 v67, v1

    .line 1260
    .line 1261
    move/from16 v2, v24

    .line 1262
    .line 1263
    invoke-interface {v3, v2}, Lpb3;->getLong(I)J

    .line 1264
    .line 1265
    .line 1266
    move-result-wide v0

    .line 1267
    long-to-int v0, v0

    .line 1268
    move/from16 v1, v25

    .line 1269
    .line 1270
    invoke-interface {v3, v1}, Lpb3;->isNull(I)Z

    .line 1271
    .line 1272
    .line 1273
    move-result v24

    .line 1274
    if-eqz v24, :cond_e

    .line 1275
    .line 1276
    move-object/from16 v69, v18

    .line 1277
    .line 1278
    :goto_1a
    move/from16 v68, v0

    .line 1279
    .line 1280
    move/from16 v0, v26

    .line 1281
    .line 1282
    goto :goto_1b

    .line 1283
    :cond_e
    invoke-interface {v3, v1}, Lpb3;->o(I)Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v24

    .line 1287
    move-object/from16 v69, v24

    .line 1288
    .line 1289
    goto :goto_1a

    .line 1290
    :goto_1b
    invoke-interface {v3, v0}, Lpb3;->isNull(I)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v24

    .line 1294
    if-eqz v24, :cond_f

    .line 1295
    .line 1296
    move/from16 v25, v1

    .line 1297
    .line 1298
    move/from16 v24, v2

    .line 1299
    .line 1300
    move-object/from16 v1, v18

    .line 1301
    .line 1302
    goto :goto_1c

    .line 1303
    :cond_f
    move/from16 v25, v1

    .line 1304
    .line 1305
    move/from16 v24, v2

    .line 1306
    .line 1307
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v1

    .line 1311
    long-to-int v1, v1

    .line 1312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v1

    .line 1316
    :goto_1c
    if-eqz v1, :cond_11

    .line 1317
    .line 1318
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1319
    .line 1320
    .line 1321
    move-result v1

    .line 1322
    if-eqz v1, :cond_10

    .line 1323
    .line 1324
    move/from16 v1, v19

    .line 1325
    .line 1326
    goto :goto_1d

    .line 1327
    :cond_10
    const/4 v1, 0x0

    .line 1328
    :goto_1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    move-object/from16 v70, v1

    .line 1333
    .line 1334
    :goto_1e
    move/from16 v63, v4

    .line 1335
    .line 1336
    move v2, v5

    .line 1337
    move/from16 v1, v27

    .line 1338
    .line 1339
    goto :goto_1f

    .line 1340
    :catchall_4
    move-exception v0

    .line 1341
    goto/16 :goto_28

    .line 1342
    .line 1343
    :cond_11
    move-object/from16 v70, v18

    .line 1344
    .line 1345
    goto :goto_1e

    .line 1346
    :goto_1f
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1347
    .line 1348
    .line 1349
    move-result-wide v4

    .line 1350
    long-to-int v4, v4

    .line 1351
    invoke-static {v4}, Lug4;->d(I)Lzl2;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v76

    .line 1355
    move/from16 v4, v28

    .line 1356
    .line 1357
    invoke-interface {v3, v4}, Lpb3;->getBlob(I)[B

    .line 1358
    .line 1359
    .line 1360
    move-result-object v5

    .line 1361
    invoke-static {v5}, Lug4;->j([B)Ltl2;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v75

    .line 1365
    move/from16 v26, v0

    .line 1366
    .line 1367
    move/from16 v27, v1

    .line 1368
    .line 1369
    move/from16 v5, v29

    .line 1370
    .line 1371
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v0

    .line 1375
    long-to-int v0, v0

    .line 1376
    if-eqz v0, :cond_12

    .line 1377
    .line 1378
    move/from16 v77, v19

    .line 1379
    .line 1380
    :goto_20
    move/from16 v28, v2

    .line 1381
    .line 1382
    move/from16 v0, v30

    .line 1383
    .line 1384
    goto :goto_21

    .line 1385
    :cond_12
    const/16 v77, 0x0

    .line 1386
    .line 1387
    goto :goto_20

    .line 1388
    :goto_21
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1389
    .line 1390
    .line 1391
    move-result-wide v1

    .line 1392
    long-to-int v1, v1

    .line 1393
    if-eqz v1, :cond_13

    .line 1394
    .line 1395
    move/from16 v78, v19

    .line 1396
    .line 1397
    :goto_22
    move v2, v4

    .line 1398
    move/from16 v29, v5

    .line 1399
    .line 1400
    move/from16 v1, v31

    .line 1401
    .line 1402
    goto :goto_23

    .line 1403
    :cond_13
    const/16 v78, 0x0

    .line 1404
    .line 1405
    goto :goto_22

    .line 1406
    :goto_23
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1407
    .line 1408
    .line 1409
    move-result-wide v4

    .line 1410
    long-to-int v4, v4

    .line 1411
    if-eqz v4, :cond_14

    .line 1412
    .line 1413
    move/from16 v79, v19

    .line 1414
    .line 1415
    :goto_24
    move/from16 v30, v0

    .line 1416
    .line 1417
    move/from16 v31, v1

    .line 1418
    .line 1419
    move/from16 v4, v32

    .line 1420
    .line 1421
    goto :goto_25

    .line 1422
    :cond_14
    const/16 v79, 0x0

    .line 1423
    .line 1424
    goto :goto_24

    .line 1425
    :goto_25
    invoke-interface {v3, v4}, Lpb3;->getLong(I)J

    .line 1426
    .line 1427
    .line 1428
    move-result-wide v0

    .line 1429
    long-to-int v0, v0

    .line 1430
    if-eqz v0, :cond_15

    .line 1431
    .line 1432
    move/from16 v80, v19

    .line 1433
    .line 1434
    :goto_26
    move/from16 v0, v33

    .line 1435
    .line 1436
    goto :goto_27

    .line 1437
    :cond_15
    const/16 v80, 0x0

    .line 1438
    .line 1439
    goto :goto_26

    .line 1440
    :goto_27
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1441
    .line 1442
    .line 1443
    move-result-wide v81

    .line 1444
    move/from16 v1, v34

    .line 1445
    .line 1446
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1447
    .line 1448
    .line 1449
    move-result-wide v83

    .line 1450
    move/from16 v5, v35

    .line 1451
    .line 1452
    invoke-interface {v3, v5}, Lpb3;->getBlob(I)[B

    .line 1453
    .line 1454
    .line 1455
    move-result-object v32

    .line 1456
    invoke-static/range {v32 .. v32}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v85

    .line 1460
    new-instance v50, Llf0;

    .line 1461
    .line 1462
    move-object/from16 v74, v50

    .line 1463
    .line 1464
    invoke-direct/range {v74 .. v85}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 1465
    .line 1466
    .line 1467
    move-object/from16 v50, v74

    .line 1468
    .line 1469
    new-instance v37, Log4;

    .line 1470
    .line 1471
    invoke-direct/range {v37 .. v70}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 1472
    .line 1473
    .line 1474
    move/from16 v33, v0

    .line 1475
    .line 1476
    move-object/from16 v0, v37

    .line 1477
    .line 1478
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1479
    .line 1480
    .line 1481
    move/from16 v34, v1

    .line 1482
    .line 1483
    move/from16 v32, v4

    .line 1484
    .line 1485
    move/from16 v35, v5

    .line 1486
    .line 1487
    move/from16 v5, v71

    .line 1488
    .line 1489
    move/from16 v1, v72

    .line 1490
    .line 1491
    move/from16 v0, v73

    .line 1492
    .line 1493
    move/from16 v4, p1

    .line 1494
    .line 1495
    move/from16 p1, v17

    .line 1496
    .line 1497
    move/from16 v17, v20

    .line 1498
    .line 1499
    move/from16 v20, v21

    .line 1500
    .line 1501
    move/from16 v21, v28

    .line 1502
    .line 1503
    move/from16 v28, v2

    .line 1504
    .line 1505
    move/from16 v2, p0

    .line 1506
    .line 1507
    move/from16 p0, v6

    .line 1508
    .line 1509
    move/from16 v6, v36

    .line 1510
    .line 1511
    goto/16 :goto_17

    .line 1512
    .line 1513
    :cond_16
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 1514
    .line 1515
    .line 1516
    return-object v15

    .line 1517
    :goto_28
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 1518
    .line 1519
    .line 1520
    throw v0

    .line 1521
    :pswitch_6
    move-object/from16 v3, p1

    .line 1522
    .line 1523
    check-cast v3, Ljb3;

    .line 1524
    .line 1525
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    .line 1527
    .line 1528
    move-object/from16 v24, v4

    .line 1529
    .line 1530
    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1531
    .line 1532
    invoke-interface {v3, v4}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v3

    .line 1536
    :try_start_5
    invoke-static {v3, v2}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1537
    .line 1538
    .line 1539
    move-result v2

    .line 1540
    invoke-static {v3, v1}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1541
    .line 1542
    .line 1543
    move-result v1

    .line 1544
    invoke-static {v3, v0}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1545
    .line 1546
    .line 1547
    move-result v0

    .line 1548
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1549
    .line 1550
    .line 1551
    move-result v4

    .line 1552
    invoke-static {v3, v14}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1553
    .line 1554
    .line 1555
    move-result v14

    .line 1556
    invoke-static {v3, v13}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1557
    .line 1558
    .line 1559
    move-result v13

    .line 1560
    invoke-static {v3, v12}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1561
    .line 1562
    .line 1563
    move-result v12

    .line 1564
    invoke-static {v3, v11}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1565
    .line 1566
    .line 1567
    move-result v11

    .line 1568
    invoke-static {v3, v10}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1569
    .line 1570
    .line 1571
    move-result v10

    .line 1572
    invoke-static {v3, v9}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1573
    .line 1574
    .line 1575
    move-result v9

    .line 1576
    invoke-static {v3, v8}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1577
    .line 1578
    .line 1579
    move-result v8

    .line 1580
    invoke-static {v3, v7}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1581
    .line 1582
    .line 1583
    move-result v7

    .line 1584
    invoke-static {v3, v6}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1585
    .line 1586
    .line 1587
    move-result v6

    .line 1588
    invoke-static {v3, v5}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1589
    .line 1590
    .line 1591
    move-result v5

    .line 1592
    move-object/from16 v15, v24

    .line 1593
    .line 1594
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1595
    .line 1596
    .line 1597
    move-result v15

    .line 1598
    move/from16 p0, v15

    .line 1599
    .line 1600
    move-object/from16 v15, v20

    .line 1601
    .line 1602
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1603
    .line 1604
    .line 1605
    move-result v15

    .line 1606
    move/from16 p1, v15

    .line 1607
    .line 1608
    move-object/from16 v15, v17

    .line 1609
    .line 1610
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1611
    .line 1612
    .line 1613
    move-result v15

    .line 1614
    move/from16 v17, v15

    .line 1615
    .line 1616
    const-string v15, "period_count"

    .line 1617
    .line 1618
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1619
    .line 1620
    .line 1621
    move-result v15

    .line 1622
    move/from16 v20, v15

    .line 1623
    .line 1624
    const-string v15, "generation"

    .line 1625
    .line 1626
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1627
    .line 1628
    .line 1629
    move-result v15

    .line 1630
    move/from16 v21, v15

    .line 1631
    .line 1632
    const-string v15, "next_schedule_time_override"

    .line 1633
    .line 1634
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1635
    .line 1636
    .line 1637
    move-result v15

    .line 1638
    move/from16 v22, v15

    .line 1639
    .line 1640
    const-string v15, "next_schedule_time_override_generation"

    .line 1641
    .line 1642
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1643
    .line 1644
    .line 1645
    move-result v15

    .line 1646
    move/from16 v23, v15

    .line 1647
    .line 1648
    const-string v15, "stop_reason"

    .line 1649
    .line 1650
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1651
    .line 1652
    .line 1653
    move-result v15

    .line 1654
    move/from16 v24, v15

    .line 1655
    .line 1656
    const-string v15, "trace_tag"

    .line 1657
    .line 1658
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1659
    .line 1660
    .line 1661
    move-result v15

    .line 1662
    move/from16 v25, v15

    .line 1663
    .line 1664
    const-string v15, "backoff_on_system_interruptions"

    .line 1665
    .line 1666
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1667
    .line 1668
    .line 1669
    move-result v15

    .line 1670
    move/from16 v26, v15

    .line 1671
    .line 1672
    const-string v15, "required_network_type"

    .line 1673
    .line 1674
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1675
    .line 1676
    .line 1677
    move-result v15

    .line 1678
    move/from16 v27, v15

    .line 1679
    .line 1680
    const-string v15, "required_network_request"

    .line 1681
    .line 1682
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1683
    .line 1684
    .line 1685
    move-result v15

    .line 1686
    move/from16 v28, v15

    .line 1687
    .line 1688
    const-string v15, "requires_charging"

    .line 1689
    .line 1690
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1691
    .line 1692
    .line 1693
    move-result v15

    .line 1694
    move/from16 v29, v15

    .line 1695
    .line 1696
    const-string v15, "requires_device_idle"

    .line 1697
    .line 1698
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1699
    .line 1700
    .line 1701
    move-result v15

    .line 1702
    move/from16 v30, v15

    .line 1703
    .line 1704
    const-string v15, "requires_battery_not_low"

    .line 1705
    .line 1706
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1707
    .line 1708
    .line 1709
    move-result v15

    .line 1710
    move/from16 v31, v15

    .line 1711
    .line 1712
    const-string v15, "requires_storage_not_low"

    .line 1713
    .line 1714
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1715
    .line 1716
    .line 1717
    move-result v15

    .line 1718
    move/from16 v32, v15

    .line 1719
    .line 1720
    const-string v15, "trigger_content_update_delay"

    .line 1721
    .line 1722
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1723
    .line 1724
    .line 1725
    move-result v15

    .line 1726
    move/from16 v33, v15

    .line 1727
    .line 1728
    const-string v15, "trigger_max_content_delay"

    .line 1729
    .line 1730
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1731
    .line 1732
    .line 1733
    move-result v15

    .line 1734
    move/from16 v34, v15

    .line 1735
    .line 1736
    const-string v15, "content_uri_triggers"

    .line 1737
    .line 1738
    invoke-static {v3, v15}, Lqj0;->K(Lpb3;Ljava/lang/String;)I

    .line 1739
    .line 1740
    .line 1741
    move-result v15

    .line 1742
    move/from16 v35, v15

    .line 1743
    .line 1744
    new-instance v15, Ljava/util/ArrayList;

    .line 1745
    .line 1746
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    .line 1748
    .line 1749
    :goto_29
    invoke-interface {v3}, Lpb3;->c0()Z

    .line 1750
    .line 1751
    .line 1752
    move-result v36

    .line 1753
    if-eqz v36, :cond_20

    .line 1754
    .line 1755
    invoke-interface {v3, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v38

    .line 1759
    move/from16 v71, v5

    .line 1760
    .line 1761
    move/from16 v36, v6

    .line 1762
    .line 1763
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1764
    .line 1765
    .line 1766
    move-result-wide v5

    .line 1767
    long-to-int v5, v5

    .line 1768
    invoke-static {v5}, Lug4;->f(I)Lcg4;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v39

    .line 1772
    invoke-interface {v3, v0}, Lpb3;->o(I)Ljava/lang/String;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v40

    .line 1776
    invoke-interface {v3, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v41

    .line 1780
    invoke-interface {v3, v14}, Lpb3;->getBlob(I)[B

    .line 1781
    .line 1782
    .line 1783
    move-result-object v5

    .line 1784
    sget-object v6, Lzl0;->b:Lzl0;

    .line 1785
    .line 1786
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v42

    .line 1790
    invoke-interface {v3, v13}, Lpb3;->getBlob(I)[B

    .line 1791
    .line 1792
    .line 1793
    move-result-object v5

    .line 1794
    invoke-static {v5}, Lbi4;->s([B)Lzl0;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v43

    .line 1798
    invoke-interface {v3, v12}, Lpb3;->getLong(I)J

    .line 1799
    .line 1800
    .line 1801
    move-result-wide v44

    .line 1802
    invoke-interface {v3, v11}, Lpb3;->getLong(I)J

    .line 1803
    .line 1804
    .line 1805
    move-result-wide v46

    .line 1806
    invoke-interface {v3, v10}, Lpb3;->getLong(I)J

    .line 1807
    .line 1808
    .line 1809
    move-result-wide v48

    .line 1810
    invoke-interface {v3, v9}, Lpb3;->getLong(I)J

    .line 1811
    .line 1812
    .line 1813
    move-result-wide v5

    .line 1814
    long-to-int v5, v5

    .line 1815
    move/from16 v72, v0

    .line 1816
    .line 1817
    move v6, v1

    .line 1818
    invoke-interface {v3, v8}, Lpb3;->getLong(I)J

    .line 1819
    .line 1820
    .line 1821
    move-result-wide v0

    .line 1822
    long-to-int v0, v0

    .line 1823
    invoke-static {v0}, Lug4;->c(I)Ljq;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v52

    .line 1827
    invoke-interface {v3, v7}, Lpb3;->getLong(I)J

    .line 1828
    .line 1829
    .line 1830
    move-result-wide v53

    .line 1831
    move/from16 v0, v36

    .line 1832
    .line 1833
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1834
    .line 1835
    .line 1836
    move-result-wide v55

    .line 1837
    move/from16 v1, v71

    .line 1838
    .line 1839
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1840
    .line 1841
    .line 1842
    move-result-wide v57

    .line 1843
    move/from16 v36, v0

    .line 1844
    .line 1845
    move/from16 v0, p0

    .line 1846
    .line 1847
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1848
    .line 1849
    .line 1850
    move-result-wide v59

    .line 1851
    move/from16 p0, v0

    .line 1852
    .line 1853
    move/from16 v71, v1

    .line 1854
    .line 1855
    move/from16 v0, p1

    .line 1856
    .line 1857
    move/from16 p1, v2

    .line 1858
    .line 1859
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1860
    .line 1861
    .line 1862
    move-result-wide v1

    .line 1863
    long-to-int v1, v1

    .line 1864
    if-eqz v1, :cond_17

    .line 1865
    .line 1866
    move/from16 v61, v19

    .line 1867
    .line 1868
    :goto_2a
    move v2, v4

    .line 1869
    move/from16 v51, v5

    .line 1870
    .line 1871
    move/from16 v1, v17

    .line 1872
    .line 1873
    goto :goto_2b

    .line 1874
    :cond_17
    const/16 v61, 0x0

    .line 1875
    .line 1876
    goto :goto_2a

    .line 1877
    :goto_2b
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1878
    .line 1879
    .line 1880
    move-result-wide v4

    .line 1881
    long-to-int v4, v4

    .line 1882
    invoke-static {v4}, Lug4;->e(I)Ljr2;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v62

    .line 1886
    move v5, v0

    .line 1887
    move/from16 v17, v1

    .line 1888
    .line 1889
    move/from16 v4, v20

    .line 1890
    .line 1891
    invoke-interface {v3, v4}, Lpb3;->getLong(I)J

    .line 1892
    .line 1893
    .line 1894
    move-result-wide v0

    .line 1895
    long-to-int v0, v0

    .line 1896
    move/from16 v20, v4

    .line 1897
    .line 1898
    move/from16 v1, v21

    .line 1899
    .line 1900
    move/from16 v21, v5

    .line 1901
    .line 1902
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 1903
    .line 1904
    .line 1905
    move-result-wide v4

    .line 1906
    long-to-int v4, v4

    .line 1907
    move/from16 v5, v22

    .line 1908
    .line 1909
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 1910
    .line 1911
    .line 1912
    move-result-wide v65

    .line 1913
    move/from16 v63, v0

    .line 1914
    .line 1915
    move/from16 v22, v2

    .line 1916
    .line 1917
    move/from16 v0, v23

    .line 1918
    .line 1919
    move/from16 v23, v1

    .line 1920
    .line 1921
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1922
    .line 1923
    .line 1924
    move-result-wide v1

    .line 1925
    long-to-int v1, v1

    .line 1926
    move/from16 v67, v1

    .line 1927
    .line 1928
    move/from16 v2, v24

    .line 1929
    .line 1930
    move/from16 v24, v0

    .line 1931
    .line 1932
    invoke-interface {v3, v2}, Lpb3;->getLong(I)J

    .line 1933
    .line 1934
    .line 1935
    move-result-wide v0

    .line 1936
    long-to-int v0, v0

    .line 1937
    move/from16 v1, v25

    .line 1938
    .line 1939
    invoke-interface {v3, v1}, Lpb3;->isNull(I)Z

    .line 1940
    .line 1941
    .line 1942
    move-result v25

    .line 1943
    if-eqz v25, :cond_18

    .line 1944
    .line 1945
    move-object/from16 v69, v18

    .line 1946
    .line 1947
    :goto_2c
    move/from16 v68, v0

    .line 1948
    .line 1949
    move/from16 v0, v26

    .line 1950
    .line 1951
    goto :goto_2d

    .line 1952
    :cond_18
    invoke-interface {v3, v1}, Lpb3;->o(I)Ljava/lang/String;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v25

    .line 1956
    move-object/from16 v69, v25

    .line 1957
    .line 1958
    goto :goto_2c

    .line 1959
    :goto_2d
    invoke-interface {v3, v0}, Lpb3;->isNull(I)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v25

    .line 1963
    if-eqz v25, :cond_19

    .line 1964
    .line 1965
    move/from16 v26, v1

    .line 1966
    .line 1967
    move/from16 v25, v2

    .line 1968
    .line 1969
    move-object/from16 v1, v18

    .line 1970
    .line 1971
    goto :goto_2e

    .line 1972
    :cond_19
    move/from16 v26, v1

    .line 1973
    .line 1974
    move/from16 v25, v2

    .line 1975
    .line 1976
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 1977
    .line 1978
    .line 1979
    move-result-wide v1

    .line 1980
    long-to-int v1, v1

    .line 1981
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v1

    .line 1985
    :goto_2e
    if-eqz v1, :cond_1b

    .line 1986
    .line 1987
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1988
    .line 1989
    .line 1990
    move-result v1

    .line 1991
    if-eqz v1, :cond_1a

    .line 1992
    .line 1993
    move/from16 v1, v19

    .line 1994
    .line 1995
    goto :goto_2f

    .line 1996
    :cond_1a
    const/4 v1, 0x0

    .line 1997
    :goto_2f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v1

    .line 2001
    move-object/from16 v70, v1

    .line 2002
    .line 2003
    :goto_30
    move/from16 v64, v4

    .line 2004
    .line 2005
    move v2, v5

    .line 2006
    move/from16 v1, v27

    .line 2007
    .line 2008
    goto :goto_31

    .line 2009
    :catchall_5
    move-exception v0

    .line 2010
    goto/16 :goto_3a

    .line 2011
    .line 2012
    :cond_1b
    move-object/from16 v70, v18

    .line 2013
    .line 2014
    goto :goto_30

    .line 2015
    :goto_31
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 2016
    .line 2017
    .line 2018
    move-result-wide v4

    .line 2019
    long-to-int v4, v4

    .line 2020
    invoke-static {v4}, Lug4;->d(I)Lzl2;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v75

    .line 2024
    move/from16 v4, v28

    .line 2025
    .line 2026
    invoke-interface {v3, v4}, Lpb3;->getBlob(I)[B

    .line 2027
    .line 2028
    .line 2029
    move-result-object v5

    .line 2030
    invoke-static {v5}, Lug4;->j([B)Ltl2;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v74

    .line 2034
    move/from16 v27, v0

    .line 2035
    .line 2036
    move/from16 v28, v1

    .line 2037
    .line 2038
    move/from16 v5, v29

    .line 2039
    .line 2040
    invoke-interface {v3, v5}, Lpb3;->getLong(I)J

    .line 2041
    .line 2042
    .line 2043
    move-result-wide v0

    .line 2044
    long-to-int v0, v0

    .line 2045
    if-eqz v0, :cond_1c

    .line 2046
    .line 2047
    move/from16 v76, v19

    .line 2048
    .line 2049
    :goto_32
    move/from16 v29, v2

    .line 2050
    .line 2051
    move/from16 v0, v30

    .line 2052
    .line 2053
    goto :goto_33

    .line 2054
    :cond_1c
    const/16 v76, 0x0

    .line 2055
    .line 2056
    goto :goto_32

    .line 2057
    :goto_33
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 2058
    .line 2059
    .line 2060
    move-result-wide v1

    .line 2061
    long-to-int v1, v1

    .line 2062
    if-eqz v1, :cond_1d

    .line 2063
    .line 2064
    move/from16 v77, v19

    .line 2065
    .line 2066
    :goto_34
    move v2, v4

    .line 2067
    move/from16 v30, v5

    .line 2068
    .line 2069
    move/from16 v1, v31

    .line 2070
    .line 2071
    goto :goto_35

    .line 2072
    :cond_1d
    const/16 v77, 0x0

    .line 2073
    .line 2074
    goto :goto_34

    .line 2075
    :goto_35
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 2076
    .line 2077
    .line 2078
    move-result-wide v4

    .line 2079
    long-to-int v4, v4

    .line 2080
    if-eqz v4, :cond_1e

    .line 2081
    .line 2082
    move/from16 v78, v19

    .line 2083
    .line 2084
    :goto_36
    move v5, v0

    .line 2085
    move/from16 v31, v1

    .line 2086
    .line 2087
    move/from16 v4, v32

    .line 2088
    .line 2089
    goto :goto_37

    .line 2090
    :cond_1e
    const/16 v78, 0x0

    .line 2091
    .line 2092
    goto :goto_36

    .line 2093
    :goto_37
    invoke-interface {v3, v4}, Lpb3;->getLong(I)J

    .line 2094
    .line 2095
    .line 2096
    move-result-wide v0

    .line 2097
    long-to-int v0, v0

    .line 2098
    if-eqz v0, :cond_1f

    .line 2099
    .line 2100
    move/from16 v79, v19

    .line 2101
    .line 2102
    :goto_38
    move/from16 v0, v33

    .line 2103
    .line 2104
    goto :goto_39

    .line 2105
    :cond_1f
    const/16 v79, 0x0

    .line 2106
    .line 2107
    goto :goto_38

    .line 2108
    :goto_39
    invoke-interface {v3, v0}, Lpb3;->getLong(I)J

    .line 2109
    .line 2110
    .line 2111
    move-result-wide v80

    .line 2112
    move/from16 v1, v34

    .line 2113
    .line 2114
    invoke-interface {v3, v1}, Lpb3;->getLong(I)J

    .line 2115
    .line 2116
    .line 2117
    move-result-wide v82

    .line 2118
    move/from16 v33, v0

    .line 2119
    .line 2120
    move/from16 v0, v35

    .line 2121
    .line 2122
    invoke-interface {v3, v0}, Lpb3;->getBlob(I)[B

    .line 2123
    .line 2124
    .line 2125
    move-result-object v32

    .line 2126
    invoke-static/range {v32 .. v32}, Lug4;->a([B)Ljava/util/LinkedHashSet;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v84

    .line 2130
    new-instance v50, Llf0;

    .line 2131
    .line 2132
    move-object/from16 v73, v50

    .line 2133
    .line 2134
    invoke-direct/range {v73 .. v84}, Llf0;-><init>(Ltl2;Lzl2;ZZZZJJLjava/util/Set;)V

    .line 2135
    .line 2136
    .line 2137
    move-object/from16 v50, v73

    .line 2138
    .line 2139
    new-instance v37, Log4;

    .line 2140
    .line 2141
    invoke-direct/range {v37 .. v70}, Log4;-><init>(Ljava/lang/String;Lcg4;Ljava/lang/String;Ljava/lang/String;Lzl0;Lzl0;JJJLlf0;ILjq;JJJJZLjr2;IIJIILjava/lang/String;Ljava/lang/Boolean;)V

    .line 2142
    .line 2143
    .line 2144
    move/from16 v35, v0

    .line 2145
    .line 2146
    move-object/from16 v0, v37

    .line 2147
    .line 2148
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2149
    .line 2150
    .line 2151
    move v0, v2

    .line 2152
    move/from16 v2, p1

    .line 2153
    .line 2154
    move/from16 p1, v21

    .line 2155
    .line 2156
    move/from16 v21, v23

    .line 2157
    .line 2158
    move/from16 v23, v24

    .line 2159
    .line 2160
    move/from16 v24, v25

    .line 2161
    .line 2162
    move/from16 v25, v26

    .line 2163
    .line 2164
    move/from16 v26, v27

    .line 2165
    .line 2166
    move/from16 v27, v28

    .line 2167
    .line 2168
    move/from16 v28, v0

    .line 2169
    .line 2170
    move/from16 v34, v1

    .line 2171
    .line 2172
    move/from16 v32, v4

    .line 2173
    .line 2174
    move v1, v6

    .line 2175
    move/from16 v4, v22

    .line 2176
    .line 2177
    move/from16 v22, v29

    .line 2178
    .line 2179
    move/from16 v29, v30

    .line 2180
    .line 2181
    move/from16 v6, v36

    .line 2182
    .line 2183
    move/from16 v0, v72

    .line 2184
    .line 2185
    move/from16 v30, v5

    .line 2186
    .line 2187
    move/from16 v5, v71

    .line 2188
    .line 2189
    goto/16 :goto_29

    .line 2190
    .line 2191
    :cond_20
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 2192
    .line 2193
    .line 2194
    return-object v15

    .line 2195
    :goto_3a
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 2196
    .line 2197
    .line 2198
    throw v0

    .line 2199
    :pswitch_7
    move-object/from16 v0, p1

    .line 2200
    .line 2201
    check-cast v0, Ljb3;

    .line 2202
    .line 2203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2204
    .line 2205
    .line 2206
    const-string v1, "DELETE FROM WorkProgress"

    .line 2207
    .line 2208
    invoke-interface {v0, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v1

    .line 2212
    :try_start_6
    invoke-interface {v1}, Lpb3;->c0()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2213
    .line 2214
    .line 2215
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2216
    .line 2217
    .line 2218
    sget-object v0, Lt64;->a:Lt64;

    .line 2219
    .line 2220
    return-object v0

    .line 2221
    :catchall_6
    move-exception v0

    .line 2222
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2223
    .line 2224
    .line 2225
    throw v0

    .line 2226
    :pswitch_8
    move-object/from16 v0, p1

    .line 2227
    .line 2228
    check-cast v0, Lbf0;

    .line 2229
    .line 2230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2231
    .line 2232
    .line 2233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v0

    .line 2237
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v0

    .line 2241
    return-object v0

    .line 2242
    :pswitch_9
    move-object/from16 v0, p1

    .line 2243
    .line 2244
    check-cast v0, Lbf4;

    .line 2245
    .line 2246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2247
    .line 2248
    .line 2249
    return-object v0

    .line 2250
    :pswitch_a
    move-object/from16 v0, p1

    .line 2251
    .line 2252
    check-cast v0, Lxe;

    .line 2253
    .line 2254
    iget v0, v0, Lxe;->a:F

    .line 2255
    .line 2256
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v0

    .line 2260
    return-object v0

    .line 2261
    :pswitch_b
    move-object/from16 v0, p1

    .line 2262
    .line 2263
    check-cast v0, Laf;

    .line 2264
    .line 2265
    new-instance v1, Ll33;

    .line 2266
    .line 2267
    iget v2, v0, Laf;->a:F

    .line 2268
    .line 2269
    iget v3, v0, Laf;->b:F

    .line 2270
    .line 2271
    iget v4, v0, Laf;->c:F

    .line 2272
    .line 2273
    iget v0, v0, Laf;->d:F

    .line 2274
    .line 2275
    invoke-direct {v1, v2, v3, v4, v0}, Ll33;-><init>(FFFF)V

    .line 2276
    .line 2277
    .line 2278
    return-object v1

    .line 2279
    :pswitch_c
    move-object/from16 v0, p1

    .line 2280
    .line 2281
    check-cast v0, Ll33;

    .line 2282
    .line 2283
    new-instance v1, Laf;

    .line 2284
    .line 2285
    iget v2, v0, Ll33;->a:F

    .line 2286
    .line 2287
    iget v3, v0, Ll33;->b:F

    .line 2288
    .line 2289
    iget v4, v0, Ll33;->c:F

    .line 2290
    .line 2291
    iget v0, v0, Ll33;->d:F

    .line 2292
    .line 2293
    invoke-direct {v1, v2, v3, v4, v0}, Laf;-><init>(FFFF)V

    .line 2294
    .line 2295
    .line 2296
    return-object v1

    .line 2297
    :pswitch_d
    move-object/from16 v0, p1

    .line 2298
    .line 2299
    check-cast v0, Lye;

    .line 2300
    .line 2301
    iget v1, v0, Lye;->a:F

    .line 2302
    .line 2303
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 2304
    .line 2305
    .line 2306
    move-result v1

    .line 2307
    if-gez v1, :cond_21

    .line 2308
    .line 2309
    const/4 v1, 0x0

    .line 2310
    :cond_21
    iget v0, v0, Lye;->b:F

    .line 2311
    .line 2312
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 2313
    .line 2314
    .line 2315
    move-result v0

    .line 2316
    if-gez v0, :cond_22

    .line 2317
    .line 2318
    const/4 v3, 0x0

    .line 2319
    goto :goto_3b

    .line 2320
    :cond_22
    move v3, v0

    .line 2321
    :goto_3b
    int-to-long v0, v1

    .line 2322
    shl-long v0, v0, v23

    .line 2323
    .line 2324
    int-to-long v2, v3

    .line 2325
    and-long v2, v2, v21

    .line 2326
    .line 2327
    or-long/2addr v0, v2

    .line 2328
    new-instance v2, Lrs1;

    .line 2329
    .line 2330
    invoke-direct {v2, v0, v1}, Lrs1;-><init>(J)V

    .line 2331
    .line 2332
    .line 2333
    return-object v2

    .line 2334
    :pswitch_e
    move-object/from16 v0, p1

    .line 2335
    .line 2336
    check-cast v0, Lrs1;

    .line 2337
    .line 2338
    new-instance v1, Lye;

    .line 2339
    .line 2340
    iget-wide v2, v0, Lrs1;->a:J

    .line 2341
    .line 2342
    shr-long v4, v2, v23

    .line 2343
    .line 2344
    long-to-int v0, v4

    .line 2345
    int-to-float v0, v0

    .line 2346
    and-long v2, v2, v21

    .line 2347
    .line 2348
    long-to-int v2, v2

    .line 2349
    int-to-float v2, v2

    .line 2350
    invoke-direct {v1, v0, v2}, Lye;-><init>(FF)V

    .line 2351
    .line 2352
    .line 2353
    return-object v1

    .line 2354
    :pswitch_f
    move-object/from16 v0, p1

    .line 2355
    .line 2356
    check-cast v0, Lye;

    .line 2357
    .line 2358
    iget v1, v0, Lye;->a:F

    .line 2359
    .line 2360
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 2361
    .line 2362
    .line 2363
    move-result v1

    .line 2364
    iget v0, v0, Lye;->b:F

    .line 2365
    .line 2366
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 2367
    .line 2368
    .line 2369
    move-result v0

    .line 2370
    int-to-long v1, v1

    .line 2371
    shl-long v1, v1, v23

    .line 2372
    .line 2373
    int-to-long v3, v0

    .line 2374
    and-long v3, v3, v21

    .line 2375
    .line 2376
    or-long v0, v1, v3

    .line 2377
    .line 2378
    new-instance v2, Ljs1;

    .line 2379
    .line 2380
    invoke-direct {v2, v0, v1}, Ljs1;-><init>(J)V

    .line 2381
    .line 2382
    .line 2383
    return-object v2

    .line 2384
    :pswitch_10
    move-object/from16 v0, p1

    .line 2385
    .line 2386
    check-cast v0, Ljs1;

    .line 2387
    .line 2388
    new-instance v1, Lye;

    .line 2389
    .line 2390
    iget-wide v2, v0, Ljs1;->a:J

    .line 2391
    .line 2392
    shr-long v4, v2, v23

    .line 2393
    .line 2394
    long-to-int v0, v4

    .line 2395
    int-to-float v0, v0

    .line 2396
    and-long v2, v2, v21

    .line 2397
    .line 2398
    long-to-int v2, v2

    .line 2399
    int-to-float v2, v2

    .line 2400
    invoke-direct {v1, v0, v2}, Lye;-><init>(FF)V

    .line 2401
    .line 2402
    .line 2403
    return-object v1

    .line 2404
    :pswitch_11
    move-object/from16 v0, p1

    .line 2405
    .line 2406
    check-cast v0, Lye;

    .line 2407
    .line 2408
    iget v1, v0, Lye;->a:F

    .line 2409
    .line 2410
    iget v0, v0, Lye;->b:F

    .line 2411
    .line 2412
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2413
    .line 2414
    .line 2415
    move-result v1

    .line 2416
    int-to-long v1, v1

    .line 2417
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2418
    .line 2419
    .line 2420
    move-result v0

    .line 2421
    int-to-long v3, v0

    .line 2422
    shl-long v0, v1, v23

    .line 2423
    .line 2424
    and-long v2, v3, v21

    .line 2425
    .line 2426
    or-long/2addr v0, v2

    .line 2427
    new-instance v2, Lgo2;

    .line 2428
    .line 2429
    invoke-direct {v2, v0, v1}, Lgo2;-><init>(J)V

    .line 2430
    .line 2431
    .line 2432
    return-object v2

    .line 2433
    :pswitch_12
    move-object/from16 v0, p1

    .line 2434
    .line 2435
    check-cast v0, Lgo2;

    .line 2436
    .line 2437
    new-instance v1, Lye;

    .line 2438
    .line 2439
    iget-wide v2, v0, Lgo2;->a:J

    .line 2440
    .line 2441
    shr-long v2, v2, v23

    .line 2442
    .line 2443
    long-to-int v2, v2

    .line 2444
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2445
    .line 2446
    .line 2447
    move-result v2

    .line 2448
    iget-wide v3, v0, Lgo2;->a:J

    .line 2449
    .line 2450
    and-long v3, v3, v21

    .line 2451
    .line 2452
    long-to-int v0, v3

    .line 2453
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2454
    .line 2455
    .line 2456
    move-result v0

    .line 2457
    invoke-direct {v1, v2, v0}, Lye;-><init>(FF)V

    .line 2458
    .line 2459
    .line 2460
    return-object v1

    .line 2461
    :pswitch_13
    move-object/from16 v0, p1

    .line 2462
    .line 2463
    check-cast v0, Lye;

    .line 2464
    .line 2465
    iget v1, v0, Lye;->a:F

    .line 2466
    .line 2467
    iget v0, v0, Lye;->b:F

    .line 2468
    .line 2469
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2470
    .line 2471
    .line 2472
    move-result v1

    .line 2473
    int-to-long v1, v1

    .line 2474
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2475
    .line 2476
    .line 2477
    move-result v0

    .line 2478
    int-to-long v3, v0

    .line 2479
    shl-long v0, v1, v23

    .line 2480
    .line 2481
    and-long v2, v3, v21

    .line 2482
    .line 2483
    or-long/2addr v0, v2

    .line 2484
    new-instance v2, Lmn3;

    .line 2485
    .line 2486
    invoke-direct {v2, v0, v1}, Lmn3;-><init>(J)V

    .line 2487
    .line 2488
    .line 2489
    return-object v2

    .line 2490
    nop

    .line 2491
    :pswitch_data_0
    .packed-switch 0x0
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
