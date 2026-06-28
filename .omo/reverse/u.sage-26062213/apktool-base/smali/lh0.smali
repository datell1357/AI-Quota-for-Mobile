.class public final Llh0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final o:Llh0;

.field public static final p:Llh0;

.field public static final q:Llh0;

.field public static final r:Llh0;

.field public static final s:Llh0;

.field public static final t:Llh0;

.field public static final synthetic u:Llh0;


# instance fields
.field public final synthetic n:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llh0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Llh0;->o:Llh0;

    .line 8
    .line 9
    new-instance v0, Llh0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Llh0;->p:Llh0;

    .line 16
    .line 17
    new-instance v0, Llh0;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Llh0;->q:Llh0;

    .line 24
    .line 25
    new-instance v0, Llh0;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Llh0;->r:Llh0;

    .line 32
    .line 33
    new-instance v0, Llh0;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Llh0;->s:Llh0;

    .line 40
    .line 41
    new-instance v0, Llh0;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Llh0;->t:Llh0;

    .line 48
    .line 49
    new-instance v0, Llh0;

    .line 50
    .line 51
    const/16 v1, 0x16

    .line 52
    .line 53
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Llh0;->u:Llh0;

    .line 57
    .line 58
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Llh0;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    iget p0, p0, Llh0;->n:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p2, Ljava/lang/Long;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/String;

    .line 34
    .line 35
    check-cast p2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :pswitch_1
    invoke-static {p1}, Lxw1;->i(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p2}, Lxw1;->i(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne p0, v0, :cond_4

    .line 57
    .line 58
    invoke-static {p0}, Ldi0;->F(I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    if-eq p0, v3, :cond_2

    .line 65
    .line 66
    if-eq p0, v2, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    if-ne p0, v0, :cond_0

    .line 70
    .line 71
    check-cast p1, Ljava/lang/Double;

    .line 72
    .line 73
    check-cast p2, Ljava/lang/Double;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p0, 0x0

    .line 81
    throw p0

    .line 82
    :cond_1
    check-cast p1, Ljava/lang/Long;

    .line 83
    .line 84
    check-cast p2, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Ljava/lang/String;

    .line 92
    .line 93
    check-cast p2, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 101
    .line 102
    check-cast p2, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-static {p0, v0}, Ldi0;->h(II)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    :goto_0
    return p0

    .line 114
    :pswitch_2
    check-cast p1, Lwh4;

    .line 115
    .line 116
    iget-object p0, p1, Lwh4;->a:Lbt2;

    .line 117
    .line 118
    check-cast p2, Lwh4;

    .line 119
    .line 120
    iget-object p1, p2, Lwh4;->a:Lbt2;

    .line 121
    .line 122
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0

    .line 127
    :pswitch_3
    check-cast p1, Lew3;

    .line 128
    .line 129
    iget-object p0, p1, Lew3;->a:Ljava/lang/String;

    .line 130
    .line 131
    check-cast p2, Lew3;

    .line 132
    .line 133
    iget-object p1, p2, Lew3;->a:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    return p0

    .line 140
    :pswitch_4
    check-cast p1, Lcw3;

    .line 141
    .line 142
    iget-object p0, p1, Lcw3;->a:Ljava/lang/String;

    .line 143
    .line 144
    check-cast p2, Lcw3;

    .line 145
    .line 146
    iget-object p1, p2, Lcw3;->a:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_5
    check-cast p2, Lyi3;

    .line 154
    .line 155
    iget-boolean p0, p2, Lyi3;->b:Z

    .line 156
    .line 157
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p1, Lyi3;

    .line 162
    .line 163
    iget-boolean p1, p1, Lyi3;->b:Z

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    return p0

    .line 174
    :pswitch_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ljava/lang/Integer;

    .line 181
    .line 182
    check-cast p2, Ljava/util/Map$Entry;

    .line 183
    .line 184
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    return p0

    .line 195
    :pswitch_7
    check-cast p1, Ljava/util/Map$Entry;

    .line 196
    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    check-cast p0, Ljava/lang/Integer;

    .line 202
    .line 203
    check-cast p2, Ljava/util/Map$Entry;

    .line 204
    .line 205
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    return p0

    .line 216
    :pswitch_8
    invoke-static {p2}, Ldi0;->o(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    throw p0

    .line 221
    :pswitch_9
    check-cast p2, Ljo2;

    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p1, Ljo2;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {p0, p0}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    return p0

    .line 240
    :pswitch_a
    check-cast p1, Ljava/lang/Comparable;

    .line 241
    .line 242
    check-cast p2, Ljava/lang/Comparable;

    .line 243
    .line 244
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    return p0

    .line 249
    :pswitch_b
    check-cast p1, Lp84;

    .line 250
    .line 251
    invoke-virtual {p1}, Lp84;->b()Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    check-cast p2, Lp84;

    .line 256
    .line 257
    invoke-virtual {p2}, Lp84;->b()Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    return p0

    .line 266
    :pswitch_c
    check-cast p1, Lxy1;

    .line 267
    .line 268
    check-cast p2, Lxy1;

    .line 269
    .line 270
    iget p0, p1, Lxy1;->C:I

    .line 271
    .line 272
    iget v0, p2, Lxy1;->C:I

    .line 273
    .line 274
    invoke-static {p0, v0}, Lnt1;->l(II)I

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    if-eqz p0, :cond_5

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    :goto_1
    return p0

    .line 294
    :pswitch_d
    check-cast p1, Ljava/lang/String;

    .line 295
    .line 296
    check-cast p2, Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    const/4 v2, 0x4

    .line 317
    :goto_2
    if-ge v2, p0, :cond_7

    .line 318
    .line 319
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eq v4, v5, :cond_6

    .line 328
    .line 329
    invoke-static {v4, v5}, Lnt1;->l(II)I

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    if-gez p0, :cond_8

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eq p0, p1, :cond_9

    .line 348
    .line 349
    if-ge p0, p1, :cond_8

    .line 350
    .line 351
    goto :goto_3

    .line 352
    :cond_8
    move v0, v3

    .line 353
    goto :goto_3

    .line 354
    :cond_9
    move v0, v1

    .line 355
    :goto_3
    return v0

    .line 356
    :pswitch_e
    check-cast p1, Lef;

    .line 357
    .line 358
    iget p0, p1, Lef;->b:I

    .line 359
    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    check-cast p2, Lef;

    .line 365
    .line 366
    iget p1, p2, Lef;->b:I

    .line 367
    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    return p0

    .line 377
    :pswitch_f
    check-cast p1, Lef;

    .line 378
    .line 379
    iget p0, p1, Lef;->b:I

    .line 380
    .line 381
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    check-cast p2, Lef;

    .line 386
    .line 387
    iget p1, p2, Lef;->b:I

    .line 388
    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-static {p0, p1}, Lca;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 394
    .line 395
    .line 396
    move-result p0

    .line 397
    return p0

    .line 398
    :pswitch_10
    check-cast p1, Ljs2;

    .line 399
    .line 400
    check-cast p2, Ljs2;

    .line 401
    .line 402
    iget-object p0, p1, Ljs2;->n:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast p0, Ll33;

    .line 405
    .line 406
    iget p0, p0, Ll33;->b:F

    .line 407
    .line 408
    iget-object v0, p2, Ljs2;->n:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v0, Ll33;

    .line 411
    .line 412
    iget v0, v0, Ll33;->b:F

    .line 413
    .line 414
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    if-eqz p0, :cond_a

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_a
    iget-object p0, p1, Ljs2;->n:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast p0, Ll33;

    .line 424
    .line 425
    iget p0, p0, Ll33;->d:F

    .line 426
    .line 427
    iget-object p1, p2, Ljs2;->n:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast p1, Ll33;

    .line 430
    .line 431
    iget p1, p1, Ll33;->d:F

    .line 432
    .line 433
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    :goto_4
    return p0

    .line 438
    :pswitch_11
    check-cast p1, Lgh3;

    .line 439
    .line 440
    check-cast p2, Lgh3;

    .line 441
    .line 442
    invoke-virtual {p1}, Lgh3;->h()Ll33;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {p2}, Lgh3;->h()Ll33;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    iget p2, p1, Ll33;->c:F

    .line 451
    .line 452
    iget v0, p0, Ll33;->c:F

    .line 453
    .line 454
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    if-eqz p2, :cond_b

    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_b
    iget p2, p0, Ll33;->b:F

    .line 462
    .line 463
    iget v0, p1, Ll33;->b:F

    .line 464
    .line 465
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    if-eqz p2, :cond_c

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_c
    iget p2, p0, Ll33;->d:F

    .line 473
    .line 474
    iget v0, p1, Ll33;->d:F

    .line 475
    .line 476
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 477
    .line 478
    .line 479
    move-result p2

    .line 480
    if-eqz p2, :cond_d

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_d
    iget p1, p1, Ll33;->a:F

    .line 484
    .line 485
    iget p0, p0, Ll33;->a:F

    .line 486
    .line 487
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 488
    .line 489
    .line 490
    move-result p2

    .line 491
    :goto_5
    return p2

    .line 492
    :pswitch_12
    check-cast p1, Lxy1;

    .line 493
    .line 494
    check-cast p2, Lxy1;

    .line 495
    .line 496
    iget p0, p2, Lxy1;->C:I

    .line 497
    .line 498
    iget v0, p1, Lxy1;->C:I

    .line 499
    .line 500
    invoke-static {p0, v0}, Lnt1;->l(II)I

    .line 501
    .line 502
    .line 503
    move-result p0

    .line 504
    if-eqz p0, :cond_e

    .line 505
    .line 506
    goto :goto_6

    .line 507
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 508
    .line 509
    .line 510
    move-result p0

    .line 511
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 516
    .line 517
    .line 518
    move-result p0

    .line 519
    :goto_6
    return p0

    .line 520
    :pswitch_13
    check-cast p1, Lgh3;

    .line 521
    .line 522
    check-cast p2, Lgh3;

    .line 523
    .line 524
    invoke-virtual {p1}, Lgh3;->h()Ll33;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    invoke-virtual {p2}, Lgh3;->h()Ll33;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    iget p2, p0, Ll33;->a:F

    .line 533
    .line 534
    iget v0, p1, Ll33;->a:F

    .line 535
    .line 536
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 537
    .line 538
    .line 539
    move-result p2

    .line 540
    if-eqz p2, :cond_f

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_f
    iget p2, p0, Ll33;->b:F

    .line 544
    .line 545
    iget v0, p1, Ll33;->b:F

    .line 546
    .line 547
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 548
    .line 549
    .line 550
    move-result p2

    .line 551
    if-eqz p2, :cond_10

    .line 552
    .line 553
    goto :goto_7

    .line 554
    :cond_10
    iget p2, p0, Ll33;->d:F

    .line 555
    .line 556
    iget v0, p1, Ll33;->d:F

    .line 557
    .line 558
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 559
    .line 560
    .line 561
    move-result p2

    .line 562
    if-eqz p2, :cond_11

    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_11
    iget p0, p0, Ll33;->c:F

    .line 566
    .line 567
    iget p1, p1, Ll33;->c:F

    .line 568
    .line 569
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 570
    .line 571
    .line 572
    move-result p2

    .line 573
    :goto_7
    return p2

    .line 574
    :pswitch_14
    check-cast p1, Lka1;

    .line 575
    .line 576
    check-cast p2, Lka1;

    .line 577
    .line 578
    invoke-static {p1}, Lgg4;->I(Lka1;)Z

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    if-eqz p0, :cond_1d

    .line 583
    .line 584
    invoke-static {p2}, Lgg4;->I(Lka1;)Z

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    if-nez p0, :cond_12

    .line 589
    .line 590
    goto/16 :goto_c

    .line 591
    .line 592
    :cond_12
    invoke-static {p1}, Lw80;->R(Ljr0;)Lxy1;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    invoke-static {p2}, Lw80;->R(Ljr0;)Lxy1;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p2

    .line 604
    if-eqz p2, :cond_13

    .line 605
    .line 606
    goto/16 :goto_b

    .line 607
    .line 608
    :cond_13
    const/16 p2, 0x10

    .line 609
    .line 610
    new-array v0, p2, [Lxy1;

    .line 611
    .line 612
    move v2, v1

    .line 613
    :goto_8
    if-eqz p0, :cond_16

    .line 614
    .line 615
    add-int/lit8 v4, v2, 0x1

    .line 616
    .line 617
    array-length v5, v0

    .line 618
    if-ge v5, v4, :cond_14

    .line 619
    .line 620
    array-length v5, v0

    .line 621
    mul-int/lit8 v6, v5, 0x2

    .line 622
    .line 623
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    new-array v4, v4, [Ljava/lang/Object;

    .line 628
    .line 629
    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    .line 631
    .line 632
    move-object v0, v4

    .line 633
    :cond_14
    if-eqz v2, :cond_15

    .line 634
    .line 635
    const/4 v4, 0x0

    .line 636
    add-int/2addr v4, v3

    .line 637
    add-int/lit8 v5, v2, 0x0

    .line 638
    .line 639
    invoke-static {v0, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    .line 641
    .line 642
    :cond_15
    aput-object p0, v0, v1

    .line 643
    .line 644
    add-int/lit8 v2, v2, 0x1

    .line 645
    .line 646
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    goto :goto_8

    .line 651
    :cond_16
    new-array p0, p2, [Lxy1;

    .line 652
    .line 653
    move p2, v1

    .line 654
    :goto_9
    if-eqz p1, :cond_19

    .line 655
    .line 656
    add-int/lit8 v4, p2, 0x1

    .line 657
    .line 658
    array-length v5, p0

    .line 659
    if-ge v5, v4, :cond_17

    .line 660
    .line 661
    array-length v5, p0

    .line 662
    mul-int/lit8 v6, v5, 0x2

    .line 663
    .line 664
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    new-array v4, v4, [Ljava/lang/Object;

    .line 669
    .line 670
    invoke-static {p0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    .line 672
    .line 673
    move-object p0, v4

    .line 674
    :cond_17
    if-eqz p2, :cond_18

    .line 675
    .line 676
    const/4 v4, 0x0

    .line 677
    add-int/2addr v4, v3

    .line 678
    add-int/lit8 v5, p2, 0x0

    .line 679
    .line 680
    invoke-static {p0, v1, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    .line 682
    .line 683
    :cond_18
    aput-object p1, p0, v1

    .line 684
    .line 685
    add-int/lit8 p2, p2, 0x1

    .line 686
    .line 687
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    goto :goto_9

    .line 692
    :cond_19
    sub-int/2addr v2, v3

    .line 693
    sub-int/2addr p2, v3

    .line 694
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 695
    .line 696
    .line 697
    move-result p1

    .line 698
    if-ltz p1, :cond_1b

    .line 699
    .line 700
    move p2, v1

    .line 701
    :goto_a
    aget-object v2, v0, p2

    .line 702
    .line 703
    aget-object v3, p0, p2

    .line 704
    .line 705
    invoke-static {v2, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-nez v2, :cond_1a

    .line 710
    .line 711
    aget-object p1, v0, p2

    .line 712
    .line 713
    check-cast p1, Lxy1;

    .line 714
    .line 715
    invoke-virtual {p1}, Lxy1;->v()I

    .line 716
    .line 717
    .line 718
    move-result p1

    .line 719
    aget-object p0, p0, p2

    .line 720
    .line 721
    check-cast p0, Lxy1;

    .line 722
    .line 723
    invoke-virtual {p0}, Lxy1;->v()I

    .line 724
    .line 725
    .line 726
    move-result p0

    .line 727
    invoke-static {p1, p0}, Lnt1;->l(II)I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    goto :goto_d

    .line 732
    :cond_1a
    if-eq p2, p1, :cond_1b

    .line 733
    .line 734
    add-int/lit8 p2, p2, 0x1

    .line 735
    .line 736
    goto :goto_a

    .line 737
    :cond_1b
    const-string p0, "Could not find a common ancestor between the two FocusModifiers."

    .line 738
    .line 739
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    :cond_1c
    :goto_b
    move v0, v1

    .line 743
    goto :goto_d

    .line 744
    :cond_1d
    :goto_c
    invoke-static {p1}, Lgg4;->I(Lka1;)Z

    .line 745
    .line 746
    .line 747
    move-result p0

    .line 748
    if-eqz p0, :cond_1e

    .line 749
    .line 750
    goto :goto_d

    .line 751
    :cond_1e
    invoke-static {p2}, Lgg4;->I(Lka1;)Z

    .line 752
    .line 753
    .line 754
    move-result p0

    .line 755
    if-eqz p0, :cond_1c

    .line 756
    .line 757
    move v0, v3

    .line 758
    :goto_d
    return v0

    .line 759
    :pswitch_15
    check-cast p1, Lku;

    .line 760
    .line 761
    check-cast p2, Lku;

    .line 762
    .line 763
    iget-object p0, p1, Lku;->s:Ljava/lang/String;

    .line 764
    .line 765
    if-eqz p0, :cond_1f

    .line 766
    .line 767
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 768
    .line 769
    .line 770
    move-result p0

    .line 771
    goto :goto_e

    .line 772
    :cond_1f
    move p0, v3

    .line 773
    :goto_e
    iget-object v0, p2, Lku;->s:Ljava/lang/String;

    .line 774
    .line 775
    if-eqz v0, :cond_20

    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    :cond_20
    sub-int/2addr v3, p0

    .line 782
    if-nez v3, :cond_21

    .line 783
    .line 784
    instance-of p0, p1, Lku;

    .line 785
    .line 786
    if-eqz p0, :cond_21

    .line 787
    .line 788
    instance-of p0, p2, Lku;

    .line 789
    .line 790
    if-eqz p0, :cond_21

    .line 791
    .line 792
    iget-object p0, p1, Lku;->v:Ljava/util/Date;

    .line 793
    .line 794
    iget-object p1, p2, Lku;->v:Ljava/util/Date;

    .line 795
    .line 796
    if-eqz p0, :cond_21

    .line 797
    .line 798
    if-eqz p1, :cond_21

    .line 799
    .line 800
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 801
    .line 802
    .line 803
    move-result-wide v0

    .line 804
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 805
    .line 806
    .line 807
    move-result-wide p0

    .line 808
    sub-long/2addr v0, p0

    .line 809
    long-to-int v3, v0

    .line 810
    :cond_21
    return v3

    .line 811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
