.class public final Lne3;
.super Lnq0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Lne3;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lne3;

    .line 2
    .line 3
    sget-object v1, Lk30;->v:Lso1;

    .line 4
    .line 5
    const v6, 0x4007ae14    # 2.12f

    .line 6
    .line 7
    .line 8
    const v7, 0x3f4ccccd    # 0.8f

    .line 9
    .line 10
    .line 11
    const v8, 0x418c28f6    # 17.52f

    .line 12
    .line 13
    .line 14
    const/high16 v9, -0x3ee00000    # -10.0f

    .line 15
    .line 16
    const v10, -0x3f70a3d7    # -4.48f

    .line 17
    .line 18
    .line 19
    const v11, 0x408f5c29    # 4.48f

    .line 20
    .line 21
    .line 22
    const/high16 v13, 0x40c00000    # 6.0f

    .line 23
    .line 24
    const/high16 v14, 0x40000000    # 2.0f

    .line 25
    .line 26
    const/high16 v15, 0x41200000    # 10.0f

    .line 27
    .line 28
    const/high16 v2, 0x41400000    # 12.0f

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v16, Lro1;

    .line 35
    .line 36
    const/16 v24, 0x0

    .line 37
    .line 38
    const/16 v26, 0x60

    .line 39
    .line 40
    const/16 v25, 0x0

    .line 41
    .line 42
    const/high16 v18, 0x41c00000    # 24.0f

    .line 43
    .line 44
    const/high16 v19, 0x41c00000    # 24.0f

    .line 45
    .line 46
    const/high16 v20, 0x41c00000    # 24.0f

    .line 47
    .line 48
    const/high16 v21, 0x41c00000    # 24.0f

    .line 49
    .line 50
    const-wide/16 v22, 0x0

    .line 51
    .line 52
    const-string v17, "Outlined.AccountCircle"

    .line 53
    .line 54
    invoke-direct/range {v16 .. v26}, Lro1;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v1, v16

    .line 58
    .line 59
    sget v16, Lea4;->a:I

    .line 60
    .line 61
    new-instance v3, Lsp3;

    .line 62
    .line 63
    sget-wide v4, Lt70;->b:J

    .line 64
    .line 65
    invoke-direct {v3, v4, v5}, Lsp3;-><init>(J)V

    .line 66
    .line 67
    .line 68
    new-instance v12, Lct2;

    .line 69
    .line 70
    invoke-direct {v12}, Lct2;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v2, v14}, Lct2;->h(FF)V

    .line 74
    .line 75
    .line 76
    const/high16 v24, 0x40000000    # 2.0f

    .line 77
    .line 78
    const/high16 v25, 0x41400000    # 12.0f

    .line 79
    .line 80
    const v20, 0x40cf5c29    # 6.48f

    .line 81
    .line 82
    .line 83
    const/high16 v21, 0x40000000    # 2.0f

    .line 84
    .line 85
    const/high16 v22, 0x40000000    # 2.0f

    .line 86
    .line 87
    const v23, 0x40cf5c29    # 6.48f

    .line 88
    .line 89
    .line 90
    move-object/from16 v19, v12

    .line 91
    .line 92
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v11, v15, v15, v15}, Lct2;->j(FFFF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v15, v10, v15, v9}, Lct2;->j(FFFF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v8, v14, v2, v14}, Lct2;->i(FFFF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12}, Lct2;->a()V

    .line 105
    .line 106
    .line 107
    const/high16 v8, 0x41940000    # 18.5f

    .line 108
    .line 109
    const v9, 0x40eb3333    # 7.35f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v9, v8}, Lct2;->h(FF)V

    .line 113
    .line 114
    .line 115
    const/high16 v24, 0x41400000    # 12.0f

    .line 116
    .line 117
    const/high16 v25, 0x41880000    # 17.0f

    .line 118
    .line 119
    const v20, 0x410a8f5c    # 8.66f

    .line 120
    .line 121
    .line 122
    const v21, 0x418c7ae1    # 17.56f

    .line 123
    .line 124
    .line 125
    const v22, 0x412428f6    # 10.26f

    .line 126
    .line 127
    .line 128
    const/high16 v23, 0x41880000    # 17.0f

    .line 129
    .line 130
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 131
    .line 132
    .line 133
    const v8, 0x3f0f5c29    # 0.56f

    .line 134
    .line 135
    .line 136
    const v9, 0x4094cccd    # 4.65f

    .line 137
    .line 138
    .line 139
    const/high16 v10, 0x3fc00000    # 1.5f

    .line 140
    .line 141
    const v11, 0x4055c28f    # 3.34f

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v11, v8, v9, v10}, Lct2;->j(FFFF)V

    .line 145
    .line 146
    .line 147
    const/high16 v25, 0x41a00000    # 20.0f

    .line 148
    .line 149
    const v20, 0x417570a4    # 15.34f

    .line 150
    .line 151
    .line 152
    const v21, 0x419b851f    # 19.44f

    .line 153
    .line 154
    .line 155
    const v22, 0x415bd70a    # 13.74f

    .line 156
    .line 157
    .line 158
    const/high16 v23, 0x41a00000    # 20.0f

    .line 159
    .line 160
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 161
    .line 162
    .line 163
    const v8, 0x410a8f5c    # 8.66f

    .line 164
    .line 165
    .line 166
    const v9, 0x419b851f    # 19.44f

    .line 167
    .line 168
    .line 169
    const/high16 v10, 0x41940000    # 18.5f

    .line 170
    .line 171
    const v11, 0x40eb3333    # 7.35f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v12, v8, v9, v11, v10}, Lct2;->i(FFFF)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Lct2;->a()V

    .line 178
    .line 179
    .line 180
    const v8, 0x4188f5c3    # 17.12f

    .line 181
    .line 182
    .line 183
    const v9, 0x41911eb8    # 18.14f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12, v9, v8}, Lct2;->h(FF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v9, v8}, Lct2;->f(FF)V

    .line 190
    .line 191
    .line 192
    const/high16 v25, 0x41700000    # 15.0f

    .line 193
    .line 194
    const v20, 0x4183999a    # 16.45f

    .line 195
    .line 196
    .line 197
    const v21, 0x417ccccd    # 15.8f

    .line 198
    .line 199
    .line 200
    const v22, 0x41651eb8    # 14.32f

    .line 201
    .line 202
    .line 203
    const/high16 v23, 0x41700000    # 15.0f

    .line 204
    .line 205
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 206
    .line 207
    .line 208
    const v8, -0x3f71999a    # -4.45f

    .line 209
    .line 210
    .line 211
    const v9, -0x3f3b851f    # -6.14f

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12, v8, v7, v9, v6}, Lct2;->j(FFFF)V

    .line 215
    .line 216
    .line 217
    const/4 v8, 0x0

    .line 218
    invoke-virtual {v12, v8, v8}, Lct2;->g(FF)V

    .line 219
    .line 220
    .line 221
    const/high16 v24, 0x40800000    # 4.0f

    .line 222
    .line 223
    const/high16 v25, 0x41400000    # 12.0f

    .line 224
    .line 225
    const v20, 0x40966666    # 4.7f

    .line 226
    .line 227
    .line 228
    const v21, 0x417bae14    # 15.73f

    .line 229
    .line 230
    .line 231
    const/high16 v22, 0x40800000    # 4.0f

    .line 232
    .line 233
    const v23, 0x415f3333    # 13.95f

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 237
    .line 238
    .line 239
    const/high16 v24, 0x41000000    # 8.0f

    .line 240
    .line 241
    const/high16 v25, -0x3f000000    # -8.0f

    .line 242
    .line 243
    const/16 v20, 0x0

    .line 244
    .line 245
    const v21, -0x3f728f5c    # -4.42f

    .line 246
    .line 247
    .line 248
    const v22, 0x40651eb8    # 3.58f

    .line 249
    .line 250
    .line 251
    const/high16 v23, -0x3f000000    # -8.0f

    .line 252
    .line 253
    invoke-virtual/range {v19 .. v25}, Lct2;->c(FFFFFF)V

    .line 254
    .line 255
    .line 256
    const v8, 0x40651eb8    # 3.58f

    .line 257
    .line 258
    .line 259
    const/high16 v9, 0x41000000    # 8.0f

    .line 260
    .line 261
    invoke-virtual {v12, v9, v8, v9, v9}, Lct2;->j(FFFF)V

    .line 262
    .line 263
    .line 264
    const v24, 0x41911eb8    # 18.14f

    .line 265
    .line 266
    .line 267
    const v25, 0x4188f5c3    # 17.12f

    .line 268
    .line 269
    .line 270
    const/high16 v20, 0x41a00000    # 20.0f

    .line 271
    .line 272
    const v21, 0x415f3333    # 13.95f

    .line 273
    .line 274
    .line 275
    const v22, 0x419a6666    # 19.3f

    .line 276
    .line 277
    .line 278
    const v23, 0x417bae14    # 15.73f

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12}, Lct2;->a()V

    .line 285
    .line 286
    .line 287
    iget-object v8, v12, Lct2;->n:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-static {v1, v8, v3}, Lro1;->a(Lro1;Ljava/util/ArrayList;Lsp3;)V

    .line 290
    .line 291
    .line 292
    new-instance v3, Lsp3;

    .line 293
    .line 294
    invoke-direct {v3, v4, v5}, Lsp3;-><init>(J)V

    .line 295
    .line 296
    .line 297
    new-instance v4, Lct2;

    .line 298
    .line 299
    invoke-direct {v4}, Lct2;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v2, v13}, Lct2;->h(FF)V

    .line 303
    .line 304
    .line 305
    const/high16 v24, -0x3fa00000    # -3.5f

    .line 306
    .line 307
    const/high16 v25, 0x40600000    # 3.5f

    .line 308
    .line 309
    const v20, -0x4008f5c3    # -1.93f

    .line 310
    .line 311
    .line 312
    const/16 v21, 0x0

    .line 313
    .line 314
    const/high16 v22, -0x3fa00000    # -3.5f

    .line 315
    .line 316
    const v23, 0x3fc8f5c3    # 1.57f

    .line 317
    .line 318
    .line 319
    move-object/from16 v19, v4

    .line 320
    .line 321
    invoke-virtual/range {v19 .. v25}, Lct2;->c(FFFFFF)V

    .line 322
    .line 323
    .line 324
    const v5, 0x41211eb8    # 10.07f

    .line 325
    .line 326
    .line 327
    const/high16 v8, 0x41500000    # 13.0f

    .line 328
    .line 329
    invoke-virtual {v4, v5, v8, v2, v8}, Lct2;->i(FFFF)V

    .line 330
    .line 331
    .line 332
    const/high16 v5, 0x40600000    # 3.5f

    .line 333
    .line 334
    const/high16 v8, -0x3fa00000    # -3.5f

    .line 335
    .line 336
    const v9, -0x40370a3d    # -1.57f

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v5, v9, v5, v8}, Lct2;->j(FFFF)V

    .line 340
    .line 341
    .line 342
    const v5, 0x415ee148    # 13.93f

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v5, v13, v2, v13}, Lct2;->i(FFFF)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4}, Lct2;->a()V

    .line 349
    .line 350
    .line 351
    const/high16 v5, 0x41300000    # 11.0f

    .line 352
    .line 353
    invoke-virtual {v4, v2, v5}, Lct2;->h(FF)V

    .line 354
    .line 355
    .line 356
    const/high16 v24, -0x40400000    # -1.5f

    .line 357
    .line 358
    const/high16 v25, -0x40400000    # -1.5f

    .line 359
    .line 360
    const v20, -0x40ab851f    # -0.83f

    .line 361
    .line 362
    .line 363
    const/high16 v22, -0x40400000    # -1.5f

    .line 364
    .line 365
    const v23, -0x40d47ae1    # -0.67f

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {v19 .. v25}, Lct2;->c(FFFFFF)V

    .line 369
    .line 370
    .line 371
    const v5, 0x4132b852    # 11.17f

    .line 372
    .line 373
    .line 374
    const/high16 v8, 0x41000000    # 8.0f

    .line 375
    .line 376
    invoke-virtual {v4, v5, v8, v2, v8}, Lct2;->i(FFFF)V

    .line 377
    .line 378
    .line 379
    const v5, 0x3f2b851f    # 0.67f

    .line 380
    .line 381
    .line 382
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 383
    .line 384
    invoke-virtual {v4, v8, v5, v8, v8}, Lct2;->j(FFFF)V

    .line 385
    .line 386
    .line 387
    const v5, 0x414d47ae    # 12.83f

    .line 388
    .line 389
    .line 390
    const/high16 v8, 0x41300000    # 11.0f

    .line 391
    .line 392
    invoke-virtual {v4, v5, v8, v2, v8}, Lct2;->i(FFFF)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4}, Lct2;->a()V

    .line 396
    .line 397
    .line 398
    iget-object v4, v4, Lct2;->n:Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-static {v1, v4, v3}, Lro1;->a(Lro1;Ljava/util/ArrayList;Lsp3;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Lro1;->b()Lso1;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    sput-object v1, Lk30;->v:Lso1;

    .line 408
    .line 409
    :goto_0
    sget-object v1, Lc75;->h:Lso1;

    .line 410
    .line 411
    if-eqz v1, :cond_1

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_1
    new-instance v27, Lro1;

    .line 416
    .line 417
    const/16 v35, 0x0

    .line 418
    .line 419
    const/16 v37, 0x60

    .line 420
    .line 421
    const-string v28, "Filled.AccountCircle"

    .line 422
    .line 423
    const/high16 v29, 0x41c00000    # 24.0f

    .line 424
    .line 425
    const/high16 v30, 0x41c00000    # 24.0f

    .line 426
    .line 427
    const/high16 v31, 0x41c00000    # 24.0f

    .line 428
    .line 429
    const/high16 v32, 0x41c00000    # 24.0f

    .line 430
    .line 431
    const-wide/16 v33, 0x0

    .line 432
    .line 433
    const/16 v36, 0x0

    .line 434
    .line 435
    invoke-direct/range {v27 .. v37}, Lro1;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 436
    .line 437
    .line 438
    move-object/from16 v1, v27

    .line 439
    .line 440
    sget v3, Lea4;->a:I

    .line 441
    .line 442
    new-instance v3, Lsp3;

    .line 443
    .line 444
    sget-wide v4, Lt70;->b:J

    .line 445
    .line 446
    invoke-direct {v3, v4, v5}, Lsp3;-><init>(J)V

    .line 447
    .line 448
    .line 449
    new-instance v4, Lct2;

    .line 450
    .line 451
    invoke-direct {v4}, Lct2;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v2, v14}, Lct2;->h(FF)V

    .line 455
    .line 456
    .line 457
    const/high16 v24, 0x40000000    # 2.0f

    .line 458
    .line 459
    const/high16 v25, 0x41400000    # 12.0f

    .line 460
    .line 461
    const v20, 0x40cf5c29    # 6.48f

    .line 462
    .line 463
    .line 464
    const/high16 v21, 0x40000000    # 2.0f

    .line 465
    .line 466
    const/high16 v22, 0x40000000    # 2.0f

    .line 467
    .line 468
    const v23, 0x40cf5c29    # 6.48f

    .line 469
    .line 470
    .line 471
    move-object/from16 v19, v4

    .line 472
    .line 473
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 474
    .line 475
    .line 476
    const v5, 0x408f5c29    # 4.48f

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v5, v15, v15, v15}, Lct2;->j(FFFF)V

    .line 480
    .line 481
    .line 482
    const/high16 v5, -0x3ee00000    # -10.0f

    .line 483
    .line 484
    const v8, -0x3f70a3d7    # -4.48f

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v15, v8, v15, v5}, Lct2;->j(FFFF)V

    .line 488
    .line 489
    .line 490
    const v5, 0x418c28f6    # 17.52f

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v5, v14, v2, v14}, Lct2;->i(FFFF)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4}, Lct2;->a()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4, v2, v13}, Lct2;->h(FF)V

    .line 500
    .line 501
    .line 502
    const/high16 v24, 0x40600000    # 3.5f

    .line 503
    .line 504
    const/high16 v25, 0x40600000    # 3.5f

    .line 505
    .line 506
    const v20, 0x3ff70a3d    # 1.93f

    .line 507
    .line 508
    .line 509
    const/16 v21, 0x0

    .line 510
    .line 511
    const/high16 v22, 0x40600000    # 3.5f

    .line 512
    .line 513
    const v23, 0x3fc8f5c3    # 1.57f

    .line 514
    .line 515
    .line 516
    invoke-virtual/range {v19 .. v25}, Lct2;->c(FFFFFF)V

    .line 517
    .line 518
    .line 519
    const v5, 0x415ee148    # 13.93f

    .line 520
    .line 521
    .line 522
    const/high16 v8, 0x41500000    # 13.0f

    .line 523
    .line 524
    invoke-virtual {v4, v5, v8, v2, v8}, Lct2;->i(FFFF)V

    .line 525
    .line 526
    .line 527
    const/high16 v8, -0x3fa00000    # -3.5f

    .line 528
    .line 529
    const v9, -0x40370a3d    # -1.57f

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4, v8, v9, v8, v8}, Lct2;->j(FFFF)V

    .line 533
    .line 534
    .line 535
    const v5, 0x41211eb8    # 10.07f

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4, v5, v13, v2, v13}, Lct2;->i(FFFF)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v4}, Lct2;->a()V

    .line 542
    .line 543
    .line 544
    const/high16 v5, 0x41a00000    # 20.0f

    .line 545
    .line 546
    invoke-virtual {v4, v2, v5}, Lct2;->h(FF)V

    .line 547
    .line 548
    .line 549
    const v24, -0x3f3b851f    # -6.14f

    .line 550
    .line 551
    .line 552
    const v25, -0x3fc7ae14    # -2.88f

    .line 553
    .line 554
    .line 555
    const v20, -0x3ffe147b    # -2.03f

    .line 556
    .line 557
    .line 558
    const v22, -0x3f723d71    # -4.43f

    .line 559
    .line 560
    .line 561
    const v23, -0x40ae147b    # -0.82f

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {v19 .. v25}, Lct2;->c(FFFFFF)V

    .line 565
    .line 566
    .line 567
    const/high16 v24, 0x41400000    # 12.0f

    .line 568
    .line 569
    const/high16 v25, 0x41700000    # 15.0f

    .line 570
    .line 571
    const v20, 0x40f1999a    # 7.55f

    .line 572
    .line 573
    .line 574
    const v21, 0x417ccccd    # 15.8f

    .line 575
    .line 576
    .line 577
    const v22, 0x411ae148    # 9.68f

    .line 578
    .line 579
    .line 580
    const/high16 v23, 0x41700000    # 15.0f

    .line 581
    .line 582
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 583
    .line 584
    .line 585
    const v2, 0x408e6666    # 4.45f

    .line 586
    .line 587
    .line 588
    const v5, 0x40c47ae1    # 6.14f

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4, v2, v7, v5, v6}, Lct2;->j(FFFF)V

    .line 592
    .line 593
    .line 594
    const/high16 v25, 0x41a00000    # 20.0f

    .line 595
    .line 596
    const v20, 0x418370a4    # 16.43f

    .line 597
    .line 598
    .line 599
    const v21, 0x419970a4    # 19.18f

    .line 600
    .line 601
    .line 602
    const v22, 0x41607ae1    # 14.03f

    .line 603
    .line 604
    .line 605
    const/high16 v23, 0x41a00000    # 20.0f

    .line 606
    .line 607
    invoke-virtual/range {v19 .. v25}, Lct2;->b(FFFFFF)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4}, Lct2;->a()V

    .line 611
    .line 612
    .line 613
    iget-object v2, v4, Lct2;->n:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-static {v1, v2, v3}, Lro1;->a(Lro1;Ljava/util/ArrayList;Lsp3;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Lro1;->b()Lso1;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    sput-object v1, Lc75;->h:Lso1;

    .line 623
    .line 624
    :goto_1
    const-string v1, "generic_account"

    .line 625
    .line 626
    const-string v2, "account/{serviceType}"

    .line 627
    .line 628
    invoke-direct {v0, v2, v1}, Lnq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    sput-object v0, Lne3;->c:Lne3;

    .line 632
    .line 633
    return-void
.end method
