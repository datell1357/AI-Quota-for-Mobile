.class public final Lgr1;
.super Lmm2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final j0:Llb;


# instance fields
.field public final h0:Lgw3;

.field public i0:Lfr1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lon4;->e()Llb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Lt70;->c:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Llb;->f(J)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Llb;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/graphics/Paint;

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Llb;->k(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lgr1;->j0:Llb;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lxy1;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmm2;-><init>(Lxy1;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgw3;

    .line 5
    .line 6
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lmd2;->q:I

    .line 11
    .line 12
    iput-object v0, p0, Lgr1;->h0:Lgw3;

    .line 13
    .line 14
    iput-object p0, v0, Lmd2;->u:Lmm2;

    .line 15
    .line 16
    iget-object p1, p1, Lxy1;->u:Lxy1;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lfr1;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lm82;-><init>(Lmm2;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-object p1, p0, Lgr1;->i0:Lfr1;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgr1;->i0:Lfr1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lfr1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lm82;-><init>(Lmm2;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lgr1;->i0:Lfr1;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final K(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy1;->t()Lxh1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lxh1;->q()Ldb2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lxy1;

    .line 14
    .line 15
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lmm2;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxy1;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, v1, p0, p1}, Ldb2;->i(Ljt1;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final M0()Lm82;
    .locals 0

    .line 1
    iget-object p0, p0, Lgr1;->i0:Lfr1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final O0()Lmd2;
    .locals 0

    .line 1
    iget-object p0, p0, Lgr1;->h0:Lgw3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final R(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy1;->t()Lxh1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lxh1;->q()Ldb2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lxy1;

    .line 14
    .line 15
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lmm2;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxy1;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, v1, p0, p1}, Ldb2;->c(Ljt1;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final T(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy1;->t()Lxh1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lxh1;->q()Ldb2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lxy1;

    .line 14
    .line 15
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lmm2;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxy1;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, v1, p0, p1}, Ldb2;->g(Ljt1;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final U0(Lkm2;JLzj1;IZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lkm2;->q(Lxy1;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Lmm2;->m1(J)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move/from16 v9, p5

    .line 18
    .line 19
    move/from16 v10, p6

    .line 20
    .line 21
    :goto_0
    move v3, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move/from16 v9, p5

    .line 24
    .line 25
    if-ne v9, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lmm2;->N0()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-virtual {p0, p2, p3, v4, v5}, Lmm2;->G0(JJ)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const v1, 0x7fffffff

    .line 40
    .line 41
    .line 42
    and-int/2addr p0, v1

    .line 43
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 44
    .line 45
    if-ge p0, v1, :cond_2

    .line 46
    .line 47
    move v10, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move/from16 v9, p5

    .line 50
    .line 51
    :cond_2
    move/from16 v10, p6

    .line 52
    .line 53
    :goto_1
    if-eqz v3, :cond_5

    .line 54
    .line 55
    iget p0, p4, Lzj1;->p:I

    .line 56
    .line 57
    invoke-virtual {v0}, Lxy1;->y()Lug2;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, v0, Lug2;->n:[Ljava/lang/Object;

    .line 62
    .line 63
    iget v0, v0, Lug2;->p:I

    .line 64
    .line 65
    sub-int/2addr v0, v2

    .line 66
    :goto_2
    if-ltz v0, :cond_4

    .line 67
    .line 68
    aget-object v2, v1, v0

    .line 69
    .line 70
    move-object v5, v2

    .line 71
    check-cast v5, Lxy1;

    .line 72
    .line 73
    invoke-virtual {v5}, Lxy1;->I()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    move-object v4, p1

    .line 80
    move-wide v6, p2

    .line 81
    move-object v8, p4

    .line 82
    invoke-interface/range {v4 .. v10}, Lkm2;->j(Lxy1;JLzj1;IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Lzj1;->a()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-static {v2, v3}, Ln44;->n0(J)F

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v7, 0x0

    .line 94
    cmpg-float v6, v6, v7

    .line 95
    .line 96
    if-gez v6, :cond_3

    .line 97
    .line 98
    invoke-static {v2, v3}, Ln44;->w0(J)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_3

    .line 103
    .line 104
    invoke-static {v2, v3}, Ln44;->v0(J)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    invoke-interface {p1, p4, v5}, Lkm2;->m(Lzj1;Lxy1;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 117
    .line 118
    move/from16 v9, p5

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iput p0, p4, Lzj1;->p:I

    .line 122
    .line 123
    :cond_5
    return-void
.end method

.method public final d0(JFLpe1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmm2;->e1(JFLpe1;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lk82;->A:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 10
    .line 11
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 12
    .line 13
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcb2;->n0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d1(Lv20;Lzh1;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lxy1;->y()Lug2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, v0, Lug2;->n:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v0, v0, Lug2;->p:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v0, :cond_1

    .line 17
    .line 18
    aget-object v4, v2, v3

    .line 19
    .line 20
    check-cast v4, Lxy1;

    .line 21
    .line 22
    invoke-virtual {v4}, Lxy1;->I()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, p1, p2}, Lxy1;->i(Lv20;Lzh1;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    check-cast v1, Lq9;

    .line 35
    .line 36
    invoke-virtual {v1}, Lq9;->getShowLayoutBounds()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    iget-wide v0, p0, Ldv2;->p:J

    .line 43
    .line 44
    const/16 p0, 0x20

    .line 45
    .line 46
    shr-long v2, v0, p0

    .line 47
    .line 48
    long-to-int p0, v2

    .line 49
    int-to-float p0, p0

    .line 50
    const/high16 p2, 0x3f000000    # 0.5f

    .line 51
    .line 52
    sub-float v5, p0, p2

    .line 53
    .line 54
    const-wide v2, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v0, v2

    .line 60
    long-to-int p0, v0

    .line 61
    int-to-float p0, p0

    .line 62
    sub-float v6, p0, p2

    .line 63
    .line 64
    const/high16 v3, 0x3f000000    # 0.5f

    .line 65
    .line 66
    const/high16 v4, 0x3f000000    # 0.5f

    .line 67
    .line 68
    sget-object v7, Lgr1;->j0:Llb;

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    invoke-interface/range {v2 .. v7}, Lv20;->n(FFFFLlb;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final e(J)Ldv2;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Ldv2;->h0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v1, Lug2;->n:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, v1, Lug2;->p:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    aget-object v4, v2, v3

    .line 18
    .line 19
    check-cast v4, Lxy1;

    .line 20
    .line 21
    iget-object v4, v4, Lxy1;->T:Lbz1;

    .line 22
    .line 23
    iget-object v4, v4, Lbz1;->p:Lcb2;

    .line 24
    .line 25
    sget-object v5, Lvy1;->p:Lvy1;

    .line 26
    .line 27
    iput-object v5, v4, Lcb2;->y:Lvy1;

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v0, Lxy1;->J:Ldb2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lxy1;->m()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v1, p0, v0, p1, p2}, Ldb2;->f(Lgb2;Ljava/util/List;J)Leb2;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lmm2;->h1(Leb2;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lmm2;->Y0()V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public final g(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy1;->t()Lxh1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lxh1;->q()Ldb2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lxh1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lxy1;

    .line 14
    .line 15
    iget-object v1, p0, Lxy1;->S:Lbo;

    .line 16
    .line 17
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lmm2;

    .line 20
    .line 21
    invoke-virtual {p0}, Lxy1;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {v0, v1, p0, p1}, Ldb2;->a(Ljt1;Ljava/util/List;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final k0(Ly7;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lgr1;->i0:Lfr1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lfr1;->k0(Ly7;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 11
    .line 12
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 13
    .line 14
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 15
    .line 16
    iget-object v0, p0, Lcb2;->K:Lyy1;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcb2;->z:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcb2;->s:Lbz1;

    .line 24
    .line 25
    iget-object v1, v1, Lbz1;->d:Lty1;

    .line 26
    .line 27
    sget-object v3, Lty1;->n:Lty1;

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iput-boolean v2, v0, Lyy1;->f:Z

    .line 32
    .line 33
    iget-boolean v1, v0, Lyy1;->b:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iput-boolean v2, p0, Lcb2;->I:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcb2;->J:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iput-boolean v2, v0, Lyy1;->g:Z

    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-boolean v3, v1, Lk82;->B:Z

    .line 49
    .line 50
    iput-boolean v2, v1, Lk82;->B:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Lcb2;->x()V

    .line 53
    .line 54
    .line 55
    iput-boolean v3, v1, Lk82;->B:Z

    .line 56
    .line 57
    iget-object p0, v0, Lyy1;->i:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_3
    const/high16 p0, -0x80000000

    .line 73
    .line 74
    return p0
.end method
