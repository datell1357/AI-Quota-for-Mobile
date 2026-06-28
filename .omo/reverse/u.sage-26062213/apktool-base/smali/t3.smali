.class public final synthetic Lt3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lt3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILf12;)V
    .locals 0

    .line 1
    const/16 p1, 0x1c

    .line 2
    .line 3
    iput p1, p0, Lt3;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    const/4 p1, 0x1

    iput p1, p0, Lt3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lt3;->n:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lxh2;

    .line 10
    .line 11
    sget p0, Lu/sage/MainActivity;->C:I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lqj2;->i:Lvw;

    .line 17
    .line 18
    iget-object p1, p1, Lxh2;->a:Lft1;

    .line 19
    .line 20
    iput-object p0, p1, Lft1;->p:Ljava/lang/Object;

    .line 21
    .line 22
    const-string p0, "CLAUDE"

    .line 23
    .line 24
    iput-object p0, p1, Lft1;->q:Ljava/lang/Object;

    .line 25
    .line 26
    iput-boolean v2, p1, Lft1;->o:Z

    .line 27
    .line 28
    sget-object p0, Lt64;->a:Lt64;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p1, Lcy2;

    .line 32
    .line 33
    sget-object p0, Lt64;->a:Lt64;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 37
    .line 38
    new-instance p0, Ln12;

    .line 39
    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-direct {p0, v0, p1}, Ln12;-><init>(II)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lxv1;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v0}, Lxs3;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    const/16 p0, 0x3a

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :pswitch_3
    check-cast p1, Lj50;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const-string p0, "JsonPrimitive"

    .line 108
    .line 109
    new-instance v0, Ll6;

    .line 110
    .line 111
    const/16 v1, 0x17

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcw1;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Lcw1;-><init>(Lne1;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p0, v1}, Lj50;->a(Lj50;Ljava/lang/String;Lgi3;)V

    .line 122
    .line 123
    .line 124
    const-string p0, "JsonNull"

    .line 125
    .line 126
    new-instance v0, Ll6;

    .line 127
    .line 128
    const/16 v1, 0x18

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Lcw1;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Lcw1;-><init>(Lne1;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p0, v1}, Lj50;->a(Lj50;Ljava/lang/String;Lgi3;)V

    .line 139
    .line 140
    .line 141
    const-string p0, "JsonLiteral"

    .line 142
    .line 143
    new-instance v0, Ll6;

    .line 144
    .line 145
    const/16 v1, 0x19

    .line 146
    .line 147
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcw1;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcw1;-><init>(Lne1;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1, p0, v1}, Lj50;->a(Lj50;Ljava/lang/String;Lgi3;)V

    .line 156
    .line 157
    .line 158
    const-string p0, "JsonObject"

    .line 159
    .line 160
    new-instance v0, Ll6;

    .line 161
    .line 162
    const/16 v1, 0x1a

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcw1;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcw1;-><init>(Lne1;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p0, v1}, Lj50;->a(Lj50;Ljava/lang/String;Lgi3;)V

    .line 173
    .line 174
    .line 175
    const-string p0, "JsonArray"

    .line 176
    .line 177
    new-instance v0, Ll6;

    .line 178
    .line 179
    const/16 v1, 0x1b

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcw1;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lcw1;-><init>(Lne1;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p0, v1}, Lj50;->a(Lj50;Ljava/lang/String;Lgi3;)V

    .line 190
    .line 191
    .line 192
    sget-object p0, Lt64;->a:Lt64;

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_4
    sget-object p0, Lwo3;->c:Ljava/lang/Object;

    .line 196
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    sget-object v0, Lwo3;->i:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    :goto_0
    if-ge v1, v2, :cond_0

    .line 205
    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lpe1;

    .line 211
    .line 212
    invoke-interface {v3, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catchall_0
    move-exception p1

    .line 219
    goto :goto_1

    .line 220
    :cond_0
    monitor-exit p0

    .line 221
    sget-object p0, Lt64;->a:Lt64;

    .line 222
    .line 223
    return-object p0

    .line 224
    :goto_1
    monitor-exit p0

    .line 225
    throw p1

    .line 226
    :pswitch_5
    return-object p1

    .line 227
    :pswitch_6
    check-cast p1, Lxi0;

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    const-string p0, "FirebaseSessions"

    .line 233
    .line 234
    const-string v0, "CorruptionException in session configs DataStore"

    .line 235
    .line 236
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .line 238
    .line 239
    sget-object p0, Lw13;->R:Ldj3;

    .line 240
    .line 241
    return-object p0

    .line 242
    :pswitch_7
    check-cast p1, Ljava/io/File;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    new-instance p1, Lbn3;

    .line 259
    .line 260
    invoke-direct {p1, p0}, Lbn3;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-object p1

    .line 264
    :pswitch_8
    check-cast p1, Lph3;

    .line 265
    .line 266
    invoke-static {p1}, Lnh3;->e(Lph3;)V

    .line 267
    .line 268
    .line 269
    sget-object p0, Lt64;->a:Lt64;

    .line 270
    .line 271
    return-object p0

    .line 272
    :pswitch_9
    check-cast p1, Ljava/util/Map$Entry;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    check-cast p0, Ljava/lang/String;

    .line 282
    .line 283
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p0, " : "

    .line 296
    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    instance-of p0, p1, [Ljava/lang/Object;

    .line 301
    .line 302
    if-eqz p0, :cond_1

    .line 303
    .line 304
    check-cast p1, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :pswitch_a
    check-cast p1, Lfi0;

    .line 322
    .line 323
    instance-of p0, p1, Lji0;

    .line 324
    .line 325
    if-eqz p0, :cond_2

    .line 326
    .line 327
    move-object v0, p1

    .line 328
    check-cast v0, Lji0;

    .line 329
    .line 330
    :cond_2
    return-object v0

    .line 331
    :pswitch_b
    check-cast p1, Lhu2;

    .line 332
    .line 333
    sget-object p0, Lgk1;->a:Llc0;

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-static {p1, p0}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    check-cast p0, Lec4;

    .line 343
    .line 344
    iget-object p0, p0, Lec4;->a:Landroid/view/View;

    .line 345
    .line 346
    :goto_2
    if-eqz p0, :cond_5

    .line 347
    .line 348
    const p1, 0x7f0900d8

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-eqz p1, :cond_3

    .line 356
    .line 357
    move-object v0, p1

    .line 358
    goto :goto_3

    .line 359
    :cond_3
    invoke-static {p0}, Lfl4;->q(Landroid/view/View;)Landroid/view/ViewParent;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    instance-of p1, p0, Landroid/view/View;

    .line 364
    .line 365
    if-eqz p1, :cond_4

    .line 366
    .line 367
    check-cast p0, Landroid/view/View;

    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_4
    move-object p0, v0

    .line 371
    goto :goto_2

    .line 372
    :cond_5
    :goto_3
    return-object v0

    .line 373
    :pswitch_c
    check-cast p1, Lph3;

    .line 374
    .line 375
    invoke-static {p1, v2}, Lnh3;->c(Lph3;I)V

    .line 376
    .line 377
    .line 378
    sget-object p0, Lt64;->a:Lt64;

    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_d
    check-cast p1, Lb24;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    check-cast p1, Lys2;

    .line 387
    .line 388
    invoke-static {p1}, Lw80;->A(Leh3;)V

    .line 389
    .line 390
    .line 391
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 392
    .line 393
    return-object p0

    .line 394
    :pswitch_e
    check-cast p1, Lph3;

    .line 395
    .line 396
    sget-object p0, Lt64;->a:Lt64;

    .line 397
    .line 398
    return-object p0

    .line 399
    :pswitch_f
    check-cast p1, Lph3;

    .line 400
    .line 401
    invoke-static {p1, v1}, Lnh3;->c(Lph3;I)V

    .line 402
    .line 403
    .line 404
    sget-object p0, Lt64;->a:Lt64;

    .line 405
    .line 406
    return-object p0

    .line 407
    :pswitch_10
    check-cast p1, Lhu2;

    .line 408
    .line 409
    sget-object p0, Lea;->b:Lis3;

    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    invoke-static {p1, p0}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Landroid/content/Context;

    .line 419
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    const-string p1, "android.software.leanback"

    .line 425
    .line 426
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result p0

    .line 430
    if-nez p0, :cond_6

    .line 431
    .line 432
    sget-object p0, Lgy;->a:Lfy;

    .line 433
    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    sget-object p0, Lfy;->c:Ley;

    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_6
    sget-object p0, Liy;->b:Lhy;

    .line 441
    .line 442
    :goto_4
    return-object p0

    .line 443
    :pswitch_11
    check-cast p1, Lcv2;

    .line 444
    .line 445
    sget-object p0, Lt64;->a:Lt64;

    .line 446
    .line 447
    return-object p0

    .line 448
    :pswitch_12
    check-cast p1, Lzy1;

    .line 449
    .line 450
    invoke-virtual {p1}, Lzy1;->a()V

    .line 451
    .line 452
    .line 453
    sget-object p0, Lt64;->a:Lt64;

    .line 454
    .line 455
    return-object p0

    .line 456
    :pswitch_13
    check-cast p1, Lf82;

    .line 457
    .line 458
    sget-object p0, Lfl4;->o:Lek1;

    .line 459
    .line 460
    invoke-virtual {p1}, Lf82;->a()Lgy1;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-interface {v0}, Lgy1;->I()J

    .line 465
    .line 466
    .line 467
    move-result-wide v0

    .line 468
    const/16 v2, 0x20

    .line 469
    .line 470
    shr-long/2addr v0, v2

    .line 471
    long-to-int v0, v0

    .line 472
    int-to-float v0, v0

    .line 473
    invoke-virtual {p1, p0, v0}, Lf82;->c(Lek1;F)V

    .line 474
    .line 475
    .line 476
    sget-object p0, Lfl4;->n:Lek1;

    .line 477
    .line 478
    const/4 v0, 0x0

    .line 479
    invoke-virtual {p1, p0, v0}, Lf82;->c(Lek1;F)V

    .line 480
    .line 481
    .line 482
    sget-object p0, Lt64;->a:Lt64;

    .line 483
    .line 484
    return-object p0

    .line 485
    :pswitch_14
    check-cast p1, Lyi;

    .line 486
    .line 487
    return-object p1

    .line 488
    :pswitch_15
    check-cast p1, Ljava/util/Map$Entry;

    .line 489
    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object p0

    .line 497
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string p0, "="

    .line 510
    .line 511
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    return-object p0

    .line 522
    :pswitch_16
    check-cast p1, Lp84;

    .line 523
    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-virtual {p1}, Lp84;->d()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    if-nez p0, :cond_7

    .line 532
    .line 533
    const-string p0, "Unknown"

    .line 534
    .line 535
    :cond_7
    invoke-virtual {p1}, Lp84;->e()D

    .line 536
    .line 537
    .line 538
    move-result-wide v0

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string p0, ": "

    .line 548
    .line 549
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string p0, "%"

    .line 556
    .line 557
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p0

    .line 564
    return-object p0

    .line 565
    :pswitch_17
    check-cast p1, Ly84;

    .line 566
    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 575
    .line 576
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p0

    .line 580
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    return-object p0

    .line 584
    :pswitch_18
    check-cast p1, Ls52;

    .line 585
    .line 586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 590
    .line 591
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 592
    .line 593
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 598
    .line 599
    .line 600
    iget-wide v0, p1, Ls52;->c:J

    .line 601
    .line 602
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {p0, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    iget-object v1, p1, Ls52;->a:Ljava/lang/String;

    .line 616
    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v3, "Event: "

    .line 620
    .line 621
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const/16 v1, 0xa

    .line 635
    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v3, "Time:  "

    .line 642
    .line 643
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    iget-object p0, p1, Ls52;->d:Ljava/lang/String;

    .line 660
    .line 661
    if-nez p0, :cond_8

    .line 662
    .line 663
    const-string p0, "N/A"

    .line 664
    .line 665
    :cond_8
    const-string v2, "Service: "

    .line 666
    .line 667
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const-string p0, "\nParams: {\n"

    .line 675
    .line 676
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    iget-object p0, p1, Ls52;->b:Ljava/util/LinkedHashMap;

    .line 680
    .line 681
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 686
    .line 687
    .line 688
    move-result-object p0

    .line 689
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 690
    .line 691
    .line 692
    move-result p1

    .line 693
    if-eqz p1, :cond_9

    .line 694
    .line 695
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    check-cast p1, Ljava/util/Map$Entry;

    .line 700
    .line 701
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    check-cast v2, Ljava/lang/String;

    .line 706
    .line 707
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string v4, "  "

    .line 714
    .line 715
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v2, ": "

    .line 722
    .line 723
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    goto :goto_5

    .line 740
    :cond_9
    const-string p0, "}"

    .line 741
    .line 742
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object p0

    .line 749
    return-object p0

    .line 750
    :pswitch_19
    check-cast p1, Landroid/content/Context;

    .line 751
    .line 752
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 756
    .line 757
    if-eqz p0, :cond_a

    .line 758
    .line 759
    check-cast p1, Landroid/content/ContextWrapper;

    .line 760
    .line 761
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    :cond_a
    return-object v0

    .line 766
    :pswitch_1a
    check-cast p1, Landroid/widget/FrameLayout;

    .line 767
    .line 768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    sget-object p0, Lt64;->a:Lt64;

    .line 772
    .line 773
    return-object p0

    .line 774
    :pswitch_1b
    check-cast p1, Landroid/webkit/WebView;

    .line 775
    .line 776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    sget-object p0, Lez3;->a:Lra3;

    .line 780
    .line 781
    new-array v1, v1, [Ljava/lang/Object;

    .line 782
    .line 783
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    .line 785
    .line 786
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    const-string p0, "sage(18, \'\');"

    .line 790
    .line 791
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 792
    .line 793
    .line 794
    sget-object p0, Lt64;->a:Lt64;

    .line 795
    .line 796
    return-object p0

    .line 797
    :pswitch_1c
    check-cast p1, Landroid/content/Context;

    .line 798
    .line 799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    new-instance p0, Lu3;

    .line 803
    .line 804
    invoke-direct {p0}, Lu3;-><init>()V

    .line 805
    .line 806
    .line 807
    invoke-static {p0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object p0

    .line 811
    return-object p0

    .line 812
    nop

    .line 813
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
