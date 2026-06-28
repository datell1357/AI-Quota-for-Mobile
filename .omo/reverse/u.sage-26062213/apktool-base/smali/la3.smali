.class public final Lla3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:F

.field public final g:F

.field public final h:F

.field public i:J


# direct methods
.method public constructor <init>(JJJLbi0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lla3;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lla3;->b:J

    .line 7
    .line 8
    iput-wide p5, p0, Lla3;->c:J

    .line 9
    .line 10
    invoke-static {p1, p2, p3, p4}, Lix;->D(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    invoke-static {p1, p2}, Lix;->u(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lla3;->d:J

    .line 19
    .line 20
    invoke-static {p5, p6, p3, p4}, Lix;->D(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide p3

    .line 24
    invoke-static {p3, p4}, Lix;->u(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    iput-wide p3, p0, Lla3;->e:J

    .line 29
    .line 30
    iget p5, p7, Lbi0;->a:F

    .line 31
    .line 32
    iput p5, p0, Lla3;->f:F

    .line 33
    .line 34
    const/4 p6, 0x0

    .line 35
    iput p6, p0, Lla3;->g:F

    .line 36
    .line 37
    invoke-static {p1, p2, p3, p4}, Lix;->p(JJ)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget p2, Lk94;->b:F

    .line 42
    .line 43
    mul-float p2, p1, p1

    .line 44
    .line 45
    const/high16 p3, 0x3f800000    # 1.0f

    .line 46
    .line 47
    sub-float p2, p3, p2

    .line 48
    .line 49
    float-to-double v0, p2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    double-to-float p2, v0

    .line 55
    float-to-double v0, p2

    .line 56
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    cmpl-double p4, v0, v2

    .line 62
    .line 63
    if-lez p4, :cond_0

    .line 64
    .line 65
    add-float/2addr p1, p3

    .line 66
    mul-float/2addr p1, p5

    .line 67
    div-float/2addr p1, p2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move p1, p6

    .line 70
    :goto_0
    iput p1, p0, Lla3;->h:F

    .line 71
    .line 72
    invoke-static {p6, p6}, Lv71;->a(FF)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    iput-wide p1, p0, Lla3;->i:J

    .line 77
    .line 78
    return-void
.end method

.method public static b(FFJJJJJF)Lcl0;
    .locals 15

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v3, p4

    .line 6
    .line 7
    move-wide/from16 v5, p10

    .line 8
    .line 9
    invoke-static {v3, v4, v1, v2}, Lix;->D(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v7

    .line 13
    invoke-static {v7, v8}, Lix;->u(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    invoke-static {p0, v7, v8}, Lix;->V(FJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    const/high16 v11, 0x3f800000    # 1.0f

    .line 22
    .line 23
    add-float/2addr v11, v0

    .line 24
    invoke-static {v11, v9, v10}, Lix;->V(FJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v9

    .line 28
    invoke-static {v1, v2, v9, v10}, Lix;->K(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static/range {p6 .. p9}, Lix;->K(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    const/high16 v11, 0x40000000    # 2.0f

    .line 37
    .line 38
    invoke-static {v11, v9, v10}, Lix;->o(FJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    invoke-static/range {p6 .. p7}, Lix;->x(J)F

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    invoke-static {v9, v10}, Lix;->x(J)F

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    invoke-static {v12, v13, v0}, Lk94;->c(FFF)F

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    invoke-static/range {p6 .. p7}, Lix;->y(J)F

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    invoke-static {v9, v10}, Lix;->y(J)F

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    invoke-static {v13, v9, v0}, Lk94;->c(FFF)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v12, v0}, Lv71;->a(FF)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-static {v9, v10}, Lix;->x(J)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    sub-float/2addr v0, v12

    .line 79
    invoke-static {v9, v10}, Lix;->y(J)F

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    sub-float/2addr v9, v10

    .line 88
    invoke-static {v0, v9}, Lk94;->b(FF)J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    move/from16 v0, p12

    .line 93
    .line 94
    invoke-static {v0, v9, v10}, Lix;->V(FJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    invoke-static {v5, v6, v9, v10}, Lix;->K(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    invoke-static {v9, v10, v5, v6}, Lix;->D(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    neg-float v0, v0

    .line 111
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-static {v0, v5}, Lv71;->a(FF)J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    neg-float v0, v0

    .line 124
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {v0, v5}, Lv71;->a(FF)J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    invoke-static {v7, v8, v5, v6}, Lix;->p(JJ)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    const v13, 0x38d1b717    # 1.0E-4f

    .line 141
    .line 142
    .line 143
    cmpg-float v12, v12, v13

    .line 144
    .line 145
    if-gez v12, :cond_0

    .line 146
    .line 147
    :goto_0
    const/4 v14, 0x0

    .line 148
    goto :goto_1

    .line 149
    :cond_0
    move p0, v13

    .line 150
    invoke-static {v9, v10, v3, v4}, Lix;->D(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v13

    .line 154
    invoke-static {v13, v14, v5, v6}, Lix;->p(JJ)F

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    mul-float/2addr v12, p0

    .line 167
    cmpg-float v6, v6, v12

    .line 168
    .line 169
    if-gez v6, :cond_1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_1
    div-float/2addr v5, v0

    .line 173
    invoke-static {v5, v7, v8}, Lix;->V(FJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    invoke-static {v3, v4, v5, v6}, Lix;->K(JJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    new-instance v14, Lv71;

    .line 182
    .line 183
    invoke-direct {v14, v3, v4}, Lv71;-><init>(J)V

    .line 184
    .line 185
    .line 186
    :goto_1
    if-eqz v14, :cond_2

    .line 187
    .line 188
    iget-wide v3, v14, Lv71;->a:J

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_2
    move-wide/from16 v3, p6

    .line 192
    .line 193
    :goto_2
    invoke-static {v11, v3, v4}, Lix;->V(FJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    invoke-static {v1, v2, v5, v6}, Lix;->K(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v5

    .line 201
    const/high16 v0, 0x40400000    # 3.0f

    .line 202
    .line 203
    invoke-static {v0, v5, v6}, Lix;->o(FJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    new-instance v0, Lcl0;

    .line 208
    .line 209
    invoke-static {v1, v2}, Lix;->x(J)F

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-static {v1, v2}, Lix;->y(J)F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    invoke-static {v3, v4}, Lix;->x(J)F

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-static {v3, v4}, Lix;->y(J)F

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-static {v9, v10}, Lix;->x(J)F

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    invoke-static {v9, v10}, Lix;->y(J)F

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    const/16 v9, 0x8

    .line 242
    .line 243
    new-array v9, v9, [F

    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    aput v7, v9, v10

    .line 247
    .line 248
    const/4 v7, 0x1

    .line 249
    aput v1, v9, v7

    .line 250
    .line 251
    const/4 v1, 0x2

    .line 252
    aput v2, v9, v1

    .line 253
    .line 254
    const/4 v1, 0x3

    .line 255
    aput v5, v9, v1

    .line 256
    .line 257
    const/4 v1, 0x4

    .line 258
    aput v6, v9, v1

    .line 259
    .line 260
    const/4 v1, 0x5

    .line 261
    aput v3, v9, v1

    .line 262
    .line 263
    const/4 v1, 0x6

    .line 264
    aput v4, v9, v1

    .line 265
    .line 266
    const/4 v1, 0x7

    .line 267
    aput v8, v9, v1

    .line 268
    .line 269
    invoke-direct {v0, v9}, Lcl0;-><init>([F)V

    .line 270
    .line 271
    .line 272
    return-object v0
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lla3;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    iget v1, p0, Lla3;->g:F

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget v0, p0, Lla3;->h:F

    .line 13
    .line 14
    cmpl-float v2, p1, v0

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    sub-float/2addr p1, v0

    .line 19
    mul-float/2addr p1, v1

    .line 20
    invoke-virtual {p0}, Lla3;->c()F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-float/2addr p0, v0

    .line 25
    div-float/2addr p1, p0

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final c()F
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget v1, p0, Lla3;->g:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    iget p0, p0, Lla3;->h:F

    .line 7
    .line 8
    mul-float/2addr v0, p0

    .line 9
    return v0
.end method
