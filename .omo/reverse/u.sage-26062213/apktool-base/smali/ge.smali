.class public final Lge;
.super Lry1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public B:Lj14;

.field public C:Lpg2;

.field public D:Lhe;

.field public E:J


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lge;->E:J

    .line 7
    .line 8
    return-void
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 7

    .line 1
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Ljt1;->q()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const-wide v0, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/16 p4, 0x20

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget p3, p2, Ldv2;->n:I

    .line 19
    .line 20
    iget v2, p2, Ldv2;->o:I

    .line 21
    .line 22
    int-to-long v3, p3

    .line 23
    shl-long/2addr v3, p4

    .line 24
    int-to-long v5, v2

    .line 25
    and-long/2addr v5, v0

    .line 26
    or-long v2, v3, v5

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p3, p0, Lge;->B:Lj14;

    .line 30
    .line 31
    iget v2, p2, Ldv2;->n:I

    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    iget p3, p2, Ldv2;->o:I

    .line 36
    .line 37
    int-to-long v2, v2

    .line 38
    shl-long/2addr v2, p4

    .line 39
    int-to-long v4, p3

    .line 40
    and-long/2addr v4, v0

    .line 41
    or-long/2addr v2, v4

    .line 42
    iput-wide v2, p0, Lge;->E:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v3, p2, Ldv2;->o:I

    .line 46
    .line 47
    int-to-long v4, v2

    .line 48
    shl-long/2addr v4, p4

    .line 49
    int-to-long v2, v3

    .line 50
    and-long/2addr v2, v0

    .line 51
    or-long/2addr v2, v4

    .line 52
    new-instance v4, Lfe;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-direct {v4, p0, v2, v3, v5}, Lfe;-><init>(Lge;JI)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lfe;

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    invoke-direct {v5, p0, v2, v3, v6}, Lfe;-><init>(Lge;JI)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p3, v4, v2, v2, v5}, Lj14;->a(Lpe1;Ljava/lang/Object;Lbf;Lpe1;)Li14;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iget-object v2, p0, Lge;->D:Lhe;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Li14;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lrs1;

    .line 79
    .line 80
    iget-wide v2, v2, Lrs1;->a:J

    .line 81
    .line 82
    invoke-virtual {p3}, Li14;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    check-cast p3, Lrs1;

    .line 87
    .line 88
    iget-wide v4, p3, Lrs1;->a:J

    .line 89
    .line 90
    iput-wide v4, p0, Lge;->E:J

    .line 91
    .line 92
    :goto_0
    shr-long p3, v2, p4

    .line 93
    .line 94
    long-to-int p3, p3

    .line 95
    and-long/2addr v0, v2

    .line 96
    long-to-int p4, v0

    .line 97
    new-instance v0, Lee;

    .line 98
    .line 99
    invoke-direct {v0, p0, p2, v2, v3}, Lee;-><init>(Lge;Ldv2;J)V

    .line 100
    .line 101
    .line 102
    sget-object p0, Lh01;->n:Lh01;

    .line 103
    .line 104
    invoke-interface {p1, p3, p4, p0, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method
