.class public final Lqi1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final n:Lyb1;

.field public static final o:Lgw4;

.field public static final p:Liv1;

.field public static final q:Lqi1;

.field public static final r:Ljava/util/List;

.field public static final s:I

.field public static final t:I

.field public static final u:I


# instance fields
.field public final a:Lc31;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Lyb1;

.field public final i:Ljava/util/ArrayDeque;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    sget-object v0, Lyb1;->d:Lyb1;

    .line 2
    .line 3
    sput-object v0, Lqi1;->n:Lyb1;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput v0, Lqi1;->s:I

    .line 7
    .line 8
    sput v0, Lqi1;->t:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    sput v1, Lqi1;->u:I

    .line 12
    .line 13
    new-instance v3, Lgw4;

    .line 14
    .line 15
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 16
    .line 17
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    const/16 v5, 0xc

    .line 20
    .line 21
    invoke-direct {v3, v5, v2, v4}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sput-object v3, Lqi1;->o:Lgw4;

    .line 25
    .line 26
    new-instance v6, Liv1;

    .line 27
    .line 28
    invoke-direct {v6, v3}, Liv1;-><init>(Lgw4;)V

    .line 29
    .line 30
    .line 31
    sput-object v6, Lqi1;->p:Liv1;

    .line 32
    .line 33
    new-instance v2, Lqi1;

    .line 34
    .line 35
    invoke-direct {v2}, Lqi1;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lqi1;->q:Lqi1;

    .line 39
    .line 40
    new-instance v8, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lm44;->B:Lc44;

    .line 46
    .line 47
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget v4, v2, Lqi1;->l:I

    .line 51
    .line 52
    if-ne v4, v0, :cond_0

    .line 53
    .line 54
    sget-object v4, Lxn2;->c:Lwn2;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v5, Lwn2;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Lwn2;-><init>(I)V

    .line 60
    .line 61
    .line 62
    move-object v4, v5

    .line 63
    :goto_0
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v4, v2, Lqi1;->a:Lc31;

    .line 67
    .line 68
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v4, v2, Lqi1;->c:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v4, v2, Lqi1;->d:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_2

    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    sget-boolean v4, Ler3;->a:Z

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    iget v9, v2, Lqi1;->e:I

    .line 114
    .line 115
    iget v10, v2, Lqi1;->f:I

    .line 116
    .line 117
    if-ne v9, v1, :cond_3

    .line 118
    .line 119
    if-eq v10, v1, :cond_5

    .line 120
    .line 121
    :cond_3
    new-instance v11, Lmo0;

    .line 122
    .line 123
    sget-object v12, Llo0;->b:Lko0;

    .line 124
    .line 125
    invoke-direct {v11, v12, v9, v10}, Lmo0;-><init>(Llo0;II)V

    .line 126
    .line 127
    .line 128
    new-instance v12, Lc44;

    .line 129
    .line 130
    const-class v13, Ljava/util/Date;

    .line 131
    .line 132
    invoke-direct {v12, v13, v11, v5}, Lc44;-><init>(Ljava/lang/Class;Lg34;I)V

    .line 133
    .line 134
    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    sget-object v11, Ler3;->c:Ldr3;

    .line 138
    .line 139
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v13, Lmo0;

    .line 143
    .line 144
    invoke-direct {v13, v11, v9, v10}, Lmo0;-><init>(Llo0;II)V

    .line 145
    .line 146
    .line 147
    iget-object v11, v11, Llo0;->a:Ljava/lang/Class;

    .line 148
    .line 149
    new-instance v14, Lc44;

    .line 150
    .line 151
    invoke-direct {v14, v11, v13, v5}, Lc44;-><init>(Ljava/lang/Class;Lg34;I)V

    .line 152
    .line 153
    .line 154
    sget-object v11, Ler3;->b:Ldr3;

    .line 155
    .line 156
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    new-instance v13, Lmo0;

    .line 160
    .line 161
    invoke-direct {v13, v11, v9, v10}, Lmo0;-><init>(Llo0;II)V

    .line 162
    .line 163
    .line 164
    iget-object v9, v11, Llo0;->a:Ljava/lang/Class;

    .line 165
    .line 166
    new-instance v10, Lc44;

    .line 167
    .line 168
    invoke-direct {v10, v9, v13, v5}, Lc44;-><init>(Ljava/lang/Class;Lg34;I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    move-object v10, v7

    .line 173
    move-object v14, v10

    .line 174
    :goto_1
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    if-eqz v4, :cond_5

    .line 178
    .line 179
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_5
    sget-object v4, Lm44;->r:Lc44;

    .line 186
    .line 187
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    sget-object v4, Lm44;->g:Ld44;

    .line 191
    .line 192
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    sget-object v4, Lm44;->d:Ld44;

    .line 196
    .line 197
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    sget-object v4, Lm44;->e:Ld44;

    .line 201
    .line 202
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    sget-object v4, Lm44;->f:Ld44;

    .line 206
    .line 207
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    iget v4, v2, Lqi1;->j:I

    .line 211
    .line 212
    if-eqz v4, :cond_8

    .line 213
    .line 214
    sget-object v4, Lm44;->k:Ll34;

    .line 215
    .line 216
    new-instance v9, Ld44;

    .line 217
    .line 218
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 219
    .line 220
    const-class v11, Ljava/lang/Long;

    .line 221
    .line 222
    invoke-direct {v9, v10, v11, v4}, Ld44;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg34;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    sget-object v9, Lm44;->m:Lk44;

    .line 229
    .line 230
    new-instance v10, Ld44;

    .line 231
    .line 232
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 233
    .line 234
    const-class v12, Ljava/lang/Double;

    .line 235
    .line 236
    invoke-direct {v10, v11, v12, v9}, Ld44;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg34;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    sget-object v9, Lm44;->l:Lk44;

    .line 243
    .line 244
    new-instance v10, Ld44;

    .line 245
    .line 246
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 247
    .line 248
    const-class v12, Ljava/lang/Float;

    .line 249
    .line 250
    invoke-direct {v10, v11, v12, v9}, Ld44;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lg34;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    iget v9, v2, Lqi1;->m:I

    .line 257
    .line 258
    if-ne v9, v1, :cond_6

    .line 259
    .line 260
    sget-object v1, Lmn2;->b:Lln2;

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_6
    new-instance v1, Lmn2;

    .line 264
    .line 265
    invoke-direct {v1, v9}, Lmn2;-><init>(I)V

    .line 266
    .line 267
    .line 268
    new-instance v9, Lln2;

    .line 269
    .line 270
    invoke-direct {v9, v1, v5}, Lln2;-><init>(Lg34;I)V

    .line 271
    .line 272
    .line 273
    move-object v1, v9

    .line 274
    :goto_2
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    sget-object v1, Lm44;->h:Lc44;

    .line 278
    .line 279
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    sget-object v1, Lm44;->i:Lc44;

    .line 283
    .line 284
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    new-instance v1, Lk34;

    .line 291
    .line 292
    invoke-direct {v1, v4, v0}, Lk34;-><init>(Lg34;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Lg34;->a()Lf34;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    new-instance v9, Lc44;

    .line 300
    .line 301
    const-class v10, Ljava/util/concurrent/atomic/AtomicLong;

    .line 302
    .line 303
    invoke-direct {v9, v10, v1, v5}, Lc44;-><init>(Ljava/lang/Class;Lg34;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    new-instance v1, Lk34;

    .line 310
    .line 311
    invoke-direct {v1, v4, v5}, Lk34;-><init>(Lg34;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Lg34;->a()Lf34;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    new-instance v4, Lc44;

    .line 319
    .line 320
    const-class v9, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 321
    .line 322
    invoke-direct {v4, v9, v1, v5}, Lc44;-><init>(Ljava/lang/Class;Lg34;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    sget-object v1, Lm44;->j:Lc44;

    .line 329
    .line 330
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    sget-object v1, Lm44;->n:Ld44;

    .line 334
    .line 335
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    sget-object v1, Lm44;->s:Lc44;

    .line 339
    .line 340
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    sget-object v1, Lm44;->t:Lc44;

    .line 344
    .line 345
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    sget-object v1, Lm44;->o:Lc44;

    .line 349
    .line 350
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    sget-object v1, Lm44;->p:Lc44;

    .line 354
    .line 355
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    sget-object v1, Lm44;->q:Lc44;

    .line 359
    .line 360
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    sget-object v1, Lm44;->u:Lc44;

    .line 364
    .line 365
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    sget-object v1, Lm44;->v:Lc44;

    .line 369
    .line 370
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    sget-object v1, Lm44;->x:Lc44;

    .line 374
    .line 375
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    sget-object v1, Lm44;->y:Lc44;

    .line 379
    .line 380
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    sget-object v1, Lm44;->A:Lc44;

    .line 384
    .line 385
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    sget-object v1, Lm44;->w:Lc44;

    .line 389
    .line 390
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    sget-object v1, Lm44;->b:Lc44;

    .line 394
    .line 395
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    sget-object v1, Lmo0;->c:Ljo0;

    .line 399
    .line 400
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    sget-object v1, Lm44;->z:Lln2;

    .line 404
    .line 405
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    :try_start_0
    const-class v1, Lmu1;

    .line 409
    .line 410
    sget-object v4, Lmu1;->a:Llu1;

    .line 411
    .line 412
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    check-cast v1, Ll44;

    .line 421
    .line 422
    check-cast v1, Lmu1;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    sget-object v7, Lmu1;->j:Lmu1$b;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .line 429
    :catch_0
    if-eqz v7, :cond_7

    .line 430
    .line 431
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    :cond_7
    sget-object v1, Ler3;->d:Ljava/util/List;

    .line 435
    .line 436
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .line 438
    .line 439
    sget-object v1, Lhi;->c:Lgi;

    .line 440
    .line 441
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    sget-object v1, Lm44;->a:Lc44;

    .line 445
    .line 446
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    new-instance v1, Ln70;

    .line 450
    .line 451
    invoke-direct {v1, v3, v5}, Ln70;-><init>(Lgw4;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    new-instance v1, Ln70;

    .line 458
    .line 459
    invoke-direct {v1, v3, v0}, Ln70;-><init>(Lgw4;I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    sget-object v0, Lm44;->C:Lu11;

    .line 469
    .line 470
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-object v0, v2

    .line 474
    new-instance v2, Lj43;

    .line 475
    .line 476
    iget-object v1, v0, Lqi1;->i:Ljava/util/ArrayDeque;

    .line 477
    .line 478
    invoke-static {v1}, Lqi1;->a(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v7

    .line 482
    iget v4, v0, Lqi1;->k:I

    .line 483
    .line 484
    iget-object v5, v0, Lqi1;->a:Lc31;

    .line 485
    .line 486
    invoke-direct/range {v2 .. v7}, Lj43;-><init>(Lgw4;ILc31;Liv1;Ljava/util/List;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V

    .line 493
    .line 494
    .line 495
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sput-object v0, Lqi1;->r:Ljava/util/List;

    .line 500
    .line 501
    return-void

    .line 502
    :cond_8
    throw v7
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lc31;->p:Lc31;

    .line 5
    .line 6
    iput-object v0, p0, Lqi1;->a:Lc31;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lqi1;->j:I

    .line 10
    .line 11
    sget v1, Lqi1;->s:I

    .line 12
    .line 13
    iput v1, p0, Lqi1;->k:I

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lqi1;->b:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lqi1;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lqi1;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lqi1;->e:I

    .line 38
    .line 39
    iput v1, p0, Lqi1;->f:I

    .line 40
    .line 41
    iput-boolean v0, p0, Lqi1;->g:Z

    .line 42
    .line 43
    sget-object v0, Lqi1;->n:Lyb1;

    .line 44
    .line 45
    iput-object v0, p0, Lqi1;->h:Lyb1;

    .line 46
    .line 47
    sget v0, Lqi1;->t:I

    .line 48
    .line 49
    iput v0, p0, Lqi1;->l:I

    .line 50
    .line 51
    sget v0, Lqi1;->u:I

    .line 52
    .line 53
    iput v0, p0, Lqi1;->m:I

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lqi1;->i:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    instance-of v0, p0, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p0, Ljava/util/List;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
