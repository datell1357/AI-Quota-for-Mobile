.class public final Lg12;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Z

.field public final d:Law;

.field public final e:Lbw;

.field public final f:Lhy1;

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ldh;

.field public l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Z

.field public t:I

.field public final u:[I


# direct methods
.method public constructor <init>(ILjava/util/List;ZLaw;Lbw;Lhy1;IIIJLjava/lang/Object;Ljava/lang/Object;Ldh;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lg12;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lg12;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-boolean p3, p0, Lg12;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lg12;->d:Law;

    .line 11
    .line 12
    iput-object p5, p0, Lg12;->e:Lbw;

    .line 13
    .line 14
    iput-object p6, p0, Lg12;->f:Lhy1;

    .line 15
    .line 16
    iput p9, p0, Lg12;->g:I

    .line 17
    .line 18
    iput-wide p10, p0, Lg12;->h:J

    .line 19
    .line 20
    iput-object p12, p0, Lg12;->i:Ljava/lang/Object;

    .line 21
    .line 22
    move-object/from16 p1, p13

    .line 23
    .line 24
    iput-object p1, p0, Lg12;->j:Ljava/lang/Object;

    .line 25
    .line 26
    move-object/from16 p1, p14

    .line 27
    .line 28
    iput-object p1, p0, Lg12;->k:Ldh;

    .line 29
    .line 30
    const/high16 p1, -0x80000000

    .line 31
    .line 32
    iput p1, p0, Lg12;->t:I

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p3, 0x0

    .line 39
    move p4, p3

    .line 40
    move p5, p4

    .line 41
    move p6, p5

    .line 42
    :goto_0
    if-ge p4, p1, :cond_2

    .line 43
    .line 44
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ldv2;

    .line 49
    .line 50
    iget-boolean v1, p0, Lg12;->c:Z

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget v2, v0, Ldv2;->o:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget v2, v0, Ldv2;->n:I

    .line 58
    .line 59
    :goto_1
    add-int/2addr p5, v2

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    iget v0, v0, Ldv2;->o:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget v0, v0, Ldv2;->n:I

    .line 66
    .line 67
    :goto_2
    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result p6

    .line 71
    add-int/lit8 p4, p4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iput p5, p0, Lg12;->m:I

    .line 75
    .line 76
    iput p6, p0, Lg12;->r:I

    .line 77
    .line 78
    iget-object p1, p0, Lg12;->b:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    mul-int/lit8 p1, p1, 0x2

    .line 85
    .line 86
    new-array p1, p1, [I

    .line 87
    .line 88
    iput-object p1, p0, Lg12;->u:[I

    .line 89
    .line 90
    iget-boolean p1, p0, Lg12;->c:Z

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget p1, p0, Lg12;->g:I

    .line 95
    .line 96
    iput p1, p0, Lg12;->q:I

    .line 97
    .line 98
    iput p5, p0, Lg12;->o:I

    .line 99
    .line 100
    iput p6, p0, Lg12;->n:I

    .line 101
    .line 102
    iput p3, p0, Lg12;->p:I

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iput p3, p0, Lg12;->q:I

    .line 106
    .line 107
    iput p6, p0, Lg12;->o:I

    .line 108
    .line 109
    iput p5, p0, Lg12;->n:I

    .line 110
    .line 111
    iget p1, p0, Lg12;->g:I

    .line 112
    .line 113
    iput p1, p0, Lg12;->p:I

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg12;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lg12;->o:I

    .line 6
    .line 7
    iget p0, p0, Lg12;->q:I

    .line 8
    .line 9
    :goto_0
    add-int/2addr v0, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v0, p0, Lg12;->n:I

    .line 12
    .line 13
    iget p0, p0, Lg12;->p:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    if-gez v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    return v0
.end method

.method public final b(I)J
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Lg12;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lg12;->l:I

    .line 19
    .line 20
    iget-boolean p0, p0, Lg12;->c:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    int-to-long p0, p1

    .line 25
    and-long/2addr p0, v1

    .line 26
    return-wide p0

    .line 27
    :cond_0
    int-to-long p0, p1

    .line 28
    shl-long/2addr p0, v0

    .line 29
    return-wide p0

    .line 30
    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    iget-object p0, p0, Lg12;->u:[I

    .line 33
    .line 34
    aget v3, p0, p1

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    aget p0, p0, p1

    .line 39
    .line 40
    int-to-long v3, v3

    .line 41
    shl-long/2addr v3, v0

    .line 42
    int-to-long p0, p0

    .line 43
    and-long/2addr p0, v1

    .line 44
    or-long/2addr p0, v3

    .line 45
    return-wide p0
.end method

.method public final c(Lcv2;)V
    .locals 14

    .line 1
    sget-object v0, Ldo2;->x:Ldo2;

    .line 2
    .line 3
    iget v1, p0, Lg12;->t:I

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "position() should be called first"

    .line 11
    .line 12
    invoke-static {v1}, Ldr1;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lg12;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-ge v3, v2, :cond_5

    .line 23
    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ldv2;

    .line 29
    .line 30
    iget-boolean v5, p0, Lg12;->c:Z

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iget v6, v4, Ldv2;->o:I

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget v6, v4, Ldv2;->n:I

    .line 38
    .line 39
    :goto_2
    invoke-virtual {p0, v3}, Lg12;->b(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    iget-object v8, p0, Lg12;->k:Ldh;

    .line 44
    .line 45
    iget-object v8, v8, Ldh;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Lkg2;

    .line 48
    .line 49
    iget-object v9, p0, Lg12;->i:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v8, v9}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {v8}, Ldi0;->D(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-wide v8, p0, Lg12;->h:J

    .line 59
    .line 60
    invoke-static {v6, v7, v8, v9}, Ljs1;->c(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    const/4 v8, 0x0

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    sget v5, Lev2;->b:I

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v4}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 73
    .line 74
    .line 75
    iget-wide v9, v4, Ldv2;->r:J

    .line 76
    .line 77
    invoke-static {v6, v7, v9, v10}, Ljs1;->c(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    invoke-virtual {v4, v5, v6, v8, v0}, Ldv2;->d0(JFLpe1;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_2
    sget v5, Lev2;->b:I

    .line 86
    .line 87
    invoke-virtual {p1}, Lcv2;->e()Lhy1;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    sget-object v9, Lhy1;->n:Lhy1;

    .line 92
    .line 93
    if-eq v5, v9, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lcv2;->g()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {p1}, Lcv2;->g()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    iget v9, v4, Ldv2;->n:I

    .line 107
    .line 108
    sub-int/2addr v5, v9

    .line 109
    const/16 v9, 0x20

    .line 110
    .line 111
    shr-long v10, v6, v9

    .line 112
    .line 113
    long-to-int v10, v10

    .line 114
    sub-int/2addr v5, v10

    .line 115
    const-wide v10, 0xffffffffL

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    and-long/2addr v6, v10

    .line 121
    long-to-int v6, v6

    .line 122
    int-to-long v12, v5

    .line 123
    shl-long/2addr v12, v9

    .line 124
    int-to-long v5, v6

    .line 125
    and-long/2addr v5, v10

    .line 126
    or-long/2addr v5, v12

    .line 127
    invoke-static {p1, v4}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 128
    .line 129
    .line 130
    iget-wide v9, v4, Ldv2;->r:J

    .line 131
    .line 132
    invoke-static {v5, v6, v9, v10}, Ljs1;->c(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    invoke-virtual {v4, v5, v6, v8, v0}, Ldv2;->d0(JFLpe1;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    :goto_3
    invoke-static {p1, v4}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 141
    .line 142
    .line 143
    iget-wide v9, v4, Ldv2;->r:J

    .line 144
    .line 145
    invoke-static {v6, v7, v9, v10}, Ljs1;->c(JJ)J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    invoke-virtual {v4, v5, v6, v8, v0}, Ldv2;->d0(JFLpe1;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :cond_5
    return-void
.end method

.method public final d(III)V
    .locals 10

    .line 1
    iput p1, p0, Lg12;->l:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lg12;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v1, p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, p2

    .line 10
    :goto_0
    iput v1, p0, Lg12;->t:I

    .line 11
    .line 12
    iget-object v1, p0, Lg12;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_1
    if-ge v3, v2, :cond_4

    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ldv2;

    .line 26
    .line 27
    mul-int/lit8 v5, v3, 0x2

    .line 28
    .line 29
    iget-object v6, p0, Lg12;->u:[I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v7, p0, Lg12;->d:Law;

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    iget v8, v4, Ldv2;->n:I

    .line 38
    .line 39
    iget-object v9, p0, Lg12;->f:Lhy1;

    .line 40
    .line 41
    invoke-virtual {v7, v8, p2, v9}, Law;->a(IILhy1;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    aput v7, v6, v5

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    aput p1, v6, v5

    .line 50
    .line 51
    iget v4, v4, Ldv2;->o:I

    .line 52
    .line 53
    :goto_2
    add-int/2addr p1, v4

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    const-string p0, "null horizontalAlignment when isVertical == true"

    .line 56
    .line 57
    invoke-static {p0}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lp61;->q()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    aput p1, v6, v5

    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    iget-object v7, p0, Lg12;->e:Lbw;

    .line 69
    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    iget v8, v4, Ldv2;->o:I

    .line 73
    .line 74
    invoke-virtual {v7, v8, p3}, Lbw;->a(II)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    aput v7, v6, v5

    .line 79
    .line 80
    iget v4, v4, Ldv2;->n:I

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string p0, "null verticalAlignment when isVertical == false"

    .line 87
    .line 88
    invoke-static {p0}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lp61;->q()V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method
