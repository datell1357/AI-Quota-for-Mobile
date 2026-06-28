.class public abstract Lx7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lds2;

.field public static final b:Lds2;

.field public static final c:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/high16 v0, 0x41800000    # 16.0f

    .line 2
    .line 3
    invoke-static {v0}, Lis0;->f(F)Lds2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lx7;->a:Lds2;

    .line 8
    .line 9
    invoke-static {v0}, Lis0;->f(F)Lds2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lx7;->b:Lds2;

    .line 14
    .line 15
    new-instance v0, Ll6;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-direct {v0, v1}, Ll6;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Llc0;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lx7;->c:Llc0;

    .line 27
    .line 28
    return-void
.end method

.method public static final a(Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJJLag1;I)V
    .locals 24

    .line 1
    move-object/from16 v9, p16

    .line 2
    .line 3
    const v0, 0x522d8af1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v9, v0}, Lag1;->X(I)Lag1;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p17, 0x30

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    invoke-virtual {v9, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x100

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v1, 0x80

    .line 23
    .line 24
    :goto_0
    or-int/2addr v0, v1

    .line 25
    move-object/from16 v5, p3

    .line 26
    .line 27
    invoke-virtual {v9, v5}, Lag1;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x800

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v1, 0x400

    .line 37
    .line 38
    :goto_1
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v6, p4

    .line 40
    .line 41
    invoke-virtual {v9, v6}, Lag1;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x4000

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x2000

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    move-object/from16 v1, p5

    .line 54
    .line 55
    invoke-virtual {v9, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const/high16 v2, 0x20000

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/high16 v2, 0x10000

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v2

    .line 67
    move-wide/from16 v2, p6

    .line 68
    .line 69
    invoke-virtual {v9, v2, v3}, Lag1;->e(J)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    const/high16 v7, 0x100000

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const/high16 v7, 0x80000

    .line 79
    .line 80
    :goto_4
    or-int/2addr v0, v7

    .line 81
    const/4 v7, 0x0

    .line 82
    invoke-virtual {v9, v7}, Lag1;->c(F)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_5

    .line 87
    .line 88
    const/high16 v7, 0x800000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v7, 0x400000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v7

    .line 94
    move-wide/from16 v10, p8

    .line 95
    .line 96
    invoke-virtual {v9, v10, v11}, Lag1;->e(J)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    const/high16 v7, 0x4000000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v7, 0x2000000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v0, v7

    .line 108
    move-wide/from16 v14, p10

    .line 109
    .line 110
    invoke-virtual {v9, v14, v15}, Lag1;->e(J)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_7

    .line 115
    .line 116
    const/high16 v7, 0x20000000

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    const/high16 v7, 0x10000000

    .line 120
    .line 121
    :goto_7
    or-int/2addr v0, v7

    .line 122
    move-wide/from16 v7, p12

    .line 123
    .line 124
    invoke-virtual {v9, v7, v8}, Lag1;->e(J)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_8

    .line 129
    .line 130
    const/4 v12, 0x4

    .line 131
    :goto_8
    move/from16 v23, v0

    .line 132
    .line 133
    move-wide/from16 v0, p14

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_8
    const/4 v12, 0x2

    .line 137
    goto :goto_8

    .line 138
    :goto_9
    invoke-virtual {v9, v0, v1}, Lag1;->e(J)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-eqz v13, :cond_9

    .line 143
    .line 144
    const/16 v13, 0x20

    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_9
    const/16 v13, 0x10

    .line 148
    .line 149
    :goto_a
    or-int/2addr v12, v13

    .line 150
    const v13, 0x12492493

    .line 151
    .line 152
    .line 153
    and-int v13, v23, v13

    .line 154
    .line 155
    const v0, 0x12492492

    .line 156
    .line 157
    .line 158
    if-ne v13, v0, :cond_b

    .line 159
    .line 160
    and-int/lit8 v0, v12, 0x13

    .line 161
    .line 162
    const/16 v1, 0x12

    .line 163
    .line 164
    if-eq v0, v1, :cond_a

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_a
    const/4 v0, 0x0

    .line 168
    goto :goto_c

    .line 169
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 170
    :goto_c
    and-int/lit8 v1, v23, 0x1

    .line 171
    .line 172
    invoke-virtual {v9, v1, v0}, Lag1;->N(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    new-instance v10, Lv7;

    .line 179
    .line 180
    move-object/from16 v22, p0

    .line 181
    .line 182
    move-wide/from16 v20, p8

    .line 183
    .line 184
    move-wide/from16 v18, p14

    .line 185
    .line 186
    move-object v11, v4

    .line 187
    move-object v12, v5

    .line 188
    move-object v13, v6

    .line 189
    move-wide/from16 v16, v7

    .line 190
    .line 191
    invoke-direct/range {v10 .. v22}, Lv7;-><init>(Ldf1;Ldf1;Ldf1;JJJJLka0;)V

    .line 192
    .line 193
    .line 194
    const v0, -0x26e8eb4a

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v10, v9}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    shr-int/lit8 v0, v23, 0xc

    .line 202
    .line 203
    and-int/lit8 v1, v0, 0x70

    .line 204
    .line 205
    const v4, 0xc00006

    .line 206
    .line 207
    .line 208
    or-int/2addr v1, v4

    .line 209
    and-int/lit16 v0, v0, 0x380

    .line 210
    .line 211
    or-int/2addr v0, v1

    .line 212
    shr-int/lit8 v1, v23, 0x9

    .line 213
    .line 214
    const v4, 0xe000

    .line 215
    .line 216
    .line 217
    and-int/2addr v1, v4

    .line 218
    or-int v10, v0, v1

    .line 219
    .line 220
    const/16 v11, 0x68

    .line 221
    .line 222
    sget-object v0, Lkd2;->b:Lkd2;

    .line 223
    .line 224
    const-wide/16 v4, 0x0

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    move-object/from16 v1, p5

    .line 229
    .line 230
    invoke-static/range {v0 .. v11}, Lwu3;->a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V

    .line 231
    .line 232
    .line 233
    move-object v3, v0

    .line 234
    goto :goto_d

    .line 235
    :cond_c
    invoke-virtual/range {p16 .. p16}, Lag1;->Q()V

    .line 236
    .line 237
    .line 238
    move-object/from16 v3, p1

    .line 239
    .line 240
    :goto_d
    invoke-virtual/range {p16 .. p16}, Lag1;->r()Lc33;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_d

    .line 245
    .line 246
    new-instance v1, Lw7;

    .line 247
    .line 248
    move-object/from16 v2, p0

    .line 249
    .line 250
    move-object/from16 v4, p2

    .line 251
    .line 252
    move-object/from16 v5, p3

    .line 253
    .line 254
    move-object/from16 v6, p4

    .line 255
    .line 256
    move-object/from16 v7, p5

    .line 257
    .line 258
    move-wide/from16 v8, p6

    .line 259
    .line 260
    move-wide/from16 v10, p8

    .line 261
    .line 262
    move-wide/from16 v12, p10

    .line 263
    .line 264
    move-wide/from16 v14, p12

    .line 265
    .line 266
    move-wide/from16 v16, p14

    .line 267
    .line 268
    move/from16 v18, p17

    .line 269
    .line 270
    invoke-direct/range {v1 .. v18}, Lw7;-><init>(Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJJI)V

    .line 271
    .line 272
    .line 273
    iput-object v1, v0, Lc33;->d:Ldf1;

    .line 274
    .line 275
    :cond_d
    return-void
.end method

.method public static final b(FLka0;Lag1;I)V
    .locals 4

    .line 1
    const v0, -0x36b20a24    # -843613.75f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lag1;->c(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x10

    .line 17
    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    and-int/lit16 v1, v0, 0x93

    .line 20
    .line 21
    const/16 v2, 0x92

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_1
    and-int/2addr v0, v3

    .line 30
    invoke-virtual {p2, v0, v1}, Lag1;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Lkc0;->n:Lis3;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lhy1;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    sget-object v2, Lhy1;->n:Lhy1;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-static {}, Lp61;->x()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    sget-object v2, Lhy1;->o:Lhy1;

    .line 60
    .line 61
    :goto_2
    invoke-virtual {v0, v2}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Lo7;

    .line 66
    .line 67
    invoke-direct {v2, p0, v1, p1}, Lo7;-><init>(FLhy1;Lka0;)V

    .line 68
    .line 69
    .line 70
    const v1, -0x766616e4

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2, p2}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/16 v2, 0x38

    .line 78
    .line 79
    invoke-static {v0, v1, p2, v2}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {p2}, Lag1;->Q()V

    .line 84
    .line 85
    .line 86
    :goto_3
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_5

    .line 91
    .line 92
    new-instance v0, Lp7;

    .line 93
    .line 94
    invoke-direct {v0, p0, p1, p3}, Lp7;-><init>(FLka0;I)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public static final c(Lne1;Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJLvt0;Lag1;II)V
    .locals 26

    move-object/from16 v4, p16

    move/from16 v6, p17

    move/from16 v7, p18

    const v0, -0x33b6c663    # -5.274994E7f

    .line 1
    invoke-virtual {v4, v0}, Lag1;->X(I)Lag1;

    and-int/lit8 v0, v6, 0x6

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move v3, v6

    :goto_1
    and-int/lit8 v5, v6, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v3, v10

    goto :goto_3

    :cond_3
    move-object/from16 v5, p1

    :goto_3
    and-int/lit16 v10, v6, 0x180

    if-nez v10, :cond_5

    move-object/from16 v10, p2

    invoke-virtual {v4, v10}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x100

    goto :goto_4

    :cond_4
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v3, v13

    goto :goto_5

    :cond_5
    move-object/from16 v10, p2

    :goto_5
    and-int/lit16 v13, v6, 0xc00

    if-nez v13, :cond_7

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x800

    goto :goto_6

    :cond_6
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v3, v13

    :cond_7
    and-int/lit16 v13, v6, 0x6000

    if-nez v13, :cond_9

    move-object/from16 v13, p3

    invoke-virtual {v4, v13}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x4000

    goto :goto_7

    :cond_8
    const/16 v16, 0x2000

    :goto_7
    or-int v3, v3, v16

    goto :goto_8

    :cond_9
    move-object/from16 v13, p3

    :goto_8
    const/high16 v16, 0x30000

    and-int v16, v6, v16

    move-object/from16 v1, p4

    if-nez v16, :cond_b

    invoke-virtual {v4, v1}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/high16 v17, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v17, 0x10000

    :goto_9
    or-int v3, v3, v17

    :cond_b
    const/high16 v17, 0x180000

    and-int v17, v6, v17

    move-object/from16 v2, p5

    if-nez v17, :cond_d

    invoke-virtual {v4, v2}, Lag1;->h(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v18, 0x80000

    :goto_a
    or-int v3, v3, v18

    :cond_d
    const/high16 v18, 0xc00000

    and-int v18, v6, v18

    move-object/from16 v8, p6

    if-nez v18, :cond_f

    invoke-virtual {v4, v8}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v19, 0x400000

    :goto_b
    or-int v3, v3, v19

    :cond_f
    const/high16 v19, 0x6000000

    and-int v19, v6, v19

    move-wide/from16 v9, p7

    if-nez v19, :cond_11

    invoke-virtual {v4, v9, v10}, Lag1;->e(J)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v20, 0x2000000

    :goto_c
    or-int v3, v3, v20

    :cond_11
    const/high16 v20, 0x30000000

    and-int v20, v6, v20

    move-wide/from16 v11, p9

    if-nez v20, :cond_13

    invoke-virtual {v4, v11, v12}, Lag1;->e(J)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v22, 0x10000000

    :goto_d
    or-int v3, v3, v22

    :cond_13
    and-int/lit8 v22, v7, 0x6

    move-wide/from16 v14, p11

    if-nez v22, :cond_15

    invoke-virtual {v4, v14, v15}, Lag1;->e(J)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v16, 0x4

    goto :goto_e

    :cond_14
    const/16 v16, 0x2

    :goto_e
    or-int v16, v7, v16

    goto :goto_f

    :cond_15
    move/from16 v16, v7

    :goto_f
    and-int/lit8 v17, v7, 0x30

    move-wide/from16 v0, p13

    if-nez v17, :cond_17

    invoke-virtual {v4, v0, v1}, Lag1;->e(J)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v18, 0x20

    goto :goto_10

    :cond_16
    const/16 v18, 0x10

    :goto_10
    or-int v16, v16, v18

    :cond_17
    and-int/lit16 v0, v7, 0x180

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lag1;->c(F)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v20, 0x100

    goto :goto_11

    :cond_18
    const/16 v20, 0x80

    :goto_11
    or-int v16, v16, v20

    :cond_19
    and-int/lit16 v0, v7, 0xc00

    if-nez v0, :cond_1b

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v22, 0x800

    goto :goto_12

    :cond_1a
    const/16 v22, 0x400

    :goto_12
    or-int v16, v16, v22

    :goto_13
    move/from16 v1, v16

    goto :goto_14

    :cond_1b
    move-object/from16 v0, p15

    goto :goto_13

    :goto_14
    const v16, 0x12492493

    and-int v0, v3, v16

    const v2, 0x12492492

    if-ne v0, v2, :cond_1d

    and-int/lit16 v0, v1, 0x493

    const/16 v2, 0x492

    if-eq v0, v2, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    goto :goto_16

    :cond_1d
    :goto_15
    const/4 v0, 0x1

    :goto_16
    and-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2, v0}, Lag1;->N(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    new-instance v10, Lr7;

    move-wide/from16 v21, p13

    move-object/from16 v23, v5

    move-wide/from16 v17, v11

    move-object v11, v13

    move-wide/from16 v19, v14

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-wide/from16 v15, p7

    move-object v14, v8

    invoke-direct/range {v10 .. v23}, Lr7;-><init>(Ldf1;Ldf1;Ldf1;Ljl3;JJJJLka0;)V

    const v0, 0x1f6fcd57

    invoke-static {v0, v10, v4}, Lqj0;->U(ILef1;Lag1;)Lka0;

    move-result-object v0

    and-int/lit8 v2, v3, 0xe

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v5, v2, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p15

    move-object v3, v0

    move-object/from16 v0, p0

    .line 3
    invoke-static/range {v0 .. v5}, Lx7;->d(Lne1;Lnd2;Lvt0;Lka0;Lag1;I)V

    goto :goto_17

    .line 4
    :cond_1e
    invoke-virtual/range {p16 .. p16}, Lag1;->Q()V

    .line 5
    :goto_17
    invoke-virtual/range {p16 .. p16}, Lag1;->r()Lc33;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, Ls7;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v25, v1

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v18}, Ls7;-><init>(Lne1;Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJLvt0;II)V

    move-object/from16 v1, v25

    .line 6
    iput-object v0, v1, Lc33;->d:Ldf1;

    :cond_1f
    return-void
.end method

.method public static final d(Lne1;Lnd2;Lvt0;Lka0;Lag1;I)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    const v1, 0x17c55da

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, v5, 0x6

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    :goto_0
    or-int/2addr v1, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v5

    .line 27
    :goto_1
    and-int/lit8 v2, v5, 0x30

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v2, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v1, v2

    .line 43
    :cond_3
    and-int/lit16 v2, v5, 0x180

    .line 44
    .line 45
    if-nez v2, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    const/16 v2, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v2, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v1, v2

    .line 59
    :cond_5
    and-int/lit16 v2, v5, 0xc00

    .line 60
    .line 61
    if-nez v2, :cond_7

    .line 62
    .line 63
    invoke-virtual {v0, p3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    const/16 v2, 0x800

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const/16 v2, 0x400

    .line 73
    .line 74
    :goto_4
    or-int/2addr v1, v2

    .line 75
    :cond_7
    and-int/lit16 v2, v1, 0x493

    .line 76
    .line 77
    const/16 v3, 0x492

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    if-eq v2, v3, :cond_8

    .line 82
    .line 83
    move v2, v6

    .line 84
    goto :goto_5

    .line 85
    :cond_8
    move v2, v4

    .line 86
    :goto_5
    and-int/2addr v1, v6

    .line 87
    invoke-virtual {v0, v1, v2}, Lag1;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_9

    .line 92
    .line 93
    sget-object v1, Lx7;->c:Llc0;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lbo0;

    .line 100
    .line 101
    new-instance v6, Lqd1;

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    move-object v7, p0

    .line 105
    move-object v8, p1

    .line 106
    move-object v9, p2

    .line 107
    move-object v10, p3

    .line 108
    invoke-direct/range {v6 .. v11}, Lqd1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v6, v0, v4}, Lbo0;->a(Lqd1;Lag1;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    invoke-virtual {v0}, Lag1;->Q()V

    .line 116
    .line 117
    .line 118
    :goto_6
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-eqz v7, :cond_a

    .line 123
    .line 124
    new-instance v0, Lu7;

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    move-object v1, p0

    .line 128
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    move-object v4, p3

    .line 131
    invoke-direct/range {v0 .. v6}, Lu7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lef1;II)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v7, Lc33;->d:Ldf1;

    .line 135
    .line 136
    :cond_a
    return-void
.end method
