.class public final Lcb2;
.super Ldv2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lya2;
.implements Ld8;
.implements Lde2;


# instance fields
.field public A:J

.field public B:Lpe1;

.field public C:F

.field public D:Z

.field public E:Ljava/lang/Object;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public final K:Lyy1;

.field public final L:Lug2;

.field public M:Z

.field public N:Z

.field public O:J

.field public final P:Lbb2;

.field public final Q:Lbb2;

.field public R:F

.field public S:Z

.field public T:Lpe1;

.field public U:J

.field public V:F

.field public final W:Lbb2;

.field public X:Z

.field public final s:Lbz1;

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Lvy1;

.field public z:Z


# direct methods
.method public constructor <init>(Lbz1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ldv2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcb2;->s:Lbz1;

    .line 5
    .line 6
    const p1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcb2;->u:I

    .line 10
    .line 11
    iput p1, p0, Lcb2;->v:I

    .line 12
    .line 13
    sget-object p1, Lvy1;->p:Lvy1;

    .line 14
    .line 15
    iput-object p1, p0, Lcb2;->y:Lvy1;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lcb2;->A:J

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcb2;->D:Z

    .line 23
    .line 24
    new-instance v2, Lyy1;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, p0, v3}, Lyy1;-><init>(Ld8;I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcb2;->K:Lyy1;

    .line 31
    .line 32
    new-instance v2, Lug2;

    .line 33
    .line 34
    const/16 v4, 0x10

    .line 35
    .line 36
    new-array v4, v4, [Lcb2;

    .line 37
    .line 38
    invoke-direct {v2, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcb2;->L:Lug2;

    .line 42
    .line 43
    iput-boolean p1, p0, Lcb2;->M:Z

    .line 44
    .line 45
    const/16 v2, 0xf

    .line 46
    .line 47
    invoke-static {v3, v3, v2}, Lnf0;->b(III)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    iput-wide v4, p0, Lcb2;->O:J

    .line 52
    .line 53
    new-instance v2, Lbb2;

    .line 54
    .line 55
    invoke-direct {v2, p0, p1}, Lbb2;-><init>(Lcb2;I)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcb2;->P:Lbb2;

    .line 59
    .line 60
    new-instance p1, Lbb2;

    .line 61
    .line 62
    invoke-direct {p1, p0, v3}, Lbb2;-><init>(Lcb2;I)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcb2;->Q:Lbb2;

    .line 66
    .line 67
    iput-wide v0, p0, Lcb2;->U:J

    .line 68
    .line 69
    new-instance p1, Lbb2;

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    invoke-direct {p1, p0, v0}, Lbb2;-><init>(Lcb2;I)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcb2;->W:Lbb2;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final K(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-static {v1}, Lix;->C(Lxy1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lbz1;->q:Lq82;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lq82;->K(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcb2;->m0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1}, Lya2;->K(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final O()I
    .locals 0

    .line 1
    iget p0, p0, Lcb2;->v:I

    .line 2
    .line 3
    return p0
.end method

.method public final Q()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-static {p0, v0, v1}, Lxy1;->X(Lxy1;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final R(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-static {v1}, Lix;->C(Lxy1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lbz1;->q:Lq82;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lq82;->R(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcb2;->m0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1}, Lya2;->R(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final T(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-static {v1}, Lix;->C(Lxy1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lbz1;->q:Lq82;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lq82;->T(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcb2;->m0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1}, Lya2;->T(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final V(Ly7;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-virtual {v1}, Lxy1;->u()Lxy1;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lxy1;->T:Lbz1;

    .line 13
    .line 14
    iget-object v1, v1, Lbz1;->d:Lty1;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    sget-object v3, Lty1;->n:Lty1;

    .line 19
    .line 20
    iget-object v4, p0, Lcb2;->K:Lyy1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iput-boolean v5, v4, Lyy1;->c:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 29
    .line 30
    invoke-virtual {v1}, Lxy1;->u()Lxy1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, v1, Lxy1;->T:Lbz1;

    .line 37
    .line 38
    iget-object v2, v1, Lbz1;->d:Lty1;

    .line 39
    .line 40
    :cond_2
    sget-object v1, Lty1;->p:Lty1;

    .line 41
    .line 42
    if-ne v2, v1, :cond_3

    .line 43
    .line 44
    iput-boolean v5, v4, Lyy1;->d:Z

    .line 45
    .line 46
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcb2;->z:Z

    .line 47
    .line 48
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lk82;->V(Ly7;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcb2;->z:Z

    .line 58
    .line 59
    return p1
.end method

.method public final Y()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbz1;->a()Lmm2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final a0()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbz1;->a()Lmm2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c()Lyy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->K:Lyy1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d0(JFLpe1;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    iput-boolean v3, p0, Lcb2;->G:Z

    .line 9
    .line 10
    iget-wide v4, p0, Lcb2;->A:J

    .line 11
    .line 12
    invoke-static {p1, p2, v4, v5}, Ljs1;->a(JJ)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcb2;->B:Lpe1;

    .line 20
    .line 21
    if-ne p4, v4, :cond_0

    .line 22
    .line 23
    iget-boolean v4, p0, Lcb2;->X:Z

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-boolean v4, v0, Lbz1;->k:Z

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    iget-boolean v4, v0, Lbz1;->j:Z

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    iget-boolean v4, p0, Lcb2;->X:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    :cond_1
    iput-boolean v3, p0, Lcb2;->I:Z

    .line 44
    .line 45
    iput-boolean v5, p0, Lcb2;->X:Z

    .line 46
    .line 47
    :cond_2
    iget-object v4, v0, Lbz1;->q:Lq82;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    iget-object v6, v4, Lq82;->s:Lbz1;

    .line 52
    .line 53
    iget-object v4, v4, Lq82;->D:Lo82;

    .line 54
    .line 55
    sget-object v7, Lo82;->p:Lo82;

    .line 56
    .line 57
    if-ne v4, v7, :cond_4

    .line 58
    .line 59
    iget-object v4, v6, Lbz1;->a:Lxy1;

    .line 60
    .line 61
    invoke-static {v4}, Lix;->C(Lxy1;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iput-boolean v3, v6, Lbz1;->c:Z

    .line 69
    .line 70
    :cond_4
    :goto_1
    iget-object v4, v0, Lbz1;->q:Lq82;

    .line 71
    .line 72
    if-eqz v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {v4}, Lq82;->j0()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v4, v3, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v3, v3, Lmm2;->H:Lmm2;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    iget-object v3, v3, Lk82;->C:Ll82;

    .line 89
    .line 90
    if-nez v3, :cond_6

    .line 91
    .line 92
    :cond_5
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lq9;

    .line 97
    .line 98
    invoke-virtual {v3}, Lq9;->getPlacementScope()Lcv2;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    :cond_6
    iget-object v4, v0, Lbz1;->q:Lq82;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    iget-object v2, v2, Lxy1;->T:Lbz1;

    .line 114
    .line 115
    iput v5, v2, Lbz1;->h:I

    .line 116
    .line 117
    :cond_7
    const v2, 0x7fffffff

    .line 118
    .line 119
    .line 120
    iput v2, v4, Lq82;->v:I

    .line 121
    .line 122
    const/16 v2, 0x20

    .line 123
    .line 124
    shr-long v5, p1, v2

    .line 125
    .line 126
    long-to-int v2, v5

    .line 127
    const-wide v5, 0xffffffffL

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    and-long/2addr v5, p1

    .line 133
    long-to-int v5, v5

    .line 134
    invoke-static {v3, v4, v2, v5}, Lcv2;->h(Lcv2;Ldv2;II)V

    .line 135
    .line 136
    .line 137
    :cond_8
    iget-object v0, v0, Lbz1;->q:Lq82;

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    iget-boolean v0, v0, Lq82;->y:Z

    .line 142
    .line 143
    if-nez v0, :cond_9

    .line 144
    .line 145
    const-string v0, "Error: Placement happened before lookahead."

    .line 146
    .line 147
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcb2;->o0(JFLpe1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_2
    invoke-virtual {v1, p0}, Lxy1;->a0(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    const/4 p0, 0x0

    .line 158
    throw p0
.end method

.method public final e(J)Ldv2;
    .locals 5

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 6
    .line 7
    iget-object v3, v1, Lxy1;->P:Lvy1;

    .line 8
    .line 9
    sget-object v4, Lvy1;->p:Lvy1;

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lxy1;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v2}, Lix;->C(Lxy1;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lbz1;->q:Lq82;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object v4, v0, Lq82;->w:Lvy1;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lq82;->e(J)Ldv2;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, v0, Lxy1;->T:Lbz1;

    .line 39
    .line 40
    iget-object v1, p0, Lcb2;->y:Lvy1;

    .line 41
    .line 42
    if-eq v1, v4, :cond_3

    .line 43
    .line 44
    iget-boolean v1, v2, Lxy1;->R:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    .line 50
    .line 51
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    iget-object v1, v0, Lbz1;->d:Lty1;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    if-ne v1, v2, :cond_4

    .line 64
    .line 65
    sget-object v0, Lvy1;->o:Lvy1;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-object p0, v0, Lbz1;->d:Lty1;

    .line 69
    .line 70
    const-string p1, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    .line 71
    .line 72
    invoke-static {p0, p1}, Lp61;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :cond_5
    sget-object v0, Lvy1;->n:Lvy1;

    .line 78
    .line 79
    :goto_1
    iput-object v0, p0, Lcb2;->y:Lvy1;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    iput-object v4, p0, Lcb2;->y:Lvy1;

    .line 83
    .line 84
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcb2;->q0(J)Z

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final g(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-static {v1}, Lix;->C(Lxy1;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lbz1;->q:Lq82;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lq82;->g(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcb2;->m0()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1}, Lya2;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->E:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j0()Ljava/util/List;
    .locals 9

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-virtual {v1}, Lxy1;->h0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcb2;->M:Z

    .line 9
    .line 10
    iget-object v2, p0, Lcb2;->L:Lug2;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lug2;->g()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object v0, v0, Lbz1;->a:Lxy1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, v1, Lug2;->n:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v1, Lug2;->p:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    move v5, v4

    .line 31
    :goto_0
    if-ge v5, v1, :cond_2

    .line 32
    .line 33
    aget-object v6, v3, v5

    .line 34
    .line 35
    check-cast v6, Lxy1;

    .line 36
    .line 37
    iget v7, v2, Lug2;->p:I

    .line 38
    .line 39
    if-gt v7, v5, :cond_1

    .line 40
    .line 41
    iget-object v6, v6, Lxy1;->T:Lbz1;

    .line 42
    .line 43
    iget-object v6, v6, Lbz1;->p:Lcb2;

    .line 44
    .line 45
    invoke-virtual {v2, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v6, v6, Lxy1;->T:Lbz1;

    .line 50
    .line 51
    iget-object v6, v6, Lbz1;->p:Lcb2;

    .line 52
    .line 53
    iget-object v7, v2, Lug2;->n:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v8, v7, v5

    .line 56
    .line 57
    aput-object v6, v7, v5

    .line 58
    .line 59
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Lxy1;->n()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lrg2;

    .line 67
    .line 68
    iget-object v0, v0, Lrg2;->n:Lug2;

    .line 69
    .line 70
    iget v0, v0, Lug2;->p:I

    .line 71
    .line 72
    iget v1, v2, Lug2;->p:I

    .line 73
    .line 74
    invoke-virtual {v2, v0, v1}, Lug2;->m(II)V

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Lcb2;->M:Z

    .line 78
    .line 79
    invoke-virtual {v2}, Lug2;->g()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final k0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcb2;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcb2;->F:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 7
    .line 8
    iget-object v2, p0, Lbz1;->a:Lxy1;

    .line 9
    .line 10
    iget-object v3, v2, Lxy1;->S:Lbo;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v3, Lbo;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lgr1;

    .line 17
    .line 18
    invoke-virtual {v0}, Lmm2;->Z0()V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lq9;

    .line 26
    .line 27
    invoke-virtual {v0}, Lq9;->getRectManager()Ln33;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ln33;->h(Lxy1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lxy1;->q()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v0, 0x6

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    invoke-static {v2, v1, v0}, Lxy1;->X(Lxy1;ZI)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, v2, Lxy1;->T:Lbz1;

    .line 48
    .line 49
    iget-boolean p0, p0, Lbz1;->e:Z

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-static {v2, v1, v0}, Lxy1;->V(Lxy1;ZI)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    iget-object p0, v3, Lbo;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lmm2;

    .line 59
    .line 60
    iget-object v0, v3, Lbo;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lgr1;

    .line 63
    .line 64
    iget-object v0, v0, Lmm2;->G:Lmm2;

    .line 65
    .line 66
    :goto_1
    invoke-static {p0, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    iget-boolean v1, p0, Lmm2;->b0:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lmm2;->V0()V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p0, p0, Lmm2;->G:Lmm2;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v2}, Lxy1;->z()Lug2;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 89
    .line 90
    iget p0, p0, Lug2;->p:I

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    :goto_2
    if-ge v1, p0, :cond_5

    .line 94
    .line 95
    aget-object v2, v0, v1

    .line 96
    .line 97
    check-cast v2, Lxy1;

    .line 98
    .line 99
    invoke-virtual {v2}, Lxy1;->v()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const v4, 0x7fffffff

    .line 104
    .line 105
    .line 106
    if-eq v3, v4, :cond_4

    .line 107
    .line 108
    iget-object v3, v2, Lxy1;->T:Lbz1;

    .line 109
    .line 110
    iget-object v3, v3, Lbz1;->p:Lcb2;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcb2;->k0()V

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Lxy1;->Y(Lxy1;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    return-void
.end method

.method public final l(Lc8;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 10
    .line 11
    iget p0, p0, Lug2;->p:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, p0, :cond_0

    .line 15
    .line 16
    aget-object v2, v0, v1

    .line 17
    .line 18
    check-cast v2, Lxy1;

    .line 19
    .line 20
    iget-object v2, v2, Lxy1;->T:Lbz1;

    .line 21
    .line 22
    iget-object v2, v2, Lbz1;->p:Lcb2;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lc8;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcb2;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcb2;->F:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 9
    .line 10
    iget-object v1, p0, Lbz1;->a:Lxy1;

    .line 11
    .line 12
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 13
    .line 14
    invoke-static {v1}, Laz1;->a(Lxy1;)Lsr2;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lq9;

    .line 19
    .line 20
    invoke-virtual {v1}, Lq9;->getRectManager()Ln33;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p0}, Ln33;->i(Lxy1;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 28
    .line 29
    iget-object v2, v1, Lbo;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lmm2;

    .line 32
    .line 33
    iget-object v1, v1, Lbo;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lgr1;

    .line 36
    .line 37
    iget-object v1, v1, Lmm2;->G:Lmm2;

    .line 38
    .line 39
    :goto_0
    invoke-static {v2, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v2}, Lmm2;->b1()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lmm2;->g1()V

    .line 51
    .line 52
    .line 53
    iget-object v2, v2, Lmm2;->G:Lmm2;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object v1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 61
    .line 62
    iget p0, p0, Lug2;->p:I

    .line 63
    .line 64
    :goto_1
    if-ge v0, p0, :cond_1

    .line 65
    .line 66
    aget-object v2, v1, v0

    .line 67
    .line 68
    check-cast v2, Lxy1;

    .line 69
    .line 70
    iget-object v2, v2, Lxy1;->T:Lbz1;

    .line 71
    .line 72
    iget-object v2, v2, Lbz1;->p:Lcb2;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcb2;->l0()V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lk82;->y:Z

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-boolean p1, v0, Lk82;->y:Z

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcb2;->X:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final m0()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x7

    .line 7
    invoke-static {v0, v1, v2}, Lxy1;->X(Lxy1;ZI)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 11
    .line 12
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lxy1;->P:Lvy1;

    .line 19
    .line 20
    sget-object v2, Lvy1;->p:Lvy1;

    .line 21
    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    iget-object v1, v0, Lxy1;->T:Lbz1;

    .line 25
    .line 26
    iget-object v1, v1, Lbz1;->d:Lty1;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v0, v0, Lxy1;->P:Lvy1;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lvy1;->o:Lvy1;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lvy1;->n:Lvy1;

    .line 44
    .line 45
    :goto_0
    iput-object v0, p0, Lxy1;->P:Lvy1;

    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final n()Lgr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 6
    .line 7
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lgr1;

    .line 10
    .line 11
    return-object p0
.end method

.method public final n0()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcb2;->S:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcb2;->s:Lbz1;

    .line 5
    .line 6
    iget-object v2, v1, Lbz1;->a:Lxy1;

    .line 7
    .line 8
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v3, v3, Lmm2;->R:F

    .line 17
    .line 18
    iget-object v1, v1, Lbz1;->a:Lxy1;

    .line 19
    .line 20
    iget-object v4, v1, Lxy1;->S:Lbo;

    .line 21
    .line 22
    iget-object v5, v4, Lbo;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Lmm2;

    .line 25
    .line 26
    iget-object v4, v4, Lbo;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lgr1;

    .line 29
    .line 30
    :goto_0
    if-eq v5, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast v5, Lqy1;

    .line 36
    .line 37
    iget v6, v5, Lmm2;->R:F

    .line 38
    .line 39
    add-float/2addr v3, v6

    .line 40
    iget-object v5, v5, Lmm2;->G:Lmm2;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v4, p0, Lcb2;->R:F

    .line 44
    .line 45
    cmpg-float v4, v3, v4

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iput v3, p0, Lcb2;->R:F

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Lxy1;->O()V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Lxy1;->C()V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-boolean v3, v3, Lk82;->B:Z

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    if-nez v3, :cond_8

    .line 70
    .line 71
    iget-boolean v3, p0, Lcb2;->F:Z

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    iget-object v5, p0, Lcb2;->K:Lyy1;

    .line 76
    .line 77
    invoke-virtual {v5}, Lyy1;->d()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    :cond_4
    invoke-virtual {p0}, Lcb2;->k0()V

    .line 84
    .line 85
    .line 86
    :cond_5
    if-nez v3, :cond_7

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    invoke-virtual {v2}, Lxy1;->C()V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-boolean v1, p0, Lcb2;->t:Z

    .line 94
    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    if-eqz v2, :cond_8

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lxy1;->W(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    iget-object v1, v1, Lxy1;->S:Lbo;

    .line 104
    .line 105
    iget-object v1, v1, Lbo;->d:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Lgr1;

    .line 108
    .line 109
    invoke-virtual {v1}, Lmm2;->Z0()V

    .line 110
    .line 111
    .line 112
    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    .line 113
    .line 114
    iget-object v1, v2, Lxy1;->T:Lbz1;

    .line 115
    .line 116
    iget-boolean v2, p0, Lcb2;->t:Z

    .line 117
    .line 118
    if-nez v2, :cond_b

    .line 119
    .line 120
    iget-object v2, v1, Lbz1;->d:Lty1;

    .line 121
    .line 122
    sget-object v3, Lty1;->p:Lty1;

    .line 123
    .line 124
    if-ne v2, v3, :cond_b

    .line 125
    .line 126
    iget v2, p0, Lcb2;->v:I

    .line 127
    .line 128
    const v3, 0x7fffffff

    .line 129
    .line 130
    .line 131
    if-ne v2, v3, :cond_9

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_9
    const-string v2, "Place was called on a node which was placed already"

    .line 135
    .line 136
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    iget v2, v1, Lbz1;->i:I

    .line 140
    .line 141
    iput v2, p0, Lcb2;->v:I

    .line 142
    .line 143
    add-int/2addr v2, v0

    .line 144
    iput v2, v1, Lbz1;->i:I

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_a
    iput v4, p0, Lcb2;->v:I

    .line 148
    .line 149
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcb2;->x()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final o0(JFLpe1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 6
    .line 7
    iget-boolean v1, v1, Lxy1;->d0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "place is called on a deactivated node"

    .line 12
    .line 13
    invoke-static {v1}, Lar1;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v1, Lty1;->p:Lty1;

    .line 17
    .line 18
    iput-object v1, v0, Lbz1;->d:Lty1;

    .line 19
    .line 20
    iput-wide p1, p0, Lcb2;->A:J

    .line 21
    .line 22
    iput p3, p0, Lcb2;->C:F

    .line 23
    .line 24
    iput-object p4, p0, Lcb2;->B:Lpe1;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcb2;->S:Z

    .line 28
    .line 29
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-boolean v4, p0, Lcb2;->I:Z

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-boolean v4, p0, Lcb2;->F:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, v1, Ldv2;->r:J

    .line 46
    .line 47
    invoke-static {p1, p2, v2, v3}, Ljs1;->c(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-virtual {v1, p1, p2, p3, p4}, Lmm2;->e1(JFLpe1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcb2;->n0()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v4, p0, Lcb2;->K:Lyy1;

    .line 59
    .line 60
    iput-boolean v1, v4, Lyy1;->g:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lbz1;->f(Z)V

    .line 63
    .line 64
    .line 65
    iput-object p4, p0, Lcb2;->T:Lpe1;

    .line 66
    .line 67
    iput-wide p1, p0, Lcb2;->U:J

    .line 68
    .line 69
    iput p3, p0, Lcb2;->V:F

    .line 70
    .line 71
    check-cast v3, Lq9;

    .line 72
    .line 73
    invoke-virtual {v3}, Lq9;->getSnapshotObserver()Lur2;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p1, Lur2;->f:Ldo2;

    .line 78
    .line 79
    iget-object p1, p1, Lur2;->a:Lip3;

    .line 80
    .line 81
    iget-object p3, p0, Lcb2;->W:Lbb2;

    .line 82
    .line 83
    invoke-virtual {p1, v2, p2, p3}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    sget-object p1, Lty1;->r:Lty1;

    .line 87
    .line 88
    iput-object p1, v0, Lbz1;->d:Lty1;

    .line 89
    .line 90
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-boolean p1, p1, Lk82;->B:Z

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-boolean p1, v0, Lbz1;->k:Z

    .line 99
    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    iget-boolean p1, v0, Lbz1;->j:Z

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    :cond_2
    invoke-virtual {p0}, Lcb2;->requestLayout()V

    .line 107
    .line 108
    .line 109
    :cond_3
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcb2;->x:Z

    .line 111
    .line 112
    return-void
.end method

.method public final q0(J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v1, v0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, v1, Lxy1;->d0:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "measure is called on a deactivated node"

    .line 12
    .line 13
    invoke-static {v3}, Lar1;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-boolean v5, v2, Lxy1;->R:Z

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-boolean v4, v4, Lxy1;->R:Z

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v7

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    move v4, v6

    .line 44
    :goto_2
    iput-boolean v4, v2, Lxy1;->R:Z

    .line 45
    .line 46
    invoke-virtual {v2}, Lxy1;->q()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    iget-wide v4, p0, Ldv2;->q:J

    .line 53
    .line 54
    invoke-static {v4, v5, p1, p2}, Lmf0;->b(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    check-cast v3, Lq9;

    .line 62
    .line 63
    invoke-virtual {v3, v2, v7}, Lq9;->g(Lxy1;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lxy1;->Z()V

    .line 67
    .line 68
    .line 69
    return v7

    .line 70
    :cond_4
    :goto_3
    iget-object v3, p0, Lcb2;->K:Lyy1;

    .line 71
    .line 72
    iput-boolean v7, v3, Lyy1;->f:Z

    .line 73
    .line 74
    invoke-virtual {v2}, Lxy1;->z()Lug2;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, v3, Lug2;->n:[Ljava/lang/Object;

    .line 79
    .line 80
    iget v3, v3, Lug2;->p:I

    .line 81
    .line 82
    move v5, v7

    .line 83
    :goto_4
    if-ge v5, v3, :cond_5

    .line 84
    .line 85
    aget-object v8, v4, v5

    .line 86
    .line 87
    check-cast v8, Lxy1;

    .line 88
    .line 89
    iget-object v8, v8, Lxy1;->T:Lbz1;

    .line 90
    .line 91
    iget-object v8, v8, Lbz1;->p:Lcb2;

    .line 92
    .line 93
    iget-object v8, v8, Lcb2;->K:Lyy1;

    .line 94
    .line 95
    iput-boolean v7, v8, Lyy1;->c:Z

    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    iput-boolean v6, p0, Lcb2;->w:Z

    .line 101
    .line 102
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-wide v3, v3, Ldv2;->p:J

    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Ldv2;->h0(J)V

    .line 109
    .line 110
    .line 111
    iget-object v5, v0, Lbz1;->d:Lty1;

    .line 112
    .line 113
    sget-object v8, Lty1;->r:Lty1;

    .line 114
    .line 115
    if-ne v5, v8, :cond_6

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    const-string v5, "layout state is not idle before measure starts"

    .line 119
    .line 120
    invoke-static {v5}, Lar1;->b(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_5
    iput-wide p1, p0, Lcb2;->O:J

    .line 124
    .line 125
    sget-object p1, Lty1;->n:Lty1;

    .line 126
    .line 127
    iput-object p1, v0, Lbz1;->d:Lty1;

    .line 128
    .line 129
    iput-boolean v7, p0, Lcb2;->H:Z

    .line 130
    .line 131
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Lq9;

    .line 136
    .line 137
    invoke-virtual {p2}, Lq9;->getSnapshotObserver()Lur2;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object v5, p0, Lcb2;->P:Lbb2;

    .line 142
    .line 143
    iget-object v9, p2, Lur2;->c:Ldo2;

    .line 144
    .line 145
    iget-object p2, p2, Lur2;->a:Lip3;

    .line 146
    .line 147
    invoke-virtual {p2, v2, v9, v5}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 148
    .line 149
    .line 150
    iget-object p2, v0, Lbz1;->d:Lty1;

    .line 151
    .line 152
    if-ne p2, p1, :cond_7

    .line 153
    .line 154
    iput-boolean v6, p0, Lcb2;->I:Z

    .line 155
    .line 156
    iput-boolean v6, p0, Lcb2;->J:Z

    .line 157
    .line 158
    iput-object v8, v0, Lbz1;->d:Lty1;

    .line 159
    .line 160
    :cond_7
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-wide p1, p1, Ldv2;->p:J

    .line 165
    .line 166
    invoke-static {p1, p2, v3, v4}, Lrs1;->a(JJ)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget p1, p1, Ldv2;->n:I

    .line 177
    .line 178
    iget p2, p0, Ldv2;->n:I

    .line 179
    .line 180
    if-ne p1, p2, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget p1, p1, Ldv2;->o:I

    .line 187
    .line 188
    iget p2, p0, Ldv2;->o:I

    .line 189
    .line 190
    if-eq p1, p2, :cond_8

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    move v6, v7

    .line 194
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget p1, p1, Ldv2;->n:I

    .line 199
    .line 200
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iget p2, p2, Ldv2;->o:I

    .line 205
    .line 206
    int-to-long v2, p1

    .line 207
    const/16 p1, 0x20

    .line 208
    .line 209
    shl-long/2addr v2, p1

    .line 210
    int-to-long p1, p2

    .line 211
    const-wide v4, 0xffffffffL

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    and-long/2addr p1, v4

    .line 217
    or-long/2addr p1, v2

    .line 218
    invoke-virtual {p0, p1, p2}, Ldv2;->g0(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .line 220
    .line 221
    return v6

    .line 222
    :goto_7
    invoke-virtual {v1, p0}, Lxy1;->a0(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    const/4 p0, 0x0

    .line 226
    throw p0
.end method

.method public final r()Ld8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object p0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lxy1;->W(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final u0()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcb2;->s:Lbz1;

    .line 2
    .line 3
    iget-object v0, p0, Lbz1;->a:Lxy1;

    .line 4
    .line 5
    iget-object v1, p0, Lbz1;->a:Lxy1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lxy1;->I()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget p0, p0, Lbz1;->l:I

    .line 14
    .line 15
    if-lez p0, :cond_2

    .line 16
    .line 17
    iget-object p0, v1, Lxy1;->T:Lbz1;

    .line 18
    .line 19
    iget-boolean v0, p0, Lbz1;->j:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lbz1;->k:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 29
    .line 30
    iget-boolean p0, p0, Lcb2;->I:Z

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lxy1;->W(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v1}, Lxy1;->z()Lug2;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 42
    .line 43
    iget p0, p0, Lug2;->p:I

    .line 44
    .line 45
    :goto_0
    if-ge v2, p0, :cond_2

    .line 46
    .line 47
    aget-object v1, v0, v2

    .line 48
    .line 49
    check-cast v1, Lxy1;

    .line 50
    .line 51
    iget-object v1, v1, Lxy1;->T:Lbz1;

    .line 52
    .line 53
    iget-object v1, v1, Lbz1;->p:Lcb2;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcb2;->u0()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public final x()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcb2;->N:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcb2;->K:Lyy1;

    .line 5
    .line 6
    invoke-virtual {v1}, Lyy1;->h()V

    .line 7
    .line 8
    .line 9
    iget-boolean v2, p0, Lcb2;->I:Z

    .line 10
    .line 11
    iget-object v3, p0, Lcb2;->s:Lbz1;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v3, Lbz1;->a:Lxy1;

    .line 17
    .line 18
    invoke-virtual {v2}, Lxy1;->z()Lug2;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v5, v2, Lug2;->n:[Ljava/lang/Object;

    .line 23
    .line 24
    iget v2, v2, Lug2;->p:I

    .line 25
    .line 26
    move v6, v4

    .line 27
    :goto_0
    if-ge v6, v2, :cond_1

    .line 28
    .line 29
    aget-object v7, v5, v6

    .line 30
    .line 31
    check-cast v7, Lxy1;

    .line 32
    .line 33
    invoke-virtual {v7}, Lxy1;->q()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    invoke-virtual {v7}, Lxy1;->r()Lvy1;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    sget-object v9, Lvy1;->n:Lvy1;

    .line 44
    .line 45
    if-ne v8, v9, :cond_0

    .line 46
    .line 47
    invoke-static {v7}, Lxy1;->Q(Lxy1;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    iget-object v7, v3, Lbz1;->a:Lxy1;

    .line 54
    .line 55
    const/4 v8, 0x7

    .line 56
    invoke-static {v7, v4, v8}, Lxy1;->X(Lxy1;ZI)V

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v2, p0, Lcb2;->J:Z

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    iget-boolean v2, p0, Lcb2;->z:Z

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-boolean v2, v2, Lk82;->B:Z

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget-boolean v2, p0, Lcb2;->I:Z

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    :cond_2
    iput-boolean v4, p0, Lcb2;->I:Z

    .line 83
    .line 84
    iget-object v2, v3, Lbz1;->d:Lty1;

    .line 85
    .line 86
    sget-object v5, Lty1;->p:Lty1;

    .line 87
    .line 88
    iput-object v5, v3, Lbz1;->d:Lty1;

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Lbz1;->g(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v5, v3, Lbz1;->a:Lxy1;

    .line 94
    .line 95
    invoke-static {v5}, Laz1;->a(Lxy1;)Lsr2;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lq9;

    .line 100
    .line 101
    invoke-virtual {v6}, Lq9;->getSnapshotObserver()Lur2;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget-object v7, v6, Lur2;->e:Ldo2;

    .line 106
    .line 107
    iget-object v6, v6, Lur2;->a:Lip3;

    .line 108
    .line 109
    iget-object v8, p0, Lcb2;->Q:Lbb2;

    .line 110
    .line 111
    invoke-virtual {v6, v5, v7, v8}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, v3, Lbz1;->d:Lty1;

    .line 115
    .line 116
    iput-boolean v4, p0, Lcb2;->J:Z

    .line 117
    .line 118
    :cond_3
    iget-boolean v2, v1, Lyy1;->d:Z

    .line 119
    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    iput-boolean v0, v1, Lyy1;->e:Z

    .line 123
    .line 124
    :cond_4
    iget-boolean v0, v1, Lyy1;->b:Z

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-virtual {v1}, Lyy1;->e()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {v1}, Lyy1;->g()V

    .line 135
    .line 136
    .line 137
    :cond_5
    iput-boolean v4, p0, Lcb2;->N:Z

    .line 138
    .line 139
    return-void
.end method
