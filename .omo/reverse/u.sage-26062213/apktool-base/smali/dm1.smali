.class public abstract Ldm1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg00;->q:Lg00;

    .line 2
    .line 3
    const-string v0, "\"\\"

    .line 4
    .line 5
    invoke-static {v0}, Lbx3;->o(Ljava/lang/String;)Lg00;

    .line 6
    .line 7
    .line 8
    const-string v0, "\t ,="

    .line 9
    .line 10
    invoke-static {v0}, Lbx3;->o(Ljava/lang/String;)Lg00;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lw73;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lw73;->n:Lk63;

    .line 2
    .line 3
    iget-object v0, v0, Lk63;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "HEAD"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lw73;->q:I

    .line 15
    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xc8

    .line 21
    .line 22
    if-lt v0, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0xcc

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x130

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p0}, Lhi4;->d(Lw73;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iget-object p0, p0, Lw73;->s:Lkj1;

    .line 44
    .line 45
    const-string v0, "Transfer-Encoding"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    :cond_3
    const-string v0, "chunked"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 66
    return p0
.end method

.method public static final b(Lmj1;Lcn1;Lkj1;)V
    .locals 36

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lmj1;->I:Lmj1;

    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v1, Lhh0;->k:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkj1;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v4, v2

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v4, v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lkj1;->d(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "Set-Cookie"

    .line 35
    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, v4}, Lkj1;->f(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_1
    sget-object v1, Lg01;->n:Lg01;

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    move-object v4, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object v4, v0

    .line 78
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    move v6, v2

    .line 83
    const/4 v7, 0x0

    .line 84
    :goto_3
    if-ge v6, v5, :cond_26

    .line 85
    .line 86
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v8, v0

    .line 91
    check-cast v8, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    sget-object v0, Lfi4;->a:[B

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v11, 0x3b

    .line 107
    .line 108
    invoke-static {v8, v11, v2, v0}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/16 v12, 0x3d

    .line 113
    .line 114
    invoke-static {v8, v12, v2, v0}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-ne v13, v0, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-static {v2, v8, v13}, Lfi4;->f(ILjava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    invoke-static {v14, v8, v13}, Lfi4;->g(ILjava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v17

    .line 133
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-nez v14, :cond_7

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    invoke-static/range {v17 .. v17}, Lfi4;->e(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    const/4 v15, -0x1

    .line 145
    if-eq v14, v15, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 149
    .line 150
    invoke-static {v13, v8, v0}, Lfi4;->f(ILjava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    invoke-static {v13, v8, v0}, Lfi4;->g(ILjava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v18

    .line 162
    invoke-static/range {v18 .. v18}, Lfi4;->e(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eq v13, v15, :cond_9

    .line 167
    .line 168
    :goto_4
    move-object/from16 v8, p1

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    goto/16 :goto_10

    .line 172
    .line 173
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    const-wide v19, 0xe677d21fdbffL

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    move/from16 v23, v2

    .line 185
    .line 186
    move/from16 v24, v23

    .line 187
    .line 188
    move/from16 v25, v24

    .line 189
    .line 190
    move-wide/from16 v28, v19

    .line 191
    .line 192
    const/16 p2, 0x1

    .line 193
    .line 194
    const/4 v3, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    const-wide/16 v21, -0x1

    .line 197
    .line 198
    const/16 v26, 0x1

    .line 199
    .line 200
    const/16 v27, 0x0

    .line 201
    .line 202
    :goto_5
    const-wide v30, 0x7fffffffffffffffL

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    const-wide/high16 v32, -0x8000000000000000L

    .line 208
    .line 209
    if-ge v0, v13, :cond_17

    .line 210
    .line 211
    const-wide/16 v34, -0x1

    .line 212
    .line 213
    invoke-static {v8, v11, v0, v13}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    invoke-static {v8, v12, v0, v15}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    invoke-static {v0, v8, v11}, Lfi4;->f(ILjava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-static {v0, v8, v11}, Lfi4;->g(ILjava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-ge v11, v15, :cond_a

    .line 234
    .line 235
    add-int/lit8 v11, v11, 0x1

    .line 236
    .line 237
    invoke-static {v11, v8, v15}, Lfi4;->f(ILjava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    invoke-static {v11, v8, v15}, Lfi4;->g(ILjava/lang/String;I)I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    goto :goto_6

    .line 250
    :cond_a
    const-string v11, ""

    .line 251
    .line 252
    :goto_6
    const-string v12, "expires"

    .line 253
    .line 254
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-eqz v12, :cond_b

    .line 259
    .line 260
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-static {v0, v11}, Lc75;->O(ILjava/lang/String;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :goto_7
    move/from16 v25, p2

    .line 269
    .line 270
    goto/16 :goto_8

    .line 271
    .line 272
    :cond_b
    const-string v12, "max-age"

    .line 273
    .line 274
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    if-eqz v12, :cond_f

    .line 279
    .line 280
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    const-wide/16 v21, 0x0

    .line 285
    .line 286
    cmp-long v0, v11, v21

    .line 287
    .line 288
    if-gtz v0, :cond_c

    .line 289
    .line 290
    move-wide/from16 v21, v32

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_c
    move-wide/from16 v21, v11

    .line 294
    .line 295
    goto :goto_7

    .line 296
    :catch_0
    move-exception v0

    .line 297
    :try_start_2
    const-string v12, "-?\\d+"

    .line 298
    .line 299
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-eqz v12, :cond_e

    .line 315
    .line 316
    const-string v0, "-"

    .line 317
    .line 318
    invoke-static {v11, v0, v2}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_d

    .line 323
    .line 324
    move-wide/from16 v30, v32

    .line 325
    .line 326
    :cond_d
    move-wide/from16 v21, v30

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_e
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 330
    :cond_f
    const-string v12, "domain"

    .line 331
    .line 332
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    if-eqz v12, :cond_12

    .line 337
    .line 338
    :try_start_3
    const-string v0, "."

    .line 339
    .line 340
    invoke-static {v11, v0, v2}, Lgt3;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-nez v12, :cond_11

    .line 345
    .line 346
    invoke-static {v11, v0}, Lzs3;->O0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v0}, Ldi4;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    if-eqz v0, :cond_10

    .line 355
    .line 356
    move-object v3, v0

    .line 357
    move/from16 v26, v2

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 363
    .line 364
    .line 365
    throw v0

    .line 366
    :cond_11
    const-string v0, "Failed requirement."

    .line 367
    .line 368
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 369
    .line 370
    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 374
    :cond_12
    const-string v12, "path"

    .line 375
    .line 376
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-eqz v12, :cond_13

    .line 381
    .line 382
    move-object v14, v11

    .line 383
    goto :goto_8

    .line 384
    :cond_13
    const-string v12, "secure"

    .line 385
    .line 386
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    if-eqz v12, :cond_14

    .line 391
    .line 392
    move/from16 v23, p2

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_14
    const-string v12, "httponly"

    .line 396
    .line 397
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    if-eqz v12, :cond_15

    .line 402
    .line 403
    move/from16 v24, p2

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :cond_15
    const-string v12, "samesite"

    .line 407
    .line 408
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_16

    .line 413
    .line 414
    move-object/from16 v27, v11

    .line 415
    .line 416
    :catch_1
    :cond_16
    :goto_8
    add-int/lit8 v0, v15, 0x1

    .line 417
    .line 418
    const/16 v11, 0x3b

    .line 419
    .line 420
    const/16 v12, 0x3d

    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :cond_17
    const-wide/16 v34, -0x1

    .line 425
    .line 426
    cmp-long v0, v21, v32

    .line 427
    .line 428
    if-nez v0, :cond_18

    .line 429
    .line 430
    move-object/from16 v8, p1

    .line 431
    .line 432
    move-wide/from16 v19, v32

    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_18
    cmp-long v0, v21, v34

    .line 436
    .line 437
    if-eqz v0, :cond_1c

    .line 438
    .line 439
    const-wide v11, 0x20c49ba5e353f7L

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    cmp-long v0, v21, v11

    .line 445
    .line 446
    if-gtz v0, :cond_19

    .line 447
    .line 448
    const-wide/16 v11, 0x3e8

    .line 449
    .line 450
    mul-long v30, v21, v11

    .line 451
    .line 452
    :cond_19
    add-long v30, v9, v30

    .line 453
    .line 454
    cmp-long v0, v30, v9

    .line 455
    .line 456
    if-ltz v0, :cond_1b

    .line 457
    .line 458
    cmp-long v0, v30, v19

    .line 459
    .line 460
    if-lez v0, :cond_1a

    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_1a
    move-object/from16 v8, p1

    .line 464
    .line 465
    move-wide/from16 v19, v30

    .line 466
    .line 467
    goto :goto_a

    .line 468
    :cond_1b
    :goto_9
    move-object/from16 v8, p1

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_1c
    move-object/from16 v8, p1

    .line 472
    .line 473
    move-wide/from16 v19, v28

    .line 474
    .line 475
    :goto_a
    iget-object v0, v8, Lcn1;->d:Ljava/lang/String;

    .line 476
    .line 477
    if-nez v3, :cond_1d

    .line 478
    .line 479
    move-object v3, v0

    .line 480
    goto :goto_b

    .line 481
    :cond_1d
    invoke-static {v0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-eqz v9, :cond_1e

    .line 486
    .line 487
    goto :goto_b

    .line 488
    :cond_1e
    invoke-static {v0, v3, v2}, Lgt3;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    if-eqz v9, :cond_1f

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 499
    .line 500
    .line 501
    move-result v10

    .line 502
    sub-int/2addr v9, v10

    .line 503
    add-int/lit8 v9, v9, -0x1

    .line 504
    .line 505
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 506
    .line 507
    .line 508
    move-result v9

    .line 509
    const/16 v10, 0x2e

    .line 510
    .line 511
    if-ne v9, v10, :cond_1f

    .line 512
    .line 513
    sget-object v9, Ldi4;->a:Lw43;

    .line 514
    .line 515
    invoke-virtual {v9, v0}, Lw43;->c(Ljava/lang/CharSequence;)Z

    .line 516
    .line 517
    .line 518
    move-result v9

    .line 519
    if-nez v9, :cond_1f

    .line 520
    .line 521
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 526
    .line 527
    .line 528
    move-result v9

    .line 529
    if-eq v0, v9, :cond_20

    .line 530
    .line 531
    sget-object v0, Lr03;->d:Lr03;

    .line 532
    .line 533
    invoke-virtual {v0, v3}, Lr03;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    if-nez v0, :cond_20

    .line 538
    .line 539
    :cond_1f
    const/16 v16, 0x0

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_20
    const-string v0, "/"

    .line 543
    .line 544
    if-eqz v14, :cond_22

    .line 545
    .line 546
    invoke-static {v14, v0, v2}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    if-nez v9, :cond_21

    .line 551
    .line 552
    goto :goto_d

    .line 553
    :cond_21
    :goto_c
    move-object/from16 v22, v14

    .line 554
    .line 555
    goto :goto_e

    .line 556
    :cond_22
    :goto_d
    invoke-virtual {v8}, Lcn1;->b()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    const/16 v10, 0x2f

    .line 561
    .line 562
    const/4 v11, 0x6

    .line 563
    invoke-static {v9, v10, v2, v11}, Lzs3;->J0(Ljava/lang/String;CII)I

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    if-eqz v10, :cond_23

    .line 568
    .line 569
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    :cond_23
    move-object v14, v0

    .line 574
    goto :goto_c

    .line 575
    :goto_e
    new-instance v16, Lhh0;

    .line 576
    .line 577
    move-object/from16 v21, v3

    .line 578
    .line 579
    invoke-direct/range {v16 .. v27}, Lhh0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 580
    .line 581
    .line 582
    :goto_f
    move-object/from16 v3, v16

    .line 583
    .line 584
    :goto_10
    if-nez v3, :cond_24

    .line 585
    .line 586
    goto :goto_11

    .line 587
    :cond_24
    if-nez v7, :cond_25

    .line 588
    .line 589
    new-instance v0, Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .line 593
    .line 594
    move-object v7, v0

    .line 595
    :cond_25
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 599
    .line 600
    goto/16 :goto_3

    .line 601
    .line 602
    :cond_26
    if-eqz v7, :cond_27

    .line 603
    .line 604
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    goto :goto_12

    .line 612
    :cond_27
    const/4 v3, 0x0

    .line 613
    :goto_12
    if-nez v3, :cond_28

    .line 614
    .line 615
    goto :goto_13

    .line 616
    :cond_28
    move-object v1, v3

    .line 617
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 618
    .line 619
    .line 620
    return-void
.end method
