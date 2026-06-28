.class public final Liu3;
.super Landroid/view/MenuInflater;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Liu3;->e:[Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v0, Liu3;->f:[Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liu3;->c:Landroid/content/Context;

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Liu3;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Liu3;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Liu3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lhu3;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Lhu3;-><init>(Liu3;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const-string v4, "menu"

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v5, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v1, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v6, :cond_18

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    move v9, v7

    .line 57
    move v10, v9

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_17

    .line 60
    .line 61
    if-eq v3, v6, :cond_16

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    iget-object v15, v2, Lhu3;->a:Landroid/view/Menu;

    .line 69
    .line 70
    if-eq v3, v5, :cond_7

    .line 71
    .line 72
    if-eq v3, v14, :cond_3

    .line 73
    .line 74
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v10, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_4

    .line 88
    .line 89
    move-object/from16 v8, p1

    .line 90
    .line 91
    move v10, v7

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_5

    .line 101
    .line 102
    iput v7, v2, Lhu3;->b:I

    .line 103
    .line 104
    iput v7, v2, Lhu3;->c:I

    .line 105
    .line 106
    iput v7, v2, Lhu3;->d:I

    .line 107
    .line 108
    iput v7, v2, Lhu3;->e:I

    .line 109
    .line 110
    iput-boolean v6, v2, Lhu3;->f:Z

    .line 111
    .line 112
    iput-boolean v6, v2, Lhu3;->g:Z

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_6

    .line 120
    .line 121
    iget-boolean v3, v2, Lhu3;->h:Z

    .line 122
    .line 123
    if-nez v3, :cond_2

    .line 124
    .line 125
    iput-boolean v6, v2, Lhu3;->h:Z

    .line 126
    .line 127
    iget v3, v2, Lhu3;->b:I

    .line 128
    .line 129
    iget v12, v2, Lhu3;->i:I

    .line 130
    .line 131
    iget v13, v2, Lhu3;->j:I

    .line 132
    .line 133
    iget-object v14, v2, Lhu3;->k:Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Lhu3;->b(Landroid/view/MenuItem;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    .line 149
    move-object/from16 v8, p1

    .line 150
    .line 151
    move v9, v6

    .line 152
    :goto_4
    const/4 v5, 0x0

    .line 153
    goto/16 :goto_d

    .line 154
    .line 155
    :cond_7
    if-eqz v10, :cond_8

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    iget-object v8, v0, Liu3;->c:Landroid/content/Context;

    .line 167
    .line 168
    const/4 v5, 0x4

    .line 169
    if-eqz v13, :cond_9

    .line 170
    .line 171
    sget-object v3, Li13;->l:[I

    .line 172
    .line 173
    invoke-virtual {v8, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    iput v8, v2, Lhu3;->b:I

    .line 182
    .line 183
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    iput v8, v2, Lhu3;->c:I

    .line 188
    .line 189
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    iput v5, v2, Lhu3;->d:I

    .line 194
    .line 195
    const/4 v5, 0x5

    .line 196
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    iput v5, v2, Lhu3;->e:I

    .line 201
    .line 202
    const/4 v13, 0x2

    .line 203
    invoke-virtual {v3, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iput-boolean v5, v2, Lhu3;->f:Z

    .line 208
    .line 209
    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    iput-boolean v5, v2, Lhu3;->g:Z

    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_9
    const/4 v13, 0x2

    .line 221
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    if-eqz v12, :cond_14

    .line 226
    .line 227
    sget-object v3, Li13;->m:[I

    .line 228
    .line 229
    invoke-virtual {v8, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    iput v12, v2, Lhu3;->i:I

    .line 238
    .line 239
    iget v12, v2, Lhu3;->c:I

    .line 240
    .line 241
    const/4 v15, 0x5

    .line 242
    invoke-virtual {v3, v15, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    const/4 v15, 0x6

    .line 247
    iget v13, v2, Lhu3;->d:I

    .line 248
    .line 249
    invoke-virtual {v3, v15, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    const/high16 v15, -0x10000

    .line 254
    .line 255
    and-int/2addr v12, v15

    .line 256
    const v15, 0xffff

    .line 257
    .line 258
    .line 259
    and-int/2addr v13, v15

    .line 260
    or-int/2addr v12, v13

    .line 261
    iput v12, v2, Lhu3;->j:I

    .line 262
    .line 263
    const/4 v12, 0x7

    .line 264
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    iput-object v12, v2, Lhu3;->k:Ljava/lang/CharSequence;

    .line 269
    .line 270
    const/16 v12, 0x8

    .line 271
    .line 272
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    iput-object v12, v2, Lhu3;->l:Ljava/lang/CharSequence;

    .line 277
    .line 278
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    iput v12, v2, Lhu3;->m:I

    .line 283
    .line 284
    const/16 v12, 0x9

    .line 285
    .line 286
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    if-nez v12, :cond_a

    .line 291
    .line 292
    move v12, v7

    .line 293
    goto :goto_5

    .line 294
    :cond_a
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    :goto_5
    iput-char v12, v2, Lhu3;->n:C

    .line 299
    .line 300
    const/16 v12, 0x10

    .line 301
    .line 302
    const/16 v13, 0x1000

    .line 303
    .line 304
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    iput v12, v2, Lhu3;->o:I

    .line 309
    .line 310
    const/16 v12, 0xa

    .line 311
    .line 312
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    if-nez v12, :cond_b

    .line 317
    .line 318
    move v12, v7

    .line 319
    goto :goto_6

    .line 320
    :cond_b
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    :goto_6
    iput-char v12, v2, Lhu3;->p:C

    .line 325
    .line 326
    const/16 v12, 0x14

    .line 327
    .line 328
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    iput v12, v2, Lhu3;->q:I

    .line 333
    .line 334
    const/16 v12, 0xb

    .line 335
    .line 336
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-eqz v13, :cond_c

    .line 341
    .line 342
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    iput v12, v2, Lhu3;->r:I

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_c
    iget v12, v2, Lhu3;->e:I

    .line 350
    .line 351
    iput v12, v2, Lhu3;->r:I

    .line 352
    .line 353
    :goto_7
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    iput-boolean v12, v2, Lhu3;->s:Z

    .line 358
    .line 359
    iget-boolean v12, v2, Lhu3;->f:Z

    .line 360
    .line 361
    invoke-virtual {v3, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    iput-boolean v5, v2, Lhu3;->t:Z

    .line 366
    .line 367
    iget-boolean v5, v2, Lhu3;->g:Z

    .line 368
    .line 369
    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    iput-boolean v5, v2, Lhu3;->u:Z

    .line 374
    .line 375
    const/16 v5, 0x15

    .line 376
    .line 377
    const/4 v12, -0x1

    .line 378
    invoke-virtual {v3, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    iput v5, v2, Lhu3;->v:I

    .line 383
    .line 384
    const/16 v5, 0xc

    .line 385
    .line 386
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    iput-object v5, v2, Lhu3;->y:Ljava/lang/String;

    .line 391
    .line 392
    const/16 v5, 0xd

    .line 393
    .line 394
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    iput v5, v2, Lhu3;->w:I

    .line 399
    .line 400
    const/16 v5, 0xf

    .line 401
    .line 402
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    iput-object v5, v2, Lhu3;->x:Ljava/lang/String;

    .line 407
    .line 408
    const/16 v5, 0xe

    .line 409
    .line 410
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    if-eqz v5, :cond_d

    .line 415
    .line 416
    move v13, v6

    .line 417
    goto :goto_8

    .line 418
    :cond_d
    move v13, v7

    .line 419
    :goto_8
    if-eqz v13, :cond_f

    .line 420
    .line 421
    iget v14, v2, Lhu3;->w:I

    .line 422
    .line 423
    if-nez v14, :cond_f

    .line 424
    .line 425
    iget-object v14, v2, Lhu3;->x:Ljava/lang/String;

    .line 426
    .line 427
    if-nez v14, :cond_f

    .line 428
    .line 429
    sget-object v13, Liu3;->f:[Ljava/lang/Class;

    .line 430
    .line 431
    iget-object v14, v0, Liu3;->b:[Ljava/lang/Object;

    .line 432
    .line 433
    invoke-virtual {v2, v5, v13, v14}, Lhu3;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    if-nez v5, :cond_e

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :cond_e
    invoke-static {}, Lmk0;->b()V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_f
    if-eqz v13, :cond_10

    .line 445
    .line 446
    const-string v5, "SupportMenuInflater"

    .line 447
    .line 448
    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 449
    .line 450
    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :cond_10
    :goto_9
    const/16 v5, 0x11

    .line 454
    .line 455
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    iput-object v5, v2, Lhu3;->z:Ljava/lang/CharSequence;

    .line 460
    .line 461
    const/16 v5, 0x16

    .line 462
    .line 463
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    iput-object v5, v2, Lhu3;->A:Ljava/lang/CharSequence;

    .line 468
    .line 469
    const/16 v5, 0x13

    .line 470
    .line 471
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 472
    .line 473
    .line 474
    move-result v13

    .line 475
    if-eqz v13, :cond_11

    .line 476
    .line 477
    invoke-virtual {v3, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    iget-object v12, v2, Lhu3;->C:Landroid/graphics/PorterDuff$Mode;

    .line 482
    .line 483
    invoke-static {v5, v12}, Lsx0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    iput-object v5, v2, Lhu3;->C:Landroid/graphics/PorterDuff$Mode;

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_11
    const/4 v5, 0x0

    .line 491
    iput-object v5, v2, Lhu3;->C:Landroid/graphics/PorterDuff$Mode;

    .line 492
    .line 493
    :goto_a
    const/16 v5, 0x12

    .line 494
    .line 495
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 496
    .line 497
    .line 498
    move-result v12

    .line 499
    if-eqz v12, :cond_13

    .line 500
    .line 501
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    if-eqz v12, :cond_12

    .line 506
    .line 507
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    if-eqz v12, :cond_12

    .line 512
    .line 513
    invoke-static {v8, v12}, Lzf5;->E(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    if-eqz v8, :cond_12

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_12
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    :goto_b
    iput-object v8, v2, Lhu3;->B:Landroid/content/res/ColorStateList;

    .line 525
    .line 526
    const/4 v5, 0x0

    .line 527
    goto :goto_c

    .line 528
    :cond_13
    const/4 v5, 0x0

    .line 529
    iput-object v5, v2, Lhu3;->B:Landroid/content/res/ColorStateList;

    .line 530
    .line 531
    :goto_c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    .line 533
    .line 534
    iput-boolean v7, v2, Lhu3;->h:Z

    .line 535
    .line 536
    move-object/from16 v8, p1

    .line 537
    .line 538
    goto :goto_d

    .line 539
    :cond_14
    const/4 v5, 0x0

    .line 540
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    if-eqz v8, :cond_15

    .line 545
    .line 546
    iput-boolean v6, v2, Lhu3;->h:Z

    .line 547
    .line 548
    iget v3, v2, Lhu3;->b:I

    .line 549
    .line 550
    iget v8, v2, Lhu3;->i:I

    .line 551
    .line 552
    iget v12, v2, Lhu3;->j:I

    .line 553
    .line 554
    iget-object v13, v2, Lhu3;->k:Ljava/lang/CharSequence;

    .line 555
    .line 556
    invoke-interface {v15, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-virtual {v2, v8}, Lhu3;->b(Landroid/view/MenuItem;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v8, p1

    .line 568
    .line 569
    invoke-virtual {v0, v8, v1, v3}, Liu3;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 570
    .line 571
    .line 572
    goto :goto_d

    .line 573
    :cond_15
    move-object/from16 v8, p1

    .line 574
    .line 575
    move-object v11, v3

    .line 576
    move v10, v6

    .line 577
    :goto_d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    const/4 v5, 0x2

    .line 582
    goto/16 :goto_2

    .line 583
    .line 584
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 585
    .line 586
    const-string v1, "Unexpected end of document"

    .line 587
    .line 588
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    throw v0

    .line 592
    :cond_17
    return-void

    .line 593
    :cond_18
    move-object/from16 v8, p1

    .line 594
    .line 595
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Lub2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Liu3;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    move-object v3, p2

    .line 28
    check-cast v3, Lub2;

    .line 29
    .line 30
    iget-boolean v4, v3, Lub2;->m:Z

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Lub2;->s()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Liu3;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    check-cast p2, Lub2;

    .line 51
    .line 52
    invoke-virtual {p2}, Lub2;->r()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    new-instance p1, Landroid/view/InflateException;

    .line 60
    .line 61
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :goto_2
    new-instance p1, Landroid/view/InflateException;

    .line 66
    .line 67
    invoke-direct {p1, v0, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_3
    if-eqz v2, :cond_3

    .line 72
    .line 73
    check-cast p2, Lub2;

    .line 74
    .line 75
    invoke-virtual {p2}, Lub2;->r()V

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 81
    .line 82
    .line 83
    :cond_4
    throw p0
.end method
