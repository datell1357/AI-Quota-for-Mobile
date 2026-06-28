.class public final Ln11;
.super Lry1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public B:Ln14;

.field public C:Lj14;

.field public D:Lj14;

.field public E:Lj14;

.field public F:Lo11;

.field public G:Ly31;

.field public H:Lzl3;

.field public I:Lne1;

.field public J:Ld11;

.field public K:J

.field public L:Lcw;

.field public final M:Lm11;

.field public final N:Lm11;


# direct methods
.method public constructor <init>(Ln14;Lj14;Lj14;Lj14;Lo11;Ly31;Lzl3;Lne1;Ld11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln11;->B:Ln14;

    .line 5
    .line 6
    iput-object p2, p0, Ln11;->C:Lj14;

    .line 7
    .line 8
    iput-object p3, p0, Ln11;->D:Lj14;

    .line 9
    .line 10
    iput-object p4, p0, Ln11;->E:Lj14;

    .line 11
    .line 12
    iput-object p5, p0, Ln11;->F:Lo11;

    .line 13
    .line 14
    iput-object p6, p0, Ln11;->G:Ly31;

    .line 15
    .line 16
    iput-object p7, p0, Ln11;->H:Lzl3;

    .line 17
    .line 18
    iput-object p8, p0, Ln11;->I:Lne1;

    .line 19
    .line 20
    iput-object p9, p0, Ln11;->J:Ld11;

    .line 21
    .line 22
    const-wide p1, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Ln11;->K:J

    .line 28
    .line 29
    const/16 p1, 0xf

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p2, p2, p1}, Lnf0;->b(III)J

    .line 33
    .line 34
    .line 35
    new-instance p1, Lm11;

    .line 36
    .line 37
    invoke-direct {p1, p0, p2}, Lm11;-><init>(Ln11;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Ln11;->M:Lm11;

    .line 41
    .line 42
    new-instance p1, Lm11;

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-direct {p1, p0, p2}, Lm11;-><init>(Ln11;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Ln11;->N:Lm11;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final G0()Lcw;
    .locals 3

    .line 1
    iget-object v0, p0, Ln11;->B:Ln14;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln14;->f()Lk14;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lb11;->n:Lb11;

    .line 8
    .line 9
    sget-object v2, Lb11;->o:Lb11;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lk14;->a(Lb11;Lb11;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Ln11;->F:Lo11;

    .line 18
    .line 19
    iget-object v0, v0, Lo11;->a:Lo14;

    .line 20
    .line 21
    iget-object v0, v0, Lo14;->c:Ll30;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Ll30;->a:Lcw;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    :goto_0
    iget-object p0, p0, Ln11;->G:Ly31;

    .line 32
    .line 33
    iget-object p0, p0, Ly31;->a:Lo14;

    .line 34
    .line 35
    iget-object p0, p0, Lo14;->c:Ll30;

    .line 36
    .line 37
    if-eqz p0, :cond_5

    .line 38
    .line 39
    iget-object p0, p0, Ll30;->a:Lcw;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    iget-object v0, p0, Ln11;->G:Ly31;

    .line 43
    .line 44
    iget-object v0, v0, Ly31;->a:Lo14;

    .line 45
    .line 46
    iget-object v0, v0, Lo14;->c:Ll30;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, v0, Ll30;->a:Lcw;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-object v0

    .line 56
    :cond_4
    :goto_1
    iget-object p0, p0, Ln11;->F:Lo11;

    .line 57
    .line 58
    iget-object p0, p0, Lo11;->a:Lo14;

    .line 59
    .line 60
    iget-object p0, p0, Lo14;->c:Ll30;

    .line 61
    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    iget-object p0, p0, Ll30;->a:Lcw;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    iget-object v0, v1, Ln11;->B:Ln14;

    .line 6
    .line 7
    iget-object v0, v0, Ln14;->a:Lib0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lib0;->l()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, v1, Ln11;->B:Ln14;

    .line 14
    .line 15
    iget-object v2, v2, Ln14;->d:Lws2;

    .line 16
    .line 17
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iput-object v3, v1, Ln11;->L:Lcw;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v1, Ln11;->L:Lcw;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Ln11;->G0()Lcw;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lmj1;->o:Lcw;

    .line 38
    .line 39
    :cond_1
    iput-object v0, v1, Ln11;->L:Lcw;

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljt1;->q()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x2

    .line 46
    sget-object v14, Lh01;->n:Lh01;

    .line 47
    .line 48
    const-wide v4, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/16 v6, 0x20

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface/range {p2 .. p4}, Lya2;->e(J)Ldv2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v3, v0, Ldv2;->n:I

    .line 62
    .line 63
    iget v7, v0, Ldv2;->o:I

    .line 64
    .line 65
    int-to-long v8, v3

    .line 66
    shl-long/2addr v8, v6

    .line 67
    int-to-long v10, v7

    .line 68
    and-long/2addr v10, v4

    .line 69
    or-long v7, v8, v10

    .line 70
    .line 71
    iput-wide v7, v1, Ln11;->K:J

    .line 72
    .line 73
    shr-long v9, v7, v6

    .line 74
    .line 75
    long-to-int v1, v9

    .line 76
    and-long v3, v7, v4

    .line 77
    .line 78
    long-to-int v3, v3

    .line 79
    new-instance v4, Le9;

    .line 80
    .line 81
    invoke-direct {v4, v0, v2}, Le9;-><init>(Ldv2;I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v13, v1, v3, v14, v4}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_3
    iget-object v0, v1, Ln11;->I:Lne1;

    .line 90
    .line 91
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_19

    .line 102
    .line 103
    iget-object v0, v1, Ln11;->J:Ld11;

    .line 104
    .line 105
    iget-object v7, v0, Ld11;->a:Lj14;

    .line 106
    .line 107
    iget-object v8, v0, Ld11;->b:Lzl3;

    .line 108
    .line 109
    iget-object v9, v0, Ld11;->c:Lj14;

    .line 110
    .line 111
    iget-object v10, v0, Ld11;->d:Ln14;

    .line 112
    .line 113
    iget-object v11, v0, Ld11;->e:Lo11;

    .line 114
    .line 115
    iget-object v12, v0, Ld11;->f:Ly31;

    .line 116
    .line 117
    iget-object v0, v0, Ld11;->g:Lj14;

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    move-wide/from16 v16, v4

    .line 121
    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    new-instance v4, Le11;

    .line 125
    .line 126
    invoke-direct {v4, v11, v12, v15}, Le11;-><init>(Lo11;Ly31;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Lzl3;->a()Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    iget v5, v8, Lzl3;->f:F

    .line 136
    .line 137
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :goto_1
    move/from16 v18, v6

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move-object v5, v3

    .line 145
    goto :goto_1

    .line 146
    :goto_2
    new-instance v6, Lf11;

    .line 147
    .line 148
    invoke-direct {v6, v11, v12, v8, v15}, Lf11;-><init>(Lo11;Ly31;Lzl3;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v4, v5, v3, v6}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    move/from16 v18, v6

    .line 157
    .line 158
    move-object v4, v3

    .line 159
    :goto_3
    const/4 v5, 0x1

    .line 160
    if-eqz v9, :cond_a

    .line 161
    .line 162
    new-instance v7, Le11;

    .line 163
    .line 164
    invoke-direct {v7, v11, v12, v5}, Le11;-><init>(Lo11;Ly31;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Lzl3;->a()Z

    .line 168
    .line 169
    .line 170
    move-result v19

    .line 171
    if-eqz v19, :cond_6

    .line 172
    .line 173
    iget v6, v8, Lzl3;->g:F

    .line 174
    .line 175
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    goto :goto_4

    .line 180
    :cond_6
    move-object v6, v3

    .line 181
    :goto_4
    invoke-virtual {v8}, Lzl3;->a()Z

    .line 182
    .line 183
    .line 184
    move-result v20

    .line 185
    if-eqz v20, :cond_9

    .line 186
    .line 187
    iget-object v2, v8, Lzl3;->j:Lta4;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    invoke-virtual {v2}, Lta4;->b()F

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 196
    .line 197
    .line 198
    move-result-object v21

    .line 199
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_7

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_7
    move-object/from16 v21, v3

    .line 207
    .line 208
    :goto_5
    if-eqz v21, :cond_8

    .line 209
    .line 210
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    goto :goto_6

    .line 215
    :cond_8
    const/4 v2, 0x0

    .line 216
    :goto_6
    new-instance v15, Lxe;

    .line 217
    .line 218
    invoke-direct {v15, v2}, Lxe;-><init>(F)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_9
    move-object v15, v3

    .line 223
    :goto_7
    new-instance v2, Lf11;

    .line 224
    .line 225
    invoke-direct {v2, v11, v12, v8, v5}, Lf11;-><init>(Lo11;Ly31;Lzl3;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v7, v6, v15, v2}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    goto :goto_8

    .line 233
    :cond_a
    move-object v2, v3

    .line 234
    :goto_8
    iget-object v6, v10, Ln14;->a:Lib0;

    .line 235
    .line 236
    invoke-virtual {v6}, Lib0;->l()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    sget-object v7, Lb11;->n:Lb11;

    .line 241
    .line 242
    if-ne v6, v7, :cond_b

    .line 243
    .line 244
    iget-object v6, v12, Ly31;->a:Lo14;

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_b
    iget-object v6, v12, Ly31;->a:Lo14;

    .line 248
    .line 249
    :goto_9
    if-eqz v0, :cond_d

    .line 250
    .line 251
    sget-object v6, Ll9;->J:Ll9;

    .line 252
    .line 253
    invoke-virtual {v8}, Lzl3;->a()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_c

    .line 258
    .line 259
    iget-wide v9, v8, Lzl3;->h:J

    .line 260
    .line 261
    new-instance v7, Lf14;

    .line 262
    .line 263
    invoke-direct {v7, v9, v10}, Lf14;-><init>(J)V

    .line 264
    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_c
    move-object v7, v3

    .line 268
    :goto_a
    new-instance v9, Lg11;

    .line 269
    .line 270
    invoke-direct {v9, v3, v11, v12, v8}, Lg11;-><init>(Lf14;Lo11;Ly31;Lzl3;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v6, v7, v3, v9}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    goto :goto_b

    .line 278
    :cond_d
    move-object v0, v3

    .line 279
    :goto_b
    new-instance v12, Lg11;

    .line 280
    .line 281
    invoke-direct {v12, v8, v4, v2, v0}, Lg11;-><init>(Lzl3;Li14;Li14;Li14;)V

    .line 282
    .line 283
    .line 284
    invoke-interface/range {p2 .. p4}, Lya2;->e(J)Ldv2;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    iget v0, v9, Ldv2;->n:I

    .line 289
    .line 290
    iget v2, v9, Ldv2;->o:I

    .line 291
    .line 292
    int-to-long v6, v0

    .line 293
    shl-long v6, v6, v18

    .line 294
    .line 295
    int-to-long v10, v2

    .line 296
    and-long v10, v10, v16

    .line 297
    .line 298
    or-long/2addr v6, v10

    .line 299
    iget-wide v10, v1, Ln11;->K:J

    .line 300
    .line 301
    move-wide/from16 v22, v6

    .line 302
    .line 303
    const-wide v5, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    invoke-static {v10, v11, v5, v6}, Lrs1;->a(JJ)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-nez v2, :cond_e

    .line 313
    .line 314
    iget-wide v4, v1, Ln11;->K:J

    .line 315
    .line 316
    move-wide v5, v4

    .line 317
    goto :goto_c

    .line 318
    :cond_e
    move-wide/from16 v5, v22

    .line 319
    .line 320
    :goto_c
    iget-object v2, v1, Ln11;->C:Lj14;

    .line 321
    .line 322
    if-eqz v2, :cond_f

    .line 323
    .line 324
    new-instance v4, Ll11;

    .line 325
    .line 326
    const/4 v7, 0x0

    .line 327
    invoke-direct {v4, v1, v5, v6, v7}, Ll11;-><init>(Ln11;JI)V

    .line 328
    .line 329
    .line 330
    iget-object v7, v1, Ln11;->M:Lm11;

    .line 331
    .line 332
    invoke-virtual {v2, v7, v3, v3, v4}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    goto :goto_d

    .line 337
    :cond_f
    move-object v2, v3

    .line 338
    :goto_d
    if-eqz v2, :cond_10

    .line 339
    .line 340
    invoke-virtual {v2}, Li14;->getValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Lrs1;

    .line 345
    .line 346
    iget-wide v7, v2, Lrs1;->a:J

    .line 347
    .line 348
    :goto_e
    move-wide/from16 v10, p3

    .line 349
    .line 350
    goto :goto_f

    .line 351
    :cond_10
    move-wide/from16 v7, v22

    .line 352
    .line 353
    goto :goto_e

    .line 354
    :goto_f
    invoke-static {v10, v11, v7, v8}, Lnf0;->d(JJ)J

    .line 355
    .line 356
    .line 357
    move-result-wide v7

    .line 358
    iget-object v2, v1, Ln11;->D:Lj14;

    .line 359
    .line 360
    const-wide/16 v10, 0x0

    .line 361
    .line 362
    if-eqz v2, :cond_11

    .line 363
    .line 364
    sget-object v4, Ll9;->K:Ll9;

    .line 365
    .line 366
    new-instance v15, Ll11;

    .line 367
    .line 368
    const/4 v0, 0x2

    .line 369
    invoke-direct {v15, v1, v5, v6, v0}, Ll11;-><init>(Ln11;JI)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v4, v3, v3, v15}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Li14;->getValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Ljs1;

    .line 381
    .line 382
    iget-wide v3, v0, Ljs1;->a:J

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_11
    move-wide v3, v10

    .line 386
    :goto_10
    iget-object v0, v1, Ln11;->E:Lj14;

    .line 387
    .line 388
    if-eqz v0, :cond_18

    .line 389
    .line 390
    iget-object v15, v1, Ln11;->H:Lzl3;

    .line 391
    .line 392
    invoke-virtual {v15}, Lzl3;->a()Z

    .line 393
    .line 394
    .line 395
    move-result v20

    .line 396
    if-eqz v20, :cond_12

    .line 397
    .line 398
    move-wide/from16 v20, v3

    .line 399
    .line 400
    iget-wide v2, v15, Lzl3;->i:J

    .line 401
    .line 402
    new-instance v4, Ljs1;

    .line 403
    .line 404
    invoke-direct {v4, v2, v3}, Ljs1;-><init>(J)V

    .line 405
    .line 406
    .line 407
    goto :goto_11

    .line 408
    :cond_12
    move-wide/from16 v20, v3

    .line 409
    .line 410
    const/4 v4, 0x0

    .line 411
    :goto_11
    iget-object v2, v1, Ln11;->H:Lzl3;

    .line 412
    .line 413
    invoke-virtual {v2}, Lzl3;->a()Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_17

    .line 418
    .line 419
    invoke-static {v10, v11}, Lra4;->b(J)F

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_13

    .line 432
    .line 433
    goto :goto_12

    .line 434
    :cond_13
    const/4 v3, 0x0

    .line 435
    :goto_12
    if-eqz v3, :cond_14

    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    goto :goto_13

    .line 442
    :cond_14
    const/4 v2, 0x0

    .line 443
    :goto_13
    invoke-static {v10, v11}, Lra4;->c(J)F

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-nez v3, :cond_15

    .line 456
    .line 457
    move-object v3, v10

    .line 458
    goto :goto_14

    .line 459
    :cond_15
    const/4 v3, 0x0

    .line 460
    :goto_14
    if-eqz v3, :cond_16

    .line 461
    .line 462
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    goto :goto_15

    .line 467
    :cond_16
    const/4 v3, 0x0

    .line 468
    :goto_15
    new-instance v10, Lye;

    .line 469
    .line 470
    invoke-direct {v10, v2, v3}, Lye;-><init>(FF)V

    .line 471
    .line 472
    .line 473
    move-object v3, v10

    .line 474
    goto :goto_16

    .line 475
    :cond_17
    const/4 v3, 0x0

    .line 476
    :goto_16
    new-instance v2, Ll11;

    .line 477
    .line 478
    const/4 v10, 0x1

    .line 479
    invoke-direct {v2, v1, v5, v6, v10}, Ll11;-><init>(Ln11;JI)V

    .line 480
    .line 481
    .line 482
    iget-object v10, v1, Ln11;->N:Lm11;

    .line 483
    .line 484
    invoke-virtual {v0, v10, v4, v3, v2}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    move-object v2, v3

    .line 489
    goto :goto_17

    .line 490
    :cond_18
    move-wide/from16 v20, v3

    .line 491
    .line 492
    const/4 v2, 0x0

    .line 493
    :goto_17
    shr-long v3, v7, v18

    .line 494
    .line 495
    long-to-int v15, v3

    .line 496
    and-long v3, v7, v16

    .line 497
    .line 498
    long-to-int v0, v3

    .line 499
    move v3, v0

    .line 500
    new-instance v0, Lk11;

    .line 501
    .line 502
    move/from16 v24, v3

    .line 503
    .line 504
    move-wide/from16 v10, v20

    .line 505
    .line 506
    move-wide/from16 v3, v22

    .line 507
    .line 508
    invoke-direct/range {v0 .. v12}, Lk11;-><init>(Ln11;Li14;JJJLdv2;JLg11;)V

    .line 509
    .line 510
    .line 511
    move/from16 v3, v24

    .line 512
    .line 513
    invoke-interface {v13, v15, v3, v14, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    return-object v0

    .line 518
    :cond_19
    move-wide/from16 v10, p3

    .line 519
    .line 520
    invoke-interface/range {p2 .. p4}, Lya2;->e(J)Ldv2;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    iget v1, v0, Ldv2;->n:I

    .line 525
    .line 526
    iget v2, v0, Ldv2;->o:I

    .line 527
    .line 528
    new-instance v3, Le9;

    .line 529
    .line 530
    const/4 v4, 0x3

    .line 531
    invoke-direct {v3, v0, v4}, Le9;-><init>(Ldv2;I)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v13, v1, v2, v14, v3}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    return-object v0
.end method

.method public final y0()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Ln11;->K:J

    .line 7
    .line 8
    return-void
.end method
