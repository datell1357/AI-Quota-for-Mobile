.class public final Lv65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroid/os/Bundle;

.field public final synthetic p:Lm75;


# direct methods
.method public synthetic constructor <init>(Lm75;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv65;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lv65;->o:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p1, p0, Lv65;->p:Lm75;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv65;->n:I

    .line 4
    .line 5
    const-string v2, "time_to_live"

    .line 6
    .line 7
    const-string v3, "trigger_timeout"

    .line 8
    .line 9
    const-string v4, "trigger_event_name"

    .line 10
    .line 11
    const-string v5, "expired_event_params"

    .line 12
    .line 13
    const-string v6, "expired_event_name"

    .line 14
    .line 15
    const-string v7, "name"

    .line 16
    .line 17
    const-string v8, "app_id"

    .line 18
    .line 19
    const-string v9, "creation_timestamp"

    .line 20
    .line 21
    iget-object v10, v0, Lv65;->o:Landroid/os/Bundle;

    .line 22
    .line 23
    iget-object v0, v0, Lv65;->p:Lm75;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    iget-object v11, v0, Lm75;->v:Lra3;

    .line 29
    .line 30
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lr45;

    .line 33
    .line 34
    invoke-virtual {v10}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_a

    .line 39
    .line 40
    new-instance v1, Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v2, v0, Lr45;->e:Lf35;

    .line 43
    .line 44
    iget-object v3, v0, Lr45;->i:Lac5;

    .line 45
    .line 46
    iget-object v4, v0, Lr45;->d:Lds4;

    .line 47
    .line 48
    iget-object v5, v0, Lr45;->f:La25;

    .line 49
    .line 50
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v2, Lf35;->y:Lqd1;

    .line 54
    .line 55
    invoke-virtual {v2}, Lqd1;->J()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_5

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    instance-of v8, v7, Ljava/lang/String;

    .line 89
    .line 90
    if-nez v8, :cond_2

    .line 91
    .line 92
    instance-of v8, v7, Ljava/lang/Long;

    .line 93
    .line 94
    if-nez v8, :cond_2

    .line 95
    .line 96
    instance-of v8, v7, Ljava/lang/Double;

    .line 97
    .line 98
    if-nez v8, :cond_2

    .line 99
    .line 100
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v7}, Lac5;->G0(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_1

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    const/16 v13, 0x1b

    .line 114
    .line 115
    const/4 v14, 0x0

    .line 116
    invoke-static/range {v11 .. v16}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    :cond_1
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 120
    .line 121
    .line 122
    iget-object v8, v5, La25;->k:Lx15;

    .line 123
    .line 124
    const-string v9, "Invalid default event parameter type. Name, value"

    .line 125
    .line 126
    invoke-virtual {v8, v6, v7, v9}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {v6}, Lac5;->Y(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_3

    .line 135
    .line 136
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 137
    .line 138
    .line 139
    iget-object v7, v5, La25;->k:Lx15;

    .line 140
    .line 141
    const-string v8, "Invalid default event parameter name. Name"

    .line 142
    .line 143
    invoke-virtual {v7, v6, v8}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    if-nez v7, :cond_4

    .line 148
    .line 149
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    const/16 v8, 0x1f4

    .line 160
    .line 161
    const-string v9, "param"

    .line 162
    .line 163
    invoke-virtual {v3, v9, v6, v8, v7}, Lac5;->z(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_0

    .line 168
    .line 169
    invoke-virtual {v3, v1, v6, v7}, Lac5;->M(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, v4, Lib0;->a:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v2, Lr45;

    .line 179
    .line 180
    iget-object v2, v2, Lr45;->i:Lac5;

    .line 181
    .line 182
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 183
    .line 184
    .line 185
    const v4, 0xc02a560

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v4}, Lac5;->e0(I)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    const/16 v2, 0x64

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    const/16 v2, 0x19

    .line 198
    .line 199
    :goto_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-gt v4, v2, :cond_7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    new-instance v4, Ljava/util/TreeSet;

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-direct {v4, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    const/4 v6, 0x0

    .line 220
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_9

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    check-cast v7, Ljava/lang/String;

    .line 231
    .line 232
    add-int/lit8 v6, v6, 0x1

    .line 233
    .line 234
    if-le v6, v2, :cond_8

    .line 235
    .line 236
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 241
    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    const/4 v12, 0x0

    .line 247
    const/16 v13, 0x1a

    .line 248
    .line 249
    const/4 v14, 0x0

    .line 250
    invoke-static/range {v11 .. v16}, Lac5;->N(Lyb5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v5, La25;->k:Lx15;

    .line 257
    .line 258
    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_3
    move-object v10, v1

    .line 264
    :cond_a
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 265
    .line 266
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, v1, Lf35;->y:Lqd1;

    .line 270
    .line 271
    invoke-virtual {v1, v10}, Lqd1;->N(Landroid/os/Bundle;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v10}, Lo95;->A(Landroid/os/Bundle;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_0
    invoke-virtual {v0}, Laz4;->v()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lj05;->w()V

    .line 286
    .line 287
    .line 288
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Lr45;

    .line 302
    .line 303
    invoke-virtual {v0}, Lr45;->a()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_b

    .line 308
    .line 309
    iget-object v0, v0, Lr45;->f:La25;

    .line 310
    .line 311
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v0, La25;->n:Lx15;

    .line 315
    .line 316
    const-string v1, "Conditional property not cleared since app measurement is disabled"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_b
    new-instance v11, Lvb5;

    .line 323
    .line 324
    const-wide/16 v12, 0x0

    .line 325
    .line 326
    const/4 v14, 0x0

    .line 327
    const-string v16, ""

    .line 328
    .line 329
    invoke-direct/range {v11 .. v16}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :try_start_0
    iget-object v12, v0, Lr45;->i:Lac5;

    .line 333
    .line 334
    invoke-static {v12}, Lr45;->j(Lib0;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    const-string v15, ""

    .line 349
    .line 350
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 351
    .line 352
    .line 353
    move-result-wide v16

    .line 354
    const-wide/16 v18, 0x0

    .line 355
    .line 356
    const/16 v20, 0x1

    .line 357
    .line 358
    invoke-virtual/range {v12 .. v20}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 359
    .line 360
    .line 361
    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    new-instance v1, Lfq4;

    .line 363
    .line 364
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 369
    .line 370
    .line 371
    move-result-wide v6

    .line 372
    const-string v8, "active"

    .line 373
    .line 374
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    move-object v4, v5

    .line 383
    move-object v5, v11

    .line 384
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v11

    .line 388
    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 389
    .line 390
    .line 391
    move-result-wide v14

    .line 392
    const/4 v10, 0x0

    .line 393
    const/4 v13, 0x0

    .line 394
    move-object v3, v4

    .line 395
    const-string v4, ""

    .line 396
    .line 397
    move-object v2, v1

    .line 398
    invoke-direct/range {v2 .. v16}, Lfq4;-><init>(Ljava/lang/String;Ljava/lang/String;Lvb5;JZLjava/lang/String;Lbu4;JLbu4;JLbu4;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0, v2}, Lo95;->O(Lfq4;)V

    .line 406
    .line 407
    .line 408
    :catch_0
    :goto_4
    return-void

    .line 409
    :pswitch_1
    invoke-virtual {v0}, Laz4;->v()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Lj05;->w()V

    .line 413
    .line 414
    .line 415
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v15

    .line 422
    const-string v1, "origin"

    .line 423
    .line 424
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v19

    .line 428
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    const-string v1, "value"

    .line 435
    .line 436
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v0, Lr45;

    .line 446
    .line 447
    invoke-virtual {v0}, Lr45;->a()Z

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    if-nez v7, :cond_c

    .line 452
    .line 453
    iget-object v0, v0, Lr45;->f:La25;

    .line 454
    .line 455
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 456
    .line 457
    .line 458
    iget-object v0, v0, La25;->n:Lx15;

    .line 459
    .line 460
    const-string v1, "Conditional property not set since app measurement is disabled"

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_5

    .line 466
    .line 467
    :cond_c
    new-instance v11, Lvb5;

    .line 468
    .line 469
    const-string v7, "triggered_timestamp"

    .line 470
    .line 471
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 472
    .line 473
    .line 474
    move-result-wide v12

    .line 475
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    move-object/from16 v16, v19

    .line 480
    .line 481
    invoke-direct/range {v11 .. v16}, Lvb5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :try_start_1
    iget-object v1, v0, Lr45;->i:Lac5;

    .line 485
    .line 486
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    const-string v7, "triggered_event_name"

    .line 493
    .line 494
    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v17

    .line 498
    const-string v7, "triggered_event_params"

    .line 499
    .line 500
    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 501
    .line 502
    .line 503
    move-result-object v18

    .line 504
    const-wide/16 v22, 0x0

    .line 505
    .line 506
    const/16 v24, 0x1

    .line 507
    .line 508
    const-wide/16 v20, 0x0

    .line 509
    .line 510
    move-object/from16 v16, v1

    .line 511
    .line 512
    invoke-virtual/range {v16 .. v24}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 513
    .line 514
    .line 515
    move-result-object v27

    .line 516
    invoke-static/range {v16 .. v16}, Lr45;->j(Lib0;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    const-string v1, "timed_out_event_name"

    .line 523
    .line 524
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v17

    .line 528
    const-string v1, "timed_out_event_params"

    .line 529
    .line 530
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 531
    .line 532
    .line 533
    move-result-object v18

    .line 534
    const-wide/16 v22, 0x0

    .line 535
    .line 536
    const/16 v24, 0x1

    .line 537
    .line 538
    const-wide/16 v20, 0x0

    .line 539
    .line 540
    invoke-virtual/range {v16 .. v24}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v10, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v17

    .line 551
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 552
    .line 553
    .line 554
    move-result-object v18

    .line 555
    const-wide/16 v22, 0x0

    .line 556
    .line 557
    const/16 v24, 0x1

    .line 558
    .line 559
    const-wide/16 v20, 0x0

    .line 560
    .line 561
    invoke-virtual/range {v16 .. v24}, Lac5;->b0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JJZ)Lbu4;

    .line 562
    .line 563
    .line 564
    move-result-object v30
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    new-instance v16, Lfq4;

    .line 566
    .line 567
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v17

    .line 571
    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 572
    .line 573
    .line 574
    move-result-wide v20

    .line 575
    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v23

    .line 579
    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 580
    .line 581
    .line 582
    move-result-wide v25

    .line 583
    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 584
    .line 585
    .line 586
    move-result-wide v28

    .line 587
    const/16 v22, 0x0

    .line 588
    .line 589
    move-object/from16 v24, v1

    .line 590
    .line 591
    move-object/from16 v18, v19

    .line 592
    .line 593
    move-object/from16 v19, v11

    .line 594
    .line 595
    invoke-direct/range {v16 .. v30}, Lfq4;-><init>(Ljava/lang/String;Ljava/lang/String;Lvb5;JZLjava/lang/String;Lbu4;JLbu4;JLbu4;)V

    .line 596
    .line 597
    .line 598
    move-object/from16 v1, v16

    .line 599
    .line 600
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {v0, v1}, Lo95;->O(Lfq4;)V

    .line 605
    .line 606
    .line 607
    :catch_1
    :goto_5
    return-void

    .line 608
    nop

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
