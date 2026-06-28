.class public final Lje;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lje;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Lje;->p:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lje;->o:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    sget-object v7, Lt64;->a:Lt64;

    .line 11
    .line 12
    iget-object v0, v0, Lje;->p:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lga4;

    .line 18
    .line 19
    iget-object v0, v0, Lga4;->v:Lws2;

    .line 20
    .line 21
    invoke-virtual {v0, v7}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v7

    .line 25
    :pswitch_0
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    .line 26
    .line 27
    check-cast v0, Lix3;

    .line 28
    .line 29
    iget-object v0, v0, Lix3;->a:Landroid/view/View;

    .line 30
    .line 31
    invoke-direct {v1, v0, v6}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_1
    check-cast v0, Lpt3;

    .line 36
    .line 37
    invoke-virtual {v0}, Lpt3;->a()Llz1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, v0, Llz1;->n:Lxy1;

    .line 42
    .line 43
    invoke-virtual {v1}, Lxy1;->o()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lrg2;

    .line 48
    .line 49
    iget-object v2, v2, Lrg2;->n:Lug2;

    .line 50
    .line 51
    iget v2, v2, Lug2;->p:I

    .line 52
    .line 53
    iget v3, v0, Llz1;->A:I

    .line 54
    .line 55
    if-eq v3, v2, :cond_5

    .line 56
    .line 57
    iget-object v0, v0, Llz1;->s:Lkg2;

    .line 58
    .line 59
    iget-object v2, v0, Lkg2;->c:[Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v0, v0, Lkg2;->a:[J

    .line 62
    .line 63
    array-length v3, v0

    .line 64
    add-int/lit8 v3, v3, -0x2

    .line 65
    .line 66
    const/4 v4, 0x7

    .line 67
    if-ltz v3, :cond_3

    .line 68
    .line 69
    move v8, v6

    .line 70
    :goto_0
    aget-wide v9, v0, v8

    .line 71
    .line 72
    not-long v11, v9

    .line 73
    shl-long/2addr v11, v4

    .line 74
    and-long/2addr v11, v9

    .line 75
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    and-long/2addr v11, v13

    .line 81
    cmp-long v11, v11, v13

    .line 82
    .line 83
    if-eqz v11, :cond_2

    .line 84
    .line 85
    sub-int v11, v8, v3

    .line 86
    .line 87
    not-int v11, v11

    .line 88
    ushr-int/lit8 v11, v11, 0x1f

    .line 89
    .line 90
    const/16 v12, 0x8

    .line 91
    .line 92
    rsub-int/lit8 v11, v11, 0x8

    .line 93
    .line 94
    move v13, v6

    .line 95
    :goto_1
    if-ge v13, v11, :cond_1

    .line 96
    .line 97
    const-wide/16 v14, 0xff

    .line 98
    .line 99
    and-long/2addr v14, v9

    .line 100
    const-wide/16 v16, 0x80

    .line 101
    .line 102
    cmp-long v14, v14, v16

    .line 103
    .line 104
    if-gez v14, :cond_0

    .line 105
    .line 106
    shl-int/lit8 v14, v8, 0x3

    .line 107
    .line 108
    add-int/2addr v14, v13

    .line 109
    aget-object v14, v2, v14

    .line 110
    .line 111
    check-cast v14, Ldz1;

    .line 112
    .line 113
    iput-boolean v5, v14, Ldz1;->d:Z

    .line 114
    .line 115
    :cond_0
    shr-long/2addr v9, v12

    .line 116
    add-int/lit8 v13, v13, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    if-ne v11, v12, :cond_3

    .line 120
    .line 121
    :cond_2
    if-eq v8, v3, :cond_3

    .line 122
    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, v1, Lxy1;->u:Lxy1;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object v0, v1, Lxy1;->T:Lbz1;

    .line 131
    .line 132
    iget-boolean v0, v0, Lbz1;->e:Z

    .line 133
    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    invoke-static {v1, v6, v4}, Lxy1;->V(Lxy1;ZI)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {v1}, Lxy1;->q()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    invoke-static {v1, v6, v4}, Lxy1;->X(Lxy1;ZI)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_2
    return-object v7

    .line 150
    :pswitch_2
    check-cast v0, Ln33;

    .line 151
    .line 152
    iput-object v4, v0, Ln33;->i:Ld9;

    .line 153
    .line 154
    const-string v1, "OnPositionedDispatch"

    .line 155
    .line 156
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :try_start_0
    invoke-virtual {v0}, Ln33;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 163
    .line 164
    .line 165
    return-object v7

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :pswitch_3
    check-cast v0, Lxk2;

    .line 172
    .line 173
    invoke-virtual {v0}, Lxk2;->G0()Lqi0;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0

    .line 178
    :pswitch_4
    check-cast v0, Ltk2;

    .line 179
    .line 180
    iget-object v0, v0, Ltk2;->d:Lqi0;

    .line 181
    .line 182
    return-object v0

    .line 183
    :pswitch_5
    check-cast v0, Lu22;

    .line 184
    .line 185
    iget-object v0, v0, Lu22;->a:Ldd1;

    .line 186
    .line 187
    iget-object v0, v0, Ldd1;->o:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lx92;

    .line 190
    .line 191
    iget-boolean v1, v0, Lx92;->o:Z

    .line 192
    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    iget-boolean v1, v0, Lx92;->p:Z

    .line 197
    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    const-string v1, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 201
    .line 202
    invoke-static {v1}, Ljx2;->a(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_7
    invoke-virtual {v0}, Lx92;->a()V

    .line 206
    .line 207
    .line 208
    iput-boolean v5, v0, Lx92;->p:Z

    .line 209
    .line 210
    :goto_3
    return-object v7

    .line 211
    :pswitch_6
    check-cast v0, Ldz1;

    .line 212
    .line 213
    iget-object v1, v0, Ldz1;->g:Lws2;

    .line 214
    .line 215
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_8

    .line 226
    .line 227
    iget-object v0, v0, Ldz1;->c:Lec0;

    .line 228
    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    invoke-virtual {v0}, Lec0;->l()V

    .line 232
    .line 233
    .line 234
    :cond_8
    return-object v7

    .line 235
    :pswitch_7
    check-cast v0, Lxy1;

    .line 236
    .line 237
    iget-object v0, v0, Lxy1;->T:Lbz1;

    .line 238
    .line 239
    iget-object v1, v0, Lbz1;->p:Lcb2;

    .line 240
    .line 241
    iput-boolean v5, v1, Lcb2;->M:Z

    .line 242
    .line 243
    iget-object v0, v0, Lbz1;->q:Lq82;

    .line 244
    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    iput-boolean v5, v0, Lq82;->G:Z

    .line 248
    .line 249
    :cond_9
    return-object v7

    .line 250
    :pswitch_8
    check-cast v0, Ldh1;

    .line 251
    .line 252
    iget-object v0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Landroid/view/View;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v1, "input_method"

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    .line 271
    return-object v0

    .line 272
    :pswitch_9
    check-cast v0, Lka1;

    .line 273
    .line 274
    invoke-virtual {v0}, Lka1;->I0()Lca1;

    .line 275
    .line 276
    .line 277
    return-object v7

    .line 278
    :pswitch_a
    check-cast v0, Lzl3;

    .line 279
    .line 280
    iget-object v1, v0, Lzl3;->b:Lws2;

    .line 281
    .line 282
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-virtual {v1, v5}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v6}, Lzl3;->c(Z)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lzl3;->c:Ldh;

    .line 291
    .line 292
    iget-object v8, v1, Ldh;->a:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v8, Lws2;

    .line 295
    .line 296
    invoke-virtual {v8, v5}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v8, v1, Ldh;->c:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v8, Lws2;

    .line 302
    .line 303
    invoke-virtual {v8, v5}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object v8, v1, Ldh;->e:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v8, Lws2;

    .line 309
    .line 310
    invoke-virtual {v8, v5}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v1, Ldh;->g:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v1, Lws2;

    .line 316
    .line 317
    invoke-virtual {v1, v5}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    sget-wide v8, Lt70;->e:J

    .line 321
    .line 322
    iput-wide v8, v0, Lzl3;->e:J

    .line 323
    .line 324
    const/high16 v1, 0x3f800000    # 1.0f

    .line 325
    .line 326
    iput v1, v0, Lzl3;->f:F

    .line 327
    .line 328
    iput v1, v0, Lzl3;->g:F

    .line 329
    .line 330
    iget-object v1, v0, Lzl3;->j:Lta4;

    .line 331
    .line 332
    if-eqz v1, :cond_a

    .line 333
    .line 334
    iget-object v5, v1, Lta4;->d:[Ljm0;

    .line 335
    .line 336
    invoke-static {v5, v4}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 337
    .line 338
    .line 339
    iput v6, v1, Lta4;->e:I

    .line 340
    .line 341
    :cond_a
    sget-wide v4, Lf14;->b:J

    .line 342
    .line 343
    iput-wide v4, v0, Lzl3;->h:J

    .line 344
    .line 345
    iput-wide v2, v0, Lzl3;->i:J

    .line 346
    .line 347
    return-object v7

    .line 348
    :pswitch_b
    check-cast v0, Lpb0;

    .line 349
    .line 350
    invoke-static {v2, v3, v2, v3}, Lrs1;->a(JJ)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    iget-object v0, v0, Lpb0;->a:Landroid/view/View;

    .line 355
    .line 356
    if-eqz v1, :cond_13

    .line 357
    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    move-object v1, v0

    .line 363
    :goto_4
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 364
    .line 365
    if-eqz v2, :cond_f

    .line 366
    .line 367
    instance-of v2, v1, Landroid/app/Activity;

    .line 368
    .line 369
    if-eqz v2, :cond_b

    .line 370
    .line 371
    :goto_5
    move-object v4, v1

    .line 372
    goto :goto_6

    .line 373
    :cond_b
    instance-of v2, v1, Landroid/inputmethodservice/InputMethodService;

    .line 374
    .line 375
    if-eqz v2, :cond_c

    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_c
    instance-of v2, v1, Landroid/app/Application;

    .line 379
    .line 380
    if-eqz v2, :cond_d

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_d
    check-cast v1, Landroid/content/ContextWrapper;

    .line 384
    .line 385
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    if-nez v2, :cond_e

    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_e
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    goto :goto_4

    .line 397
    :cond_f
    :goto_6
    const-wide v1, 0xffffffffL

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    const/16 v3, 0x20

    .line 403
    .line 404
    if-eqz v4, :cond_12

    .line 405
    .line 406
    sget-object v0, Lbf4;->a:Laf4;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    sget-object v0, Laf4;->a:Laf4;

    .line 412
    .line 413
    sget-object v0, Laf4;->b:Lcf4;

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 419
    .line 420
    const/16 v6, 0x22

    .line 421
    .line 422
    if-lt v5, v6, :cond_10

    .line 423
    .line 424
    sget-object v5, Lcs0;->o:Lcs0;

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_10
    const/16 v6, 0x1e

    .line 428
    .line 429
    if-lt v5, v6, :cond_11

    .line 430
    .line 431
    sget-object v5, Lnx;->o:Lnx;

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_11
    sget-object v5, Lqv3;->r:Lqv3;

    .line 435
    .line 436
    :goto_7
    iget-object v0, v0, Lcf4;->b:Lbs0;

    .line 437
    .line 438
    invoke-interface {v5, v4, v0}, Ldf4;->h(Landroid/content/Context;Lbs0;)Lze4;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lze4;->a()Landroid/graphics/Rect;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    invoke-virtual {v0}, Lze4;->a()Landroid/graphics/Rect;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    int-to-long v5, v5

    .line 459
    shl-long/2addr v5, v3

    .line 460
    int-to-long v7, v0

    .line 461
    and-long v0, v7, v1

    .line 462
    .line 463
    or-long/2addr v0, v5

    .line 464
    invoke-static {v4}, Lis0;->b(Landroid/content/Context;)Les0;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    invoke-static {v0, v1}, Lse0;->H(J)J

    .line 469
    .line 470
    .line 471
    move-result-wide v3

    .line 472
    invoke-interface {v2, v3, v4}, Las0;->t(J)J

    .line 473
    .line 474
    .line 475
    move-result-wide v2

    .line 476
    new-instance v4, Lls0;

    .line 477
    .line 478
    invoke-direct {v4, v0, v1, v2, v3}, Lls0;-><init>(JJ)V

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-static {v0}, Lis0;->b(Landroid/content/Context;)Les0;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    iget v5, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 495
    .line 496
    int-to-float v5, v5

    .line 497
    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 498
    .line 499
    int-to-float v4, v4

    .line 500
    invoke-static {v5, v4}, Lbi4;->a(FF)J

    .line 501
    .line 502
    .line 503
    move-result-wide v4

    .line 504
    invoke-interface {v0, v4, v5}, Las0;->X(J)J

    .line 505
    .line 506
    .line 507
    move-result-wide v6

    .line 508
    shr-long v8, v6, v3

    .line 509
    .line 510
    long-to-int v0, v8

    .line 511
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    float-to-int v0, v0

    .line 516
    and-long/2addr v6, v1

    .line 517
    long-to-int v6, v6

    .line 518
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    float-to-int v6, v6

    .line 523
    int-to-long v7, v0

    .line 524
    shl-long/2addr v7, v3

    .line 525
    int-to-long v9, v6

    .line 526
    and-long v0, v9, v1

    .line 527
    .line 528
    or-long/2addr v0, v7

    .line 529
    new-instance v2, Lls0;

    .line 530
    .line 531
    invoke-direct {v2, v0, v1, v4, v5}, Lls0;-><init>(JJ)V

    .line 532
    .line 533
    .line 534
    move-object v4, v2

    .line 535
    goto :goto_8

    .line 536
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v0}, Lis0;->b(Landroid/content/Context;)Les0;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v2, v3}, Lse0;->H(J)J

    .line 545
    .line 546
    .line 547
    move-result-wide v4

    .line 548
    invoke-interface {v0, v4, v5}, Las0;->t(J)J

    .line 549
    .line 550
    .line 551
    move-result-wide v0

    .line 552
    new-instance v4, Lls0;

    .line 553
    .line 554
    invoke-direct {v4, v2, v3, v0, v1}, Lls0;-><init>(JJ)V

    .line 555
    .line 556
    .line 557
    :goto_8
    return-object v4

    .line 558
    :pswitch_c
    check-cast v0, Ll33;

    .line 559
    .line 560
    return-object v0

    .line 561
    :pswitch_d
    check-cast v0, Ln14;

    .line 562
    .line 563
    iget-object v1, v0, Ln14;->a:Lib0;

    .line 564
    .line 565
    invoke-virtual {v1}, Lib0;->l()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    sget-object v2, Lb11;->p:Lb11;

    .line 570
    .line 571
    if-ne v1, v2, :cond_14

    .line 572
    .line 573
    iget-object v0, v0, Ln14;->d:Lws2;

    .line 574
    .line 575
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    if-ne v0, v2, :cond_14

    .line 580
    .line 581
    goto :goto_9

    .line 582
    :cond_14
    move v5, v6

    .line 583
    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    return-object v0

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
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
