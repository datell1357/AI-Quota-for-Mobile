.class public final Lta4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Z

.field public final b:Lsa4;

.field public final c:I

.field public final d:[Ljm0;

.field public e:I

.field public final f:[F

.field public final g:[F

.field public final h:[F


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 64
    sget-object v0, Lsa4;->n:Lsa4;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lta4;-><init>(ZLsa4;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 65
    sget-object v0, Lsa4;->o:Lsa4;

    invoke-direct {p0, p1, v0}, Lta4;-><init>(ZLsa4;)V

    return-void
.end method

.method public constructor <init>(ZLsa4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lta4;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lta4;->b:Lsa4;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object p1, Lsa4;->n:Lsa4;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "Lsq2 not (yet) supported for differential axes"

    .line 21
    .line 22
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x3

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p1, v1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {}, Lp61;->x()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    move p1, p2

    .line 43
    :goto_1
    iput p1, p0, Lta4;->c:I

    .line 44
    .line 45
    const/16 p1, 0x14

    .line 46
    .line 47
    new-array v0, p1, [Ljm0;

    .line 48
    .line 49
    iput-object v0, p0, Lta4;->d:[Ljm0;

    .line 50
    .line 51
    new-array v0, p1, [F

    .line 52
    .line 53
    iput-object v0, p0, Lta4;->f:[F

    .line 54
    .line 55
    new-array p1, p1, [F

    .line 56
    .line 57
    iput-object p1, p0, Lta4;->g:[F

    .line 58
    .line 59
    new-array p1, p2, [F

    .line 60
    .line 61
    iput-object p1, p0, Lta4;->h:[F

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(FJ)V
    .locals 2

    .line 1
    iget v0, p0, Lta4;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    rem-int/lit8 v0, v0, 0x14

    .line 6
    .line 7
    iput v0, p0, Lta4;->e:I

    .line 8
    .line 9
    iget-object p0, p0, Lta4;->d:[Ljm0;

    .line 10
    .line 11
    aget-object v1, p0, v0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljm0;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-wide p2, v1, Ljm0;->a:J

    .line 21
    .line 22
    iput p1, v1, Ljm0;->b:F

    .line 23
    .line 24
    aput-object v1, p0, v0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iput-wide p2, v1, Ljm0;->a:J

    .line 28
    .line 29
    iput p1, v1, Ljm0;->b:F

    .line 30
    .line 31
    return-void
.end method

.method public final b()F
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lta4;->e:I

    .line 4
    .line 5
    iget-object v2, v0, Lta4;->d:[Ljm0;

    .line 6
    .line 7
    aget-object v3, v2, v1

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const/4 v15, 0x0

    .line 12
    goto/16 :goto_9

    .line 13
    .line 14
    :cond_0
    const/4 v5, 0x0

    .line 15
    move-object v6, v3

    .line 16
    :cond_1
    aget-object v7, v2, v1

    .line 17
    .line 18
    iget-boolean v8, v0, Lta4;->a:Z

    .line 19
    .line 20
    iget-object v9, v0, Lta4;->b:Lsa4;

    .line 21
    .line 22
    iget-object v11, v0, Lta4;->f:[F

    .line 23
    .line 24
    iget-object v12, v0, Lta4;->g:[F

    .line 25
    .line 26
    if-nez v7, :cond_2

    .line 27
    .line 28
    move/from16 v16, v5

    .line 29
    .line 30
    move-object/from16 v17, v11

    .line 31
    .line 32
    const/4 v14, 0x1

    .line 33
    const/4 v15, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-wide v13, v3, Ljm0;->a:J

    .line 36
    .line 37
    move/from16 v16, v5

    .line 38
    .line 39
    const/4 v15, 0x0

    .line 40
    iget-wide v4, v7, Ljm0;->a:J

    .line 41
    .line 42
    sub-long/2addr v13, v4

    .line 43
    long-to-float v13, v13

    .line 44
    move-object/from16 v17, v11

    .line 45
    .line 46
    const/4 v14, 0x1

    .line 47
    iget-wide v10, v6, Ljm0;->a:J

    .line 48
    .line 49
    sub-long/2addr v4, v10

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    long-to-float v4, v4

    .line 55
    sget-object v5, Lsa4;->n:Lsa4;

    .line 56
    .line 57
    if-eq v9, v5, :cond_4

    .line 58
    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move-object v6, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    move-object v6, v7

    .line 65
    :goto_1
    const/high16 v5, 0x42c80000    # 100.0f

    .line 66
    .line 67
    cmpl-float v5, v13, v5

    .line 68
    .line 69
    if-gtz v5, :cond_7

    .line 70
    .line 71
    const/high16 v5, 0x42200000    # 40.0f

    .line 72
    .line 73
    cmpl-float v4, v4, v5

    .line 74
    .line 75
    if-lez v4, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    iget v4, v7, Ljm0;->b:F

    .line 79
    .line 80
    aput v4, v17, v16

    .line 81
    .line 82
    neg-float v4, v13

    .line 83
    aput v4, v12, v16

    .line 84
    .line 85
    const/16 v4, 0x14

    .line 86
    .line 87
    if-nez v1, :cond_6

    .line 88
    .line 89
    move v1, v4

    .line 90
    :cond_6
    sub-int/2addr v1, v14

    .line 91
    add-int/lit8 v5, v16, 0x1

    .line 92
    .line 93
    if-lt v5, v4, :cond_1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    :goto_2
    move/from16 v5, v16

    .line 97
    .line 98
    :goto_3
    iget v1, v0, Lta4;->c:I

    .line 99
    .line 100
    if-lt v5, v1, :cond_e

    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_d

    .line 107
    .line 108
    if-ne v1, v14, :cond_c

    .line 109
    .line 110
    sub-int/2addr v5, v14

    .line 111
    aget v0, v12, v5

    .line 112
    .line 113
    move v1, v5

    .line 114
    move v4, v15

    .line 115
    :goto_4
    const/high16 v2, 0x40000000    # 2.0f

    .line 116
    .line 117
    if-lez v1, :cond_b

    .line 118
    .line 119
    add-int/lit8 v3, v1, -0x1

    .line 120
    .line 121
    aget v6, v12, v3

    .line 122
    .line 123
    cmpg-float v7, v0, v6

    .line 124
    .line 125
    if-nez v7, :cond_8

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_8
    if-eqz v8, :cond_9

    .line 129
    .line 130
    aget v3, v17, v3

    .line 131
    .line 132
    neg-float v3, v3

    .line 133
    goto :goto_5

    .line 134
    :cond_9
    aget v7, v17, v1

    .line 135
    .line 136
    aget v3, v17, v3

    .line 137
    .line 138
    sub-float v3, v7, v3

    .line 139
    .line 140
    :goto_5
    sub-float/2addr v0, v6

    .line 141
    div-float/2addr v3, v0

    .line 142
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    mul-float/2addr v7, v2

    .line 151
    float-to-double v9, v7

    .line 152
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v9

    .line 156
    double-to-float v2, v9

    .line 157
    mul-float/2addr v0, v2

    .line 158
    sub-float v0, v3, v0

    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    mul-float/2addr v2, v0

    .line 165
    add-float/2addr v2, v4

    .line 166
    if-ne v1, v5, :cond_a

    .line 167
    .line 168
    const/high16 v0, 0x3f000000    # 0.5f

    .line 169
    .line 170
    mul-float/2addr v2, v0

    .line 171
    :cond_a
    move v4, v2

    .line 172
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 173
    .line 174
    move v0, v6

    .line 175
    goto :goto_4

    .line 176
    :cond_b
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    mul-float/2addr v1, v2

    .line 185
    float-to-double v1, v1

    .line 186
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    double-to-float v1, v1

    .line 191
    mul-float/2addr v0, v1

    .line 192
    goto :goto_8

    .line 193
    :cond_c
    invoke-static {}, Lp61;->x()V

    .line 194
    .line 195
    .line 196
    return v15

    .line 197
    :cond_d
    :try_start_0
    iget-object v0, v0, Lta4;->h:[F

    .line 198
    .line 199
    move-object/from16 v1, v17

    .line 200
    .line 201
    invoke-static {v12, v1, v5, v0}, Ln44;->E0([F[FI[F)V

    .line 202
    .line 203
    .line 204
    const/4 v14, 0x1

    .line 205
    aget v4, v0, v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :catch_0
    move v4, v15

    .line 209
    :goto_7
    move v0, v4

    .line 210
    :goto_8
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 211
    .line 212
    mul-float/2addr v0, v1

    .line 213
    return v0

    .line 214
    :cond_e
    :goto_9
    return v15
.end method

.method public final c(F)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "maximumVelocity should be a positive value. You specified="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Lta4;->b()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    cmpg-float v1, p0, v0

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    :goto_1
    return v0

    .line 40
    :cond_2
    cmpl-float v0, p0, v0

    .line 41
    .line 42
    if-lez v0, :cond_3

    .line 43
    .line 44
    cmpl-float v0, p0, p1

    .line 45
    .line 46
    if-lez v0, :cond_4

    .line 47
    .line 48
    return p1

    .line 49
    :cond_3
    neg-float p1, p1

    .line 50
    cmpg-float v0, p0, p1

    .line 51
    .line 52
    if-gez v0, :cond_4

    .line 53
    .line 54
    return p1

    .line 55
    :cond_4
    return p0
.end method
