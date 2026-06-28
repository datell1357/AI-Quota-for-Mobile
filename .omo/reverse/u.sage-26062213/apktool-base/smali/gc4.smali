.class public final Lgc4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final k:Lgc4;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Lkt4;->s:[F

    .line 2
    .line 3
    invoke-static {}, Lkt4;->l0()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double/2addr v1, v3

    .line 14
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    div-double/2addr v1, v3

    .line 17
    double-to-float v1, v1

    .line 18
    sget-object v2, Lkt4;->q:[[F

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aget v6, v0, v5

    .line 22
    .line 23
    aget-object v7, v2, v5

    .line 24
    .line 25
    aget v8, v7, v5

    .line 26
    .line 27
    mul-float/2addr v8, v6

    .line 28
    const/4 v9, 0x1

    .line 29
    aget v10, v0, v9

    .line 30
    .line 31
    aget v11, v7, v9

    .line 32
    .line 33
    mul-float/2addr v11, v10

    .line 34
    add-float/2addr v11, v8

    .line 35
    const/4 v8, 0x2

    .line 36
    aget v12, v0, v8

    .line 37
    .line 38
    aget v7, v7, v8

    .line 39
    .line 40
    mul-float/2addr v7, v12

    .line 41
    add-float/2addr v7, v11

    .line 42
    aget-object v11, v2, v9

    .line 43
    .line 44
    aget v13, v11, v5

    .line 45
    .line 46
    mul-float/2addr v13, v6

    .line 47
    aget v14, v11, v9

    .line 48
    .line 49
    mul-float/2addr v14, v10

    .line 50
    add-float/2addr v14, v13

    .line 51
    aget v11, v11, v8

    .line 52
    .line 53
    mul-float/2addr v11, v12

    .line 54
    add-float/2addr v11, v14

    .line 55
    aget-object v2, v2, v8

    .line 56
    .line 57
    aget v13, v2, v5

    .line 58
    .line 59
    mul-float/2addr v6, v13

    .line 60
    aget v13, v2, v9

    .line 61
    .line 62
    mul-float/2addr v10, v13

    .line 63
    add-float/2addr v10, v6

    .line 64
    aget v2, v2, v8

    .line 65
    .line 66
    mul-float/2addr v12, v2

    .line 67
    add-float/2addr v12, v10

    .line 68
    neg-float v2, v1

    .line 69
    const/high16 v6, 0x42280000    # 42.0f

    .line 70
    .line 71
    sub-float/2addr v2, v6

    .line 72
    const/high16 v6, 0x42b80000    # 92.0f

    .line 73
    .line 74
    div-float/2addr v2, v6

    .line 75
    float-to-double v13, v2

    .line 76
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v13

    .line 80
    double-to-float v2, v13

    .line 81
    const v6, 0x3e8e38e4

    .line 82
    .line 83
    .line 84
    mul-float/2addr v2, v6

    .line 85
    const/high16 v6, 0x3f800000    # 1.0f

    .line 86
    .line 87
    sub-float v2, v6, v2

    .line 88
    .line 89
    const/high16 v19, 0x3f800000    # 1.0f

    .line 90
    .line 91
    mul-float v2, v2, v19

    .line 92
    .line 93
    float-to-double v13, v2

    .line 94
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 95
    .line 96
    cmpl-double v10, v13, v15

    .line 97
    .line 98
    if-lez v10, :cond_0

    .line 99
    .line 100
    move v2, v6

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const-wide/16 v15, 0x0

    .line 103
    .line 104
    cmpg-double v10, v13, v15

    .line 105
    .line 106
    if-gez v10, :cond_1

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    :cond_1
    :goto_0
    const/high16 v10, 0x42c80000    # 100.0f

    .line 110
    .line 111
    div-float v13, v10, v7

    .line 112
    .line 113
    mul-float/2addr v13, v2

    .line 114
    add-float/2addr v13, v6

    .line 115
    sub-float/2addr v13, v2

    .line 116
    div-float v14, v10, v11

    .line 117
    .line 118
    mul-float/2addr v14, v2

    .line 119
    add-float/2addr v14, v6

    .line 120
    sub-float/2addr v14, v2

    .line 121
    div-float/2addr v10, v12

    .line 122
    mul-float/2addr v10, v2

    .line 123
    add-float/2addr v10, v6

    .line 124
    sub-float/2addr v10, v2

    .line 125
    const/4 v2, 0x3

    .line 126
    new-array v15, v2, [F

    .line 127
    .line 128
    aput v13, v15, v5

    .line 129
    .line 130
    aput v14, v15, v9

    .line 131
    .line 132
    aput v10, v15, v8

    .line 133
    .line 134
    const/high16 v10, 0x40a00000    # 5.0f

    .line 135
    .line 136
    mul-float/2addr v10, v1

    .line 137
    add-float/2addr v10, v6

    .line 138
    div-float v10, v6, v10

    .line 139
    .line 140
    mul-float v13, v10, v10

    .line 141
    .line 142
    mul-float/2addr v13, v10

    .line 143
    mul-float/2addr v13, v10

    .line 144
    sub-float/2addr v6, v13

    .line 145
    mul-float/2addr v13, v1

    .line 146
    const v10, 0x3dcccccd    # 0.1f

    .line 147
    .line 148
    .line 149
    mul-float/2addr v10, v6

    .line 150
    mul-float/2addr v10, v6

    .line 151
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 152
    .line 153
    move-wide/from16 v20, v3

    .line 154
    .line 155
    float-to-double v3, v1

    .line 156
    mul-double v3, v3, v16

    .line 157
    .line 158
    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    double-to-float v1, v3

    .line 163
    mul-float/2addr v10, v1

    .line 164
    add-float/2addr v10, v13

    .line 165
    invoke-static {}, Lkt4;->l0()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    aget v0, v0, v9

    .line 170
    .line 171
    div-float v14, v1, v0

    .line 172
    .line 173
    float-to-double v0, v14

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    double-to-float v3, v3

    .line 179
    const v4, 0x3fbd70a4    # 1.48f

    .line 180
    .line 181
    .line 182
    add-float v23, v3, v4

    .line 183
    .line 184
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    double-to-float v0, v0

    .line 194
    const v1, 0x3f39999a    # 0.725f

    .line 195
    .line 196
    .line 197
    div-float v16, v1, v0

    .line 198
    .line 199
    aget v0, v15, v5

    .line 200
    .line 201
    mul-float/2addr v0, v10

    .line 202
    mul-float/2addr v0, v7

    .line 203
    float-to-double v0, v0

    .line 204
    div-double v0, v0, v20

    .line 205
    .line 206
    const-wide v3, 0x3fdae147ae147ae1L    # 0.42

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    double-to-float v0, v0

    .line 216
    aget v1, v15, v9

    .line 217
    .line 218
    mul-float/2addr v1, v10

    .line 219
    mul-float/2addr v1, v11

    .line 220
    float-to-double v6, v1

    .line 221
    div-double v6, v6, v20

    .line 222
    .line 223
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 224
    .line 225
    .line 226
    move-result-wide v6

    .line 227
    double-to-float v1, v6

    .line 228
    aget v6, v15, v8

    .line 229
    .line 230
    mul-float/2addr v6, v10

    .line 231
    mul-float/2addr v6, v12

    .line 232
    float-to-double v6, v6

    .line 233
    div-double v6, v6, v20

    .line 234
    .line 235
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    double-to-float v3, v3

    .line 240
    new-array v4, v2, [F

    .line 241
    .line 242
    aput v0, v4, v5

    .line 243
    .line 244
    aput v1, v4, v9

    .line 245
    .line 246
    aput v3, v4, v8

    .line 247
    .line 248
    aget v0, v4, v5

    .line 249
    .line 250
    const/high16 v1, 0x43c80000    # 400.0f

    .line 251
    .line 252
    mul-float v3, v0, v1

    .line 253
    .line 254
    const v6, 0x41d90a3d    # 27.13f

    .line 255
    .line 256
    .line 257
    add-float/2addr v0, v6

    .line 258
    div-float/2addr v3, v0

    .line 259
    aget v0, v4, v9

    .line 260
    .line 261
    mul-float v7, v0, v1

    .line 262
    .line 263
    add-float/2addr v0, v6

    .line 264
    div-float/2addr v7, v0

    .line 265
    aget v0, v4, v8

    .line 266
    .line 267
    mul-float/2addr v1, v0

    .line 268
    add-float/2addr v0, v6

    .line 269
    div-float/2addr v1, v0

    .line 270
    new-array v0, v2, [F

    .line 271
    .line 272
    aput v3, v0, v5

    .line 273
    .line 274
    aput v7, v0, v9

    .line 275
    .line 276
    aput v1, v0, v8

    .line 277
    .line 278
    const/high16 v1, 0x40000000    # 2.0f

    .line 279
    .line 280
    aget v2, v0, v5

    .line 281
    .line 282
    mul-float/2addr v2, v1

    .line 283
    aget v1, v0, v9

    .line 284
    .line 285
    add-float/2addr v2, v1

    .line 286
    const v1, 0x3d4ccccd    # 0.05f

    .line 287
    .line 288
    .line 289
    aget v0, v0, v8

    .line 290
    .line 291
    mul-float/2addr v0, v1

    .line 292
    add-float/2addr v0, v2

    .line 293
    mul-float v0, v0, v16

    .line 294
    .line 295
    new-instance v13, Lgc4;

    .line 296
    .line 297
    float-to-double v1, v10

    .line 298
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 299
    .line 300
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 301
    .line 302
    .line 303
    move-result-wide v1

    .line 304
    double-to-float v1, v1

    .line 305
    const v18, 0x3f30a3d7    # 0.69f

    .line 306
    .line 307
    .line 308
    move/from16 v17, v16

    .line 309
    .line 310
    move/from16 v22, v1

    .line 311
    .line 312
    move/from16 v21, v10

    .line 313
    .line 314
    move-object/from16 v20, v15

    .line 315
    .line 316
    move v15, v0

    .line 317
    invoke-direct/range {v13 .. v23}, Lgc4;-><init>(FFFFFF[FFFF)V

    .line 318
    .line 319
    .line 320
    sput-object v13, Lgc4;->k:Lgc4;

    .line 321
    .line 322
    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lgc4;->f:F

    .line 5
    .line 6
    iput p2, p0, Lgc4;->a:F

    .line 7
    .line 8
    iput p3, p0, Lgc4;->b:F

    .line 9
    .line 10
    iput p4, p0, Lgc4;->c:F

    .line 11
    .line 12
    iput p5, p0, Lgc4;->d:F

    .line 13
    .line 14
    iput p6, p0, Lgc4;->e:F

    .line 15
    .line 16
    iput-object p7, p0, Lgc4;->g:[F

    .line 17
    .line 18
    iput p8, p0, Lgc4;->h:F

    .line 19
    .line 20
    iput p9, p0, Lgc4;->i:F

    .line 21
    .line 22
    iput p10, p0, Lgc4;->j:F

    .line 23
    .line 24
    return-void
.end method
