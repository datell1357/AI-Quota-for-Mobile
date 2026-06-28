.class public final Lps2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lay3;

.field public c:Lqa1;

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:J

.field public i:Las0;

.field public j:Lnb;

.field public k:Z

.field public l:J

.field public m:Ldd2;

.field public n:Los2;

.field public o:Lhy1;

.field public p:J

.field public q:I

.field public r:I

.field public s:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lay3;Lqa1;IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lps2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lps2;->b:Lay3;

    .line 7
    .line 8
    iput-object p3, p0, Lps2;->c:Lqa1;

    .line 9
    .line 10
    iput p4, p0, Lps2;->d:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lps2;->e:Z

    .line 13
    .line 14
    iput p6, p0, Lps2;->f:I

    .line 15
    .line 16
    iput p7, p0, Lps2;->g:I

    .line 17
    .line 18
    sget-wide p1, Ler1;->a:J

    .line 19
    .line 20
    iput-wide p1, p0, Lps2;->h:J

    .line 21
    .line 22
    const-wide/16 p1, 0x0

    .line 23
    .line 24
    iput-wide p1, p0, Lps2;->l:J

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p1, p1, p1}, Lnf0;->g(IIII)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lps2;->p:J

    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lps2;->q:I

    .line 35
    .line 36
    iput p1, p0, Lps2;->r:I

    .line 37
    .line 38
    return-void
.end method

.method public static f(Lps2;JLhy1;)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lps2;->b:Lay3;

    .line 6
    .line 7
    iget-object v3, v0, Lps2;->m:Ldd2;

    .line 8
    .line 9
    iget-object v4, v0, Lps2;->i:Las0;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Lps2;->c:Lqa1;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v6, v3, Ldd2;->a:Lhy1;

    .line 19
    .line 20
    if-ne v1, v6, :cond_0

    .line 21
    .line 22
    invoke-static {v2, v1}, Lfl4;->u(Lay3;Lhy1;)Lay3;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object v7, v3, Ldd2;->b:Lay3;

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Lay3;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Las0;->b()F

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    iget-object v7, v3, Ldd2;->c:Lds0;

    .line 39
    .line 40
    iget v7, v7, Lds0;->n:F

    .line 41
    .line 42
    cmpg-float v6, v6, v7

    .line 43
    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    iget-object v6, v3, Ldd2;->d:Lqa1;

    .line 47
    .line 48
    if-ne v5, v6, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object v3, Ldd2;->h:Ldd2;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object v6, v3, Ldd2;->a:Lhy1;

    .line 56
    .line 57
    if-ne v1, v6, :cond_1

    .line 58
    .line 59
    invoke-static {v2, v1}, Lfl4;->u(Lay3;Lhy1;)Lay3;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-object v7, v3, Ldd2;->b:Lay3;

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Lay3;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    invoke-interface {v4}, Las0;->b()F

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    iget-object v7, v3, Ldd2;->c:Lds0;

    .line 76
    .line 77
    iget v7, v7, Lds0;->n:F

    .line 78
    .line 79
    cmpg-float v6, v6, v7

    .line 80
    .line 81
    if-nez v6, :cond_1

    .line 82
    .line 83
    iget-object v6, v3, Ldd2;->d:Lqa1;

    .line 84
    .line 85
    if-ne v5, v6, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v3, Ldd2;

    .line 89
    .line 90
    invoke-static {v2, v1}, Lfl4;->u(Lay3;Lhy1;)Lay3;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v4}, Las0;->b()F

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-interface {v4}, Las0;->k()F

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    new-instance v7, Lds0;

    .line 103
    .line 104
    invoke-direct {v7, v6, v4}, Lds0;-><init>(FF)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v1, v2, v7, v5}, Ldd2;-><init>(Lhy1;Lay3;Lds0;Lqa1;)V

    .line 108
    .line 109
    .line 110
    sput-object v3, Ldd2;->h:Ldd2;

    .line 111
    .line 112
    :goto_0
    iput-object v3, v0, Lps2;->m:Ldd2;

    .line 113
    .line 114
    iget v0, v0, Lps2;->g:I

    .line 115
    .line 116
    iget-object v10, v3, Ldd2;->c:Lds0;

    .line 117
    .line 118
    iget v1, v3, Ldd2;->g:F

    .line 119
    .line 120
    iget v2, v3, Ldd2;->f:F

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v14, 0x1

    .line 128
    if-nez v4, :cond_2

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    :cond_2
    sget-object v5, Led2;->a:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v6, v3, Ldd2;->e:Lay3;

    .line 139
    .line 140
    iget-object v9, v3, Ldd2;->d:Lqa1;

    .line 141
    .line 142
    new-instance v13, Lrb;

    .line 143
    .line 144
    sget-object v7, Lg01;->n:Lg01;

    .line 145
    .line 146
    move-object v8, v7

    .line 147
    move-object v4, v13

    .line 148
    invoke-direct/range {v4 .. v10}, Lrb;-><init>(Ljava/lang/String;Lay3;Ljava/util/List;Ljava/util/List;Lqa1;Las0;)V

    .line 149
    .line 150
    .line 151
    const/16 v1, 0xf

    .line 152
    .line 153
    invoke-static {v11, v11, v1}, Lnf0;->b(III)J

    .line 154
    .line 155
    .line 156
    move-result-wide v16

    .line 157
    new-instance v12, Lnb;

    .line 158
    .line 159
    move v15, v14

    .line 160
    invoke-direct/range {v12 .. v17}, Lnb;-><init>(Lrb;IIJ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Lnb;->b()F

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    sget-object v5, Led2;->b:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v6, v3, Ldd2;->e:Lay3;

    .line 170
    .line 171
    iget-object v9, v3, Ldd2;->d:Lqa1;

    .line 172
    .line 173
    new-instance v13, Lrb;

    .line 174
    .line 175
    move-object v4, v13

    .line 176
    invoke-direct/range {v4 .. v10}, Lrb;-><init>(Ljava/lang/String;Lay3;Ljava/util/List;Ljava/util/List;Lqa1;Las0;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v11, v11, v1}, Lnf0;->b(III)J

    .line 180
    .line 181
    .line 182
    move-result-wide v16

    .line 183
    new-instance v12, Lnb;

    .line 184
    .line 185
    const/4 v14, 0x2

    .line 186
    invoke-direct/range {v12 .. v17}, Lnb;-><init>(Lrb;IIJ)V

    .line 187
    .line 188
    .line 189
    move v14, v15

    .line 190
    invoke-virtual {v12}, Lnb;->b()F

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    sub-float/2addr v1, v2

    .line 195
    iput v2, v3, Ldd2;->g:F

    .line 196
    .line 197
    iput v1, v3, Ldd2;->f:F

    .line 198
    .line 199
    move/from16 v18, v2

    .line 200
    .line 201
    move v2, v1

    .line 202
    move/from16 v1, v18

    .line 203
    .line 204
    :cond_3
    if-eq v0, v14, :cond_5

    .line 205
    .line 206
    sub-int/2addr v0, v14

    .line 207
    int-to-float v0, v0

    .line 208
    mul-float/2addr v2, v0

    .line 209
    add-float/2addr v2, v1

    .line 210
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-gez v0, :cond_4

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    move v11, v0

    .line 218
    :goto_1
    invoke-static/range {p1 .. p2}, Lmf0;->g(J)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-le v11, v0, :cond_6

    .line 223
    .line 224
    move v11, v0

    .line 225
    goto :goto_2

    .line 226
    :cond_5
    invoke-static/range {p1 .. p2}, Lmf0;->i(J)I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    :cond_6
    :goto_2
    invoke-static/range {p1 .. p2}, Lmf0;->g(J)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-static/range {p1 .. p2}, Lmf0;->j(J)I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-static/range {p1 .. p2}, Lmf0;->h(J)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-static {v1, v2, v11, v0}, Lnf0;->a(IIII)J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    return-wide v0
.end method


# virtual methods
.method public final a(ILhy1;)I
    .locals 12

    .line 1
    iget v0, p0, Lps2;->q:I

    .line 2
    .line 3
    iget v1, p0, Lps2;->r:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, p1, v1, v0}, Lnf0;->a(IIII)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget v2, p0, Lps2;->g:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-le v2, v3, :cond_1

    .line 23
    .line 24
    invoke-static {p0, v0, v1, p2}, Lps2;->f(Lps2;JLhy1;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :cond_1
    invoke-virtual {p0, p2}, Lps2;->e(Lhy1;)Los2;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-boolean v2, p0, Lps2;->e:Z

    .line 33
    .line 34
    iget v4, p0, Lps2;->d:I

    .line 35
    .line 36
    invoke-interface {p2}, Los2;->c()F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-static {v0, v1, v2, v4, v5}, Lse0;->k(JZIF)J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    iget-boolean v2, p0, Lps2;->e:Z

    .line 45
    .line 46
    iget v9, p0, Lps2;->d:I

    .line 47
    .line 48
    iget v4, p0, Lps2;->f:I

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    if-ne v9, v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v2, 0x4

    .line 57
    if-ne v9, v2, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x5

    .line 61
    if-ne v9, v2, :cond_4

    .line 62
    .line 63
    :goto_0
    move v8, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-ge v4, v3, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    move v8, v4

    .line 69
    :goto_1
    new-instance v6, Lnb;

    .line 70
    .line 71
    move-object v7, p2

    .line 72
    check-cast v7, Lrb;

    .line 73
    .line 74
    invoke-direct/range {v6 .. v11}, Lnb;-><init>(Lrb;IIJ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Lnb;->b()F

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {p2}, Lis0;->p(F)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {v0, v1}, Lmf0;->i(J)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-ge p2, v0, :cond_6

    .line 90
    .line 91
    move p2, v0

    .line 92
    :cond_6
    iput p1, p0, Lps2;->q:I

    .line 93
    .line 94
    iput p2, p0, Lps2;->r:I

    .line 95
    .line 96
    return p2
.end method

.method public final b(JLhy1;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-wide v2, v0, Lps2;->s:J

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    shl-long/2addr v2, v4

    .line 9
    const-wide/16 v5, 0x3

    .line 10
    .line 11
    or-long/2addr v2, v5

    .line 12
    iput-wide v2, v0, Lps2;->s:J

    .line 13
    .line 14
    iget v2, v0, Lps2;->g:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-le v2, v3, :cond_0

    .line 18
    .line 19
    invoke-static/range {p0 .. p3}, Lps2;->f(Lps2;JLhy1;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-wide/from16 v5, p1

    .line 25
    .line 26
    :goto_0
    iget-object v2, v0, Lps2;->j:Lnb;

    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v8, 0x0

    .line 30
    const-wide v9, 0xffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const/16 v11, 0x20

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    iget-object v12, v0, Lps2;->n:Los2;

    .line 42
    .line 43
    if-nez v12, :cond_2

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_2
    invoke-interface {v12}, Los2;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-eqz v12, :cond_3

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_3
    iget-object v12, v0, Lps2;->o:Lhy1;

    .line 56
    .line 57
    if-eq v1, v12, :cond_4

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_4
    iget-wide v12, v0, Lps2;->p:J

    .line 62
    .line 63
    invoke-static {v5, v6, v12, v13}, Lmf0;->b(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    invoke-static {v5, v6}, Lmf0;->h(J)I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    iget-wide v13, v0, Lps2;->p:J

    .line 75
    .line 76
    invoke-static {v13, v14}, Lmf0;->h(J)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-eq v12, v13, :cond_6

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_6
    invoke-static {v5, v6}, Lmf0;->j(J)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    iget-wide v13, v0, Lps2;->p:J

    .line 89
    .line 90
    invoke-static {v13, v14}, Lmf0;->j(J)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-eq v12, v13, :cond_7

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    invoke-static {v5, v6}, Lmf0;->g(J)I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    int-to-float v12, v12

    .line 102
    invoke-virtual {v2}, Lnb;->b()F

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    cmpg-float v12, v12, v13

    .line 107
    .line 108
    if-ltz v12, :cond_d

    .line 109
    .line 110
    iget-object v2, v2, Lnb;->d:Lmx3;

    .line 111
    .line 112
    iget-boolean v2, v2, Lmx3;->d:Z

    .line 113
    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    :goto_1
    iget-wide v1, v0, Lps2;->p:J

    .line 118
    .line 119
    invoke-static {v5, v6, v1, v2}, Lmf0;->b(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_c

    .line 124
    .line 125
    iget-object v1, v0, Lps2;->j:Lnb;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v2, v1, Lnb;->a:Lrb;

    .line 131
    .line 132
    iget-object v2, v2, Lrb;->i:Lmy1;

    .line 133
    .line 134
    invoke-virtual {v2}, Lmy1;->c()F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1}, Lnb;->c()F

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Lis0;->p(F)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v1}, Lnb;->b()F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-static {v4}, Lis0;->p(F)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    int-to-long v12, v2

    .line 159
    shl-long/2addr v12, v11

    .line 160
    int-to-long v14, v4

    .line 161
    and-long/2addr v14, v9

    .line 162
    or-long/2addr v12, v14

    .line 163
    invoke-static {v5, v6, v12, v13}, Lnf0;->d(JJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    iput-wide v12, v0, Lps2;->l:J

    .line 168
    .line 169
    iget v2, v0, Lps2;->d:I

    .line 170
    .line 171
    if-ne v2, v7, :cond_9

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    shr-long v14, v12, v11

    .line 175
    .line 176
    long-to-int v2, v14

    .line 177
    int-to-float v2, v2

    .line 178
    invoke-virtual {v1}, Lnb;->c()F

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    cmpg-float v2, v2, v4

    .line 183
    .line 184
    if-ltz v2, :cond_b

    .line 185
    .line 186
    and-long/2addr v9, v12

    .line 187
    long-to-int v2, v9

    .line 188
    int-to-float v2, v2

    .line 189
    invoke-virtual {v1}, Lnb;->b()F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    cmpg-float v1, v2, v1

    .line 194
    .line 195
    if-gez v1, :cond_a

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_a
    :goto_2
    move v3, v8

    .line 199
    :cond_b
    :goto_3
    iput-boolean v3, v0, Lps2;->k:Z

    .line 200
    .line 201
    iput-wide v5, v0, Lps2;->p:J

    .line 202
    .line 203
    :cond_c
    return v8

    .line 204
    :cond_d
    :goto_4
    invoke-virtual {v0, v1}, Lps2;->e(Lhy1;)Los2;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-boolean v2, v0, Lps2;->e:Z

    .line 209
    .line 210
    iget v12, v0, Lps2;->d:I

    .line 211
    .line 212
    invoke-interface {v1}, Los2;->c()F

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    invoke-static {v5, v6, v2, v12, v13}, Lse0;->k(JZIF)J

    .line 217
    .line 218
    .line 219
    move-result-wide v18

    .line 220
    iget-boolean v2, v0, Lps2;->e:Z

    .line 221
    .line 222
    iget v12, v0, Lps2;->d:I

    .line 223
    .line 224
    iget v13, v0, Lps2;->f:I

    .line 225
    .line 226
    if-nez v2, :cond_10

    .line 227
    .line 228
    if-ne v12, v4, :cond_e

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_e
    const/4 v2, 0x4

    .line 232
    if-ne v12, v2, :cond_f

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_f
    const/4 v2, 0x5

    .line 236
    if-ne v12, v2, :cond_10

    .line 237
    .line 238
    :goto_5
    move/from16 v16, v3

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_10
    if-ge v13, v3, :cond_11

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_11
    move/from16 v16, v13

    .line 245
    .line 246
    :goto_6
    new-instance v14, Lnb;

    .line 247
    .line 248
    move-object v15, v1

    .line 249
    check-cast v15, Lrb;

    .line 250
    .line 251
    move/from16 v17, v12

    .line 252
    .line 253
    invoke-direct/range {v14 .. v19}, Lnb;-><init>(Lrb;IIJ)V

    .line 254
    .line 255
    .line 256
    iput-wide v5, v0, Lps2;->p:J

    .line 257
    .line 258
    invoke-virtual {v14}, Lnb;->c()F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-static {v1}, Lis0;->p(F)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {v14}, Lnb;->b()F

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-static {v2}, Lis0;->p(F)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    int-to-long v12, v1

    .line 275
    shl-long/2addr v12, v11

    .line 276
    int-to-long v1, v2

    .line 277
    and-long/2addr v1, v9

    .line 278
    or-long/2addr v1, v12

    .line 279
    invoke-static {v5, v6, v1, v2}, Lnf0;->d(JJ)J

    .line 280
    .line 281
    .line 282
    move-result-wide v1

    .line 283
    iput-wide v1, v0, Lps2;->l:J

    .line 284
    .line 285
    iget v4, v0, Lps2;->d:I

    .line 286
    .line 287
    if-ne v4, v7, :cond_12

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_12
    shr-long v4, v1, v11

    .line 291
    .line 292
    long-to-int v4, v4

    .line 293
    int-to-float v4, v4

    .line 294
    invoke-virtual {v14}, Lnb;->c()F

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    cmpg-float v4, v4, v5

    .line 299
    .line 300
    if-ltz v4, :cond_13

    .line 301
    .line 302
    and-long/2addr v1, v9

    .line 303
    long-to-int v1, v1

    .line 304
    int-to-float v1, v1

    .line 305
    invoke-virtual {v14}, Lnb;->b()F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    cmpg-float v1, v1, v2

    .line 310
    .line 311
    if-gez v1, :cond_14

    .line 312
    .line 313
    :cond_13
    move v8, v3

    .line 314
    :cond_14
    :goto_7
    iput-boolean v8, v0, Lps2;->k:Z

    .line 315
    .line 316
    iput-object v14, v0, Lps2;->j:Lnb;

    .line 317
    .line 318
    return v3
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lps2;->j:Lnb;

    .line 3
    .line 4
    iput-object v0, p0, Lps2;->n:Los2;

    .line 5
    .line 6
    iput-object v0, p0, Lps2;->o:Lhy1;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lps2;->q:I

    .line 10
    .line 11
    iput v0, p0, Lps2;->r:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0, v0, v0, v0}, Lnf0;->g(IIII)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lps2;->p:J

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    iput-wide v1, p0, Lps2;->l:J

    .line 23
    .line 24
    iput-boolean v0, p0, Lps2;->k:Z

    .line 25
    .line 26
    return-void
.end method

.method public final d(Las0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lps2;->i:Las0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget v1, Ler1;->b:I

    .line 6
    .line 7
    invoke-interface {p1}, Las0;->b()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p1}, Las0;->k()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, v2}, Ler1;->a(FF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-wide v1, Ler1;->a:J

    .line 21
    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lps2;->i:Las0;

    .line 25
    .line 26
    iput-wide v1, p0, Lps2;->h:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-wide v3, p0, Lps2;->h:J

    .line 32
    .line 33
    cmp-long v0, v3, v1

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iput-object p1, p0, Lps2;->i:Las0;

    .line 39
    .line 40
    iput-wide v1, p0, Lps2;->h:J

    .line 41
    .line 42
    iget-wide v0, p0, Lps2;->s:J

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    shl-long/2addr v0, p1

    .line 46
    const-wide/16 v2, 0x1

    .line 47
    .line 48
    or-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Lps2;->s:J

    .line 50
    .line 51
    invoke-virtual {p0}, Lps2;->c()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final e(Lhy1;)Los2;
    .locals 9

    .line 1
    iget-object v0, p0, Lps2;->n:Los2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lps2;->o:Lhy1;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Los2;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lps2;->o:Lhy1;

    .line 16
    .line 17
    iget-object v3, p0, Lps2;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lps2;->b:Lay3;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lfl4;->u(Lay3;Lhy1;)Lay3;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v8, p0, Lps2;->i:Las0;

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Lps2;->c:Lqa1;

    .line 31
    .line 32
    new-instance v2, Lrb;

    .line 33
    .line 34
    sget-object v5, Lg01;->n:Lg01;

    .line 35
    .line 36
    move-object v6, v5

    .line 37
    invoke-direct/range {v2 .. v8}, Lrb;-><init>(Ljava/lang/String;Lay3;Ljava/util/List;Ljava/util/List;Lqa1;Las0;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v2

    .line 41
    :cond_1
    iput-object v0, p0, Lps2;->n:Los2;

    .line 42
    .line 43
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lps2;->j:Lnb;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "<paragraph>"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "null"

    .line 9
    .line 10
    :goto_0
    iget-wide v1, p0, Lps2;->h:J

    .line 11
    .line 12
    invoke-static {v1, v2}, Ler1;->b(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-wide v2, p0, Lps2;->s:J

    .line 17
    .line 18
    const-string p0, ", lastDensity="

    .line 19
    .line 20
    const-string v4, ", history="

    .line 21
    .line 22
    const-string v5, "ParagraphLayoutCache(paragraph="

    .line 23
    .line 24
    invoke-static {v5, v0, p0, v1, v4}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, ", constraints=$)"

    .line 29
    .line 30
    invoke-static {p0, v2, v3, v0}, Ldi0;->x(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
