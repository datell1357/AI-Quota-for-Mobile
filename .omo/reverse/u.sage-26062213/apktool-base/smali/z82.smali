.class public final synthetic Lz82;
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
    iput p1, p0, Lz82;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lga3;)V
    .locals 0

    .line 1
    const/16 p1, 0x19

    .line 2
    .line 3
    iput p1, p0, Lz82;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lz82;->n:I

    .line 2
    .line 3
    const-string v0, "["

    .line 4
    .line 5
    const-string v1, ", "

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    const/16 v3, 0x2bc

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    sget-object v7, Lt64;->a:Lt64;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v0, Lid3;->a:Lxh1;

    .line 29
    .line 30
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    :cond_0
    move-object p0, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-eqz p0, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, Lxh1;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lpe1;

    .line 45
    .line 46
    invoke-interface {v0, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/util/List;

    .line 51
    .line 52
    :goto_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    move-object v8, p1

    .line 59
    check-cast v8, Ljava/lang/String;

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lff;

    .line 65
    .line 66
    invoke-direct {p1, p0, v8}, Lff;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p1, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    sget-object v0, Lid3;->h:Lxh1;

    .line 80
    .line 81
    iget-object v0, v0, Lxh1;->o:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lpe1;

    .line 84
    .line 85
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    :cond_3
    move-object p0, v8

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    if-eqz p0, :cond_3

    .line 96
    .line 97
    invoke-interface {v0, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Liq3;

    .line 102
    .line 103
    :goto_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    :cond_5
    move-object v2, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    if-eqz v2, :cond_5

    .line 116
    .line 117
    invoke-interface {v0, v2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Liq3;

    .line 122
    .line 123
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_8

    .line 132
    .line 133
    :cond_7
    move-object v3, v8

    .line 134
    goto :goto_3

    .line 135
    :cond_8
    if-eqz v3, :cond_7

    .line 136
    .line 137
    invoke-interface {v0, v3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Liq3;

    .line 142
    .line 143
    :goto_3
    const/4 v4, 0x3

    .line 144
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_9
    if-eqz p1, :cond_a

    .line 156
    .line 157
    invoke-interface {v0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    move-object v8, p1

    .line 162
    check-cast v8, Liq3;

    .line 163
    .line 164
    :cond_a
    :goto_4
    new-instance p1, Lqx3;

    .line 165
    .line 166
    invoke-direct {p1, p0, v2, v3, v8}, Lqx3;-><init>(Liq3;Liq3;Liq3;Liq3;)V

    .line 167
    .line 168
    .line 169
    :pswitch_1
    return-object p1

    .line 170
    :pswitch_2
    check-cast p1, Ljava/util/Map;

    .line 171
    .line 172
    new-instance p0, Lgc3;

    .line 173
    .line 174
    invoke-direct {p0, p1}, Lgc3;-><init>(Ljava/util/Map;)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_3
    check-cast p1, Lin0;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance p0, Lan2;

    .line 184
    .line 185
    invoke-direct {p0, v5}, Lan2;-><init>(I)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :pswitch_4
    check-cast p1, Lhu2;

    .line 190
    .line 191
    new-instance p0, Lx83;

    .line 192
    .line 193
    invoke-direct {p0}, Lx83;-><init>()V

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_5
    check-cast p1, Lwh4;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    sget-object p0, Ll73;->s:Lbt2;

    .line 203
    .line 204
    iget-object p0, p1, Lwh4;->a:Lbt2;

    .line 205
    .line 206
    invoke-static {p0}, Lqz0;->a(Lbt2;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :pswitch_6
    check-cast p1, Lph3;

    .line 216
    .line 217
    sget-object p0, Loz2;->b:Loz2;

    .line 218
    .line 219
    sget-object v0, Lnh3;->a:[Lkx1;

    .line 220
    .line 221
    sget-object v0, Llh3;->c:Loh3;

    .line 222
    .line 223
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 224
    .line 225
    aget-object v1, v1, v6

    .line 226
    .line 227
    invoke-interface {p1, v0, p0}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v7

    .line 231
    :pswitch_7
    check-cast p1, Lrx1;

    .line 232
    .line 233
    const/16 p0, 0x1770

    .line 234
    .line 235
    iput p0, p1, Lrx1;->a:I

    .line 236
    .line 237
    const/high16 v0, 0x42b40000    # 90.0f

    .line 238
    .line 239
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v1, 0x12c

    .line 244
    .line 245
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    sget-object v2, Lge2;->a:Ldl0;

    .line 250
    .line 251
    iput-object v2, v1, Lqx1;->b:Lmy0;

    .line 252
    .line 253
    const/16 v1, 0x5dc

    .line 254
    .line 255
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 256
    .line 257
    .line 258
    const/high16 v0, 0x43340000    # 180.0f

    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const/16 v1, 0x708

    .line 265
    .line 266
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 267
    .line 268
    .line 269
    const/16 v1, 0xbb8

    .line 270
    .line 271
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 272
    .line 273
    .line 274
    const/high16 v0, 0x43870000    # 270.0f

    .line 275
    .line 276
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const/16 v1, 0xce4

    .line 281
    .line 282
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 283
    .line 284
    .line 285
    const/16 v1, 0x1194

    .line 286
    .line 287
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 288
    .line 289
    .line 290
    const/high16 v0, 0x43b40000    # 360.0f

    .line 291
    .line 292
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const/16 v1, 0x12c0

    .line 297
    .line 298
    invoke-virtual {p1, v0, v1}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v0, p0}, Lrx1;->a(Ljava/lang/Float;I)Lqx1;

    .line 302
    .line 303
    .line 304
    return-object v7

    .line 305
    :pswitch_8
    check-cast p1, Landroid/content/Context;

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    sget-object p0, Lg01;->n:Lg01;

    .line 311
    .line 312
    return-object p0

    .line 313
    :pswitch_9
    check-cast p1, Lhu2;

    .line 314
    .line 315
    sget p0, Lkb;->a:I

    .line 316
    .line 317
    sget-object p0, Lea;->b:Lis3;

    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-static {p1, p0}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    move-object v1, p0

    .line 327
    check-cast v1, Landroid/content/Context;

    .line 328
    .line 329
    sget-object p0, Lkc0;->h:Lis3;

    .line 330
    .line 331
    invoke-static {p1, p0}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    move-object v2, p0

    .line 336
    check-cast v2, Las0;

    .line 337
    .line 338
    sget-object p0, Lpr2;->a:Llc0;

    .line 339
    .line 340
    invoke-static {p1, p0}, Lbi4;->F(Lhu2;Lh03;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    check-cast p0, Lor2;

    .line 345
    .line 346
    if-nez p0, :cond_b

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_b
    new-instance v0, Lxa;

    .line 350
    .line 351
    iget-wide v3, p0, Lor2;->a:J

    .line 352
    .line 353
    iget-object v5, p0, Lor2;->b:Lds2;

    .line 354
    .line 355
    invoke-direct/range {v0 .. v5}, Lxa;-><init>(Landroid/content/Context;Las0;JLzr2;)V

    .line 356
    .line 357
    .line 358
    move-object v8, v0

    .line 359
    :goto_5
    return-object v8

    .line 360
    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    return-object v7

    .line 366
    :pswitch_b
    check-cast p1, Lcm2;

    .line 367
    .line 368
    iget-object p0, p1, Lcm2;->a:Lje;

    .line 369
    .line 370
    if-eqz p0, :cond_c

    .line 371
    .line 372
    invoke-virtual {p0}, Lje;->a()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :cond_c
    return-object v7

    .line 376
    :pswitch_c
    check-cast p1, Lph3;

    .line 377
    .line 378
    sget p0, Lzj2;->a:F

    .line 379
    .line 380
    return-object v7

    .line 381
    :pswitch_d
    check-cast p1, Lyh2;

    .line 382
    .line 383
    iget-object p0, p1, Lyh2;->s:Ljava/lang/String;

    .line 384
    .line 385
    return-object p0

    .line 386
    :pswitch_e
    check-cast p1, Lbe;

    .line 387
    .line 388
    invoke-static {v3, v2, v8}, Ltv4;->V(IILmy0;)Ld34;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-static {p0, v4}, Lj11;->d(Lz51;I)Ly31;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    return-object p0

    .line 397
    :pswitch_f
    check-cast p1, Lbe;

    .line 398
    .line 399
    invoke-interface {p1}, Lk14;->c()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    check-cast p0, Lyh2;

    .line 404
    .line 405
    iget-object p0, p0, Lyh2;->o:Lqi2;

    .line 406
    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    check-cast p0, Lva0;

    .line 411
    .line 412
    sget p1, Lqi2;->r:I

    .line 413
    .line 414
    invoke-static {p0}, Lmt1;->z(Lqi2;)Lai3;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-interface {p0}, Lai3;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-eqz p1, :cond_d

    .line 427
    .line 428
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Lqi2;

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_d
    return-object v8

    .line 436
    :pswitch_10
    check-cast p1, Lbe;

    .line 437
    .line 438
    invoke-static {v3, v2, v8}, Ltv4;->V(IILmy0;)Ld34;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-static {p0, v4}, Lj11;->c(Lz51;I)Lo11;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :pswitch_11
    check-cast p1, Lqi2;

    .line 448
    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    instance-of p0, p1, Lsi2;

    .line 453
    .line 454
    if-eqz p0, :cond_e

    .line 455
    .line 456
    check-cast p1, Lsi2;

    .line 457
    .line 458
    iget-object p0, p1, Lsi2;->s:Lvi2;

    .line 459
    .line 460
    iget p1, p0, Lvi2;->b:I

    .line 461
    .line 462
    invoke-virtual {p0, p1}, Lvi2;->n(I)Lqi2;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    :cond_e
    return-object v8

    .line 467
    :pswitch_12
    check-cast p1, Lqi2;

    .line 468
    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    iget-object p0, p1, Lqi2;->p:Lsi2;

    .line 473
    .line 474
    return-object p0

    .line 475
    :pswitch_13
    check-cast p1, Lvk0;

    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    new-instance p0, Lji2;

    .line 481
    .line 482
    invoke-direct {p0}, Lji2;-><init>()V

    .line 483
    .line 484
    .line 485
    return-object p0

    .line 486
    :pswitch_14
    check-cast p1, Lqi2;

    .line 487
    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    iget-object p0, p1, Lqi2;->o:Lgg;

    .line 492
    .line 493
    iget p0, p0, Lgg;->a:I

    .line 494
    .line 495
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    return-object p0

    .line 500
    :pswitch_15
    check-cast p1, Lqi2;

    .line 501
    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    iget-object p0, p1, Lqi2;->p:Lsi2;

    .line 506
    .line 507
    if-eqz p0, :cond_f

    .line 508
    .line 509
    iget-object v0, p0, Lsi2;->s:Lvi2;

    .line 510
    .line 511
    iget v0, v0, Lvi2;->b:I

    .line 512
    .line 513
    iget-object p1, p1, Lqi2;->o:Lgg;

    .line 514
    .line 515
    iget p1, p1, Lgg;->a:I

    .line 516
    .line 517
    if-ne v0, p1, :cond_f

    .line 518
    .line 519
    move-object v8, p0

    .line 520
    :cond_f
    return-object v8

    .line 521
    :pswitch_16
    check-cast p1, Lqi2;

    .line 522
    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    iget-object p0, p1, Lqi2;->p:Lsi2;

    .line 527
    .line 528
    if-eqz p0, :cond_10

    .line 529
    .line 530
    iget-object v0, p0, Lsi2;->s:Lvi2;

    .line 531
    .line 532
    iget v0, v0, Lvi2;->b:I

    .line 533
    .line 534
    iget-object p1, p1, Lqi2;->o:Lgg;

    .line 535
    .line 536
    iget p1, p1, Lgg;->a:I

    .line 537
    .line 538
    if-ne v0, p1, :cond_10

    .line 539
    .line 540
    move-object v8, p0

    .line 541
    :cond_10
    return-object v8

    .line 542
    :pswitch_17
    check-cast p1, Landroid/content/Context;

    .line 543
    .line 544
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 548
    .line 549
    if-eqz p0, :cond_11

    .line 550
    .line 551
    check-cast p1, Landroid/content/ContextWrapper;

    .line 552
    .line 553
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    :cond_11
    return-object v8

    .line 558
    :pswitch_18
    check-cast p1, Lvk0;

    .line 559
    .line 560
    new-instance p0, Lbq;

    .line 561
    .line 562
    invoke-static {p1}, Lpc3;->a(Lvk0;)Lmc3;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-direct {p0, p1}, Lbq;-><init>(Lmc3;)V

    .line 567
    .line 568
    .line 569
    return-object p0

    .line 570
    :pswitch_19
    check-cast p1, Lvk0;

    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    new-instance p0, Lzh2;

    .line 576
    .line 577
    invoke-static {p1}, Lpc3;->a(Lvk0;)Lmc3;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-direct {p0, p1}, Lzh2;-><init>(Lmc3;)V

    .line 582
    .line 583
    .line 584
    return-object p0

    .line 585
    :pswitch_1a
    check-cast p1, Ljava/util/Map$Entry;

    .line 586
    .line 587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p0

    .line 594
    instance-of v2, p0, [B

    .line 595
    .line 596
    if-eqz v2, :cond_14

    .line 597
    .line 598
    check-cast p0, [B

    .line 599
    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 606
    .line 607
    .line 608
    array-length v0, p0

    .line 609
    move v3, v5

    .line 610
    :goto_7
    if-ge v5, v0, :cond_13

    .line 611
    .line 612
    aget-byte v4, p0, v5

    .line 613
    .line 614
    add-int/2addr v3, v6

    .line 615
    if-le v3, v6, :cond_12

    .line 616
    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 618
    .line 619
    .line 620
    :cond_12
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 625
    .line 626
    .line 627
    add-int/lit8 v5, v5, 0x1

    .line 628
    .line 629
    goto :goto_7

    .line 630
    :cond_13
    const-string p0, "]"

    .line 631
    .line 632
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    goto :goto_8

    .line 640
    :cond_14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v1, "  "

    .line 651
    .line 652
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    check-cast p1, Lrx2;

    .line 660
    .line 661
    iget-object p1, p1, Lrx2;->a:Ljava/lang/String;

    .line 662
    .line 663
    const-string v1, " = "

    .line 664
    .line 665
    invoke-static {v0, p1, v1, p0}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object p0

    .line 669
    return-object p0

    .line 670
    :pswitch_1b
    check-cast p1, Lms2;

    .line 671
    .line 672
    iget p0, p1, Lms2;->b:I

    .line 673
    .line 674
    iget p1, p1, Lms2;->c:I

    .line 675
    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const-string p0, ")"

    .line 691
    .line 692
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    return-object p0

    .line 700
    :pswitch_1c
    check-cast p1, Lxh2;

    .line 701
    .line 702
    sget p0, Lu/sage/MainActivity;->C:I

    .line 703
    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    iget-object p0, p1, Lxh2;->a:Lft1;

    .line 708
    .line 709
    sget-object p1, Lqj2;->i:Lvw;

    .line 710
    .line 711
    iput-object p1, p0, Lft1;->p:Ljava/lang/Object;

    .line 712
    .line 713
    const-string p1, "CLAUDE"

    .line 714
    .line 715
    iput-object p1, p0, Lft1;->q:Ljava/lang/Object;

    .line 716
    .line 717
    iput-boolean v6, p0, Lft1;->o:Z

    .line 718
    .line 719
    return-object v7

    .line 720
    nop

    .line 721
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
