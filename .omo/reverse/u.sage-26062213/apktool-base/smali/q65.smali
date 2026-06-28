.class public final Lq65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Z

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lmw4;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq65;->n:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq65;->r:Ljava/lang/Object;

    iput-object p3, p0, Lq65;->o:Ljava/lang/Object;

    iput-object p4, p0, Lq65;->p:Ljava/lang/Object;

    iput-boolean p5, p0, Lq65;->q:Z

    iput-object p1, p0, Lq65;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm75;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lq65;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lq65;->r:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lq65;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lq65;->p:Ljava/lang/Object;

    .line 12
    .line 13
    iput-boolean p5, p0, Lq65;->q:Z

    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lq65;->s:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lo95;Lvc5;ZLzt4;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lq65;->n:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq65;->r:Ljava/lang/Object;

    iput-boolean p3, p0, Lq65;->q:Z

    iput-object p4, p0, Lq65;->o:Ljava/lang/Object;

    iput-object p5, p0, Lq65;->p:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lq65;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lty4;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq65;->n:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lq65;->q:Z

    iput-object p3, p0, Lq65;->r:Ljava/lang/Object;

    iput-object p4, p0, Lq65;->o:Ljava/lang/Object;

    iput-object p5, p0, Lq65;->p:Ljava/lang/Object;

    iput-object p1, p0, Lq65;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq65;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-boolean v3, v0, Lq65;->q:Z

    .line 7
    .line 8
    iget-object v4, v0, Lq65;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lq65;->o:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lq65;->r:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lq65;->s:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v7, Lo95;

    .line 20
    .line 21
    iget-object v0, v7, Lo95;->d:Ln05;

    .line 22
    .line 23
    iget-object v1, v7, Lib0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lr45;

    .line 26
    .line 27
    const-string v2, "Failed to send default event parameters to service"

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v1, Lr45;->f:La25;

    .line 32
    .line 33
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, La25;->f:Lx15;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v8, v1, Lr45;->d:Lds4;

    .line 43
    .line 44
    sget-object v9, Le05;->W0:Ld05;

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    invoke-virtual {v8, v10, v9}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    check-cast v6, Lvc5;

    .line 52
    .line 53
    if-eqz v8, :cond_2

    .line 54
    .line 55
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v10, v5

    .line 62
    check-cast v10, Lzt4;

    .line 63
    .line 64
    :goto_0
    invoke-virtual {v7, v0, v10, v6}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :try_start_0
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    check-cast v4, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-interface {v0, v4, v6}, Ln05;->x(Landroid/os/Bundle;Lvc5;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Lo95;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, v1, Lr45;->f:La25;

    .line 82
    .line 83
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, La25;->f:Lx15;

    .line 87
    .line 88
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :pswitch_0
    const-string v0, "gclid="

    .line 93
    .line 94
    check-cast v7, Lty4;

    .line 95
    .line 96
    iget-object v1, v7, Lty4;->o:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v8, v1

    .line 99
    check-cast v8, Lm75;

    .line 100
    .line 101
    invoke-virtual {v8}, Laz4;->v()V

    .line 102
    .line 103
    .line 104
    iget-object v1, v8, Lib0;->a:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Lr45;

    .line 107
    .line 108
    iget-object v2, v8, Lm75;->q:Le65;

    .line 109
    .line 110
    move-object v11, v4

    .line 111
    check-cast v11, Ljava/lang/String;

    .line 112
    .line 113
    check-cast v6, Landroid/net/Uri;

    .line 114
    .line 115
    :try_start_1
    iget-object v4, v1, Lr45;->i:Lac5;

    .line 116
    .line 117
    iget-object v9, v1, Lr45;->f:La25;

    .line 118
    .line 119
    invoke-static {v4}, Lr45;->j(Lib0;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 120
    .line 121
    .line 122
    :try_start_2
    const-string v10, "https://google.com/search?"

    .line 123
    .line 124
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v12
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    const-string v13, "_cis"

    .line 129
    .line 130
    const-string v14, "Activity created with data \'referrer\' without required params"

    .line 131
    .line 132
    const-string v15, "utm_medium"

    .line 133
    .line 134
    move/from16 v16, v3

    .line 135
    .line 136
    const-string v3, "utm_source"

    .line 137
    .line 138
    move-object/from16 v17, v5

    .line 139
    .line 140
    const-string v5, "utm_campaign"

    .line 141
    .line 142
    move/from16 p0, v12

    .line 143
    .line 144
    const-string v12, "gclid"

    .line 145
    .line 146
    if-eqz p0, :cond_3

    .line 147
    .line 148
    move-object/from16 p0, v7

    .line 149
    .line 150
    :goto_2
    const/4 v4, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_3
    :try_start_3
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v18
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    if-nez v18, :cond_4

    .line 157
    .line 158
    move-object/from16 p0, v7

    .line 159
    .line 160
    :try_start_4
    const-string v7, "gbraid"

    .line 161
    .line 162
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_5

    .line 167
    .line 168
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_5

    .line 173
    .line 174
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-nez v7, :cond_5

    .line 179
    .line 180
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_5

    .line 185
    .line 186
    const-string v7, "utm_id"

    .line 187
    .line 188
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-nez v7, :cond_5

    .line 193
    .line 194
    const-string v7, "dclid"

    .line 195
    .line 196
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-nez v7, :cond_5

    .line 201
    .line 202
    const-string v7, "srsltid"

    .line 203
    .line 204
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-nez v7, :cond_5

    .line 209
    .line 210
    const-string v7, "sfmc_id"

    .line 211
    .line 212
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_5

    .line 217
    .line 218
    iget-object v4, v4, Lib0;->a:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v4, Lr45;

    .line 221
    .line 222
    iget-object v4, v4, Lr45;->f:La25;

    .line 223
    .line 224
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 225
    .line 226
    .line 227
    iget-object v4, v4, La25;->m:Lx15;

    .line 228
    .line 229
    invoke-virtual {v4, v14}, Lx15;->a(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catch_1
    move-exception v0

    .line 234
    :goto_3
    move-object/from16 v7, p0

    .line 235
    .line 236
    goto/16 :goto_9

    .line 237
    .line 238
    :cond_4
    move-object/from16 p0, v7

    .line 239
    .line 240
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v4, v7}, Lac5;->v0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-eqz v4, :cond_6

    .line 253
    .line 254
    const-string v7, "referrer"

    .line 255
    .line 256
    invoke-virtual {v4, v13, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    .line 258
    .line 259
    :cond_6
    :goto_4
    move-object/from16 v7, v17

    .line 260
    .line 261
    check-cast v7, Ljava/lang/String;

    .line 262
    .line 263
    const-string v10, "_cmp"

    .line 264
    .line 265
    if-eqz v16, :cond_9

    .line 266
    .line 267
    move-object/from16 v16, v14

    .line 268
    .line 269
    :try_start_5
    iget-object v14, v1, Lr45;->i:Lac5;

    .line 270
    .line 271
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14, v6}, Lac5;->v0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    if-eqz v6, :cond_8

    .line 279
    .line 280
    const-string v14, "intent"

    .line 281
    .line 282
    invoke-virtual {v6, v13, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    if-nez v13, :cond_7

    .line 290
    .line 291
    if-eqz v4, :cond_7

    .line 292
    .line 293
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    if-eqz v13, :cond_7

    .line 298
    .line 299
    const-string v13, "_cer"

    .line 300
    .line 301
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    move-object/from16 v18, v15

    .line 306
    .line 307
    new-instance v15, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v6, v13, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_7
    move-object/from16 v18, v15

    .line 324
    .line 325
    :goto_5
    invoke-virtual {v8, v7, v10, v6}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v7, v6}, Le65;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_8
    :goto_6
    move-object/from16 v18, v15

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_9
    move-object/from16 v16, v14

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :goto_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_e

    .line 343
    .line 344
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v9, La25;->m:Lx15;

    .line 348
    .line 349
    const-string v6, "Activity created with referrer"

    .line 350
    .line 351
    invoke-virtual {v0, v11, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v6, v1, Lr45;->d:Lds4;

    .line 355
    .line 356
    sget-object v13, Le05;->G0:Ld05;

    .line 357
    .line 358
    const/4 v14, 0x0

    .line 359
    invoke-virtual {v6, v14, v13}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_b

    .line 364
    .line 365
    if-eqz v4, :cond_a

    .line 366
    .line 367
    invoke-virtual {v8, v7, v10, v4}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v7, v4}, Le65;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 371
    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_a
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 375
    .line 376
    .line 377
    const-string v2, "Referrer does not contain valid parameters"

    .line 378
    .line 379
    invoke-virtual {v0, v11, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :goto_8
    iget-object v0, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 383
    .line 384
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 385
    .line 386
    .line 387
    move-result-wide v0

    .line 388
    const-string v9, "auto"

    .line 389
    .line 390
    const-string v10, "_ldl"

    .line 391
    .line 392
    const/4 v12, 0x1

    .line 393
    move-object v11, v14

    .line 394
    move-wide v13, v0

    .line 395
    invoke-virtual/range {v8 .. v14}, Lm75;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_b
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_d

    .line 404
    .line 405
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-nez v2, :cond_c

    .line 410
    .line 411
    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_c

    .line 416
    .line 417
    move-object/from16 v2, v18

    .line 418
    .line 419
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-nez v2, :cond_c

    .line 424
    .line 425
    const-string v2, "utm_term"

    .line 426
    .line 427
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_c

    .line 432
    .line 433
    const-string v2, "utm_content"

    .line 434
    .line 435
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_d

    .line 440
    .line 441
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_e

    .line 446
    .line 447
    iget-object v0, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 448
    .line 449
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 450
    .line 451
    .line 452
    move-result-wide v13

    .line 453
    const-string v9, "auto"

    .line 454
    .line 455
    const-string v10, "_ldl"

    .line 456
    .line 457
    const/4 v12, 0x1

    .line 458
    invoke-virtual/range {v8 .. v14}, Lm75;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 459
    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_d
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 463
    .line 464
    .line 465
    move-object/from16 v1, v16

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :catch_2
    move-exception v0

    .line 472
    move-object/from16 p0, v7

    .line 473
    .line 474
    goto :goto_9

    .line 475
    :catch_3
    move-exception v0

    .line 476
    move-object/from16 p0, v7

    .line 477
    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :goto_9
    iget-object v1, v7, Lty4;->o:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v1, Lm75;

    .line 483
    .line 484
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v1, Lr45;

    .line 487
    .line 488
    iget-object v1, v1, Lr45;->f:La25;

    .line 489
    .line 490
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 491
    .line 492
    .line 493
    iget-object v1, v1, La25;->f:Lx15;

    .line 494
    .line 495
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 496
    .line 497
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    :cond_e
    :goto_a
    return-void

    .line 501
    :pswitch_1
    move-object/from16 v17, v5

    .line 502
    .line 503
    move-object/from16 v5, v17

    .line 504
    .line 505
    check-cast v5, Ljava/lang/String;

    .line 506
    .line 507
    check-cast v4, Ljava/lang/String;

    .line 508
    .line 509
    check-cast v7, Lm75;

    .line 510
    .line 511
    iget-object v1, v7, Lib0;->a:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v1, Lr45;

    .line 514
    .line 515
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 520
    .line 521
    invoke-virtual {v1}, Laz4;->v()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Lj05;->w()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Lo95;->L(Z)Lvc5;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    new-instance v3, Lh85;

    .line 532
    .line 533
    iget-boolean v9, v0, Lq65;->q:Z

    .line 534
    .line 535
    move-object v7, v6

    .line 536
    move-object v6, v5

    .line 537
    move-object v5, v7

    .line 538
    move-object v7, v4

    .line 539
    move-object v4, v1

    .line 540
    invoke-direct/range {v3 .. v9}, Lh85;-><init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lvc5;Z)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v3}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :pswitch_2
    move-object/from16 v17, v5

    .line 548
    .line 549
    check-cast v7, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 550
    .line 551
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lr45;

    .line 552
    .line 553
    invoke-virtual {v1}, Lr45;->o()Lo95;

    .line 554
    .line 555
    .line 556
    move-result-object v8

    .line 557
    move-object v13, v6

    .line 558
    check-cast v13, Lmw4;

    .line 559
    .line 560
    move-object/from16 v9, v17

    .line 561
    .line 562
    check-cast v9, Ljava/lang/String;

    .line 563
    .line 564
    move-object v10, v4

    .line 565
    check-cast v10, Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v8}, Laz4;->v()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v8}, Lj05;->w()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v8, v2}, Lo95;->L(Z)Lvc5;

    .line 574
    .line 575
    .line 576
    move-result-object v11

    .line 577
    new-instance v7, Lh85;

    .line 578
    .line 579
    iget-boolean v12, v0, Lq65;->q:Z

    .line 580
    .line 581
    invoke-direct/range {v7 .. v13}, Lh85;-><init>(Lo95;Ljava/lang/String;Ljava/lang/String;Lvc5;ZLmw4;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8, v7}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
