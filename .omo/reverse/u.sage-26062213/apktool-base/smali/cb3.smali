.class public final Lcb3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldb2;
.implements Lza3;


# instance fields
.field public final a:Lqh;

.field public final b:Lbw;


# direct methods
.method public constructor <init>(Lqh;Lbw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcb3;->a:Lqh;

    .line 5
    .line 6
    iput-object p2, p0, Lcb3;->b:Lbw;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljt1;Ljava/util/List;I)I
    .locals 9

    .line 1
    iget-object p0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-interface {p0}, Lqh;->a()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    mul-int/2addr p1, p0

    .line 26
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v0

    .line 36
    move v4, v2

    .line 37
    move v3, v1

    .line 38
    :goto_0
    const v5, 0x7fffffff

    .line 39
    .line 40
    .line 41
    if-ge v2, p1, :cond_4

    .line 42
    .line 43
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lya2;

    .line 48
    .line 49
    invoke-static {v6}, Lk75;->B(Lya2;)Lab3;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lk75;->C(Lab3;)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    cmpg-float v8, v7, v1

    .line 58
    .line 59
    if-nez v8, :cond_2

    .line 60
    .line 61
    if-ne p3, v5, :cond_1

    .line 62
    .line 63
    move v7, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    sub-int v7, p3, p0

    .line 66
    .line 67
    :goto_1
    invoke-interface {v6, v5}, Lya2;->R(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    add-int/2addr p0, v5

    .line 76
    invoke-interface {v6, v5}, Lya2;->g(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    cmpl-float v5, v7, v1

    .line 86
    .line 87
    if-lez v5, :cond_3

    .line 88
    .line 89
    add-float/2addr v3, v7

    .line 90
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    cmpg-float p1, v3, v1

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    move p0, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    if-ne p3, v5, :cond_6

    .line 100
    .line 101
    move p0, v5

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    sub-int/2addr p3, p0

    .line 104
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    int-to-float p0, p0

    .line 109
    div-float/2addr p0, v3

    .line 110
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    :goto_4
    if-ge v0, p1, :cond_9

    .line 119
    .line 120
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Lya2;

    .line 125
    .line 126
    invoke-static {p3}, Lk75;->B(Lya2;)Lab3;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Lk75;->C(Lab3;)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    cmpl-float v3, v2, v1

    .line 135
    .line 136
    if-lez v3, :cond_8

    .line 137
    .line 138
    if-eq p0, v5, :cond_7

    .line 139
    .line 140
    int-to-float v3, p0

    .line 141
    mul-float/2addr v3, v2

    .line 142
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    move v2, v5

    .line 148
    :goto_5
    invoke-interface {p3, v2}, Lya2;->g(I)I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    move v4, p3

    .line 157
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_9
    return v4
.end method

.method public final b(ILgb2;[I[I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-interface {p2}, Ljt1;->getLayoutDirection()Lhy1;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move v2, p1

    .line 8
    move-object v1, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-interface/range {v0 .. v5}, Lqh;->i(Lgb2;I[ILhy1;[I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c(Ljt1;Ljava/util/List;I)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-interface {p0}, Lqh;->a()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v0

    .line 25
    move v3, v2

    .line 26
    move v4, v1

    .line 27
    :goto_0
    if-ge v0, p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lya2;

    .line 34
    .line 35
    invoke-static {v5}, Lk75;->B(Lya2;)Lab3;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6}, Lk75;->C(Lab3;)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-interface {v5, p3}, Lya2;->R(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    cmpg-float v7, v6, v1

    .line 48
    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    add-int/2addr v3, v5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    cmpl-float v7, v6, v1

    .line 54
    .line 55
    if-lez v7, :cond_2

    .line 56
    .line 57
    add-float/2addr v4, v6

    .line 58
    int-to-float v5, v5

    .line 59
    div-float/2addr v5, v6

    .line 60
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    int-to-float p1, v2

    .line 72
    mul-float/2addr p1, v4

    .line 73
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr p1, v3

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 83
    .line 84
    mul-int/2addr p2, p0

    .line 85
    add-int/2addr p2, p1

    .line 86
    return p2
.end method

.method public final d(IIIZ)J
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2, p0, p3}, Lnf0;->a(IIII)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0

    .line 9
    :cond_0
    invoke-static {p1, p2, p0, p3}, Lon4;->t(IIII)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public final e(Ldv2;)I
    .locals 0

    .line 1
    iget p0, p1, Ldv2;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcb3;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcb3;

    .line 10
    .line 11
    iget-object v0, p0, Lcb3;->a:Lqh;

    .line 12
    .line 13
    iget-object v1, p1, Lcb3;->a:Lqh;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lcb3;->b:Lbw;

    .line 23
    .line 24
    iget-object p1, p1, Lcb3;->b:Lbw;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lbw;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final f(Lgb2;Ljava/util/List;J)Leb2;
    .locals 13

    .line 1
    invoke-static/range {p3 .. p4}, Lmf0;->j(J)I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-static/range {p3 .. p4}, Lmf0;->i(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static/range {p3 .. p4}, Lmf0;->h(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static/range {p3 .. p4}, Lmf0;->g(J)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v0, p0, Lcb3;->a:Lqh;

    .line 18
    .line 19
    invoke-interface {v0}, Lqh;->a()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {p1, v0}, Las0;->N(F)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-array v8, v0, [Ldv2;

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    move-object v0, p0

    .line 41
    move-object v6, p1

    .line 42
    move-object v7, p2

    .line 43
    invoke-static/range {v0 .. v12}, Lzf5;->O(Lza3;IIIIILgb2;Ljava/util/List;[Ldv2;II[II)Leb2;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final g(Ljt1;Ljava/util/List;I)I
    .locals 9

    .line 1
    iget-object p0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-interface {p0}, Lqh;->a()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    mul-int/2addr p1, p0

    .line 26
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v0

    .line 36
    move v4, v2

    .line 37
    move v3, v1

    .line 38
    :goto_0
    const v5, 0x7fffffff

    .line 39
    .line 40
    .line 41
    if-ge v2, p1, :cond_4

    .line 42
    .line 43
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lya2;

    .line 48
    .line 49
    invoke-static {v6}, Lk75;->B(Lya2;)Lab3;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Lk75;->C(Lab3;)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    cmpg-float v8, v7, v1

    .line 58
    .line 59
    if-nez v8, :cond_2

    .line 60
    .line 61
    if-ne p3, v5, :cond_1

    .line 62
    .line 63
    move v7, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    sub-int v7, p3, p0

    .line 66
    .line 67
    :goto_1
    invoke-interface {v6, v5}, Lya2;->R(I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    add-int/2addr p0, v5

    .line 76
    invoke-interface {v6, v5}, Lya2;->T(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    cmpl-float v5, v7, v1

    .line 86
    .line 87
    if-lez v5, :cond_3

    .line 88
    .line 89
    add-float/2addr v3, v7

    .line 90
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    cmpg-float p1, v3, v1

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    move p0, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    if-ne p3, v5, :cond_6

    .line 100
    .line 101
    move p0, v5

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    sub-int/2addr p3, p0

    .line 104
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    int-to-float p0, p0

    .line 109
    div-float/2addr p0, v3

    .line 110
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    :goto_4
    if-ge v0, p1, :cond_9

    .line 119
    .line 120
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Lya2;

    .line 125
    .line 126
    invoke-static {p3}, Lk75;->B(Lya2;)Lab3;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2}, Lk75;->C(Lab3;)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    cmpl-float v3, v2, v1

    .line 135
    .line 136
    if-lez v3, :cond_8

    .line 137
    .line 138
    if-eq p0, v5, :cond_7

    .line 139
    .line 140
    int-to-float v3, p0

    .line 141
    mul-float/2addr v3, v2

    .line 142
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    move v2, v5

    .line 148
    :goto_5
    invoke-interface {p3, v2}, Lya2;->T(I)I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    move v4, p3

    .line 157
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_9
    return v4
.end method

.method public final h(Ldv2;)I
    .locals 0

    .line 1
    iget p0, p1, Ldv2;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lcb3;->b:Lbw;

    .line 10
    .line 11
    iget p0, p0, Lbw;->a:F

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method public final i(Ljt1;Ljava/util/List;I)I
    .locals 8

    .line 1
    iget-object p0, p0, Lcb3;->a:Lqh;

    .line 2
    .line 3
    invoke-interface {p0}, Lqh;->a()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v0

    .line 25
    move v3, v2

    .line 26
    move v4, v1

    .line 27
    :goto_0
    if-ge v0, p1, :cond_3

    .line 28
    .line 29
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lya2;

    .line 34
    .line 35
    invoke-static {v5}, Lk75;->B(Lya2;)Lab3;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6}, Lk75;->C(Lab3;)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-interface {v5, p3}, Lya2;->K(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    cmpg-float v7, v6, v1

    .line 48
    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    add-int/2addr v3, v5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    cmpl-float v7, v6, v1

    .line 54
    .line 55
    if-lez v7, :cond_2

    .line 56
    .line 57
    add-float/2addr v4, v6

    .line 58
    int-to-float v5, v5

    .line 59
    div-float/2addr v5, v6

    .line 60
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    int-to-float p1, v2

    .line 72
    mul-float/2addr p1, v4

    .line 73
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr p1, v3

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 83
    .line 84
    mul-int/2addr p2, p0

    .line 85
    add-int/2addr p2, p1

    .line 86
    return p2
.end method

.method public final j([Ldv2;Lgb2;[III[IIII)Leb2;
    .locals 0

    .line 1
    new-instance p6, Lms0;

    .line 2
    .line 3
    invoke-direct {p6, p1, p0, p5, p3}, Lms0;-><init>([Ldv2;Lcb3;I[I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lh01;->n:Lh01;

    .line 7
    .line 8
    invoke-interface {p2, p4, p5, p0, p6}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RowMeasurePolicy(horizontalArrangement="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcb3;->a:Lqh;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", verticalAlignment="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcb3;->b:Lbw;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
