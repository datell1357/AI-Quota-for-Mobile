.class public final synthetic Led3;
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
    iput p1, p0, Led3;->n:I

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
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, Led3;->n:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Lsy3;

    .line 13
    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    check-cast v1, Lfi0;

    .line 17
    .line 18
    instance-of v2, v1, Lly3;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v1, Lly3;

    .line 23
    .line 24
    iget-object v2, v0, Lsy3;->a:Lhi0;

    .line 25
    .line 26
    invoke-virtual {v1}, Lly3;->c()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, v0, Lsy3;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    iget v4, v0, Lsy3;->d:I

    .line 33
    .line 34
    aput-object v2, v3, v4

    .line 35
    .line 36
    iget-object v2, v0, Lsy3;->c:[Lly3;

    .line 37
    .line 38
    add-int/lit8 v3, v4, 0x1

    .line 39
    .line 40
    iput v3, v0, Lsy3;->d:I

    .line 41
    .line 42
    aput-object v1, v2, v4

    .line 43
    .line 44
    :cond_0
    return-object v0

    .line 45
    :pswitch_0
    check-cast v0, Lly3;

    .line 46
    .line 47
    move-object/from16 v1, p2

    .line 48
    .line 49
    check-cast v1, Lfi0;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    move-object v3, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    instance-of v0, v1, Lly3;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    move-object v3, v1

    .line 60
    check-cast v3, Lly3;

    .line 61
    .line 62
    :cond_2
    :goto_0
    return-object v3

    .line 63
    :pswitch_1
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Lfi0;

    .line 66
    .line 67
    instance-of v2, v1, Lly3;

    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    instance-of v2, v0, Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    move-object v3, v0

    .line 76
    check-cast v3, Ljava/lang/Integer;

    .line 77
    .line 78
    :cond_3
    const/4 v0, 0x1

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move v2, v0

    .line 87
    :goto_1
    if-nez v2, :cond_5

    .line 88
    .line 89
    move-object v0, v1

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    add-int/2addr v2, v0

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_6
    :goto_2
    return-object v0

    .line 97
    :pswitch_2
    check-cast v0, Lec3;

    .line 98
    .line 99
    move-object/from16 v0, p2

    .line 100
    .line 101
    check-cast v0, Llf3;

    .line 102
    .line 103
    iget-object v0, v0, Llf3;->a:Lts2;

    .line 104
    .line 105
    invoke-virtual {v0}, Lts2;->g()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :pswitch_3
    check-cast v0, Lec3;

    .line 115
    .line 116
    move-object/from16 v0, p2

    .line 117
    .line 118
    check-cast v0, Lrx3;

    .line 119
    .line 120
    iget v0, v0, Lrx3;->a:I

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :pswitch_4
    check-cast v0, Lec3;

    .line 128
    .line 129
    move-object/from16 v1, p2

    .line 130
    .line 131
    check-cast v1, Lsx3;

    .line 132
    .line 133
    iget v2, v1, Lsx3;->a:I

    .line 134
    .line 135
    new-instance v3, Lrx3;

    .line 136
    .line 137
    invoke-direct {v3, v2}, Lrx3;-><init>(I)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lkd3;->e:Lxh1;

    .line 141
    .line 142
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-boolean v1, v1, Lsx3;->b:Z

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    :pswitch_5
    check-cast v0, Lec3;

    .line 162
    .line 163
    move-object/from16 v0, p2

    .line 164
    .line 165
    check-cast v0, Ld32;

    .line 166
    .line 167
    iget v0, v0, Ld32;->a:I

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0

    .line 174
    :pswitch_6
    check-cast v0, Lec3;

    .line 175
    .line 176
    move-object/from16 v0, p2

    .line 177
    .line 178
    check-cast v0, Luz0;

    .line 179
    .line 180
    iget v0, v0, Luz0;->a:I

    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :pswitch_7
    check-cast v0, Lec3;

    .line 188
    .line 189
    move-object/from16 v1, p2

    .line 190
    .line 191
    check-cast v1, Lmv2;

    .line 192
    .line 193
    iget-boolean v2, v1, Lmv2;->a:Z

    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sget-object v3, Lid3;->a:Lxh1;

    .line 200
    .line 201
    iget v1, v1, Lmv2;->b:I

    .line 202
    .line 203
    new-instance v3, Luz0;

    .line 204
    .line 205
    invoke-direct {v3, v1}, Luz0;-><init>(I)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Lkd3;->b:Lxh1;

    .line 209
    .line 210
    invoke-static {v3, v1, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    return-object v0

    .line 223
    :pswitch_8
    check-cast v0, Lec3;

    .line 224
    .line 225
    move-object/from16 v1, p2

    .line 226
    .line 227
    check-cast v1, Lqx3;

    .line 228
    .line 229
    iget-object v2, v1, Lqx3;->a:Liq3;

    .line 230
    .line 231
    sget-object v3, Lid3;->h:Lxh1;

    .line 232
    .line 233
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iget-object v4, v1, Lqx3;->b:Liq3;

    .line 238
    .line 239
    invoke-static {v4, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget-object v5, v1, Lqx3;->c:Liq3;

    .line 244
    .line 245
    invoke-static {v5, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iget-object v1, v1, Lqx3;->d:Liq3;

    .line 250
    .line 251
    invoke-static {v1, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    filled-new-array {v2, v4, v5, v0}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    return-object v0

    .line 264
    :pswitch_9
    check-cast v0, Lec3;

    .line 265
    .line 266
    move-object/from16 v1, p2

    .line 267
    .line 268
    check-cast v1, Liq3;

    .line 269
    .line 270
    iget-object v2, v1, Liq3;->a:Lcx3;

    .line 271
    .line 272
    invoke-interface {v2}, Lcx3;->d()J

    .line 273
    .line 274
    .line 275
    move-result-wide v2

    .line 276
    new-instance v4, Lt70;

    .line 277
    .line 278
    invoke-direct {v4, v2, v3}, Lt70;-><init>(J)V

    .line 279
    .line 280
    .line 281
    sget-object v2, Lid3;->p:Lhd3;

    .line 282
    .line 283
    invoke-static {v4, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    iget-wide v3, v1, Liq3;->b:J

    .line 288
    .line 289
    new-instance v6, Lcy3;

    .line 290
    .line 291
    invoke-direct {v6, v3, v4}, Lcy3;-><init>(J)V

    .line 292
    .line 293
    .line 294
    sget-object v3, Lid3;->v:Lhd3;

    .line 295
    .line 296
    invoke-static {v6, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    iget-object v4, v1, Liq3;->c:Lpb1;

    .line 301
    .line 302
    sget-object v7, Lpb1;->o:Lpb1;

    .line 303
    .line 304
    sget-object v7, Lid3;->m:Lxh1;

    .line 305
    .line 306
    invoke-static {v4, v7, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    iget-object v4, v1, Liq3;->d:Lnb1;

    .line 311
    .line 312
    sget-object v8, Lid3;->t:Lxh1;

    .line 313
    .line 314
    invoke-static {v4, v8, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    iget-object v4, v1, Liq3;->e:Lob1;

    .line 319
    .line 320
    sget-object v9, Lid3;->u:Lxh1;

    .line 321
    .line 322
    invoke-static {v4, v9, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    const/4 v4, -0x1

    .line 327
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    iget-object v11, v1, Liq3;->g:Ljava/lang/String;

    .line 332
    .line 333
    iget-wide v12, v1, Liq3;->h:J

    .line 334
    .line 335
    new-instance v4, Lcy3;

    .line 336
    .line 337
    invoke-direct {v4, v12, v13}, Lcy3;-><init>(J)V

    .line 338
    .line 339
    .line 340
    invoke-static {v4, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    iget-object v3, v1, Liq3;->i:Leu;

    .line 345
    .line 346
    sget-object v4, Lid3;->n:Lxh1;

    .line 347
    .line 348
    invoke-static {v3, v4, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v13

    .line 352
    iget-object v3, v1, Liq3;->j:Lfx3;

    .line 353
    .line 354
    sget-object v4, Lid3;->k:Lxh1;

    .line 355
    .line 356
    invoke-static {v3, v4, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    iget-object v3, v1, Liq3;->k:Le72;

    .line 361
    .line 362
    sget-object v4, Le72;->p:Le72;

    .line 363
    .line 364
    sget-object v4, Lid3;->y:Lxh1;

    .line 365
    .line 366
    invoke-static {v3, v4, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    iget-wide v3, v1, Liq3;->l:J

    .line 371
    .line 372
    move-object/from16 p0, v5

    .line 373
    .line 374
    new-instance v5, Lt70;

    .line 375
    .line 376
    invoke-direct {v5, v3, v4}, Lt70;-><init>(J)V

    .line 377
    .line 378
    .line 379
    invoke-static {v5, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v16

    .line 383
    iget-object v2, v1, Liq3;->m:Lyw3;

    .line 384
    .line 385
    sget-object v3, Lid3;->j:Lxh1;

    .line 386
    .line 387
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v17

    .line 391
    iget-object v1, v1, Liq3;->n:Lhl3;

    .line 392
    .line 393
    sget-object v2, Lhl3;->d:Lhl3;

    .line 394
    .line 395
    sget-object v2, Lid3;->o:Lxh1;

    .line 396
    .line 397
    invoke-static {v1, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v18

    .line 401
    move-object/from16 v5, p0

    .line 402
    .line 403
    filled-new-array/range {v5 .. v18}, [Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    return-object v0

    .line 412
    :pswitch_a
    check-cast v0, Lec3;

    .line 413
    .line 414
    move-object/from16 v0, p2

    .line 415
    .line 416
    check-cast v0, Lb84;

    .line 417
    .line 418
    iget-object v0, v0, Lb84;->a:Ljava/lang/String;

    .line 419
    .line 420
    return-object v0

    .line 421
    :pswitch_b
    check-cast v0, Lec3;

    .line 422
    .line 423
    move-object/from16 v1, p2

    .line 424
    .line 425
    check-cast v1, Lqs2;

    .line 426
    .line 427
    iget v2, v1, Lqs2;->a:I

    .line 428
    .line 429
    new-instance v3, Lvw3;

    .line 430
    .line 431
    invoke-direct {v3, v2}, Lvw3;-><init>(I)V

    .line 432
    .line 433
    .line 434
    sget-object v2, Lid3;->q:Lhd3;

    .line 435
    .line 436
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    iget v2, v1, Lqs2;->b:I

    .line 441
    .line 442
    new-instance v3, Lax3;

    .line 443
    .line 444
    invoke-direct {v3, v2}, Lax3;-><init>(I)V

    .line 445
    .line 446
    .line 447
    sget-object v2, Lid3;->r:Lhd3;

    .line 448
    .line 449
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    iget-wide v2, v1, Lqs2;->c:J

    .line 454
    .line 455
    new-instance v6, Lcy3;

    .line 456
    .line 457
    invoke-direct {v6, v2, v3}, Lcy3;-><init>(J)V

    .line 458
    .line 459
    .line 460
    sget-object v2, Lid3;->v:Lhd3;

    .line 461
    .line 462
    invoke-static {v6, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    iget-object v2, v1, Lqs2;->d:Lgx3;

    .line 467
    .line 468
    sget-object v3, Lgx3;->c:Lgx3;

    .line 469
    .line 470
    sget-object v3, Lid3;->l:Lxh1;

    .line 471
    .line 472
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    iget-object v2, v1, Lqs2;->e:Lmv2;

    .line 477
    .line 478
    sget-object v3, Lkd3;->a:Lxh1;

    .line 479
    .line 480
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    iget-object v2, v1, Lqs2;->f:Li32;

    .line 485
    .line 486
    sget-object v3, Li32;->d:Li32;

    .line 487
    .line 488
    sget-object v3, Lid3;->A:Lxh1;

    .line 489
    .line 490
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    iget v2, v1, Lqs2;->g:I

    .line 495
    .line 496
    new-instance v3, Ld32;

    .line 497
    .line 498
    invoke-direct {v3, v2}, Ld32;-><init>(I)V

    .line 499
    .line 500
    .line 501
    sget-object v2, Lkd3;->c:Lxh1;

    .line 502
    .line 503
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    iget v2, v1, Lqs2;->h:I

    .line 508
    .line 509
    new-instance v3, Lgn1;

    .line 510
    .line 511
    invoke-direct {v3, v2}, Lgn1;-><init>(I)V

    .line 512
    .line 513
    .line 514
    sget-object v2, Lid3;->s:Lhd3;

    .line 515
    .line 516
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v11

    .line 520
    iget-object v1, v1, Lqs2;->i:Lsx3;

    .line 521
    .line 522
    sget-object v2, Lkd3;->d:Lxh1;

    .line 523
    .line 524
    invoke-static {v1, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v12

    .line 528
    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    return-object v0

    .line 537
    :pswitch_c
    check-cast v0, Lec3;

    .line 538
    .line 539
    move-object/from16 v0, p2

    .line 540
    .line 541
    check-cast v0, Lwa4;

    .line 542
    .line 543
    iget-object v0, v0, Lwa4;->a:Ljava/lang/String;

    .line 544
    .line 545
    return-object v0

    .line 546
    :pswitch_d
    check-cast v0, Lec3;

    .line 547
    .line 548
    move-object/from16 v0, p2

    .line 549
    .line 550
    check-cast v0, Lg32;

    .line 551
    .line 552
    iget v0, v0, Lg32;->a:I

    .line 553
    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    return-object v0

    .line 559
    :pswitch_e
    check-cast v0, Lec3;

    .line 560
    .line 561
    move-object/from16 v0, p2

    .line 562
    .line 563
    check-cast v0, Lh32;

    .line 564
    .line 565
    iget v0, v0, Lh32;->a:I

    .line 566
    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    return-object v0

    .line 572
    :pswitch_f
    check-cast v0, Lec3;

    .line 573
    .line 574
    move-object/from16 v0, p2

    .line 575
    .line 576
    check-cast v0, Lf32;

    .line 577
    .line 578
    iget v0, v0, Lf32;->a:F

    .line 579
    .line 580
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    return-object v0

    .line 585
    :pswitch_10
    check-cast v0, Lec3;

    .line 586
    .line 587
    move-object/from16 v1, p2

    .line 588
    .line 589
    check-cast v1, Li32;

    .line 590
    .line 591
    iget v2, v1, Li32;->a:F

    .line 592
    .line 593
    new-instance v3, Lf32;

    .line 594
    .line 595
    invoke-direct {v3, v2}, Lf32;-><init>(F)V

    .line 596
    .line 597
    .line 598
    sget-object v2, Lid3;->B:Lhd3;

    .line 599
    .line 600
    invoke-static {v3, v2, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    iget v3, v1, Li32;->b:I

    .line 605
    .line 606
    new-instance v4, Lh32;

    .line 607
    .line 608
    invoke-direct {v4, v3}, Lh32;-><init>(I)V

    .line 609
    .line 610
    .line 611
    sget-object v3, Lid3;->C:Lhd3;

    .line 612
    .line 613
    invoke-static {v4, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    iget v1, v1, Li32;->c:I

    .line 618
    .line 619
    new-instance v4, Lg32;

    .line 620
    .line 621
    invoke-direct {v4, v1}, Lg32;-><init>(I)V

    .line 622
    .line 623
    .line 624
    sget-object v1, Lid3;->D:Lhd3;

    .line 625
    .line 626
    invoke-static {v4, v1, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    return-object v0

    .line 639
    :pswitch_11
    check-cast v0, Lec3;

    .line 640
    .line 641
    move-object/from16 v0, p2

    .line 642
    .line 643
    check-cast v0, Ld72;

    .line 644
    .line 645
    iget-object v0, v0, Ld72;->a:Ljava/util/Locale;

    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    return-object v0

    .line 652
    :pswitch_12
    check-cast v0, Lec3;

    .line 653
    .line 654
    move-object/from16 v1, p2

    .line 655
    .line 656
    check-cast v1, Le72;

    .line 657
    .line 658
    iget-object v1, v1, Le72;->n:Ljava/util/List;

    .line 659
    .line 660
    new-instance v3, Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    .line 668
    .line 669
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    :goto_3
    if-ge v2, v4, :cond_7

    .line 674
    .line 675
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    check-cast v5, Ld72;

    .line 680
    .line 681
    sget-object v6, Lid3;->z:Lxh1;

    .line 682
    .line 683
    invoke-static {v5, v6, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    add-int/lit8 v2, v2, 0x1

    .line 691
    .line 692
    goto :goto_3

    .line 693
    :cond_7
    return-object v3

    .line 694
    :pswitch_13
    check-cast v0, Lec3;

    .line 695
    .line 696
    move-object/from16 v1, p2

    .line 697
    .line 698
    check-cast v1, Lef;

    .line 699
    .line 700
    iget-object v2, v1, Lef;->a:Ljava/lang/Object;

    .line 701
    .line 702
    instance-of v4, v2, Lqs2;

    .line 703
    .line 704
    if-eqz v4, :cond_8

    .line 705
    .line 706
    sget-object v4, Lhf;->n:Lhf;

    .line 707
    .line 708
    goto :goto_4

    .line 709
    :cond_8
    instance-of v4, v2, Liq3;

    .line 710
    .line 711
    if-eqz v4, :cond_9

    .line 712
    .line 713
    sget-object v4, Lhf;->o:Lhf;

    .line 714
    .line 715
    goto :goto_4

    .line 716
    :cond_9
    instance-of v4, v2, Lwa4;

    .line 717
    .line 718
    if-eqz v4, :cond_a

    .line 719
    .line 720
    sget-object v4, Lhf;->p:Lhf;

    .line 721
    .line 722
    goto :goto_4

    .line 723
    :cond_a
    instance-of v4, v2, Lb84;

    .line 724
    .line 725
    if-eqz v4, :cond_b

    .line 726
    .line 727
    sget-object v4, Lhf;->q:Lhf;

    .line 728
    .line 729
    goto :goto_4

    .line 730
    :cond_b
    instance-of v4, v2, Lq32;

    .line 731
    .line 732
    if-eqz v4, :cond_c

    .line 733
    .line 734
    sget-object v4, Lhf;->r:Lhf;

    .line 735
    .line 736
    goto :goto_4

    .line 737
    :cond_c
    instance-of v4, v2, Lp32;

    .line 738
    .line 739
    if-eqz v4, :cond_d

    .line 740
    .line 741
    sget-object v4, Lhf;->s:Lhf;

    .line 742
    .line 743
    goto :goto_4

    .line 744
    :cond_d
    instance-of v4, v2, Lws3;

    .line 745
    .line 746
    if-eqz v4, :cond_e

    .line 747
    .line 748
    sget-object v4, Lhf;->t:Lhf;

    .line 749
    .line 750
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    packed-switch v5, :pswitch_data_1

    .line 755
    .line 756
    .line 757
    invoke-static {}, Lp61;->x()V

    .line 758
    .line 759
    .line 760
    goto :goto_6

    .line 761
    :pswitch_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    check-cast v2, Lws3;

    .line 765
    .line 766
    iget-object v0, v2, Lws3;->a:Ljava/lang/String;

    .line 767
    .line 768
    goto :goto_5

    .line 769
    :pswitch_15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    check-cast v2, Lp32;

    .line 773
    .line 774
    sget-object v3, Lid3;->f:Lxh1;

    .line 775
    .line 776
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    goto :goto_5

    .line 781
    :pswitch_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    check-cast v2, Lq32;

    .line 785
    .line 786
    sget-object v3, Lid3;->e:Lxh1;

    .line 787
    .line 788
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    goto :goto_5

    .line 793
    :pswitch_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    .line 795
    .line 796
    check-cast v2, Lb84;

    .line 797
    .line 798
    sget-object v3, Lid3;->d:Lxh1;

    .line 799
    .line 800
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    goto :goto_5

    .line 805
    :pswitch_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    check-cast v2, Lwa4;

    .line 809
    .line 810
    sget-object v3, Lid3;->c:Lxh1;

    .line 811
    .line 812
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    goto :goto_5

    .line 817
    :pswitch_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    .line 819
    .line 820
    check-cast v2, Liq3;

    .line 821
    .line 822
    sget-object v3, Lid3;->h:Lxh1;

    .line 823
    .line 824
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    goto :goto_5

    .line 829
    :pswitch_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    check-cast v2, Lqs2;

    .line 833
    .line 834
    sget-object v3, Lid3;->g:Lxh1;

    .line 835
    .line 836
    invoke-static {v2, v3, v0}, Lid3;->a(Ljava/lang/Object;Lbd3;Lec3;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    :goto_5
    iget v2, v1, Lef;->b:I

    .line 841
    .line 842
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    iget v3, v1, Lef;->c:I

    .line 847
    .line 848
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    iget-object v1, v1, Lef;->d:Ljava/lang/String;

    .line 853
    .line 854
    filled-new-array {v4, v0, v2, v3, v1}, [Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    goto :goto_6

    .line 863
    :cond_e
    invoke-static {}, Lp61;->b()V

    .line 864
    .line 865
    .line 866
    :goto_6
    return-object v3

    .line 867
    :pswitch_1b
    check-cast v0, Lec3;

    .line 868
    .line 869
    move-object/from16 v0, p2

    .line 870
    .line 871
    check-cast v0, Lgo2;

    .line 872
    .line 873
    if-nez v0, :cond_f

    .line 874
    .line 875
    goto :goto_7

    .line 876
    :cond_f
    iget-wide v1, v0, Lgo2;->a:J

    .line 877
    .line 878
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    invoke-static {v1, v2, v3, v4}, Lgo2;->b(JJ)Z

    .line 884
    .line 885
    .line 886
    move-result v2

    .line 887
    :goto_7
    if-eqz v2, :cond_10

    .line 888
    .line 889
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 890
    .line 891
    goto :goto_8

    .line 892
    :cond_10
    iget-wide v1, v0, Lgo2;->a:J

    .line 893
    .line 894
    const/16 v3, 0x20

    .line 895
    .line 896
    shr-long/2addr v1, v3

    .line 897
    long-to-int v1, v1

    .line 898
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    iget-wide v2, v0, Lgo2;->a:J

    .line 907
    .line 908
    const-wide v4, 0xffffffffL

    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    and-long/2addr v2, v4

    .line 914
    long-to-int v0, v2

    .line 915
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    filled-new-array {v1, v0}, [Ljava/lang/Float;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-static {v0}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    :goto_8
    return-object v0

    .line 932
    nop

    .line 933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
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

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
