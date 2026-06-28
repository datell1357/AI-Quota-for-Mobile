.class public final Lzh1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public A:Z

.field public B:Landroid/graphics/RectF;

.field public final a:Lbi1;

.field public b:Las0;

.field public c:Lhy1;

.field public d:Lpe1;

.field public final e:Lc8;

.field public f:Landroid/graphics/Outline;

.field public g:Z

.field public h:J

.field public i:J

.field public j:F

.field public k:Lfl4;

.field public l:Lsb;

.field public m:Lsb;

.field public n:Z

.field public o:Lx20;

.field public p:Llb;

.field public q:I

.field public final r:Lic;

.field public s:Z

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "robolectric"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lbi1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzh1;->a:Lbi1;

    .line 5
    .line 6
    sget-object v0, Lc75;->d:Lds0;

    .line 7
    .line 8
    iput-object v0, p0, Lzh1;->b:Las0;

    .line 9
    .line 10
    sget-object v0, Lhy1;->n:Lhy1;

    .line 11
    .line 12
    iput-object v0, p0, Lzh1;->c:Lhy1;

    .line 13
    .line 14
    sget-object v0, Ll9;->N:Ll9;

    .line 15
    .line 16
    iput-object v0, p0, Lzh1;->d:Lpe1;

    .line 17
    .line 18
    new-instance v0, Lc8;

    .line 19
    .line 20
    const/16 v1, 0xe

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lzh1;->e:Lc8;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lzh1;->g:Z

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p0, Lzh1;->h:J

    .line 33
    .line 34
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v2, p0, Lzh1;->i:J

    .line 40
    .line 41
    new-instance v4, Lic;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, p0, Lzh1;->r:Lic;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-interface {p1, v4}, Lbi1;->w(Z)V

    .line 50
    .line 51
    .line 52
    iput-wide v0, p0, Lzh1;->t:J

    .line 53
    .line 54
    iput-wide v0, p0, Lzh1;->u:J

    .line 55
    .line 56
    iput-wide v2, p0, Lzh1;->z:J

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lzh1;->g:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_10

    .line 7
    .line 8
    iget-boolean v1, v0, Lzh1;->A:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, v0, Lzh1;->a:Lbi1;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v4}, Lbi1;->J()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v5, 0x0

    .line 20
    cmpl-float v1, v1, v5

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v4, v2}, Lbi1;->w(Z)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    invoke-interface {v4, v3, v5, v6}, Lbi1;->n(Landroid/graphics/Outline;J)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v1, v0, Lzh1;->l:Lsb;

    .line 36
    .line 37
    const-wide v5, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-eqz v1, :cond_d

    .line 45
    .line 46
    iget-object v8, v0, Lzh1;->B:Landroid/graphics/RectF;

    .line 47
    .line 48
    if-nez v8, :cond_2

    .line 49
    .line 50
    new-instance v8, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v8, v0, Lzh1;->B:Landroid/graphics/RectF;

    .line 56
    .line 57
    :cond_2
    instance-of v9, v1, Lsb;

    .line 58
    .line 59
    const-string v10, "Unable to obtain android.graphics.Path"

    .line 60
    .line 61
    if-eqz v9, :cond_c

    .line 62
    .line 63
    iget-object v11, v1, Lsb;->a:Landroid/graphics/Path;

    .line 64
    .line 65
    invoke-virtual {v11, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 66
    .line 67
    .line 68
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v13, 0x1c

    .line 71
    .line 72
    const/4 v14, 0x1

    .line 73
    if-gt v12, v13, :cond_5

    .line 74
    .line 75
    invoke-virtual {v11}, Landroid/graphics/Path;->isConvex()Z

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-eqz v13, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v9, v0, Lzh1;->f:Landroid/graphics/Outline;

    .line 83
    .line 84
    if-eqz v9, :cond_4

    .line 85
    .line 86
    invoke-virtual {v9}, Landroid/graphics/Outline;->setEmpty()V

    .line 87
    .line 88
    .line 89
    :cond_4
    iput-boolean v14, v0, Lzh1;->n:Z

    .line 90
    .line 91
    move-object v13, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_1
    iget-object v13, v0, Lzh1;->f:Landroid/graphics/Outline;

    .line 94
    .line 95
    if-nez v13, :cond_6

    .line 96
    .line 97
    new-instance v13, Landroid/graphics/Outline;

    .line 98
    .line 99
    invoke-direct {v13}, Landroid/graphics/Outline;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v13, v0, Lzh1;->f:Landroid/graphics/Outline;

    .line 103
    .line 104
    :cond_6
    const/16 v15, 0x1e

    .line 105
    .line 106
    if-lt v12, v15, :cond_8

    .line 107
    .line 108
    if-eqz v9, :cond_7

    .line 109
    .line 110
    invoke-static {v13, v11}, La3;->m(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    invoke-static {v10}, Lp61;->s(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_8
    if-eqz v9, :cond_b

    .line 119
    .line 120
    invoke-virtual {v13, v11}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget v9, v0, Lzh1;->v:I

    .line 124
    .line 125
    iget v10, v0, Lzh1;->w:I

    .line 126
    .line 127
    invoke-virtual {v13, v9, v10}, Landroid/graphics/Outline;->offset(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13}, Landroid/graphics/Outline;->canClip()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    xor-int/2addr v9, v14

    .line 135
    iput-boolean v9, v0, Lzh1;->n:Z

    .line 136
    .line 137
    :goto_3
    iput-object v1, v0, Lzh1;->l:Lsb;

    .line 138
    .line 139
    if-eqz v13, :cond_9

    .line 140
    .line 141
    invoke-interface {v4}, Lbi1;->c()F

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v13, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 146
    .line 147
    .line 148
    move-object v3, v13

    .line 149
    :cond_9
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    int-to-long v9, v1

    .line 166
    shl-long/2addr v9, v7

    .line 167
    int-to-long v7, v8

    .line 168
    and-long/2addr v5, v7

    .line 169
    or-long/2addr v5, v9

    .line 170
    invoke-interface {v4, v3, v5, v6}, Lbi1;->n(Landroid/graphics/Outline;J)V

    .line 171
    .line 172
    .line 173
    iget-boolean v1, v0, Lzh1;->n:Z

    .line 174
    .line 175
    if-eqz v1, :cond_a

    .line 176
    .line 177
    iget-boolean v1, v0, Lzh1;->A:Z

    .line 178
    .line 179
    if-eqz v1, :cond_a

    .line 180
    .line 181
    invoke-interface {v4, v2}, Lbi1;->w(Z)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v4}, Lbi1;->s()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_a
    iget-boolean v1, v0, Lzh1;->A:Z

    .line 190
    .line 191
    invoke-interface {v4, v1}, Lbi1;->w(Z)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_b
    invoke-static {v10}, Lp61;->s(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_c
    invoke-static {v10}, Lp61;->s(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_d
    iget-boolean v1, v0, Lzh1;->A:Z

    .line 205
    .line 206
    invoke-interface {v4, v1}, Lbi1;->w(Z)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lzh1;->f:Landroid/graphics/Outline;

    .line 210
    .line 211
    if-nez v1, :cond_e

    .line 212
    .line 213
    new-instance v1, Landroid/graphics/Outline;

    .line 214
    .line 215
    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v1, v0, Lzh1;->f:Landroid/graphics/Outline;

    .line 219
    .line 220
    :cond_e
    move-object v8, v1

    .line 221
    iget-wide v9, v0, Lzh1;->u:J

    .line 222
    .line 223
    invoke-static {v9, v10}, Lse0;->H(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v9

    .line 227
    iget-wide v11, v0, Lzh1;->h:J

    .line 228
    .line 229
    iget-wide v13, v0, Lzh1;->i:J

    .line 230
    .line 231
    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    cmp-long v1, v13, v15

    .line 237
    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_f
    move-wide v9, v13

    .line 242
    :goto_4
    shr-long v13, v11, v7

    .line 243
    .line 244
    long-to-int v1, v13

    .line 245
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    and-long/2addr v11, v5

    .line 254
    long-to-int v11, v11

    .line 255
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    shr-long v13, v9, v7

    .line 268
    .line 269
    long-to-int v14, v13

    .line 270
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    add-float/2addr v13, v1

    .line 275
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    and-long/2addr v9, v5

    .line 284
    long-to-int v15, v9

    .line 285
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    add-float/2addr v9, v11

    .line 290
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    iget v13, v0, Lzh1;->j:F

    .line 295
    .line 296
    move v11, v1

    .line 297
    move v10, v12

    .line 298
    move v12, v9

    .line 299
    move v9, v3

    .line 300
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v4}, Lbi1;->c()F

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v8, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 308
    .line 309
    .line 310
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    int-to-long v9, v1

    .line 327
    shl-long/2addr v9, v7

    .line 328
    int-to-long v11, v3

    .line 329
    and-long/2addr v5, v11

    .line 330
    or-long/2addr v5, v9

    .line 331
    invoke-interface {v4, v8, v5, v6}, Lbi1;->n(Landroid/graphics/Outline;J)V

    .line 332
    .line 333
    .line 334
    :cond_10
    :goto_5
    iput-boolean v2, v0, Lzh1;->g:Z

    .line 335
    .line 336
    return-void
.end method

.method public final b()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lzh1;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lzh1;->q:I

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lzh1;->r:Lic;

    .line 10
    .line 11
    iget-object v1, v0, Lic;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lzh1;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v2, v1, Lzh1;->q:I

    .line 18
    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    iput v2, v1, Lzh1;->q:I

    .line 22
    .line 23
    invoke-virtual {v1}, Lzh1;->b()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lic;->b:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    iget-object v0, v0, Lic;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Llg2;

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object v1, v0, Llg2;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v2, v0, Llg2;->a:[J

    .line 38
    .line 39
    array-length v3, v2

    .line 40
    add-int/lit8 v3, v3, -0x2

    .line 41
    .line 42
    if-ltz v3, :cond_4

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    :goto_0
    aget-wide v6, v2, v5

    .line 47
    .line 48
    not-long v8, v6

    .line 49
    const/4 v10, 0x7

    .line 50
    shl-long/2addr v8, v10

    .line 51
    and-long/2addr v8, v6

    .line 52
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v8, v10

    .line 58
    cmp-long v8, v8, v10

    .line 59
    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    sub-int v8, v5, v3

    .line 63
    .line 64
    not-int v8, v8

    .line 65
    ushr-int/lit8 v8, v8, 0x1f

    .line 66
    .line 67
    const/16 v9, 0x8

    .line 68
    .line 69
    rsub-int/lit8 v8, v8, 0x8

    .line 70
    .line 71
    move v10, v4

    .line 72
    :goto_1
    if-ge v10, v8, :cond_2

    .line 73
    .line 74
    const-wide/16 v11, 0xff

    .line 75
    .line 76
    and-long/2addr v11, v6

    .line 77
    const-wide/16 v13, 0x80

    .line 78
    .line 79
    cmp-long v11, v11, v13

    .line 80
    .line 81
    if-gez v11, :cond_1

    .line 82
    .line 83
    shl-int/lit8 v11, v5, 0x3

    .line 84
    .line 85
    add-int/2addr v11, v10

    .line 86
    aget-object v11, v1, v11

    .line 87
    .line 88
    check-cast v11, Lzh1;

    .line 89
    .line 90
    iget v12, v11, Lzh1;->q:I

    .line 91
    .line 92
    add-int/lit8 v12, v12, -0x1

    .line 93
    .line 94
    iput v12, v11, Lzh1;->q:I

    .line 95
    .line 96
    invoke-virtual {v11}, Lzh1;->b()V

    .line 97
    .line 98
    .line 99
    :cond_1
    shr-long/2addr v6, v9

    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-ne v8, v9, :cond_4

    .line 104
    .line 105
    :cond_3
    if-eq v5, v3, :cond_4

    .line 106
    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v0}, Llg2;->b()V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object p0, p0, Lzh1;->a:Lbi1;

    .line 114
    .line 115
    invoke-interface {p0}, Lbi1;->s()V

    .line 116
    .line 117
    .line 118
    :cond_6
    return-void
.end method

.method public final c(Lkx0;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lzh1;->r:Lic;

    .line 2
    .line 3
    iget-object v1, v0, Lic;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lzh1;

    .line 6
    .line 7
    iput-object v1, v0, Lic;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v1, v0, Lic;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Llg2;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Llg2;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v0, Lic;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Llg2;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    sget-object v2, Lud3;->a:Llg2;

    .line 28
    .line 29
    new-instance v2, Llg2;

    .line 30
    .line 31
    invoke-direct {v2}, Llg2;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lic;->e:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v2, v1}, Llg2;->j(Llg2;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Llg2;->b()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lic;->a:Z

    .line 44
    .line 45
    iget-object p0, p0, Lzh1;->d:Lpe1;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput-boolean p0, v0, Lic;->a:Z

    .line 52
    .line 53
    iget-object p1, v0, Lic;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lzh1;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget v1, p1, Lzh1;->q:I

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    iput v1, p1, Lzh1;->q:I

    .line 64
    .line 65
    invoke-virtual {p1}, Lzh1;->b()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, v0, Lic;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Llg2;

    .line 71
    .line 72
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Llg2;->h()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    iget-object v0, p1, Llg2;->b:[Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v1, p1, Llg2;->a:[J

    .line 83
    .line 84
    array-length v2, v1

    .line 85
    add-int/lit8 v2, v2, -0x2

    .line 86
    .line 87
    if-ltz v2, :cond_6

    .line 88
    .line 89
    move v3, p0

    .line 90
    :goto_0
    aget-wide v4, v1, v3

    .line 91
    .line 92
    not-long v6, v4

    .line 93
    const/4 v8, 0x7

    .line 94
    shl-long/2addr v6, v8

    .line 95
    and-long/2addr v6, v4

    .line 96
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    and-long/2addr v6, v8

    .line 102
    cmp-long v6, v6, v8

    .line 103
    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    sub-int v6, v3, v2

    .line 107
    .line 108
    not-int v6, v6

    .line 109
    ushr-int/lit8 v6, v6, 0x1f

    .line 110
    .line 111
    const/16 v7, 0x8

    .line 112
    .line 113
    rsub-int/lit8 v6, v6, 0x8

    .line 114
    .line 115
    move v8, p0

    .line 116
    :goto_1
    if-ge v8, v6, :cond_4

    .line 117
    .line 118
    const-wide/16 v9, 0xff

    .line 119
    .line 120
    and-long/2addr v9, v4

    .line 121
    const-wide/16 v11, 0x80

    .line 122
    .line 123
    cmp-long v9, v9, v11

    .line 124
    .line 125
    if-gez v9, :cond_3

    .line 126
    .line 127
    shl-int/lit8 v9, v3, 0x3

    .line 128
    .line 129
    add-int/2addr v9, v8

    .line 130
    aget-object v9, v0, v9

    .line 131
    .line 132
    check-cast v9, Lzh1;

    .line 133
    .line 134
    iget v10, v9, Lzh1;->q:I

    .line 135
    .line 136
    add-int/lit8 v10, v10, -0x1

    .line 137
    .line 138
    iput v10, v9, Lzh1;->q:I

    .line 139
    .line 140
    invoke-virtual {v9}, Lzh1;->b()V

    .line 141
    .line 142
    .line 143
    :cond_3
    shr-long/2addr v4, v7

    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    if-ne v6, v7, :cond_6

    .line 148
    .line 149
    :cond_5
    if-eq v3, v2, :cond_6

    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {p1}, Llg2;->b()V

    .line 155
    .line 156
    .line 157
    :cond_7
    return-void
.end method

.method public final d()Lfl4;
    .locals 14

    .line 1
    iget-object v0, p0, Lzh1;->k:Lfl4;

    .line 2
    .line 3
    iget-object v1, p0, Lzh1;->l:Lsb;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-instance v0, Lkr2;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkr2;-><init>(Lsb;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lzh1;->k:Lfl4;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-wide v0, p0, Lzh1;->u:J

    .line 19
    .line 20
    invoke-static {v0, v1}, Lse0;->H(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lzh1;->h:J

    .line 25
    .line 26
    iget-wide v4, p0, Lzh1;->i:J

    .line 27
    .line 28
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long v6, v4, v6

    .line 34
    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-wide v0, v4

    .line 39
    :goto_0
    const/16 v4, 0x20

    .line 40
    .line 41
    shr-long v5, v2, v4

    .line 42
    .line 43
    long-to-int v5, v5

    .line 44
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-wide v7, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v2, v7

    .line 54
    long-to-int v2, v2

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    shr-long v9, v0, v4

    .line 60
    .line 61
    long-to-int v3, v9

    .line 62
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-float/2addr v3, v6

    .line 67
    and-long/2addr v0, v7

    .line 68
    long-to-int v0, v0

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-float v9, v0, v2

    .line 74
    .line 75
    iget v0, p0, Lzh1;->j:F

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    cmpl-float v1, v0, v1

    .line 79
    .line 80
    if-lez v1, :cond_3

    .line 81
    .line 82
    new-instance v1, Lmr2;

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    int-to-long v10, v5

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v12, v0

    .line 94
    shl-long v4, v10, v4

    .line 95
    .line 96
    and-long/2addr v7, v12

    .line 97
    or-long v10, v4, v7

    .line 98
    .line 99
    move v7, v2

    .line 100
    move v8, v3

    .line 101
    invoke-static/range {v6 .. v11}, Lk30;->d(FFFFJ)Lka3;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v1, v0}, Lmr2;-><init>(Lka3;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move v7, v2

    .line 110
    move v8, v3

    .line 111
    new-instance v1, Llr2;

    .line 112
    .line 113
    new-instance v0, Ll33;

    .line 114
    .line 115
    invoke-direct {v0, v6, v7, v8, v9}, Ll33;-><init>(FFFF)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v0}, Llr2;-><init>(Ll33;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iput-object v1, p0, Lzh1;->k:Lfl4;

    .line 122
    .line 123
    return-object v1
.end method

.method public final e(JJF)V
    .locals 6

    .line 1
    iget v0, p0, Lzh1;->v:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lzh1;->w:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v2, v0

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    shl-long/2addr v2, v4

    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v4

    .line 26
    or-long/2addr v0, v2

    .line 27
    invoke-static {p1, p2, v0, v1}, Lgo2;->e(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iget-wide v0, p0, Lzh1;->h:J

    .line 32
    .line 33
    invoke-static {v0, v1, p1, p2}, Lgo2;->b(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-wide v0, p0, Lzh1;->i:J

    .line 40
    .line 41
    invoke-static {v0, v1, p3, p4}, Lmn3;->a(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget v0, p0, Lzh1;->j:F

    .line 48
    .line 49
    cmpg-float v0, v0, p5

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lzh1;->l:Lsb;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lzh1;->k:Lfl4;

    .line 61
    .line 62
    iput-object v0, p0, Lzh1;->l:Lsb;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lzh1;->g:Z

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lzh1;->n:Z

    .line 69
    .line 70
    iput-wide p1, p0, Lzh1;->h:J

    .line 71
    .line 72
    iput-wide p3, p0, Lzh1;->i:J

    .line 73
    .line 74
    iput p5, p0, Lzh1;->j:F

    .line 75
    .line 76
    invoke-virtual {p0}, Lzh1;->a()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
