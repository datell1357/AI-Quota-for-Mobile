.class public abstract Lqx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lkg2;

.field public static final b:Lkg2;

.field public static final c:Loa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lqx;->c(Z)Lkg2;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lqx;->a:Lkg2;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lqx;->c(Z)Lkg2;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lqx;->b:Lkg2;

    .line 14
    .line 15
    sget-object v0, Loa;->c:Loa;

    .line 16
    .line 17
    sput-object v0, Lqx;->c:Loa;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Lnd2;Lag1;I)V
    .locals 6

    .line 1
    const v0, -0xc96ce69

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    or-int/2addr v0, p2

    .line 18
    and-int/lit8 v2, v0, 0x3

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    and-int/2addr v0, v3

    .line 27
    invoke-virtual {p1, v0, v1}, Lag1;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-wide v0, p1, Lag1;->T:J

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1, p0}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object v4, Llb0;->c:Lkb0;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v4, Lkb0;->b:Lic0;

    .line 53
    .line 54
    invoke-virtual {p1}, Lag1;->Z()V

    .line 55
    .line 56
    .line 57
    iget-boolean v5, p1, Lag1;->S:Z

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lag1;->k(Lne1;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p1}, Lag1;->j0()V

    .line 66
    .line 67
    .line 68
    :goto_2
    sget-object v4, Lkb0;->f:Lfd;

    .line 69
    .line 70
    sget-object v5, Lqx;->c:Loa;

    .line 71
    .line 72
    invoke-static {v4, p1, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object v4, Lkb0;->e:Lfd;

    .line 76
    .line 77
    invoke-static {v4, p1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lkb0;->h:Ll9;

    .line 81
    .line 82
    invoke-static {p1, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 83
    .line 84
    .line 85
    sget-object v2, Lkb0;->d:Lfd;

    .line 86
    .line 87
    invoke-static {v2, p1, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lkb0;->g:Lfd;

    .line 95
    .line 96
    invoke-static {v1, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    invoke-virtual {p1}, Lag1;->Q()V

    .line 104
    .line 105
    .line 106
    :goto_3
    invoke-virtual {p1}, Lag1;->r()Lc33;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    new-instance v0, Lsp0;

    .line 113
    .line 114
    const/4 v1, 0x3

    .line 115
    invoke-direct {v0, p2, v1, p0}, Lsp0;-><init>(IILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p1, Lc33;->d:Ldf1;

    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method public static final b(Lcv2;Ldv2;Lya2;Lhy1;IILcw;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Lya2;->i()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lpx;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lpx;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p2, Lpx;->B:Lcw;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v0, p2

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_1
    move-object v0, p6

    .line 23
    :goto_2
    iget p2, p1, Ldv2;->n:I

    .line 24
    .line 25
    iget p6, p1, Ldv2;->o:I

    .line 26
    .line 27
    int-to-long v1, p2

    .line 28
    const/16 p2, 0x20

    .line 29
    .line 30
    shl-long/2addr v1, p2

    .line 31
    int-to-long v3, p6

    .line 32
    const-wide v5, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    and-long/2addr v3, v5

    .line 38
    or-long/2addr v1, v3

    .line 39
    int-to-long v3, p4

    .line 40
    shl-long/2addr v3, p2

    .line 41
    int-to-long p4, p5

    .line 42
    and-long/2addr p4, v5

    .line 43
    or-long/2addr v3, p4

    .line 44
    move-object v5, p3

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcw;->a(JJLhy1;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcv2;->i(Lcv2;Ldv2;J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final c(Z)Lkg2;
    .locals 3

    .line 1
    new-instance v0, Lkg2;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkg2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lmj1;->o:Lcw;

    .line 9
    .line 10
    new-instance v2, Ltx;

    .line 11
    .line 12
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lmj1;->p:Lcw;

    .line 19
    .line 20
    new-instance v2, Ltx;

    .line 21
    .line 22
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lmj1;->q:Lcw;

    .line 29
    .line 30
    new-instance v2, Ltx;

    .line 31
    .line 32
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lmj1;->r:Lcw;

    .line 39
    .line 40
    new-instance v2, Ltx;

    .line 41
    .line 42
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lmj1;->s:Lcw;

    .line 49
    .line 50
    new-instance v2, Ltx;

    .line 51
    .line 52
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lmj1;->t:Lcw;

    .line 59
    .line 60
    new-instance v2, Ltx;

    .line 61
    .line 62
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lmj1;->u:Lcw;

    .line 69
    .line 70
    new-instance v2, Ltx;

    .line 71
    .line 72
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lmj1;->v:Lcw;

    .line 79
    .line 80
    new-instance v2, Ltx;

    .line 81
    .line 82
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lmj1;->w:Lcw;

    .line 89
    .line 90
    new-instance v2, Ltx;

    .line 91
    .line 92
    invoke-direct {v2, v1, p0}, Ltx;-><init>(Lcw;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public static final d(Lcw;Z)Ldb2;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lqx;->a:Lkg2;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lqx;->b:Lkg2;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ldb2;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ltx;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Ltx;-><init>(Lcw;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object v0
.end method
