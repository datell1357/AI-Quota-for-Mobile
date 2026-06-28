.class public Lcl0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>([F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcl0;->a:[F

    .line 5
    .line 6
    array-length p0, p1

    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p0, "Points array size should be 8"

    .line 13
    .line 14
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    throw p0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcl0;->a:[F

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcl0;->a:[F

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    return p0
.end method

.method public final c(F)J
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcl0;->a:[F

    .line 6
    .line 7
    aget v1, v2, v1

    .line 8
    .line 9
    mul-float v3, v0, v0

    .line 10
    .line 11
    mul-float/2addr v3, v0

    .line 12
    mul-float/2addr v1, v3

    .line 13
    const/4 v4, 0x2

    .line 14
    aget v4, v2, v4

    .line 15
    .line 16
    const/high16 v5, 0x40400000    # 3.0f

    .line 17
    .line 18
    mul-float/2addr v5, p1

    .line 19
    mul-float v6, v5, v0

    .line 20
    .line 21
    mul-float/2addr v6, v0

    .line 22
    mul-float/2addr v4, v6

    .line 23
    add-float/2addr v4, v1

    .line 24
    const/4 v1, 0x4

    .line 25
    aget v1, v2, v1

    .line 26
    .line 27
    mul-float/2addr v5, p1

    .line 28
    mul-float/2addr v5, v0

    .line 29
    mul-float/2addr v1, v5

    .line 30
    add-float/2addr v1, v4

    .line 31
    invoke-virtual {p0}, Lcl0;->a()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    mul-float v4, p1, p1

    .line 36
    .line 37
    mul-float/2addr v4, p1

    .line 38
    mul-float/2addr v0, v4

    .line 39
    add-float/2addr v0, v1

    .line 40
    const/4 p1, 0x1

    .line 41
    aget p1, v2, p1

    .line 42
    .line 43
    mul-float/2addr p1, v3

    .line 44
    const/4 v1, 0x3

    .line 45
    aget v1, v2, v1

    .line 46
    .line 47
    mul-float/2addr v1, v6

    .line 48
    add-float/2addr v1, p1

    .line 49
    const/4 p1, 0x5

    .line 50
    aget p1, v2, p1

    .line 51
    .line 52
    mul-float/2addr p1, v5

    .line 53
    add-float/2addr p1, v1

    .line 54
    invoke-virtual {p0}, Lcl0;->b()F

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    mul-float/2addr p0, v4

    .line 59
    add-float/2addr p0, p1

    .line 60
    invoke-static {v0, p0}, Lv71;->a(FF)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    return-wide p0
.end method

.method public final d(F)Ljs2;
    .locals 29

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float v0, v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcl0;->c(F)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object/from16 v4, p0

    .line 11
    .line 12
    iget-object v5, v4, Lcl0;->a:[F

    .line 13
    .line 14
    aget v6, v5, v3

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aget v7, v5, v3

    .line 18
    .line 19
    mul-float v3, v6, v0

    .line 20
    .line 21
    const/4 v14, 0x2

    .line 22
    aget v8, v5, v14

    .line 23
    .line 24
    mul-float v9, v8, p1

    .line 25
    .line 26
    add-float/2addr v9, v3

    .line 27
    mul-float v3, v7, v0

    .line 28
    .line 29
    const/4 v15, 0x3

    .line 30
    aget v10, v5, v15

    .line 31
    .line 32
    mul-float v11, v10, p1

    .line 33
    .line 34
    add-float/2addr v11, v3

    .line 35
    mul-float v3, v0, v0

    .line 36
    .line 37
    mul-float v12, v6, v3

    .line 38
    .line 39
    const/high16 v13, 0x40000000    # 2.0f

    .line 40
    .line 41
    mul-float/2addr v13, v0

    .line 42
    mul-float v16, v13, p1

    .line 43
    .line 44
    mul-float v8, v8, v16

    .line 45
    .line 46
    add-float/2addr v8, v12

    .line 47
    const/16 v17, 0x4

    .line 48
    .line 49
    aget v12, v5, v17

    .line 50
    .line 51
    mul-float v18, p1, p1

    .line 52
    .line 53
    mul-float v12, v12, v18

    .line 54
    .line 55
    add-float/2addr v12, v8

    .line 56
    mul-float v8, v7, v3

    .line 57
    .line 58
    mul-float v10, v10, v16

    .line 59
    .line 60
    add-float/2addr v10, v8

    .line 61
    const/16 v19, 0x5

    .line 62
    .line 63
    aget v8, v5, v19

    .line 64
    .line 65
    mul-float v8, v8, v18

    .line 66
    .line 67
    add-float/2addr v8, v10

    .line 68
    move v10, v12

    .line 69
    invoke-static {v1, v2}, Lix;->x(J)F

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    invoke-static {v1, v2}, Lix;->y(J)F

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    move/from16 v28, v11

    .line 78
    .line 79
    move v11, v8

    .line 80
    move v8, v9

    .line 81
    move/from16 v9, v28

    .line 82
    .line 83
    invoke-static/range {v6 .. v13}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v1, v2}, Lix;->x(J)F

    .line 88
    .line 89
    .line 90
    move-result v20

    .line 91
    invoke-static {v1, v2}, Lix;->y(J)F

    .line 92
    .line 93
    .line 94
    move-result v21

    .line 95
    aget v1, v5, v14

    .line 96
    .line 97
    mul-float/2addr v1, v3

    .line 98
    aget v2, v5, v17

    .line 99
    .line 100
    mul-float v2, v2, v16

    .line 101
    .line 102
    add-float/2addr v2, v1

    .line 103
    invoke-virtual {v4}, Lcl0;->a()F

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    mul-float v1, v1, v18

    .line 108
    .line 109
    add-float v22, v1, v2

    .line 110
    .line 111
    aget v1, v5, v15

    .line 112
    .line 113
    mul-float/2addr v1, v3

    .line 114
    aget v2, v5, v19

    .line 115
    .line 116
    mul-float v2, v2, v16

    .line 117
    .line 118
    add-float/2addr v2, v1

    .line 119
    invoke-virtual {v4}, Lcl0;->b()F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    mul-float v1, v1, v18

    .line 124
    .line 125
    add-float v23, v1, v2

    .line 126
    .line 127
    aget v1, v5, v17

    .line 128
    .line 129
    mul-float/2addr v1, v0

    .line 130
    invoke-virtual {v4}, Lcl0;->a()F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    mul-float v2, v2, p1

    .line 135
    .line 136
    add-float v24, v2, v1

    .line 137
    .line 138
    aget v1, v5, v19

    .line 139
    .line 140
    mul-float/2addr v1, v0

    .line 141
    invoke-virtual {v4}, Lcl0;->b()F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    mul-float v0, v0, p1

    .line 146
    .line 147
    add-float v25, v0, v1

    .line 148
    .line 149
    invoke-virtual {v4}, Lcl0;->a()F

    .line 150
    .line 151
    .line 152
    move-result v26

    .line 153
    invoke-virtual {v4}, Lcl0;->b()F

    .line 154
    .line 155
    .line 156
    move-result v27

    .line 157
    invoke-static/range {v20 .. v27}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v1, Ljs2;

    .line 162
    .line 163
    invoke-direct {v1, v6, v0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-object v1
.end method

.method public final e(Luv2;)Lpf2;
    .locals 4

    .line 1
    new-instance v0, Lpf2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [F

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcl0;-><init>([F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcl0;->a:[F

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v3}, Lpf2;->g(Luv2;I)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    invoke-virtual {v0, p1, p0}, Lpf2;->g(Luv2;I)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x4

    .line 25
    invoke-virtual {v0, p1, p0}, Lpf2;->g(Luv2;I)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x6

    .line 29
    invoke-virtual {v0, p1, p0}, Lpf2;->g(Luv2;I)V

    .line 30
    .line 31
    .line 32
    return-object v0
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
    instance-of v0, p1, Lcl0;

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
    check-cast p1, Lcl0;

    .line 12
    .line 13
    iget-object p1, p1, Lcl0;->a:[F

    .line 14
    .line 15
    iget-object p0, p0, Lcl0;->a:[F

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcl0;->a:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcl0;->a()F

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    sub-float/2addr v2, v3

    .line 11
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const v3, 0x38d1b717    # 1.0E-4f

    .line 16
    .line 17
    .line 18
    cmpg-float v2, v2, v3

    .line 19
    .line 20
    if-gez v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget v0, v0, v2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcl0;->b()F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sub-float/2addr v0, p0

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    cmpg-float p0, p0, v3

    .line 35
    .line 36
    if-gez p0, :cond_0

    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcl0;->a:[F

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "anchor0: ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcl0;->a:[F

    .line 10
    .line 11
    aget v1, v2, v1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aget v3, v2, v3

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ") control0: ("

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    aget v3, v2, v3

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    aget v3, v2, v3

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "), control1: ("

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x4

    .line 53
    aget v3, v2, v3

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    aget v2, v2, v3

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "), anchor1: ("

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcl0;->a()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcl0;->b()F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 p0, 0x29

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method
