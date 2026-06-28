.class public final synthetic Lv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lv;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lv;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput p1, p0, Lv;->n:I

    iput-object p2, p0, Lv;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lv;->n:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/16 v5, 0x20

    .line 10
    .line 11
    const/4 v6, 0x5

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ldg3;

    .line 21
    .line 22
    check-cast v1, Lgo2;

    .line 23
    .line 24
    iget-object v2, v0, Ldg3;->k:Ljf3;

    .line 25
    .line 26
    iget-wide v3, v1, Lgo2;->a:J

    .line 27
    .line 28
    iget v1, v0, Ldg3;->j:I

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3, v4, v1}, Ldg3;->d(Ljf3;JI)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    new-instance v2, Lgo2;

    .line 35
    .line 36
    invoke-direct {v2, v0, v1}, Lgo2;-><init>(J)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :pswitch_0
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Llf3;

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Float;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, v0, Llf3;->a:Lts2;

    .line 51
    .line 52
    invoke-virtual {v2}, Lts2;->g()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    add-float/2addr v3, v1

    .line 58
    iget v4, v0, Llf3;->g:F

    .line 59
    .line 60
    add-float/2addr v3, v4

    .line 61
    iget-object v4, v0, Llf3;->f:Lts2;

    .line 62
    .line 63
    invoke-virtual {v4}, Lts2;->g()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    int-to-float v4, v4

    .line 68
    invoke-static {v3, v7, v4}, Lix;->j(FFF)F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    cmpg-float v3, v3, v4

    .line 73
    .line 74
    if-nez v3, :cond_0

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    :cond_0
    invoke-virtual {v2}, Lts2;->g()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    int-to-float v3, v3

    .line 82
    sub-float/2addr v4, v3

    .line 83
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v2}, Lts2;->g()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    add-int/2addr v5, v3

    .line 92
    invoke-virtual {v2, v5}, Lts2;->h(I)V

    .line 93
    .line 94
    .line 95
    int-to-float v2, v3

    .line 96
    sub-float v2, v4, v2

    .line 97
    .line 98
    iput v2, v0, Llf3;->g:F

    .line 99
    .line 100
    if-nez v8, :cond_1

    .line 101
    .line 102
    move v1, v4

    .line 103
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_1
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lgc3;

    .line 111
    .line 112
    iget-object v0, v0, Lgc3;->p:Lic3;

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-interface {v0, v1}, Lic3;->b(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    const/4 v9, 0x1

    .line 122
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :pswitch_2
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lda3;

    .line 130
    .line 131
    check-cast v1, Lee1;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iput-object v1, v0, Lda3;->g:Lee1;

    .line 137
    .line 138
    sget-object v0, Lt64;->a:Lt64;

    .line 139
    .line 140
    return-object v0

    .line 141
    :pswitch_3
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lzy;

    .line 144
    .line 145
    check-cast v1, Ljava/lang/String;

    .line 146
    .line 147
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 148
    .line 149
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "success"

    .line 153
    .line 154
    invoke-virtual {v2, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const-string v3, "message"

    .line 159
    .line 160
    const-string v4, ""

    .line 161
    .line 162
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-lez v4, :cond_3

    .line 174
    .line 175
    move-object v10, v3

    .line 176
    :cond_3
    const-string v3, "action"

    .line 177
    .line 178
    const-string v4, "COMPLETE"

    .line 179
    .line 180
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    new-instance v3, Lw24;

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v3, v1, v10, v2}, Lw24;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v3}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catch_0
    sget-object v0, Lez3;->a:Lra3;

    .line 198
    .line 199
    new-array v1, v8, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :goto_1
    sget-object v0, Lt64;->a:Lt64;

    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_4
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lh33;

    .line 213
    .line 214
    check-cast v1, Ljava/lang/Throwable;

    .line 215
    .line 216
    const-string v2, "Recomposer effect job completed"

    .line 217
    .line 218
    new-instance v3, Ljava/util/concurrent/CancellationException;

    .line 219
    .line 220
    invoke-direct {v3, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 224
    .line 225
    .line 226
    iget-object v2, v0, Lh33;->c:Ljava/lang/Object;

    .line 227
    .line 228
    monitor-enter v2

    .line 229
    :try_start_1
    iget-object v4, v0, Lh33;->d:Ltu1;

    .line 230
    .line 231
    if-eqz v4, :cond_4

    .line 232
    .line 233
    iget-object v5, v0, Lh33;->u:Lwr3;

    .line 234
    .line 235
    sget-object v6, Lf33;->o:Lf33;

    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v10, v6}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-interface {v4, v3}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 244
    .line 245
    .line 246
    iput-object v10, v0, Lh33;->r:Lo20;

    .line 247
    .line 248
    new-instance v3, Lm;

    .line 249
    .line 250
    const/16 v5, 0x18

    .line 251
    .line 252
    invoke-direct {v3, v5, v0, v1}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v4, v3}, Ltu1;->V(Lpe1;)Ljv0;

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    goto :goto_3

    .line 261
    :cond_4
    iput-object v3, v0, Lh33;->e:Ljava/lang/Throwable;

    .line 262
    .line 263
    iget-object v0, v0, Lh33;->u:Lwr3;

    .line 264
    .line 265
    sget-object v1, Lf33;->n:Lf33;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v10, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .line 272
    .line 273
    :goto_2
    monitor-exit v2

    .line 274
    sget-object v0, Lt64;->a:Lt64;

    .line 275
    .line 276
    return-object v0

    .line 277
    :goto_3
    monitor-exit v2

    .line 278
    throw v0

    .line 279
    :pswitch_5
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Lec0;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lec0;->z(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    sget-object v0, Lt64;->a:Lt64;

    .line 287
    .line 288
    return-object v0

    .line 289
    :pswitch_6
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v0, Ltv2;

    .line 292
    .line 293
    check-cast v1, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v3, v0, Ltv2;->e:[Ljava/lang/String;

    .line 305
    .line 306
    aget-object v3, v3, v1

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v3, ": "

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ltv2;->j(I)Lgi3;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v0}, Lgi3;->b()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    :pswitch_7
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Llk2;

    .line 335
    .line 336
    check-cast v1, Lyh2;

    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    iget-object v2, v1, Lyh2;->u:Lai2;

    .line 342
    .line 343
    iget-object v3, v1, Lyh2;->o:Lqi2;

    .line 344
    .line 345
    if-eqz v3, :cond_5

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_5
    move-object v3, v10

    .line 349
    :goto_4
    if-nez v3, :cond_6

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_6
    invoke-virtual {v2}, Lai2;->a()Landroid/os/Bundle;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v3}, Llk2;->c(Lqi2;)Lqi2;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    if-nez v4, :cond_7

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_7
    invoke-virtual {v4, v3}, Lqi2;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_8

    .line 367
    .line 368
    move-object v10, v1

    .line 369
    goto :goto_5

    .line 370
    :cond_8
    invoke-virtual {v0}, Llk2;->b()Lei2;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2}, Lai2;->a()Landroid/os/Bundle;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v4, v1}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v4, v1}, Lei2;->b(Lqi2;Landroid/os/Bundle;)Lyh2;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    :goto_5
    return-object v10

    .line 387
    :pswitch_8
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Lts2;

    .line 390
    .line 391
    check-cast v1, Lrs1;

    .line 392
    .line 393
    iget-wide v1, v1, Lrs1;->a:J

    .line 394
    .line 395
    shr-long/2addr v1, v5

    .line 396
    long-to-int v1, v1

    .line 397
    invoke-virtual {v0, v1}, Lts2;->h(I)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lt64;->a:Lt64;

    .line 401
    .line 402
    return-object v0

    .line 403
    :pswitch_9
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Landroid/content/Context;

    .line 406
    .line 407
    check-cast v1, Landroid/os/Bundle;

    .line 408
    .line 409
    invoke-static {v0}, Lis0;->w(Landroid/content/Context;)Lxi2;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-eqz v1, :cond_9

    .line 414
    .line 415
    iget-object v2, v0, Lxi2;->a:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 422
    .line 423
    .line 424
    :cond_9
    iget-object v2, v0, Lxi2;->b:Lii2;

    .line 425
    .line 426
    const-string v3, "android-support-nav:controller:backStackStates:"

    .line 427
    .line 428
    const-string v4, "android-support-nav:controller:backStackStates"

    .line 429
    .line 430
    const-string v5, "android-support-nav:controller:backStackIds"

    .line 431
    .line 432
    const-string v6, "android-support-nav:controller:backStackDestIds"

    .line 433
    .line 434
    iget-object v7, v2, Lii2;->n:Ljava/util/LinkedHashMap;

    .line 435
    .line 436
    const-string v11, "android-support-nav:controller:backStack"

    .line 437
    .line 438
    const-string v12, "android-support-nav:controller:navigatorState"

    .line 439
    .line 440
    if-nez v1, :cond_a

    .line 441
    .line 442
    move-object/from16 v16, v10

    .line 443
    .line 444
    goto/16 :goto_d

    .line 445
    .line 446
    :cond_a
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    if-eqz v13, :cond_c

    .line 451
    .line 452
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    if-eqz v13, :cond_b

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_b
    invoke-static {v12}, Lnt1;->I(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v10

    .line 463
    :cond_c
    move-object v13, v10

    .line 464
    :goto_6
    iput-object v13, v2, Lii2;->d:Landroid/os/Bundle;

    .line 465
    .line 466
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v12

    .line 470
    if-eqz v12, :cond_d

    .line 471
    .line 472
    invoke-static {v11, v1}, Lmt1;->F(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 473
    .line 474
    .line 475
    move-result-object v11

    .line 476
    new-array v12, v8, [Landroid/os/Bundle;

    .line 477
    .line 478
    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    check-cast v11, [Landroid/os/Bundle;

    .line 483
    .line 484
    goto :goto_7

    .line 485
    :cond_d
    move-object v11, v10

    .line 486
    :goto_7
    iput-object v11, v2, Lii2;->e:[Landroid/os/Bundle;

    .line 487
    .line 488
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-eqz v11, :cond_f

    .line 496
    .line 497
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    if-eqz v11, :cond_f

    .line 502
    .line 503
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    if-eqz v11, :cond_11

    .line 508
    .line 509
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    if-eqz v6, :cond_10

    .line 514
    .line 515
    array-length v5, v11

    .line 516
    move v12, v8

    .line 517
    move v13, v12

    .line 518
    :goto_8
    if-ge v12, v5, :cond_f

    .line 519
    .line 520
    aget v14, v11, v12

    .line 521
    .line 522
    add-int/lit8 v15, v13, 0x1

    .line 523
    .line 524
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v14

    .line 528
    move-object/from16 v16, v10

    .line 529
    .line 530
    iget-object v10, v2, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 531
    .line 532
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    const-string v8, ""

    .line 537
    .line 538
    invoke-static {v9, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v8

    .line 542
    if-nez v8, :cond_e

    .line 543
    .line 544
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    check-cast v8, Ljava/lang/String;

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_e
    move-object/from16 v8, v16

    .line 552
    .line 553
    :goto_9
    invoke-interface {v10, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    add-int/lit8 v12, v12, 0x1

    .line 557
    .line 558
    move v13, v15

    .line 559
    move-object/from16 v10, v16

    .line 560
    .line 561
    const/4 v8, 0x0

    .line 562
    goto :goto_8

    .line 563
    :cond_f
    move-object/from16 v16, v10

    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_10
    move-object/from16 v16, v10

    .line 567
    .line 568
    invoke-static {v5}, Lnt1;->I(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw v16

    .line 572
    :cond_11
    move-object/from16 v16, v10

    .line 573
    .line 574
    invoke-static {v6}, Lnt1;->I(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v16

    .line 578
    :goto_a
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v2, :cond_15

    .line 583
    .line 584
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    if-eqz v2, :cond_14

    .line 589
    .line 590
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    const/4 v5, 0x0

    .line 595
    :cond_12
    :goto_b
    if-ge v5, v4, :cond_15

    .line 596
    .line 597
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    add-int/lit8 v5, v5, 0x1

    .line 602
    .line 603
    check-cast v6, Ljava/lang/String;

    .line 604
    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    if-eqz v8, :cond_12

    .line 622
    .line 623
    new-instance v8, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    invoke-static {v8, v1}, Lmt1;->F(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    .line 636
    .line 637
    .line 638
    move-result-object v8

    .line 639
    new-instance v9, Lvh;

    .line 640
    .line 641
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 642
    .line 643
    .line 644
    move-result v10

    .line 645
    invoke-direct {v9, v10}, Lvh;-><init>(I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 649
    .line 650
    .line 651
    move-result v10

    .line 652
    const/4 v11, 0x0

    .line 653
    :goto_c
    if-ge v11, v10, :cond_13

    .line 654
    .line 655
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    add-int/lit8 v11, v11, 0x1

    .line 660
    .line 661
    check-cast v12, Landroid/os/Bundle;

    .line 662
    .line 663
    new-instance v13, Lbi2;

    .line 664
    .line 665
    invoke-direct {v13, v12}, Lbi2;-><init>(Landroid/os/Bundle;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9, v13}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    goto :goto_c

    .line 672
    :cond_13
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    goto :goto_b

    .line 676
    :cond_14
    invoke-static {v4}, Lnt1;->I(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    throw v16

    .line 680
    :cond_15
    :goto_d
    if-eqz v1, :cond_18

    .line 681
    .line 682
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    .line 683
    .line 684
    const/4 v3, 0x0

    .line 685
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-nez v4, :cond_16

    .line 690
    .line 691
    const/4 v3, 0x1

    .line 692
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-ne v1, v3, :cond_16

    .line 697
    .line 698
    move-object/from16 v10, v16

    .line 699
    .line 700
    goto :goto_e

    .line 701
    :cond_16
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 702
    .line 703
    .line 704
    move-result-object v10

    .line 705
    :goto_e
    if-eqz v10, :cond_17

    .line 706
    .line 707
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    goto :goto_f

    .line 712
    :cond_17
    const/4 v8, 0x0

    .line 713
    :goto_f
    iput-boolean v8, v0, Lxi2;->e:Z

    .line 714
    .line 715
    :cond_18
    return-object v0

    .line 716
    :pswitch_a
    move-object/from16 v16, v10

    .line 717
    .line 718
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v0, Lhh2;

    .line 721
    .line 722
    check-cast v1, Ljava/lang/Throwable;

    .line 723
    .line 724
    move-object/from16 v1, v16

    .line 725
    .line 726
    invoke-virtual {v0, v1}, Lhh2;->b(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    sget-object v0, Lt64;->a:Lt64;

    .line 730
    .line 731
    return-object v0

    .line 732
    :pswitch_b
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v0, Lbh0;

    .line 735
    .line 736
    check-cast v1, Ljava/io/File;

    .line 737
    .line 738
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    new-instance v2, Lze2;

    .line 742
    .line 743
    iget-object v0, v0, Lbh0;->n:Lhi0;

    .line 744
    .line 745
    invoke-direct {v2, v0, v1}, Lze2;-><init>(Lhi0;Ljava/io/File;)V

    .line 746
    .line 747
    .line 748
    return-object v2

    .line 749
    :pswitch_c
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast v0, Lra2;

    .line 752
    .line 753
    check-cast v1, Ljava/lang/Integer;

    .line 754
    .line 755
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    invoke-virtual {v0, v1}, Lra2;->d(I)Lpa2;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    return-object v0

    .line 764
    :pswitch_d
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v0, Lic3;

    .line 767
    .line 768
    if-eqz v0, :cond_19

    .line 769
    .line 770
    invoke-interface {v0, v1}, Lic3;->b(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    goto :goto_10

    .line 775
    :cond_19
    const/4 v9, 0x1

    .line 776
    :goto_10
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    return-object v0

    .line 781
    :pswitch_e
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v0, Ln12;

    .line 784
    .line 785
    check-cast v1, Ljava/lang/Float;

    .line 786
    .line 787
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    neg-float v1, v1

    .line 792
    cmpg-float v2, v1, v7

    .line 793
    .line 794
    if-gez v2, :cond_1a

    .line 795
    .line 796
    invoke-virtual {v0}, Ln12;->i()Z

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_23

    .line 801
    .line 802
    :cond_1a
    cmpl-float v2, v1, v7

    .line 803
    .line 804
    if-lez v2, :cond_1b

    .line 805
    .line 806
    invoke-virtual {v0}, Ln12;->c()Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-nez v2, :cond_1b

    .line 811
    .line 812
    goto/16 :goto_17

    .line 813
    .line 814
    :cond_1b
    iget v2, v0, Ln12;->h:F

    .line 815
    .line 816
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    const/high16 v3, 0x3f000000    # 0.5f

    .line 821
    .line 822
    cmpg-float v2, v2, v3

    .line 823
    .line 824
    if-gtz v2, :cond_1c

    .line 825
    .line 826
    :goto_11
    const/4 v2, 0x1

    .line 827
    goto :goto_12

    .line 828
    :cond_1c
    const-string v2, "entered drag with non-zero pending scroll"

    .line 829
    .line 830
    invoke-static {v2}, Ldr1;->c(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    goto :goto_11

    .line 834
    :goto_12
    iput-boolean v2, v0, Ln12;->d:Z

    .line 835
    .line 836
    iget v2, v0, Ln12;->h:F

    .line 837
    .line 838
    add-float/2addr v2, v1

    .line 839
    iput v2, v0, Ln12;->h:F

    .line 840
    .line 841
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    cmpl-float v2, v2, v3

    .line 846
    .line 847
    if-lez v2, :cond_21

    .line 848
    .line 849
    iget v2, v0, Ln12;->h:F

    .line 850
    .line 851
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    iget-object v5, v0, Ln12;->f:Lws2;

    .line 856
    .line 857
    invoke-virtual {v5}, Lws2;->getValue()Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    check-cast v5, Lf12;

    .line 862
    .line 863
    iget-boolean v6, v0, Ln12;->b:Z

    .line 864
    .line 865
    const/4 v8, 0x1

    .line 866
    xor-int/2addr v6, v8

    .line 867
    invoke-virtual {v5, v4, v6}, Lf12;->h(IZ)Lf12;

    .line 868
    .line 869
    .line 870
    move-result-object v5

    .line 871
    if-eqz v5, :cond_1e

    .line 872
    .line 873
    iget-object v6, v0, Ln12;->c:Lf12;

    .line 874
    .line 875
    if-eqz v6, :cond_1e

    .line 876
    .line 877
    invoke-virtual {v6, v4, v8}, Lf12;->h(IZ)Lf12;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    if-eqz v4, :cond_1d

    .line 882
    .line 883
    iput-object v4, v0, Ln12;->c:Lf12;

    .line 884
    .line 885
    goto :goto_13

    .line 886
    :cond_1d
    const/4 v10, 0x0

    .line 887
    goto :goto_14

    .line 888
    :cond_1e
    :goto_13
    move-object v10, v5

    .line 889
    :goto_14
    if-eqz v10, :cond_1f

    .line 890
    .line 891
    iget-boolean v4, v0, Ln12;->b:Z

    .line 892
    .line 893
    invoke-virtual {v0, v10, v4, v8}, Ln12;->b(Lf12;ZZ)V

    .line 894
    .line 895
    .line 896
    iget-object v4, v0, Ln12;->w:Lpg2;

    .line 897
    .line 898
    sget-object v5, Lt64;->a:Lt64;

    .line 899
    .line 900
    invoke-interface {v4, v5}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 901
    .line 902
    .line 903
    iget v4, v0, Ln12;->h:F

    .line 904
    .line 905
    sub-float/2addr v2, v4

    .line 906
    invoke-virtual {v0, v2, v10}, Ln12;->k(FLf12;)V

    .line 907
    .line 908
    .line 909
    goto :goto_15

    .line 910
    :cond_1f
    iget-object v4, v0, Ln12;->l:Lxy1;

    .line 911
    .line 912
    if-eqz v4, :cond_20

    .line 913
    .line 914
    invoke-virtual {v4}, Lxy1;->k()V

    .line 915
    .line 916
    .line 917
    :cond_20
    iget v4, v0, Ln12;->h:F

    .line 918
    .line 919
    sub-float/2addr v2, v4

    .line 920
    invoke-virtual {v0}, Ln12;->h()Lf12;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    invoke-virtual {v0, v2, v4}, Ln12;->k(FLf12;)V

    .line 925
    .line 926
    .line 927
    :cond_21
    :goto_15
    iget v2, v0, Ln12;->h:F

    .line 928
    .line 929
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    cmpg-float v2, v2, v3

    .line 934
    .line 935
    if-gtz v2, :cond_22

    .line 936
    .line 937
    :goto_16
    move v7, v1

    .line 938
    goto :goto_17

    .line 939
    :cond_22
    iget v2, v0, Ln12;->h:F

    .line 940
    .line 941
    sub-float/2addr v1, v2

    .line 942
    iput v7, v0, Ln12;->h:F

    .line 943
    .line 944
    goto :goto_16

    .line 945
    :cond_23
    :goto_17
    neg-float v0, v7

    .line 946
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    return-object v0

    .line 951
    :pswitch_f
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v0, Li02;

    .line 954
    .line 955
    check-cast v1, Lhv0;

    .line 956
    .line 957
    new-instance v1, Ls6;

    .line 958
    .line 959
    invoke-direct {v1, v6, v0}, Ls6;-><init>(ILjava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    return-object v1

    .line 963
    :pswitch_10
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v0, Lb02;

    .line 966
    .line 967
    check-cast v1, Lhv0;

    .line 968
    .line 969
    new-instance v1, Ls6;

    .line 970
    .line 971
    const/4 v2, 0x3

    .line 972
    invoke-direct {v1, v2, v0}, Ls6;-><init>(ILjava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    return-object v1

    .line 976
    :pswitch_11
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v0, Lpj1;

    .line 979
    .line 980
    check-cast v1, Lhg2;

    .line 981
    .line 982
    sget-object v2, Lpj1;->c:Lrx2;

    .line 983
    .line 984
    invoke-virtual {v1}, Lhg2;->a()Ljava/util/Map;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 989
    .line 990
    .line 991
    move-result-object v5

    .line 992
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    move-wide v6, v3

    .line 997
    :cond_24
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 998
    .line 999
    .line 1000
    move-result v8

    .line 1001
    if-eqz v8, :cond_27

    .line 1002
    .line 1003
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v8

    .line 1007
    check-cast v8, Ljava/util/Map$Entry;

    .line 1008
    .line 1009
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v9

    .line 1013
    instance-of v9, v9, Ljava/util/Set;

    .line 1014
    .line 1015
    if-eqz v9, :cond_24

    .line 1016
    .line 1017
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v9

    .line 1021
    check-cast v9, Lrx2;

    .line 1022
    .line 1023
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v8

    .line 1027
    check-cast v8, Ljava/util/Set;

    .line 1028
    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1030
    .line 1031
    .line 1032
    move-result-wide v10

    .line 1033
    invoke-virtual {v0, v10, v11}, Lpj1;->b(J)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v10

    .line 1037
    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v8

    .line 1041
    if-eqz v8, :cond_26

    .line 1042
    .line 1043
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v8

    .line 1047
    new-instance v10, Ljava/util/HashSet;

    .line 1048
    .line 1049
    const/4 v11, 0x1

    .line 1050
    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 1051
    .line 1052
    .line 1053
    const/16 v18, 0x0

    .line 1054
    .line 1055
    aget-object v8, v8, v18

    .line 1056
    .line 1057
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v11

    .line 1064
    if-eqz v11, :cond_25

    .line 1065
    .line 1066
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v8

    .line 1070
    invoke-virtual {v1, v9, v8}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    const-wide/16 v8, 0x1

    .line 1074
    .line 1075
    add-long/2addr v6, v8

    .line 1076
    goto :goto_18

    .line 1077
    :cond_25
    const-string v0, "duplicate element: "

    .line 1078
    .line 1079
    invoke-static {v8, v0}, Lp61;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    :goto_19
    const/16 v16, 0x0

    .line 1083
    .line 1084
    goto :goto_1a

    .line 1085
    :cond_26
    invoke-virtual {v1, v9}, Lhg2;->d(Lrx2;)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_18

    .line 1089
    :cond_27
    cmp-long v0, v6, v3

    .line 1090
    .line 1091
    if-nez v0, :cond_28

    .line 1092
    .line 1093
    invoke-virtual {v1, v2}, Lhg2;->d(Lrx2;)V

    .line 1094
    .line 1095
    .line 1096
    goto :goto_19

    .line 1097
    :cond_28
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v1, v2, v0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_19

    .line 1105
    :goto_1a
    return-object v16

    .line 1106
    :pswitch_12
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1107
    .line 1108
    check-cast v0, Lsa1;

    .line 1109
    .line 1110
    check-cast v1, Lb54;

    .line 1111
    .line 1112
    iget-object v4, v1, Lb54;->b:Lpb1;

    .line 1113
    .line 1114
    iget v5, v1, Lb54;->c:I

    .line 1115
    .line 1116
    iget v6, v1, Lb54;->d:I

    .line 1117
    .line 1118
    iget-object v7, v1, Lb54;->e:Ljava/lang/Object;

    .line 1119
    .line 1120
    new-instance v2, Lb54;

    .line 1121
    .line 1122
    const/4 v3, 0x0

    .line 1123
    invoke-direct/range {v2 .. v7}, Lb54;-><init>(Lra1;Lpb1;IILjava/lang/Object;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0, v2}, Lsa1;->a(Lb54;)Lc54;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    iget-object v0, v0, Lc54;->n:Ljava/lang/Object;

    .line 1131
    .line 1132
    return-object v0

    .line 1133
    :pswitch_13
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1134
    .line 1135
    check-cast v0, Lug2;

    .line 1136
    .line 1137
    check-cast v1, Lcv2;

    .line 1138
    .line 1139
    iget-object v1, v0, Lug2;->n:[Ljava/lang/Object;

    .line 1140
    .line 1141
    iget v0, v0, Lug2;->p:I

    .line 1142
    .line 1143
    const/4 v8, 0x0

    .line 1144
    :goto_1b
    if-ge v8, v0, :cond_29

    .line 1145
    .line 1146
    aget-object v2, v1, v8

    .line 1147
    .line 1148
    check-cast v2, Leb2;

    .line 1149
    .line 1150
    invoke-interface {v2}, Leb2;->d()V

    .line 1151
    .line 1152
    .line 1153
    add-int/lit8 v8, v8, 0x1

    .line 1154
    .line 1155
    goto :goto_1b

    .line 1156
    :cond_29
    sget-object v0, Lt64;->a:Lt64;

    .line 1157
    .line 1158
    return-object v0

    .line 1159
    :pswitch_14
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1160
    .line 1161
    check-cast v0, Lhj3;

    .line 1162
    .line 1163
    check-cast v1, Lxi0;

    .line 1164
    .line 1165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1166
    .line 1167
    .line 1168
    const-string v2, "FirebaseSessions"

    .line 1169
    .line 1170
    const-string v3, "CorruptionException in session data DataStore"

    .line 1171
    .line 1172
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    .line 1174
    .line 1175
    new-instance v1, Lgj3;

    .line 1176
    .line 1177
    iget-object v0, v0, Lhj3;->n:Luj3;

    .line 1178
    .line 1179
    const/4 v2, 0x0

    .line 1180
    invoke-virtual {v0, v2}, Luj3;->a(Llj3;)Llj3;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-direct {v1, v0, v2, v2}, Lgj3;-><init>(Llj3;Lhz3;Ljava/util/Map;)V

    .line 1185
    .line 1186
    .line 1187
    return-object v1

    .line 1188
    :pswitch_15
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1189
    .line 1190
    check-cast v0, Lsw0;

    .line 1191
    .line 1192
    check-cast v1, Lwg1;

    .line 1193
    .line 1194
    instance-of v2, v1, Lbx0;

    .line 1195
    .line 1196
    if-eqz v2, :cond_2a

    .line 1197
    .line 1198
    invoke-virtual {v0, v1}, Lsw0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    check-cast v0, Ljava/lang/Boolean;

    .line 1203
    .line 1204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v9

    .line 1208
    goto :goto_1c

    .line 1209
    :cond_2a
    const/4 v9, 0x1

    .line 1210
    :goto_1c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    return-object v0

    .line 1215
    :pswitch_16
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1216
    .line 1217
    check-cast v0, Lqu0;

    .line 1218
    .line 1219
    check-cast v1, Ljava/io/IOException;

    .line 1220
    .line 1221
    const/4 v8, 0x1

    .line 1222
    iput-boolean v8, v0, Lqu0;->y:Z

    .line 1223
    .line 1224
    sget-object v0, Lt64;->a:Lt64;

    .line 1225
    .line 1226
    return-object v0

    .line 1227
    :pswitch_17
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v0, Lfn0;

    .line 1230
    .line 1231
    iget-object v2, v0, Lfn0;->j:Lnv3;

    .line 1232
    .line 1233
    check-cast v1, Ljava/lang/Throwable;

    .line 1234
    .line 1235
    if-eqz v1, :cond_2b

    .line 1236
    .line 1237
    iget-object v0, v0, Lfn0;->h:Lwu4;

    .line 1238
    .line 1239
    new-instance v3, Ly51;

    .line 1240
    .line 1241
    invoke-direct {v3, v1}, Ly51;-><init>(Ljava/lang/Throwable;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v0, v3}, Lwu4;->v(Lsr3;)V

    .line 1245
    .line 1246
    .line 1247
    :cond_2b
    invoke-virtual {v2}, Lnv3;->a()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    if-eqz v0, :cond_2c

    .line 1252
    .line 1253
    invoke-virtual {v2}, Lnv3;->getValue()Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    check-cast v0, Ln51;

    .line 1258
    .line 1259
    invoke-virtual {v0}, Ln51;->close()V

    .line 1260
    .line 1261
    .line 1262
    :cond_2c
    sget-object v0, Lt64;->a:Lt64;

    .line 1263
    .line 1264
    return-object v0

    .line 1265
    :pswitch_18
    move-object v2, v10

    .line 1266
    const/4 v8, 0x1

    .line 1267
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 1268
    .line 1269
    check-cast v0, Ldx;

    .line 1270
    .line 1271
    check-cast v1, Lr00;

    .line 1272
    .line 1273
    iget v9, v0, Ldx;->E:F

    .line 1274
    .line 1275
    invoke-virtual {v1}, Lr00;->b()F

    .line 1276
    .line 1277
    .line 1278
    move-result v10

    .line 1279
    mul-float/2addr v10, v9

    .line 1280
    cmpl-float v9, v10, v7

    .line 1281
    .line 1282
    if-ltz v9, :cond_49

    .line 1283
    .line 1284
    iget-object v9, v1, Lr00;->n:Liz;

    .line 1285
    .line 1286
    invoke-interface {v9}, Liz;->d()J

    .line 1287
    .line 1288
    .line 1289
    move-result-wide v9

    .line 1290
    invoke-static {v9, v10}, Lmn3;->b(J)F

    .line 1291
    .line 1292
    .line 1293
    move-result v9

    .line 1294
    cmpl-float v9, v9, v7

    .line 1295
    .line 1296
    if-lez v9, :cond_49

    .line 1297
    .line 1298
    iget v9, v0, Ldx;->E:F

    .line 1299
    .line 1300
    invoke-static {v9, v7}, Lcw0;->b(FF)Z

    .line 1301
    .line 1302
    .line 1303
    move-result v7

    .line 1304
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1305
    .line 1306
    if-eqz v7, :cond_2d

    .line 1307
    .line 1308
    move v7, v9

    .line 1309
    goto :goto_1d

    .line 1310
    :cond_2d
    iget v7, v0, Ldx;->E:F

    .line 1311
    .line 1312
    invoke-virtual {v1}, Lr00;->b()F

    .line 1313
    .line 1314
    .line 1315
    move-result v10

    .line 1316
    mul-float/2addr v10, v7

    .line 1317
    float-to-double v10, v10

    .line 1318
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 1319
    .line 1320
    .line 1321
    move-result-wide v10

    .line 1322
    double-to-float v7, v10

    .line 1323
    :goto_1d
    iget-object v10, v1, Lr00;->n:Liz;

    .line 1324
    .line 1325
    invoke-interface {v10}, Liz;->d()J

    .line 1326
    .line 1327
    .line 1328
    move-result-wide v10

    .line 1329
    invoke-static {v10, v11}, Lmn3;->b(J)F

    .line 1330
    .line 1331
    .line 1332
    move-result v10

    .line 1333
    const/high16 v11, 0x40000000    # 2.0f

    .line 1334
    .line 1335
    div-float/2addr v10, v11

    .line 1336
    float-to-double v12, v10

    .line 1337
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 1338
    .line 1339
    .line 1340
    move-result-wide v12

    .line 1341
    double-to-float v10, v12

    .line 1342
    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    .line 1343
    .line 1344
    .line 1345
    move-result v13

    .line 1346
    div-float v24, v13, v11

    .line 1347
    .line 1348
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1349
    .line 1350
    .line 1351
    move-result v7

    .line 1352
    int-to-long v14, v7

    .line 1353
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1354
    .line 1355
    .line 1356
    move-result v7

    .line 1357
    int-to-long v2, v7

    .line 1358
    shl-long/2addr v14, v5

    .line 1359
    const-wide v19, 0xffffffffL

    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    and-long v2, v2, v19

    .line 1365
    .line 1366
    or-long v26, v14, v2

    .line 1367
    .line 1368
    iget-object v2, v1, Lr00;->n:Liz;

    .line 1369
    .line 1370
    invoke-interface {v2}, Liz;->d()J

    .line 1371
    .line 1372
    .line 1373
    move-result-wide v2

    .line 1374
    shr-long/2addr v2, v5

    .line 1375
    long-to-int v2, v2

    .line 1376
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1377
    .line 1378
    .line 1379
    move-result v2

    .line 1380
    sub-float/2addr v2, v13

    .line 1381
    iget-object v3, v1, Lr00;->n:Liz;

    .line 1382
    .line 1383
    invoke-interface {v3}, Liz;->d()J

    .line 1384
    .line 1385
    .line 1386
    move-result-wide v14

    .line 1387
    and-long v14, v14, v19

    .line 1388
    .line 1389
    long-to-int v3, v14

    .line 1390
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    sub-float/2addr v3, v13

    .line 1395
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    int-to-long v14, v2

    .line 1400
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1401
    .line 1402
    .line 1403
    move-result v2

    .line 1404
    int-to-long v2, v2

    .line 1405
    shl-long/2addr v14, v5

    .line 1406
    and-long v2, v2, v19

    .line 1407
    .line 1408
    or-long v28, v14, v2

    .line 1409
    .line 1410
    mul-float v31, v13, v11

    .line 1411
    .line 1412
    iget-object v2, v1, Lr00;->n:Liz;

    .line 1413
    .line 1414
    invoke-interface {v2}, Liz;->d()J

    .line 1415
    .line 1416
    .line 1417
    move-result-wide v2

    .line 1418
    invoke-static {v2, v3}, Lmn3;->b(J)F

    .line 1419
    .line 1420
    .line 1421
    move-result v2

    .line 1422
    cmpl-float v2, v31, v2

    .line 1423
    .line 1424
    if-lez v2, :cond_2e

    .line 1425
    .line 1426
    move v3, v8

    .line 1427
    goto :goto_1e

    .line 1428
    :cond_2e
    const/4 v3, 0x0

    .line 1429
    :goto_1e
    iget-object v2, v0, Ldx;->G:Ljl3;

    .line 1430
    .line 1431
    iget-object v7, v1, Lr00;->n:Liz;

    .line 1432
    .line 1433
    invoke-interface {v7}, Liz;->d()J

    .line 1434
    .line 1435
    .line 1436
    move-result-wide v10

    .line 1437
    iget-object v7, v1, Lr00;->n:Liz;

    .line 1438
    .line 1439
    invoke-interface {v7}, Liz;->getLayoutDirection()Lhy1;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v7

    .line 1443
    invoke-interface {v2, v10, v11, v7, v1}, Ljl3;->a(JLhy1;Las0;)Lfl4;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    instance-of v7, v2, Lkr2;

    .line 1448
    .line 1449
    if-eqz v7, :cond_3f

    .line 1450
    .line 1451
    iget-object v7, v0, Ldx;->F:Lsp3;

    .line 1452
    .line 1453
    check-cast v2, Lkr2;

    .line 1454
    .line 1455
    iget-object v10, v2, Lkr2;->x:Lsb;

    .line 1456
    .line 1457
    if-eqz v3, :cond_2f

    .line 1458
    .line 1459
    new-instance v0, Lm;

    .line 1460
    .line 1461
    invoke-direct {v0, v6, v2, v7}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v1, v0}, Lr00;->a(Lpe1;)Ldh1;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v10

    .line 1468
    goto/16 :goto_2b

    .line 1469
    .line 1470
    :cond_2f
    if-eqz v7, :cond_30

    .line 1471
    .line 1472
    iget-wide v11, v7, Lsp3;->h:J

    .line 1473
    .line 1474
    invoke-static {v9, v11, v12}, Lt70;->b(FJ)J

    .line 1475
    .line 1476
    .line 1477
    move-result-wide v11

    .line 1478
    new-instance v3, Low;

    .line 1479
    .line 1480
    invoke-direct {v3, v11, v12, v6}, Low;-><init>(JI)V

    .line 1481
    .line 1482
    .line 1483
    move-object/from16 v26, v3

    .line 1484
    .line 1485
    move v3, v8

    .line 1486
    goto :goto_1f

    .line 1487
    :cond_30
    const/4 v3, 0x0

    .line 1488
    const/16 v26, 0x0

    .line 1489
    .line 1490
    :goto_1f
    invoke-virtual {v10}, Lsb;->c()Ll33;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v6

    .line 1494
    iget v11, v6, Ll33;->b:F

    .line 1495
    .line 1496
    iget v12, v6, Ll33;->a:F

    .line 1497
    .line 1498
    iget-object v13, v0, Ldx;->D:Lzw;

    .line 1499
    .line 1500
    if-nez v13, :cond_31

    .line 1501
    .line 1502
    new-instance v13, Lzw;

    .line 1503
    .line 1504
    invoke-direct {v13}, Lzw;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    iput-object v13, v0, Ldx;->D:Lzw;

    .line 1508
    .line 1509
    :cond_31
    iget-object v13, v0, Ldx;->D:Lzw;

    .line 1510
    .line 1511
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1512
    .line 1513
    .line 1514
    iget-object v14, v13, Lzw;->d:Lsb;

    .line 1515
    .line 1516
    if-nez v14, :cond_32

    .line 1517
    .line 1518
    invoke-static {}, Lub;->a()Lsb;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v14

    .line 1522
    iput-object v14, v13, Lzw;->d:Lsb;

    .line 1523
    .line 1524
    :cond_32
    invoke-virtual {v14}, Lsb;->e()V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1528
    .line 1529
    .line 1530
    iget v13, v6, Ll33;->a:F

    .line 1531
    .line 1532
    iget v15, v6, Ll33;->d:F

    .line 1533
    .line 1534
    iget v4, v6, Ll33;->c:F

    .line 1535
    .line 1536
    move/from16 v21, v5

    .line 1537
    .line 1538
    iget v5, v6, Ll33;->b:F

    .line 1539
    .line 1540
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v16

    .line 1544
    if-nez v16, :cond_33

    .line 1545
    .line 1546
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v16

    .line 1550
    if-nez v16, :cond_33

    .line 1551
    .line 1552
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v16

    .line 1556
    if-nez v16, :cond_33

    .line 1557
    .line 1558
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v16

    .line 1562
    if-eqz v16, :cond_34

    .line 1563
    .line 1564
    :cond_33
    const-string v16, "Invalid rectangle, make sure no value is NaN"

    .line 1565
    .line 1566
    invoke-static/range {v16 .. v16}, Lub;->b(Ljava/lang/String;)V

    .line 1567
    .line 1568
    .line 1569
    :cond_34
    iget-object v8, v14, Lsb;->b:Landroid/graphics/RectF;

    .line 1570
    .line 1571
    if-nez v8, :cond_35

    .line 1572
    .line 1573
    new-instance v8, Landroid/graphics/RectF;

    .line 1574
    .line 1575
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 1576
    .line 1577
    .line 1578
    iput-object v8, v14, Lsb;->b:Landroid/graphics/RectF;

    .line 1579
    .line 1580
    :cond_35
    iget-object v8, v14, Lsb;->b:Landroid/graphics/RectF;

    .line 1581
    .line 1582
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v8, v13, v5, v4, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1586
    .line 1587
    .line 1588
    iget-object v4, v14, Lsb;->a:Landroid/graphics/Path;

    .line 1589
    .line 1590
    iget-object v5, v14, Lsb;->b:Landroid/graphics/RectF;

    .line 1591
    .line 1592
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1593
    .line 1594
    .line 1595
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 1596
    .line 1597
    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1598
    .line 1599
    .line 1600
    const/4 v4, 0x0

    .line 1601
    invoke-virtual {v14, v14, v10, v4}, Lsb;->d(Lsb;Lsb;I)Z

    .line 1602
    .line 1603
    .line 1604
    new-instance v4, Lw33;

    .line 1605
    .line 1606
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1607
    .line 1608
    .line 1609
    iget v5, v6, Ll33;->c:F

    .line 1610
    .line 1611
    sub-float/2addr v5, v12

    .line 1612
    move/from16 p1, v9

    .line 1613
    .line 1614
    float-to-double v9, v5

    .line 1615
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 1616
    .line 1617
    .line 1618
    move-result-wide v8

    .line 1619
    double-to-float v5, v8

    .line 1620
    float-to-int v5, v5

    .line 1621
    iget v8, v6, Ll33;->d:F

    .line 1622
    .line 1623
    sub-float/2addr v8, v11

    .line 1624
    float-to-double v8, v8

    .line 1625
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v8

    .line 1629
    double-to-float v8, v8

    .line 1630
    float-to-int v8, v8

    .line 1631
    int-to-long v9, v5

    .line 1632
    shl-long v9, v9, v21

    .line 1633
    .line 1634
    move-object v13, v6

    .line 1635
    int-to-long v5, v8

    .line 1636
    and-long v5, v5, v19

    .line 1637
    .line 1638
    or-long v24, v9, v5

    .line 1639
    .line 1640
    iget-object v0, v0, Ldx;->D:Lzw;

    .line 1641
    .line 1642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1643
    .line 1644
    .line 1645
    iget-object v5, v0, Lzw;->a:Lgb;

    .line 1646
    .line 1647
    iget-object v6, v0, Lzw;->b:Ly8;

    .line 1648
    .line 1649
    if-eqz v5, :cond_36

    .line 1650
    .line 1651
    invoke-virtual {v5}, Lgb;->a()I

    .line 1652
    .line 1653
    .line 1654
    move-result v8

    .line 1655
    new-instance v9, Lbo1;

    .line 1656
    .line 1657
    invoke-direct {v9, v8}, Lbo1;-><init>(I)V

    .line 1658
    .line 1659
    .line 1660
    goto :goto_20

    .line 1661
    :cond_36
    const/4 v9, 0x0

    .line 1662
    :goto_20
    if-nez v9, :cond_37

    .line 1663
    .line 1664
    goto :goto_21

    .line 1665
    :cond_37
    iget v8, v9, Lbo1;->a:I

    .line 1666
    .line 1667
    if-nez v8, :cond_38

    .line 1668
    .line 1669
    goto :goto_24

    .line 1670
    :cond_38
    :goto_21
    if-eqz v5, :cond_39

    .line 1671
    .line 1672
    invoke-virtual {v5}, Lgb;->a()I

    .line 1673
    .line 1674
    .line 1675
    move-result v8

    .line 1676
    new-instance v10, Lbo1;

    .line 1677
    .line 1678
    invoke-direct {v10, v8}, Lbo1;-><init>(I)V

    .line 1679
    .line 1680
    .line 1681
    goto :goto_22

    .line 1682
    :cond_39
    const/4 v10, 0x0

    .line 1683
    :goto_22
    if-nez v10, :cond_3a

    .line 1684
    .line 1685
    goto :goto_23

    .line 1686
    :cond_3a
    iget v8, v10, Lbo1;->a:I

    .line 1687
    .line 1688
    if-eq v3, v8, :cond_3b

    .line 1689
    .line 1690
    :goto_23
    const/4 v8, 0x0

    .line 1691
    goto :goto_25

    .line 1692
    :cond_3b
    :goto_24
    const/4 v8, 0x1

    .line 1693
    :goto_25
    if-eqz v5, :cond_3d

    .line 1694
    .line 1695
    if-eqz v6, :cond_3d

    .line 1696
    .line 1697
    iget-object v9, v1, Lr00;->n:Liz;

    .line 1698
    .line 1699
    invoke-interface {v9}, Liz;->d()J

    .line 1700
    .line 1701
    .line 1702
    move-result-wide v9

    .line 1703
    shr-long v9, v9, v21

    .line 1704
    .line 1705
    long-to-int v9, v9

    .line 1706
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1707
    .line 1708
    .line 1709
    move-result v9

    .line 1710
    iget-object v10, v5, Lgb;->a:Landroid/graphics/Bitmap;

    .line 1711
    .line 1712
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1713
    .line 1714
    .line 1715
    move-result v15

    .line 1716
    int-to-float v15, v15

    .line 1717
    cmpl-float v9, v9, v15

    .line 1718
    .line 1719
    if-gtz v9, :cond_3d

    .line 1720
    .line 1721
    iget-object v9, v1, Lr00;->n:Liz;

    .line 1722
    .line 1723
    invoke-interface {v9}, Liz;->d()J

    .line 1724
    .line 1725
    .line 1726
    move-result-wide v15

    .line 1727
    move-object v9, v5

    .line 1728
    move-object/from16 v17, v6

    .line 1729
    .line 1730
    and-long v5, v15, v19

    .line 1731
    .line 1732
    long-to-int v5, v5

    .line 1733
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1734
    .line 1735
    .line 1736
    move-result v5

    .line 1737
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1738
    .line 1739
    .line 1740
    move-result v6

    .line 1741
    int-to-float v6, v6

    .line 1742
    cmpl-float v5, v5, v6

    .line 1743
    .line 1744
    if-gtz v5, :cond_3d

    .line 1745
    .line 1746
    if-nez v8, :cond_3c

    .line 1747
    .line 1748
    goto :goto_26

    .line 1749
    :cond_3c
    move-object v5, v9

    .line 1750
    move-object/from16 v6, v17

    .line 1751
    .line 1752
    goto :goto_27

    .line 1753
    :cond_3d
    :goto_26
    shr-long v5, v24, v21

    .line 1754
    .line 1755
    long-to-int v5, v5

    .line 1756
    and-long v8, v24, v19

    .line 1757
    .line 1758
    long-to-int v6, v8

    .line 1759
    invoke-static {v5, v6, v3}, Lgg4;->c(III)Lgb;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v5

    .line 1763
    iput-object v5, v0, Lzw;->a:Lgb;

    .line 1764
    .line 1765
    sget-object v3, Lz8;->a:Landroid/graphics/Canvas;

    .line 1766
    .line 1767
    new-instance v6, Ly8;

    .line 1768
    .line 1769
    invoke-direct {v6}, Ly8;-><init>()V

    .line 1770
    .line 1771
    .line 1772
    new-instance v3, Landroid/graphics/Canvas;

    .line 1773
    .line 1774
    iget-object v8, v5, Lgb;->a:Landroid/graphics/Bitmap;

    .line 1775
    .line 1776
    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1777
    .line 1778
    .line 1779
    iput-object v3, v6, Ly8;->a:Landroid/graphics/Canvas;

    .line 1780
    .line 1781
    iput-object v6, v0, Lzw;->b:Ly8;

    .line 1782
    .line 1783
    :goto_27
    iget-object v3, v0, Lzw;->c:Lx20;

    .line 1784
    .line 1785
    if-nez v3, :cond_3e

    .line 1786
    .line 1787
    new-instance v3, Lx20;

    .line 1788
    .line 1789
    invoke-direct {v3}, Lx20;-><init>()V

    .line 1790
    .line 1791
    .line 1792
    iput-object v3, v0, Lzw;->c:Lx20;

    .line 1793
    .line 1794
    :cond_3e
    iget-object v8, v3, Lx20;->o:Leh;

    .line 1795
    .line 1796
    iget-object v0, v3, Lx20;->n:Lw20;

    .line 1797
    .line 1798
    invoke-static/range {v24 .. v25}, Lse0;->H(J)J

    .line 1799
    .line 1800
    .line 1801
    move-result-wide v9

    .line 1802
    iget-object v15, v1, Lr00;->n:Liz;

    .line 1803
    .line 1804
    invoke-interface {v15}, Liz;->getLayoutDirection()Lhy1;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v15

    .line 1808
    move-object/from16 v32, v3

    .line 1809
    .line 1810
    iget-object v3, v0, Lw20;->a:Las0;

    .line 1811
    .line 1812
    move-object/from16 v16, v7

    .line 1813
    .line 1814
    iget-object v7, v0, Lw20;->b:Lhy1;

    .line 1815
    .line 1816
    move-object/from16 v22, v13

    .line 1817
    .line 1818
    iget-object v13, v0, Lw20;->c:Lv20;

    .line 1819
    .line 1820
    move-object/from16 v23, v4

    .line 1821
    .line 1822
    move-object/from16 v17, v5

    .line 1823
    .line 1824
    iget-wide v4, v0, Lw20;->d:J

    .line 1825
    .line 1826
    iput-object v1, v0, Lw20;->a:Las0;

    .line 1827
    .line 1828
    iput-object v15, v0, Lw20;->b:Lhy1;

    .line 1829
    .line 1830
    iput-object v6, v0, Lw20;->c:Lv20;

    .line 1831
    .line 1832
    iput-wide v9, v0, Lw20;->d:J

    .line 1833
    .line 1834
    invoke-virtual {v6}, Ly8;->j()V

    .line 1835
    .line 1836
    .line 1837
    sget-wide v33, Lt70;->b:J

    .line 1838
    .line 1839
    const/16 v37, 0x3a

    .line 1840
    .line 1841
    move-wide/from16 v35, v9

    .line 1842
    .line 1843
    invoke-static/range {v32 .. v37}, Lkx0;->C(Lkx0;JJI)V

    .line 1844
    .line 1845
    .line 1846
    move-object/from16 v9, v32

    .line 1847
    .line 1848
    neg-float v10, v12

    .line 1849
    neg-float v11, v11

    .line 1850
    iget-object v12, v8, Leh;->o:Ljava/lang/Object;

    .line 1851
    .line 1852
    check-cast v12, Ldh1;

    .line 1853
    .line 1854
    invoke-virtual {v12, v10, v11}, Ldh1;->t(FF)V

    .line 1855
    .line 1856
    .line 1857
    :try_start_2
    iget-object v2, v2, Lkr2;->x:Lsb;

    .line 1858
    .line 1859
    new-instance v30, Lht3;

    .line 1860
    .line 1861
    const/16 v34, 0x0

    .line 1862
    .line 1863
    const/16 v35, 0x1e

    .line 1864
    .line 1865
    const/16 v32, 0x0

    .line 1866
    .line 1867
    const/16 v33, 0x0

    .line 1868
    .line 1869
    invoke-direct/range {v30 .. v35}, Lht3;-><init>(FFIII)V

    .line 1870
    .line 1871
    .line 1872
    const/16 v37, 0x34

    .line 1873
    .line 1874
    const/16 v35, 0x0

    .line 1875
    .line 1876
    move-object/from16 v33, v2

    .line 1877
    .line 1878
    move-object/from16 v32, v9

    .line 1879
    .line 1880
    move-object/from16 v34, v16

    .line 1881
    .line 1882
    move-object/from16 v36, v30

    .line 1883
    .line 1884
    invoke-static/range {v32 .. v37}, Lkx0;->S(Lkx0;Lsb;Lzf5;FLht3;I)V

    .line 1885
    .line 1886
    .line 1887
    invoke-interface/range {v32 .. v32}, Lkx0;->d()J

    .line 1888
    .line 1889
    .line 1890
    move-result-wide v15

    .line 1891
    move-object/from16 v33, v14

    .line 1892
    .line 1893
    shr-long v14, v15, v21

    .line 1894
    .line 1895
    long-to-int v2, v14

    .line 1896
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1897
    .line 1898
    .line 1899
    move-result v2

    .line 1900
    add-float v2, v2, p1

    .line 1901
    .line 1902
    invoke-interface/range {v32 .. v32}, Lkx0;->d()J

    .line 1903
    .line 1904
    .line 1905
    move-result-wide v14

    .line 1906
    shr-long v14, v14, v21

    .line 1907
    .line 1908
    long-to-int v9, v14

    .line 1909
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1910
    .line 1911
    .line 1912
    move-result v9

    .line 1913
    div-float/2addr v2, v9

    .line 1914
    invoke-interface/range {v32 .. v32}, Lkx0;->d()J

    .line 1915
    .line 1916
    .line 1917
    move-result-wide v14

    .line 1918
    and-long v14, v14, v19

    .line 1919
    .line 1920
    long-to-int v9, v14

    .line 1921
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1922
    .line 1923
    .line 1924
    move-result v9

    .line 1925
    add-float v9, v9, p1

    .line 1926
    .line 1927
    invoke-interface/range {v32 .. v32}, Lkx0;->d()J

    .line 1928
    .line 1929
    .line 1930
    move-result-wide v14

    .line 1931
    and-long v14, v14, v19

    .line 1932
    .line 1933
    long-to-int v12, v14

    .line 1934
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1935
    .line 1936
    .line 1937
    move-result v12

    .line 1938
    div-float/2addr v9, v12

    .line 1939
    invoke-interface/range {v32 .. v32}, Lkx0;->U()J

    .line 1940
    .line 1941
    .line 1942
    move-result-wide v14

    .line 1943
    move-wide/from16 v18, v4

    .line 1944
    .line 1945
    invoke-virtual {v8}, Leh;->z()J

    .line 1946
    .line 1947
    .line 1948
    move-result-wide v4

    .line 1949
    invoke-virtual {v8}, Leh;->u()Lv20;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v12

    .line 1953
    invoke-interface {v12}, Lv20;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1954
    .line 1955
    .line 1956
    :try_start_3
    iget-object v12, v8, Leh;->o:Ljava/lang/Object;

    .line 1957
    .line 1958
    check-cast v12, Ldh1;

    .line 1959
    .line 1960
    invoke-virtual {v12, v2, v9, v14, v15}, Ldh1;->s(FFJ)V

    .line 1961
    .line 1962
    .line 1963
    const/16 v36, 0x0

    .line 1964
    .line 1965
    const/16 v37, 0x1c

    .line 1966
    .line 1967
    const/16 v35, 0x0

    .line 1968
    .line 1969
    invoke-static/range {v32 .. v37}, Lkx0;->S(Lkx0;Lsb;Lzf5;FLht3;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1970
    .line 1971
    .line 1972
    :try_start_4
    invoke-virtual {v8}, Leh;->u()Lv20;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v2

    .line 1976
    invoke-interface {v2}, Lv20;->h()V

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v8, v4, v5}, Leh;->K(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1980
    .line 1981
    .line 1982
    iget-object v2, v8, Leh;->o:Ljava/lang/Object;

    .line 1983
    .line 1984
    check-cast v2, Ldh1;

    .line 1985
    .line 1986
    neg-float v4, v10

    .line 1987
    neg-float v5, v11

    .line 1988
    invoke-virtual {v2, v4, v5}, Ldh1;->t(FF)V

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v6}, Ly8;->h()V

    .line 1992
    .line 1993
    .line 1994
    iput-object v3, v0, Lw20;->a:Las0;

    .line 1995
    .line 1996
    iput-object v7, v0, Lw20;->b:Lhy1;

    .line 1997
    .line 1998
    iput-object v13, v0, Lw20;->c:Lv20;

    .line 1999
    .line 2000
    move-wide/from16 v2, v18

    .line 2001
    .line 2002
    iput-wide v2, v0, Lw20;->d:J

    .line 2003
    .line 2004
    move-object/from16 v5, v17

    .line 2005
    .line 2006
    iget-object v0, v5, Lgb;->a:Landroid/graphics/Bitmap;

    .line 2007
    .line 2008
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 2009
    .line 2010
    .line 2011
    move-object/from16 v0, v23

    .line 2012
    .line 2013
    iput-object v5, v0, Lw33;->n:Ljava/lang/Object;

    .line 2014
    .line 2015
    new-instance v21, Lcx;

    .line 2016
    .line 2017
    invoke-direct/range {v21 .. v26}, Lcx;-><init>(Ll33;Lw33;JLow;)V

    .line 2018
    .line 2019
    .line 2020
    move-object/from16 v0, v21

    .line 2021
    .line 2022
    invoke-virtual {v1, v0}, Lr00;->a(Lpe1;)Ldh1;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v10

    .line 2026
    goto/16 :goto_2b

    .line 2027
    .line 2028
    :catchall_1
    move-exception v0

    .line 2029
    goto :goto_28

    .line 2030
    :catchall_2
    move-exception v0

    .line 2031
    :try_start_5
    invoke-virtual {v8}, Leh;->u()Lv20;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v1

    .line 2035
    invoke-interface {v1}, Lv20;->h()V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual {v8, v4, v5}, Leh;->K(J)V

    .line 2039
    .line 2040
    .line 2041
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2042
    :goto_28
    iget-object v1, v8, Leh;->o:Ljava/lang/Object;

    .line 2043
    .line 2044
    check-cast v1, Ldh1;

    .line 2045
    .line 2046
    neg-float v2, v10

    .line 2047
    neg-float v3, v11

    .line 2048
    invoke-virtual {v1, v2, v3}, Ldh1;->t(FF)V

    .line 2049
    .line 2050
    .line 2051
    throw v0

    .line 2052
    :cond_3f
    instance-of v4, v2, Lmr2;

    .line 2053
    .line 2054
    if-eqz v4, :cond_44

    .line 2055
    .line 2056
    iget-object v4, v0, Ldx;->F:Lsp3;

    .line 2057
    .line 2058
    check-cast v2, Lmr2;

    .line 2059
    .line 2060
    iget-object v2, v2, Lmr2;->x:Lka3;

    .line 2061
    .line 2062
    invoke-static {v2}, Lk30;->z(Lka3;)Z

    .line 2063
    .line 2064
    .line 2065
    move-result v5

    .line 2066
    if-eqz v5, :cond_40

    .line 2067
    .line 2068
    iget-wide v5, v2, Lka3;->e:J

    .line 2069
    .line 2070
    new-instance v30, Lht3;

    .line 2071
    .line 2072
    const/16 v16, 0x0

    .line 2073
    .line 2074
    const/16 v17, 0x1e

    .line 2075
    .line 2076
    const/4 v14, 0x0

    .line 2077
    const/4 v15, 0x0

    .line 2078
    move-object/from16 v12, v30

    .line 2079
    .line 2080
    invoke-direct/range {v12 .. v17}, Lht3;-><init>(FFIII)V

    .line 2081
    .line 2082
    .line 2083
    new-instance v19, Lbx;

    .line 2084
    .line 2085
    move/from16 v20, v3

    .line 2086
    .line 2087
    move-object/from16 v21, v4

    .line 2088
    .line 2089
    move-wide/from16 v22, v5

    .line 2090
    .line 2091
    move/from16 v25, v13

    .line 2092
    .line 2093
    invoke-direct/range {v19 .. v30}, Lbx;-><init>(ZLsp3;JFFJJLht3;)V

    .line 2094
    .line 2095
    .line 2096
    move-object/from16 v0, v19

    .line 2097
    .line 2098
    invoke-virtual {v1, v0}, Lr00;->a(Lpe1;)Ldh1;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v10

    .line 2102
    goto/16 :goto_2b

    .line 2103
    .line 2104
    :cond_40
    move/from16 v20, v3

    .line 2105
    .line 2106
    move-object v3, v4

    .line 2107
    iget-object v4, v0, Ldx;->D:Lzw;

    .line 2108
    .line 2109
    if-nez v4, :cond_41

    .line 2110
    .line 2111
    new-instance v4, Lzw;

    .line 2112
    .line 2113
    invoke-direct {v4}, Lzw;-><init>()V

    .line 2114
    .line 2115
    .line 2116
    iput-object v4, v0, Ldx;->D:Lzw;

    .line 2117
    .line 2118
    :cond_41
    iget-object v0, v0, Ldx;->D:Lzw;

    .line 2119
    .line 2120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2121
    .line 2122
    .line 2123
    iget-object v4, v0, Lzw;->d:Lsb;

    .line 2124
    .line 2125
    if-nez v4, :cond_42

    .line 2126
    .line 2127
    invoke-static {}, Lub;->a()Lsb;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v4

    .line 2131
    iput-object v4, v0, Lzw;->d:Lsb;

    .line 2132
    .line 2133
    :cond_42
    invoke-virtual {v4}, Lsb;->e()V

    .line 2134
    .line 2135
    .line 2136
    invoke-static {v4, v2}, Lsb;->b(Lsb;Lka3;)V

    .line 2137
    .line 2138
    .line 2139
    if-nez v20, :cond_43

    .line 2140
    .line 2141
    invoke-static {}, Lub;->a()Lsb;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v0

    .line 2145
    invoke-virtual {v2}, Lka3;->b()F

    .line 2146
    .line 2147
    .line 2148
    move-result v5

    .line 2149
    sub-float v22, v5, v13

    .line 2150
    .line 2151
    invoke-virtual {v2}, Lka3;->a()F

    .line 2152
    .line 2153
    .line 2154
    move-result v5

    .line 2155
    sub-float v23, v5, v13

    .line 2156
    .line 2157
    iget-wide v5, v2, Lka3;->e:J

    .line 2158
    .line 2159
    invoke-static {v13, v5, v6}, Lc75;->Q(FJ)J

    .line 2160
    .line 2161
    .line 2162
    move-result-wide v24

    .line 2163
    iget-wide v5, v2, Lka3;->f:J

    .line 2164
    .line 2165
    invoke-static {v13, v5, v6}, Lc75;->Q(FJ)J

    .line 2166
    .line 2167
    .line 2168
    move-result-wide v26

    .line 2169
    iget-wide v5, v2, Lka3;->h:J

    .line 2170
    .line 2171
    invoke-static {v13, v5, v6}, Lc75;->Q(FJ)J

    .line 2172
    .line 2173
    .line 2174
    move-result-wide v30

    .line 2175
    iget-wide v5, v2, Lka3;->g:J

    .line 2176
    .line 2177
    invoke-static {v13, v5, v6}, Lc75;->Q(FJ)J

    .line 2178
    .line 2179
    .line 2180
    move-result-wide v28

    .line 2181
    new-instance v19, Lka3;

    .line 2182
    .line 2183
    move/from16 v21, v13

    .line 2184
    .line 2185
    move/from16 v20, v13

    .line 2186
    .line 2187
    invoke-direct/range {v19 .. v31}, Lka3;-><init>(FFFFJJJJ)V

    .line 2188
    .line 2189
    .line 2190
    move-object/from16 v2, v19

    .line 2191
    .line 2192
    invoke-static {v0, v2}, Lsb;->b(Lsb;Lka3;)V

    .line 2193
    .line 2194
    .line 2195
    const/4 v2, 0x0

    .line 2196
    invoke-virtual {v4, v4, v0, v2}, Lsb;->d(Lsb;Lsb;I)Z

    .line 2197
    .line 2198
    .line 2199
    :cond_43
    new-instance v0, Lm;

    .line 2200
    .line 2201
    const/4 v2, 0x4

    .line 2202
    invoke-direct {v0, v2, v4, v3}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2203
    .line 2204
    .line 2205
    invoke-virtual {v1, v0}, Lr00;->a(Lpe1;)Ldh1;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v10

    .line 2209
    goto :goto_2b

    .line 2210
    :cond_44
    move/from16 v20, v3

    .line 2211
    .line 2212
    instance-of v2, v2, Llr2;

    .line 2213
    .line 2214
    if-eqz v2, :cond_48

    .line 2215
    .line 2216
    iget-object v4, v0, Ldx;->F:Lsp3;

    .line 2217
    .line 2218
    if-eqz v20, :cond_45

    .line 2219
    .line 2220
    const-wide/16 v5, 0x0

    .line 2221
    .line 2222
    goto :goto_29

    .line 2223
    :cond_45
    move-wide/from16 v5, v26

    .line 2224
    .line 2225
    :goto_29
    if-eqz v20, :cond_46

    .line 2226
    .line 2227
    iget-object v0, v1, Lr00;->n:Liz;

    .line 2228
    .line 2229
    invoke-interface {v0}, Liz;->d()J

    .line 2230
    .line 2231
    .line 2232
    move-result-wide v28

    .line 2233
    :cond_46
    move-wide/from16 v7, v28

    .line 2234
    .line 2235
    if-eqz v20, :cond_47

    .line 2236
    .line 2237
    sget-object v0, Lt51;->f:Lt51;

    .line 2238
    .line 2239
    move-object v9, v0

    .line 2240
    goto :goto_2a

    .line 2241
    :cond_47
    new-instance v12, Lht3;

    .line 2242
    .line 2243
    const/16 v16, 0x0

    .line 2244
    .line 2245
    const/16 v17, 0x1e

    .line 2246
    .line 2247
    const/4 v14, 0x0

    .line 2248
    const/4 v15, 0x0

    .line 2249
    invoke-direct/range {v12 .. v17}, Lht3;-><init>(FFIII)V

    .line 2250
    .line 2251
    .line 2252
    move-object v9, v12

    .line 2253
    :goto_2a
    new-instance v3, Lax;

    .line 2254
    .line 2255
    invoke-direct/range {v3 .. v9}, Lax;-><init>(Lsp3;JJLtv4;)V

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual {v1, v3}, Lr00;->a(Lpe1;)Ldh1;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v10

    .line 2262
    goto :goto_2b

    .line 2263
    :cond_48
    invoke-static {}, Lp61;->x()V

    .line 2264
    .line 2265
    .line 2266
    const/4 v10, 0x0

    .line 2267
    goto :goto_2b

    .line 2268
    :cond_49
    new-instance v0, Lt3;

    .line 2269
    .line 2270
    const/16 v2, 0xa

    .line 2271
    .line 2272
    invoke-direct {v0, v2}, Lt3;-><init>(I)V

    .line 2273
    .line 2274
    .line 2275
    invoke-virtual {v1, v0}, Lr00;->a(Lpe1;)Ldh1;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v10

    .line 2279
    :goto_2b
    return-object v10

    .line 2280
    :pswitch_19
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 2281
    .line 2282
    check-cast v0, Lu/sage/a;

    .line 2283
    .line 2284
    check-cast v1, Lp84;

    .line 2285
    .line 2286
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2287
    .line 2288
    .line 2289
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    invoke-static {v1, v0, v2}, Ltv4;->u(Lp84;Landroid/content/Context;Ly84;)Ljava/lang/String;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v2

    .line 2297
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v0

    .line 2301
    invoke-virtual {v0}, Ly84;->a()Lts1;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v0

    .line 2305
    invoke-virtual {v1}, Lp84;->e()D

    .line 2306
    .line 2307
    .line 2308
    move-result-wide v3

    .line 2309
    invoke-virtual {v0, v3, v4}, Lts1;->a(D)Ljava/lang/String;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v0

    .line 2313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2314
    .line 2315
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2316
    .line 2317
    .line 2318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    .line 2320
    .line 2321
    const-string v2, ": "

    .line 2322
    .line 2323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    .line 2328
    .line 2329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v0

    .line 2333
    return-object v0

    .line 2334
    :pswitch_1a
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 2335
    .line 2336
    check-cast v0, Lne1;

    .line 2337
    .line 2338
    check-cast v1, Lo83;

    .line 2339
    .line 2340
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v0

    .line 2344
    check-cast v0, Ljava/lang/Number;

    .line 2345
    .line 2346
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 2347
    .line 2348
    .line 2349
    move-result v0

    .line 2350
    invoke-virtual {v1, v0}, Lo83;->c(F)V

    .line 2351
    .line 2352
    .line 2353
    sget-object v0, Lt64;->a:Lt64;

    .line 2354
    .line 2355
    return-object v0

    .line 2356
    :pswitch_1b
    const-string v2, "(this Map)"

    .line 2357
    .line 2358
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 2359
    .line 2360
    check-cast v0, Llu2;

    .line 2361
    .line 2362
    check-cast v1, Ljava/util/Map$Entry;

    .line 2363
    .line 2364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2365
    .line 2366
    .line 2367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2368
    .line 2369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2370
    .line 2371
    .line 2372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2373
    .line 2374
    .line 2375
    move-result-object v4

    .line 2376
    if-ne v4, v0, :cond_4a

    .line 2377
    .line 2378
    move-object v4, v2

    .line 2379
    goto :goto_2c

    .line 2380
    :cond_4a
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v4

    .line 2384
    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    .line 2386
    .line 2387
    const/16 v4, 0x3d

    .line 2388
    .line 2389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2390
    .line 2391
    .line 2392
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v1

    .line 2396
    if-ne v1, v0, :cond_4b

    .line 2397
    .line 2398
    goto :goto_2d

    .line 2399
    :cond_4b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v2

    .line 2403
    :goto_2d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    .line 2405
    .line 2406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v0

    .line 2410
    return-object v0

    .line 2411
    :pswitch_1c
    iget-object v0, v0, Lv;->o:Ljava/lang/Object;

    .line 2412
    .line 2413
    check-cast v0, Lw;

    .line 2414
    .line 2415
    if-ne v1, v0, :cond_4c

    .line 2416
    .line 2417
    const-string v0, "(this Collection)"

    .line 2418
    .line 2419
    goto :goto_2e

    .line 2420
    :cond_4c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v0

    .line 2424
    :goto_2e
    return-object v0

    .line 2425
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
