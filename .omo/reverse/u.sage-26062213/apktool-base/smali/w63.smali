.class public final Lw63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrm1;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw63;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lom1;Lul1;)V
    .locals 6

    .line 1
    iget p0, p0, Lw63;->n:I

    .line 2
    .line 3
    const-string v0, "100-continue"

    .line 4
    .line 5
    const-string v1, "Expect"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "CONNECT"

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    instance-of p0, p2, Lvl1;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    check-cast p2, Lvl1;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lvl1;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lvl1;-><init>(Lul1;)V

    .line 25
    .line 26
    .line 27
    move-object p2, p0

    .line 28
    :goto_0
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lhv;

    .line 33
    .line 34
    iget-object p0, p0, Lhv;->n:Lg03;

    .line 35
    .line 36
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lhv;

    .line 41
    .line 42
    iget-object v0, v0, Lhv;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-object v0, Ldn1;->r:Ldn1;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lg03;->a(Lg03;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "Host"

    .line 60
    .line 61
    invoke-interface {p1, v0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    const-string v1, "http.target_host"

    .line 68
    .line 69
    const-class v3, Lem1;

    .line 70
    .line 71
    invoke-virtual {p2, v1, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lem1;

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    const-string v3, "http.connection"

    .line 80
    .line 81
    const-class v4, Lsl1;

    .line 82
    .line 83
    invoke-virtual {p2, v3, v4}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Lsl1;

    .line 88
    .line 89
    instance-of v3, p2, Lgm1;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    check-cast p2, Lgm1;

    .line 94
    .line 95
    invoke-interface {p2}, Lgm1;->X()Ljava/net/InetAddress;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {p2}, Lgm1;->E()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    new-instance v1, Lem1;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {v1, v3, p2, v2}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    if-nez v1, :cond_4

    .line 115
    .line 116
    sget-object p1, Ldn1;->r:Ldn1;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lg03;->a(Lg03;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    new-instance p0, Le03;

    .line 126
    .line 127
    const-string p1, "Target host missing"

    .line 128
    .line 129
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_4
    invoke-virtual {v1}, Lem1;->a()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-interface {p1, v0, p0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    return-void

    .line 145
    :pswitch_0
    invoke-interface {p1, v1}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_6

    .line 150
    .line 151
    instance-of p0, p1, Lzl1;

    .line 152
    .line 153
    if-eqz p0, :cond_6

    .line 154
    .line 155
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lhv;

    .line 160
    .line 161
    iget-object p0, p0, Lhv;->n:Lg03;

    .line 162
    .line 163
    move-object v2, p1

    .line 164
    check-cast v2, Lzl1;

    .line 165
    .line 166
    invoke-interface {v2}, Lzl1;->getEntity()Lxl1;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    invoke-interface {v2}, Lxl1;->getContentLength()J

    .line 173
    .line 174
    .line 175
    move-result-wide v2

    .line 176
    cmp-long v2, v2, v4

    .line 177
    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    sget-object v2, Ldn1;->r:Ldn1;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Lg03;->a(Lg03;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_6

    .line 187
    .line 188
    invoke-static {p2}, Lrl1;->c(Lul1;)Lrl1;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lrl1;->d()Lv63;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    iget-boolean p0, p0, Lv63;->n:Z

    .line 197
    .line 198
    if-eqz p0, :cond_6

    .line 199
    .line 200
    invoke-interface {p1, v1, v0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_6
    return-void

    .line 204
    :pswitch_1
    invoke-interface {p1, v1}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_7

    .line 209
    .line 210
    instance-of p0, p1, Lzl1;

    .line 211
    .line 212
    if-eqz p0, :cond_7

    .line 213
    .line 214
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    check-cast p0, Lhv;

    .line 219
    .line 220
    iget-object p0, p0, Lhv;->n:Lg03;

    .line 221
    .line 222
    move-object p2, p1

    .line 223
    check-cast p2, Lzl1;

    .line 224
    .line 225
    invoke-interface {p2}, Lzl1;->getEntity()Lxl1;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    if-eqz p2, :cond_7

    .line 230
    .line 231
    invoke-interface {p2}, Lxl1;->getContentLength()J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    cmp-long p2, v2, v4

    .line 236
    .line 237
    if-eqz p2, :cond_7

    .line 238
    .line 239
    sget-object p2, Ldn1;->r:Ldn1;

    .line 240
    .line 241
    invoke-virtual {p0, p2}, Lg03;->a(Lg03;)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-nez p0, :cond_7

    .line 246
    .line 247
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const/4 p2, 0x0

    .line 252
    check-cast p0, Lf1;

    .line 253
    .line 254
    const-string v2, "http.protocol.expect-continue"

    .line 255
    .line 256
    invoke-virtual {p0, v2, p2}, Lf1;->d(Ljava/lang/String;Z)Z

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-eqz p0, :cond_7

    .line 261
    .line 262
    invoke-interface {p1, v1, v0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    return-void

    .line 266
    :pswitch_2
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Lhv;

    .line 271
    .line 272
    iget-object p0, p0, Lhv;->o:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    if-eqz p0, :cond_8

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_8
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    const-string p2, "http.default-headers"

    .line 286
    .line 287
    invoke-interface {p0, p2}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    check-cast p0, Ljava/util/Collection;

    .line 292
    .line 293
    if-nez p0, :cond_9

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_9
    move-object v2, p0

    .line 297
    :goto_2
    if-eqz v2, :cond_a

    .line 298
    .line 299
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_a

    .line 308
    .line 309
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    check-cast p2, Lgj1;

    .line 314
    .line 315
    invoke-interface {p1, p2}, Lim1;->addHeader(Lgj1;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_a
    :goto_4
    return-void

    .line 320
    :pswitch_3
    instance-of p0, p1, Lzl1;

    .line 321
    .line 322
    if-eqz p0, :cond_12

    .line 323
    .line 324
    const-string p0, "Transfer-Encoding"

    .line 325
    .line 326
    invoke-interface {p1, p0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-nez p2, :cond_11

    .line 331
    .line 332
    const-string p2, "Content-Length"

    .line 333
    .line 334
    invoke-interface {p1, p2}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_10

    .line 339
    .line 340
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lhv;

    .line 345
    .line 346
    iget-object v0, v0, Lhv;->n:Lg03;

    .line 347
    .line 348
    move-object v1, p1

    .line 349
    check-cast v1, Lzl1;

    .line 350
    .line 351
    invoke-interface {v1}, Lzl1;->getEntity()Lxl1;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-nez v1, :cond_b

    .line 356
    .line 357
    const-string p0, "0"

    .line 358
    .line 359
    invoke-interface {p1, p2, p0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_7

    .line 363
    .line 364
    :cond_b
    invoke-interface {v1}, Lxl1;->isChunked()Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-nez v2, :cond_d

    .line 369
    .line 370
    invoke-interface {v1}, Lxl1;->getContentLength()J

    .line 371
    .line 372
    .line 373
    move-result-wide v2

    .line 374
    cmp-long v2, v2, v4

    .line 375
    .line 376
    if-gez v2, :cond_c

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_c
    invoke-interface {v1}, Lxl1;->getContentLength()J

    .line 380
    .line 381
    .line 382
    move-result-wide v2

    .line 383
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-interface {p1, p2, p0}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_d
    :goto_5
    sget-object p2, Ldn1;->r:Ldn1;

    .line 392
    .line 393
    invoke-virtual {v0, p2}, Lg03;->a(Lg03;)Z

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    if-nez p2, :cond_f

    .line 398
    .line 399
    const-string p2, "chunked"

    .line 400
    .line 401
    invoke-interface {p1, p0, p2}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_6
    invoke-interface {v1}, Lxl1;->getContentType()Lgj1;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    if-eqz p0, :cond_e

    .line 409
    .line 410
    const-string p0, "Content-Type"

    .line 411
    .line 412
    invoke-interface {p1, p0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    if-nez p0, :cond_e

    .line 417
    .line 418
    invoke-interface {v1}, Lxl1;->getContentType()Lgj1;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-interface {p1, p0}, Lim1;->addHeader(Lgj1;)V

    .line 423
    .line 424
    .line 425
    :cond_e
    invoke-interface {v1}, Lxl1;->getContentEncoding()Lgj1;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    if-eqz p0, :cond_12

    .line 430
    .line 431
    const-string p0, "Content-Encoding"

    .line 432
    .line 433
    invoke-interface {p1, p0}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    if-nez p0, :cond_12

    .line 438
    .line 439
    invoke-interface {v1}, Lxl1;->getContentEncoding()Lgj1;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    invoke-interface {p1, p0}, Lim1;->addHeader(Lgj1;)V

    .line 444
    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_f
    new-instance p0, Le03;

    .line 448
    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string p2, "Chunked transfer encoding not allowed for "

    .line 452
    .line 453
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p0

    .line 471
    :cond_10
    new-instance p0, Le03;

    .line 472
    .line 473
    const-string p1, "Content-Length header already present"

    .line 474
    .line 475
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw p0

    .line 483
    :cond_11
    new-instance p0, Le03;

    .line 484
    .line 485
    const-string p1, "Transfer-encoding header already present"

    .line 486
    .line 487
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw p0

    .line 495
    :cond_12
    :goto_7
    return-void

    .line 496
    nop

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
