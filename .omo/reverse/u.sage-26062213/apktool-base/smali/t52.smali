.class public final synthetic Lt52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lt52;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvn2;)V
    .locals 0

    .line 1
    const/16 p1, 0xe

    .line 2
    .line 3
    iput p1, p0, Lt52;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 100

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lt52;->n:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcw0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Lcw0;-><init>(F)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lnl3;

    .line 18
    .line 19
    invoke-direct {v0}, Lnl3;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    new-instance v0, Lt32;

    .line 24
    .line 25
    sget-object v1, Lys3;->a:Lys3;

    .line 26
    .line 27
    sget-object v1, Luy2;->a:Luy2;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lt32;-><init>(Llx1;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_2
    :try_start_0
    new-array v0, v1, [Lwn0;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0}, Lci3;->J(Ljava/util/Iterator;)Lai3;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lci3;->M(Lai3;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lk30;->F(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :pswitch_3
    :try_start_1
    new-instance v0, Ljo2;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    filled-new-array {v0}, [Ljo2;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    invoke-static {v0}, Lci3;->J(Ljava/util/Iterator;)Lai3;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lci3;->M(Lai3;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lk30;->F(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v1

    .line 108
    :pswitch_4
    sget-object v0, Lzg3;->a:Llc0;

    .line 109
    .line 110
    return-object v2

    .line 111
    :pswitch_5
    new-instance v0, Llf3;

    .line 112
    .line 113
    invoke-direct {v0, v1}, Llf3;-><init>(I)V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :pswitch_6
    sget-object v0, Lkc3;->a:Lis3;

    .line 118
    .line 119
    return-object v2

    .line 120
    :pswitch_7
    new-instance v0, Lgc3;

    .line 121
    .line 122
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1}, Lgc3;-><init>(Ljava/util/Map;)V

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_8
    sget-object v0, Lb93;->a:Llc0;

    .line 132
    .line 133
    sget-object v0, Lzf5;->f:Lp93;

    .line 134
    .line 135
    return-object v0

    .line 136
    :pswitch_9
    sget-object v0, Lvi3;->b:Lnv3;

    .line 137
    .line 138
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/util/List;

    .line 143
    .line 144
    new-instance v3, Llh0;

    .line 145
    .line 146
    const/16 v4, 0xd

    .line 147
    .line 148
    invoke-direct {v3, v4}, Llh0;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v3}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-gtz v4, :cond_0

    .line 165
    .line 166
    move-object v2, v3

    .line 167
    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lmk0;->b()V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-object v2

    .line 179
    :pswitch_a
    sget-object v0, Lvi3;->a:Lnv3;

    .line 180
    .line 181
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ljava/util/List;

    .line 186
    .line 187
    new-instance v2, Llh0;

    .line 188
    .line 189
    const/16 v3, 0xc

    .line 190
    .line 191
    invoke-direct {v2, v3}, Llh0;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    :goto_1
    if-ge v1, v3, :cond_1

    .line 208
    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Ljo2;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v4, Lkl2;

    .line 219
    .line 220
    new-instance v5, Lt52;

    .line 221
    .line 222
    const/16 v6, 0xf

    .line 223
    .line 224
    invoke-direct {v5, v6}, Lt52;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v4, v5}, Lkl2;-><init>(Lt52;)V

    .line 228
    .line 229
    .line 230
    const-class v5, La84;

    .line 231
    .line 232
    invoke-static {v5}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    new-instance v6, Ljs2;

    .line 237
    .line 238
    invoke-direct {v6, v4, v5}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_1
    return-object v2

    .line 248
    :pswitch_b
    sget v0, Lex2;->a:I

    .line 249
    .line 250
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 251
    .line 252
    return-object v0

    .line 253
    :pswitch_c
    new-instance v0, Lor2;

    .line 254
    .line 255
    invoke-direct {v0}, Lor2;-><init>()V

    .line 256
    .line 257
    .line 258
    return-object v0

    .line 259
    :pswitch_d
    new-instance v0, Lio2;

    .line 260
    .line 261
    invoke-direct {v0}, Lio2;-><init>()V

    .line 262
    .line 263
    .line 264
    new-instance v1, Lt10;

    .line 265
    .line 266
    invoke-direct {v1, v0}, Lt10;-><init>(Lio2;)V

    .line 267
    .line 268
    .line 269
    return-object v1

    .line 270
    :pswitch_e
    sget-object v4, Lit3;->S:Lit3;

    .line 271
    .line 272
    new-array v0, v1, [Lgi3;

    .line 273
    .line 274
    const-string v3, "kotlin.Unit"

    .line 275
    .line 276
    invoke-static {v3}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    if-nez v5, :cond_4

    .line 281
    .line 282
    sget-object v5, Lit3;->P:Lit3;

    .line 283
    .line 284
    if-eq v4, v5, :cond_2

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_2
    const/4 v1, 0x1

    .line 288
    :goto_2
    if-nez v1, :cond_3

    .line 289
    .line 290
    new-instance v7, Lj50;

    .line 291
    .line 292
    invoke-direct {v7, v3}, Lj50;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Lii3;

    .line 296
    .line 297
    iget-object v1, v7, Lj50;->b:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-static {v0}, Lji;->c0([Ljava/lang/Object;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-direct/range {v2 .. v7}, Lii3;-><init>(Ljava/lang/String;Ldm0;ILjava/util/List;Lj50;)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_3
    const-string v0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 312
    .line 313
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_4
    const-string v0, "Blank serial names are prohibited"

    .line 318
    .line 319
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :goto_3
    return-object v2

    .line 323
    :pswitch_f
    sget-object v0, Ln64;->a:Ln64;

    .line 324
    .line 325
    return-object v0

    .line 326
    :pswitch_10
    sget-object v0, Lb10;->a:Lco0;

    .line 327
    .line 328
    return-object v0

    .line 329
    :pswitch_11
    sget v0, Lzj2;->a:F

    .line 330
    .line 331
    sget-object v0, Ltp0;->a:Ltp0;

    .line 332
    .line 333
    return-object v0

    .line 334
    :pswitch_12
    new-instance v0, Lvq1;

    .line 335
    .line 336
    invoke-direct {v0, v1}, Lvq1;-><init>(I)V

    .line 337
    .line 338
    .line 339
    new-instance v1, Lz82;

    .line 340
    .line 341
    const/4 v2, 0x3

    .line 342
    invoke-direct {v1, v2}, Lz82;-><init>(I)V

    .line 343
    .line 344
    .line 345
    const-class v2, Lzh2;

    .line 346
    .line 347
    invoke-static {v2}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v0, v2, v1}, Lvq1;->a(Li50;Lpe1;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lvq1;->c()Lu6;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    return-object v0

    .line 359
    :pswitch_13
    new-instance v0, Lzc3;

    .line 360
    .line 361
    invoke-direct {v0}, Lzc3;-><init>()V

    .line 362
    .line 363
    .line 364
    return-object v0

    .line 365
    :pswitch_14
    new-instance v0, Lua2;

    .line 366
    .line 367
    const/16 v98, -0x1

    .line 368
    .line 369
    const v99, 0xffff

    .line 370
    .line 371
    .line 372
    const-wide/16 v2, 0x0

    .line 373
    .line 374
    const-wide/16 v4, 0x0

    .line 375
    .line 376
    const-wide/16 v6, 0x0

    .line 377
    .line 378
    const-wide/16 v8, 0x0

    .line 379
    .line 380
    const-wide/16 v10, 0x0

    .line 381
    .line 382
    const-wide/16 v12, 0x0

    .line 383
    .line 384
    const-wide/16 v14, 0x0

    .line 385
    .line 386
    const-wide/16 v16, 0x0

    .line 387
    .line 388
    const-wide/16 v18, 0x0

    .line 389
    .line 390
    const-wide/16 v20, 0x0

    .line 391
    .line 392
    const-wide/16 v22, 0x0

    .line 393
    .line 394
    const-wide/16 v24, 0x0

    .line 395
    .line 396
    const-wide/16 v26, 0x0

    .line 397
    .line 398
    const-wide/16 v28, 0x0

    .line 399
    .line 400
    const-wide/16 v30, 0x0

    .line 401
    .line 402
    const-wide/16 v32, 0x0

    .line 403
    .line 404
    const-wide/16 v34, 0x0

    .line 405
    .line 406
    const-wide/16 v36, 0x0

    .line 407
    .line 408
    const-wide/16 v38, 0x0

    .line 409
    .line 410
    const-wide/16 v40, 0x0

    .line 411
    .line 412
    const-wide/16 v42, 0x0

    .line 413
    .line 414
    const-wide/16 v44, 0x0

    .line 415
    .line 416
    const-wide/16 v46, 0x0

    .line 417
    .line 418
    const-wide/16 v48, 0x0

    .line 419
    .line 420
    const-wide/16 v50, 0x0

    .line 421
    .line 422
    const-wide/16 v52, 0x0

    .line 423
    .line 424
    const-wide/16 v54, 0x0

    .line 425
    .line 426
    const-wide/16 v56, 0x0

    .line 427
    .line 428
    const-wide/16 v58, 0x0

    .line 429
    .line 430
    const-wide/16 v60, 0x0

    .line 431
    .line 432
    const-wide/16 v62, 0x0

    .line 433
    .line 434
    const-wide/16 v64, 0x0

    .line 435
    .line 436
    const-wide/16 v66, 0x0

    .line 437
    .line 438
    const-wide/16 v68, 0x0

    .line 439
    .line 440
    const-wide/16 v70, 0x0

    .line 441
    .line 442
    const-wide/16 v72, 0x0

    .line 443
    .line 444
    const-wide/16 v74, 0x0

    .line 445
    .line 446
    const-wide/16 v76, 0x0

    .line 447
    .line 448
    const-wide/16 v78, 0x0

    .line 449
    .line 450
    const-wide/16 v80, 0x0

    .line 451
    .line 452
    const-wide/16 v82, 0x0

    .line 453
    .line 454
    const-wide/16 v84, 0x0

    .line 455
    .line 456
    const-wide/16 v86, 0x0

    .line 457
    .line 458
    const-wide/16 v88, 0x0

    .line 459
    .line 460
    const-wide/16 v90, 0x0

    .line 461
    .line 462
    const-wide/16 v92, 0x0

    .line 463
    .line 464
    const-wide/16 v94, 0x0

    .line 465
    .line 466
    const-wide/16 v96, 0x0

    .line 467
    .line 468
    invoke-static/range {v2 .. v99}, La80;->e(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Ly70;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    new-instance v2, Le54;

    .line 473
    .line 474
    invoke-direct {v2}, Le54;-><init>()V

    .line 475
    .line 476
    .line 477
    new-instance v3, Lnl3;

    .line 478
    .line 479
    invoke-direct {v3}, Lnl3;-><init>()V

    .line 480
    .line 481
    .line 482
    sget-object v4, Lee2;->a:Lee2;

    .line 483
    .line 484
    invoke-direct {v0, v1, v2, v3, v4}, Lua2;-><init>(Ly70;Le54;Lnl3;Lee2;)V

    .line 485
    .line 486
    .line 487
    return-object v0

    .line 488
    :pswitch_15
    sget-object v0, Lwa2;->a:Lis3;

    .line 489
    .line 490
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 491
    .line 492
    return-object v0

    .line 493
    :pswitch_16
    sget-object v0, Lc72;->a:Llc0;

    .line 494
    .line 495
    return-object v2

    .line 496
    :pswitch_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 497
    .line 498
    const-string v1, "CompositionLocal LocalSavedStateRegistryOwner not present"

    .line 499
    .line 500
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :pswitch_18
    sget-object v0, La72;->a:Lis3;

    .line 505
    .line 506
    sget-object v0, Lw13;->E:Lw13;

    .line 507
    .line 508
    return-object v0

    .line 509
    :pswitch_19
    sget-object v0, Ly62;->a:Llc0;

    .line 510
    .line 511
    return-object v2

    .line 512
    :pswitch_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 513
    .line 514
    const-string v1, "CompositionLocal LocalLifecycleOwner not present"

    .line 515
    .line 516
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v0

    .line 520
    :pswitch_1b
    sget-object v0, Lcj;->a:Lcj;

    .line 521
    .line 522
    return-object v0

    .line 523
    :pswitch_1c
    sget-object v0, Lu52;->a:Lis3;

    .line 524
    .line 525
    sget-object v0, Lsi;->a:Lsi;

    .line 526
    .line 527
    return-object v0

    .line 528
    nop

    .line 529
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
