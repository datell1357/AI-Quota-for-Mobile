.class public final synthetic Lh9;
.super Lof1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lh9;->u:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lof1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lh9;->u:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    sget-object v3, Lt64;->a:Lt64;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v0, v0, Lx10;->o:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Lga3;

    .line 15
    .line 16
    iget-object v1, v0, Lga3;->a:Lbh0;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {v1, v4}, Ldm0;->o(Lqi0;Lqd2;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lga3;->f()Lbu1;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lga3;->d:Lda3;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lda3;->f:Lce0;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_0
    const-string v0, "connectionManager"

    .line 37
    .line 38
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v4

    .line 42
    :cond_1
    const-string v0, "coroutineScope"

    .line 43
    .line 44
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v4

    .line 48
    :pswitch_0
    check-cast v0, Lna1;

    .line 49
    .line 50
    iget-object v0, v0, Lna1;->I:Lka1;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lka1;->N0(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_1
    check-cast v0, Lw91;

    .line 62
    .line 63
    iget-object v1, v0, Lw91;->c:Llg2;

    .line 64
    .line 65
    iget-object v5, v0, Lw91;->d:Llg2;

    .line 66
    .line 67
    iget-object v6, v0, Lw91;->a:Ldh;

    .line 68
    .line 69
    invoke-virtual {v6}, Ldh;->f()Lka1;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    sget-object v8, Lfa1;->p:Lfa1;

    .line 74
    .line 75
    const/16 v15, 0x8

    .line 76
    .line 77
    move/from16 v16, v2

    .line 78
    .line 79
    if-nez v7, :cond_5

    .line 80
    .line 81
    iget-object v4, v5, Llg2;->b:[Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v7, v5, Llg2;->a:[J

    .line 84
    .line 85
    const-wide/16 v17, 0x80

    .line 86
    .line 87
    array-length v9, v7

    .line 88
    add-int/lit8 v9, v9, -0x2

    .line 89
    .line 90
    if-ltz v9, :cond_12

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    const-wide/16 v19, 0xff

    .line 94
    .line 95
    :goto_0
    aget-wide v11, v7, v10

    .line 96
    .line 97
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    not-long v13, v11

    .line 103
    shl-long v13, v13, v16

    .line 104
    .line 105
    and-long/2addr v13, v11

    .line 106
    and-long v13, v13, v21

    .line 107
    .line 108
    cmp-long v13, v13, v21

    .line 109
    .line 110
    if-eqz v13, :cond_4

    .line 111
    .line 112
    sub-int v13, v10, v9

    .line 113
    .line 114
    not-int v13, v13

    .line 115
    ushr-int/lit8 v13, v13, 0x1f

    .line 116
    .line 117
    rsub-int/lit8 v13, v13, 0x8

    .line 118
    .line 119
    const/4 v14, 0x0

    .line 120
    :goto_1
    if-ge v14, v13, :cond_3

    .line 121
    .line 122
    and-long v23, v11, v19

    .line 123
    .line 124
    cmp-long v23, v23, v17

    .line 125
    .line 126
    if-gez v23, :cond_2

    .line 127
    .line 128
    shl-int/lit8 v23, v10, 0x3

    .line 129
    .line 130
    add-int v23, v23, v14

    .line 131
    .line 132
    aget-object v23, v4, v23

    .line 133
    .line 134
    move-object/from16 v2, v23

    .line 135
    .line 136
    check-cast v2, Lkq;

    .line 137
    .line 138
    invoke-virtual {v2, v8}, Lkq;->H0(Lfa1;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    shr-long/2addr v11, v15

    .line 142
    add-int/lit8 v14, v14, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    if-ne v13, v15, :cond_12

    .line 146
    .line 147
    :cond_4
    if-eq v10, v9, :cond_12

    .line 148
    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    const-wide/16 v17, 0x80

    .line 153
    .line 154
    const-wide/16 v19, 0xff

    .line 155
    .line 156
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    iget-boolean v2, v7, Lmd2;->A:Z

    .line 162
    .line 163
    if-eqz v2, :cond_12

    .line 164
    .line 165
    invoke-virtual {v1, v7}, Llg2;->c(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_6

    .line 170
    .line 171
    invoke-virtual {v7}, Lka1;->M0()V

    .line 172
    .line 173
    .line 174
    :cond_6
    invoke-virtual {v7}, Lka1;->L0()Lfa1;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget-object v9, v7, Lmd2;->n:Lmd2;

    .line 179
    .line 180
    iget-boolean v9, v9, Lmd2;->A:Z

    .line 181
    .line 182
    if-nez v9, :cond_7

    .line 183
    .line 184
    const-string v9, "visitAncestors called on an unattached node"

    .line 185
    .line 186
    invoke-static {v9}, Lar1;->b(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    iget-object v9, v7, Lmd2;->n:Lmd2;

    .line 190
    .line 191
    invoke-static {v7}, Lw80;->R(Ljr0;)Lxy1;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    const/4 v10, 0x0

    .line 196
    :goto_2
    if-eqz v7, :cond_e

    .line 197
    .line 198
    iget-object v11, v7, Lxy1;->S:Lbo;

    .line 199
    .line 200
    iget-object v11, v11, Lbo;->g:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v11, Lmd2;

    .line 203
    .line 204
    iget v11, v11, Lmd2;->q:I

    .line 205
    .line 206
    and-int/lit16 v11, v11, 0x1400

    .line 207
    .line 208
    if-eqz v11, :cond_c

    .line 209
    .line 210
    :goto_3
    if-eqz v9, :cond_c

    .line 211
    .line 212
    iget v11, v9, Lmd2;->p:I

    .line 213
    .line 214
    and-int/lit16 v12, v11, 0x1400

    .line 215
    .line 216
    if-eqz v12, :cond_b

    .line 217
    .line 218
    and-int/lit16 v11, v11, 0x400

    .line 219
    .line 220
    if-eqz v11, :cond_8

    .line 221
    .line 222
    add-int/lit8 v10, v10, 0x1

    .line 223
    .line 224
    :cond_8
    instance-of v11, v9, Lkq;

    .line 225
    .line 226
    if-eqz v11, :cond_b

    .line 227
    .line 228
    invoke-virtual {v5, v9}, Llg2;->c(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    if-nez v11, :cond_9

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    const/4 v11, 0x1

    .line 236
    if-gt v10, v11, :cond_a

    .line 237
    .line 238
    move-object v11, v9

    .line 239
    check-cast v11, Lkq;

    .line 240
    .line 241
    invoke-virtual {v11, v2}, Lkq;->H0(Lfa1;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    move-object v11, v9

    .line 246
    check-cast v11, Lkq;

    .line 247
    .line 248
    sget-object v12, Lfa1;->o:Lfa1;

    .line 249
    .line 250
    invoke-virtual {v11, v12}, Lkq;->H0(Lfa1;)V

    .line 251
    .line 252
    .line 253
    :goto_4
    invoke-virtual {v5, v9}, Llg2;->l(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    :cond_b
    :goto_5
    iget-object v9, v9, Lmd2;->r:Lmd2;

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_c
    invoke-virtual {v7}, Lxy1;->u()Lxy1;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    if-eqz v7, :cond_d

    .line 264
    .line 265
    iget-object v9, v7, Lxy1;->S:Lbo;

    .line 266
    .line 267
    if-eqz v9, :cond_d

    .line 268
    .line 269
    iget-object v9, v9, Lbo;->f:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v9, Lgw3;

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_d
    move-object v9, v4

    .line 275
    goto :goto_2

    .line 276
    :cond_e
    iget-object v2, v5, Llg2;->b:[Ljava/lang/Object;

    .line 277
    .line 278
    iget-object v4, v5, Llg2;->a:[J

    .line 279
    .line 280
    array-length v7, v4

    .line 281
    add-int/lit8 v7, v7, -0x2

    .line 282
    .line 283
    if-ltz v7, :cond_12

    .line 284
    .line 285
    const/4 v9, 0x0

    .line 286
    :goto_6
    aget-wide v10, v4, v9

    .line 287
    .line 288
    not-long v12, v10

    .line 289
    shl-long v12, v12, v16

    .line 290
    .line 291
    and-long/2addr v12, v10

    .line 292
    and-long v12, v12, v21

    .line 293
    .line 294
    cmp-long v12, v12, v21

    .line 295
    .line 296
    if-eqz v12, :cond_11

    .line 297
    .line 298
    sub-int v12, v9, v7

    .line 299
    .line 300
    not-int v12, v12

    .line 301
    ushr-int/lit8 v12, v12, 0x1f

    .line 302
    .line 303
    rsub-int/lit8 v12, v12, 0x8

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    :goto_7
    if-ge v13, v12, :cond_10

    .line 307
    .line 308
    and-long v23, v10, v19

    .line 309
    .line 310
    cmp-long v14, v23, v17

    .line 311
    .line 312
    if-gez v14, :cond_f

    .line 313
    .line 314
    shl-int/lit8 v14, v9, 0x3

    .line 315
    .line 316
    add-int/2addr v14, v13

    .line 317
    aget-object v14, v2, v14

    .line 318
    .line 319
    check-cast v14, Lkq;

    .line 320
    .line 321
    invoke-virtual {v14, v8}, Lkq;->H0(Lfa1;)V

    .line 322
    .line 323
    .line 324
    :cond_f
    shr-long/2addr v10, v15

    .line 325
    add-int/lit8 v13, v13, 0x1

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_10
    if-ne v12, v15, :cond_12

    .line 329
    .line 330
    :cond_11
    if-eq v9, v7, :cond_12

    .line 331
    .line 332
    add-int/lit8 v9, v9, 0x1

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_12
    invoke-virtual {v6}, Ldh;->f()Lka1;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    if-eqz v2, :cond_13

    .line 340
    .line 341
    iget-object v2, v6, Ldh;->c:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v2, Lka1;

    .line 344
    .line 345
    invoke-virtual {v2}, Lka1;->L0()Lfa1;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    if-ne v2, v8, :cond_14

    .line 350
    .line 351
    :cond_13
    invoke-virtual {v6}, Ldh;->c()V

    .line 352
    .line 353
    .line 354
    :cond_14
    invoke-virtual {v1}, Llg2;->b()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5}, Llg2;->b()V

    .line 358
    .line 359
    .line 360
    const/4 v1, 0x0

    .line 361
    iput-boolean v1, v0, Lw91;->e:Z

    .line 362
    .line 363
    return-object v3

    .line 364
    :pswitch_2
    check-cast v0, Landroid/view/View;

    .line 365
    .line 366
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 367
    .line 368
    const/16 v2, 0x1e

    .line 369
    .line 370
    if-lt v1, v2, :cond_15

    .line 371
    .line 372
    invoke-static {v0}, Le3;->g(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    :cond_15
    const/16 v2, 0x1d

    .line 376
    .line 377
    if-lt v1, v2, :cond_17

    .line 378
    .line 379
    invoke-static {v0}, Lvf;->a(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-nez v1, :cond_16

    .line 384
    .line 385
    goto :goto_8

    .line 386
    :cond_16
    new-instance v4, Lgw4;

    .line 387
    .line 388
    const/16 v2, 0xd

    .line 389
    .line 390
    invoke-direct {v4, v2, v1, v0}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_17
    :goto_8
    return-object v4

    .line 394
    nop

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
