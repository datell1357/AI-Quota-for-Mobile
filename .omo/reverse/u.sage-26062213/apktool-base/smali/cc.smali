.class public final synthetic Lcc;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lcc;->n:I

    iput-object p2, p0, Lcc;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzf5;J)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcc;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcc;->o:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcc;->n:I

    .line 4
    .line 5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcc4;

    .line 18
    .line 19
    invoke-static {v0}, Lpc3;->c(Lcc4;)Lrc3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_0
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Llc3;

    .line 27
    .line 28
    iget-object v0, v0, Llc3;->p:Lwc3;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-array v1, v6, [Ljs2;

    .line 33
    .line 34
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Ljs2;

    .line 39
    .line 40
    invoke-static {v1}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lwc3;->c(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v8, v1

    .line 55
    :cond_1
    :goto_0
    return-object v8

    .line 56
    :pswitch_1
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lec3;

    .line 59
    .line 60
    iget-object v1, v0, Lec3;->n:Lbd3;

    .line 61
    .line 62
    iget-object v2, v0, Lec3;->q:Ljava/lang/Object;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v1, v0, v2}, Lbd3;->g(Lec3;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const-string v0, "Value should be initialized"

    .line 72
    .line 73
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-object v8

    .line 77
    :pswitch_2
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ll73;

    .line 80
    .line 81
    iget-object v1, v0, Ll73;->p:Ljava/lang/ClassLoader;

    .line 82
    .line 83
    iget-object v0, v0, Ll73;->q:Lr51;

    .line 84
    .line 85
    const-string v2, ""

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v3, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    move v7, v6

    .line 111
    :cond_3
    :goto_2
    if-ge v7, v4, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    add-int/lit8 v7, v7, 0x1

    .line 118
    .line 119
    check-cast v9, Ljava/net/URL;

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const-string v11, "file"

    .line 129
    .line 130
    invoke-static {v10, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_4

    .line 135
    .line 136
    move-object v10, v8

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    sget-object v10, Lbt2;->o:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v10, Ljava/io/File;

    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v9}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    new-instance v10, Ljs2;

    .line 161
    .line 162
    invoke-direct {v10, v0, v9}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    if-eqz v10, :cond_3

    .line 166
    .line 167
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    const-string v2, "META-INF/MANIFEST.MF"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance v2, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    move v7, v6

    .line 197
    :cond_6
    :goto_4
    if-ge v7, v4, :cond_9

    .line 198
    .line 199
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    add-int/lit8 v7, v7, 0x1

    .line 204
    .line 205
    check-cast v9, Ljava/net/URL;

    .line 206
    .line 207
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    const-string v10, "jar:file:"

    .line 218
    .line 219
    invoke-static {v9, v10, v6}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    if-nez v10, :cond_7

    .line 224
    .line 225
    :goto_5
    move-object v11, v8

    .line 226
    goto :goto_6

    .line 227
    :cond_7
    const-string v10, "!"

    .line 228
    .line 229
    const/4 v11, 0x6

    .line 230
    invoke-static {v9, v11, v10}, Lzs3;->K0(Ljava/lang/String;ILjava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    const/4 v11, -0x1

    .line 235
    if-ne v10, v11, :cond_8

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_8
    sget-object v11, Lbt2;->o:Ljava/lang/String;

    .line 239
    .line 240
    new-instance v11, Ljava/io/File;

    .line 241
    .line 242
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-static {v9}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-static {v9}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    new-instance v10, Lz82;

    .line 265
    .line 266
    const/16 v11, 0x17

    .line 267
    .line 268
    invoke-direct {v10, v11}, Lz82;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v9, v0, v10}, Lai4;->c(Lbt2;Lr51;Lpe1;)Lxh4;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    sget-object v10, Ll73;->s:Lbt2;

    .line 276
    .line 277
    new-instance v11, Ljs2;

    .line 278
    .line 279
    invoke-direct {v11, v9, v10}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :goto_6
    if-eqz v11, :cond_6

    .line 283
    .line 284
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_9
    invoke-static {v3, v2}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    return-object v0

    .line 293
    :pswitch_3
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Lq94;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    return-object v0

    .line 315
    :pswitch_4
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Lh4;

    .line 318
    .line 319
    invoke-virtual {v0}, Lh4;->a()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Ljava/io/File;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    const/16 v2, 0x2e

    .line 333
    .line 334
    const-string v3, ""

    .line 335
    .line 336
    invoke-static {v1, v2, v3}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const-string v2, "preferences_pb"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_a

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_a
    const-string v1, "File extension for file: "

    .line 357
    .line 358
    const-string v2, " does not match required extension for Preferences file: preferences_pb"

    .line 359
    .line 360
    invoke-static {v0, v2, v1}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :goto_7
    return-object v8

    .line 364
    :pswitch_5
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Luo2;

    .line 367
    .line 368
    new-instance v1, Lso2;

    .line 369
    .line 370
    invoke-direct {v1, v0}, Lso2;-><init>(Luo2;)V

    .line 371
    .line 372
    .line 373
    return-object v1

    .line 374
    :pswitch_6
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v0, Lo23;

    .line 377
    .line 378
    iget-object v0, v0, Lo23;->a:Lm23;

    .line 379
    .line 380
    iget-object v0, v0, Lm23;->e:Lnv3;

    .line 381
    .line 382
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    check-cast v0, Ll23;

    .line 387
    .line 388
    return-object v0

    .line 389
    :pswitch_7
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v0, Ljava/lang/String;

    .line 392
    .line 393
    new-instance v1, Loi2;

    .line 394
    .line 395
    invoke-direct {v1, v0}, Loi2;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return-object v1

    .line 399
    :pswitch_8
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Lyh2;

    .line 402
    .line 403
    iget-object v0, v0, Lyh2;->u:Lai2;

    .line 404
    .line 405
    iget-boolean v1, v0, Lai2;->i:Z

    .line 406
    .line 407
    if-eqz v1, :cond_c

    .line 408
    .line 409
    iget-object v1, v0, Lai2;->j:Lr22;

    .line 410
    .line 411
    iget-object v1, v1, Lr22;->d:Lg22;

    .line 412
    .line 413
    sget-object v2, Lg22;->n:Lg22;

    .line 414
    .line 415
    if-eq v1, v2, :cond_b

    .line 416
    .line 417
    iget-object v1, v0, Lai2;->a:Lyh2;

    .line 418
    .line 419
    iget-object v0, v0, Lai2;->m:Lnv3;

    .line 420
    .line 421
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Lzb4;

    .line 426
    .line 427
    invoke-static {v1, v0, v5}, Lpr3;->g(Lcc4;Lzb4;I)Lwu4;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const-class v1, Lzh2;

    .line 432
    .line 433
    invoke-static {v1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Lwu4;->l(Li50;)Lvb4;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lzh2;

    .line 442
    .line 443
    iget-object v8, v0, Lzh2;->b:Lmc3;

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_b
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

    .line 447
    .line 448
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_c
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 453
    .line 454
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :goto_8
    return-object v8

    .line 458
    :pswitch_9
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, Ljv0;

    .line 461
    .line 462
    invoke-interface {v0}, Ljv0;->a()V

    .line 463
    .line 464
    .line 465
    sget-object v0, Lt64;->a:Lt64;

    .line 466
    .line 467
    return-object v0

    .line 468
    :pswitch_a
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Lu/sage/MainApplication;

    .line 471
    .line 472
    sget v1, Lu/sage/MainApplication;->t:I

    .line 473
    .line 474
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    return-object v0

    .line 479
    :pswitch_b
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lu/sage/MainActivity;

    .line 482
    .line 483
    sget v1, Lu/sage/MainActivity;->C:I

    .line 484
    .line 485
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    const-class v1, Lht4;

    .line 490
    .line 491
    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v2, Lht4;->a:Lm55;

    .line 493
    .line 494
    if-nez v2, :cond_e

    .line 495
    .line 496
    new-instance v2, Ldi2;

    .line 497
    .line 498
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    if-eqz v3, :cond_d

    .line 503
    .line 504
    move-object v0, v3

    .line 505
    :cond_d
    invoke-direct {v2, v0, v4}, Ldi2;-><init>(Landroid/content/Context;I)V

    .line 506
    .line 507
    .line 508
    new-instance v0, Lm55;

    .line 509
    .line 510
    invoke-direct {v0, v2}, Lm55;-><init>(Ldi2;)V

    .line 511
    .line 512
    .line 513
    sput-object v0, Lht4;->a:Lm55;

    .line 514
    .line 515
    goto :goto_9

    .line 516
    :catchall_0
    move-exception v0

    .line 517
    goto :goto_a

    .line 518
    :cond_e
    :goto_9
    sget-object v0, Lht4;->a:Lm55;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .line 520
    monitor-exit v1

    .line 521
    iget-object v0, v0, Lm55;->n:Lqo4;

    .line 522
    .line 523
    invoke-interface {v0}, Lqo4;->zza()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    check-cast v0, Lk05;

    .line 528
    .line 529
    return-object v0

    .line 530
    :goto_a
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    throw v0

    .line 532
    :pswitch_c
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v0, Ln12;

    .line 535
    .line 536
    invoke-virtual {v0}, Ln12;->h()Lf12;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iget v0, v0, Lf12;->n:I

    .line 541
    .line 542
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    return-object v0

    .line 547
    :pswitch_d
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v0, Lbu1;

    .line 550
    .line 551
    iget-object v0, v0, Lbu1;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 552
    .line 553
    invoke-virtual {v0}, Lga3;->j()Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-eqz v1, :cond_f

    .line 558
    .line 559
    invoke-virtual {v0}, Lga3;->m()Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_10

    .line 564
    .line 565
    :cond_f
    move v6, v7

    .line 566
    :cond_10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    return-object v0

    .line 571
    :pswitch_e
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v0, Lqi0;

    .line 574
    .line 575
    invoke-interface {v0}, Lqi0;->d()Lhi0;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-static {v0}, Lk75;->y(Lhi0;)F

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    return-object v0

    .line 588
    :pswitch_f
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v0, Leh;

    .line 591
    .line 592
    const-class v1, Landroid/app/ActivityManager;

    .line 593
    .line 594
    iget-object v0, v0, Leh;->q:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v0, Landroid/content/Context;

    .line 597
    .line 598
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    check-cast v7, Landroid/app/ActivityManager;

    .line 611
    .line 612
    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 613
    .line 614
    .line 615
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    if-eqz v7, :cond_11

    .line 617
    .line 618
    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :catch_0
    :cond_11
    const-wide/16 v9, 0x0

    .line 624
    .line 625
    cmpg-double v7, v9, v4

    .line 626
    .line 627
    if-gtz v7, :cond_13

    .line 628
    .line 629
    cmpg-double v2, v4, v2

    .line 630
    .line 631
    if-gtz v2, :cond_13

    .line 632
    .line 633
    new-instance v2, Ld90;

    .line 634
    .line 635
    const/16 v3, 0xa

    .line 636
    .line 637
    invoke-direct {v2, v3, v6}, Ld90;-><init>(IB)V

    .line 638
    .line 639
    .line 640
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    check-cast v1, Landroid/app/ActivityManager;

    .line 648
    .line 649
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 654
    .line 655
    const/high16 v3, 0x100000

    .line 656
    .line 657
    and-int/2addr v0, v3

    .line 658
    if-eqz v0, :cond_12

    .line 659
    .line 660
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    goto :goto_b

    .line 665
    :cond_12
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 666
    .line 667
    .line 668
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 669
    goto :goto_b

    .line 670
    :catch_1
    const/16 v0, 0x100

    .line 671
    .line 672
    :goto_b
    int-to-long v0, v0

    .line 673
    const-wide/32 v6, 0x100000

    .line 674
    .line 675
    .line 676
    mul-long/2addr v0, v6

    .line 677
    long-to-double v0, v0

    .line 678
    mul-double/2addr v4, v0

    .line 679
    double-to-long v0, v4

    .line 680
    new-instance v3, Lt82;

    .line 681
    .line 682
    invoke-direct {v3, v0, v1, v2}, Lt82;-><init>(JLd90;)V

    .line 683
    .line 684
    .line 685
    new-instance v8, Ls23;

    .line 686
    .line 687
    invoke-direct {v8, v3, v2}, Ls23;-><init>(Lt82;Ld90;)V

    .line 688
    .line 689
    .line 690
    goto :goto_c

    .line 691
    :cond_13
    const-string v0, "percent must be in the range [0.0, 1.0]."

    .line 692
    .line 693
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    :goto_c
    return-object v8

    .line 697
    :pswitch_10
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 698
    .line 699
    move-object v1, v0

    .line 700
    check-cast v1, Lcl1;

    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    :try_start_4
    iget-object v0, v1, Lcl1;->J:Lkl1;

    .line 706
    .line 707
    invoke-virtual {v0, v4, v6, v6}, Lkl1;->B(IZI)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 708
    .line 709
    .line 710
    goto :goto_d

    .line 711
    :catch_2
    move-exception v0

    .line 712
    sget-object v2, Ld21;->q:Ld21;

    .line 713
    .line 714
    invoke-virtual {v1, v2, v2, v0}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V

    .line 715
    .line 716
    .line 717
    :goto_d
    sget-object v0, Lt64;->a:Lt64;

    .line 718
    .line 719
    return-object v0

    .line 720
    :pswitch_11
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Ljava/util/List;

    .line 723
    .line 724
    return-object v0

    .line 725
    :pswitch_12
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, Lje1;

    .line 728
    .line 729
    iget-object v1, v0, Lje1;->o:Ljava/lang/String;

    .line 730
    .line 731
    if-eqz v1, :cond_14

    .line 732
    .line 733
    iget-boolean v2, v0, Lje1;->q:Z

    .line 734
    .line 735
    if-eqz v2, :cond_14

    .line 736
    .line 737
    new-instance v2, Ljava/io/File;

    .line 738
    .line 739
    iget-object v3, v0, Lje1;->n:Landroid/content/Context;

    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    new-instance v8, Lie1;

    .line 755
    .line 756
    iget-object v9, v0, Lje1;->n:Landroid/content/Context;

    .line 757
    .line 758
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v10

    .line 762
    new-instance v11, Ldd1;

    .line 763
    .line 764
    invoke-direct {v11, v7}, Ldd1;-><init>(I)V

    .line 765
    .line 766
    .line 767
    iget-object v12, v0, Lje1;->p:Ld90;

    .line 768
    .line 769
    iget-boolean v13, v0, Lje1;->r:Z

    .line 770
    .line 771
    invoke-direct/range {v8 .. v13}, Lie1;-><init>(Landroid/content/Context;Ljava/lang/String;Ldd1;Ld90;Z)V

    .line 772
    .line 773
    .line 774
    goto :goto_e

    .line 775
    :cond_14
    new-instance v1, Lie1;

    .line 776
    .line 777
    iget-object v2, v0, Lje1;->n:Landroid/content/Context;

    .line 778
    .line 779
    iget-object v3, v0, Lje1;->o:Ljava/lang/String;

    .line 780
    .line 781
    new-instance v4, Ldd1;

    .line 782
    .line 783
    invoke-direct {v4, v7}, Ldd1;-><init>(I)V

    .line 784
    .line 785
    .line 786
    iget-object v5, v0, Lje1;->p:Ld90;

    .line 787
    .line 788
    iget-boolean v6, v0, Lje1;->r:Z

    .line 789
    .line 790
    invoke-direct/range {v1 .. v6}, Lie1;-><init>(Landroid/content/Context;Ljava/lang/String;Ldd1;Ld90;Z)V

    .line 791
    .line 792
    .line 793
    move-object v8, v1

    .line 794
    :goto_e
    iget-boolean v0, v0, Lje1;->t:Z

    .line 795
    .line 796
    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 797
    .line 798
    .line 799
    return-object v8

    .line 800
    :pswitch_13
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Ld71;

    .line 803
    .line 804
    iget-object v0, v0, Ld71;->a:Ljava/util/concurrent/CountDownLatch;

    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 807
    .line 808
    .line 809
    sget-object v0, Lt64;->a:Lt64;

    .line 810
    .line 811
    return-object v0

    .line 812
    :pswitch_14
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v0, Ljava/io/File;

    .line 815
    .line 816
    sget-object v1, Lk51;->e:Ljava/lang/Object;

    .line 817
    .line 818
    monitor-enter v1

    .line 819
    :try_start_5
    sget-object v2, Lk51;->d:Ljava/util/LinkedHashSet;

    .line 820
    .line 821
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 826
    .line 827
    .line 828
    monitor-exit v1

    .line 829
    sget-object v0, Lt64;->a:Lt64;

    .line 830
    .line 831
    return-object v0

    .line 832
    :catchall_1
    move-exception v0

    .line 833
    monitor-exit v1

    .line 834
    throw v0

    .line 835
    :pswitch_15
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v0, Lqx0;

    .line 838
    .line 839
    new-instance v1, Lpx0;

    .line 840
    .line 841
    invoke-direct {v1, v0}, Lpx0;-><init>(Lqx0;)V

    .line 842
    .line 843
    .line 844
    return-object v1

    .line 845
    :pswitch_16
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 846
    .line 847
    check-cast v0, Lgw4;

    .line 848
    .line 849
    const-string v1, ":memory:"

    .line 850
    .line 851
    invoke-virtual {v0, v1}, Lgw4;->d(Ljava/lang/String;)Ljb3;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    return-object v0

    .line 856
    :pswitch_17
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v0, Ljs2;

    .line 859
    .line 860
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    return-object v0

    .line 865
    :pswitch_18
    const-string v1, "Orientation"

    .line 866
    .line 867
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v0, Liw;

    .line 870
    .line 871
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 872
    .line 873
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 874
    .line 875
    .line 876
    iget-object v10, v0, Liw;->b:Ler2;

    .line 877
    .line 878
    new-instance v11, Lfw;

    .line 879
    .line 880
    iget-object v12, v0, Liw;->d:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v12, Lpo1;

    .line 883
    .line 884
    invoke-interface {v12}, Lpo1;->a0()Lfz;

    .line 885
    .line 886
    .line 887
    move-result-object v12

    .line 888
    invoke-direct {v11, v12}, Lbc1;-><init>(Lyp3;)V

    .line 889
    .line 890
    .line 891
    new-instance v12, Ld23;

    .line 892
    .line 893
    invoke-direct {v12, v11}, Ld23;-><init>(Lyp3;)V

    .line 894
    .line 895
    .line 896
    iput-boolean v7, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 897
    .line 898
    new-instance v13, Lcu2;

    .line 899
    .line 900
    invoke-direct {v13, v12}, Lcu2;-><init>(Lfz;)V

    .line 901
    .line 902
    .line 903
    new-instance v14, Ld23;

    .line 904
    .line 905
    invoke-direct {v14, v13}, Ld23;-><init>(Lyp3;)V

    .line 906
    .line 907
    .line 908
    new-instance v13, Lfr0;

    .line 909
    .line 910
    invoke-direct {v13, v14, v7}, Lfr0;-><init>(Ljava/io/Closeable;I)V

    .line 911
    .line 912
    .line 913
    invoke-static {v13, v8, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 914
    .line 915
    .line 916
    iget-object v13, v11, Lfw;->o:Ljava/lang/Exception;

    .line 917
    .line 918
    if-nez v13, :cond_40

    .line 919
    .line 920
    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 921
    .line 922
    sget-object v13, Lw31;->a:Landroid/graphics/Paint;

    .line 923
    .line 924
    iget-object v13, v9, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 925
    .line 926
    iget-object v0, v0, Liw;->e:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v0, Lv31;

    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    if-eqz v13, :cond_16

    .line 934
    .line 935
    const-string v0, "image/jpeg"

    .line 936
    .line 937
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    if-nez v0, :cond_15

    .line 942
    .line 943
    const-string v0, "image/webp"

    .line 944
    .line 945
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v0

    .line 949
    if-nez v0, :cond_15

    .line 950
    .line 951
    const-string v0, "image/heic"

    .line 952
    .line 953
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    if-nez v0, :cond_15

    .line 958
    .line 959
    const-string v0, "image/heif"

    .line 960
    .line 961
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v0

    .line 965
    if-eqz v0, :cond_16

    .line 966
    .line 967
    :cond_15
    move v0, v7

    .line 968
    goto :goto_f

    .line 969
    :cond_16
    move v0, v6

    .line 970
    :goto_f
    const/16 v13, 0x10e

    .line 971
    .line 972
    const/16 v14, 0x5a

    .line 973
    .line 974
    if-eqz v0, :cond_1a

    .line 975
    .line 976
    new-instance v0, Lt31;

    .line 977
    .line 978
    new-instance v15, Lu31;

    .line 979
    .line 980
    move-wide/from16 v16, v2

    .line 981
    .line 982
    new-instance v2, Lcu2;

    .line 983
    .line 984
    invoke-direct {v2, v12}, Lcu2;-><init>(Lfz;)V

    .line 985
    .line 986
    .line 987
    new-instance v3, Ld23;

    .line 988
    .line 989
    invoke-direct {v3, v2}, Ld23;-><init>(Lyp3;)V

    .line 990
    .line 991
    .line 992
    new-instance v2, Lfr0;

    .line 993
    .line 994
    invoke-direct {v2, v3, v7}, Lfr0;-><init>(Ljava/io/Closeable;I)V

    .line 995
    .line 996
    .line 997
    invoke-direct {v15, v2}, Lu31;-><init>(Ljava/io/InputStream;)V

    .line 998
    .line 999
    .line 1000
    invoke-direct {v0, v15}, Lt31;-><init>(Lu31;)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v2, Lm31;

    .line 1004
    .line 1005
    invoke-virtual {v0, v1}, Lt31;->c(Ljava/lang/String;)Lp31;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    if-nez v3, :cond_17

    .line 1010
    .line 1011
    goto :goto_10

    .line 1012
    :cond_17
    :try_start_6
    iget-object v15, v0, Lt31;->e:Ljava/nio/ByteOrder;

    .line 1013
    .line 1014
    invoke-virtual {v3, v15}, Lp31;->e(Ljava/nio/ByteOrder;)I

    .line 1015
    .line 1016
    .line 1017
    move-result v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1018
    goto :goto_11

    .line 1019
    :catch_3
    :goto_10
    move v3, v7

    .line 1020
    :goto_11
    if-eq v3, v4, :cond_18

    .line 1021
    .line 1022
    const/4 v4, 0x7

    .line 1023
    if-eq v3, v4, :cond_18

    .line 1024
    .line 1025
    if-eq v3, v5, :cond_18

    .line 1026
    .line 1027
    const/4 v4, 0x5

    .line 1028
    if-eq v3, v4, :cond_18

    .line 1029
    .line 1030
    move v3, v6

    .line 1031
    goto :goto_12

    .line 1032
    :cond_18
    move v3, v7

    .line 1033
    :goto_12
    invoke-virtual {v0, v1}, Lt31;->c(Ljava/lang/String;)Lp31;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    if-nez v1, :cond_19

    .line 1038
    .line 1039
    goto :goto_13

    .line 1040
    :cond_19
    :try_start_7
    iget-object v0, v0, Lt31;->e:Ljava/nio/ByteOrder;

    .line 1041
    .line 1042
    invoke-virtual {v1, v0}, Lp31;->e(Ljava/nio/ByteOrder;)I

    .line 1043
    .line 1044
    .line 1045
    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1046
    goto :goto_14

    .line 1047
    :catch_4
    :goto_13
    move v0, v7

    .line 1048
    :goto_14
    packed-switch v0, :pswitch_data_1

    .line 1049
    .line 1050
    .line 1051
    move v0, v6

    .line 1052
    goto :goto_15

    .line 1053
    :pswitch_19
    move v0, v14

    .line 1054
    goto :goto_15

    .line 1055
    :pswitch_1a
    move v0, v13

    .line 1056
    goto :goto_15

    .line 1057
    :pswitch_1b
    const/16 v0, 0xb4

    .line 1058
    .line 1059
    :goto_15
    invoke-direct {v2, v3, v0}, Lm31;-><init>(ZI)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_16

    .line 1063
    :cond_1a
    move-wide/from16 v16, v2

    .line 1064
    .line 1065
    sget-object v2, Lm31;->c:Lm31;

    .line 1066
    .line 1067
    :goto_16
    iget v0, v2, Lm31;->b:I

    .line 1068
    .line 1069
    iget-boolean v1, v2, Lm31;->a:Z

    .line 1070
    .line 1071
    iget-object v2, v11, Lfw;->o:Ljava/lang/Exception;

    .line 1072
    .line 1073
    if-nez v2, :cond_3f

    .line 1074
    .line 1075
    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1076
    .line 1077
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1078
    .line 1079
    const/16 v3, 0x1a

    .line 1080
    .line 1081
    if-lt v2, v3, :cond_1b

    .line 1082
    .line 1083
    sget-object v4, Lno1;->c:Li3;

    .line 1084
    .line 1085
    invoke-static {v10, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    invoke-static {v5}, Ld51;->d(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v5

    .line 1093
    if-eqz v5, :cond_1b

    .line 1094
    .line 1095
    invoke-static {v10, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v4

    .line 1099
    invoke-static {v4}, Ld51;->d(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v4

    .line 1103
    invoke-static {v9, v4}, Lew;->o(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_1b
    sget-object v4, Lno1;->d:Li3;

    .line 1107
    .line 1108
    invoke-static {v10, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v4

    .line 1112
    check-cast v4, Ljava/lang/Boolean;

    .line 1113
    .line 1114
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    iget-object v5, v10, Ler2;->a:Landroid/content/Context;

    .line 1119
    .line 1120
    iput-boolean v4, v9, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 1121
    .line 1122
    sget-object v4, Lno1;->b:Li3;

    .line 1123
    .line 1124
    invoke-static {v10, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    check-cast v4, Landroid/graphics/Bitmap$Config;

    .line 1129
    .line 1130
    if-nez v1, :cond_1c

    .line 1131
    .line 1132
    if-lez v0, :cond_1e

    .line 1133
    .line 1134
    :cond_1c
    if-eqz v4, :cond_1d

    .line 1135
    .line 1136
    invoke-static {v4}, Ltv4;->D(Landroid/graphics/Bitmap$Config;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v15

    .line 1140
    if-eqz v15, :cond_1e

    .line 1141
    .line 1142
    :cond_1d
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1143
    .line 1144
    :cond_1e
    sget-object v15, Lno1;->g:Li3;

    .line 1145
    .line 1146
    invoke-static {v10, v15}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v15

    .line 1150
    check-cast v15, Ljava/lang/Boolean;

    .line 1151
    .line 1152
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v15

    .line 1156
    if-eqz v15, :cond_1f

    .line 1157
    .line 1158
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1159
    .line 1160
    if-ne v4, v15, :cond_1f

    .line 1161
    .line 1162
    iget-object v15, v9, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 1163
    .line 1164
    const-string v8, "image/jpeg"

    .line 1165
    .line 1166
    invoke-static {v15, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v8

    .line 1170
    if-eqz v8, :cond_1f

    .line 1171
    .line 1172
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1173
    .line 1174
    :cond_1f
    if-lt v2, v3, :cond_20

    .line 1175
    .line 1176
    invoke-static {v9}, Lew;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    invoke-static {}, Ly2;->b()Landroid/graphics/Bitmap$Config;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v3

    .line 1184
    if-ne v2, v3, :cond_20

    .line 1185
    .line 1186
    invoke-static {}, Ly2;->y()Landroid/graphics/Bitmap$Config;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    if-eq v4, v2, :cond_20

    .line 1191
    .line 1192
    invoke-static {}, Ly2;->b()Landroid/graphics/Bitmap$Config;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    :cond_20
    iput-object v4, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1197
    .line 1198
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1199
    .line 1200
    if-lez v2, :cond_21

    .line 1201
    .line 1202
    iget v3, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1203
    .line 1204
    if-gtz v3, :cond_22

    .line 1205
    .line 1206
    :cond_21
    move v6, v1

    .line 1207
    move-object/from16 v21, v5

    .line 1208
    .line 1209
    move v15, v7

    .line 1210
    goto/16 :goto_1f

    .line 1211
    .line 1212
    :cond_22
    if-eq v0, v14, :cond_24

    .line 1213
    .line 1214
    if-ne v0, v13, :cond_23

    .line 1215
    .line 1216
    goto :goto_17

    .line 1217
    :cond_23
    move v4, v2

    .line 1218
    goto :goto_18

    .line 1219
    :cond_24
    :goto_17
    move v4, v3

    .line 1220
    :goto_18
    if-eq v0, v14, :cond_26

    .line 1221
    .line 1222
    if-ne v0, v13, :cond_25

    .line 1223
    .line 1224
    goto :goto_19

    .line 1225
    :cond_25
    move v2, v3

    .line 1226
    :cond_26
    :goto_19
    iget-object v3, v10, Ler2;->b:Lln3;

    .line 1227
    .line 1228
    iget-object v8, v10, Ler2;->c:Lrd3;

    .line 1229
    .line 1230
    sget-object v15, Llo1;->b:Li3;

    .line 1231
    .line 1232
    invoke-static {v10, v15}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v18

    .line 1236
    move-object/from16 v13, v18

    .line 1237
    .line 1238
    check-cast v13, Lln3;

    .line 1239
    .line 1240
    invoke-static {v4, v2, v3, v8, v13}, Lc75;->r(IILln3;Lrd3;Lln3;)J

    .line 1241
    .line 1242
    .line 1243
    move-result-wide v18

    .line 1244
    const/16 v3, 0x20

    .line 1245
    .line 1246
    move-object/from16 v20, v15

    .line 1247
    .line 1248
    shr-long v14, v18, v3

    .line 1249
    .line 1250
    long-to-int v3, v14

    .line 1251
    const-wide v14, 0xffffffffL

    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    and-long v14, v18, v14

    .line 1257
    .line 1258
    long-to-int v14, v14

    .line 1259
    div-int v15, v4, v3

    .line 1260
    .line 1261
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 1262
    .line 1263
    .line 1264
    move-result v15

    .line 1265
    div-int v18, v2, v14

    .line 1266
    .line 1267
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 1268
    .line 1269
    .line 1270
    move-result v13

    .line 1271
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 1272
    .line 1273
    .line 1274
    move-result v6

    .line 1275
    if-eqz v6, :cond_28

    .line 1276
    .line 1277
    if-ne v6, v7, :cond_27

    .line 1278
    .line 1279
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 1280
    .line 1281
    .line 1282
    move-result v6

    .line 1283
    goto :goto_1b

    .line 1284
    :cond_27
    invoke-static {}, Lp61;->x()V

    .line 1285
    .line 1286
    .line 1287
    :goto_1a
    const/4 v8, 0x0

    .line 1288
    goto/16 :goto_27

    .line 1289
    .line 1290
    :cond_28
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    .line 1291
    .line 1292
    .line 1293
    move-result v6

    .line 1294
    :goto_1b
    if-ge v6, v7, :cond_29

    .line 1295
    .line 1296
    move v6, v7

    .line 1297
    :cond_29
    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1298
    .line 1299
    move-object v13, v8

    .line 1300
    int-to-double v7, v4

    .line 1301
    move-object/from16 v21, v5

    .line 1302
    .line 1303
    int-to-double v4, v6

    .line 1304
    div-double/2addr v7, v4

    .line 1305
    move v6, v1

    .line 1306
    int-to-double v1, v2

    .line 1307
    div-double/2addr v1, v4

    .line 1308
    int-to-double v3, v3

    .line 1309
    move-wide/from16 v22, v1

    .line 1310
    .line 1311
    int-to-double v1, v14

    .line 1312
    move-object/from16 v5, v20

    .line 1313
    .line 1314
    invoke-static {v10, v5}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v5

    .line 1318
    check-cast v5, Lln3;

    .line 1319
    .line 1320
    div-double/2addr v3, v7

    .line 1321
    div-double v1, v1, v22

    .line 1322
    .line 1323
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 1324
    .line 1325
    .line 1326
    move-result v13

    .line 1327
    if-eqz v13, :cond_2b

    .line 1328
    .line 1329
    const/4 v15, 0x1

    .line 1330
    if-ne v13, v15, :cond_2a

    .line 1331
    .line 1332
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 1333
    .line 1334
    .line 1335
    move-result-wide v1

    .line 1336
    goto :goto_1c

    .line 1337
    :cond_2a
    invoke-static {}, Lp61;->x()V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_1a

    .line 1341
    :cond_2b
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 1342
    .line 1343
    .line 1344
    move-result-wide v1

    .line 1345
    :goto_1c
    iget-object v3, v5, Lln3;->a:Lcu0;

    .line 1346
    .line 1347
    instance-of v4, v3, Lau0;

    .line 1348
    .line 1349
    if-eqz v4, :cond_2c

    .line 1350
    .line 1351
    check-cast v3, Lau0;

    .line 1352
    .line 1353
    iget v3, v3, Lau0;->a:I

    .line 1354
    .line 1355
    int-to-double v3, v3

    .line 1356
    div-double/2addr v3, v7

    .line 1357
    cmpl-double v7, v1, v3

    .line 1358
    .line 1359
    if-lez v7, :cond_2c

    .line 1360
    .line 1361
    move-wide v1, v3

    .line 1362
    :cond_2c
    iget-object v3, v5, Lln3;->b:Lcu0;

    .line 1363
    .line 1364
    instance-of v4, v3, Lau0;

    .line 1365
    .line 1366
    if-eqz v4, :cond_2d

    .line 1367
    .line 1368
    check-cast v3, Lau0;

    .line 1369
    .line 1370
    iget v3, v3, Lau0;->a:I

    .line 1371
    .line 1372
    int-to-double v3, v3

    .line 1373
    div-double v3, v3, v22

    .line 1374
    .line 1375
    cmpl-double v5, v1, v3

    .line 1376
    .line 1377
    if-lez v5, :cond_2d

    .line 1378
    .line 1379
    move-wide v1, v3

    .line 1380
    :cond_2d
    iget-object v3, v10, Ler2;->d:Lcx2;

    .line 1381
    .line 1382
    sget-object v4, Lcx2;->o:Lcx2;

    .line 1383
    .line 1384
    if-ne v3, v4, :cond_2e

    .line 1385
    .line 1386
    cmpl-double v3, v1, v16

    .line 1387
    .line 1388
    if-lez v3, :cond_2e

    .line 1389
    .line 1390
    move-wide/from16 v1, v16

    .line 1391
    .line 1392
    :cond_2e
    cmpg-double v3, v1, v16

    .line 1393
    .line 1394
    if-nez v3, :cond_2f

    .line 1395
    .line 1396
    const/4 v3, 0x1

    .line 1397
    goto :goto_1d

    .line 1398
    :cond_2f
    const/4 v3, 0x0

    .line 1399
    :goto_1d
    xor-int/lit8 v4, v3, 0x1

    .line 1400
    .line 1401
    iput-boolean v4, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1402
    .line 1403
    if-nez v3, :cond_30

    .line 1404
    .line 1405
    cmpl-double v3, v1, v16

    .line 1406
    .line 1407
    const v4, 0x7fffffff

    .line 1408
    .line 1409
    .line 1410
    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    if-lez v3, :cond_31

    .line 1416
    .line 1417
    div-double/2addr v7, v1

    .line 1418
    invoke-static {v7, v8}, Lis0;->U(D)I

    .line 1419
    .line 1420
    .line 1421
    move-result v1

    .line 1422
    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1423
    .line 1424
    iput v4, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1425
    .line 1426
    :cond_30
    :goto_1e
    const/4 v1, 0x0

    .line 1427
    const/4 v15, 0x1

    .line 1428
    goto :goto_20

    .line 1429
    :cond_31
    iput v4, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1430
    .line 1431
    mul-double/2addr v7, v1

    .line 1432
    invoke-static {v7, v8}, Lis0;->U(D)I

    .line 1433
    .line 1434
    .line 1435
    move-result v1

    .line 1436
    iput v1, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1437
    .line 1438
    goto :goto_1e

    .line 1439
    :goto_1f
    iput v15, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1440
    .line 1441
    const/4 v1, 0x0

    .line 1442
    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1443
    .line 1444
    :goto_20
    :try_start_8
    new-instance v2, Lfr0;

    .line 1445
    .line 1446
    invoke-direct {v2, v12, v15}, Lfr0;-><init>(Ljava/io/Closeable;I)V

    .line 1447
    .line 1448
    .line 1449
    const/4 v3, 0x0

    .line 1450
    invoke-static {v2, v3, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1454
    invoke-virtual {v12}, Ld23;->close()V

    .line 1455
    .line 1456
    .line 1457
    iget-object v4, v11, Lfw;->o:Ljava/lang/Exception;

    .line 1458
    .line 1459
    if-nez v4, :cond_3e

    .line 1460
    .line 1461
    if-eqz v2, :cond_3d

    .line 1462
    .line 1463
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v3

    .line 1467
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v3

    .line 1471
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1472
    .line 1473
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1474
    .line 1475
    .line 1476
    if-nez v6, :cond_32

    .line 1477
    .line 1478
    if-lez v0, :cond_3a

    .line 1479
    .line 1480
    :cond_32
    new-instance v3, Landroid/graphics/Matrix;

    .line 1481
    .line 1482
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1486
    .line 1487
    .line 1488
    move-result v4

    .line 1489
    int-to-float v4, v4

    .line 1490
    const/high16 v5, 0x40000000    # 2.0f

    .line 1491
    .line 1492
    div-float/2addr v4, v5

    .line 1493
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1494
    .line 1495
    .line 1496
    move-result v7

    .line 1497
    int-to-float v7, v7

    .line 1498
    div-float/2addr v7, v5

    .line 1499
    if-eqz v6, :cond_33

    .line 1500
    .line 1501
    const/high16 v5, -0x40800000    # -1.0f

    .line 1502
    .line 1503
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1504
    .line 1505
    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1506
    .line 1507
    .line 1508
    :cond_33
    if-lez v0, :cond_34

    .line 1509
    .line 1510
    int-to-float v5, v0

    .line 1511
    invoke-virtual {v3, v5, v4, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1512
    .line 1513
    .line 1514
    :cond_34
    new-instance v4, Landroid/graphics/RectF;

    .line 1515
    .line 1516
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1517
    .line 1518
    .line 1519
    move-result v5

    .line 1520
    int-to-float v5, v5

    .line 1521
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1522
    .line 1523
    .line 1524
    move-result v6

    .line 1525
    int-to-float v6, v6

    .line 1526
    const/4 v7, 0x0

    .line 1527
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1531
    .line 1532
    .line 1533
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 1534
    .line 1535
    cmpg-float v6, v5, v7

    .line 1536
    .line 1537
    if-nez v6, :cond_35

    .line 1538
    .line 1539
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 1540
    .line 1541
    cmpg-float v6, v6, v7

    .line 1542
    .line 1543
    if-nez v6, :cond_35

    .line 1544
    .line 1545
    :goto_21
    const/16 v13, 0x5a

    .line 1546
    .line 1547
    goto :goto_22

    .line 1548
    :cond_35
    neg-float v5, v5

    .line 1549
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 1550
    .line 1551
    neg-float v4, v4

    .line 1552
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1553
    .line 1554
    .line 1555
    goto :goto_21

    .line 1556
    :goto_22
    if-eq v0, v13, :cond_38

    .line 1557
    .line 1558
    const/16 v4, 0x10e

    .line 1559
    .line 1560
    if-ne v0, v4, :cond_36

    .line 1561
    .line 1562
    goto :goto_23

    .line 1563
    :cond_36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1564
    .line 1565
    .line 1566
    move-result v0

    .line 1567
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1568
    .line 1569
    .line 1570
    move-result v4

    .line 1571
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v5

    .line 1575
    if-nez v5, :cond_37

    .line 1576
    .line 1577
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1578
    .line 1579
    :cond_37
    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v0

    .line 1583
    goto :goto_24

    .line 1584
    :cond_38
    :goto_23
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1585
    .line 1586
    .line 1587
    move-result v0

    .line 1588
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1589
    .line 1590
    .line 1591
    move-result v4

    .line 1592
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v5

    .line 1596
    if-nez v5, :cond_39

    .line 1597
    .line 1598
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1599
    .line 1600
    :cond_39
    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v0

    .line 1604
    :goto_24
    new-instance v4, Landroid/graphics/Canvas;

    .line 1605
    .line 1606
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1607
    .line 1608
    .line 1609
    sget-object v5, Lw31;->a:Landroid/graphics/Paint;

    .line 1610
    .line 1611
    invoke-virtual {v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1615
    .line 1616
    .line 1617
    move-object v2, v0

    .line 1618
    :cond_3a
    new-instance v8, Ltn0;

    .line 1619
    .line 1620
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 1625
    .line 1626
    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1627
    .line 1628
    .line 1629
    invoke-static {v3}, Lht4;->d(Landroid/graphics/drawable/Drawable;)Lao1;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1634
    .line 1635
    const/4 v15, 0x1

    .line 1636
    if-gt v2, v15, :cond_3c

    .line 1637
    .line 1638
    iget-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1639
    .line 1640
    if-eqz v2, :cond_3b

    .line 1641
    .line 1642
    goto :goto_25

    .line 1643
    :cond_3b
    move v6, v1

    .line 1644
    goto :goto_26

    .line 1645
    :cond_3c
    :goto_25
    const/4 v6, 0x1

    .line 1646
    :goto_26
    invoke-direct {v8, v0, v6}, Ltn0;-><init>(Lao1;Z)V

    .line 1647
    .line 1648
    .line 1649
    goto :goto_27

    .line 1650
    :cond_3d
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 1651
    .line 1652
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    move-object v8, v3

    .line 1656
    :goto_27
    return-object v8

    .line 1657
    :cond_3e
    throw v4

    .line 1658
    :catchall_2
    move-exception v0

    .line 1659
    move-object v1, v0

    .line 1660
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1661
    :catchall_3
    move-exception v0

    .line 1662
    invoke-static {v12, v1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1663
    .line 1664
    .line 1665
    throw v0

    .line 1666
    :cond_3f
    throw v2

    .line 1667
    :cond_40
    throw v13

    .line 1668
    :pswitch_1c
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 1669
    .line 1670
    check-cast v0, Lu/sage/a;

    .line 1671
    .line 1672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    return-object v0

    .line 1681
    :pswitch_1d
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 1682
    .line 1683
    check-cast v0, [Ljava/lang/Object;

    .line 1684
    .line 1685
    new-instance v1, Lg1;

    .line 1686
    .line 1687
    const/4 v15, 0x1

    .line 1688
    invoke-direct {v1, v15, v0}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 1689
    .line 1690
    .line 1691
    return-object v1

    .line 1692
    :pswitch_1e
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 1693
    .line 1694
    check-cast v0, Lzf5;

    .line 1695
    .line 1696
    check-cast v0, Lqy;

    .line 1697
    .line 1698
    iget-object v0, v0, Lqy;->j:Landroid/graphics/Shader;

    .line 1699
    .line 1700
    return-object v0

    .line 1701
    :pswitch_1f
    iget-object v0, v0, Lcc;->o:Ljava/lang/Object;

    .line 1702
    .line 1703
    check-cast v0, Ldc;

    .line 1704
    .line 1705
    invoke-static {v0}, Lkt4;->Q(Ljx0;)V

    .line 1706
    .line 1707
    .line 1708
    sget-object v0, Lt64;->a:Lt64;

    .line 1709
    .line 1710
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
