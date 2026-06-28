.class public final Lpl4;
.super Lv43;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final f:Ljava/util/Set;

.field public static final g:Lfh5;

.field public static final h:Lnl4;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/logging/Level;

.field public final d:Ljava/util/Set;

.field public final e:Lfh5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    sget-object v1, Lfg5;->a:Log5;

    .line 4
    .line 5
    sget-object v2, Lwg5;->a:Log5;

    .line 6
    .line 7
    sget-object v3, Lxg5;->a:Log5;

    .line 8
    .line 9
    filled-new-array {v1, v2, v3}, [Log5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lpl4;->f:Ljava/util/Set;

    .line 25
    .line 26
    invoke-static {v0}, Lqn0;->M(Ljava/util/Set;)Lfh5;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lfh5;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Lfh5;-><init>(Lfh5;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lpl4;->g:Lfh5;

    .line 36
    .line 37
    new-instance v1, Lnl4;

    .line 38
    .line 39
    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 40
    .line 41
    invoke-direct {v1, v3, v0, v2}, Lnl4;-><init>(Ljava/util/logging/Level;Ljava/util/Set;Lfh5;)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lpl4;->h:Lnl4;

    .line 45
    .line 46
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lfh5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv43;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lil4;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lpl4;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lpl4;->c:Ljava/util/logging/Level;

    .line 11
    .line 12
    iput-object p3, p0, Lpl4;->d:Ljava/util/Set;

    .line 13
    .line 14
    iput-object p4, p0, Lpl4;->e:Lfh5;

    .line 15
    .line 16
    return-void
.end method

.method public static d(Lcg5;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lfh5;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcg5;->d()Lye4;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, v0, Lcg5;->a:Ljava/util/logging/Level;

    .line 8
    .line 9
    sget-object v4, Lxg5;->a:Log5;

    .line 10
    .line 11
    invoke-virtual {v2, v4}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v2, Lbl4;->a:Lcl4;

    .line 27
    .line 28
    check-cast v2, Lgl4;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v2, Lml4;->b:Lml4;

    .line 34
    .line 35
    invoke-virtual {v2}, Lml4;->c()Lye4;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0}, Lcg5;->d()Lye4;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lye4;->b()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    sget-object v2, Lal4;->a:Lgh5;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v6, 0x1c

    .line 53
    .line 54
    if-gt v5, v6, :cond_2

    .line 55
    .line 56
    new-instance v5, Lih5;

    .line 57
    .line 58
    invoke-direct {v5, v2, v4}, Lih5;-><init>(Lye4;Lye4;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    move-object v2, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v5, Ljh5;

    .line 64
    .line 65
    invoke-direct {v5, v2, v4}, Ljh5;-><init>(Lye4;Lye4;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_1
    invoke-virtual {v3}, Ljava/util/logging/Level;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/util/logging/Level;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x0

    .line 78
    if-ge v4, v5, :cond_3

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move v4, v6

    .line 83
    :goto_2
    const-string v10, "cannot get literal argument before calling log()"

    .line 84
    .line 85
    const-string v11, "cannot get literal argument if a template context exists"

    .line 86
    .line 87
    const/4 v12, 0x2

    .line 88
    if-nez v4, :cond_8

    .line 89
    .line 90
    sget v13, Ldl4;->a:I

    .line 91
    .line 92
    iget-object v13, v0, Lcg5;->f:Lel4;

    .line 93
    .line 94
    if-nez v13, :cond_8

    .line 95
    .line 96
    invoke-virtual {v2}, Lal4;->b()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-gt v13, v14, :cond_8

    .line 105
    .line 106
    invoke-virtual {v2}, Lal4;->c()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    move-object/from16 v14, p3

    .line 111
    .line 112
    invoke-interface {v14, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-nez v13, :cond_4

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_4
    iget-object v2, v0, Lcg5;->f:Lel4;

    .line 120
    .line 121
    if-nez v2, :cond_5

    .line 122
    .line 123
    const/4 v7, 0x1

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    move v7, v6

    .line 126
    :goto_3
    if-eqz v7, :cond_7

    .line 127
    .line 128
    iget-object v2, v0, Lcg5;->g:[Ljava/lang/Object;

    .line 129
    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    aget-object v2, v2, v6

    .line 133
    .line 134
    invoke-static {v2}, Lbh5;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object/from16 v21, v3

    .line 139
    .line 140
    goto/16 :goto_1d

    .line 141
    .line 142
    :cond_6
    invoke-static {v10}, Lk21;->n(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_7
    invoke-static {v11}, Lk21;->n(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_8
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v14, v0, Lcg5;->d:Lkg5;

    .line 156
    .line 157
    if-eqz v14, :cond_4c

    .line 158
    .line 159
    invoke-static {v12, v14, v13}, Lve4;->c(ILkg5;Ljava/lang/StringBuilder;)Z

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    if-eqz v14, :cond_9

    .line 164
    .line 165
    const-string v14, " "

    .line 166
    .line 167
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_9
    if-eqz v4, :cond_a

    .line 171
    .line 172
    iget-object v4, v0, Lcg5;->f:Lel4;

    .line 173
    .line 174
    if-eqz v4, :cond_a

    .line 175
    .line 176
    const-string v2, "(REDACTED) "

    .line 177
    .line 178
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v2, v0, Lcg5;->f:Lel4;

    .line 182
    .line 183
    iget-object v2, v2, Lel4;->b:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    move-object/from16 v21, v3

    .line 189
    .line 190
    goto/16 :goto_1c

    .line 191
    .line 192
    :cond_a
    iget-object v4, v0, Lcg5;->f:Lel4;

    .line 193
    .line 194
    if-eqz v4, :cond_42

    .line 195
    .line 196
    new-instance v10, Ltz0;

    .line 197
    .line 198
    if-eqz v4, :cond_b

    .line 199
    .line 200
    const/4 v11, 0x1

    .line 201
    goto :goto_5

    .line 202
    :cond_b
    move v11, v6

    .line 203
    :goto_5
    const-string v14, "cannot get arguments unless a template context exists"

    .line 204
    .line 205
    if-eqz v11, :cond_41

    .line 206
    .line 207
    iget-object v11, v0, Lcg5;->g:[Ljava/lang/Object;

    .line 208
    .line 209
    const-string v15, "cannot get arguments before calling log()"

    .line 210
    .line 211
    if-eqz v11, :cond_40

    .line 212
    .line 213
    invoke-direct {v10, v4, v11, v13}, Ltz0;-><init>(Lel4;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 214
    .line 215
    .line 216
    iget-object v4, v10, Ltz0;->g:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v4, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    iget-object v11, v10, Ltz0;->e:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v11, Lel4;

    .line 223
    .line 224
    iget-object v5, v11, Lel4;->a:Lem4;

    .line 225
    .line 226
    iget-object v11, v11, Lel4;->b:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {v6, v11}, Lfm4;->b(ILjava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    const/4 v8, -0x1

    .line 236
    const/16 v17, 0x0

    .line 237
    .line 238
    :goto_6
    const/16 v18, 0x3

    .line 239
    .line 240
    if-ltz v5, :cond_3a

    .line 241
    .line 242
    add-int/lit8 v12, v5, 0x1

    .line 243
    .line 244
    move v7, v12

    .line 245
    const/16 v19, 0x0

    .line 246
    .line 247
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    const-string v6, "unterminated parameter"

    .line 252
    .line 253
    if-ge v7, v9, :cond_39

    .line 254
    .line 255
    add-int/lit8 v9, v7, 0x1

    .line 256
    .line 257
    move-object/from16 v21, v3

    .line 258
    .line 259
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    move/from16 v22, v7

    .line 264
    .line 265
    add-int/lit8 v7, v3, -0x30

    .line 266
    .line 267
    int-to-char v7, v7

    .line 268
    move-object/from16 v23, v14

    .line 269
    .line 270
    const/16 v14, 0xa

    .line 271
    .line 272
    if-ge v7, v14, :cond_d

    .line 273
    .line 274
    mul-int/lit8 v19, v19, 0xa

    .line 275
    .line 276
    add-int v3, v19, v7

    .line 277
    .line 278
    const v6, 0xf4240

    .line 279
    .line 280
    .line 281
    if-ge v3, v6, :cond_c

    .line 282
    .line 283
    move/from16 v19, v3

    .line 284
    .line 285
    move v7, v9

    .line 286
    move-object/from16 v3, v21

    .line 287
    .line 288
    move-object/from16 v14, v23

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_c
    const-string v0, "index too large"

    .line 292
    .line 293
    invoke-static {v5, v9, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    throw v0

    .line 298
    :cond_d
    const/16 v7, 0x24

    .line 299
    .line 300
    const/16 v14, 0x30

    .line 301
    .line 302
    if-ne v3, v7, :cond_11

    .line 303
    .line 304
    sub-int v7, v22, v12

    .line 305
    .line 306
    if-eqz v7, :cond_10

    .line 307
    .line 308
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eq v3, v14, :cond_f

    .line 313
    .line 314
    add-int/lit8 v19, v19, -0x1

    .line 315
    .line 316
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eq v9, v3, :cond_e

    .line 321
    .line 322
    add-int/lit8 v7, v22, 0x2

    .line 323
    .line 324
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move v12, v9

    .line 328
    move/from16 v8, v19

    .line 329
    .line 330
    move v9, v7

    .line 331
    const/4 v7, -0x1

    .line 332
    goto :goto_8

    .line 333
    :cond_e
    new-instance v0, Lv00;

    .line 334
    .line 335
    const/4 v7, -0x1

    .line 336
    invoke-static {v5, v7, v6, v11}, Lv00;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const/16 v2, 0xb

    .line 341
    .line 342
    invoke-direct {v0, v1, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_f
    const-string v0, "index has leading zero"

    .line 347
    .line 348
    invoke-static {v5, v9, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    throw v0

    .line 353
    :cond_10
    const-string v0, "missing index"

    .line 354
    .line 355
    invoke-static {v5, v9, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    throw v0

    .line 360
    :cond_11
    const/4 v7, -0x1

    .line 361
    const/16 v14, 0x3c

    .line 362
    .line 363
    if-ne v3, v14, :cond_14

    .line 364
    .line 365
    if-eq v8, v7, :cond_13

    .line 366
    .line 367
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eq v9, v3, :cond_12

    .line 372
    .line 373
    add-int/lit8 v3, v22, 0x2

    .line 374
    .line 375
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 376
    .line 377
    .line 378
    move v12, v9

    .line 379
    move v9, v3

    .line 380
    goto :goto_8

    .line 381
    :cond_12
    new-instance v0, Lv00;

    .line 382
    .line 383
    invoke-static {v5, v7, v6, v11}, Lv00;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    const/16 v2, 0xb

    .line 388
    .line 389
    invoke-direct {v0, v1, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :cond_13
    const-string v0, "invalid relative parameter"

    .line 394
    .line 395
    invoke-static {v5, v9, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    throw v0

    .line 400
    :cond_14
    add-int/lit8 v3, v17, 0x1

    .line 401
    .line 402
    move/from16 v8, v17

    .line 403
    .line 404
    move/from16 v17, v3

    .line 405
    .line 406
    :goto_8
    add-int/2addr v9, v7

    .line 407
    :goto_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-ge v9, v3, :cond_38

    .line 412
    .line 413
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    and-int/lit8 v3, v3, -0x21

    .line 418
    .line 419
    add-int/lit8 v3, v3, -0x41

    .line 420
    .line 421
    int-to-char v3, v3

    .line 422
    const/16 v7, 0x1a

    .line 423
    .line 424
    if-ge v3, v7, :cond_37

    .line 425
    .line 426
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    and-int/lit8 v6, v3, 0x20

    .line 431
    .line 432
    if-nez v6, :cond_15

    .line 433
    .line 434
    const/4 v7, 0x1

    .line 435
    goto :goto_a

    .line 436
    :cond_15
    const/4 v7, 0x0

    .line 437
    :goto_a
    sget-object v14, Lzg5;->e:Lzg5;

    .line 438
    .line 439
    if-ne v12, v9, :cond_16

    .line 440
    .line 441
    if-eqz v7, :cond_17

    .line 442
    .line 443
    :cond_16
    const/4 v14, 0x1

    .line 444
    goto :goto_c

    .line 445
    :cond_17
    sget-object v7, Lzg5;->e:Lzg5;

    .line 446
    .line 447
    move-object/from16 v19, v2

    .line 448
    .line 449
    move/from16 v24, v6

    .line 450
    .line 451
    :goto_b
    move-object/from16 v25, v15

    .line 452
    .line 453
    goto/16 :goto_11

    .line 454
    .line 455
    :goto_c
    if-eq v14, v7, :cond_18

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    goto :goto_d

    .line 459
    :cond_18
    const/16 v7, 0x80

    .line 460
    .line 461
    :goto_d
    if-ne v12, v9, :cond_19

    .line 462
    .line 463
    new-instance v12, Lzg5;

    .line 464
    .line 465
    const/4 v14, -0x1

    .line 466
    invoke-direct {v12, v7, v14, v14}, Lzg5;-><init>(III)V

    .line 467
    .line 468
    .line 469
    move-object/from16 v19, v2

    .line 470
    .line 471
    move/from16 v24, v6

    .line 472
    .line 473
    move-object v7, v12

    .line 474
    goto :goto_b

    .line 475
    :cond_19
    add-int/lit8 v14, v12, 0x1

    .line 476
    .line 477
    move/from16 v24, v6

    .line 478
    .line 479
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    move-object/from16 v25, v15

    .line 484
    .line 485
    const-string v15, "invalid flag"

    .line 486
    .line 487
    const/16 v1, 0x20

    .line 488
    .line 489
    if-lt v6, v1, :cond_1a

    .line 490
    .line 491
    const/16 v1, 0x30

    .line 492
    .line 493
    if-le v6, v1, :cond_1b

    .line 494
    .line 495
    :cond_1a
    move-object/from16 v19, v2

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_1b
    add-int/lit8 v19, v6, -0x20

    .line 499
    .line 500
    sget-wide v27, Lzg5;->d:J

    .line 501
    .line 502
    mul-int/lit8 v19, v19, 0x3

    .line 503
    .line 504
    ushr-long v27, v27, v19

    .line 505
    .line 506
    const-wide/16 v29, 0x7

    .line 507
    .line 508
    move-object/from16 v19, v2

    .line 509
    .line 510
    and-long v1, v27, v29

    .line 511
    .line 512
    long-to-int v1, v1

    .line 513
    const/4 v2, -0x1

    .line 514
    add-int/2addr v1, v2

    .line 515
    if-gez v1, :cond_1d

    .line 516
    .line 517
    const/16 v2, 0x2e

    .line 518
    .line 519
    if-ne v6, v2, :cond_1c

    .line 520
    .line 521
    new-instance v1, Lzg5;

    .line 522
    .line 523
    invoke-static {v14, v11, v9}, Lzg5;->e(ILjava/lang/String;I)I

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    const/4 v14, -0x1

    .line 528
    invoke-direct {v1, v7, v14, v2}, Lzg5;-><init>(III)V

    .line 529
    .line 530
    .line 531
    :goto_e
    move-object v7, v1

    .line 532
    goto :goto_11

    .line 533
    :cond_1c
    invoke-static {v15, v12, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    throw v0

    .line 538
    :cond_1d
    const/16 v20, 0x1

    .line 539
    .line 540
    shl-int v1, v20, v1

    .line 541
    .line 542
    and-int v2, v7, v1

    .line 543
    .line 544
    if-nez v2, :cond_1e

    .line 545
    .line 546
    or-int/2addr v7, v1

    .line 547
    move v12, v14

    .line 548
    move-object/from16 v2, v19

    .line 549
    .line 550
    move/from16 v6, v24

    .line 551
    .line 552
    move-object/from16 v15, v25

    .line 553
    .line 554
    goto :goto_d

    .line 555
    :cond_1e
    const-string v0, "repeated flag"

    .line 556
    .line 557
    invoke-static {v0, v12, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    throw v0

    .line 562
    :goto_f
    const/16 v1, 0x39

    .line 563
    .line 564
    if-gt v6, v1, :cond_36

    .line 565
    .line 566
    add-int/lit8 v6, v6, -0x30

    .line 567
    .line 568
    :goto_10
    if-ne v14, v9, :cond_1f

    .line 569
    .line 570
    new-instance v1, Lzg5;

    .line 571
    .line 572
    const/4 v14, -0x1

    .line 573
    invoke-direct {v1, v7, v6, v14}, Lzg5;-><init>(III)V

    .line 574
    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_1f
    add-int/lit8 v1, v14, 0x1

    .line 578
    .line 579
    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    const/16 v15, 0x2e

    .line 584
    .line 585
    if-ne v2, v15, :cond_33

    .line 586
    .line 587
    new-instance v2, Lzg5;

    .line 588
    .line 589
    invoke-static {v1, v11, v9}, Lzg5;->e(ILjava/lang/String;I)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-direct {v2, v7, v6, v1}, Lzg5;-><init>(III)V

    .line 594
    .line 595
    .line 596
    move-object v7, v2

    .line 597
    :goto_11
    sget-object v1, Lyg5;->s:[Lyg5;

    .line 598
    .line 599
    or-int/lit8 v2, v3, 0x20

    .line 600
    .line 601
    add-int/lit8 v2, v2, -0x61

    .line 602
    .line 603
    aget-object v1, v1, v2

    .line 604
    .line 605
    const/4 v2, 0x0

    .line 606
    if-nez v24, :cond_21

    .line 607
    .line 608
    if-eqz v1, :cond_20

    .line 609
    .line 610
    iget v6, v1, Lyg5;->p:I

    .line 611
    .line 612
    const/16 v12, 0x80

    .line 613
    .line 614
    and-int/2addr v6, v12

    .line 615
    if-eqz v6, :cond_20

    .line 616
    .line 617
    goto :goto_12

    .line 618
    :cond_20
    move-object v1, v2

    .line 619
    :cond_21
    :goto_12
    add-int/lit8 v6, v9, 0x1

    .line 620
    .line 621
    if-eqz v1, :cond_27

    .line 622
    .line 623
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    iget v3, v1, Lyg5;->p:I

    .line 627
    .line 628
    iget v9, v1, Lyg5;->o:I

    .line 629
    .line 630
    const/4 v14, 0x1

    .line 631
    if-eq v9, v14, :cond_22

    .line 632
    .line 633
    const/4 v12, 0x2

    .line 634
    if-eq v9, v12, :cond_24

    .line 635
    .line 636
    move/from16 v12, v18

    .line 637
    .line 638
    if-eq v9, v12, :cond_24

    .line 639
    .line 640
    const/4 v12, 0x4

    .line 641
    if-eq v9, v12, :cond_24

    .line 642
    .line 643
    const/4 v12, 0x5

    .line 644
    if-ne v9, v12, :cond_23

    .line 645
    .line 646
    :cond_22
    const/4 v2, 0x1

    .line 647
    goto :goto_13

    .line 648
    :cond_23
    throw v2

    .line 649
    :cond_24
    const/4 v2, 0x0

    .line 650
    :goto_13
    invoke-virtual {v7, v3, v2}, Lzg5;->b(IZ)Z

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-eqz v2, :cond_26

    .line 655
    .line 656
    const/16 v2, 0xa

    .line 657
    .line 658
    if-ge v8, v2, :cond_25

    .line 659
    .line 660
    sget-object v2, Lcm4;->q:Ljava/util/Map;

    .line 661
    .line 662
    invoke-virtual {v7}, Lzg5;->a()Z

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    if-eqz v2, :cond_25

    .line 667
    .line 668
    sget-object v2, Lcm4;->q:Ljava/util/Map;

    .line 669
    .line 670
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    check-cast v1, [Lcm4;

    .line 675
    .line 676
    const-string v2, "default parameter"

    .line 677
    .line 678
    invoke-static {v1, v2}, Lhm4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    aget-object v1, v1, v8

    .line 682
    .line 683
    goto :goto_17

    .line 684
    :cond_25
    new-instance v2, Lcm4;

    .line 685
    .line 686
    invoke-direct {v2, v8, v1, v7}, Lcm4;-><init>(ILyg5;Lzg5;)V

    .line 687
    .line 688
    .line 689
    goto :goto_15

    .line 690
    :cond_26
    const-string v0, "invalid format specifier"

    .line 691
    .line 692
    invoke-static {v5, v6, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    throw v0

    .line 697
    :cond_27
    const/16 v1, 0x74

    .line 698
    .line 699
    const/16 v2, 0xa0

    .line 700
    .line 701
    const-string v12, "invalid format specification"

    .line 702
    .line 703
    if-eq v3, v1, :cond_28

    .line 704
    .line 705
    const/16 v1, 0x54

    .line 706
    .line 707
    if-ne v3, v1, :cond_29

    .line 708
    .line 709
    :cond_28
    const/4 v1, 0x0

    .line 710
    goto :goto_16

    .line 711
    :cond_29
    const/16 v1, 0x68

    .line 712
    .line 713
    if-eq v3, v1, :cond_2a

    .line 714
    .line 715
    const/16 v1, 0x48

    .line 716
    .line 717
    if-ne v3, v1, :cond_2b

    .line 718
    .line 719
    :cond_2a
    const/4 v1, 0x0

    .line 720
    goto :goto_14

    .line 721
    :cond_2b
    invoke-static {v5, v6, v12, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    throw v0

    .line 726
    :goto_14
    invoke-virtual {v7, v2, v1}, Lzg5;->b(IZ)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    if-eqz v2, :cond_2c

    .line 731
    .line 732
    new-instance v2, Ldm4;

    .line 733
    .line 734
    invoke-direct {v2, v7, v8}, Lb70;-><init>(Lzg5;I)V

    .line 735
    .line 736
    .line 737
    :goto_15
    move-object v1, v2

    .line 738
    goto :goto_17

    .line 739
    :cond_2c
    invoke-static {v5, v6, v12, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    throw v0

    .line 744
    :goto_16
    invoke-virtual {v7, v2, v1}, Lzg5;->b(IZ)Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-eqz v2, :cond_32

    .line 749
    .line 750
    add-int/lit8 v9, v9, 0x2

    .line 751
    .line 752
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-gt v9, v1, :cond_31

    .line 757
    .line 758
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    sget-object v2, Lam4;->o:Ljava/util/Map;

    .line 763
    .line 764
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    check-cast v1, Lam4;

    .line 773
    .line 774
    if-eqz v1, :cond_30

    .line 775
    .line 776
    new-instance v2, Lbm4;

    .line 777
    .line 778
    invoke-direct {v2, v7, v8, v1}, Lbm4;-><init>(Lzg5;ILam4;)V

    .line 779
    .line 780
    .line 781
    move-object v1, v2

    .line 782
    move v6, v9

    .line 783
    :goto_17
    iget v2, v1, Lb70;->n:I

    .line 784
    .line 785
    const/16 v3, 0x20

    .line 786
    .line 787
    if-ge v2, v3, :cond_2d

    .line 788
    .line 789
    iget v3, v10, Ltz0;->b:I

    .line 790
    .line 791
    const/16 v20, 0x1

    .line 792
    .line 793
    shl-int v7, v20, v2

    .line 794
    .line 795
    or-int/2addr v3, v7

    .line 796
    iput v3, v10, Ltz0;->b:I

    .line 797
    .line 798
    :cond_2d
    iget v3, v10, Ltz0;->c:I

    .line 799
    .line 800
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    iput v2, v10, Ltz0;->c:I

    .line 805
    .line 806
    iget v2, v10, Ltz0;->d:I

    .line 807
    .line 808
    invoke-static {v2, v5, v11, v4}, Lfm4;->a(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 809
    .line 810
    .line 811
    iget-object v2, v10, Ltz0;->f:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v2, [Ljava/lang/Object;

    .line 814
    .line 815
    iget v3, v1, Lb70;->n:I

    .line 816
    .line 817
    array-length v5, v2

    .line 818
    if-ge v3, v5, :cond_2f

    .line 819
    .line 820
    aget-object v2, v2, v3

    .line 821
    .line 822
    if-eqz v2, :cond_2e

    .line 823
    .line 824
    invoke-virtual {v1, v10, v2}, Lb70;->L(Ltz0;Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    goto :goto_18

    .line 828
    :cond_2e
    const-string v1, "null"

    .line 829
    .line 830
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    goto :goto_18

    .line 834
    :cond_2f
    const-string v1, "[ERROR: MISSING LOG ARGUMENT]"

    .line 835
    .line 836
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    :goto_18
    iput v6, v10, Ltz0;->d:I

    .line 840
    .line 841
    invoke-static {v6, v11}, Lfm4;->b(ILjava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    move-object/from16 v2, v19

    .line 846
    .line 847
    move-object/from16 v3, v21

    .line 848
    .line 849
    move-object/from16 v14, v23

    .line 850
    .line 851
    move-object/from16 v15, v25

    .line 852
    .line 853
    const/4 v12, 0x2

    .line 854
    goto/16 :goto_6

    .line 855
    .line 856
    :cond_30
    const-string v0, "illegal date/time conversion"

    .line 857
    .line 858
    invoke-static {v0, v6, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    throw v0

    .line 863
    :cond_31
    const-string v0, "truncated format specifier"

    .line 864
    .line 865
    invoke-static {v0, v5, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    throw v0

    .line 870
    :cond_32
    invoke-static {v5, v6, v12, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    throw v0

    .line 875
    :cond_33
    const/16 v22, 0x20

    .line 876
    .line 877
    const/16 v26, 0x80

    .line 878
    .line 879
    add-int/lit8 v2, v2, -0x30

    .line 880
    .line 881
    int-to-char v2, v2

    .line 882
    const/16 v15, 0xa

    .line 883
    .line 884
    if-ge v2, v15, :cond_35

    .line 885
    .line 886
    mul-int/lit8 v6, v6, 0xa

    .line 887
    .line 888
    add-int/2addr v6, v2

    .line 889
    const v2, 0xf423f

    .line 890
    .line 891
    .line 892
    if-gt v6, v2, :cond_34

    .line 893
    .line 894
    move v14, v1

    .line 895
    const/16 v18, 0x3

    .line 896
    .line 897
    goto/16 :goto_10

    .line 898
    .line 899
    :cond_34
    const-string v0, "width too large"

    .line 900
    .line 901
    invoke-static {v12, v9, v0, v11}, Lv00;->a(IILjava/lang/String;Ljava/lang/String;)Lv00;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    throw v0

    .line 906
    :cond_35
    const-string v0, "invalid width character"

    .line 907
    .line 908
    invoke-static {v0, v14, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    throw v0

    .line 913
    :cond_36
    invoke-static {v15, v12, v11}, Lv00;->b(Ljava/lang/String;ILjava/lang/String;)Lv00;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    throw v0

    .line 918
    :cond_37
    move-object/from16 v19, v2

    .line 919
    .line 920
    move-object/from16 v25, v15

    .line 921
    .line 922
    const/16 v15, 0xa

    .line 923
    .line 924
    add-int/lit8 v9, v9, 0x1

    .line 925
    .line 926
    move-object/from16 v15, v25

    .line 927
    .line 928
    const/16 v18, 0x3

    .line 929
    .line 930
    goto/16 :goto_9

    .line 931
    .line 932
    :cond_38
    new-instance v0, Lv00;

    .line 933
    .line 934
    const/4 v14, -0x1

    .line 935
    invoke-static {v5, v14, v6, v11}, Lv00;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    const/16 v2, 0xb

    .line 940
    .line 941
    invoke-direct {v0, v1, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 942
    .line 943
    .line 944
    throw v0

    .line 945
    :cond_39
    const/16 v2, 0xb

    .line 946
    .line 947
    const/4 v14, -0x1

    .line 948
    new-instance v0, Lv00;

    .line 949
    .line 950
    invoke-static {v5, v14, v6, v11}, Lv00;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-direct {v0, v1, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 955
    .line 956
    .line 957
    throw v0

    .line 958
    :cond_3a
    move-object/from16 v19, v2

    .line 959
    .line 960
    move-object/from16 v21, v3

    .line 961
    .line 962
    move-object/from16 v23, v14

    .line 963
    .line 964
    move-object/from16 v25, v15

    .line 965
    .line 966
    const/4 v14, -0x1

    .line 967
    iget v1, v10, Ltz0;->b:I

    .line 968
    .line 969
    add-int/lit8 v2, v1, 0x1

    .line 970
    .line 971
    and-int/2addr v2, v1

    .line 972
    if-nez v2, :cond_3f

    .line 973
    .line 974
    iget v2, v10, Ltz0;->c:I

    .line 975
    .line 976
    const/16 v3, 0x1f

    .line 977
    .line 978
    if-le v2, v3, :cond_3b

    .line 979
    .line 980
    if-ne v1, v14, :cond_3f

    .line 981
    .line 982
    :cond_3b
    iget v1, v10, Ltz0;->d:I

    .line 983
    .line 984
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    invoke-static {v1, v2, v11, v4}, Lfm4;->a(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 989
    .line 990
    .line 991
    iget-object v1, v0, Lcg5;->f:Lel4;

    .line 992
    .line 993
    if-eqz v1, :cond_3c

    .line 994
    .line 995
    const/4 v6, 0x1

    .line 996
    goto :goto_19

    .line 997
    :cond_3c
    const/4 v6, 0x0

    .line 998
    :goto_19
    if-eqz v6, :cond_3e

    .line 999
    .line 1000
    iget-object v1, v0, Lcg5;->g:[Ljava/lang/Object;

    .line 1001
    .line 1002
    if-eqz v1, :cond_3d

    .line 1003
    .line 1004
    array-length v1, v1

    .line 1005
    iget v2, v10, Ltz0;->c:I

    .line 1006
    .line 1007
    const/16 v20, 0x1

    .line 1008
    .line 1009
    add-int/lit8 v2, v2, 0x1

    .line 1010
    .line 1011
    if-le v1, v2, :cond_44

    .line 1012
    .line 1013
    const-string v1, " [ERROR: UNUSED LOG ARGUMENTS]"

    .line 1014
    .line 1015
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    goto :goto_1b

    .line 1019
    :cond_3d
    invoke-static/range {v25 .. v25}, Lk21;->n(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    return-void

    .line 1023
    :cond_3e
    invoke-static/range {v23 .. v23}, Lk21;->n(Ljava/lang/String;)V

    .line 1024
    .line 1025
    .line 1026
    return-void

    .line 1027
    :cond_3f
    not-int v0, v1

    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 1029
    .line 1030
    .line 1031
    move-result v0

    .line 1032
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    const-string v1, "unreferenced arguments [first missing index=%d]"

    .line 1041
    .line 1042
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    new-instance v1, Lv00;

    .line 1047
    .line 1048
    const/16 v2, 0xb

    .line 1049
    .line 1050
    invoke-direct {v1, v0, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 1051
    .line 1052
    .line 1053
    throw v1

    .line 1054
    :cond_40
    move-object/from16 v25, v15

    .line 1055
    .line 1056
    invoke-static/range {v25 .. v25}, Lk21;->n(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    return-void

    .line 1060
    :cond_41
    move-object/from16 v23, v14

    .line 1061
    .line 1062
    invoke-static/range {v23 .. v23}, Lk21;->n(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    return-void

    .line 1066
    :cond_42
    move-object/from16 v19, v2

    .line 1067
    .line 1068
    move-object/from16 v21, v3

    .line 1069
    .line 1070
    const/16 v20, 0x1

    .line 1071
    .line 1072
    if-nez v4, :cond_43

    .line 1073
    .line 1074
    move/from16 v7, v20

    .line 1075
    .line 1076
    goto :goto_1a

    .line 1077
    :cond_43
    const/4 v7, 0x0

    .line 1078
    :goto_1a
    if-eqz v7, :cond_4b

    .line 1079
    .line 1080
    iget-object v1, v0, Lcg5;->g:[Ljava/lang/Object;

    .line 1081
    .line 1082
    if-eqz v1, :cond_4a

    .line 1083
    .line 1084
    const/16 v16, 0x0

    .line 1085
    .line 1086
    aget-object v1, v1, v16

    .line 1087
    .line 1088
    invoke-static {v1}, Lbh5;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    :cond_44
    :goto_1b
    sget v1, Ldl4;->a:I

    .line 1096
    .line 1097
    new-instance v1, Lah5;

    .line 1098
    .line 1099
    invoke-direct {v1, v13}, Lah5;-><init>(Ljava/lang/StringBuilder;)V

    .line 1100
    .line 1101
    .line 1102
    move-object/from16 v2, p4

    .line 1103
    .line 1104
    move-object/from16 v5, v19

    .line 1105
    .line 1106
    invoke-virtual {v5, v2, v1}, Lal4;->a(Lfh5;Lah5;)V

    .line 1107
    .line 1108
    .line 1109
    iget-boolean v1, v1, Lah5;->b:Z

    .line 1110
    .line 1111
    if-eqz v1, :cond_45

    .line 1112
    .line 1113
    const-string v1, " ]"

    .line 1114
    .line 1115
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    :cond_45
    :goto_1c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    :goto_1d
    invoke-virtual {v0}, Lcg5;->d()Lye4;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    sget-object v1, Lfg5;->a:Log5;

    .line 1127
    .line 1128
    invoke-virtual {v0, v1}, Lye4;->e(Log5;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    check-cast v0, Ljava/lang/Throwable;

    .line 1133
    .line 1134
    invoke-static/range {v21 .. v21}, Lil4;->c(Ljava/util/logging/Level;)I

    .line 1135
    .line 1136
    .line 1137
    move-result v1

    .line 1138
    const/4 v12, 0x2

    .line 1139
    if-eq v1, v12, :cond_49

    .line 1140
    .line 1141
    const/4 v12, 0x3

    .line 1142
    if-eq v1, v12, :cond_48

    .line 1143
    .line 1144
    const/4 v12, 0x4

    .line 1145
    if-eq v1, v12, :cond_47

    .line 1146
    .line 1147
    const/4 v12, 0x5

    .line 1148
    if-eq v1, v12, :cond_46

    .line 1149
    .line 1150
    move-object/from16 v1, p1

    .line 1151
    .line 1152
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    .line 1154
    .line 1155
    return-void

    .line 1156
    :cond_46
    move-object/from16 v1, p1

    .line 1157
    .line 1158
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    .line 1160
    .line 1161
    return-void

    .line 1162
    :cond_47
    move-object/from16 v1, p1

    .line 1163
    .line 1164
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    .line 1166
    .line 1167
    return-void

    .line 1168
    :cond_48
    move-object/from16 v1, p1

    .line 1169
    .line 1170
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1171
    .line 1172
    .line 1173
    return-void

    .line 1174
    :cond_49
    move-object/from16 v1, p1

    .line 1175
    .line 1176
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .line 1178
    .line 1179
    return-void

    .line 1180
    :cond_4a
    invoke-static {v10}, Lk21;->n(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    return-void

    .line 1184
    :cond_4b
    invoke-static {v11}, Lk21;->n(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    return-void

    .line 1188
    :cond_4c
    const-string v0, "cannot request log site information prior to postProcess()"

    .line 1189
    .line 1190
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/logging/Level;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lil4;->c(Ljava/util/logging/Level;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lpl4;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-string p0, "all"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final b(Lcg5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpl4;->e:Lfh5;

    .line 2
    .line 3
    iget-object v1, p0, Lpl4;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lpl4;->c:Ljava/util/logging/Level;

    .line 6
    .line 7
    iget-object p0, p0, Lpl4;->d:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {p1, v1, v2, p0, v0}, Lpl4;->d(Lcg5;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lfh5;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
