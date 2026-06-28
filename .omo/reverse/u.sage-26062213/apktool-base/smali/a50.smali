.class public abstract La50;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ls40;

.field public static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls40;

    .line 2
    .line 3
    sget v1, Lyt3;->a:F

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ls40;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, La50;->a:Ls40;

    .line 9
    .line 10
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 11
    .line 12
    sput v0, La50;->b:F

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lka0;Lay3;JLdf1;JJFLqh;Lzr2;Lyq3;Lyq3;Lyq3;Lyq3;Lag1;I)V
    .locals 26

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v0, p16

    const v1, -0x4ace862e

    .line 1
    invoke-virtual {v0, v1}, Lag1;->X(I)Lag1;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p17, v5

    invoke-virtual {v0, v2}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    invoke-virtual {v0, v3, v4}, Lag1;->e(J)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v5, v8

    move-object/from16 v8, p4

    invoke-virtual {v0, v8}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x800

    goto :goto_3

    :cond_3
    const/16 v13, 0x400

    :goto_3
    or-int/2addr v5, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v16

    const/16 v17, 0x2000

    const/16 v18, 0x4000

    if-eqz v16, :cond_4

    move/from16 v16, v18

    goto :goto_4

    :cond_4
    move/from16 v16, v17

    :goto_4
    or-int v5, v5, v16

    invoke-virtual {v0, v13}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/high16 v13, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v13, 0x10000

    :goto_5
    or-int/2addr v5, v13

    move-wide/from16 v6, p5

    invoke-virtual {v0, v6, v7}, Lag1;->e(J)Z

    move-result v19

    if-eqz v19, :cond_6

    const/high16 v19, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v19, 0x80000

    :goto_6
    or-int v5, v5, v19

    move-wide/from16 v9, p7

    invoke-virtual {v0, v9, v10}, Lag1;->e(J)Z

    move-result v21

    if-eqz v21, :cond_7

    const/high16 v21, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v21, 0x400000

    :goto_7
    or-int v5, v5, v21

    move/from16 v11, p9

    invoke-virtual {v0, v11}, Lag1;->c(F)Z

    move-result v22

    if-eqz v22, :cond_8

    const/high16 v22, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v22, 0x2000000

    :goto_8
    or-int v5, v5, v22

    move-object/from16 v12, p10

    invoke-virtual {v0, v12}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/high16 v23, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v23, 0x10000000

    :goto_9
    or-int v5, v5, v23

    move-object/from16 v13, p11

    invoke-virtual {v0, v13}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v16, 0x4

    :goto_a
    move-object/from16 v11, p12

    goto :goto_b

    :cond_a
    const/16 v16, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v11}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v19, 0x20

    goto :goto_c

    :cond_b
    const/16 v19, 0x10

    :goto_c
    or-int v16, v16, v19

    move-object/from16 v14, p13

    invoke-virtual {v0, v14}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v21, 0x100

    goto :goto_d

    :cond_c
    const/16 v21, 0x80

    :goto_d
    or-int v16, v16, v21

    move-object/from16 v15, p14

    invoke-virtual {v0, v15}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v19, 0x800

    goto :goto_e

    :cond_d
    const/16 v19, 0x400

    :goto_e
    or-int v16, v16, v19

    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    move/from16 v17, v18

    :cond_e
    or-int v1, v16, v17

    const v16, 0x12492493

    move/from16 v17, v5

    and-int v5, v17, v16

    const v6, 0x12492492

    const/4 v7, 0x1

    if-ne v5, v6, :cond_10

    and-int/lit16 v1, v1, 0x2493

    const/16 v5, 0x2492

    if-eq v1, v5, :cond_f

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    move v1, v7

    :goto_10
    and-int/lit8 v5, v17, 0x1

    invoke-virtual {v0, v5, v1}, Lag1;->N(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2
    sget-object v1, Lbg0;->a:Llc0;

    .line 3
    new-instance v5, Lt70;

    invoke-direct {v5, v3, v4}, Lt70;-><init>(J)V

    .line 4
    invoke-virtual {v1, v5}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v1

    .line 5
    sget-object v5, Llx3;->a:Llc0;

    .line 6
    invoke-virtual {v5, v2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v5

    .line 7
    filled-new-array {v1, v5}, [Lj03;

    move-result-object v1

    .line 8
    new-instance v5, Lw40;

    move-object/from16 v16, p0

    move/from16 v6, p9

    move-wide/from16 v17, v9

    move-object v7, v13

    move-object v13, v14

    move-object v10, v15

    move-wide/from16 v14, p5

    move-object v9, v8

    move-object v8, v12

    move-object/from16 v12, p15

    invoke-direct/range {v5 .. v18}, Lw40;-><init>(FLzr2;Lqh;Ldf1;Lyq3;Lyq3;Lyq3;Lyq3;JLka0;J)V

    const v6, -0x348d516e    # -1.5904402E7f

    invoke-static {v6, v5, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    move-result-object v5

    const/16 v6, 0x38

    .line 9
    invoke-static {v1, v5, v0, v6}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    goto :goto_11

    .line 10
    :cond_11
    invoke-virtual {v0}, Lag1;->Q()V

    .line 11
    :goto_11
    invoke-virtual {v0}, Lag1;->r()Lc33;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object v1, v0

    new-instance v0, Lx40;

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move-object/from16 v25, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lx40;-><init>(Lka0;Lay3;JLdf1;JJFLqh;Lzr2;Lyq3;Lyq3;Lyq3;Lyq3;I)V

    move-object/from16 v1, v25

    .line 12
    iput-object v0, v1, Lc33;->d:Ldf1;

    :cond_12
    return-void
.end method

.method public static final b(ZLne1;Lka0;Lnd2;ZLdf1;Ljl3;Lug3;Lvg3;Lfx;Lqh;Lzr2;Lag1;I)V
    .locals 42

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p12

    .line 4
    .line 5
    const v1, 0x5a127807

    .line 6
    .line 7
    .line 8
    invoke-virtual {v14, v1}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v14, v0}, Lag1;->g(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    :goto_0
    or-int v1, p13, v1

    .line 21
    .line 22
    move-object/from16 v2, p1

    .line 23
    .line 24
    invoke-virtual {v14, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v3, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v1, v3

    .line 36
    const v3, 0x12586c00

    .line 37
    .line 38
    .line 39
    or-int/2addr v1, v3

    .line 40
    const v3, 0x12492493

    .line 41
    .line 42
    .line 43
    and-int/2addr v3, v1

    .line 44
    const v4, 0x12492492

    .line 45
    .line 46
    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 v3, 0x1

    .line 52
    :goto_2
    and-int/lit8 v4, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {v14, v4, v3}, Lag1;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_8

    .line 59
    .line 60
    invoke-virtual {v14}, Lag1;->S()V

    .line 61
    .line 62
    .line 63
    and-int/lit8 v3, p13, 0x1

    .line 64
    .line 65
    const v4, -0x7fc00001

    .line 66
    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v14}, Lag1;->x()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v14}, Lag1;->Q()V

    .line 78
    .line 79
    .line 80
    and-int/2addr v1, v4

    .line 81
    move/from16 v3, p4

    .line 82
    .line 83
    move-object/from16 v7, p6

    .line 84
    .line 85
    move-object/from16 v8, p7

    .line 86
    .line 87
    move-object/from16 v9, p8

    .line 88
    .line 89
    move-object/from16 v10, p9

    .line 90
    .line 91
    move-object/from16 v12, p10

    .line 92
    .line 93
    move-object/from16 v13, p11

    .line 94
    .line 95
    move v4, v1

    .line 96
    move-object/from16 v1, p3

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_4
    :goto_3
    sget v3, Lw51;->a:F

    .line 101
    .line 102
    sget-object v3, Ldm0;->m:Lll3;

    .line 103
    .line 104
    invoke-static {v3, v14}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget-object v6, Lwa2;->a:Lis3;

    .line 109
    .line 110
    invoke-virtual {v14, v6}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lua2;

    .line 115
    .line 116
    iget-object v6, v6, Lua2;->a:Ly70;

    .line 117
    .line 118
    iget-object v7, v6, Ly70;->a0:Lug3;

    .line 119
    .line 120
    if-nez v7, :cond_5

    .line 121
    .line 122
    new-instance v15, Lug3;

    .line 123
    .line 124
    sget-wide v16, Lt70;->e:J

    .line 125
    .line 126
    sget-object v7, Ldm0;->A:Lz70;

    .line 127
    .line 128
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v18

    .line 132
    sget-object v7, Ldm0;->E:Lz70;

    .line 133
    .line 134
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v20

    .line 138
    sget-object v7, Ldm0;->I:Lz70;

    .line 139
    .line 140
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v22

    .line 144
    sget-object v7, Ldm0;->n:Lz70;

    .line 145
    .line 146
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v7

    .line 150
    sget v9, Ldm0;->o:F

    .line 151
    .line 152
    invoke-static {v9, v7, v8}, Lt70;->b(FJ)J

    .line 153
    .line 154
    .line 155
    move-result-wide v26

    .line 156
    sget-object v7, Ldm0;->B:Lz70;

    .line 157
    .line 158
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    sget v9, Ldm0;->C:F

    .line 163
    .line 164
    invoke-static {v9, v7, v8}, Lt70;->b(FJ)J

    .line 165
    .line 166
    .line 167
    move-result-wide v28

    .line 168
    sget-object v7, Ldm0;->F:Lz70;

    .line 169
    .line 170
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    sget v9, Ldm0;->G:F

    .line 175
    .line 176
    invoke-static {v9, v7, v8}, Lt70;->b(FJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v30

    .line 180
    sget-object v7, Ldm0;->u:Lz70;

    .line 181
    .line 182
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v32

    .line 186
    sget-object v7, Ldm0;->q:Lz70;

    .line 187
    .line 188
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v7

    .line 192
    sget v9, Ldm0;->r:F

    .line 193
    .line 194
    invoke-static {v9, v7, v8}, Lt70;->b(FJ)J

    .line 195
    .line 196
    .line 197
    move-result-wide v34

    .line 198
    sget-object v7, Ldm0;->z:Lz70;

    .line 199
    .line 200
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v36

    .line 204
    sget-object v7, Ldm0;->D:Lz70;

    .line 205
    .line 206
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v38

    .line 210
    sget-object v7, Ldm0;->H:Lz70;

    .line 211
    .line 212
    invoke-static {v6, v7}, La80;->c(Ly70;Lz70;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v40

    .line 216
    move-wide/from16 v24, v16

    .line 217
    .line 218
    invoke-direct/range {v15 .. v41}, Lug3;-><init>(JJJJJJJJJJJJJ)V

    .line 219
    .line 220
    .line 221
    iput-object v15, v6, Ly70;->a0:Lug3;

    .line 222
    .line 223
    move-object v7, v15

    .line 224
    :cond_5
    sget v6, Ldm0;->v:F

    .line 225
    .line 226
    sget v8, Ldm0;->p:F

    .line 227
    .line 228
    new-instance v9, Lvg3;

    .line 229
    .line 230
    invoke-direct {v9, v6, v8}, Lvg3;-><init>(FF)V

    .line 231
    .line 232
    .line 233
    and-int/2addr v1, v4

    .line 234
    sget-object v4, Ldm0;->w:Lz70;

    .line 235
    .line 236
    invoke-static {v4, v14}, La80;->d(Lz70;Lag1;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v10

    .line 240
    sget-wide v12, Lt70;->e:J

    .line 241
    .line 242
    sget-object v4, Ldm0;->s:Lz70;

    .line 243
    .line 244
    invoke-static {v4, v14}, La80;->d(Lz70;Lag1;)J

    .line 245
    .line 246
    .line 247
    move-result-wide v5

    .line 248
    sget v4, Ldm0;->t:F

    .line 249
    .line 250
    invoke-static {v4, v5, v6}, Lt70;->b(FJ)J

    .line 251
    .line 252
    .line 253
    sget v4, Ldm0;->x:F

    .line 254
    .line 255
    if-eqz v0, :cond_6

    .line 256
    .line 257
    move-wide v10, v12

    .line 258
    :cond_6
    if-eqz v0, :cond_7

    .line 259
    .line 260
    const/4 v4, 0x0

    .line 261
    :cond_7
    new-instance v5, Lfx;

    .line 262
    .line 263
    new-instance v6, Lsp3;

    .line 264
    .line 265
    invoke-direct {v6, v10, v11}, Lsp3;-><init>(J)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v5, v4, v6}, Lfx;-><init>(FLsp3;)V

    .line 269
    .line 270
    .line 271
    sget-object v4, Lw51;->b:Lds2;

    .line 272
    .line 273
    sget-object v6, Lkd2;->b:Lkd2;

    .line 274
    .line 275
    sget-object v10, La50;->a:Ls40;

    .line 276
    .line 277
    move-object v13, v4

    .line 278
    move-object v8, v7

    .line 279
    move-object v12, v10

    .line 280
    move v4, v1

    .line 281
    move-object v7, v3

    .line 282
    move-object v10, v5

    .line 283
    move-object v1, v6

    .line 284
    const/4 v3, 0x1

    .line 285
    :goto_4
    invoke-virtual {v14}, Lag1;->q()V

    .line 286
    .line 287
    .line 288
    sget-object v5, Ldm0;->y:Lf54;

    .line 289
    .line 290
    invoke-static {v5, v14}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    sget v6, Lw51;->a:F

    .line 295
    .line 296
    and-int/lit8 v6, v4, 0xe

    .line 297
    .line 298
    const v11, 0xc00030

    .line 299
    .line 300
    .line 301
    or-int/2addr v6, v11

    .line 302
    shl-int/lit8 v4, v4, 0x3

    .line 303
    .line 304
    and-int/lit16 v4, v4, 0x380

    .line 305
    .line 306
    or-int/2addr v4, v6

    .line 307
    const v6, 0x6186c00

    .line 308
    .line 309
    .line 310
    or-int v15, v4, v6

    .line 311
    .line 312
    const v16, 0x1b0c00

    .line 313
    .line 314
    .line 315
    const/high16 v11, 0x42000000    # 32.0f

    .line 316
    .line 317
    move-object/from16 v4, p2

    .line 318
    .line 319
    move-object/from16 v6, p5

    .line 320
    .line 321
    invoke-static/range {v0 .. v16}, La50;->c(ZLnd2;Lne1;ZLka0;Lay3;Ldf1;Ljl3;Lug3;Lvg3;Lfx;FLqh;Lzr2;Lag1;II)V

    .line 322
    .line 323
    .line 324
    move-object v4, v1

    .line 325
    move v5, v3

    .line 326
    move-object v11, v12

    .line 327
    move-object v12, v13

    .line 328
    goto :goto_5

    .line 329
    :cond_8
    invoke-virtual/range {p12 .. p12}, Lag1;->Q()V

    .line 330
    .line 331
    .line 332
    move-object/from16 v4, p3

    .line 333
    .line 334
    move/from16 v5, p4

    .line 335
    .line 336
    move-object/from16 v7, p6

    .line 337
    .line 338
    move-object/from16 v8, p7

    .line 339
    .line 340
    move-object/from16 v9, p8

    .line 341
    .line 342
    move-object/from16 v10, p9

    .line 343
    .line 344
    move-object/from16 v11, p10

    .line 345
    .line 346
    move-object/from16 v12, p11

    .line 347
    .line 348
    :goto_5
    invoke-virtual/range {p12 .. p12}, Lag1;->r()Lc33;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    if-eqz v14, :cond_9

    .line 353
    .line 354
    new-instance v0, Lt40;

    .line 355
    .line 356
    move/from16 v1, p0

    .line 357
    .line 358
    move-object/from16 v2, p1

    .line 359
    .line 360
    move-object/from16 v3, p2

    .line 361
    .line 362
    move-object/from16 v6, p5

    .line 363
    .line 364
    move/from16 v13, p13

    .line 365
    .line 366
    invoke-direct/range {v0 .. v13}, Lt40;-><init>(ZLne1;Lka0;Lnd2;ZLdf1;Ljl3;Lug3;Lvg3;Lfx;Lqh;Lzr2;I)V

    .line 367
    .line 368
    .line 369
    iput-object v0, v14, Lc33;->d:Ldf1;

    .line 370
    .line 371
    :cond_9
    return-void
.end method

.method public static final c(ZLnd2;Lne1;ZLka0;Lay3;Ldf1;Ljl3;Lug3;Lvg3;Lfx;FLqh;Lzr2;Lag1;II)V
    .locals 32

    move/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v2, p3

    move-object/from16 v9, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p14

    move/from16 v10, p15

    move/from16 v11, p16

    const v0, 0x17e0eb2e

    .line 1
    invoke-virtual {v15, v0}, Lag1;->X(I)Lag1;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v15, v1}, Lag1;->g(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v15, v13}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x100

    goto :goto_3

    :cond_4
    const/16 v16, 0x80

    :goto_3
    or-int v0, v0, v16

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :goto_4
    and-int/lit16 v7, v10, 0xc00

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-nez v7, :cond_7

    invoke-virtual {v15, v2}, Lag1;->g(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    move/from16 v7, v18

    goto :goto_5

    :cond_6
    move/from16 v7, v17

    :goto_5
    or-int/2addr v0, v7

    :cond_7
    and-int/lit16 v7, v10, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v7, :cond_9

    move-object/from16 v7, p4

    invoke-virtual {v15, v7}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move/from16 v21, v20

    goto :goto_6

    :cond_8
    move/from16 v21, v19

    :goto_6
    or-int v0, v0, v21

    goto :goto_7

    :cond_9
    move-object/from16 v7, p4

    :goto_7
    const/high16 v21, 0x30000

    and-int v22, v10, v21

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    move-object/from16 v12, p5

    if-nez v22, :cond_b

    invoke-virtual {v15, v12}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    move/from16 v25, v24

    goto :goto_8

    :cond_a
    move/from16 v25, v23

    :goto_8
    or-int v0, v0, v25

    :cond_b
    const/high16 v25, 0x180000

    and-int v26, v10, v25

    const/high16 v27, 0x80000

    const/high16 v28, 0x100000

    move-object/from16 v8, p6

    if-nez v26, :cond_d

    invoke-virtual {v15, v8}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    move/from16 v29, v28

    goto :goto_9

    :cond_c
    move/from16 v29, v27

    :goto_9
    or-int v0, v0, v29

    :cond_d
    const/high16 v29, 0xc00000

    and-int v29, v10, v29

    const/4 v4, 0x0

    if-nez v29, :cond_f

    invoke-virtual {v15, v4}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/high16 v29, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v29, 0x400000

    :goto_a
    or-int v0, v0, v29

    :cond_f
    const/high16 v29, 0x6000000

    and-int v29, v10, v29

    if-nez v29, :cond_11

    invoke-virtual {v15, v4}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    const/high16 v29, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v29, 0x2000000

    :goto_b
    or-int v0, v0, v29

    :cond_11
    const/high16 v29, 0x30000000

    and-int v29, v10, v29

    move-object/from16 v8, p7

    if-nez v29, :cond_13

    invoke-virtual {v15, v8}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    const/high16 v29, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v29, 0x10000000

    :goto_c
    or-int v0, v0, v29

    :cond_13
    and-int/lit8 v29, v11, 0x6

    if-nez v29, :cond_15

    invoke-virtual {v15, v9}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    const/16 v29, 0x4

    goto :goto_d

    :cond_14
    const/16 v29, 0x2

    :goto_d
    or-int v29, v11, v29

    goto :goto_e

    :cond_15
    move/from16 v29, v11

    :goto_e
    and-int/lit8 v30, v11, 0x30

    if-nez v30, :cond_17

    invoke-virtual {v15, v14}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v16, 0x20

    goto :goto_f

    :cond_16
    const/16 v16, 0x10

    :goto_f
    or-int v29, v29, v16

    :cond_17
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_19

    move-object/from16 v3, p10

    invoke-virtual {v15, v3}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    const/16 v22, 0x100

    goto :goto_10

    :cond_18
    const/16 v22, 0x80

    :goto_10
    or-int v29, v29, v22

    goto :goto_11

    :cond_19
    move-object/from16 v3, p10

    :goto_11
    and-int/lit16 v6, v11, 0xc00

    if-nez v6, :cond_1b

    move/from16 v6, p11

    invoke-virtual {v15, v6}, Lag1;->c(F)Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v17, v18

    :cond_1a
    or-int v29, v29, v17

    goto :goto_12

    :cond_1b
    move/from16 v6, p11

    :goto_12
    and-int/lit16 v4, v11, 0x6000

    if-nez v4, :cond_1d

    move-object/from16 v4, p12

    invoke-virtual {v15, v4}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    move/from16 v19, v20

    :cond_1c
    or-int v29, v29, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p12

    :goto_13
    and-int v18, v11, v21

    move-object/from16 v8, p13

    if-nez v18, :cond_1f

    invoke-virtual {v15, v8}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    move/from16 v23, v24

    :cond_1e
    or-int v29, v29, v23

    :cond_1f
    and-int v18, v11, v25

    if-nez v18, :cond_21

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    move/from16 v27, v28

    :cond_20
    or-int v29, v29, v27

    goto :goto_14

    :cond_21
    move/from16 v18, v0

    :goto_14
    const v0, 0x12492493

    and-int v0, v18, v0

    const v1, 0x12492492

    const/16 v19, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_23

    const v0, 0x92493

    and-int v0, v29, v0

    const v1, 0x92492

    if-eq v0, v1, :cond_22

    goto :goto_15

    :cond_22
    move v0, v8

    goto :goto_16

    :cond_23
    :goto_15
    move/from16 v0, v19

    :goto_16
    and-int/lit8 v1, v18, 0x1

    invoke-virtual {v15, v1, v0}, Lag1;->N(IZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v15}, Lag1;->S()V

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {v15}, Lag1;->x()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_17

    .line 2
    :cond_24
    invoke-virtual {v15}, Lag1;->Q()V

    :cond_25
    :goto_17
    invoke-virtual {v15}, Lag1;->q()V

    const v0, -0x38ed1633

    .line 3
    invoke-virtual {v15, v0}, Lag1;->W(I)V

    .line 4
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Lrb0;->a:Lbx3;

    if-ne v0, v1, :cond_26

    .line 6
    new-instance v0, Lvf2;

    invoke-direct {v0}, Lvf2;-><init>()V

    .line 7
    invoke-virtual {v15, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 8
    :cond_26
    check-cast v0, Lvf2;

    .line 9
    invoke-virtual {v15, v8}, Lag1;->p(Z)V

    .line 10
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_27

    .line 11
    new-instance v8, Lt3;

    const/16 v3, 0x10

    invoke-direct {v8, v3}, Lt3;-><init>(I)V

    .line 12
    invoke-virtual {v15, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 13
    :cond_27
    check-cast v8, Lpe1;

    invoke-static {v13, v8}, Ldh3;->a(Lnd2;Lpe1;)Lnd2;

    move-result-object v21

    if-nez v2, :cond_29

    if-eqz p0, :cond_28

    .line 14
    iget-wide v3, v9, Lug3;->j:J

    goto :goto_18

    :cond_28
    iget-wide v3, v9, Lug3;->e:J

    goto :goto_18

    :cond_29
    if-nez p0, :cond_2a

    .line 15
    iget-wide v3, v9, Lug3;->a:J

    goto :goto_18

    .line 16
    :cond_2a
    iget-wide v3, v9, Lug3;->i:J

    :goto_18
    const/16 v22, 0x0

    if-nez v14, :cond_2b

    const v8, -0x38e84578

    .line 17
    invoke-virtual {v15, v8}, Lag1;->W(I)V

    const/4 v8, 0x0

    .line 18
    invoke-virtual {v15, v8}, Lag1;->p(Z)V

    move-object/from16 v16, v0

    move-wide v10, v3

    move v12, v8

    const/4 v4, 0x0

    goto/16 :goto_20

    :cond_2b
    const v8, -0x5caca767

    .line 19
    invoke-virtual {v15, v8}, Lag1;->W(I)V

    shr-int/lit8 v8, v18, 0x9

    and-int/lit8 v8, v8, 0xe

    move-wide/from16 v23, v3

    shl-int/lit8 v3, v29, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v8

    .line 20
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2c

    .line 21
    new-instance v4, Lgp3;

    invoke-direct {v4}, Lgp3;-><init>()V

    .line 22
    invoke-virtual {v15, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 23
    :cond_2c
    check-cast v4, Lgp3;

    .line 24
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_2d

    const/16 v17, 0x0

    .line 25
    invoke-static/range {v17 .. v17}, Lca;->A(Ljava/lang/Object;)Lws2;

    move-result-object v8

    .line 26
    invoke-virtual {v15, v8}, Lag1;->g0(Ljava/lang/Object;)V

    .line 27
    :cond_2d
    check-cast v8, Lpg2;

    .line 28
    invoke-virtual {v15, v0}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v25, v3

    .line 29
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v3

    if-nez v18, :cond_2e

    if-ne v3, v1, :cond_2f

    .line 30
    :cond_2e
    new-instance v3, Lnz;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v3, v0, v4, v5, v6}, Lnz;-><init>(Lxs1;Lgp3;Ldh0;I)V

    .line 31
    invoke-virtual {v15, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 32
    :cond_2f
    check-cast v3, Ldf1;

    invoke-static {v3, v15, v0}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 33
    invoke-static {v4}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lws1;

    if-nez v2, :cond_31

    :cond_30
    :goto_19
    move/from16 v4, v22

    goto :goto_1b

    .line 34
    :cond_31
    instance-of v3, v6, Lhy2;

    if-eqz v3, :cond_32

    goto :goto_19

    .line 35
    :cond_32
    instance-of v3, v6, Lik1;

    if-eqz v3, :cond_33

    iget v3, v14, Lvg3;->a:F

    :goto_1a
    move v4, v3

    goto :goto_1b

    .line 36
    :cond_33
    instance-of v3, v6, Lt91;

    if-eqz v3, :cond_34

    goto :goto_19

    .line 37
    :cond_34
    instance-of v3, v6, Lzw0;

    if-eqz v3, :cond_30

    iget v3, v14, Lvg3;->b:F

    goto :goto_1a

    .line 38
    :goto_1b
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_35

    .line 39
    new-instance v3, Lpd;

    .line 40
    new-instance v5, Lcw0;

    invoke-direct {v5, v4}, Lcw0;-><init>(F)V

    move-object/from16 v16, v0

    .line 41
    sget-object v0, Lk30;->o:Le34;

    const/16 v7, 0xc

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-direct {v3, v5, v0, v8, v7}, Lpd;-><init>(Ljava/lang/Object;Le34;Ljava/lang/Float;I)V

    .line 42
    invoke-virtual {v15, v3}, Lag1;->g0(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_35
    move-object/from16 v16, v0

    move-object/from16 v18, v8

    .line 43
    :goto_1c
    check-cast v3, Lpd;

    .line 44
    new-instance v0, Lcw0;

    invoke-direct {v0, v4}, Lcw0;-><init>(F)V

    .line 45
    invoke-virtual {v15, v3}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v4}, Lag1;->c(F)Z

    move-result v7

    or-int/2addr v5, v7

    and-int/lit8 v7, v25, 0xe

    xor-int/lit8 v7, v7, 0x6

    const/4 v8, 0x4

    if-le v7, v8, :cond_36

    invoke-virtual {v15, v2}, Lag1;->g(Z)Z

    move-result v7

    if-nez v7, :cond_38

    :cond_36
    and-int/lit8 v7, v25, 0x6

    if-ne v7, v8, :cond_37

    goto :goto_1d

    :cond_37
    const/16 v19, 0x0

    :cond_38
    :goto_1d
    or-int v5, v5, v19

    invoke-virtual {v15, v6}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 46
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_3a

    if-ne v7, v1, :cond_39

    goto :goto_1e

    :cond_39
    move-wide/from16 v10, v23

    const/4 v12, 0x0

    goto :goto_1f

    .line 47
    :cond_3a
    :goto_1e
    new-instance v2, Loz;

    const/4 v8, 0x0

    move/from16 v5, p3

    move-object/from16 v7, v18

    move-wide/from16 v10, v23

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v8}, Loz;-><init>(Lpd;FZLws1;Lpg2;Ldh0;)V

    .line 48
    invoke-virtual {v15, v2}, Lag1;->g0(Ljava/lang/Object;)V

    move-object v7, v2

    .line 49
    :goto_1f
    check-cast v7, Ldf1;

    invoke-static {v7, v15, v0}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 50
    iget-object v4, v3, Lpd;->c:Lwe;

    .line 51
    invoke-virtual {v15, v12}, Lag1;->p(Z)V

    :goto_20
    if-eqz v4, :cond_3b

    .line 52
    iget-object v0, v4, Lwe;->o:Lws2;

    .line 53
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Lcw0;

    .line 55
    iget v0, v0, Lcw0;->n:F

    move/from16 v17, v0

    goto :goto_21

    :cond_3b
    move/from16 v17, v22

    .line 56
    :goto_21
    new-instance v0, Lu40;

    move/from16 v3, p0

    move/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p11

    move-object/from16 v8, p12

    move-object v12, v1

    move-object v1, v9

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lu40;-><init>(Lug3;ZZLka0;Lay3;Ldf1;FLqh;Lzr2;)V

    const v1, -0x4eb4c028

    invoke-static {v1, v0, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    move-result-object v0

    .line 57
    sget-object v1, Lwu3;->a:Llc0;

    .line 58
    invoke-static {v10, v11, v15}, La80;->b(JLag1;)J

    move-result-wide v1

    if-nez v16, :cond_3d

    const v3, 0x5b150aa8

    .line 59
    invoke-virtual {v15, v3}, Lag1;->W(I)V

    .line 60
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_3c

    .line 61
    new-instance v3, Lvf2;

    invoke-direct {v3}, Lvf2;-><init>()V

    .line 62
    invoke-virtual {v15, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 63
    :cond_3c
    check-cast v3, Lvf2;

    const/4 v8, 0x0

    .line 64
    invoke-virtual {v15, v8}, Lag1;->p(Z)V

    move-object/from16 v16, v3

    goto :goto_22

    :cond_3d
    const/4 v8, 0x0

    const v3, -0xd93f9f1

    .line 65
    invoke-virtual {v15, v3}, Lag1;->W(I)V

    .line 66
    invoke-virtual {v15, v8}, Lag1;->p(Z)V

    .line 67
    :goto_22
    sget-object v3, Lwu3;->a:Llc0;

    .line 68
    invoke-virtual {v15, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcw0;

    .line 69
    iget v4, v4, Lcw0;->n:F

    add-float v6, v4, v22

    .line 70
    sget-object v4, Lbg0;->a:Llc0;

    .line 71
    new-instance v5, Lt70;

    invoke-direct {v5, v1, v2}, Lt70;-><init>(J)V

    .line 72
    invoke-virtual {v4, v5}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v1

    .line 73
    new-instance v2, Lcw0;

    invoke-direct {v2, v6}, Lcw0;-><init>(F)V

    .line 74
    invoke-virtual {v3, v2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    move-result-object v2

    .line 75
    filled-new-array {v1, v2}, [Lj03;

    move-result-object v1

    move-object v12, v0

    .line 76
    new-instance v0, Ltu3;

    move/from16 v8, p0

    move/from16 v9, p3

    move-object/from16 v3, p7

    move-object/from16 v7, p10

    move-object v13, v1

    move-wide v4, v10

    move-object/from16 v2, v16

    move/from16 v11, v17

    move-object/from16 v1, v21

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Ltu3;-><init>(Lnd2;Lvf2;Ljl3;JFLfx;ZZLne1;FLka0;)V

    const v1, 0x59ed78f3

    invoke-static {v1, v0, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    move-result-object v0

    const/16 v1, 0x38

    .line 77
    invoke-static {v13, v0, v15, v1}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    goto :goto_23

    .line 78
    :cond_3e
    invoke-virtual {v15}, Lag1;->Q()V

    .line 79
    :goto_23
    invoke-virtual {v15}, Lag1;->r()Lc33;

    move-result-object v0

    if-eqz v0, :cond_3f

    move-object v1, v0

    new-instance v0, Lv40;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v31, v1

    move-object v10, v14

    move/from16 v1, p0

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v16}, Lv40;-><init>(ZLnd2;Lne1;ZLka0;Lay3;Ldf1;Ljl3;Lug3;Lvg3;Lfx;FLqh;Lzr2;II)V

    move-object/from16 v1, v31

    .line 80
    iput-object v0, v1, Lc33;->d:Ldf1;

    :cond_3f
    return-void
.end method
