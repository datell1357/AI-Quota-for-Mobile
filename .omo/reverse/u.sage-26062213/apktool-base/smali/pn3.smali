.class public final Lpn3;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loy1;


# instance fields
.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:Z


# virtual methods
.method public final G0(Lgb2;)J
    .locals 6

    .line 1
    iget v0, p0, Lpn3;->D:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lpn3;->D:F

    .line 14
    .line 15
    invoke-interface {p1, v0}, Las0;->N(F)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :cond_1
    :goto_0
    iget v3, p0, Lpn3;->E:F

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    iget v3, p0, Lpn3;->E:F

    .line 33
    .line 34
    invoke-interface {p1, v3}, Las0;->N(F)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-gez v3, :cond_3

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v3, v1

    .line 43
    :cond_3
    :goto_1
    iget v4, p0, Lpn3;->B:F

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_6

    .line 50
    .line 51
    iget v4, p0, Lpn3;->B:F

    .line 52
    .line 53
    invoke-interface {p1, v4}, Las0;->N(F)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-gez v4, :cond_4

    .line 58
    .line 59
    move v4, v2

    .line 60
    :cond_4
    if-le v4, v0, :cond_5

    .line 61
    .line 62
    move v4, v0

    .line 63
    :cond_5
    if-eq v4, v1, :cond_6

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    move v4, v2

    .line 67
    :goto_2
    iget v5, p0, Lpn3;->C:F

    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_9

    .line 74
    .line 75
    iget p0, p0, Lpn3;->C:F

    .line 76
    .line 77
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-gez p0, :cond_7

    .line 82
    .line 83
    move p0, v2

    .line 84
    :cond_7
    if-le p0, v3, :cond_8

    .line 85
    .line 86
    move p0, v3

    .line 87
    :cond_8
    if-eq p0, v1, :cond_9

    .line 88
    .line 89
    move v2, p0

    .line 90
    :cond_9
    invoke-static {v4, v0, v2, v3}, Lnf0;->a(IIII)J

    .line 91
    .line 92
    .line 93
    move-result-wide p0

    .line 94
    return-wide p0
.end method

.method public final O(Lk82;Lya2;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lpn3;->G0(Lgb2;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lmf0;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lmf0;->h(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lpn3;->F:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Lnf0;->e(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lya2;->K(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0, v0, v1}, Lnf0;->f(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final e(Lk82;Lya2;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lpn3;->G0(Lgb2;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lmf0;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lmf0;->h(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lpn3;->F:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Lnf0;->e(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lya2;->R(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0, v0, v1}, Lnf0;->f(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lpn3;->G0(Lgb2;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lpn3;->F:Z

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    invoke-static {p3, p4}, Lmf0;->j(J)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p3, p4}, Lmf0;->h(J)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p3, p4}, Lmf0;->i(J)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {p3, p4}, Lmf0;->g(J)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {v0, v1}, Lmf0;->j(J)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-ge p4, p0, :cond_0

    .line 30
    .line 31
    move p4, p0

    .line 32
    :cond_0
    if-le p4, v2, :cond_1

    .line 33
    .line 34
    move p4, v2

    .line 35
    :cond_1
    invoke-static {v0, v1}, Lmf0;->h(J)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v4, p0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move p0, v4

    .line 43
    :goto_0
    if-le p0, v2, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move v2, p0

    .line 47
    :goto_1
    invoke-static {v0, v1}, Lmf0;->i(J)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-ge p0, v3, :cond_4

    .line 52
    .line 53
    move p0, v3

    .line 54
    :cond_4
    if-le p0, p3, :cond_5

    .line 55
    .line 56
    move p0, p3

    .line 57
    :cond_5
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ge v0, v3, :cond_6

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    move v3, v0

    .line 65
    :goto_2
    if-le v3, p3, :cond_7

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_7
    move p3, v3

    .line 69
    :goto_3
    invoke-static {p4, v2, p0, p3}, Lnf0;->a(IIII)J

    .line 70
    .line 71
    .line 72
    move-result-wide p3

    .line 73
    goto :goto_8

    .line 74
    :cond_8
    iget v2, p0, Lpn3;->B:F

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_9

    .line 81
    .line 82
    invoke-static {v0, v1}, Lmf0;->j(J)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    goto :goto_4

    .line 87
    :cond_9
    invoke-static {p3, p4}, Lmf0;->j(J)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v0, v1}, Lmf0;->h(J)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-le v2, v3, :cond_a

    .line 96
    .line 97
    move v2, v3

    .line 98
    :cond_a
    :goto_4
    iget v3, p0, Lpn3;->D:F

    .line 99
    .line 100
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_b

    .line 105
    .line 106
    invoke-static {v0, v1}, Lmf0;->h(J)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    goto :goto_5

    .line 111
    :cond_b
    invoke-static {p3, p4}, Lmf0;->h(J)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v0, v1}, Lmf0;->j(J)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-ge v3, v4, :cond_c

    .line 120
    .line 121
    move v3, v4

    .line 122
    :cond_c
    :goto_5
    iget v4, p0, Lpn3;->C:F

    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_d

    .line 129
    .line 130
    invoke-static {v0, v1}, Lmf0;->i(J)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    goto :goto_6

    .line 135
    :cond_d
    invoke-static {p3, p4}, Lmf0;->i(J)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-le v4, v5, :cond_e

    .line 144
    .line 145
    move v4, v5

    .line 146
    :cond_e
    :goto_6
    iget p0, p0, Lpn3;->E:F

    .line 147
    .line 148
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_f

    .line 153
    .line 154
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    goto :goto_7

    .line 159
    :cond_f
    invoke-static {p3, p4}, Lmf0;->g(J)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-static {v0, v1}, Lmf0;->i(J)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    if-ge p0, p3, :cond_10

    .line 168
    .line 169
    move p0, p3

    .line 170
    :cond_10
    :goto_7
    invoke-static {v2, v3, v4, p0}, Lnf0;->a(IIII)J

    .line 171
    .line 172
    .line 173
    move-result-wide p3

    .line 174
    :goto_8
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget p2, p0, Ldv2;->n:I

    .line 179
    .line 180
    iget p3, p0, Ldv2;->o:I

    .line 181
    .line 182
    new-instance p4, Le0;

    .line 183
    .line 184
    const/4 v0, 0x6

    .line 185
    invoke-direct {p4, p0, v0}, Le0;-><init>(Ldv2;I)V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lh01;->n:Lh01;

    .line 189
    .line 190
    invoke-interface {p1, p2, p3, p0, p4}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0
.end method

.method public final l(Lk82;Lya2;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lpn3;->G0(Lgb2;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lmf0;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lpn3;->F:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Lnf0;->f(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lya2;->g(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0, v0, v1}, Lnf0;->e(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final y(Lk82;Lya2;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lpn3;->G0(Lgb2;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lmf0;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lmf0;->g(J)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lpn3;->F:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p3, v0, v1}, Lnf0;->f(IJ)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    :goto_0
    invoke-interface {p2, p3}, Lya2;->T(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0, v0, v1}, Lnf0;->e(IJ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method
