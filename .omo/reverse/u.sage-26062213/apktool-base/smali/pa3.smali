.class public final Lpa3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:F

.field public final c:F

.field public final d:La42;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/AbstractList;FF)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lpa3;->a:Ljava/util/List;

    .line 12
    .line 13
    move/from16 v2, p2

    .line 14
    .line 15
    iput v2, v0, Lpa3;->b:F

    .line 16
    .line 17
    move/from16 v2, p3

    .line 18
    .line 19
    iput v2, v0, Lpa3;->c:F

    .line 20
    .line 21
    invoke-static {}, Ltv4;->p()La42;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    if-lez v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lw41;

    .line 41
    .line 42
    iget-object v3, v3, Lw41;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, v4, :cond_0

    .line 49
    .line 50
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lw41;

    .line 55
    .line 56
    iget-object v3, v3, Lw41;->a:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcl0;

    .line 63
    .line 64
    const/high16 v9, 0x3f000000    # 0.5f

    .line 65
    .line 66
    invoke-virtual {v3, v9}, Lcl0;->d(F)Ljs2;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v9, v3, Ljs2;->n:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v9, Lcl0;

    .line 73
    .line 74
    iget-object v3, v3, Ljs2;->o:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lcl0;

    .line 77
    .line 78
    new-array v10, v5, [Lcl0;

    .line 79
    .line 80
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Lw41;

    .line 85
    .line 86
    iget-object v11, v11, Lw41;->a:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    aput-object v11, v10, v7

    .line 93
    .line 94
    aput-object v9, v10, v6

    .line 95
    .line 96
    invoke-static {v10}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    new-array v10, v5, [Lcl0;

    .line 101
    .line 102
    aput-object v3, v10, v7

    .line 103
    .line 104
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Lw41;

    .line 109
    .line 110
    iget-object v3, v3, Lw41;->a:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    aput-object v3, v10, v6

    .line 117
    .line 118
    invoke-static {v10}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move-object v3, v8

    .line 124
    move-object v9, v3

    .line 125
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-ltz v1, :cond_9

    .line 130
    .line 131
    move v10, v7

    .line 132
    move-object v11, v8

    .line 133
    move-object v12, v11

    .line 134
    :goto_1
    if-nez v10, :cond_1

    .line 135
    .line 136
    if-eqz v3, :cond_1

    .line 137
    .line 138
    move-object v13, v3

    .line 139
    goto :goto_2

    .line 140
    :cond_1
    iget-object v13, v0, Lpa3;->a:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-ne v10, v13, :cond_3

    .line 147
    .line 148
    if-nez v9, :cond_2

    .line 149
    .line 150
    move/from16 p2, v4

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_2
    move-object v13, v9

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    iget-object v13, v0, Lpa3;->a:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    check-cast v13, Lw41;

    .line 162
    .line 163
    iget-object v13, v13, Lw41;->a:Ljava/util/List;

    .line 164
    .line 165
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    move v15, v7

    .line 170
    :goto_3
    if-ge v15, v14, :cond_8

    .line 171
    .line 172
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v16

    .line 176
    check-cast v16, Lcl0;

    .line 177
    .line 178
    invoke-virtual/range {v16 .. v16}, Lcl0;->f()Z

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    if-nez v17, :cond_6

    .line 183
    .line 184
    if-eqz v12, :cond_4

    .line 185
    .line 186
    invoke-virtual {v2, v12}, La42;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_4
    move/from16 p2, v4

    .line 190
    .line 191
    if-nez v11, :cond_5

    .line 192
    .line 193
    move-object/from16 v11, v16

    .line 194
    .line 195
    move-object v12, v11

    .line 196
    goto :goto_4

    .line 197
    :cond_5
    move-object/from16 v12, v16

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    move/from16 p2, v4

    .line 201
    .line 202
    if-eqz v12, :cond_7

    .line 203
    .line 204
    iget-object v4, v12, Lcl0;->a:[F

    .line 205
    .line 206
    const/16 v17, 0x6

    .line 207
    .line 208
    invoke-virtual/range {v16 .. v16}, Lcl0;->a()F

    .line 209
    .line 210
    .line 211
    move-result v18

    .line 212
    aput v18, v4, v17

    .line 213
    .line 214
    const/16 v17, 0x7

    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Lcl0;->b()F

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    aput v16, v4, v17

    .line 221
    .line 222
    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 223
    .line 224
    move/from16 v4, p2

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_8
    move/from16 p2, v4

    .line 228
    .line 229
    if-eq v10, v1, :cond_a

    .line 230
    .line 231
    add-int/lit8 v10, v10, 0x1

    .line 232
    .line 233
    move/from16 v4, p2

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_9
    move/from16 p2, v4

    .line 237
    .line 238
    move-object v11, v8

    .line 239
    move-object v12, v11

    .line 240
    :cond_a
    :goto_5
    if-eqz v12, :cond_b

    .line 241
    .line 242
    if-eqz v11, :cond_b

    .line 243
    .line 244
    iget-object v1, v12, Lcl0;->a:[F

    .line 245
    .line 246
    aget v12, v1, v7

    .line 247
    .line 248
    aget v13, v1, v6

    .line 249
    .line 250
    aget v14, v1, v5

    .line 251
    .line 252
    aget v15, v1, p2

    .line 253
    .line 254
    const/4 v3, 0x4

    .line 255
    aget v16, v1, v3

    .line 256
    .line 257
    const/4 v3, 0x5

    .line 258
    aget v17, v1, v3

    .line 259
    .line 260
    iget-object v1, v11, Lcl0;->a:[F

    .line 261
    .line 262
    aget v18, v1, v7

    .line 263
    .line 264
    aget v19, v1, v6

    .line 265
    .line 266
    invoke-static/range {v12 .. v19}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v2, v1}, La42;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    :cond_b
    invoke-static {v2}, Ltv4;->l(La42;)La42;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v1, v0, Lpa3;->d:La42;

    .line 278
    .line 279
    invoke-virtual {v1}, La42;->a()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    sub-int/2addr v2, v6

    .line 284
    invoke-virtual {v1, v2}, La42;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1}, La42;->a()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    move v3, v7

    .line 293
    :goto_6
    if-ge v3, v1, :cond_d

    .line 294
    .line 295
    iget-object v4, v0, Lpa3;->d:La42;

    .line 296
    .line 297
    invoke-virtual {v4, v3}, La42;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcl0;

    .line 302
    .line 303
    iget-object v5, v4, Lcl0;->a:[F

    .line 304
    .line 305
    aget v5, v5, v7

    .line 306
    .line 307
    check-cast v2, Lcl0;

    .line 308
    .line 309
    invoke-virtual {v2}, Lcl0;->a()F

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    sub-float/2addr v5, v9

    .line 314
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    const v9, 0x38d1b717    # 1.0E-4f

    .line 319
    .line 320
    .line 321
    cmpl-float v5, v5, v9

    .line 322
    .line 323
    if-gtz v5, :cond_c

    .line 324
    .line 325
    iget-object v5, v4, Lcl0;->a:[F

    .line 326
    .line 327
    aget v5, v5, v6

    .line 328
    .line 329
    invoke-virtual {v2}, Lcl0;->b()F

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    sub-float/2addr v5, v2

    .line 334
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    cmpl-float v2, v2, v9

    .line 339
    .line 340
    if-gtz v2, :cond_c

    .line 341
    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 343
    .line 344
    move-object v2, v4

    .line 345
    goto :goto_6

    .line 346
    :cond_c
    const-string v0, "RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics"

    .line 347
    .line 348
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v8

    .line 352
    :cond_d
    return-void
.end method

.method public static a(Lpa3;[FI)[F
    .locals 17

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/lit8 v1, p2, 0x1

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-array v1, v2, [F

    .line 8
    .line 9
    :goto_0
    move-object/from16 v3, p0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    move-object/from16 v1, p1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :goto_1
    iget-object v3, v3, Lpa3;->d:La42;

    .line 16
    .line 17
    array-length v4, v1

    .line 18
    if-lt v4, v2, :cond_3

    .line 19
    .line 20
    invoke-virtual {v3}, Lp1;->a()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move v8, v6

    .line 30
    move v9, v8

    .line 31
    move v10, v7

    .line 32
    move v6, v5

    .line 33
    :goto_2
    const/4 v11, 0x2

    .line 34
    const/4 v12, 0x3

    .line 35
    if-ge v10, v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v3, v10}, La42;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    check-cast v13, Lcl0;

    .line 42
    .line 43
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v13}, Lcl0;->f()Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    iget-object v15, v13, Lcl0;->a:[F

    .line 51
    .line 52
    if-eqz v14, :cond_1

    .line 53
    .line 54
    aget v13, v15, v7

    .line 55
    .line 56
    aput v13, v1, v7

    .line 57
    .line 58
    aget v13, v15, v0

    .line 59
    .line 60
    aput v13, v1, v0

    .line 61
    .line 62
    aget v13, v15, v7

    .line 63
    .line 64
    aput v13, v1, v11

    .line 65
    .line 66
    aget v13, v15, v0

    .line 67
    .line 68
    aput v13, v1, v12

    .line 69
    .line 70
    move/from16 v16, v0

    .line 71
    .line 72
    move/from16 p2, v2

    .line 73
    .line 74
    move/from16 p0, v7

    .line 75
    .line 76
    move/from16 p1, v11

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_1
    aget v14, v15, v7

    .line 80
    .line 81
    move/from16 v16, v0

    .line 82
    .line 83
    invoke-virtual {v13}, Lcl0;->a()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    aget v14, v15, v16

    .line 92
    .line 93
    move/from16 p2, v2

    .line 94
    .line 95
    invoke-virtual {v13}, Lcl0;->b()F

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    aget v14, v15, v7

    .line 104
    .line 105
    move/from16 p0, v7

    .line 106
    .line 107
    invoke-virtual {v13}, Lcl0;->a()F

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    aget v14, v15, v16

    .line 116
    .line 117
    invoke-virtual {v13}, Lcl0;->b()F

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    aget v14, v15, v11

    .line 126
    .line 127
    move/from16 p1, v11

    .line 128
    .line 129
    aget v11, v15, p2

    .line 130
    .line 131
    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    aput v0, v1, p0

    .line 140
    .line 141
    aget v0, v15, v12

    .line 142
    .line 143
    const/4 v11, 0x5

    .line 144
    aget v14, v15, v11

    .line 145
    .line 146
    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    aput v0, v1, v16

    .line 155
    .line 156
    aget v0, v15, p1

    .line 157
    .line 158
    aget v2, v15, p2

    .line 159
    .line 160
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    aput v0, v1, p1

    .line 169
    .line 170
    aget v0, v15, v12

    .line 171
    .line 172
    aget v2, v15, v11

    .line 173
    .line 174
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    aput v0, v1, v12

    .line 183
    .line 184
    :goto_3
    aget v0, v1, p0

    .line 185
    .line 186
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    aget v0, v1, v16

    .line 191
    .line 192
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    aget v0, v1, p1

    .line 197
    .line 198
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    aget v0, v1, v12

    .line 203
    .line 204
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    add-int/lit8 v10, v10, 0x1

    .line 209
    .line 210
    move/from16 v7, p0

    .line 211
    .line 212
    move/from16 v2, p2

    .line 213
    .line 214
    move/from16 v0, v16

    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :cond_2
    move/from16 v16, v0

    .line 219
    .line 220
    move/from16 p0, v7

    .line 221
    .line 222
    move/from16 p1, v11

    .line 223
    .line 224
    aput v8, v1, p0

    .line 225
    .line 226
    aput v9, v1, v16

    .line 227
    .line 228
    aput v5, v1, p1

    .line 229
    .line 230
    aput v6, v1, v12

    .line 231
    .line 232
    return-object v1

    .line 233
    :cond_3
    const-string v0, "Required bounds size of 4"

    .line 234
    .line 235
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const/4 v0, 0x0

    .line 239
    return-object v0
.end method


# virtual methods
.method public final b()Lpa3;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-static {p0, v0, v1}, Lpa3;->a(Lpa3;[FI)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x2

    .line 8
    aget v2, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aget v4, v0, v3

    .line 12
    .line 13
    sub-float/2addr v2, v4

    .line 14
    aget v1, v0, v1

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    aget v5, v0, v4

    .line 18
    .line 19
    sub-float/2addr v1, v5

    .line 20
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sub-float v2, v5, v2

    .line 25
    .line 26
    const/high16 v6, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v2, v6

    .line 29
    aget v3, v0, v3

    .line 30
    .line 31
    sub-float/2addr v2, v3

    .line 32
    sub-float v1, v5, v1

    .line 33
    .line 34
    div-float/2addr v1, v6

    .line 35
    aget v0, v0, v4

    .line 36
    .line 37
    sub-float/2addr v1, v0

    .line 38
    new-instance v0, Ls40;

    .line 39
    .line 40
    invoke-direct {v0, v2, v5, v1}, Ls40;-><init>(FFF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lpa3;->c(Luv2;)Lpa3;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final c(Luv2;)Lpa3;
    .locals 6

    .line 1
    iget v0, p0, Lpa3;->b:F

    .line 2
    .line 3
    iget v1, p0, Lpa3;->c:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Lv71;->a(FF)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1, p1}, Lix;->X(JLuv2;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {}, Ltv4;->p()La42;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p0, p0, Lpa3;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lw41;

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Lw41;->a(Luv2;)Lw41;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v2, v5}, La42;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v2}, Ltv4;->l(La42;)La42;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, v1}, Lix;->x(J)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {v0, v1}, Lix;->y(J)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-instance v1, Lpa3;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1, v0}, Lpa3;-><init>(Ljava/util/AbstractList;FF)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lpa3;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lpa3;

    .line 12
    .line 13
    iget-object p1, p1, Lpa3;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object p0, p0, Lpa3;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpa3;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[RoundedPolygon. Cubics = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/16 v7, 0x3f

    .line 10
    .line 11
    iget-object v2, p0, Lpa3;->d:La42;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " || Features = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lpa3;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-static/range {v2 .. v7}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " || Center = ("

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lpa3;->b:F

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget p0, p0, Lpa3;->c:F

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ")]"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
