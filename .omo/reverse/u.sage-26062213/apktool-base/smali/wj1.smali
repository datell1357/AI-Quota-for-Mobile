.class public final Lwj1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lgy1;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Ldg2;

.field public final g:Lrm2;

.field public final h:Lyf2;


# direct methods
.method public constructor <init>(Lgy1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwj1;->a:Lgy1;

    .line 5
    .line 6
    new-instance p1, Ldg2;

    .line 7
    .line 8
    invoke-direct {p1}, Ldg2;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwj1;->f:Ldg2;

    .line 12
    .line 13
    new-instance p1, Lrm2;

    .line 14
    .line 15
    invoke-direct {p1}, Lrm2;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lwj1;->g:Lrm2;

    .line 19
    .line 20
    new-instance p1, Lyf2;

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lyf2;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lwj1;->h:Lyf2;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v4, v0, Lwj1;->g:Lrm2;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move-object v9, v4

    .line 13
    move v8, v5

    .line 14
    const/4 v7, 0x0

    .line 15
    :goto_0
    iget-object v10, v0, Lwj1;->h:Lyf2;

    .line 16
    .line 17
    if-ge v7, v3, :cond_9

    .line 18
    .line 19
    move-object/from16 v11, p3

    .line 20
    .line 21
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v12

    .line 25
    check-cast v12, Lmd2;

    .line 26
    .line 27
    iget-boolean v13, v12, Lmd2;->A:Z

    .line 28
    .line 29
    if-eqz v13, :cond_8

    .line 30
    .line 31
    new-instance v13, Lj9;

    .line 32
    .line 33
    const/4 v14, 0x6

    .line 34
    invoke-direct {v13, v14, v0, v12}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v13, v12, Lmd2;->z:Lj9;

    .line 38
    .line 39
    if-eqz v8, :cond_5

    .line 40
    .line 41
    iget-object v13, v9, Lrm2;->a:Lug2;

    .line 42
    .line 43
    iget-object v14, v13, Lug2;->n:[Ljava/lang/Object;

    .line 44
    .line 45
    iget v13, v13, Lug2;->p:I

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    :goto_1
    if-ge v15, v13, :cond_1

    .line 49
    .line 50
    aget-object v16, v14, v15

    .line 51
    .line 52
    move-object/from16 v6, v16

    .line 53
    .line 54
    check-cast v6, Lgm2;

    .line 55
    .line 56
    iget-object v6, v6, Lgm2;->c:Lmd2;

    .line 57
    .line 58
    invoke-static {v6, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/16 v16, 0x0

    .line 69
    .line 70
    :goto_2
    move-object/from16 v6, v16

    .line 71
    .line 72
    check-cast v6, Lgm2;

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    iput-boolean v5, v6, Lgm2;->i:Z

    .line 77
    .line 78
    iget-object v9, v6, Lgm2;->d:Ld90;

    .line 79
    .line 80
    invoke-virtual {v9, v1, v2}, Ld90;->b(J)V

    .line 81
    .line 82
    .line 83
    if-eqz p4, :cond_3

    .line 84
    .line 85
    invoke-virtual {v10, v1, v2}, Lyf2;->d(J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    if-nez v9, :cond_2

    .line 90
    .line 91
    new-instance v9, Ldg2;

    .line 92
    .line 93
    invoke-direct {v9}, Ldg2;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v1, v2, v9}, Lyf2;->f(JLjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    check-cast v9, Ldg2;

    .line 100
    .line 101
    invoke-virtual {v9, v6}, Ldg2;->a(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_3
    move-object v9, v6

    .line 105
    goto :goto_4

    .line 106
    :cond_4
    const/4 v8, 0x0

    .line 107
    :cond_5
    new-instance v6, Lgm2;

    .line 108
    .line 109
    invoke-direct {v6, v12}, Lgm2;-><init>(Lmd2;)V

    .line 110
    .line 111
    .line 112
    iget-object v12, v6, Lgm2;->d:Ld90;

    .line 113
    .line 114
    invoke-virtual {v12, v1, v2}, Ld90;->b(J)V

    .line 115
    .line 116
    .line 117
    if-eqz p4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v10, v1, v2}, Lyf2;->d(J)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    if-nez v12, :cond_6

    .line 124
    .line 125
    new-instance v12, Ldg2;

    .line 126
    .line 127
    invoke-direct {v12}, Ldg2;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v1, v2, v12}, Lyf2;->f(JLjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    check-cast v12, Ldg2;

    .line 134
    .line 135
    invoke-virtual {v12, v6}, Ldg2;->a(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-object v9, v9, Lrm2;->a:Lug2;

    .line 139
    .line 140
    invoke-virtual {v9, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_9
    if-eqz p4, :cond_e

    .line 149
    .line 150
    iget-object v0, v10, Lyf2;->b:[J

    .line 151
    .line 152
    iget-object v1, v10, Lyf2;->c:[Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v2, v10, Lyf2;->a:[J

    .line 155
    .line 156
    array-length v3, v2

    .line 157
    add-int/lit8 v3, v3, -0x2

    .line 158
    .line 159
    if-ltz v3, :cond_e

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    :goto_5
    aget-wide v6, v2, v5

    .line 163
    .line 164
    not-long v8, v6

    .line 165
    const/4 v11, 0x7

    .line 166
    shl-long/2addr v8, v11

    .line 167
    and-long/2addr v8, v6

    .line 168
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    and-long/2addr v8, v11

    .line 174
    cmp-long v8, v8, v11

    .line 175
    .line 176
    if-eqz v8, :cond_d

    .line 177
    .line 178
    sub-int v8, v5, v3

    .line 179
    .line 180
    not-int v8, v8

    .line 181
    ushr-int/lit8 v8, v8, 0x1f

    .line 182
    .line 183
    const/16 v9, 0x8

    .line 184
    .line 185
    rsub-int/lit8 v8, v8, 0x8

    .line 186
    .line 187
    const/4 v11, 0x0

    .line 188
    :goto_6
    if-ge v11, v8, :cond_c

    .line 189
    .line 190
    const-wide/16 v12, 0xff

    .line 191
    .line 192
    and-long/2addr v12, v6

    .line 193
    const-wide/16 v14, 0x80

    .line 194
    .line 195
    cmp-long v12, v12, v14

    .line 196
    .line 197
    if-gez v12, :cond_a

    .line 198
    .line 199
    shl-int/lit8 v12, v5, 0x3

    .line 200
    .line 201
    add-int/2addr v12, v11

    .line 202
    aget-wide v13, v0, v12

    .line 203
    .line 204
    aget-object v12, v1, v12

    .line 205
    .line 206
    check-cast v12, Ldg2;

    .line 207
    .line 208
    iget-object v15, v4, Lrm2;->a:Lug2;

    .line 209
    .line 210
    move/from16 p0, v9

    .line 211
    .line 212
    iget-object v9, v15, Lug2;->n:[Ljava/lang/Object;

    .line 213
    .line 214
    iget v15, v15, Lug2;->p:I

    .line 215
    .line 216
    move-object/from16 v16, v0

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_7
    if-ge v0, v15, :cond_b

    .line 220
    .line 221
    aget-object v17, v9, v0

    .line 222
    .line 223
    move/from16 p1, v0

    .line 224
    .line 225
    move-object/from16 v0, v17

    .line 226
    .line 227
    check-cast v0, Lgm2;

    .line 228
    .line 229
    invoke-virtual {v0, v13, v14, v12}, Lgm2;->f(JLdg2;)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v0, p1, 0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_a
    move-object/from16 v16, v0

    .line 236
    .line 237
    move/from16 p0, v9

    .line 238
    .line 239
    :cond_b
    shr-long v6, v6, p0

    .line 240
    .line 241
    add-int/lit8 v11, v11, 0x1

    .line 242
    .line 243
    move/from16 v9, p0

    .line 244
    .line 245
    move-object/from16 v0, v16

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_c
    move-object/from16 v16, v0

    .line 249
    .line 250
    move v0, v9

    .line 251
    if-ne v8, v0, :cond_e

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_d
    move-object/from16 v16, v0

    .line 255
    .line 256
    :goto_8
    if-eq v5, v3, :cond_e

    .line 257
    .line 258
    add-int/lit8 v5, v5, 0x1

    .line 259
    .line 260
    move-object/from16 v0, v16

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_e
    invoke-virtual {v10}, Lyf2;->a()V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final b(Lft1;Z)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lft1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le82;

    .line 4
    .line 5
    iget-object v1, p0, Lwj1;->a:Lgy1;

    .line 6
    .line 7
    iget-object v2, p0, Lwj1;->g:Lrm2;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1, p1, p2}, Lrm2;->a(Le82;Lgy1;Lft1;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, v2, Lrm2;->a:Lug2;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lwj1;->b:Z

    .line 21
    .line 22
    iget-object v4, v1, Lug2;->n:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v5, v1, Lug2;->p:I

    .line 25
    .line 26
    move v6, v3

    .line 27
    move v7, v6

    .line 28
    :goto_0
    if-ge v6, v5, :cond_3

    .line 29
    .line 30
    aget-object v8, v4, v6

    .line 31
    .line 32
    check-cast v8, Lgm2;

    .line 33
    .line 34
    invoke-virtual {v8, p1, p2}, Lgm2;->e(Lft1;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_2

    .line 39
    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v7, v3

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    move v7, v0

    .line 46
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p2, v1, Lug2;->n:[Ljava/lang/Object;

    .line 50
    .line 51
    iget v1, v1, Lug2;->p:I

    .line 52
    .line 53
    move v4, v3

    .line 54
    move v5, v4

    .line 55
    :goto_3
    if-ge v4, v1, :cond_6

    .line 56
    .line 57
    aget-object v6, p2, v4

    .line 58
    .line 59
    check-cast v6, Lgm2;

    .line 60
    .line 61
    invoke-virtual {v6, p1}, Lgm2;->d(Lft1;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_5

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    move v5, v3

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    :goto_4
    move v5, v0

    .line 73
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    invoke-virtual {v2, p1}, Lrm2;->b(Lft1;)V

    .line 77
    .line 78
    .line 79
    if-nez v5, :cond_8

    .line 80
    .line 81
    if-eqz v7, :cond_7

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_7
    move v0, v3

    .line 85
    :cond_8
    :goto_6
    iput-boolean v3, p0, Lwj1;->b:Z

    .line 86
    .line 87
    iget-boolean p1, p0, Lwj1;->e:Z

    .line 88
    .line 89
    if-eqz p1, :cond_a

    .line 90
    .line 91
    iput-boolean v3, p0, Lwj1;->e:Z

    .line 92
    .line 93
    iget-object p1, p0, Lwj1;->f:Ldg2;

    .line 94
    .line 95
    iget p2, p1, Ldg2;->b:I

    .line 96
    .line 97
    move v1, v3

    .line 98
    :goto_7
    if-ge v1, p2, :cond_9

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ldg2;->f(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lmd2;

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Lwj1;->d(Lmd2;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_9
    invoke-virtual {p1}, Ldg2;->d()V

    .line 113
    .line 114
    .line 115
    :cond_a
    iget-boolean p1, p0, Lwj1;->c:Z

    .line 116
    .line 117
    if-eqz p1, :cond_b

    .line 118
    .line 119
    iput-boolean v3, p0, Lwj1;->c:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Lwj1;->c()V

    .line 122
    .line 123
    .line 124
    :cond_b
    iget-boolean p1, p0, Lwj1;->d:Z

    .line 125
    .line 126
    if-eqz p1, :cond_c

    .line 127
    .line 128
    iput-boolean v3, p0, Lwj1;->d:Z

    .line 129
    .line 130
    iget-object p0, v2, Lrm2;->a:Lug2;

    .line 131
    .line 132
    invoke-virtual {p0}, Lug2;->h()V

    .line 133
    .line 134
    .line 135
    :cond_c
    return v0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lwj1;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lwj1;->c:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lwj1;->g:Lrm2;

    .line 10
    .line 11
    iget-object v2, v0, Lrm2;->a:Lug2;

    .line 12
    .line 13
    iget-object v3, v2, Lug2;->n:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v2, v2, Lug2;->p:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    aget-object v5, v3, v4

    .line 21
    .line 22
    check-cast v5, Lgm2;

    .line 23
    .line 24
    invoke-virtual {v5}, Lgm2;->c()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v2, p0, Lwj1;->d:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iput-boolean v1, p0, Lwj1;->d:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p0, v0, Lrm2;->a:Lug2;

    .line 38
    .line 39
    invoke-virtual {p0}, Lug2;->h()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d(Lmd2;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lwj1;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lwj1;->e:Z

    .line 7
    .line 8
    iget-object p0, p0, Lwj1;->f:Ldg2;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ldg2;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lwj1;->g:Lrm2;

    .line 15
    .line 16
    iget-object v0, p0, Lrm2;->b:Ldg2;

    .line 17
    .line 18
    invoke-virtual {v0}, Ldg2;->d()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Ldg2;->i()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    iget p0, v0, Ldg2;->b:I

    .line 31
    .line 32
    sub-int/2addr p0, v1

    .line 33
    invoke-virtual {v0, p0}, Ldg2;->k(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lrm2;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, Lrm2;->a:Lug2;

    .line 41
    .line 42
    iget v4, v3, Lug2;->p:I

    .line 43
    .line 44
    if-ge v2, v4, :cond_1

    .line 45
    .line 46
    iget-object v3, v3, Lug2;->n:[Ljava/lang/Object;

    .line 47
    .line 48
    aget-object v3, v3, v2

    .line 49
    .line 50
    check-cast v3, Lgm2;

    .line 51
    .line 52
    iget-object v4, v3, Lgm2;->c:Lmd2;

    .line 53
    .line 54
    invoke-static {v4, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    iget-object v4, p0, Lrm2;->a:Lug2;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Lug2;->k(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lgm2;->c()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, v3}, Ldg2;->a(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method
