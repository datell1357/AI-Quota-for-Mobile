.class public final Lrn0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lre;


# instance fields
.field public final a:Lqd1;

.field public final b:Le34;

.field public final c:Ljava/lang/Object;

.field public final d:Lbf;

.field public final e:Lbf;

.field public final f:Lbf;

.field public final g:Ljava/lang/Object;

.field public final h:J


# direct methods
.method public constructor <init>(Lsn0;Le34;Ljava/lang/Object;Lbf;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Lqd1;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    iget-object v5, v5, Lsn0;->a:Ldd1;

    .line 14
    .line 15
    const/16 v6, 0x11

    .line 16
    .line 17
    invoke-direct {v4, v6, v5}, Lqd1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v4, v0, Lrn0;->a:Lqd1;

    .line 24
    .line 25
    iput-object v1, v0, Lrn0;->b:Le34;

    .line 26
    .line 27
    iput-object v2, v0, Lrn0;->c:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v5, v1, Le34;->a:Lpe1;

    .line 30
    .line 31
    invoke-interface {v5, v2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lbf;

    .line 36
    .line 37
    iput-object v2, v0, Lrn0;->d:Lbf;

    .line 38
    .line 39
    invoke-static {v3}, Lc75;->t(Lbf;)Lbf;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v0, Lrn0;->e:Lbf;

    .line 44
    .line 45
    iget-object v1, v1, Le34;->b:Lpe1;

    .line 46
    .line 47
    iget-object v5, v4, Lqd1;->r:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Lbf;

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Lbf;->c()Lbf;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iput-object v5, v4, Lqd1;->r:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_0
    iget-object v5, v4, Lqd1;->r:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Lbf;

    .line 62
    .line 63
    const-string v7, "targetVector"

    .line 64
    .line 65
    if-eqz v5, :cond_8

    .line 66
    .line 67
    invoke-virtual {v5}, Lbf;->b()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_0
    iget-object v10, v4, Lqd1;->r:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Lbf;

    .line 75
    .line 76
    if-ge v9, v5, :cond_2

    .line 77
    .line 78
    if-eqz v10, :cond_1

    .line 79
    .line 80
    iget-object v13, v4, Lqd1;->o:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v13, Ldd1;

    .line 83
    .line 84
    invoke-virtual {v2, v9}, Lbf;->a(I)F

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    invoke-virtual {v3, v9}, Lbf;->a(I)F

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    iget-object v13, v13, Ldd1;->o:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v13, Lld;

    .line 95
    .line 96
    invoke-virtual {v13, v15}, Lld;->b(F)D

    .line 97
    .line 98
    .line 99
    move-result-wide v16

    .line 100
    const/16 p1, 0x0

    .line 101
    .line 102
    sget v6, Lp71;->a:F

    .line 103
    .line 104
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 105
    .line 106
    float-to-double v11, v6

    .line 107
    sub-double v18, v11, p2

    .line 108
    .line 109
    iget v6, v13, Lld;->a:F

    .line 110
    .line 111
    iget v13, v13, Lld;->b:F

    .line 112
    .line 113
    mul-float/2addr v6, v13

    .line 114
    move/from16 v20, v9

    .line 115
    .line 116
    float-to-double v8, v6

    .line 117
    div-double v11, v11, v18

    .line 118
    .line 119
    mul-double v11, v11, v16

    .line 120
    .line 121
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    .line 122
    .line 123
    .line 124
    move-result-wide v11

    .line 125
    mul-double/2addr v11, v8

    .line 126
    double-to-float v6, v11

    .line 127
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    mul-float/2addr v8, v6

    .line 132
    add-float/2addr v8, v14

    .line 133
    move/from16 v6, v20

    .line 134
    .line 135
    invoke-virtual {v10, v6, v8}, Lbf;->e(IF)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v9, v6, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const/16 p1, 0x0

    .line 142
    .line 143
    invoke-static {v7}, Lnt1;->X(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_2
    const/16 p1, 0x0

    .line 148
    .line 149
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 150
    .line 151
    if-eqz v10, :cond_7

    .line 152
    .line 153
    invoke-interface {v1, v10}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, Lrn0;->g:Ljava/lang/Object;

    .line 158
    .line 159
    iget-object v1, v0, Lrn0;->a:Lqd1;

    .line 160
    .line 161
    iget-object v2, v0, Lrn0;->d:Lbf;

    .line 162
    .line 163
    iget-object v4, v1, Lqd1;->q:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v4, Lbf;

    .line 166
    .line 167
    if-nez v4, :cond_3

    .line 168
    .line 169
    invoke-virtual {v2}, Lbf;->c()Lbf;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iput-object v4, v1, Lqd1;->q:Ljava/lang/Object;

    .line 174
    .line 175
    :cond_3
    iget-object v4, v1, Lqd1;->q:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v4, Lbf;

    .line 178
    .line 179
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v4}, Lbf;->b()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    const-wide/16 v5, 0x0

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    :goto_1
    if-ge v7, v4, :cond_4

    .line 189
    .line 190
    iget-object v8, v1, Lqd1;->o:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v8, Ldd1;

    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v7}, Lbf;->a(I)F

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    iget-object v8, v8, Ldd1;->o:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v8, Lld;

    .line 204
    .line 205
    invoke-virtual {v8, v9}, Lld;->b(F)D

    .line 206
    .line 207
    .line 208
    move-result-wide v8

    .line 209
    sget v10, Lp71;->a:F

    .line 210
    .line 211
    float-to-double v10, v10

    .line 212
    sub-double v10, v10, p2

    .line 213
    .line 214
    div-double/2addr v8, v10

    .line 215
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v8

    .line 219
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    mul-double/2addr v8, v10

    .line 225
    double-to-long v8, v8

    .line 226
    const-wide/32 v10, 0xf4240

    .line 227
    .line 228
    .line 229
    mul-long/2addr v8, v10

    .line 230
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_4
    iput-wide v5, v0, Lrn0;->h:J

    .line 238
    .line 239
    iget-object v1, v0, Lrn0;->a:Lqd1;

    .line 240
    .line 241
    iget-object v2, v0, Lrn0;->d:Lbf;

    .line 242
    .line 243
    invoke-virtual {v1, v5, v6, v2, v3}, Lqd1;->A(JLbf;Lbf;)Lbf;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Lc75;->t(Lbf;)Lbf;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iput-object v1, v0, Lrn0;->f:Lbf;

    .line 252
    .line 253
    invoke-virtual {v1}, Lbf;->b()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/4 v8, 0x0

    .line 258
    :goto_2
    if-ge v8, v1, :cond_5

    .line 259
    .line 260
    iget-object v2, v0, Lrn0;->f:Lbf;

    .line 261
    .line 262
    invoke-virtual {v2, v8}, Lbf;->a(I)F

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    iget-object v4, v0, Lrn0;->a:Lqd1;

    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-object v4, v0, Lrn0;->a:Lqd1;

    .line 272
    .line 273
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    const/4 v4, 0x0

    .line 277
    const/high16 v5, -0x80000000

    .line 278
    .line 279
    invoke-static {v3, v5, v4}, Lix;->j(FFF)F

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-virtual {v2, v8, v3}, Lbf;->e(IF)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v8, v8, 0x1

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_5
    return-void

    .line 290
    :cond_6
    const-string v0, "velocityVector"

    .line 291
    .line 292
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_7
    invoke-static {v7}, Lnt1;->X(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    :cond_8
    const/16 p1, 0x0

    .line 301
    .line 302
    invoke-static {v7}, Lnt1;->X(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b(J)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p0 .. p2}, Lre;->g(J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-object v1, v0, Lrn0;->b:Le34;

    .line 10
    .line 11
    iget-object v1, v1, Le34;->b:Lpe1;

    .line 12
    .line 13
    iget-object v2, v0, Lrn0;->a:Lqd1;

    .line 14
    .line 15
    iget-object v3, v2, Lqd1;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lbf;

    .line 18
    .line 19
    iget-object v4, v0, Lrn0;->d:Lbf;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Lbf;->c()Lbf;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v2, Lqd1;->p:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    iget-object v3, v2, Lqd1;->p:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lbf;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v6, "valueVector"

    .line 35
    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-virtual {v3}, Lbf;->b()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v7, 0x0

    .line 43
    :goto_0
    iget-object v8, v2, Lqd1;->p:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v8, Lbf;

    .line 46
    .line 47
    if-ge v7, v3, :cond_3

    .line 48
    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    iget-object v9, v2, Lqd1;->o:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v9, Ldd1;

    .line 54
    .line 55
    invoke-virtual {v4, v7}, Lbf;->a(I)F

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget-object v11, v0, Lrn0;->e:Lbf;

    .line 60
    .line 61
    invoke-virtual {v11, v7}, Lbf;->a(I)F

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-wide/32 v12, 0xf4240

    .line 66
    .line 67
    .line 68
    div-long v12, p1, v12

    .line 69
    .line 70
    iget-object v9, v9, Ldd1;->o:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v9, Lld;

    .line 73
    .line 74
    invoke-virtual {v9, v11}, Lld;->a(F)Lo71;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    iget-wide v14, v9, Lo71;->c:J

    .line 79
    .line 80
    const-wide/16 v16, 0x0

    .line 81
    .line 82
    cmp-long v11, v14, v16

    .line 83
    .line 84
    if-lez v11, :cond_1

    .line 85
    .line 86
    long-to-float v11, v12

    .line 87
    long-to-float v12, v14

    .line 88
    div-float/2addr v11, v12

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .line 91
    .line 92
    :goto_1
    iget v12, v9, Lo71;->b:F

    .line 93
    .line 94
    iget v9, v9, Lo71;->a:F

    .line 95
    .line 96
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    mul-float/2addr v9, v12

    .line 101
    invoke-static {v11}, Lbb;->a(F)Lab;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    iget v11, v11, Lab;->a:F

    .line 106
    .line 107
    mul-float/2addr v9, v11

    .line 108
    add-float/2addr v9, v10

    .line 109
    invoke-virtual {v8, v7, v9}, Lbf;->e(IF)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v6}, Lnt1;->X(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v5

    .line 119
    :cond_3
    if-eqz v8, :cond_4

    .line 120
    .line 121
    invoke-interface {v1, v8}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_4
    invoke-static {v6}, Lnt1;->X(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v5

    .line 130
    :cond_5
    invoke-static {v6}, Lnt1;->X(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v5

    .line 134
    :cond_6
    iget-object v0, v0, Lrn0;->g:Ljava/lang/Object;

    .line 135
    .line 136
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrn0;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()Le34;
    .locals 0

    .line 1
    iget-object p0, p0, Lrn0;->b:Le34;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrn0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(J)Lbf;
    .locals 2

    .line 1
    invoke-interface {p0, p1, p2}, Lre;->g(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lrn0;->d:Lbf;

    .line 8
    .line 9
    iget-object v1, p0, Lrn0;->e:Lbf;

    .line 10
    .line 11
    iget-object p0, p0, Lrn0;->a:Lqd1;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0, v1}, Lqd1;->A(JLbf;Lbf;)Lbf;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p0, Lrn0;->f:Lbf;

    .line 19
    .line 20
    return-object p0
.end method
