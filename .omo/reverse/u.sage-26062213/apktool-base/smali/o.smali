.class public final synthetic Lo;
.super Lof1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lo;->u:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lof1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo;->u:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    sget-object v6, Lt64;->a:Lt64;

    .line 10
    .line 11
    iget-object v0, v0, Lx10;->o:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    check-cast v0, Lwu1;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lwu1;->s(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v6

    .line 27
    :pswitch_0
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Ljava/util/Set;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v0, Lbu1;

    .line 35
    .line 36
    iget-object v1, v0, Lbu1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v0, v0, Lbu1;->c:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Iterable;

    .line 48
    .line 49
    invoke-static {v0}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    return-object v6

    .line 67
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lfo2;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    throw v5

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :pswitch_1
    move-object/from16 v1, p1

    .line 83
    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    check-cast v0, Lu/sage/a;

    .line 90
    .line 91
    iget-object v2, v0, Lu/sage/a;->q:Lbh0;

    .line 92
    .line 93
    sget-object v8, Lez3;->a:Lra3;

    .line 94
    .line 95
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    const/16 v9, 0xc8

    .line 99
    .line 100
    invoke-static {v9, v1}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    new-array v9, v7, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {v9}, Lra3;->c([Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :try_start_1
    iget-object v8, v0, Lu/sage/a;->r:Lpi1;

    .line 112
    .line 113
    const-class v9, Lq84;

    .line 114
    .line 115
    invoke-virtual {v8, v1, v9}, Lpi1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    check-cast v1, Lq84;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    new-array v8, v7, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lq84;->c()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    const/16 v10, 0x65

    .line 141
    .line 142
    if-eq v9, v10, :cond_6

    .line 143
    .line 144
    const/16 v10, 0x66

    .line 145
    .line 146
    if-eq v9, v10, :cond_4

    .line 147
    .line 148
    const/16 v10, 0x73

    .line 149
    .line 150
    if-eq v9, v10, :cond_1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    const-string v9, "s"

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-nez v8, :cond_2

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1}, Lq84;->a()Ld84;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ld84;->c()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    new-array v8, v7, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Lrd;

    .line 184
    .line 185
    invoke-direct {v8, v0, v1, v5, v3}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v5, v5, v8, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :cond_3
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const-string v2, ": handleUsageResult: STATUS_SUCCESS but data is NULL!"

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    new-array v1, v7, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-static {v1}, Lra3;->f([Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    const-string v1, "f"

    .line 216
    .line 217
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_5

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_5
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    new-array v1, v7, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lyt;

    .line 240
    .line 241
    invoke-direct {v1, v0, v5, v7}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v5, v5, v1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_6
    const-string v2, "e"

    .line 249
    .line 250
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_7

    .line 255
    .line 256
    :goto_0
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    new-array v1, v7, [Ljava/lang/Object;

    .line 260
    .line 261
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_7
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    new-array v2, v7, [Ljava/lang/Object;

    .line 276
    .line 277
    invoke-static {v2}, Lra3;->f([Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lu/sage/a;->g()Ln8;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v1}, Lq84;->b()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-nez v1, :cond_8

    .line 289
    .line 290
    const-string v1, "Unknown error"

    .line 291
    .line 292
    :cond_8
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const-string v4, "usage_refresh_failed"

    .line 297
    .line 298
    invoke-virtual {v2, v3, v4, v1}, Ln8;->c(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 306
    .line 307
    .line 308
    const-string v1, "HandleUsageResultStatusError"

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :goto_1
    iget-object v1, v0, Lu/sage/a;->t:Lir3;

    .line 314
    .line 315
    if-eqz v1, :cond_9

    .line 316
    .line 317
    invoke-virtual {v1, v5}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 318
    .line 319
    .line 320
    :cond_9
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 325
    .line 326
    .line 327
    const-string v1, "HandleUsageResult"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :catch_0
    sget-object v1, Lez3;->a:Lra3;

    .line 334
    .line 335
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    new-array v2, v7, [Ljava/lang/Object;

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    invoke-static {v2}, Lra3;->g([Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1, v7}, Lpt;->s(Z)V

    .line 351
    .line 352
    .line 353
    const-string v1, "HandleUsageResultError"

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_2
    return-object v6

    .line 359
    :pswitch_2
    move-object/from16 v1, p1

    .line 360
    .line 361
    check-cast v1, Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    check-cast v0, Lu/sage/a;

    .line 367
    .line 368
    iget-object v3, v0, Lu/sage/a;->v:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_b

    .line 375
    .line 376
    sget-object v3, Lez3;->a:Lra3;

    .line 377
    .line 378
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    const-string v9, ": [ThrottleCheck] Timer test passed. Reporting RESPONSIVE to JS."

    .line 383
    .line 384
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    new-array v7, v7, [Ljava/lang/Object;

    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    iput-object v5, v0, Lu/sage/a;->v:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v3, v0, Lu/sage/a;->u:Lir3;

    .line 398
    .line 399
    if-eqz v3, :cond_a

    .line 400
    .line 401
    invoke-virtual {v3, v5}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 402
    .line 403
    .line 404
    :cond_a
    iget-object v3, v0, Lu/sage/a;->q:Lbh0;

    .line 405
    .line 406
    new-instance v7, Lxt;

    .line 407
    .line 408
    invoke-direct {v7, v0, v1, v5, v2}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 409
    .line 410
    .line 411
    invoke-static {v3, v5, v5, v7, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 412
    .line 413
    .line 414
    :cond_b
    return-object v6

    .line 415
    :pswitch_3
    move-object/from16 v1, p1

    .line 416
    .line 417
    check-cast v1, Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    check-cast v0, Lu/sage/a;

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    sget-object v2, Lez3;->a:Lra3;

    .line 428
    .line 429
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    new-array v8, v7, [Ljava/lang/Object;

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    iput-object v1, v0, Lu/sage/a;->v:Ljava/lang/String;

    .line 441
    .line 442
    iget-object v2, v0, Lu/sage/a;->q:Lbh0;

    .line 443
    .line 444
    new-instance v8, Lxt;

    .line 445
    .line 446
    invoke-direct {v8, v0, v1, v5, v7}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 447
    .line 448
    .line 449
    invoke-static {v2, v5, v5, v8, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 450
    .line 451
    .line 452
    iget-object v7, v0, Lu/sage/a;->u:Lir3;

    .line 453
    .line 454
    if-eqz v7, :cond_c

    .line 455
    .line 456
    invoke-virtual {v7, v5}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 457
    .line 458
    .line 459
    :cond_c
    new-instance v7, Lxt;

    .line 460
    .line 461
    invoke-direct {v7, v0, v1, v5, v3}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 462
    .line 463
    .line 464
    invoke-static {v2, v5, v5, v7, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    iput-object v1, v0, Lu/sage/a;->u:Lir3;

    .line 469
    .line 470
    return-object v6

    .line 471
    :pswitch_4
    move-object/from16 v1, p1

    .line 472
    .line 473
    check-cast v1, Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    check-cast v0, Lu/sage/a;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    .line 484
    .line 485
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    const-string v1, "reqId"

    .line 489
    .line 490
    const-string v3, ""

    .line 491
    .line 492
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    sget-object v2, Lez3;->a:Lra3;

    .line 497
    .line 498
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    new-array v3, v7, [Ljava/lang/Object;

    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-static {v3}, Lra3;->m([Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    const-string v2, "JS Request"

    .line 513
    .line 514
    invoke-virtual {v0, v1, v2}, Lu/sage/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 515
    .line 516
    .line 517
    goto :goto_3

    .line 518
    :catch_1
    sget-object v1, Lez3;->a:Lra3;

    .line 519
    .line 520
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const-string v2, ": Failed to parse recreate webview JSON"

    .line 525
    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    new-array v0, v7, [Ljava/lang/Object;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-static {v0}, Lra3;->g([Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    :goto_3
    return-object v6

    .line 538
    :pswitch_5
    move-object/from16 v1, p1

    .line 539
    .line 540
    check-cast v1, Ljava/lang/Boolean;

    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    check-cast v0, Le60;

    .line 547
    .line 548
    iget-object v8, v0, Le60;->Q:Lyf2;

    .line 549
    .line 550
    if-eqz v1, :cond_d

    .line 551
    .line 552
    invoke-virtual {v0}, Le60;->O0()V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_8

    .line 556
    .line 557
    :cond_d
    iget-object v1, v0, Le60;->D:Lvf2;

    .line 558
    .line 559
    if-eqz v1, :cond_12

    .line 560
    .line 561
    iget-object v1, v8, Lyf2;->c:[Ljava/lang/Object;

    .line 562
    .line 563
    iget-object v9, v8, Lyf2;->a:[J

    .line 564
    .line 565
    array-length v10, v9

    .line 566
    sub-int/2addr v10, v2

    .line 567
    if-ltz v10, :cond_11

    .line 568
    .line 569
    move v2, v7

    .line 570
    :goto_4
    aget-wide v11, v9, v2

    .line 571
    .line 572
    not-long v13, v11

    .line 573
    const/4 v15, 0x7

    .line 574
    shl-long/2addr v13, v15

    .line 575
    and-long/2addr v13, v11

    .line 576
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    and-long/2addr v13, v15

    .line 582
    cmp-long v13, v13, v15

    .line 583
    .line 584
    if-eqz v13, :cond_10

    .line 585
    .line 586
    sub-int v13, v2, v10

    .line 587
    .line 588
    not-int v13, v13

    .line 589
    ushr-int/lit8 v13, v13, 0x1f

    .line 590
    .line 591
    const/16 v14, 0x8

    .line 592
    .line 593
    rsub-int/lit8 v13, v13, 0x8

    .line 594
    .line 595
    move v15, v7

    .line 596
    :goto_5
    if-ge v15, v13, :cond_f

    .line 597
    .line 598
    const-wide/16 v16, 0xff

    .line 599
    .line 600
    and-long v16, v11, v16

    .line 601
    .line 602
    const-wide/16 v18, 0x80

    .line 603
    .line 604
    cmp-long v16, v16, v18

    .line 605
    .line 606
    if-gez v16, :cond_e

    .line 607
    .line 608
    shl-int/lit8 v16, v2, 0x3

    .line 609
    .line 610
    add-int v16, v16, v15

    .line 611
    .line 612
    aget-object v16, v1, v16

    .line 613
    .line 614
    move-object/from16 v3, v16

    .line 615
    .line 616
    check-cast v3, Lhy2;

    .line 617
    .line 618
    move/from16 p0, v14

    .line 619
    .line 620
    invoke-virtual {v0}, Lmd2;->u0()Lqi0;

    .line 621
    .line 622
    .line 623
    move-result-object v14

    .line 624
    move-object/from16 v16, v1

    .line 625
    .line 626
    new-instance v1, Lt;

    .line 627
    .line 628
    invoke-direct {v1, v0, v3, v5, v7}, Lt;-><init>(Le60;Lhy2;Ldh0;I)V

    .line 629
    .line 630
    .line 631
    invoke-static {v14, v5, v5, v1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 632
    .line 633
    .line 634
    goto :goto_6

    .line 635
    :cond_e
    move-object/from16 v16, v1

    .line 636
    .line 637
    move/from16 p0, v14

    .line 638
    .line 639
    :goto_6
    shr-long v11, v11, p0

    .line 640
    .line 641
    add-int/lit8 v15, v15, 0x1

    .line 642
    .line 643
    move/from16 v14, p0

    .line 644
    .line 645
    move-object/from16 v1, v16

    .line 646
    .line 647
    const/4 v3, 0x1

    .line 648
    goto :goto_5

    .line 649
    :cond_f
    move-object/from16 v16, v1

    .line 650
    .line 651
    move v1, v14

    .line 652
    if-ne v13, v1, :cond_11

    .line 653
    .line 654
    goto :goto_7

    .line 655
    :cond_10
    move-object/from16 v16, v1

    .line 656
    .line 657
    :goto_7
    if-eq v2, v10, :cond_11

    .line 658
    .line 659
    add-int/lit8 v2, v2, 0x1

    .line 660
    .line 661
    move-object/from16 v1, v16

    .line 662
    .line 663
    const/4 v3, 0x1

    .line 664
    goto :goto_4

    .line 665
    :cond_11
    iget-object v1, v0, Le60;->S:Lhy2;

    .line 666
    .line 667
    if-eqz v1, :cond_12

    .line 668
    .line 669
    invoke-virtual {v0}, Lmd2;->u0()Lqi0;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    new-instance v3, Lt;

    .line 674
    .line 675
    const/4 v7, 0x1

    .line 676
    invoke-direct {v3, v0, v1, v5, v7}, Lt;-><init>(Le60;Lhy2;Ldh0;I)V

    .line 677
    .line 678
    .line 679
    invoke-static {v2, v5, v5, v3, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 680
    .line 681
    .line 682
    :cond_12
    invoke-virtual {v8}, Lyf2;->a()V

    .line 683
    .line 684
    .line 685
    iput-object v5, v0, Le60;->S:Lhy2;

    .line 686
    .line 687
    :goto_8
    return-object v6

    .line 688
    nop

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
