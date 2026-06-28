.class public final Lpe2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;


# instance fields
.field public final a:Lk91;


# direct methods
.method public constructor <init>(Lk91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpe2;->a:Lk91;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljt1;Ljava/util/List;I)I
    .locals 5

    .line 1
    invoke-static {p1}, Lbi4;->v(Ljt1;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 6
    .line 7
    iget-object v0, p0, Lk91;->f:Li91;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lya2;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const/4 v3, 0x2

    .line 28
    invoke-static {v3, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lya2;

    .line 41
    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    const/16 v4, 0xd

    .line 44
    .line 45
    invoke-static {p3, v3, v4}, Lnf0;->b(III)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Li91;->a(Lya2;Lya2;J)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/util/List;

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    sget-object p2, Lg01;->n:Lg01;

    .line 61
    .line 62
    :cond_2
    iget v0, p0, Lk91;->c:F

    .line 63
    .line 64
    invoke-interface {p1, v0}, Las0;->N(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Lk91;->e:F

    .line 69
    .line 70
    invoke-interface {p1, v1}, Las0;->N(F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p0, p0, Lk91;->f:Li91;

    .line 75
    .line 76
    invoke-static {p2, p3, v0, p1, p0}, Lk91;->a(Ljava/util/List;IIILi91;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final c(Ljt1;Ljava/util/List;I)I
    .locals 9

    .line 1
    invoke-static {p1}, Lbi4;->v(Ljt1;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 6
    .line 7
    iget-object v0, p0, Lk91;->f:Li91;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lya2;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const/4 v3, 0x2

    .line 28
    invoke-static {v3, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lya2;

    .line 41
    .line 42
    :cond_1
    const/4 v3, 0x7

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v4, p3, v3}, Lnf0;->b(III)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-virtual {v0, v1, v2, v5, v6}, Li91;->a(Lya2;Lya2;J)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/util/List;

    .line 56
    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    sget-object p2, Lg01;->n:Lg01;

    .line 60
    .line 61
    :cond_2
    iget p0, p0, Lk91;->c:F

    .line 62
    .line 63
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    move v0, v4

    .line 72
    move v1, v0

    .line 73
    move v2, v1

    .line 74
    move v3, v2

    .line 75
    :goto_1
    if-ge v0, p1, :cond_5

    .line 76
    .line 77
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lya2;

    .line 82
    .line 83
    invoke-interface {v5, p3}, Lya2;->R(I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    add-int/2addr v5, p0

    .line 88
    add-int/lit8 v6, v0, 0x1

    .line 89
    .line 90
    sub-int v7, v6, v2

    .line 91
    .line 92
    const v8, 0x7fffffff

    .line 93
    .line 94
    .line 95
    if-eq v7, v8, :cond_4

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-ne v6, v7, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    add-int/2addr v3, v5

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    :goto_2
    add-int/2addr v3, v5

    .line 107
    sub-int/2addr v3, p0

    .line 108
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    move v2, v0

    .line 113
    move v3, v4

    .line 114
    :goto_3
    move v0, v6

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lpe2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lpe2;

    .line 12
    .line 13
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 14
    .line 15
    iget-object p1, p1, Lpe2;->a:Lk91;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 57

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-wide/from16 v0, p3

    .line 4
    .line 5
    invoke-static {v6}, Lbi4;->v(Ljt1;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object/from16 v3, p0

    .line 10
    .line 11
    iget-object v3, v3, Lpe2;->a:Lk91;

    .line 12
    .line 13
    iget-object v4, v3, Lk91;->f:Li91;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v7, 0xb

    .line 20
    .line 21
    sget-object v13, Lh01;->n:Lh01;

    .line 22
    .line 23
    const/4 v14, 0x0

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_0
    move-object v1, v13

    .line 36
    goto/16 :goto_20

    .line 37
    .line 38
    :cond_1
    invoke-static {v2}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    new-instance v0, Lt3;

    .line 51
    .line 52
    invoke-direct {v0, v7}, Lt3;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v6, v14, v14, v13, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_2
    const/4 v15, 0x1

    .line 61
    invoke-static {v15, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Ljava/util/List;

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    invoke-static {v7}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Lya2;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object/from16 v7, v16

    .line 79
    .line 80
    :goto_0
    const/4 v8, 0x2

    .line 81
    invoke-static {v8, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/util/List;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-static {v2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lya2;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move-object/from16 v2, v16

    .line 97
    .line 98
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    sget-object v9, Lmz1;->n:Lmz1;

    .line 105
    .line 106
    invoke-static {v0, v1, v9}, Lbi4;->m(JLmz1;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v10

    .line 110
    const/16 v12, 0xa

    .line 111
    .line 112
    invoke-static {v12, v10, v11}, Lbi4;->n(IJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v10

    .line 116
    invoke-static {v10, v11}, Lbi4;->K(J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v10

    .line 120
    if-eqz v7, :cond_5

    .line 121
    .line 122
    new-instance v12, Lh91;

    .line 123
    .line 124
    invoke-direct {v12, v4, v3, v14}, Lh91;-><init>(Li91;Lk91;I)V

    .line 125
    .line 126
    .line 127
    invoke-static {v7, v3, v10, v11, v12}, Lnt1;->J(Lya2;Lk91;JLpe1;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    if-eqz v2, :cond_6

    .line 131
    .line 132
    new-instance v7, Lh91;

    .line 133
    .line 134
    invoke-direct {v7, v4, v3, v15}, Lh91;-><init>(Li91;Lk91;I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v3, v10, v11, v7}, Lnt1;->J(Lya2;Lk91;JLpe1;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget v4, v3, Lk91;->c:F

    .line 145
    .line 146
    iget v5, v3, Lk91;->e:F

    .line 147
    .line 148
    invoke-static {v0, v1, v9}, Lbi4;->m(JLmz1;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v19

    .line 152
    iget-object v0, v3, Lk91;->f:Li91;

    .line 153
    .line 154
    new-instance v1, Lug2;

    .line 155
    .line 156
    const/16 v7, 0x10

    .line 157
    .line 158
    new-array v9, v7, [Leb2;

    .line 159
    .line 160
    invoke-direct {v1, v9}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static/range {v19 .. v20}, Lmf0;->h(J)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-static/range {v19 .. v20}, Lmf0;->j(J)I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-static/range {v19 .. v20}, Lmf0;->g(J)I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    sget-object v12, Lis1;->a:Ltf2;

    .line 176
    .line 177
    new-instance v12, Ltf2;

    .line 178
    .line 179
    invoke-direct {v12}, Ltf2;-><init>()V

    .line 180
    .line 181
    .line 182
    move/from16 p0, v8

    .line 183
    .line 184
    new-instance v8, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-interface {v6, v4}, Las0;->v(F)F

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    move-object/from16 p3, v8

    .line 194
    .line 195
    float-to-double v7, v4

    .line 196
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v7

    .line 200
    double-to-float v4, v7

    .line 201
    float-to-int v4, v4

    .line 202
    invoke-interface {v6, v5}, Las0;->v(F)F

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    float-to-double v7, v5

    .line 207
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 208
    .line 209
    .line 210
    move-result-wide v7

    .line 211
    double-to-float v5, v7

    .line 212
    float-to-int v5, v5

    .line 213
    invoke-static {v14, v9, v14, v11}, Lnf0;->a(IIII)J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    move/from16 v28, v15

    .line 218
    .line 219
    const/16 v15, 0xe

    .line 220
    .line 221
    invoke-static {v15, v7, v8}, Lbi4;->n(IJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v17

    .line 225
    invoke-static/range {v17 .. v18}, Lbi4;->K(J)J

    .line 226
    .line 227
    .line 228
    move-result-wide v14

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v17

    .line 233
    if-nez v17, :cond_7

    .line 234
    .line 235
    move-object/from16 v18, v0

    .line 236
    .line 237
    move-object/from16 v0, v16

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_7
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v17

    .line 244
    check-cast v17, Lya2;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :catch_0
    move-object/from16 v17, v16

    .line 248
    .line 249
    :goto_2
    move-object/from16 v18, v0

    .line 250
    .line 251
    move-object/from16 v0, v17

    .line 252
    .line 253
    :goto_3
    const/16 v30, 0x0

    .line 254
    .line 255
    move-object/from16 v31, v13

    .line 256
    .line 257
    if-eqz v0, :cond_9

    .line 258
    .line 259
    invoke-static {v0}, Lk75;->B(Lya2;)Lab3;

    .line 260
    .line 261
    .line 262
    move-result-object v17

    .line 263
    invoke-static/range {v17 .. v17}, Lk75;->C(Lab3;)F

    .line 264
    .line 265
    .line 266
    move-result v17

    .line 267
    cmpg-float v17, v17, v30

    .line 268
    .line 269
    if-nez v17, :cond_8

    .line 270
    .line 271
    invoke-static {v0}, Lk75;->B(Lya2;)Lab3;

    .line 272
    .line 273
    .line 274
    invoke-interface {v0, v14, v15}, Lya2;->e(J)Ldv2;

    .line 275
    .line 276
    .line 277
    move-result-object v17

    .line 278
    invoke-virtual/range {v17 .. v17}, Ldv2;->a0()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    move-object/from16 v32, v1

    .line 283
    .line 284
    invoke-virtual/range {v17 .. v17}, Ldv2;->Y()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-static {v13, v1}, Lds1;->a(II)J

    .line 289
    .line 290
    .line 291
    move-result-wide v21

    .line 292
    :goto_4
    move-object v13, v0

    .line 293
    move-object/from16 v33, v2

    .line 294
    .line 295
    move-wide/from16 v0, v21

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_8
    move-object/from16 v32, v1

    .line 299
    .line 300
    const v1, 0x7fffffff

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v1}, Lya2;->K(I)I

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    invoke-interface {v0, v13}, Lya2;->T(I)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-static {v13, v1}, Lds1;->a(II)J

    .line 312
    .line 313
    .line 314
    move-result-wide v21

    .line 315
    move-object/from16 v17, v16

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :goto_5
    new-instance v2, Lds1;

    .line 319
    .line 320
    invoke-direct {v2, v0, v1}, Lds1;-><init>(J)V

    .line 321
    .line 322
    .line 323
    move-object/from16 v0, v17

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_9
    move-object v13, v0

    .line 327
    move-object/from16 v32, v1

    .line 328
    .line 329
    move-object/from16 v33, v2

    .line 330
    .line 331
    move-object/from16 v0, v16

    .line 332
    .line 333
    move-object v2, v0

    .line 334
    :goto_6
    move-object/from16 v45, v0

    .line 335
    .line 336
    const/16 v46, 0x20

    .line 337
    .line 338
    if-eqz v2, :cond_a

    .line 339
    .line 340
    iget-wide v0, v2, Lds1;->a:J

    .line 341
    .line 342
    shr-long v0, v0, v46

    .line 343
    .line 344
    long-to-int v0, v0

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    goto :goto_7

    .line 350
    :cond_a
    move-object/from16 v0, v16

    .line 351
    .line 352
    :goto_7
    const-wide v47, 0xffffffffL

    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    move-object/from16 v49, v0

    .line 358
    .line 359
    if-eqz v2, :cond_b

    .line 360
    .line 361
    iget-wide v0, v2, Lds1;->a:J

    .line 362
    .line 363
    and-long v0, v0, v47

    .line 364
    .line 365
    long-to-int v0, v0

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    move-object/from16 p2, v0

    .line 371
    .line 372
    :goto_8
    const/16 v1, 0x10

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_b
    move-object/from16 p2, v16

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :goto_9
    new-array v0, v1, [I

    .line 379
    .line 380
    new-array v1, v1, [I

    .line 381
    .line 382
    move-object/from16 v50, v13

    .line 383
    .line 384
    new-instance v13, Luf2;

    .line 385
    .line 386
    invoke-direct {v13}, Luf2;-><init>()V

    .line 387
    .line 388
    .line 389
    new-instance v34, Le91;

    .line 390
    .line 391
    move/from16 v21, v4

    .line 392
    .line 393
    move/from16 v22, v5

    .line 394
    .line 395
    move-object/from16 v17, v34

    .line 396
    .line 397
    invoke-direct/range {v17 .. v22}, Le91;-><init>(Li91;JII)V

    .line 398
    .line 399
    .line 400
    move/from16 v5, v21

    .line 401
    .line 402
    move/from16 v4, v22

    .line 403
    .line 404
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v35

    .line 408
    invoke-static {v9, v11}, Lds1;->a(II)J

    .line 409
    .line 410
    .line 411
    move-result-wide v37

    .line 412
    const/16 v43, 0x0

    .line 413
    .line 414
    const/16 v44, 0x0

    .line 415
    .line 416
    const/16 v36, 0x0

    .line 417
    .line 418
    const/16 v40, 0x0

    .line 419
    .line 420
    const/16 v41, 0x0

    .line 421
    .line 422
    const/16 v42, 0x0

    .line 423
    .line 424
    move-object/from16 v39, v2

    .line 425
    .line 426
    invoke-virtual/range {v34 .. v44}, Le91;->b(ZIJLds1;IIIZZ)Ld91;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    move-object/from16 v17, v0

    .line 431
    .line 432
    iget-boolean v0, v2, Ld91;->b:Z

    .line 433
    .line 434
    if-eqz v0, :cond_d

    .line 435
    .line 436
    if-eqz v39, :cond_c

    .line 437
    .line 438
    move/from16 v23, v28

    .line 439
    .line 440
    goto :goto_a

    .line 441
    :cond_c
    const/16 v23, 0x0

    .line 442
    .line 443
    :goto_a
    const/16 v25, 0x0

    .line 444
    .line 445
    const/16 v27, 0x0

    .line 446
    .line 447
    const/16 v24, -0x1

    .line 448
    .line 449
    move-object/from16 v22, v2

    .line 450
    .line 451
    move/from16 v26, v9

    .line 452
    .line 453
    move-object/from16 v21, v34

    .line 454
    .line 455
    invoke-virtual/range {v21 .. v27}, Le91;->a(Ld91;ZIIII)Lmt1;

    .line 456
    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_d
    move-object/from16 v22, v2

    .line 460
    .line 461
    :goto_b
    move-wide/from16 v51, v7

    .line 462
    .line 463
    move/from16 v21, v9

    .line 464
    .line 465
    move v7, v11

    .line 466
    move/from16 v53, v7

    .line 467
    .line 468
    move-object/from16 v2, v45

    .line 469
    .line 470
    move-object/from16 v0, v50

    .line 471
    .line 472
    const/4 v6, 0x0

    .line 473
    const/4 v8, 0x0

    .line 474
    const/4 v11, 0x0

    .line 475
    const/16 v23, 0x0

    .line 476
    .line 477
    const/16 v40, 0x0

    .line 478
    .line 479
    const/16 v41, 0x0

    .line 480
    .line 481
    move/from16 v45, v4

    .line 482
    .line 483
    move/from16 v50, v5

    .line 484
    .line 485
    move v4, v10

    .line 486
    move-object/from16 v10, v17

    .line 487
    .line 488
    const/4 v5, 0x0

    .line 489
    move-object/from16 v17, v3

    .line 490
    .line 491
    move-object/from16 v3, v22

    .line 492
    .line 493
    const/16 v22, 0x0

    .line 494
    .line 495
    :goto_c
    iget-boolean v3, v3, Ld91;->b:Z

    .line 496
    .line 497
    if-nez v3, :cond_19

    .line 498
    .line 499
    if-eqz v0, :cond_19

    .line 500
    .line 501
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    move/from16 v24, v3

    .line 512
    .line 513
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    move-object/from16 p2, v13

    .line 518
    .line 519
    add-int v13, v22, v24

    .line 520
    .line 521
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 522
    .line 523
    .line 524
    move-result v42

    .line 525
    sub-int v3, v21, v24

    .line 526
    .line 527
    add-int/lit8 v5, v6, 0x1

    .line 528
    .line 529
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    move/from16 v49, v5

    .line 533
    .line 534
    move-object/from16 v5, p3

    .line 535
    .line 536
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    invoke-virtual {v12, v6, v2}, Ltf2;->h(ILjava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    invoke-interface {v0}, Lya2;->i()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    sub-int v27, v49, v23

    .line 546
    .line 547
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_e

    .line 552
    .line 553
    :catch_1
    move-object/from16 v0, v16

    .line 554
    .line 555
    goto :goto_d

    .line 556
    :cond_e
    :try_start_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Lya2;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    .line 562
    :goto_d
    if-eqz v0, :cond_10

    .line 563
    .line 564
    invoke-static {v0}, Lk75;->B(Lya2;)Lab3;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-static {v2}, Lk75;->C(Lab3;)F

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    cmpg-float v2, v2, v30

    .line 573
    .line 574
    if-nez v2, :cond_f

    .line 575
    .line 576
    invoke-static {v0}, Lk75;->B(Lya2;)Lab3;

    .line 577
    .line 578
    .line 579
    invoke-interface {v0, v14, v15}, Lya2;->e(J)Ldv2;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v2}, Ldv2;->a0()I

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    move-object/from16 p3, v2

    .line 588
    .line 589
    invoke-virtual/range {p3 .. p3}, Ldv2;->Y()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    invoke-static {v6, v2}, Lds1;->a(II)J

    .line 594
    .line 595
    .line 596
    move-result-wide v21

    .line 597
    move-object/from16 v2, p3

    .line 598
    .line 599
    :goto_e
    move-object/from16 v54, v0

    .line 600
    .line 601
    move-object/from16 p3, v5

    .line 602
    .line 603
    move-wide/from16 v5, v21

    .line 604
    .line 605
    goto :goto_f

    .line 606
    :cond_f
    const v2, 0x7fffffff

    .line 607
    .line 608
    .line 609
    invoke-interface {v0, v2}, Lya2;->K(I)I

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    invoke-interface {v0, v6}, Lya2;->T(I)I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    invoke-static {v6, v2}, Lds1;->a(II)J

    .line 618
    .line 619
    .line 620
    move-result-wide v21

    .line 621
    move-object/from16 v2, v16

    .line 622
    .line 623
    goto :goto_e

    .line 624
    :goto_f
    new-instance v0, Lds1;

    .line 625
    .line 626
    invoke-direct {v0, v5, v6}, Lds1;-><init>(J)V

    .line 627
    .line 628
    .line 629
    goto :goto_10

    .line 630
    :cond_10
    move-object/from16 v54, v0

    .line 631
    .line 632
    move-object/from16 p3, v5

    .line 633
    .line 634
    move-object/from16 v0, v16

    .line 635
    .line 636
    move-object v2, v0

    .line 637
    :goto_10
    if-eqz v0, :cond_11

    .line 638
    .line 639
    iget-wide v5, v0, Lds1;->a:J

    .line 640
    .line 641
    shr-long v5, v5, v46

    .line 642
    .line 643
    long-to-int v5, v5

    .line 644
    add-int v5, v5, v50

    .line 645
    .line 646
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    goto :goto_11

    .line 651
    :cond_11
    move-object/from16 v5, v16

    .line 652
    .line 653
    :goto_11
    move-object/from16 v55, v5

    .line 654
    .line 655
    if-eqz v0, :cond_12

    .line 656
    .line 657
    iget-wide v5, v0, Lds1;->a:J

    .line 658
    .line 659
    and-long v5, v5, v47

    .line 660
    .line 661
    long-to-int v5, v5

    .line 662
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    goto :goto_12

    .line 667
    :cond_12
    move-object/from16 v5, v16

    .line 668
    .line 669
    :goto_12
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v35

    .line 673
    invoke-static {v3, v7}, Lds1;->a(II)J

    .line 674
    .line 675
    .line 676
    move-result-wide v37

    .line 677
    if-nez v0, :cond_13

    .line 678
    .line 679
    move-object/from16 v21, v0

    .line 680
    .line 681
    move-object/from16 v56, v2

    .line 682
    .line 683
    move/from16 v26, v3

    .line 684
    .line 685
    move-object/from16 v39, v16

    .line 686
    .line 687
    goto :goto_13

    .line 688
    :cond_13
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    move-object/from16 v21, v0

    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    move-object/from16 v56, v2

    .line 705
    .line 706
    move/from16 v26, v3

    .line 707
    .line 708
    invoke-static {v6, v0}, Lds1;->a(II)J

    .line 709
    .line 710
    .line 711
    move-result-wide v2

    .line 712
    new-instance v0, Lds1;

    .line 713
    .line 714
    invoke-direct {v0, v2, v3}, Lds1;-><init>(J)V

    .line 715
    .line 716
    .line 717
    move-object/from16 v39, v0

    .line 718
    .line 719
    :goto_13
    const/16 v43, 0x0

    .line 720
    .line 721
    const/16 v44, 0x0

    .line 722
    .line 723
    move/from16 v36, v27

    .line 724
    .line 725
    invoke-virtual/range {v34 .. v44}, Le91;->b(ZIJLds1;IIIZZ)Ld91;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    iget-boolean v2, v0, Ld91;->a:Z

    .line 730
    .line 731
    if-eqz v2, :cond_18

    .line 732
    .line 733
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    add-int v25, v41, v42

    .line 742
    .line 743
    if-eqz v21, :cond_14

    .line 744
    .line 745
    move/from16 v23, v28

    .line 746
    .line 747
    :goto_14
    move-object/from16 v22, v0

    .line 748
    .line 749
    move-object/from16 v21, v34

    .line 750
    .line 751
    move/from16 v24, v40

    .line 752
    .line 753
    goto :goto_15

    .line 754
    :cond_14
    const/16 v23, 0x0

    .line 755
    .line 756
    goto :goto_14

    .line 757
    :goto_15
    invoke-virtual/range {v21 .. v27}, Le91;->a(Ld91;ZIIII)Lmt1;

    .line 758
    .line 759
    .line 760
    move-object/from16 v34, v21

    .line 761
    .line 762
    move/from16 v40, v24

    .line 763
    .line 764
    add-int/lit8 v0, v11, 0x1

    .line 765
    .line 766
    array-length v3, v1

    .line 767
    if-ge v3, v0, :cond_15

    .line 768
    .line 769
    array-length v3, v1

    .line 770
    mul-int/lit8 v3, v3, 0x3

    .line 771
    .line 772
    div-int/lit8 v3, v3, 0x2

    .line 773
    .line 774
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    :cond_15
    aput v42, v1, v11

    .line 783
    .line 784
    add-int/lit8 v11, v11, 0x1

    .line 785
    .line 786
    sub-int v0, v53, v25

    .line 787
    .line 788
    sub-int v7, v0, v45

    .line 789
    .line 790
    add-int/lit8 v0, v8, 0x1

    .line 791
    .line 792
    array-length v3, v10

    .line 793
    if-ge v3, v0, :cond_16

    .line 794
    .line 795
    array-length v3, v10

    .line 796
    mul-int/lit8 v3, v3, 0x3

    .line 797
    .line 798
    div-int/lit8 v3, v3, 0x2

    .line 799
    .line 800
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 805
    .line 806
    .line 807
    move-result-object v10

    .line 808
    :cond_16
    aput v49, v10, v8

    .line 809
    .line 810
    add-int/lit8 v8, v8, 0x1

    .line 811
    .line 812
    if-eqz v55, :cond_17

    .line 813
    .line 814
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    sub-int v0, v0, v50

    .line 819
    .line 820
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    goto :goto_16

    .line 825
    :cond_17
    move-object/from16 v0, v16

    .line 826
    .line 827
    :goto_16
    add-int/lit8 v40, v40, 0x1

    .line 828
    .line 829
    add-int v41, v25, v45

    .line 830
    .line 831
    move v4, v2

    .line 832
    move/from16 v21, v9

    .line 833
    .line 834
    move/from16 v23, v49

    .line 835
    .line 836
    const/4 v13, 0x0

    .line 837
    const/16 v42, 0x0

    .line 838
    .line 839
    goto :goto_17

    .line 840
    :cond_18
    move-object/from16 v22, v0

    .line 841
    .line 842
    move/from16 v21, v26

    .line 843
    .line 844
    move-object/from16 v0, v55

    .line 845
    .line 846
    :goto_17
    move-object/from16 v3, v22

    .line 847
    .line 848
    move/from16 v6, v49

    .line 849
    .line 850
    move-object/from16 v2, v56

    .line 851
    .line 852
    move-object/from16 v49, v0

    .line 853
    .line 854
    move/from16 v22, v13

    .line 855
    .line 856
    move-object/from16 v0, v54

    .line 857
    .line 858
    move-object/from16 v13, p2

    .line 859
    .line 860
    move-object/from16 p2, v5

    .line 861
    .line 862
    move/from16 v5, v42

    .line 863
    .line 864
    goto/16 :goto_c

    .line 865
    .line 866
    :cond_19
    move-object/from16 p2, v13

    .line 867
    .line 868
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    new-array v2, v0, [Ldv2;

    .line 873
    .line 874
    const/4 v3, 0x0

    .line 875
    :goto_18
    if-ge v3, v0, :cond_1a

    .line 876
    .line 877
    invoke-virtual {v12, v3}, Lhs1;->b(I)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    aput-object v5, v2, v3

    .line 882
    .line 883
    add-int/lit8 v3, v3, 0x1

    .line 884
    .line 885
    goto :goto_18

    .line 886
    :cond_1a
    new-array v0, v8, [I

    .line 887
    .line 888
    new-array v13, v8, [I

    .line 889
    .line 890
    const/4 v9, 0x0

    .line 891
    const/4 v12, 0x0

    .line 892
    const/4 v14, 0x0

    .line 893
    :goto_19
    if-ge v12, v8, :cond_1e

    .line 894
    .line 895
    move-object v3, v10

    .line 896
    aget v10, v3, v12

    .line 897
    .line 898
    if-ltz v12, :cond_1d

    .line 899
    .line 900
    if-ge v12, v11, :cond_1d

    .line 901
    .line 902
    aget v5, v1, v12

    .line 903
    .line 904
    move-object/from16 v15, p2

    .line 905
    .line 906
    invoke-virtual {v15, v12}, Luf2;->b(I)Z

    .line 907
    .line 908
    .line 909
    move-result v6

    .line 910
    if-eqz v6, :cond_1b

    .line 911
    .line 912
    move v7, v8

    .line 913
    const v6, 0x7fffffff

    .line 914
    .line 915
    .line 916
    :goto_1a
    move-object v8, v2

    .line 917
    goto :goto_1c

    .line 918
    :cond_1b
    invoke-static/range {v51 .. v52}, Lmf0;->g(J)I

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    const v6, 0x7fffffff

    .line 923
    .line 924
    .line 925
    if-ne v5, v6, :cond_1c

    .line 926
    .line 927
    move v5, v6

    .line 928
    :goto_1b
    move v7, v8

    .line 929
    goto :goto_1a

    .line 930
    :cond_1c
    invoke-static/range {v51 .. v52}, Lmf0;->g(J)I

    .line 931
    .line 932
    .line 933
    move-result v5

    .line 934
    sub-int/2addr v5, v14

    .line 935
    goto :goto_1b

    .line 936
    :goto_1c
    invoke-static/range {v51 .. v52}, Lmf0;->i(J)I

    .line 937
    .line 938
    .line 939
    move-result v2

    .line 940
    move-object/from16 v18, v3

    .line 941
    .line 942
    invoke-static/range {v51 .. v52}, Lmf0;->h(J)I

    .line 943
    .line 944
    .line 945
    move-result v3

    .line 946
    move-object/from16 v22, v1

    .line 947
    .line 948
    move v1, v4

    .line 949
    move v4, v5

    .line 950
    move/from16 v23, v6

    .line 951
    .line 952
    move/from16 v21, v11

    .line 953
    .line 954
    move/from16 p0, v14

    .line 955
    .line 956
    move-object/from16 v14, v32

    .line 957
    .line 958
    move/from16 v5, v50

    .line 959
    .line 960
    move-object/from16 v6, p1

    .line 961
    .line 962
    move-object v11, v0

    .line 963
    move-object/from16 v0, v17

    .line 964
    .line 965
    move/from16 v17, v7

    .line 966
    .line 967
    move-object/from16 v7, p3

    .line 968
    .line 969
    invoke-static/range {v0 .. v12}, Lzf5;->O(Lza3;IIIIILgb2;Ljava/util/List;[Ldv2;II[II)Leb2;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    move-object v5, v7

    .line 974
    invoke-interface {v2}, Leb2;->b()I

    .line 975
    .line 976
    .line 977
    move-result v3

    .line 978
    invoke-interface {v2}, Leb2;->a()I

    .line 979
    .line 980
    .line 981
    move-result v4

    .line 982
    aput v4, v13, v12

    .line 983
    .line 984
    add-int v4, p0, v4

    .line 985
    .line 986
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    invoke-virtual {v14, v2}, Lug2;->c(Ljava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    add-int/lit8 v12, v12, 0x1

    .line 994
    .line 995
    move-object/from16 p3, v5

    .line 996
    .line 997
    move-object v2, v8

    .line 998
    move v9, v10

    .line 999
    move-object/from16 p2, v15

    .line 1000
    .line 1001
    move/from16 v8, v17

    .line 1002
    .line 1003
    move-object/from16 v10, v18

    .line 1004
    .line 1005
    move-object/from16 v17, v0

    .line 1006
    .line 1007
    move v14, v4

    .line 1008
    move-object v0, v11

    .line 1009
    move/from16 v11, v21

    .line 1010
    .line 1011
    move v4, v1

    .line 1012
    move-object/from16 v1, v22

    .line 1013
    .line 1014
    goto :goto_19

    .line 1015
    :cond_1d
    const-string v0, "Index must be between 0 and size"

    .line 1016
    .line 1017
    invoke-static {v0}, Lmk0;->h(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    return-object v16

    .line 1021
    :cond_1e
    move-object/from16 v6, p1

    .line 1022
    .line 1023
    move-object v11, v0

    .line 1024
    move v1, v4

    .line 1025
    move/from16 p0, v14

    .line 1026
    .line 1027
    move-object/from16 v0, v17

    .line 1028
    .line 1029
    move-object/from16 v14, v32

    .line 1030
    .line 1031
    iget v2, v14, Lug2;->p:I

    .line 1032
    .line 1033
    if-nez v2, :cond_1f

    .line 1034
    .line 1035
    const/4 v1, 0x0

    .line 1036
    const/16 v29, 0x0

    .line 1037
    .line 1038
    goto :goto_1d

    .line 1039
    :cond_1f
    move/from16 v29, p0

    .line 1040
    .line 1041
    :goto_1d
    iget-object v0, v0, Lk91;->b:Lsh;

    .line 1042
    .line 1043
    invoke-interface {v0}, Lsh;->a()F

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    invoke-interface {v6, v2}, Las0;->N(F)I

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    iget v3, v14, Lug2;->p:I

    .line 1052
    .line 1053
    add-int/lit8 v3, v3, -0x1

    .line 1054
    .line 1055
    mul-int/2addr v3, v2

    .line 1056
    add-int v3, v3, v29

    .line 1057
    .line 1058
    invoke-static/range {v19 .. v20}, Lmf0;->i(J)I

    .line 1059
    .line 1060
    .line 1061
    move-result v2

    .line 1062
    invoke-static/range {v19 .. v20}, Lmf0;->g(J)I

    .line 1063
    .line 1064
    .line 1065
    move-result v4

    .line 1066
    if-ge v3, v2, :cond_20

    .line 1067
    .line 1068
    move v3, v2

    .line 1069
    :cond_20
    if-le v3, v4, :cond_21

    .line 1070
    .line 1071
    goto :goto_1e

    .line 1072
    :cond_21
    move v4, v3

    .line 1073
    :goto_1e
    invoke-interface {v0, v4, v6, v13, v11}, Lsh;->j(ILgb2;[I[I)V

    .line 1074
    .line 1075
    .line 1076
    invoke-static/range {v19 .. v20}, Lmf0;->j(J)I

    .line 1077
    .line 1078
    .line 1079
    move-result v0

    .line 1080
    invoke-static/range {v19 .. v20}, Lmf0;->h(J)I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    if-ge v1, v0, :cond_22

    .line 1085
    .line 1086
    move v1, v0

    .line 1087
    :cond_22
    if-le v1, v2, :cond_23

    .line 1088
    .line 1089
    goto :goto_1f

    .line 1090
    :cond_23
    move v2, v1

    .line 1091
    :goto_1f
    new-instance v0, Lv;

    .line 1092
    .line 1093
    const/16 v1, 0x9

    .line 1094
    .line 1095
    invoke-direct {v0, v1, v14}, Lv;-><init>(ILjava/lang/Object;)V

    .line 1096
    .line 1097
    .line 1098
    move-object/from16 v1, v31

    .line 1099
    .line 1100
    invoke-interface {v6, v2, v4, v1, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    return-object v0

    .line 1105
    :goto_20
    new-instance v0, Lt3;

    .line 1106
    .line 1107
    invoke-direct {v0, v7}, Lt3;-><init>(I)V

    .line 1108
    .line 1109
    .line 1110
    const/4 v2, 0x0

    .line 1111
    invoke-interface {v6, v2, v2, v1, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    return-object v0
.end method

.method public final g(Ljt1;Ljava/util/List;I)I
    .locals 5

    .line 1
    invoke-static {p1}, Lbi4;->v(Ljt1;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 6
    .line 7
    iget-object v0, p0, Lk91;->f:Li91;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lya2;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    const/4 v3, 0x2

    .line 28
    invoke-static {v3, p2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lya2;

    .line 41
    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    const/16 v4, 0xd

    .line 44
    .line 45
    invoke-static {p3, v3, v4}, Lnf0;->b(III)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Li91;->a(Lya2;Lya2;J)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/util/List;

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    sget-object p2, Lg01;->n:Lg01;

    .line 61
    .line 62
    :cond_2
    iget v0, p0, Lk91;->c:F

    .line 63
    .line 64
    invoke-interface {p1, v0}, Las0;->N(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Lk91;->e:F

    .line 69
    .line 70
    invoke-interface {p1, v1}, Las0;->N(F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object p0, p0, Lk91;->f:Li91;

    .line 75
    .line 76
    invoke-static {p2, p3, v0, p1, p0}, Lk91;->a(Ljava/util/List;IIILi91;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 2
    .line 3
    invoke-virtual {p0}, Lk91;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final i(Ljt1;Ljava/util/List;I)I
    .locals 35

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-static {v0}, Lbi4;->v(Ljt1;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object/from16 v3, p0

    .line 10
    .line 11
    iget-object v3, v3, Lpe2;->a:Lk91;

    .line 12
    .line 13
    iget-object v4, v3, Lk91;->f:Li91;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v5, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Ljava/util/List;

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    invoke-static {v6}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lya2;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v6, 0x0

    .line 32
    :goto_0
    const/4 v8, 0x2

    .line 33
    invoke-static {v8, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Ljava/util/List;

    .line 38
    .line 39
    if-eqz v9, :cond_1

    .line 40
    .line 41
    invoke-static {v9}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, Lya2;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v9, 0x0

    .line 49
    :goto_1
    const/4 v10, 0x7

    .line 50
    const/4 v11, 0x0

    .line 51
    invoke-static {v11, v1, v10}, Lnf0;->b(III)J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    invoke-virtual {v4, v6, v9, v12, v13}, Li91;->a(Lya2;Lya2;J)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/util/List;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    sget-object v2, Lg01;->n:Lg01;

    .line 67
    .line 68
    :cond_2
    iget v4, v3, Lk91;->c:F

    .line 69
    .line 70
    invoke-interface {v0, v4}, Las0;->N(F)I

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    iget v4, v3, Lk91;->e:F

    .line 75
    .line 76
    invoke-interface {v0, v4}, Las0;->N(F)I

    .line 77
    .line 78
    .line 79
    move-result v17

    .line 80
    iget-object v13, v3, Lk91;->f:Li91;

    .line 81
    .line 82
    invoke-static {v11, v11}, Lds1;->a(II)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    return v11

    .line 93
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    new-array v6, v0, [I

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    new-array v10, v9, [I

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    move v14, v11

    .line 110
    :goto_2
    if-ge v14, v12, :cond_4

    .line 111
    .line 112
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    check-cast v15, Lya2;

    .line 117
    .line 118
    invoke-interface {v15, v1}, Lya2;->K(I)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    aput v7, v6, v14

    .line 123
    .line 124
    invoke-interface {v15, v7}, Lya2;->T(I)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    aput v7, v10, v14

    .line 129
    .line 130
    add-int/lit8 v14, v14, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    const v12, 0x7fffffff

    .line 138
    .line 139
    .line 140
    if-ge v12, v7, :cond_5

    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-lt v12, v7, :cond_6

    .line 150
    .line 151
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    move v14, v11

    .line 163
    move v15, v14

    .line 164
    :goto_3
    if-ge v14, v0, :cond_7

    .line 165
    .line 166
    aget v18, v6, v14

    .line 167
    .line 168
    add-int v15, v15, v18

    .line 169
    .line 170
    add-int/lit8 v14, v14, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    sub-int/2addr v14, v5

    .line 178
    mul-int v14, v14, v16

    .line 179
    .line 180
    add-int/2addr v14, v15

    .line 181
    if-eqz v9, :cond_21

    .line 182
    .line 183
    aget v15, v10, v11

    .line 184
    .line 185
    sub-int/2addr v9, v5

    .line 186
    move/from16 p2, v8

    .line 187
    .line 188
    move/from16 v18, v11

    .line 189
    .line 190
    if-gt v5, v9, :cond_9

    .line 191
    .line 192
    move v8, v5

    .line 193
    :goto_4
    aget v11, v10, v8

    .line 194
    .line 195
    if-ge v15, v11, :cond_8

    .line 196
    .line 197
    move v15, v11

    .line 198
    :cond_8
    if-eq v8, v9, :cond_9

    .line 199
    .line 200
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_9
    if-eqz v0, :cond_20

    .line 204
    .line 205
    aget v8, v6, v18

    .line 206
    .line 207
    sub-int/2addr v0, v5

    .line 208
    if-gt v5, v0, :cond_b

    .line 209
    .line 210
    move v9, v5

    .line 211
    :goto_5
    aget v11, v6, v9

    .line 212
    .line 213
    if-ge v8, v11, :cond_a

    .line 214
    .line 215
    move v8, v11

    .line 216
    :cond_a
    if-eq v9, v0, :cond_b

    .line 217
    .line 218
    add-int/lit8 v9, v9, 0x1

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    move v0, v14

    .line 222
    :goto_6
    if-gt v8, v0, :cond_1f

    .line 223
    .line 224
    if-ne v15, v1, :cond_c

    .line 225
    .line 226
    goto/16 :goto_18

    .line 227
    .line 228
    :cond_c
    add-int v9, v8, v0

    .line 229
    .line 230
    div-int/lit8 v9, v9, 0x2

    .line 231
    .line 232
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    if-eqz v11, :cond_d

    .line 237
    .line 238
    move-object/from16 v33, v2

    .line 239
    .line 240
    move-wide/from16 v31, v3

    .line 241
    .line 242
    move-object/from16 v30, v6

    .line 243
    .line 244
    :goto_7
    move-wide/from16 v2, v31

    .line 245
    .line 246
    goto/16 :goto_16

    .line 247
    .line 248
    :cond_d
    move/from16 v11, v18

    .line 249
    .line 250
    invoke-static {v11, v9, v11, v12}, Lnf0;->a(IIII)J

    .line 251
    .line 252
    .line 253
    move-result-wide v14

    .line 254
    new-instance v19, Le91;

    .line 255
    .line 256
    move-object/from16 v12, v19

    .line 257
    .line 258
    invoke-direct/range {v12 .. v17}, Le91;-><init>(Li91;JII)V

    .line 259
    .line 260
    .line 261
    invoke-static {v11, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    check-cast v12, Lya2;

    .line 266
    .line 267
    if-eqz v12, :cond_e

    .line 268
    .line 269
    aget v18, v10, v11

    .line 270
    .line 271
    move/from16 v14, v18

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_e
    move v14, v11

    .line 275
    :goto_8
    if-eqz v12, :cond_f

    .line 276
    .line 277
    aget v15, v6, v11

    .line 278
    .line 279
    move v11, v15

    .line 280
    goto :goto_9

    .line 281
    :cond_f
    const/4 v11, 0x0

    .line 282
    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    if-le v15, v5, :cond_10

    .line 287
    .line 288
    move/from16 v20, v5

    .line 289
    .line 290
    :goto_a
    const v15, 0x7fffffff

    .line 291
    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_10
    const/16 v20, 0x0

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :goto_b
    invoke-static {v9, v15}, Lds1;->a(II)J

    .line 298
    .line 299
    .line 300
    move-result-wide v22

    .line 301
    move-object/from16 v30, v6

    .line 302
    .line 303
    if-nez v12, :cond_11

    .line 304
    .line 305
    const/16 v24, 0x0

    .line 306
    .line 307
    goto :goto_c

    .line 308
    :cond_11
    invoke-static {v11, v14}, Lds1;->a(II)J

    .line 309
    .line 310
    .line 311
    move-result-wide v5

    .line 312
    new-instance v12, Lds1;

    .line 313
    .line 314
    invoke-direct {v12, v5, v6}, Lds1;-><init>(J)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v24, v12

    .line 318
    .line 319
    :goto_c
    const/16 v28, 0x0

    .line 320
    .line 321
    const/16 v29, 0x0

    .line 322
    .line 323
    const/16 v21, 0x0

    .line 324
    .line 325
    const/16 v25, 0x0

    .line 326
    .line 327
    const/16 v26, 0x0

    .line 328
    .line 329
    const/16 v27, 0x0

    .line 330
    .line 331
    invoke-virtual/range {v19 .. v29}, Le91;->b(ZIJLds1;IIIZZ)Ld91;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iget-boolean v5, v5, Ld91;->b:Z

    .line 336
    .line 337
    if-eqz v5, :cond_12

    .line 338
    .line 339
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    move-object/from16 v33, v2

    .line 343
    .line 344
    move-wide/from16 v31, v3

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_12
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    move-wide/from16 v31, v3

    .line 352
    .line 353
    move v4, v9

    .line 354
    move v6, v11

    .line 355
    move v15, v14

    .line 356
    move/from16 v22, v25

    .line 357
    .line 358
    move/from16 v3, v27

    .line 359
    .line 360
    const/4 v11, 0x0

    .line 361
    const/4 v12, 0x0

    .line 362
    const/4 v14, 0x0

    .line 363
    :goto_d
    if-ge v11, v5, :cond_1a

    .line 364
    .line 365
    sub-int/2addr v4, v6

    .line 366
    add-int/lit8 v14, v11, 0x1

    .line 367
    .line 368
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 369
    .line 370
    .line 371
    move-result v27

    .line 372
    invoke-static {v14, v2}, Lo70;->j0(ILjava/util/List;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Lya2;

    .line 377
    .line 378
    if-eqz v3, :cond_13

    .line 379
    .line 380
    aget v6, v10, v14

    .line 381
    .line 382
    move v15, v6

    .line 383
    goto :goto_e

    .line 384
    :cond_13
    const/4 v15, 0x0

    .line 385
    :goto_e
    if-eqz v3, :cond_14

    .line 386
    .line 387
    aget v6, v30, v14

    .line 388
    .line 389
    add-int v6, v6, v16

    .line 390
    .line 391
    goto :goto_f

    .line 392
    :cond_14
    const/4 v6, 0x0

    .line 393
    :goto_f
    add-int/lit8 v11, v11, 0x2

    .line 394
    .line 395
    move-object/from16 v33, v2

    .line 396
    .line 397
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-ge v11, v2, :cond_15

    .line 402
    .line 403
    const/16 v20, 0x1

    .line 404
    .line 405
    goto :goto_10

    .line 406
    :cond_15
    const/16 v20, 0x0

    .line 407
    .line 408
    :goto_10
    sub-int v21, v14, v12

    .line 409
    .line 410
    move/from16 v25, v22

    .line 411
    .line 412
    const v2, 0x7fffffff

    .line 413
    .line 414
    .line 415
    invoke-static {v4, v2}, Lds1;->a(II)J

    .line 416
    .line 417
    .line 418
    move-result-wide v22

    .line 419
    if-nez v3, :cond_16

    .line 420
    .line 421
    move-object v11, v3

    .line 422
    move/from16 v34, v4

    .line 423
    .line 424
    const/16 v24, 0x0

    .line 425
    .line 426
    goto :goto_11

    .line 427
    :cond_16
    move-object v11, v3

    .line 428
    invoke-static {v6, v15}, Lds1;->a(II)J

    .line 429
    .line 430
    .line 431
    move-result-wide v2

    .line 432
    move/from16 v34, v4

    .line 433
    .line 434
    new-instance v4, Lds1;

    .line 435
    .line 436
    invoke-direct {v4, v2, v3}, Lds1;-><init>(J)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v24, v4

    .line 440
    .line 441
    :goto_11
    const/16 v28, 0x0

    .line 442
    .line 443
    const/16 v29, 0x0

    .line 444
    .line 445
    invoke-virtual/range {v19 .. v29}, Le91;->b(ZIJLds1;IIIZZ)Ld91;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iget-boolean v3, v2, Ld91;->a:Z

    .line 450
    .line 451
    if-eqz v3, :cond_19

    .line 452
    .line 453
    add-int v27, v27, v17

    .line 454
    .line 455
    add-int v23, v27, v26

    .line 456
    .line 457
    move/from16 v22, v25

    .line 458
    .line 459
    move/from16 v25, v21

    .line 460
    .line 461
    if-eqz v11, :cond_17

    .line 462
    .line 463
    const/16 v21, 0x1

    .line 464
    .line 465
    :goto_12
    move-object/from16 v20, v2

    .line 466
    .line 467
    move/from16 v24, v34

    .line 468
    .line 469
    goto :goto_13

    .line 470
    :cond_17
    const/16 v21, 0x0

    .line 471
    .line 472
    goto :goto_12

    .line 473
    :goto_13
    invoke-virtual/range {v19 .. v25}, Le91;->a(Ld91;ZIIII)Lmt1;

    .line 474
    .line 475
    .line 476
    move-object/from16 v2, v20

    .line 477
    .line 478
    move/from16 v25, v22

    .line 479
    .line 480
    sub-int v6, v6, v16

    .line 481
    .line 482
    add-int/lit8 v22, v25, 0x1

    .line 483
    .line 484
    iget-boolean v2, v2, Ld91;->b:Z

    .line 485
    .line 486
    if-eqz v2, :cond_18

    .line 487
    .line 488
    move/from16 v26, v23

    .line 489
    .line 490
    goto :goto_15

    .line 491
    :cond_18
    move v4, v9

    .line 492
    move v12, v14

    .line 493
    move/from16 v26, v23

    .line 494
    .line 495
    const/4 v3, 0x0

    .line 496
    goto :goto_14

    .line 497
    :cond_19
    move/from16 v22, v25

    .line 498
    .line 499
    move/from16 v3, v27

    .line 500
    .line 501
    move/from16 v4, v34

    .line 502
    .line 503
    :goto_14
    move v11, v14

    .line 504
    move-object/from16 v2, v33

    .line 505
    .line 506
    goto/16 :goto_d

    .line 507
    .line 508
    :cond_1a
    move-object/from16 v33, v2

    .line 509
    .line 510
    :goto_15
    sub-int v2, v26, v17

    .line 511
    .line 512
    invoke-static {v2, v14}, Lds1;->a(II)J

    .line 513
    .line 514
    .line 515
    move-result-wide v2

    .line 516
    :goto_16
    const/16 v4, 0x20

    .line 517
    .line 518
    shr-long v4, v2, v4

    .line 519
    .line 520
    long-to-int v15, v4

    .line 521
    const-wide v4, 0xffffffffL

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    and-long/2addr v2, v4

    .line 527
    long-to-int v2, v2

    .line 528
    if-gt v15, v1, :cond_1e

    .line 529
    .line 530
    if-ge v2, v7, :cond_1b

    .line 531
    .line 532
    goto :goto_17

    .line 533
    :cond_1b
    if-ge v15, v1, :cond_1d

    .line 534
    .line 535
    add-int/lit8 v0, v9, -0x1

    .line 536
    .line 537
    :cond_1c
    move v14, v9

    .line 538
    move-object/from16 v6, v30

    .line 539
    .line 540
    move-wide/from16 v3, v31

    .line 541
    .line 542
    move-object/from16 v2, v33

    .line 543
    .line 544
    const/4 v5, 0x1

    .line 545
    const v12, 0x7fffffff

    .line 546
    .line 547
    .line 548
    const/16 v18, 0x0

    .line 549
    .line 550
    goto/16 :goto_6

    .line 551
    .line 552
    :cond_1d
    return v9

    .line 553
    :cond_1e
    :goto_17
    add-int/lit8 v8, v9, 0x1

    .line 554
    .line 555
    if-le v8, v0, :cond_1c

    .line 556
    .line 557
    return v8

    .line 558
    :cond_1f
    :goto_18
    return v14

    .line 559
    :cond_20
    invoke-static {}, Lp61;->v()V

    .line 560
    .line 561
    .line 562
    const/16 v18, 0x0

    .line 563
    .line 564
    return v18

    .line 565
    :cond_21
    move/from16 v18, v11

    .line 566
    .line 567
    invoke-static {}, Lp61;->v()V

    .line 568
    .line 569
    .line 570
    return v18
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MultiContentMeasurePolicyImpl(measurePolicy="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lpe2;->a:Lk91;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
