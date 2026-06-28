.class public final Lzs;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Z

.field public s:Z

.field public t:Ld84;

.field public u:I

.field public final synthetic v:Lpt;

.field public final synthetic w:Lv43;


# direct methods
.method public constructor <init>(Lpt;Lv43;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzs;->v:Lpt;

    .line 2
    .line 3
    iput-object p2, p0, Lzs;->w:Lv43;

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
    invoke-virtual {p0, p2, p1}, Lzs;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lzs;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lzs;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    new-instance p2, Lzs;

    .line 2
    .line 3
    iget-object v0, p0, Lzs;->v:Lpt;

    .line 4
    .line 5
    iget-object p0, p0, Lzs;->w:Lv43;

    .line 6
    .line 7
    invoke-direct {p2, v0, p0, p1}, Lzs;-><init>(Lpt;Lv43;Ldh0;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v1, p0, Lzs;->v:Lpt;

    .line 2
    .line 3
    iget-object v0, v1, Lpt;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lzs;->u:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lg01;->n:Lg01;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lri0;->n:Lri0;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v3

    .line 22
    :pswitch_0
    iget-object v0, p0, Lzs;->t:Ld84;

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :pswitch_1
    iget-boolean v0, p0, Lzs;->s:Z

    .line 30
    .line 31
    iget-boolean v2, p0, Lzs;->r:Z

    .line 32
    .line 33
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :pswitch_2
    iget-object p0, p0, Lzs;->t:Ld84;

    .line 39
    .line 40
    check-cast p0, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_e

    .line 46
    .line 47
    :pswitch_3
    iget-boolean v2, p0, Lzs;->r:Z

    .line 48
    .line 49
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :pswitch_4
    iget-object v0, p0, Lzs;->t:Ld84;

    .line 55
    .line 56
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :pswitch_5
    iget-boolean v0, p0, Lzs;->r:Z

    .line 62
    .line 63
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :pswitch_6
    iget-boolean v0, p0, Lzs;->r:Z

    .line 68
    .line 69
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lzs;->u:I

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Lpt;->e(Lfh0;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v6, :cond_0

    .line 88
    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :cond_0
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    sget-object v0, Lez3;->a:Lra3;

    .line 100
    .line 101
    new-array v2, v5, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iput-boolean p1, p0, Lzs;->r:Z

    .line 110
    .line 111
    const/4 v0, 0x2

    .line 112
    iput v0, p0, Lzs;->u:I

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Lpt;->m(Lfh0;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-ne v0, v6, :cond_1

    .line 119
    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_1
    move v0, p1

    .line 123
    :goto_1
    invoke-virtual {v1}, Lpt;->l()Lps;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lps;->c()La81;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-boolean v0, p0, Lzs;->r:Z

    .line 132
    .line 133
    const/4 v2, 0x3

    .line 134
    iput v2, p0, Lzs;->u:I

    .line 135
    .line 136
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v6, :cond_2

    .line 141
    .line 142
    goto/16 :goto_a

    .line 143
    .line 144
    :cond_2
    :goto_2
    check-cast p1, Ld84;

    .line 145
    .line 146
    invoke-virtual {v1}, Lpt;->c()Ln1;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iput-object p1, p0, Lzs;->t:Ld84;

    .line 151
    .line 152
    iput-boolean v0, p0, Lzs;->r:Z

    .line 153
    .line 154
    const/4 v0, 0x4

    .line 155
    iput v0, p0, Lzs;->u:I

    .line 156
    .line 157
    invoke-virtual {v2, p0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-ne v0, v6, :cond_3

    .line 162
    .line 163
    goto/16 :goto_a

    .line 164
    .line 165
    :cond_3
    move-object v11, v0

    .line 166
    move-object v0, p1

    .line 167
    move-object p1, v11

    .line 168
    :goto_3
    move-object v10, p1

    .line 169
    check-cast v10, Lw3;

    .line 170
    .line 171
    invoke-virtual {v1}, Lpt;->d()Ln8;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v1}, Lpt;->j()Ly84;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    invoke-virtual {v0}, Ld84;->c()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-nez p1, :cond_4

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_4
    move-object v8, p1

    .line 189
    goto :goto_5

    .line 190
    :cond_5
    :goto_4
    move-object v8, v4

    .line 191
    :goto_5
    const/4 v9, 0x1

    .line 192
    iget-object v7, p0, Lzs;->w:Lv43;

    .line 193
    .line 194
    invoke-virtual/range {v5 .. v10}, Ln8;->j(Ly84;Lv43;Ljava/util/List;ZLw3;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_e

    .line 198
    .line 199
    :cond_6
    invoke-virtual {v1}, Lpt;->l()Lps;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lps;->d()La81;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iput-boolean p1, p0, Lzs;->r:Z

    .line 208
    .line 209
    const/4 v7, 0x5

    .line 210
    iput v7, p0, Lzs;->u:I

    .line 211
    .line 212
    invoke-static {v2, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-ne v2, v6, :cond_7

    .line 217
    .line 218
    goto/16 :goto_a

    .line 219
    .line 220
    :cond_7
    move-object v11, v2

    .line 221
    move v2, p1

    .line 222
    move-object p1, v11

    .line 223
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_8

    .line 230
    .line 231
    sget-object v4, Lez3;->a:Lra3;

    .line 232
    .line 233
    new-array v7, v5, [Ljava/lang/Object;

    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    new-instance v4, Landroid/content/Intent;

    .line 242
    .line 243
    invoke-virtual {v1}, Lpt;->i()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-direct {v4, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .line 249
    .line 250
    const-string v7, "u.sage.ACTION_REFRESH"

    .line 251
    .line 252
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    const-string v7, "extra_refresh_source"

    .line 256
    .line 257
    iget-object v8, p0, Lzs;->w:Lv43;

    .line 258
    .line 259
    iget-object v8, v8, Lv43;->a:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    new-array v0, v5, [Ljava/lang/Object;

    .line 272
    .line 273
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .line 275
    .line 276
    goto/16 :goto_e

    .line 277
    .line 278
    :catch_0
    move-exception v0

    .line 279
    move-object p0, v0

    .line 280
    goto :goto_7

    .line 281
    :catch_1
    move-exception v0

    .line 282
    goto :goto_8

    .line 283
    :goto_7
    sget-object p1, Lez3;->a:Lra3;

    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    new-array p0, v5, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {p0}, Lra3;->g([Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_e

    .line 297
    .line 298
    :goto_8
    sget-object v4, Lez3;->a:Lra3;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    new-array v0, v5, [Ljava/lang/Object;

    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iput-object v3, p0, Lzs;->t:Ld84;

    .line 312
    .line 313
    iput-boolean v2, p0, Lzs;->r:Z

    .line 314
    .line 315
    iput-boolean p1, p0, Lzs;->s:Z

    .line 316
    .line 317
    const/4 p1, 0x6

    .line 318
    iput p1, p0, Lzs;->u:I

    .line 319
    .line 320
    invoke-virtual {v1, p0}, Lpt;->b(Lfh0;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    if-ne p0, v6, :cond_d

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_8
    sget-object v0, Lez3;->a:Lra3;

    .line 328
    .line 329
    new-array v3, v5, [Ljava/lang/Object;

    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    iput-boolean v2, p0, Lzs;->r:Z

    .line 338
    .line 339
    iput-boolean p1, p0, Lzs;->s:Z

    .line 340
    .line 341
    const/4 v0, 0x7

    .line 342
    iput v0, p0, Lzs;->u:I

    .line 343
    .line 344
    invoke-virtual {v1, p0}, Lpt;->b(Lfh0;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    if-ne v0, v6, :cond_9

    .line 349
    .line 350
    goto :goto_a

    .line 351
    :cond_9
    move-object v11, v0

    .line 352
    move v0, p1

    .line 353
    move-object p1, v11

    .line 354
    :goto_9
    check-cast p1, Ld84;

    .line 355
    .line 356
    invoke-virtual {v1}, Lpt;->c()Ln1;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    iput-object p1, p0, Lzs;->t:Ld84;

    .line 361
    .line 362
    iput-boolean v2, p0, Lzs;->r:Z

    .line 363
    .line 364
    iput-boolean v0, p0, Lzs;->s:Z

    .line 365
    .line 366
    const/16 v0, 0x8

    .line 367
    .line 368
    iput v0, p0, Lzs;->u:I

    .line 369
    .line 370
    invoke-virtual {v3, p0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    if-ne v0, v6, :cond_a

    .line 375
    .line 376
    :goto_a
    return-object v6

    .line 377
    :cond_a
    move-object v11, v0

    .line 378
    move-object v0, p1

    .line 379
    move-object p1, v11

    .line 380
    :goto_b
    move-object v10, p1

    .line 381
    check-cast v10, Lw3;

    .line 382
    .line 383
    invoke-virtual {v1}, Lpt;->d()Ln8;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v1}, Lpt;->j()Ly84;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    if-eqz v0, :cond_c

    .line 392
    .line 393
    invoke-virtual {v0}, Ld84;->c()Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    if-nez p1, :cond_b

    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_b
    move-object v8, p1

    .line 401
    goto :goto_d

    .line 402
    :cond_c
    :goto_c
    move-object v8, v4

    .line 403
    :goto_d
    const/4 v9, 0x0

    .line 404
    iget-object v7, p0, Lzs;->w:Lv43;

    .line 405
    .line 406
    invoke-virtual/range {v5 .. v10}, Ln8;->j(Ly84;Lv43;Ljava/util/List;ZLw3;)V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_e
    sget-object p0, Lt64;->a:Lt64;

    .line 410
    .line 411
    return-object p0

    .line 412
    nop

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
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
