.class public final Lm92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj60;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lqm1;

.field public final c:Lql1;

.field public final d:Lie0;

.field public final e:Lmj1;

.field public final f:Lfp1;

.field public final g:Lyj;

.field public final h:Lyj;

.field public final i:Lml1;

.field public final j:Lmj1;

.field public final k:Lbx3;


# direct methods
.method public constructor <init>(Lqm1;Lql1;Lie0;Lfp1;Lyj;Lyj;)V
    .locals 4

    .line 1
    sget-object v0, Lmj1;->J:Lmj1;

    .line 2
    .line 3
    sget-object v1, Lmj1;->L:Lmj1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-class v2, Lm92;

    .line 9
    .line 10
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    const-string v2, "Target authentication strategy"

    .line 17
    .line 18
    invoke-static {p5, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "Proxy authentication strategy"

    .line 22
    .line 23
    invoke-static {p6, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lml1;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, v3}, Lml1;-><init>(Lorg/apache/commons/logging/Log;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lm92;->i:Lml1;

    .line 33
    .line 34
    new-instance v2, Lbx3;

    .line 35
    .line 36
    const/16 v3, 0xf

    .line 37
    .line 38
    invoke-direct {v2, v3}, Lbx3;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lm92;->k:Lbx3;

    .line 42
    .line 43
    iput-object p1, p0, Lm92;->b:Lqm1;

    .line 44
    .line 45
    iput-object p2, p0, Lm92;->c:Lql1;

    .line 46
    .line 47
    iput-object p3, p0, Lm92;->d:Lie0;

    .line 48
    .line 49
    iput-object v0, p0, Lm92;->e:Lmj1;

    .line 50
    .line 51
    iput-object p4, p0, Lm92;->f:Lfp1;

    .line 52
    .line 53
    iput-object p5, p0, Lm92;->g:Lyj;

    .line 54
    .line 55
    iput-object p6, p0, Lm92;->h:Lyj;

    .line 56
    .line 57
    iput-object v1, p0, Lm92;->j:Lmj1;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lym1;Lum1;Lrl1;Lj0;)Lt60;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    const-string v7, "Proxy-Authorization"

    .line 12
    .line 13
    const-string v8, "Authorization"

    .line 14
    .line 15
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-string v2, "HTTP route"

    .line 18
    .line 19
    invoke-static {v4, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "http.auth.target-scope"

    .line 23
    .line 24
    const-class v3, Ltj;

    .line 25
    .line 26
    invoke-virtual {v6, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    check-cast v10, Ltj;

    .line 31
    .line 32
    if-nez v10, :cond_0

    .line 33
    .line 34
    new-instance v10, Ltj;

    .line 35
    .line 36
    invoke-direct {v10}, Ltj;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v10, v2}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v2, "http.auth.proxy-scope"

    .line 43
    .line 44
    invoke-virtual {v6, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ltj;

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    new-instance v3, Ltj;

    .line 53
    .line 54
    invoke-direct {v3}, Ltj;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v3, v2}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move-object v2, v3

    .line 61
    instance-of v3, v5, Lzl1;

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    move-object v3, v5

    .line 66
    check-cast v3, Lzl1;

    .line 67
    .line 68
    invoke-interface {v3}, Lzl1;->getEntity()Lxl1;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    if-eqz v11, :cond_2

    .line 73
    .line 74
    invoke-interface {v11}, Lxl1;->isRepeatable()Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-nez v12, :cond_2

    .line 79
    .line 80
    instance-of v12, v11, Lz63;

    .line 81
    .line 82
    if-nez v12, :cond_2

    .line 83
    .line 84
    new-instance v12, Lz63;

    .line 85
    .line 86
    invoke-direct {v12, v11}, Lz63;-><init>(Lxl1;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v3, v12}, Lzl1;->setEntity(Lxl1;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v6}, Lrl1;->e()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    iget-object v3, v1, Lm92;->c:Lql1;

    .line 97
    .line 98
    move-object v12, v3

    .line 99
    check-cast v12, Lax2;

    .line 100
    .line 101
    invoke-virtual {v12, v4, v11}, Lax2;->B(Lym1;Ljava/lang/Object;)Lxw2;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {v0}, Lj0;->isAborted()Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-nez v14, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0, v13}, Lj0;->setCancellable(Lm20;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v13}, Lxw2;->cancel()Z

    .line 118
    .line 119
    .line 120
    new-instance v0, Ll63;

    .line 121
    .line 122
    invoke-direct {v0}, Ll63;-><init>()V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_4
    :goto_0
    invoke-virtual {v6}, Lrl1;->d()Lv63;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    :try_start_0
    invoke-virtual {v14}, Lv63;->a()I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    const-wide/16 v16, 0x0

    .line 135
    .line 136
    move-object/from16 v18, v11

    .line 137
    .line 138
    move-object/from16 v19, v12

    .line 139
    .line 140
    if-lez v15, :cond_5

    .line 141
    .line 142
    int-to-long v11, v15

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    move-wide/from16 v11, v16

    .line 145
    .line 146
    :goto_1
    invoke-virtual {v13, v11, v12}, Lxw2;->a(J)Ll00;

    .line 147
    .line 148
    .line 149
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_c

    .line 150
    const-string v12, "http.connection"

    .line 151
    .line 152
    invoke-virtual {v6, v11, v12}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14}, Lv63;->c()Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-eqz v12, :cond_6

    .line 160
    .line 161
    invoke-virtual {v11}, Ll00;->isOpen()Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_6

    .line 166
    .line 167
    iget-object v12, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 168
    .line 169
    const-string v13, "Stale connection check"

    .line 170
    .line 171
    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11}, Ll00;->l0()Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-eqz v12, :cond_6

    .line 179
    .line 180
    iget-object v12, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 181
    .line 182
    const-string v13, "Stale connection detected"

    .line 183
    .line 184
    invoke-interface {v12, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11}, Ll00;->close()V

    .line 188
    .line 189
    .line 190
    :cond_6
    new-instance v12, Lae0;

    .line 191
    .line 192
    iget-object v13, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 193
    .line 194
    invoke-direct {v12, v13, v3, v11}, Lae0;-><init>(Lorg/apache/commons/logging/Log;Lql1;Ll00;)V

    .line 195
    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    :try_start_1
    invoke-virtual {v0, v12}, Lj0;->setCancellable(Lm20;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    goto/16 :goto_14

    .line 205
    .line 206
    :catch_1
    move-exception v0

    .line 207
    move-object v3, v2

    .line 208
    move-object v2, v10

    .line 209
    goto/16 :goto_15

    .line 210
    .line 211
    :catch_2
    move-exception v0

    .line 212
    move-object v3, v2

    .line 213
    move-object v2, v10

    .line 214
    goto/16 :goto_16

    .line 215
    .line 216
    :catch_3
    move-exception v0

    .line 217
    goto/16 :goto_17

    .line 218
    .line 219
    :cond_7
    :goto_2
    const/4 v13, 0x1

    .line 220
    move v15, v13

    .line 221
    :goto_3
    if-le v15, v13, :cond_9

    .line 222
    .line 223
    invoke-static {v5}, Lz63;->a(Lum1;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_8

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_8
    new-instance v0, Lum2;

    .line 231
    .line 232
    invoke-direct {v0}, Lum2;-><init>()V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_9
    :goto_4
    if-eqz v0, :cond_b

    .line 237
    .line 238
    invoke-virtual {v0}, Lj0;->isAborted()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_a

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_a
    new-instance v0, Ll63;

    .line 246
    .line 247
    invoke-direct {v0}, Ll63;-><init>()V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_b
    :goto_5
    invoke-virtual {v11}, Ll00;->isOpen()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_d

    .line 256
    .line 257
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 258
    .line 259
    new-instance v13, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v1, "Opening connection "

    .line 265
    .line 266
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-interface {v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lje0; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcm1; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .line 278
    .line 279
    move-object/from16 v1, p0

    .line 280
    .line 281
    move-object v3, v11

    .line 282
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lm92;->b(Ltj;Ll00;Lym1;Lum1;Lrl1;)V
    :try_end_2
    .catch Lb34; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lje0; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcm1; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 283
    .line 284
    .line 285
    move-object v13, v3

    .line 286
    move-object v11, v5

    .line 287
    goto :goto_6

    .line 288
    :catch_4
    move-exception v0

    .line 289
    :try_start_3
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 290
    .line 291
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_c

    .line 296
    .line 297
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_c
    invoke-virtual {v0}, Lb34;->b()Lvm1;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    move-object v3, v2

    .line 311
    move-object v2, v10

    .line 312
    goto/16 :goto_11

    .line 313
    .line 314
    :cond_d
    move-object v13, v11

    .line 315
    move-object v11, v5

    .line 316
    :goto_6
    invoke-virtual {v14}, Lv63;->b()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ltz v3, :cond_e

    .line 321
    .line 322
    invoke-virtual {v13, v3}, Ll00;->n(I)V

    .line 323
    .line 324
    .line 325
    :cond_e
    if-eqz v0, :cond_10

    .line 326
    .line 327
    invoke-virtual {v0}, Lj0;->isAborted()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_f

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_f
    new-instance v0, Ll63;

    .line 335
    .line 336
    invoke-direct {v0}, Ll63;-><init>()V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_10
    :goto_7
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 341
    .line 342
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_11

    .line 347
    .line 348
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 349
    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v5, "Executing request "

    .line 356
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v11}, Lum1;->getRequestLine()Ld73;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_11
    invoke-virtual {v11, v8}, Le1;->containsHeader(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v3
    :try_end_3
    .catch Lje0; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcm1; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    .line 378
    iget-object v4, v1, Lm92;->i:Lml1;

    .line 379
    .line 380
    if-nez v3, :cond_13

    .line 381
    .line 382
    :try_start_4
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 383
    .line 384
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-eqz v3, :cond_12

    .line 389
    .line 390
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 391
    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    move-object/from16 v20, v14

    .line 398
    .line 399
    const-string v14, "Target auth state: "

    .line 400
    .line 401
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10}, Ltj;->a()I

    .line 405
    .line 406
    .line 407
    move-result v14

    .line 408
    invoke-static {v14}, Ldi0;->G(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v14

    .line 412
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_12
    move-object/from16 v20, v14

    .line 424
    .line 425
    :goto_8
    invoke-virtual {v4, v11, v10, v6}, Lml1;->a(Lom1;Ltj;Lrl1;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_13
    move-object/from16 v20, v14

    .line 430
    .line 431
    :goto_9
    invoke-virtual {v11, v7}, Le1;->containsHeader(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-nez v3, :cond_15

    .line 436
    .line 437
    invoke-virtual/range {p1 .. p1}, Lym1;->c()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-nez v3, :cond_15

    .line 442
    .line 443
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 444
    .line 445
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_14

    .line 450
    .line 451
    iget-object v3, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 452
    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    const-string v14, "Proxy auth state: "

    .line 459
    .line 460
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Ltj;->a()I

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    invoke-static {v14}, Ldi0;->G(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_14
    invoke-virtual {v4, v11, v2, v6}, Lml1;->a(Lom1;Ltj;Lrl1;)V

    .line 482
    .line 483
    .line 484
    :cond_15
    const-string v3, "http.request"

    .line 485
    .line 486
    invoke-virtual {v6, v11, v3}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v3, v1, Lm92;->b:Lqm1;

    .line 490
    .line 491
    invoke-virtual {v3, v11, v13, v6}, Lqm1;->d(Lom1;Lpl1;Lul1;)Lvm1;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    iget-object v3, v1, Lm92;->d:Lie0;

    .line 496
    .line 497
    invoke-interface {v3, v5, v6}, Lie0;->h(Lvm1;Lul1;)Z

    .line 498
    .line 499
    .line 500
    move-result v3
    :try_end_4
    .catch Lje0; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcm1; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 501
    if-eqz v3, :cond_18

    .line 502
    .line 503
    :try_start_5
    iget-object v3, v1, Lm92;->e:Lmj1;

    .line 504
    .line 505
    invoke-virtual {v3, v5}, Lmj1;->r(Lvm1;)J

    .line 506
    .line 507
    .line 508
    move-result-wide v3

    .line 509
    iget-object v14, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 510
    .line 511
    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 512
    .line 513
    .line 514
    move-result v14

    .line 515
    if-eqz v14, :cond_17

    .line 516
    .line 517
    cmp-long v14, v3, v16

    .line 518
    .line 519
    if-lez v14, :cond_16

    .line 520
    .line 521
    new-instance v14, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Lje0; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcm1; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    .line 524
    .line 525
    .line 526
    move-object/from16 v21, v2

    .line 527
    .line 528
    :try_start_6
    const-string v2, "for "

    .line 529
    .line 530
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v2, " "

    .line 537
    .line 538
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    goto :goto_c

    .line 549
    :catch_5
    move-exception v0

    .line 550
    :goto_a
    move-object v2, v10

    .line 551
    move-object/from16 v3, v21

    .line 552
    .line 553
    goto/16 :goto_15

    .line 554
    .line 555
    :catch_6
    move-exception v0

    .line 556
    :goto_b
    move-object v2, v10

    .line 557
    move-object/from16 v3, v21

    .line 558
    .line 559
    goto/16 :goto_16

    .line 560
    .line 561
    :catch_7
    move-exception v0

    .line 562
    move-object/from16 v21, v2

    .line 563
    .line 564
    goto :goto_a

    .line 565
    :catch_8
    move-exception v0

    .line 566
    move-object/from16 v21, v2

    .line 567
    .line 568
    goto :goto_b

    .line 569
    :cond_16
    move-object/from16 v21, v2

    .line 570
    .line 571
    const-string v2, "indefinitely"

    .line 572
    .line 573
    :goto_c
    iget-object v14, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    move-object/from16 v22, v5

    .line 581
    .line 582
    const-string v5, "Connection can be kept alive "

    .line 583
    .line 584
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-interface {v14, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    goto :goto_d

    .line 598
    :cond_17
    move-object/from16 v21, v2

    .line 599
    .line 600
    move-object/from16 v22, v5

    .line 601
    .line 602
    :goto_d
    invoke-virtual {v12, v3, v4}, Lae0;->B(J)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v12}, Lae0;->O()V

    .line 606
    .line 607
    .line 608
    :goto_e
    move-object/from16 v1, p0

    .line 609
    .line 610
    move-object/from16 v4, p1

    .line 611
    .line 612
    move-object v2, v10

    .line 613
    move-object/from16 v3, v21

    .line 614
    .line 615
    move-object/from16 v5, v22

    .line 616
    .line 617
    goto :goto_f

    .line 618
    :cond_18
    move-object/from16 v21, v2

    .line 619
    .line 620
    move-object/from16 v22, v5

    .line 621
    .line 622
    invoke-virtual {v12}, Lae0;->z()V
    :try_end_6
    .catch Lje0; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lcm1; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    .line 623
    .line 624
    .line 625
    goto :goto_e

    .line 626
    :goto_f
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lm92;->c(Ltj;Ltj;Lym1;Lvm1;Lrl1;)Z

    .line 627
    .line 628
    .line 629
    move-result v10

    .line 630
    if-eqz v10, :cond_1e

    .line 631
    .line 632
    invoke-interface {v5}, Lvm1;->getEntity()Lxl1;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-virtual {v12}, Lae0;->b()Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-eqz v5, :cond_19

    .line 641
    .line 642
    invoke-static {v4}, Ln44;->f0(Lxl1;)V

    .line 643
    .line 644
    .line 645
    goto :goto_10

    .line 646
    :catch_9
    move-exception v0

    .line 647
    goto/16 :goto_15

    .line 648
    .line 649
    :catch_a
    move-exception v0

    .line 650
    goto/16 :goto_16

    .line 651
    .line 652
    :cond_19
    invoke-virtual {v13}, Ll00;->close()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3}, Ltj;->a()I

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    const/4 v5, 0x5

    .line 660
    if-ne v4, v5, :cond_1a

    .line 661
    .line 662
    invoke-virtual {v3}, Ltj;->b()Z

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    if-eqz v4, :cond_1a

    .line 667
    .line 668
    iget-object v4, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 669
    .line 670
    const-string v10, "Resetting proxy auth state"

    .line 671
    .line 672
    invoke-interface {v4, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3}, Ltj;->c()V

    .line 676
    .line 677
    .line 678
    :cond_1a
    invoke-virtual {v2}, Ltj;->a()I

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-ne v4, v5, :cond_1b

    .line 683
    .line 684
    invoke-virtual {v2}, Ltj;->b()Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_1b

    .line 689
    .line 690
    iget-object v4, v1, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 691
    .line 692
    const-string v5, "Resetting target auth state"

    .line 693
    .line 694
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ltj;->c()V

    .line 698
    .line 699
    .line 700
    :cond_1b
    :goto_10
    invoke-virtual {v11}, Lum1;->a()Lom1;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    invoke-interface {v4, v8}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-nez v5, :cond_1c

    .line 709
    .line 710
    invoke-virtual {v11, v8}, Le1;->removeHeaders(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    :cond_1c
    invoke-interface {v4, v7}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    if-nez v4, :cond_1d

    .line 718
    .line 719
    invoke-virtual {v11, v7}, Le1;->removeHeaders(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    .line 723
    .line 724
    move-object/from16 v4, p1

    .line 725
    .line 726
    move-object v10, v2

    .line 727
    move-object v2, v3

    .line 728
    move-object v5, v11

    .line 729
    move-object v11, v13

    .line 730
    move-object/from16 v14, v20

    .line 731
    .line 732
    const/4 v13, 0x1

    .line 733
    goto/16 :goto_3

    .line 734
    .line 735
    :cond_1e
    move-object v0, v5

    .line 736
    :goto_11
    if-nez v18, :cond_1f

    .line 737
    .line 738
    iget-object v1, v1, Lm92;->j:Lmj1;

    .line 739
    .line 740
    invoke-virtual {v1, v6}, Lmj1;->a(Lul1;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v11

    .line 744
    const-string v1, "http.user-token"

    .line 745
    .line 746
    invoke-virtual {v6, v11, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    goto :goto_12

    .line 750
    :cond_1f
    move-object/from16 v11, v18

    .line 751
    .line 752
    :goto_12
    if-eqz v11, :cond_20

    .line 753
    .line 754
    invoke-virtual {v12, v11}, Lae0;->m0(Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    :cond_20
    invoke-interface {v0}, Lvm1;->getEntity()Lxl1;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    if-eqz v1, :cond_22

    .line 762
    .line 763
    invoke-interface {v1}, Lxl1;->isStreaming()Z

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-nez v1, :cond_21

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_21
    new-instance v1, Lxm1;

    .line 771
    .line 772
    invoke-direct {v1, v0, v12}, Lxm1;-><init>(Lvm1;Lae0;)V

    .line 773
    .line 774
    .line 775
    return-object v1

    .line 776
    :cond_22
    :goto_13
    invoke-virtual {v12}, Lae0;->r()V

    .line 777
    .line 778
    .line 779
    new-instance v1, Lxm1;

    .line 780
    .line 781
    const/4 v4, 0x0

    .line 782
    invoke-direct {v1, v0, v4}, Lxm1;-><init>(Lvm1;Lae0;)V
    :try_end_7
    .catch Lje0; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lcm1; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0

    .line 783
    .line 784
    .line 785
    return-object v1

    .line 786
    :goto_14
    invoke-virtual/range {v19 .. v19}, Lax2;->shutdown()V

    .line 787
    .line 788
    .line 789
    throw v0

    .line 790
    :goto_15
    invoke-virtual {v12}, Lae0;->j()V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3}, Ltj;->b()Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-eqz v1, :cond_23

    .line 798
    .line 799
    invoke-virtual {v3}, Ltj;->c()V

    .line 800
    .line 801
    .line 802
    :cond_23
    invoke-virtual {v2}, Ltj;->b()Z

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    if-eqz v1, :cond_24

    .line 807
    .line 808
    invoke-virtual {v2}, Ltj;->c()V

    .line 809
    .line 810
    .line 811
    :cond_24
    throw v0

    .line 812
    :goto_16
    invoke-virtual {v12}, Lae0;->j()V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v3}, Ltj;->b()Z

    .line 816
    .line 817
    .line 818
    move-result v1

    .line 819
    if-eqz v1, :cond_25

    .line 820
    .line 821
    invoke-virtual {v3}, Ltj;->c()V

    .line 822
    .line 823
    .line 824
    :cond_25
    invoke-virtual {v2}, Ltj;->b()Z

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    if-eqz v1, :cond_26

    .line 829
    .line 830
    invoke-virtual {v2}, Ltj;->c()V

    .line 831
    .line 832
    .line 833
    :cond_26
    throw v0

    .line 834
    :goto_17
    invoke-virtual {v12}, Lae0;->j()V

    .line 835
    .line 836
    .line 837
    throw v0

    .line 838
    :catch_b
    move-exception v0

    .line 839
    new-instance v1, Ljava/io/InterruptedIOException;

    .line 840
    .line 841
    const-string v2, "Connection has been shut down"

    .line 842
    .line 843
    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 847
    .line 848
    .line 849
    throw v1

    .line 850
    :catch_c
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    if-nez v1, :cond_27

    .line 856
    .line 857
    goto :goto_18

    .line 858
    :cond_27
    move-object v0, v1

    .line 859
    :goto_18
    new-instance v1, Ll63;

    .line 860
    .line 861
    const-string v2, "Request execution failed"

    .line 862
    .line 863
    invoke-direct {v1, v2, v0}, Ll63;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 864
    .line 865
    .line 866
    throw v1

    .line 867
    :catch_d
    move-exception v0

    .line 868
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 873
    .line 874
    .line 875
    new-instance v1, Ll63;

    .line 876
    .line 877
    const-string v2, "Request aborted"

    .line 878
    .line 879
    invoke-direct {v1, v2, v0}, Ll63;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 880
    .line 881
    .line 882
    throw v1
.end method

.method public final b(Ltj;Ll00;Lym1;Lum1;Lrl1;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    invoke-virtual {v8}, Lrl1;->d()Lv63;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v9, v3, Lv63;->A:I

    .line 14
    .line 15
    iget-object v11, v2, Lym1;->n:Lem1;

    .line 16
    .line 17
    iget-object v12, v2, Lym1;->o:Ljava/net/InetAddress;

    .line 18
    .line 19
    const-string v3, "Target host"

    .line 20
    .line 21
    invoke-static {v11, v3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lta3;->n:Lta3;

    .line 25
    .line 26
    sget-object v4, Lsa3;->n:Lsa3;

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/16 v18, 0x0

    .line 31
    .line 32
    move-object v15, v3

    .line 33
    move-object/from16 v16, v4

    .line 34
    .line 35
    move/from16 v3, v17

    .line 36
    .line 37
    move v14, v3

    .line 38
    move-object/from16 v4, v18

    .line 39
    .line 40
    :goto_0
    if-nez v3, :cond_0

    .line 41
    .line 42
    move-object/from16 v10, v18

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    new-instance v10, Lym1;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v13, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object/from16 v13, v18

    .line 56
    .line 57
    :goto_1
    invoke-direct/range {v10 .. v16}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iget-object v5, v0, Lm92;->k:Lbx3;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v10}, Lbx3;->r(Lym1;Lym1;)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    const/4 v5, 0x1

    .line 70
    packed-switch v13, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    const-string v0, "Unknown step indicator "

    .line 74
    .line 75
    const-string v1, " from RouteDirector."

    .line 76
    .line 77
    invoke-static {v0, v13, v1}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    iget-object v5, v0, Lm92;->c:Lql1;

    .line 86
    .line 87
    check-cast v5, Lax2;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    monitor-enter p2

    .line 93
    :try_start_0
    invoke-static {v1}, Ll00;->j(Ll00;)Ll00;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-object v6, v6, Ll00;->n:Lk00;

    .line 98
    .line 99
    if-eqz v6, :cond_5

    .line 100
    .line 101
    iget-object v6, v6, Lmw2;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Lv92;

    .line 104
    .line 105
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v5, v5, Lax2;->q:Lbp0;

    .line 107
    .line 108
    iget-object v7, v2, Lym1;->n:Lem1;

    .line 109
    .line 110
    invoke-static {v8}, Lrl1;->c(Lul1;)Lrl1;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v14, "http.socket-factory-registry"

    .line 118
    .line 119
    iget-object v10, v10, Lvl1;->n:Lul1;

    .line 120
    .line 121
    invoke-interface {v10, v14}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Lr82;

    .line 126
    .line 127
    if-nez v10, :cond_2

    .line 128
    .line 129
    iget-object v10, v5, Lbp0;->b:Lr82;

    .line 130
    .line 131
    :cond_2
    iget-object v14, v7, Lem1;->q:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v10, v14}, Lr82;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Lle0;

    .line 138
    .line 139
    if-eqz v10, :cond_4

    .line 140
    .line 141
    move-object/from16 v19, v4

    .line 142
    .line 143
    instance-of v4, v10, Ldy1;

    .line 144
    .line 145
    if-eqz v4, :cond_3

    .line 146
    .line 147
    check-cast v10, Ldy1;

    .line 148
    .line 149
    invoke-interface {v6}, Lv92;->f()Ljava/net/Socket;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v5, v5, Lbp0;->c:Lmj1;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v7}, Lmj1;->t(Lem1;)I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iget-object v7, v7, Lem1;->n:Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v10, v4, v7, v5, v8}, Ldy1;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILul1;)Ljava/net/Socket;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-interface {v6, v4}, Lv92;->S(Ljava/net/Socket;)V

    .line 169
    .line 170
    .line 171
    iget-boolean v14, v2, Lym1;->s:Z

    .line 172
    .line 173
    const-string v4, "No layered protocol unless connected"

    .line 174
    .line 175
    invoke-static {v4, v3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 176
    .line 177
    .line 178
    sget-object v4, Lsa3;->o:Lsa3;

    .line 179
    .line 180
    move-object/from16 v16, v4

    .line 181
    .line 182
    move/from16 v23, v9

    .line 183
    .line 184
    move-object/from16 v4, v19

    .line 185
    .line 186
    goto/16 :goto_e

    .line 187
    .line 188
    :cond_3
    new-instance v0, Lr74;

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, " protocol does not support connection upgrade"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_4
    new-instance v0, Lr74;

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, " protocol is not supported"

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    goto :goto_3

    .line 236
    :cond_5
    :try_start_1
    new-instance v0, Lje0;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :goto_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    throw v0

    .line 244
    :pswitch_1
    invoke-virtual {v10}, Lym1;->b()I

    .line 245
    .line 246
    .line 247
    new-instance v0, Lcm1;

    .line 248
    .line 249
    const-string v1, "Proxy chains are not supported."

    .line 250
    .line 251
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :pswitch_2
    move-object/from16 v19, v4

    .line 260
    .line 261
    move v4, v3

    .line 262
    iget-object v3, v0, Lm92;->i:Lml1;

    .line 263
    .line 264
    invoke-virtual {v8}, Lrl1;->d()Lv63;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    iget v14, v10, Lv63;->A:I

    .line 269
    .line 270
    iget-object v5, v2, Lym1;->n:Lem1;

    .line 271
    .line 272
    move v6, v4

    .line 273
    invoke-virtual {v2}, Lym1;->e()Lem1;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v5}, Lem1;->a()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    new-instance v15, Lzu;

    .line 282
    .line 283
    invoke-virtual/range {p4 .. p4}, Lum1;->getProtocolVersion()Lg03;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-direct {v15, v5, v7}, Lzu;-><init>(Ljava/lang/String;Lg03;)V

    .line 288
    .line 289
    .line 290
    iget-object v5, v0, Lm92;->b:Lqm1;

    .line 291
    .line 292
    iget-object v7, v0, Lm92;->f:Lfp1;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-static {v15, v7, v8}, Lqm1;->f(Lom1;Lnm1;Lul1;)V

    .line 298
    .line 299
    .line 300
    move-object/from16 v20, v4

    .line 301
    .line 302
    move-object/from16 v4, v18

    .line 303
    .line 304
    :goto_4
    if-nez v4, :cond_d

    .line 305
    .line 306
    invoke-virtual {v1}, Ll00;->isOpen()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-nez v4, :cond_7

    .line 311
    .line 312
    iget-object v4, v0, Lm92;->c:Lql1;

    .line 313
    .line 314
    move-object/from16 v21, v4

    .line 315
    .line 316
    if-lez v14, :cond_6

    .line 317
    .line 318
    move v4, v14

    .line 319
    :goto_5
    move/from16 v22, v6

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_6
    move/from16 v4, v17

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :goto_6
    move-object/from16 v6, v21

    .line 326
    .line 327
    check-cast v6, Lax2;

    .line 328
    .line 329
    invoke-virtual {v6, v1, v2, v4, v8}, Lax2;->b(Ll00;Lym1;ILrl1;)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_7
    move/from16 v22, v6

    .line 334
    .line 335
    :goto_7
    const-string v4, "Proxy-Authorization"

    .line 336
    .line 337
    invoke-interface {v15, v4}, Lim1;->removeHeaders(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v4, p1

    .line 341
    .line 342
    invoke-virtual {v3, v15, v4, v8}, Lml1;->a(Lom1;Ltj;Lrl1;)V

    .line 343
    .line 344
    .line 345
    move-object v6, v5

    .line 346
    invoke-virtual {v6, v15, v1, v8}, Lqm1;->d(Lom1;Lpl1;Lul1;)Lvm1;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-static {v5, v7, v8}, Lqm1;->e(Lvm1;Lnm1;Lul1;)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v21, v3

    .line 354
    .line 355
    invoke-interface {v5}, Lvm1;->b()Lkv;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    iget v3, v3, Lkv;->o:I

    .line 360
    .line 361
    const/16 v4, 0xc8

    .line 362
    .line 363
    if-lt v3, v4, :cond_c

    .line 364
    .line 365
    iget-boolean v3, v10, Lv63;->w:Z

    .line 366
    .line 367
    if-eqz v3, :cond_a

    .line 368
    .line 369
    move-object v3, v6

    .line 370
    iget-object v6, v0, Lm92;->h:Lyj;

    .line 371
    .line 372
    move-object/from16 v4, v19

    .line 373
    .line 374
    move-object/from16 v19, v10

    .line 375
    .line 376
    move-object v10, v4

    .line 377
    move/from16 v23, v9

    .line 378
    .line 379
    move-object/from16 v4, v20

    .line 380
    .line 381
    move/from16 v9, v22

    .line 382
    .line 383
    move-object/from16 v20, v3

    .line 384
    .line 385
    move-object/from16 v3, v21

    .line 386
    .line 387
    move-object/from16 v21, v7

    .line 388
    .line 389
    move-object/from16 v7, p1

    .line 390
    .line 391
    invoke-virtual/range {v3 .. v8}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-eqz v6, :cond_9

    .line 396
    .line 397
    iget-object v6, v0, Lm92;->h:Lyj;

    .line 398
    .line 399
    move-object/from16 v7, p1

    .line 400
    .line 401
    move-object/from16 v8, p5

    .line 402
    .line 403
    invoke-virtual/range {v3 .. v8}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_b

    .line 408
    .line 409
    iget-object v6, v0, Lm92;->d:Lie0;

    .line 410
    .line 411
    invoke-interface {v6, v5, v8}, Lie0;->h(Lvm1;Lul1;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_8

    .line 416
    .line 417
    iget-object v6, v0, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 418
    .line 419
    const-string v7, "Connection kept alive"

    .line 420
    .line 421
    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v5}, Lvm1;->getEntity()Lxl1;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-static {v5}, Ln44;->f0(Lxl1;)V

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_8
    invoke-virtual {v1}, Ll00;->close()V

    .line 433
    .line 434
    .line 435
    :goto_8
    move-object/from16 v5, v18

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_9
    move-object/from16 v8, p5

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_a
    move-object/from16 v3, v19

    .line 442
    .line 443
    move-object/from16 v19, v10

    .line 444
    .line 445
    move-object v10, v3

    .line 446
    move/from16 v23, v9

    .line 447
    .line 448
    move-object/from16 v4, v20

    .line 449
    .line 450
    move-object/from16 v3, v21

    .line 451
    .line 452
    move/from16 v9, v22

    .line 453
    .line 454
    move-object/from16 v20, v6

    .line 455
    .line 456
    move-object/from16 v21, v7

    .line 457
    .line 458
    :cond_b
    :goto_9
    move-object/from16 v6, v20

    .line 459
    .line 460
    move-object/from16 v20, v4

    .line 461
    .line 462
    move-object v4, v5

    .line 463
    move-object v5, v6

    .line 464
    move-object/from16 v6, v19

    .line 465
    .line 466
    move-object/from16 v19, v10

    .line 467
    .line 468
    move-object v10, v6

    .line 469
    move v6, v9

    .line 470
    move-object/from16 v7, v21

    .line 471
    .line 472
    move/from16 v9, v23

    .line 473
    .line 474
    goto/16 :goto_4

    .line 475
    .line 476
    :cond_c
    new-instance v0, Lcm1;

    .line 477
    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v2, "Unexpected response to CONNECT request: "

    .line 481
    .line 482
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v5}, Lvm1;->b()Lkv;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :cond_d
    move/from16 v23, v9

    .line 505
    .line 506
    move-object/from16 v10, v19

    .line 507
    .line 508
    move v9, v6

    .line 509
    invoke-interface {v4}, Lvm1;->b()Lkv;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    iget v3, v3, Lkv;->o:I

    .line 514
    .line 515
    const/16 v5, 0x12b

    .line 516
    .line 517
    if-le v3, v5, :cond_f

    .line 518
    .line 519
    invoke-interface {v4}, Lvm1;->getEntity()Lxl1;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-eqz v0, :cond_e

    .line 524
    .line 525
    new-instance v2, Ldz;

    .line 526
    .line 527
    invoke-direct {v2, v0}, Ldz;-><init>(Lxl1;)V

    .line 528
    .line 529
    .line 530
    invoke-interface {v4, v2}, Lvm1;->setEntity(Lxl1;)V

    .line 531
    .line 532
    .line 533
    :cond_e
    invoke-virtual {v1}, Ll00;->close()V

    .line 534
    .line 535
    .line 536
    new-instance v0, Lb34;

    .line 537
    .line 538
    const-string v1, "CONNECT refused by proxy: "

    .line 539
    .line 540
    invoke-interface {v4}, Lvm1;->b()Lkv;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-direct {v0, v1, v4}, Lb34;-><init>(Ljava/lang/String;Lvm1;)V

    .line 557
    .line 558
    .line 559
    throw v0

    .line 560
    :cond_f
    iget-object v3, v0, Lm92;->a:Lorg/apache/commons/logging/Log;

    .line 561
    .line 562
    const-string v4, "Tunnel to target created."

    .line 563
    .line 564
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    const-string v3, "No tunnel unless connected"

    .line 568
    .line 569
    invoke-static {v3, v9}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 570
    .line 571
    .line 572
    const-string v3, "No tunnel without proxy"

    .line 573
    .line 574
    invoke-static {v10, v3}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    sget-object v3, Lta3;->o:Lta3;

    .line 578
    .line 579
    move-object v15, v3

    .line 580
    move v3, v9

    .line 581
    move-object v4, v10

    .line 582
    move/from16 v14, v17

    .line 583
    .line 584
    goto/16 :goto_e

    .line 585
    .line 586
    :pswitch_3
    move/from16 v23, v9

    .line 587
    .line 588
    move v9, v3

    .line 589
    iget-object v3, v0, Lm92;->c:Lql1;

    .line 590
    .line 591
    if-lez v23, :cond_10

    .line 592
    .line 593
    move/from16 v4, v23

    .line 594
    .line 595
    goto :goto_a

    .line 596
    :cond_10
    move/from16 v4, v17

    .line 597
    .line 598
    :goto_a
    check-cast v3, Lax2;

    .line 599
    .line 600
    invoke-virtual {v3, v1, v2, v4, v8}, Lax2;->b(Ll00;Lym1;ILrl1;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2}, Lym1;->e()Lem1;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    iget-boolean v4, v2, Lym1;->s:Z

    .line 608
    .line 609
    if-eqz v4, :cond_11

    .line 610
    .line 611
    invoke-virtual {v2}, Lym1;->c()Z

    .line 612
    .line 613
    .line 614
    move-result v4

    .line 615
    if-nez v4, :cond_11

    .line 616
    .line 617
    move v14, v5

    .line 618
    goto :goto_b

    .line 619
    :cond_11
    move/from16 v14, v17

    .line 620
    .line 621
    :goto_b
    const-string v4, "Proxy host"

    .line 622
    .line 623
    invoke-static {v3, v4}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    xor-int/lit8 v4, v9, 0x1

    .line 627
    .line 628
    const-string v6, "Already connected"

    .line 629
    .line 630
    invoke-static {v6, v4}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 631
    .line 632
    .line 633
    filled-new-array {v3}, [Lem1;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    move v3, v5

    .line 638
    goto :goto_e

    .line 639
    :pswitch_4
    move-object v10, v4

    .line 640
    move/from16 v23, v9

    .line 641
    .line 642
    move v9, v3

    .line 643
    iget-object v3, v0, Lm92;->c:Lql1;

    .line 644
    .line 645
    if-lez v23, :cond_12

    .line 646
    .line 647
    move/from16 v4, v23

    .line 648
    .line 649
    goto :goto_c

    .line 650
    :cond_12
    move/from16 v4, v17

    .line 651
    .line 652
    :goto_c
    check-cast v3, Lax2;

    .line 653
    .line 654
    invoke-virtual {v3, v1, v2, v4, v8}, Lax2;->b(Ll00;Lym1;ILrl1;)V

    .line 655
    .line 656
    .line 657
    iget-boolean v14, v2, Lym1;->s:Z

    .line 658
    .line 659
    xor-int/lit8 v3, v9, 0x1

    .line 660
    .line 661
    const-string v4, "Already connected"

    .line 662
    .line 663
    invoke-static {v4, v3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 664
    .line 665
    .line 666
    move v3, v5

    .line 667
    :goto_d
    move-object v4, v10

    .line 668
    goto :goto_e

    .line 669
    :pswitch_5
    move-object v10, v4

    .line 670
    move/from16 v23, v9

    .line 671
    .line 672
    move v9, v3

    .line 673
    iget-object v3, v0, Lm92;->c:Lql1;

    .line 674
    .line 675
    check-cast v3, Lax2;

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    monitor-enter p2

    .line 681
    :try_start_2
    invoke-static {v1}, Ll00;->j(Ll00;)Ll00;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    iget-object v3, v3, Ll00;->n:Lk00;

    .line 686
    .line 687
    if-eqz v3, :cond_14

    .line 688
    .line 689
    iput-boolean v5, v3, Lk00;->i:Z

    .line 690
    .line 691
    monitor-exit p2

    .line 692
    move v3, v9

    .line 693
    goto :goto_d

    .line 694
    :goto_e
    if-gtz v13, :cond_13

    .line 695
    .line 696
    return-void

    .line 697
    :cond_13
    move/from16 v9, v23

    .line 698
    .line 699
    goto/16 :goto_0

    .line 700
    .line 701
    :catchall_1
    move-exception v0

    .line 702
    goto :goto_f

    .line 703
    :cond_14
    new-instance v0, Lje0;

    .line 704
    .line 705
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :goto_f
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 710
    throw v0

    .line 711
    :pswitch_6
    new-instance v0, Lcm1;

    .line 712
    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    const-string v3, "Unable to establish route: planned = "

    .line 716
    .line 717
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v2, "; current = "

    .line 724
    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    throw v0

    .line 743
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ltj;Ltj;Lym1;Lvm1;Lrl1;)Z
    .locals 10

    .line 1
    invoke-virtual {p5}, Lrl1;->d()Lv63;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    iget-boolean v2, v2, Lv63;->w:Z

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    const-string v2, "http.target_host"

    .line 10
    .line 11
    const-class v3, Lem1;

    .line 12
    .line 13
    invoke-virtual {p5, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lem1;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p3, Lym1;->n:Lem1;

    .line 22
    .line 23
    :cond_0
    iget v3, v2, Lem1;->p:I

    .line 24
    .line 25
    if-gez v3, :cond_1

    .line 26
    .line 27
    new-instance v3, Lem1;

    .line 28
    .line 29
    iget-object v4, v2, Lem1;->n:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, p3, Lym1;->n:Lem1;

    .line 32
    .line 33
    iget v5, v5, Lem1;->p:I

    .line 34
    .line 35
    iget-object v2, v2, Lem1;->q:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v3, v4, v5, v2}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v5, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v5, v2

    .line 43
    :goto_0
    iget-object v7, p0, Lm92;->g:Lyj;

    .line 44
    .line 45
    iget-object v4, p0, Lm92;->i:Lml1;

    .line 46
    .line 47
    move-object v8, p1

    .line 48
    move-object v6, p4

    .line 49
    move-object v9, p5

    .line 50
    invoke-virtual/range {v4 .. v9}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    move-object v3, v5

    .line 55
    invoke-virtual {p3}, Lym1;->e()Lem1;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    iget-object v5, p3, Lym1;->n:Lem1;

    .line 62
    .line 63
    :cond_2
    iget-object v7, p0, Lm92;->h:Lyj;

    .line 64
    .line 65
    move-object v8, p2

    .line 66
    move-object v6, p4

    .line 67
    move-object v9, p5

    .line 68
    invoke-virtual/range {v4 .. v9}, Lml1;->c(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    iget-object v7, p0, Lm92;->g:Lyj;

    .line 75
    .line 76
    move-object v8, p1

    .line 77
    move-object v6, p4

    .line 78
    move-object v9, p5

    .line 79
    move-object v5, v3

    .line 80
    invoke-virtual/range {v4 .. v9}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    return v0

    .line 85
    :cond_3
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v7, p0, Lm92;->h:Lyj;

    .line 88
    .line 89
    move-object v8, p2

    .line 90
    move-object v6, p4

    .line 91
    move-object v9, p5

    .line 92
    invoke-virtual/range {v4 .. v9}, Lml1;->b(Lem1;Lvm1;Lyj;Ltj;Lul1;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    return v0

    .line 97
    :cond_4
    const/4 v0, 0x0

    .line 98
    return v0
.end method
