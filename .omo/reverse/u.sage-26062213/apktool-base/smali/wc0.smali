.class public final synthetic Lwc0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lwc0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lwc0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lwc0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lwc0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcg4;->n:Lcg4;

    .line 9
    .line 10
    iget-object v3, p0, Lwc0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Ldh4;

    .line 13
    .line 14
    iget-object p0, p0, Lwc0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lhh4;

    .line 17
    .line 18
    iget-object v4, p0, Lhh4;->l:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, p0, Lhh4;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, p0, Lhh4;->i:Lqg4;

    .line 23
    .line 24
    iget-object v7, p0, Lhh4;->a:Log4;

    .line 25
    .line 26
    const-string v8, "Worker result FAILURE for "

    .line 27
    .line 28
    instance-of v9, v3, Lbh4;

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    if-eqz v9, :cond_7

    .line 32
    .line 33
    check-cast v3, Lbh4;

    .line 34
    .line 35
    iget-object v2, v3, Lbh4;->a:Lu42;

    .line 36
    .line 37
    invoke-virtual {v6, v5}, Lqg4;->b(Ljava/lang/String;)Lcg4;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v9, p0, Lhh4;->h:Landroidx/work/impl/WorkDatabase;

    .line 42
    .line 43
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->v()Ljg4;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v9, v9, Ljg4;->a:Lga3;

    .line 51
    .line 52
    new-instance v11, Lao0;

    .line 53
    .line 54
    const/16 v12, 0xd

    .line 55
    .line 56
    invoke-direct {v11, v5, v12}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v9, v1, v10, v11}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    sget-object v9, Lcg4;->o:Lcg4;

    .line 67
    .line 68
    if-ne v3, v9, :cond_6

    .line 69
    .line 70
    instance-of v3, v2, Lt42;

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    sget-object v3, Lih4;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {}, Lt72;->g()Lt72;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v11, "Worker result SUCCESS for "

    .line 83
    .line 84
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v8, v3, v4}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Log4;->c()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-virtual {p0}, Lhh4;->c()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_1
    sget-object v3, Lcg4;->p:Lcg4;

    .line 109
    .line 110
    invoke-virtual {v6, v3, v5}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    check-cast v2, Lt42;

    .line 114
    .line 115
    iget-object v2, v2, Lt42;->a:Lzl0;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v3, v6, Lqg4;->a:Lga3;

    .line 121
    .line 122
    new-instance v4, Lq14;

    .line 123
    .line 124
    const/4 v7, 0x7

    .line 125
    invoke-direct {v4, v7, v2, v5}, Lq14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v1, v10, v4}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lhh4;->f:Lpr3;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    iget-object p0, p0, Lhh4;->j:Ljs0;

    .line 141
    .line 142
    invoke-virtual {p0, v5}, Ljs0;->a(Ljava/lang/String;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_c

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Lqg4;->b(Ljava/lang/String;)Lcg4;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    sget-object v8, Lcg4;->r:Lcg4;

    .line 167
    .line 168
    if-ne v7, v8, :cond_2

    .line 169
    .line 170
    iget-object v7, p0, Ljs0;->a:Lga3;

    .line 171
    .line 172
    new-instance v8, Lao0;

    .line 173
    .line 174
    const/4 v9, 0x3

    .line 175
    invoke-direct {v8, v5, v9}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v7, v10, v1, v8}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_2

    .line 189
    .line 190
    sget-object v7, Lih4;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {}, Lt72;->g()Lt72;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    const-string v9, "Setting status to enqueued for "

    .line 197
    .line 198
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v8, v7, v9}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v0, v5}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v2, v3, v5}, Lqg4;->g(JLjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_3
    instance-of v0, v2, Ls42;

    .line 213
    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {}, Lt72;->g()Lt72;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v3, "Worker result RETRY for "

    .line 225
    .line 226
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v1, v0, v2}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/16 v0, -0x100

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lhh4;->b(I)V

    .line 242
    .line 243
    .line 244
    :goto_1
    move v1, v10

    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_4
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {}, Lt72;->g()Lt72;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v3, v0, v4}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Log4;->c()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_5

    .line 273
    .line 274
    invoke-virtual {p0}, Lhh4;->c()V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_5
    invoke-virtual {p0, v2}, Lhh4;->d(Lu42;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_6
    invoke-virtual {v3}, Lcg4;->a()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_c

    .line 289
    .line 290
    const/16 v0, -0x200

    .line 291
    .line 292
    invoke-virtual {p0, v0}, Lhh4;->b(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_7
    instance-of v9, v3, Lah4;

    .line 297
    .line 298
    if-eqz v9, :cond_9

    .line 299
    .line 300
    check-cast v3, Lah4;

    .line 301
    .line 302
    iget-object v0, v3, Lah4;->a:Lu42;

    .line 303
    .line 304
    sget-object v2, Lih4;->a:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {}, Lt72;->g()Lt72;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v3, v2, v4}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7}, Log4;->c()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_8

    .line 330
    .line 331
    invoke-virtual {p0}, Lhh4;->c()V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_8
    invoke-virtual {p0, v0}, Lhh4;->d(Lu42;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :cond_9
    instance-of v4, v3, Lch4;

    .line 342
    .line 343
    if-eqz v4, :cond_d

    .line 344
    .line 345
    check-cast v3, Lch4;

    .line 346
    .line 347
    iget v2, v3, Lch4;->a:I

    .line 348
    .line 349
    const-string v3, " is "

    .line 350
    .line 351
    const-string v4, "Status for "

    .line 352
    .line 353
    iget-object v8, v7, Log4;->y:Ljava/lang/Boolean;

    .line 354
    .line 355
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 356
    .line 357
    invoke-static {v8, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_a

    .line 362
    .line 363
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {}, Lt72;->g()Lt72;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v4, "Worker "

    .line 372
    .line 373
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object v4, v7, Log4;->c:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v4, " was interrupted. Backing off."

    .line 382
    .line 383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v1, v0, v3}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0, v2}, Lhh4;->b(I)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_1

    .line 397
    .line 398
    :cond_a
    invoke-virtual {v6, v5}, Lqg4;->b(Ljava/lang/String;)Lcg4;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    if-eqz p0, :cond_b

    .line 403
    .line 404
    invoke-virtual {p0}, Lcg4;->a()Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-nez v7, :cond_b

    .line 409
    .line 410
    sget-object v1, Lih4;->a:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {}, Lt72;->g()Lt72;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p0, "; not doing any work and rescheduling for later execution"

    .line 431
    .line 432
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-virtual {v7, v1, p0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v0, v5}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v2, v5}, Lqg4;->i(ILjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-wide/16 v0, -0x1

    .line 449
    .line 450
    invoke-virtual {v6, v0, v1, v5}, Lqg4;->e(JLjava/lang/String;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :cond_b
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {}, Lt72;->g()Lt72;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string p0, " ; not doing any work"

    .line 476
    .line 477
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    invoke-virtual {v2, v0, p0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :cond_c
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    goto :goto_3

    .line 492
    :cond_d
    invoke-static {}, Lp61;->x()V

    .line 493
    .line 494
    .line 495
    :goto_3
    return-object v2

    .line 496
    :pswitch_0
    iget-object v0, p0, Lwc0;->b:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v0, Ls61;

    .line 499
    .line 500
    iget-object p0, p0, Lwc0;->c:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast p0, Lo00;

    .line 503
    .line 504
    iget-object v0, v0, Ls61;->h:Ljd0;

    .line 505
    .line 506
    iget-object v3, v0, Ljd0;->b:Ljava/lang/Object;

    .line 507
    .line 508
    monitor-enter v3

    .line 509
    :try_start_0
    iget-object v0, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 510
    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const-string v1, "fetch_timeout_in_seconds"

    .line 516
    .line 517
    const-wide/16 v4, 0x3c

    .line 518
    .line 519
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    const-string v1, "minimum_fetch_interval_in_seconds"

    .line 524
    .line 525
    iget-wide v4, p0, Lo00;->b:J

    .line 526
    .line 527
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    .line 533
    .line 534
    monitor-exit v3

    .line 535
    return-object v2

    .line 536
    :catchall_0
    move-exception p0

    .line 537
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    throw p0

    .line 539
    :pswitch_1
    iget-object v0, p0, Lwc0;->b:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v0, Lyc0;

    .line 542
    .line 543
    iget-object p0, p0, Lwc0;->c:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast p0, Lad0;

    .line 546
    .line 547
    iget-object v0, v0, Lyc0;->b:Lkd0;

    .line 548
    .line 549
    monitor-enter v0

    .line 550
    :try_start_1
    iget-object v3, v0, Lkd0;->a:Landroid/content/Context;

    .line 551
    .line 552
    iget-object v4, v0, Lkd0;->b:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 555
    .line 556
    .line 557
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 558
    :try_start_2
    iget-object p0, p0, Lad0;->a:Lorg/json/JSONObject;

    .line 559
    .line 560
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    const-string v3, "UTF-8"

    .line 565
    .line 566
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 571
    .line 572
    .line 573
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 574
    .line 575
    .line 576
    monitor-exit v0

    .line 577
    return-object v2

    .line 578
    :catchall_1
    move-exception p0

    .line 579
    goto :goto_4

    .line 580
    :catchall_2
    move-exception p0

    .line 581
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 582
    .line 583
    .line 584
    throw p0

    .line 585
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 586
    throw p0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
