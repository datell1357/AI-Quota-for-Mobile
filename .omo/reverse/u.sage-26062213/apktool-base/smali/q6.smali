.class public final synthetic Lq6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p6, p0, Lq6;->n:I

    iput-object p1, p0, Lq6;->o:Ljava/lang/Object;

    iput-object p2, p0, Lq6;->p:Ljava/lang/Object;

    iput-object p3, p0, Lq6;->q:Ljava/lang/Object;

    iput-object p4, p0, Lq6;->r:Ljava/lang/Object;

    iput-object p5, p0, Lq6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lqi0;Ln1;Ldf1;Lgf1;Lpe1;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lq6;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lq6;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lq6;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lq6;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Lq6;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p6, p0, Lq6;->s:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq6;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lt64;->a:Lt64;

    .line 8
    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, v0, Lq6;->s:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v0, Lq6;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v9, v0, Lq6;->q:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v10, v0, Lq6;->p:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v0, v0, Lq6;->o:Ljava/lang/Object;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v0, Lqi0;

    .line 25
    .line 26
    move-object v13, v10

    .line 27
    check-cast v13, Ln1;

    .line 28
    .line 29
    move-object v14, v9

    .line 30
    check-cast v14, Ldf1;

    .line 31
    .line 32
    move-object v15, v8

    .line 33
    check-cast v15, Lgf1;

    .line 34
    .line 35
    move-object/from16 v16, v7

    .line 36
    .line 37
    check-cast v16, Lpe1;

    .line 38
    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v2, Lez3;->a:Lra3;

    .line 47
    .line 48
    new-array v7, v6, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    sget-object v2, Lxc4;->a:Lpi1;

    .line 57
    .line 58
    const-class v7, Lw3;

    .line 59
    .line 60
    invoke-virtual {v2, v1, v7}, Lpi1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lw3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    move-object v12, v1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    sget-object v1, Lez3;->a:Lra3;

    .line 69
    .line 70
    new-array v2, v6, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lra3;->g([Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object v12, v3

    .line 79
    :goto_0
    if-nez v12, :cond_0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    new-instance v11, Luc4;

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    invoke-direct/range {v11 .. v17}, Luc4;-><init>(Lw3;Ln1;Ldf1;Lgf1;Lpe1;Ldh0;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v3, v3, v11, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 90
    .line 91
    .line 92
    :goto_1
    return-object v4

    .line 93
    :pswitch_0
    check-cast v0, Lqi0;

    .line 94
    .line 95
    check-cast v10, Lwh1;

    .line 96
    .line 97
    move-object v12, v9

    .line 98
    check-cast v12, Lm10;

    .line 99
    .line 100
    move-object v14, v8

    .line 101
    check-cast v14, Ln8;

    .line 102
    .line 103
    move-object v15, v7

    .line 104
    check-cast v15, Ly84;

    .line 105
    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    check-cast v1, Le6;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v2, Lez3;->a:Lra3;

    .line 114
    .line 115
    new-array v7, v6, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    new-array v2, v6, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Le6;->o:Landroid/content/Intent;

    .line 129
    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Low3;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Low3;->i()Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Low3;->j()Z

    .line 143
    .line 144
    .line 145
    new-array v2, v6, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Low3;->h()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    move-object v13, v1

    .line 155
    check-cast v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 156
    .line 157
    invoke-virtual {v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGrantedScopes()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    new-array v1, v6, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    new-instance v11, Lqd;

    .line 176
    .line 177
    const/16 v16, 0x0

    .line 178
    .line 179
    const/16 v17, 0xa

    .line 180
    .line 181
    invoke-direct/range {v11 .. v17}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v3, v3, v11, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    .line 189
    goto :goto_2

    .line 190
    :catch_2
    sget-object v0, Lez3;->a:Lra3;

    .line 191
    .line 192
    new-array v1, v6, [Ljava/lang/Object;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :goto_2
    sget-object v1, Lez3;->a:Lra3;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    new-array v0, v6, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Lra3;->f([Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    new-array v0, v6, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-static {v0}, Lra3;->g([Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    .line 224
    .line 225
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Lwh1;->g()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_2

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    :cond_2
    new-array v2, v6, [Ljava/lang/Object;

    .line 238
    .line 239
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    if-eqz v1, :cond_3

    .line 243
    .line 244
    new-instance v2, Ld93;

    .line 245
    .line 246
    invoke-direct {v2, v12, v1, v3, v5}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 247
    .line 248
    .line 249
    invoke-static {v0, v3, v3, v2, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 250
    .line 251
    .line 252
    :cond_3
    :goto_3
    return-object v4

    .line 253
    :pswitch_1
    check-cast v0, Ls33;

    .line 254
    .line 255
    check-cast v10, Ljava/util/ArrayList;

    .line 256
    .line 257
    check-cast v9, Lu33;

    .line 258
    .line 259
    check-cast v8, Lii2;

    .line 260
    .line 261
    check-cast v7, Landroid/os/Bundle;

    .line 262
    .line 263
    move-object/from16 v1, p1

    .line 264
    .line 265
    check-cast v1, Lyh2;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    iput-boolean v2, v0, Ls33;->n:Z

    .line 271
    .line 272
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    const/4 v3, -0x1

    .line 277
    if-eq v0, v3, :cond_4

    .line 278
    .line 279
    iget v3, v9, Lu33;->n:I

    .line 280
    .line 281
    add-int/2addr v0, v2

    .line 282
    invoke-virtual {v10, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iput v0, v9, Lu33;->n:I

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_4
    sget-object v2, Lg01;->n:Lg01;

    .line 290
    .line 291
    :goto_4
    iget-object v0, v1, Lyh2;->o:Lqi2;

    .line 292
    .line 293
    invoke-virtual {v8, v0, v7, v1, v2}, Lii2;->a(Lqi2;Landroid/os/Bundle;Lyh2;Ljava/util/List;)V

    .line 294
    .line 295
    .line 296
    return-object v4

    .line 297
    :pswitch_2
    check-cast v0, Lme2;

    .line 298
    .line 299
    check-cast v10, Lw33;

    .line 300
    .line 301
    check-cast v9, Lt33;

    .line 302
    .line 303
    check-cast v8, Ldg3;

    .line 304
    .line 305
    check-cast v7, Ls33;

    .line 306
    .line 307
    move-object/from16 v1, p1

    .line 308
    .line 309
    check-cast v1, Ljava/lang/Float;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    iget-object v3, v0, Lme2;->g:Lzy;

    .line 316
    .line 317
    invoke-static {v3}, Lme2;->g(Lzy;)Lie2;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    if-eqz v3, :cond_5

    .line 322
    .line 323
    iget-object v0, v0, Lwm2;->e:Lgw4;

    .line 324
    .line 325
    iget-wide v4, v3, Lie2;->b:J

    .line 326
    .line 327
    iget-wide v11, v3, Lie2;->a:J

    .line 328
    .line 329
    iget-object v13, v0, Lgw4;->o:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v13, Lta4;

    .line 332
    .line 333
    const/16 v14, 0x20

    .line 334
    .line 335
    shr-long v14, v11, v14

    .line 336
    .line 337
    long-to-int v14, v14

    .line 338
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    invoke-virtual {v13, v14, v4, v5}, Lta4;->a(FJ)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v0, Lgw4;->p:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lta4;

    .line 348
    .line 349
    const-wide v13, 0xffffffffL

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    and-long/2addr v11, v13

    .line 355
    long-to-int v11, v11

    .line 356
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    invoke-virtual {v0, v11, v4, v5}, Lta4;->a(FJ)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v10, Lw33;->n:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Lie2;

    .line 366
    .line 367
    invoke-virtual {v0, v3}, Lie2;->a(Lie2;)Lie2;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iput-object v0, v10, Lw33;->n:Ljava/lang/Object;

    .line 372
    .line 373
    iget-wide v4, v0, Lie2;->a:J

    .line 374
    .line 375
    invoke-virtual {v8, v4, v5}, Ldg3;->f(J)J

    .line 376
    .line 377
    .line 378
    move-result-wide v4

    .line 379
    invoke-virtual {v8, v4, v5}, Ldg3;->j(J)F

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    iput v0, v9, Lt33;->n:F

    .line 384
    .line 385
    sub-float/2addr v0, v1

    .line 386
    invoke-static {v0}, Lw80;->e(F)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    xor-int/2addr v0, v2

    .line 391
    iput-boolean v0, v7, Ls33;->n:Z

    .line 392
    .line 393
    :cond_5
    if-eqz v3, :cond_6

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_6
    move v2, v6

    .line 397
    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    return-object v0

    .line 402
    :pswitch_3
    check-cast v0, Lj6;

    .line 403
    .line 404
    check-cast v10, Lp6;

    .line 405
    .line 406
    check-cast v9, Ljava/lang/String;

    .line 407
    .line 408
    check-cast v8, Lh6;

    .line 409
    .line 410
    check-cast v7, Lpg2;

    .line 411
    .line 412
    move-object/from16 v1, p1

    .line 413
    .line 414
    check-cast v1, Lhv0;

    .line 415
    .line 416
    new-instance v1, Lr6;

    .line 417
    .line 418
    invoke-direct {v1, v6, v7}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v10, v9, v8, v1}, Lp6;->c(Ljava/lang/String;Lg6;Lf6;)Lo6;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iput-object v1, v0, Lj6;->a:Lo6;

    .line 426
    .line 427
    new-instance v1, Ls6;

    .line 428
    .line 429
    invoke-direct {v1, v6, v0}, Ls6;-><init>(ILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    return-object v1

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
