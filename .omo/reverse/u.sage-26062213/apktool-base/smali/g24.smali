.class public final Lg24;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Lg24;

.field public g:Lg24;

.field public h:Lg24;

.field public i:Lg24;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lg24;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lg24;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Ln44;->U(Z)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lg24;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iput p1, p0, Lg24;->b:I

    .line 16
    .line 17
    int-to-long p1, p1

    .line 18
    iput-wide p1, p0, Lg24;->d:J

    .line 19
    .line 20
    iput v0, p0, Lg24;->c:I

    .line 21
    .line 22
    iput v0, p0, Lg24;->e:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 26
    .line 27
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;
    .locals 6

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-gez v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    aput v3, p4, v3

    .line 17
    .line 18
    new-instance p1, Lg24;

    .line 19
    .line 20
    invoke-direct {p1, p3, p2}, Lg24;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 24
    .line 25
    iget-object p1, p0, Lg24;->h:Lg24;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lg24;->f:Lg24;

    .line 31
    .line 32
    sget p4, Lh24;->u:I

    .line 33
    .line 34
    iput-object p2, p1, Lg24;->i:Lg24;

    .line 35
    .line 36
    iput-object p1, p2, Lg24;->h:Lg24;

    .line 37
    .line 38
    iput-object p0, p2, Lg24;->i:Lg24;

    .line 39
    .line 40
    iput-object p2, p0, Lg24;->h:Lg24;

    .line 41
    .line 42
    iget p1, p0, Lg24;->e:I

    .line 43
    .line 44
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lg24;->e:I

    .line 49
    .line 50
    iget p1, p0, Lg24;->c:I

    .line 51
    .line 52
    add-int/2addr p1, v2

    .line 53
    iput p1, p0, Lg24;->c:I

    .line 54
    .line 55
    iget-wide p1, p0, Lg24;->d:J

    .line 56
    .line 57
    int-to-long p3, p3

    .line 58
    add-long/2addr p1, p3

    .line 59
    iput-wide p1, p0, Lg24;->d:J

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_0
    iget v1, v0, Lg24;->e:I

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 69
    .line 70
    aget p2, p4, v3

    .line 71
    .line 72
    if-nez p2, :cond_1

    .line 73
    .line 74
    iget p2, p0, Lg24;->c:I

    .line 75
    .line 76
    add-int/2addr p2, v2

    .line 77
    iput p2, p0, Lg24;->c:I

    .line 78
    .line 79
    :cond_1
    iget-wide v2, p0, Lg24;->d:J

    .line 80
    .line 81
    int-to-long p2, p3

    .line 82
    add-long/2addr v2, p2

    .line 83
    iput-wide v2, p0, Lg24;->d:J

    .line 84
    .line 85
    iget p1, p1, Lg24;->e:I

    .line 86
    .line 87
    if-ne p1, v1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    if-lez v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 98
    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    aput v3, p4, v3

    .line 102
    .line 103
    new-instance p1, Lg24;

    .line 104
    .line 105
    invoke-direct {p1, p3, p2}, Lg24;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 109
    .line 110
    iget-object p2, p0, Lg24;->i:Lg24;

    .line 111
    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    sget p4, Lh24;->u:I

    .line 116
    .line 117
    iput-object p1, p0, Lg24;->i:Lg24;

    .line 118
    .line 119
    iput-object p0, p1, Lg24;->h:Lg24;

    .line 120
    .line 121
    iput-object p2, p1, Lg24;->i:Lg24;

    .line 122
    .line 123
    iput-object p1, p2, Lg24;->h:Lg24;

    .line 124
    .line 125
    iget p1, p0, Lg24;->e:I

    .line 126
    .line 127
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput p1, p0, Lg24;->e:I

    .line 132
    .line 133
    iget p1, p0, Lg24;->c:I

    .line 134
    .line 135
    add-int/2addr p1, v2

    .line 136
    iput p1, p0, Lg24;->c:I

    .line 137
    .line 138
    iget-wide p1, p0, Lg24;->d:J

    .line 139
    .line 140
    int-to-long p3, p3

    .line 141
    add-long/2addr p1, p3

    .line 142
    iput-wide p1, p0, Lg24;->d:J

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_4
    iget v1, v0, Lg24;->e:I

    .line 146
    .line 147
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 152
    .line 153
    aget p2, p4, v3

    .line 154
    .line 155
    if-nez p2, :cond_5

    .line 156
    .line 157
    iget p2, p0, Lg24;->c:I

    .line 158
    .line 159
    add-int/2addr p2, v2

    .line 160
    iput p2, p0, Lg24;->c:I

    .line 161
    .line 162
    :cond_5
    iget-wide v2, p0, Lg24;->d:J

    .line 163
    .line 164
    int-to-long p2, p3

    .line 165
    add-long/2addr v2, p2

    .line 166
    iput-wide v2, p0, Lg24;->d:J

    .line 167
    .line 168
    iget p1, p1, Lg24;->e:I

    .line 169
    .line 170
    if-ne p1, v1, :cond_6

    .line 171
    .line 172
    :goto_0
    return-object p0

    .line 173
    :cond_6
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_7
    iget p1, p0, Lg24;->b:I

    .line 179
    .line 180
    aput p1, p4, v3

    .line 181
    .line 182
    int-to-long p1, p1

    .line 183
    int-to-long v0, p3

    .line 184
    add-long/2addr p1, v0

    .line 185
    const-wide/32 v4, 0x7fffffff

    .line 186
    .line 187
    .line 188
    cmp-long p1, p1, v4

    .line 189
    .line 190
    if-gtz p1, :cond_8

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    move v2, v3

    .line 194
    :goto_1
    invoke-static {v2}, Ln44;->U(Z)V

    .line 195
    .line 196
    .line 197
    iget p1, p0, Lg24;->b:I

    .line 198
    .line 199
    add-int/2addr p1, p3

    .line 200
    iput p1, p0, Lg24;->b:I

    .line 201
    .line 202
    iget-wide p1, p0, Lg24;->d:J

    .line 203
    .line 204
    add-long/2addr p1, v0

    .line 205
    iput-wide p1, p0, Lg24;->d:J

    .line 206
    .line 207
    return-object p0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, v0, Lg24;->e:I

    .line 9
    .line 10
    :goto_0
    iget-object p0, p0, Lg24;->g:Lg24;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget v1, p0, Lg24;->e:I

    .line 16
    .line 17
    :goto_1
    sub-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final c(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;
    .locals 1

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2}, Lg24;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    if-nez v0, :cond_3

    .line 22
    .line 23
    :cond_2
    :goto_0
    return-object p0

    .line 24
    :cond_3
    iget-object p0, p0, Lg24;->g:Lg24;

    .line 25
    .line 26
    if-nez p0, :cond_4

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_4
    invoke-virtual {p0, p1, p2}, Lg24;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final d(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lg24;->f:Lg24;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lg24;->d(Ljava/util/Comparator;Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    if-lez v0, :cond_3

    .line 20
    .line 21
    iget-object p0, p0, Lg24;->g:Lg24;

    .line 22
    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    :goto_0
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_2
    invoke-virtual {p0, p1, p2}, Lg24;->d(Ljava/util/Comparator;Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_3
    iget p0, p0, Lg24;->b:I

    .line 33
    .line 34
    return p0
.end method

.method public final e()Lg24;
    .locals 6

    .line 1
    iget v0, p0, Lg24;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lg24;->b:I

    .line 5
    .line 6
    iget-object v1, p0, Lg24;->h:Lg24;

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lg24;->i:Lg24;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget v3, Lh24;->u:I

    .line 17
    .line 18
    iput-object v2, v1, Lg24;->i:Lg24;

    .line 19
    .line 20
    iput-object v1, v2, Lg24;->h:Lg24;

    .line 21
    .line 22
    iget-object v1, p0, Lg24;->f:Lg24;

    .line 23
    .line 24
    iget-object v2, p0, Lg24;->g:Lg24;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    if-nez v2, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget v1, v1, Lg24;->e:I

    .line 33
    .line 34
    iget v2, v2, Lg24;->e:I

    .line 35
    .line 36
    if-lt v1, v2, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lg24;->h:Lg24;

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lg24;->f:Lg24;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lg24;->k(Lg24;)Lg24;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v1, Lg24;->f:Lg24;

    .line 50
    .line 51
    iget-object v2, p0, Lg24;->g:Lg24;

    .line 52
    .line 53
    iput-object v2, v1, Lg24;->g:Lg24;

    .line 54
    .line 55
    iget v2, p0, Lg24;->c:I

    .line 56
    .line 57
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    iput v2, v1, Lg24;->c:I

    .line 60
    .line 61
    iget-wide v2, p0, Lg24;->d:J

    .line 62
    .line 63
    int-to-long v4, v0

    .line 64
    sub-long/2addr v2, v4

    .line 65
    iput-wide v2, v1, Lg24;->d:J

    .line 66
    .line 67
    invoke-virtual {v1}, Lg24;->g()Lg24;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_2
    iget-object v1, p0, Lg24;->i:Lg24;

    .line 73
    .line 74
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lg24;->g:Lg24;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Lg24;->l(Lg24;)Lg24;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v1, Lg24;->g:Lg24;

    .line 84
    .line 85
    iget-object v2, p0, Lg24;->f:Lg24;

    .line 86
    .line 87
    iput-object v2, v1, Lg24;->f:Lg24;

    .line 88
    .line 89
    iget v2, p0, Lg24;->c:I

    .line 90
    .line 91
    add-int/lit8 v2, v2, -0x1

    .line 92
    .line 93
    iput v2, v1, Lg24;->c:I

    .line 94
    .line 95
    iget-wide v2, p0, Lg24;->d:J

    .line 96
    .line 97
    int-to-long v4, v0

    .line 98
    sub-long/2addr v2, v4

    .line 99
    iput-wide v2, v1, Lg24;->d:J

    .line 100
    .line 101
    invoke-virtual {v1}, Lg24;->g()Lg24;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public final f(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;
    .locals 1

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2}, Lg24;->f(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    if-nez v0, :cond_3

    .line 22
    .line 23
    :cond_2
    :goto_0
    return-object p0

    .line 24
    :cond_3
    iget-object p0, p0, Lg24;->f:Lg24;

    .line 25
    .line 26
    if-nez p0, :cond_4

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_4
    invoke-virtual {p0, p1, p2}, Lg24;->f(Ljava/util/Comparator;Ljava/lang/Object;)Lg24;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final g()Lg24;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg24;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x2

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lg24;->i()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 21
    .line 22
    invoke-virtual {v0}, Lg24;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 29
    .line 30
    invoke-virtual {v0}, Lg24;->m()Lg24;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lg24;->f:Lg24;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lg24;->n()Lg24;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 47
    .line 48
    invoke-virtual {v0}, Lg24;->b()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 55
    .line 56
    invoke-virtual {v0}, Lg24;->n()Lg24;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lg24;->g:Lg24;

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lg24;->m()Lg24;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 2
    .line 3
    sget v1, Lh24;->u:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v2, v0, Lg24;->c:I

    .line 11
    .line 12
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    iget-object v3, p0, Lg24;->g:Lg24;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v1, v3, Lg24;->c:I

    .line 20
    .line 21
    :goto_1
    add-int/2addr v2, v1

    .line 22
    iput v2, p0, Lg24;->c:I

    .line 23
    .line 24
    iget v1, p0, Lg24;->b:I

    .line 25
    .line 26
    int-to-long v1, v1

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    move-wide v6, v4

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iget-wide v6, v0, Lg24;->d:J

    .line 34
    .line 35
    :goto_2
    add-long/2addr v6, v1

    .line 36
    if-nez v3, :cond_3

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    iget-wide v4, v3, Lg24;->d:J

    .line 40
    .line 41
    :goto_3
    add-long/2addr v4, v6

    .line 42
    iput-wide v4, p0, Lg24;->d:J

    .line 43
    .line 44
    invoke-virtual {p0}, Lg24;->i()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, v0, Lg24;->e:I

    .line 9
    .line 10
    :goto_0
    iget-object v2, p0, Lg24;->g:Lg24;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget v1, v2, Lg24;->e:I

    .line 16
    .line 17
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lg24;->e:I

    .line 24
    .line 25
    return-void
.end method

.method public final j(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;
    .locals 2

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    aput v1, p4, v1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->j(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 22
    .line 23
    aget p1, p4, v1

    .line 24
    .line 25
    if-lez p1, :cond_2

    .line 26
    .line 27
    if-lt p3, p1, :cond_1

    .line 28
    .line 29
    iget p2, p0, Lg24;->c:I

    .line 30
    .line 31
    add-int/lit8 p2, p2, -0x1

    .line 32
    .line 33
    iput p2, p0, Lg24;->c:I

    .line 34
    .line 35
    iget-wide p2, p0, Lg24;->d:J

    .line 36
    .line 37
    int-to-long v0, p1

    .line 38
    sub-long/2addr p2, v0

    .line 39
    iput-wide p2, p0, Lg24;->d:J

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-wide v0, p0, Lg24;->d:J

    .line 43
    .line 44
    int-to-long p2, p3

    .line 45
    sub-long/2addr v0, p2

    .line 46
    iput-wide v0, p0, Lg24;->d:J

    .line 47
    .line 48
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_4
    if-lez v0, :cond_8

    .line 57
    .line 58
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    aput v1, p4, v1

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->j(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 70
    .line 71
    aget p1, p4, v1

    .line 72
    .line 73
    if-lez p1, :cond_7

    .line 74
    .line 75
    if-lt p3, p1, :cond_6

    .line 76
    .line 77
    iget p2, p0, Lg24;->c:I

    .line 78
    .line 79
    add-int/lit8 p2, p2, -0x1

    .line 80
    .line 81
    iput p2, p0, Lg24;->c:I

    .line 82
    .line 83
    iget-wide p2, p0, Lg24;->d:J

    .line 84
    .line 85
    int-to-long v0, p1

    .line 86
    sub-long/2addr p2, v0

    .line 87
    iput-wide p2, p0, Lg24;->d:J

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    iget-wide p1, p0, Lg24;->d:J

    .line 91
    .line 92
    int-to-long p3, p3

    .line 93
    sub-long/2addr p1, p3

    .line 94
    iput-wide p1, p0, Lg24;->d:J

    .line 95
    .line 96
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_8
    iget p1, p0, Lg24;->b:I

    .line 102
    .line 103
    aput p1, p4, v1

    .line 104
    .line 105
    if-lt p3, p1, :cond_9

    .line 106
    .line 107
    invoke-virtual {p0}, Lg24;->e()Lg24;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_9
    sub-int/2addr p1, p3

    .line 113
    iput p1, p0, Lg24;->b:I

    .line 114
    .line 115
    iget-wide p1, p0, Lg24;->d:J

    .line 116
    .line 117
    int-to-long p3, p3

    .line 118
    sub-long/2addr p1, p3

    .line 119
    iput-wide p1, p0, Lg24;->d:J

    .line 120
    .line 121
    return-object p0
.end method

.method public final k(Lg24;)Lg24;
    .locals 4

    .line 1
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lg24;->f:Lg24;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lg24;->k(Lg24;)Lg24;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lg24;->g:Lg24;

    .line 13
    .line 14
    iget v0, p0, Lg24;->c:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lg24;->c:I

    .line 19
    .line 20
    iget-wide v0, p0, Lg24;->d:J

    .line 21
    .line 22
    iget p1, p1, Lg24;->b:I

    .line 23
    .line 24
    int-to-long v2, p1

    .line 25
    sub-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lg24;->d:J

    .line 27
    .line 28
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final l(Lg24;)Lg24;
    .locals 4

    .line 1
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lg24;->g:Lg24;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lg24;->l(Lg24;)Lg24;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lg24;->f:Lg24;

    .line 13
    .line 14
    iget v0, p0, Lg24;->c:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lg24;->c:I

    .line 19
    .line 20
    iget-wide v0, p0, Lg24;->d:J

    .line 21
    .line 22
    iget p1, p1, Lg24;->b:I

    .line 23
    .line 24
    int-to-long v2, p1

    .line 25
    sub-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lg24;->d:J

    .line 27
    .line 28
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final m()Lg24;
    .locals 3

    .line 1
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Ln44;->a0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 12
    .line 13
    iget-object v1, v0, Lg24;->f:Lg24;

    .line 14
    .line 15
    iput-object v1, p0, Lg24;->g:Lg24;

    .line 16
    .line 17
    iput-object p0, v0, Lg24;->f:Lg24;

    .line 18
    .line 19
    iget-wide v1, p0, Lg24;->d:J

    .line 20
    .line 21
    iput-wide v1, v0, Lg24;->d:J

    .line 22
    .line 23
    iget v1, p0, Lg24;->c:I

    .line 24
    .line 25
    iput v1, v0, Lg24;->c:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lg24;->h()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lg24;->i()V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final n()Lg24;
    .locals 3

    .line 1
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Ln44;->a0(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 12
    .line 13
    iget-object v1, v0, Lg24;->g:Lg24;

    .line 14
    .line 15
    iput-object v1, p0, Lg24;->f:Lg24;

    .line 16
    .line 17
    iput-object p0, v0, Lg24;->g:Lg24;

    .line 18
    .line 19
    iget-wide v1, p0, Lg24;->d:J

    .line 20
    .line 21
    iput-wide v1, v0, Lg24;->d:J

    .line 22
    .line 23
    iget v1, p0, Lg24;->c:I

    .line 24
    .line 25
    iput v1, v0, Lg24;->c:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lg24;->h()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lg24;->i()V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;
    .locals 2

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    aput v1, p4, v1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 22
    .line 23
    aget p1, p4, v1

    .line 24
    .line 25
    if-ne p1, p3, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget p2, p0, Lg24;->c:I

    .line 30
    .line 31
    add-int/lit8 p2, p2, -0x1

    .line 32
    .line 33
    iput p2, p0, Lg24;->c:I

    .line 34
    .line 35
    :cond_1
    iget-wide p2, p0, Lg24;->d:J

    .line 36
    .line 37
    sub-int/2addr v1, p1

    .line 38
    int-to-long v0, v1

    .line 39
    add-long/2addr p2, v0

    .line 40
    iput-wide p2, p0, Lg24;->d:J

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    if-lez v0, :cond_7

    .line 48
    .line 49
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    aput v1, p4, v1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v0, p1, p2, p3, p4}, Lg24;->o(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lg24;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 61
    .line 62
    aget p1, p4, v1

    .line 63
    .line 64
    if-ne p1, p3, :cond_6

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iget p2, p0, Lg24;->c:I

    .line 69
    .line 70
    add-int/lit8 p2, p2, -0x1

    .line 71
    .line 72
    iput p2, p0, Lg24;->c:I

    .line 73
    .line 74
    :cond_5
    iget-wide p2, p0, Lg24;->d:J

    .line 75
    .line 76
    sub-int/2addr v1, p1

    .line 77
    int-to-long v0, v1

    .line 78
    add-long/2addr p2, v0

    .line 79
    iput-wide p2, p0, Lg24;->d:J

    .line 80
    .line 81
    :cond_6
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_7
    iget p1, p0, Lg24;->b:I

    .line 87
    .line 88
    aput p1, p4, v1

    .line 89
    .line 90
    if-ne p3, p1, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0}, Lg24;->e()Lg24;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_8
    :goto_0
    return-object p0
.end method

.method public final p(Ljava/util/Comparator;Ljava/lang/Object;[I)Lg24;
    .locals 2

    .line 1
    iget-object v0, p0, Lg24;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lg24;->f:Lg24;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    aput v1, p3, v1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lg24;->p(Ljava/util/Comparator;Ljava/lang/Object;[I)Lg24;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lg24;->f:Lg24;

    .line 22
    .line 23
    aget p1, p3, v1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget p2, p0, Lg24;->c:I

    .line 28
    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    iput p2, p0, Lg24;->c:I

    .line 32
    .line 33
    :cond_1
    iget-wide p2, p0, Lg24;->d:J

    .line 34
    .line 35
    sub-int/2addr v1, p1

    .line 36
    int-to-long v0, v1

    .line 37
    add-long/2addr p2, v0

    .line 38
    iput-wide p2, p0, Lg24;->d:J

    .line 39
    .line 40
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    if-lez v0, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Lg24;->g:Lg24;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    aput v1, p3, v1

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lg24;->p(Ljava/util/Comparator;Ljava/lang/Object;[I)Lg24;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lg24;->g:Lg24;

    .line 59
    .line 60
    aget p1, p3, v1

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget p2, p0, Lg24;->c:I

    .line 65
    .line 66
    add-int/lit8 p2, p2, -0x1

    .line 67
    .line 68
    iput p2, p0, Lg24;->c:I

    .line 69
    .line 70
    :cond_4
    iget-wide p2, p0, Lg24;->d:J

    .line 71
    .line 72
    sub-int/2addr v1, p1

    .line 73
    int-to-long v0, v1

    .line 74
    add-long/2addr p2, v0

    .line 75
    iput-wide p2, p0, Lg24;->d:J

    .line 76
    .line 77
    invoke-virtual {p0}, Lg24;->g()Lg24;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_5
    iget p1, p0, Lg24;->b:I

    .line 83
    .line 84
    aput p1, p3, v1

    .line 85
    .line 86
    invoke-virtual {p0}, Lg24;->e()Lg24;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lg24;->b:I

    .line 2
    .line 3
    const-string v1, "count"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lht4;->i(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lg24;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " x "

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
