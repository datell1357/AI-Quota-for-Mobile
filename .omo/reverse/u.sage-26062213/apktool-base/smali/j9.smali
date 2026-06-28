.class public final Lj9;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj9;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Lj9;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lj9;->q:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lj9;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lt64;->a:Lt64;

    .line 7
    .line 8
    iget-object v5, p0, Lj9;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lj9;->p:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lpe1;

    .line 16
    .line 17
    sget-object v0, Lmm2;->d0:Lo83;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast v5, Lmm2;

    .line 23
    .line 24
    iget-object p0, v5, Lmm2;->U:Ljl3;

    .line 25
    .line 26
    iget-object v1, v0, Lo83;->w:Ljl3;

    .line 27
    .line 28
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    iget-boolean v1, v5, Lmm2;->V:Z

    .line 33
    .line 34
    iget-boolean v6, v0, Lo83;->x:Z

    .line 35
    .line 36
    if-eq v1, v6, :cond_0

    .line 37
    .line 38
    move v2, v3

    .line 39
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Lo83;->w:Ljl3;

    .line 44
    .line 45
    iput-object v1, v5, Lmm2;->U:Ljl3;

    .line 46
    .line 47
    iput-boolean v6, v5, Lmm2;->V:Z

    .line 48
    .line 49
    iget-boolean v1, v5, Lmm2;->W:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object p0, v5, Lmm2;->F:Lxy1;

    .line 60
    .line 61
    invoke-virtual {p0}, Lxy1;->F()V

    .line 62
    .line 63
    .line 64
    :cond_3
    iput-boolean v3, v5, Lmm2;->W:Z

    .line 65
    .line 66
    iget-object p0, v0, Lo83;->w:Ljl3;

    .line 67
    .line 68
    iget-wide v1, v0, Lo83;->y:J

    .line 69
    .line 70
    iget-object v3, v0, Lo83;->B:Lhy1;

    .line 71
    .line 72
    iget-object v5, v0, Lo83;->A:Las0;

    .line 73
    .line 74
    invoke-interface {p0, v1, v2, v3, v5}, Ljl3;->a(JLhy1;Las0;)Lfl4;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, v0, Lo83;->D:Lfl4;

    .line 79
    .line 80
    return-object v4

    .line 81
    :pswitch_0
    check-cast p0, Lxy1;

    .line 82
    .line 83
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 84
    .line 85
    check-cast v5, Lw33;

    .line 86
    .line 87
    iget-object v0, p0, Lbo;->g:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lmd2;

    .line 90
    .line 91
    iget v0, v0, Lmd2;->q:I

    .line 92
    .line 93
    and-int/lit8 v0, v0, 0x8

    .line 94
    .line 95
    if-eqz v0, :cond_e

    .line 96
    .line 97
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lgw3;

    .line 100
    .line 101
    :goto_0
    if-eqz p0, :cond_e

    .line 102
    .line 103
    iget v0, p0, Lmd2;->p:I

    .line 104
    .line 105
    and-int/lit8 v0, v0, 0x8

    .line 106
    .line 107
    if-eqz v0, :cond_d

    .line 108
    .line 109
    move-object v0, p0

    .line 110
    move-object v6, v1

    .line 111
    :goto_1
    if-eqz v0, :cond_d

    .line 112
    .line 113
    instance-of v7, v0, Leh3;

    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    check-cast v0, Leh3;

    .line 118
    .line 119
    invoke-interface {v0}, Leh3;->d0()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    new-instance v7, Lbh3;

    .line 126
    .line 127
    invoke-direct {v7}, Lbh3;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v7, v5, Lw33;->n:Ljava/lang/Object;

    .line 131
    .line 132
    iput-boolean v3, v7, Lbh3;->q:Z

    .line 133
    .line 134
    :cond_4
    invoke-interface {v0}, Leh3;->g0()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    iget-object v7, v5, Lw33;->n:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v7, Lbh3;

    .line 143
    .line 144
    iput-boolean v3, v7, Lbh3;->p:Z

    .line 145
    .line 146
    :cond_5
    iget-object v7, v5, Lw33;->n:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v7, Lph3;

    .line 149
    .line 150
    invoke-interface {v0, v7}, Leh3;->a0(Lph3;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    iget v7, v0, Lmd2;->p:I

    .line 155
    .line 156
    and-int/lit8 v7, v7, 0x8

    .line 157
    .line 158
    if-eqz v7, :cond_c

    .line 159
    .line 160
    instance-of v7, v0, Lkr0;

    .line 161
    .line 162
    if-eqz v7, :cond_c

    .line 163
    .line 164
    move-object v7, v0

    .line 165
    check-cast v7, Lkr0;

    .line 166
    .line 167
    iget-object v7, v7, Lkr0;->C:Lmd2;

    .line 168
    .line 169
    move v8, v2

    .line 170
    :goto_2
    if-eqz v7, :cond_b

    .line 171
    .line 172
    iget v9, v7, Lmd2;->p:I

    .line 173
    .line 174
    and-int/lit8 v9, v9, 0x8

    .line 175
    .line 176
    if-eqz v9, :cond_a

    .line 177
    .line 178
    add-int/lit8 v8, v8, 0x1

    .line 179
    .line 180
    if-ne v8, v3, :cond_7

    .line 181
    .line 182
    move-object v0, v7

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    if-nez v6, :cond_8

    .line 185
    .line 186
    new-instance v6, Lug2;

    .line 187
    .line 188
    const/16 v9, 0x10

    .line 189
    .line 190
    new-array v9, v9, [Lmd2;

    .line 191
    .line 192
    invoke-direct {v6, v9}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    if-eqz v0, :cond_9

    .line 196
    .line 197
    invoke-virtual {v6, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v1

    .line 201
    :cond_9
    invoke-virtual {v6, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_a
    :goto_3
    iget-object v7, v7, Lmd2;->s:Lmd2;

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_b
    if-ne v8, v3, :cond_c

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_c
    :goto_4
    invoke-static {v6}, Lw80;->g(Lug2;)Lmd2;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    goto :goto_1

    .line 215
    :cond_d
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_e
    return-object v4

    .line 219
    :pswitch_1
    check-cast p0, Lwj1;

    .line 220
    .line 221
    check-cast v5, Lmd2;

    .line 222
    .line 223
    invoke-virtual {p0, v5}, Lwj1;->d(Lmd2;)V

    .line 224
    .line 225
    .line 226
    return-object v4

    .line 227
    :pswitch_2
    check-cast p0, Lw33;

    .line 228
    .line 229
    check-cast v5, Lka1;

    .line 230
    .line 231
    invoke-virtual {v5}, Lka1;->I0()Lca1;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iput-object v0, p0, Lw33;->n:Ljava/lang/Object;

    .line 236
    .line 237
    return-object v4

    .line 238
    :pswitch_3
    check-cast p0, Lw33;

    .line 239
    .line 240
    check-cast v5, Lia1;

    .line 241
    .line 242
    sget-object v0, Lbv2;->a:Llc0;

    .line 243
    .line 244
    invoke-static {v5, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-object v0, p0, Lw33;->n:Ljava/lang/Object;

    .line 249
    .line 250
    return-object v4

    .line 251
    :pswitch_4
    check-cast p0, Lq00;

    .line 252
    .line 253
    iget-object p0, p0, Lq00;->D:Lv;

    .line 254
    .line 255
    check-cast v5, Lr00;

    .line 256
    .line 257
    invoke-virtual {p0, v5}, Lv;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    return-object v4

    .line 261
    :pswitch_5
    check-cast p0, Lne1;

    .line 262
    .line 263
    if-eqz p0, :cond_10

    .line 264
    .line 265
    invoke-interface {p0}, Lne1;->a()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Ll33;

    .line 270
    .line 271
    if-nez p0, :cond_f

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_f
    move-object v1, p0

    .line 275
    goto :goto_7

    .line 276
    :cond_10
    :goto_5
    check-cast v5, Lmm2;

    .line 277
    .line 278
    invoke-virtual {v5}, Lmm2;->O0()Lmd2;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 283
    .line 284
    if-eqz p0, :cond_11

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_11
    move-object v5, v1

    .line 288
    :goto_6
    if-eqz v5, :cond_12

    .line 289
    .line 290
    iget-wide v0, v5, Ldv2;->p:J

    .line 291
    .line 292
    invoke-static {v0, v1}, Lse0;->H(J)J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    const-wide/16 v2, 0x0

    .line 297
    .line 298
    invoke-static {v2, v3, v0, v1}, Lqn0;->d(JJ)Ll33;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    :cond_12
    :goto_7
    return-object v1

    .line 303
    :pswitch_6
    check-cast v5, Lv9;

    .line 304
    .line 305
    check-cast p0, Lif3;

    .line 306
    .line 307
    iget-object v0, p0, Lif3;->r:Lye3;

    .line 308
    .line 309
    iget-object v1, p0, Lif3;->s:Lye3;

    .line 310
    .line 311
    iget-object v2, p0, Lif3;->p:Ljava/lang/Float;

    .line 312
    .line 313
    iget-object v3, p0, Lif3;->q:Ljava/lang/Float;

    .line 314
    .line 315
    const/4 v6, 0x0

    .line 316
    if-eqz v0, :cond_13

    .line 317
    .line 318
    if-eqz v2, :cond_13

    .line 319
    .line 320
    iget-object v7, v0, Lye3;->a:Lne1;

    .line 321
    .line 322
    invoke-interface {v7}, Lne1;->a()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    check-cast v7, Ljava/lang/Number;

    .line 327
    .line 328
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    sub-float/2addr v7, v2

    .line 337
    goto :goto_8

    .line 338
    :cond_13
    move v7, v6

    .line 339
    :goto_8
    if-eqz v1, :cond_14

    .line 340
    .line 341
    if-eqz v3, :cond_14

    .line 342
    .line 343
    iget-object v2, v1, Lye3;->a:Lne1;

    .line 344
    .line 345
    invoke-interface {v2}, Lne1;->a()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Ljava/lang/Number;

    .line 350
    .line 351
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    sub-float/2addr v2, v3

    .line 360
    goto :goto_9

    .line 361
    :cond_14
    move v2, v6

    .line 362
    :goto_9
    cmpg-float v3, v7, v6

    .line 363
    .line 364
    if-nez v3, :cond_15

    .line 365
    .line 366
    cmpg-float v2, v2, v6

    .line 367
    .line 368
    if-nez v2, :cond_15

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_15
    iget v2, p0, Lif3;->n:I

    .line 372
    .line 373
    invoke-virtual {v5, v2}, Lv9;->u(I)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v5}, Lv9;->m()Lhs1;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    iget v6, v5, Lv9;->x:I

    .line 382
    .line 383
    invoke-virtual {v3, v6}, Lhs1;->b(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    check-cast v3, Lih3;

    .line 388
    .line 389
    if-eqz v3, :cond_16

    .line 390
    .line 391
    :try_start_0
    iget-object v6, v5, Lv9;->z:Lj3;

    .line 392
    .line 393
    if-eqz v6, :cond_16

    .line 394
    .line 395
    invoke-virtual {v5, v3}, Lv9;->f(Lih3;)Landroid/graphics/Rect;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    iget-object v6, v6, Lj3;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 400
    .line 401
    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .line 403
    .line 404
    :catch_0
    :cond_16
    invoke-virtual {v5}, Lv9;->m()Lhs1;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    iget v6, v5, Lv9;->y:I

    .line 409
    .line 410
    invoke-virtual {v3, v6}, Lhs1;->b(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Lih3;

    .line 415
    .line 416
    if-eqz v3, :cond_17

    .line 417
    .line 418
    :try_start_1
    iget-object v6, v5, Lv9;->A:Lj3;

    .line 419
    .line 420
    if-eqz v6, :cond_17

    .line 421
    .line 422
    invoke-virtual {v5, v3}, Lv9;->f(Lih3;)Landroid/graphics/Rect;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    iget-object v6, v6, Lj3;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 427
    .line 428
    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    .line 430
    .line 431
    :catch_1
    :cond_17
    iget-object v3, v5, Lv9;->q:Lq9;

    .line 432
    .line 433
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5}, Lv9;->m()Lhs1;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v3, v2}, Lhs1;->b(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    check-cast v3, Lih3;

    .line 445
    .line 446
    if-eqz v3, :cond_1a

    .line 447
    .line 448
    iget-object v3, v3, Lih3;->a:Lgh3;

    .line 449
    .line 450
    if-eqz v3, :cond_1a

    .line 451
    .line 452
    iget-object v3, v3, Lgh3;->c:Lxy1;

    .line 453
    .line 454
    if-eqz v3, :cond_1a

    .line 455
    .line 456
    if-eqz v0, :cond_18

    .line 457
    .line 458
    iget-object v6, v5, Lv9;->C:Ltf2;

    .line 459
    .line 460
    invoke-virtual {v6, v2, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    :cond_18
    if-eqz v1, :cond_19

    .line 464
    .line 465
    iget-object v6, v5, Lv9;->D:Ltf2;

    .line 466
    .line 467
    invoke-virtual {v6, v2, v1}, Ltf2;->h(ILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_19
    invoke-virtual {v5, v3}, Lv9;->q(Lxy1;)V

    .line 471
    .line 472
    .line 473
    :cond_1a
    :goto_a
    if-eqz v0, :cond_1b

    .line 474
    .line 475
    iget-object v0, v0, Lye3;->a:Lne1;

    .line 476
    .line 477
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    check-cast v0, Ljava/lang/Float;

    .line 482
    .line 483
    iput-object v0, p0, Lif3;->p:Ljava/lang/Float;

    .line 484
    .line 485
    :cond_1b
    if-eqz v1, :cond_1c

    .line 486
    .line 487
    iget-object v0, v1, Lye3;->a:Lne1;

    .line 488
    .line 489
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Ljava/lang/Float;

    .line 494
    .line 495
    iput-object v0, p0, Lif3;->q:Ljava/lang/Float;

    .line 496
    .line 497
    :cond_1c
    return-object v4

    .line 498
    :pswitch_7
    check-cast p0, Lq9;

    .line 499
    .line 500
    check-cast v5, Landroid/view/KeyEvent;

    .line 501
    .line 502
    invoke-static {p0, v5}, Lq9;->c(Lq9;Landroid/view/KeyEvent;)Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    return-object p0

    .line 511
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
