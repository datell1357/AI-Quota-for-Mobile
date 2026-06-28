.class public final Lke;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb81;Lhi0;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lke;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lke;->o:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Liy3;->b(Lhi0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lke;->p:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Ld93;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-direct {p2, p1, v0, v1}, Ld93;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lke;->q:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    iput p4, p0, Lke;->n:I

    iput-object p1, p0, Lke;->o:Ljava/lang/Object;

    iput-object p2, p0, Lke;->p:Ljava/lang/Object;

    iput-object p3, p0, Lke;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lke;->n:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/high16 v7, -0x80000000

    .line 14
    .line 15
    sget-object v8, Lri0;->n:Lri0;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    sget-object v10, Lt64;->a:Lt64;

    .line 19
    .line 20
    iget-object v11, v0, Lke;->q:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v12, v0, Lke;->p:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v13, v0, Lke;->o:Ljava/lang/Object;

    .line 25
    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast v13, Lhi0;

    .line 30
    .line 31
    check-cast v11, Ld93;

    .line 32
    .line 33
    invoke-static {v13, v1, v12, v11, v2}, Lca;->P(Lhi0;Ljava/lang/Object;Ljava/lang/Object;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-ne v0, v8, :cond_0

    .line 38
    .line 39
    move-object v10, v0

    .line 40
    :cond_0
    return-object v10

    .line 41
    :pswitch_0
    instance-of v3, v2, Lm91;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    move-object v3, v2

    .line 46
    check-cast v3, Lm91;

    .line 47
    .line 48
    iget v14, v3, Lm91;->r:I

    .line 49
    .line 50
    and-int v15, v14, v7

    .line 51
    .line 52
    if-eqz v15, :cond_1

    .line 53
    .line 54
    sub-int/2addr v14, v7

    .line 55
    iput v14, v3, Lm91;->r:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v3, Lm91;

    .line 59
    .line 60
    invoke-direct {v3, v0, v2}, Lm91;-><init>(Lke;Ldh0;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, v3, Lm91;->q:Ljava/lang/Object;

    .line 64
    .line 65
    iget v2, v3, Lm91;->r:I

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    if-eq v2, v6, :cond_3

    .line 70
    .line 71
    if-ne v2, v4, :cond_2

    .line 72
    .line 73
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move-object v8, v9

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    iget-object v1, v3, Lm91;->s:Lb81;

    .line 83
    .line 84
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object v0, v13

    .line 92
    check-cast v0, Lb81;

    .line 93
    .line 94
    check-cast v1, Ljava/util/Set;

    .line 95
    .line 96
    check-cast v12, Lga3;

    .line 97
    .line 98
    check-cast v11, Lba4;

    .line 99
    .line 100
    iput-object v0, v3, Lm91;->s:Lb81;

    .line 101
    .line 102
    iput v6, v3, Lm91;->r:I

    .line 103
    .line 104
    invoke-static {v12, v6, v11, v3}, Lgg4;->O(Lga3;ZLba4;Lfh0;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-ne v1, v8, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move-object/from16 v16, v1

    .line 112
    .line 113
    move-object v1, v0

    .line 114
    move-object/from16 v0, v16

    .line 115
    .line 116
    :goto_1
    iput-object v9, v3, Lm91;->s:Lb81;

    .line 117
    .line 118
    iput v4, v3, Lm91;->r:I

    .line 119
    .line 120
    invoke-interface {v1, v0, v3}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v8, :cond_6

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    :goto_2
    move-object v8, v10

    .line 128
    :goto_3
    return-object v8

    .line 129
    :pswitch_1
    instance-of v3, v2, Lq81;

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    move-object v3, v2

    .line 134
    check-cast v3, Lq81;

    .line 135
    .line 136
    iget v14, v3, Lq81;->u:I

    .line 137
    .line 138
    and-int v15, v14, v7

    .line 139
    .line 140
    if-eqz v15, :cond_7

    .line 141
    .line 142
    sub-int/2addr v14, v7

    .line 143
    iput v14, v3, Lq81;->u:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    new-instance v3, Lq81;

    .line 147
    .line 148
    invoke-direct {v3, v0, v2}, Lq81;-><init>(Lke;Ldh0;)V

    .line 149
    .line 150
    .line 151
    :goto_4
    iget-object v2, v3, Lq81;->s:Ljava/lang/Object;

    .line 152
    .line 153
    iget v7, v3, Lq81;->u:I

    .line 154
    .line 155
    const/4 v14, 0x3

    .line 156
    if-eqz v7, :cond_c

    .line 157
    .line 158
    if-eq v7, v6, :cond_8

    .line 159
    .line 160
    if-eq v7, v4, :cond_b

    .line 161
    .line 162
    if-ne v7, v14, :cond_a

    .line 163
    .line 164
    :cond_8
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    move-object v8, v10

    .line 168
    goto :goto_6

    .line 169
    :cond_a
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v8, v9

    .line 173
    goto :goto_6

    .line 174
    :cond_b
    iget-object v0, v3, Lq81;->r:Ljava/lang/Object;

    .line 175
    .line 176
    iget-object v1, v3, Lq81;->q:Lke;

    .line 177
    .line 178
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v16, v1

    .line 182
    .line 183
    move-object v1, v0

    .line 184
    move-object/from16 v0, v16

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    check-cast v13, Ls33;

    .line 191
    .line 192
    iget-boolean v2, v13, Ls33;->n:Z

    .line 193
    .line 194
    if-eqz v2, :cond_d

    .line 195
    .line 196
    check-cast v12, Lb81;

    .line 197
    .line 198
    iput v6, v3, Lq81;->u:I

    .line 199
    .line 200
    invoke-interface {v12, v1, v3}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-ne v0, v8, :cond_9

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_d
    check-cast v11, Ldf1;

    .line 208
    .line 209
    iput-object v0, v3, Lq81;->q:Lke;

    .line 210
    .line 211
    iput-object v1, v3, Lq81;->r:Ljava/lang/Object;

    .line 212
    .line 213
    iput v4, v3, Lq81;->u:I

    .line 214
    .line 215
    invoke-interface {v11, v1, v3}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-ne v2, v8, :cond_e

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_e
    :goto_5
    check-cast v2, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_9

    .line 229
    .line 230
    iget-object v2, v0, Lke;->o:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v2, Ls33;

    .line 233
    .line 234
    iput-boolean v6, v2, Ls33;->n:Z

    .line 235
    .line 236
    iget-object v0, v0, Lke;->p:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lb81;

    .line 239
    .line 240
    iput-object v9, v3, Lq81;->q:Lke;

    .line 241
    .line 242
    iput-object v9, v3, Lq81;->r:Ljava/lang/Object;

    .line 243
    .line 244
    iput v14, v3, Lq81;->u:I

    .line 245
    .line 246
    invoke-interface {v0, v1, v3}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-ne v0, v8, :cond_9

    .line 251
    .line 252
    :goto_6
    return-object v8

    .line 253
    :pswitch_2
    check-cast v12, Lw33;

    .line 254
    .line 255
    check-cast v13, Lov0;

    .line 256
    .line 257
    instance-of v3, v2, Lnv0;

    .line 258
    .line 259
    if-eqz v3, :cond_f

    .line 260
    .line 261
    move-object v3, v2

    .line 262
    check-cast v3, Lnv0;

    .line 263
    .line 264
    iget v4, v3, Lnv0;->s:I

    .line 265
    .line 266
    and-int v14, v4, v7

    .line 267
    .line 268
    if-eqz v14, :cond_f

    .line 269
    .line 270
    sub-int/2addr v4, v7

    .line 271
    iput v4, v3, Lnv0;->s:I

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_f
    new-instance v3, Lnv0;

    .line 275
    .line 276
    invoke-direct {v3, v0, v2}, Lnv0;-><init>(Lke;Ldh0;)V

    .line 277
    .line 278
    .line 279
    :goto_7
    iget-object v0, v3, Lnv0;->q:Ljava/lang/Object;

    .line 280
    .line 281
    iget v2, v3, Lnv0;->s:I

    .line 282
    .line 283
    if-eqz v2, :cond_12

    .line 284
    .line 285
    if-ne v2, v6, :cond_11

    .line 286
    .line 287
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_10
    move-object v8, v10

    .line 291
    goto :goto_8

    .line 292
    :cond_11
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    move-object v8, v9

    .line 296
    goto :goto_8

    .line 297
    :cond_12
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v12, Lw33;->n:Ljava/lang/Object;

    .line 301
    .line 302
    sget-object v2, Ljn2;->a:Lsg0;

    .line 303
    .line 304
    if-eq v0, v2, :cond_13

    .line 305
    .line 306
    iget-object v2, v13, Lov0;->o:Ldf1;

    .line 307
    .line 308
    invoke-interface {v2, v0, v1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_10

    .line 319
    .line 320
    :cond_13
    iput-object v1, v12, Lw33;->n:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v11, Lb81;

    .line 323
    .line 324
    iput v6, v3, Lnv0;->s:I

    .line 325
    .line 326
    invoke-interface {v11, v1, v3}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-ne v0, v8, :cond_10

    .line 331
    .line 332
    :goto_8
    return-object v8

    .line 333
    :pswitch_3
    move-object v0, v1

    .line 334
    check-cast v0, Ljava/lang/Boolean;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    check-cast v12, Ln14;

    .line 341
    .line 342
    check-cast v13, Lgz2;

    .line 343
    .line 344
    if-eqz v0, :cond_14

    .line 345
    .line 346
    check-cast v11, Lpg2;

    .line 347
    .line 348
    invoke-interface {v11}, Ltr3;->getValue()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Ldf1;

    .line 353
    .line 354
    iget-object v1, v12, Ln14;->a:Lib0;

    .line 355
    .line 356
    invoke-virtual {v1}, Lib0;->l()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    iget-object v2, v12, Ln14;->d:Lws2;

    .line 361
    .line 362
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-interface {v0, v1, v2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/lang/Boolean;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    goto :goto_9

    .line 377
    :cond_14
    const/4 v0, 0x0

    .line 378
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v13, v0}, Lgz2;->setValue(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    return-object v10

    .line 386
    nop

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
