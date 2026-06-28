.class public final Lv15;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final o:I

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La25;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv15;->n:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lv15;->o:I

    iput-object p3, p0, Lv15;->p:Ljava/lang/String;

    iput-object p4, p0, Lv15;->q:Ljava/lang/Object;

    iput-object p5, p0, Lv15;->r:Ljava/lang/Object;

    iput-object p6, p0, Lv15;->s:Ljava/lang/Object;

    iput-object p1, p0, Lv15;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ld25;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lv15;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lv15;->q:Ljava/lang/Object;

    .line 11
    .line 12
    iput p3, p0, Lv15;->o:I

    .line 13
    .line 14
    iput-object p4, p0, Lv15;->r:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p5, p0, Lv15;->s:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, p0, Lv15;->p:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lv15;->t:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lv15;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv15;->q:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Ld25;

    .line 10
    .line 11
    iget-object v2, p0, Lv15;->p:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lv15;->o:I

    .line 14
    .line 15
    iget-object v0, p0, Lv15;->r:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Ljava/lang/Throwable;

    .line 19
    .line 20
    iget-object v0, p0, Lv15;->s:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, v0

    .line 23
    check-cast v5, [B

    .line 24
    .line 25
    iget-object p0, p0, Lv15;->t:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, p0

    .line 28
    check-cast v6, Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface/range {v1 .. v6}, Ld25;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lv15;->t:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, La25;

    .line 37
    .line 38
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lr45;

    .line 41
    .line 42
    iget-object v1, v1, Lr45;->e:Lf35;

    .line 43
    .line 44
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v2, v1, Lq55;->b:Z

    .line 48
    .line 49
    if-eqz v2, :cond_b

    .line 50
    .line 51
    iget-char v2, v0, La25;->c:C

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lr45;

    .line 60
    .line 61
    iget-object v2, v2, Lr45;->d:Lds4;

    .line 62
    .line 63
    iget-object v5, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 64
    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v5, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 69
    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    iget-object v5, v2, Lib0;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Lr45;

    .line 75
    .line 76
    iget-object v6, v5, Lr45;->a:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_0

    .line 97
    .line 98
    move v6, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v6, v3

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    move-object p0, v0

    .line 104
    goto :goto_1

    .line 105
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iput-object v6, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 110
    .line 111
    :cond_1
    iget-object v6, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 112
    .line 113
    if-nez v6, :cond_2

    .line 114
    .line 115
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    iput-object v6, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 118
    .line 119
    iget-object v5, v5, Lr45;->f:La25;

    .line 120
    .line 121
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v5, La25;->f:Lx15;

    .line 125
    .line 126
    const-string v6, "My process not in the list of running processes"

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    monitor-exit v2

    .line 132
    goto :goto_2

    .line 133
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw p0

    .line 135
    :cond_3
    :goto_2
    iget-object v2, v2, Lds4;->e:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    const/16 v2, 0x43

    .line 144
    .line 145
    iput-char v2, v0, La25;->c:C

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/16 v2, 0x63

    .line 149
    .line 150
    iput-char v2, v0, La25;->c:C

    .line 151
    .line 152
    :cond_5
    :goto_3
    iget-wide v5, v0, La25;->d:J

    .line 153
    .line 154
    const-wide/16 v7, 0x0

    .line 155
    .line 156
    cmp-long v2, v5, v7

    .line 157
    .line 158
    if-gez v2, :cond_6

    .line 159
    .line 160
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Lr45;

    .line 163
    .line 164
    iget-object v2, v2, Lr45;->d:Lds4;

    .line 165
    .line 166
    invoke-virtual {v2}, Lds4;->B()V

    .line 167
    .line 168
    .line 169
    const-wide/32 v5, 0x274e8

    .line 170
    .line 171
    .line 172
    iput-wide v5, v0, La25;->d:J

    .line 173
    .line 174
    :cond_6
    iget v2, p0, Lv15;->o:I

    .line 175
    .line 176
    iget-char v5, v0, La25;->c:C

    .line 177
    .line 178
    iget-wide v9, v0, La25;->d:J

    .line 179
    .line 180
    iget-object v0, p0, Lv15;->p:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v6, p0, Lv15;->q:Ljava/lang/Object;

    .line 183
    .line 184
    iget-object v11, p0, Lv15;->r:Ljava/lang/Object;

    .line 185
    .line 186
    iget-object p0, p0, Lv15;->s:Ljava/lang/Object;

    .line 187
    .line 188
    const-string v12, "01VDIWEA?"

    .line 189
    .line 190
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {v4, v0, v6, v11, p0}, La25;->G(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    add-int/2addr v6, v4

    .line 211
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    add-int/2addr v6, v11

    .line 224
    add-int/2addr v6, v12

    .line 225
    add-int/2addr v6, v4

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    add-int/2addr v6, v4

    .line 233
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .line 235
    .line 236
    const-string v4, "2"

    .line 237
    .line 238
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v2, ":"

    .line 251
    .line 252
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    const/16 v4, 0x400

    .line 267
    .line 268
    if-le v2, v4, :cond_7

    .line 269
    .line 270
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    :cond_7
    iget-object v0, v1, Lf35;->e:Lq41;

    .line 275
    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    iget-object v1, v0, Lq41;->q:Ljava/io/Serializable;

    .line 279
    .line 280
    check-cast v1, Ljava/lang/String;

    .line 281
    .line 282
    iget-object v2, v0, Lq41;->r:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v2, Lf35;

    .line 285
    .line 286
    invoke-virtual {v2}, Lib0;->v()V

    .line 287
    .line 288
    .line 289
    iget-object v3, v0, Lq41;->r:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v3, Lf35;

    .line 292
    .line 293
    invoke-virtual {v3}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iget-object v4, v0, Lq41;->o:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v4, Ljava/lang/String;

    .line 300
    .line 301
    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    cmp-long v3, v3, v7

    .line 306
    .line 307
    if-nez v3, :cond_8

    .line 308
    .line 309
    invoke-virtual {v0}, Lq41;->d()V

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    iget-object v0, v0, Lq41;->p:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Ljava/lang/String;

    .line 319
    .line 320
    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    cmp-long v5, v3, v7

    .line 325
    .line 326
    const-wide/16 v6, 0x1

    .line 327
    .line 328
    if-gtz v5, :cond_9

    .line 329
    .line 330
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-interface {v2, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    .line 340
    .line 341
    invoke-interface {v2, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 342
    .line 343
    .line 344
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_9
    iget-object v5, v2, Lib0;->a:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v5, Lr45;

    .line 351
    .line 352
    iget-object v5, v5, Lr45;->i:Lac5;

    .line 353
    .line 354
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5}, Lac5;->t0()Ljava/security/SecureRandom;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    .line 362
    .line 363
    .line 364
    move-result-wide v8

    .line 365
    const-wide v10, 0x7fffffffffffffffL

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    and-long/2addr v8, v10

    .line 371
    add-long/2addr v3, v6

    .line 372
    div-long/2addr v10, v3

    .line 373
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    cmp-long v5, v8, v10

    .line 382
    .line 383
    if-gez v5, :cond_a

    .line 384
    .line 385
    invoke-interface {v2, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    .line 387
    .line 388
    :cond_a
    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 389
    .line 390
    .line 391
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_b
    invoke-virtual {v0}, La25;->F()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    const-string v0, "Persisted config not initialized. Not logging error/warn"

    .line 400
    .line 401
    const/4 v1, 0x6

    .line 402
    invoke-static {v1, p0, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    :cond_c
    :goto_4
    return-void

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
