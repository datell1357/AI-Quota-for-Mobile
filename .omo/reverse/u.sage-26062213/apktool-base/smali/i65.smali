.class public final Li65;
.super Let4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lm75;


# direct methods
.method public constructor <init>(Lm75;Ls55;I)V
    .locals 0

    .line 1
    iput p3, p0, Li65;->e:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Li65;->f:Lm75;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iput-object p1, p0, Li65;->f:Lm75;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Li65;->f:Lm75;

    .line 25
    .line 26
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Li65;->f:Lm75;

    .line 34
    .line 35
    invoke-direct {p0, p2}, Let4;-><init>(Ls55;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget v0, p0, Li65;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Li65;->f:Lm75;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lr45;

    .line 13
    .line 14
    iget-object v3, v2, Lr45;->e:Lf35;

    .line 15
    .line 16
    iget-object v4, v2, Lr45;->f:La25;

    .line 17
    .line 18
    iget-object v0, v2, Lr45;->g:Lj45;

    .line 19
    .line 20
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lj45;->v()V

    .line 24
    .line 25
    .line 26
    iget-object v6, v2, Lr45;->o:Lr75;

    .line 27
    .line 28
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v6, Lib0;->a:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v5, v0

    .line 34
    check-cast v5, Lr45;

    .line 35
    .line 36
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lr45;->q()Lg15;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v0, v2, Lr45;->d:Lds4;

    .line 48
    .line 49
    const-string v8, "google_analytics_adid_collection_enabled"

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v4, La25;->n:Lx15;

    .line 68
    .line 69
    const-string v2, "ADID collection is disabled from Manifest. Skipping"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_11

    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v3, Lib0;->a:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v8, v0

    .line 82
    check-cast v8, Lr45;

    .line 83
    .line 84
    invoke-virtual {v3}, Lib0;->v()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lf35;->C()Ly55;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v9, Lx55;->o:Lx55;

    .line 92
    .line 93
    invoke-virtual {v0, v9}, Ly55;->i(Lx55;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string v9, ""

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object v0, v8, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 102
    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    iget-object v0, v3, Lf35;->h:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    iget-wide v12, v3, Lf35;->j:J

    .line 112
    .line 113
    cmp-long v12, v10, v12

    .line 114
    .line 115
    if-ltz v12, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance v8, Landroid/util/Pair;

    .line 119
    .line 120
    iget-boolean v9, v3, Lf35;->i:Z

    .line 121
    .line 122
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-direct {v8, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_3
    :goto_1
    iget-object v0, v8, Lr45;->d:Lds4;

    .line 131
    .line 132
    sget-object v12, Le05;->b:Ld05;

    .line 133
    .line 134
    invoke-virtual {v0, v7, v12}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    add-long/2addr v12, v10

    .line 139
    iput-wide v12, v3, Lf35;->j:J

    .line 140
    .line 141
    :try_start_0
    iget-object v0, v8, Lr45;->a:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0}, Lg7;->a(Landroid/content/Context;)Lf7;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v9, v3, Lf35;->h:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v10, v0, Lf7;->c:Ljava/lang/String;

    .line 150
    .line 151
    if-eqz v10, :cond_4

    .line 152
    .line 153
    iput-object v10, v3, Lf35;->h:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    :goto_2
    iget-boolean v0, v0, Lf7;->b:Z

    .line 159
    .line 160
    iput-boolean v0, v3, Lf35;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :goto_3
    iget-object v8, v8, Lr45;->f:La25;

    .line 164
    .line 165
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 166
    .line 167
    .line 168
    iget-object v8, v8, La25;->m:Lx15;

    .line 169
    .line 170
    const-string v10, "Unable to get advertising id"

    .line 171
    .line 172
    invoke-virtual {v8, v0, v10}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput-object v9, v3, Lf35;->h:Ljava/lang/String;

    .line 176
    .line 177
    :goto_4
    new-instance v8, Landroid/util/Pair;

    .line 178
    .line 179
    iget-object v0, v3, Lf35;->h:Ljava/lang/String;

    .line 180
    .line 181
    iget-boolean v9, v3, Lf35;->i:Z

    .line 182
    .line 183
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-direct {v8, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_5
    new-instance v8, Landroid/util/Pair;

    .line 192
    .line 193
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-direct {v8, v9, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Ljava/lang/Boolean;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_16

    .line 207
    .line 208
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, Ljava/lang/CharSequence;

    .line 211
    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    goto/16 :goto_10

    .line 219
    .line 220
    :cond_6
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Lq55;->x()V

    .line 224
    .line 225
    .line 226
    iget-object v0, v5, Lr45;->a:Landroid/content/Context;

    .line 227
    .line 228
    const-string v9, "connectivity"

    .line 229
    .line 230
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 235
    .line 236
    const/4 v9, 0x0

    .line 237
    if-eqz v0, :cond_7

    .line 238
    .line 239
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 240
    .line 241
    .line 242
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    goto :goto_6

    .line 244
    :catch_1
    :cond_7
    move-object v0, v9

    .line 245
    :goto_6
    if-eqz v0, :cond_15

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_15

    .line 252
    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Lr45;->o()Lo95;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Laz4;->v()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lj05;->w()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lo95;->C()Z

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    if-nez v11, :cond_8

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_8
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Lr45;

    .line 278
    .line 279
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 280
    .line 281
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lac5;->f0()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    const v11, 0x392d8

    .line 289
    .line 290
    .line 291
    if-lt v0, v11, :cond_11

    .line 292
    .line 293
    :goto_7
    iget-object v0, v2, Lr45;->m:Lm75;

    .line 294
    .line 295
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 296
    .line 297
    .line 298
    iget-object v11, v0, Lib0;->a:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v11, Lr45;

    .line 301
    .line 302
    invoke-virtual {v0}, Laz4;->v()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11}, Lr45;->o()Lo95;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v11, v0, Lib0;->a:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v11, Lr45;

    .line 312
    .line 313
    invoke-virtual {v0}, Laz4;->v()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Lj05;->w()V

    .line 317
    .line 318
    .line 319
    iget-object v12, v0, Lo95;->d:Ln05;

    .line 320
    .line 321
    if-nez v12, :cond_9

    .line 322
    .line 323
    invoke-virtual {v0}, Lo95;->B()V

    .line 324
    .line 325
    .line 326
    iget-object v0, v11, Lr45;->f:La25;

    .line 327
    .line 328
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v0, La25;->m:Lx15;

    .line 332
    .line 333
    const-string v11, "Failed to get consents; not connected to service yet."

    .line 334
    .line 335
    invoke-virtual {v0, v11}, Lx15;->a(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_8
    move-object v12, v9

    .line 339
    goto :goto_9

    .line 340
    :cond_9
    invoke-virtual {v0, v1}, Lo95;->L(Z)Lvc5;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :try_start_2
    invoke-interface {v12, v13}, Ln05;->w(Lvc5;)Lms4;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    invoke-virtual {v0}, Lo95;->I()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    .line 353
    .line 354
    goto :goto_9

    .line 355
    :catch_2
    move-exception v0

    .line 356
    iget-object v11, v11, Lr45;->f:La25;

    .line 357
    .line 358
    invoke-static {v11}, Lr45;->l(Lq55;)V

    .line 359
    .line 360
    .line 361
    iget-object v11, v11, La25;->f:Lx15;

    .line 362
    .line 363
    const-string v12, "Failed to get consents; remote exception"

    .line 364
    .line 365
    invoke-virtual {v11, v0, v12}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :goto_9
    if-eqz v12, :cond_a

    .line 370
    .line 371
    iget-object v0, v12, Lms4;->n:Landroid/os/Bundle;

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_a
    move-object v0, v9

    .line 375
    :goto_a
    const/4 v11, 0x1

    .line 376
    if-nez v0, :cond_d

    .line 377
    .line 378
    iget v0, v2, Lr45;->B:I

    .line 379
    .line 380
    add-int/lit8 v3, v0, 0x1

    .line 381
    .line 382
    iput v3, v2, Lr45;->B:I

    .line 383
    .line 384
    const/16 v3, 0xa

    .line 385
    .line 386
    if-ge v0, v3, :cond_b

    .line 387
    .line 388
    move v1, v11

    .line 389
    :cond_b
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 390
    .line 391
    .line 392
    iget-object v4, v4, La25;->m:Lx15;

    .line 393
    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const/16 v6, 0x45

    .line 397
    .line 398
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .line 400
    .line 401
    const-string v6, "Failed to retrieve DMA consent from the service, "

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    if-ge v0, v3, :cond_c

    .line 407
    .line 408
    const-string v0, "Retrying."

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_c
    const-string v0, "Skipping."

    .line 412
    .line 413
    :goto_b
    const-string v3, " retryCount"

    .line 414
    .line 415
    invoke-static {v5, v0, v3}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget v2, v2, Lr45;->B:I

    .line 420
    .line 421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v4, v2, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_11

    .line 429
    .line 430
    :cond_d
    const/16 v12, 0x64

    .line 431
    .line 432
    invoke-static {v12, v0}, Ly55;->b(ILandroid/os/Bundle;)Ly55;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    const-string v14, "&gcs="

    .line 437
    .line 438
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13}, Ly55;->f()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-static {v12, v0}, Lrt4;->c(ILandroid/os/Bundle;)Lrt4;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    iget-object v13, v12, Lrt4;->d:Ljava/lang/String;

    .line 453
    .line 454
    const-string v14, "&dma="

    .line 455
    .line 456
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v12, v12, Lrt4;->c:Ljava/lang/Boolean;

    .line 460
    .line 461
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 462
    .line 463
    invoke-static {v12, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v12

    .line 467
    xor-int/2addr v12, v11

    .line 468
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v12

    .line 475
    if-nez v12, :cond_e

    .line 476
    .line 477
    const-string v12, "&dma_cps="

    .line 478
    .line 479
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    :cond_e
    const-string v12, "ad_personalization"

    .line 486
    .line 487
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v0}, Ly55;->d(Ljava/lang/String;)Lu55;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    const/4 v12, 0x2

    .line 500
    if-eq v0, v12, :cond_10

    .line 501
    .line 502
    const/4 v12, 0x3

    .line 503
    if-eq v0, v12, :cond_f

    .line 504
    .line 505
    move-object v14, v9

    .line 506
    goto :goto_c

    .line 507
    :cond_f
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 508
    .line 509
    :cond_10
    :goto_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 510
    .line 511
    invoke-static {v14, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    xor-int/2addr v0, v11

    .line 516
    const-string v11, "&npa="

    .line 517
    .line 518
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v4, La25;->n:Lx15;

    .line 528
    .line 529
    const-string v4, "Consent query parameters to Bow"

    .line 530
    .line 531
    invoke-virtual {v0, v10, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :cond_11
    iget-object v0, v2, Lr45;->i:Lac5;

    .line 535
    .line 536
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Lr45;->q()Lg15;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    iget-object v4, v4, Lib0;->a:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast v4, Lr45;

    .line 546
    .line 547
    iget-object v4, v4, Lr45;->d:Lds4;

    .line 548
    .line 549
    invoke-virtual {v4}, Lds4;->B()V

    .line 550
    .line 551
    .line 552
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v4, Ljava/lang/String;

    .line 555
    .line 556
    iget-object v3, v3, Lf35;->u:Ly25;

    .line 557
    .line 558
    invoke-virtual {v3}, Ly25;->a()J

    .line 559
    .line 560
    .line 561
    move-result-wide v11

    .line 562
    const-wide/16 v13, -0x1

    .line 563
    .line 564
    add-long/2addr v11, v13

    .line 565
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    iget-object v8, v0, Lib0;->a:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v8, Lr45;

    .line 572
    .line 573
    const-string v10, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version="

    .line 574
    .line 575
    const-string v13, "v161000."

    .line 576
    .line 577
    :try_start_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0}, Lac5;->f0()I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    new-instance v14, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    new-instance v13, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v0, "&rdid="

    .line 608
    .line 609
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v0, "&bundleid="

    .line 616
    .line 617
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v0, "&retry="

    .line 624
    .line 625
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    iget-object v4, v8, Lr45;->d:Lds4;

    .line 636
    .line 637
    const-string v10, "debug.deferred.deeplink"

    .line 638
    .line 639
    invoke-virtual {v4, v10}, Lds4;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    if-eqz v4, :cond_12

    .line 648
    .line 649
    const-string v4, "&ddl_test=1"

    .line 650
    .line 651
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    goto :goto_d

    .line 656
    :catch_3
    move-exception v0

    .line 657
    goto :goto_e

    .line 658
    :catch_4
    move-exception v0

    .line 659
    goto :goto_e

    .line 660
    :cond_12
    :goto_d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-nez v4, :cond_14

    .line 665
    .line 666
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    const/16 v10, 0x26

    .line 671
    .line 672
    if-eq v4, v10, :cond_13

    .line 673
    .line 674
    const-string v4, "&"

    .line 675
    .line 676
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    :cond_13
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    :cond_14
    new-instance v3, Ljava/net/URL;

    .line 685
    .line 686
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 687
    .line 688
    .line 689
    move-object v8, v3

    .line 690
    goto :goto_f

    .line 691
    :goto_e
    iget-object v3, v8, Lr45;->f:La25;

    .line 692
    .line 693
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 694
    .line 695
    .line 696
    iget-object v3, v3, La25;->f:Lx15;

    .line 697
    .line 698
    const-string v4, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-virtual {v3, v0, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    move-object v8, v9

    .line 708
    :goto_f
    if-eqz v8, :cond_17

    .line 709
    .line 710
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 711
    .line 712
    .line 713
    new-instance v11, Lgt4;

    .line 714
    .line 715
    const/4 v0, 0x4

    .line 716
    invoke-direct {v11, v0, v2}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v6}, Lq55;->x()V

    .line 720
    .line 721
    .line 722
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    iget-object v0, v5, Lr45;->g:Lj45;

    .line 729
    .line 730
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 731
    .line 732
    .line 733
    new-instance v5, Lg25;

    .line 734
    .line 735
    const/4 v9, 0x0

    .line 736
    const/4 v10, 0x0

    .line 737
    invoke-direct/range {v5 .. v11}, Lg25;-><init>(Lr75;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lp75;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v0, v5}, Lj45;->H(Ljava/lang/Runnable;)V

    .line 741
    .line 742
    .line 743
    goto :goto_11

    .line 744
    :cond_15
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 745
    .line 746
    .line 747
    iget-object v0, v4, La25;->i:Lx15;

    .line 748
    .line 749
    const-string v2, "Network is not available for Deferred Deep Link request. Skipping"

    .line 750
    .line 751
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    goto :goto_11

    .line 755
    :cond_16
    :goto_10
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 756
    .line 757
    .line 758
    iget-object v0, v4, La25;->n:Lx15;

    .line 759
    .line 760
    const-string v2, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 761
    .line 762
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    :cond_17
    :goto_11
    if-eqz v1, :cond_18

    .line 766
    .line 767
    iget-object p0, p0, Lm75;->s:Li65;

    .line 768
    .line 769
    const-wide/16 v0, 0x7d0

    .line 770
    .line 771
    invoke-virtual {p0, v0, v1}, Let4;->b(J)V

    .line 772
    .line 773
    .line 774
    :cond_18
    return-void

    .line 775
    :pswitch_0
    invoke-virtual {p0}, Lm75;->B()V

    .line 776
    .line 777
    .line 778
    return-void

    .line 779
    :pswitch_1
    invoke-virtual {p0}, Lm75;->U()V

    .line 780
    .line 781
    .line 782
    return-void

    .line 783
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    .line 784
    .line 785
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast p0, Lr45;

    .line 788
    .line 789
    iget-object p0, p0, Lr45;->m:Lm75;

    .line 790
    .line 791
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 792
    .line 793
    .line 794
    new-instance v2, Lh65;

    .line 795
    .line 796
    invoke-direct {v2, p0, v1}, Lh65;-><init>(Lm75;I)V

    .line 797
    .line 798
    .line 799
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    nop

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
