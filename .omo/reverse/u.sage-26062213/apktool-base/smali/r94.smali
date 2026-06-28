.class public final Lr94;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lr94;

.field public static final b:Lpy2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr94;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr94;->a:Lr94;

    .line 7
    .line 8
    new-instance v0, Lpy2;

    .line 9
    .line 10
    const-string v1, "kotlin.uuid.Uuid"

    .line 11
    .line 12
    sget-object v2, Lny2;->X:Lny2;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lpy2;-><init>(Ljava/lang/String;Lny2;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lr94;->b:Lpy2;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 24

    .line 1
    invoke-interface/range {p1 .. p1}, Lvn0;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    const-string v6, "a hexadecimal digit"

    .line 18
    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    const/16 v9, 0x20

    .line 22
    .line 23
    if-eq v1, v9, :cond_11

    .line 24
    .line 25
    const/16 v10, 0x24

    .line 26
    .line 27
    if-eq v1, v10, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v4, 0x40

    .line 43
    .line 44
    if-gt v3, v4, :cond_0

    .line 45
    .line 46
    move-object v3, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "..."

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "\" of length "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    move-wide v11, v4

    .line 82
    :goto_1
    const/16 v1, 0x8

    .line 83
    .line 84
    if-ge v8, v1, :cond_3

    .line 85
    .line 86
    shl-long/2addr v11, v7

    .line 87
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    ushr-int/lit8 v13, v1, 0x8

    .line 92
    .line 93
    if-nez v13, :cond_2

    .line 94
    .line 95
    sget-object v13, Lqj1;->b:[J

    .line 96
    .line 97
    aget-wide v14, v13, v1

    .line 98
    .line 99
    cmp-long v1, v14, v4

    .line 100
    .line 101
    if-ltz v1, :cond_2

    .line 102
    .line 103
    or-long/2addr v11, v14

    .line 104
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v0, v8, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v2

    .line 111
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    const-string v13, "\'-\' (hyphen)"

    .line 116
    .line 117
    const/16 v14, 0x2d

    .line 118
    .line 119
    if-ne v8, v14, :cond_10

    .line 120
    .line 121
    const/16 v1, 0x9

    .line 122
    .line 123
    move-wide v15, v4

    .line 124
    :goto_2
    const/16 v8, 0xd

    .line 125
    .line 126
    if-ge v1, v8, :cond_5

    .line 127
    .line 128
    shl-long/2addr v15, v7

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    ushr-int/lit8 v17, v8, 0x8

    .line 134
    .line 135
    if-nez v17, :cond_4

    .line 136
    .line 137
    sget-object v17, Lqj1;->b:[J

    .line 138
    .line 139
    aget-wide v18, v17, v8

    .line 140
    .line 141
    cmp-long v8, v18, v4

    .line 142
    .line 143
    if-ltz v8, :cond_4

    .line 144
    .line 145
    or-long v15, v15, v18

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    invoke-static {v0, v1, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v2

    .line 154
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-ne v1, v14, :cond_f

    .line 159
    .line 160
    const/16 v1, 0xe

    .line 161
    .line 162
    move-wide/from16 v17, v4

    .line 163
    .line 164
    :goto_3
    const/16 v8, 0x12

    .line 165
    .line 166
    if-ge v1, v8, :cond_7

    .line 167
    .line 168
    shl-long v17, v17, v7

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    ushr-int/lit8 v19, v8, 0x8

    .line 175
    .line 176
    if-nez v19, :cond_6

    .line 177
    .line 178
    sget-object v19, Lqj1;->b:[J

    .line 179
    .line 180
    aget-wide v20, v19, v8

    .line 181
    .line 182
    cmp-long v8, v20, v4

    .line 183
    .line 184
    if-ltz v8, :cond_6

    .line 185
    .line 186
    or-long v17, v17, v20

    .line 187
    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    invoke-static {v0, v1, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v2

    .line 195
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ne v1, v14, :cond_e

    .line 200
    .line 201
    const/16 v1, 0x13

    .line 202
    .line 203
    move-wide/from16 v19, v4

    .line 204
    .line 205
    :goto_4
    const/16 v8, 0x17

    .line 206
    .line 207
    if-ge v1, v8, :cond_9

    .line 208
    .line 209
    shl-long v19, v19, v7

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    ushr-int/lit8 v21, v8, 0x8

    .line 216
    .line 217
    if-nez v21, :cond_8

    .line 218
    .line 219
    sget-object v21, Lqj1;->b:[J

    .line 220
    .line 221
    aget-wide v22, v21, v8

    .line 222
    .line 223
    cmp-long v8, v22, v4

    .line 224
    .line 225
    if-ltz v8, :cond_8

    .line 226
    .line 227
    or-long v19, v19, v22

    .line 228
    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    invoke-static {v0, v1, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2

    .line 236
    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-ne v1, v14, :cond_d

    .line 241
    .line 242
    const/16 v1, 0x18

    .line 243
    .line 244
    move-wide v13, v4

    .line 245
    :goto_5
    if-ge v1, v10, :cond_b

    .line 246
    .line 247
    shl-long/2addr v13, v7

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    ushr-int/lit8 v21, v8, 0x8

    .line 253
    .line 254
    if-nez v21, :cond_a

    .line 255
    .line 256
    sget-object v21, Lqj1;->b:[J

    .line 257
    .line 258
    aget-wide v22, v21, v8

    .line 259
    .line 260
    cmp-long v8, v22, v4

    .line 261
    .line 262
    if-ltz v8, :cond_a

    .line 263
    .line 264
    or-long v13, v13, v22

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_a
    invoke-static {v0, v1, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v2

    .line 273
    :cond_b
    shl-long v0, v11, v9

    .line 274
    .line 275
    shl-long v2, v15, v3

    .line 276
    .line 277
    or-long/2addr v0, v2

    .line 278
    or-long v0, v0, v17

    .line 279
    .line 280
    const/16 v2, 0x30

    .line 281
    .line 282
    shl-long v2, v19, v2

    .line 283
    .line 284
    or-long/2addr v2, v13

    .line 285
    cmp-long v6, v0, v4

    .line 286
    .line 287
    if-nez v6, :cond_c

    .line 288
    .line 289
    cmp-long v4, v2, v4

    .line 290
    .line 291
    if-nez v4, :cond_c

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_c
    new-instance v4, Lp94;

    .line 295
    .line 296
    invoke-direct {v4, v0, v1, v2, v3}, Lp94;-><init>(JJ)V

    .line 297
    .line 298
    .line 299
    return-object v4

    .line 300
    :cond_d
    invoke-static {v0, v8, v13}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v2

    .line 304
    :cond_e
    invoke-static {v0, v8, v13}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v2

    .line 308
    :cond_f
    invoke-static {v0, v8, v13}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v2

    .line 312
    :cond_10
    invoke-static {v0, v1, v13}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v2

    .line 316
    :cond_11
    move-wide v10, v4

    .line 317
    :goto_6
    if-ge v8, v3, :cond_13

    .line 318
    .line 319
    shl-long/2addr v10, v7

    .line 320
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    ushr-int/lit8 v12, v1, 0x8

    .line 325
    .line 326
    if-nez v12, :cond_12

    .line 327
    .line 328
    sget-object v12, Lqj1;->b:[J

    .line 329
    .line 330
    aget-wide v13, v12, v1

    .line 331
    .line 332
    cmp-long v1, v13, v4

    .line 333
    .line 334
    if-ltz v1, :cond_12

    .line 335
    .line 336
    or-long/2addr v10, v13

    .line 337
    add-int/lit8 v8, v8, 0x1

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_12
    invoke-static {v0, v8, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v2

    .line 344
    :cond_13
    move-wide v12, v4

    .line 345
    :goto_7
    if-ge v3, v9, :cond_15

    .line 346
    .line 347
    shl-long/2addr v12, v7

    .line 348
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    ushr-int/lit8 v8, v1, 0x8

    .line 353
    .line 354
    if-nez v8, :cond_14

    .line 355
    .line 356
    sget-object v8, Lqj1;->b:[J

    .line 357
    .line 358
    aget-wide v14, v8, v1

    .line 359
    .line 360
    cmp-long v1, v14, v4

    .line 361
    .line 362
    if-ltz v1, :cond_14

    .line 363
    .line 364
    or-long/2addr v12, v14

    .line 365
    add-int/lit8 v3, v3, 0x1

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_14
    invoke-static {v0, v3, v6}, Lmt1;->X(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v2

    .line 372
    :cond_15
    cmp-long v0, v10, v4

    .line 373
    .line 374
    if-nez v0, :cond_16

    .line 375
    .line 376
    cmp-long v0, v12, v4

    .line 377
    .line 378
    if-nez v0, :cond_16

    .line 379
    .line 380
    :goto_8
    sget-object v0, Lp94;->p:Lp94;

    .line 381
    .line 382
    return-object v0

    .line 383
    :cond_16
    new-instance v0, Lp94;

    .line 384
    .line 385
    invoke-direct {v0, v10, v11, v12, v13}, Lp94;-><init>(JJ)V

    .line 386
    .line 387
    .line 388
    return-object v0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lp94;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lp94;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lr94;->b:Lpy2;

    .line 2
    .line 3
    return-object p0
.end method
