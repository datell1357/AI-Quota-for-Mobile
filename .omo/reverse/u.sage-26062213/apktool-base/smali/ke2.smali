.class public final Lke2;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Lme2;

.field public final synthetic B:F

.field public final synthetic C:Ldg3;

.field public r:Ls33;

.field public s:Ls33;

.field public t:I

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lt33;

.field public final synthetic x:Lw33;

.field public final synthetic y:Lw33;

.field public final synthetic z:F


# direct methods
.method public constructor <init>(Lt33;Lw33;Lw33;FLme2;FLdg3;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lke2;->w:Lt33;

    .line 2
    .line 3
    iput-object p2, p0, Lke2;->x:Lw33;

    .line 4
    .line 5
    iput-object p3, p0, Lke2;->y:Lw33;

    .line 6
    .line 7
    iput p4, p0, Lke2;->z:F

    .line 8
    .line 9
    iput-object p5, p0, Lke2;->A:Lme2;

    .line 10
    .line 11
    iput p6, p0, Lke2;->B:F

    .line 12
    .line 13
    iput-object p7, p0, Lke2;->C:Ldg3;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lbv3;-><init>(ILdh0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lbg3;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lke2;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lke2;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lke2;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    new-instance v0, Lke2;

    .line 2
    .line 3
    iget v6, p0, Lke2;->B:F

    .line 4
    .line 5
    iget-object v7, p0, Lke2;->C:Ldg3;

    .line 6
    .line 7
    iget-object v1, p0, Lke2;->w:Lt33;

    .line 8
    .line 9
    iget-object v2, p0, Lke2;->x:Lw33;

    .line 10
    .line 11
    iget-object v3, p0, Lke2;->y:Lw33;

    .line 12
    .line 13
    iget v4, p0, Lke2;->z:F

    .line 14
    .line 15
    iget-object v5, p0, Lke2;->A:Lme2;

    .line 16
    .line 17
    move-object v8, p1

    .line 18
    invoke-direct/range {v0 .. v8}, Lke2;-><init>(Lt33;Lw33;Lw33;FLme2;FLdg3;Ldh0;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, v0, Lke2;->v:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Lke2;->u:I

    .line 4
    .line 5
    iget-object v1, v7, Lke2;->y:Lw33;

    .line 6
    .line 7
    const/4 v15, 0x0

    .line 8
    iget-object v2, v7, Lke2;->w:Lt33;

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    iget-object v5, v7, Lke2;->x:Lw33;

    .line 14
    .line 15
    sget-object v8, Lri0;->n:Lri0;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eq v0, v4, :cond_2

    .line 20
    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    if-ne v0, v6, :cond_0

    .line 24
    .line 25
    iget-object v0, v7, Lke2;->s:Ls33;

    .line 26
    .line 27
    iget-object v9, v7, Lke2;->r:Ls33;

    .line 28
    .line 29
    iget-object v10, v7, Lke2;->v:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v10, Lbg3;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    move-object v12, v10

    .line 37
    move-object v10, v8

    .line 38
    move-object v8, v12

    .line 39
    move-object v13, v0

    .line 40
    move v12, v3

    .line 41
    move v14, v4

    .line 42
    move-object v4, v5

    .line 43
    move/from16 v23, v6

    .line 44
    .line 45
    move-object/from16 v0, p1

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v15

    .line 55
    :cond_1
    iget v0, v7, Lke2;->t:I

    .line 56
    .line 57
    iget-object v9, v7, Lke2;->r:Ls33;

    .line 58
    .line 59
    iget-object v10, v7, Lke2;->v:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v10, Lbg3;

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v6, v7

    .line 67
    move-object v7, v5

    .line 68
    move-object v5, v6

    .line 69
    move-object v11, v2

    .line 70
    move v12, v3

    .line 71
    move v14, v4

    .line 72
    move-object v6, v8

    .line 73
    move-object v13, v9

    .line 74
    move-object v8, v10

    .line 75
    move-object v10, v1

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_2
    iget-object v0, v7, Lke2;->s:Ls33;

    .line 79
    .line 80
    iget-object v9, v7, Lke2;->r:Ls33;

    .line 81
    .line 82
    iget-object v10, v7, Lke2;->v:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v10, Lbg3;

    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v12, v10

    .line 90
    move-object v10, v8

    .line 91
    move-object v8, v12

    .line 92
    move-object v13, v0

    .line 93
    move v12, v3

    .line 94
    move v14, v4

    .line 95
    move-object v4, v5

    .line 96
    move/from16 v23, v6

    .line 97
    .line 98
    move-object/from16 v0, p1

    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v7, Lke2;->v:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lbg3;

    .line 108
    .line 109
    new-instance v9, Ls33;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-boolean v4, v9, Ls33;->n:Z

    .line 115
    .line 116
    move-object v13, v9

    .line 117
    :goto_0
    iget-boolean v9, v13, Ls33;->n:Z

    .line 118
    .line 119
    sget-object v22, Lt64;->a:Lt64;

    .line 120
    .line 121
    if-eqz v9, :cond_c

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    iput-boolean v9, v13, Ls33;->n:Z

    .line 125
    .line 126
    iget v9, v2, Lt33;->n:F

    .line 127
    .line 128
    iget-object v10, v5, Lw33;->n:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v10, Lwe;

    .line 131
    .line 132
    iget-object v10, v10, Lwe;->o:Lws2;

    .line 133
    .line 134
    invoke-virtual {v10}, Lws2;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    sub-float/2addr v9, v10

    .line 145
    iget-object v10, v1, Lw33;->n:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v10, Lie2;

    .line 148
    .line 149
    iget-boolean v10, v10, Lie2;->c:Z

    .line 150
    .line 151
    iget-object v11, v7, Lke2;->A:Lme2;

    .line 152
    .line 153
    if-nez v10, :cond_4

    .line 154
    .line 155
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    iget v12, v7, Lke2;->z:F

    .line 160
    .line 161
    cmpg-float v10, v10, v12

    .line 162
    .line 163
    if-gez v10, :cond_5

    .line 164
    .line 165
    :cond_4
    move v12, v3

    .line 166
    move v14, v4

    .line 167
    move-object v4, v5

    .line 168
    move/from16 v23, v6

    .line 169
    .line 170
    move-object v10, v8

    .line 171
    move-object v8, v0

    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_5
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    mul-float/2addr v9, v12

    .line 179
    invoke-virtual {v11, v0, v9}, Lme2;->e(Lbg3;F)F

    .line 180
    .line 181
    .line 182
    iget-object v10, v5, Lw33;->n:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v10, Lwe;

    .line 185
    .line 186
    iget-object v11, v10, Lwe;->o:Lws2;

    .line 187
    .line 188
    invoke-virtual {v11}, Lws2;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    check-cast v11, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    add-float/2addr v11, v9

    .line 199
    invoke-static {v10, v11}, Lk30;->m(Lwe;F)Lwe;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    iput-object v9, v5, Lw33;->n:Ljava/lang/Object;

    .line 204
    .line 205
    iget v10, v2, Lt33;->n:F

    .line 206
    .line 207
    iget-object v9, v9, Lwe;->o:Lws2;

    .line 208
    .line 209
    invoke-virtual {v9}, Lws2;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/lang/Number;

    .line 214
    .line 215
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    sub-float/2addr v10, v9

    .line 220
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    iget v10, v7, Lke2;->B:F

    .line 225
    .line 226
    div-float/2addr v9, v10

    .line 227
    invoke-static {v9}, Lis0;->V(F)I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    const/16 v10, 0x64

    .line 232
    .line 233
    if-le v9, v10, :cond_6

    .line 234
    .line 235
    move v9, v10

    .line 236
    :cond_6
    iget-object v10, v5, Lw33;->n:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v10, Lwe;

    .line 239
    .line 240
    iget v11, v2, Lt33;->n:F

    .line 241
    .line 242
    new-instance v20, Lq6;

    .line 243
    .line 244
    const/4 v14, 0x1

    .line 245
    move v12, v9

    .line 246
    iget-object v9, v7, Lke2;->A:Lme2;

    .line 247
    .line 248
    move/from16 v16, v12

    .line 249
    .line 250
    iget-object v12, v7, Lke2;->C:Ldg3;

    .line 251
    .line 252
    move-object v6, v8

    .line 253
    move v4, v11

    .line 254
    move-object/from16 v8, v20

    .line 255
    .line 256
    move-object v11, v2

    .line 257
    move-object v2, v10

    .line 258
    move-object v10, v1

    .line 259
    move/from16 v1, v16

    .line 260
    .line 261
    invoke-direct/range {v8 .. v14}, Lq6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    move-object/from16 v18, v9

    .line 265
    .line 266
    iput-object v0, v7, Lke2;->v:Ljava/lang/Object;

    .line 267
    .line 268
    iput-object v13, v7, Lke2;->r:Ls33;

    .line 269
    .line 270
    iput-object v15, v7, Lke2;->s:Ls33;

    .line 271
    .line 272
    iput v1, v7, Lke2;->t:I

    .line 273
    .line 274
    iput v3, v7, Lke2;->u:I

    .line 275
    .line 276
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    new-instance v8, Lt33;

    .line 280
    .line 281
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v9, v2, Lwe;->o:Lws2;

    .line 285
    .line 286
    invoke-virtual {v9}, Lws2;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    check-cast v9, Ljava/lang/Number;

    .line 291
    .line 292
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    iput v9, v8, Lt33;->n:F

    .line 297
    .line 298
    new-instance v9, Ljava/lang/Float;

    .line 299
    .line 300
    invoke-direct {v9, v4}, Ljava/lang/Float;-><init>(F)V

    .line 301
    .line 302
    .line 303
    sget-object v4, Lny0;->c:Lmk0;

    .line 304
    .line 305
    invoke-static {v1, v3, v4}, Ltv4;->V(IILmy0;)Ld34;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    new-instance v16, Lk4;

    .line 310
    .line 311
    const/16 v21, 0x5

    .line 312
    .line 313
    move-object/from16 v19, v0

    .line 314
    .line 315
    move-object/from16 v17, v8

    .line 316
    .line 317
    invoke-direct/range {v16 .. v21}, Lk4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 318
    .line 319
    .line 320
    move v0, v3

    .line 321
    move-object/from16 v8, v19

    .line 322
    .line 323
    const/4 v3, 0x1

    .line 324
    move-object v12, v7

    .line 325
    move-object v7, v5

    .line 326
    move-object v5, v12

    .line 327
    move v12, v0

    .line 328
    move-object v0, v2

    .line 329
    move-object v2, v4

    .line 330
    move-object/from16 v4, v16

    .line 331
    .line 332
    const/4 v14, 0x1

    .line 333
    move/from16 v16, v1

    .line 334
    .line 335
    move-object v1, v9

    .line 336
    invoke-static/range {v0 .. v5}, Lk75;->h(Lwe;Ljava/lang/Float;Lve;ZLpe1;Lfh0;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-ne v0, v6, :cond_7

    .line 341
    .line 342
    goto :goto_1

    .line 343
    :cond_7
    move-object/from16 v0, v22

    .line 344
    .line 345
    :goto_1
    if-ne v0, v6, :cond_8

    .line 346
    .line 347
    move-object v10, v6

    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_8
    move/from16 v0, v16

    .line 351
    .line 352
    :goto_2
    iget-boolean v1, v13, Ls33;->n:Z

    .line 353
    .line 354
    if-nez v1, :cond_a

    .line 355
    .line 356
    const-wide/16 v1, 0x32

    .line 357
    .line 358
    int-to-long v3, v0

    .line 359
    sub-long/2addr v1, v3

    .line 360
    iput-object v8, v5, Lke2;->v:Ljava/lang/Object;

    .line 361
    .line 362
    iput-object v13, v5, Lke2;->r:Ls33;

    .line 363
    .line 364
    iput-object v13, v5, Lke2;->s:Ls33;

    .line 365
    .line 366
    const/4 v0, 0x3

    .line 367
    iput v0, v5, Lke2;->u:I

    .line 368
    .line 369
    move/from16 v23, v0

    .line 370
    .line 371
    iget-object v0, v5, Lke2;->A:Lme2;

    .line 372
    .line 373
    iget-object v3, v5, Lke2;->C:Ldg3;

    .line 374
    .line 375
    move-object v4, v7

    .line 376
    move-object v7, v5

    .line 377
    move-object/from16 v24, v10

    .line 378
    .line 379
    move-object v10, v6

    .line 380
    move-wide v5, v1

    .line 381
    move-object/from16 v1, v24

    .line 382
    .line 383
    move-object v2, v11

    .line 384
    invoke-static/range {v0 .. v7}, Lme2;->d(Lme2;Lw33;Lt33;Ldg3;Lw33;JLfh0;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-ne v0, v10, :cond_9

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_9
    move-object v9, v13

    .line 392
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    iput-boolean v0, v13, Ls33;->n:Z

    .line 399
    .line 400
    :goto_4
    move-object v5, v4

    .line 401
    move-object v0, v8

    .line 402
    move-object v13, v9

    .line 403
    move-object v8, v10

    .line 404
    move v3, v12

    .line 405
    :goto_5
    move v4, v14

    .line 406
    move/from16 v6, v23

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :cond_a
    move-object v4, v7

    .line 411
    const/16 v23, 0x3

    .line 412
    .line 413
    move-object v7, v5

    .line 414
    move-object v0, v8

    .line 415
    move-object v1, v10

    .line 416
    move-object v2, v11

    .line 417
    move v3, v12

    .line 418
    move-object v5, v4

    .line 419
    move-object v8, v6

    .line 420
    goto :goto_5

    .line 421
    :goto_6
    invoke-virtual {v11, v8, v9}, Lme2;->e(Lbg3;F)F

    .line 422
    .line 423
    .line 424
    iput-object v8, v7, Lke2;->v:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v13, v7, Lke2;->r:Ls33;

    .line 427
    .line 428
    iput-object v13, v7, Lke2;->s:Ls33;

    .line 429
    .line 430
    iput v14, v7, Lke2;->u:I

    .line 431
    .line 432
    iget-object v0, v7, Lke2;->A:Lme2;

    .line 433
    .line 434
    iget-object v3, v7, Lke2;->C:Ldg3;

    .line 435
    .line 436
    const-wide/16 v5, 0x32

    .line 437
    .line 438
    invoke-static/range {v0 .. v7}, Lme2;->d(Lme2;Lw33;Lt33;Ldg3;Lw33;JLfh0;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    if-ne v0, v10, :cond_b

    .line 443
    .line 444
    :goto_7
    return-object v10

    .line 445
    :cond_b
    move-object v9, v13

    .line 446
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    iput-boolean v0, v13, Ls33;->n:Z

    .line 453
    .line 454
    move-object/from16 v7, p0

    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_c
    return-object v22
.end method
