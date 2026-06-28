.class public final Lvh1;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Lcom/google/api/services/calendar/Calendar;

.field public s:Ljava/util/List;

.field public t:J

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lwh1;

.field public final synthetic x:Ld84;


# direct methods
.method public constructor <init>(Lwh1;Ld84;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvh1;->w:Lwh1;

    .line 2
    .line 3
    iput-object p2, p0, Lvh1;->x:Ld84;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lvh1;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvh1;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvh1;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    new-instance v0, Lvh1;

    .line 2
    .line 3
    iget-object v1, p0, Lvh1;->w:Lwh1;

    .line 4
    .line 5
    iget-object p0, p0, Lvh1;->x:Ld84;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lvh1;-><init>(Lwh1;Ld84;Ldh0;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, v0, Lvh1;->v:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lvh1;->w:Lwh1;

    .line 4
    .line 5
    iget-object v2, v1, Lwh1;->c:Lm10;

    .line 6
    .line 7
    iget-object v3, v0, Lvh1;->v:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lqi0;

    .line 10
    .line 11
    iget v3, v0, Lvh1;->u:I

    .line 12
    .line 13
    sget-object v4, Lt64;->a:Lt64;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x2

    .line 18
    iget-object v8, v0, Lvh1;->x:Ld84;

    .line 19
    .line 20
    const/4 v9, 0x1

    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    sget-object v12, Lri0;->n:Lri0;

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    if-eq v3, v9, :cond_3

    .line 28
    .line 29
    if-eq v3, v7, :cond_2

    .line 30
    .line 31
    if-eq v3, v6, :cond_1

    .line 32
    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    iget-object v0, v0, Lvh1;->s:Ljava/util/List;

    .line 36
    .line 37
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto/16 :goto_f

    .line 41
    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_10

    .line 44
    .line 45
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v11

    .line 51
    :cond_1
    iget-wide v13, v0, Lvh1;->t:J

    .line 52
    .line 53
    iget-object v1, v0, Lvh1;->s:Ljava/util/List;

    .line 54
    .line 55
    :try_start_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v26, v4

    .line 59
    .line 60
    move-object v4, v12

    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_3
    iget-object v3, v0, Lvh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 69
    .line 70
    :try_start_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    move-object/from16 v13, p1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :try_start_3
    sget-object v3, Lez3;->a:Lra3;

    .line 80
    .line 81
    new-array v13, v10, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v13}, Lra3;->c([Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lwh1;->c(Lwh1;)Lcom/google/api/services/calendar/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    new-array v0, v10, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-static {v0}, Lra3;->f([Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lnh1;

    .line 101
    .line 102
    const-string v1, "Not signed in to Google"

    .line 103
    .line 104
    invoke-direct {v0, v10, v7, v1, v10}, Lnh1;-><init>(IILjava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_5
    new-array v13, v10, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v13}, Lra3;->c([Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v11, v0, Lvh1;->v:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v3, v0, Lvh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 116
    .line 117
    iput v9, v0, Lvh1;->u:I

    .line 118
    .line 119
    invoke-static {v1, v3, v0}, Lwh1;->d(Lwh1;Lcom/google/api/services/calendar/Calendar;Lfh0;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-ne v13, v12, :cond_6

    .line 124
    .line 125
    :goto_0
    move-object v4, v12

    .line 126
    goto/16 :goto_e

    .line 127
    .line 128
    :cond_6
    :goto_1
    check-cast v13, Ljava/lang/String;

    .line 129
    .line 130
    sget-object v14, Lez3;->a:Lra3;

    .line 131
    .line 132
    new-array v15, v10, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v15}, Lra3;->c([Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v14

    .line 144
    new-instance v6, Ljava/util/Date;

    .line 145
    .line 146
    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    new-array v6, v10, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-array v6, v10, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ld84;->c()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    move/from16 v16, v10

    .line 171
    .line 172
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v17

    .line 176
    if-eqz v17, :cond_9

    .line 177
    .line 178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v17

    .line 182
    add-int/lit8 v18, v16, 0x1

    .line 183
    .line 184
    if-ltz v16, :cond_8

    .line 185
    .line 186
    check-cast v17, Lp84;

    .line 187
    .line 188
    sget-object v16, Lez3;->a:Lra3;

    .line 189
    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v17 .. v17}, Lp84;->b()Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v17

    .line 197
    if-eqz v17, :cond_7

    .line 198
    .line 199
    move-object/from16 p1, v6

    .line 200
    .line 201
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v5

    .line 205
    new-instance v9, Ljava/util/Date;

    .line 206
    .line 207
    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    move-object/from16 p1, v6

    .line 212
    .line 213
    move-object v9, v11

    .line 214
    :goto_3
    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    new-array v5, v10, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v6, p1

    .line 226
    .line 227
    move/from16 v16, v18

    .line 228
    .line 229
    const/4 v5, 0x4

    .line 230
    const/4 v9, 0x1

    .line 231
    goto :goto_2

    .line 232
    :cond_8
    invoke-static {}, Ltv4;->S()V

    .line 233
    .line 234
    .line 235
    throw v11

    .line 236
    :cond_9
    invoke-virtual {v8}, Ld84;->c()Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_b

    .line 254
    .line 255
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    move-object/from16 v16, v9

    .line 260
    .line 261
    check-cast v16, Lp84;

    .line 262
    .line 263
    invoke-virtual/range {v16 .. v16}, Lp84;->b()Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v18

    .line 267
    if-eqz v18, :cond_a

    .line 268
    .line 269
    invoke-virtual/range {v16 .. v16}, Lp84;->b()Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    .line 274
    .line 275
    .line 276
    move-result-wide v19

    .line 277
    cmp-long v16, v19, v14

    .line 278
    .line 279
    if-lez v16, :cond_a

    .line 280
    .line 281
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_b
    new-instance v5, Llh0;

    .line 286
    .line 287
    const/16 v9, 0xa

    .line 288
    .line 289
    invoke-direct {v5, v9}, Llh0;-><init>(I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v6, v5}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v9, v5}, Lo70;->z0(ILjava/util/List;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    sget-object v6, Lez3;->a:Lra3;

    .line 301
    .line 302
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Ld84;->c()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    new-array v9, v10, [Ljava/lang/Object;

    .line 313
    .line 314
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    invoke-static {v9}, Lra3;->c([Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_d

    .line 325
    .line 326
    new-array v2, v10, [Ljava/lang/Object;

    .line 327
    .line 328
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iput-object v11, v0, Lvh1;->v:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v11, v0, Lvh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 334
    .line 335
    iput-wide v14, v0, Lvh1;->t:J

    .line 336
    .line 337
    iput v7, v0, Lvh1;->u:I

    .line 338
    .line 339
    sget-object v0, Lwh1;->i:Lhh2;

    .line 340
    .line 341
    sget-object v0, Lg01;->n:Lg01;

    .line 342
    .line 343
    invoke-virtual {v1, v3, v13, v0}, Lwh1;->e(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/util/List;)V

    .line 344
    .line 345
    .line 346
    if-ne v4, v12, :cond_c

    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_c
    :goto_5
    new-instance v0, Lnh1;

    .line 351
    .line 352
    const/4 v1, 0x4

    .line 353
    const/4 v2, 0x1

    .line 354
    invoke-direct {v0, v10, v1, v11, v2}, Lnh1;-><init>(IILjava/lang/String;Z)V

    .line 355
    .line 356
    .line 357
    return-object v0

    .line 358
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 364
    .line 365
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 369
    .line 370
    .line 371
    new-array v7, v10, [Ljava/lang/Object;

    .line 372
    .line 373
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batch()Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v18

    .line 384
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 388
    const-string v20, ""

    .line 389
    .line 390
    if-eqz v19, :cond_f

    .line 391
    .line 392
    :try_start_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v19

    .line 396
    check-cast v19, Lp84;

    .line 397
    .line 398
    invoke-virtual/range {v19 .. v19}, Lp84;->b()Ljava/lang/Long;

    .line 399
    .line 400
    .line 401
    move-result-object v21

    .line 402
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    move-object/from16 v25, v12

    .line 406
    .line 407
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    .line 408
    .line 409
    .line 410
    move-result-wide v11

    .line 411
    invoke-virtual/range {v19 .. v19}, Lp84;->d()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v19

    .line 415
    if-nez v19, :cond_e

    .line 416
    .line 417
    move-object/from16 v10, v20

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_e
    move-object/from16 v10, v19

    .line 421
    .line 422
    :goto_7
    invoke-static {v1, v11, v12, v10}, Lwh1;->b(Lwh1;JLjava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    new-instance v11, Luh1;

    .line 427
    .line 428
    invoke-direct {v11, v9}, Luh1;-><init>(Ljava/util/LinkedHashSet;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    invoke-virtual {v12, v13, v10}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-virtual {v10, v7, v11}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v12, v25

    .line 443
    .line 444
    const/4 v10, 0x0

    .line 445
    const/4 v11, 0x0

    .line 446
    goto :goto_6

    .line 447
    :cond_f
    move-object/from16 v25, v12

    .line 448
    .line 449
    invoke-virtual {v7}, Lcom/google/api/client/googleapis/batch/BatchRequest;->execute()V

    .line 450
    .line 451
    .line 452
    sget-object v7, Lez3;->a:Lra3;

    .line 453
    .line 454
    const/4 v10, 0x0

    .line 455
    new-array v11, v10, [Ljava/lang/Object;

    .line 456
    .line 457
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    invoke-static {v11}, Lra3;->c([Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batch()Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result v10

    .line 475
    if-eqz v10, :cond_12

    .line 476
    .line 477
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v10

    .line 481
    check-cast v10, Lp84;

    .line 482
    .line 483
    invoke-virtual {v10}, Lp84;->b()Ljava/lang/Long;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 491
    .line 492
    .line 493
    move-result-wide v11

    .line 494
    invoke-virtual {v10}, Lp84;->d()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v18

    .line 498
    move-object/from16 v26, v4

    .line 499
    .line 500
    if-nez v18, :cond_10

    .line 501
    .line 502
    move-object/from16 v4, v20

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_10
    move-object/from16 v4, v18

    .line 506
    .line 507
    :goto_9
    invoke-static {v1, v11, v12, v4}, Lwh1;->b(Lwh1;JLjava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-static {v1, v4, v10}, Lwh1;->a(Lwh1;Ljava/lang/String;Lp84;)Lcom/google/api/services/calendar/model/Event;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    new-instance v11, Luh1;

    .line 516
    .line 517
    invoke-direct {v11, v4, v6}, Luh1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v12

    .line 524
    if-eqz v12, :cond_11

    .line 525
    .line 526
    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    .line 527
    .line 528
    .line 529
    move-result-object v12

    .line 530
    invoke-virtual {v12, v13, v4, v10}, Lcom/google/api/services/calendar/Calendar$Events;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-virtual {v4, v7, v11}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V

    .line 535
    .line 536
    .line 537
    :goto_a
    move-object/from16 v4, v26

    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_11
    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    invoke-virtual {v4, v13, v10}, Lcom/google/api/services/calendar/Calendar$Events;->insert(Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-virtual {v4, v7, v11}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_12
    move-object/from16 v26, v4

    .line 553
    .line 554
    invoke-virtual {v7}, Lcom/google/api/client/googleapis/batch/BatchRequest;->execute()V

    .line 555
    .line 556
    .line 557
    sget-object v4, Lez3;->a:Lra3;

    .line 558
    .line 559
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    const/4 v10, 0x0

    .line 563
    new-array v5, v10, [Ljava/lang/Object;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    sget-object v4, Lwh1;->i:Lhh2;

    .line 572
    .line 573
    invoke-virtual {v1, v3, v13, v6}, Lwh1;->e(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/util/List;)V

    .line 574
    .line 575
    .line 576
    const-string v20, ","

    .line 577
    .line 578
    const/16 v23, 0x0

    .line 579
    .line 580
    const/16 v24, 0x3e

    .line 581
    .line 582
    const/16 v21, 0x0

    .line 583
    .line 584
    const/16 v22, 0x0

    .line 585
    .line 586
    move-object/from16 v19, v6

    .line 587
    .line 588
    invoke-static/range {v19 .. v24}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    move-object/from16 v3, v19

    .line 593
    .line 594
    const/4 v4, 0x0

    .line 595
    iput-object v4, v0, Lvh1;->v:Ljava/lang/Object;

    .line 596
    .line 597
    iput-object v4, v0, Lvh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 598
    .line 599
    iput-object v3, v0, Lvh1;->s:Ljava/util/List;

    .line 600
    .line 601
    iput-wide v14, v0, Lvh1;->t:J

    .line 602
    .line 603
    const/4 v4, 0x3

    .line 604
    iput v4, v0, Lvh1;->u:I

    .line 605
    .line 606
    iget-object v4, v2, Lm10;->a:Llm0;

    .line 607
    .line 608
    new-instance v5, Lar;

    .line 609
    .line 610
    const/4 v6, 0x5

    .line 611
    const/4 v7, 0x0

    .line 612
    invoke-direct {v5, v1, v7, v6}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 613
    .line 614
    .line 615
    invoke-static {v4, v5, v0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    move-object/from16 v4, v25

    .line 620
    .line 621
    if-ne v1, v4, :cond_13

    .line 622
    .line 623
    goto :goto_b

    .line 624
    :cond_13
    move-object/from16 v1, v26

    .line 625
    .line 626
    :goto_b
    if-ne v1, v4, :cond_14

    .line 627
    .line 628
    goto :goto_e

    .line 629
    :cond_14
    move-object v1, v3

    .line 630
    move-wide v13, v14

    .line 631
    :goto_c
    invoke-virtual {v8}, Ld84;->c()Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-static {v3}, Lgg4;->z(Ljava/util/List;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    const/4 v7, 0x0

    .line 640
    iput-object v7, v0, Lvh1;->v:Ljava/lang/Object;

    .line 641
    .line 642
    iput-object v7, v0, Lvh1;->r:Lcom/google/api/services/calendar/Calendar;

    .line 643
    .line 644
    iput-object v1, v0, Lvh1;->s:Ljava/util/List;

    .line 645
    .line 646
    iput-wide v13, v0, Lvh1;->t:J

    .line 647
    .line 648
    const/4 v5, 0x4

    .line 649
    iput v5, v0, Lvh1;->u:I

    .line 650
    .line 651
    iget-object v2, v2, Lm10;->a:Llm0;

    .line 652
    .line 653
    new-instance v5, Lar;

    .line 654
    .line 655
    const/4 v6, 0x6

    .line 656
    const/4 v7, 0x0

    .line 657
    invoke-direct {v5, v3, v7, v6}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 658
    .line 659
    .line 660
    invoke-static {v2, v5, v0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    if-ne v0, v4, :cond_15

    .line 665
    .line 666
    goto :goto_d

    .line 667
    :cond_15
    move-object/from16 v0, v26

    .line 668
    .line 669
    :goto_d
    if-ne v0, v4, :cond_16

    .line 670
    .line 671
    :goto_e
    return-object v4

    .line 672
    :cond_16
    move-object v0, v1

    .line 673
    :goto_f
    sget-object v1, Lez3;->a:Lra3;

    .line 674
    .line 675
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    const/4 v10, 0x0

    .line 682
    new-array v2, v10, [Ljava/lang/Object;

    .line 683
    .line 684
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    new-instance v1, Lnh1;

    .line 691
    .line 692
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    const/4 v2, 0x1

    .line 697
    const/4 v5, 0x4

    .line 698
    const/4 v7, 0x0

    .line 699
    invoke-direct {v1, v0, v5, v7, v2}, Lnh1;-><init>(IILjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 700
    .line 701
    .line 702
    return-object v1

    .line 703
    :goto_10
    sget-object v1, Lez3;->a:Lra3;

    .line 704
    .line 705
    const/4 v10, 0x0

    .line 706
    new-array v2, v10, [Ljava/lang/Object;

    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    invoke-static {v2}, Lra3;->g([Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    new-instance v1, Lnh1;

    .line 715
    .line 716
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    const/4 v2, 0x2

    .line 721
    invoke-direct {v1, v10, v2, v0, v10}, Lnh1;-><init>(IILjava/lang/String;Z)V

    .line 722
    .line 723
    .line 724
    return-object v1
.end method
