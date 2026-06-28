.class public final Lzt0;
.super Ll13;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final w:[C


# instance fields
.field public q:Z

.field public r:Ljava/lang/String;

.field public s:J

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lzt0;->w:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ll13;-><init>(Ljava/nio/charset/Charset;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lzt0;->q:Z

    .line 6
    .line 7
    return-void
.end method

.method public static k([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v1, v0, 0x2

    .line 3
    .line 4
    new-array v1, v1, [C

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    aget-byte v3, p0, v2

    .line 10
    .line 11
    and-int/lit8 v4, v3, 0xf

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xf0

    .line 14
    .line 15
    shr-int/lit8 v3, v3, 0x4

    .line 16
    .line 17
    mul-int/lit8 v5, v2, 0x2

    .line 18
    .line 19
    sget-object v6, Lzt0;->w:[C

    .line 20
    .line 21
    aget-char v3, v6, v3

    .line 22
    .line 23
    aput-char v3, v1, v5

    .line 24
    .line 25
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    aget-char v3, v6, v4

    .line 28
    .line 29
    aput-char v3, v1, v5

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public final a(Lyk0;Lom1;)Lgj1;
    .locals 1

    .line 1
    new-instance v0, Lvu;

    .line 2
    .line 3
    invoke-direct {v0}, Lvu;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lzt0;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final b(Lyk0;Lom1;Lul1;)Lgj1;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "Credentials"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "realm"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_1f

    .line 19
    .line 20
    const-string v4, "nonce"

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_1e

    .line 27
    .line 28
    invoke-interface {v1}, Lom1;->getRequestLine()Ld73;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lhv;

    .line 33
    .line 34
    iget-object v5, v5, Lhv;->o:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v6, v0, Ll13;->o:Ljava/util/HashMap;

    .line 37
    .line 38
    const-string v7, "methodname"

    .line 39
    .line 40
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lom1;->getRequestLine()Ld73;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lhv;

    .line 48
    .line 49
    iget-object v5, v5, Lhv;->p:Ljava/lang/String;

    .line 50
    .line 51
    const-string v8, "uri"

    .line 52
    .line 53
    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v5, "charset"

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-nez v9, :cond_2

    .line 63
    .line 64
    invoke-interface {v1}, Lim1;->getParams()Lkm1;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string v10, "http.auth.credential-charset"

    .line 69
    .line 70
    invoke-interface {v9, v10}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Ljava/lang/String;

    .line 75
    .line 76
    if-nez v9, :cond_1

    .line 77
    .line 78
    iget-object v9, v0, Ll13;->p:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    sget-object v9, Luf0;->b:Ljava/nio/charset/Charset;

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    :cond_1
    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0, v8}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v0, v2}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-virtual {v0, v4}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const-string v11, "opaque"

    .line 105
    .line 106
    invoke-virtual {v0, v11}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v0, v7}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const-string v13, "algorithm"

    .line 115
    .line 116
    invoke-virtual {v0, v13}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    const-string v15, "MD5"

    .line 121
    .line 122
    if-nez v14, :cond_3

    .line 123
    .line 124
    move-object v14, v15

    .line 125
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    .line 126
    .line 127
    move-object/from16 p3, v15

    .line 128
    .line 129
    const/16 v15, 0x8

    .line 130
    .line 131
    invoke-direct {v3, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 132
    .line 133
    .line 134
    const-string v15, "qop"

    .line 135
    .line 136
    move-object/from16 v16, v11

    .line 137
    .line 138
    invoke-virtual {v0, v15}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    move-object/from16 v17, v12

    .line 143
    .line 144
    const-string v12, "auth-int"

    .line 145
    .line 146
    move-object/from16 v20, v13

    .line 147
    .line 148
    const-string v13, "auth"

    .line 149
    .line 150
    move-object/from16 v21, v15

    .line 151
    .line 152
    if-eqz v11, :cond_7

    .line 153
    .line 154
    new-instance v15, Ljava/util/StringTokenizer;

    .line 155
    .line 156
    move-object/from16 v23, v8

    .line 157
    .line 158
    const-string v8, ","

    .line 159
    .line 160
    invoke-direct {v15, v11, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_4

    .line 168
    .line 169
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    move-object/from16 v24, v15

    .line 178
    .line 179
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 180
    .line 181
    invoke-virtual {v8, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-object/from16 v15, v24

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    instance-of v8, v1, Lzl1;

    .line 192
    .line 193
    if-eqz v8, :cond_5

    .line 194
    .line 195
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_5

    .line 200
    .line 201
    const/4 v8, 0x1

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_6

    .line 208
    .line 209
    const/4 v8, 0x2

    .line 210
    goto :goto_2

    .line 211
    :cond_6
    const/4 v8, -0x1

    .line 212
    :goto_2
    const/4 v15, -0x1

    .line 213
    goto :goto_3

    .line 214
    :cond_7
    move-object/from16 v23, v8

    .line 215
    .line 216
    const/4 v8, 0x0

    .line 217
    goto :goto_2

    .line 218
    :goto_3
    if-eq v8, v15, :cond_1d

    .line 219
    .line 220
    invoke-virtual {v0, v5}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-nez v5, :cond_8

    .line 225
    .line 226
    const-string v5, "ISO-8859-1"

    .line 227
    .line 228
    :cond_8
    const-string v11, "MD5-sess"

    .line 229
    .line 230
    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    if-eqz v15, :cond_9

    .line 235
    .line 236
    move-object/from16 v15, p3

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    move-object v15, v14

    .line 240
    :goto_4
    :try_start_0
    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 241
    .line 242
    .line 243
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    invoke-interface/range {p1 .. p1}, Lyk0;->b()Ljava/security/Principal;

    .line 245
    .line 246
    .line 247
    move-result-object v18

    .line 248
    move-object/from16 p3, v12

    .line 249
    .line 250
    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    move-object/from16 v18, v4

    .line 255
    .line 256
    invoke-interface/range {p1 .. p1}, Lyk0;->a()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    move-object/from16 v24, v2

    .line 261
    .line 262
    iget-object v2, v0, Lzt0;->r:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    move/from16 p1, v2

    .line 269
    .line 270
    move-object/from16 v25, v3

    .line 271
    .line 272
    const-wide/16 v26, 0x1

    .line 273
    .line 274
    if-eqz p1, :cond_a

    .line 275
    .line 276
    iget-wide v2, v0, Lzt0;->s:J

    .line 277
    .line 278
    add-long v2, v2, v26

    .line 279
    .line 280
    iput-wide v2, v0, Lzt0;->s:J

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_a
    move-wide/from16 v2, v26

    .line 284
    .line 285
    iput-wide v2, v0, Lzt0;->s:J

    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    iput-object v2, v0, Lzt0;->t:Ljava/lang/String;

    .line 289
    .line 290
    iput-object v10, v0, Lzt0;->r:Ljava/lang/String;

    .line 291
    .line 292
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const/16 v3, 0x100

    .line 295
    .line 296
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    .line 298
    .line 299
    new-instance v3, Ljava/util/Formatter;

    .line 300
    .line 301
    move-object/from16 v26, v13

    .line 302
    .line 303
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 304
    .line 305
    invoke-direct {v3, v2, v13}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 306
    .line 307
    .line 308
    move-object v13, v6

    .line 309
    move-object/from16 v27, v7

    .line 310
    .line 311
    iget-wide v6, v0, Lzt0;->s:J

    .line 312
    .line 313
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    const-string v7, "%08x"

    .line 322
    .line 323
    invoke-virtual {v3, v7, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    iget-object v6, v0, Lzt0;->t:Ljava/lang/String;

    .line 334
    .line 335
    if-nez v6, :cond_b

    .line 336
    .line 337
    new-instance v6, Ljava/security/SecureRandom;

    .line 338
    .line 339
    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 340
    .line 341
    .line 342
    const/16 v7, 0x8

    .line 343
    .line 344
    new-array v7, v7, [B

    .line 345
    .line 346
    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 347
    .line 348
    .line 349
    invoke-static {v7}, Lzt0;->k([B)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    iput-object v6, v0, Lzt0;->t:Ljava/lang/String;

    .line 354
    .line 355
    :cond_b
    const/4 v6, 0x0

    .line 356
    iput-object v6, v0, Lzt0;->u:Ljava/lang/String;

    .line 357
    .line 358
    iput-object v6, v0, Lzt0;->v:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    const/16 v11, 0x3a

    .line 365
    .line 366
    if-eqz v7, :cond_c

    .line 367
    .line 368
    const/4 v7, 0x0

    .line 369
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-static {v4, v5}, Lqn0;->s(Ljava/lang/String;Ljava/lang/String;)[B

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v15, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-static {v4}, Lzt0;->k([B)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget-object v4, v0, Lzt0;->t:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    iput-object v4, v0, Lzt0;->u:Ljava/lang/String;

    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_c
    const/4 v7, 0x0

    .line 431
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    iput-object v4, v0, Lzt0;->u:Ljava/lang/String;

    .line 454
    .line 455
    :goto_6
    iget-object v4, v0, Lzt0;->u:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {v4, v5}, Lqn0;->s(Ljava/lang/String;Ljava/lang/String;)[B

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v15, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    invoke-static {v4}, Lzt0;->k([B)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    const/4 v7, 0x2

    .line 470
    if-ne v8, v7, :cond_d

    .line 471
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    move-object/from16 v6, v27

    .line 478
    .line 479
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    iput-object v1, v0, Lzt0;->v:Ljava/lang/String;

    .line 493
    .line 494
    move-object/from16 v11, v26

    .line 495
    .line 496
    goto/16 :goto_9

    .line 497
    .line 498
    :cond_d
    move-object/from16 v6, v27

    .line 499
    .line 500
    const/4 v7, 0x1

    .line 501
    if-ne v8, v7, :cond_12

    .line 502
    .line 503
    instance-of v7, v1, Lzl1;

    .line 504
    .line 505
    if-eqz v7, :cond_e

    .line 506
    .line 507
    check-cast v1, Lzl1;

    .line 508
    .line 509
    invoke-interface {v1}, Lzl1;->getEntity()Lxl1;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    goto :goto_7

    .line 514
    :cond_e
    const/4 v1, 0x0

    .line 515
    :goto_7
    if-eqz v1, :cond_10

    .line 516
    .line 517
    invoke-interface {v1}, Lxl1;->isRepeatable()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-nez v7, :cond_10

    .line 522
    .line 523
    move-object/from16 v7, v25

    .line 524
    .line 525
    move-object/from16 v11, v26

    .line 526
    .line 527
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-eqz v1, :cond_f

    .line 532
    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const/16 v6, 0x3a

    .line 542
    .line 543
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iput-object v1, v0, Lzt0;->v:Ljava/lang/String;

    .line 554
    .line 555
    const/16 v19, 0x2

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_f
    new-instance v0, Luj;

    .line 559
    .line 560
    const-string v1, "Qop auth-int cannot be used with a non-repeatable entity"

    .line 561
    .line 562
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v0

    .line 570
    :cond_10
    move-object/from16 v11, v26

    .line 571
    .line 572
    new-instance v7, Lyl1;

    .line 573
    .line 574
    invoke-direct {v7, v15}, Lyl1;-><init>(Ljava/security/MessageDigest;)V

    .line 575
    .line 576
    .line 577
    if-eqz v1, :cond_11

    .line 578
    .line 579
    :try_start_1
    invoke-interface {v1, v7}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 580
    .line 581
    .line 582
    :cond_11
    invoke-virtual {v7}, Lyl1;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const/16 v6, 0x3a

    .line 594
    .line 595
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    iget-object v6, v7, Lyl1;->p:[B

    .line 605
    .line 606
    invoke-static {v6}, Lzt0;->k([B)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    iput-object v1, v0, Lzt0;->v:Ljava/lang/String;

    .line 618
    .line 619
    move/from16 v19, v8

    .line 620
    .line 621
    :goto_8
    move/from16 v8, v19

    .line 622
    .line 623
    goto :goto_9

    .line 624
    :catch_0
    move-exception v0

    .line 625
    new-instance v1, Luj;

    .line 626
    .line 627
    const-string v2, "I/O error reading entity content"

    .line 628
    .line 629
    invoke-direct {v1, v2, v0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    .line 631
    .line 632
    throw v1

    .line 633
    :cond_12
    move-object/from16 v11, v26

    .line 634
    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const/16 v6, 0x3a

    .line 644
    .line 645
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    iput-object v1, v0, Lzt0;->v:Ljava/lang/String;

    .line 656
    .line 657
    :goto_9
    iget-object v1, v0, Lzt0;->v:Ljava/lang/String;

    .line 658
    .line 659
    invoke-static {v1, v5}, Lqn0;->s(Ljava/lang/String;Ljava/lang/String;)[B

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-virtual {v15, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-static {v1}, Lzt0;->k([B)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    if-nez v8, :cond_13

    .line 672
    .line 673
    const/4 v7, 0x0

    .line 674
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    const/16 v6, 0x3a

    .line 681
    .line 682
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    goto :goto_b

    .line 699
    :cond_13
    const/16 v6, 0x3a

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    iget-object v4, v0, Lzt0;->t:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    const/4 v4, 0x1

    .line 732
    if-ne v8, v4, :cond_14

    .line 733
    .line 734
    move-object/from16 v4, p3

    .line 735
    .line 736
    goto :goto_a

    .line 737
    :cond_14
    move-object v4, v11

    .line 738
    :goto_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    :goto_b
    sget-object v2, Luf0;->b:Ljava/nio/charset/Charset;

    .line 752
    .line 753
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v15, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-static {v1}, Lzt0;->k([B)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    new-instance v2, Lb40;

    .line 766
    .line 767
    const/16 v4, 0x80

    .line 768
    .line 769
    invoke-direct {v2, v4}, Lb40;-><init>(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0}, Loj;->g()Z

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    if-eqz v4, :cond_15

    .line 777
    .line 778
    const-string v4, "Proxy-Authorization"

    .line 779
    .line 780
    invoke-virtual {v2, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    goto :goto_c

    .line 784
    :cond_15
    const-string v4, "Authorization"

    .line 785
    .line 786
    invoke-virtual {v2, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    :goto_c
    const-string v4, ": Digest "

    .line 790
    .line 791
    invoke-virtual {v2, v4}, Lb40;->b(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    new-instance v4, Ljava/util/ArrayList;

    .line 795
    .line 796
    const/16 v5, 0x14

    .line 797
    .line 798
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 799
    .line 800
    .line 801
    new-instance v5, Lev;

    .line 802
    .line 803
    const-string v6, "username"

    .line 804
    .line 805
    invoke-direct {v5, v6, v12}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    new-instance v5, Lev;

    .line 812
    .line 813
    move-object/from16 v6, v24

    .line 814
    .line 815
    invoke-direct {v5, v6, v9}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    new-instance v5, Lev;

    .line 822
    .line 823
    move-object/from16 v6, v18

    .line 824
    .line 825
    invoke-direct {v5, v6, v10}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    new-instance v5, Lev;

    .line 832
    .line 833
    move-object/from16 v6, v23

    .line 834
    .line 835
    invoke-direct {v5, v6, v13}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    new-instance v5, Lev;

    .line 842
    .line 843
    const-string v6, "response"

    .line 844
    .line 845
    invoke-direct {v5, v6, v1}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    const-string v1, "nc"

    .line 852
    .line 853
    if-eqz v8, :cond_17

    .line 854
    .line 855
    new-instance v5, Lev;

    .line 856
    .line 857
    const/4 v6, 0x1

    .line 858
    if-ne v8, v6, :cond_16

    .line 859
    .line 860
    move-object/from16 v12, p3

    .line 861
    .line 862
    :goto_d
    move-object/from16 v6, v21

    .line 863
    .line 864
    goto :goto_e

    .line 865
    :cond_16
    move-object v12, v11

    .line 866
    goto :goto_d

    .line 867
    :goto_e
    invoke-direct {v5, v6, v12}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    new-instance v5, Lev;

    .line 874
    .line 875
    invoke-direct {v5, v1, v3}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    new-instance v3, Lev;

    .line 882
    .line 883
    const-string v5, "cnonce"

    .line 884
    .line 885
    iget-object v0, v0, Lzt0;->t:Ljava/lang/String;

    .line 886
    .line 887
    invoke-direct {v3, v5, v0}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    goto :goto_f

    .line 894
    :cond_17
    move-object/from16 v6, v21

    .line 895
    .line 896
    :goto_f
    new-instance v0, Lev;

    .line 897
    .line 898
    move-object/from16 v3, v20

    .line 899
    .line 900
    invoke-direct {v0, v3, v14}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    if-eqz v17, :cond_18

    .line 907
    .line 908
    new-instance v0, Lev;

    .line 909
    .line 910
    move-object/from16 v8, v16

    .line 911
    .line 912
    move-object/from16 v5, v17

    .line 913
    .line 914
    invoke-direct {v0, v8, v5}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    :cond_18
    move v0, v7

    .line 921
    :goto_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 922
    .line 923
    .line 924
    move-result v5

    .line 925
    if-ge v0, v5, :cond_1c

    .line 926
    .line 927
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v5

    .line 931
    check-cast v5, Lev;

    .line 932
    .line 933
    if-lez v0, :cond_19

    .line 934
    .line 935
    const-string v8, ", "

    .line 936
    .line 937
    invoke-virtual {v2, v8}, Lb40;->b(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    :cond_19
    iget-object v8, v5, Lev;->n:Ljava/lang/String;

    .line 941
    .line 942
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v9

    .line 946
    if-nez v9, :cond_1b

    .line 947
    .line 948
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v9

    .line 952
    if-nez v9, :cond_1b

    .line 953
    .line 954
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v8

    .line 958
    if-eqz v8, :cond_1a

    .line 959
    .line 960
    goto :goto_12

    .line 961
    :cond_1a
    move/from16 v22, v7

    .line 962
    .line 963
    :goto_11
    const/4 v8, 0x1

    .line 964
    goto :goto_13

    .line 965
    :cond_1b
    :goto_12
    const/16 v22, 0x1

    .line 966
    .line 967
    goto :goto_11

    .line 968
    :goto_13
    xor-int/lit8 v9, v22, 0x1

    .line 969
    .line 970
    invoke-static {v2, v5, v9}, Lbi4;->r(Lb40;Lsh2;Z)V

    .line 971
    .line 972
    .line 973
    add-int/lit8 v0, v0, 0x1

    .line 974
    .line 975
    goto :goto_10

    .line 976
    :cond_1c
    new-instance v0, Lcz;

    .line 977
    .line 978
    invoke-direct {v0, v2}, Lcz;-><init>(Lb40;)V

    .line 979
    .line 980
    .line 981
    return-object v0

    .line 982
    :catch_1
    :try_start_2
    new-instance v0, Lq74;

    .line 983
    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    .line 987
    .line 988
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v1

    .line 998
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    throw v0
    :try_end_2
    .catch Lq74; {:try_start_2 .. :try_end_2} :catch_2

    .line 1002
    :catch_2
    new-instance v0, Luj;

    .line 1003
    .line 1004
    const-string v1, "Unsuppported digest algorithm: "

    .line 1005
    .line 1006
    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1015
    .line 1016
    .line 1017
    throw v0

    .line 1018
    :cond_1d
    new-instance v0, Luj;

    .line 1019
    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    const-string v2, "None of the qop methods is supported: "

    .line 1023
    .line 1024
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw v0

    .line 1042
    :cond_1e
    new-instance v0, Luj;

    .line 1043
    .line 1044
    const-string v1, "missing nonce in challenge"

    .line 1045
    .line 1046
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    throw v0

    .line 1054
    :cond_1f
    new-instance v0, Luj;

    .line 1055
    .line 1056
    const-string v1, "missing realm in challenge"

    .line 1057
    .line 1058
    invoke-static {v1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "digest"

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Z
    .locals 2

    .line 1
    const-string v0, "stale"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ll13;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "true"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-boolean p0, p0, Lzt0;->q:Z

    .line 18
    .line 19
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final i(Lgj1;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loj;->i(Lgj1;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lzt0;->q:Z

    .line 6
    .line 7
    iget-object p0, p0, Ll13;->o:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Lo92;

    .line 17
    .line 18
    const-string p1, "Authentication challenge is empty"

    .line 19
    .line 20
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DIGEST [complete="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lzt0;->q:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", nonce="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lzt0;->r:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", nc="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lzt0;->s:J

    .line 29
    .line 30
    const-string p0, "]"

    .line 31
    .line 32
    invoke-static {v0, v1, v2, p0}, Ldi0;->x(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
