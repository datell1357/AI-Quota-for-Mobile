.class public final Lna4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lka4;


# instance fields
.field public final n:Lsf2;

.field public final o:Ltf2;

.field public final p:I

.field public final q:Lmy0;

.field public r:[I

.field public s:[F

.field public t:Lbf;

.field public u:Lbf;

.field public v:Lbf;

.field public w:Lbf;

.field public x:[F

.field public y:[F

.field public z:Ldh1;


# direct methods
.method public constructor <init>(Lsf2;Ltf2;ILmy0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna4;->n:Lsf2;

    .line 5
    .line 6
    iput-object p2, p0, Lna4;->o:Ltf2;

    .line 7
    .line 8
    iput p3, p0, Lna4;->p:I

    .line 9
    .line 10
    iput-object p4, p0, Lna4;->q:Lmy0;

    .line 11
    .line 12
    sget-object p1, Lja4;->a:[I

    .line 13
    .line 14
    iput-object p1, p0, Lna4;->r:[I

    .line 15
    .line 16
    sget-object p1, Lja4;->b:[F

    .line 17
    .line 18
    iput-object p1, p0, Lna4;->s:[F

    .line 19
    .line 20
    iput-object p1, p0, Lna4;->x:[F

    .line 21
    .line 22
    iput-object p1, p0, Lna4;->y:[F

    .line 23
    .line 24
    sget-object p1, Lja4;->c:Ldh1;

    .line 25
    .line 26
    iput-object p1, p0, Lna4;->z:Ldh1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lna4;->n:Lsf2;

    .line 2
    .line 3
    iget v0, p0, Lsf2;->b:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_4

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-gt v1, v0, :cond_1

    .line 11
    .line 12
    add-int v2, v1, v0

    .line 13
    .line 14
    ushr-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iget-object v3, p0, Lsf2;->a:[I

    .line 17
    .line 18
    aget v3, v3, v2

    .line 19
    .line 20
    if-ge v3, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-le v3, p1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v0, v2, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    neg-int v2, v1

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    neg-int p0, v2

    .line 39
    return p0

    .line 40
    :cond_3
    return v2

    .line 41
    :cond_4
    const-string p0, ""

    .line 42
    .line 43
    invoke-static {p0}, Lmk0;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1
.end method

.method public final d(IZI)F
    .locals 3

    .line 1
    iget-object v0, p0, Lna4;->n:Lsf2;

    .line 2
    .line 3
    iget v1, v0, Lsf2;->b:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 8
    .line 9
    if-lt p1, v1, :cond_0

    .line 10
    .line 11
    int-to-float p0, p3

    .line 12
    :goto_0
    div-float/2addr p0, v2

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lsf2;->c(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lsf2;->c(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p3, v1, :cond_1

    .line 25
    .line 26
    int-to-float p0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sub-int/2addr p1, v1

    .line 29
    iget-object v0, p0, Lna4;->o:Ltf2;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lma4;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Lma4;->b:Lmy0;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lna4;->q:Lmy0;

    .line 44
    .line 45
    :cond_3
    sub-int/2addr p3, v1

    .line 46
    int-to-float p0, p3

    .line 47
    int-to-float p1, p1

    .line 48
    div-float/2addr p0, p1

    .line 49
    invoke-interface {v0, p0}, Lmy0;->a(F)F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    return p0

    .line 56
    :cond_4
    mul-float/2addr p1, p0

    .line 57
    int-to-float p0, v1

    .line 58
    add-float/2addr p1, p0

    .line 59
    div-float/2addr p1, v2

    .line 60
    return p1
.end method

.method public final e(Lbf;Lbf;Lbf;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lna4;->z:Ldh1;

    .line 2
    .line 3
    sget-object v1, Lja4;->c:Ldh1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v1, p0, Lna4;->t:Lbf;

    .line 12
    .line 13
    iget-object v3, p0, Lna4;->o:Ltf2;

    .line 14
    .line 15
    iget-object v4, p0, Lna4;->n:Lsf2;

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lbf;->c()Lbf;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lna4;->t:Lbf;

    .line 24
    .line 25
    invoke-virtual {p3}, Lbf;->c()Lbf;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, p0, Lna4;->u:Lbf;

    .line 30
    .line 31
    iget p3, v4, Lsf2;->b:I

    .line 32
    .line 33
    new-array v1, p3, [F

    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_1
    if-ge v5, p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lsf2;->c(I)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    int-to-float v6, v6

    .line 43
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 44
    .line 45
    div-float/2addr v6, v7

    .line 46
    aput v6, v1, v5

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iput-object v1, p0, Lna4;->s:[F

    .line 52
    .line 53
    iget p3, v4, Lsf2;->b:I

    .line 54
    .line 55
    new-array v1, p3, [I

    .line 56
    .line 57
    move v5, v2

    .line 58
    :goto_2
    if-ge v5, p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Lsf2;->c(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v3, v6}, Lhs1;->b(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lma4;

    .line 69
    .line 70
    aput v2, v1, v5

    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iput-object v1, p0, Lna4;->r:[I

    .line 76
    .line 77
    :cond_3
    if-nez v0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-object p3, p0, Lna4;->z:Ldh1;

    .line 81
    .line 82
    sget-object v0, Lja4;->c:Ldh1;

    .line 83
    .line 84
    if-eq p3, v0, :cond_6

    .line 85
    .line 86
    iget-object p3, p0, Lna4;->v:Lbf;

    .line 87
    .line 88
    invoke-static {p3, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    iget-object p3, p0, Lna4;->w:Lbf;

    .line 95
    .line 96
    invoke-static {p3, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-nez p3, :cond_5

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_3
    return-void

    .line 104
    :cond_6
    :goto_4
    iput-object p1, p0, Lna4;->v:Lbf;

    .line 105
    .line 106
    iput-object p2, p0, Lna4;->w:Lbf;

    .line 107
    .line 108
    invoke-virtual {p1}, Lbf;->b()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    rem-int/lit8 p3, p3, 0x2

    .line 113
    .line 114
    invoke-virtual {p1}, Lbf;->b()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    add-int/2addr v0, p3

    .line 119
    new-array p3, v0, [F

    .line 120
    .line 121
    iput-object p3, p0, Lna4;->x:[F

    .line 122
    .line 123
    new-array p3, v0, [F

    .line 124
    .line 125
    iput-object p3, p0, Lna4;->y:[F

    .line 126
    .line 127
    iget p3, v4, Lsf2;->b:I

    .line 128
    .line 129
    new-array v1, p3, [[F

    .line 130
    .line 131
    move v5, v2

    .line 132
    :goto_5
    if-ge v5, p3, :cond_b

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Lsf2;->c(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    invoke-virtual {v3, v6}, Lhs1;->b(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    check-cast v7, Lma4;

    .line 143
    .line 144
    if-nez v6, :cond_7

    .line 145
    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    new-array v6, v0, [F

    .line 149
    .line 150
    move v7, v2

    .line 151
    :goto_6
    if-ge v7, v0, :cond_a

    .line 152
    .line 153
    invoke-virtual {p1, v7}, Lbf;->a(I)F

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    aput v8, v6, v7

    .line 158
    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_7
    iget v8, p0, Lna4;->p:I

    .line 163
    .line 164
    if-ne v6, v8, :cond_8

    .line 165
    .line 166
    if-nez v7, :cond_8

    .line 167
    .line 168
    new-array v6, v0, [F

    .line 169
    .line 170
    move v7, v2

    .line 171
    :goto_7
    if-ge v7, v0, :cond_a

    .line 172
    .line 173
    invoke-virtual {p2, v7}, Lbf;->a(I)F

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    aput v8, v6, v7

    .line 178
    .line 179
    add-int/lit8 v7, v7, 0x1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object v6, v7, Lma4;->a:Lbf;

    .line 186
    .line 187
    new-array v7, v0, [F

    .line 188
    .line 189
    move v8, v2

    .line 190
    :goto_8
    if-ge v8, v0, :cond_9

    .line 191
    .line 192
    invoke-virtual {v6, v8}, Lbf;->a(I)F

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    aput v9, v7, v8

    .line 197
    .line 198
    add-int/lit8 v8, v8, 0x1

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_9
    move-object v6, v7

    .line 202
    :cond_a
    aput-object v6, v1, v5

    .line 203
    .line 204
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    new-instance p1, Ldh1;

    .line 208
    .line 209
    iget-object p2, p0, Lna4;->r:[I

    .line 210
    .line 211
    iget-object p3, p0, Lna4;->s:[F

    .line 212
    .line 213
    invoke-direct {p1, p2, p3, v1}, Ldh1;-><init>([I[F[[F)V

    .line 214
    .line 215
    .line 216
    iput-object p1, p0, Lna4;->z:Ldh1;

    .line 217
    .line 218
    return-void
.end method

.method public final k()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final m(JLbf;Lbf;Lbf;)Lbf;
    .locals 13

    .line 1
    move-object/from16 v5, p5

    .line 2
    .line 3
    const-wide/32 v6, 0xf4240

    .line 4
    .line 5
    .line 6
    div-long v0, p1, v6

    .line 7
    .line 8
    sget-object v2, Lja4;->a:[I

    .line 9
    .line 10
    iget v2, p0, Lna4;->p:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v8

    .line 16
    .line 17
    if-gez v4, :cond_0

    .line 18
    .line 19
    move-wide v0, v8

    .line 20
    :cond_0
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    move-wide v10, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-wide v10, v0

    .line 27
    :goto_0
    cmp-long v0, v10, v8

    .line 28
    .line 29
    if-gez v0, :cond_2

    .line 30
    .line 31
    return-object v5

    .line 32
    :cond_2
    move-object/from16 v3, p3

    .line 33
    .line 34
    move-object/from16 v4, p4

    .line 35
    .line 36
    invoke-virtual {p0, v3, v4, v5}, Lna4;->e(Lbf;Lbf;Lbf;)V

    .line 37
    .line 38
    .line 39
    iget-object v8, p0, Lna4;->u:Lbf;

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lna4;->z:Ldh1;

    .line 45
    .line 46
    sget-object v1, Lja4;->c:Ldh1;

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    if-eq v0, v1, :cond_a

    .line 50
    .line 51
    long-to-int v0, v10

    .line 52
    invoke-virtual {p0, v0}, Lna4;->b(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p0, v1, v9, v0}, Lna4;->d(IZI)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Lna4;->y:[F

    .line 61
    .line 62
    iget-object p0, p0, Lna4;->z:Ldh1;

    .line 63
    .line 64
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, [[Llh;

    .line 67
    .line 68
    aget-object v2, p0, v9

    .line 69
    .line 70
    aget-object v2, v2, v9

    .line 71
    .line 72
    iget v2, v2, Llh;->a:F

    .line 73
    .line 74
    array-length v3, p0

    .line 75
    const/4 v4, 0x1

    .line 76
    sub-int/2addr v3, v4

    .line 77
    aget-object v3, p0, v3

    .line 78
    .line 79
    aget-object v3, v3, v9

    .line 80
    .line 81
    iget v3, v3, Llh;->b:F

    .line 82
    .line 83
    cmpg-float v5, v0, v2

    .line 84
    .line 85
    if-gez v5, :cond_3

    .line 86
    .line 87
    move v0, v2

    .line 88
    :cond_3
    cmpl-float v2, v0, v3

    .line 89
    .line 90
    if-lez v2, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v3, v0

    .line 94
    :goto_1
    array-length v0, v1

    .line 95
    array-length v2, p0

    .line 96
    move v5, v9

    .line 97
    move v6, v5

    .line 98
    :goto_2
    if-ge v5, v2, :cond_9

    .line 99
    .line 100
    move v7, v9

    .line 101
    move v10, v7

    .line 102
    :goto_3
    add-int/lit8 v11, v0, -0x1

    .line 103
    .line 104
    if-ge v7, v11, :cond_7

    .line 105
    .line 106
    aget-object v11, p0, v5

    .line 107
    .line 108
    aget-object v11, v11, v10

    .line 109
    .line 110
    iget v12, v11, Llh;->b:F

    .line 111
    .line 112
    cmpg-float v12, v3, v12

    .line 113
    .line 114
    if-gtz v12, :cond_6

    .line 115
    .line 116
    iget-boolean v6, v11, Llh;->p:Z

    .line 117
    .line 118
    if-eqz v6, :cond_5

    .line 119
    .line 120
    iget v6, v11, Llh;->q:F

    .line 121
    .line 122
    aput v6, v1, v7

    .line 123
    .line 124
    add-int/lit8 v6, v7, 0x1

    .line 125
    .line 126
    iget v11, v11, Llh;->r:F

    .line 127
    .line 128
    aput v11, v1, v6

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-virtual {v11, v3}, Llh;->c(F)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11}, Llh;->a()F

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    aput v6, v1, v7

    .line 139
    .line 140
    add-int/lit8 v6, v7, 0x1

    .line 141
    .line 142
    invoke-virtual {v11}, Llh;->b()F

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    aput v11, v1, v6

    .line 147
    .line 148
    :goto_4
    move v6, v4

    .line 149
    :cond_6
    add-int/lit8 v7, v7, 0x2

    .line 150
    .line 151
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    if-eqz v6, :cond_8

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    :goto_5
    array-length p0, v1

    .line 161
    :goto_6
    if-ge v9, p0, :cond_b

    .line 162
    .line 163
    aget v0, v1, v9

    .line 164
    .line 165
    invoke-virtual {v8, v9, v0}, Lbf;->e(IF)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_a
    const-wide/16 v0, 0x1

    .line 172
    .line 173
    sub-long v0, v10, v0

    .line 174
    .line 175
    mul-long v1, v0, v6

    .line 176
    .line 177
    move-object v0, p0

    .line 178
    invoke-virtual/range {v0 .. v5}, Lna4;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    mul-long v1, v10, v6

    .line 183
    .line 184
    move-object/from16 v3, p3

    .line 185
    .line 186
    move-object/from16 v4, p4

    .line 187
    .line 188
    move-object/from16 v5, p5

    .line 189
    .line 190
    invoke-virtual/range {v0 .. v5}, Lna4;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v12}, Lbf;->b()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    :goto_7
    if-ge v9, v0, :cond_b

    .line 199
    .line 200
    invoke-virtual {v12, v9}, Lbf;->a(I)F

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {p0, v9}, Lbf;->a(I)F

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    sub-float/2addr v1, v2

    .line 209
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 210
    .line 211
    mul-float/2addr v1, v2

    .line 212
    invoke-virtual {v8, v9, v1}, Lbf;->e(IF)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v9, v9, 0x1

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_b
    return-object v8
.end method

.method public final o()I
    .locals 0

    .line 1
    iget p0, p0, Lna4;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public final p(JLbf;Lbf;Lbf;)Lbf;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-wide/32 v3, 0xf4240

    .line 8
    .line 9
    .line 10
    div-long v3, p1, v3

    .line 11
    .line 12
    sget-object v5, Lja4;->a:[I

    .line 13
    .line 14
    iget v5, v0, Lna4;->p:I

    .line 15
    .line 16
    int-to-long v6, v5

    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    cmp-long v10, v3, v8

    .line 20
    .line 21
    if-gez v10, :cond_0

    .line 22
    .line 23
    move-wide v3, v8

    .line 24
    :cond_0
    cmp-long v8, v3, v6

    .line 25
    .line 26
    if-lez v8, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-wide v6, v3

    .line 30
    :goto_0
    long-to-int v3, v6

    .line 31
    iget-object v4, v0, Lna4;->o:Ltf2;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Lhs1;->b(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lma4;

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    iget-object v0, v6, Lma4;->a:Lbf;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    if-lt v3, v5, :cond_3

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_3
    if-gtz v3, :cond_4

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_4
    move-object/from16 v5, p5

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v5}, Lna4;->e(Lbf;Lbf;Lbf;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v0, Lna4;->t:Lbf;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v6, v0, Lna4;->z:Ldh1;

    .line 61
    .line 62
    sget-object v7, Lja4;->c:Ldh1;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x1

    .line 66
    if-eq v6, v7, :cond_e

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lna4;->b(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, v8, v3}, Lna4;->d(IZI)F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, v0, Lna4;->x:[F

    .line 77
    .line 78
    iget-object v0, v0, Lna4;->z:Ldh1;

    .line 79
    .line 80
    iget-object v0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, [[Llh;

    .line 83
    .line 84
    array-length v3, v0

    .line 85
    sub-int/2addr v3, v9

    .line 86
    aget-object v4, v0, v8

    .line 87
    .line 88
    aget-object v4, v4, v8

    .line 89
    .line 90
    iget v4, v4, Llh;->a:F

    .line 91
    .line 92
    aget-object v6, v0, v3

    .line 93
    .line 94
    aget-object v6, v6, v8

    .line 95
    .line 96
    iget v6, v6, Llh;->b:F

    .line 97
    .line 98
    array-length v7, v2

    .line 99
    cmpg-float v10, v1, v4

    .line 100
    .line 101
    if-ltz v10, :cond_a

    .line 102
    .line 103
    cmpl-float v10, v1, v6

    .line 104
    .line 105
    if-lez v10, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    array-length v3, v0

    .line 109
    move v4, v8

    .line 110
    move v6, v4

    .line 111
    :goto_1
    if-ge v4, v3, :cond_d

    .line 112
    .line 113
    move v10, v8

    .line 114
    move v11, v10

    .line 115
    :goto_2
    add-int/lit8 v12, v7, -0x1

    .line 116
    .line 117
    if-ge v10, v12, :cond_8

    .line 118
    .line 119
    aget-object v12, v0, v4

    .line 120
    .line 121
    aget-object v12, v12, v11

    .line 122
    .line 123
    iget v13, v12, Llh;->b:F

    .line 124
    .line 125
    cmpg-float v13, v1, v13

    .line 126
    .line 127
    if-gtz v13, :cond_7

    .line 128
    .line 129
    iget-boolean v6, v12, Llh;->p:Z

    .line 130
    .line 131
    if-eqz v6, :cond_6

    .line 132
    .line 133
    iget v6, v12, Llh;->a:F

    .line 134
    .line 135
    sub-float v13, v1, v6

    .line 136
    .line 137
    iget v14, v12, Llh;->k:F

    .line 138
    .line 139
    mul-float/2addr v13, v14

    .line 140
    iget v15, v12, Llh;->c:F

    .line 141
    .line 142
    iget v8, v12, Llh;->e:F

    .line 143
    .line 144
    sub-float/2addr v8, v15

    .line 145
    mul-float/2addr v8, v13

    .line 146
    add-float/2addr v8, v15

    .line 147
    aput v8, v2, v10

    .line 148
    .line 149
    add-int/lit8 v8, v10, 0x1

    .line 150
    .line 151
    sub-float v6, v1, v6

    .line 152
    .line 153
    mul-float/2addr v6, v14

    .line 154
    iget v13, v12, Llh;->d:F

    .line 155
    .line 156
    iget v12, v12, Llh;->f:F

    .line 157
    .line 158
    sub-float/2addr v12, v13

    .line 159
    mul-float/2addr v12, v6

    .line 160
    add-float/2addr v12, v13

    .line 161
    aput v12, v2, v8

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {v12, v1}, Llh;->c(F)V

    .line 165
    .line 166
    .line 167
    iget v6, v12, Llh;->q:F

    .line 168
    .line 169
    iget v8, v12, Llh;->n:F

    .line 170
    .line 171
    iget v13, v12, Llh;->h:F

    .line 172
    .line 173
    mul-float/2addr v8, v13

    .line 174
    add-float/2addr v8, v6

    .line 175
    aput v8, v2, v10

    .line 176
    .line 177
    add-int/lit8 v6, v10, 0x1

    .line 178
    .line 179
    iget v8, v12, Llh;->r:F

    .line 180
    .line 181
    iget v13, v12, Llh;->o:F

    .line 182
    .line 183
    iget v12, v12, Llh;->i:F

    .line 184
    .line 185
    mul-float/2addr v13, v12

    .line 186
    add-float/2addr v13, v8

    .line 187
    aput v13, v2, v6

    .line 188
    .line 189
    :goto_3
    move v6, v9

    .line 190
    :cond_7
    add-int/lit8 v10, v10, 0x2

    .line 191
    .line 192
    add-int/lit8 v11, v11, 0x1

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    if-eqz v6, :cond_9

    .line 197
    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 201
    .line 202
    const/4 v8, 0x0

    .line 203
    goto :goto_1

    .line 204
    :cond_a
    :goto_4
    cmpl-float v8, v1, v6

    .line 205
    .line 206
    if-lez v8, :cond_b

    .line 207
    .line 208
    move v4, v6

    .line 209
    goto :goto_5

    .line 210
    :cond_b
    const/4 v3, 0x0

    .line 211
    :goto_5
    sub-float/2addr v1, v4

    .line 212
    const/4 v6, 0x0

    .line 213
    const/4 v8, 0x0

    .line 214
    :goto_6
    add-int/lit8 v10, v7, -0x1

    .line 215
    .line 216
    if-ge v6, v10, :cond_d

    .line 217
    .line 218
    aget-object v10, v0, v3

    .line 219
    .line 220
    aget-object v10, v10, v8

    .line 221
    .line 222
    iget-boolean v11, v10, Llh;->p:Z

    .line 223
    .line 224
    iget v12, v10, Llh;->r:F

    .line 225
    .line 226
    iget v13, v10, Llh;->q:F

    .line 227
    .line 228
    if-eqz v11, :cond_c

    .line 229
    .line 230
    iget v11, v10, Llh;->a:F

    .line 231
    .line 232
    sub-float v14, v4, v11

    .line 233
    .line 234
    iget v15, v10, Llh;->k:F

    .line 235
    .line 236
    mul-float/2addr v14, v15

    .line 237
    iget v9, v10, Llh;->c:F

    .line 238
    .line 239
    move-object/from16 p0, v0

    .line 240
    .line 241
    iget v0, v10, Llh;->e:F

    .line 242
    .line 243
    sub-float/2addr v0, v9

    .line 244
    mul-float/2addr v0, v14

    .line 245
    add-float/2addr v0, v9

    .line 246
    mul-float/2addr v13, v1

    .line 247
    add-float/2addr v13, v0

    .line 248
    aput v13, v2, v6

    .line 249
    .line 250
    add-int/lit8 v0, v6, 0x1

    .line 251
    .line 252
    sub-float v9, v4, v11

    .line 253
    .line 254
    mul-float/2addr v9, v15

    .line 255
    iget v11, v10, Llh;->d:F

    .line 256
    .line 257
    iget v10, v10, Llh;->f:F

    .line 258
    .line 259
    sub-float/2addr v10, v11

    .line 260
    mul-float/2addr v10, v9

    .line 261
    add-float/2addr v10, v11

    .line 262
    mul-float/2addr v12, v1

    .line 263
    add-float/2addr v12, v10

    .line 264
    aput v12, v2, v0

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    move-object/from16 p0, v0

    .line 268
    .line 269
    invoke-virtual {v10, v4}, Llh;->c(F)V

    .line 270
    .line 271
    .line 272
    iget v0, v10, Llh;->n:F

    .line 273
    .line 274
    iget v9, v10, Llh;->h:F

    .line 275
    .line 276
    mul-float/2addr v0, v9

    .line 277
    add-float/2addr v0, v13

    .line 278
    invoke-virtual {v10}, Llh;->a()F

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    mul-float/2addr v9, v1

    .line 283
    add-float/2addr v9, v0

    .line 284
    aput v9, v2, v6

    .line 285
    .line 286
    add-int/lit8 v0, v6, 0x1

    .line 287
    .line 288
    iget v9, v10, Llh;->o:F

    .line 289
    .line 290
    iget v11, v10, Llh;->i:F

    .line 291
    .line 292
    mul-float/2addr v9, v11

    .line 293
    add-float/2addr v9, v12

    .line 294
    invoke-virtual {v10}, Llh;->b()F

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    mul-float/2addr v10, v1

    .line 299
    add-float/2addr v10, v9

    .line 300
    aput v10, v2, v0

    .line 301
    .line 302
    :goto_7
    add-int/lit8 v6, v6, 0x2

    .line 303
    .line 304
    add-int/lit8 v8, v8, 0x1

    .line 305
    .line 306
    const/4 v9, 0x1

    .line 307
    move-object/from16 v0, p0

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_d
    :goto_8
    array-length v0, v2

    .line 311
    const/4 v8, 0x0

    .line 312
    :goto_9
    if-ge v8, v0, :cond_13

    .line 313
    .line 314
    aget v1, v2, v8

    .line 315
    .line 316
    invoke-virtual {v5, v8, v1}, Lbf;->e(IF)V

    .line 317
    .line 318
    .line 319
    add-int/lit8 v8, v8, 0x1

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_e
    invoke-virtual {v0, v3}, Lna4;->b(I)I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    const/4 v7, 0x1

    .line 327
    invoke-virtual {v0, v6, v7, v3}, Lna4;->d(IZI)F

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    iget-object v0, v0, Lna4;->n:Lsf2;

    .line 332
    .line 333
    invoke-virtual {v0, v6}, Lsf2;->c(I)I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    invoke-virtual {v4, v7}, Lhs1;->b(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    check-cast v7, Lma4;

    .line 342
    .line 343
    if-eqz v7, :cond_10

    .line 344
    .line 345
    iget-object v7, v7, Lma4;->a:Lbf;

    .line 346
    .line 347
    if-nez v7, :cond_f

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_f
    move-object v1, v7

    .line 351
    :cond_10
    :goto_a
    const/4 v7, 0x1

    .line 352
    add-int/2addr v6, v7

    .line 353
    invoke-virtual {v0, v6}, Lsf2;->c(I)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-virtual {v4, v0}, Lhs1;->b(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Lma4;

    .line 362
    .line 363
    if-eqz v0, :cond_11

    .line 364
    .line 365
    iget-object v0, v0, Lma4;->a:Lbf;

    .line 366
    .line 367
    if-nez v0, :cond_12

    .line 368
    .line 369
    :cond_11
    move-object v0, v2

    .line 370
    :cond_12
    invoke-virtual {v5}, Lbf;->b()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    const/4 v8, 0x0

    .line 375
    :goto_b
    if-ge v8, v2, :cond_13

    .line 376
    .line 377
    invoke-virtual {v1, v8}, Lbf;->a(I)F

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    invoke-virtual {v0, v8}, Lbf;->a(I)F

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    const/high16 v7, 0x3f800000    # 1.0f

    .line 386
    .line 387
    sub-float/2addr v7, v3

    .line 388
    mul-float/2addr v7, v4

    .line 389
    mul-float/2addr v6, v3

    .line 390
    add-float/2addr v6, v7

    .line 391
    invoke-virtual {v5, v8, v6}, Lbf;->e(IF)V

    .line 392
    .line 393
    .line 394
    add-int/lit8 v8, v8, 0x1

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_13
    return-object v5
.end method
