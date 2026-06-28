.class public abstract Lnm2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lcg2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lsn2;->a:Lcg2;

    .line 2
    .line 3
    new-instance v0, Lcg2;

    .line 4
    .line 5
    invoke-direct {v0}, Lcg2;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnm2;->a:Lcg2;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lmd2;II)V
    .locals 3

    .line 1
    instance-of v0, p0, Lkr0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lkr0;

    .line 7
    .line 8
    iget v1, v0, Lkr0;->B:I

    .line 9
    .line 10
    and-int v2, v1, p1

    .line 11
    .line 12
    invoke-static {p0, v2, p2}, Lnm2;->b(Lmd2;II)V

    .line 13
    .line 14
    .line 15
    not-int p0, v1

    .line 16
    and-int/2addr p0, p1

    .line 17
    iget-object p1, v0, Lkr0;->C:Lmd2;

    .line 18
    .line 19
    :goto_0
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p1, p0, p2}, Lnm2;->a(Lmd2;II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lmd2;->s:Lmd2;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    iget v0, p0, Lmd2;->p:I

    .line 29
    .line 30
    and-int/2addr p1, v0

    .line 31
    invoke-static {p0, p1, p2}, Lnm2;->b(Lmd2;II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final b(Lmd2;II)V
    .locals 11

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lmd2;->v0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v0, p0, Loy1;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    check-cast v0, Loy1;

    .line 22
    .line 23
    invoke-static {v0}, Lca;->u(Loy1;)V

    .line 24
    .line 25
    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    invoke-static {p0, v1}, Lw80;->P(Ljr0;I)Lmm2;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lmm2;->a1()V

    .line 33
    .line 34
    .line 35
    :cond_1
    and-int/lit16 v0, p1, 0x80

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    if-eq p2, v1, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lxy1;->E()V

    .line 46
    .line 47
    .line 48
    :cond_2
    const/high16 v0, 0x400000

    .line 49
    .line 50
    and-int/2addr v0, p1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    if-eq p2, v1, :cond_3

    .line 55
    .line 56
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lxy1;->W(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    and-int/lit16 v0, p1, 0x100

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x1

    .line 67
    if-eqz v0, :cond_8

    .line 68
    .line 69
    instance-of v0, p0, Lfh1;

    .line 70
    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    if-eq p2, v4, :cond_5

    .line 74
    .line 75
    if-eq p2, v1, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v5, v0, Lxy1;->c0:I

    .line 83
    .line 84
    add-int/lit8 v5, v5, -0x1

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lxy1;->c0(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v5, v0, Lxy1;->c0:I

    .line 95
    .line 96
    add-int/2addr v5, v4

    .line 97
    invoke-virtual {v0, v5}, Lxy1;->c0(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    if-eq p2, v1, :cond_8

    .line 101
    .line 102
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v5, v0, Lxy1;->c0:I

    .line 107
    .line 108
    if-eqz v5, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Lxy1;->p()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_8

    .line 115
    .line 116
    invoke-virtual {v0}, Lxy1;->q()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_8

    .line 121
    .line 122
    iget-boolean v5, v0, Lxy1;->b0:Z

    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Lq9;

    .line 132
    .line 133
    iget-object v6, v5, Lq9;->f0:Lab2;

    .line 134
    .line 135
    iget-object v6, v6, Lab2;->e:Lxh1;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget v7, v0, Lxy1;->c0:I

    .line 141
    .line 142
    if-lez v7, :cond_7

    .line 143
    .line 144
    iget-object v6, v6, Lxh1;->n:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v6, Lug2;

    .line 147
    .line 148
    invoke-virtual {v6, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iput-boolean v4, v0, Lxy1;->b0:Z

    .line 152
    .line 153
    :cond_7
    invoke-virtual {v5, v3}, Lq9;->I(Lxy1;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_1
    and-int/lit8 v0, p1, 0x4

    .line 157
    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    instance-of v0, p0, Ljx0;

    .line 161
    .line 162
    if-eqz v0, :cond_9

    .line 163
    .line 164
    move-object v0, p0

    .line 165
    check-cast v0, Ljx0;

    .line 166
    .line 167
    invoke-static {v0}, Lkt4;->Q(Ljx0;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    and-int/lit8 v0, p1, 0x8

    .line 171
    .line 172
    if-eqz v0, :cond_a

    .line 173
    .line 174
    instance-of v0, p0, Leh3;

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-boolean v4, v0, Lxy1;->E:Z

    .line 183
    .line 184
    :cond_a
    and-int/lit8 v0, p1, 0x40

    .line 185
    .line 186
    if-eqz v0, :cond_b

    .line 187
    .line 188
    instance-of v0, p0, Lxs2;

    .line 189
    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    move-object v0, p0

    .line 193
    check-cast v0, Lxs2;

    .line 194
    .line 195
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v0, v0, Lxy1;->T:Lbz1;

    .line 200
    .line 201
    iget-object v5, v0, Lbz1;->p:Lcb2;

    .line 202
    .line 203
    iput-boolean v4, v5, Lcb2;->D:Z

    .line 204
    .line 205
    iget-object v0, v0, Lbz1;->q:Lq82;

    .line 206
    .line 207
    if-eqz v0, :cond_b

    .line 208
    .line 209
    iput-boolean v4, v0, Lq82;->J:Z

    .line 210
    .line 211
    :cond_b
    and-int/lit16 v0, p1, 0x800

    .line 212
    .line 213
    if-eqz v0, :cond_18

    .line 214
    .line 215
    instance-of v0, p0, Lda1;

    .line 216
    .line 217
    if-eqz v0, :cond_18

    .line 218
    .line 219
    move-object v0, p0

    .line 220
    check-cast v0, Lda1;

    .line 221
    .line 222
    sput-object v3, Li20;->b:Ljava/lang/Boolean;

    .line 223
    .line 224
    sget-object v5, Li20;->a:Li20;

    .line 225
    .line 226
    invoke-interface {v0, v5}, Lda1;->Q(Lba1;)V

    .line 227
    .line 228
    .line 229
    sget-object v5, Li20;->b:Ljava/lang/Boolean;

    .line 230
    .line 231
    if-eqz v5, :cond_18

    .line 232
    .line 233
    check-cast v0, Lmd2;

    .line 234
    .line 235
    iget-object v5, v0, Lmd2;->n:Lmd2;

    .line 236
    .line 237
    iget-boolean v5, v5, Lmd2;->A:Z

    .line 238
    .line 239
    if-nez v5, :cond_c

    .line 240
    .line 241
    const-string v5, "visitChildren called on an unattached node"

    .line 242
    .line 243
    invoke-static {v5}, Lar1;->b(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    new-instance v5, Lug2;

    .line 247
    .line 248
    const/16 v6, 0x10

    .line 249
    .line 250
    new-array v7, v6, [Lmd2;

    .line 251
    .line 252
    invoke-direct {v5, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 256
    .line 257
    iget-object v7, v0, Lmd2;->s:Lmd2;

    .line 258
    .line 259
    if-nez v7, :cond_d

    .line 260
    .line 261
    invoke-static {v5, v0}, Lw80;->c(Lug2;Lmd2;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_d
    invoke-virtual {v5, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_e
    :goto_2
    iget v0, v5, Lug2;->p:I

    .line 269
    .line 270
    if-eqz v0, :cond_18

    .line 271
    .line 272
    add-int/lit8 v0, v0, -0x1

    .line 273
    .line 274
    invoke-virtual {v5, v0}, Lug2;->l(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lmd2;

    .line 279
    .line 280
    iget v7, v0, Lmd2;->q:I

    .line 281
    .line 282
    and-int/lit16 v7, v7, 0x400

    .line 283
    .line 284
    if-nez v7, :cond_f

    .line 285
    .line 286
    invoke-static {v5, v0}, Lw80;->c(Lug2;Lmd2;)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_f
    :goto_3
    if-eqz v0, :cond_e

    .line 291
    .line 292
    iget v7, v0, Lmd2;->p:I

    .line 293
    .line 294
    and-int/lit16 v7, v7, 0x400

    .line 295
    .line 296
    if-eqz v7, :cond_17

    .line 297
    .line 298
    move-object v7, v3

    .line 299
    :goto_4
    if-eqz v0, :cond_e

    .line 300
    .line 301
    instance-of v8, v0, Lka1;

    .line 302
    .line 303
    if-eqz v8, :cond_10

    .line 304
    .line 305
    check-cast v0, Lka1;

    .line 306
    .line 307
    invoke-static {v0}, Lw80;->S(Ljr0;)Lsr2;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    check-cast v8, Lq9;

    .line 312
    .line 313
    invoke-virtual {v8}, Lq9;->getFocusOwner()Ly91;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Ldh;

    .line 318
    .line 319
    iget-object v8, v8, Ldh;->d:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v8, Lw91;

    .line 322
    .line 323
    iget-object v9, v8, Lw91;->c:Llg2;

    .line 324
    .line 325
    invoke-virtual {v9, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_16

    .line 330
    .line 331
    invoke-virtual {v8}, Lw91;->a()V

    .line 332
    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_10
    iget v8, v0, Lmd2;->p:I

    .line 336
    .line 337
    and-int/lit16 v8, v8, 0x400

    .line 338
    .line 339
    if-eqz v8, :cond_16

    .line 340
    .line 341
    instance-of v8, v0, Lkr0;

    .line 342
    .line 343
    if-eqz v8, :cond_16

    .line 344
    .line 345
    move-object v8, v0

    .line 346
    check-cast v8, Lkr0;

    .line 347
    .line 348
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 349
    .line 350
    move v9, v2

    .line 351
    :goto_5
    if-eqz v8, :cond_15

    .line 352
    .line 353
    iget v10, v8, Lmd2;->p:I

    .line 354
    .line 355
    and-int/lit16 v10, v10, 0x400

    .line 356
    .line 357
    if-eqz v10, :cond_14

    .line 358
    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    if-ne v9, v4, :cond_11

    .line 362
    .line 363
    move-object v0, v8

    .line 364
    goto :goto_6

    .line 365
    :cond_11
    if-nez v7, :cond_12

    .line 366
    .line 367
    new-instance v7, Lug2;

    .line 368
    .line 369
    new-array v10, v6, [Lmd2;

    .line 370
    .line 371
    invoke-direct {v7, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_12
    if-eqz v0, :cond_13

    .line 375
    .line 376
    invoke-virtual {v7, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    move-object v0, v3

    .line 380
    :cond_13
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_14
    :goto_6
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_15
    if-ne v9, v4, :cond_16

    .line 387
    .line 388
    goto :goto_4

    .line 389
    :cond_16
    :goto_7
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    goto :goto_4

    .line 394
    :cond_17
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_18
    and-int/lit16 v0, p1, 0x1000

    .line 398
    .line 399
    if-eqz v0, :cond_19

    .line 400
    .line 401
    instance-of v0, p0, Lkq;

    .line 402
    .line 403
    if-eqz v0, :cond_19

    .line 404
    .line 405
    move-object v0, p0

    .line 406
    check-cast v0, Lkq;

    .line 407
    .line 408
    invoke-static {v0}, Lw80;->S(Ljr0;)Lsr2;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    check-cast v2, Lq9;

    .line 413
    .line 414
    invoke-virtual {v2}, Lq9;->getFocusOwner()Ly91;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Ldh;

    .line 419
    .line 420
    iget-object v2, v2, Ldh;->d:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v2, Lw91;

    .line 423
    .line 424
    iget-object v3, v2, Lw91;->d:Llg2;

    .line 425
    .line 426
    invoke-virtual {v3, v0}, Llg2;->a(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_19

    .line 431
    .line 432
    invoke-virtual {v2}, Lw91;->a()V

    .line 433
    .line 434
    .line 435
    :cond_19
    const/high16 v0, 0x200000

    .line 436
    .line 437
    and-int/2addr p1, v0

    .line 438
    if-eqz p1, :cond_1a

    .line 439
    .line 440
    instance-of p1, p0, Ljq1;

    .line 441
    .line 442
    if-eqz p1, :cond_1a

    .line 443
    .line 444
    if-ne p2, v1, :cond_1a

    .line 445
    .line 446
    check-cast p0, Ljq1;

    .line 447
    .line 448
    invoke-interface {p0}, Ljq1;->x()V

    .line 449
    .line 450
    .line 451
    :cond_1a
    :goto_8
    return-void
.end method

.method public static final c(Lmd2;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Lnm2;->a(Lmd2;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final d(Lld2;)I
    .locals 2

    .line 1
    instance-of v0, p0, Lpf0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    instance-of v1, p0, Lix0;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    :cond_1
    instance-of v1, p0, Lch3;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    :cond_2
    instance-of v1, p0, Lfw2;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x10

    .line 25
    .line 26
    :cond_3
    instance-of v1, p0, Lce;

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    or-int/lit8 v0, v0, 0x40

    .line 31
    .line 32
    :cond_4
    instance-of p0, p0, Lxx;

    .line 33
    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    const/high16 p0, 0x80000

    .line 37
    .line 38
    or-int/2addr p0, v0

    .line 39
    return p0

    .line 40
    :cond_5
    return v0
.end method

.method public static final e(Lmd2;)I
    .locals 5

    .line 1
    iget v0, p0, Lmd2;->p:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lnm2;->a:Lcg2;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcg2;->d(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    iget-object p0, v1, Lcg2;->c:[I

    .line 19
    .line 20
    aget p0, p0, v2

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    instance-of v2, p0, Loy1;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v2, 0x1

    .line 30
    :goto_0
    instance-of v3, p0, Ljx0;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    or-int/lit8 v2, v2, 0x4

    .line 35
    .line 36
    :cond_3
    instance-of v3, p0, Leh3;

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    or-int/lit8 v2, v2, 0x8

    .line 41
    .line 42
    :cond_4
    instance-of v3, p0, Lcw2;

    .line 43
    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    or-int/lit8 v2, v2, 0x10

    .line 47
    .line 48
    :cond_5
    instance-of v3, p0, Lpd2;

    .line 49
    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x20

    .line 53
    .line 54
    :cond_6
    instance-of v3, p0, Lxs2;

    .line 55
    .line 56
    if-eqz v3, :cond_7

    .line 57
    .line 58
    or-int/lit8 v2, v2, 0x40

    .line 59
    .line 60
    :cond_7
    instance-of v3, p0, Ley1;

    .line 61
    .line 62
    if-eqz v3, :cond_8

    .line 63
    .line 64
    const v3, 0x400080

    .line 65
    .line 66
    .line 67
    or-int/2addr v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    instance-of v3, p0, Ljb2;

    .line 70
    .line 71
    if-eqz v3, :cond_9

    .line 72
    .line 73
    or-int/lit16 v2, v2, 0x80

    .line 74
    .line 75
    :cond_9
    :goto_1
    instance-of v3, p0, Lfh1;

    .line 76
    .line 77
    if-eqz v3, :cond_a

    .line 78
    .line 79
    or-int/lit16 v2, v2, 0x100

    .line 80
    .line 81
    :cond_a
    instance-of v3, p0, Lka1;

    .line 82
    .line 83
    if-eqz v3, :cond_b

    .line 84
    .line 85
    or-int/lit16 v2, v2, 0x400

    .line 86
    .line 87
    :cond_b
    instance-of v4, p0, Lda1;

    .line 88
    .line 89
    if-eqz v4, :cond_c

    .line 90
    .line 91
    or-int/lit16 v2, v2, 0x800

    .line 92
    .line 93
    :cond_c
    instance-of v4, p0, Lkq;

    .line 94
    .line 95
    if-eqz v4, :cond_d

    .line 96
    .line 97
    or-int/lit16 v2, v2, 0x1000

    .line 98
    .line 99
    :cond_d
    instance-of v4, p0, Lpx1;

    .line 100
    .line 101
    if-eqz v4, :cond_e

    .line 102
    .line 103
    or-int/lit16 v2, v2, 0x2000

    .line 104
    .line 105
    :cond_e
    instance-of v4, p0, Lf9;

    .line 106
    .line 107
    if-eqz v4, :cond_f

    .line 108
    .line 109
    or-int/lit16 v2, v2, 0x4000

    .line 110
    .line 111
    :cond_f
    instance-of v4, p0, Lfc0;

    .line 112
    .line 113
    if-eqz v4, :cond_10

    .line 114
    .line 115
    const v4, 0x8000

    .line 116
    .line 117
    .line 118
    or-int/2addr v2, v4

    .line 119
    :cond_10
    instance-of v4, p0, Lb24;

    .line 120
    .line 121
    if-eqz v4, :cond_11

    .line 122
    .line 123
    const/high16 v4, 0x40000

    .line 124
    .line 125
    or-int/2addr v2, v4

    .line 126
    :cond_11
    instance-of v4, p0, Lxx;

    .line 127
    .line 128
    if-eqz v4, :cond_12

    .line 129
    .line 130
    const/high16 v4, 0x80000

    .line 131
    .line 132
    or-int/2addr v2, v4

    .line 133
    :cond_12
    if-eqz v3, :cond_13

    .line 134
    .line 135
    const/high16 v3, 0x100000

    .line 136
    .line 137
    or-int/2addr v2, v3

    .line 138
    :cond_13
    instance-of v3, p0, Ljq1;

    .line 139
    .line 140
    if-eqz v3, :cond_14

    .line 141
    .line 142
    const/high16 v3, 0x200000

    .line 143
    .line 144
    or-int/2addr v2, v3

    .line 145
    :cond_14
    instance-of p0, p0, Lzz1;

    .line 146
    .line 147
    if-eqz p0, :cond_15

    .line 148
    .line 149
    const/high16 p0, 0x800000

    .line 150
    .line 151
    or-int/2addr v2, p0

    .line 152
    :cond_15
    invoke-virtual {v1, v2, v0}, Lcg2;->g(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return v2
.end method

.method public static final f(Lmd2;)I
    .locals 2

    .line 1
    instance-of v0, p0, Lkr0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lkr0;

    .line 6
    .line 7
    iget v0, p0, Lkr0;->B:I

    .line 8
    .line 9
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lnm2;->f(Lmd2;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int/2addr v0, v1

    .line 18
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v0

    .line 22
    :cond_1
    invoke-static {p0}, Lnm2;->e(Lmd2;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static final g(I)Z
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const/high16 v3, 0x400000

    .line 11
    .line 12
    and-int/2addr p0, v3

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_1
    or-int p0, v0, v1

    .line 17
    .line 18
    return p0
.end method
