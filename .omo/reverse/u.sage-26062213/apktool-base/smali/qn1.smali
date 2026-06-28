.class public abstract Lqn1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lnd2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkd2;->b:Lkd2;

    .line 2
    .line 3
    sget v1, Lqn0;->f:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Lon3;->c(Lnd2;F)Lnd2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lqn1;->a:Lnd2;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V
    .locals 9

    .line 1
    const v0, -0x79033cc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p6

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p6

    .line 23
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit8 v1, p7, 0x4

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    or-int/lit16 v0, v0, 0x180

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    and-int/lit16 v2, p6, 0x180

    .line 47
    .line 48
    if-nez v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {p5, p2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    const/16 v2, 0x100

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_5
    const/16 v2, 0x80

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v2

    .line 62
    :cond_6
    :goto_4
    and-int/lit16 v2, p6, 0xc00

    .line 63
    .line 64
    if-nez v2, :cond_8

    .line 65
    .line 66
    and-int/lit8 v2, p7, 0x8

    .line 67
    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {p5, p3, p4}, Lag1;->e(J)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    const/16 v2, 0x800

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    const/16 v2, 0x400

    .line 80
    .line 81
    :goto_5
    or-int/2addr v0, v2

    .line 82
    :cond_8
    and-int/lit16 v2, v0, 0x493

    .line 83
    .line 84
    const/16 v3, 0x492

    .line 85
    .line 86
    if-eq v2, v3, :cond_9

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    goto :goto_6

    .line 90
    :cond_9
    const/4 v2, 0x0

    .line 91
    :goto_6
    and-int/lit8 v3, v0, 0x1

    .line 92
    .line 93
    invoke-virtual {p5, v3, v2}, Lag1;->N(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_e

    .line 98
    .line 99
    invoke-virtual {p5}, Lag1;->S()V

    .line 100
    .line 101
    .line 102
    and-int/lit8 v2, p6, 0x1

    .line 103
    .line 104
    if-eqz v2, :cond_c

    .line 105
    .line 106
    invoke-virtual {p5}, Lag1;->x()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_a

    .line 111
    .line 112
    goto :goto_8

    .line 113
    :cond_a
    invoke-virtual {p5}, Lag1;->Q()V

    .line 114
    .line 115
    .line 116
    and-int/lit8 v1, p7, 0x8

    .line 117
    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    :goto_7
    and-int/lit16 v0, v0, -0x1c01

    .line 121
    .line 122
    :cond_b
    move-object v2, p2

    .line 123
    move-wide v3, p3

    .line 124
    goto :goto_9

    .line 125
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 126
    .line 127
    sget-object p2, Lkd2;->b:Lkd2;

    .line 128
    .line 129
    :cond_d
    and-int/lit8 v1, p7, 0x8

    .line 130
    .line 131
    if-eqz v1, :cond_b

    .line 132
    .line 133
    sget-object p3, Lbg0;->a:Llc0;

    .line 134
    .line 135
    invoke-virtual {p5, p3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    check-cast p3, Lt70;

    .line 140
    .line 141
    iget-wide p3, p3, Lt70;->a:J

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :goto_9
    invoke-virtual {p5}, Lag1;->q()V

    .line 145
    .line 146
    .line 147
    invoke-static {p0, p5}, Lnt1;->O(Lso1;Lag1;)Lga4;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    and-int/lit8 p3, v0, 0x70

    .line 152
    .line 153
    const/16 p4, 0x8

    .line 154
    .line 155
    or-int/2addr p3, p4

    .line 156
    and-int/lit16 p4, v0, 0x380

    .line 157
    .line 158
    or-int/2addr p3, p4

    .line 159
    and-int/lit16 p4, v0, 0x1c00

    .line 160
    .line 161
    or-int v6, p3, p4

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    move-object v1, p1

    .line 165
    move-object v0, p2

    .line 166
    move-object v5, p5

    .line 167
    invoke-static/range {v0 .. v7}, Lqn1;->b(Lgs2;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 168
    .line 169
    .line 170
    move-wide v4, v3

    .line 171
    move-object v3, v2

    .line 172
    goto :goto_a

    .line 173
    :cond_e
    invoke-virtual {p5}, Lag1;->Q()V

    .line 174
    .line 175
    .line 176
    move-object v3, p2

    .line 177
    move-wide v4, p3

    .line 178
    :goto_a
    invoke-virtual {p5}, Lag1;->r()Lc33;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    if-eqz p2, :cond_f

    .line 183
    .line 184
    new-instance v0, Lpn1;

    .line 185
    .line 186
    const/4 v8, 0x1

    .line 187
    move-object v1, p0

    .line 188
    move-object v2, p1

    .line 189
    move v6, p6

    .line 190
    move/from16 v7, p7

    .line 191
    .line 192
    invoke-direct/range {v0 .. v8}, Lpn1;-><init>(Ljava/lang/Object;Ljava/lang/String;Lnd2;JIII)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 196
    .line 197
    :cond_f
    return-void
.end method

.method public static final b(Lgs2;Ljava/lang/String;Lnd2;JLag1;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    move/from16 v6, p6

    .line 8
    .line 9
    const v3, -0x7faffaf9

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lag1;->X(I)Lag1;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v3, v6, 0x6

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    and-int/lit8 v3, v6, 0x8

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    if-eqz v3, :cond_1

    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v3, 0x2

    .line 38
    :goto_1
    or-int/2addr v3, v6

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v3, v6

    .line 41
    :goto_2
    and-int/lit8 v5, v6, 0x30

    .line 42
    .line 43
    const/16 v7, 0x20

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    move v5, v7

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/16 v5, 0x10

    .line 56
    .line 57
    :goto_3
    or-int/2addr v3, v5

    .line 58
    :cond_4
    and-int/lit8 v5, p7, 0x4

    .line 59
    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    or-int/lit16 v3, v3, 0x180

    .line 63
    .line 64
    :cond_5
    move-object/from16 v8, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v8, v6, 0x180

    .line 68
    .line 69
    if-nez v8, :cond_5

    .line 70
    .line 71
    move-object/from16 v8, p2

    .line 72
    .line 73
    invoke-virtual {v0, v8}, Lag1;->f(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_7

    .line 78
    .line 79
    const/16 v9, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v9, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v3, v9

    .line 85
    :goto_5
    and-int/lit16 v9, v6, 0xc00

    .line 86
    .line 87
    const/16 v10, 0x800

    .line 88
    .line 89
    if-nez v9, :cond_9

    .line 90
    .line 91
    and-int/lit8 v9, p7, 0x8

    .line 92
    .line 93
    move-wide/from16 v11, p3

    .line 94
    .line 95
    if-nez v9, :cond_8

    .line 96
    .line 97
    invoke-virtual {v0, v11, v12}, Lag1;->e(J)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_8

    .line 102
    .line 103
    move v9, v10

    .line 104
    goto :goto_6

    .line 105
    :cond_8
    const/16 v9, 0x400

    .line 106
    .line 107
    :goto_6
    or-int/2addr v3, v9

    .line 108
    goto :goto_7

    .line 109
    :cond_9
    move-wide/from16 v11, p3

    .line 110
    .line 111
    :goto_7
    and-int/lit16 v9, v3, 0x493

    .line 112
    .line 113
    const/16 v13, 0x492

    .line 114
    .line 115
    if-eq v9, v13, :cond_a

    .line 116
    .line 117
    const/4 v9, 0x1

    .line 118
    goto :goto_8

    .line 119
    :cond_a
    const/4 v9, 0x0

    .line 120
    :goto_8
    and-int/lit8 v13, v3, 0x1

    .line 121
    .line 122
    invoke-virtual {v0, v13, v9}, Lag1;->N(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_1b

    .line 127
    .line 128
    invoke-virtual {v0}, Lag1;->S()V

    .line 129
    .line 130
    .line 131
    and-int/lit8 v9, v6, 0x1

    .line 132
    .line 133
    sget-object v13, Lkd2;->b:Lkd2;

    .line 134
    .line 135
    if-eqz v9, :cond_c

    .line 136
    .line 137
    invoke-virtual {v0}, Lag1;->x()Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_b

    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_b
    invoke-virtual {v0}, Lag1;->Q()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v5, p7, 0x8

    .line 148
    .line 149
    if-eqz v5, :cond_e

    .line 150
    .line 151
    :goto_9
    and-int/lit16 v3, v3, -0x1c01

    .line 152
    .line 153
    goto :goto_b

    .line 154
    :cond_c
    :goto_a
    if-eqz v5, :cond_d

    .line 155
    .line 156
    move-object v8, v13

    .line 157
    :cond_d
    and-int/lit8 v5, p7, 0x8

    .line 158
    .line 159
    if-eqz v5, :cond_e

    .line 160
    .line 161
    sget-object v5, Lbg0;->a:Llc0;

    .line 162
    .line 163
    invoke-virtual {v0, v5}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Lt70;

    .line 168
    .line 169
    iget-wide v11, v5, Lt70;->a:J

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_e
    :goto_b
    invoke-virtual {v0}, Lag1;->q()V

    .line 173
    .line 174
    .line 175
    and-int/lit16 v5, v3, 0x1c00

    .line 176
    .line 177
    xor-int/lit16 v5, v5, 0xc00

    .line 178
    .line 179
    if-le v5, v10, :cond_f

    .line 180
    .line 181
    invoke-virtual {v0, v11, v12}, Lag1;->e(J)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_10

    .line 186
    .line 187
    :cond_f
    and-int/lit16 v5, v3, 0xc00

    .line 188
    .line 189
    if-ne v5, v10, :cond_11

    .line 190
    .line 191
    :cond_10
    const/4 v5, 0x1

    .line 192
    goto :goto_c

    .line 193
    :cond_11
    const/4 v5, 0x0

    .line 194
    :goto_c
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    sget-object v10, Lrb0;->a:Lbx3;

    .line 199
    .line 200
    if-nez v5, :cond_13

    .line 201
    .line 202
    if-ne v9, v10, :cond_12

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_12
    move-object v14, v9

    .line 206
    goto :goto_f

    .line 207
    :cond_13
    :goto_d
    sget-wide v14, Lt70;->f:J

    .line 208
    .line 209
    invoke-static {v11, v12, v14, v15}, Lt70;->c(JJ)Z

    .line 210
    .line 211
    .line 212
    move-result v14

    .line 213
    if-eqz v14, :cond_14

    .line 214
    .line 215
    const/4 v14, 0x0

    .line 216
    goto :goto_e

    .line 217
    :cond_14
    new-instance v14, Low;

    .line 218
    .line 219
    const/4 v15, 0x5

    .line 220
    invoke-direct {v14, v11, v12, v15}, Low;-><init>(JI)V

    .line 221
    .line 222
    .line 223
    :goto_e
    invoke-virtual {v0, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :goto_f
    check-cast v14, Low;

    .line 227
    .line 228
    if-eqz v2, :cond_18

    .line 229
    .line 230
    const v15, -0x20020383

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v15}, Lag1;->W(I)V

    .line 234
    .line 235
    .line 236
    and-int/lit8 v3, v3, 0x70

    .line 237
    .line 238
    if-ne v3, v7, :cond_15

    .line 239
    .line 240
    const/4 v5, 0x1

    .line 241
    goto :goto_10

    .line 242
    :cond_15
    const/4 v5, 0x0

    .line 243
    :goto_10
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-nez v5, :cond_16

    .line 248
    .line 249
    if-ne v3, v10, :cond_17

    .line 250
    .line 251
    :cond_16
    new-instance v3, Lao0;

    .line 252
    .line 253
    invoke-direct {v3, v2, v4}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_17
    check-cast v3, Lpe1;

    .line 260
    .line 261
    invoke-static {v13, v3}, Ldh3;->a(Lnd2;Lpe1;)Lnd2;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const/4 v9, 0x0

    .line 266
    invoke-virtual {v0, v9}, Lag1;->p(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_11

    .line 270
    :cond_18
    const/4 v9, 0x0

    .line 271
    const v3, -0x1fff9745

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v3}, Lag1;->W(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v9}, Lag1;->p(Z)V

    .line 278
    .line 279
    .line 280
    move-object v3, v13

    .line 281
    :goto_11
    invoke-virtual {v1}, Lgs2;->h()J

    .line 282
    .line 283
    .line 284
    move-result-wide v4

    .line 285
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    invoke-static {v4, v5, v9, v10}, Lmn3;->a(JJ)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_19

    .line 295
    .line 296
    invoke-virtual {v1}, Lgs2;->h()J

    .line 297
    .line 298
    .line 299
    move-result-wide v4

    .line 300
    shr-long v9, v4, v7

    .line 301
    .line 302
    long-to-int v7, v9

    .line 303
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-eqz v7, :cond_1a

    .line 312
    .line 313
    const-wide v9, 0xffffffffL

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    and-long/2addr v4, v9

    .line 319
    long-to-int v4, v4

    .line 320
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-eqz v4, :cond_1a

    .line 329
    .line 330
    :cond_19
    sget-object v13, Lqn1;->a:Lnd2;

    .line 331
    .line 332
    :cond_1a
    invoke-interface {v8, v13}, Lnd2;->c(Lnd2;)Lnd2;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v4, v1, v14}, Ln44;->z0(Lnd2;Lgs2;Low;)Lnd2;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v4, v3}, Lnd2;->c(Lnd2;)Lnd2;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    const/4 v9, 0x0

    .line 345
    invoke-static {v3, v0, v9}, Lqx;->a(Lnd2;Lag1;I)V

    .line 346
    .line 347
    .line 348
    :goto_12
    move-object v3, v8

    .line 349
    move-wide v4, v11

    .line 350
    goto :goto_13

    .line 351
    :cond_1b
    invoke-virtual {v0}, Lag1;->Q()V

    .line 352
    .line 353
    .line 354
    goto :goto_12

    .line 355
    :goto_13
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    if-eqz v9, :cond_1c

    .line 360
    .line 361
    new-instance v0, Lpn1;

    .line 362
    .line 363
    const/4 v8, 0x0

    .line 364
    move/from16 v7, p7

    .line 365
    .line 366
    invoke-direct/range {v0 .. v8}, Lpn1;-><init>(Ljava/lang/Object;Ljava/lang/String;Lnd2;JIII)V

    .line 367
    .line 368
    .line 369
    iput-object v0, v9, Lc33;->d:Ldf1;

    .line 370
    .line 371
    :cond_1c
    return-void
.end method
