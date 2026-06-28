.class public final synthetic Lt7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lka0;


# direct methods
.method public synthetic constructor <init>(Lka0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt7;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lt7;->o:Lka0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lka0;II)V
    .locals 0

    .line 9
    iput p3, p0, Lt7;->n:I

    iput-object p1, p0, Lt7;->o:Lka0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lt7;->n:I

    .line 2
    .line 3
    sget-object v1, Ll80;->a:Ll80;

    .line 4
    .line 5
    sget-object v2, Lth;->c:Loh;

    .line 6
    .line 7
    sget-object v3, Lkd2;->b:Lkd2;

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    sget-object v9, Lt64;->a:Lt64;

    .line 15
    .line 16
    iget-object p0, p0, Lt7;->o:Lka0;

    .line 17
    .line 18
    check-cast p1, Lag1;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lqj0;->f0(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p0, p1, p2}, Lex2;->a(Lka0;Lag1;I)V

    .line 33
    .line 34
    .line 35
    return-object v9

    .line 36
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v4}, Lqj0;->f0(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {p0, p1, p2}, Lfl4;->b(Lka0;Lag1;I)V

    .line 44
    .line 45
    .line 46
    return-object v9

    .line 47
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    and-int/lit8 v0, p2, 0x3

    .line 52
    .line 53
    if-eq v0, v7, :cond_0

    .line 54
    .line 55
    move v6, v8

    .line 56
    :cond_0
    and-int/2addr p2, v8

    .line 57
    invoke-virtual {p1, p2, v6}, Lag1;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    sget-object p2, Ll91;->a:Ll91;

    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, p2, p1, v0}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-object v9

    .line 77
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    and-int/lit8 v0, p2, 0x3

    .line 82
    .line 83
    if-eq v0, v7, :cond_2

    .line 84
    .line 85
    move v0, v8

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v0, v6

    .line 88
    :goto_1
    and-int/2addr p2, v8

    .line 89
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    sget-object p2, Lmj1;->z:Law;

    .line 96
    .line 97
    invoke-static {v2, p2, p1, v6}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget-wide v6, p1, Lag1;->T:J

    .line 102
    .line 103
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {p1, v3}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v4, Llb0;->c:Lkb0;

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    sget-object v4, Lkb0;->b:Lic0;

    .line 121
    .line 122
    invoke-virtual {p1}, Lag1;->Z()V

    .line 123
    .line 124
    .line 125
    iget-boolean v6, p1, Lag1;->S:Z

    .line 126
    .line 127
    if-eqz v6, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1, v4}, Lag1;->k(Lne1;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {p1}, Lag1;->j0()V

    .line 134
    .line 135
    .line 136
    :goto_2
    sget-object v4, Lkb0;->f:Lfd;

    .line 137
    .line 138
    invoke-static {v4, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object p2, Lkb0;->e:Lfd;

    .line 142
    .line 143
    invoke-static {p2, p1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    sget-object v0, Lkb0;->g:Lfd;

    .line 151
    .line 152
    invoke-static {v0, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object p2, Lkb0;->h:Ll9;

    .line 156
    .line 157
    invoke-static {p1, p2}, Lht4;->y(Lag1;Lpe1;)V

    .line 158
    .line 159
    .line 160
    sget-object p2, Lkb0;->d:Lfd;

    .line 161
    .line 162
    invoke-static {p2, p1, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0, v1, p1, p2}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v8}, Lag1;->p(Z)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    invoke-virtual {p1}, Lag1;->Q()V

    .line 177
    .line 178
    .line 179
    :goto_3
    return-object v9

    .line 180
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    and-int/lit8 v0, p2, 0x3

    .line 185
    .line 186
    if-eq v0, v7, :cond_5

    .line 187
    .line 188
    move v0, v8

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    move v0, v6

    .line 191
    :goto_4
    and-int/2addr p2, v8

    .line 192
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_7

    .line 197
    .line 198
    sget-object p2, Lmj1;->z:Law;

    .line 199
    .line 200
    invoke-static {v2, p2, p1, v6}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iget-wide v6, p1, Lag1;->T:J

    .line 205
    .line 206
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {p1, v3}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    sget-object v4, Llb0;->c:Lkb0;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v4, Lkb0;->b:Lic0;

    .line 224
    .line 225
    invoke-virtual {p1}, Lag1;->Z()V

    .line 226
    .line 227
    .line 228
    iget-boolean v6, p1, Lag1;->S:Z

    .line 229
    .line 230
    if-eqz v6, :cond_6

    .line 231
    .line 232
    invoke-virtual {p1, v4}, Lag1;->k(Lne1;)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_6
    invoke-virtual {p1}, Lag1;->j0()V

    .line 237
    .line 238
    .line 239
    :goto_5
    sget-object v4, Lkb0;->f:Lfd;

    .line 240
    .line 241
    invoke-static {v4, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object p2, Lkb0;->e:Lfd;

    .line 245
    .line 246
    invoke-static {p2, p1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    sget-object v0, Lkb0;->g:Lfd;

    .line 254
    .line 255
    invoke-static {v0, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    sget-object p2, Lkb0;->h:Ll9;

    .line 259
    .line 260
    invoke-static {p1, p2}, Lht4;->y(Lag1;Lpe1;)V

    .line 261
    .line 262
    .line 263
    sget-object p2, Lkb0;->d:Lfd;

    .line 264
    .line 265
    invoke-static {p2, p1, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p0, v1, p1, p2}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v8}, Lag1;->p(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_7
    invoke-virtual {p1}, Lag1;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_6
    return-object v9

    .line 283
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    and-int/lit8 v1, p2, 0x3

    .line 292
    .line 293
    if-eq v1, v7, :cond_8

    .line 294
    .line 295
    move v1, v8

    .line 296
    goto :goto_7

    .line 297
    :cond_8
    move v1, v6

    .line 298
    :goto_7
    and-int/2addr p2, v8

    .line 299
    invoke-virtual {p1, p2, v1}, Lag1;->N(IZ)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_9

    .line 304
    .line 305
    invoke-virtual {p0, p1, v0}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    const p0, -0x41af3d05

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v6}, Lag1;->p(Z)V

    .line 315
    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_9
    invoke-virtual {p1}, Lag1;->Q()V

    .line 319
    .line 320
    .line 321
    :goto_8
    return-object v9

    .line 322
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    and-int/lit8 v0, p2, 0x3

    .line 327
    .line 328
    if-eq v0, v7, :cond_a

    .line 329
    .line 330
    move v6, v8

    .line 331
    :cond_a
    and-int/2addr p2, v8

    .line 332
    invoke-virtual {p1, p2, v6}, Lag1;->N(IZ)Z

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    if-eqz p2, :cond_10

    .line 337
    .line 338
    sget-object p2, Lat1;->c:Lis3;

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    check-cast p2, Lcw0;

    .line 345
    .line 346
    iget p2, p2, Lcw0;->n:F

    .line 347
    .line 348
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    const/4 v1, 0x0

    .line 353
    if-nez v0, :cond_b

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_b
    move p2, v1

    .line 357
    :goto_9
    sget-object v0, Llz;->a:Lds2;

    .line 358
    .line 359
    sget-object v0, Ldx2;->a:Lws2;

    .line 360
    .line 361
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Ljava/lang/Boolean;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_c

    .line 372
    .line 373
    const/high16 v0, 0x42100000    # 36.0f

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_c
    const/high16 v0, 0x42200000    # 40.0f

    .line 377
    .line 378
    :goto_a
    sub-float/2addr p2, v0

    .line 379
    const/high16 v0, 0x41000000    # 8.0f

    .line 380
    .line 381
    sub-float p2, v0, p2

    .line 382
    .line 383
    new-instance v2, Lcw0;

    .line 384
    .line 385
    invoke-direct {v2, p2}, Lcw0;-><init>(F)V

    .line 386
    .line 387
    .line 388
    new-instance p2, Lcw0;

    .line 389
    .line 390
    invoke-direct {p2, v1}, Lcw0;-><init>(F)V

    .line 391
    .line 392
    .line 393
    new-instance v1, Lcw0;

    .line 394
    .line 395
    invoke-direct {v1, v0}, Lcw0;-><init>(F)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2, v1}, Lcw0;->compareTo(Ljava/lang/Object;)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-gtz v0, :cond_f

    .line 403
    .line 404
    invoke-virtual {v2, p2}, Lcw0;->compareTo(Ljava/lang/Object;)I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-gez v0, :cond_d

    .line 409
    .line 410
    move-object v2, p2

    .line 411
    goto :goto_b

    .line 412
    :cond_d
    invoke-virtual {v2, v1}, Lcw0;->compareTo(Ljava/lang/Object;)I

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    if-lez p2, :cond_e

    .line 417
    .line 418
    move-object v2, v1

    .line 419
    :cond_e
    :goto_b
    new-instance p2, Lt7;

    .line 420
    .line 421
    invoke-direct {p2, p0, v8}, Lt7;-><init>(Lka0;I)V

    .line 422
    .line 423
    .line 424
    const p0, -0x1b6383e2

    .line 425
    .line 426
    .line 427
    invoke-static {p0, p2, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    const/16 p2, 0x186

    .line 432
    .line 433
    iget v0, v2, Lcw0;->n:F

    .line 434
    .line 435
    invoke-static {v0, p0, p1, p2}, Lx7;->b(FLka0;Lag1;I)V

    .line 436
    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_f
    const-string p0, " is less than minimum "

    .line 440
    .line 441
    const/16 p1, 0x2e

    .line 442
    .line 443
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 444
    .line 445
    invoke-static {v0, v1, p0, p2, p1}, Lk21;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 446
    .line 447
    .line 448
    const/4 v9, 0x0

    .line 449
    goto :goto_c

    .line 450
    :cond_10
    invoke-virtual {p1}, Lag1;->Q()V

    .line 451
    .line 452
    .line 453
    :goto_c
    return-object v9

    .line 454
    nop

    .line 455
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
