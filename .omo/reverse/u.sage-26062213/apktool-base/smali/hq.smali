.class public final Lhq;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljx0;
.implements Lco2;
.implements Leh3;


# instance fields
.field public B:J

.field public C:Ljl3;

.field public D:J

.field public E:Lhy1;

.field public F:Lfl4;

.field public G:Ljl3;

.field public H:Lfl4;


# virtual methods
.method public final H()V
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lhq;->D:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lhq;->E:Lhy1;

    .line 10
    .line 11
    iput-object v0, p0, Lhq;->F:Lfl4;

    .line 12
    .line 13
    iput-object v0, p0, Lhq;->G:Ljl3;

    .line 14
    .line 15
    invoke-static {p0}, Lkt4;->Q(Ljx0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final K(Lzy1;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lzy1;->n:Lx20;

    .line 6
    .line 7
    iget-object v3, v0, Lhq;->C:Ljl3;

    .line 8
    .line 9
    sget-object v4, Lk75;->d:Lfk1;

    .line 10
    .line 11
    if-ne v3, v4, :cond_1

    .line 12
    .line 13
    iget-wide v2, v0, Lhq;->B:J

    .line 14
    .line 15
    sget-wide v4, Lt70;->f:J

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Lt70;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v1, v0, Lhq;->B:J

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/16 v5, 0x7e

    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Lkx0;->C(Lkx0;JJI)V

    .line 32
    .line 33
    .line 34
    move-object v1, v0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_1
    invoke-interface {v2}, Lkx0;->d()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-wide v5, v0, Lhq;->D:J

    .line 43
    .line 44
    invoke-static {v3, v4, v5, v6}, Lmn3;->a(JJ)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lzy1;->getLayoutDirection()Lhy1;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v5, v0, Lhq;->E:Lhy1;

    .line 56
    .line 57
    if-ne v3, v5, :cond_2

    .line 58
    .line 59
    iget-object v3, v0, Lhq;->G:Ljl3;

    .line 60
    .line 61
    iget-object v5, v0, Lhq;->C:Ljl3;

    .line 62
    .line 63
    invoke-static {v3, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-object v3, v0, Lhq;->F:Lfl4;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance v3, Lh4;

    .line 76
    .line 77
    invoke-direct {v3, v4, v0, v1}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v3}, Lix;->H(Lmd2;Lne1;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lhq;->H:Lfl4;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    iput-object v5, v0, Lhq;->H:Lfl4;

    .line 87
    .line 88
    :goto_0
    iput-object v3, v0, Lhq;->F:Lfl4;

    .line 89
    .line 90
    invoke-interface {v2}, Lkx0;->d()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    iput-wide v5, v0, Lhq;->D:J

    .line 95
    .line 96
    invoke-virtual {v1}, Lzy1;->getLayoutDirection()Lhy1;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iput-object v5, v0, Lhq;->E:Lhy1;

    .line 101
    .line 102
    iget-object v5, v0, Lhq;->C:Ljl3;

    .line 103
    .line 104
    iput-object v5, v0, Lhq;->G:Ljl3;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-wide v5, v0, Lhq;->B:J

    .line 110
    .line 111
    sget-wide v7, Lt70;->f:J

    .line 112
    .line 113
    invoke-static {v5, v6, v7, v8}, Lt70;->c(JJ)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_0

    .line 118
    .line 119
    iget-wide v5, v0, Lhq;->B:J

    .line 120
    .line 121
    instance-of v0, v3, Llr2;

    .line 122
    .line 123
    const/16 v7, 0x20

    .line 124
    .line 125
    const-wide v8, 0xffffffffL

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    move v10, v7

    .line 131
    sget-object v7, Lt51;->f:Lt51;

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    check-cast v3, Llr2;

    .line 136
    .line 137
    iget-object v0, v3, Llr2;->x:Ll33;

    .line 138
    .line 139
    iget v2, v0, Ll33;->a:F

    .line 140
    .line 141
    iget v3, v0, Ll33;->b:F

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    int-to-long v11, v2

    .line 148
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    int-to-long v2, v2

    .line 153
    shl-long v10, v11, v10

    .line 154
    .line 155
    and-long/2addr v2, v8

    .line 156
    or-long v3, v10, v2

    .line 157
    .line 158
    invoke-static {v0}, Lon4;->L(Ll33;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    move-wide v1, v5

    .line 163
    move-wide v5, v8

    .line 164
    const/4 v8, 0x3

    .line 165
    move-object/from16 v0, p1

    .line 166
    .line 167
    invoke-virtual/range {v0 .. v8}, Lzy1;->u(JJJLtv4;I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_3
    move-object v0, v1

    .line 173
    instance-of v1, v3, Lmr2;

    .line 174
    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    check-cast v3, Lmr2;

    .line 178
    .line 179
    iget-object v1, v3, Lmr2;->y:Lsb;

    .line 180
    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    :goto_1
    invoke-virtual {v0, v1, v5, v6, v7}, Lzy1;->f(Lsb;JLtv4;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_4
    iget-object v1, v3, Lmr2;->x:Lka3;

    .line 189
    .line 190
    iget-wide v11, v1, Lka3;->h:J

    .line 191
    .line 192
    shr-long/2addr v11, v10

    .line 193
    long-to-int v3, v11

    .line 194
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    iget v11, v1, Lka3;->a:F

    .line 199
    .line 200
    iget v12, v1, Lka3;->b:F

    .line 201
    .line 202
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    int-to-long v13, v11

    .line 207
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    int-to-long v11, v11

    .line 212
    shl-long/2addr v13, v10

    .line 213
    and-long/2addr v11, v8

    .line 214
    or-long/2addr v11, v13

    .line 215
    invoke-virtual {v1}, Lka3;->b()F

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    invoke-virtual {v1}, Lka3;->a()F

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    int-to-long v13, v13

    .line 228
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    move-wide v15, v8

    .line 233
    int-to-long v8, v1

    .line 234
    shl-long/2addr v13, v10

    .line 235
    and-long/2addr v8, v15

    .line 236
    or-long/2addr v8, v13

    .line 237
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    int-to-long v13, v1

    .line 242
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    move/from16 p0, v10

    .line 247
    .line 248
    move-wide/from16 v17, v11

    .line 249
    .line 250
    int-to-long v10, v1

    .line 251
    shl-long v12, v13, p0

    .line 252
    .line 253
    and-long/2addr v10, v15

    .line 254
    or-long/2addr v10, v12

    .line 255
    iget-object v1, v2, Lx20;->n:Lw20;

    .line 256
    .line 257
    iget-object v1, v1, Lw20;->c:Lv20;

    .line 258
    .line 259
    shr-long v12, v17, p0

    .line 260
    .line 261
    long-to-int v3, v12

    .line 262
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 263
    .line 264
    .line 265
    move-result v20

    .line 266
    and-long v12, v17, v15

    .line 267
    .line 268
    long-to-int v12, v12

    .line 269
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 270
    .line 271
    .line 272
    move-result v21

    .line 273
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    shr-long v13, v8, p0

    .line 278
    .line 279
    long-to-int v13, v13

    .line 280
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    add-float v22, v13, v3

    .line 285
    .line 286
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    and-long/2addr v8, v15

    .line 291
    long-to-int v8, v8

    .line 292
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    add-float v23, v8, v3

    .line 297
    .line 298
    shr-long v8, v10, p0

    .line 299
    .line 300
    long-to-int v3, v8

    .line 301
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 302
    .line 303
    .line 304
    move-result v24

    .line 305
    and-long v8, v10, v15

    .line 306
    .line 307
    long-to-int v3, v8

    .line 308
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 309
    .line 310
    .line 311
    move-result v25

    .line 312
    invoke-static {v2, v5, v6, v7, v4}, Lx20;->a(Lx20;JLtv4;I)Llb;

    .line 313
    .line 314
    .line 315
    move-result-object v26

    .line 316
    move-object/from16 v19, v1

    .line 317
    .line 318
    invoke-interface/range {v19 .. v26}, Lv20;->i(FFFFFFLlb;)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_5
    instance-of v1, v3, Lkr2;

    .line 323
    .line 324
    if-eqz v1, :cond_6

    .line 325
    .line 326
    check-cast v3, Lkr2;

    .line 327
    .line 328
    iget-object v1, v3, Lkr2;->x:Lsb;

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_6
    invoke-static {}, Lp61;->x()V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :goto_2
    invoke-virtual {v0}, Lzy1;->a()V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public final a0(Lph3;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lhq;->C:Ljl3;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lnh3;->d(Lph3;Ljl3;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
