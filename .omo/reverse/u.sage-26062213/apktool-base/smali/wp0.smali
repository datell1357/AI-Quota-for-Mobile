.class public final Lwp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lr33;


# static fields
.field public static final p:Lwp0;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lwp0;

    .line 2
    .line 3
    invoke-direct {v0}, Lwp0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwp0;->p:Lwp0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "GET"

    .line 2
    .line 3
    const-string v1, "HEAD"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const-class v1, Lwp0;

    .line 13
    .line 14
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lwp0;->n:Lorg/apache/commons/logging/Log;

    .line 19
    .line 20
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lwp0;->o:[Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lom1;Lvm1;Lul1;)Lpm1;
    .locals 7

    .line 1
    const-string v0, "Relative redirect location \'"

    .line 2
    .line 3
    const-string v1, "HTTP request"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "HTTP response"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lrl1;->c(Lul1;)Lrl1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-interface {p2, v2}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_19

    .line 24
    .line 25
    invoke-interface {v2}, Lsh2;->getValue()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lwp0;->n:Lorg/apache/commons/logging/Log;

    .line 30
    .line 31
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "\'"

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lwp0;->n:Lorg/apache/commons/logging/Log;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "Redirect requested to location \'"

    .line 44
    .line 45
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {p0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v1}, Lrl1;->d()Lv63;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-boolean v3, p0, Lv63;->C:Z

    .line 66
    .line 67
    :try_start_0
    new-instance v5, Ljava/net/URI;

    .line 68
    .line 69
    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    :try_start_1
    invoke-static {v5}, Lz54;->b(Ljava/net/URI;)Ljava/net/URI;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :cond_1
    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    iget-boolean v2, p0, Lv63;->t:Z

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    const-string v0, "http.target_host"

    .line 89
    .line 90
    const-class v2, Lem1;

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lem1;

    .line 97
    .line 98
    const-string v2, "Target host"

    .line 99
    .line 100
    invoke-static {v0, v2}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Ljava/net/URI;

    .line 104
    .line 105
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Lhv;

    .line 110
    .line 111
    iget-object v6, v6, Lhv;->p:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v2, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    sget-object v3, Lz54;->c:Ljava/util/EnumSet;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    sget-object v3, Lz54;->a:Ljava/util/EnumSet;

    .line 122
    .line 123
    :goto_0
    invoke-static {v2, v0, v3}, Lz54;->e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0, v5}, Lz54;->c(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    new-instance p0, Le03;

    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p2, "\' not allowed"

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    :cond_4
    :goto_1
    iget-object v0, v1, Lvl1;->n:Lul1;

    .line 160
    .line 161
    const-string v1, "http.protocol.redirect-locations"

    .line 162
    .line 163
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lq33;

    .line 168
    .line 169
    if-nez v0, :cond_5

    .line 170
    .line 171
    new-instance v0, Lq33;

    .line 172
    .line 173
    invoke-direct {v0}, Lq33;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p3, v0, v1}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    iget-object p3, v0, Lq33;->n:Ljava/util/HashSet;

    .line 180
    .line 181
    iget-boolean p0, p0, Lv63;->u:Z

    .line 182
    .line 183
    if-nez p0, :cond_7

    .line 184
    .line 185
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-nez p0, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    new-instance p0, Lf50;

    .line 193
    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string p2, "Circular redirect to \'"

    .line 197
    .line 198
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :cond_7
    :goto_2
    invoke-virtual {p3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    iget-object p0, v0, Lq33;->o:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p0, Lhv;

    .line 232
    .line 233
    iget-object p0, p0, Lhv;->o:Ljava/lang/String;

    .line 234
    .line 235
    const-string p3, "HEAD"

    .line 236
    .line 237
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    if-eqz p3, :cond_8

    .line 242
    .line 243
    new-instance p0, Lwl1;

    .line 244
    .line 245
    const/4 p1, 0x2

    .line 246
    invoke-direct {p0, v5, p1}, Lwl1;-><init>(Ljava/net/URI;I)V

    .line 247
    .line 248
    .line 249
    return-object p0

    .line 250
    :cond_8
    const-string p3, "GET"

    .line 251
    .line 252
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    const/4 p3, 0x1

    .line 257
    if-eqz p0, :cond_9

    .line 258
    .line 259
    new-instance p0, Lwl1;

    .line 260
    .line 261
    invoke-direct {p0, v5, p3}, Lwl1;-><init>(Ljava/net/URI;I)V

    .line 262
    .line 263
    .line 264
    return-object p0

    .line 265
    :cond_9
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    iget p0, p0, Lkv;->o:I

    .line 270
    .line 271
    const/16 p2, 0x133

    .line 272
    .line 273
    if-eq p0, p2, :cond_b

    .line 274
    .line 275
    const/16 p2, 0x134

    .line 276
    .line 277
    if-ne p0, p2, :cond_a

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_a
    new-instance p0, Lwl1;

    .line 281
    .line 282
    invoke-direct {p0, v5, p3}, Lwl1;-><init>(Ljava/net/URI;I)V

    .line 283
    .line 284
    .line 285
    return-object p0

    .line 286
    :cond_b
    :goto_3
    sget-object p0, Luf0;->a:Ljava/nio/charset/Charset;

    .line 287
    .line 288
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    check-cast p2, Lhv;

    .line 293
    .line 294
    iget-object p2, p2, Lhv;->o:Ljava/lang/String;

    .line 295
    .line 296
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 297
    .line 298
    .line 299
    move-result-object p3

    .line 300
    check-cast p3, Lhv;

    .line 301
    .line 302
    iget-object p3, p3, Lhv;->n:Lg03;

    .line 303
    .line 304
    new-instance v0, Ljava/util/ArrayList;

    .line 305
    .line 306
    const/16 v1, 0x10

    .line 307
    .line 308
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    .line 313
    .line 314
    invoke-interface {p1}, Lim1;->getAllHeaders()[Lgj1;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    .line 320
    .line 321
    if-nez v1, :cond_c

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_c
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    :goto_4
    instance-of v1, p1, Lzl1;

    .line 328
    .line 329
    const/4 v2, 0x0

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    move-object v1, p1

    .line 333
    check-cast v1, Lzl1;

    .line 334
    .line 335
    invoke-interface {v1}, Lzl1;->getEntity()Lxl1;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v1}, Lpg0;->b(Lxl1;)Lpg0;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    if-eqz v3, :cond_f

    .line 344
    .line 345
    iget-object v4, v3, Lpg0;->n:Ljava/lang/String;

    .line 346
    .line 347
    sget-object v6, Lpg0;->q:Lpg0;

    .line 348
    .line 349
    iget-object v6, v6, Lpg0;->n:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_f

    .line 356
    .line 357
    :try_start_2
    iget-object p0, v3, Lpg0;->o:Ljava/nio/charset/Charset;

    .line 358
    .line 359
    invoke-static {v1}, La64;->c(Lxl1;)Ljava/util/ArrayList;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 367
    if-nez v3, :cond_d

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_d
    move-object v1, v2

    .line 371
    :goto_5
    move-object v3, v1

    .line 372
    move-object v1, v2

    .line 373
    goto :goto_6

    .line 374
    :catch_0
    :cond_e
    move-object v1, v2

    .line 375
    move-object v3, v1

    .line 376
    goto :goto_6

    .line 377
    :cond_f
    move-object v3, v2

    .line 378
    :goto_6
    instance-of v4, p1, Lan1;

    .line 379
    .line 380
    if-eqz v4, :cond_10

    .line 381
    .line 382
    move-object v4, p1

    .line 383
    check-cast v4, Lan1;

    .line 384
    .line 385
    invoke-interface {v4}, Lan1;->getURI()Ljava/net/URI;

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_10
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    check-cast v4, Lhv;

    .line 394
    .line 395
    iget-object v4, v4, Lhv;->p:Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 398
    .line 399
    .line 400
    :goto_7
    instance-of v4, p1, Lld0;

    .line 401
    .line 402
    if-eqz v4, :cond_11

    .line 403
    .line 404
    check-cast p1, Lld0;

    .line 405
    .line 406
    invoke-interface {p1}, Lld0;->getConfig()Lv63;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    goto :goto_8

    .line 411
    :cond_11
    move-object p1, v2

    .line 412
    :goto_8
    if-eqz v5, :cond_12

    .line 413
    .line 414
    goto :goto_9

    .line 415
    :cond_12
    const-string v4, "/"

    .line 416
    .line 417
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    :goto_9
    if-eqz v3, :cond_17

    .line 422
    .line 423
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-nez v4, :cond_17

    .line 428
    .line 429
    if-nez v1, :cond_15

    .line 430
    .line 431
    const-string v4, "POST"

    .line 432
    .line 433
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-nez v4, :cond_13

    .line 438
    .line 439
    const-string v4, "PUT"

    .line 440
    .line 441
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    if-eqz v4, :cond_15

    .line 446
    .line 447
    :cond_13
    new-instance v1, Lc84;

    .line 448
    .line 449
    if-eqz p0, :cond_14

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_14
    sget-object p0, Lvi1;->a:Ljava/nio/charset/Charset;

    .line 453
    .line 454
    :goto_a
    invoke-direct {v1, v3, p0}, Lc84;-><init>(Ljava/util/ArrayList;Ljava/nio/charset/Charset;)V

    .line 455
    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_15
    :try_start_3
    new-instance v4, Lx54;

    .line 459
    .line 460
    invoke-direct {v4, v5}, Lx54;-><init>(Ljava/net/URI;)V

    .line 461
    .line 462
    .line 463
    iput-object p0, v4, Lx54;->l:Ljava/nio/charset/Charset;

    .line 464
    .line 465
    iget-object p0, v4, Lx54;->k:Ljava/util/ArrayList;

    .line 466
    .line 467
    if-nez p0, :cond_16

    .line 468
    .line 469
    new-instance p0, Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .line 473
    .line 474
    iput-object p0, v4, Lx54;->k:Ljava/util/ArrayList;

    .line 475
    .line 476
    :cond_16
    iget-object p0, v4, Lx54;->k:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    .line 480
    .line 481
    iput-object v2, v4, Lx54;->j:Ljava/lang/String;

    .line 482
    .line 483
    iput-object v2, v4, Lx54;->b:Ljava/lang/String;

    .line 484
    .line 485
    new-instance p0, Ljava/net/URI;

    .line 486
    .line 487
    invoke-virtual {v4}, Lx54;->a()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-direct {p0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .line 492
    .line 493
    .line 494
    move-object v5, p0

    .line 495
    :catch_1
    :cond_17
    :goto_b
    if-nez v1, :cond_18

    .line 496
    .line 497
    new-instance p0, Ls63;

    .line 498
    .line 499
    invoke-direct {p0, p2}, Ls63;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_18
    new-instance p0, Lr63;

    .line 504
    .line 505
    invoke-direct {p0, p2}, Lr63;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, v1}, Lam1;->setEntity(Lxl1;)V

    .line 509
    .line 510
    .line 511
    :goto_c
    invoke-virtual {p0, p3}, Lpm1;->setProtocolVersion(Lg03;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, v5}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result p2

    .line 521
    new-array p2, p2, [Lgj1;

    .line 522
    .line 523
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p2

    .line 527
    check-cast p2, [Lgj1;

    .line 528
    .line 529
    invoke-virtual {p0, p2}, Le1;->setHeaders([Lgj1;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p0, p1}, Lpm1;->setConfig(Lv63;)V

    .line 533
    .line 534
    .line 535
    return-object p0

    .line 536
    :catch_2
    move-exception p0

    .line 537
    new-instance p1, Le03;

    .line 538
    .line 539
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    invoke-direct {p1, p2, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    .line 545
    .line 546
    throw p1

    .line 547
    :catch_3
    move-exception p0

    .line 548
    new-instance p1, Le03;

    .line 549
    .line 550
    const-string p2, "Invalid redirect URI: "

    .line 551
    .line 552
    invoke-static {p2, v2}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p2

    .line 556
    invoke-direct {p1, p2, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    .line 558
    .line 559
    throw p1

    .line 560
    :cond_19
    new-instance p0, Le03;

    .line 561
    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    const-string p3, "Received redirect response "

    .line 565
    .line 566
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 570
    .line 571
    .line 572
    move-result-object p2

    .line 573
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string p2, " but no location header"

    .line 577
    .line 578
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw p0
.end method

.method public final h(Lom1;Lvm1;Lul1;)Z
    .locals 3

    .line 1
    const-string p3, "HTTP request"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "HTTP response"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Lvm1;->b()Lkv;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget p3, p3, Lkv;->o:I

    .line 16
    .line 17
    invoke-interface {p1}, Lom1;->getRequestLine()Ld73;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lhv;

    .line 22
    .line 23
    iget-object p1, p1, Lhv;->o:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "location"

    .line 26
    .line 27
    invoke-interface {p2, v0}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/16 v0, 0x133

    .line 32
    .line 33
    iget-object p0, p0, Lwp0;->o:[Ljava/lang/String;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eq p3, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x134

    .line 40
    .line 41
    if-eq p3, v0, :cond_1

    .line 42
    .line 43
    packed-switch p3, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-ltz p0, :cond_0

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    :pswitch_1
    return v1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    :pswitch_2
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-ltz p0, :cond_2

    .line 62
    .line 63
    return v1

    .line 64
    :cond_2
    return v2

    .line 65
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
