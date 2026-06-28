.class public final Leb5;
.super Lta5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static final y(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Le05;->t:Ld05;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v2
.end method


# virtual methods
.method public final w(Ljava/lang/String;)Lcb5;
    .locals 13

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    iget-object v1, p0, Lta5;->b:Lpb5;

    .line 6
    .line 7
    iget-object v2, v1, Lpb5;->c:Lat4;

    .line 8
    .line 9
    iget-object v3, v1, Lpb5;->a:Lw35;

    .line 10
    .line 11
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v4, Lv75;->o:Lv75;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v2, :cond_e

    .line 22
    .line 23
    invoke-virtual {v2}, Lm25;->z()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lf55;->u()Ld55;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lpn4;->b()V

    .line 36
    .line 37
    .line 38
    iget-object v7, v6, Lpn4;->o:Lrn4;

    .line 39
    .line 40
    check-cast v7, Lf55;

    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    invoke-virtual {v7, v8}, Lf55;->z(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lm25;->t()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-static {v7}, Le55;->a(I)Le55;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Le55;

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ld55;->g(Le55;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lm25;->F()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const/4 v10, 0x3

    .line 75
    if-nez v9, :cond_1

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    iget-object v1, v1, Lpb5;->c:Lat4;

    .line 80
    .line 81
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Lat4;->z0(Ljava/lang/String;)Lm25;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_d

    .line 89
    .line 90
    invoke-virtual {v9}, Ln15;->H()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    const/16 v12, 0x64

    .line 95
    .line 96
    if-eqz v11, :cond_2

    .line 97
    .line 98
    invoke-virtual {v9}, Ln15;->I()Lc25;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v11}, Lc25;->t()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eq v11, v12, :cond_4

    .line 107
    .line 108
    :cond_2
    iget-object v11, v0, Lr45;->i:Lac5;

    .line 109
    .line 110
    invoke-static {v11}, Lr45;->j(Lib0;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lm25;->D()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v11, p1, v1}, Lac5;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_d

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    rem-int/2addr v1, v12

    .line 135
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v9}, Ln15;->I()Lc25;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v7}, Lc25;->t()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-lt v1, v7, :cond_4

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v6}, Lpn4;->b()V

    .line 156
    .line 157
    .line 158
    iget-object v7, v6, Lpn4;->o:Lrn4;

    .line 159
    .line 160
    check-cast v7, Lf55;

    .line 161
    .line 162
    invoke-virtual {v7, v8}, Lf55;->z(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v3, v7}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_b

    .line 177
    .line 178
    invoke-virtual {v3}, Ln15;->H()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_5

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :cond_5
    new-instance v7, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Lm25;->D()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-nez v9, :cond_6

    .line 200
    .line 201
    invoke-virtual {v2}, Lm25;->D()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const-string v11, "x-gtm-server-preview"

    .line 206
    .line 207
    invoke-virtual {v7, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-virtual {v3}, Ln15;->I()Lc25;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9}, Lc25;->u()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v2}, Lm25;->t()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    invoke-static {v11}, Le55;->a(I)Le55;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    sget-object v12, Le55;->p:Le55;

    .line 227
    .line 228
    if-eqz v11, :cond_7

    .line 229
    .line 230
    if-eq v11, v12, :cond_7

    .line 231
    .line 232
    invoke-virtual {v6, v11}, Ld55;->g(Le55;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_7
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-static {v11}, Leb5;->y(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    if-eqz v11, :cond_8

    .line 245
    .line 246
    sget-object v10, Le55;->y:Le55;

    .line 247
    .line 248
    invoke-virtual {v6, v10}, Ld55;->g(Le55;)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    if-eqz v11, :cond_a

    .line 257
    .line 258
    sget-object v10, Le55;->z:Le55;

    .line 259
    .line 260
    invoke-virtual {v6, v10}, Ld55;->g(Le55;)V

    .line 261
    .line 262
    .line 263
    :goto_1
    invoke-virtual {v3}, Ln15;->I()Lc25;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ln15;->I()Lc25;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object v0, v0, Lr45;->f:La25;

    .line 281
    .line 282
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-nez v3, :cond_9

    .line 287
    .line 288
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v0, La25;->n:Lx15;

    .line 292
    .line 293
    const-string v2, "[sgtm] Eligible for local service direct upload. appId"

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Lpn4;->b()V

    .line 299
    .line 300
    .line 301
    iget-object v0, v6, Lpn4;->o:Lrn4;

    .line 302
    .line 303
    check-cast v0, Lf55;

    .line 304
    .line 305
    const/4 v1, 0x5

    .line 306
    invoke-virtual {v0, v1}, Lf55;->z(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6}, Lpn4;->b()V

    .line 310
    .line 311
    .line 312
    iget-object v0, v6, Lpn4;->o:Lrn4;

    .line 313
    .line 314
    check-cast v0, Lf55;

    .line 315
    .line 316
    invoke-virtual {v0, v8}, Lf55;->A(I)V

    .line 317
    .line 318
    .line 319
    new-instance v5, Lcb5;

    .line 320
    .line 321
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lf55;

    .line 326
    .line 327
    sget-object v1, Lv75;->q:Lv75;

    .line 328
    .line 329
    invoke-direct {v5, v9, v7, v1, v0}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_9
    invoke-virtual {v6}, Lpn4;->b()V

    .line 334
    .line 335
    .line 336
    iget-object v1, v6, Lpn4;->o:Lrn4;

    .line 337
    .line 338
    check-cast v1, Lf55;

    .line 339
    .line 340
    const/4 v3, 0x6

    .line 341
    invoke-virtual {v1, v3}, Lf55;->A(I)V

    .line 342
    .line 343
    .line 344
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v0, La25;->n:Lx15;

    .line 348
    .line 349
    invoke-virtual {v2}, Lm25;->E()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const-string v2, "[sgtm] Local service, missing sgtm_server_url"

    .line 354
    .line 355
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_a
    iget-object v0, v0, Lr45;->f:La25;

    .line 360
    .line 361
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, La25;->n:Lx15;

    .line 365
    .line 366
    const-string v2, "[sgtm] Eligible for client side upload. appId"

    .line 367
    .line 368
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6}, Lpn4;->b()V

    .line 372
    .line 373
    .line 374
    iget-object v0, v6, Lpn4;->o:Lrn4;

    .line 375
    .line 376
    check-cast v0, Lf55;

    .line 377
    .line 378
    invoke-virtual {v0, v10}, Lf55;->z(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v12}, Ld55;->g(Le55;)V

    .line 382
    .line 383
    .line 384
    new-instance v5, Lcb5;

    .line 385
    .line 386
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Lf55;

    .line 391
    .line 392
    sget-object v1, Lv75;->r:Lv75;

    .line 393
    .line 394
    invoke-direct {v5, v9, v7, v1, v0}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 395
    .line 396
    .line 397
    goto :goto_3

    .line 398
    :cond_b
    :goto_2
    iget-object v0, v0, Lr45;->f:La25;

    .line 399
    .line 400
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, v0, La25;->n:Lx15;

    .line 404
    .line 405
    const-string v2, "[sgtm] Missing sgtm_setting in remote config. appId"

    .line 406
    .line 407
    invoke-virtual {v0, v1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6}, Lpn4;->b()V

    .line 411
    .line 412
    .line 413
    iget-object v0, v6, Lpn4;->o:Lrn4;

    .line 414
    .line 415
    check-cast v0, Lf55;

    .line 416
    .line 417
    const/4 v1, 0x4

    .line 418
    invoke-virtual {v0, v1}, Lf55;->A(I)V

    .line 419
    .line 420
    .line 421
    :goto_3
    if-eqz v5, :cond_c

    .line 422
    .line 423
    return-object v5

    .line 424
    :cond_c
    new-instance v0, Lcb5;

    .line 425
    .line 426
    invoke-virtual {p0, p1}, Leb5;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 431
    .line 432
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Lf55;

    .line 437
    .line 438
    invoke-direct {v0, p0, p1, v4, v1}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 439
    .line 440
    .line 441
    return-object v0

    .line 442
    :cond_d
    :goto_4
    invoke-virtual {v6}, Lpn4;->b()V

    .line 443
    .line 444
    .line 445
    iget-object v0, v6, Lpn4;->o:Lrn4;

    .line 446
    .line 447
    check-cast v0, Lf55;

    .line 448
    .line 449
    invoke-virtual {v0, v10}, Lf55;->A(I)V

    .line 450
    .line 451
    .line 452
    new-instance v0, Lcb5;

    .line 453
    .line 454
    invoke-virtual {p0, p1}, Leb5;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 459
    .line 460
    invoke-virtual {v6}, Lpn4;->d()Lrn4;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Lf55;

    .line 465
    .line 466
    invoke-direct {v0, p0, p1, v4, v1}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 467
    .line 468
    .line 469
    return-object v0

    .line 470
    :cond_e
    :goto_5
    new-instance v0, Lcb5;

    .line 471
    .line 472
    invoke-virtual {p0, p1}, Leb5;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 477
    .line 478
    invoke-direct {v0, p0, p1, v4, v5}, Lcb5;-><init>(Ljava/lang/String;Ljava/util/Map;Lv75;Lf55;)V

    .line 479
    .line 480
    .line 481
    return-object v0
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lta5;->b:Lpb5;

    .line 2
    .line 3
    iget-object p0, p0, Lpb5;->a:Lw35;

    .line 4
    .line 5
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lw35;->I(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Le05;->r:Ld05;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    add-int/2addr v1, v2

    .line 60
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "."

    .line 67
    .line 68
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_0
    sget-object p0, Le05;->r:Ld05;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/String;

    .line 97
    .line 98
    return-object p0
.end method
