.class public final Leg2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:[J

.field public b:[Ljava/lang/Object;

.field public c:[J

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltd3;->a:[J

    .line 5
    .line 6
    iput-object v0, p0, Leg2;->a:[J

    .line 7
    .line 8
    sget-object v0, Lis0;->j:[Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v0, p0, Leg2;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v0, Ldm0;->K:[J

    .line 13
    .line 14
    iput-object v0, p0, Leg2;->c:[J

    .line 15
    .line 16
    const v0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v0, p0, Leg2;->d:I

    .line 20
    .line 21
    iput v0, p0, Leg2;->e:I

    .line 22
    .line 23
    if-ltz p1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Ltd3;->d(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Leg2;->f(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const-string p0, "Capacity must be a positive value."

    .line 39
    .line 40
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    iget v0, p0, Leg2;->g:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Leg2;->d(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Leg2;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p1, v2, v1

    .line 10
    .line 11
    iget-object p1, p0, Leg2;->c:[J

    .line 12
    .line 13
    iget v2, p0, Leg2;->d:I

    .line 14
    .line 15
    int-to-long v3, v2

    .line 16
    const-wide/32 v5, 0x7fffffff

    .line 17
    .line 18
    .line 19
    and-long/2addr v3, v5

    .line 20
    const-wide v7, 0x3fffffff80000000L    # 1.9999995231628418

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    or-long/2addr v3, v7

    .line 26
    aput-wide v3, p1, v1

    .line 27
    .line 28
    const v3, 0x7fffffff

    .line 29
    .line 30
    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    aget-wide v7, p1, v2

    .line 34
    .line 35
    const-wide v9, -0x3fffffff80000001L    # -2.000000953674316

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v7, v9

    .line 41
    int-to-long v9, v1

    .line 42
    and-long v4, v9, v5

    .line 43
    .line 44
    const/16 v6, 0x1f

    .line 45
    .line 46
    shl-long/2addr v4, v6

    .line 47
    or-long/2addr v4, v7

    .line 48
    aput-wide v4, p1, v2

    .line 49
    .line 50
    :cond_0
    iput v1, p0, Leg2;->d:I

    .line 51
    .line 52
    iget p1, p0, Leg2;->e:I

    .line 53
    .line 54
    if-ne p1, v3, :cond_1

    .line 55
    .line 56
    iput v1, p0, Leg2;->e:I

    .line 57
    .line 58
    :cond_1
    iget p0, p0, Leg2;->g:I

    .line 59
    .line 60
    if-eq p0, v0, :cond_2

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final b()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Leg2;->g:I

    .line 3
    .line 4
    iget-object v1, p0, Leg2;->a:[J

    .line 5
    .line 6
    sget-object v2, Ltd3;->a:[J

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lji;->V([JJ)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Leg2;->a:[J

    .line 19
    .line 20
    iget v2, p0, Leg2;->f:I

    .line 21
    .line 22
    shr-int/lit8 v3, v2, 0x3

    .line 23
    .line 24
    and-int/lit8 v2, v2, 0x7

    .line 25
    .line 26
    shl-int/lit8 v2, v2, 0x3

    .line 27
    .line 28
    aget-wide v4, v1, v3

    .line 29
    .line 30
    const-wide/16 v6, 0xff

    .line 31
    .line 32
    shl-long/2addr v6, v2

    .line 33
    not-long v8, v6

    .line 34
    and-long/2addr v4, v8

    .line 35
    or-long/2addr v4, v6

    .line 36
    aput-wide v4, v1, v3

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iget v3, p0, Leg2;->f:I

    .line 42
    .line 43
    invoke-static {v0, v3, v2, v1}, Lji;->U(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Leg2;->c:[J

    .line 47
    .line 48
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lji;->V([JJ)V

    .line 54
    .line 55
    .line 56
    const v0, 0x7fffffff

    .line 57
    .line 58
    .line 59
    iput v0, p0, Leg2;->d:I

    .line 60
    .line 61
    iput v0, p0, Leg2;->e:I

    .line 62
    .line 63
    iget v0, p0, Leg2;->f:I

    .line 64
    .line 65
    invoke-static {v0}, Ltd3;->a(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget v1, p0, Leg2;->g:I

    .line 70
    .line 71
    sub-int/2addr v0, v1

    .line 72
    iput v0, p0, Leg2;->h:I

    .line 73
    .line 74
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 15
    .line 16
    .line 17
    mul-int/2addr v3, v4

    .line 18
    shl-int/lit8 v4, v3, 0x10

    .line 19
    .line 20
    xor-int/2addr v3, v4

    .line 21
    and-int/lit8 v4, v3, 0x7f

    .line 22
    .line 23
    iget v5, v0, Leg2;->f:I

    .line 24
    .line 25
    ushr-int/lit8 v3, v3, 0x7

    .line 26
    .line 27
    and-int/2addr v3, v5

    .line 28
    move v6, v2

    .line 29
    :goto_1
    iget-object v7, v0, Leg2;->a:[J

    .line 30
    .line 31
    shr-int/lit8 v8, v3, 0x3

    .line 32
    .line 33
    and-int/lit8 v9, v3, 0x7

    .line 34
    .line 35
    shl-int/lit8 v9, v9, 0x3

    .line 36
    .line 37
    aget-wide v10, v7, v8

    .line 38
    .line 39
    ushr-long/2addr v10, v9

    .line 40
    const/4 v12, 0x1

    .line 41
    add-int/2addr v8, v12

    .line 42
    aget-wide v13, v7, v8

    .line 43
    .line 44
    rsub-int/lit8 v7, v9, 0x40

    .line 45
    .line 46
    shl-long v7, v13, v7

    .line 47
    .line 48
    int-to-long v13, v9

    .line 49
    neg-long v13, v13

    .line 50
    const/16 v9, 0x3f

    .line 51
    .line 52
    shr-long/2addr v13, v9

    .line 53
    and-long/2addr v7, v13

    .line 54
    or-long/2addr v7, v10

    .line 55
    int-to-long v9, v4

    .line 56
    const-wide v13, 0x101010101010101L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    mul-long/2addr v9, v13

    .line 62
    xor-long/2addr v9, v7

    .line 63
    sub-long v13, v9, v13

    .line 64
    .line 65
    not-long v9, v9

    .line 66
    and-long/2addr v9, v13

    .line 67
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v9, v13

    .line 73
    :goto_2
    const-wide/16 v15, 0x0

    .line 74
    .line 75
    cmp-long v11, v9, v15

    .line 76
    .line 77
    if-eqz v11, :cond_2

    .line 78
    .line 79
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    shr-int/lit8 v11, v11, 0x3

    .line 84
    .line 85
    add-int/2addr v11, v3

    .line 86
    and-int/2addr v11, v5

    .line 87
    iget-object v15, v0, Leg2;->b:[Ljava/lang/Object;

    .line 88
    .line 89
    aget-object v15, v15, v11

    .line 90
    .line 91
    invoke-static {v15, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-eqz v15, :cond_1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_1
    const-wide/16 v15, 0x1

    .line 99
    .line 100
    sub-long v15, v9, v15

    .line 101
    .line 102
    and-long/2addr v9, v15

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    not-long v9, v7

    .line 105
    const/4 v11, 0x6

    .line 106
    shl-long/2addr v9, v11

    .line 107
    and-long/2addr v7, v9

    .line 108
    and-long/2addr v7, v13

    .line 109
    cmp-long v7, v7, v15

    .line 110
    .line 111
    if-eqz v7, :cond_4

    .line 112
    .line 113
    const/4 v11, -0x1

    .line 114
    :goto_3
    if-ltz v11, :cond_3

    .line 115
    .line 116
    return v12

    .line 117
    :cond_3
    return v2

    .line 118
    :cond_4
    add-int/lit8 v6, v6, 0x8

    .line 119
    .line 120
    add-int/2addr v3, v6

    .line 121
    and-int/2addr v3, v5

    .line 122
    goto :goto_1
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 15
    .line 16
    .line 17
    mul-int/2addr v3, v4

    .line 18
    shl-int/lit8 v5, v3, 0x10

    .line 19
    .line 20
    xor-int/2addr v3, v5

    .line 21
    ushr-int/lit8 v5, v3, 0x7

    .line 22
    .line 23
    and-int/lit8 v3, v3, 0x7f

    .line 24
    .line 25
    iget v6, v0, Leg2;->f:I

    .line 26
    .line 27
    and-int v7, v5, v6

    .line 28
    .line 29
    move v8, v2

    .line 30
    :goto_1
    iget-object v9, v0, Leg2;->a:[J

    .line 31
    .line 32
    shr-int/lit8 v10, v7, 0x3

    .line 33
    .line 34
    and-int/lit8 v11, v7, 0x7

    .line 35
    .line 36
    shl-int/lit8 v11, v11, 0x3

    .line 37
    .line 38
    aget-wide v12, v9, v10

    .line 39
    .line 40
    ushr-long/2addr v12, v11

    .line 41
    const/4 v14, 0x1

    .line 42
    add-int/2addr v10, v14

    .line 43
    aget-wide v15, v9, v10

    .line 44
    .line 45
    rsub-int/lit8 v9, v11, 0x40

    .line 46
    .line 47
    shl-long v9, v15, v9

    .line 48
    .line 49
    move/from16 v16, v14

    .line 50
    .line 51
    int-to-long v14, v11

    .line 52
    neg-long v14, v14

    .line 53
    const/16 v11, 0x3f

    .line 54
    .line 55
    shr-long/2addr v14, v11

    .line 56
    and-long/2addr v9, v14

    .line 57
    or-long/2addr v9, v12

    .line 58
    int-to-long v11, v3

    .line 59
    const-wide v13, 0x101010101010101L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    mul-long v17, v11, v13

    .line 65
    .line 66
    move-wide/from16 v19, v13

    .line 67
    .line 68
    xor-long v13, v9, v17

    .line 69
    .line 70
    sub-long v17, v13, v19

    .line 71
    .line 72
    not-long v13, v13

    .line 73
    and-long v13, v17, v13

    .line 74
    .line 75
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    and-long v13, v13, v17

    .line 81
    .line 82
    :goto_2
    const-wide/16 v19, 0x0

    .line 83
    .line 84
    cmp-long v15, v13, v19

    .line 85
    .line 86
    if-eqz v15, :cond_2

    .line 87
    .line 88
    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    shr-int/lit8 v15, v15, 0x3

    .line 93
    .line 94
    add-int/2addr v15, v7

    .line 95
    and-int/2addr v15, v6

    .line 96
    move/from16 v21, v4

    .line 97
    .line 98
    iget-object v4, v0, Leg2;->b:[Ljava/lang/Object;

    .line 99
    .line 100
    aget-object v4, v4, v15

    .line 101
    .line 102
    invoke-static {v4, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    return v15

    .line 109
    :cond_1
    const-wide/16 v19, 0x1

    .line 110
    .line 111
    sub-long v19, v13, v19

    .line 112
    .line 113
    and-long v13, v13, v19

    .line 114
    .line 115
    move/from16 v4, v21

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move/from16 v21, v4

    .line 119
    .line 120
    not-long v13, v9

    .line 121
    const/4 v4, 0x6

    .line 122
    shl-long/2addr v13, v4

    .line 123
    and-long/2addr v9, v13

    .line 124
    and-long v9, v9, v17

    .line 125
    .line 126
    cmp-long v4, v9, v19

    .line 127
    .line 128
    const/16 v9, 0x8

    .line 129
    .line 130
    if-eqz v4, :cond_1f

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Leg2;->e(I)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget v3, v0, Leg2;->h:I

    .line 137
    .line 138
    const-wide/16 v13, 0xff

    .line 139
    .line 140
    if-nez v3, :cond_3

    .line 141
    .line 142
    iget-object v3, v0, Leg2;->a:[J

    .line 143
    .line 144
    shr-int/lit8 v8, v1, 0x3

    .line 145
    .line 146
    aget-wide v19, v3, v8

    .line 147
    .line 148
    and-int/lit8 v3, v1, 0x7

    .line 149
    .line 150
    shl-int/lit8 v3, v3, 0x3

    .line 151
    .line 152
    shr-long v19, v19, v3

    .line 153
    .line 154
    and-long v19, v19, v13

    .line 155
    .line 156
    const-wide/16 v22, 0xfe

    .line 157
    .line 158
    cmp-long v3, v19, v22

    .line 159
    .line 160
    if-nez v3, :cond_4

    .line 161
    .line 162
    :cond_3
    move/from16 v30, v2

    .line 163
    .line 164
    move-wide/from16 v45, v11

    .line 165
    .line 166
    move-wide/from16 v35, v13

    .line 167
    .line 168
    const/16 p1, 0x7

    .line 169
    .line 170
    const-wide/16 v26, 0x80

    .line 171
    .line 172
    goto/16 :goto_16

    .line 173
    .line 174
    :cond_4
    iget v1, v0, Leg2;->f:I

    .line 175
    .line 176
    const-wide/high16 v19, -0x4000000000000000L    # -2.0

    .line 177
    .line 178
    const-wide/32 v24, 0x7fffffff

    .line 179
    .line 180
    .line 181
    if-le v1, v9, :cond_15

    .line 182
    .line 183
    iget v10, v0, Leg2;->g:I

    .line 184
    .line 185
    const/16 p1, 0x7

    .line 186
    .line 187
    const/16 v15, 0x1f

    .line 188
    .line 189
    int-to-long v3, v10

    .line 190
    const-wide/16 v26, 0x20

    .line 191
    .line 192
    mul-long v3, v3, v26

    .line 193
    .line 194
    const-wide/16 v26, 0x80

    .line 195
    .line 196
    int-to-long v6, v1

    .line 197
    const-wide/16 v28, 0x19

    .line 198
    .line 199
    mul-long v6, v6, v28

    .line 200
    .line 201
    const-wide/high16 v28, -0x8000000000000000L

    .line 202
    .line 203
    xor-long v3, v3, v28

    .line 204
    .line 205
    xor-long v6, v6, v28

    .line 206
    .line 207
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-gtz v1, :cond_14

    .line 212
    .line 213
    iget-object v1, v0, Leg2;->a:[J

    .line 214
    .line 215
    if-nez v1, :cond_5

    .line 216
    .line 217
    move/from16 v30, v2

    .line 218
    .line 219
    move-wide/from16 v45, v11

    .line 220
    .line 221
    move-wide/from16 v35, v13

    .line 222
    .line 223
    goto/16 :goto_15

    .line 224
    .line 225
    :cond_5
    iget v3, v0, Leg2;->f:I

    .line 226
    .line 227
    iget-object v4, v0, Leg2;->b:[Ljava/lang/Object;

    .line 228
    .line 229
    iget-object v6, v0, Leg2;->c:[J

    .line 230
    .line 231
    new-array v7, v3, [J

    .line 232
    .line 233
    move/from16 v28, v9

    .line 234
    .line 235
    const-wide v9, 0x7fffffff7fffffffL

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    invoke-static {v7, v2, v3, v9, v10}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v29, v3, 0x7

    .line 244
    .line 245
    move/from16 v30, v2

    .line 246
    .line 247
    shr-int/lit8 v2, v29, 0x3

    .line 248
    .line 249
    move-wide/from16 v31, v9

    .line 250
    .line 251
    move/from16 v9, v30

    .line 252
    .line 253
    :goto_3
    if-ge v9, v2, :cond_6

    .line 254
    .line 255
    aget-wide v33, v1, v9

    .line 256
    .line 257
    move-wide/from16 v35, v13

    .line 258
    .line 259
    and-long v13, v33, v17

    .line 260
    .line 261
    move/from16 v29, v9

    .line 262
    .line 263
    not-long v8, v13

    .line 264
    ushr-long v13, v13, p1

    .line 265
    .line 266
    add-long/2addr v8, v13

    .line 267
    const-wide v13, -0x101010101010102L

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    and-long/2addr v8, v13

    .line 273
    aput-wide v8, v1, v29

    .line 274
    .line 275
    add-int/lit8 v9, v29, 0x1

    .line 276
    .line 277
    move-wide/from16 v13, v35

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_6
    move-wide/from16 v35, v13

    .line 281
    .line 282
    array-length v2, v1

    .line 283
    add-int/lit8 v8, v2, -0x1

    .line 284
    .line 285
    add-int/lit8 v2, v2, -0x2

    .line 286
    .line 287
    aget-wide v13, v1, v2

    .line 288
    .line 289
    const-wide v17, 0xffffffffffffffL

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    and-long v13, v13, v17

    .line 295
    .line 296
    const-wide/high16 v17, -0x100000000000000L

    .line 297
    .line 298
    or-long v13, v13, v17

    .line 299
    .line 300
    aput-wide v13, v1, v2

    .line 301
    .line 302
    aget-wide v13, v1, v30

    .line 303
    .line 304
    aput-wide v13, v1, v8

    .line 305
    .line 306
    move/from16 v2, v30

    .line 307
    .line 308
    :goto_4
    if-eq v2, v3, :cond_f

    .line 309
    .line 310
    shr-int/lit8 v13, v2, 0x3

    .line 311
    .line 312
    aget-wide v17, v1, v13

    .line 313
    .line 314
    and-int/lit8 v14, v2, 0x7

    .line 315
    .line 316
    shl-int/lit8 v14, v14, 0x3

    .line 317
    .line 318
    shr-long v17, v17, v14

    .line 319
    .line 320
    and-long v17, v17, v35

    .line 321
    .line 322
    cmp-long v29, v17, v26

    .line 323
    .line 324
    if-nez v29, :cond_7

    .line 325
    .line 326
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_7
    cmp-long v17, v17, v22

    .line 330
    .line 331
    if-eqz v17, :cond_8

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_8
    aget-object v17, v4, v2

    .line 335
    .line 336
    if-eqz v17, :cond_9

    .line 337
    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    .line 339
    .line 340
    .line 341
    move-result v17

    .line 342
    goto :goto_6

    .line 343
    :cond_9
    move/from16 v17, v30

    .line 344
    .line 345
    :goto_6
    mul-int v17, v17, v21

    .line 346
    .line 347
    shl-int/lit8 v18, v17, 0x10

    .line 348
    .line 349
    xor-int v17, v17, v18

    .line 350
    .line 351
    const-wide v33, 0xffffffffL

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    ushr-int/lit8 v8, v17, 0x7

    .line 357
    .line 358
    invoke-virtual {v0, v8}, Leg2;->e(I)I

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    and-int/2addr v8, v3

    .line 363
    sub-int v18, v9, v8

    .line 364
    .line 365
    and-int v18, v18, v3

    .line 366
    .line 367
    div-int/lit8 v10, v18, 0x8

    .line 368
    .line 369
    sub-int v8, v2, v8

    .line 370
    .line 371
    and-int/2addr v8, v3

    .line 372
    div-int/lit8 v8, v8, 0x8

    .line 373
    .line 374
    const/16 v18, 0x20

    .line 375
    .line 376
    if-ne v10, v8, :cond_b

    .line 377
    .line 378
    and-int/lit8 v8, v17, 0x7f

    .line 379
    .line 380
    int-to-long v8, v8

    .line 381
    aget-wide v33, v1, v13

    .line 382
    .line 383
    move/from16 v37, v3

    .line 384
    .line 385
    move-object/from16 v38, v4

    .line 386
    .line 387
    shl-long v3, v35, v14

    .line 388
    .line 389
    not-long v3, v3

    .line 390
    and-long v3, v33, v3

    .line 391
    .line 392
    shl-long/2addr v8, v14

    .line 393
    or-long/2addr v3, v8

    .line 394
    aput-wide v3, v1, v13

    .line 395
    .line 396
    aget-wide v3, v7, v2

    .line 397
    .line 398
    cmp-long v3, v3, v31

    .line 399
    .line 400
    if-nez v3, :cond_a

    .line 401
    .line 402
    int-to-long v3, v2

    .line 403
    shl-long v8, v3, v18

    .line 404
    .line 405
    or-long/2addr v3, v8

    .line 406
    aput-wide v3, v7, v2

    .line 407
    .line 408
    :cond_a
    array-length v3, v1

    .line 409
    add-int/lit8 v3, v3, -0x1

    .line 410
    .line 411
    aget-wide v8, v1, v30

    .line 412
    .line 413
    aput-wide v8, v1, v3

    .line 414
    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    .line 417
    move/from16 v3, v37

    .line 418
    .line 419
    move-object/from16 v4, v38

    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_b
    move/from16 v37, v3

    .line 423
    .line 424
    move-object/from16 v38, v4

    .line 425
    .line 426
    shr-int/lit8 v3, v9, 0x3

    .line 427
    .line 428
    aget-wide v39, v1, v3

    .line 429
    .line 430
    and-int/lit8 v4, v9, 0x7

    .line 431
    .line 432
    shl-int/lit8 v4, v4, 0x3

    .line 433
    .line 434
    shr-long v41, v39, v4

    .line 435
    .line 436
    and-long v41, v41, v35

    .line 437
    .line 438
    cmp-long v8, v41, v26

    .line 439
    .line 440
    const-wide v41, -0x100000000L

    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    if-nez v8, :cond_d

    .line 446
    .line 447
    and-int/lit8 v8, v17, 0x7f

    .line 448
    .line 449
    move/from16 v43, v3

    .line 450
    .line 451
    move/from16 v44, v4

    .line 452
    .line 453
    int-to-long v3, v8

    .line 454
    move-wide/from16 v45, v3

    .line 455
    .line 456
    shl-long v3, v35, v44

    .line 457
    .line 458
    not-long v3, v3

    .line 459
    and-long v3, v39, v3

    .line 460
    .line 461
    shl-long v39, v45, v44

    .line 462
    .line 463
    or-long v3, v3, v39

    .line 464
    .line 465
    aput-wide v3, v1, v43

    .line 466
    .line 467
    aget-wide v3, v1, v13

    .line 468
    .line 469
    move-wide/from16 v39, v3

    .line 470
    .line 471
    shl-long v3, v35, v14

    .line 472
    .line 473
    not-long v3, v3

    .line 474
    and-long v3, v39, v3

    .line 475
    .line 476
    shl-long v39, v26, v14

    .line 477
    .line 478
    or-long v3, v3, v39

    .line 479
    .line 480
    aput-wide v3, v1, v13

    .line 481
    .line 482
    aget-object v3, v38, v2

    .line 483
    .line 484
    aput-object v3, v38, v9

    .line 485
    .line 486
    const/4 v3, 0x0

    .line 487
    aput-object v3, v38, v2

    .line 488
    .line 489
    aget-wide v3, v6, v2

    .line 490
    .line 491
    aput-wide v3, v6, v9

    .line 492
    .line 493
    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    aput-wide v3, v6, v2

    .line 499
    .line 500
    aget-wide v3, v7, v2

    .line 501
    .line 502
    shr-long v3, v3, v18

    .line 503
    .line 504
    and-long v3, v3, v33

    .line 505
    .line 506
    long-to-int v3, v3

    .line 507
    const v10, 0x7fffffff

    .line 508
    .line 509
    .line 510
    if-eq v3, v10, :cond_c

    .line 511
    .line 512
    aget-wide v13, v7, v3

    .line 513
    .line 514
    and-long v13, v13, v41

    .line 515
    .line 516
    move-wide/from16 v45, v11

    .line 517
    .line 518
    int-to-long v10, v9

    .line 519
    or-long/2addr v10, v13

    .line 520
    aput-wide v10, v7, v3

    .line 521
    .line 522
    aget-wide v3, v7, v2

    .line 523
    .line 524
    and-long v3, v3, v33

    .line 525
    .line 526
    or-long v3, v3, v41

    .line 527
    .line 528
    aput-wide v3, v7, v2

    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_c
    move-wide/from16 v45, v11

    .line 532
    .line 533
    const-wide v3, 0x7fffffff00000000L

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    int-to-long v10, v9

    .line 539
    or-long/2addr v3, v10

    .line 540
    aput-wide v3, v7, v2

    .line 541
    .line 542
    :goto_7
    int-to-long v3, v2

    .line 543
    shl-long v3, v3, v18

    .line 544
    .line 545
    or-long v3, v3, v24

    .line 546
    .line 547
    aput-wide v3, v7, v9

    .line 548
    .line 549
    goto :goto_9

    .line 550
    :cond_d
    move/from16 v43, v3

    .line 551
    .line 552
    move/from16 v44, v4

    .line 553
    .line 554
    move-wide/from16 v45, v11

    .line 555
    .line 556
    and-int/lit8 v3, v17, 0x7f

    .line 557
    .line 558
    int-to-long v3, v3

    .line 559
    shl-long v10, v35, v44

    .line 560
    .line 561
    not-long v10, v10

    .line 562
    and-long v10, v39, v10

    .line 563
    .line 564
    shl-long v3, v3, v44

    .line 565
    .line 566
    or-long/2addr v3, v10

    .line 567
    aput-wide v3, v1, v43

    .line 568
    .line 569
    aget-object v3, v38, v9

    .line 570
    .line 571
    aget-object v4, v38, v2

    .line 572
    .line 573
    aput-object v4, v38, v9

    .line 574
    .line 575
    aput-object v3, v38, v2

    .line 576
    .line 577
    aget-wide v3, v6, v9

    .line 578
    .line 579
    aget-wide v10, v6, v2

    .line 580
    .line 581
    aput-wide v10, v6, v9

    .line 582
    .line 583
    aput-wide v3, v6, v2

    .line 584
    .line 585
    aget-wide v3, v7, v2

    .line 586
    .line 587
    shr-long v3, v3, v18

    .line 588
    .line 589
    and-long v3, v3, v33

    .line 590
    .line 591
    long-to-int v3, v3

    .line 592
    const v10, 0x7fffffff

    .line 593
    .line 594
    .line 595
    if-eq v3, v10, :cond_e

    .line 596
    .line 597
    aget-wide v11, v7, v3

    .line 598
    .line 599
    and-long v11, v11, v41

    .line 600
    .line 601
    int-to-long v13, v9

    .line 602
    or-long/2addr v11, v13

    .line 603
    aput-wide v11, v7, v3

    .line 604
    .line 605
    aget-wide v11, v7, v2

    .line 606
    .line 607
    shl-long v13, v13, v18

    .line 608
    .line 609
    and-long v11, v11, v33

    .line 610
    .line 611
    or-long/2addr v11, v13

    .line 612
    aput-wide v11, v7, v2

    .line 613
    .line 614
    goto :goto_8

    .line 615
    :cond_e
    int-to-long v3, v9

    .line 616
    shl-long v11, v3, v18

    .line 617
    .line 618
    or-long/2addr v3, v11

    .line 619
    aput-wide v3, v7, v2

    .line 620
    .line 621
    move v3, v2

    .line 622
    :goto_8
    int-to-long v3, v3

    .line 623
    shl-long v3, v3, v18

    .line 624
    .line 625
    int-to-long v11, v2

    .line 626
    or-long/2addr v3, v11

    .line 627
    aput-wide v3, v7, v9

    .line 628
    .line 629
    add-int/lit8 v2, v2, -0x1

    .line 630
    .line 631
    :goto_9
    array-length v3, v1

    .line 632
    add-int/lit8 v3, v3, -0x1

    .line 633
    .line 634
    aget-wide v8, v1, v30

    .line 635
    .line 636
    aput-wide v8, v1, v3

    .line 637
    .line 638
    add-int/lit8 v2, v2, 0x1

    .line 639
    .line 640
    move/from16 v3, v37

    .line 641
    .line 642
    move-object/from16 v4, v38

    .line 643
    .line 644
    move-wide/from16 v11, v45

    .line 645
    .line 646
    goto/16 :goto_4

    .line 647
    .line 648
    :cond_f
    move-wide/from16 v45, v11

    .line 649
    .line 650
    const-wide v33, 0xffffffffL

    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    iget v1, v0, Leg2;->f:I

    .line 656
    .line 657
    invoke-static {v1}, Ltd3;->a(I)I

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    iget v2, v0, Leg2;->g:I

    .line 662
    .line 663
    sub-int/2addr v1, v2

    .line 664
    iput v1, v0, Leg2;->h:I

    .line 665
    .line 666
    iget-object v1, v0, Leg2;->c:[J

    .line 667
    .line 668
    array-length v2, v1

    .line 669
    move/from16 v3, v30

    .line 670
    .line 671
    :goto_a
    if-ge v3, v2, :cond_12

    .line 672
    .line 673
    aget-wide v8, v1, v3

    .line 674
    .line 675
    shr-long v11, v8, v15

    .line 676
    .line 677
    and-long v11, v11, v24

    .line 678
    .line 679
    long-to-int v4, v11

    .line 680
    and-long v11, v8, v24

    .line 681
    .line 682
    long-to-int v6, v11

    .line 683
    and-long v8, v8, v19

    .line 684
    .line 685
    const v10, 0x7fffffff

    .line 686
    .line 687
    .line 688
    if-ne v4, v10, :cond_10

    .line 689
    .line 690
    move v4, v10

    .line 691
    goto :goto_b

    .line 692
    :cond_10
    aget-wide v11, v7, v4

    .line 693
    .line 694
    and-long v11, v11, v33

    .line 695
    .line 696
    long-to-int v4, v11

    .line 697
    :goto_b
    int-to-long v11, v4

    .line 698
    or-long/2addr v8, v11

    .line 699
    shl-long/2addr v8, v15

    .line 700
    if-ne v6, v10, :cond_11

    .line 701
    .line 702
    const v4, 0x7fffffff

    .line 703
    .line 704
    .line 705
    goto :goto_c

    .line 706
    :cond_11
    aget-wide v11, v7, v6

    .line 707
    .line 708
    and-long v11, v11, v33

    .line 709
    .line 710
    long-to-int v4, v11

    .line 711
    :goto_c
    int-to-long v11, v4

    .line 712
    or-long/2addr v8, v11

    .line 713
    aput-wide v8, v1, v3

    .line 714
    .line 715
    add-int/lit8 v3, v3, 0x1

    .line 716
    .line 717
    goto :goto_a

    .line 718
    :cond_12
    iget v1, v0, Leg2;->d:I

    .line 719
    .line 720
    const v10, 0x7fffffff

    .line 721
    .line 722
    .line 723
    if-eq v1, v10, :cond_13

    .line 724
    .line 725
    aget-wide v1, v7, v1

    .line 726
    .line 727
    and-long v1, v1, v33

    .line 728
    .line 729
    long-to-int v1, v1

    .line 730
    iput v1, v0, Leg2;->d:I

    .line 731
    .line 732
    :cond_13
    iget v1, v0, Leg2;->e:I

    .line 733
    .line 734
    if-eq v1, v10, :cond_1d

    .line 735
    .line 736
    aget-wide v1, v7, v1

    .line 737
    .line 738
    and-long v1, v1, v33

    .line 739
    .line 740
    long-to-int v1, v1

    .line 741
    iput v1, v0, Leg2;->e:I

    .line 742
    .line 743
    goto/16 :goto_15

    .line 744
    .line 745
    :cond_14
    :goto_d
    move/from16 v30, v2

    .line 746
    .line 747
    move-wide/from16 v45, v11

    .line 748
    .line 749
    move-wide/from16 v35, v13

    .line 750
    .line 751
    goto :goto_e

    .line 752
    :cond_15
    const/16 p1, 0x7

    .line 753
    .line 754
    const/16 v15, 0x1f

    .line 755
    .line 756
    const-wide/16 v26, 0x80

    .line 757
    .line 758
    goto :goto_d

    .line 759
    :goto_e
    iget v1, v0, Leg2;->f:I

    .line 760
    .line 761
    invoke-static {v1}, Ltd3;->b(I)I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    iget-object v2, v0, Leg2;->a:[J

    .line 766
    .line 767
    iget-object v3, v0, Leg2;->b:[Ljava/lang/Object;

    .line 768
    .line 769
    iget-object v4, v0, Leg2;->c:[J

    .line 770
    .line 771
    iget v6, v0, Leg2;->f:I

    .line 772
    .line 773
    new-array v7, v6, [I

    .line 774
    .line 775
    invoke-virtual {v0, v1}, Leg2;->f(I)V

    .line 776
    .line 777
    .line 778
    iget-object v1, v0, Leg2;->a:[J

    .line 779
    .line 780
    iget-object v8, v0, Leg2;->b:[Ljava/lang/Object;

    .line 781
    .line 782
    iget-object v9, v0, Leg2;->c:[J

    .line 783
    .line 784
    iget v11, v0, Leg2;->f:I

    .line 785
    .line 786
    move/from16 v12, v30

    .line 787
    .line 788
    :goto_f
    if-ge v12, v6, :cond_18

    .line 789
    .line 790
    shr-int/lit8 v13, v12, 0x3

    .line 791
    .line 792
    aget-wide v13, v2, v13

    .line 793
    .line 794
    and-int/lit8 v17, v12, 0x7

    .line 795
    .line 796
    shl-int/lit8 v17, v17, 0x3

    .line 797
    .line 798
    shr-long v13, v13, v17

    .line 799
    .line 800
    and-long v13, v13, v35

    .line 801
    .line 802
    cmp-long v13, v13, v26

    .line 803
    .line 804
    if-gez v13, :cond_17

    .line 805
    .line 806
    aget-object v13, v3, v12

    .line 807
    .line 808
    if-eqz v13, :cond_16

    .line 809
    .line 810
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 811
    .line 812
    .line 813
    move-result v14

    .line 814
    goto :goto_10

    .line 815
    :cond_16
    move/from16 v14, v30

    .line 816
    .line 817
    :goto_10
    mul-int v14, v14, v21

    .line 818
    .line 819
    shl-int/lit8 v17, v14, 0x10

    .line 820
    .line 821
    xor-int v14, v14, v17

    .line 822
    .line 823
    ushr-int/lit8 v10, v14, 0x7

    .line 824
    .line 825
    invoke-virtual {v0, v10}, Leg2;->e(I)I

    .line 826
    .line 827
    .line 828
    move-result v10

    .line 829
    and-int/lit8 v14, v14, 0x7f

    .line 830
    .line 831
    move-object/from16 v18, v1

    .line 832
    .line 833
    move-object/from16 v17, v2

    .line 834
    .line 835
    int-to-long v1, v14

    .line 836
    shr-int/lit8 v14, v10, 0x3

    .line 837
    .line 838
    and-int/lit8 v22, v10, 0x7

    .line 839
    .line 840
    shl-int/lit8 v22, v22, 0x3

    .line 841
    .line 842
    aget-wide v31, v18, v14

    .line 843
    .line 844
    move-wide/from16 v33, v1

    .line 845
    .line 846
    shl-long v1, v35, v22

    .line 847
    .line 848
    not-long v1, v1

    .line 849
    and-long v1, v31, v1

    .line 850
    .line 851
    shl-long v22, v33, v22

    .line 852
    .line 853
    or-long v1, v1, v22

    .line 854
    .line 855
    aput-wide v1, v18, v14

    .line 856
    .line 857
    add-int/lit8 v14, v10, -0x7

    .line 858
    .line 859
    and-int/2addr v14, v11

    .line 860
    and-int/lit8 v22, v11, 0x7

    .line 861
    .line 862
    add-int v14, v14, v22

    .line 863
    .line 864
    shr-int/lit8 v14, v14, 0x3

    .line 865
    .line 866
    aput-wide v1, v18, v14

    .line 867
    .line 868
    aput-object v13, v8, v10

    .line 869
    .line 870
    aget-wide v1, v4, v12

    .line 871
    .line 872
    aput-wide v1, v9, v10

    .line 873
    .line 874
    aput v10, v7, v12

    .line 875
    .line 876
    goto :goto_11

    .line 877
    :cond_17
    move-object/from16 v18, v1

    .line 878
    .line 879
    move-object/from16 v17, v2

    .line 880
    .line 881
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 882
    .line 883
    move-object/from16 v2, v17

    .line 884
    .line 885
    move-object/from16 v1, v18

    .line 886
    .line 887
    goto :goto_f

    .line 888
    :cond_18
    iget-object v1, v0, Leg2;->c:[J

    .line 889
    .line 890
    array-length v2, v1

    .line 891
    move/from16 v3, v30

    .line 892
    .line 893
    :goto_12
    if-ge v3, v2, :cond_1b

    .line 894
    .line 895
    aget-wide v8, v1, v3

    .line 896
    .line 897
    shr-long v10, v8, v15

    .line 898
    .line 899
    and-long v10, v10, v24

    .line 900
    .line 901
    long-to-int v4, v10

    .line 902
    and-long v10, v8, v24

    .line 903
    .line 904
    long-to-int v6, v10

    .line 905
    and-long v8, v8, v19

    .line 906
    .line 907
    const v10, 0x7fffffff

    .line 908
    .line 909
    .line 910
    if-ne v4, v10, :cond_19

    .line 911
    .line 912
    move v4, v10

    .line 913
    goto :goto_13

    .line 914
    :cond_19
    aget v29, v7, v4

    .line 915
    .line 916
    move/from16 v4, v29

    .line 917
    .line 918
    :goto_13
    int-to-long v11, v4

    .line 919
    or-long/2addr v8, v11

    .line 920
    shl-long/2addr v8, v15

    .line 921
    if-ne v6, v10, :cond_1a

    .line 922
    .line 923
    move v4, v10

    .line 924
    goto :goto_14

    .line 925
    :cond_1a
    aget v29, v7, v6

    .line 926
    .line 927
    move/from16 v4, v29

    .line 928
    .line 929
    :goto_14
    int-to-long v11, v4

    .line 930
    or-long/2addr v8, v11

    .line 931
    aput-wide v8, v1, v3

    .line 932
    .line 933
    add-int/lit8 v3, v3, 0x1

    .line 934
    .line 935
    goto :goto_12

    .line 936
    :cond_1b
    const v10, 0x7fffffff

    .line 937
    .line 938
    .line 939
    iget v1, v0, Leg2;->d:I

    .line 940
    .line 941
    if-eq v1, v10, :cond_1c

    .line 942
    .line 943
    aget v1, v7, v1

    .line 944
    .line 945
    iput v1, v0, Leg2;->d:I

    .line 946
    .line 947
    :cond_1c
    iget v1, v0, Leg2;->e:I

    .line 948
    .line 949
    if-eq v1, v10, :cond_1d

    .line 950
    .line 951
    aget v1, v7, v1

    .line 952
    .line 953
    iput v1, v0, Leg2;->e:I

    .line 954
    .line 955
    :cond_1d
    :goto_15
    invoke-virtual {v0, v5}, Leg2;->e(I)I

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    :goto_16
    iget v2, v0, Leg2;->g:I

    .line 960
    .line 961
    add-int/lit8 v2, v2, 0x1

    .line 962
    .line 963
    iput v2, v0, Leg2;->g:I

    .line 964
    .line 965
    iget v2, v0, Leg2;->h:I

    .line 966
    .line 967
    iget-object v3, v0, Leg2;->a:[J

    .line 968
    .line 969
    shr-int/lit8 v4, v1, 0x3

    .line 970
    .line 971
    aget-wide v5, v3, v4

    .line 972
    .line 973
    and-int/lit8 v7, v1, 0x7

    .line 974
    .line 975
    shl-int/lit8 v7, v7, 0x3

    .line 976
    .line 977
    shr-long v8, v5, v7

    .line 978
    .line 979
    and-long v8, v8, v35

    .line 980
    .line 981
    cmp-long v8, v8, v26

    .line 982
    .line 983
    if-nez v8, :cond_1e

    .line 984
    .line 985
    move/from16 v30, v16

    .line 986
    .line 987
    :cond_1e
    sub-int v2, v2, v30

    .line 988
    .line 989
    iput v2, v0, Leg2;->h:I

    .line 990
    .line 991
    iget v0, v0, Leg2;->f:I

    .line 992
    .line 993
    shl-long v8, v35, v7

    .line 994
    .line 995
    not-long v8, v8

    .line 996
    and-long/2addr v5, v8

    .line 997
    shl-long v7, v45, v7

    .line 998
    .line 999
    or-long/2addr v5, v7

    .line 1000
    aput-wide v5, v3, v4

    .line 1001
    .line 1002
    add-int/lit8 v2, v1, -0x7

    .line 1003
    .line 1004
    and-int/2addr v2, v0

    .line 1005
    and-int/lit8 v0, v0, 0x7

    .line 1006
    .line 1007
    add-int/2addr v2, v0

    .line 1008
    shr-int/lit8 v0, v2, 0x3

    .line 1009
    .line 1010
    aput-wide v5, v3, v0

    .line 1011
    .line 1012
    return v1

    .line 1013
    :cond_1f
    move/from16 v30, v2

    .line 1014
    .line 1015
    move/from16 v28, v9

    .line 1016
    .line 1017
    add-int/lit8 v8, v8, 0x8

    .line 1018
    .line 1019
    add-int/2addr v7, v8

    .line 1020
    and-int/2addr v7, v6

    .line 1021
    move/from16 v4, v21

    .line 1022
    .line 1023
    goto/16 :goto_1
.end method

.method public final e(I)I
    .locals 9

    .line 1
    iget v0, p0, Leg2;->f:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Leg2;->a:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v7, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v2, v4, 0x40

    .line 21
    .line 22
    shl-long v2, v7, v2

    .line 23
    .line 24
    int-to-long v7, v4

    .line 25
    neg-long v7, v7

    .line 26
    const/16 v4, 0x3f

    .line 27
    .line 28
    shr-long/2addr v7, v4

    .line 29
    and-long/2addr v2, v7

    .line 30
    or-long/2addr v2, v5

    .line 31
    not-long v4, v2

    .line 32
    const/4 v6, 0x7

    .line 33
    shl-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    shr-int/lit8 p0, p0, 0x3

    .line 52
    .line 53
    add-int/2addr p1, p0

    .line 54
    and-int p0, p1, v0

    .line 55
    .line 56
    return p0

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 58
    .line 59
    add-int/2addr p1, v1

    .line 60
    and-int/2addr p1, v0

    .line 61
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Leg2;

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
    check-cast p1, Leg2;

    .line 12
    .line 13
    iget v1, p1, Leg2;->g:I

    .line 14
    .line 15
    iget v3, p0, Leg2;->g:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p0, p0, Leg2;->a:[J

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    add-int/lit8 v3, v3, -0x2

    .line 26
    .line 27
    if-ltz v3, :cond_6

    .line 28
    .line 29
    move v4, v2

    .line 30
    :goto_0
    aget-wide v5, p0, v4

    .line 31
    .line 32
    not-long v7, v5

    .line 33
    const/4 v9, 0x7

    .line 34
    shl-long/2addr v7, v9

    .line 35
    and-long/2addr v7, v5

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v7, v9

    .line 42
    cmp-long v7, v7, v9

    .line 43
    .line 44
    if-eqz v7, :cond_5

    .line 45
    .line 46
    sub-int v7, v4, v3

    .line 47
    .line 48
    not-int v7, v7

    .line 49
    ushr-int/lit8 v7, v7, 0x1f

    .line 50
    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v7, v7, 0x8

    .line 54
    .line 55
    move v9, v2

    .line 56
    :goto_1
    if-ge v9, v7, :cond_4

    .line 57
    .line 58
    const-wide/16 v10, 0xff

    .line 59
    .line 60
    and-long/2addr v10, v5

    .line 61
    const-wide/16 v12, 0x80

    .line 62
    .line 63
    cmp-long v10, v10, v12

    .line 64
    .line 65
    if-gez v10, :cond_3

    .line 66
    .line 67
    shl-int/lit8 v10, v4, 0x3

    .line 68
    .line 69
    add-int/2addr v10, v9

    .line 70
    aget-object v10, v1, v10

    .line 71
    .line 72
    invoke-virtual {p1, v10}, Leg2;->c(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    if-nez v10, :cond_3

    .line 77
    .line 78
    return v2

    .line 79
    :cond_3
    shr-long/2addr v5, v8

    .line 80
    add-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    if-ne v7, v8, :cond_6

    .line 84
    .line 85
    :cond_5
    if-eq v4, v3, :cond_6

    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    return v0
.end method

.method public final f(I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Ltd3;->c(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iput p1, p0, Leg2;->f:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object v1, Ltd3;->a:[J

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v1, p1, 0xf

    .line 23
    .line 24
    and-int/lit8 v1, v1, -0x8

    .line 25
    .line 26
    shr-int/lit8 v1, v1, 0x3

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 36
    .line 37
    .line 38
    move-object v1, v2

    .line 39
    :goto_1
    iput-object v1, p0, Leg2;->a:[J

    .line 40
    .line 41
    shr-int/lit8 v2, p1, 0x3

    .line 42
    .line 43
    and-int/lit8 v3, p1, 0x7

    .line 44
    .line 45
    shl-int/lit8 v3, v3, 0x3

    .line 46
    .line 47
    aget-wide v4, v1, v2

    .line 48
    .line 49
    const-wide/16 v6, 0xff

    .line 50
    .line 51
    shl-long/2addr v6, v3

    .line 52
    not-long v8, v6

    .line 53
    and-long v3, v4, v8

    .line 54
    .line 55
    or-long/2addr v3, v6

    .line 56
    aput-wide v3, v1, v2

    .line 57
    .line 58
    iget v1, p0, Leg2;->f:I

    .line 59
    .line 60
    invoke-static {v1}, Ltd3;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v2, p0, Leg2;->g:I

    .line 65
    .line 66
    sub-int/2addr v1, v2

    .line 67
    iput v1, p0, Leg2;->h:I

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    sget-object v1, Lis0;->j:[Ljava/lang/Object;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    new-array v1, p1, [Ljava/lang/Object;

    .line 75
    .line 76
    :goto_2
    iput-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 77
    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    sget-object p1, Ldm0;->K:[J

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    new-array v1, p1, [J

    .line 84
    .line 85
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 91
    .line 92
    .line 93
    move-object p1, v1

    .line 94
    :goto_3
    iput-object p1, p0, Leg2;->c:[J

    .line 95
    .line 96
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Leg2;->d(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aput-object p1, v1, v0

    .line 8
    .line 9
    iget-object p1, p0, Leg2;->c:[J

    .line 10
    .line 11
    iget v1, p0, Leg2;->d:I

    .line 12
    .line 13
    int-to-long v2, v1

    .line 14
    const-wide/32 v4, 0x7fffffff

    .line 15
    .line 16
    .line 17
    and-long/2addr v2, v4

    .line 18
    const-wide v6, 0x3fffffff80000000L    # 1.9999995231628418

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    or-long/2addr v2, v6

    .line 24
    aput-wide v2, p1, v0

    .line 25
    .line 26
    const v2, 0x7fffffff

    .line 27
    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    aget-wide v6, p1, v1

    .line 32
    .line 33
    const-wide v8, -0x3fffffff80000001L    # -2.000000953674316

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v6, v8

    .line 39
    int-to-long v8, v0

    .line 40
    and-long v3, v8, v4

    .line 41
    .line 42
    const/16 v5, 0x1f

    .line 43
    .line 44
    shl-long/2addr v3, v5

    .line 45
    or-long/2addr v3, v6

    .line 46
    aput-wide v3, p1, v1

    .line 47
    .line 48
    :cond_0
    iput v0, p0, Leg2;->d:I

    .line 49
    .line 50
    iget p1, p0, Leg2;->e:I

    .line 51
    .line 52
    if-ne p1, v2, :cond_1

    .line 53
    .line 54
    iput v0, p0, Leg2;->e:I

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 15
    .line 16
    .line 17
    mul-int/2addr v3, v4

    .line 18
    shl-int/lit8 v4, v3, 0x10

    .line 19
    .line 20
    xor-int/2addr v3, v4

    .line 21
    and-int/lit8 v4, v3, 0x7f

    .line 22
    .line 23
    iget v5, v0, Leg2;->f:I

    .line 24
    .line 25
    ushr-int/lit8 v3, v3, 0x7

    .line 26
    .line 27
    and-int/2addr v3, v5

    .line 28
    move v6, v2

    .line 29
    :goto_1
    iget-object v7, v0, Leg2;->a:[J

    .line 30
    .line 31
    shr-int/lit8 v8, v3, 0x3

    .line 32
    .line 33
    and-int/lit8 v9, v3, 0x7

    .line 34
    .line 35
    shl-int/lit8 v9, v9, 0x3

    .line 36
    .line 37
    aget-wide v10, v7, v8

    .line 38
    .line 39
    ushr-long/2addr v10, v9

    .line 40
    const/4 v12, 0x1

    .line 41
    add-int/2addr v8, v12

    .line 42
    aget-wide v13, v7, v8

    .line 43
    .line 44
    rsub-int/lit8 v7, v9, 0x40

    .line 45
    .line 46
    shl-long v7, v13, v7

    .line 47
    .line 48
    int-to-long v13, v9

    .line 49
    neg-long v13, v13

    .line 50
    const/16 v9, 0x3f

    .line 51
    .line 52
    shr-long/2addr v13, v9

    .line 53
    and-long/2addr v7, v13

    .line 54
    or-long/2addr v7, v10

    .line 55
    int-to-long v9, v4

    .line 56
    const-wide v13, 0x101010101010101L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    mul-long/2addr v9, v13

    .line 62
    xor-long/2addr v9, v7

    .line 63
    sub-long v13, v9, v13

    .line 64
    .line 65
    not-long v9, v9

    .line 66
    and-long/2addr v9, v13

    .line 67
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v9, v13

    .line 73
    :goto_2
    const-wide/16 v15, 0x0

    .line 74
    .line 75
    cmp-long v11, v9, v15

    .line 76
    .line 77
    if-eqz v11, :cond_2

    .line 78
    .line 79
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    shr-int/lit8 v11, v11, 0x3

    .line 84
    .line 85
    add-int/2addr v11, v3

    .line 86
    and-int/2addr v11, v5

    .line 87
    iget-object v15, v0, Leg2;->b:[Ljava/lang/Object;

    .line 88
    .line 89
    aget-object v15, v15, v11

    .line 90
    .line 91
    invoke-static {v15, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-eqz v15, :cond_1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_1
    const-wide/16 v15, 0x1

    .line 99
    .line 100
    sub-long v15, v9, v15

    .line 101
    .line 102
    and-long/2addr v9, v15

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    not-long v9, v7

    .line 105
    const/4 v11, 0x6

    .line 106
    shl-long/2addr v9, v11

    .line 107
    and-long/2addr v7, v9

    .line 108
    and-long/2addr v7, v13

    .line 109
    cmp-long v7, v7, v15

    .line 110
    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    const/4 v11, -0x1

    .line 114
    :goto_3
    if-ltz v11, :cond_3

    .line 115
    .line 116
    move v2, v12

    .line 117
    :cond_3
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {v0, v11}, Leg2;->i(I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return v2

    .line 123
    :cond_5
    add-int/lit8 v6, v6, 0x8

    .line 124
    .line 125
    add-int/2addr v3, v6

    .line 126
    and-int/2addr v3, v5

    .line 127
    goto :goto_1
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget v0, p0, Leg2;->f:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Leg2;->g:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p0, Leg2;->a:[J

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ltz v3, :cond_5

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    aget-wide v6, v2, v5

    .line 20
    .line 21
    not-long v8, v6

    .line 22
    const/4 v10, 0x7

    .line 23
    shl-long/2addr v8, v10

    .line 24
    and-long/2addr v8, v6

    .line 25
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v8, v10

    .line 31
    cmp-long v8, v8, v10

    .line 32
    .line 33
    if-eqz v8, :cond_4

    .line 34
    .line 35
    sub-int v8, v5, v3

    .line 36
    .line 37
    not-int v8, v8

    .line 38
    ushr-int/lit8 v8, v8, 0x1f

    .line 39
    .line 40
    const/16 v9, 0x8

    .line 41
    .line 42
    rsub-int/lit8 v8, v8, 0x8

    .line 43
    .line 44
    move v10, v4

    .line 45
    :goto_1
    if-ge v10, v8, :cond_2

    .line 46
    .line 47
    const-wide/16 v11, 0xff

    .line 48
    .line 49
    and-long/2addr v11, v6

    .line 50
    const-wide/16 v13, 0x80

    .line 51
    .line 52
    cmp-long v11, v11, v13

    .line 53
    .line 54
    if-gez v11, :cond_1

    .line 55
    .line 56
    shl-int/lit8 v11, v5, 0x3

    .line 57
    .line 58
    add-int/2addr v11, v10

    .line 59
    aget-object v11, v1, v11

    .line 60
    .line 61
    invoke-static {v11, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-nez v12, :cond_1

    .line 66
    .line 67
    if-eqz v11, :cond_0

    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    move v11, v4

    .line 75
    :goto_2
    add-int/2addr v0, v11

    .line 76
    :cond_1
    shr-long/2addr v6, v9

    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    if-ne v8, v9, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    return v0

    .line 84
    :cond_4
    :goto_3
    if-eq v5, v3, :cond_5

    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    return v0
.end method

.method public final i(I)V
    .locals 12

    .line 1
    iget v0, p0, Leg2;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Leg2;->g:I

    .line 6
    .line 7
    iget-object v0, p0, Leg2;->a:[J

    .line 8
    .line 9
    iget v1, p0, Leg2;->f:I

    .line 10
    .line 11
    shr-int/lit8 v2, p1, 0x3

    .line 12
    .line 13
    and-int/lit8 v3, p1, 0x7

    .line 14
    .line 15
    shl-int/lit8 v3, v3, 0x3

    .line 16
    .line 17
    aget-wide v4, v0, v2

    .line 18
    .line 19
    const-wide/16 v6, 0xff

    .line 20
    .line 21
    shl-long/2addr v6, v3

    .line 22
    not-long v6, v6

    .line 23
    and-long/2addr v4, v6

    .line 24
    const-wide/16 v6, 0xfe

    .line 25
    .line 26
    shl-long/2addr v6, v3

    .line 27
    or-long v3, v4, v6

    .line 28
    .line 29
    aput-wide v3, v0, v2

    .line 30
    .line 31
    add-int/lit8 v2, p1, -0x7

    .line 32
    .line 33
    and-int/2addr v2, v1

    .line 34
    and-int/lit8 v1, v1, 0x7

    .line 35
    .line 36
    add-int/2addr v2, v1

    .line 37
    shr-int/lit8 v1, v2, 0x3

    .line 38
    .line 39
    aput-wide v3, v0, v1

    .line 40
    .line 41
    iget-object v0, p0, Leg2;->b:[Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    aput-object v1, v0, p1

    .line 45
    .line 46
    iget-object v0, p0, Leg2;->c:[J

    .line 47
    .line 48
    aget-wide v1, v0, p1

    .line 49
    .line 50
    const/16 v3, 0x1f

    .line 51
    .line 52
    shr-long v4, v1, v3

    .line 53
    .line 54
    const-wide/32 v6, 0x7fffffff

    .line 55
    .line 56
    .line 57
    and-long/2addr v4, v6

    .line 58
    long-to-int v4, v4

    .line 59
    and-long/2addr v1, v6

    .line 60
    long-to-int v1, v1

    .line 61
    const v2, 0x7fffffff

    .line 62
    .line 63
    .line 64
    if-eq v4, v2, :cond_0

    .line 65
    .line 66
    aget-wide v8, v0, v4

    .line 67
    .line 68
    const-wide/32 v10, -0x80000000

    .line 69
    .line 70
    .line 71
    and-long/2addr v8, v10

    .line 72
    int-to-long v10, v1

    .line 73
    and-long/2addr v10, v6

    .line 74
    or-long/2addr v8, v10

    .line 75
    aput-wide v8, v0, v4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iput v1, p0, Leg2;->d:I

    .line 79
    .line 80
    :goto_0
    if-eq v1, v2, :cond_1

    .line 81
    .line 82
    aget-wide v8, v0, v1

    .line 83
    .line 84
    const-wide v10, -0x3fffffff80000001L    # -2.000000953674316

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v8, v10

    .line 90
    int-to-long v4, v4

    .line 91
    and-long/2addr v4, v6

    .line 92
    shl-long v2, v4, v3

    .line 93
    .line 94
    or-long/2addr v2, v8

    .line 95
    aput-wide v2, v0, v1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iput v4, p0, Leg2;->e:I

    .line 99
    .line 100
    :goto_1
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    aput-wide v1, v0, p1

    .line 106
    .line 107
    return-void
.end method

.method public final j(Ljava/util/Collection;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Leg2;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iget v2, v0, Leg2;->g:I

    .line 9
    .line 10
    iget-object v3, v0, Leg2;->a:[J

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    add-int/lit8 v4, v4, -0x2

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-ltz v4, :cond_3

    .line 17
    .line 18
    move v6, v5

    .line 19
    :goto_0
    aget-wide v7, v3, v6

    .line 20
    .line 21
    not-long v9, v7

    .line 22
    const/4 v11, 0x7

    .line 23
    shl-long/2addr v9, v11

    .line 24
    and-long/2addr v9, v7

    .line 25
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v9, v11

    .line 31
    cmp-long v9, v9, v11

    .line 32
    .line 33
    if-eqz v9, :cond_2

    .line 34
    .line 35
    sub-int v9, v6, v4

    .line 36
    .line 37
    not-int v9, v9

    .line 38
    ushr-int/lit8 v9, v9, 0x1f

    .line 39
    .line 40
    const/16 v10, 0x8

    .line 41
    .line 42
    rsub-int/lit8 v9, v9, 0x8

    .line 43
    .line 44
    move v11, v5

    .line 45
    :goto_1
    if-ge v11, v9, :cond_1

    .line 46
    .line 47
    const-wide/16 v12, 0xff

    .line 48
    .line 49
    and-long/2addr v12, v7

    .line 50
    const-wide/16 v14, 0x80

    .line 51
    .line 52
    cmp-long v12, v12, v14

    .line 53
    .line 54
    if-gez v12, :cond_0

    .line 55
    .line 56
    shl-int/lit8 v12, v6, 0x3

    .line 57
    .line 58
    add-int/2addr v12, v11

    .line 59
    move-object/from16 v13, p1

    .line 60
    .line 61
    check-cast v13, Ljava/lang/Iterable;

    .line 62
    .line 63
    aget-object v14, v1, v12

    .line 64
    .line 65
    invoke-static {v13, v14}, Lo70;->e0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-nez v13, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0, v12}, Leg2;->i(I)V

    .line 72
    .line 73
    .line 74
    :cond_0
    shr-long/2addr v7, v10

    .line 75
    add-int/lit8 v11, v11, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    if-ne v9, v10, :cond_3

    .line 79
    .line 80
    :cond_2
    if-eq v6, v4, :cond_3

    .line 81
    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget v0, v0, Leg2;->g:I

    .line 86
    .line 87
    if-eq v2, v0, :cond_4

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    return v0

    .line 91
    :cond_4
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Leg2;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v2, p0, Leg2;->c:[J

    .line 14
    .line 15
    iget v3, p0, Leg2;->e:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const v5, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-eq v3, v5, :cond_3

    .line 22
    .line 23
    aget-wide v5, v2, v3

    .line 24
    .line 25
    const/16 v7, 0x1f

    .line 26
    .line 27
    shr-long/2addr v5, v7

    .line 28
    const-wide/32 v7, 0x7fffffff

    .line 29
    .line 30
    .line 31
    and-long/2addr v5, v7

    .line 32
    long-to-int v5, v5

    .line 33
    aget-object v3, v1, v3

    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    if-ne v4, v6, :cond_0

    .line 37
    .line 38
    const-string p0, "..."

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    if-eqz v4, :cond_1

    .line 45
    .line 46
    const-string v6, ", "

    .line 47
    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    if-ne v3, p0, :cond_2

    .line 52
    .line 53
    const-string v3, "(this)"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    move v3, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p0, "]"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
