.class public abstract Ljv3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:Loo3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lgg4;->s:F

    .line 2
    .line 3
    sput v0, Ljv3;->a:F

    .line 4
    .line 5
    sget v1, Lgg4;->C:F

    .line 6
    .line 7
    sput v1, Ljv3;->b:F

    .line 8
    .line 9
    sget v1, Lgg4;->z:F

    .line 10
    .line 11
    sput v1, Ljv3;->c:F

    .line 12
    .line 13
    sget v1, Lgg4;->w:F

    .line 14
    .line 15
    sput v1, Ljv3;->d:F

    .line 16
    .line 17
    sub-float/2addr v1, v0

    .line 18
    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v1, v0

    .line 21
    sput v1, Ljv3;->e:F

    .line 22
    .line 23
    new-instance v0, Loo3;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ljv3;->f:Loo3;

    .line 29
    .line 30
    return-void
.end method

.method public static final a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    const v0, -0xfb23c9f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p6, 0x6

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    move/from16 v0, p0

    .line 17
    .line 18
    invoke-virtual {v6, v0}, Lag1;->g(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v1

    .line 27
    :goto_0
    or-int v3, p6, v3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move/from16 v0, p0

    .line 31
    .line 32
    move/from16 v3, p6

    .line 33
    .line 34
    :goto_1
    and-int/lit8 v4, p6, 0x30

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v6, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const/16 v4, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v4, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v3, v4

    .line 50
    :cond_3
    or-int/lit16 v3, v3, 0x6d80

    .line 51
    .line 52
    const/high16 v4, 0x30000

    .line 53
    .line 54
    and-int v4, p6, v4

    .line 55
    .line 56
    move-object/from16 v7, p4

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Lag1;->f(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const/high16 v4, 0x20000

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/high16 v4, 0x10000

    .line 70
    .line 71
    :goto_3
    or-int/2addr v3, v4

    .line 72
    :cond_5
    const/high16 v4, 0x180000

    .line 73
    .line 74
    or-int v8, v3, v4

    .line 75
    .line 76
    const v3, 0x92493

    .line 77
    .line 78
    .line 79
    and-int/2addr v3, v8

    .line 80
    const v4, 0x92492

    .line 81
    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v9, 0x1

    .line 85
    if-eq v3, v4, :cond_6

    .line 86
    .line 87
    move v3, v9

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move v3, v5

    .line 90
    :goto_4
    and-int/lit8 v4, v8, 0x1

    .line 91
    .line 92
    invoke-virtual {v6, v4, v3}, Lag1;->N(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_b

    .line 97
    .line 98
    invoke-virtual {v6}, Lag1;->S()V

    .line 99
    .line 100
    .line 101
    and-int/lit8 v3, p6, 0x1

    .line 102
    .line 103
    sget-object v4, Lkd2;->b:Lkd2;

    .line 104
    .line 105
    if-eqz v3, :cond_8

    .line 106
    .line 107
    invoke-virtual {v6}, Lag1;->x()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_7
    invoke-virtual {v6}, Lag1;->Q()V

    .line 115
    .line 116
    .line 117
    move-object/from16 v9, p2

    .line 118
    .line 119
    move/from16 v3, p3

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_8
    :goto_5
    move v3, v9

    .line 123
    move-object v9, v4

    .line 124
    :goto_6
    invoke-virtual {v6}, Lag1;->q()V

    .line 125
    .line 126
    .line 127
    const v10, 0x6969555a

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v10}, Lag1;->W(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Lag1;->K()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    sget-object v11, Lrb0;->a:Lbx3;

    .line 138
    .line 139
    if-ne v10, v11, :cond_9

    .line 140
    .line 141
    new-instance v10, Lvf2;

    .line 142
    .line 143
    invoke-direct {v10}, Lvf2;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v10}, Lag1;->g0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    check-cast v10, Lvf2;

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Lag1;->p(Z)V

    .line 152
    .line 153
    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    sget-object v4, Lat1;->a:Lck1;

    .line 157
    .line 158
    sget-object v0, Lfd2;->b:Lfd2;

    .line 159
    .line 160
    new-instance v4, Lq93;

    .line 161
    .line 162
    invoke-direct {v4, v1}, Lq93;-><init>(I)V

    .line 163
    .line 164
    .line 165
    move/from16 v1, p0

    .line 166
    .line 167
    move-object v5, v2

    .line 168
    move-object v2, v10

    .line 169
    invoke-static/range {v0 .. v5}, Lfl4;->A(Lnd2;ZLvf2;ZLq93;Lpe1;)Lnd2;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    :cond_a
    move v2, v3

    .line 174
    invoke-interface {v9, v4}, Lnd2;->c(Lnd2;)Lnd2;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lon3;->h(Lnd2;)Lnd2;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v11, Lnn3;

    .line 183
    .line 184
    const/16 v16, 0x0

    .line 185
    .line 186
    sget v12, Ljv3;->c:F

    .line 187
    .line 188
    sget v13, Ljv3;->d:F

    .line 189
    .line 190
    move v14, v12

    .line 191
    move v15, v13

    .line 192
    invoke-direct/range {v11 .. v16}, Lnn3;-><init>(FFFFZ)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v11}, Lnd2;->c(Lnd2;)Lnd2;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Lgg4;->p:Lll3;

    .line 200
    .line 201
    invoke-static {v1, v6}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    shl-int/lit8 v1, v8, 0x3

    .line 206
    .line 207
    and-int/lit8 v3, v1, 0x70

    .line 208
    .line 209
    shr-int/lit8 v4, v8, 0x6

    .line 210
    .line 211
    and-int/lit16 v8, v4, 0x380

    .line 212
    .line 213
    or-int/2addr v3, v8

    .line 214
    and-int/lit16 v4, v4, 0x1c00

    .line 215
    .line 216
    or-int/2addr v3, v4

    .line 217
    const v4, 0xe000

    .line 218
    .line 219
    .line 220
    and-int/2addr v1, v4

    .line 221
    or-int/2addr v1, v3

    .line 222
    move-object v3, v7

    .line 223
    move-object v4, v10

    .line 224
    move v7, v1

    .line 225
    move/from16 v1, p0

    .line 226
    .line 227
    invoke-static/range {v0 .. v7}, Ljv3;->b(Lnd2;ZZLgv3;Lxs1;Ljl3;Lag1;I)V

    .line 228
    .line 229
    .line 230
    move v4, v2

    .line 231
    move-object v3, v9

    .line 232
    goto :goto_7

    .line 233
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lag1;->Q()V

    .line 234
    .line 235
    .line 236
    move-object/from16 v3, p2

    .line 237
    .line 238
    move/from16 v4, p3

    .line 239
    .line 240
    :goto_7
    invoke-virtual/range {p5 .. p5}, Lag1;->r()Lc33;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-eqz v7, :cond_c

    .line 245
    .line 246
    new-instance v0, Liv3;

    .line 247
    .line 248
    move/from16 v1, p0

    .line 249
    .line 250
    move-object/from16 v2, p1

    .line 251
    .line 252
    move-object/from16 v5, p4

    .line 253
    .line 254
    move/from16 v6, p6

    .line 255
    .line 256
    invoke-direct/range {v0 .. v6}, Liv3;-><init>(ZLpe1;Lnd2;ZLgv3;I)V

    .line 257
    .line 258
    .line 259
    iput-object v0, v7, Lc33;->d:Ldf1;

    .line 260
    .line 261
    :cond_c
    return-void
.end method

.method public static final b(Lnd2;ZZLgv3;Lxs1;Ljl3;Lag1;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v0, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    const v8, -0x27fd625d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v8}, Lag1;->X(I)Lag1;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v8, v7, 0x6

    .line 24
    .line 25
    if-nez v8, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x2

    .line 36
    :goto_0
    or-int/2addr v8, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v8, v7

    .line 39
    :goto_1
    and-int/lit8 v9, v7, 0x30

    .line 40
    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lag1;->g(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v9, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v8, v9

    .line 55
    :cond_3
    and-int/lit16 v9, v7, 0x180

    .line 56
    .line 57
    if-nez v9, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lag1;->g(Z)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_4

    .line 64
    .line 65
    const/16 v9, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v9, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v8, v9

    .line 71
    :cond_5
    and-int/lit16 v9, v7, 0xc00

    .line 72
    .line 73
    if-nez v9, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_6

    .line 80
    .line 81
    const/16 v9, 0x800

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const/16 v9, 0x400

    .line 85
    .line 86
    :goto_4
    or-int/2addr v8, v9

    .line 87
    :cond_7
    and-int/lit16 v9, v7, 0x6000

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    if-nez v9, :cond_9

    .line 91
    .line 92
    invoke-virtual {v0, v10}, Lag1;->h(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_8

    .line 97
    .line 98
    const/16 v9, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v9, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v8, v9

    .line 104
    :cond_9
    const/high16 v9, 0x30000

    .line 105
    .line 106
    and-int/2addr v9, v7

    .line 107
    if-nez v9, :cond_b

    .line 108
    .line 109
    invoke-virtual {v0, v5}, Lag1;->f(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_a

    .line 114
    .line 115
    const/high16 v9, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v9, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v8, v9

    .line 121
    :cond_b
    const/high16 v9, 0x180000

    .line 122
    .line 123
    and-int/2addr v9, v7

    .line 124
    if-nez v9, :cond_d

    .line 125
    .line 126
    invoke-virtual {v0, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_c

    .line 131
    .line 132
    const/high16 v9, 0x100000

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_c
    const/high16 v9, 0x80000

    .line 136
    .line 137
    :goto_7
    or-int/2addr v8, v9

    .line 138
    :cond_d
    const v9, 0x92493

    .line 139
    .line 140
    .line 141
    and-int/2addr v9, v8

    .line 142
    const v11, 0x92492

    .line 143
    .line 144
    .line 145
    const/4 v12, 0x1

    .line 146
    if-eq v9, v11, :cond_e

    .line 147
    .line 148
    move v9, v12

    .line 149
    goto :goto_8

    .line 150
    :cond_e
    const/4 v9, 0x0

    .line 151
    :goto_8
    and-int/2addr v8, v12

    .line 152
    invoke-virtual {v0, v8, v9}, Lag1;->N(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_1a

    .line 157
    .line 158
    if-eqz v3, :cond_10

    .line 159
    .line 160
    if-eqz v2, :cond_f

    .line 161
    .line 162
    iget-wide v8, v4, Lgv3;->b:J

    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_f
    iget-wide v8, v4, Lgv3;->f:J

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_10
    if-eqz v2, :cond_11

    .line 169
    .line 170
    iget-wide v8, v4, Lgv3;->j:J

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_11
    iget-wide v8, v4, Lgv3;->n:J

    .line 174
    .line 175
    :goto_9
    if-eqz v3, :cond_13

    .line 176
    .line 177
    if-eqz v2, :cond_12

    .line 178
    .line 179
    iget-wide v14, v4, Lgv3;->a:J

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_12
    iget-wide v14, v4, Lgv3;->e:J

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_13
    if-eqz v2, :cond_14

    .line 186
    .line 187
    iget-wide v14, v4, Lgv3;->i:J

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_14
    iget-wide v14, v4, Lgv3;->m:J

    .line 191
    .line 192
    :goto_a
    sget-object v11, Lgg4;->y:Lll3;

    .line 193
    .line 194
    invoke-static {v11, v0}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    sget-object v12, Lb93;->a:Llc0;

    .line 199
    .line 200
    invoke-virtual {v0, v12}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    move-object/from16 v10, v16

    .line 205
    .line 206
    check-cast v10, Lp93;

    .line 207
    .line 208
    iget-object v10, v10, Lp93;->a:Lo93;

    .line 209
    .line 210
    sget v10, Lgg4;->x:F

    .line 211
    .line 212
    if-eqz v3, :cond_16

    .line 213
    .line 214
    move-wide/from16 v17, v14

    .line 215
    .line 216
    if-eqz v2, :cond_15

    .line 217
    .line 218
    iget-wide v13, v4, Lgv3;->c:J

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_15
    iget-wide v13, v4, Lgv3;->g:J

    .line 222
    .line 223
    goto :goto_b

    .line 224
    :cond_16
    move-wide/from16 v17, v14

    .line 225
    .line 226
    if-eqz v2, :cond_17

    .line 227
    .line 228
    iget-wide v13, v4, Lgv3;->k:J

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :cond_17
    iget-wide v13, v4, Lgv3;->o:J

    .line 232
    .line 233
    :goto_b
    new-instance v15, Lsp3;

    .line 234
    .line 235
    invoke-direct {v15, v13, v14}, Lsp3;-><init>(J)V

    .line 236
    .line 237
    .line 238
    new-instance v13, Lex;

    .line 239
    .line 240
    invoke-direct {v13, v10, v15, v11}, Lex;-><init>(FLsp3;Ljl3;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v1, v13}, Lnd2;->c(Lnd2;)Lnd2;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-static {v10, v8, v9, v11}, Lbi4;->j(Lnd2;JLjl3;)Lnd2;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    sget-object v9, Lkd2;->b:Lkd2;

    .line 252
    .line 253
    invoke-interface {v8, v9}, Lnd2;->c(Lnd2;)Lnd2;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    sget-object v9, Lmj1;->o:Lcw;

    .line 258
    .line 259
    const/4 v10, 0x0

    .line 260
    invoke-static {v9, v10}, Lqx;->d(Lcw;Z)Ldb2;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    iget-wide v10, v0, Lag1;->T:J

    .line 265
    .line 266
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    invoke-static {v0, v8}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    sget-object v13, Llb0;->c:Lkb0;

    .line 279
    .line 280
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    sget-object v13, Lkb0;->b:Lic0;

    .line 284
    .line 285
    invoke-virtual {v0}, Lag1;->Z()V

    .line 286
    .line 287
    .line 288
    iget-boolean v14, v0, Lag1;->S:Z

    .line 289
    .line 290
    if-eqz v14, :cond_18

    .line 291
    .line 292
    invoke-virtual {v0, v13}, Lag1;->k(Lne1;)V

    .line 293
    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_18
    invoke-virtual {v0}, Lag1;->j0()V

    .line 297
    .line 298
    .line 299
    :goto_c
    sget-object v14, Lkb0;->f:Lfd;

    .line 300
    .line 301
    invoke-static {v14, v0, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    sget-object v9, Lkb0;->e:Lfd;

    .line 305
    .line 306
    invoke-static {v9, v0, v11}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    sget-object v11, Lkb0;->g:Lfd;

    .line 314
    .line 315
    invoke-static {v11, v0, v10}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    sget-object v10, Lkb0;->h:Ll9;

    .line 319
    .line 320
    invoke-static {v0, v10}, Lht4;->y(Lag1;Lpe1;)V

    .line 321
    .line 322
    .line 323
    sget-object v15, Lkb0;->d:Lfd;

    .line 324
    .line 325
    invoke-static {v15, v0, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Lon4;->k()Lnd2;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    new-instance v1, Lzy3;

    .line 333
    .line 334
    sget-object v3, Lfe2;->n:Lfe2;

    .line 335
    .line 336
    invoke-static {v3, v0}, Lzf5;->Y(Lfe2;Lag1;)Lyq3;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-direct {v1, v5, v2, v3}, Lzy3;-><init>(Lxs1;ZLyq3;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v8, v1}, Lnd2;->c(Lnd2;)Lnd2;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    sget v3, Lgg4;->v:F

    .line 348
    .line 349
    const/high16 v8, 0x40000000    # 2.0f

    .line 350
    .line 351
    div-float/2addr v3, v8

    .line 352
    invoke-virtual {v0, v12}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    check-cast v8, Lp93;

    .line 357
    .line 358
    iget-object v8, v8, Lp93;->a:Lo93;

    .line 359
    .line 360
    const/16 v8, 0xdc

    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    invoke-static {v3, v12, v8}, Lb93;->a(FLjl3;I)Ln93;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-static {v1, v5, v3}, Lwp1;->a(Lnd2;Lxs1;Lzp1;)Lnd2;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    move-wide/from16 v2, v17

    .line 372
    .line 373
    invoke-static {v1, v2, v3, v6}, Lbi4;->j(Lnd2;JLjl3;)Lnd2;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    sget-object v2, Lmj1;->s:Lcw;

    .line 378
    .line 379
    const/4 v3, 0x0

    .line 380
    invoke-static {v2, v3}, Lqx;->d(Lcw;Z)Ldb2;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    iget-wide v3, v0, Lag1;->T:J

    .line 385
    .line 386
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-static {v0, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v0}, Lag1;->Z()V

    .line 399
    .line 400
    .line 401
    iget-boolean v8, v0, Lag1;->S:Z

    .line 402
    .line 403
    if-eqz v8, :cond_19

    .line 404
    .line 405
    invoke-virtual {v0, v13}, Lag1;->k(Lne1;)V

    .line 406
    .line 407
    .line 408
    goto :goto_d

    .line 409
    :cond_19
    invoke-virtual {v0}, Lag1;->j0()V

    .line 410
    .line 411
    .line 412
    :goto_d
    invoke-static {v14, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v9, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v3, v0, v11, v0, v10}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v15, v0, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    const v1, 0x49acf3f3

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Lag1;->W(I)V

    .line 428
    .line 429
    .line 430
    const/4 v10, 0x0

    .line 431
    invoke-virtual {v0, v10}, Lag1;->p(Z)V

    .line 432
    .line 433
    .line 434
    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 439
    .line 440
    .line 441
    goto :goto_e

    .line 442
    :cond_1a
    invoke-virtual {v0}, Lag1;->Q()V

    .line 443
    .line 444
    .line 445
    :goto_e
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    if-eqz v8, :cond_1b

    .line 450
    .line 451
    new-instance v0, Lhv3;

    .line 452
    .line 453
    move-object/from16 v1, p0

    .line 454
    .line 455
    move/from16 v2, p1

    .line 456
    .line 457
    move/from16 v3, p2

    .line 458
    .line 459
    move-object/from16 v4, p3

    .line 460
    .line 461
    invoke-direct/range {v0 .. v7}, Lhv3;-><init>(Lnd2;ZZLgv3;Lxs1;Ljl3;I)V

    .line 462
    .line 463
    .line 464
    iput-object v0, v8, Lc33;->d:Ldf1;

    .line 465
    .line 466
    :cond_1b
    return-void
.end method
