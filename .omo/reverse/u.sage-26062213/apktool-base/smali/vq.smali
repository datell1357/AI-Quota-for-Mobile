.class public final Lvq;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lvq;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lvq;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lvq;->p:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lvq;->n:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/high16 v7, -0x80000000

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v9, v0, Lvq;->p:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    iget-object v11, v0, Lvq;->o:Ljava/lang/Object;

    .line 20
    .line 21
    sget-object v12, Lt64;->a:Lt64;

    .line 22
    .line 23
    sget-object v13, Lri0;->n:Lri0;

    .line 24
    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v11, La81;

    .line 29
    .line 30
    new-instance v0, Luq;

    .line 31
    .line 32
    check-cast v9, Lna2;

    .line 33
    .line 34
    const/4 v3, 0x7

    .line 35
    invoke-direct {v0, v3, v1, v9}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v11, v0, v2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-ne v0, v13, :cond_0

    .line 43
    .line 44
    move-object v12, v0

    .line 45
    :cond_0
    return-object v12

    .line 46
    :pswitch_0
    check-cast v11, [La81;

    .line 47
    .line 48
    sget-object v0, Lag0;->p:Lag0;

    .line 49
    .line 50
    new-instance v3, Lt81;

    .line 51
    .line 52
    check-cast v9, Lgf1;

    .line 53
    .line 54
    invoke-direct {v3, v10, v9}, Lt81;-><init>(Ldh0;Lgf1;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1, v0, v3, v11}, Lw80;->o(Ldh0;Lb81;Lne1;Lff1;[La81;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-ne v0, v13, :cond_1

    .line 62
    .line 63
    move-object v12, v0

    .line 64
    :cond_1
    return-object v12

    .line 65
    :pswitch_1
    instance-of v3, v2, Lr81;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    move-object v3, v2

    .line 70
    check-cast v3, Lr81;

    .line 71
    .line 72
    iget v4, v3, Lr81;->r:I

    .line 73
    .line 74
    and-int v5, v4, v7

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    sub-int/2addr v4, v7

    .line 79
    iput v4, v3, Lr81;->r:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Lr81;

    .line 83
    .line 84
    invoke-direct {v3, v0, v2}, Lr81;-><init>(Lvq;Ldh0;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object v0, v3, Lr81;->q:Ljava/lang/Object;

    .line 88
    .line 89
    iget v2, v3, Lr81;->r:I

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    if-ne v2, v8, :cond_3

    .line 94
    .line 95
    iget-object v1, v3, Lr81;->t:Luq;

    .line 96
    .line 97
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ld; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v11, Lk81;

    .line 111
    .line 112
    new-instance v2, Luq;

    .line 113
    .line 114
    check-cast v9, Lzr;

    .line 115
    .line 116
    const/4 v0, 0x4

    .line 117
    invoke-direct {v2, v9, v1, v0}, Luq;-><init>(Ljava/io/Serializable;Lb81;I)V

    .line 118
    .line 119
    .line 120
    :try_start_1
    iput-object v2, v3, Lr81;->t:Luq;

    .line 121
    .line 122
    iput v8, v3, Lr81;->r:I

    .line 123
    .line 124
    invoke-virtual {v11, v2, v3}, Lk81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_1
    .catch Ld; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    if-ne v0, v13, :cond_5

    .line 129
    .line 130
    move-object v10, v13

    .line 131
    goto :goto_3

    .line 132
    :catch_1
    move-exception v0

    .line 133
    move-object v1, v2

    .line 134
    :goto_1
    iget-object v2, v0, Ld;->n:Ljava/lang/Object;

    .line 135
    .line 136
    if-ne v2, v1, :cond_6

    .line 137
    .line 138
    iget-object v0, v3, Lfh0;->o:Lhi0;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Ln44;->k0(Lhi0;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_2
    move-object v10, v12

    .line 147
    :goto_3
    return-object v10

    .line 148
    :cond_6
    throw v0

    .line 149
    :pswitch_2
    instance-of v3, v2, Lo81;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    move-object v3, v2

    .line 154
    check-cast v3, Lo81;

    .line 155
    .line 156
    iget v9, v3, Lo81;->r:I

    .line 157
    .line 158
    and-int v11, v9, v7

    .line 159
    .line 160
    if-eqz v11, :cond_7

    .line 161
    .line 162
    sub-int/2addr v9, v7

    .line 163
    iput v9, v3, Lo81;->r:I

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    new-instance v3, Lo81;

    .line 167
    .line 168
    invoke-direct {v3, v0, v2}, Lo81;-><init>(Lvq;Ldh0;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    iget-object v2, v3, Lo81;->q:Ljava/lang/Object;

    .line 172
    .line 173
    iget v7, v3, Lo81;->r:I

    .line 174
    .line 175
    if-eqz v7, :cond_a

    .line 176
    .line 177
    if-eq v7, v8, :cond_9

    .line 178
    .line 179
    if-ne v7, v5, :cond_8

    .line 180
    .line 181
    iget-wide v0, v3, Lo81;->w:J

    .line 182
    .line 183
    iget-object v6, v3, Lo81;->v:Ljava/lang/Throwable;

    .line 184
    .line 185
    iget-object v7, v3, Lo81;->u:Lb81;

    .line 186
    .line 187
    iget-object v9, v3, Lo81;->t:Lvq;

    .line 188
    .line 189
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_8
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_a

    .line 197
    .line 198
    :cond_9
    iget-wide v0, v3, Lo81;->w:J

    .line 199
    .line 200
    iget-object v6, v3, Lo81;->u:Lb81;

    .line 201
    .line 202
    iget-object v7, v3, Lo81;->t:Lvq;

    .line 203
    .line 204
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    move-object v9, v7

    .line 208
    move-object v7, v6

    .line 209
    goto :goto_5

    .line 210
    :cond_a
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    const-wide/16 v6, 0x0

    .line 214
    .line 215
    :cond_b
    iget-object v2, v0, Lvq;->o:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v2, Lc91;

    .line 218
    .line 219
    iput-object v0, v3, Lo81;->t:Lvq;

    .line 220
    .line 221
    iput-object v1, v3, Lo81;->u:Lb81;

    .line 222
    .line 223
    iput-object v10, v3, Lo81;->v:Ljava/lang/Throwable;

    .line 224
    .line 225
    iput-wide v6, v3, Lo81;->w:J

    .line 226
    .line 227
    iput v8, v3, Lo81;->r:I

    .line 228
    .line 229
    invoke-static {v2, v1, v3}, Lqj0;->y(La81;Lb81;Lfh0;)Ljava/io/Serializable;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-ne v2, v13, :cond_c

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    move-object v9, v0

    .line 237
    move-wide/from16 v16, v6

    .line 238
    .line 239
    move-object v7, v1

    .line 240
    move-wide/from16 v0, v16

    .line 241
    .line 242
    :goto_5
    move-object v6, v2

    .line 243
    check-cast v6, Ljava/lang/Throwable;

    .line 244
    .line 245
    if-eqz v6, :cond_f

    .line 246
    .line 247
    iget-object v2, v9, Lvq;->p:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v2, Lp64;

    .line 250
    .line 251
    new-instance v11, Ljava/lang/Long;

    .line 252
    .line 253
    invoke-direct {v11, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 254
    .line 255
    .line 256
    iput-object v9, v3, Lo81;->t:Lvq;

    .line 257
    .line 258
    iput-object v7, v3, Lo81;->u:Lb81;

    .line 259
    .line 260
    iput-object v6, v3, Lo81;->v:Ljava/lang/Throwable;

    .line 261
    .line 262
    iput-wide v0, v3, Lo81;->w:J

    .line 263
    .line 264
    iput v5, v3, Lo81;->r:I

    .line 265
    .line 266
    invoke-virtual {v2, v7, v6, v11, v3}, Lp64;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-ne v2, v13, :cond_d

    .line 271
    .line 272
    :goto_6
    move-object v10, v13

    .line 273
    goto :goto_a

    .line 274
    :cond_d
    :goto_7
    check-cast v2, Ljava/lang/Boolean;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_e

    .line 281
    .line 282
    const-wide/16 v14, 0x1

    .line 283
    .line 284
    add-long/2addr v0, v14

    .line 285
    move v2, v8

    .line 286
    :goto_8
    move-wide/from16 v16, v0

    .line 287
    .line 288
    move-object v1, v7

    .line 289
    move-wide/from16 v6, v16

    .line 290
    .line 291
    move-object v0, v9

    .line 292
    goto :goto_9

    .line 293
    :cond_e
    throw v6

    .line 294
    :cond_f
    move v2, v4

    .line 295
    goto :goto_8

    .line 296
    :goto_9
    if-nez v2, :cond_b

    .line 297
    .line 298
    move-object v10, v12

    .line 299
    :goto_a
    return-object v10

    .line 300
    :pswitch_3
    instance-of v3, v2, Ll81;

    .line 301
    .line 302
    if-eqz v3, :cond_10

    .line 303
    .line 304
    move-object v3, v2

    .line 305
    check-cast v3, Ll81;

    .line 306
    .line 307
    iget v4, v3, Ll81;->r:I

    .line 308
    .line 309
    and-int v9, v4, v7

    .line 310
    .line 311
    if-eqz v9, :cond_10

    .line 312
    .line 313
    sub-int/2addr v4, v7

    .line 314
    iput v4, v3, Ll81;->r:I

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_10
    new-instance v3, Ll81;

    .line 318
    .line 319
    invoke-direct {v3, v0, v2}, Ll81;-><init>(Lvq;Ldh0;)V

    .line 320
    .line 321
    .line 322
    :goto_b
    iget-object v2, v3, Ll81;->q:Ljava/lang/Object;

    .line 323
    .line 324
    iget v4, v3, Ll81;->r:I

    .line 325
    .line 326
    if-eqz v4, :cond_13

    .line 327
    .line 328
    if-eq v4, v8, :cond_12

    .line 329
    .line 330
    if-ne v4, v5, :cond_11

    .line 331
    .line 332
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto :goto_e

    .line 336
    :cond_11
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_f

    .line 340
    :cond_12
    iget-object v0, v3, Ll81;->u:Lb81;

    .line 341
    .line 342
    iget-object v1, v3, Ll81;->t:Lvq;

    .line 343
    .line 344
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v16, v1

    .line 348
    .line 349
    move-object v1, v0

    .line 350
    move-object/from16 v0, v16

    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_13
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    check-cast v11, La81;

    .line 357
    .line 358
    iput-object v0, v3, Ll81;->t:Lvq;

    .line 359
    .line 360
    iput-object v1, v3, Ll81;->u:Lb81;

    .line 361
    .line 362
    iput v8, v3, Ll81;->r:I

    .line 363
    .line 364
    invoke-static {v11, v1, v3}, Lqj0;->y(La81;Lb81;Lfh0;)Ljava/io/Serializable;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    if-ne v2, v13, :cond_14

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :cond_14
    :goto_c
    check-cast v2, Ljava/lang/Throwable;

    .line 372
    .line 373
    if-eqz v2, :cond_15

    .line 374
    .line 375
    iget-object v0, v0, Lvq;->p:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Lt81;

    .line 378
    .line 379
    iput-object v10, v3, Ll81;->t:Lvq;

    .line 380
    .line 381
    iput-object v10, v3, Ll81;->u:Lb81;

    .line 382
    .line 383
    iput v5, v3, Ll81;->r:I

    .line 384
    .line 385
    invoke-virtual {v0, v1, v2, v3}, Lt81;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-ne v0, v13, :cond_15

    .line 390
    .line 391
    :goto_d
    move-object v10, v13

    .line 392
    goto :goto_f

    .line 393
    :cond_15
    :goto_e
    move-object v10, v12

    .line 394
    :goto_f
    return-object v10

    .line 395
    :pswitch_4
    check-cast v11, Lk81;

    .line 396
    .line 397
    new-instance v0, Lxq;

    .line 398
    .line 399
    check-cast v9, Lxr;

    .line 400
    .line 401
    invoke-direct {v0, v1, v9}, Lxq;-><init>(Lb81;Lxr;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11, v0, v2}, Lk81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    if-ne v0, v13, :cond_16

    .line 409
    .line 410
    move-object v12, v0

    .line 411
    :cond_16
    return-object v12

    .line 412
    :pswitch_5
    check-cast v11, La81;

    .line 413
    .line 414
    new-instance v0, Luq;

    .line 415
    .line 416
    check-cast v9, Ln1;

    .line 417
    .line 418
    invoke-direct {v0, v4, v1, v9}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v11, v0, v2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    if-ne v0, v13, :cond_17

    .line 426
    .line 427
    move-object v12, v0

    .line 428
    :cond_17
    return-object v12

    .line 429
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
