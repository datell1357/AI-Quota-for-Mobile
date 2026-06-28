.class public final Lvx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbt1;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lvx;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lvx;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmj1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lvx;->a:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lvx;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static d(Lw73;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lw73;->s:Lkj1;

    .line 2
    .line 3
    const-string v0, "Retry-After"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    if-nez p0, :cond_1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    const-string p1, "\\d+"

    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    const p0, 0x7fffffff

    .line 47
    .line 48
    .line 49
    return p0
.end method


# virtual methods
.method public final a(Lq23;)Lw73;
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lvx;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lq23;->e:Lk63;

    .line 11
    .line 12
    iget-object v6, v2, Lq23;->a:Lh23;

    .line 13
    .line 14
    sget-object v7, Lg01;->n:Lg01;

    .line 15
    .line 16
    move-object v8, v7

    .line 17
    const/16 v19, 0x0

    .line 18
    .line 19
    const/16 v20, 0x0

    .line 20
    .line 21
    move-object v7, v0

    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iget-object v9, v6, Lh23;->w:Lmu0;

    .line 24
    .line 25
    if-nez v9, :cond_c

    .line 26
    .line 27
    monitor-enter v6

    .line 28
    :try_start_0
    iget-boolean v9, v6, Lh23;->y:Z

    .line 29
    .line 30
    if-nez v9, :cond_b

    .line 31
    .line 32
    iget-boolean v9, v6, Lh23;->x:Z

    .line 33
    .line 34
    if-nez v9, :cond_a

    .line 35
    .line 36
    iget-boolean v9, v6, Lh23;->A:Z

    .line 37
    .line 38
    if-nez v9, :cond_a

    .line 39
    .line 40
    iget-boolean v9, v6, Lh23;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    if-nez v9, :cond_a

    .line 43
    .line 44
    monitor-exit v6

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Lu23;

    .line 48
    .line 49
    iget-object v9, v6, Lh23;->n:Lio2;

    .line 50
    .line 51
    iget-object v10, v9, Lio2;->z:Ltw3;

    .line 52
    .line 53
    move-object v11, v8

    .line 54
    iget-object v8, v6, Lh23;->p:Laz0;

    .line 55
    .line 56
    iget v12, v9, Lio2;->w:I

    .line 57
    .line 58
    move-object v13, v10

    .line 59
    iget v10, v9, Lio2;->x:I

    .line 60
    .line 61
    move-object v14, v11

    .line 62
    iget v11, v2, Lq23;->f:I

    .line 63
    .line 64
    move v15, v12

    .line 65
    iget v12, v2, Lq23;->g:I

    .line 66
    .line 67
    move-object/from16 v16, v13

    .line 68
    .line 69
    iget-boolean v13, v9, Lio2;->e:Z

    .line 70
    .line 71
    move-object/from16 v17, v14

    .line 72
    .line 73
    iget-boolean v14, v9, Lio2;->f:Z

    .line 74
    .line 75
    iget-object v5, v7, Lk63;->a:Lcn1;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v3, v5, Lcn1;->a:Ljava/lang/String;

    .line 81
    .line 82
    const-string v4, "https"

    .line 83
    .line 84
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    iget-object v3, v9, Lio2;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 91
    .line 92
    if-eqz v3, :cond_0

    .line 93
    .line 94
    iget-object v4, v9, Lio2;->s:Lho2;

    .line 95
    .line 96
    move-object/from16 v18, v0

    .line 97
    .line 98
    iget-object v0, v9, Lio2;->t:Lj30;

    .line 99
    .line 100
    move-object/from16 v29, v0

    .line 101
    .line 102
    move-object/from16 v27, v3

    .line 103
    .line 104
    move-object/from16 v28, v4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_0
    const-string v0, "CLEARTEXT-only client"

    .line 108
    .line 109
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    const/4 v5, 0x0

    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :cond_1
    move-object/from16 v18, v0

    .line 116
    .line 117
    const/16 v27, 0x0

    .line 118
    .line 119
    const/16 v28, 0x0

    .line 120
    .line 121
    const/16 v29, 0x0

    .line 122
    .line 123
    :goto_3
    new-instance v22, Le7;

    .line 124
    .line 125
    iget-object v0, v5, Lcn1;->d:Ljava/lang/String;

    .line 126
    .line 127
    iget v3, v5, Lcn1;->e:I

    .line 128
    .line 129
    iget-object v4, v9, Lio2;->k:Lw13;

    .line 130
    .line 131
    iget-object v5, v9, Lio2;->n:Ljavax/net/SocketFactory;

    .line 132
    .line 133
    move-object/from16 v23, v0

    .line 134
    .line 135
    iget-object v0, v9, Lio2;->m:Lw13;

    .line 136
    .line 137
    move-object/from16 v30, v0

    .line 138
    .line 139
    iget-object v0, v9, Lio2;->r:Ljava/util/List;

    .line 140
    .line 141
    move-object/from16 v31, v0

    .line 142
    .line 143
    iget-object v0, v9, Lio2;->q:Ljava/util/List;

    .line 144
    .line 145
    iget-object v9, v9, Lio2;->l:Ljava/net/ProxySelector;

    .line 146
    .line 147
    move-object/from16 v32, v0

    .line 148
    .line 149
    move/from16 v24, v3

    .line 150
    .line 151
    move-object/from16 v25, v4

    .line 152
    .line 153
    move-object/from16 v26, v5

    .line 154
    .line 155
    move-object/from16 v33, v9

    .line 156
    .line 157
    invoke-direct/range {v22 .. v33}, Le7;-><init>(Ljava/lang/String;ILw13;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Lho2;Lj30;Lw13;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v6, Lh23;->n:Lio2;

    .line 161
    .line 162
    iget-object v0, v0, Lio2;->y:Lra3;

    .line 163
    .line 164
    move v9, v15

    .line 165
    move-object/from16 v3, v17

    .line 166
    .line 167
    move-object/from16 v15, v22

    .line 168
    .line 169
    move-object/from16 v17, v6

    .line 170
    .line 171
    move-object/from16 v6, v18

    .line 172
    .line 173
    move-object/from16 v18, v7

    .line 174
    .line 175
    move-object/from16 v7, v16

    .line 176
    .line 177
    move-object/from16 v16, v0

    .line 178
    .line 179
    invoke-direct/range {v6 .. v18}, Lu23;-><init>(Ltw3;Laz0;IIIIZZLe7;Lra3;Lh23;Lk63;)V

    .line 180
    .line 181
    .line 182
    move-object/from16 v4, v17

    .line 183
    .line 184
    move-object/from16 v7, v18

    .line 185
    .line 186
    iget-object v0, v4, Lh23;->n:Lio2;

    .line 187
    .line 188
    iget-boolean v5, v0, Lio2;->f:Z

    .line 189
    .line 190
    if-eqz v5, :cond_2

    .line 191
    .line 192
    new-instance v5, Lq41;

    .line 193
    .line 194
    iget-object v0, v0, Lio2;->z:Ltw3;

    .line 195
    .line 196
    invoke-direct {v5, v6, v0}, Lq41;-><init>(Lu23;Ltw3;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_2
    new-instance v5, Ldd1;

    .line 201
    .line 202
    const/16 v0, 0xf

    .line 203
    .line 204
    invoke-direct {v5, v0, v6}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :goto_4
    iput-object v5, v4, Lh23;->t:Lz21;

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_3
    move-object v4, v6

    .line 211
    move-object v3, v8

    .line 212
    :goto_5
    :try_start_1
    iget-boolean v0, v4, Lh23;->C:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    if-nez v0, :cond_9

    .line 215
    .line 216
    :try_start_2
    invoke-virtual {v2, v7}, Lq23;->b(Lk63;)Lw73;

    .line 217
    .line 218
    .line 219
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    invoke-virtual {v0}, Lw73;->b()Lv73;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v7, v0, Lv73;->a:Lk63;

    .line 225
    .line 226
    if-eqz v19, :cond_4

    .line 227
    .line 228
    invoke-static/range {v19 .. v19}, Lfl4;->y(Lw73;)Lw73;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    goto :goto_6

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    const/4 v6, 0x1

    .line 235
    goto/16 :goto_8

    .line 236
    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 238
    :goto_6
    iput-object v5, v0, Lv73;->k:Lw73;

    .line 239
    .line 240
    invoke-virtual {v0}, Lv73;->a()Lw73;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v5, v4, Lh23;->w:Lmu0;

    .line 245
    .line 246
    invoke-virtual {v1, v0, v5}, Lvx;->b(Lw73;Lmu0;)Lk63;

    .line 247
    .line 248
    .line 249
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-nez v7, :cond_5

    .line 251
    .line 252
    const/4 v5, 0x0

    .line 253
    invoke-virtual {v4, v5}, Lh23;->e(Z)V

    .line 254
    .line 255
    .line 256
    move-object v5, v0

    .line 257
    goto/16 :goto_b

    .line 258
    .line 259
    :cond_5
    :try_start_4
    iget-object v5, v0, Lw73;->t:Ly73;

    .line 260
    .line 261
    invoke-static {v5}, Lfi4;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    .line 263
    .line 264
    add-int/lit8 v5, v20, 0x1

    .line 265
    .line 266
    const/16 v6, 0x14

    .line 267
    .line 268
    if-gt v5, v6, :cond_6

    .line 269
    .line 270
    const/4 v6, 0x1

    .line 271
    invoke-virtual {v4, v6}, Lh23;->e(Z)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v19, v0

    .line 275
    .line 276
    move-object v8, v3

    .line 277
    move-object v6, v4

    .line 278
    move/from16 v20, v5

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_6
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "Too many follow-up requests: "

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v1, v0, v4, v7}, Lvx;->c(Ljava/io/IOException;Lh23;Lk63;)Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-nez v5, :cond_8

    .line 311
    .line 312
    sget-object v1, Lfi4;->a:[B

    .line 313
    .line 314
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_7

    .line 323
    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Ljava/lang/Exception;

    .line 329
    .line 330
    invoke-static {v0, v2}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_7
    throw v0

    .line 335
    :cond_8
    invoke-static {v3, v0}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 336
    .line 337
    .line 338
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    const/4 v6, 0x1

    .line 340
    invoke-virtual {v4, v6}, Lh23;->e(Z)V

    .line 341
    .line 342
    .line 343
    move-object v6, v4

    .line 344
    const/4 v0, 0x0

    .line 345
    goto/16 :goto_1

    .line 346
    .line 347
    :cond_9
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 348
    .line 349
    const-string v1, "Canceled"

    .line 350
    .line 351
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    :goto_8
    invoke-virtual {v4, v6}, Lh23;->e(Z)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_a
    move-object v4, v6

    .line 360
    goto :goto_9

    .line 361
    :catchall_1
    move-exception v0

    .line 362
    move-object v4, v6

    .line 363
    goto :goto_a

    .line 364
    :goto_9
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 365
    .line 366
    const-string v1, "Check failed."

    .line 367
    .line 368
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :catchall_2
    move-exception v0

    .line 373
    goto :goto_a

    .line 374
    :cond_b
    move-object v4, v6

    .line 375
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 376
    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 378
    .line 379
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 383
    :goto_a
    monitor-exit v4

    .line 384
    throw v0

    .line 385
    :cond_c
    const-string v0, "Check failed."

    .line 386
    .line 387
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :goto_b
    return-object v5

    .line 393
    :pswitch_0
    const/4 v6, 0x1

    .line 394
    const-string v0, "Content-Encoding"

    .line 395
    .line 396
    const-string v3, "User-Agent"

    .line 397
    .line 398
    iget-object v1, v1, Lvx;->b:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v1, Lmj1;

    .line 401
    .line 402
    const-string v4, "gzip"

    .line 403
    .line 404
    const-string v5, "Accept-Encoding"

    .line 405
    .line 406
    const-string v7, "Connection"

    .line 407
    .line 408
    const-string v8, "Host"

    .line 409
    .line 410
    const-string v9, "Transfer-Encoding"

    .line 411
    .line 412
    const-string v10, "Content-Type"

    .line 413
    .line 414
    const-string v11, "Content-Length"

    .line 415
    .line 416
    iget-object v12, v2, Lq23;->e:Lk63;

    .line 417
    .line 418
    invoke-virtual {v12}, Lk63;->a()Lrp;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    iget-object v14, v12, Lk63;->a:Lcn1;

    .line 423
    .line 424
    iget-object v15, v12, Lk63;->c:Lkj1;

    .line 425
    .line 426
    iget-object v12, v12, Lk63;->d:Lq63;

    .line 427
    .line 428
    move-object/from16 p0, v7

    .line 429
    .line 430
    if-eqz v12, :cond_e

    .line 431
    .line 432
    iget-object v12, v12, Lq63;->a:Lg00;

    .line 433
    .line 434
    invoke-virtual {v12}, Lg00;->c()I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    const-wide/16 v16, -0x1

    .line 439
    .line 440
    int-to-long v6, v12

    .line 441
    cmp-long v12, v6, v16

    .line 442
    .line 443
    if-eqz v12, :cond_d

    .line 444
    .line 445
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    invoke-virtual {v13, v11, v6}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v6, v13, Lrp;->d:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v6, Ldh1;

    .line 455
    .line 456
    invoke-virtual {v6, v9}, Ldh1;->q(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_d
    const-string v6, "chunked"

    .line 461
    .line 462
    invoke-virtual {v13, v9, v6}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object v6, v13, Lrp;->d:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v6, Ldh1;

    .line 468
    .line 469
    invoke-virtual {v6, v11}, Ldh1;->q(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_e
    const-wide/16 v16, -0x1

    .line 474
    .line 475
    :goto_c
    invoke-virtual {v15, v8}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-nez v6, :cond_f

    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    invoke-static {v14, v6}, Lhi4;->g(Lcn1;Z)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    invoke-virtual {v13, v8, v7}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :goto_d
    move-object/from16 v7, p0

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_f
    const/4 v6, 0x0

    .line 493
    goto :goto_d

    .line 494
    :goto_e
    invoke-virtual {v15, v7}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    if-nez v8, :cond_10

    .line 499
    .line 500
    const-string v8, "Keep-Alive"

    .line 501
    .line 502
    invoke-virtual {v13, v7, v8}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    :cond_10
    invoke-virtual {v15, v5}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    if-nez v7, :cond_11

    .line 510
    .line 511
    const-string v7, "Range"

    .line 512
    .line 513
    invoke-virtual {v15, v7}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    if-nez v7, :cond_11

    .line 518
    .line 519
    invoke-virtual {v13, v5, v4}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const/16 v21, 0x1

    .line 523
    .line 524
    goto :goto_f

    .line 525
    :cond_11
    move/from16 v21, v6

    .line 526
    .line 527
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v15, v3}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    if-nez v5, :cond_12

    .line 538
    .line 539
    const-string v5, "okhttp/5.3.2"

    .line 540
    .line 541
    invoke-virtual {v13, v3, v5}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :cond_12
    new-instance v3, Lk63;

    .line 545
    .line 546
    invoke-direct {v3, v13}, Lk63;-><init>(Lrp;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v3}, Lq23;->b(Lk63;)Lw73;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    iget-object v5, v2, Lw73;->s:Lkj1;

    .line 554
    .line 555
    iget-object v6, v3, Lk63;->a:Lcn1;

    .line 556
    .line 557
    invoke-static {v1, v6, v5}, Ldm1;->b(Lmj1;Lcn1;Lkj1;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2}, Lw73;->b()Lv73;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    iput-object v3, v1, Lv73;->a:Lk63;

    .line 565
    .line 566
    if-eqz v21, :cond_15

    .line 567
    .line 568
    invoke-virtual {v5, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    if-nez v3, :cond_13

    .line 573
    .line 574
    const/4 v3, 0x0

    .line 575
    :cond_13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-eqz v3, :cond_15

    .line 580
    .line 581
    invoke-static {v2}, Ldm1;->a(Lw73;)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_15

    .line 586
    .line 587
    iget-object v2, v2, Lw73;->t:Ly73;

    .line 588
    .line 589
    if-eqz v2, :cond_15

    .line 590
    .line 591
    new-instance v3, Lui1;

    .line 592
    .line 593
    invoke-virtual {v2}, Ly73;->a0()Lfz;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-direct {v3, v2}, Lui1;-><init>(Lfz;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5}, Lkj1;->e()Ldh1;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2, v0}, Ldh1;->q(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2, v11}, Ldh1;->q(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2}, Ldh1;->m()Lkj1;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lkj1;->e()Ldh1;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    iput-object v0, v1, Lv73;->f:Ldh1;

    .line 619
    .line 620
    invoke-virtual {v5, v10}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    if-nez v0, :cond_14

    .line 625
    .line 626
    const/4 v5, 0x0

    .line 627
    goto :goto_10

    .line 628
    :cond_14
    move-object v5, v0

    .line 629
    :goto_10
    new-instance v0, Lt23;

    .line 630
    .line 631
    new-instance v2, Ld23;

    .line 632
    .line 633
    invoke-direct {v2, v3}, Ld23;-><init>(Lyp3;)V

    .line 634
    .line 635
    .line 636
    move-wide/from16 v3, v16

    .line 637
    .line 638
    invoke-direct {v0, v5, v3, v4, v2}, Lt23;-><init>(Ljava/lang/String;JLd23;)V

    .line 639
    .line 640
    .line 641
    iput-object v0, v1, Lv73;->g:Ly73;

    .line 642
    .line 643
    :cond_15
    invoke-virtual {v1}, Lv73;->a()Lw73;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    return-object v0

    .line 648
    nop

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lw73;Lmu0;)Lk63;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lmu0;->d()Li23;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Li23;->c:Lqa3;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lw73;->q:I

    .line 13
    .line 14
    iget-object v3, p1, Lw73;->n:Lk63;

    .line 15
    .line 16
    iget-object v3, v3, Lk63;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const/16 v6, 0x134

    .line 21
    .line 22
    const/16 v7, 0x133

    .line 23
    .line 24
    if-eq v2, v7, :cond_c

    .line 25
    .line 26
    if-eq v2, v6, :cond_c

    .line 27
    .line 28
    const/16 v8, 0x191

    .line 29
    .line 30
    if-eq v2, v8, :cond_b

    .line 31
    .line 32
    const/16 v8, 0x1a5

    .line 33
    .line 34
    if-eq v2, v8, :cond_9

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_7

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_5

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lvx;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lio2;

    .line 56
    .line 57
    iget-boolean p0, p0, Lio2;->e:Z

    .line 58
    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    iget-object p0, p1, Lw73;->x:Lw73;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    iget p0, p0, Lw73;->q:I

    .line 68
    .line 69
    if-ne p0, p2, :cond_3

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    invoke-static {p1, v4}, Lvx;->d(Lw73;I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-lez p0, :cond_4

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_4
    iget-object p0, p1, Lw73;->n:Lk63;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object p1, v1, Lqa3;->b:Ljava/net/Proxy;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 94
    .line 95
    if-ne p1, p2, :cond_6

    .line 96
    .line 97
    iget-object p0, p0, Lvx;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lio2;

    .line 100
    .line 101
    iget-object p0, p0, Lio2;->m:Lw13;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    .line 108
    .line 109
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_7
    iget-object p0, p1, Lw73;->x:Lw73;

    .line 116
    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    iget p0, p0, Lw73;->q:I

    .line 120
    .line 121
    if-ne p0, p2, :cond_8

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_8
    const p0, 0x7fffffff

    .line 126
    .line 127
    .line 128
    invoke-static {p1, p0}, Lvx;->d(Lw73;I)I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_12

    .line 133
    .line 134
    iget-object p0, p1, Lw73;->n:Lk63;

    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_9
    if-eqz p2, :cond_12

    .line 138
    .line 139
    iget-object p0, p2, Lmu0;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Lz21;

    .line 142
    .line 143
    invoke-interface {p0}, Lz21;->g()Lu23;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget-object p0, p0, Lu23;->i:Le7;

    .line 148
    .line 149
    iget-object p0, p0, Le7;->h:Lcn1;

    .line 150
    .line 151
    iget-object p0, p0, Lcn1;->d:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v1, p2, Lmu0;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Ly21;

    .line 156
    .line 157
    invoke-interface {v1}, Ly21;->m()Lx21;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {v1}, Lx21;->i()Lqa3;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iget-object v1, v1, Lqa3;->a:Le7;

    .line 166
    .line 167
    iget-object v1, v1, Le7;->h:Lcn1;

    .line 168
    .line 169
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_a

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_a
    invoke-virtual {p2}, Lmu0;->d()Li23;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iput-boolean v5, p0, Li23;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    monitor-exit p0

    .line 186
    iget-object p0, p1, Lw73;->n:Lk63;

    .line 187
    .line 188
    return-object p0

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    monitor-exit p0

    .line 191
    throw p1

    .line 192
    :cond_b
    iget-object p0, p0, Lvx;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Lio2;

    .line 195
    .line 196
    iget-object p0, p0, Lio2;->g:Lw13;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    return-object v0

    .line 202
    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 203
    .line 204
    iget-object p0, p0, Lvx;->b:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Lio2;

    .line 207
    .line 208
    iget-boolean v1, p0, Lio2;->h:Z

    .line 209
    .line 210
    if-nez v1, :cond_d

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_d
    const-string v1, "Location"

    .line 214
    .line 215
    iget-object v2, p1, Lw73;->s:Lkj1;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_e

    .line 222
    .line 223
    move-object v1, v0

    .line 224
    :cond_e
    iget-object v2, p1, Lw73;->n:Lk63;

    .line 225
    .line 226
    if-nez v1, :cond_f

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_f
    iget-object v8, v2, Lk63;->a:Lcn1;

    .line 230
    .line 231
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    :try_start_1
    new-instance v9, Lbn1;

    .line 235
    .line 236
    invoke-direct {v9}, Lbn1;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v8, v1}, Lbn1;->c(Lcn1;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catch_0
    move-object v9, v0

    .line 244
    :goto_1
    if-eqz v9, :cond_10

    .line 245
    .line 246
    invoke-virtual {v9}, Lbn1;->a()Lcn1;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    goto :goto_2

    .line 251
    :cond_10
    move-object v1, v0

    .line 252
    :goto_2
    if-nez v1, :cond_11

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_11
    iget-object v8, v1, Lcn1;->a:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v9, v2, Lk63;->a:Lcn1;

    .line 258
    .line 259
    iget-object v9, v9, Lcn1;->a:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v8, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_13

    .line 266
    .line 267
    iget-boolean p0, p0, Lio2;->i:Z

    .line 268
    .line 269
    if-nez p0, :cond_13

    .line 270
    .line 271
    :cond_12
    :goto_3
    return-object v0

    .line 272
    :cond_13
    invoke-virtual {v2}, Lk63;->a()Lrp;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v3}, Lnt1;->M(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_18

    .line 281
    .line 282
    iget p1, p1, Lw73;->q:I

    .line 283
    .line 284
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    if-nez v8, :cond_14

    .line 289
    .line 290
    if-eq p1, v6, :cond_14

    .line 291
    .line 292
    if-ne p1, v7, :cond_15

    .line 293
    .line 294
    :cond_14
    move v4, v5

    .line 295
    :cond_15
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    if-nez p2, :cond_16

    .line 300
    .line 301
    if-eq p1, v6, :cond_16

    .line 302
    .line 303
    if-eq p1, v7, :cond_16

    .line 304
    .line 305
    const-string p1, "GET"

    .line 306
    .line 307
    invoke-virtual {p0, p1, v0}, Lrp;->m(Ljava/lang/String;Lq63;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_16
    if-eqz v4, :cond_17

    .line 312
    .line 313
    iget-object v0, v2, Lk63;->d:Lq63;

    .line 314
    .line 315
    :cond_17
    invoke-virtual {p0, v3, v0}, Lrp;->m(Ljava/lang/String;Lq63;)V

    .line 316
    .line 317
    .line 318
    :goto_4
    if-nez v4, :cond_18

    .line 319
    .line 320
    const-string p1, "Transfer-Encoding"

    .line 321
    .line 322
    iget-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p2, Ldh1;

    .line 325
    .line 326
    invoke-virtual {p2, p1}, Ldh1;->q(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string p1, "Content-Length"

    .line 330
    .line 331
    iget-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p2, Ldh1;

    .line 334
    .line 335
    invoke-virtual {p2, p1}, Ldh1;->q(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const-string p1, "Content-Type"

    .line 339
    .line 340
    iget-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast p2, Ldh1;

    .line 343
    .line 344
    invoke-virtual {p2, p1}, Ldh1;->q(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    iget-object p1, v2, Lk63;->a:Lcn1;

    .line 348
    .line 349
    invoke-static {p1, v1}, Lhi4;->a(Lcn1;Lcn1;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_19

    .line 354
    .line 355
    const-string p1, "Authorization"

    .line 356
    .line 357
    iget-object p2, p0, Lrp;->d:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p2, Ldh1;

    .line 360
    .line 361
    invoke-virtual {p2, p1}, Ldh1;->q(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_19
    iput-object v1, p0, Lrp;->b:Ljava/lang/Object;

    .line 365
    .line 366
    new-instance p1, Lk63;

    .line 367
    .line 368
    invoke-direct {p1, p0}, Lk63;-><init>(Lrp;)V

    .line 369
    .line 370
    .line 371
    return-object p1

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;Lh23;Lk63;)Z
    .locals 0

    .line 1
    instance-of p3, p1, Lke0;

    .line 2
    .line 3
    iget-object p0, p0, Lvx;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lio2;

    .line 6
    .line 7
    iget-boolean p0, p0, Lio2;->e:Z

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-nez p3, :cond_1

    .line 13
    .line 14
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 29
    .line 30
    if-eqz p0, :cond_7

    .line 31
    .line 32
    if-eqz p3, :cond_7

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 36
    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    instance-of p0, p0, Ljava/security/cert/CertificateException;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    :goto_0
    iget-object p0, p2, Lh23;->D:Lmu0;

    .line 54
    .line 55
    if-eqz p0, :cond_7

    .line 56
    .line 57
    iget-boolean p0, p0, Lmu0;->a:Z

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    if-ne p0, p1, :cond_7

    .line 61
    .line 62
    iget-object p0, p2, Lh23;->t:Lz21;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-interface {p0}, Lz21;->g()Lu23;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p2, p2, Lh23;->D:Lmu0;

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2}, Lmu0;->d()Li23;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const/4 p2, 0x0

    .line 81
    :goto_1
    invoke-virtual {p0, p2}, Lu23;->a(Li23;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    return p1

    .line 88
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 89
    return p0
.end method
