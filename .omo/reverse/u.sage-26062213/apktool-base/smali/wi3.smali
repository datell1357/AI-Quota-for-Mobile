.class public final Lwi3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Landroid/content/BroadcastReceiver$PendingResult;

.field public final synthetic B:Lu/sage/receiver/ServiceRestartReceiver;

.field public final synthetic C:Landroid/content/Context;

.field public r:Lu/sage/receiver/ServiceRestartReceiver;

.field public s:Landroid/content/Context;

.field public t:Ljava/util/Iterator;

.field public u:Ly84;

.field public v:Lpt;

.field public w:I

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Lu/sage/receiver/ServiceRestartReceiver;Landroid/content/Context;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwi3;->A:Landroid/content/BroadcastReceiver$PendingResult;

    .line 2
    .line 3
    iput-object p2, p0, Lwi3;->B:Lu/sage/receiver/ServiceRestartReceiver;

    .line 4
    .line 5
    iput-object p3, p0, Lwi3;->C:Landroid/content/Context;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lwi3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lwi3;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwi3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    new-instance p2, Lwi3;

    .line 2
    .line 3
    iget-object v0, p0, Lwi3;->B:Lu/sage/receiver/ServiceRestartReceiver;

    .line 4
    .line 5
    iget-object v1, p0, Lwi3;->C:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lwi3;->A:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    invoke-direct {p2, p0, v0, v1, p1}, Lwi3;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Lu/sage/receiver/ServiceRestartReceiver;Landroid/content/Context;Ldh0;)V

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lwi3;->z:I

    .line 4
    .line 5
    iget-object v2, v0, Lwi3;->A:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    sget-object v7, Lri0;->n:Lri0;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iget-boolean v1, v0, Lwi3;->y:Z

    .line 20
    .line 21
    iget v8, v0, Lwi3;->w:I

    .line 22
    .line 23
    iget-object v9, v0, Lwi3;->u:Ly84;

    .line 24
    .line 25
    iget-object v10, v0, Lwi3;->t:Ljava/util/Iterator;

    .line 26
    .line 27
    iget-object v11, v0, Lwi3;->s:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v12, v0, Lwi3;->r:Lu/sage/receiver/ServiceRestartReceiver;

    .line 30
    .line 31
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    move v6, v1

    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_a

    .line 41
    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v6

    .line 51
    :cond_1
    iget v1, v0, Lwi3;->x:I

    .line 52
    .line 53
    iget v8, v0, Lwi3;->w:I

    .line 54
    .line 55
    iget-object v9, v0, Lwi3;->v:Lpt;

    .line 56
    .line 57
    iget-object v10, v0, Lwi3;->u:Ly84;

    .line 58
    .line 59
    iget-object v11, v0, Lwi3;->t:Ljava/util/Iterator;

    .line 60
    .line 61
    iget-object v12, v0, Lwi3;->s:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v13, v0, Lwi3;->r:Lu/sage/receiver/ServiceRestartReceiver;

    .line 64
    .line 65
    :try_start_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    move-object/from16 v6, p1

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :try_start_2
    sget-object v1, Ly84;->x:Lt11;

    .line 76
    .line 77
    iget-object v8, v0, Lwi3;->B:Lu/sage/receiver/ServiceRestartReceiver;

    .line 78
    .line 79
    iget-object v9, v0, Lwi3;->C:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v10, Lg1;

    .line 85
    .line 86
    invoke-direct {v10, v5, v1}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move v1, v5

    .line 90
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_15

    .line 95
    .line 96
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Ly84;

    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    const/4 v13, 0x7

    .line 107
    const/4 v14, 0x4

    .line 108
    const/4 v15, 0x3

    .line 109
    if-eqz v12, :cond_b

    .line 110
    .line 111
    if-eq v12, v4, :cond_9

    .line 112
    .line 113
    if-eq v12, v3, :cond_7

    .line 114
    .line 115
    if-eq v12, v15, :cond_5

    .line 116
    .line 117
    if-ne v12, v14, :cond_4

    .line 118
    .line 119
    iget-object v12, v8, Lu/sage/receiver/ServiceRestartReceiver;->d:Lyh0;

    .line 120
    .line 121
    if-eqz v12, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const-string v0, "copilotRepository"

    .line 125
    .line 126
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v6

    .line 130
    :cond_4
    new-instance v0, Lv00;

    .line 131
    .line 132
    invoke-direct {v0, v13}, Lv00;-><init>(I)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_5
    iget-object v12, v8, Lu/sage/receiver/ServiceRestartReceiver;->g:Li70;

    .line 137
    .line 138
    if-eqz v12, :cond_6

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const-string v0, "codexRepository"

    .line 142
    .line 143
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v6

    .line 147
    :cond_7
    iget-object v12, v8, Lu/sage/receiver/ServiceRestartReceiver;->e:Lpf;

    .line 148
    .line 149
    if-eqz v12, :cond_8

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    const-string v0, "antigravityRepository"

    .line 153
    .line 154
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v6

    .line 158
    :cond_9
    iget-object v12, v8, Lu/sage/receiver/ServiceRestartReceiver;->f:Ljg1;

    .line 159
    .line 160
    if-eqz v12, :cond_a

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_a
    const-string v0, "geminiRepository"

    .line 164
    .line 165
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v6

    .line 169
    :cond_b
    iget-object v12, v8, Lu/sage/receiver/ServiceRestartReceiver;->c:Lv50;

    .line 170
    .line 171
    if-eqz v12, :cond_14

    .line 172
    .line 173
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_10

    .line 181
    .line 182
    if-eq v6, v4, :cond_f

    .line 183
    .line 184
    if-eq v6, v3, :cond_e

    .line 185
    .line 186
    if-eq v6, v15, :cond_d

    .line 187
    .line 188
    if-ne v6, v14, :cond_c

    .line 189
    .line 190
    new-instance v6, Lwh0;

    .line 191
    .line 192
    invoke-direct {v6, v9}, Lwh0;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_c
    new-instance v0, Lv00;

    .line 197
    .line 198
    invoke-direct {v0, v13}, Lv00;-><init>(I)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_d
    new-instance v6, Lg70;

    .line 203
    .line 204
    invoke-direct {v6, v9}, Lg70;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_e
    new-instance v6, Lnf;

    .line 209
    .line 210
    invoke-direct {v6, v9}, Lnf;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_f
    new-instance v6, Lhg1;

    .line 215
    .line 216
    invoke-direct {v6, v9}, Lhg1;-><init>(Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_10
    new-instance v6, Lr50;

    .line 221
    .line 222
    invoke-direct {v6, v9}, Lr50;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    :goto_2
    invoke-virtual {v6}, Lps;->d()La81;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    iput-object v8, v0, Lwi3;->r:Lu/sage/receiver/ServiceRestartReceiver;

    .line 230
    .line 231
    iput-object v9, v0, Lwi3;->s:Landroid/content/Context;

    .line 232
    .line 233
    iput-object v10, v0, Lwi3;->t:Ljava/util/Iterator;

    .line 234
    .line 235
    iput-object v11, v0, Lwi3;->u:Ly84;

    .line 236
    .line 237
    iput-object v12, v0, Lwi3;->v:Lpt;

    .line 238
    .line 239
    iput v1, v0, Lwi3;->w:I

    .line 240
    .line 241
    iput v5, v0, Lwi3;->x:I

    .line 242
    .line 243
    iput v4, v0, Lwi3;->z:I

    .line 244
    .line 245
    invoke-static {v6, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-ne v6, v7, :cond_11

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_11
    move-object v13, v12

    .line 253
    move-object v12, v9

    .line 254
    move-object v9, v13

    .line 255
    move-object v13, v11

    .line 256
    move-object v11, v10

    .line 257
    move-object v10, v13

    .line 258
    move-object v13, v8

    .line 259
    move v8, v1

    .line 260
    move v1, v5

    .line 261
    :goto_3
    check-cast v6, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    iput-object v13, v0, Lwi3;->r:Lu/sage/receiver/ServiceRestartReceiver;

    .line 268
    .line 269
    iput-object v12, v0, Lwi3;->s:Landroid/content/Context;

    .line 270
    .line 271
    iput-object v11, v0, Lwi3;->t:Ljava/util/Iterator;

    .line 272
    .line 273
    iput-object v10, v0, Lwi3;->u:Ly84;

    .line 274
    .line 275
    const/4 v14, 0x0

    .line 276
    iput-object v14, v0, Lwi3;->v:Lpt;

    .line 277
    .line 278
    iput v8, v0, Lwi3;->w:I

    .line 279
    .line 280
    iput v1, v0, Lwi3;->x:I

    .line 281
    .line 282
    iput-boolean v6, v0, Lwi3;->y:Z

    .line 283
    .line 284
    iput v3, v0, Lwi3;->z:I

    .line 285
    .line 286
    iget-object v1, v9, Lpt;->e:Lnv3;

    .line 287
    .line 288
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, La81;

    .line 293
    .line 294
    invoke-static {v1, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-ne v1, v7, :cond_12

    .line 299
    .line 300
    :goto_4
    return-object v7

    .line 301
    :cond_12
    move-object v9, v10

    .line 302
    move-object v10, v11

    .line 303
    move-object v11, v12

    .line 304
    move-object v12, v13

    .line 305
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_13

    .line 312
    .line 313
    if-eqz v6, :cond_13

    .line 314
    .line 315
    sget-object v1, Lez3;->a:Lra3;

    .line 316
    .line 317
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    new-array v6, v5, [Ljava/lang/Object;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Lf61;->a()Lf61;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    new-instance v13, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v14, "Restarting service post-update/boot: "

    .line 342
    .line 343
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    iget-object v1, v1, Lf61;->a:Lij0;

    .line 354
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide v13

    .line 359
    iget-wide v3, v1, Lij0;->d:J

    .line 360
    .line 361
    sub-long/2addr v13, v3

    .line 362
    iget-object v3, v1, Lij0;->o:Leh;

    .line 363
    .line 364
    iget-object v3, v3, Leh;->o:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v3, Lqk0;

    .line 367
    .line 368
    new-instance v4, Lfj0;

    .line 369
    .line 370
    invoke-direct {v4, v1, v13, v14, v6}, Lfj0;-><init>(Lij0;JLjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v4}, Lqk0;->b(Ljava/util/concurrent/Callable;)Lef5;

    .line 374
    .line 375
    .line 376
    invoke-static {v11, v9}, Lmt1;->S(Landroid/content/Context;Ly84;)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_13
    sget-object v1, Lez3;->a:Lra3;

    .line 381
    .line 382
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    new-array v3, v5, [Ljava/lang/Object;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lf61;->a()Lf61;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    const-string v6, "Skipped restarting "

    .line 407
    .line 408
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v3, " - Notification disabled or logged out."

    .line 415
    .line 416
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    iget-object v1, v1, Lf61;->a:Lij0;

    .line 424
    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    .line 427
    .line 428
    move-result-wide v13

    .line 429
    iget-wide v5, v1, Lij0;->d:J

    .line 430
    .line 431
    sub-long/2addr v13, v5

    .line 432
    iget-object v5, v1, Lij0;->o:Leh;

    .line 433
    .line 434
    iget-object v5, v5, Leh;->o:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v5, Lqk0;

    .line 437
    .line 438
    new-instance v6, Lfj0;

    .line 439
    .line 440
    invoke-direct {v6, v1, v13, v14, v3}, Lfj0;-><init>(Lij0;JLjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v5, v6}, Lqk0;->b(Ljava/util/concurrent/Callable;)Lef5;

    .line 444
    .line 445
    .line 446
    :goto_6
    move v1, v8

    .line 447
    move-object v9, v11

    .line 448
    move-object v8, v12

    .line 449
    const/4 v3, 0x2

    .line 450
    const/4 v4, 0x1

    .line 451
    const/4 v5, 0x0

    .line 452
    const/4 v6, 0x0

    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :cond_14
    const-string v0, "claudeRepository"

    .line 456
    .line 457
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const/16 v16, 0x0

    .line 461
    .line 462
    throw v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :cond_15
    :goto_7
    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 464
    .line 465
    .line 466
    goto :goto_9

    .line 467
    :goto_8
    :try_start_3
    sget-object v1, Lez3;->a:Lra3;

    .line 468
    .line 469
    const/4 v4, 0x0

    .line 470
    new-array v3, v4, [Ljava/lang/Object;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-static {v3}, Lra3;->g([Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    invoke-static {}, Lf61;->a()Lf61;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iget-object v1, v1, Lf61;->a:Lij0;

    .line 483
    .line 484
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 485
    .line 486
    iget-object v3, v1, Lij0;->o:Leh;

    .line 487
    .line 488
    iget-object v3, v3, Leh;->o:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v3, Lqk0;

    .line 491
    .line 492
    new-instance v4, Lh7;

    .line 493
    .line 494
    invoke-direct {v4, v1, v0}, Lh7;-><init>(Lij0;Ljava/lang/Exception;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v4}, Lqk0;->a(Ljava/lang/Runnable;)Lef5;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    .line 499
    .line 500
    goto :goto_7

    .line 501
    :goto_9
    sget-object v0, Lt64;->a:Lt64;

    .line 502
    .line 503
    return-object v0

    .line 504
    :goto_a
    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 505
    .line 506
    .line 507
    throw v0
.end method
