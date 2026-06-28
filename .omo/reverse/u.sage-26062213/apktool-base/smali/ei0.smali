.class public final synthetic Lei0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lei0;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lei0;->n:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v0, p1

    .line 12
    .line 13
    check-cast v0, Lec3;

    .line 14
    .line 15
    move-object/from16 v0, p2

    .line 16
    .line 17
    check-cast v0, Ldy3;

    .line 18
    .line 19
    iget-wide v0, v0, Ldy3;->a:J

    .line 20
    .line 21
    const-wide v4, 0x200000000L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v4, v5}, Ldy3;->a(JJ)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-wide v3, 0x100000000L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v3, v4}, Ldy3;->a(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    move-object/from16 v0, p1

    .line 57
    .line 58
    check-cast v0, Lec3;

    .line 59
    .line 60
    move-object/from16 v1, p2

    .line 61
    .line 62
    check-cast v1, Lp32;

    .line 63
    .line 64
    iget-object v2, v1, Lp32;->a:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v1, v1, Lp32;->b:Lqx3;

    .line 67
    .line 68
    sget-object v3, Lid3;->i:Lxh1;

    .line 69
    .line 70
    invoke-static {v1, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :pswitch_1
    move-object/from16 v0, p1

    .line 84
    .line 85
    check-cast v0, Lec3;

    .line 86
    .line 87
    move-object/from16 v1, p2

    .line 88
    .line 89
    check-cast v1, Lcy3;

    .line 90
    .line 91
    sget-wide v4, Lcy3;->c:J

    .line 92
    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-wide v2, v1, Lcy3;->a:J

    .line 97
    .line 98
    invoke-static {v2, v3, v4, v5}, Lcy3;->a(JJ)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :goto_1
    if-eqz v3, :cond_3

    .line 103
    .line 104
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    iget-wide v2, v1, Lcy3;->a:J

    .line 108
    .line 109
    invoke-static {v2, v3}, Lcy3;->c(J)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-wide v3, v1, Lcy3;->a:J

    .line 118
    .line 119
    invoke-static {v3, v4}, Lcy3;->b(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v3

    .line 123
    new-instance v1, Ldy3;

    .line 124
    .line 125
    invoke-direct {v1, v3, v4}, Ldy3;-><init>(J)V

    .line 126
    .line 127
    .line 128
    sget-object v3, Lid3;->w:Lhd3;

    .line 129
    .line 130
    invoke-static {v1, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_2
    return-object v0

    .line 143
    :pswitch_2
    move-object/from16 v0, p1

    .line 144
    .line 145
    check-cast v0, Lec3;

    .line 146
    .line 147
    move-object/from16 v0, p2

    .line 148
    .line 149
    check-cast v0, Lob1;

    .line 150
    .line 151
    iget v0, v0, Lob1;->a:I

    .line 152
    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :pswitch_3
    move-object/from16 v0, p1

    .line 159
    .line 160
    check-cast v0, Lec3;

    .line 161
    .line 162
    move-object/from16 v0, p2

    .line 163
    .line 164
    check-cast v0, Lnb1;

    .line 165
    .line 166
    iget v0, v0, Lnb1;->a:I

    .line 167
    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    :pswitch_4
    move-object/from16 v0, p1

    .line 174
    .line 175
    check-cast v0, Lec3;

    .line 176
    .line 177
    move-object/from16 v0, p2

    .line 178
    .line 179
    check-cast v0, Lgn1;

    .line 180
    .line 181
    iget v0, v0, Lgn1;->a:I

    .line 182
    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    :pswitch_5
    move-object/from16 v0, p1

    .line 189
    .line 190
    check-cast v0, Lec3;

    .line 191
    .line 192
    move-object/from16 v0, p2

    .line 193
    .line 194
    check-cast v0, Lax3;

    .line 195
    .line 196
    iget v0, v0, Lax3;->a:I

    .line 197
    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    return-object v0

    .line 203
    :pswitch_6
    move-object/from16 v0, p1

    .line 204
    .line 205
    check-cast v0, Lec3;

    .line 206
    .line 207
    move-object/from16 v0, p2

    .line 208
    .line 209
    check-cast v0, Lvw3;

    .line 210
    .line 211
    iget v0, v0, Lvw3;->a:I

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :pswitch_7
    move-object/from16 v0, p1

    .line 219
    .line 220
    check-cast v0, Lec3;

    .line 221
    .line 222
    move-object/from16 v1, p2

    .line 223
    .line 224
    check-cast v1, Lhl3;

    .line 225
    .line 226
    iget-wide v2, v1, Lhl3;->a:J

    .line 227
    .line 228
    new-instance v4, Lt70;

    .line 229
    .line 230
    invoke-direct {v4, v2, v3}, Lt70;-><init>(J)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lid3;->p:Lhd3;

    .line 234
    .line 235
    invoke-static {v4, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget-wide v3, v1, Lhl3;->b:J

    .line 240
    .line 241
    new-instance v5, Lgo2;

    .line 242
    .line 243
    invoke-direct {v5, v3, v4}, Lgo2;-><init>(J)V

    .line 244
    .line 245
    .line 246
    sget-object v3, Lid3;->x:Lhd3;

    .line 247
    .line 248
    invoke-static {v5, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget v1, v1, Lhl3;->c:F

    .line 253
    .line 254
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    return-object v0

    .line 267
    :pswitch_8
    move-object/from16 v0, p1

    .line 268
    .line 269
    check-cast v0, Lec3;

    .line 270
    .line 271
    move-object/from16 v0, p2

    .line 272
    .line 273
    check-cast v0, Ltx3;

    .line 274
    .line 275
    iget-wide v1, v0, Ltx3;->a:J

    .line 276
    .line 277
    const/16 v3, 0x20

    .line 278
    .line 279
    shr-long/2addr v1, v3

    .line 280
    long-to-int v1, v1

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iget-wide v2, v0, Ltx3;->a:J

    .line 286
    .line 287
    const-wide v4, 0xffffffffL

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    and-long/2addr v2, v4

    .line 293
    long-to-int v0, v2

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0

    .line 307
    :pswitch_9
    move-object/from16 v0, p1

    .line 308
    .line 309
    check-cast v0, Lec3;

    .line 310
    .line 311
    move-object/from16 v1, p2

    .line 312
    .line 313
    check-cast v1, Ljava/util/List;

    .line 314
    .line 315
    new-instance v2, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    :goto_3
    if-ge v3, v4, :cond_4

    .line 329
    .line 330
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    check-cast v5, Lef;

    .line 335
    .line 336
    sget-object v6, Lid3;->b:Lxh1;

    .line 337
    .line 338
    invoke-static {v5, v6, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    add-int/lit8 v3, v3, 0x1

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_4
    return-object v2

    .line 349
    :pswitch_a
    move-object/from16 v0, p1

    .line 350
    .line 351
    check-cast v0, Lec3;

    .line 352
    .line 353
    move-object/from16 v0, p2

    .line 354
    .line 355
    check-cast v0, Leu;

    .line 356
    .line 357
    iget v0, v0, Leu;->a:F

    .line 358
    .line 359
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :pswitch_b
    move-object/from16 v0, p1

    .line 365
    .line 366
    check-cast v0, Lec3;

    .line 367
    .line 368
    move-object/from16 v1, p2

    .line 369
    .line 370
    check-cast v1, Lq32;

    .line 371
    .line 372
    iget-object v2, v1, Lq32;->a:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v1, v1, Lq32;->b:Lqx3;

    .line 375
    .line 376
    sget-object v3, Lid3;->i:Lxh1;

    .line 377
    .line 378
    invoke-static {v1, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0

    .line 391
    :pswitch_c
    move-object/from16 v0, p1

    .line 392
    .line 393
    check-cast v0, Lec3;

    .line 394
    .line 395
    move-object/from16 v0, p2

    .line 396
    .line 397
    check-cast v0, Lpb1;

    .line 398
    .line 399
    iget v0, v0, Lpb1;->n:I

    .line 400
    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    return-object v0

    .line 406
    :pswitch_d
    move-object/from16 v0, p1

    .line 407
    .line 408
    check-cast v0, Lec3;

    .line 409
    .line 410
    move-object/from16 v1, p2

    .line 411
    .line 412
    check-cast v1, Lgx3;

    .line 413
    .line 414
    iget-wide v2, v1, Lgx3;->a:J

    .line 415
    .line 416
    new-instance v4, Lcy3;

    .line 417
    .line 418
    invoke-direct {v4, v2, v3}, Lcy3;-><init>(J)V

    .line 419
    .line 420
    .line 421
    sget-object v2, Lid3;->v:Lhd3;

    .line 422
    .line 423
    invoke-static {v4, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    iget-wide v4, v1, Lgx3;->b:J

    .line 428
    .line 429
    new-instance v1, Lcy3;

    .line 430
    .line 431
    invoke-direct {v1, v4, v5}, Lcy3;-><init>(J)V

    .line 432
    .line 433
    .line 434
    invoke-static {v1, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    return-object v0

    .line 447
    :pswitch_e
    move-object/from16 v0, p1

    .line 448
    .line 449
    check-cast v0, Lec3;

    .line 450
    .line 451
    move-object/from16 v0, p2

    .line 452
    .line 453
    check-cast v0, Lfx3;

    .line 454
    .line 455
    iget v1, v0, Lfx3;->a:F

    .line 456
    .line 457
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iget v0, v0, Lfx3;->b:F

    .line 462
    .line 463
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    filled-new-array {v1, v0}, [Ljava/lang/Float;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    return-object v0

    .line 476
    :pswitch_f
    move-object/from16 v0, p1

    .line 477
    .line 478
    check-cast v0, Lec3;

    .line 479
    .line 480
    move-object/from16 v0, p2

    .line 481
    .line 482
    check-cast v0, Lyw3;

    .line 483
    .line 484
    iget v0, v0, Lyw3;->a:I

    .line 485
    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    return-object v0

    .line 491
    :pswitch_10
    move-object/from16 v0, p1

    .line 492
    .line 493
    check-cast v0, Lec3;

    .line 494
    .line 495
    move-object/from16 v1, p2

    .line 496
    .line 497
    check-cast v1, Lff;

    .line 498
    .line 499
    iget-object v2, v1, Lff;->o:Ljava/lang/String;

    .line 500
    .line 501
    iget-object v1, v1, Lff;->n:Ljava/util/List;

    .line 502
    .line 503
    sget-object v3, Lid3;->a:Lxh1;

    .line 504
    .line 505
    invoke-static {v1, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    return-object v0

    .line 518
    :pswitch_11
    move-object/from16 v0, p1

    .line 519
    .line 520
    check-cast v0, Lec3;

    .line 521
    .line 522
    return-object p2

    .line 523
    :pswitch_12
    move-object/from16 v0, p1

    .line 524
    .line 525
    check-cast v0, Lec3;

    .line 526
    .line 527
    move-object/from16 v0, p2

    .line 528
    .line 529
    check-cast v0, Lgc3;

    .line 530
    .line 531
    iget-object v2, v0, Lgc3;->n:Ljava/util/Map;

    .line 532
    .line 533
    iget-object v0, v0, Lgc3;->o:Lkg2;

    .line 534
    .line 535
    iget-object v4, v0, Lkg2;->b:[Ljava/lang/Object;

    .line 536
    .line 537
    iget-object v5, v0, Lkg2;->c:[Ljava/lang/Object;

    .line 538
    .line 539
    iget-object v0, v0, Lkg2;->a:[J

    .line 540
    .line 541
    array-length v6, v0

    .line 542
    add-int/lit8 v6, v6, -0x2

    .line 543
    .line 544
    if-ltz v6, :cond_9

    .line 545
    .line 546
    move v7, v3

    .line 547
    :goto_4
    aget-wide v8, v0, v7

    .line 548
    .line 549
    not-long v10, v8

    .line 550
    const/4 v12, 0x7

    .line 551
    shl-long/2addr v10, v12

    .line 552
    and-long/2addr v10, v8

    .line 553
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    and-long/2addr v10, v12

    .line 559
    cmp-long v10, v10, v12

    .line 560
    .line 561
    if-eqz v10, :cond_8

    .line 562
    .line 563
    sub-int v10, v7, v6

    .line 564
    .line 565
    not-int v10, v10

    .line 566
    ushr-int/lit8 v10, v10, 0x1f

    .line 567
    .line 568
    const/16 v11, 0x8

    .line 569
    .line 570
    rsub-int/lit8 v10, v10, 0x8

    .line 571
    .line 572
    move v12, v3

    .line 573
    :goto_5
    if-ge v12, v10, :cond_7

    .line 574
    .line 575
    const-wide/16 v13, 0xff

    .line 576
    .line 577
    and-long/2addr v13, v8

    .line 578
    const-wide/16 v15, 0x80

    .line 579
    .line 580
    cmp-long v13, v13, v15

    .line 581
    .line 582
    if-gez v13, :cond_6

    .line 583
    .line 584
    shl-int/lit8 v13, v7, 0x3

    .line 585
    .line 586
    add-int/2addr v13, v12

    .line 587
    aget-object v14, v4, v13

    .line 588
    .line 589
    aget-object v13, v5, v13

    .line 590
    .line 591
    check-cast v13, Lic3;

    .line 592
    .line 593
    invoke-interface {v13}, Lic3;->c()Ljava/util/Map;

    .line 594
    .line 595
    .line 596
    move-result-object v13

    .line 597
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v15

    .line 601
    if-eqz v15, :cond_5

    .line 602
    .line 603
    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    goto :goto_6

    .line 607
    :cond_5
    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    :cond_6
    :goto_6
    shr-long/2addr v8, v11

    .line 611
    add-int/lit8 v12, v12, 0x1

    .line 612
    .line 613
    goto :goto_5

    .line 614
    :cond_7
    if-ne v10, v11, :cond_9

    .line 615
    .line 616
    :cond_8
    if-eq v7, v6, :cond_9

    .line 617
    .line 618
    add-int/lit8 v7, v7, 0x1

    .line 619
    .line 620
    goto :goto_4

    .line 621
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-eqz v0, :cond_a

    .line 626
    .line 627
    goto :goto_7

    .line 628
    :cond_a
    move-object v1, v2

    .line 629
    :goto_7
    return-object v1

    .line 630
    :pswitch_13
    move-object/from16 v0, p1

    .line 631
    .line 632
    check-cast v0, Ljava/lang/Integer;

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    move-object/from16 v1, p2

    .line 639
    .line 640
    check-cast v1, Lfi0;

    .line 641
    .line 642
    add-int/2addr v0, v2

    .line 643
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    return-object v0

    .line 648
    :pswitch_14
    move-object/from16 v0, p1

    .line 649
    .line 650
    check-cast v0, Lec3;

    .line 651
    .line 652
    move-object/from16 v0, p2

    .line 653
    .line 654
    check-cast v0, Lxi2;

    .line 655
    .line 656
    iget-object v2, v0, Lxi2;->b:Lii2;

    .line 657
    .line 658
    iget-object v4, v2, Lii2;->n:Ljava/util/LinkedHashMap;

    .line 659
    .line 660
    iget-object v5, v2, Lii2;->f:Lvh;

    .line 661
    .line 662
    iget-object v6, v2, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 663
    .line 664
    new-instance v7, Ljava/util/ArrayList;

    .line 665
    .line 666
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .line 668
    .line 669
    new-array v8, v3, [Ljs2;

    .line 670
    .line 671
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    check-cast v8, [Ljs2;

    .line 676
    .line 677
    invoke-static {v8}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 678
    .line 679
    .line 680
    move-result-object v8

    .line 681
    iget-object v2, v2, Lii2;->t:Lmk2;

    .line 682
    .line 683
    iget-object v2, v2, Lmk2;->a:Ljava/util/LinkedHashMap;

    .line 684
    .line 685
    invoke-static {v2}, Loa2;->e0(Ljava/util/Map;)Ljava/util/Map;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 698
    .line 699
    .line 700
    move-result v9

    .line 701
    if-eqz v9, :cond_b

    .line 702
    .line 703
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v9

    .line 707
    check-cast v9, Ljava/util/Map$Entry;

    .line 708
    .line 709
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v10

    .line 713
    check-cast v10, Ljava/lang/String;

    .line 714
    .line 715
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v9

    .line 719
    check-cast v9, Llk2;

    .line 720
    .line 721
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    goto :goto_8

    .line 725
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    if-nez v2, :cond_c

    .line 730
    .line 731
    new-array v1, v3, [Ljs2;

    .line 732
    .line 733
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    check-cast v1, [Ljs2;

    .line 738
    .line 739
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    const-string v2, "android-support-nav:controller:navigatorState:names"

    .line 744
    .line 745
    invoke-static {v8, v2, v7}, Lis0;->R(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 746
    .line 747
    .line 748
    const-string v2, "android-support-nav:controller:navigatorState"

    .line 749
    .line 750
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 751
    .line 752
    .line 753
    :cond_c
    invoke-virtual {v5}, Lvh;->isEmpty()Z

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    const-string v7, "nav-entry-state:saved-state"

    .line 758
    .line 759
    const-string v8, "nav-entry-state:args"

    .line 760
    .line 761
    const-string v9, "nav-entry-state:destination-id"

    .line 762
    .line 763
    const-string v10, "nav-entry-state:id"

    .line 764
    .line 765
    if-nez v2, :cond_10

    .line 766
    .line 767
    if-nez v1, :cond_d

    .line 768
    .line 769
    new-array v1, v3, [Ljs2;

    .line 770
    .line 771
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    check-cast v1, [Ljs2;

    .line 776
    .line 777
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 782
    .line 783
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    if-eqz v11, :cond_f

    .line 795
    .line 796
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v11

    .line 800
    check-cast v11, Lyh2;

    .line 801
    .line 802
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    iget-object v12, v11, Lyh2;->o:Lqi2;

    .line 806
    .line 807
    iget-object v12, v12, Lqi2;->o:Lgg;

    .line 808
    .line 809
    iget v12, v12, Lgg;->a:I

    .line 810
    .line 811
    iget-object v13, v11, Lyh2;->s:Ljava/lang/String;

    .line 812
    .line 813
    iget-object v11, v11, Lyh2;->u:Lai2;

    .line 814
    .line 815
    invoke-virtual {v11}, Lai2;->a()Landroid/os/Bundle;

    .line 816
    .line 817
    .line 818
    move-result-object v14

    .line 819
    new-array v15, v3, [Ljs2;

    .line 820
    .line 821
    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v15

    .line 825
    check-cast v15, [Ljs2;

    .line 826
    .line 827
    invoke-static {v15}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 828
    .line 829
    .line 830
    move-result-object v15

    .line 831
    iget-object v11, v11, Lai2;->h:Lwc3;

    .line 832
    .line 833
    invoke-virtual {v11, v15}, Lwc3;->c(Landroid/os/Bundle;)V

    .line 834
    .line 835
    .line 836
    new-array v11, v3, [Ljs2;

    .line 837
    .line 838
    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v11

    .line 842
    check-cast v11, [Ljs2;

    .line 843
    .line 844
    invoke-static {v11}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v11, v10, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v11, v9, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 855
    .line 856
    .line 857
    if-nez v14, :cond_e

    .line 858
    .line 859
    new-array v12, v3, [Ljs2;

    .line 860
    .line 861
    invoke-static {v12, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v12

    .line 865
    check-cast v12, [Ljs2;

    .line 866
    .line 867
    invoke-static {v12}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 868
    .line 869
    .line 870
    move-result-object v14

    .line 871
    :cond_e
    invoke-virtual {v11, v8, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v11, v7, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    goto :goto_9

    .line 881
    :cond_f
    const-string v5, "android-support-nav:controller:backStack"

    .line 882
    .line 883
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 884
    .line 885
    .line 886
    :cond_10
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    if-nez v2, :cond_14

    .line 891
    .line 892
    if-nez v1, :cond_11

    .line 893
    .line 894
    new-array v1, v3, [Ljs2;

    .line 895
    .line 896
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    check-cast v1, [Ljs2;

    .line 901
    .line 902
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    :cond_11
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    new-array v2, v2, [I

    .line 911
    .line 912
    new-instance v5, Ljava/util/ArrayList;

    .line 913
    .line 914
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 918
    .line 919
    .line 920
    move-result-object v6

    .line 921
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 922
    .line 923
    .line 924
    move-result-object v6

    .line 925
    move v11, v3

    .line 926
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 927
    .line 928
    .line 929
    move-result v12

    .line 930
    if-eqz v12, :cond_13

    .line 931
    .line 932
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v12

    .line 936
    check-cast v12, Ljava/util/Map$Entry;

    .line 937
    .line 938
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v13

    .line 942
    check-cast v13, Ljava/lang/Number;

    .line 943
    .line 944
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 945
    .line 946
    .line 947
    move-result v13

    .line 948
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v12

    .line 952
    check-cast v12, Ljava/lang/String;

    .line 953
    .line 954
    add-int/lit8 v14, v11, 0x1

    .line 955
    .line 956
    aput v13, v2, v11

    .line 957
    .line 958
    if-nez v12, :cond_12

    .line 959
    .line 960
    const-string v12, ""

    .line 961
    .line 962
    :cond_12
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    move v11, v14

    .line 966
    goto :goto_a

    .line 967
    :cond_13
    const-string v6, "android-support-nav:controller:backStackDestIds"

    .line 968
    .line 969
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 970
    .line 971
    .line 972
    const-string v2, "android-support-nav:controller:backStackIds"

    .line 973
    .line 974
    invoke-static {v1, v2, v5}, Lis0;->R(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 975
    .line 976
    .line 977
    :cond_14
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    if-nez v2, :cond_19

    .line 982
    .line 983
    if-nez v1, :cond_15

    .line 984
    .line 985
    new-array v1, v3, [Ljs2;

    .line 986
    .line 987
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    check-cast v1, [Ljs2;

    .line 992
    .line 993
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v5

    .line 1014
    if-eqz v5, :cond_18

    .line 1015
    .line 1016
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    check-cast v5, Ljava/util/Map$Entry;

    .line 1021
    .line 1022
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v6

    .line 1026
    check-cast v6, Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v5

    .line 1032
    check-cast v5, Lvh;

    .line 1033
    .line 1034
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    new-instance v11, Ljava/util/ArrayList;

    .line 1038
    .line 1039
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v5

    .line 1046
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v12

    .line 1050
    if-eqz v12, :cond_17

    .line 1051
    .line 1052
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v12

    .line 1056
    check-cast v12, Lbi2;

    .line 1057
    .line 1058
    iget-object v12, v12, Lbi2;->a:Llb;

    .line 1059
    .line 1060
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    new-array v13, v3, [Ljs2;

    .line 1064
    .line 1065
    invoke-static {v13, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v13

    .line 1069
    check-cast v13, [Ljs2;

    .line 1070
    .line 1071
    invoke-static {v13}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v13

    .line 1075
    iget-object v14, v12, Llb;->o:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v14, Ljava/lang/String;

    .line 1078
    .line 1079
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v13, v10, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    iget v14, v12, Llb;->n:I

    .line 1086
    .line 1087
    invoke-virtual {v13, v9, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    .line 1089
    .line 1090
    iget-object v14, v12, Llb;->p:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v14, Landroid/os/Bundle;

    .line 1093
    .line 1094
    if-nez v14, :cond_16

    .line 1095
    .line 1096
    new-array v14, v3, [Ljs2;

    .line 1097
    .line 1098
    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v14

    .line 1102
    check-cast v14, [Ljs2;

    .line 1103
    .line 1104
    invoke-static {v14}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v14

    .line 1108
    :cond_16
    invoke-virtual {v13, v8, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1109
    .line 1110
    .line 1111
    iget-object v12, v12, Llb;->q:Ljava/lang/Object;

    .line 1112
    .line 1113
    check-cast v12, Landroid/os/Bundle;

    .line 1114
    .line 1115
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v13, v7, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    goto :goto_c

    .line 1125
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    const-string v12, "android-support-nav:controller:backStackStates:"

    .line 1128
    .line 1129
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v5

    .line 1139
    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_b

    .line 1143
    .line 1144
    :cond_18
    const-string v4, "android-support-nav:controller:backStackStates"

    .line 1145
    .line 1146
    invoke-static {v1, v4, v2}, Lis0;->R(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 1147
    .line 1148
    .line 1149
    :cond_19
    iget-boolean v2, v0, Lxi2;->e:Z

    .line 1150
    .line 1151
    if-eqz v2, :cond_1b

    .line 1152
    .line 1153
    if-nez v1, :cond_1a

    .line 1154
    .line 1155
    new-array v1, v3, [Ljs2;

    .line 1156
    .line 1157
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    check-cast v1, [Ljs2;

    .line 1162
    .line 1163
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    :cond_1a
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    .line 1168
    .line 1169
    iget-boolean v0, v0, Lxi2;->e:Z

    .line 1170
    .line 1171
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    .line 1173
    .line 1174
    :cond_1b
    return-object v1

    .line 1175
    :pswitch_15
    move-object/from16 v0, p1

    .line 1176
    .line 1177
    check-cast v0, Lec3;

    .line 1178
    .line 1179
    move-object/from16 v0, p2

    .line 1180
    .line 1181
    check-cast v0, Lr12;

    .line 1182
    .line 1183
    invoke-virtual {v0}, Lr12;->c()Ljava/util/Map;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1188
    .line 1189
    .line 1190
    move-result v2

    .line 1191
    if-eqz v2, :cond_1c

    .line 1192
    .line 1193
    goto :goto_d

    .line 1194
    :cond_1c
    move-object v1, v0

    .line 1195
    :goto_d
    return-object v1

    .line 1196
    :pswitch_16
    move-object/from16 v0, p1

    .line 1197
    .line 1198
    check-cast v0, Lec3;

    .line 1199
    .line 1200
    move-object/from16 v0, p2

    .line 1201
    .line 1202
    check-cast v0, Ln12;

    .line 1203
    .line 1204
    invoke-virtual {v0}, Ln12;->d()I

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    invoke-virtual {v0}, Ln12;->g()I

    .line 1213
    .line 1214
    .line 1215
    move-result v0

    .line 1216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-static {v0}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    return-object v0

    .line 1229
    :pswitch_17
    invoke-static/range {p1 .. p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    return-object v0

    .line 1238
    :pswitch_18
    move-object/from16 v0, p1

    .line 1239
    .line 1240
    check-cast v0, Llc2;

    .line 1241
    .line 1242
    move-object/from16 v1, p2

    .line 1243
    .line 1244
    check-cast v1, Ljava/lang/Throwable;

    .line 1245
    .line 1246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1247
    .line 1248
    .line 1249
    iget-object v0, v0, Llc2;->b:Lz80;

    .line 1250
    .line 1251
    if-nez v1, :cond_1d

    .line 1252
    .line 1253
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 1254
    .line 1255
    const-string v2, "DataStore scope was cancelled before updateData could complete"

    .line 1256
    .line 1257
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    :cond_1d
    new-instance v2, Lc90;

    .line 1261
    .line 1262
    invoke-direct {v2, v1, v3}, Lc90;-><init>(Ljava/lang/Throwable;Z)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v0, v2}, Lbv1;->U(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    sget-object v0, Lt64;->a:Lt64;

    .line 1269
    .line 1270
    return-object v0

    .line 1271
    :pswitch_19
    move-object/from16 v0, p1

    .line 1272
    .line 1273
    check-cast v0, Lhi0;

    .line 1274
    .line 1275
    move-object/from16 v1, p2

    .line 1276
    .line 1277
    check-cast v1, Lfi0;

    .line 1278
    .line 1279
    invoke-interface {v0, v1}, Lhi0;->F(Lhi0;)Lhi0;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    return-object v0

    .line 1284
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1285
    .line 1286
    check-cast v0, Lhi0;

    .line 1287
    .line 1288
    move-object/from16 v1, p2

    .line 1289
    .line 1290
    check-cast v1, Lfi0;

    .line 1291
    .line 1292
    invoke-interface {v0, v1}, Lhi0;->F(Lhi0;)Lhi0;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    return-object v0

    .line 1297
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1298
    .line 1299
    check-cast v0, Ljava/lang/Boolean;

    .line 1300
    .line 1301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1302
    .line 1303
    .line 1304
    move-object/from16 v1, p2

    .line 1305
    .line 1306
    check-cast v1, Lfi0;

    .line 1307
    .line 1308
    return-object v0

    .line 1309
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1310
    .line 1311
    check-cast v0, Lhi0;

    .line 1312
    .line 1313
    move-object/from16 v1, p2

    .line 1314
    .line 1315
    check-cast v1, Lfi0;

    .line 1316
    .line 1317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {v1}, Lfi0;->getKey()Lgi0;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v2

    .line 1327
    invoke-interface {v0, v2}, Lhi0;->Y(Lgi0;)Lhi0;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    sget-object v2, Ld01;->n:Ld01;

    .line 1332
    .line 1333
    if-ne v0, v2, :cond_1e

    .line 1334
    .line 1335
    goto :goto_f

    .line 1336
    :cond_1e
    sget-object v3, Lw13;->s:Lw13;

    .line 1337
    .line 1338
    invoke-interface {v0, v3}, Lhi0;->K(Lgi0;)Lfi0;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v4

    .line 1342
    check-cast v4, Lji0;

    .line 1343
    .line 1344
    if-nez v4, :cond_1f

    .line 1345
    .line 1346
    new-instance v2, Lq80;

    .line 1347
    .line 1348
    invoke-direct {v2, v1, v0}, Lq80;-><init>(Lfi0;Lhi0;)V

    .line 1349
    .line 1350
    .line 1351
    :goto_e
    move-object v1, v2

    .line 1352
    goto :goto_f

    .line 1353
    :cond_1f
    invoke-interface {v0, v3}, Lhi0;->Y(Lgi0;)Lhi0;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    if-ne v0, v2, :cond_20

    .line 1358
    .line 1359
    new-instance v0, Lq80;

    .line 1360
    .line 1361
    invoke-direct {v0, v4, v1}, Lq80;-><init>(Lfi0;Lhi0;)V

    .line 1362
    .line 1363
    .line 1364
    move-object v1, v0

    .line 1365
    goto :goto_f

    .line 1366
    :cond_20
    new-instance v2, Lq80;

    .line 1367
    .line 1368
    new-instance v3, Lq80;

    .line 1369
    .line 1370
    invoke-direct {v3, v1, v0}, Lq80;-><init>(Lfi0;Lhi0;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-direct {v2, v4, v3}, Lq80;-><init>(Lfi0;Lhi0;)V

    .line 1374
    .line 1375
    .line 1376
    goto :goto_e

    .line 1377
    :goto_f
    return-object v1

    .line 1378
    nop

    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
