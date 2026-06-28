.class public final synthetic Lv7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ldf1;

.field public final synthetic o:Ldf1;

.field public final synthetic p:Ldf1;

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:Lka0;


# direct methods
.method public synthetic constructor <init>(Ldf1;Ldf1;Ldf1;JJJJLka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7;->n:Ldf1;

    .line 5
    .line 6
    iput-object p2, p0, Lv7;->o:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lv7;->p:Ldf1;

    .line 9
    .line 10
    iput-wide p4, p0, Lv7;->q:J

    .line 11
    .line 12
    iput-wide p6, p0, Lv7;->r:J

    .line 13
    .line 14
    iput-wide p8, p0, Lv7;->s:J

    .line 15
    .line 16
    iput-wide p10, p0, Lv7;->t:J

    .line 17
    .line 18
    iput-object p12, p0, Lv7;->u:Lka0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    check-cast v5, Lag1;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    move v2, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v8

    .line 25
    :goto_0
    and-int/2addr v1, v7

    .line 26
    invoke-virtual {v5, v1, v2}, Lag1;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_7

    .line 31
    .line 32
    sget-object v1, Lkd2;->b:Lkd2;

    .line 33
    .line 34
    sget-object v2, Lm7;->a:Lds2;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lth;->c:Loh;

    .line 41
    .line 42
    sget-object v3, Lmj1;->z:Law;

    .line 43
    .line 44
    invoke-static {v2, v3, v5, v8}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-wide v3, v5, Lag1;->T:J

    .line 49
    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v5}, Lag1;->l()Lhu2;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v5, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v6, Llb0;->c:Lkb0;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v9, Lkb0;->b:Lic0;

    .line 68
    .line 69
    invoke-virtual {v5}, Lag1;->Z()V

    .line 70
    .line 71
    .line 72
    iget-boolean v6, v5, Lag1;->S:Z

    .line 73
    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v5, v9}, Lag1;->k(Lne1;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v5}, Lag1;->j0()V

    .line 81
    .line 82
    .line 83
    :goto_1
    sget-object v10, Lkb0;->f:Lfd;

    .line 84
    .line 85
    invoke-static {v10, v5, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v11, Lkb0;->e:Lfd;

    .line 89
    .line 90
    invoke-static {v11, v5, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v12, Lkb0;->g:Lfd;

    .line 98
    .line 99
    invoke-static {v12, v5, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object v13, Lkb0;->h:Ll9;

    .line 103
    .line 104
    invoke-static {v5, v13}, Lht4;->y(Lag1;Lpe1;)V

    .line 105
    .line 106
    .line 107
    sget-object v14, Lkb0;->d:Lfd;

    .line 108
    .line 109
    invoke-static {v14, v5, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lv7;->n:Ldf1;

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    const v2, 0x14a0f326

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 123
    .line 124
    .line 125
    move v2, v8

    .line 126
    move-object/from16 p2, v9

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    const v2, 0x14a0f327

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lbg0;->a:Llc0;

    .line 136
    .line 137
    new-instance v3, Lt70;

    .line 138
    .line 139
    move-object/from16 p2, v9

    .line 140
    .line 141
    iget-wide v8, v0, Lv7;->q:J

    .line 142
    .line 143
    invoke-direct {v3, v8, v9}, Lt70;-><init>(J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v3, Ln7;

    .line 151
    .line 152
    invoke-direct {v3, v7, v1}, Ln7;-><init>(ILdf1;)V

    .line 153
    .line 154
    .line 155
    const v4, -0x433e366e

    .line 156
    .line 157
    .line 158
    invoke-static {v4, v3, v5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const/16 v4, 0x38

    .line 163
    .line 164
    invoke-static {v2, v3, v5, v4}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 165
    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-virtual {v5, v2}, Lag1;->p(Z)V

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object v3, v0, Lv7;->o:Ldf1;

    .line 172
    .line 173
    if-nez v3, :cond_3

    .line 174
    .line 175
    const v1, 0x14a5c575

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v1}, Lag1;->W(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v2}, Lag1;->p(Z)V

    .line 182
    .line 183
    .line 184
    move v8, v2

    .line 185
    goto :goto_4

    .line 186
    :cond_3
    const v2, 0x14a5c576

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 190
    .line 191
    .line 192
    sget-object v2, Ldx2;->a:Lws2;

    .line 193
    .line 194
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_4

    .line 205
    .line 206
    const v2, 0x6c029785

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 210
    .line 211
    .line 212
    sget-object v2, Lwa2;->a:Lis3;

    .line 213
    .line 214
    invoke-virtual {v5, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lua2;

    .line 219
    .line 220
    iget-object v2, v2, Lua2;->b:Le54;

    .line 221
    .line 222
    iget-object v15, v2, Le54;->f:Lay3;

    .line 223
    .line 224
    const/16 v2, 0x14

    .line 225
    .line 226
    invoke-static {v2}, Lon4;->D(I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v16

    .line 230
    const/16 v2, 0x1a

    .line 231
    .line 232
    invoke-static {v2}, Lon4;->D(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v22

    .line 236
    const/16 v24, 0x0

    .line 237
    .line 238
    const v25, 0xfdfffd

    .line 239
    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const-wide/16 v20, 0x0

    .line 246
    .line 247
    invoke-static/range {v15 .. v25}, Lay3;->a(Lay3;JLpb1;Lra1;JJLi32;I)Lay3;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const/4 v8, 0x0

    .line 252
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_4
    const/4 v8, 0x0

    .line 257
    const v2, 0x6c05d42a

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 261
    .line 262
    .line 263
    sget-object v2, Lht4;->i:Lf54;

    .line 264
    .line 265
    invoke-static {v2, v5}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 270
    .line 271
    .line 272
    :goto_3
    new-instance v4, Ll4;

    .line 273
    .line 274
    invoke-direct {v4, v7, v1, v3}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    const v1, 0x43fb671

    .line 278
    .line 279
    .line 280
    invoke-static {v1, v4, v5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    const/16 v6, 0x180

    .line 285
    .line 286
    move-object v3, v2

    .line 287
    iget-wide v1, v0, Lv7;->r:J

    .line 288
    .line 289
    invoke-static/range {v1 .. v6}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 293
    .line 294
    .line 295
    :goto_4
    iget-object v1, v0, Lv7;->p:Ldf1;

    .line 296
    .line 297
    if-nez v1, :cond_5

    .line 298
    .line 299
    const v1, 0x14b73765

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v1}, Lag1;->W(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_5
    const v2, 0x14b73766

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5, v2}, Lag1;->W(I)V

    .line 313
    .line 314
    .line 315
    sget-object v2, Lht4;->k:Lf54;

    .line 316
    .line 317
    invoke-static {v2, v5}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    new-instance v2, Ln7;

    .line 322
    .line 323
    invoke-direct {v2, v8, v1}, Ln7;-><init>(ILdf1;)V

    .line 324
    .line 325
    .line 326
    const v1, 0x2a0e58f2

    .line 327
    .line 328
    .line 329
    invoke-static {v1, v2, v5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const/16 v6, 0x180

    .line 334
    .line 335
    iget-wide v1, v0, Lv7;->s:J

    .line 336
    .line 337
    invoke-static/range {v1 .. v6}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5, v8}, Lag1;->p(Z)V

    .line 341
    .line 342
    .line 343
    :goto_5
    sget-object v1, Lmj1;->B:Law;

    .line 344
    .line 345
    new-instance v2, Lak1;

    .line 346
    .line 347
    invoke-direct {v2, v1}, Lak1;-><init>(Law;)V

    .line 348
    .line 349
    .line 350
    sget-object v1, Lmj1;->o:Lcw;

    .line 351
    .line 352
    invoke-static {v1, v8}, Lqx;->d(Lcw;Z)Ldb2;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    iget-wide v3, v5, Lag1;->T:J

    .line 357
    .line 358
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    invoke-virtual {v5}, Lag1;->l()Lhu2;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-static {v5, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v5}, Lag1;->Z()V

    .line 371
    .line 372
    .line 373
    iget-boolean v6, v5, Lag1;->S:Z

    .line 374
    .line 375
    if-eqz v6, :cond_6

    .line 376
    .line 377
    move-object/from16 v6, p2

    .line 378
    .line 379
    invoke-virtual {v5, v6}, Lag1;->k(Lne1;)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_6
    invoke-virtual {v5}, Lag1;->j0()V

    .line 384
    .line 385
    .line 386
    :goto_6
    invoke-static {v10, v5, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v11, v5, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v5, v12, v5, v13}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v14, v5, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    sget-object v1, Lht4;->e:Lf54;

    .line 399
    .line 400
    invoke-static {v1, v5}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    move-object v4, v5

    .line 405
    const/4 v5, 0x0

    .line 406
    iget-wide v8, v0, Lv7;->t:J

    .line 407
    .line 408
    iget-object v3, v0, Lv7;->u:Lka0;

    .line 409
    .line 410
    move-wide v0, v8

    .line 411
    invoke-static/range {v0 .. v5}, Lw80;->a(JLay3;Ldf1;Lag1;I)V

    .line 412
    .line 413
    .line 414
    move-object v5, v4

    .line 415
    invoke-virtual {v5, v7}, Lag1;->p(Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5, v7}, Lag1;->p(Z)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_7
    invoke-virtual {v5}, Lag1;->Q()V

    .line 423
    .line 424
    .line 425
    :goto_7
    sget-object v0, Lt64;->a:Lt64;

    .line 426
    .line 427
    return-object v0
.end method
