.class public final synthetic Lk4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lk4;->n:I

    .line 2
    .line 3
    iput-object p3, p0, Lk4;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lk4;->o:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lk4;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lk4;->r:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lk4;->n:I

    iput-object p1, p0, Lk4;->o:Ljava/lang/Object;

    iput-object p2, p0, Lk4;->p:Ljava/lang/Object;

    iput-object p3, p0, Lk4;->q:Ljava/lang/Object;

    iput-object p4, p0, Lk4;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqi0;Ljava/lang/Object;Laj3;Lpg2;I)V
    .locals 0

    .line 15
    iput p5, p0, Lk4;->n:I

    iput-object p1, p0, Lk4;->o:Ljava/lang/Object;

    iput-object p2, p0, Lk4;->q:Ljava/lang/Object;

    iput-object p3, p0, Lk4;->r:Ljava/lang/Object;

    iput-object p4, p0, Lk4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk4;->n:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lqi0;

    .line 14
    .line 15
    iget-object v5, v0, Lk4;->q:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Ln8;

    .line 18
    .line 19
    iget-object v6, v0, Lk4;->r:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, Laj3;

    .line 22
    .line 23
    iget-object v0, v0, Lk4;->p:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lpg2;

    .line 26
    .line 27
    move-object/from16 v7, p1

    .line 28
    .line 29
    check-cast v7, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    new-instance v8, Lfl3;

    .line 36
    .line 37
    invoke-direct {v8, v6, v7, v4, v3}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v4, v4, v8, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ly84;

    .line 48
    .line 49
    const-string v1, "rolling_window_enabled"

    .line 50
    .line 51
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v5, v0, v1, v2}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lt64;->a:Lt64;

    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_0
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lqi0;

    .line 64
    .line 65
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Landroid/content/Context;

    .line 68
    .line 69
    iget-object v5, v0, Lk4;->r:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v5, Laj3;

    .line 72
    .line 73
    iget-object v0, v0, Lk4;->p:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lpg2;

    .line 76
    .line 77
    move-object/from16 v6, p1

    .line 78
    .line 79
    check-cast v6, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    new-instance v7, Lfl3;

    .line 86
    .line 87
    invoke-direct {v7, v5, v6, v4, v2}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v4, v4, v7, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 91
    .line 92
    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ly84;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v0}, Lmt1;->S(Landroid/content/Context;Ly84;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Lu/sage/a;->D:Lwr3;

    .line 111
    .line 112
    invoke-static {v0}, Lmt1;->G(Ly84;)Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Landroid/content/Intent;

    .line 117
    .line 118
    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "u.sage.ACTION_SHOW_NOTIFICATION"

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ly84;

    .line 135
    .line 136
    invoke-static {v3, v0}, Lmt1;->T(Landroid/content/Context;Ly84;)V

    .line 137
    .line 138
    .line 139
    :goto_0
    sget-object v0, Lt64;->a:Lt64;

    .line 140
    .line 141
    return-object v0

    .line 142
    :pswitch_1
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Ls33;

    .line 145
    .line 146
    iget-object v2, v0, Lk4;->p:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Lii2;

    .line 149
    .line 150
    iget-object v4, v0, Lk4;->q:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v4, Lqi2;

    .line 153
    .line 154
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Landroid/os/Bundle;

    .line 157
    .line 158
    move-object/from16 v5, p1

    .line 159
    .line 160
    check-cast v5, Lyh2;

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iput-boolean v3, v1, Ls33;->n:Z

    .line 166
    .line 167
    sget-object v1, Lg01;->n:Lg01;

    .line 168
    .line 169
    invoke-virtual {v2, v4, v0, v5, v1}, Lii2;->a(Lqi2;Landroid/os/Bundle;Lyh2;Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lt64;->a:Lt64;

    .line 173
    .line 174
    return-object v0

    .line 175
    :pswitch_2
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v1, Lt33;

    .line 178
    .line 179
    iget-object v2, v0, Lk4;->p:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v2, Lme2;

    .line 182
    .line 183
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v3, Lbg3;

    .line 186
    .line 187
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lq6;

    .line 190
    .line 191
    move-object/from16 v4, p1

    .line 192
    .line 193
    check-cast v4, Lue;

    .line 194
    .line 195
    sget-object v5, Lt64;->a:Lt64;

    .line 196
    .line 197
    iget-object v6, v4, Lue;->e:Lws2;

    .line 198
    .line 199
    invoke-virtual {v6}, Lws2;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Ljava/lang/Number;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    iget v7, v1, Lt33;->n:F

    .line 210
    .line 211
    sub-float/2addr v6, v7

    .line 212
    invoke-static {v6}, Lw80;->e(F)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_2

    .line 217
    .line 218
    invoke-virtual {v2, v3, v6}, Lme2;->e(Lbg3;F)F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    sub-float v2, v6, v2

    .line 223
    .line 224
    invoke-static {v2}, Lw80;->e(F)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_1

    .line 229
    .line 230
    invoke-virtual {v4}, Lue;->a()V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_1
    iget v2, v1, Lt33;->n:F

    .line 235
    .line 236
    add-float/2addr v2, v6

    .line 237
    iput v2, v1, Lt33;->n:F

    .line 238
    .line 239
    :cond_2
    iget v1, v1, Lt33;->n:F

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lq6;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_3

    .line 256
    .line 257
    invoke-virtual {v4}, Lue;->a()V

    .line 258
    .line 259
    .line 260
    :cond_3
    :goto_1
    return-object v5

    .line 261
    :pswitch_3
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Ln02;

    .line 264
    .line 265
    iget-object v2, v0, Lk4;->p:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Lc02;

    .line 268
    .line 269
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v3, Lpt3;

    .line 272
    .line 273
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Ldy2;

    .line 276
    .line 277
    move-object/from16 v4, p1

    .line 278
    .line 279
    check-cast v4, Lhv0;

    .line 280
    .line 281
    new-instance v4, Lmu0;

    .line 282
    .line 283
    invoke-direct {v4, v2, v3, v0}, Lmu0;-><init>(Lc02;Lpt3;Ldy2;)V

    .line 284
    .line 285
    .line 286
    iput-object v4, v1, Ln02;->c:Lmu0;

    .line 287
    .line 288
    new-instance v0, Ls6;

    .line 289
    .line 290
    const/4 v2, 0x4

    .line 291
    invoke-direct {v0, v2, v1}, Ls6;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    return-object v0

    .line 295
    :pswitch_4
    iget-object v1, v0, Lk4;->p:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v1, Lpg2;

    .line 298
    .line 299
    iget-object v2, v0, Lk4;->o:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v2, Lrq1;

    .line 302
    .line 303
    iget-object v4, v0, Lk4;->q:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v4, Lt33;

    .line 306
    .line 307
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lqi0;

    .line 310
    .line 311
    move-object/from16 v5, p1

    .line 312
    .line 313
    check-cast v5, Ljava/lang/Long;

    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 316
    .line 317
    .line 318
    move-result-wide v5

    .line 319
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Ltr3;

    .line 324
    .line 325
    if-eqz v1, :cond_4

    .line 326
    .line 327
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    check-cast v1, Ljava/lang/Number;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 334
    .line 335
    .line 336
    move-result-wide v7

    .line 337
    goto :goto_2

    .line 338
    :cond_4
    move-wide v7, v5

    .line 339
    :goto_2
    iget-wide v9, v2, Lrq1;->c:J

    .line 340
    .line 341
    iget-object v1, v2, Lrq1;->a:Lug2;

    .line 342
    .line 343
    const-wide/high16 v11, -0x8000000000000000L

    .line 344
    .line 345
    cmp-long v9, v9, v11

    .line 346
    .line 347
    const/4 v10, 0x0

    .line 348
    if-eqz v9, :cond_5

    .line 349
    .line 350
    iget v9, v4, Lt33;->n:F

    .line 351
    .line 352
    invoke-interface {v0}, Lqi0;->d()Lhi0;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    invoke-static {v11}, Lk75;->y(Lhi0;)F

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    cmpg-float v9, v9, v11

    .line 361
    .line 362
    if-nez v9, :cond_5

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_5
    iput-wide v5, v2, Lrq1;->c:J

    .line 366
    .line 367
    iget-object v5, v1, Lug2;->n:[Ljava/lang/Object;

    .line 368
    .line 369
    iget v6, v1, Lug2;->p:I

    .line 370
    .line 371
    move v9, v10

    .line 372
    :goto_3
    if-ge v9, v6, :cond_6

    .line 373
    .line 374
    aget-object v11, v5, v9

    .line 375
    .line 376
    check-cast v11, Lpq1;

    .line 377
    .line 378
    iput-boolean v3, v11, Lpq1;->s:Z

    .line 379
    .line 380
    add-int/lit8 v9, v9, 0x1

    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_6
    invoke-interface {v0}, Lqi0;->d()Lhi0;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v0}, Lk75;->y(Lhi0;)F

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    iput v0, v4, Lt33;->n:F

    .line 392
    .line 393
    :goto_4
    iget v0, v4, Lt33;->n:F

    .line 394
    .line 395
    const/4 v4, 0x0

    .line 396
    cmpg-float v4, v0, v4

    .line 397
    .line 398
    if-nez v4, :cond_7

    .line 399
    .line 400
    iget-object v0, v1, Lug2;->n:[Ljava/lang/Object;

    .line 401
    .line 402
    iget v1, v1, Lug2;->p:I

    .line 403
    .line 404
    :goto_5
    if-ge v10, v1, :cond_c

    .line 405
    .line 406
    aget-object v2, v0, v10

    .line 407
    .line 408
    check-cast v2, Lpq1;

    .line 409
    .line 410
    iget-object v4, v2, Lpq1;->q:Llw3;

    .line 411
    .line 412
    iget-object v4, v4, Llw3;->c:Ljava/lang/Object;

    .line 413
    .line 414
    iget-object v5, v2, Lpq1;->p:Lws2;

    .line 415
    .line 416
    invoke-virtual {v5, v4}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    iput-boolean v3, v2, Lpq1;->s:Z

    .line 420
    .line 421
    add-int/lit8 v10, v10, 0x1

    .line 422
    .line 423
    goto :goto_5

    .line 424
    :cond_7
    iget-wide v4, v2, Lrq1;->c:J

    .line 425
    .line 426
    sub-long/2addr v7, v4

    .line 427
    long-to-float v4, v7

    .line 428
    div-float/2addr v4, v0

    .line 429
    float-to-long v4, v4

    .line 430
    iget-object v0, v1, Lug2;->n:[Ljava/lang/Object;

    .line 431
    .line 432
    iget v1, v1, Lug2;->p:I

    .line 433
    .line 434
    move v7, v3

    .line 435
    move v6, v10

    .line 436
    :goto_6
    if-ge v6, v1, :cond_b

    .line 437
    .line 438
    aget-object v8, v0, v6

    .line 439
    .line 440
    check-cast v8, Lpq1;

    .line 441
    .line 442
    iget-boolean v9, v8, Lpq1;->r:Z

    .line 443
    .line 444
    if-nez v9, :cond_9

    .line 445
    .line 446
    iget-object v9, v8, Lpq1;->u:Lrq1;

    .line 447
    .line 448
    iget-object v9, v9, Lrq1;->b:Lws2;

    .line 449
    .line 450
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 451
    .line 452
    invoke-virtual {v9, v11}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    iget-boolean v9, v8, Lpq1;->s:Z

    .line 456
    .line 457
    if-eqz v9, :cond_8

    .line 458
    .line 459
    iput-boolean v10, v8, Lpq1;->s:Z

    .line 460
    .line 461
    iput-wide v4, v8, Lpq1;->t:J

    .line 462
    .line 463
    :cond_8
    iget-wide v11, v8, Lpq1;->t:J

    .line 464
    .line 465
    sub-long v11, v4, v11

    .line 466
    .line 467
    iget-object v9, v8, Lpq1;->q:Llw3;

    .line 468
    .line 469
    invoke-virtual {v9, v11, v12}, Llw3;->b(J)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v9

    .line 473
    iget-object v13, v8, Lpq1;->p:Lws2;

    .line 474
    .line 475
    invoke-virtual {v13, v9}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    iget-object v9, v8, Lpq1;->q:Llw3;

    .line 479
    .line 480
    invoke-interface {v9, v11, v12}, Lre;->g(J)Z

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    iput-boolean v9, v8, Lpq1;->r:Z

    .line 485
    .line 486
    :cond_9
    iget-boolean v8, v8, Lpq1;->r:Z

    .line 487
    .line 488
    if-nez v8, :cond_a

    .line 489
    .line 490
    move v7, v10

    .line 491
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_b
    xor-int/lit8 v0, v7, 0x1

    .line 495
    .line 496
    iget-object v1, v2, Lrq1;->d:Lws2;

    .line 497
    .line 498
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v1, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :cond_c
    sget-object v0, Lt64;->a:Lt64;

    .line 506
    .line 507
    return-object v0

    .line 508
    :pswitch_5
    iget-object v1, v0, Lk4;->p:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v1, Lpj1;

    .line 511
    .line 512
    iget-object v2, v0, Lk4;->o:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v2, Ljava/lang/String;

    .line 515
    .line 516
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v3, Ljava/lang/String;

    .line 519
    .line 520
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lrx2;

    .line 523
    .line 524
    move-object/from16 v5, p1

    .line 525
    .line 526
    check-cast v5, Lhg2;

    .line 527
    .line 528
    const-wide/16 v6, 0x0

    .line 529
    .line 530
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    sget-object v7, Lpj1;->d:Lrx2;

    .line 535
    .line 536
    const-string v8, ""

    .line 537
    .line 538
    invoke-static {v5, v7, v8}, Lis0;->z(Lhg2;Lrx2;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    check-cast v7, Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    if-eqz v7, :cond_f

    .line 549
    .line 550
    invoke-virtual {v1, v5, v2}, Lpj1;->c(Lhg2;Ljava/lang/String;)Lrx2;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    if-nez v6, :cond_d

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_d
    iget-object v6, v6, Lrx2;->a:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    if-eqz v3, :cond_e

    .line 564
    .line 565
    :goto_7
    move-object/from16 v17, v4

    .line 566
    .line 567
    goto/16 :goto_d

    .line 568
    .line 569
    :cond_e
    monitor-enter v1

    .line 570
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lpj1;->d(Lhg2;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    new-instance v3, Ljava/util/HashSet;

    .line 574
    .line 575
    new-instance v6, Ljava/util/HashSet;

    .line 576
    .line 577
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-static {v5, v0, v6}, Lis0;->z(Lhg2;Lrx2;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    check-cast v6, Ljava/util/Collection;

    .line 585
    .line 586
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5, v0, v3}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    .line 594
    .line 595
    monitor-exit v1

    .line 596
    goto :goto_7

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    throw v0

    .line 600
    :cond_f
    sget-object v3, Lpj1;->c:Lrx2;

    .line 601
    .line 602
    invoke-static {v5, v3, v6}, Lis0;->z(Lhg2;Lrx2;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v7

    .line 606
    check-cast v7, Ljava/lang/Long;

    .line 607
    .line 608
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 609
    .line 610
    .line 611
    move-result-wide v7

    .line 612
    const-wide/16 v9, 0x1

    .line 613
    .line 614
    add-long v11, v7, v9

    .line 615
    .line 616
    const-wide/16 v13, 0x1e

    .line 617
    .line 618
    cmp-long v11, v11, v13

    .line 619
    .line 620
    if-nez v11, :cond_14

    .line 621
    .line 622
    monitor-enter v1

    .line 623
    :try_start_2
    invoke-static {v5, v3, v6}, Lis0;->z(Lhg2;Lrx2;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Ljava/lang/Long;

    .line 628
    .line 629
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 630
    .line 631
    .line 632
    move-result-wide v6

    .line 633
    const-string v3, ""

    .line 634
    .line 635
    new-instance v8, Ljava/util/HashSet;

    .line 636
    .line 637
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Lhg2;->a()Ljava/util/Map;

    .line 641
    .line 642
    .line 643
    move-result-object v11

    .line 644
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    move-object v12, v4

    .line 653
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    .line 655
    .line 656
    move-result v13

    .line 657
    if-eqz v13, :cond_13

    .line 658
    .line 659
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v13

    .line 663
    check-cast v13, Ljava/util/Map$Entry;

    .line 664
    .line 665
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v14

    .line 669
    instance-of v14, v14, Ljava/util/Set;

    .line 670
    .line 671
    if-eqz v14, :cond_12

    .line 672
    .line 673
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v14

    .line 677
    check-cast v14, Ljava/util/Set;

    .line 678
    .line 679
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 680
    .line 681
    .line 682
    move-result-object v15

    .line 683
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 684
    .line 685
    .line 686
    move-result v16

    .line 687
    if-eqz v16, :cond_12

    .line 688
    .line 689
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v16

    .line 693
    move-object/from16 v17, v4

    .line 694
    .line 695
    move-object/from16 v4, v16

    .line 696
    .line 697
    check-cast v4, Ljava/lang/String;

    .line 698
    .line 699
    if-eqz v12, :cond_10

    .line 700
    .line 701
    invoke-virtual {v12, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    move-result v16

    .line 705
    if-lez v16, :cond_11

    .line 706
    .line 707
    goto :goto_a

    .line 708
    :catchall_1
    move-exception v0

    .line 709
    goto :goto_b

    .line 710
    :cond_10
    :goto_a
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    check-cast v3, Lrx2;

    .line 715
    .line 716
    iget-object v3, v3, Lrx2;->a:Ljava/lang/String;

    .line 717
    .line 718
    move-object v12, v4

    .line 719
    move-object v8, v14

    .line 720
    :cond_11
    move-object/from16 v4, v17

    .line 721
    .line 722
    goto :goto_9

    .line 723
    :cond_12
    move-object/from16 v17, v4

    .line 724
    .line 725
    move-object/from16 v4, v17

    .line 726
    .line 727
    goto :goto_8

    .line 728
    :cond_13
    move-object/from16 v17, v4

    .line 729
    .line 730
    new-instance v4, Ljava/util/HashSet;

    .line 731
    .line 732
    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    new-instance v8, Lrx2;

    .line 742
    .line 743
    invoke-direct {v8, v3}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5, v8, v4}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    sget-object v3, Lpj1;->c:Lrx2;

    .line 750
    .line 751
    sub-long v7, v6, v9

    .line 752
    .line 753
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    invoke-virtual {v5, v3, v4}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    .line 759
    .line 760
    monitor-exit v1

    .line 761
    goto :goto_c

    .line 762
    :goto_b
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 763
    throw v0

    .line 764
    :cond_14
    move-object/from16 v17, v4

    .line 765
    .line 766
    :goto_c
    new-instance v1, Ljava/util/HashSet;

    .line 767
    .line 768
    new-instance v3, Ljava/util/HashSet;

    .line 769
    .line 770
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-static {v5, v0, v3}, Lis0;->z(Lhg2;Lrx2;Ljava/io/Serializable;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    check-cast v3, Ljava/util/Collection;

    .line 778
    .line 779
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    add-long/2addr v7, v9

    .line 786
    invoke-virtual {v5, v0, v1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    sget-object v0, Lpj1;->c:Lrx2;

    .line 790
    .line 791
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-virtual {v5, v0, v1}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    sget-object v0, Lpj1;->d:Lrx2;

    .line 799
    .line 800
    invoke-virtual {v5, v0, v2}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    :goto_d
    return-object v17

    .line 804
    :pswitch_6
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v1, Lt33;

    .line 807
    .line 808
    iget-object v2, v0, Lk4;->p:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v2, Lh12;

    .line 811
    .line 812
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v3, Lt33;

    .line 815
    .line 816
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast v0, Lto0;

    .line 819
    .line 820
    move-object/from16 v4, p1

    .line 821
    .line 822
    check-cast v4, Lue;

    .line 823
    .line 824
    iget-object v5, v4, Lue;->e:Lws2;

    .line 825
    .line 826
    invoke-virtual {v5}, Lws2;->getValue()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    check-cast v5, Ljava/lang/Number;

    .line 831
    .line 832
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    iget v6, v1, Lt33;->n:F

    .line 837
    .line 838
    sub-float/2addr v5, v6

    .line 839
    invoke-virtual {v2, v5}, Lh12;->a(F)F

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    iget-object v6, v4, Lue;->e:Lws2;

    .line 844
    .line 845
    invoke-virtual {v6}, Lws2;->getValue()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v6

    .line 849
    check-cast v6, Ljava/lang/Number;

    .line 850
    .line 851
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 852
    .line 853
    .line 854
    move-result v6

    .line 855
    iput v6, v1, Lt33;->n:F

    .line 856
    .line 857
    iget-object v1, v4, Lue;->a:Le34;

    .line 858
    .line 859
    iget-object v1, v1, Le34;->b:Lpe1;

    .line 860
    .line 861
    iget-object v6, v4, Lue;->f:Lbf;

    .line 862
    .line 863
    invoke-interface {v1, v6}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    check-cast v1, Ljava/lang/Number;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    iput v1, v3, Lt33;->n:F

    .line 874
    .line 875
    sub-float/2addr v5, v2

    .line 876
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    const/high16 v2, 0x3f000000    # 0.5f

    .line 881
    .line 882
    cmpl-float v1, v1, v2

    .line 883
    .line 884
    if-lez v1, :cond_15

    .line 885
    .line 886
    invoke-virtual {v4}, Lue;->a()V

    .line 887
    .line 888
    .line 889
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    .line 891
    .line 892
    sget-object v0, Lt64;->a:Lt64;

    .line 893
    .line 894
    return-object v0

    .line 895
    :pswitch_7
    iget-object v1, v0, Lk4;->o:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v1, Ljava/lang/String;

    .line 898
    .line 899
    iget-object v2, v0, Lk4;->p:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v2, Lpg2;

    .line 902
    .line 903
    iget-object v3, v0, Lk4;->q:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v3, Lpg2;

    .line 906
    .line 907
    iget-object v0, v0, Lk4;->r:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast v0, Lpg2;

    .line 910
    .line 911
    move-object/from16 v4, p1

    .line 912
    .line 913
    check-cast v4, Lhv0;

    .line 914
    .line 915
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    new-instance v4, Lt4;

    .line 919
    .line 920
    invoke-direct {v4, v1, v2, v3, v0}, Lt4;-><init>(Ljava/lang/String;Lpg2;Lpg2;Lpg2;)V

    .line 921
    .line 922
    .line 923
    return-object v4

    .line 924
    nop

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
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
