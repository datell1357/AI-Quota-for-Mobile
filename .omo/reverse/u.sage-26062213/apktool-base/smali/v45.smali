.class public final Lv45;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lvc5;

.field public final synthetic p:Lo55;


# direct methods
.method public synthetic constructor <init>(Lo55;Lvc5;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv45;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lv45;->o:Lvc5;

    .line 4
    .line 5
    iput-object p1, p0, Lv45;->p:Lo55;

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
    .locals 10

    .line 1
    iget v0, p0, Lv45;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv45;->o:Lvc5;

    .line 5
    .line 6
    iget-object p0, p0, Lv45;->p:Lo55;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 12
    .line 13
    invoke-virtual {p0}, Lpb5;->V()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lpb5;->m0(Lvc5;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 21
    .line 22
    invoke-virtual {p0}, Lpb5;->V()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lpb5;->n0(Lvc5;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 30
    .line 31
    invoke-virtual {v0}, Lpb5;->V()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 35
    .line 36
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lj45;->v()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 44
    .line 45
    .line 46
    iget-object v0, v2, Lvc5;->n:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lpb5;->m0(Lvc5;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lpb5;->n0(Lvc5;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 59
    .line 60
    invoke-virtual {v0}, Lpb5;->V()V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 64
    .line 65
    const-string v0, "app_id=?"

    .line 66
    .line 67
    iget-object v3, p0, Lpb5;->y:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v3, p0, Lpb5;->z:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-object v4, p0, Lpb5;->y:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v3, p0, Lpb5;->c:Lat4;

    .line 84
    .line 85
    invoke-static {v3}, Lpb5;->T(Lab5;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v3, Lib0;->a:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lr45;

    .line 91
    .line 92
    iget-object v5, v2, Lvc5;->n:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lib0;->v()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lab5;->w()V

    .line 107
    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v3}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    filled-new-array {v5}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-string v7, "apps"

    .line 118
    .line 119
    invoke-virtual {v3, v7, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    const-string v8, "events"

    .line 124
    .line 125
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    add-int/2addr v7, v8

    .line 130
    const-string v8, "events_snapshot"

    .line 131
    .line 132
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    add-int/2addr v7, v8

    .line 137
    const-string v8, "user_attributes"

    .line 138
    .line 139
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    add-int/2addr v7, v8

    .line 144
    const-string v8, "conditional_properties"

    .line 145
    .line 146
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    add-int/2addr v7, v8

    .line 151
    const-string v8, "raw_events"

    .line 152
    .line 153
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    add-int/2addr v7, v8

    .line 158
    const-string v8, "raw_events_metadata"

    .line 159
    .line 160
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    add-int/2addr v7, v8

    .line 165
    const-string v8, "queue"

    .line 166
    .line 167
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    add-int/2addr v7, v8

    .line 172
    const-string v8, "audience_filter_values"

    .line 173
    .line 174
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    add-int/2addr v7, v8

    .line 179
    const-string v8, "main_event_params"

    .line 180
    .line 181
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    add-int/2addr v7, v8

    .line 186
    const-string v8, "default_event_params"

    .line 187
    .line 188
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    add-int/2addr v7, v8

    .line 193
    const-string v8, "trigger_uris"

    .line 194
    .line 195
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    add-int/2addr v7, v8

    .line 200
    const-string v8, "upload_queue"

    .line 201
    .line 202
    invoke-virtual {v3, v8, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    add-int/2addr v7, v8

    .line 207
    sget-object v8, Llq4;->o:Llq4;

    .line 208
    .line 209
    iget-object v8, v8, Llq4;->n:Lfu3;

    .line 210
    .line 211
    iget-object v8, v8, Lfu3;->n:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v8, Lmq4;

    .line 214
    .line 215
    iget-object v8, v4, Lr45;->d:Lds4;

    .line 216
    .line 217
    sget-object v9, Le05;->c1:Ld05;

    .line 218
    .line 219
    invoke-virtual {v8, v1, v9}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    .line 225
    const-string v1, "no_data_mode_events"

    .line 226
    .line 227
    invoke-virtual {v3, v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    add-int/2addr v7, v1

    .line 232
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    goto :goto_1

    .line 235
    :cond_1
    :goto_0
    const-string v1, "diagnostic_signals"

    .line 236
    .line 237
    invoke-virtual {v3, v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    add-int/2addr v7, v0

    .line 242
    if-lez v7, :cond_2

    .line 243
    .line 244
    iget-object v0, v4, Lr45;->f:La25;

    .line 245
    .line 246
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, v0, La25;->n:Lx15;

    .line 250
    .line 251
    const-string v1, "Reset analytics data. app, records"

    .line 252
    .line 253
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v0, v5, v3, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :goto_1
    iget-object v1, v4, Lr45;->f:La25;

    .line 262
    .line 263
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v1, La25;->f:Lx15;

    .line 267
    .line 268
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    const-string v4, "Error resetting analytics data. appId, error"

    .line 273
    .line 274
    invoke-virtual {v1, v3, v0, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_2
    :goto_2
    iget-boolean v0, v2, Lvc5;->u:Z

    .line 278
    .line 279
    if-eqz v0, :cond_3

    .line 280
    .line 281
    invoke-virtual {p0, v2}, Lpb5;->Y(Lvc5;)V

    .line 282
    .line 283
    .line 284
    :cond_3
    return-void

    .line 285
    :pswitch_3
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 286
    .line 287
    invoke-virtual {v0}, Lpb5;->V()V

    .line 288
    .line 289
    .line 290
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 291
    .line 292
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lj45;->v()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 300
    .line 301
    .line 302
    iget-object v0, v2, Lvc5;->n:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2}, Lpb5;->c0(Lvc5;)Lm25;

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :pswitch_4
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 312
    .line 313
    invoke-virtual {v0}, Lpb5;->V()V

    .line 314
    .line 315
    .line 316
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 317
    .line 318
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lj45;->v()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lpb5;->l0()V

    .line 326
    .line 327
    .line 328
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    iget-object v0, v2, Lvc5;->n:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    sget-object v4, Le05;->y0:Ld05;

    .line 341
    .line 342
    invoke-virtual {v3, v1, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    const/4 v4, 0x0

    .line 347
    if-eqz v3, :cond_4

    .line 348
    .line 349
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 354
    .line 355
    .line 356
    move-result-wide v5

    .line 357
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    sget-object v7, Le05;->h0:Ld05;

    .line 362
    .line 363
    invoke-virtual {v3, v1, v7}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 368
    .line 369
    .line 370
    sget-object v7, Le05;->e:Ld05;

    .line 371
    .line 372
    invoke-virtual {v7, v1}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    check-cast v7, Ljava/lang/Long;

    .line 377
    .line 378
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 379
    .line 380
    .line 381
    move-result-wide v7

    .line 382
    sub-long/2addr v5, v7

    .line 383
    :goto_3
    if-ge v4, v3, :cond_5

    .line 384
    .line 385
    invoke-virtual {p0, v5, v6, v1}, Lpb5;->I(JLjava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    if-eqz v7, :cond_5

    .line 390
    .line 391
    add-int/lit8 v4, v4, 0x1

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_4
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 395
    .line 396
    .line 397
    sget-object v3, Le05;->l:Ld05;

    .line 398
    .line 399
    invoke-virtual {v3, v1}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    check-cast v3, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    int-to-long v5, v3

    .line 410
    :goto_4
    int-to-long v7, v4

    .line 411
    cmp-long v3, v7, v5

    .line 412
    .line 413
    if-gez v3, :cond_5

    .line 414
    .line 415
    const-wide/16 v7, 0x0

    .line 416
    .line 417
    invoke-virtual {p0, v7, v8, v0}, Lpb5;->I(JLjava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_5

    .line 422
    .line 423
    add-int/lit8 v4, v4, 0x1

    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_5
    invoke-virtual {p0}, Lpb5;->e0()Lds4;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    sget-object v4, Le05;->z0:Ld05;

    .line 431
    .line 432
    invoke-virtual {v3, v1, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_6

    .line 437
    .line 438
    invoke-virtual {p0}, Lpb5;->d()Lj45;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lj45;->v()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0}, Lpb5;->H()V

    .line 446
    .line 447
    .line 448
    :cond_6
    iget-object v1, p0, Lpb5;->j:Leb5;

    .line 449
    .line 450
    iget v2, v2, Lvc5;->R:I

    .line 451
    .line 452
    invoke-static {v2}, Le55;->a(I)Le55;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v1}, Lib0;->v()V

    .line 457
    .line 458
    .line 459
    sget-object v3, Le55;->p:Le55;

    .line 460
    .line 461
    if-ne v2, v3, :cond_7

    .line 462
    .line 463
    invoke-static {v0}, Leb5;->y(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_7

    .line 468
    .line 469
    iget-object v1, v1, Lta5;->b:Lpb5;

    .line 470
    .line 471
    iget-object v1, v1, Lpb5;->a:Lw35;

    .line 472
    .line 473
    invoke-static {v1}, Lpb5;->T(Lab5;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v0}, Lw35;->H(Ljava/lang/String;)Ln15;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    if-eqz v1, :cond_7

    .line 481
    .line 482
    invoke-virtual {v1}, Ln15;->H()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_7

    .line 487
    .line 488
    invoke-virtual {v1}, Ln15;->I()Lc25;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v1}, Lc25;->u()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_7

    .line 501
    .line 502
    invoke-virtual {p0}, Lpb5;->c()La25;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    iget-object v1, v1, La25;->n:Lx15;

    .line 507
    .line 508
    const-string v2, "[sgtm] Going background, trigger client side upload. appId"

    .line 509
    .line 510
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, Lpb5;->f()Lcom/google/android/gms/common/util/Clock;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 518
    .line 519
    .line 520
    move-result-wide v1

    .line 521
    invoke-virtual {p0, v1, v2, v0}, Lpb5;->r(JLjava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_7
    return-void

    .line 525
    :pswitch_5
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 526
    .line 527
    invoke-virtual {v0}, Lpb5;->V()V

    .line 528
    .line 529
    .line 530
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 531
    .line 532
    invoke-virtual {p0, v2}, Lpb5;->Y(Lvc5;)V

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    nop

    .line 537
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
