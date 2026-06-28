.class public final Lp82;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lq82;


# direct methods
.method public synthetic constructor <init>(Lq82;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp82;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lp82;->p:Lq82;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lp82;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lt64;->a:Lt64;

    .line 5
    .line 6
    iget-object p0, p0, Lp82;->p:Lq82;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lq82;->s:Lbz1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lmm2;->M0()Lm82;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-wide v3, p0, Lq82;->L:J

    .line 25
    .line 26
    invoke-interface {v0, v3, v4}, Lya2;->e(J)Ldv2;

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_0
    iget-object v0, p0, Lq82;->s:Lbz1;

    .line 31
    .line 32
    iget-object v3, v0, Lbz1;->a:Lxy1;

    .line 33
    .line 34
    invoke-static {v3}, Lix;->C(Lxy1;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    iget-boolean v3, v0, Lbz1;->c:Z

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v3, v3, Lmm2;->H:Lmm2;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3}, Lmm2;->M0()Lm82;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v1, v3, Lk82;->C:Ll82;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v3, v3, Lmm2;->H:Lmm2;

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    iget-object v1, v3, Lk82;->C:Ll82;

    .line 70
    .line 71
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 72
    .line 73
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 74
    .line 75
    invoke-static {v1}, Laz1;->a(Lxy1;)Lsr2;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lq9;

    .line 80
    .line 81
    invoke-virtual {v1}, Lq9;->getPlacementScope()Lcv2;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lmm2;->M0()Lm82;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-wide v3, p0, Lq82;->B:J

    .line 97
    .line 98
    invoke-static {v1, v0, v3, v4}, Lcv2;->i(Lcv2;Ldv2;J)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    :pswitch_1
    iget-object v0, p0, Lq82;->s:Lbz1;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    iput v3, v0, Lbz1;->h:I

    .line 106
    .line 107
    iget-object v4, v0, Lbz1;->a:Lxy1;

    .line 108
    .line 109
    invoke-virtual {v4}, Lxy1;->z()Lug2;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, v4, Lug2;->n:[Ljava/lang/Object;

    .line 114
    .line 115
    iget v4, v4, Lug2;->p:I

    .line 116
    .line 117
    move v6, v3

    .line 118
    :goto_1
    const v7, 0x7fffffff

    .line 119
    .line 120
    .line 121
    if-ge v6, v4, :cond_4

    .line 122
    .line 123
    aget-object v8, v5, v6

    .line 124
    .line 125
    check-cast v8, Lxy1;

    .line 126
    .line 127
    iget-object v8, v8, Lxy1;->T:Lbz1;

    .line 128
    .line 129
    iget-object v8, v8, Lbz1;->q:Lq82;

    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget v9, v8, Lq82;->v:I

    .line 135
    .line 136
    iput v9, v8, Lq82;->u:I

    .line 137
    .line 138
    iput v7, v8, Lq82;->v:I

    .line 139
    .line 140
    iget-object v7, v8, Lq82;->w:Lvy1;

    .line 141
    .line 142
    sget-object v9, Lvy1;->o:Lvy1;

    .line 143
    .line 144
    if-ne v7, v9, :cond_3

    .line 145
    .line 146
    sget-object v7, Lvy1;->p:Lvy1;

    .line 147
    .line 148
    iput-object v7, v8, Lq82;->w:Lvy1;

    .line 149
    .line 150
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    iget-object v4, v0, Lbz1;->a:Lxy1;

    .line 154
    .line 155
    iget-object v0, v0, Lbz1;->a:Lxy1;

    .line 156
    .line 157
    invoke-virtual {v4}, Lxy1;->z()Lug2;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget-object v5, v4, Lug2;->n:[Ljava/lang/Object;

    .line 162
    .line 163
    iget v4, v4, Lug2;->p:I

    .line 164
    .line 165
    move v6, v3

    .line 166
    :goto_2
    if-ge v6, v4, :cond_5

    .line 167
    .line 168
    aget-object v8, v5, v6

    .line 169
    .line 170
    check-cast v8, Lxy1;

    .line 171
    .line 172
    iget-object v8, v8, Lxy1;->T:Lbz1;

    .line 173
    .line 174
    iget-object v8, v8, Lbz1;->q:Lq82;

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-object v8, v8, Lq82;->E:Lyy1;

    .line 180
    .line 181
    iput-boolean v3, v8, Lyy1;->d:Z

    .line 182
    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {p0}, Lq82;->n()Lgr1;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    iget-object p0, p0, Lgr1;->i0:Lfr1;

    .line 191
    .line 192
    if-eqz p0, :cond_10

    .line 193
    .line 194
    invoke-virtual {v0}, Lxy1;->n()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lrg2;

    .line 199
    .line 200
    iget-object v5, v4, Lrg2;->n:Lug2;

    .line 201
    .line 202
    iget v5, v5, Lug2;->p:I

    .line 203
    .line 204
    move v6, v3

    .line 205
    :goto_3
    if-ge v6, v5, :cond_9

    .line 206
    .line 207
    invoke-virtual {v4, v6}, Lrg2;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    check-cast v8, Lxy1;

    .line 212
    .line 213
    iget-object v9, v8, Lxy1;->S:Lbo;

    .line 214
    .line 215
    iget-object v9, v9, Lbo;->e:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v9, Lmm2;

    .line 218
    .line 219
    invoke-virtual {v9}, Lmm2;->M0()Lm82;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    if-nez v9, :cond_6

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_6
    iget-boolean v10, v9, Lk82;->B:Z

    .line 227
    .line 228
    if-eqz v10, :cond_8

    .line 229
    .line 230
    if-nez v1, :cond_7

    .line 231
    .line 232
    new-instance v1, Ldg2;

    .line 233
    .line 234
    invoke-direct {v1}, Ldg2;-><init>()V

    .line 235
    .line 236
    .line 237
    :cond_7
    invoke-virtual {v1, v8}, Ldg2;->a(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    iget-boolean v8, p0, Lk82;->B:Z

    .line 241
    .line 242
    iput-boolean v8, v9, Lk82;->B:Z

    .line 243
    .line 244
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    invoke-virtual {p0}, Lm82;->v0()Leb2;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-interface {p0}, Leb2;->d()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lxy1;->n()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    check-cast p0, Lrg2;

    .line 259
    .line 260
    iget-object v4, p0, Lrg2;->n:Lug2;

    .line 261
    .line 262
    iget v4, v4, Lug2;->p:I

    .line 263
    .line 264
    move v5, v3

    .line 265
    :goto_5
    const/4 v6, 0x1

    .line 266
    if-ge v5, v4, :cond_c

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Lrg2;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Lxy1;

    .line 273
    .line 274
    if-eqz v1, :cond_a

    .line 275
    .line 276
    invoke-virtual {v1, v8}, Ldg2;->g(Ljava/lang/Object;)I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    if-ltz v9, :cond_a

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_a
    move v6, v3

    .line 284
    :goto_6
    iget-object v8, v8, Lxy1;->S:Lbo;

    .line 285
    .line 286
    iget-object v8, v8, Lbo;->e:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v8, Lmm2;

    .line 289
    .line 290
    invoke-virtual {v8}, Lmm2;->M0()Lm82;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    if-eqz v8, :cond_b

    .line 295
    .line 296
    iput-boolean v6, v8, Lk82;->B:Z

    .line 297
    .line 298
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_c
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    iget-object v1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 306
    .line 307
    iget p0, p0, Lug2;->p:I

    .line 308
    .line 309
    move v4, v3

    .line 310
    :goto_7
    if-ge v4, p0, :cond_e

    .line 311
    .line 312
    aget-object v5, v1, v4

    .line 313
    .line 314
    check-cast v5, Lxy1;

    .line 315
    .line 316
    iget-object v5, v5, Lxy1;->T:Lbz1;

    .line 317
    .line 318
    iget-object v5, v5, Lbz1;->q:Lq82;

    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    iget v8, v5, Lq82;->u:I

    .line 324
    .line 325
    iget v9, v5, Lq82;->v:I

    .line 326
    .line 327
    if-eq v8, v9, :cond_d

    .line 328
    .line 329
    if-ne v9, v7, :cond_d

    .line 330
    .line 331
    invoke-virtual {v5, v6}, Lq82;->k0(Z)V

    .line 332
    .line 333
    .line 334
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_e
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 342
    .line 343
    iget p0, p0, Lug2;->p:I

    .line 344
    .line 345
    :goto_8
    if-ge v3, p0, :cond_f

    .line 346
    .line 347
    aget-object v1, v0, v3

    .line 348
    .line 349
    check-cast v1, Lxy1;

    .line 350
    .line 351
    iget-object v1, v1, Lxy1;->T:Lbz1;

    .line 352
    .line 353
    iget-object v1, v1, Lbz1;->q:Lq82;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    iget-object v1, v1, Lq82;->E:Lyy1;

    .line 359
    .line 360
    iget-boolean v4, v1, Lyy1;->d:Z

    .line 361
    .line 362
    iput-boolean v4, v1, Lyy1;->e:Z

    .line 363
    .line 364
    add-int/lit8 v3, v3, 0x1

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_f
    move-object v1, v2

    .line 368
    goto :goto_9

    .line 369
    :cond_10
    const-string p0, "Expected lookahead delegate"

    .line 370
    .line 371
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :goto_9
    return-object v1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
