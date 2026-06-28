.class public abstract Lmm2;
.super Lk82;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lya2;
.implements Lgy1;


# static fields
.field public static final d0:Lo83;

.field public static final e0:Lcy1;

.field public static final f0:Ljm2;

.field public static final g0:Lb21;


# instance fields
.field public final F:Lxy1;

.field public G:Lmm2;

.field public H:Lmm2;

.field public I:Z

.field public J:Z

.field public K:Lpe1;

.field public L:Las0;

.field public M:Lhy1;

.field public N:F

.field public O:Leb2;

.field public P:Lcg2;

.field public Q:J

.field public R:F

.field public S:Ljg2;

.field public T:Lcy1;

.field public U:Ljl3;

.field public V:Z

.field public W:Z

.field public X:Lzh1;

.field public Y:Lv20;

.field public Z:Lga;

.field public final a0:Llm2;

.field public b0:Z

.field public c0:Lrr2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo83;

    .line 2
    .line 3
    invoke-direct {v0}, Lo83;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmm2;->d0:Lo83;

    .line 7
    .line 8
    new-instance v0, Lcy1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcy1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lmm2;->e0:Lcy1;

    .line 14
    .line 15
    new-instance v0, Ljm2;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lmm2;->f0:Ljm2;

    .line 21
    .line 22
    new-instance v0, Lb21;

    .line 23
    .line 24
    const/16 v1, 0xf

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lmm2;->g0:Lb21;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lxy1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk82;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmm2;->F:Lxy1;

    .line 5
    .line 6
    iget-object v0, p1, Lxy1;->L:Las0;

    .line 7
    .line 8
    iput-object v0, p0, Lmm2;->L:Las0;

    .line 9
    .line 10
    iget-object p1, p1, Lxy1;->M:Lhy1;

    .line 11
    .line 12
    iput-object p1, p0, Lmm2;->M:Lhy1;

    .line 13
    .line 14
    const p1, 0x3f4ccccd    # 0.8f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lmm2;->N:F

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lmm2;->Q:J

    .line 22
    .line 23
    sget-object p1, Lk75;->d:Lfk1;

    .line 24
    .line 25
    iput-object p1, p0, Lmm2;->U:Ljl3;

    .line 26
    .line 27
    new-instance p1, Llm2;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {p1, p0, v0}, Llm2;-><init>(Lmm2;I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lmm2;->a0:Llm2;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 6
    .line 7
    return p0
.end method

.method public final B0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 2
    .line 3
    iget v2, p0, Lmm2;->R:F

    .line 4
    .line 5
    iget-object v3, p0, Lmm2;->K:Lpe1;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Ldv2;->d0(JFLpe1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final D0(Lmm2;Ljg2;Z)V
    .locals 5

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lmm2;->H:Lmm2;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lmm2;->D0(Lmm2;Ljg2;Z)V

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 12
    .line 13
    const/16 p1, 0x20

    .line 14
    .line 15
    shr-long v2, v0, p1

    .line 16
    .line 17
    long-to-int v2, v2

    .line 18
    iget v3, p2, Ljg2;->a:F

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v3, v2

    .line 22
    iput v3, p2, Ljg2;->a:F

    .line 23
    .line 24
    iget v3, p2, Ljg2;->c:F

    .line 25
    .line 26
    sub-float/2addr v3, v2

    .line 27
    iput v3, p2, Ljg2;->c:F

    .line 28
    .line 29
    const-wide v2, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v0, v2

    .line 35
    long-to-int v0, v0

    .line 36
    iget v1, p2, Ljg2;->b:F

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    sub-float/2addr v1, v0

    .line 40
    iput v1, p2, Ljg2;->b:F

    .line 41
    .line 42
    iget v1, p2, Ljg2;->d:F

    .line 43
    .line 44
    sub-float/2addr v1, v0

    .line 45
    iput v1, p2, Ljg2;->d:F

    .line 46
    .line 47
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    check-cast v0, Lci1;

    .line 52
    .line 53
    invoke-virtual {v0}, Lci1;->a()[F

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-boolean v0, v0, Lci1;->F:Z

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iput v4, p2, Ljg2;->a:F

    .line 65
    .line 66
    iput v4, p2, Ljg2;->b:F

    .line 67
    .line 68
    iput v4, p2, Ljg2;->c:F

    .line 69
    .line 70
    iput v4, p2, Ljg2;->d:F

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v1, p2}, Lxa2;->c([FLjg2;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lmm2;->J:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    iget-wide v0, p0, Ldv2;->p:J

    .line 83
    .line 84
    shr-long p0, v0, p1

    .line 85
    .line 86
    long-to-int p0, p0

    .line 87
    int-to-float p0, p0

    .line 88
    and-long/2addr v0, v2

    .line 89
    long-to-int p1, v0

    .line 90
    int-to-float p1, p1

    .line 91
    invoke-virtual {p2, v4, v4, p0, p1}, Ljg2;->a(FFFF)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    return-void
.end method

.method public final E0(Lmm2;J)J
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    iget-object v0, p0, Lmm2;->H:Lmm2;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lmm2;->E0(Lmm2;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lmm2;->L0(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lmm2;->L0(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    return-wide p0
.end method

.method public final F(Lgy1;J)J
    .locals 3

    .line 1
    instance-of v0, p1, Ln82;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ln82;

    .line 6
    .line 7
    iget-object v0, p1, Ln82;->n:Lm82;

    .line 8
    .line 9
    iget-object v0, v0, Lm82;->F:Lmm2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lmm2;->X0()V

    .line 12
    .line 13
    .line 14
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    xor-long/2addr p2, v0

    .line 20
    invoke-virtual {p1, p0, p2, p3}, Ln82;->F(Lgy1;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    xor-long/2addr p0, v0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Ln82;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Ln82;->n:Lm82;

    .line 36
    .line 37
    iget-object v0, v0, Lm82;->F:Lmm2;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Lmm2;

    .line 46
    .line 47
    :cond_3
    invoke-virtual {v0}, Lmm2;->X0()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lmm2;->K0(Lmm2;)Lmm2;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    if-eq v0, p1, :cond_6

    .line 55
    .line 56
    iget-object v1, v0, Lmm2;->c0:Lrr2;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    check-cast v1, Lci1;

    .line 61
    .line 62
    invoke-virtual {v1}, Lci1;->b()[F

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-boolean v1, v1, Lci1;->F:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {v2, p2, p3}, Lxa2;->b([FJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide p2

    .line 75
    :cond_5
    :goto_2
    iget-wide v1, v0, Lmm2;->Q:J

    .line 76
    .line 77
    invoke-static {p2, p3, v1, v2}, Lca;->C(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide p2

    .line 81
    iget-object v0, v0, Lmm2;->H:Lmm2;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lmm2;->E0(Lmm2;J)J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    return-wide p0
.end method

.method public final F0(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p1, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    sub-float/2addr v1, v2

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p1, v2

    .line 22
    long-to-int p1, p1

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    int-to-float p0, p0

    .line 32
    sub-float/2addr p1, p0

    .line 33
    const/high16 p0, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v1, p0

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    div-float/2addr p1, p0

    .line 42
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long p1, p1

    .line 51
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    int-to-long v4, p0

    .line 56
    shl-long p0, p1, v0

    .line 57
    .line 58
    and-long v0, v4, v2

    .line 59
    .line 60
    or-long/2addr p0, v0

    .line 61
    return-wide p0
.end method

.method public final G0(JJ)F
    .locals 8

    .line 1
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    shr-long v2, p3, v1

    .line 9
    .line 10
    long-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    cmpl-float v0, v0, v2

    .line 16
    .line 17
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    const-wide v3, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    and-long v5, p3, v3

    .line 32
    .line 33
    long-to-int v5, v5

    .line 34
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    cmpl-float v0, v0, v5

    .line 39
    .line 40
    if-ltz v0, :cond_0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    invoke-virtual {p0, p3, p4}, Lmm2;->F0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    shr-long v5, p3, v1

    .line 48
    .line 49
    long-to-int v0, v5

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    and-long/2addr p3, v3

    .line 55
    long-to-int p3, p3

    .line 56
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    shr-long v5, p1, v1

    .line 61
    .line 62
    long-to-int p4, v5

    .line 63
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    const/4 v5, 0x0

    .line 68
    cmpg-float v6, p4, v5

    .line 69
    .line 70
    if-gez v6, :cond_1

    .line 71
    .line 72
    neg-float p4, p4

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    int-to-float v6, v6

    .line 79
    sub-float/2addr p4, v6

    .line 80
    :goto_0
    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    and-long/2addr p1, v3

    .line 85
    long-to-int p1, p1

    .line 86
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    cmpg-float p2, p1, v5

    .line 91
    .line 92
    if-gez p2, :cond_2

    .line 93
    .line 94
    neg-float p0, p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    int-to-float p0, p0

    .line 101
    sub-float p0, p1, p0

    .line 102
    .line 103
    :goto_1
    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    int-to-long p1, p1

    .line 112
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    int-to-long v6, p0

    .line 117
    shl-long p0, p1, v1

    .line 118
    .line 119
    and-long/2addr v6, v3

    .line 120
    or-long/2addr p0, v6

    .line 121
    cmpl-float p2, v0, v5

    .line 122
    .line 123
    if-gtz p2, :cond_3

    .line 124
    .line 125
    cmpl-float p2, p3, v5

    .line 126
    .line 127
    if-lez p2, :cond_4

    .line 128
    .line 129
    :cond_3
    shr-long v5, p0, v1

    .line 130
    .line 131
    long-to-int p2, v5

    .line 132
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    cmpg-float p4, p4, v0

    .line 137
    .line 138
    if-gtz p4, :cond_4

    .line 139
    .line 140
    and-long/2addr p0, v3

    .line 141
    long-to-int p0, p0

    .line 142
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    cmpg-float p1, p1, p3

    .line 147
    .line 148
    if-gtz p1, :cond_4

    .line 149
    .line 150
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    mul-float/2addr p1, p1

    .line 159
    mul-float/2addr p0, p0

    .line 160
    add-float/2addr p0, p1

    .line 161
    return p0

    .line 162
    :cond_4
    return v2
.end method

.method public final H(Lgy1;Z)Ll33;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Lgy1;->B()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "LayoutCoordinates "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " is not attached!"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    instance-of v0, p1, Ln82;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    move-object v0, p1

    .line 47
    check-cast v0, Ln82;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, v0, Ln82;->n:Lm82;

    .line 54
    .line 55
    iget-object v0, v0, Lm82;->F:Lmm2;

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Lmm2;

    .line 61
    .line 62
    :cond_4
    invoke-virtual {v0}, Lmm2;->X0()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lmm2;->K0(Lmm2;)Lmm2;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lmm2;->S:Ljg2;

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    new-instance v2, Ljg2;

    .line 74
    .line 75
    invoke-direct {v2}, Ljg2;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lmm2;->S:Ljg2;

    .line 79
    .line 80
    :cond_5
    const/4 v3, 0x0

    .line 81
    iput v3, v2, Ljg2;->a:F

    .line 82
    .line 83
    iput v3, v2, Ljg2;->b:F

    .line 84
    .line 85
    invoke-interface {p1}, Lgy1;->I()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    const/16 v5, 0x20

    .line 90
    .line 91
    shr-long/2addr v3, v5

    .line 92
    long-to-int v3, v3

    .line 93
    int-to-float v3, v3

    .line 94
    iput v3, v2, Ljg2;->c:F

    .line 95
    .line 96
    invoke-interface {p1}, Lgy1;->I()J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    const-wide v5, 0xffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    and-long/2addr v3, v5

    .line 106
    long-to-int p1, v3

    .line 107
    int-to-float p1, p1

    .line 108
    iput p1, v2, Ljg2;->d:F

    .line 109
    .line 110
    :goto_1
    if-eq v0, v1, :cond_7

    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    invoke-virtual {v0, v2, p2, p1}, Lmm2;->f1(Ljg2;ZZ)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljg2;->b()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    sget-object p0, Ll33;->e:Ll33;

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_6
    iget-object v0, v0, Lmm2;->H:Lmm2;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p0, v1, v2, p2}, Lmm2;->D0(Lmm2;Ljg2;Z)V

    .line 132
    .line 133
    .line 134
    new-instance p0, Ll33;

    .line 135
    .line 136
    iget p1, v2, Ljg2;->a:F

    .line 137
    .line 138
    iget p2, v2, Ljg2;->b:F

    .line 139
    .line 140
    iget v0, v2, Ljg2;->c:F

    .line 141
    .line 142
    iget v1, v2, Ljg2;->d:F

    .line 143
    .line 144
    invoke-direct {p0, p1, p2, v0, v1}, Ll33;-><init>(FFFF)V

    .line 145
    .line 146
    .line 147
    return-object p0
.end method

.method public final H0(Lv20;Lzh1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Lci1;

    .line 6
    .line 7
    iget-object p0, v0, Lci1;->z:Lx20;

    .line 8
    .line 9
    invoke-virtual {v0}, Lci1;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lci1;->n:Lzh1;

    .line 13
    .line 14
    iget-object v1, v1, Lzh1;->a:Lbi1;

    .line 15
    .line 16
    invoke-interface {v1}, Lbi1;->J()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v1, v1, v2

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    iput-boolean v1, v0, Lci1;->G:Z

    .line 29
    .line 30
    iget-object v1, p0, Lx20;->o:Leh;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Leh;->H(Lv20;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, v1, Leh;->p:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object p1, v0, Lci1;->n:Lzh1;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lzf5;->B(Lkx0;Lzh1;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    shr-long v2, v0, v2

    .line 48
    .line 49
    long-to-int v2, v2

    .line 50
    int-to-float v2, v2

    .line 51
    const-wide v3, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v0, v3

    .line 57
    long-to-int v0, v0

    .line 58
    int-to-float v0, v0

    .line 59
    invoke-interface {p1, v2, v0}, Lv20;->f(FF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Lmm2;->I0(Lv20;Lzh1;)V

    .line 63
    .line 64
    .line 65
    neg-float p0, v2

    .line 66
    neg-float p2, v0

    .line 67
    invoke-interface {p1, p0, p2}, Lv20;->f(FF)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final I()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ldv2;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final I0(Lv20;Lzh1;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lmm2;->P0(I)Lmd2;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lmm2;->d1(Lv20;Lzh1;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lmm2;->F:Lxy1;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lq9;

    .line 22
    .line 23
    invoke-virtual {v2}, Lq9;->getSharedDrawScope()Lzy1;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-wide v4, p0, Ldv2;->p:J

    .line 28
    .line 29
    invoke-static {v4, v5}, Lse0;->H(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    move-object v10, v2

    .line 38
    :goto_0
    if-eqz v1, :cond_8

    .line 39
    .line 40
    instance-of v4, v1, Ljx0;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    move-object v8, v1

    .line 45
    check-cast v8, Ljx0;

    .line 46
    .line 47
    move-object v7, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object v9, p2

    .line 50
    invoke-virtual/range {v3 .. v9}, Lzy1;->c(Lv20;JLmm2;Ljx0;Lzh1;)V

    .line 51
    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_1
    move-object v7, p0

    .line 55
    move-object v4, p1

    .line 56
    move-object v9, p2

    .line 57
    iget p0, v1, Lmd2;->p:I

    .line 58
    .line 59
    and-int/2addr p0, v0

    .line 60
    if-eqz p0, :cond_7

    .line 61
    .line 62
    instance-of p0, v1, Lkr0;

    .line 63
    .line 64
    if-eqz p0, :cond_7

    .line 65
    .line 66
    move-object p0, v1

    .line 67
    check-cast p0, Lkr0;

    .line 68
    .line 69
    iget-object p0, p0, Lkr0;->C:Lmd2;

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :goto_1
    const/4 p2, 0x1

    .line 73
    if-eqz p0, :cond_6

    .line 74
    .line 75
    iget v8, p0, Lmd2;->p:I

    .line 76
    .line 77
    and-int/2addr v8, v0

    .line 78
    if-eqz v8, :cond_5

    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    if-ne p1, p2, :cond_2

    .line 83
    .line 84
    move-object v1, p0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    if-nez v10, :cond_3

    .line 87
    .line 88
    new-instance v10, Lug2;

    .line 89
    .line 90
    const/16 p2, 0x10

    .line 91
    .line 92
    new-array p2, p2, [Lmd2;

    .line 93
    .line 94
    invoke-direct {v10, p2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v10, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object v1, v2

    .line 103
    :cond_4
    invoke-virtual {v10, p0}, Lug2;->c(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_2
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    if-ne p1, p2, :cond_7

    .line 110
    .line 111
    :goto_3
    move-object p1, v4

    .line 112
    move-object p0, v7

    .line 113
    move-object p2, v9

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    :goto_4
    invoke-static {v10}, Lw80;->g(Lug2;)Lmd2;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto :goto_3

    .line 120
    :cond_8
    return-void
.end method

.method public final J(J)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lmm2;->X0()V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-eqz p0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 20
    .line 21
    iget-object v1, v0, Lxy1;->S:Lbo;

    .line 22
    .line 23
    iget-object v1, v1, Lbo;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lmm2;

    .line 26
    .line 27
    if-ne p0, v1, :cond_1

    .line 28
    .line 29
    iget-boolean v1, v0, Lxy1;->p:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lq9;

    .line 38
    .line 39
    invoke-virtual {v1}, Lq9;->getRectManager()Ln33;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Ln33;->b(Lxy1;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const-wide v2, 0x7fffffff7fffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2, v3}, Ljs1;->a(JJ)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-static {p1, p2, v0, v1}, Lca;->C(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    return-wide p0

    .line 63
    :cond_1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    check-cast v0, Lci1;

    .line 68
    .line 69
    invoke-virtual {v0}, Lci1;->b()[F

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-boolean v0, v0, Lci1;->F:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v1, p1, p2}, Lxa2;->b([FJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide p1

    .line 82
    :cond_3
    :goto_1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 83
    .line 84
    invoke-static {p1, p2, v0, v1}, Lca;->C(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    return-wide p1
.end method

.method public abstract J0()V
.end method

.method public final K0(Lmm2;)Lmm2;
    .locals 5

    .line 1
    iget-object v0, p1, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object v1, p0, Lmm2;->F:Lxy1;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lmm2;->O0()Lmd2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lmd2;->n:Lmd2;

    .line 16
    .line 17
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, "visitLocalAncestors called on an unattached node"

    .line 22
    .line 23
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, v1, Lmd2;->n:Lmd2;

    .line 27
    .line 28
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 29
    .line 30
    :goto_0
    if-eqz v1, :cond_7

    .line 31
    .line 32
    iget v2, v1, Lmd2;->p:I

    .line 33
    .line 34
    and-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    if-ne v1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    iget v2, v0, Lxy1;->C:I

    .line 45
    .line 46
    iget v3, v1, Lxy1;->C:I

    .line 47
    .line 48
    if-le v2, v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v2, v1

    .line 59
    :goto_2
    iget v3, v2, Lxy1;->C:I

    .line 60
    .line 61
    iget v4, v0, Lxy1;->C:I

    .line 62
    .line 63
    if-le v3, v4, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_3
    if-eq v0, v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const-string p0, "layouts are not part of the same hierarchy"

    .line 89
    .line 90
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0

    .line 95
    :cond_6
    if-ne v2, v1, :cond_8

    .line 96
    .line 97
    :cond_7
    return-object p0

    .line 98
    :cond_8
    iget-object p0, p1, Lmm2;->F:Lxy1;

    .line 99
    .line 100
    if-ne v0, p0, :cond_9

    .line 101
    .line 102
    :goto_4
    return-object p1

    .line 103
    :cond_9
    iget-object p0, v0, Lxy1;->S:Lbo;

    .line 104
    .line 105
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lgr1;

    .line 108
    .line 109
    return-object p0
.end method

.method public final L0(J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    shr-long v3, p1, v2

    .line 6
    .line 7
    long-to-int v3, v3

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    shr-long v4, v0, v2

    .line 13
    .line 14
    long-to-int v4, v4

    .line 15
    int-to-float v4, v4

    .line 16
    sub-float/2addr v3, v4

    .line 17
    const-wide v4, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p1, v4

    .line 23
    long-to-int p1, p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-long/2addr v0, v4

    .line 29
    long-to-int p2, v0

    .line 30
    int-to-float p2, p2

    .line 31
    sub-float/2addr p1, p2

    .line 32
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-long v0, p2

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long p1, p1

    .line 42
    shl-long/2addr v0, v2

    .line 43
    and-long/2addr p1, v4

    .line 44
    or-long/2addr p1, v0

    .line 45
    iget-object p0, p0, Lmm2;->c0:Lrr2;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    check-cast p0, Lci1;

    .line 50
    .line 51
    invoke-virtual {p0}, Lci1;->a()[F

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    return-wide p0

    .line 63
    :cond_0
    iget-boolean p0, p0, Lci1;->F:Z

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0, p1, p2}, Lxa2;->b([FJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    return-wide p0

    .line 73
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public abstract M0()Lm82;
.end method

.method public final N0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lmm2;->L:Las0;

    .line 2
    .line 3
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 4
    .line 5
    iget-object p0, p0, Lxy1;->N:Lnb4;

    .line 6
    .line 7
    invoke-interface {p0}, Lnb4;->c()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-interface {v0, v1, v2}, Las0;->X(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public abstract O0()Lmd2;
.end method

.method public final P0(I)Lmd2;
    .locals 2

    .line 1
    invoke-static {p1}, Lnm2;->g(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v1, Lmd2;->r:Lmd2;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lmm2;->Q0(Z)Lmd2;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_1
    if-eqz p0, :cond_3

    .line 22
    .line 23
    iget v0, p0, Lmd2;->q:I

    .line 24
    .line 25
    and-int/2addr v0, p1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget v0, p0, Lmd2;->p:I

    .line 29
    .line 30
    and-int/2addr v0, p1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    if-eq p0, v1, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final Q0(Z)Lmd2;
    .locals 2

    .line 1
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object v0, v0, Lxy1;->S:Lbo;

    .line 4
    .line 5
    iget-object v1, v0, Lbo;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lmm2;

    .line 8
    .line 9
    if-ne v1, p0, :cond_0

    .line 10
    .line 11
    iget-object p0, v0, Lbo;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lmd2;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final R0(Lmd2;Lkm2;JLzj1;IZ)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object v4, p5

    .line 7
    move v5, p6

    .line 8
    move v6, p7

    .line 9
    invoke-virtual/range {v0 .. v6}, Lmm2;->U0(Lkm2;JLzj1;IZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p2, p1}, Lkm2;->h(Lmd2;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Lkm2;->d()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1, v0}, Lk75;->d(Ljr0;I)Lmd2;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual/range {p0 .. p7}, Lmm2;->R0(Lmd2;Lkm2;JLzj1;IZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v0, p5, Lzj1;->p:I

    .line 32
    .line 33
    iget-object v1, p5, Lzj1;->n:Ldg2;

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x1

    .line 36
    .line 37
    iget v3, v1, Ldg2;->b:I

    .line 38
    .line 39
    invoke-virtual {p5, v2, v3}, Lzj1;->d(II)V

    .line 40
    .line 41
    .line 42
    iget v2, p5, Lzj1;->p:I

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    iput v2, p5, Lzj1;->p:I

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ldg2;->a(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p5, Lzj1;->o:Lxf2;

    .line 52
    .line 53
    const/high16 v2, -0x40800000    # -1.0f

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v2, p7, v3}, Lse0;->b(FZZ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3}, Lxf2;->a(J)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Lkm2;->d()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {p1, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual/range {p0 .. p7}, Lmm2;->R0(Lmd2;Lkm2;JLzj1;IZ)V

    .line 72
    .line 73
    .line 74
    iput v0, p5, Lzj1;->p:I

    .line 75
    .line 76
    return-void
.end method

.method public final S0(Lmd2;Lkm2;JLzj1;IZF)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object/from16 v4, p5

    .line 7
    .line 8
    move/from16 v5, p6

    .line 9
    .line 10
    move/from16 v6, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lmm2;->U0(Lkm2;JLzj1;IZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p2, p1}, Lkm2;->h(Lmd2;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Lkm2;->d()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p1, v0}, Lk75;->d(Ljr0;I)Lmd2;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v0, p0

    .line 31
    move-object v2, p2

    .line 32
    move-wide v3, p3

    .line 33
    move-object/from16 v5, p5

    .line 34
    .line 35
    move/from16 v6, p6

    .line 36
    .line 37
    move/from16 v7, p7

    .line 38
    .line 39
    move/from16 v8, p8

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v8}, Lmm2;->S0(Lmd2;Lkm2;JLzj1;IZF)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    move-object/from16 v5, p5

    .line 46
    .line 47
    iget v10, v5, Lzj1;->p:I

    .line 48
    .line 49
    iget-object v0, v5, Lzj1;->n:Ldg2;

    .line 50
    .line 51
    add-int/lit8 v1, v10, 0x1

    .line 52
    .line 53
    iget v2, v0, Ldg2;->b:I

    .line 54
    .line 55
    invoke-virtual {v5, v1, v2}, Lzj1;->d(II)V

    .line 56
    .line 57
    .line 58
    iget v1, v5, Lzj1;->p:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, v5, Lzj1;->p:I

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ldg2;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v5, Lzj1;->o:Lxf2;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    move/from16 v7, p7

    .line 71
    .line 72
    move/from16 v8, p8

    .line 73
    .line 74
    invoke-static {v8, v7, v1}, Lse0;->b(FZZ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-virtual {v0, v1, v2}, Lxf2;->a(J)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Lkm2;->d()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {p1, v0}, Lk75;->d(Ljr0;I)Lmd2;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v9, 0x1

    .line 90
    move-object v0, p0

    .line 91
    move-object v2, p2

    .line 92
    move-wide v3, p3

    .line 93
    move/from16 v6, p6

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 96
    .line 97
    .line 98
    iput v10, v5, Lzj1;->p:I

    .line 99
    .line 100
    return-void
.end method

.method public final T0(Lkm2;JLzj1;IZ)V
    .locals 14

    .line 1
    move-wide/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move/from16 v6, p5

    .line 6
    .line 7
    invoke-interface {p1}, Lkm2;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lmm2;->P0(I)Lmd2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v3, v4}, Lmm2;->m1(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 21
    .line 22
    const v10, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-ne v6, v11, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lmm2;->N0()J

    .line 31
    .line 32
    .line 33
    move-result-wide v12

    .line 34
    invoke-virtual {p0, v3, v4, v12, v13}, Lmm2;->G0(JJ)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    and-int/2addr v2, v10

    .line 43
    if-ge v2, v9, :cond_1

    .line 44
    .line 45
    iget v2, v5, Lzj1;->p:I

    .line 46
    .line 47
    iget-object v7, v5, Lzj1;->n:Ldg2;

    .line 48
    .line 49
    iget v7, v7, Ldg2;->b:I

    .line 50
    .line 51
    sub-int/2addr v7, v11

    .line 52
    if-ne v2, v7, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0, v8, v8}, Lse0;->b(FZZ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-virtual {v5}, Lzj1;->a()J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    invoke-static {v9, v10, v7, v8}, Ln44;->e0(JJ)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lez v2, :cond_1

    .line 68
    .line 69
    :goto_0
    const/4 v7, 0x0

    .line 70
    move-object v2, p1

    .line 71
    move v8, v0

    .line 72
    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v8}, Lmm2;->S0(Lmd2;Lkm2;JLzj1;IZF)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :cond_2
    if-nez v1, :cond_3

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p6}, Lmm2;->U0(Lkm2;JLzj1;IZ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    const/16 v0, 0x20

    .line 84
    .line 85
    shr-long v2, p2, v0

    .line 86
    .line 87
    long-to-int v0, v2

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const-wide v2, 0xffffffffL

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    and-long v2, p2, v2

    .line 98
    .line 99
    long-to-int v2, v2

    .line 100
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x0

    .line 105
    cmpl-float v4, v0, v3

    .line 106
    .line 107
    if-ltz v4, :cond_4

    .line 108
    .line 109
    cmpl-float v3, v2, v3

    .line 110
    .line 111
    if-ltz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    int-to-float v3, v3

    .line 118
    cmpg-float v0, v0, v3

    .line 119
    .line 120
    if-gez v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    int-to-float v0, v0

    .line 127
    cmpg-float v0, v2, v0

    .line 128
    .line 129
    if-gez v0, :cond_4

    .line 130
    .line 131
    move-object v0, p0

    .line 132
    move-object v2, p1

    .line 133
    move-wide/from16 v3, p2

    .line 134
    .line 135
    move-object/from16 v5, p4

    .line 136
    .line 137
    move/from16 v6, p5

    .line 138
    .line 139
    move/from16 v7, p6

    .line 140
    .line 141
    invoke-virtual/range {v0 .. v7}, Lmm2;->R0(Lmd2;Lkm2;JLzj1;IZ)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    move-wide/from16 v3, p2

    .line 146
    .line 147
    move-object/from16 v5, p4

    .line 148
    .line 149
    move/from16 v6, p5

    .line 150
    .line 151
    if-ne v6, v11, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0}, Lmm2;->N0()J

    .line 154
    .line 155
    .line 156
    move-result-wide v12

    .line 157
    invoke-virtual {p0, v3, v4, v12, v13}, Lmm2;->G0(JJ)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 163
    .line 164
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    and-int/2addr v7, v10

    .line 169
    if-ge v7, v9, :cond_7

    .line 170
    .line 171
    iget v7, v5, Lzj1;->p:I

    .line 172
    .line 173
    iget-object v9, v5, Lzj1;->n:Ldg2;

    .line 174
    .line 175
    iget v9, v9, Ldg2;->b:I

    .line 176
    .line 177
    sub-int/2addr v9, v11

    .line 178
    if-ne v7, v9, :cond_6

    .line 179
    .line 180
    move/from16 v7, p6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move/from16 v7, p6

    .line 184
    .line 185
    invoke-static {v2, v7, v8}, Lse0;->b(FZZ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v9

    .line 189
    invoke-virtual {v5}, Lzj1;->a()J

    .line 190
    .line 191
    .line 192
    move-result-wide v12

    .line 193
    invoke-static {v12, v13, v9, v10}, Ln44;->e0(JJ)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-lez v9, :cond_8

    .line 198
    .line 199
    :goto_2
    move v9, v11

    .line 200
    :goto_3
    move-object v0, p0

    .line 201
    move v8, v2

    .line 202
    move-object v2, p1

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    move/from16 v7, p6

    .line 205
    .line 206
    :cond_8
    move v9, v8

    .line 207
    goto :goto_3

    .line 208
    :goto_4
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public U0(Lkm2;JLzj1;IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->G:Lmm2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lmm2;->L0(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    invoke-virtual/range {p0 .. p6}, Lmm2;->T0(Lkm2;JLzj1;IZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lci1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lci1;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lmm2;->V0()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final W0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lmm2;->N:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lmm2;->W0()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final X0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lbz1;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Y0()V
    .locals 13

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Lnm2;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lmm2;->Q0(Z)Lmd2;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_c

    .line 12
    .line 13
    iget-object v2, v2, Lmd2;->n:Lmd2;

    .line 14
    .line 15
    iget v2, v2, Lmd2;->q:I

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-eqz v2, :cond_c

    .line 19
    .line 20
    invoke-static {}, Lk75;->x()Lpo3;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lpo3;->e()Lpe1;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v3

    .line 33
    :goto_0
    invoke-static {v2}, Lk75;->E(Lpo3;)Lpo3;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v6, v6, Lmd2;->r:Lmd2;

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lmm2;->Q0(Z)Lmd2;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_2
    if-eqz v1, :cond_b

    .line 62
    .line 63
    iget v7, v1, Lmd2;->q:I

    .line 64
    .line 65
    and-int/2addr v7, v0

    .line 66
    if-eqz v7, :cond_b

    .line 67
    .line 68
    iget v7, v1, Lmd2;->p:I

    .line 69
    .line 70
    and-int/2addr v7, v0

    .line 71
    if-eqz v7, :cond_a

    .line 72
    .line 73
    move-object v7, v1

    .line 74
    move-object v8, v3

    .line 75
    :goto_3
    if-eqz v7, :cond_a

    .line 76
    .line 77
    instance-of v9, v7, Ljb2;

    .line 78
    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    check-cast v7, Ljb2;

    .line 82
    .line 83
    iget-wide v9, p0, Ldv2;->p:J

    .line 84
    .line 85
    invoke-interface {v7, v9, v10}, Ljb2;->c(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_3
    iget v9, v7, Lmd2;->p:I

    .line 90
    .line 91
    and-int/2addr v9, v0

    .line 92
    if-eqz v9, :cond_9

    .line 93
    .line 94
    instance-of v9, v7, Lkr0;

    .line 95
    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    move-object v9, v7

    .line 99
    check-cast v9, Lkr0;

    .line 100
    .line 101
    iget-object v9, v9, Lkr0;->C:Lmd2;

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    :goto_4
    const/4 v11, 0x1

    .line 105
    if-eqz v9, :cond_8

    .line 106
    .line 107
    iget v12, v9, Lmd2;->p:I

    .line 108
    .line 109
    and-int/2addr v12, v0

    .line 110
    if-eqz v12, :cond_7

    .line 111
    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 113
    .line 114
    if-ne v10, v11, :cond_4

    .line 115
    .line 116
    move-object v7, v9

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    if-nez v8, :cond_5

    .line 119
    .line 120
    new-instance v8, Lug2;

    .line 121
    .line 122
    const/16 v11, 0x10

    .line 123
    .line 124
    new-array v11, v11, [Lmd2;

    .line 125
    .line 126
    invoke-direct {v8, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-virtual {v8, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v7, v3

    .line 135
    :cond_6
    invoke-virtual {v8, v9}, Lug2;->c(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_5
    iget-object v9, v9, Lmd2;->s:Lmd2;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    if-ne v10, v11, :cond_9

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    :goto_6
    invoke-static {v8}, Lw80;->g(Lug2;)Lmd2;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    if-eq v1, v6, :cond_b

    .line 150
    .line 151
    iget-object v1, v1, Lmd2;->s:Lmd2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_b
    :goto_7
    invoke-static {v2, v5, v4}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_8
    invoke-static {v2, v5, v4}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_c
    return-void
.end method

.method public final Z0()V
    .locals 10

    .line 1
    const/high16 v0, 0x400000

    .line 2
    .line 3
    invoke-static {v0}, Lnm2;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lmm2;->Q0(Z)Lmd2;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_1
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget v3, v1, Lmd2;->q:I

    .line 27
    .line 28
    and-int/2addr v3, v0

    .line 29
    if-eqz v3, :cond_a

    .line 30
    .line 31
    iget v3, v1, Lmd2;->p:I

    .line 32
    .line 33
    and-int/2addr v3, v0

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v4, v1

    .line 38
    move-object v5, v3

    .line 39
    :goto_2
    if-eqz v4, :cond_9

    .line 40
    .line 41
    instance-of v6, v4, Ley1;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    check-cast v4, Ley1;

    .line 46
    .line 47
    invoke-interface {v4, p0}, Ley1;->m(Lgy1;)V

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_2
    iget v6, v4, Lmd2;->p:I

    .line 52
    .line 53
    and-int/2addr v6, v0

    .line 54
    if-eqz v6, :cond_8

    .line 55
    .line 56
    instance-of v6, v4, Lkr0;

    .line 57
    .line 58
    if-eqz v6, :cond_8

    .line 59
    .line 60
    move-object v6, v4

    .line 61
    check-cast v6, Lkr0;

    .line 62
    .line 63
    iget-object v6, v6, Lkr0;->C:Lmd2;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_3
    const/4 v8, 0x1

    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    iget v9, v6, Lmd2;->p:I

    .line 70
    .line 71
    and-int/2addr v9, v0

    .line 72
    if-eqz v9, :cond_6

    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    if-ne v7, v8, :cond_3

    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    if-nez v5, :cond_4

    .line 81
    .line 82
    new-instance v5, Lug2;

    .line 83
    .line 84
    const/16 v8, 0x10

    .line 85
    .line 86
    new-array v8, v8, [Lmd2;

    .line 87
    .line 88
    invoke-direct {v5, v8}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    if-eqz v4, :cond_5

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v4, v3

    .line 97
    :cond_5
    invoke-virtual {v5, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_4
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    if-ne v7, v8, :cond_8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    :goto_5
    invoke-static {v5}, Lw80;->g(Lug2;)Lmd2;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_2

    .line 111
    :cond_9
    if-eq v1, v2, :cond_a

    .line 112
    .line 113
    iget-object v1, v1, Lmd2;->s:Lmd2;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    :goto_6
    return-void
.end method

.method public final a(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmm2;->J(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 19
    .line 20
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lq9;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lq9;->p(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method public final a1()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmm2;->I:Z

    .line 3
    .line 4
    iget-object v0, p0, Lmm2;->a0:Llm2;

    .line 5
    .line 6
    invoke-virtual {v0}, Llm2;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lmm2;->g1()V

    .line 10
    .line 11
    .line 12
    iget-wide v0, p0, Lmm2;->Q:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljs1;->a(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lxy1;->N(Lmm2;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 4
    .line 5
    invoke-interface {p0}, Las0;->b()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b1()V
    .locals 9

    .line 1
    const/high16 v0, 0x100000

    .line 2
    .line 3
    invoke-static {v0}, Lnm2;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lmm2;->Q0(Z)Lmd2;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_a

    .line 12
    .line 13
    iget-object v2, v2, Lmd2;->n:Lmd2;

    .line 14
    .line 15
    iget v2, v2, Lmd2;->q:I

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-eqz v2, :cond_a

    .line 19
    .line 20
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lmm2;->Q0(Z)Lmd2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    if-eqz p0, :cond_a

    .line 38
    .line 39
    iget v1, p0, Lmd2;->q:I

    .line 40
    .line 41
    and-int/2addr v1, v0

    .line 42
    if-eqz v1, :cond_a

    .line 43
    .line 44
    iget v1, p0, Lmd2;->p:I

    .line 45
    .line 46
    and-int/2addr v1, v0

    .line 47
    if-eqz v1, :cond_9

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    move-object v3, p0

    .line 51
    move-object v4, v1

    .line 52
    :goto_2
    if-eqz v3, :cond_9

    .line 53
    .line 54
    instance-of v5, v3, Lka1;

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_2
    iget v5, v3, Lmd2;->p:I

    .line 60
    .line 61
    and-int/2addr v5, v0

    .line 62
    if-eqz v5, :cond_8

    .line 63
    .line 64
    instance-of v5, v3, Lkr0;

    .line 65
    .line 66
    if-eqz v5, :cond_8

    .line 67
    .line 68
    move-object v5, v3

    .line 69
    check-cast v5, Lkr0;

    .line 70
    .line 71
    iget-object v5, v5, Lkr0;->C:Lmd2;

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    :goto_3
    const/4 v7, 0x1

    .line 75
    if-eqz v5, :cond_7

    .line 76
    .line 77
    iget v8, v5, Lmd2;->p:I

    .line 78
    .line 79
    and-int/2addr v8, v0

    .line 80
    if-eqz v8, :cond_6

    .line 81
    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    if-ne v6, v7, :cond_3

    .line 85
    .line 86
    move-object v3, v5

    .line 87
    goto :goto_4

    .line 88
    :cond_3
    if-nez v4, :cond_4

    .line 89
    .line 90
    new-instance v4, Lug2;

    .line 91
    .line 92
    const/16 v7, 0x10

    .line 93
    .line 94
    new-array v7, v7, [Lmd2;

    .line 95
    .line 96
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object v3, v1

    .line 105
    :cond_5
    invoke-virtual {v4, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_4
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    if-ne v6, v7, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_8
    :goto_5
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_2

    .line 119
    :cond_9
    if-eq p0, v2, :cond_a

    .line 120
    .line 121
    iget-object p0, p0, Lmd2;->s:Lmd2;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_a
    :goto_6
    return-void
.end method

.method public final c1(Lmd2;Lkm2;JLzj1;IZFZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-wide/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Lmm2;->U0(Lkm2;JLzj1;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v2, p2

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lkm2;->h(Lmd2;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Lkm2;->d()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    move-wide/from16 v3, p3

    .line 40
    .line 41
    move-object/from16 v5, p5

    .line 42
    .line 43
    move/from16 v6, p6

    .line 44
    .line 45
    move/from16 v7, p7

    .line 46
    .line 47
    move/from16 v8, p8

    .line 48
    .line 49
    move/from16 v9, p9

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    move-object/from16 v5, p5

    .line 56
    .line 57
    move/from16 v6, p6

    .line 58
    .line 59
    move/from16 v7, p7

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    if-ne v6, v1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v2, 0x4

    .line 66
    if-ne v6, v2, :cond_12

    .line 67
    .line 68
    :goto_0
    const/4 v2, 0x0

    .line 69
    move-object v3, v0

    .line 70
    move-object v4, v2

    .line 71
    :goto_1
    if-eqz v3, :cond_12

    .line 72
    .line 73
    instance-of v8, v3, Lcw2;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v8, :cond_b

    .line 78
    .line 79
    check-cast v3, Lcw2;

    .line 80
    .line 81
    sget v2, Lon4;->c:I

    .line 82
    .line 83
    sget-wide v2, Lon4;->b:J

    .line 84
    .line 85
    const/16 v2, 0x20

    .line 86
    .line 87
    shr-long v2, p3, v2

    .line 88
    .line 89
    long-to-int v2, v2

    .line 90
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    move-object/from16 v4, p0

    .line 95
    .line 96
    iget-object v8, v4, Lmm2;->F:Lxy1;

    .line 97
    .line 98
    iget-object v11, v8, Lxy1;->M:Lhy1;

    .line 99
    .line 100
    const-wide/high16 v12, -0x8000000000000000L

    .line 101
    .line 102
    and-long v14, v12, v12

    .line 103
    .line 104
    const-wide/16 v16, 0x0

    .line 105
    .line 106
    cmp-long v14, v14, v16

    .line 107
    .line 108
    sget-object v15, Lhy1;->n:Lhy1;

    .line 109
    .line 110
    const/4 v1, 0x2

    .line 111
    if-eqz v14, :cond_4

    .line 112
    .line 113
    if-ne v11, v15, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-static {v1, v12, v13}, Lls3;->b(IJ)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    :goto_2
    invoke-static {v9, v12, v13}, Lls3;->b(IJ)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    :goto_3
    neg-int v11, v11

    .line 126
    int-to-float v11, v11

    .line 127
    cmpl-float v3, v3, v11

    .line 128
    .line 129
    if-ltz v3, :cond_12

    .line 130
    .line 131
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v4}, Ldv2;->a0()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget-object v8, v8, Lxy1;->M:Lhy1;

    .line 140
    .line 141
    if-eqz v14, :cond_6

    .line 142
    .line 143
    if-ne v8, v15, :cond_5

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    invoke-static {v9, v12, v13}, Lls3;->b(IJ)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    :goto_4
    invoke-static {v1, v12, v13}, Lls3;->b(IJ)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    :goto_5
    add-int/2addr v3, v1

    .line 156
    int-to-float v1, v3

    .line 157
    cmpg-float v1, v2, v1

    .line 158
    .line 159
    if-gez v1, :cond_12

    .line 160
    .line 161
    const-wide v1, 0xffffffffL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long v1, p3, v1

    .line 167
    .line 168
    long-to-int v1, v1

    .line 169
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v10, v12, v13}, Lls3;->b(IJ)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    neg-int v3, v3

    .line 178
    int-to-float v3, v3

    .line 179
    cmpl-float v2, v2, v3

    .line 180
    .line 181
    if-ltz v2, :cond_12

    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {v4}, Ldv2;->Y()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v8, 0x3

    .line 192
    invoke-static {v8, v12, v13}, Lls3;->b(IJ)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    add-int/2addr v3, v2

    .line 197
    int-to-float v2, v3

    .line 198
    cmpg-float v1, v1, v2

    .line 199
    .line 200
    if-gez v1, :cond_12

    .line 201
    .line 202
    iget-object v1, v5, Lzj1;->o:Lxf2;

    .line 203
    .line 204
    iget-object v2, v5, Lzj1;->n:Ldg2;

    .line 205
    .line 206
    iget v11, v5, Lzj1;->p:I

    .line 207
    .line 208
    iget v3, v2, Ldg2;->b:I

    .line 209
    .line 210
    add-int/lit8 v8, v3, -0x1

    .line 211
    .line 212
    const/4 v12, 0x0

    .line 213
    if-ne v11, v8, :cond_7

    .line 214
    .line 215
    add-int/lit8 v8, v11, 0x1

    .line 216
    .line 217
    invoke-virtual {v5, v8, v3}, Lzj1;->d(II)V

    .line 218
    .line 219
    .line 220
    iget v3, v5, Lzj1;->p:I

    .line 221
    .line 222
    add-int/2addr v3, v10

    .line 223
    iput v3, v5, Lzj1;->p:I

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v12, v7, v10}, Lse0;->b(FZZ)J

    .line 229
    .line 230
    .line 231
    move-result-wide v2

    .line 232
    invoke-virtual {v1, v2, v3}, Lxf2;->a(J)V

    .line 233
    .line 234
    .line 235
    invoke-interface/range {p2 .. p2}, Lkm2;->d()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    move-object/from16 v2, p2

    .line 244
    .line 245
    move/from16 v8, p8

    .line 246
    .line 247
    move/from16 v9, p9

    .line 248
    .line 249
    move-object v0, v4

    .line 250
    move-wide/from16 v3, p3

    .line 251
    .line 252
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 253
    .line 254
    .line 255
    iput v11, v5, Lzj1;->p:I

    .line 256
    .line 257
    return-void

    .line 258
    :cond_7
    invoke-virtual {v5}, Lzj1;->a()J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    iget v11, v5, Lzj1;->p:I

    .line 263
    .line 264
    invoke-static {v3, v4}, Ln44;->v0(J)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_9

    .line 269
    .line 270
    iget v3, v2, Ldg2;->b:I

    .line 271
    .line 272
    add-int/lit8 v13, v3, -0x1

    .line 273
    .line 274
    iput v13, v5, Lzj1;->p:I

    .line 275
    .line 276
    iget v4, v2, Ldg2;->b:I

    .line 277
    .line 278
    invoke-virtual {v5, v3, v4}, Lzj1;->d(II)V

    .line 279
    .line 280
    .line 281
    iget v3, v5, Lzj1;->p:I

    .line 282
    .line 283
    add-int/2addr v3, v10

    .line 284
    iput v3, v5, Lzj1;->p:I

    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v12, v7, v10}, Lse0;->b(FZZ)J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    invoke-virtual {v1, v2, v3}, Lxf2;->a(J)V

    .line 294
    .line 295
    .line 296
    invoke-interface/range {p2 .. p2}, Lkm2;->d()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    move-object/from16 v0, p0

    .line 305
    .line 306
    move-object/from16 v2, p2

    .line 307
    .line 308
    move-wide/from16 v3, p3

    .line 309
    .line 310
    move/from16 v6, p6

    .line 311
    .line 312
    move/from16 v8, p8

    .line 313
    .line 314
    move/from16 v9, p9

    .line 315
    .line 316
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 317
    .line 318
    .line 319
    iput v13, v5, Lzj1;->p:I

    .line 320
    .line 321
    invoke-virtual {v5}, Lzj1;->a()J

    .line 322
    .line 323
    .line 324
    move-result-wide v0

    .line 325
    invoke-static {v0, v1}, Ln44;->n0(J)F

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    cmpg-float v0, v0, v12

    .line 330
    .line 331
    if-gez v0, :cond_8

    .line 332
    .line 333
    add-int/lit8 v0, v11, 0x1

    .line 334
    .line 335
    iget v1, v5, Lzj1;->p:I

    .line 336
    .line 337
    add-int/2addr v1, v10

    .line 338
    invoke-virtual {v5, v0, v1}, Lzj1;->d(II)V

    .line 339
    .line 340
    .line 341
    :cond_8
    iput v11, v5, Lzj1;->p:I

    .line 342
    .line 343
    return-void

    .line 344
    :cond_9
    invoke-static {v3, v4}, Ln44;->n0(J)F

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    cmpl-float v3, v3, v12

    .line 349
    .line 350
    if-lez v3, :cond_a

    .line 351
    .line 352
    iget v11, v5, Lzj1;->p:I

    .line 353
    .line 354
    add-int/lit8 v3, v11, 0x1

    .line 355
    .line 356
    iget v4, v2, Ldg2;->b:I

    .line 357
    .line 358
    invoke-virtual {v5, v3, v4}, Lzj1;->d(II)V

    .line 359
    .line 360
    .line 361
    iget v3, v5, Lzj1;->p:I

    .line 362
    .line 363
    add-int/2addr v3, v10

    .line 364
    iput v3, v5, Lzj1;->p:I

    .line 365
    .line 366
    invoke-virtual {v2, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v12, v7, v10}, Lse0;->b(FZZ)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    invoke-virtual {v1, v2, v3}, Lxf2;->a(J)V

    .line 374
    .line 375
    .line 376
    invoke-interface/range {p2 .. p2}, Lkm2;->d()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object/from16 v0, p0

    .line 385
    .line 386
    move-object/from16 v2, p2

    .line 387
    .line 388
    move-wide/from16 v3, p3

    .line 389
    .line 390
    move/from16 v6, p6

    .line 391
    .line 392
    move/from16 v8, p8

    .line 393
    .line 394
    move/from16 v9, p9

    .line 395
    .line 396
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 397
    .line 398
    .line 399
    iput v11, v5, Lzj1;->p:I

    .line 400
    .line 401
    :cond_a
    return-void

    .line 402
    :cond_b
    move v8, v1

    .line 403
    iget v1, v3, Lmd2;->p:I

    .line 404
    .line 405
    const/16 v6, 0x10

    .line 406
    .line 407
    and-int/2addr v1, v6

    .line 408
    if-eqz v1, :cond_11

    .line 409
    .line 410
    instance-of v1, v3, Lkr0;

    .line 411
    .line 412
    if-eqz v1, :cond_11

    .line 413
    .line 414
    move-object v1, v3

    .line 415
    check-cast v1, Lkr0;

    .line 416
    .line 417
    iget-object v1, v1, Lkr0;->C:Lmd2;

    .line 418
    .line 419
    :goto_6
    if-eqz v1, :cond_10

    .line 420
    .line 421
    iget v7, v1, Lmd2;->p:I

    .line 422
    .line 423
    and-int/2addr v7, v6

    .line 424
    if-eqz v7, :cond_f

    .line 425
    .line 426
    add-int/lit8 v9, v9, 0x1

    .line 427
    .line 428
    if-ne v9, v10, :cond_c

    .line 429
    .line 430
    move-object v3, v1

    .line 431
    goto :goto_7

    .line 432
    :cond_c
    if-nez v4, :cond_d

    .line 433
    .line 434
    new-instance v4, Lug2;

    .line 435
    .line 436
    new-array v7, v6, [Lmd2;

    .line 437
    .line 438
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    :cond_d
    if-eqz v3, :cond_e

    .line 442
    .line 443
    invoke-virtual {v4, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    move-object v3, v2

    .line 447
    :cond_e
    invoke-virtual {v4, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_f
    :goto_7
    iget-object v1, v1, Lmd2;->s:Lmd2;

    .line 451
    .line 452
    goto :goto_6

    .line 453
    :cond_10
    if-ne v9, v10, :cond_11

    .line 454
    .line 455
    :goto_8
    move/from16 v6, p6

    .line 456
    .line 457
    move/from16 v7, p7

    .line 458
    .line 459
    move v1, v8

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :cond_11
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    goto :goto_8

    .line 467
    :cond_12
    if-eqz p9, :cond_13

    .line 468
    .line 469
    invoke-virtual/range {p0 .. p8}, Lmm2;->S0(Lmd2;Lkm2;JLzj1;IZF)V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :cond_13
    invoke-virtual/range {p0 .. p8}, Lmm2;->i1(Lmd2;Lkm2;JLzj1;IZF)V

    .line 474
    .line 475
    .line 476
    return-void
.end method

.method public abstract d1(Lv20;Lzh1;)V
.end method

.method public final e1(JFLpe1;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p4, v0}, Lmm2;->k1(Lpe1;Z)V

    .line 3
    .line 4
    .line 5
    iget-wide v0, p0, Lmm2;->Q:J

    .line 6
    .line 7
    invoke-static {v0, v1, p1, p2}, Ljs1;->a(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 12
    .line 13
    if-nez p4, :cond_2

    .line 14
    .line 15
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    const/high16 v1, -0x3f800000    # -4.0f

    .line 20
    .line 21
    check-cast p4, Lq9;

    .line 22
    .line 23
    invoke-virtual {p4, v1}, Lq9;->O(F)V

    .line 24
    .line 25
    .line 26
    iput-wide p1, p0, Lmm2;->Q:J

    .line 27
    .line 28
    iget-object p4, p0, Lmm2;->c0:Lrr2;

    .line 29
    .line 30
    if-eqz p4, :cond_0

    .line 31
    .line 32
    check-cast p4, Lci1;

    .line 33
    .line 34
    invoke-virtual {p4, p1, p2}, Lci1;->d(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lmm2;->H:Lmm2;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lmm2;->V0()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lxy1;->N(Lmm2;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lk82;->z0(Lmm2;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lxy1;->A:Lsr2;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    check-cast p1, Lq9;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lq9;->v(Lxy1;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput p3, p0, Lmm2;->R:F

    .line 61
    .line 62
    iget-object p1, v0, Lxy1;->S:Lbo;

    .line 63
    .line 64
    iget-object p1, p1, Lbo;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lmm2;

    .line 67
    .line 68
    if-ne p0, p1, :cond_3

    .line 69
    .line 70
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lq9;

    .line 75
    .line 76
    invoke-virtual {p1}, Lq9;->getRectManager()Ln33;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Ln33;->h(Lxy1;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-boolean p1, p0, Lk82;->B:Z

    .line 84
    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Lmm2;->v0()Leb2;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lk82;->m0(Leb2;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void
.end method

.method public final f1(Ljg2;ZZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    iget-boolean v4, p0, Lmm2;->J:Z

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v4, :cond_8

    .line 16
    .line 17
    if-eqz p3, :cond_6

    .line 18
    .line 19
    invoke-virtual {p0}, Lmm2;->N0()J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    iget v4, p1, Ljg2;->a:F

    .line 24
    .line 25
    iget v6, p1, Ljg2;->b:F

    .line 26
    .line 27
    iget v7, p1, Ljg2;->c:F

    .line 28
    .line 29
    cmpg-float v7, v7, v5

    .line 30
    .line 31
    if-ltz v7, :cond_5

    .line 32
    .line 33
    iget-wide v7, p0, Ldv2;->p:J

    .line 34
    .line 35
    shr-long v9, v7, v1

    .line 36
    .line 37
    long-to-int v9, v9

    .line 38
    int-to-float v9, v9

    .line 39
    cmpl-float v9, v4, v9

    .line 40
    .line 41
    if-gtz v9, :cond_5

    .line 42
    .line 43
    iget v9, p1, Ljg2;->d:F

    .line 44
    .line 45
    cmpg-float v9, v9, v5

    .line 46
    .line 47
    if-ltz v9, :cond_5

    .line 48
    .line 49
    and-long/2addr v7, v2

    .line 50
    long-to-int v7, v7

    .line 51
    int-to-float v7, v7

    .line 52
    cmpl-float v7, v6, v7

    .line 53
    .line 54
    if-lez v7, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    shr-long v7, p2, v1

    .line 58
    .line 59
    long-to-int v7, v7

    .line 60
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    and-long v8, p2, v2

    .line 65
    .line 66
    long-to-int v8, v8

    .line 67
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    iget v9, p1, Ljg2;->c:F

    .line 72
    .line 73
    iget v10, p1, Ljg2;->a:F

    .line 74
    .line 75
    sub-float/2addr v9, v10

    .line 76
    sub-float v9, v7, v9

    .line 77
    .line 78
    const/high16 v10, 0x40000000    # 2.0f

    .line 79
    .line 80
    div-float/2addr v9, v10

    .line 81
    cmpl-float v11, v9, v5

    .line 82
    .line 83
    if-lez v11, :cond_1

    .line 84
    .line 85
    sub-float/2addr v4, v9

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    neg-float v7, v7

    .line 88
    div-float/2addr v7, v10

    .line 89
    cmpg-float v9, v4, v7

    .line 90
    .line 91
    if-gez v9, :cond_2

    .line 92
    .line 93
    move v4, v7

    .line 94
    :cond_2
    :goto_0
    iget v7, p1, Ljg2;->d:F

    .line 95
    .line 96
    iget v9, p1, Ljg2;->b:F

    .line 97
    .line 98
    sub-float/2addr v7, v9

    .line 99
    sub-float v7, v8, v7

    .line 100
    .line 101
    div-float/2addr v7, v10

    .line 102
    cmpl-float v9, v7, v5

    .line 103
    .line 104
    if-lez v9, :cond_3

    .line 105
    .line 106
    sub-float/2addr v6, v7

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    neg-float v7, v8

    .line 109
    div-float/2addr v7, v10

    .line 110
    cmpg-float v8, v6, v7

    .line 111
    .line 112
    if-gez v8, :cond_4

    .line 113
    .line 114
    move v6, v7

    .line 115
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    int-to-long v7, v4

    .line 120
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    int-to-long v9, v4

    .line 125
    shl-long v6, v7, v1

    .line 126
    .line 127
    and-long v8, v9, v2

    .line 128
    .line 129
    or-long/2addr v6, v8

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    const-wide/16 v6, 0x0

    .line 132
    .line 133
    :goto_3
    shr-long v8, v6, v1

    .line 134
    .line 135
    long-to-int v4, v8

    .line 136
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    and-long/2addr v6, v2

    .line 141
    long-to-int v6, v6

    .line 142
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget-wide v7, p0, Ldv2;->p:J

    .line 147
    .line 148
    shr-long v9, v7, v1

    .line 149
    .line 150
    long-to-int v9, v9

    .line 151
    and-long/2addr v7, v2

    .line 152
    long-to-int v7, v7

    .line 153
    int-to-float v8, v9

    .line 154
    shr-long v9, p2, v1

    .line 155
    .line 156
    long-to-int v9, v9

    .line 157
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    add-float/2addr v10, v8

    .line 162
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    add-float/2addr v9, v4

    .line 167
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    int-to-float v7, v7

    .line 176
    and-long/2addr p2, v2

    .line 177
    long-to-int p2, p2

    .line 178
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    add-float/2addr p3, v7

    .line 183
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    add-float/2addr p2, v6

    .line 188
    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-virtual {p1, v4, v6, v8, p2}, Ljg2;->a(FFFF)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    if-eqz p2, :cond_7

    .line 201
    .line 202
    iget-wide p2, p0, Ldv2;->p:J

    .line 203
    .line 204
    shr-long v6, p2, v1

    .line 205
    .line 206
    long-to-int v4, v6

    .line 207
    int-to-float v4, v4

    .line 208
    and-long/2addr p2, v2

    .line 209
    long-to-int p2, p2

    .line 210
    int-to-float p2, p2

    .line 211
    invoke-virtual {p1, v5, v5, v4, p2}, Ljg2;->a(FFFF)V

    .line 212
    .line 213
    .line 214
    :cond_7
    :goto_4
    invoke-virtual {p1}, Ljg2;->b()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_8

    .line 219
    .line 220
    return-void

    .line 221
    :cond_8
    check-cast v0, Lci1;

    .line 222
    .line 223
    invoke-virtual {v0}, Lci1;->b()[F

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-boolean p3, v0, Lci1;->F:Z

    .line 228
    .line 229
    if-nez p3, :cond_a

    .line 230
    .line 231
    if-nez p2, :cond_9

    .line 232
    .line 233
    iput v5, p1, Ljg2;->a:F

    .line 234
    .line 235
    iput v5, p1, Ljg2;->b:F

    .line 236
    .line 237
    iput v5, p1, Ljg2;->c:F

    .line 238
    .line 239
    iput v5, p1, Ljg2;->d:F

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    invoke-static {p2, p1}, Lxa2;->c([FLjg2;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    :goto_5
    iget-wide p2, p0, Lmm2;->Q:J

    .line 246
    .line 247
    shr-long v0, p2, v1

    .line 248
    .line 249
    long-to-int p0, v0

    .line 250
    iget v0, p1, Ljg2;->a:F

    .line 251
    .line 252
    int-to-float p0, p0

    .line 253
    add-float/2addr v0, p0

    .line 254
    iput v0, p1, Ljg2;->a:F

    .line 255
    .line 256
    iget v0, p1, Ljg2;->c:F

    .line 257
    .line 258
    add-float/2addr v0, p0

    .line 259
    iput v0, p1, Ljg2;->c:F

    .line 260
    .line 261
    and-long/2addr p2, v2

    .line 262
    long-to-int p0, p2

    .line 263
    iget p2, p1, Ljg2;->b:F

    .line 264
    .line 265
    int-to-float p0, p0

    .line 266
    add-float/2addr p2, p0

    .line 267
    iput p2, p1, Ljg2;->b:F

    .line 268
    .line 269
    iget p2, p1, Ljg2;->d:F

    .line 270
    .line 271
    add-float/2addr p2, p0

    .line 272
    iput p2, p1, Ljg2;->d:F

    .line 273
    .line 274
    return-void
.end method

.method public final g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lmm2;->k1(Lpe1;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lxy1;->W(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object p0, p0, Lxy1;->M:Lhy1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final h(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmm2;->J(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 6
    .line 7
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lq9;

    .line 12
    .line 13
    invoke-virtual {p0}, Lq9;->D()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lq9;->k0:[F

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lxa2;->b([FJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0
.end method

.method public final h1(Leb2;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lmm2;->O:Leb2;

    .line 6
    .line 7
    if-eq v1, v2, :cond_19

    .line 8
    .line 9
    iput-object v1, v0, Lmm2;->O:Leb2;

    .line 10
    .line 11
    iget-object v3, v0, Lmm2;->F:Lxy1;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Leb2;->b()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-interface {v2}, Leb2;->b()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-ne v5, v6, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Leb2;->a()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-interface {v2}, Leb2;->a()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v5, v2, :cond_10

    .line 35
    .line 36
    :cond_0
    invoke-interface {v1}, Leb2;->b()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v1}, Leb2;->a()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, v0, Lmm2;->c0:Lrr2;

    .line 45
    .line 46
    const-wide v7, 0xffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    int-to-long v10, v2

    .line 56
    shl-long/2addr v10, v9

    .line 57
    int-to-long v12, v5

    .line 58
    and-long/2addr v12, v7

    .line 59
    or-long/2addr v10, v12

    .line 60
    check-cast v6, Lci1;

    .line 61
    .line 62
    invoke-virtual {v6, v10, v11}, Lci1;->e(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Lxy1;->I()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    iget-object v6, v0, Lmm2;->H:Lmm2;

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v6}, Lmm2;->V0()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    int-to-long v10, v2

    .line 80
    shl-long v9, v10, v9

    .line 81
    .line 82
    int-to-long v5, v5

    .line 83
    and-long/2addr v5, v7

    .line 84
    or-long/2addr v5, v9

    .line 85
    invoke-virtual {v0, v5, v6}, Ldv2;->g0(J)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Lmm2;->K:Lpe1;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lmm2;->l1(Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    const/4 v2, 0x4

    .line 96
    invoke-static {v2}, Lnm2;->g(I)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v0}, Lmm2;->O0()Lmd2;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-object v6, v6, Lmd2;->r:Lmd2;

    .line 108
    .line 109
    if-nez v6, :cond_5

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Lmm2;->Q0(Z)Lmd2;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    :goto_2
    if-eqz v5, :cond_e

    .line 118
    .line 119
    iget v7, v5, Lmd2;->q:I

    .line 120
    .line 121
    and-int/2addr v7, v2

    .line 122
    if-eqz v7, :cond_e

    .line 123
    .line 124
    iget v7, v5, Lmd2;->p:I

    .line 125
    .line 126
    and-int/2addr v7, v2

    .line 127
    if-eqz v7, :cond_d

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    move-object v8, v5

    .line 131
    move-object v9, v7

    .line 132
    :goto_3
    if-eqz v8, :cond_d

    .line 133
    .line 134
    instance-of v10, v8, Ljx0;

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    check-cast v8, Ljx0;

    .line 139
    .line 140
    invoke-interface {v8}, Ljx0;->m0()V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_6
    iget v10, v8, Lmd2;->p:I

    .line 145
    .line 146
    and-int/2addr v10, v2

    .line 147
    if-eqz v10, :cond_c

    .line 148
    .line 149
    instance-of v10, v8, Lkr0;

    .line 150
    .line 151
    if-eqz v10, :cond_c

    .line 152
    .line 153
    move-object v10, v8

    .line 154
    check-cast v10, Lkr0;

    .line 155
    .line 156
    iget-object v10, v10, Lkr0;->C:Lmd2;

    .line 157
    .line 158
    move v11, v4

    .line 159
    :goto_4
    const/4 v12, 0x1

    .line 160
    if-eqz v10, :cond_b

    .line 161
    .line 162
    iget v13, v10, Lmd2;->p:I

    .line 163
    .line 164
    and-int/2addr v13, v2

    .line 165
    if-eqz v13, :cond_a

    .line 166
    .line 167
    add-int/lit8 v11, v11, 0x1

    .line 168
    .line 169
    if-ne v11, v12, :cond_7

    .line 170
    .line 171
    move-object v8, v10

    .line 172
    goto :goto_5

    .line 173
    :cond_7
    if-nez v9, :cond_8

    .line 174
    .line 175
    new-instance v9, Lug2;

    .line 176
    .line 177
    const/16 v12, 0x10

    .line 178
    .line 179
    new-array v12, v12, [Lmd2;

    .line 180
    .line 181
    invoke-direct {v9, v12}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    if-eqz v8, :cond_9

    .line 185
    .line 186
    invoke-virtual {v9, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v8, v7

    .line 190
    :cond_9
    invoke-virtual {v9, v10}, Lug2;->c(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    :goto_5
    iget-object v10, v10, Lmd2;->s:Lmd2;

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    if-ne v11, v12, :cond_c

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_c
    :goto_6
    invoke-static {v9}, Lw80;->g(Lug2;)Lmd2;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    goto :goto_3

    .line 204
    :cond_d
    if-eq v5, v6, :cond_e

    .line 205
    .line 206
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_e
    :goto_7
    iget-object v2, v3, Lxy1;->A:Lsr2;

    .line 210
    .line 211
    if-eqz v2, :cond_f

    .line 212
    .line 213
    check-cast v2, Lq9;

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lq9;->v(Lxy1;)V

    .line 216
    .line 217
    .line 218
    :cond_f
    invoke-virtual {v3, v0}, Lxy1;->N(Lmm2;)V

    .line 219
    .line 220
    .line 221
    :cond_10
    iget-object v2, v0, Lmm2;->P:Lcg2;

    .line 222
    .line 223
    if-eqz v2, :cond_11

    .line 224
    .line 225
    iget v2, v2, Lcg2;->e:I

    .line 226
    .line 227
    if-eqz v2, :cond_11

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_11
    invoke-interface {v1}, Leb2;->c()Ljava/util/Map;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_19

    .line 239
    .line 240
    :goto_8
    iget-object v2, v0, Lmm2;->P:Lcg2;

    .line 241
    .line 242
    invoke-interface {v1}, Leb2;->c()Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    if-nez v2, :cond_12

    .line 247
    .line 248
    goto :goto_b

    .line 249
    :cond_12
    iget v6, v2, Lcg2;->e:I

    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eq v6, v7, :cond_13

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_13
    iget-object v6, v2, Lcg2;->b:[Ljava/lang/Object;

    .line 259
    .line 260
    iget-object v7, v2, Lcg2;->c:[I

    .line 261
    .line 262
    iget-object v2, v2, Lcg2;->a:[J

    .line 263
    .line 264
    array-length v8, v2

    .line 265
    add-int/lit8 v8, v8, -0x2

    .line 266
    .line 267
    if-ltz v8, :cond_19

    .line 268
    .line 269
    move v9, v4

    .line 270
    :goto_9
    aget-wide v10, v2, v9

    .line 271
    .line 272
    not-long v12, v10

    .line 273
    const/4 v14, 0x7

    .line 274
    shl-long/2addr v12, v14

    .line 275
    and-long/2addr v12, v10

    .line 276
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    and-long/2addr v12, v14

    .line 282
    cmp-long v12, v12, v14

    .line 283
    .line 284
    if-eqz v12, :cond_18

    .line 285
    .line 286
    sub-int v12, v9, v8

    .line 287
    .line 288
    not-int v12, v12

    .line 289
    ushr-int/lit8 v12, v12, 0x1f

    .line 290
    .line 291
    const/16 v13, 0x8

    .line 292
    .line 293
    rsub-int/lit8 v12, v12, 0x8

    .line 294
    .line 295
    move v14, v4

    .line 296
    :goto_a
    if-ge v14, v12, :cond_17

    .line 297
    .line 298
    const-wide/16 v15, 0xff

    .line 299
    .line 300
    and-long/2addr v15, v10

    .line 301
    const-wide/16 v17, 0x80

    .line 302
    .line 303
    cmp-long v15, v15, v17

    .line 304
    .line 305
    if-gez v15, :cond_16

    .line 306
    .line 307
    shl-int/lit8 v15, v9, 0x3

    .line 308
    .line 309
    add-int/2addr v15, v14

    .line 310
    aget-object v16, v6, v15

    .line 311
    .line 312
    aget v15, v7, v15

    .line 313
    .line 314
    move-object/from16 v4, v16

    .line 315
    .line 316
    check-cast v4, Ly7;

    .line 317
    .line 318
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/lang/Integer;

    .line 323
    .line 324
    if-nez v4, :cond_14

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eq v4, v15, :cond_16

    .line 332
    .line 333
    :goto_b
    iget-object v2, v3, Lxy1;->T:Lbz1;

    .line 334
    .line 335
    iget-object v2, v2, Lbz1;->p:Lcb2;

    .line 336
    .line 337
    iget-object v2, v2, Lcb2;->K:Lyy1;

    .line 338
    .line 339
    invoke-virtual {v2}, Lyy1;->f()V

    .line 340
    .line 341
    .line 342
    iget-object v2, v0, Lmm2;->P:Lcg2;

    .line 343
    .line 344
    if-nez v2, :cond_15

    .line 345
    .line 346
    sget-object v2, Lsn2;->a:Lcg2;

    .line 347
    .line 348
    new-instance v2, Lcg2;

    .line 349
    .line 350
    invoke-direct {v2}, Lcg2;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-object v2, v0, Lmm2;->P:Lcg2;

    .line 354
    .line 355
    :cond_15
    invoke-virtual {v2}, Lcg2;->a()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1}, Leb2;->c()Ljava/util/Map;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_19

    .line 375
    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Ljava/util/Map$Entry;

    .line 381
    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Ljava/lang/Number;

    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-virtual {v2, v1, v3}, Lcg2;->g(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_16
    shr-long/2addr v10, v13

    .line 401
    add-int/lit8 v14, v14, 0x1

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    goto :goto_a

    .line 405
    :cond_17
    if-ne v12, v13, :cond_19

    .line 406
    .line 407
    :cond_18
    if-eq v9, v8, :cond_19

    .line 408
    .line 409
    add-int/lit8 v9, v9, 0x1

    .line 410
    .line 411
    const/4 v4, 0x0

    .line 412
    goto/16 :goto_9

    .line 413
    .line 414
    :cond_19
    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object v1, v0, Lxy1;->S:Lbo;

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lbo;->f(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lxy1;->S:Lbo;

    .line 18
    .line 19
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lgw3;

    .line 22
    .line 23
    move-object v0, v3

    .line 24
    :goto_0
    if-eqz p0, :cond_8

    .line 25
    .line 26
    iget v1, p0, Lmd2;->p:I

    .line 27
    .line 28
    and-int/2addr v1, v2

    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move-object v4, v3

    .line 33
    :goto_1
    if-eqz v1, :cond_7

    .line 34
    .line 35
    instance-of v5, v1, Lxs2;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    check-cast v1, Lxs2;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lxs2;->l0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_4

    .line 46
    :cond_0
    iget v5, v1, Lmd2;->p:I

    .line 47
    .line 48
    and-int/2addr v5, v2

    .line 49
    if-eqz v5, :cond_6

    .line 50
    .line 51
    instance-of v5, v1, Lkr0;

    .line 52
    .line 53
    if-eqz v5, :cond_6

    .line 54
    .line 55
    move-object v5, v1

    .line 56
    check-cast v5, Lkr0;

    .line 57
    .line 58
    iget-object v5, v5, Lkr0;->C:Lmd2;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    :goto_2
    const/4 v7, 0x1

    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    iget v8, v5, Lmd2;->p:I

    .line 65
    .line 66
    and-int/2addr v8, v2

    .line 67
    if-eqz v8, :cond_4

    .line 68
    .line 69
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    if-ne v6, v7, :cond_1

    .line 72
    .line 73
    move-object v1, v5

    .line 74
    goto :goto_3

    .line 75
    :cond_1
    if-nez v4, :cond_2

    .line 76
    .line 77
    new-instance v4, Lug2;

    .line 78
    .line 79
    const/16 v7, 0x10

    .line 80
    .line 81
    new-array v7, v7, [Lmd2;

    .line 82
    .line 83
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v4, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object v1, v3

    .line 92
    :cond_3
    invoke-virtual {v4, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_3
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    if-ne v6, v7, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    :goto_4
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_1

    .line 106
    :cond_7
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_8
    return-object v0

    .line 110
    :cond_9
    return-object v3
.end method

.method public final i1(Lmd2;Lkm2;JLzj1;IZF)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-wide/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Lmm2;->U0(Lkm2;JLzj1;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v2, p2

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lkm2;->h(Lmd2;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Lkm2;->d()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    move-wide/from16 v3, p3

    .line 40
    .line 41
    move-object/from16 v5, p5

    .line 42
    .line 43
    move/from16 v6, p6

    .line 44
    .line 45
    move/from16 v7, p7

    .line 46
    .line 47
    move/from16 v8, p8

    .line 48
    .line 49
    invoke-virtual/range {v0 .. v8}, Lmm2;->i1(Lmd2;Lkm2;JLzj1;IZF)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    move-object/from16 v5, p5

    .line 54
    .line 55
    move/from16 v7, p7

    .line 56
    .line 57
    move/from16 v8, p8

    .line 58
    .line 59
    invoke-interface {v2, v0}, Lkm2;->b(Lmd2;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_9

    .line 64
    .line 65
    iget-object v10, v5, Lzj1;->o:Lxf2;

    .line 66
    .line 67
    iget-object v11, v5, Lzj1;->n:Ldg2;

    .line 68
    .line 69
    iget v12, v5, Lzj1;->p:I

    .line 70
    .line 71
    iget v1, v11, Ldg2;->b:I

    .line 72
    .line 73
    add-int/lit8 v3, v1, -0x1

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    if-ne v12, v3, :cond_6

    .line 77
    .line 78
    add-int/lit8 v13, v12, 0x1

    .line 79
    .line 80
    invoke-virtual {v5, v13, v1}, Lzj1;->d(II)V

    .line 81
    .line 82
    .line 83
    iget v1, v5, Lzj1;->p:I

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    iput v1, v5, Lzj1;->p:I

    .line 88
    .line 89
    invoke-virtual {v11, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v7, v4}, Lse0;->b(FZZ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-virtual {v10, v3, v4}, Lxf2;->a(J)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2}, Lkm2;->d()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v9, 0x0

    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    move-wide/from16 v3, p3

    .line 111
    .line 112
    move/from16 v6, p6

    .line 113
    .line 114
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 115
    .line 116
    .line 117
    iput v12, v5, Lzj1;->p:I

    .line 118
    .line 119
    iget v0, v11, Ldg2;->b:I

    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    if-eq v13, v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v5}, Lzj1;->a()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    invoke-static {v0, v1}, Ln44;->v0(J)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    return-void

    .line 137
    :cond_3
    :goto_0
    iget v0, v5, Lzj1;->p:I

    .line 138
    .line 139
    add-int/lit8 v1, v0, 0x1

    .line 140
    .line 141
    invoke-virtual {v11, v1}, Ldg2;->k(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    if-ltz v1, :cond_5

    .line 145
    .line 146
    iget v2, v10, Lxf2;->b:I

    .line 147
    .line 148
    if-ge v1, v2, :cond_5

    .line 149
    .line 150
    iget-object v3, v10, Lxf2;->a:[J

    .line 151
    .line 152
    aget-wide v4, v3, v1

    .line 153
    .line 154
    add-int/lit8 v4, v2, -0x1

    .line 155
    .line 156
    if-eq v1, v4, :cond_4

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x2

    .line 159
    .line 160
    invoke-static {v3, v3, v1, v0, v2}, Lji;->P([J[JIII)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget v0, v10, Lxf2;->b:I

    .line 164
    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 166
    .line 167
    iput v0, v10, Lxf2;->b:I

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    const-string v0, "Index must be between 0 and size"

    .line 171
    .line 172
    invoke-static {v0}, Lmk0;->h(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    invoke-virtual {v5}, Lzj1;->a()J

    .line 177
    .line 178
    .line 179
    move-result-wide v12

    .line 180
    iget v14, v5, Lzj1;->p:I

    .line 181
    .line 182
    iget v1, v11, Ldg2;->b:I

    .line 183
    .line 184
    add-int/lit8 v15, v1, -0x1

    .line 185
    .line 186
    iput v15, v5, Lzj1;->p:I

    .line 187
    .line 188
    iget v2, v11, Ldg2;->b:I

    .line 189
    .line 190
    invoke-virtual {v5, v1, v2}, Lzj1;->d(II)V

    .line 191
    .line 192
    .line 193
    iget v1, v5, Lzj1;->p:I

    .line 194
    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    iput v1, v5, Lzj1;->p:I

    .line 198
    .line 199
    invoke-virtual {v11, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v8, v7, v4}, Lse0;->b(FZZ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    invoke-virtual {v10, v1, v2}, Lxf2;->a(J)V

    .line 207
    .line 208
    .line 209
    invoke-interface/range {p2 .. p2}, Lkm2;->d()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const/4 v9, 0x0

    .line 218
    move-object/from16 v0, p0

    .line 219
    .line 220
    move-object/from16 v2, p2

    .line 221
    .line 222
    move-wide/from16 v3, p3

    .line 223
    .line 224
    move/from16 v6, p6

    .line 225
    .line 226
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 227
    .line 228
    .line 229
    iput v15, v5, Lzj1;->p:I

    .line 230
    .line 231
    invoke-virtual {v5}, Lzj1;->a()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    iget v2, v5, Lzj1;->p:I

    .line 236
    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    iget v3, v11, Ldg2;->b:I

    .line 240
    .line 241
    add-int/lit8 v3, v3, -0x1

    .line 242
    .line 243
    if-ge v2, v3, :cond_8

    .line 244
    .line 245
    invoke-static {v12, v13, v0, v1}, Ln44;->e0(JJ)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-lez v2, :cond_8

    .line 250
    .line 251
    add-int/lit8 v2, v14, 0x1

    .line 252
    .line 253
    invoke-static {v0, v1}, Ln44;->v0(J)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iget v1, v5, Lzj1;->p:I

    .line 258
    .line 259
    if-eqz v0, :cond_7

    .line 260
    .line 261
    add-int/lit8 v1, v1, 0x2

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 265
    .line 266
    :goto_1
    invoke-virtual {v5, v2, v1}, Lzj1;->d(II)V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_8
    iget v0, v5, Lzj1;->p:I

    .line 271
    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 273
    .line 274
    iget v1, v11, Ldg2;->b:I

    .line 275
    .line 276
    invoke-virtual {v5, v0, v1}, Lzj1;->d(II)V

    .line 277
    .line 278
    .line 279
    :goto_2
    iput v14, v5, Lzj1;->p:I

    .line 280
    .line 281
    return-void

    .line 282
    :cond_9
    invoke-interface/range {p2 .. p2}, Lkm2;->d()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-static {v0, v1}, Lk75;->d(Ljr0;I)Lmd2;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const/4 v9, 0x0

    .line 291
    move-object/from16 v0, p0

    .line 292
    .line 293
    move-object/from16 v2, p2

    .line 294
    .line 295
    move-wide/from16 v3, p3

    .line 296
    .line 297
    move/from16 v6, p6

    .line 298
    .line 299
    move/from16 v7, p7

    .line 300
    .line 301
    move/from16 v8, p8

    .line 302
    .line 303
    invoke-virtual/range {v0 .. v9}, Lmm2;->c1(Lmd2;Lkm2;JLzj1;IZFZ)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final j()Lgy1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 6
    .line 7
    iget-object v1, p0, Lmm2;->F:Lxy1;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v3, "\n|"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " isAttached="

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lxy1;->H()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " modifier="

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, v2, Lxy1;->X:Lnd2;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " tail="

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lmm2;->X0()V

    .line 76
    .line 77
    .line 78
    iget-object p0, v1, Lxy1;->S:Lbo;

    .line 79
    .line 80
    iget-object p0, p0, Lbo;->e:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lmm2;

    .line 83
    .line 84
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 85
    .line 86
    return-object p0
.end method

.method public final j1()Ll33;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p0}, Lzf5;->D(Lgy1;)Lgy1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lmm2;->S:Ljg2;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Ljg2;

    .line 19
    .line 20
    invoke-direct {v1}, Ljg2;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lmm2;->S:Ljg2;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lmm2;->N0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p0, v2, v3}, Lmm2;->F0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    shr-long v4, v2, v4

    .line 36
    .line 37
    long-to-int v4, v4

    .line 38
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    neg-float v5, v5

    .line 43
    iput v5, v1, Ljg2;->a:F

    .line 44
    .line 45
    const-wide v5, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v2, v5

    .line 51
    long-to-int v2, v2

    .line 52
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    neg-float v3, v3

    .line 57
    iput v3, v1, Ljg2;->b:F

    .line 58
    .line 59
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    add-float/2addr v4, v3

    .line 69
    iput v4, v1, Ljg2;->c:F

    .line 70
    .line 71
    invoke-virtual {p0}, Ldv2;->Y()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    int-to-float v3, v3

    .line 76
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-float/2addr v2, v3

    .line 81
    iput v2, v1, Ljg2;->d:F

    .line 82
    .line 83
    :goto_0
    if-eq p0, v0, :cond_3

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x1

    .line 87
    invoke-virtual {p0, v1, v2, v3}, Lmm2;->f1(Ljg2;ZZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljg2;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    :goto_1
    sget-object p0, Ll33;->e:Ll33;

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_2
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    new-instance p0, Ll33;

    .line 106
    .line 107
    iget v0, v1, Ljg2;->a:F

    .line 108
    .line 109
    iget v2, v1, Ljg2;->b:F

    .line 110
    .line 111
    iget v3, v1, Ljg2;->c:F

    .line 112
    .line 113
    iget v1, v1, Ljg2;->d:F

    .line 114
    .line 115
    invoke-direct {p0, v0, v2, v3, v1}, Ll33;-><init>(FFFF)V

    .line 116
    .line 117
    .line 118
    return-object p0
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 4
    .line 5
    invoke-interface {p0}, Las0;->k()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final k1(Lpe1;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lmm2;->F:Lxy1;

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lmm2;->K:Lpe1;

    .line 8
    .line 9
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lmm2;->L:Las0;

    .line 12
    .line 13
    iget-object v3, v2, Lxy1;->L:Las0;

    .line 14
    .line 15
    invoke-static {p2, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lmm2;->M:Lhy1;

    .line 22
    .line 23
    iget-object v3, v2, Lxy1;->M:Lhy1;

    .line 24
    .line 25
    if-eq p2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p2, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move p2, v1

    .line 31
    :goto_1
    iget-object v3, v2, Lxy1;->L:Las0;

    .line 32
    .line 33
    iput-object v3, p0, Lmm2;->L:Las0;

    .line 34
    .line 35
    iget-object v3, v2, Lxy1;->M:Lhy1;

    .line 36
    .line 37
    iput-object v3, p0, Lmm2;->M:Lhy1;

    .line 38
    .line 39
    invoke-virtual {v2}, Lxy1;->H()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v9, p0, Lmm2;->a0:Llm2;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_d

    .line 47
    .line 48
    if-eqz p1, :cond_d

    .line 49
    .line 50
    iput-object p1, p0, Lmm2;->K:Lpe1;

    .line 51
    .line 52
    iget-object p1, p0, Lmm2;->c0:Lrr2;

    .line 53
    .line 54
    if-nez p1, :cond_b

    .line 55
    .line 56
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lmm2;->Z:Lga;

    .line 61
    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    new-instance p2, Llm2;

    .line 65
    .line 66
    invoke-direct {p2, p0, v0}, Llm2;-><init>(Lmm2;I)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lga;

    .line 70
    .line 71
    const/4 v5, 0x3

    .line 72
    invoke-direct {v3, v5, p0, p2}, Lga;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Lmm2;->Z:Lga;

    .line 76
    .line 77
    move-object v8, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v8, p2

    .line 80
    :goto_2
    move-object v7, p1

    .line 81
    check-cast v7, Lq9;

    .line 82
    .line 83
    iget-object p1, v7, Lq9;->B0:Lpc4;

    .line 84
    .line 85
    :cond_3
    iget-object p2, p1, Lpc4;->p:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p2, Ljava/lang/ref/ReferenceQueue;

    .line 88
    .line 89
    iget-object v3, p1, Lpc4;->o:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v3, Lug2;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v3, p2}, Lug2;->k(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    if-nez p2, :cond_3

    .line 103
    .line 104
    :cond_5
    iget p1, v3, Lug2;->p:I

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Lug2;->l(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/ref/Reference;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move-object p1, v4

    .line 124
    :goto_3
    check-cast p1, Lrr2;

    .line 125
    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    move-object p2, p1

    .line 129
    check-cast p2, Lci1;

    .line 130
    .line 131
    iget-object v3, p2, Lci1;->o:Lyh1;

    .line 132
    .line 133
    if-eqz v3, :cond_9

    .line 134
    .line 135
    iget-object v5, p2, Lci1;->n:Lzh1;

    .line 136
    .line 137
    iget-boolean v5, v5, Lzh1;->s:Z

    .line 138
    .line 139
    if-nez v5, :cond_7

    .line 140
    .line 141
    const-string v5, "layer should have been released before reuse"

    .line 142
    .line 143
    invoke-static {v5}, Lar1;->a(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-interface {v3}, Lyh1;->b()Lzh1;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iput-object v3, p2, Lci1;->n:Lzh1;

    .line 151
    .line 152
    iput-boolean v0, p2, Lci1;->t:Z

    .line 153
    .line 154
    iput-object v8, p2, Lci1;->q:Ldf1;

    .line 155
    .line 156
    iput-object v9, p2, Lci1;->r:Lne1;

    .line 157
    .line 158
    iput-boolean v0, p2, Lci1;->D:Z

    .line 159
    .line 160
    iput-boolean v0, p2, Lci1;->E:Z

    .line 161
    .line 162
    iput-boolean v1, p2, Lci1;->F:Z

    .line 163
    .line 164
    iget-object v3, p2, Lci1;->u:[F

    .line 165
    .line 166
    invoke-static {v3}, Lxa2;->d([F)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p2, Lci1;->v:[F

    .line 170
    .line 171
    if-eqz v3, :cond_8

    .line 172
    .line 173
    invoke-static {v3}, Lxa2;->d([F)V

    .line 174
    .line 175
    .line 176
    :cond_8
    sget-wide v5, Lf14;->b:J

    .line 177
    .line 178
    iput-wide v5, p2, Lci1;->B:J

    .line 179
    .line 180
    iput-boolean v0, p2, Lci1;->G:Z

    .line 181
    .line 182
    const-wide v5, 0x7fffffff7fffffffL

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    iput-wide v5, p2, Lci1;->s:J

    .line 188
    .line 189
    iput-object v4, p2, Lci1;->C:Lfl4;

    .line 190
    .line 191
    iput v0, p2, Lci1;->A:I

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    .line 195
    .line 196
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    throw p0

    .line 201
    :cond_a
    new-instance v4, Lci1;

    .line 202
    .line 203
    invoke-virtual {v7}, Lq9;->getGraphicsContext()Lyh1;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-interface {p1}, Lyh1;->b()Lzh1;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v7}, Lq9;->getGraphicsContext()Lyh1;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-direct/range {v4 .. v9}, Lci1;-><init>(Lzh1;Lyh1;Lq9;Ldf1;Lne1;)V

    .line 216
    .line 217
    .line 218
    move-object p1, v4

    .line 219
    :goto_4
    iget-wide v3, p0, Ldv2;->p:J

    .line 220
    .line 221
    move-object p2, p1

    .line 222
    check-cast p2, Lci1;

    .line 223
    .line 224
    invoke-virtual {p2, v3, v4}, Lci1;->e(J)V

    .line 225
    .line 226
    .line 227
    iget-wide v3, p0, Lmm2;->Q:J

    .line 228
    .line 229
    invoke-virtual {p2, v3, v4}, Lci1;->d(J)V

    .line 230
    .line 231
    .line 232
    iput-object p1, p0, Lmm2;->c0:Lrr2;

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Lmm2;->l1(Z)V

    .line 235
    .line 236
    .line 237
    iput-boolean v1, v2, Lxy1;->W:Z

    .line 238
    .line 239
    invoke-virtual {v9}, Llm2;->a()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_b
    if-eqz p2, :cond_c

    .line 244
    .line 245
    invoke-virtual {p0, v1}, Lmm2;->l1(Z)V

    .line 246
    .line 247
    .line 248
    :cond_c
    return-void

    .line 249
    :cond_d
    iput-object v4, p0, Lmm2;->K:Lpe1;

    .line 250
    .line 251
    iget-object p1, p0, Lmm2;->c0:Lrr2;

    .line 252
    .line 253
    if-eqz p1, :cond_12

    .line 254
    .line 255
    check-cast p1, Lci1;

    .line 256
    .line 257
    invoke-virtual {p1}, Lci1;->b()[F

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-static {p2}, Lgg4;->J([F)Z

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    if-nez p2, :cond_e

    .line 266
    .line 267
    invoke-virtual {v2, p0}, Lxy1;->N(Lmm2;)V

    .line 268
    .line 269
    .line 270
    :cond_e
    iput-object v4, p1, Lci1;->q:Ldf1;

    .line 271
    .line 272
    iput-object v4, p1, Lci1;->r:Lne1;

    .line 273
    .line 274
    iput-boolean v1, p1, Lci1;->t:Z

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Lci1;->f(Z)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p1, Lci1;->o:Lyh1;

    .line 280
    .line 281
    if-eqz p2, :cond_11

    .line 282
    .line 283
    iget-object v3, p1, Lci1;->n:Lzh1;

    .line 284
    .line 285
    invoke-interface {p2, v3}, Lyh1;->a(Lzh1;)V

    .line 286
    .line 287
    .line 288
    iget-object p2, p1, Lci1;->p:Lq9;

    .line 289
    .line 290
    iget-object v3, p2, Lq9;->B0:Lpc4;

    .line 291
    .line 292
    :cond_f
    iget-object v5, v3, Lpc4;->p:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v5, Ljava/lang/ref/ReferenceQueue;

    .line 295
    .line 296
    iget-object v6, v3, Lpc4;->o:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v6, Lug2;

    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    if-eqz v5, :cond_10

    .line 305
    .line 306
    invoke-virtual {v6, v5}, Lug2;->k(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_10
    if-nez v5, :cond_f

    .line 310
    .line 311
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 312
    .line 313
    iget-object v3, v3, Lpc4;->p:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v3, Ljava/lang/ref/ReferenceQueue;

    .line 316
    .line 317
    invoke-direct {v5, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object p2, p2, Lq9;->M:Ldg2;

    .line 324
    .line 325
    invoke-virtual {p2, p1}, Ldg2;->j(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    :cond_11
    iput-object v4, p0, Lmm2;->c0:Lrr2;

    .line 329
    .line 330
    iput-boolean v1, v2, Lxy1;->W:Z

    .line 331
    .line 332
    invoke-virtual {v9}, Llm2;->a()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iget-boolean p1, p1, Lmd2;->A:Z

    .line 340
    .line 341
    if-eqz p1, :cond_12

    .line 342
    .line 343
    invoke-virtual {v2}, Lxy1;->I()Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_12

    .line 348
    .line 349
    iget-object p1, v2, Lxy1;->A:Lsr2;

    .line 350
    .line 351
    if-eqz p1, :cond_12

    .line 352
    .line 353
    check-cast p1, Lq9;

    .line 354
    .line 355
    invoke-virtual {p1, v2}, Lq9;->v(Lxy1;)V

    .line 356
    .line 357
    .line 358
    :cond_12
    iput-boolean v0, p0, Lmm2;->b0:Z

    .line 359
    .line 360
    return-void
.end method

.method public final l1(Z)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lmm2;->c0:Lrr2;

    .line 4
    .line 5
    iget-object v2, v0, Lmm2;->K:Lpe1;

    .line 6
    .line 7
    if-eqz v1, :cond_35

    .line 8
    .line 9
    if-eqz v2, :cond_34

    .line 10
    .line 11
    sget-object v3, Lmm2;->d0:Lo83;

    .line 12
    .line 13
    invoke-virtual {v3}, Lo83;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v4, v0, Lmm2;->F:Lxy1;

    .line 17
    .line 18
    iget-object v5, v4, Lxy1;->L:Las0;

    .line 19
    .line 20
    iput-object v5, v3, Lo83;->A:Las0;

    .line 21
    .line 22
    iget-object v5, v4, Lxy1;->M:Lhy1;

    .line 23
    .line 24
    iput-object v5, v3, Lo83;->B:Lhy1;

    .line 25
    .line 26
    iget-wide v5, v0, Ldv2;->p:J

    .line 27
    .line 28
    invoke-static {v5, v6}, Lse0;->H(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    iput-wide v5, v3, Lo83;->y:J

    .line 33
    .line 34
    invoke-static {v4}, Laz1;->a(Lxy1;)Lsr2;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lq9;

    .line 39
    .line 40
    invoke-virtual {v5}, Lq9;->getSnapshotObserver()Lur2;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Ll9;->S:Ll9;

    .line 45
    .line 46
    new-instance v7, Lj9;

    .line 47
    .line 48
    const/16 v8, 0x8

    .line 49
    .line 50
    invoke-direct {v7, v8, v2, v0}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v5, Lur2;->a:Lip3;

    .line 54
    .line 55
    invoke-virtual {v2, v0, v6, v7}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lmm2;->T:Lcy1;

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    new-instance v2, Lcy1;

    .line 63
    .line 64
    invoke-direct {v2}, Lcy1;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, v0, Lmm2;->T:Lcy1;

    .line 68
    .line 69
    :cond_0
    sget-object v5, Lmm2;->e0:Lcy1;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget v6, v2, Lcy1;->a:F

    .line 75
    .line 76
    iput v6, v5, Lcy1;->a:F

    .line 77
    .line 78
    iget v6, v2, Lcy1;->b:F

    .line 79
    .line 80
    iput v6, v5, Lcy1;->b:F

    .line 81
    .line 82
    iget v6, v2, Lcy1;->c:F

    .line 83
    .line 84
    iput v6, v5, Lcy1;->c:F

    .line 85
    .line 86
    iget-wide v6, v2, Lcy1;->d:J

    .line 87
    .line 88
    iput-wide v6, v5, Lcy1;->d:J

    .line 89
    .line 90
    iget v6, v3, Lo83;->o:F

    .line 91
    .line 92
    iput v6, v2, Lcy1;->a:F

    .line 93
    .line 94
    iget v6, v3, Lo83;->p:F

    .line 95
    .line 96
    iput v6, v2, Lcy1;->b:F

    .line 97
    .line 98
    iget v6, v3, Lo83;->u:F

    .line 99
    .line 100
    iput v6, v2, Lcy1;->c:F

    .line 101
    .line 102
    iget-wide v6, v3, Lo83;->v:J

    .line 103
    .line 104
    iput-wide v6, v2, Lcy1;->d:J

    .line 105
    .line 106
    check-cast v1, Lci1;

    .line 107
    .line 108
    iget-object v6, v1, Lci1;->p:Lq9;

    .line 109
    .line 110
    iget v7, v3, Lo83;->n:I

    .line 111
    .line 112
    iget v8, v1, Lci1;->A:I

    .line 113
    .line 114
    or-int/2addr v7, v8

    .line 115
    iget-object v8, v3, Lo83;->B:Lhy1;

    .line 116
    .line 117
    iput-object v8, v1, Lci1;->y:Lhy1;

    .line 118
    .line 119
    iget-object v8, v3, Lo83;->A:Las0;

    .line 120
    .line 121
    iput-object v8, v1, Lci1;->x:Las0;

    .line 122
    .line 123
    const/high16 v9, 0x100000

    .line 124
    .line 125
    and-int/2addr v9, v7

    .line 126
    const/4 v10, 0x0

    .line 127
    if-eqz v9, :cond_1

    .line 128
    .line 129
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 130
    .line 131
    iget-object v11, v3, Lo83;->z:Lby1;

    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-interface {v8, v10}, Las0;->N(F)I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    iget-object v12, v3, Lo83;->z:Lby1;

    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {v8, v10}, Las0;->N(F)I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    iget-object v13, v3, Lo83;->z:Lby1;

    .line 150
    .line 151
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-interface {v8, v10}, Las0;->N(F)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    iget-object v14, v3, Lo83;->z:Lby1;

    .line 159
    .line 160
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-interface {v8, v10}, Las0;->N(F)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    iput v11, v9, Lzh1;->v:I

    .line 168
    .line 169
    iput v12, v9, Lzh1;->w:I

    .line 170
    .line 171
    iput v13, v9, Lzh1;->x:I

    .line 172
    .line 173
    iput v8, v9, Lzh1;->y:I

    .line 174
    .line 175
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 176
    .line 177
    invoke-interface {v9, v11, v12, v13, v8}, Lbi1;->h(IIII)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lci1;->c()V

    .line 181
    .line 182
    .line 183
    :cond_1
    and-int/lit16 v8, v7, 0x1000

    .line 184
    .line 185
    if-eqz v8, :cond_2

    .line 186
    .line 187
    iget-wide v11, v3, Lo83;->v:J

    .line 188
    .line 189
    iput-wide v11, v1, Lci1;->B:J

    .line 190
    .line 191
    :cond_2
    and-int/lit8 v9, v7, 0x1

    .line 192
    .line 193
    if-eqz v9, :cond_4

    .line 194
    .line 195
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 196
    .line 197
    iget v11, v3, Lo83;->o:F

    .line 198
    .line 199
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 200
    .line 201
    invoke-interface {v9}, Lbi1;->f()F

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    cmpg-float v12, v12, v11

    .line 206
    .line 207
    if-nez v12, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_3
    invoke-interface {v9, v11}, Lbi1;->p(F)V

    .line 211
    .line 212
    .line 213
    :cond_4
    :goto_0
    and-int/lit8 v9, v7, 0x2

    .line 214
    .line 215
    if-eqz v9, :cond_6

    .line 216
    .line 217
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 218
    .line 219
    iget v11, v3, Lo83;->p:F

    .line 220
    .line 221
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 222
    .line 223
    invoke-interface {v9}, Lbi1;->L()F

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    cmpg-float v12, v12, v11

    .line 228
    .line 229
    if-nez v12, :cond_5

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_5
    invoke-interface {v9, v11}, Lbi1;->E(F)V

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_1
    and-int/lit8 v9, v7, 0x4

    .line 236
    .line 237
    if-eqz v9, :cond_8

    .line 238
    .line 239
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 240
    .line 241
    iget v11, v3, Lo83;->q:F

    .line 242
    .line 243
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 244
    .line 245
    invoke-interface {v9}, Lbi1;->c()F

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    cmpg-float v12, v12, v11

    .line 250
    .line 251
    if-nez v12, :cond_7

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_7
    invoke-interface {v9, v11}, Lbi1;->e(F)V

    .line 255
    .line 256
    .line 257
    :cond_8
    :goto_2
    and-int/lit8 v9, v7, 0x8

    .line 258
    .line 259
    if-eqz v9, :cond_a

    .line 260
    .line 261
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 262
    .line 263
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 264
    .line 265
    invoke-interface {v9}, Lbi1;->t()F

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    cmpg-float v11, v11, v10

    .line 270
    .line 271
    if-nez v11, :cond_9

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    invoke-interface {v9}, Lbi1;->u()V

    .line 275
    .line 276
    .line 277
    :cond_a
    :goto_3
    and-int/lit8 v9, v7, 0x10

    .line 278
    .line 279
    if-eqz v9, :cond_c

    .line 280
    .line 281
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 282
    .line 283
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 284
    .line 285
    invoke-interface {v9}, Lbi1;->i()F

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    cmpg-float v11, v11, v10

    .line 290
    .line 291
    if-nez v11, :cond_b

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_b
    invoke-interface {v9}, Lbi1;->j()V

    .line 295
    .line 296
    .line 297
    :cond_c
    :goto_4
    and-int/lit8 v9, v7, 0x20

    .line 298
    .line 299
    const/4 v11, 0x1

    .line 300
    if-eqz v9, :cond_e

    .line 301
    .line 302
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 303
    .line 304
    iget v12, v3, Lo83;->r:F

    .line 305
    .line 306
    iget-object v13, v9, Lzh1;->a:Lbi1;

    .line 307
    .line 308
    invoke-interface {v13}, Lbi1;->J()F

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    cmpg-float v14, v14, v12

    .line 313
    .line 314
    if-nez v14, :cond_d

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_d
    invoke-interface {v13, v12}, Lbi1;->g(F)V

    .line 318
    .line 319
    .line 320
    iput-boolean v11, v9, Lzh1;->g:Z

    .line 321
    .line 322
    invoke-virtual {v9}, Lzh1;->a()V

    .line 323
    .line 324
    .line 325
    :goto_5
    iget v9, v3, Lo83;->r:F

    .line 326
    .line 327
    cmpl-float v9, v9, v10

    .line 328
    .line 329
    if-lez v9, :cond_e

    .line 330
    .line 331
    iget-boolean v9, v1, Lci1;->G:Z

    .line 332
    .line 333
    if-nez v9, :cond_e

    .line 334
    .line 335
    iget-object v9, v1, Lci1;->r:Lne1;

    .line 336
    .line 337
    if-eqz v9, :cond_e

    .line 338
    .line 339
    invoke-interface {v9}, Lne1;->a()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    :cond_e
    and-int/lit8 v9, v7, 0x40

    .line 343
    .line 344
    if-eqz v9, :cond_f

    .line 345
    .line 346
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 347
    .line 348
    iget-wide v12, v3, Lo83;->s:J

    .line 349
    .line 350
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 351
    .line 352
    invoke-interface {v9}, Lbi1;->P()J

    .line 353
    .line 354
    .line 355
    move-result-wide v14

    .line 356
    invoke-static {v12, v13, v14, v15}, Lt70;->c(JJ)Z

    .line 357
    .line 358
    .line 359
    move-result v14

    .line 360
    if-nez v14, :cond_f

    .line 361
    .line 362
    invoke-interface {v9, v12, v13}, Lbi1;->m(J)V

    .line 363
    .line 364
    .line 365
    :cond_f
    and-int/lit16 v9, v7, 0x80

    .line 366
    .line 367
    if-eqz v9, :cond_10

    .line 368
    .line 369
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 370
    .line 371
    iget-wide v12, v3, Lo83;->t:J

    .line 372
    .line 373
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 374
    .line 375
    invoke-interface {v9}, Lbi1;->l()J

    .line 376
    .line 377
    .line 378
    move-result-wide v14

    .line 379
    invoke-static {v12, v13, v14, v15}, Lt70;->c(JJ)Z

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    if-nez v14, :cond_10

    .line 384
    .line 385
    invoke-interface {v9, v12, v13}, Lbi1;->D(J)V

    .line 386
    .line 387
    .line 388
    :cond_10
    and-int/lit16 v9, v7, 0x400

    .line 389
    .line 390
    if-eqz v9, :cond_12

    .line 391
    .line 392
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 393
    .line 394
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 395
    .line 396
    invoke-interface {v9}, Lbi1;->M()F

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    cmpg-float v12, v12, v10

    .line 401
    .line 402
    if-nez v12, :cond_11

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_11
    invoke-interface {v9}, Lbi1;->C()V

    .line 406
    .line 407
    .line 408
    :cond_12
    :goto_6
    and-int/lit16 v9, v7, 0x100

    .line 409
    .line 410
    if-eqz v9, :cond_14

    .line 411
    .line 412
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 413
    .line 414
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 415
    .line 416
    invoke-interface {v9}, Lbi1;->y()F

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    cmpg-float v12, v12, v10

    .line 421
    .line 422
    if-nez v12, :cond_13

    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_13
    invoke-interface {v9}, Lbi1;->d()V

    .line 426
    .line 427
    .line 428
    :cond_14
    :goto_7
    and-int/lit16 v9, v7, 0x200

    .line 429
    .line 430
    if-eqz v9, :cond_16

    .line 431
    .line 432
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 433
    .line 434
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 435
    .line 436
    invoke-interface {v9}, Lbi1;->H()F

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    cmpg-float v12, v12, v10

    .line 441
    .line 442
    if-nez v12, :cond_15

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_15
    invoke-interface {v9}, Lbi1;->k()V

    .line 446
    .line 447
    .line 448
    :cond_16
    :goto_8
    and-int/lit16 v9, v7, 0x800

    .line 449
    .line 450
    if-eqz v9, :cond_18

    .line 451
    .line 452
    iget-object v9, v1, Lci1;->n:Lzh1;

    .line 453
    .line 454
    iget v12, v3, Lo83;->u:F

    .line 455
    .line 456
    iget-object v9, v9, Lzh1;->a:Lbi1;

    .line 457
    .line 458
    invoke-interface {v9}, Lbi1;->r()F

    .line 459
    .line 460
    .line 461
    move-result v13

    .line 462
    cmpg-float v13, v13, v12

    .line 463
    .line 464
    if-nez v13, :cond_17

    .line 465
    .line 466
    goto :goto_9

    .line 467
    :cond_17
    invoke-interface {v9, v12}, Lbi1;->I(F)V

    .line 468
    .line 469
    .line 470
    :cond_18
    :goto_9
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    const-wide v16, 0xffffffffL

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    if-eqz v8, :cond_1a

    .line 481
    .line 482
    iget-wide v12, v1, Lci1;->B:J

    .line 483
    .line 484
    const/16 v18, 0x20

    .line 485
    .line 486
    sget-wide v9, Lf14;->b:J

    .line 487
    .line 488
    invoke-static {v12, v13, v9, v10}, Lf14;->a(JJ)Z

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    iget-object v10, v1, Lci1;->n:Lzh1;

    .line 493
    .line 494
    if-eqz v9, :cond_19

    .line 495
    .line 496
    iget-wide v12, v10, Lzh1;->z:J

    .line 497
    .line 498
    invoke-static {v12, v13, v14, v15}, Lgo2;->b(JJ)Z

    .line 499
    .line 500
    .line 501
    move-result v9

    .line 502
    if-nez v9, :cond_1b

    .line 503
    .line 504
    iput-wide v14, v10, Lzh1;->z:J

    .line 505
    .line 506
    iget-object v9, v10, Lzh1;->a:Lbi1;

    .line 507
    .line 508
    invoke-interface {v9, v14, v15}, Lbi1;->O(J)V

    .line 509
    .line 510
    .line 511
    goto :goto_a

    .line 512
    :cond_19
    iget-wide v12, v1, Lci1;->B:J

    .line 513
    .line 514
    shr-long v12, v12, v18

    .line 515
    .line 516
    long-to-int v9, v12

    .line 517
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 518
    .line 519
    .line 520
    move-result v9

    .line 521
    iget-wide v12, v1, Lci1;->s:J

    .line 522
    .line 523
    shr-long v12, v12, v18

    .line 524
    .line 525
    long-to-int v12, v12

    .line 526
    int-to-float v12, v12

    .line 527
    mul-float/2addr v9, v12

    .line 528
    iget-wide v12, v1, Lci1;->B:J

    .line 529
    .line 530
    and-long v12, v12, v16

    .line 531
    .line 532
    long-to-int v12, v12

    .line 533
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    move/from16 v19, v9

    .line 538
    .line 539
    iget-wide v8, v1, Lci1;->s:J

    .line 540
    .line 541
    and-long v8, v8, v16

    .line 542
    .line 543
    long-to-int v8, v8

    .line 544
    int-to-float v8, v8

    .line 545
    mul-float/2addr v12, v8

    .line 546
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    int-to-long v8, v8

    .line 551
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 552
    .line 553
    .line 554
    move-result v12

    .line 555
    int-to-long v13, v12

    .line 556
    shl-long v8, v8, v18

    .line 557
    .line 558
    and-long v12, v13, v16

    .line 559
    .line 560
    or-long/2addr v8, v12

    .line 561
    iget-wide v12, v10, Lzh1;->z:J

    .line 562
    .line 563
    invoke-static {v12, v13, v8, v9}, Lgo2;->b(JJ)Z

    .line 564
    .line 565
    .line 566
    move-result v12

    .line 567
    if-nez v12, :cond_1b

    .line 568
    .line 569
    iput-wide v8, v10, Lzh1;->z:J

    .line 570
    .line 571
    iget-object v10, v10, Lzh1;->a:Lbi1;

    .line 572
    .line 573
    invoke-interface {v10, v8, v9}, Lbi1;->O(J)V

    .line 574
    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_1a
    const/16 v18, 0x20

    .line 578
    .line 579
    :cond_1b
    :goto_a
    and-int/lit16 v8, v7, 0x4000

    .line 580
    .line 581
    if-eqz v8, :cond_1c

    .line 582
    .line 583
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 584
    .line 585
    iget-boolean v9, v3, Lo83;->x:Z

    .line 586
    .line 587
    iget-boolean v10, v8, Lzh1;->A:Z

    .line 588
    .line 589
    if-eq v10, v9, :cond_1c

    .line 590
    .line 591
    iput-boolean v9, v8, Lzh1;->A:Z

    .line 592
    .line 593
    iput-boolean v11, v8, Lzh1;->g:Z

    .line 594
    .line 595
    invoke-virtual {v8}, Lzh1;->a()V

    .line 596
    .line 597
    .line 598
    :cond_1c
    const/high16 v8, 0x20000

    .line 599
    .line 600
    and-int/2addr v8, v7

    .line 601
    if-eqz v8, :cond_1d

    .line 602
    .line 603
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 604
    .line 605
    iget-object v8, v8, Lzh1;->a:Lbi1;

    .line 606
    .line 607
    :cond_1d
    const/high16 v8, 0x40000

    .line 608
    .line 609
    and-int/2addr v8, v7

    .line 610
    const/4 v9, 0x0

    .line 611
    if-eqz v8, :cond_1e

    .line 612
    .line 613
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 614
    .line 615
    iget-object v8, v8, Lzh1;->a:Lbi1;

    .line 616
    .line 617
    invoke-interface {v8}, Lbi1;->A()Low;

    .line 618
    .line 619
    .line 620
    move-result-object v10

    .line 621
    invoke-static {v10, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v10

    .line 625
    if-nez v10, :cond_1e

    .line 626
    .line 627
    invoke-interface {v8}, Lbi1;->o()V

    .line 628
    .line 629
    .line 630
    :cond_1e
    const/high16 v8, 0x80000

    .line 631
    .line 632
    and-int/2addr v8, v7

    .line 633
    if-eqz v8, :cond_20

    .line 634
    .line 635
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 636
    .line 637
    iget v10, v3, Lo83;->C:I

    .line 638
    .line 639
    iget-object v8, v8, Lzh1;->a:Lbi1;

    .line 640
    .line 641
    invoke-interface {v8}, Lbi1;->N()I

    .line 642
    .line 643
    .line 644
    move-result v12

    .line 645
    if-ne v12, v10, :cond_1f

    .line 646
    .line 647
    goto :goto_b

    .line 648
    :cond_1f
    invoke-interface {v8, v10}, Lbi1;->q(I)V

    .line 649
    .line 650
    .line 651
    :cond_20
    :goto_b
    const v8, 0x8000

    .line 652
    .line 653
    .line 654
    and-int/2addr v8, v7

    .line 655
    const/4 v10, 0x0

    .line 656
    if-eqz v8, :cond_22

    .line 657
    .line 658
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 659
    .line 660
    iget-object v8, v8, Lzh1;->a:Lbi1;

    .line 661
    .line 662
    invoke-interface {v8}, Lbi1;->x()I

    .line 663
    .line 664
    .line 665
    move-result v12

    .line 666
    if-nez v12, :cond_21

    .line 667
    .line 668
    goto :goto_c

    .line 669
    :cond_21
    invoke-interface {v8, v10}, Lbi1;->B(I)V

    .line 670
    .line 671
    .line 672
    :cond_22
    :goto_c
    and-int/lit16 v8, v7, 0x1f1b

    .line 673
    .line 674
    if-eqz v8, :cond_23

    .line 675
    .line 676
    iput-boolean v11, v1, Lci1;->D:Z

    .line 677
    .line 678
    iput-boolean v11, v1, Lci1;->E:Z

    .line 679
    .line 680
    :cond_23
    iget-object v8, v1, Lci1;->C:Lfl4;

    .line 681
    .line 682
    iget-object v12, v3, Lo83;->D:Lfl4;

    .line 683
    .line 684
    invoke-static {v8, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-nez v8, :cond_2b

    .line 689
    .line 690
    iget-object v12, v3, Lo83;->D:Lfl4;

    .line 691
    .line 692
    iput-object v12, v1, Lci1;->C:Lfl4;

    .line 693
    .line 694
    if-nez v12, :cond_24

    .line 695
    .line 696
    move/from16 v26, v7

    .line 697
    .line 698
    goto/16 :goto_e

    .line 699
    .line 700
    :cond_24
    iget-object v8, v1, Lci1;->n:Lzh1;

    .line 701
    .line 702
    instance-of v13, v12, Llr2;

    .line 703
    .line 704
    if-eqz v13, :cond_25

    .line 705
    .line 706
    move-object v13, v12

    .line 707
    check-cast v13, Llr2;

    .line 708
    .line 709
    iget-object v13, v13, Llr2;->x:Ll33;

    .line 710
    .line 711
    iget v14, v13, Ll33;->a:F

    .line 712
    .line 713
    iget v15, v13, Ll33;->b:F

    .line 714
    .line 715
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 716
    .line 717
    .line 718
    move-result v10

    .line 719
    int-to-long v9, v10

    .line 720
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 721
    .line 722
    .line 723
    move-result v11

    .line 724
    move/from16 v26, v7

    .line 725
    .line 726
    move-object/from16 v20, v8

    .line 727
    .line 728
    int-to-long v7, v11

    .line 729
    shl-long v9, v9, v18

    .line 730
    .line 731
    and-long v7, v7, v16

    .line 732
    .line 733
    or-long v21, v9, v7

    .line 734
    .line 735
    iget v7, v13, Ll33;->c:F

    .line 736
    .line 737
    sub-float/2addr v7, v14

    .line 738
    iget v8, v13, Ll33;->d:F

    .line 739
    .line 740
    sub-float/2addr v8, v15

    .line 741
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    int-to-long v9, v7

    .line 746
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 747
    .line 748
    .line 749
    move-result v7

    .line 750
    int-to-long v7, v7

    .line 751
    shl-long v9, v9, v18

    .line 752
    .line 753
    and-long v7, v7, v16

    .line 754
    .line 755
    or-long v23, v9, v7

    .line 756
    .line 757
    const/16 v25, 0x0

    .line 758
    .line 759
    invoke-virtual/range {v20 .. v25}, Lzh1;->e(JJF)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_d

    .line 763
    .line 764
    :cond_25
    move/from16 v26, v7

    .line 765
    .line 766
    move-object v7, v8

    .line 767
    instance-of v8, v12, Lkr2;

    .line 768
    .line 769
    const-wide/16 v9, 0x0

    .line 770
    .line 771
    if-eqz v8, :cond_26

    .line 772
    .line 773
    move-object v8, v12

    .line 774
    check-cast v8, Lkr2;

    .line 775
    .line 776
    iget-object v11, v8, Lkr2;->x:Lsb;

    .line 777
    .line 778
    const/4 v8, 0x0

    .line 779
    iput-object v8, v7, Lzh1;->k:Lfl4;

    .line 780
    .line 781
    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    iput-wide v13, v7, Lzh1;->i:J

    .line 787
    .line 788
    iput-wide v9, v7, Lzh1;->h:J

    .line 789
    .line 790
    const/4 v8, 0x0

    .line 791
    iput v8, v7, Lzh1;->j:F

    .line 792
    .line 793
    const/4 v9, 0x1

    .line 794
    iput-boolean v9, v7, Lzh1;->g:Z

    .line 795
    .line 796
    const/4 v9, 0x0

    .line 797
    iput-boolean v9, v7, Lzh1;->n:Z

    .line 798
    .line 799
    iput-object v11, v7, Lzh1;->l:Lsb;

    .line 800
    .line 801
    invoke-virtual {v7}, Lzh1;->a()V

    .line 802
    .line 803
    .line 804
    goto :goto_d

    .line 805
    :cond_26
    instance-of v11, v12, Lmr2;

    .line 806
    .line 807
    if-eqz v11, :cond_2a

    .line 808
    .line 809
    move-object v11, v12

    .line 810
    check-cast v11, Lmr2;

    .line 811
    .line 812
    iget-object v13, v11, Lmr2;->y:Lsb;

    .line 813
    .line 814
    if-eqz v13, :cond_27

    .line 815
    .line 816
    const/4 v14, 0x0

    .line 817
    iput-object v14, v7, Lzh1;->k:Lfl4;

    .line 818
    .line 819
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    iput-wide v14, v7, Lzh1;->i:J

    .line 825
    .line 826
    iput-wide v9, v7, Lzh1;->h:J

    .line 827
    .line 828
    const/4 v8, 0x0

    .line 829
    iput v8, v7, Lzh1;->j:F

    .line 830
    .line 831
    const/4 v9, 0x1

    .line 832
    iput-boolean v9, v7, Lzh1;->g:Z

    .line 833
    .line 834
    const/4 v9, 0x0

    .line 835
    iput-boolean v9, v7, Lzh1;->n:Z

    .line 836
    .line 837
    iput-object v13, v7, Lzh1;->l:Lsb;

    .line 838
    .line 839
    invoke-virtual {v7}, Lzh1;->a()V

    .line 840
    .line 841
    .line 842
    goto :goto_d

    .line 843
    :cond_27
    const/4 v9, 0x0

    .line 844
    iget-object v10, v11, Lmr2;->x:Lka3;

    .line 845
    .line 846
    iget v11, v10, Lka3;->a:F

    .line 847
    .line 848
    iget v13, v10, Lka3;->b:F

    .line 849
    .line 850
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 851
    .line 852
    .line 853
    move-result v11

    .line 854
    int-to-long v14, v11

    .line 855
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 856
    .line 857
    .line 858
    move-result v11

    .line 859
    int-to-long v8, v11

    .line 860
    shl-long v14, v14, v18

    .line 861
    .line 862
    and-long v8, v8, v16

    .line 863
    .line 864
    or-long v21, v14, v8

    .line 865
    .line 866
    invoke-virtual {v10}, Lka3;->b()F

    .line 867
    .line 868
    .line 869
    move-result v8

    .line 870
    invoke-virtual {v10}, Lka3;->a()F

    .line 871
    .line 872
    .line 873
    move-result v9

    .line 874
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 875
    .line 876
    .line 877
    move-result v8

    .line 878
    int-to-long v14, v8

    .line 879
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 880
    .line 881
    .line 882
    move-result v8

    .line 883
    int-to-long v8, v8

    .line 884
    shl-long v14, v14, v18

    .line 885
    .line 886
    and-long v8, v8, v16

    .line 887
    .line 888
    or-long v23, v14, v8

    .line 889
    .line 890
    iget-wide v8, v10, Lka3;->h:J

    .line 891
    .line 892
    shr-long v8, v8, v18

    .line 893
    .line 894
    long-to-int v8, v8

    .line 895
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 896
    .line 897
    .line 898
    move-result v25

    .line 899
    move-object/from16 v20, v7

    .line 900
    .line 901
    invoke-virtual/range {v20 .. v25}, Lzh1;->e(JJF)V

    .line 902
    .line 903
    .line 904
    :goto_d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 905
    .line 906
    const/16 v8, 0x21

    .line 907
    .line 908
    if-ge v7, v8, :cond_29

    .line 909
    .line 910
    instance-of v7, v12, Lkr2;

    .line 911
    .line 912
    if-nez v7, :cond_28

    .line 913
    .line 914
    instance-of v7, v12, Lmr2;

    .line 915
    .line 916
    if-eqz v7, :cond_29

    .line 917
    .line 918
    check-cast v12, Lmr2;

    .line 919
    .line 920
    iget-object v7, v12, Lmr2;->x:Lka3;

    .line 921
    .line 922
    invoke-static {v7}, Lk30;->z(Lka3;)Z

    .line 923
    .line 924
    .line 925
    move-result v7

    .line 926
    if-nez v7, :cond_29

    .line 927
    .line 928
    :cond_28
    iget-object v7, v1, Lci1;->r:Lne1;

    .line 929
    .line 930
    if-eqz v7, :cond_29

    .line 931
    .line 932
    invoke-interface {v7}, Lne1;->a()Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    :cond_29
    :goto_e
    const/4 v9, 0x1

    .line 936
    goto :goto_f

    .line 937
    :cond_2a
    invoke-static {}, Lp61;->x()V

    .line 938
    .line 939
    .line 940
    return-void

    .line 941
    :cond_2b
    move/from16 v26, v7

    .line 942
    .line 943
    const/4 v9, 0x0

    .line 944
    :goto_f
    iget v7, v3, Lo83;->n:I

    .line 945
    .line 946
    iput v7, v1, Lci1;->A:I

    .line 947
    .line 948
    if-nez v26, :cond_2c

    .line 949
    .line 950
    if-eqz v9, :cond_2f

    .line 951
    .line 952
    :cond_2c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 953
    .line 954
    const/16 v7, 0x1a

    .line 955
    .line 956
    if-lt v1, v7, :cond_2d

    .line 957
    .line 958
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    if-eqz v1, :cond_2e

    .line 963
    .line 964
    invoke-static {v1, v6, v6}, Ldd4;->c(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;)V

    .line 965
    .line 966
    .line 967
    goto :goto_10

    .line 968
    :cond_2d
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 969
    .line 970
    .line 971
    :cond_2e
    :goto_10
    invoke-static {}, Lq9;->l()Z

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    if-eqz v1, :cond_2f

    .line 976
    .line 977
    const/4 v8, 0x0

    .line 978
    invoke-virtual {v6, v8}, Lq9;->O(F)V

    .line 979
    .line 980
    .line 981
    :cond_2f
    iget-boolean v1, v0, Lmm2;->J:Z

    .line 982
    .line 983
    iget-boolean v6, v3, Lo83;->x:Z

    .line 984
    .line 985
    iput-boolean v6, v0, Lmm2;->J:Z

    .line 986
    .line 987
    iget v3, v3, Lo83;->q:F

    .line 988
    .line 989
    iput v3, v0, Lmm2;->N:F

    .line 990
    .line 991
    iget v3, v5, Lcy1;->a:F

    .line 992
    .line 993
    iget v6, v2, Lcy1;->a:F

    .line 994
    .line 995
    cmpg-float v3, v3, v6

    .line 996
    .line 997
    if-nez v3, :cond_30

    .line 998
    .line 999
    iget v3, v5, Lcy1;->b:F

    .line 1000
    .line 1001
    iget v6, v2, Lcy1;->b:F

    .line 1002
    .line 1003
    cmpg-float v3, v3, v6

    .line 1004
    .line 1005
    if-nez v3, :cond_30

    .line 1006
    .line 1007
    iget v3, v5, Lcy1;->c:F

    .line 1008
    .line 1009
    iget v6, v2, Lcy1;->c:F

    .line 1010
    .line 1011
    cmpg-float v3, v3, v6

    .line 1012
    .line 1013
    if-nez v3, :cond_30

    .line 1014
    .line 1015
    iget-wide v5, v5, Lcy1;->d:J

    .line 1016
    .line 1017
    iget-wide v2, v2, Lcy1;->d:J

    .line 1018
    .line 1019
    invoke-static {v5, v6, v2, v3}, Lf14;->a(JJ)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v2

    .line 1023
    if-eqz v2, :cond_30

    .line 1024
    .line 1025
    const/4 v10, 0x1

    .line 1026
    goto :goto_11

    .line 1027
    :cond_30
    const/4 v10, 0x0

    .line 1028
    :goto_11
    if-eqz p1, :cond_32

    .line 1029
    .line 1030
    if-eqz v10, :cond_31

    .line 1031
    .line 1032
    iget-boolean v2, v0, Lmm2;->J:Z

    .line 1033
    .line 1034
    if-eq v1, v2, :cond_32

    .line 1035
    .line 1036
    :cond_31
    iget-object v1, v4, Lxy1;->A:Lsr2;

    .line 1037
    .line 1038
    if-eqz v1, :cond_32

    .line 1039
    .line 1040
    check-cast v1, Lq9;

    .line 1041
    .line 1042
    invoke-virtual {v1, v4}, Lq9;->v(Lxy1;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_32
    if-nez v10, :cond_36

    .line 1046
    .line 1047
    invoke-virtual {v4, v0}, Lxy1;->N(Lmm2;)V

    .line 1048
    .line 1049
    .line 1050
    iget v0, v4, Lxy1;->c0:I

    .line 1051
    .line 1052
    if-lez v0, :cond_36

    .line 1053
    .line 1054
    invoke-static {v4}, Laz1;->a(Lxy1;)Lsr2;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    check-cast v0, Lq9;

    .line 1059
    .line 1060
    iget-object v1, v0, Lq9;->f0:Lab2;

    .line 1061
    .line 1062
    iget-object v1, v1, Lab2;->e:Lxh1;

    .line 1063
    .line 1064
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    iget v2, v4, Lxy1;->c0:I

    .line 1068
    .line 1069
    if-lez v2, :cond_33

    .line 1070
    .line 1071
    iget-object v1, v1, Lxh1;->n:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v1, Lug2;

    .line 1074
    .line 1075
    invoke-virtual {v1, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    const/4 v9, 0x1

    .line 1079
    iput-boolean v9, v4, Lxy1;->b0:Z

    .line 1080
    .line 1081
    :cond_33
    const/4 v14, 0x0

    .line 1082
    invoke-virtual {v0, v14}, Lq9;->I(Lxy1;)V

    .line 1083
    .line 1084
    .line 1085
    return-void

    .line 1086
    :cond_34
    const-string v0, "updateLayerParameters requires a non-null layerBlock"

    .line 1087
    .line 1088
    invoke-static {v0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    throw v0

    .line 1093
    :cond_35
    if-nez v2, :cond_37

    .line 1094
    .line 1095
    :cond_36
    return-void

    .line 1096
    :cond_37
    const-string v0, "null layer with a non-null layerBlock"

    .line 1097
    .line 1098
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    return-void
.end method

.method public final m1(J)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide v1, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long v3, p1, v1

    .line 9
    .line 10
    xor-long/2addr v1, v3

    .line 11
    const-wide v3, 0x100000001L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    sub-long/2addr v1, v3

    .line 17
    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_d

    .line 28
    .line 29
    iget-object v1, v0, Lmm2;->c0:Lrr2;

    .line 30
    .line 31
    if-eqz v1, :cond_c

    .line 32
    .line 33
    iget-boolean v0, v0, Lmm2;->J:Z

    .line 34
    .line 35
    if-eqz v0, :cond_c

    .line 36
    .line 37
    check-cast v1, Lci1;

    .line 38
    .line 39
    const/16 v0, 0x20

    .line 40
    .line 41
    shr-long v4, p1, v0

    .line 42
    .line 43
    long-to-int v4, v4

    .line 44
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-wide v6, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long v8, p1, v6

    .line 54
    .line 55
    long-to-int v4, v8

    .line 56
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v1, v1, Lci1;->n:Lzh1;

    .line 61
    .line 62
    iget-boolean v8, v1, Lzh1;->A:Z

    .line 63
    .line 64
    if-eqz v8, :cond_b

    .line 65
    .line 66
    invoke-virtual {v1}, Lzh1;->d()Lfl4;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    instance-of v8, v1, Llr2;

    .line 71
    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    check-cast v1, Llr2;

    .line 75
    .line 76
    iget-object v0, v1, Llr2;->x:Ll33;

    .line 77
    .line 78
    iget v1, v0, Ll33;->a:F

    .line 79
    .line 80
    cmpg-float v1, v1, v5

    .line 81
    .line 82
    if-gtz v1, :cond_0

    .line 83
    .line 84
    iget v1, v0, Ll33;->c:F

    .line 85
    .line 86
    cmpg-float v1, v5, v1

    .line 87
    .line 88
    if-gez v1, :cond_0

    .line 89
    .line 90
    iget v1, v0, Ll33;->b:F

    .line 91
    .line 92
    cmpg-float v1, v1, v4

    .line 93
    .line 94
    if-gtz v1, :cond_0

    .line 95
    .line 96
    iget v0, v0, Ll33;->d:F

    .line 97
    .line 98
    cmpg-float v0, v4, v0

    .line 99
    .line 100
    if-gez v0, :cond_0

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_0
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x1

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_1
    instance-of v8, v1, Lmr2;

    .line 111
    .line 112
    if-eqz v8, :cond_9

    .line 113
    .line 114
    check-cast v1, Lmr2;

    .line 115
    .line 116
    iget-object v1, v1, Lmr2;->x:Lka3;

    .line 117
    .line 118
    iget v8, v1, Lka3;->a:F

    .line 119
    .line 120
    iget-wide v9, v1, Lka3;->f:J

    .line 121
    .line 122
    iget-wide v11, v1, Lka3;->h:J

    .line 123
    .line 124
    iget-wide v13, v1, Lka3;->g:J

    .line 125
    .line 126
    iget v15, v1, Lka3;->d:F

    .line 127
    .line 128
    move/from16 p0, v0

    .line 129
    .line 130
    iget v0, v1, Lka3;->b:F

    .line 131
    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    iget v2, v1, Lka3;->c:F

    .line 135
    .line 136
    move/from16 p1, v4

    .line 137
    .line 138
    const/16 v17, 0x1

    .line 139
    .line 140
    iget-wide v3, v1, Lka3;->e:J

    .line 141
    .line 142
    cmpg-float v18, v5, v8

    .line 143
    .line 144
    if-ltz v18, :cond_8

    .line 145
    .line 146
    cmpl-float v18, v5, v2

    .line 147
    .line 148
    if-gez v18, :cond_8

    .line 149
    .line 150
    cmpg-float v18, p1, v0

    .line 151
    .line 152
    if-ltz v18, :cond_8

    .line 153
    .line 154
    cmpl-float v18, p1, v15

    .line 155
    .line 156
    if-ltz v18, :cond_2

    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_2
    move-wide/from16 v18, v6

    .line 161
    .line 162
    shr-long v6, v3, p0

    .line 163
    .line 164
    long-to-int v6, v6

    .line 165
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    move/from16 p2, v2

    .line 170
    .line 171
    move-wide/from16 v20, v3

    .line 172
    .line 173
    shr-long v2, v9, p0

    .line 174
    .line 175
    long-to-int v2, v2

    .line 176
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    add-float/2addr v3, v7

    .line 181
    invoke-virtual {v1}, Lka3;->b()F

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    cmpg-float v3, v3, v4

    .line 186
    .line 187
    if-gtz v3, :cond_7

    .line 188
    .line 189
    shr-long v3, v11, p0

    .line 190
    .line 191
    long-to-int v3, v3

    .line 192
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    move v7, v2

    .line 197
    move/from16 v22, v3

    .line 198
    .line 199
    shr-long v2, v13, p0

    .line 200
    .line 201
    long-to-int v2, v2

    .line 202
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    add-float/2addr v3, v4

    .line 207
    invoke-virtual {v1}, Lka3;->b()F

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    cmpg-float v3, v3, v4

    .line 212
    .line 213
    if-gtz v3, :cond_7

    .line 214
    .line 215
    and-long v3, v20, v18

    .line 216
    .line 217
    long-to-int v3, v3

    .line 218
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    and-long v11, v11, v18

    .line 223
    .line 224
    long-to-int v11, v11

    .line 225
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    add-float/2addr v12, v4

    .line 230
    invoke-virtual {v1}, Lka3;->a()F

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    cmpg-float v4, v12, v4

    .line 235
    .line 236
    if-gtz v4, :cond_7

    .line 237
    .line 238
    and-long v9, v9, v18

    .line 239
    .line 240
    long-to-int v4, v9

    .line 241
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    and-long v12, v13, v18

    .line 246
    .line 247
    long-to-int v10, v12

    .line 248
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    add-float/2addr v12, v9

    .line 253
    invoke-virtual {v1}, Lka3;->a()F

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    cmpg-float v9, v12, v9

    .line 258
    .line 259
    if-gtz v9, :cond_7

    .line 260
    .line 261
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    add-float/2addr v6, v8

    .line 266
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    add-float/2addr v3, v0

    .line 271
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    sub-float v7, p2, v7

    .line 276
    .line 277
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    add-float/2addr v4, v0

    .line 282
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    sub-float v2, p2, v0

    .line 287
    .line 288
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    sub-float v0, v15, v0

    .line 293
    .line 294
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    sub-float/2addr v15, v9

    .line 299
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    add-float/2addr v9, v8

    .line 304
    cmpg-float v8, v5, v6

    .line 305
    .line 306
    if-gez v8, :cond_3

    .line 307
    .line 308
    cmpg-float v8, p1, v3

    .line 309
    .line 310
    if-gez v8, :cond_3

    .line 311
    .line 312
    iget-wide v9, v1, Lka3;->e:J

    .line 313
    .line 314
    move v8, v3

    .line 315
    move v7, v6

    .line 316
    move/from16 v6, p1

    .line 317
    .line 318
    invoke-static/range {v5 .. v10}, Lbi4;->C(FFFFJ)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_3
    move/from16 v6, p1

    .line 325
    .line 326
    cmpg-float v3, v5, v9

    .line 327
    .line 328
    if-gez v3, :cond_4

    .line 329
    .line 330
    cmpl-float v3, v6, v15

    .line 331
    .line 332
    if-lez v3, :cond_4

    .line 333
    .line 334
    move v7, v9

    .line 335
    iget-wide v9, v1, Lka3;->h:J

    .line 336
    .line 337
    move v8, v15

    .line 338
    invoke-static/range {v5 .. v10}, Lbi4;->C(FFFFJ)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    goto :goto_3

    .line 343
    :cond_4
    move v3, v7

    .line 344
    cmpl-float v7, v5, v3

    .line 345
    .line 346
    if-lez v7, :cond_5

    .line 347
    .line 348
    cmpg-float v7, v6, v4

    .line 349
    .line 350
    if-gez v7, :cond_5

    .line 351
    .line 352
    iget-wide v9, v1, Lka3;->f:J

    .line 353
    .line 354
    move v7, v3

    .line 355
    move v8, v4

    .line 356
    invoke-static/range {v5 .. v10}, Lbi4;->C(FFFFJ)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    goto :goto_3

    .line 361
    :cond_5
    cmpl-float v3, v5, v2

    .line 362
    .line 363
    if-lez v3, :cond_6

    .line 364
    .line 365
    cmpl-float v3, v6, v0

    .line 366
    .line 367
    if-lez v3, :cond_6

    .line 368
    .line 369
    iget-wide v9, v1, Lka3;->g:J

    .line 370
    .line 371
    move v8, v0

    .line 372
    move v7, v2

    .line 373
    invoke-static/range {v5 .. v10}, Lbi4;->C(FFFFJ)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    goto :goto_3

    .line 378
    :cond_6
    :goto_0
    move/from16 v0, v17

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_7
    move/from16 v6, p1

    .line 382
    .line 383
    invoke-static {}, Lub;->a()Lsb;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-static {v0, v1}, Lsb;->b(Lsb;Lka3;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v5, v6, v0}, Lbi4;->B(FFLsb;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    goto :goto_3

    .line 395
    :cond_8
    :goto_1
    move/from16 v0, v16

    .line 396
    .line 397
    goto :goto_3

    .line 398
    :cond_9
    move v6, v4

    .line 399
    const/16 v16, 0x0

    .line 400
    .line 401
    const/16 v17, 0x1

    .line 402
    .line 403
    instance-of v0, v1, Lkr2;

    .line 404
    .line 405
    if-eqz v0, :cond_a

    .line 406
    .line 407
    check-cast v1, Lkr2;

    .line 408
    .line 409
    iget-object v0, v1, Lkr2;->x:Lsb;

    .line 410
    .line 411
    invoke-static {v5, v6, v0}, Lbi4;->B(FFLsb;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    goto :goto_3

    .line 416
    :cond_a
    invoke-static {}, Lp61;->x()V

    .line 417
    .line 418
    .line 419
    return v16

    .line 420
    :cond_b
    :goto_2
    const/16 v16, 0x0

    .line 421
    .line 422
    const/16 v17, 0x1

    .line 423
    .line 424
    goto :goto_0

    .line 425
    :goto_3
    if-eqz v0, :cond_e

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_c
    const/16 v17, 0x1

    .line 429
    .line 430
    :goto_4
    return v17

    .line 431
    :cond_d
    const/16 v16, 0x0

    .line 432
    .line 433
    :cond_e
    return v16
.end method

.method public final n0()Lk82;
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->G:Lmm2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o0()Lgy1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final q0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->O:Leb2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final u0()Lxy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final v0()Leb2;
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->O:Leb2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Asking for measurement result of unmeasured layout modifier"

    .line 7
    .line 8
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lmm2;->I:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lmm2;->F:Lxy1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lxy1;->H()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final w0()Lk82;
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final x0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmm2;->Q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final y(Lgy1;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lmm2;->F(Lgy1;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
