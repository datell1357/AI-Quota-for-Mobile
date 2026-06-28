.class public final Lbe2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:J

.field public final b:Landroid/util/SparseLongArray;

.field public final c:Landroid/util/SparseBooleanArray;

.field public final d:Ljava/util/ArrayList;

.field public final e:Le82;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Lgo2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseLongArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lbe2;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Le82;

    .line 26
    .line 27
    invoke-direct {v0}, Le82;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lbe2;->e:Le82;

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lbe2;->f:I

    .line 34
    .line 35
    iput v0, p0, Lbe2;->g:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    iget-object v3, p0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    if-eq v0, v4, :cond_1

    .line 13
    .line 14
    const/16 v4, 0x9

    .line 15
    .line 16
    if-eq v0, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_2

    .line 29
    .line 30
    iget-wide v4, p0, Lbe2;->a:J

    .line 31
    .line 32
    add-long/2addr v1, v4

    .line 33
    iput-wide v1, p0, Lbe2;->a:J

    .line 34
    .line 35
    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3, v4}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_2

    .line 52
    .line 53
    iget-wide v5, p0, Lbe2;->a:J

    .line 54
    .line 55
    add-long/2addr v1, v5

    .line 56
    iput-wide v1, p0, Lbe2;->a:J

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x3

    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    iget-object p0, p0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, v4, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, p0, Lbe2;->f:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lbe2;->g:I

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    :goto_1
    iput v0, p0, Lbe2;->f:I

    .line 29
    .line 30
    iput p1, p0, Lbe2;->g:I

    .line 31
    .line 32
    iget-object p1, p0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;Lq9;)Lxh1;
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v6, 0x0

    .line 6
    iget-object v1, p0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v3, :cond_12

    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    if-eq v0, v4, :cond_12

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p1}, Lbe2;->b(Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p1}, Lbe2;->a(Landroid/view/MotionEvent;)V

    .line 19
    .line 20
    .line 21
    const/16 v4, 0x9

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    if-eq v0, v4, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x7

    .line 27
    if-eq v0, v4, :cond_1

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    if-ne v0, v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v9, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v9, v8

    .line 37
    :goto_1
    const/16 v4, 0x8

    .line 38
    .line 39
    if-ne v0, v4, :cond_2

    .line 40
    .line 41
    move v10, v8

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v10, v7

    .line 44
    :goto_2
    if-eqz v9, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v1, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    .line 56
    .line 57
    :cond_3
    if-eq v0, v8, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    :goto_3
    move v11, v0

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move v11, v7

    .line 71
    :goto_4
    iget-object v12, p0, Lbe2;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/16 v1, 0x22

    .line 81
    .line 82
    if-nez v0, :cond_b

    .line 83
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    if-lt v0, v1, :cond_7

    .line 87
    .line 88
    invoke-static {p1}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eq v0, v3, :cond_6

    .line 93
    .line 94
    invoke-static {p1}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v4, 0x5

    .line 99
    if-ne v0, v4, :cond_7

    .line 100
    .line 101
    :cond_6
    move v0, v8

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    move v0, v7

    .line 104
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_9

    .line 109
    .line 110
    const/16 v4, 0x2002

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_8

    .line 117
    .line 118
    const v4, 0x100008

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    :cond_8
    move v4, v8

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    move v4, v7

    .line 130
    :goto_6
    if-nez v0, :cond_a

    .line 131
    .line 132
    if-eqz v4, :cond_b

    .line 133
    .line 134
    :cond_a
    iput-boolean v8, p0, Lbe2;->h:Z

    .line 135
    .line 136
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .line 138
    if-lt v0, v1, :cond_d

    .line 139
    .line 140
    invoke-static {p1}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ne v0, v3, :cond_d

    .line 145
    .line 146
    iput-boolean v8, p0, Lbe2;->i:Z

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_c

    .line 153
    .line 154
    invoke-static {p1}, Lfi1;->a(Landroid/view/MotionEvent;)F

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-static {p1}, Lfi1;->t(Landroid/view/MotionEvent;)F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    int-to-long v3, v0

    .line 167
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v0, v0

    .line 172
    const/16 v5, 0x20

    .line 173
    .line 174
    shl-long/2addr v3, v5

    .line 175
    const-wide v9, 0xffffffffL

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    and-long/2addr v0, v9

    .line 181
    or-long/2addr v0, v3

    .line 182
    new-instance v3, Lgo2;

    .line 183
    .line 184
    invoke-direct {v3, v0, v1}, Lgo2;-><init>(J)V

    .line 185
    .line 186
    .line 187
    iput-object v3, p0, Lbe2;->j:Lgo2;

    .line 188
    .line 189
    :cond_c
    iget-object v3, p0, Lbe2;->j:Lgo2;

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v5, 0x0

    .line 193
    move-object v0, p0

    .line 194
    move-object v2, p1

    .line 195
    move-object/from16 v1, p2

    .line 196
    .line 197
    invoke-virtual/range {v0 .. v5}, Lbe2;->d(Lq9;Landroid/view/MotionEvent;Lgo2;IZ)Lbw2;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_d
    iput-boolean v7, p0, Lbe2;->i:Z

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    move v4, v7

    .line 212
    :goto_7
    if-ge v4, v13, :cond_10

    .line 213
    .line 214
    if-nez v9, :cond_f

    .line 215
    .line 216
    if-eq v4, v11, :cond_f

    .line 217
    .line 218
    if-eqz v10, :cond_e

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_f

    .line 225
    .line 226
    :cond_e
    move v5, v8

    .line 227
    goto :goto_8

    .line 228
    :cond_f
    move v5, v7

    .line 229
    :goto_8
    const/4 v3, 0x0

    .line 230
    move-object v0, p0

    .line 231
    move-object v2, p1

    .line 232
    move-object/from16 v1, p2

    .line 233
    .line 234
    invoke-virtual/range {v0 .. v5}, Lbe2;->d(Lq9;Landroid/view/MotionEvent;Lgo2;IZ)Lbw2;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_10
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-ne v1, v8, :cond_11

    .line 249
    .line 250
    iput-boolean v7, p0, Lbe2;->h:Z

    .line 251
    .line 252
    iput-boolean v7, p0, Lbe2;->i:Z

    .line 253
    .line 254
    iput-object v6, p0, Lbe2;->j:Lgo2;

    .line 255
    .line 256
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lbe2;->e(Landroid/view/MotionEvent;)V

    .line 257
    .line 258
    .line 259
    new-instance p0, Lxh1;

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, v12, p1}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    return-object p0

    .line 268
    :cond_12
    iget-object v2, p0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 274
    .line 275
    .line 276
    iput-boolean v7, p0, Lbe2;->h:Z

    .line 277
    .line 278
    iput-boolean v7, p0, Lbe2;->i:Z

    .line 279
    .line 280
    iput-object v6, p0, Lbe2;->j:Lgo2;

    .line 281
    .line 282
    return-object v6
.end method

.method public final d(Lq9;Landroid/view/MotionEvent;Lgo2;IZ)Lbw2;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v6, v0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 16
    .line 17
    invoke-virtual {v6, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    if-ltz v7, :cond_0

    .line 22
    .line 23
    invoke-virtual {v6, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    move-wide v12, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-wide v7, v0, Lbe2;->a:J

    .line 30
    .line 31
    const-wide/16 v9, 0x1

    .line 32
    .line 33
    add-long/2addr v9, v7

    .line 34
    iput-wide v9, v0, Lbe2;->a:J

    .line 35
    .line 36
    invoke-virtual {v6, v5, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 37
    .line 38
    .line 39
    move-wide v12, v7

    .line 40
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 41
    .line 42
    .line 43
    move-result v21

    .line 44
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    int-to-long v7, v5

    .line 57
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-long v5, v5

    .line 62
    const/16 v9, 0x20

    .line 63
    .line 64
    shl-long/2addr v7, v9

    .line 65
    const-wide v10, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v5, v10

    .line 71
    or-long/2addr v5, v7

    .line 72
    const/16 v7, 0x1d

    .line 73
    .line 74
    if-nez v4, :cond_2

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    iget-wide v14, v3, Lgo2;->a:J

    .line 79
    .line 80
    move v8, v9

    .line 81
    move-wide/from16 v16, v10

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    int-to-long v14, v3

    .line 97
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    move v8, v9

    .line 102
    move-wide/from16 v16, v10

    .line 103
    .line 104
    int-to-long v9, v3

    .line 105
    shl-long/2addr v14, v8

    .line 106
    and-long v9, v9, v16

    .line 107
    .line 108
    or-long/2addr v14, v9

    .line 109
    :goto_1
    invoke-virtual {v1, v14, v15}, Lq9;->J(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v9

    .line 113
    :goto_2
    move-wide/from16 v18, v9

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_2
    move v8, v9

    .line 117
    move-wide/from16 v16, v10

    .line 118
    .line 119
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    if-lt v9, v7, :cond_4

    .line 122
    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    iget-wide v9, v3, Lgo2;->a:J

    .line 126
    .line 127
    :goto_3
    move-wide v14, v9

    .line 128
    goto :goto_4

    .line 129
    :cond_3
    invoke-static {v2, v4}, Lfi1;->b(Landroid/view/MotionEvent;I)F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {v2, v4}, Lfi1;->u(Landroid/view/MotionEvent;I)F

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    int-to-long v10, v3

    .line 142
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    int-to-long v14, v3

    .line 147
    shl-long v9, v10, v8

    .line 148
    .line 149
    and-long v14, v14, v16

    .line 150
    .line 151
    or-long/2addr v9, v14

    .line 152
    goto :goto_3

    .line 153
    :goto_4
    invoke-virtual {v1, v14, v15}, Lq9;->J(J)J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {v1, v5, v6}, Lq9;->p(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v14

    .line 162
    move-wide/from16 v18, v5

    .line 163
    .line 164
    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const/4 v9, 0x3

    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    const/4 v10, 0x2

    .line 172
    const/4 v11, 0x1

    .line 173
    if-eq v1, v11, :cond_8

    .line 174
    .line 175
    if-eq v1, v10, :cond_7

    .line 176
    .line 177
    if-eq v1, v9, :cond_6

    .line 178
    .line 179
    const/4 v10, 0x4

    .line 180
    if-eq v1, v10, :cond_6

    .line 181
    .line 182
    :cond_5
    const/16 v22, 0x0

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_6
    :goto_6
    move/from16 v22, v10

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_7
    move/from16 v22, v9

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_8
    const/16 v1, 0x2002

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_9

    .line 198
    .line 199
    const v1, 0x100008

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    :cond_9
    iget-boolean v1, v0, Lbe2;->h:Z

    .line 209
    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    iget-boolean v1, v0, Lbe2;->i:Z

    .line 213
    .line 214
    if-eqz v1, :cond_a

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_a
    move/from16 v22, v11

    .line 218
    .line 219
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    move/from16 v20, v8

    .line 233
    .line 234
    const/4 v11, 0x0

    .line 235
    :goto_8
    const/16 v23, 0x0

    .line 236
    .line 237
    const-wide/16 v24, 0x0

    .line 238
    .line 239
    const/high16 v26, 0x3f800000    # 1.0f

    .line 240
    .line 241
    const/16 v27, 0x0

    .line 242
    .line 243
    if-ge v11, v10, :cond_f

    .line 244
    .line 245
    invoke-virtual {v2, v4, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 246
    .line 247
    .line 248
    move-result v28

    .line 249
    invoke-virtual {v2, v4, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 250
    .line 251
    .line 252
    move-result v29

    .line 253
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 254
    .line 255
    .line 256
    move-result v30

    .line 257
    const v31, 0x7fffffff

    .line 258
    .line 259
    .line 260
    and-int v3, v30, v31

    .line 261
    .line 262
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 263
    .line 264
    if-ge v3, v9, :cond_e

    .line 265
    .line 266
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    and-int v3, v3, v31

    .line 271
    .line 272
    if-ge v3, v9, :cond_e

    .line 273
    .line 274
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    int-to-long v7, v3

    .line 279
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    move/from16 v29, v10

    .line 284
    .line 285
    int-to-long v9, v3

    .line 286
    shl-long v7, v7, v20

    .line 287
    .line 288
    and-long v9, v9, v16

    .line 289
    .line 290
    or-long v35, v7, v9

    .line 291
    .line 292
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 293
    .line 294
    .line 295
    move-result-wide v33

    .line 296
    const/16 v3, 0x34

    .line 297
    .line 298
    invoke-virtual {v2, v3, v4, v11}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    cmpl-float v3, v3, v27

    .line 307
    .line 308
    if-lez v3, :cond_b

    .line 309
    .line 310
    move-object/from16 v23, v7

    .line 311
    .line 312
    :cond_b
    if-eqz v23, :cond_c

    .line 313
    .line 314
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    .line 315
    .line 316
    .line 317
    move-result v26

    .line 318
    :cond_c
    move/from16 v37, v26

    .line 319
    .line 320
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 321
    .line 322
    const/16 v9, 0x1d

    .line 323
    .line 324
    if-lt v3, v9, :cond_d

    .line 325
    .line 326
    invoke-static {v2}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    const/4 v7, 0x3

    .line 331
    if-ne v3, v7, :cond_d

    .line 332
    .line 333
    const/16 v3, 0x32

    .line 334
    .line 335
    invoke-virtual {v2, v3, v4, v11}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    const/16 v7, 0x33

    .line 340
    .line 341
    invoke-virtual {v2, v7, v4, v11}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    int-to-long v9, v3

    .line 350
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    int-to-long v7, v3

    .line 355
    shl-long v9, v9, v20

    .line 356
    .line 357
    and-long v7, v7, v16

    .line 358
    .line 359
    or-long v24, v9, v7

    .line 360
    .line 361
    :cond_d
    move-wide/from16 v38, v24

    .line 362
    .line 363
    new-instance v32, Lvj1;

    .line 364
    .line 365
    move-wide/from16 v40, v35

    .line 366
    .line 367
    invoke-direct/range {v32 .. v41}, Lvj1;-><init>(JJFJJ)V

    .line 368
    .line 369
    .line 370
    move-object/from16 v3, v32

    .line 371
    .line 372
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_e
    move/from16 v29, v10

    .line 377
    .line 378
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 379
    .line 380
    move/from16 v10, v29

    .line 381
    .line 382
    const/16 v7, 0x1d

    .line 383
    .line 384
    const/4 v9, 0x3

    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    const/16 v7, 0x8

    .line 392
    .line 393
    if-ne v3, v7, :cond_10

    .line 394
    .line 395
    const/16 v3, 0xa

    .line 396
    .line 397
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    const/16 v7, 0x9

    .line 402
    .line 403
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    neg-float v7, v7

    .line 408
    add-float v7, v7, v27

    .line 409
    .line 410
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    int-to-long v8, v3

    .line 415
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    int-to-long v10, v3

    .line 420
    shl-long v7, v8, v20

    .line 421
    .line 422
    and-long v9, v10, v16

    .line 423
    .line 424
    or-long/2addr v7, v9

    .line 425
    goto :goto_a

    .line 426
    :cond_10
    move-wide/from16 v7, v24

    .line 427
    .line 428
    :goto_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 429
    .line 430
    const/16 v9, 0x1d

    .line 431
    .line 432
    if-lt v3, v9, :cond_12

    .line 433
    .line 434
    invoke-static {v2}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    const/4 v11, 0x5

    .line 439
    if-ne v10, v11, :cond_12

    .line 440
    .line 441
    const/16 v10, 0x34

    .line 442
    .line 443
    invoke-virtual {v2, v10, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    .line 449
    .line 450
    move-result-object v11

    .line 451
    cmpl-float v10, v10, v27

    .line 452
    .line 453
    if-lez v10, :cond_11

    .line 454
    .line 455
    move-object/from16 v23, v11

    .line 456
    .line 457
    :cond_11
    if-eqz v23, :cond_12

    .line 458
    .line 459
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    .line 460
    .line 461
    .line 462
    move-result v26

    .line 463
    :cond_12
    move/from16 v27, v26

    .line 464
    .line 465
    const/16 v9, 0x1d

    .line 466
    .line 467
    if-lt v3, v9, :cond_13

    .line 468
    .line 469
    invoke-static {v2}, Lfi1;->d(Landroid/view/MotionEvent;)I

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    const/4 v9, 0x3

    .line 474
    if-ne v3, v9, :cond_13

    .line 475
    .line 476
    const/16 v3, 0x32

    .line 477
    .line 478
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    const/16 v9, 0x33

    .line 483
    .line 484
    invoke-virtual {v2, v9, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 485
    .line 486
    .line 487
    move-result v9

    .line 488
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    int-to-long v10, v3

    .line 493
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    move-wide/from16 v30, v5

    .line 498
    .line 499
    int-to-long v5, v3

    .line 500
    shl-long v9, v10, v20

    .line 501
    .line 502
    and-long v5, v5, v16

    .line 503
    .line 504
    or-long v24, v9, v5

    .line 505
    .line 506
    :goto_b
    move-wide/from16 v28, v24

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_13
    move-wide/from16 v30, v5

    .line 510
    .line 511
    goto :goto_b

    .line 512
    :goto_c
    iget-object v0, v0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 513
    .line 514
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    const/4 v4, 0x0

    .line 519
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 520
    .line 521
    .line 522
    move-result v23

    .line 523
    new-instance v11, Lbw2;

    .line 524
    .line 525
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 526
    .line 527
    .line 528
    move-result-wide v2

    .line 529
    move/from16 v20, p5

    .line 530
    .line 531
    move-object/from16 v24, v1

    .line 532
    .line 533
    move-wide/from16 v25, v7

    .line 534
    .line 535
    move-wide/from16 v16, v14

    .line 536
    .line 537
    move-wide v14, v2

    .line 538
    invoke-direct/range {v11 .. v31}, Lbw2;-><init>(JJJJZFIZLjava/util/ArrayList;JFJJ)V

    .line 539
    .line 540
    .line 541
    return-object v11
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    iget-object p0, p0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    if-eq v0, v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-le v0, v4, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v3

    .line 52
    :goto_1
    const/4 v3, -0x1

    .line 53
    if-ge v3, v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    move v5, v1

    .line 64
    :goto_2
    if-ge v5, v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v3, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 80
    .line 81
    .line 82
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    return-void
.end method
