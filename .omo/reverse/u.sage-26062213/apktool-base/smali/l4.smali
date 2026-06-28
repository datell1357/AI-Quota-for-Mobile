.class public final synthetic Ll4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ll4;->n:I

    .line 2
    .line 3
    iput-object p3, p0, Ll4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Ll4;->n:I

    iput-object p2, p0, Ll4;->o:Ljava/lang/Object;

    iput-object p3, p0, Ll4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu/sage/MainActivity;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    sget v1, Lu/sage/MainActivity;->C:I

    .line 18
    .line 19
    and-int/lit8 v1, p2, 0x3

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    move v1, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    and-int/2addr p2, v4

    .line 30
    invoke-virtual {p1, p2, v1}, Lag1;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object p2, v0, Lu/sage/MainActivity;->t:Lwr3;

    .line 37
    .line 38
    invoke-static {p2, p1}, Lca;->h(Lur3;Lag1;)Lpg2;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v1, Lbt0;

    .line 43
    .line 44
    invoke-direct {v1, v0, p0, p2, v4}, Lbt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    const p0, -0x531bf14e

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v1, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/16 p2, 0x180

    .line 55
    .line 56
    invoke-static {v3, p0, p1, p2}, Lgy3;->a(ZLka0;Lag1;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 61
    .line 62
    .line 63
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 64
    .line 65
    return-object p0
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfc3;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lka0;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {v0, p0, p1, p2}, Lqj0;->l(Lfc3;Lka0;Lag1;I)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lt64;->a:Lt64;

    .line 25
    .line 26
    return-object p0
.end method

.method private final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltr3;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lrj2;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    and-int/lit8 v1, p2, 0x3

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    and-int/2addr p2, v3

    .line 28
    invoke-virtual {p1, p2, v1}, Lag1;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    const-string p2, "indicator"

    .line 35
    .line 36
    invoke-static {p2}, Lon4;->E(Ljava/lang/String;)Lnd2;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    sget-object v1, Lrb0;->a:Lbx3;

    .line 51
    .line 52
    if-ne v3, v1, :cond_2

    .line 53
    .line 54
    :cond_1
    new-instance v3, Lnn0;

    .line 55
    .line 56
    invoke-direct {v3, v0, v4}, Lnn0;-><init>(Ltr3;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    check-cast v3, Lpe1;

    .line 63
    .line 64
    invoke-static {p2, v3}, Ln44;->q0(Lnd2;Lpe1;)Lnd2;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-wide v0, p0, Lrj2;->c:J

    .line 69
    .line 70
    sget-object p0, Lse0;->x:Lll3;

    .line 71
    .line 72
    invoke-static {p0, p1}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p2, v0, v1, p0}, Lbi4;->j(Lnd2;JLjl3;)Lnd2;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0, p1, v2}, Lqx;->a(Lnd2;Lag1;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lag1;->Q()V

    .line 85
    .line 86
    .line 87
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 88
    .line 89
    return-object p0
.end method

.method private final h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka0;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lpd3;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    and-int/lit8 v1, p2, 0x3

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    and-int/2addr p2, v3

    .line 27
    invoke-virtual {p1, p2, v1}, Lag1;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const/4 p2, 0x6

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p0, p1, p2}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 43
    .line 44
    .line 45
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 46
    .line 47
    return-object p0
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lt33;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljf3;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    check-cast p2, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget p2, v0, Lt33;->n:F

    .line 21
    .line 22
    sub-float/2addr p1, p2

    .line 23
    invoke-interface {p0, p1}, Ljf3;->a(F)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    add-float/2addr p0, p2

    .line 28
    iput p0, v0, Lt33;->n:F

    .line 29
    .line 30
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method

.method private final l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly84;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ln8;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 p2, 0x41

    .line 17
    .line 18
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {v0, p0, p1, p2}, Lqj0;->f(Ly84;Ln8;Lag1;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lt64;->a:Lt64;

    .line 26
    .line 27
    return-object p0
.end method

.method private final m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lay3;

    .line 4
    .line 5
    iget-object p0, p0, Ll4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lka0;

    .line 8
    .line 9
    check-cast p1, Lag1;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {v0, p0, p1, p2}, Llx3;->a(Lay3;Lka0;Lag1;I)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lt64;->a:Lt64;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 58

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Ll4;->n:I

    .line 6
    .line 7
    sget-object v3, Lkd2;->b:Lkd2;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    sget-object v8, Lt64;->a:Lt64;

    .line 13
    .line 14
    iget-object v9, v0, Ll4;->p:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v10, v0, Ll4;->o:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v10, Lpe1;

    .line 22
    .line 23
    check-cast v9, Lne1;

    .line 24
    .line 25
    move-object/from16 v0, p1

    .line 26
    .line 27
    check-cast v0, Lag1;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v7}, Lqj0;->f0(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v10, v9, v0, v1}, Ltv4;->c(Lpe1;Lne1;Lag1;I)V

    .line 39
    .line 40
    .line 41
    return-object v8

    .line 42
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Ll4;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Ll4;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Ll4;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Ll4;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Ll4;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :pswitch_5
    invoke-direct/range {p0 .. p2}, Ll4;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :pswitch_6
    invoke-direct/range {p0 .. p2}, Ll4;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :pswitch_7
    check-cast v10, Lka0;

    .line 78
    .line 79
    check-cast v9, Lr12;

    .line 80
    .line 81
    move-object/from16 v0, p1

    .line 82
    .line 83
    check-cast v0, Lag1;

    .line 84
    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    and-int/lit8 v2, v1, 0x3

    .line 92
    .line 93
    if-eq v2, v5, :cond_0

    .line 94
    .line 95
    move v2, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move v2, v6

    .line 98
    :goto_0
    and-int/2addr v1, v7

    .line 99
    invoke-virtual {v0, v1, v2}, Lag1;->N(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v10, v9, v0, v1}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0}, Lag1;->Q()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v8

    .line 117
    :pswitch_8
    const-wide/16 v2, 0x0

    .line 118
    .line 119
    invoke-static {v2, v3, v2, v3}, Lrs1;->a(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    check-cast v10, Lc02;

    .line 124
    .line 125
    check-cast v9, Le12;

    .line 126
    .line 127
    move-object/from16 v2, p1

    .line 128
    .line 129
    check-cast v2, Lqt3;

    .line 130
    .line 131
    check-cast v1, Lmf0;

    .line 132
    .line 133
    new-instance v12, Lg02;

    .line 134
    .line 135
    invoke-direct {v12, v10, v2}, Lg02;-><init>(Lc02;Lqt3;)V

    .line 136
    .line 137
    .line 138
    iget-wide v10, v1, Lmf0;->a:J

    .line 139
    .line 140
    iget-object v1, v9, Le12;->f:Lqh;

    .line 141
    .line 142
    iget-object v3, v9, Le12;->e:Lsh;

    .line 143
    .line 144
    iget-object v5, v9, Le12;->c:Lds2;

    .line 145
    .line 146
    iget-boolean v8, v9, Le12;->b:Z

    .line 147
    .line 148
    iget-object v13, v9, Le12;->a:Ln12;

    .line 149
    .line 150
    iget-object v14, v13, Ln12;->t:Lpg2;

    .line 151
    .line 152
    invoke-interface {v14}, Ltr3;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-boolean v14, v13, Ln12;->b:Z

    .line 156
    .line 157
    if-nez v14, :cond_3

    .line 158
    .line 159
    invoke-interface {v2}, Ljt1;->q()Z

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    if-eqz v14, :cond_2

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    move/from16 v26, v6

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_3
    :goto_2
    move/from16 v26, v7

    .line 170
    .line 171
    :goto_3
    sget-object v27, Lhr2;->o:Lhr2;

    .line 172
    .line 173
    sget-object v28, Lhr2;->n:Lhr2;

    .line 174
    .line 175
    if-eqz v8, :cond_4

    .line 176
    .line 177
    move-object/from16 v14, v28

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_4
    move-object/from16 v14, v27

    .line 181
    .line 182
    :goto_4
    invoke-static {v10, v11, v14}, Ldm0;->p(JLhr2;)V

    .line 183
    .line 184
    .line 185
    sget-object v14, Lhy1;->n:Lhy1;

    .line 186
    .line 187
    if-eqz v8, :cond_5

    .line 188
    .line 189
    invoke-interface {v2}, Ljt1;->getLayoutDirection()Lhy1;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    invoke-virtual {v5, v15}, Lds2;->a(Lhy1;)F

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    invoke-interface {v2, v15}, Las0;->N(F)I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    goto :goto_6

    .line 202
    :cond_5
    invoke-interface {v2}, Ljt1;->getLayoutDirection()Lhy1;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    if-ne v15, v14, :cond_6

    .line 207
    .line 208
    invoke-virtual {v5, v15}, Lds2;->a(Lhy1;)F

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    goto :goto_5

    .line 213
    :cond_6
    invoke-virtual {v5, v15}, Lds2;->b(Lhy1;)F

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    :goto_5
    invoke-interface {v2, v15}, Las0;->N(F)I

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    :goto_6
    if-eqz v8, :cond_7

    .line 222
    .line 223
    move/from16 v29, v7

    .line 224
    .line 225
    invoke-interface {v2}, Ljt1;->getLayoutDirection()Lhy1;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v5, v7}, Lds2;->b(Lhy1;)F

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-interface {v2, v7}, Las0;->N(F)I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    goto :goto_8

    .line 238
    :cond_7
    move/from16 v29, v7

    .line 239
    .line 240
    invoke-interface {v2}, Ljt1;->getLayoutDirection()Lhy1;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-ne v7, v14, :cond_8

    .line 245
    .line 246
    invoke-virtual {v5, v7}, Lds2;->b(Lhy1;)F

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    goto :goto_7

    .line 251
    :cond_8
    invoke-virtual {v5, v7}, Lds2;->a(Lhy1;)F

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    :goto_7
    invoke-interface {v2, v7}, Las0;->N(F)I

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    :goto_8
    iget v4, v5, Lds2;->b:F

    .line 260
    .line 261
    invoke-interface {v2, v4}, Las0;->N(F)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    iget v5, v5, Lds2;->d:F

    .line 266
    .line 267
    invoke-interface {v2, v5}, Las0;->N(F)I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    add-int/2addr v5, v4

    .line 272
    add-int v6, v15, v7

    .line 273
    .line 274
    if-eqz v8, :cond_9

    .line 275
    .line 276
    move/from16 v16, v5

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_9
    move/from16 v16, v6

    .line 280
    .line 281
    :goto_9
    if-eqz v8, :cond_a

    .line 282
    .line 283
    move/from16 v21, v4

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_a
    if-nez v8, :cond_b

    .line 287
    .line 288
    move/from16 v21, v15

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_b
    move/from16 v21, v7

    .line 292
    .line 293
    :goto_a
    sub-int v22, v16, v21

    .line 294
    .line 295
    neg-int v7, v6

    .line 296
    move/from16 p0, v0

    .line 297
    .line 298
    neg-int v0, v5

    .line 299
    invoke-static {v7, v0, v10, v11}, Lnf0;->h(IIJ)J

    .line 300
    .line 301
    .line 302
    move-result-wide v16

    .line 303
    iget-object v0, v9, Le12;->d:Lne1;

    .line 304
    .line 305
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, La12;

    .line 310
    .line 311
    iget-object v7, v0, La12;->c:Luz1;

    .line 312
    .line 313
    move-object/from16 p1, v0

    .line 314
    .line 315
    invoke-static/range {v16 .. v17}, Lmf0;->h(J)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    move-object/from16 p2, v1

    .line 320
    .line 321
    invoke-static/range {v16 .. v17}, Lmf0;->g(J)I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    move/from16 v31, v5

    .line 326
    .line 327
    iget-object v5, v7, Luz1;->a:Lts2;

    .line 328
    .line 329
    invoke-virtual {v5, v0}, Lts2;->h(I)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v7, Luz1;->b:Lts2;

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Lts2;->h(I)V

    .line 335
    .line 336
    .line 337
    const-string v1, "null verticalArrangement when isVertical == true"

    .line 338
    .line 339
    if-eqz v8, :cond_d

    .line 340
    .line 341
    if-eqz v3, :cond_c

    .line 342
    .line 343
    invoke-interface {v3}, Lsh;->a()F

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    goto :goto_c

    .line 348
    :cond_c
    invoke-static {v1}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Lp61;->q()V

    .line 352
    .line 353
    .line 354
    :goto_b
    const/4 v0, 0x0

    .line 355
    goto/16 :goto_70

    .line 356
    .line 357
    :cond_d
    if-eqz p2, :cond_89

    .line 358
    .line 359
    invoke-interface/range {p2 .. p2}, Lqh;->a()F

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    :goto_c
    invoke-interface {v2, v5}, Las0;->N(F)I

    .line 364
    .line 365
    .line 366
    move-result v18

    .line 367
    move-object/from16 v20, v12

    .line 368
    .line 369
    move-object v5, v13

    .line 370
    move-wide/from16 v12, v16

    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, La12;->c()I

    .line 373
    .line 374
    .line 375
    move-result v17

    .line 376
    if-eqz v8, :cond_e

    .line 377
    .line 378
    invoke-static {v10, v11}, Lmf0;->g(J)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    sub-int v7, v7, v31

    .line 383
    .line 384
    :goto_d
    move-object/from16 v32, v1

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :cond_e
    invoke-static {v10, v11}, Lmf0;->h(J)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    sub-int/2addr v7, v6

    .line 392
    goto :goto_d

    .line 393
    :goto_e
    int-to-long v0, v15

    .line 394
    const/16 v33, 0x20

    .line 395
    .line 396
    shl-long v0, v0, v33

    .line 397
    .line 398
    move-object/from16 v34, v9

    .line 399
    .line 400
    int-to-long v8, v4

    .line 401
    const-wide v35, 0xffffffffL

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    and-long v8, v8, v35

    .line 407
    .line 408
    or-long v23, v0, v8

    .line 409
    .line 410
    move-wide v0, v10

    .line 411
    new-instance v11, Ld12;

    .line 412
    .line 413
    move-object v15, v14

    .line 414
    move-object/from16 v9, v34

    .line 415
    .line 416
    iget-boolean v14, v9, Le12;->b:Z

    .line 417
    .line 418
    iget-object v4, v9, Le12;->i:Law;

    .line 419
    .line 420
    iget-object v8, v9, Le12;->j:Lbw;

    .line 421
    .line 422
    iget-object v10, v9, Le12;->a:Ln12;

    .line 423
    .line 424
    move-object/from16 v19, v4

    .line 425
    .line 426
    move-object/from16 v25, v10

    .line 427
    .line 428
    move-object v4, v15

    .line 429
    move-object/from16 v16, v20

    .line 430
    .line 431
    move-object/from16 v15, p1

    .line 432
    .line 433
    move-object/from16 v20, v8

    .line 434
    .line 435
    invoke-direct/range {v11 .. v25}, Ld12;-><init>(JZLa12;Lg02;IILaw;Lbw;IIJLn12;)V

    .line 436
    .line 437
    .line 438
    move-object/from16 p1, v4

    .line 439
    .line 440
    move-object v14, v11

    .line 441
    move-wide v10, v12

    .line 442
    move-object/from16 v12, v16

    .line 443
    .line 444
    move/from16 v13, v17

    .line 445
    .line 446
    move/from16 v8, v21

    .line 447
    .line 448
    move-object/from16 v34, v28

    .line 449
    .line 450
    move/from16 v17, v29

    .line 451
    .line 452
    move/from16 v29, v18

    .line 453
    .line 454
    move/from16 v28, v22

    .line 455
    .line 456
    invoke-static {}, Lk75;->x()Lpo3;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    if-eqz v4, :cond_f

    .line 461
    .line 462
    invoke-virtual {v4}, Lpo3;->e()Lpe1;

    .line 463
    .line 464
    .line 465
    move-result-object v16

    .line 466
    move/from16 v37, v6

    .line 467
    .line 468
    move-object/from16 v6, v16

    .line 469
    .line 470
    :goto_f
    move-object/from16 v38, v12

    .line 471
    .line 472
    goto :goto_10

    .line 473
    :cond_f
    move/from16 v37, v6

    .line 474
    .line 475
    const/4 v6, 0x0

    .line 476
    goto :goto_f

    .line 477
    :goto_10
    invoke-static {v4}, Lk75;->E(Lpo3;)Lpo3;

    .line 478
    .line 479
    .line 480
    move-result-object v12

    .line 481
    move-object/from16 v16, v3

    .line 482
    .line 483
    :try_start_0
    invoke-virtual {v5}, Ln12;->d()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    move/from16 v39, v7

    .line 488
    .line 489
    iget-object v7, v5, Ln12;->e:Lic;

    .line 490
    .line 491
    move/from16 v18, v13

    .line 492
    .line 493
    iget-object v13, v7, Lic;->d:Ljava/lang/Object;

    .line 494
    .line 495
    invoke-static {v3, v15, v13}, Lmt1;->p(ILa12;Ljava/lang/Object;)I

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    if-eq v3, v13, :cond_10

    .line 500
    .line 501
    move/from16 v40, v8

    .line 502
    .line 503
    iget-object v8, v7, Lic;->b:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v8, Lts2;

    .line 506
    .line 507
    invoke-virtual {v8, v13}, Lts2;->h(I)V

    .line 508
    .line 509
    .line 510
    iget-object v7, v7, Lic;->e:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v7, Lh02;

    .line 513
    .line 514
    iget v8, v7, Lh02;->o:I

    .line 515
    .line 516
    if-eq v3, v8, :cond_11

    .line 517
    .line 518
    iput v3, v7, Lh02;->o:I

    .line 519
    .line 520
    div-int/lit8 v3, v3, 0x1e

    .line 521
    .line 522
    mul-int/lit8 v3, v3, 0x1e

    .line 523
    .line 524
    add-int/lit8 v8, v3, -0x64

    .line 525
    .line 526
    move/from16 v19, v13

    .line 527
    .line 528
    const/4 v13, 0x0

    .line 529
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 530
    .line 531
    .line 532
    move-result v8

    .line 533
    add-int/lit16 v3, v3, 0x82

    .line 534
    .line 535
    invoke-static {v8, v3}, Lix;->a0(II)Lms1;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    iget-object v7, v7, Lh02;->n:Lws2;

    .line 540
    .line 541
    invoke-virtual {v7, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    goto :goto_11

    .line 545
    :cond_10
    move/from16 v40, v8

    .line 546
    .line 547
    :cond_11
    move/from16 v19, v13

    .line 548
    .line 549
    :goto_11
    invoke-virtual {v5}, Ln12;->g()I

    .line 550
    .line 551
    .line 552
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v4, v12, v6}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 554
    .line 555
    .line 556
    iget-object v4, v5, Ln12;->s:Lk02;

    .line 557
    .line 558
    iget-object v6, v5, Ln12;->p:Lzx;

    .line 559
    .line 560
    iget-object v4, v4, Lk02;->n:Lgp3;

    .line 561
    .line 562
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v4}, Lnt1;->C(Lgp3;)Lzr3;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    iget-object v4, v4, Lzr3;->c:Ls1;

    .line 570
    .line 571
    iget-object v7, v6, Lzx;->a:Lug2;

    .line 572
    .line 573
    iget v8, v7, Lug2;->p:I

    .line 574
    .line 575
    if-eqz v8, :cond_12

    .line 576
    .line 577
    move/from16 v8, v17

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_12
    const/4 v8, 0x0

    .line 581
    :goto_12
    if-nez v8, :cond_13

    .line 582
    .line 583
    invoke-virtual {v4}, Lw;->isEmpty()Z

    .line 584
    .line 585
    .line 586
    move-result v8

    .line 587
    if-eqz v8, :cond_13

    .line 588
    .line 589
    sget-object v4, Lfs1;->a:Lsf2;

    .line 590
    .line 591
    move/from16 v21, v3

    .line 592
    .line 593
    goto/16 :goto_1b

    .line 594
    .line 595
    :cond_13
    new-instance v8, Lsf2;

    .line 596
    .line 597
    invoke-direct {v8}, Lsf2;-><init>()V

    .line 598
    .line 599
    .line 600
    iget-object v6, v6, Lzx;->a:Lug2;

    .line 601
    .line 602
    iget v6, v6, Lug2;->p:I

    .line 603
    .line 604
    if-eqz v6, :cond_1b

    .line 605
    .line 606
    iget v6, v7, Lug2;->p:I

    .line 607
    .line 608
    const-string v12, "MutableVector is empty."

    .line 609
    .line 610
    if-eqz v6, :cond_1a

    .line 611
    .line 612
    iget-object v13, v7, Lug2;->n:[Ljava/lang/Object;

    .line 613
    .line 614
    const/16 v30, 0x0

    .line 615
    .line 616
    aget-object v20, v13, v30

    .line 617
    .line 618
    move/from16 v21, v3

    .line 619
    .line 620
    move-object/from16 v3, v20

    .line 621
    .line 622
    check-cast v3, Lvz1;

    .line 623
    .line 624
    iget v3, v3, Lvz1;->a:I

    .line 625
    .line 626
    move-object/from16 v20, v12

    .line 627
    .line 628
    const/4 v12, 0x0

    .line 629
    :goto_13
    if-ge v12, v6, :cond_15

    .line 630
    .line 631
    aget-object v22, v13, v12

    .line 632
    .line 633
    move/from16 v23, v6

    .line 634
    .line 635
    move-object/from16 v6, v22

    .line 636
    .line 637
    check-cast v6, Lvz1;

    .line 638
    .line 639
    iget v6, v6, Lvz1;->a:I

    .line 640
    .line 641
    if-ge v6, v3, :cond_14

    .line 642
    .line 643
    move v3, v6

    .line 644
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 645
    .line 646
    move/from16 v6, v23

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_15
    if-ltz v3, :cond_16

    .line 650
    .line 651
    goto :goto_14

    .line 652
    :cond_16
    const-string v6, "negative minIndex"

    .line 653
    .line 654
    invoke-static {v6}, Ldr1;->a(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    :goto_14
    iget v6, v7, Lug2;->p:I

    .line 658
    .line 659
    if-eqz v6, :cond_19

    .line 660
    .line 661
    iget-object v7, v7, Lug2;->n:[Ljava/lang/Object;

    .line 662
    .line 663
    const/16 v30, 0x0

    .line 664
    .line 665
    aget-object v12, v7, v30

    .line 666
    .line 667
    check-cast v12, Lvz1;

    .line 668
    .line 669
    iget v12, v12, Lvz1;->b:I

    .line 670
    .line 671
    const/4 v13, 0x0

    .line 672
    :goto_15
    if-ge v13, v6, :cond_18

    .line 673
    .line 674
    aget-object v20, v7, v13

    .line 675
    .line 676
    move/from16 v22, v3

    .line 677
    .line 678
    move-object/from16 v3, v20

    .line 679
    .line 680
    check-cast v3, Lvz1;

    .line 681
    .line 682
    iget v3, v3, Lvz1;->b:I

    .line 683
    .line 684
    if-le v3, v12, :cond_17

    .line 685
    .line 686
    move v12, v3

    .line 687
    :cond_17
    add-int/lit8 v13, v13, 0x1

    .line 688
    .line 689
    move/from16 v3, v22

    .line 690
    .line 691
    goto :goto_15

    .line 692
    :cond_18
    move/from16 v22, v3

    .line 693
    .line 694
    invoke-virtual {v15}, La12;->c()I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    add-int/lit8 v3, v3, -0x1

    .line 699
    .line 700
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    move v6, v3

    .line 705
    move/from16 v3, v22

    .line 706
    .line 707
    goto :goto_16

    .line 708
    :cond_19
    invoke-static/range {v20 .. v20}, Lq73;->l(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_b

    .line 712
    .line 713
    :cond_1a
    move-object/from16 v20, v12

    .line 714
    .line 715
    invoke-static/range {v20 .. v20}, Lq73;->l(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    goto/16 :goto_b

    .line 719
    .line 720
    :cond_1b
    move/from16 v21, v3

    .line 721
    .line 722
    move/from16 v3, v17

    .line 723
    .line 724
    const/4 v6, 0x0

    .line 725
    :goto_16
    invoke-virtual {v4}, Lw;->a()I

    .line 726
    .line 727
    .line 728
    move-result v7

    .line 729
    const/4 v12, 0x0

    .line 730
    :goto_17
    if-ge v12, v7, :cond_1e

    .line 731
    .line 732
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v13

    .line 736
    check-cast v13, Li02;

    .line 737
    .line 738
    move-object/from16 v20, v4

    .line 739
    .line 740
    iget-object v4, v13, Li02;->a:Ljava/lang/Object;

    .line 741
    .line 742
    iget v13, v13, Li02;->c:I

    .line 743
    .line 744
    invoke-static {v13, v15, v4}, Lmt1;->p(ILa12;Ljava/lang/Object;)I

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    if-gt v3, v4, :cond_1c

    .line 749
    .line 750
    if-gt v4, v6, :cond_1c

    .line 751
    .line 752
    goto :goto_18

    .line 753
    :cond_1c
    if-ltz v4, :cond_1d

    .line 754
    .line 755
    invoke-virtual {v15}, La12;->c()I

    .line 756
    .line 757
    .line 758
    move-result v13

    .line 759
    if-ge v4, v13, :cond_1d

    .line 760
    .line 761
    invoke-virtual {v8, v4}, Lsf2;->a(I)V

    .line 762
    .line 763
    .line 764
    :cond_1d
    :goto_18
    add-int/lit8 v12, v12, 0x1

    .line 765
    .line 766
    move-object/from16 v4, v20

    .line 767
    .line 768
    goto :goto_17

    .line 769
    :cond_1e
    if-gt v3, v6, :cond_1f

    .line 770
    .line 771
    :goto_19
    invoke-virtual {v8, v3}, Lsf2;->a(I)V

    .line 772
    .line 773
    .line 774
    if-eq v3, v6, :cond_1f

    .line 775
    .line 776
    add-int/lit8 v3, v3, 0x1

    .line 777
    .line 778
    goto :goto_19

    .line 779
    :cond_1f
    iget v3, v8, Lsf2;->b:I

    .line 780
    .line 781
    if-nez v3, :cond_20

    .line 782
    .line 783
    goto :goto_1a

    .line 784
    :cond_20
    iget-object v4, v8, Lsf2;->a:[I

    .line 785
    .line 786
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    const/4 v13, 0x0

    .line 790
    invoke-static {v4, v13, v3}, Ljava/util/Arrays;->sort([III)V

    .line 791
    .line 792
    .line 793
    :goto_1a
    move-object v4, v8

    .line 794
    :goto_1b
    invoke-interface {v2}, Ljt1;->q()Z

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    if-nez v3, :cond_22

    .line 799
    .line 800
    if-nez v26, :cond_21

    .line 801
    .line 802
    goto :goto_1c

    .line 803
    :cond_21
    iget-object v3, v5, Ln12;->x:Lxh1;

    .line 804
    .line 805
    iget-object v3, v3, Lxh1;->o:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v3, Lwe;

    .line 808
    .line 809
    iget-object v3, v3, Lwe;->o:Lws2;

    .line 810
    .line 811
    invoke-virtual {v3}, Lws2;->getValue()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    check-cast v3, Ljava/lang/Number;

    .line 816
    .line 817
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    goto :goto_1d

    .line 822
    :cond_22
    :goto_1c
    iget v3, v5, Ln12;->h:F

    .line 823
    .line 824
    :goto_1d
    iget-boolean v6, v9, Le12;->b:Z

    .line 825
    .line 826
    iget-object v15, v5, Ln12;->o:Ldh;

    .line 827
    .line 828
    invoke-interface {v2}, Ljt1;->q()Z

    .line 829
    .line 830
    .line 831
    move-result v22

    .line 832
    iget-object v7, v9, Le12;->g:Lqi0;

    .line 833
    .line 834
    iget-object v8, v5, Ln12;->w:Lpg2;

    .line 835
    .line 836
    iget-object v9, v9, Le12;->h:Lls3;

    .line 837
    .line 838
    iget-boolean v12, v5, Ln12;->i:Z

    .line 839
    .line 840
    if-ltz v40, :cond_23

    .line 841
    .line 842
    goto :goto_1e

    .line 843
    :cond_23
    const-string v13, "invalid beforeContentPadding"

    .line 844
    .line 845
    invoke-static {v13}, Ldr1;->a(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    :goto_1e
    if-ltz v28, :cond_24

    .line 849
    .line 850
    goto :goto_1f

    .line 851
    :cond_24
    const-string v13, "invalid afterContentPadding"

    .line 852
    .line 853
    invoke-static {v13}, Ldr1;->a(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    :goto_1f
    sget-object v13, Lh01;->n:Lh01;

    .line 857
    .line 858
    move/from16 v20, v3

    .line 859
    .line 860
    iget-object v3, v14, Ld12;->b:La12;

    .line 861
    .line 862
    sget-object v41, Lg01;->n:Lg01;

    .line 863
    .line 864
    if-gtz v18, :cond_27

    .line 865
    .line 866
    invoke-static {v10, v11}, Lmf0;->j(J)I

    .line 867
    .line 868
    .line 869
    move-result v16

    .line 870
    invoke-static {v10, v11}, Lmf0;->i(J)I

    .line 871
    .line 872
    .line 873
    move-result v17

    .line 874
    new-instance v18, Ljava/util/ArrayList;

    .line 875
    .line 876
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .line 878
    .line 879
    iget-object v3, v3, La12;->d:Lhb;

    .line 880
    .line 881
    const/16 v24, 0x0

    .line 882
    .line 883
    const/16 v25, 0x0

    .line 884
    .line 885
    move-object/from16 v19, v3

    .line 886
    .line 887
    move/from16 v21, v6

    .line 888
    .line 889
    move-object/from16 v20, v14

    .line 890
    .line 891
    move/from16 v23, v26

    .line 892
    .line 893
    invoke-virtual/range {v15 .. v25}, Ldh;->h(IILjava/util/ArrayList;Lhb;Ld12;ZZZII)V

    .line 894
    .line 895
    .line 896
    move-object/from16 v19, v15

    .line 897
    .line 898
    move-object/from16 v6, v20

    .line 899
    .line 900
    move/from16 v18, v21

    .line 901
    .line 902
    if-nez v22, :cond_25

    .line 903
    .line 904
    invoke-virtual/range {v19 .. v19}, Ldh;->g()J

    .line 905
    .line 906
    .line 907
    if-nez p0, :cond_25

    .line 908
    .line 909
    const/4 v3, 0x0

    .line 910
    invoke-static {v3, v10, v11}, Lnf0;->f(IJ)I

    .line 911
    .line 912
    .line 913
    move-result v16

    .line 914
    invoke-static {v3, v10, v11}, Lnf0;->e(IJ)I

    .line 915
    .line 916
    .line 917
    move-result v17

    .line 918
    :cond_25
    new-instance v3, Lt3;

    .line 919
    .line 920
    const/16 v4, 0xb

    .line 921
    .line 922
    invoke-direct {v3, v4}, Lt3;-><init>(I)V

    .line 923
    .line 924
    .line 925
    add-int v4, v16, v37

    .line 926
    .line 927
    invoke-static {v4, v0, v1}, Lnf0;->f(IJ)I

    .line 928
    .line 929
    .line 930
    move-result v4

    .line 931
    add-int v8, v17, v31

    .line 932
    .line 933
    invoke-static {v8, v0, v1}, Lnf0;->e(IJ)I

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    invoke-interface {v2, v4, v0, v13, v3}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 938
    .line 939
    .line 940
    move-result-object v16

    .line 941
    move/from16 v15, v40

    .line 942
    .line 943
    neg-int v0, v15

    .line 944
    add-int v25, v39, v28

    .line 945
    .line 946
    if-eqz v18, :cond_26

    .line 947
    .line 948
    move-object/from16 v27, v34

    .line 949
    .line 950
    :cond_26
    new-instance v11, Lf12;

    .line 951
    .line 952
    const/16 v18, 0x0

    .line 953
    .line 954
    const/16 v26, 0x0

    .line 955
    .line 956
    const/4 v12, 0x0

    .line 957
    const/4 v13, 0x0

    .line 958
    const/4 v14, 0x0

    .line 959
    const/4 v15, 0x0

    .line 960
    const/16 v17, 0x0

    .line 961
    .line 962
    iget-wide v3, v6, Ld12;->d:J

    .line 963
    .line 964
    move/from16 v24, v0

    .line 965
    .line 966
    move-wide/from16 v21, v3

    .line 967
    .line 968
    move-object/from16 v19, v7

    .line 969
    .line 970
    move-object/from16 v20, v38

    .line 971
    .line 972
    move-object/from16 v23, v41

    .line 973
    .line 974
    invoke-direct/range {v11 .. v29}, Lf12;-><init>(Lg12;IZFLeb2;FZLqi0;Las0;JLjava/util/List;IIILhr2;II)V

    .line 975
    .line 976
    .line 977
    move-object/from16 v42, v5

    .line 978
    .line 979
    move-object v5, v2

    .line 980
    :goto_20
    move-object v0, v11

    .line 981
    goto/16 :goto_6f

    .line 982
    .line 983
    :cond_27
    move/from16 v23, v18

    .line 984
    .line 985
    move/from16 v18, v6

    .line 986
    .line 987
    move-object v6, v14

    .line 988
    move/from16 v14, v23

    .line 989
    .line 990
    move/from16 v24, v12

    .line 991
    .line 992
    move/from16 v23, v26

    .line 993
    .line 994
    move/from16 v26, v29

    .line 995
    .line 996
    move-object/from16 v12, v38

    .line 997
    .line 998
    move-object/from16 v38, v7

    .line 999
    .line 1000
    move/from16 v7, v19

    .line 1001
    .line 1002
    move-object/from16 v19, v15

    .line 1003
    .line 1004
    move/from16 v15, v40

    .line 1005
    .line 1006
    if-lt v7, v14, :cond_28

    .line 1007
    .line 1008
    add-int/lit8 v7, v14, -0x1

    .line 1009
    .line 1010
    const/16 v21, 0x0

    .line 1011
    .line 1012
    :cond_28
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 1013
    .line 1014
    .line 1015
    move-result v25

    .line 1016
    sub-int v21, v21, v25

    .line 1017
    .line 1018
    if-nez v7, :cond_29

    .line 1019
    .line 1020
    if-gez v21, :cond_29

    .line 1021
    .line 1022
    add-int v25, v25, v21

    .line 1023
    .line 1024
    const/16 v21, 0x0

    .line 1025
    .line 1026
    :cond_29
    move/from16 v29, v7

    .line 1027
    .line 1028
    new-instance v7, Lvh;

    .line 1029
    .line 1030
    invoke-direct {v7}, Lvh;-><init>()V

    .line 1031
    .line 1032
    .line 1033
    move-object/from16 v40, v9

    .line 1034
    .line 1035
    neg-int v9, v15

    .line 1036
    if-gez v26, :cond_2a

    .line 1037
    .line 1038
    move/from16 v42, v26

    .line 1039
    .line 1040
    :goto_21
    move-object/from16 v43, v13

    .line 1041
    .line 1042
    goto :goto_22

    .line 1043
    :cond_2a
    const/16 v42, 0x0

    .line 1044
    .line 1045
    goto :goto_21

    .line 1046
    :goto_22
    add-int v13, v9, v42

    .line 1047
    .line 1048
    add-int v21, v21, v13

    .line 1049
    .line 1050
    move-wide/from16 v45, v0

    .line 1051
    .line 1052
    move-object/from16 v44, v2

    .line 1053
    .line 1054
    move-object/from16 v42, v5

    .line 1055
    .line 1056
    move/from16 v5, v21

    .line 1057
    .line 1058
    const/4 v2, 0x0

    .line 1059
    :goto_23
    iget-wide v0, v6, Ld12;->d:J

    .line 1060
    .line 1061
    if-gez v5, :cond_2b

    .line 1062
    .line 1063
    if-lez v29, :cond_2b

    .line 1064
    .line 1065
    move-object/from16 v47, v8

    .line 1066
    .line 1067
    add-int/lit8 v8, v29, -0x1

    .line 1068
    .line 1069
    invoke-virtual {v6, v8, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    const/4 v1, 0x0

    .line 1074
    invoke-virtual {v7, v1, v0}, Lvh;->add(ILjava/lang/Object;)V

    .line 1075
    .line 1076
    .line 1077
    iget v1, v0, Lg12;->r:I

    .line 1078
    .line 1079
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    invoke-virtual {v0}, Lg12;->a()I

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    add-int/2addr v5, v0

    .line 1088
    move/from16 v29, v8

    .line 1089
    .line 1090
    move-object/from16 v8, v47

    .line 1091
    .line 1092
    goto :goto_23

    .line 1093
    :cond_2b
    move-object/from16 v47, v8

    .line 1094
    .line 1095
    if-ge v5, v13, :cond_2c

    .line 1096
    .line 1097
    sub-int v5, v13, v5

    .line 1098
    .line 1099
    sub-int v25, v25, v5

    .line 1100
    .line 1101
    move v5, v13

    .line 1102
    :cond_2c
    move/from16 v8, v25

    .line 1103
    .line 1104
    sub-int/2addr v5, v13

    .line 1105
    add-int v48, v39, v28

    .line 1106
    .line 1107
    move/from16 v21, v2

    .line 1108
    .line 1109
    if-gez v48, :cond_2d

    .line 1110
    .line 1111
    const/4 v2, 0x0

    .line 1112
    :goto_24
    move/from16 v49, v9

    .line 1113
    .line 1114
    goto :goto_25

    .line 1115
    :cond_2d
    move/from16 v2, v48

    .line 1116
    .line 1117
    goto :goto_24

    .line 1118
    :goto_25
    neg-int v9, v5

    .line 1119
    move-object/from16 v52, v3

    .line 1120
    .line 1121
    move/from16 v50, v5

    .line 1122
    .line 1123
    move/from16 v51, v29

    .line 1124
    .line 1125
    const/4 v5, 0x0

    .line 1126
    const/16 v25, 0x0

    .line 1127
    .line 1128
    :goto_26
    iget v3, v7, Lvh;->p:I

    .line 1129
    .line 1130
    if-ge v5, v3, :cond_2f

    .line 1131
    .line 1132
    if-lt v9, v2, :cond_2e

    .line 1133
    .line 1134
    invoke-virtual {v7, v5}, Lvh;->d(I)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move/from16 v25, v17

    .line 1138
    .line 1139
    goto :goto_26

    .line 1140
    :cond_2e
    add-int/lit8 v51, v51, 0x1

    .line 1141
    .line 1142
    invoke-virtual {v7, v5}, Lvh;->get(I)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    check-cast v3, Lg12;

    .line 1147
    .line 1148
    invoke-virtual {v3}, Lg12;->a()I

    .line 1149
    .line 1150
    .line 1151
    move-result v3

    .line 1152
    add-int/2addr v3, v9

    .line 1153
    add-int/lit8 v5, v5, 0x1

    .line 1154
    .line 1155
    move v9, v3

    .line 1156
    goto :goto_26

    .line 1157
    :cond_2f
    move/from16 v3, v21

    .line 1158
    .line 1159
    move/from16 v5, v51

    .line 1160
    .line 1161
    move/from16 v51, v25

    .line 1162
    .line 1163
    :goto_27
    if-ge v5, v14, :cond_31

    .line 1164
    .line 1165
    if-lt v9, v2, :cond_30

    .line 1166
    .line 1167
    if-lez v9, :cond_30

    .line 1168
    .line 1169
    invoke-virtual {v7}, Lvh;->isEmpty()Z

    .line 1170
    .line 1171
    .line 1172
    move-result v21

    .line 1173
    if-eqz v21, :cond_31

    .line 1174
    .line 1175
    :cond_30
    move/from16 v21, v2

    .line 1176
    .line 1177
    goto :goto_28

    .line 1178
    :cond_31
    move/from16 v2, v39

    .line 1179
    .line 1180
    goto :goto_2a

    .line 1181
    :goto_28
    invoke-virtual {v6, v5, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    invoke-virtual {v2}, Lg12;->a()I

    .line 1186
    .line 1187
    .line 1188
    move-result v25

    .line 1189
    add-int v9, v25, v9

    .line 1190
    .line 1191
    if-gt v9, v13, :cond_32

    .line 1192
    .line 1193
    move/from16 v25, v9

    .line 1194
    .line 1195
    add-int/lit8 v9, v14, -0x1

    .line 1196
    .line 1197
    if-eq v5, v9, :cond_33

    .line 1198
    .line 1199
    add-int/lit8 v9, v5, 0x1

    .line 1200
    .line 1201
    invoke-virtual {v2}, Lg12;->a()I

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    sub-int v50, v50, v2

    .line 1206
    .line 1207
    move/from16 v29, v9

    .line 1208
    .line 1209
    move/from16 v51, v17

    .line 1210
    .line 1211
    goto :goto_29

    .line 1212
    :cond_32
    move/from16 v25, v9

    .line 1213
    .line 1214
    :cond_33
    iget v9, v2, Lg12;->r:I

    .line 1215
    .line 1216
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 1217
    .line 1218
    .line 1219
    move-result v3

    .line 1220
    invoke-virtual {v7, v2}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    :goto_29
    add-int/lit8 v5, v5, 0x1

    .line 1224
    .line 1225
    move/from16 v2, v21

    .line 1226
    .line 1227
    move/from16 v9, v25

    .line 1228
    .line 1229
    goto :goto_27

    .line 1230
    :goto_2a
    if-ge v9, v2, :cond_36

    .line 1231
    .line 1232
    sub-int v13, v2, v9

    .line 1233
    .line 1234
    sub-int v50, v50, v13

    .line 1235
    .line 1236
    add-int/2addr v9, v13

    .line 1237
    move/from16 v21, v9

    .line 1238
    .line 1239
    move/from16 v9, v50

    .line 1240
    .line 1241
    :goto_2b
    if-ge v9, v15, :cond_34

    .line 1242
    .line 1243
    if-lez v29, :cond_34

    .line 1244
    .line 1245
    move/from16 v25, v9

    .line 1246
    .line 1247
    add-int/lit8 v9, v29, -0x1

    .line 1248
    .line 1249
    move/from16 v39, v13

    .line 1250
    .line 1251
    invoke-virtual {v6, v9, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v13

    .line 1255
    move/from16 v29, v9

    .line 1256
    .line 1257
    const/4 v9, 0x0

    .line 1258
    invoke-virtual {v7, v9, v13}, Lvh;->add(ILjava/lang/Object;)V

    .line 1259
    .line 1260
    .line 1261
    iget v9, v13, Lg12;->r:I

    .line 1262
    .line 1263
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 1264
    .line 1265
    .line 1266
    move-result v3

    .line 1267
    invoke-virtual {v13}, Lg12;->a()I

    .line 1268
    .line 1269
    .line 1270
    move-result v9

    .line 1271
    add-int v9, v9, v25

    .line 1272
    .line 1273
    move/from16 v13, v39

    .line 1274
    .line 1275
    goto :goto_2b

    .line 1276
    :cond_34
    move/from16 v25, v9

    .line 1277
    .line 1278
    move/from16 v39, v13

    .line 1279
    .line 1280
    add-int v13, v8, v39

    .line 1281
    .line 1282
    if-gez v25, :cond_35

    .line 1283
    .line 1284
    add-int v13, v13, v25

    .line 1285
    .line 1286
    add-int v9, v21, v25

    .line 1287
    .line 1288
    move/from16 v21, v3

    .line 1289
    .line 1290
    move/from16 v25, v14

    .line 1291
    .line 1292
    move/from16 v3, v29

    .line 1293
    .line 1294
    const/4 v14, 0x0

    .line 1295
    goto :goto_2c

    .line 1296
    :cond_35
    move/from16 v9, v25

    .line 1297
    .line 1298
    move/from16 v25, v14

    .line 1299
    .line 1300
    move v14, v9

    .line 1301
    move/from16 v9, v21

    .line 1302
    .line 1303
    move/from16 v21, v3

    .line 1304
    .line 1305
    move/from16 v3, v29

    .line 1306
    .line 1307
    goto :goto_2c

    .line 1308
    :cond_36
    move/from16 v21, v3

    .line 1309
    .line 1310
    move v13, v8

    .line 1311
    move/from16 v25, v14

    .line 1312
    .line 1313
    move/from16 v3, v29

    .line 1314
    .line 1315
    move/from16 v14, v50

    .line 1316
    .line 1317
    :goto_2c
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 1318
    .line 1319
    .line 1320
    move-result v29

    .line 1321
    move/from16 v39, v15

    .line 1322
    .line 1323
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->signum(I)I

    .line 1324
    .line 1325
    .line 1326
    move-result v15

    .line 1327
    move/from16 v50, v5

    .line 1328
    .line 1329
    invoke-static {v13}, Ljava/lang/Integer;->signum(I)I

    .line 1330
    .line 1331
    .line 1332
    move-result v5

    .line 1333
    if-ne v15, v5, :cond_37

    .line 1334
    .line 1335
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    .line 1336
    .line 1337
    .line 1338
    move-result v5

    .line 1339
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v5

    .line 1343
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 1344
    .line 1345
    .line 1346
    move-result v15

    .line 1347
    if-lt v5, v15, :cond_37

    .line 1348
    .line 1349
    int-to-float v5, v13

    .line 1350
    goto :goto_2d

    .line 1351
    :cond_37
    move/from16 v5, v20

    .line 1352
    .line 1353
    :goto_2d
    sub-float v15, v20, v5

    .line 1354
    .line 1355
    const/16 v20, 0x0

    .line 1356
    .line 1357
    if-eqz v22, :cond_38

    .line 1358
    .line 1359
    if-le v13, v8, :cond_38

    .line 1360
    .line 1361
    cmpg-float v29, v15, v20

    .line 1362
    .line 1363
    if-gtz v29, :cond_38

    .line 1364
    .line 1365
    sub-int/2addr v13, v8

    .line 1366
    int-to-float v8, v13

    .line 1367
    add-float v20, v8, v15

    .line 1368
    .line 1369
    :cond_38
    move/from16 v8, v20

    .line 1370
    .line 1371
    if-ltz v14, :cond_39

    .line 1372
    .line 1373
    goto :goto_2e

    .line 1374
    :cond_39
    const-string v13, "negative currentFirstItemScrollOffset"

    .line 1375
    .line 1376
    invoke-static {v13}, Ldr1;->a(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    :goto_2e
    neg-int v13, v14

    .line 1380
    invoke-virtual {v7}, Lvh;->first()Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v15

    .line 1384
    check-cast v15, Lg12;

    .line 1385
    .line 1386
    if-gtz v39, :cond_3a

    .line 1387
    .line 1388
    if-gez v26, :cond_3b

    .line 1389
    .line 1390
    :cond_3a
    move/from16 v39, v5

    .line 1391
    .line 1392
    goto :goto_2f

    .line 1393
    :cond_3b
    move/from16 v39, v5

    .line 1394
    .line 1395
    move/from16 v53, v8

    .line 1396
    .line 1397
    :cond_3c
    move v5, v14

    .line 1398
    move-object v8, v15

    .line 1399
    const/4 v14, 0x0

    .line 1400
    goto :goto_31

    .line 1401
    :goto_2f
    invoke-virtual {v7}, Lvh;->a()I

    .line 1402
    .line 1403
    .line 1404
    move-result v5

    .line 1405
    move/from16 v53, v8

    .line 1406
    .line 1407
    const/4 v8, 0x0

    .line 1408
    :goto_30
    if-ge v8, v5, :cond_3c

    .line 1409
    .line 1410
    invoke-virtual {v7, v8}, Lvh;->get(I)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v20

    .line 1414
    check-cast v20, Lg12;

    .line 1415
    .line 1416
    move/from16 v29, v5

    .line 1417
    .line 1418
    invoke-virtual/range {v20 .. v20}, Lg12;->a()I

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    if-eqz v14, :cond_3c

    .line 1423
    .line 1424
    if-gt v5, v14, :cond_3c

    .line 1425
    .line 1426
    invoke-virtual {v7}, Lvh;->a()I

    .line 1427
    .line 1428
    .line 1429
    move-result v20

    .line 1430
    move/from16 v54, v5

    .line 1431
    .line 1432
    add-int/lit8 v5, v20, -0x1

    .line 1433
    .line 1434
    if-eq v8, v5, :cond_3c

    .line 1435
    .line 1436
    sub-int v14, v14, v54

    .line 1437
    .line 1438
    add-int/lit8 v8, v8, 0x1

    .line 1439
    .line 1440
    invoke-virtual {v7, v8}, Lvh;->get(I)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v5

    .line 1444
    move-object v15, v5

    .line 1445
    check-cast v15, Lg12;

    .line 1446
    .line 1447
    move/from16 v5, v29

    .line 1448
    .line 1449
    goto :goto_30

    .line 1450
    :goto_31
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    .line 1451
    .line 1452
    .line 1453
    move-result v15

    .line 1454
    add-int/lit8 v3, v3, -0x1

    .line 1455
    .line 1456
    if-gt v15, v3, :cond_3e

    .line 1457
    .line 1458
    const/4 v14, 0x0

    .line 1459
    :goto_32
    if-nez v14, :cond_3d

    .line 1460
    .line 1461
    new-instance v14, Ljava/util/ArrayList;

    .line 1462
    .line 1463
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .line 1465
    .line 1466
    :cond_3d
    move/from16 v20, v5

    .line 1467
    .line 1468
    invoke-virtual {v6, v3, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v5

    .line 1472
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    if-eq v3, v15, :cond_3f

    .line 1476
    .line 1477
    add-int/lit8 v3, v3, -0x1

    .line 1478
    .line 1479
    move/from16 v5, v20

    .line 1480
    .line 1481
    goto :goto_32

    .line 1482
    :cond_3e
    move/from16 v20, v5

    .line 1483
    .line 1484
    const/4 v14, 0x0

    .line 1485
    :cond_3f
    iget-object v3, v4, Lsf2;->a:[I

    .line 1486
    .line 1487
    iget v5, v4, Lsf2;->b:I

    .line 1488
    .line 1489
    add-int/lit8 v5, v5, -0x1

    .line 1490
    .line 1491
    move-object/from16 v29, v3

    .line 1492
    .line 1493
    :goto_33
    const/4 v3, -0x1

    .line 1494
    if-ge v3, v5, :cond_42

    .line 1495
    .line 1496
    aget v3, v29, v5

    .line 1497
    .line 1498
    if-ge v3, v15, :cond_41

    .line 1499
    .line 1500
    if-nez v14, :cond_40

    .line 1501
    .line 1502
    new-instance v14, Ljava/util/ArrayList;

    .line 1503
    .line 1504
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    .line 1506
    .line 1507
    :cond_40
    invoke-virtual {v6, v3, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    :cond_41
    add-int/lit8 v5, v5, -0x1

    .line 1515
    .line 1516
    goto :goto_33

    .line 1517
    :cond_42
    if-nez v14, :cond_43

    .line 1518
    .line 1519
    move-object/from16 v14, v41

    .line 1520
    .line 1521
    :cond_43
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1522
    .line 1523
    .line 1524
    move-result v3

    .line 1525
    move/from16 v5, v21

    .line 1526
    .line 1527
    const/4 v15, 0x0

    .line 1528
    :goto_34
    if-ge v15, v3, :cond_44

    .line 1529
    .line 1530
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v21

    .line 1534
    move/from16 v29, v3

    .line 1535
    .line 1536
    move-object/from16 v3, v21

    .line 1537
    .line 1538
    check-cast v3, Lg12;

    .line 1539
    .line 1540
    iget v3, v3, Lg12;->r:I

    .line 1541
    .line 1542
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 1543
    .line 1544
    .line 1545
    move-result v5

    .line 1546
    add-int/lit8 v15, v15, 0x1

    .line 1547
    .line 1548
    move/from16 v3, v29

    .line 1549
    .line 1550
    goto :goto_34

    .line 1551
    :cond_44
    invoke-static {v7}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v3

    .line 1555
    check-cast v3, Lg12;

    .line 1556
    .line 1557
    iget v3, v3, Lg12;->a:I

    .line 1558
    .line 1559
    add-int/lit8 v15, v25, -0x1

    .line 1560
    .line 1561
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 1562
    .line 1563
    .line 1564
    move-result v3

    .line 1565
    invoke-static {v7}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v15

    .line 1569
    check-cast v15, Lg12;

    .line 1570
    .line 1571
    iget v15, v15, Lg12;->a:I

    .line 1572
    .line 1573
    add-int/lit8 v15, v15, 0x1

    .line 1574
    .line 1575
    if-gt v15, v3, :cond_46

    .line 1576
    .line 1577
    const/16 v21, 0x0

    .line 1578
    .line 1579
    :goto_35
    if-nez v21, :cond_45

    .line 1580
    .line 1581
    new-instance v21, Ljava/util/ArrayList;

    .line 1582
    .line 1583
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .line 1585
    .line 1586
    :cond_45
    move/from16 v29, v5

    .line 1587
    .line 1588
    move-object/from16 v5, v21

    .line 1589
    .line 1590
    move/from16 v21, v13

    .line 1591
    .line 1592
    invoke-virtual {v6, v15, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v13

    .line 1596
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    .line 1598
    .line 1599
    if-eq v15, v3, :cond_47

    .line 1600
    .line 1601
    add-int/lit8 v15, v15, 0x1

    .line 1602
    .line 1603
    move/from16 v13, v21

    .line 1604
    .line 1605
    move-object/from16 v21, v5

    .line 1606
    .line 1607
    move/from16 v5, v29

    .line 1608
    .line 1609
    goto :goto_35

    .line 1610
    :cond_46
    move/from16 v29, v5

    .line 1611
    .line 1612
    move/from16 v21, v13

    .line 1613
    .line 1614
    const/4 v5, 0x0

    .line 1615
    :cond_47
    if-eqz v5, :cond_48

    .line 1616
    .line 1617
    invoke-static {v5}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v13

    .line 1621
    check-cast v13, Lg12;

    .line 1622
    .line 1623
    iget v13, v13, Lg12;->a:I

    .line 1624
    .line 1625
    if-le v13, v3, :cond_48

    .line 1626
    .line 1627
    invoke-static {v5}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v3

    .line 1631
    check-cast v3, Lg12;

    .line 1632
    .line 1633
    iget v3, v3, Lg12;->a:I

    .line 1634
    .line 1635
    :cond_48
    iget-object v13, v4, Lsf2;->a:[I

    .line 1636
    .line 1637
    iget v4, v4, Lsf2;->b:I

    .line 1638
    .line 1639
    move-object v15, v5

    .line 1640
    const/4 v5, 0x0

    .line 1641
    :goto_36
    if-ge v5, v4, :cond_4b

    .line 1642
    .line 1643
    move/from16 v54, v4

    .line 1644
    .line 1645
    aget v4, v13, v5

    .line 1646
    .line 1647
    if-le v4, v3, :cond_4a

    .line 1648
    .line 1649
    if-nez v15, :cond_49

    .line 1650
    .line 1651
    new-instance v15, Ljava/util/ArrayList;

    .line 1652
    .line 1653
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1654
    .line 1655
    .line 1656
    :cond_49
    invoke-virtual {v6, v4, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v4

    .line 1660
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    .line 1662
    .line 1663
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    .line 1664
    .line 1665
    move/from16 v4, v54

    .line 1666
    .line 1667
    goto :goto_36

    .line 1668
    :cond_4b
    if-nez v15, :cond_4c

    .line 1669
    .line 1670
    move-object/from16 v15, v41

    .line 1671
    .line 1672
    :cond_4c
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1673
    .line 1674
    .line 1675
    move-result v3

    .line 1676
    move/from16 v5, v29

    .line 1677
    .line 1678
    const/4 v4, 0x0

    .line 1679
    :goto_37
    if-ge v4, v3, :cond_4d

    .line 1680
    .line 1681
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v13

    .line 1685
    check-cast v13, Lg12;

    .line 1686
    .line 1687
    iget v13, v13, Lg12;->r:I

    .line 1688
    .line 1689
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 1690
    .line 1691
    .line 1692
    move-result v5

    .line 1693
    add-int/lit8 v4, v4, 0x1

    .line 1694
    .line 1695
    goto :goto_37

    .line 1696
    :cond_4d
    invoke-virtual {v7}, Lvh;->first()Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v3

    .line 1700
    invoke-static {v8, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    if-eqz v3, :cond_4e

    .line 1705
    .line 1706
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1707
    .line 1708
    .line 1709
    move-result v3

    .line 1710
    if-eqz v3, :cond_4e

    .line 1711
    .line 1712
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v3

    .line 1716
    if-eqz v3, :cond_4e

    .line 1717
    .line 1718
    move/from16 v3, v17

    .line 1719
    .line 1720
    goto :goto_38

    .line 1721
    :cond_4e
    const/4 v3, 0x0

    .line 1722
    :goto_38
    if-eqz v18, :cond_4f

    .line 1723
    .line 1724
    move v4, v5

    .line 1725
    goto :goto_39

    .line 1726
    :cond_4f
    move v4, v9

    .line 1727
    :goto_39
    invoke-static {v4, v10, v11}, Lnf0;->f(IJ)I

    .line 1728
    .line 1729
    .line 1730
    move-result v4

    .line 1731
    if-eqz v18, :cond_50

    .line 1732
    .line 1733
    move v5, v9

    .line 1734
    :cond_50
    invoke-static {v5, v10, v11}, Lnf0;->e(IJ)I

    .line 1735
    .line 1736
    .line 1737
    move-result v5

    .line 1738
    if-eqz v18, :cond_51

    .line 1739
    .line 1740
    move v13, v5

    .line 1741
    :goto_3a
    move/from16 v54, v3

    .line 1742
    .line 1743
    goto :goto_3b

    .line 1744
    :cond_51
    move v13, v4

    .line 1745
    goto :goto_3a

    .line 1746
    :goto_3b
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    .line 1747
    .line 1748
    .line 1749
    move-result v3

    .line 1750
    if-ge v9, v3, :cond_52

    .line 1751
    .line 1752
    move/from16 v29, v17

    .line 1753
    .line 1754
    goto :goto_3c

    .line 1755
    :cond_52
    const/16 v29, 0x0

    .line 1756
    .line 1757
    :goto_3c
    if-eqz v29, :cond_54

    .line 1758
    .line 1759
    if-nez v21, :cond_53

    .line 1760
    .line 1761
    goto :goto_3d

    .line 1762
    :cond_53
    const-string v3, "non-zero itemsScrollOffset"

    .line 1763
    .line 1764
    invoke-static {v3}, Ldr1;->c(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    :cond_54
    :goto_3d
    new-instance v3, Ljava/util/ArrayList;

    .line 1768
    .line 1769
    invoke-virtual {v7}, Lvh;->a()I

    .line 1770
    .line 1771
    .line 1772
    move-result v55

    .line 1773
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1774
    .line 1775
    .line 1776
    move-result v56

    .line 1777
    add-int v56, v56, v55

    .line 1778
    .line 1779
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1780
    .line 1781
    .line 1782
    move-result v55

    .line 1783
    move-object/from16 v57, v6

    .line 1784
    .line 1785
    add-int v6, v55, v56

    .line 1786
    .line 1787
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1788
    .line 1789
    .line 1790
    if-eqz v29, :cond_5d

    .line 1791
    .line 1792
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 1793
    .line 1794
    .line 1795
    move-result v6

    .line 1796
    if-eqz v6, :cond_55

    .line 1797
    .line 1798
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 1799
    .line 1800
    .line 1801
    move-result v6

    .line 1802
    if-eqz v6, :cond_55

    .line 1803
    .line 1804
    goto :goto_3e

    .line 1805
    :cond_55
    const-string v6, "no extra items"

    .line 1806
    .line 1807
    invoke-static {v6}, Ldr1;->a(Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    :goto_3e
    invoke-virtual {v7}, Lvh;->a()I

    .line 1811
    .line 1812
    .line 1813
    move-result v6

    .line 1814
    new-array v14, v6, [I

    .line 1815
    .line 1816
    const/4 v15, 0x0

    .line 1817
    :goto_3f
    if-ge v15, v6, :cond_56

    .line 1818
    .line 1819
    invoke-virtual {v7, v15}, Lvh;->get(I)Ljava/lang/Object;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v21

    .line 1823
    move-object/from16 v55, v8

    .line 1824
    .line 1825
    move-object/from16 v8, v21

    .line 1826
    .line 1827
    check-cast v8, Lg12;

    .line 1828
    .line 1829
    iget v8, v8, Lg12;->m:I

    .line 1830
    .line 1831
    aput v8, v14, v15

    .line 1832
    .line 1833
    add-int/lit8 v15, v15, 0x1

    .line 1834
    .line 1835
    move-object/from16 v8, v55

    .line 1836
    .line 1837
    goto :goto_3f

    .line 1838
    :cond_56
    move-object/from16 v55, v8

    .line 1839
    .line 1840
    new-array v8, v6, [I

    .line 1841
    .line 1842
    if-eqz v18, :cond_58

    .line 1843
    .line 1844
    if-eqz v16, :cond_57

    .line 1845
    .line 1846
    move-object/from16 v15, v16

    .line 1847
    .line 1848
    invoke-interface {v15, v13, v12, v14, v8}, Lsh;->j(ILgb2;[I[I)V

    .line 1849
    .line 1850
    .line 1851
    move/from16 p1, v6

    .line 1852
    .line 1853
    move-object/from16 v16, v8

    .line 1854
    .line 1855
    move/from16 v32, v9

    .line 1856
    .line 1857
    move-wide v8, v10

    .line 1858
    move/from16 v10, v25

    .line 1859
    .line 1860
    move-object/from16 v6, v43

    .line 1861
    .line 1862
    goto :goto_40

    .line 1863
    :cond_57
    invoke-static/range {v32 .. v32}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 1864
    .line 1865
    .line 1866
    invoke-static {}, Lp61;->q()V

    .line 1867
    .line 1868
    .line 1869
    goto/16 :goto_b

    .line 1870
    .line 1871
    :cond_58
    if-eqz p2, :cond_5c

    .line 1872
    .line 1873
    move-object/from16 v15, p1

    .line 1874
    .line 1875
    move/from16 p1, v6

    .line 1876
    .line 1877
    move-object/from16 v16, v8

    .line 1878
    .line 1879
    move/from16 v32, v9

    .line 1880
    .line 1881
    move-wide v8, v10

    .line 1882
    move/from16 v10, v25

    .line 1883
    .line 1884
    move-object/from16 v6, v43

    .line 1885
    .line 1886
    move-object/from16 v11, p2

    .line 1887
    .line 1888
    invoke-interface/range {v11 .. v16}, Lqh;->i(Lgb2;I[ILhy1;[I)V

    .line 1889
    .line 1890
    .line 1891
    :goto_40
    new-instance v11, Lms1;

    .line 1892
    .line 1893
    add-int/lit8 v13, p1, -0x1

    .line 1894
    .line 1895
    move/from16 v15, v17

    .line 1896
    .line 1897
    const/4 v14, 0x0

    .line 1898
    invoke-direct {v11, v14, v13, v15}, Lks1;-><init>(III)V

    .line 1899
    .line 1900
    .line 1901
    iget v13, v11, Lks1;->o:I

    .line 1902
    .line 1903
    iget v11, v11, Lks1;->p:I

    .line 1904
    .line 1905
    if-lez v11, :cond_59

    .line 1906
    .line 1907
    if-gez v13, :cond_5a

    .line 1908
    .line 1909
    :cond_59
    if-gez v11, :cond_5b

    .line 1910
    .line 1911
    if-gtz v13, :cond_5b

    .line 1912
    .line 1913
    :cond_5a
    const/4 v14, 0x0

    .line 1914
    :goto_41
    aget v15, v16, v14

    .line 1915
    .line 1916
    invoke-virtual {v7, v14}, Lvh;->get(I)Ljava/lang/Object;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v17

    .line 1920
    move/from16 v21, v11

    .line 1921
    .line 1922
    move-object/from16 v11, v17

    .line 1923
    .line 1924
    check-cast v11, Lg12;

    .line 1925
    .line 1926
    invoke-virtual {v11, v15, v4, v5}, Lg12;->d(III)V

    .line 1927
    .line 1928
    .line 1929
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    .line 1931
    .line 1932
    if-eq v14, v13, :cond_5b

    .line 1933
    .line 1934
    add-int v14, v14, v21

    .line 1935
    .line 1936
    move/from16 v11, v21

    .line 1937
    .line 1938
    goto :goto_41

    .line 1939
    :cond_5b
    move-object/from16 p2, v12

    .line 1940
    .line 1941
    goto/16 :goto_45

    .line 1942
    .line 1943
    :cond_5c
    const-string v0, "null horizontalArrangement when isVertical == false"

    .line 1944
    .line 1945
    invoke-static {v0}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 1946
    .line 1947
    .line 1948
    invoke-static {}, Lp61;->q()V

    .line 1949
    .line 1950
    .line 1951
    goto/16 :goto_b

    .line 1952
    .line 1953
    :cond_5d
    move-object/from16 v55, v8

    .line 1954
    .line 1955
    move/from16 v32, v9

    .line 1956
    .line 1957
    move-wide v8, v10

    .line 1958
    move/from16 v10, v25

    .line 1959
    .line 1960
    move-object/from16 v6, v43

    .line 1961
    .line 1962
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 1963
    .line 1964
    .line 1965
    move-result v11

    .line 1966
    move/from16 v16, v21

    .line 1967
    .line 1968
    const/4 v13, 0x0

    .line 1969
    :goto_42
    if-ge v13, v11, :cond_5e

    .line 1970
    .line 1971
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v17

    .line 1975
    move/from16 p1, v11

    .line 1976
    .line 1977
    move-object/from16 v11, v17

    .line 1978
    .line 1979
    check-cast v11, Lg12;

    .line 1980
    .line 1981
    invoke-virtual {v11}, Lg12;->a()I

    .line 1982
    .line 1983
    .line 1984
    move-result v17

    .line 1985
    move-object/from16 p2, v12

    .line 1986
    .line 1987
    sub-int v12, v16, v17

    .line 1988
    .line 1989
    invoke-virtual {v11, v12, v4, v5}, Lg12;->d(III)V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    .line 1994
    .line 1995
    add-int/lit8 v13, v13, 0x1

    .line 1996
    .line 1997
    move/from16 v11, p1

    .line 1998
    .line 1999
    move/from16 v16, v12

    .line 2000
    .line 2001
    move-object/from16 v12, p2

    .line 2002
    .line 2003
    goto :goto_42

    .line 2004
    :cond_5e
    move-object/from16 p2, v12

    .line 2005
    .line 2006
    invoke-virtual {v7}, Lvh;->a()I

    .line 2007
    .line 2008
    .line 2009
    move-result v11

    .line 2010
    move/from16 v13, v21

    .line 2011
    .line 2012
    const/4 v12, 0x0

    .line 2013
    :goto_43
    if-ge v12, v11, :cond_5f

    .line 2014
    .line 2015
    invoke-virtual {v7, v12}, Lvh;->get(I)Ljava/lang/Object;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v14

    .line 2019
    check-cast v14, Lg12;

    .line 2020
    .line 2021
    invoke-virtual {v14, v13, v4, v5}, Lg12;->d(III)V

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {v14}, Lg12;->a()I

    .line 2028
    .line 2029
    .line 2030
    move-result v14

    .line 2031
    add-int/2addr v13, v14

    .line 2032
    add-int/lit8 v12, v12, 0x1

    .line 2033
    .line 2034
    goto :goto_43

    .line 2035
    :cond_5f
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 2036
    .line 2037
    .line 2038
    move-result v11

    .line 2039
    const/4 v12, 0x0

    .line 2040
    :goto_44
    if-ge v12, v11, :cond_60

    .line 2041
    .line 2042
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v14

    .line 2046
    check-cast v14, Lg12;

    .line 2047
    .line 2048
    invoke-virtual {v14, v13, v4, v5}, Lg12;->d(III)V

    .line 2049
    .line 2050
    .line 2051
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    .line 2053
    .line 2054
    invoke-virtual {v14}, Lg12;->a()I

    .line 2055
    .line 2056
    .line 2057
    move-result v14

    .line 2058
    add-int/2addr v13, v14

    .line 2059
    add-int/lit8 v12, v12, 0x1

    .line 2060
    .line 2061
    goto :goto_44

    .line 2062
    :cond_60
    :goto_45
    if-nez v24, :cond_61

    .line 2063
    .line 2064
    move-object/from16 v11, v52

    .line 2065
    .line 2066
    iget-object v12, v11, La12;->d:Lhb;

    .line 2067
    .line 2068
    move/from16 v16, v4

    .line 2069
    .line 2070
    move/from16 v17, v5

    .line 2071
    .line 2072
    move/from16 v21, v18

    .line 2073
    .line 2074
    move-object/from16 v15, v19

    .line 2075
    .line 2076
    move/from16 v24, v20

    .line 2077
    .line 2078
    move/from16 v25, v32

    .line 2079
    .line 2080
    move-object/from16 v20, v57

    .line 2081
    .line 2082
    move-object/from16 v18, v3

    .line 2083
    .line 2084
    move-object/from16 v19, v12

    .line 2085
    .line 2086
    invoke-virtual/range {v15 .. v25}, Ldh;->h(IILjava/util/ArrayList;Lhb;Ld12;ZZZII)V

    .line 2087
    .line 2088
    .line 2089
    move/from16 v3, v17

    .line 2090
    .line 2091
    move-object/from16 v14, v20

    .line 2092
    .line 2093
    move/from16 v5, v21

    .line 2094
    .line 2095
    move/from16 v20, v24

    .line 2096
    .line 2097
    move/from16 v13, v25

    .line 2098
    .line 2099
    :goto_46
    move/from16 v12, v22

    .line 2100
    .line 2101
    goto :goto_47

    .line 2102
    :cond_61
    move/from16 v11, v18

    .line 2103
    .line 2104
    move-object/from16 v18, v3

    .line 2105
    .line 2106
    move v3, v5

    .line 2107
    move v5, v11

    .line 2108
    move-object/from16 v15, v19

    .line 2109
    .line 2110
    move/from16 v13, v32

    .line 2111
    .line 2112
    move-object/from16 v11, v52

    .line 2113
    .line 2114
    move-object/from16 v14, v57

    .line 2115
    .line 2116
    goto :goto_46

    .line 2117
    :goto_47
    if-nez v12, :cond_65

    .line 2118
    .line 2119
    invoke-virtual {v15}, Ldh;->g()J

    .line 2120
    .line 2121
    .line 2122
    if-nez p0, :cond_65

    .line 2123
    .line 2124
    if-eqz v5, :cond_62

    .line 2125
    .line 2126
    move v15, v3

    .line 2127
    :goto_48
    move-object/from16 p0, v7

    .line 2128
    .line 2129
    const/4 v7, 0x0

    .line 2130
    goto :goto_49

    .line 2131
    :cond_62
    move v15, v4

    .line 2132
    goto :goto_48

    .line 2133
    :goto_49
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 2134
    .line 2135
    .line 2136
    move-result v4

    .line 2137
    invoke-static {v4, v8, v9}, Lnf0;->f(IJ)I

    .line 2138
    .line 2139
    .line 2140
    move-result v4

    .line 2141
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 2142
    .line 2143
    .line 2144
    move-result v3

    .line 2145
    invoke-static {v3, v8, v9}, Lnf0;->e(IJ)I

    .line 2146
    .line 2147
    .line 2148
    move-result v3

    .line 2149
    if-eqz v5, :cond_63

    .line 2150
    .line 2151
    move v7, v3

    .line 2152
    goto :goto_4a

    .line 2153
    :cond_63
    move v7, v4

    .line 2154
    :goto_4a
    if-eq v7, v15, :cond_64

    .line 2155
    .line 2156
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    .line 2157
    .line 2158
    .line 2159
    move-result v8

    .line 2160
    const/4 v9, 0x0

    .line 2161
    :goto_4b
    if-ge v9, v8, :cond_64

    .line 2162
    .line 2163
    move-object/from16 v15, v18

    .line 2164
    .line 2165
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v16

    .line 2169
    move/from16 p1, v3

    .line 2170
    .line 2171
    move-object/from16 v3, v16

    .line 2172
    .line 2173
    check-cast v3, Lg12;

    .line 2174
    .line 2175
    iput v7, v3, Lg12;->t:I

    .line 2176
    .line 2177
    add-int/lit8 v9, v9, 0x1

    .line 2178
    .line 2179
    move/from16 v3, p1

    .line 2180
    .line 2181
    goto :goto_4b

    .line 2182
    :cond_64
    move/from16 p1, v3

    .line 2183
    .line 2184
    move-object/from16 v15, v18

    .line 2185
    .line 2186
    move/from16 v3, p1

    .line 2187
    .line 2188
    goto :goto_4c

    .line 2189
    :cond_65
    move-object/from16 p0, v7

    .line 2190
    .line 2191
    move-object/from16 v15, v18

    .line 2192
    .line 2193
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lvh;->g()Ljava/lang/Object;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v7

    .line 2197
    check-cast v7, Lg12;

    .line 2198
    .line 2199
    if-eqz v7, :cond_66

    .line 2200
    .line 2201
    iget v7, v7, Lg12;->a:I

    .line 2202
    .line 2203
    goto :goto_4d

    .line 2204
    :cond_66
    const/4 v7, 0x0

    .line 2205
    :goto_4d
    invoke-virtual/range {p0 .. p0}, Lvh;->i()Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v8

    .line 2209
    check-cast v8, Lg12;

    .line 2210
    .line 2211
    if-eqz v8, :cond_67

    .line 2212
    .line 2213
    iget v8, v8, Lg12;->a:I

    .line 2214
    .line 2215
    goto :goto_4e

    .line 2216
    :cond_67
    const/4 v8, 0x0

    .line 2217
    :goto_4e
    iget-object v9, v11, La12;->b:Ly02;

    .line 2218
    .line 2219
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2220
    .line 2221
    .line 2222
    sget-object v9, Lfs1;->a:Lsf2;

    .line 2223
    .line 2224
    if-eqz v40, :cond_7c

    .line 2225
    .line 2226
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2227
    .line 2228
    .line 2229
    move-result v11

    .line 2230
    if-nez v11, :cond_7c

    .line 2231
    .line 2232
    iget v11, v9, Lsf2;->b:I

    .line 2233
    .line 2234
    if-eqz v11, :cond_7c

    .line 2235
    .line 2236
    sub-int/2addr v8, v7

    .line 2237
    if-ltz v8, :cond_68

    .line 2238
    .line 2239
    if-nez v11, :cond_69

    .line 2240
    .line 2241
    :cond_68
    move-object/from16 v43, v6

    .line 2242
    .line 2243
    goto :goto_52

    .line 2244
    :cond_69
    const/4 v8, 0x0

    .line 2245
    invoke-static {v8, v11}, Lix;->a0(II)Lms1;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v11

    .line 2249
    iget v8, v11, Lks1;->n:I

    .line 2250
    .line 2251
    iget v11, v11, Lks1;->o:I

    .line 2252
    .line 2253
    move-object/from16 v43, v6

    .line 2254
    .line 2255
    if-gt v8, v11, :cond_6b

    .line 2256
    .line 2257
    const/16 v16, -0x1

    .line 2258
    .line 2259
    :goto_4f
    invoke-virtual {v9, v8}, Lsf2;->c(I)I

    .line 2260
    .line 2261
    .line 2262
    move-result v6

    .line 2263
    if-gt v6, v7, :cond_6a

    .line 2264
    .line 2265
    invoke-virtual {v9, v8}, Lsf2;->c(I)I

    .line 2266
    .line 2267
    .line 2268
    move-result v16

    .line 2269
    if-eq v8, v11, :cond_6a

    .line 2270
    .line 2271
    add-int/lit8 v8, v8, 0x1

    .line 2272
    .line 2273
    goto :goto_4f

    .line 2274
    :cond_6a
    move/from16 v6, v16

    .line 2275
    .line 2276
    :goto_50
    const/4 v7, -0x1

    .line 2277
    goto :goto_51

    .line 2278
    :cond_6b
    const/4 v6, -0x1

    .line 2279
    goto :goto_50

    .line 2280
    :goto_51
    if-ne v6, v7, :cond_6c

    .line 2281
    .line 2282
    sget-object v6, Lfs1;->a:Lsf2;

    .line 2283
    .line 2284
    goto :goto_53

    .line 2285
    :cond_6c
    new-instance v7, Lsf2;

    .line 2286
    .line 2287
    const/4 v8, 0x1

    .line 2288
    invoke-direct {v7, v8}, Lsf2;-><init>(I)V

    .line 2289
    .line 2290
    .line 2291
    invoke-virtual {v7, v6}, Lsf2;->a(I)V

    .line 2292
    .line 2293
    .line 2294
    move-object v6, v7

    .line 2295
    goto :goto_53

    .line 2296
    :goto_52
    move-object v6, v9

    .line 2297
    :goto_53
    new-instance v7, Ljava/util/ArrayList;

    .line 2298
    .line 2299
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2300
    .line 2301
    .line 2302
    new-instance v8, Ljava/util/ArrayList;

    .line 2303
    .line 2304
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2305
    .line 2306
    .line 2307
    move-result v11

    .line 2308
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2309
    .line 2310
    .line 2311
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2312
    .line 2313
    .line 2314
    move-result v11

    .line 2315
    move/from16 v22, v12

    .line 2316
    .line 2317
    const/4 v12, 0x0

    .line 2318
    :goto_54
    if-ge v12, v11, :cond_6f

    .line 2319
    .line 2320
    move/from16 p1, v11

    .line 2321
    .line 2322
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v11

    .line 2326
    move/from16 v16, v12

    .line 2327
    .line 2328
    move-object v12, v11

    .line 2329
    check-cast v12, Lg12;

    .line 2330
    .line 2331
    iget v12, v12, Lg12;->a:I

    .line 2332
    .line 2333
    move/from16 v17, v2

    .line 2334
    .line 2335
    iget-object v2, v9, Lsf2;->a:[I

    .line 2336
    .line 2337
    move-object/from16 v18, v2

    .line 2338
    .line 2339
    iget v2, v9, Lsf2;->b:I

    .line 2340
    .line 2341
    move-object/from16 v19, v9

    .line 2342
    .line 2343
    const/4 v9, 0x0

    .line 2344
    :goto_55
    if-ge v9, v2, :cond_6e

    .line 2345
    .line 2346
    move/from16 v21, v2

    .line 2347
    .line 2348
    aget v2, v18, v9

    .line 2349
    .line 2350
    if-ne v2, v12, :cond_6d

    .line 2351
    .line 2352
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    .line 2354
    .line 2355
    goto :goto_56

    .line 2356
    :cond_6d
    add-int/lit8 v9, v9, 0x1

    .line 2357
    .line 2358
    move/from16 v2, v21

    .line 2359
    .line 2360
    goto :goto_55

    .line 2361
    :cond_6e
    :goto_56
    add-int/lit8 v12, v16, 0x1

    .line 2362
    .line 2363
    move/from16 v11, p1

    .line 2364
    .line 2365
    move/from16 v2, v17

    .line 2366
    .line 2367
    move-object/from16 v9, v19

    .line 2368
    .line 2369
    goto :goto_54

    .line 2370
    :cond_6f
    move/from16 v17, v2

    .line 2371
    .line 2372
    iget-object v2, v6, Lsf2;->a:[I

    .line 2373
    .line 2374
    iget v6, v6, Lsf2;->b:I

    .line 2375
    .line 2376
    const/4 v9, 0x0

    .line 2377
    :goto_57
    if-ge v9, v6, :cond_7b

    .line 2378
    .line 2379
    aget v11, v2, v9

    .line 2380
    .line 2381
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2382
    .line 2383
    .line 2384
    move-result v12

    .line 2385
    move-object/from16 v18, v2

    .line 2386
    .line 2387
    const/4 v2, 0x0

    .line 2388
    const/16 v16, 0x0

    .line 2389
    .line 2390
    :goto_58
    if-ge v2, v12, :cond_71

    .line 2391
    .line 2392
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2393
    .line 2394
    .line 2395
    move-result-object v19

    .line 2396
    add-int/lit8 v2, v2, 0x1

    .line 2397
    .line 2398
    move/from16 p1, v2

    .line 2399
    .line 2400
    move-object/from16 v2, v19

    .line 2401
    .line 2402
    check-cast v2, Lg12;

    .line 2403
    .line 2404
    iget v2, v2, Lg12;->a:I

    .line 2405
    .line 2406
    if-ne v2, v11, :cond_70

    .line 2407
    .line 2408
    move/from16 v2, v16

    .line 2409
    .line 2410
    :goto_59
    const/4 v12, -0x1

    .line 2411
    goto :goto_5a

    .line 2412
    :cond_70
    add-int/lit8 v16, v16, 0x1

    .line 2413
    .line 2414
    move/from16 v2, p1

    .line 2415
    .line 2416
    goto :goto_58

    .line 2417
    :cond_71
    const/4 v2, -0x1

    .line 2418
    goto :goto_59

    .line 2419
    :goto_5a
    if-ne v2, v12, :cond_72

    .line 2420
    .line 2421
    invoke-virtual {v14, v11, v0, v1}, Ld12;->a(IJ)Lg12;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v16

    .line 2425
    :goto_5b
    move-object/from16 v12, v16

    .line 2426
    .line 2427
    goto :goto_5c

    .line 2428
    :cond_72
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v16

    .line 2432
    check-cast v16, Lg12;

    .line 2433
    .line 2434
    goto :goto_5b

    .line 2435
    :goto_5c
    invoke-static {v12, v5}, Lc75;->L(Lg12;Z)I

    .line 2436
    .line 2437
    .line 2438
    move-result v16

    .line 2439
    move-wide/from16 v23, v0

    .line 2440
    .line 2441
    const/4 v1, -0x1

    .line 2442
    if-ne v2, v1, :cond_73

    .line 2443
    .line 2444
    const/high16 v1, -0x80000000

    .line 2445
    .line 2446
    goto :goto_5e

    .line 2447
    :cond_73
    const/4 v1, 0x0

    .line 2448
    invoke-virtual {v12, v1}, Lg12;->b(I)J

    .line 2449
    .line 2450
    .line 2451
    move-result-wide v56

    .line 2452
    if-eqz v5, :cond_74

    .line 2453
    .line 2454
    and-long v1, v56, v35

    .line 2455
    .line 2456
    :goto_5d
    long-to-int v1, v1

    .line 2457
    goto :goto_5e

    .line 2458
    :cond_74
    shr-long v1, v56, v33

    .line 2459
    .line 2460
    goto :goto_5d

    .line 2461
    :goto_5e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2462
    .line 2463
    .line 2464
    move-result v2

    .line 2465
    const/4 v0, 0x0

    .line 2466
    :goto_5f
    if-ge v0, v2, :cond_76

    .line 2467
    .line 2468
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2469
    .line 2470
    .line 2471
    move-result-object v19

    .line 2472
    move/from16 v21, v0

    .line 2473
    .line 2474
    move-object/from16 v0, v19

    .line 2475
    .line 2476
    check-cast v0, Lg12;

    .line 2477
    .line 2478
    iget v0, v0, Lg12;->a:I

    .line 2479
    .line 2480
    if-eq v0, v11, :cond_75

    .line 2481
    .line 2482
    goto :goto_60

    .line 2483
    :cond_75
    add-int/lit8 v0, v21, 0x1

    .line 2484
    .line 2485
    goto :goto_5f

    .line 2486
    :cond_76
    const/16 v19, 0x0

    .line 2487
    .line 2488
    :goto_60
    move-object/from16 v0, v19

    .line 2489
    .line 2490
    check-cast v0, Lg12;

    .line 2491
    .line 2492
    if-eqz v0, :cond_78

    .line 2493
    .line 2494
    const/4 v2, 0x0

    .line 2495
    invoke-virtual {v0, v2}, Lg12;->b(I)J

    .line 2496
    .line 2497
    .line 2498
    move-result-wide v56

    .line 2499
    if-eqz v5, :cond_77

    .line 2500
    .line 2501
    move/from16 v21, v5

    .line 2502
    .line 2503
    move v0, v6

    .line 2504
    and-long v5, v56, v35

    .line 2505
    .line 2506
    :goto_61
    long-to-int v2, v5

    .line 2507
    goto :goto_62

    .line 2508
    :cond_77
    move/from16 v21, v5

    .line 2509
    .line 2510
    move v0, v6

    .line 2511
    shr-long v5, v56, v33

    .line 2512
    .line 2513
    goto :goto_61

    .line 2514
    :goto_62
    const/high16 v5, -0x80000000

    .line 2515
    .line 2516
    goto :goto_63

    .line 2517
    :cond_78
    move/from16 v21, v5

    .line 2518
    .line 2519
    move v0, v6

    .line 2520
    const/high16 v2, -0x80000000

    .line 2521
    .line 2522
    goto :goto_62

    .line 2523
    :goto_63
    if-ne v1, v5, :cond_79

    .line 2524
    .line 2525
    move/from16 v1, v49

    .line 2526
    .line 2527
    move v6, v1

    .line 2528
    goto :goto_64

    .line 2529
    :cond_79
    move/from16 v6, v49

    .line 2530
    .line 2531
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 2532
    .line 2533
    .line 2534
    move-result v1

    .line 2535
    :goto_64
    if-eq v2, v5, :cond_7a

    .line 2536
    .line 2537
    sub-int v2, v2, v16

    .line 2538
    .line 2539
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 2540
    .line 2541
    .line 2542
    move-result v1

    .line 2543
    :cond_7a
    const/4 v2, 0x1

    .line 2544
    iput-boolean v2, v12, Lg12;->s:Z

    .line 2545
    .line 2546
    invoke-virtual {v12, v1, v4, v3}, Lg12;->d(III)V

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2550
    .line 2551
    .line 2552
    add-int/lit8 v9, v9, 0x1

    .line 2553
    .line 2554
    move/from16 v49, v6

    .line 2555
    .line 2556
    move-object/from16 v2, v18

    .line 2557
    .line 2558
    move/from16 v5, v21

    .line 2559
    .line 2560
    move v6, v0

    .line 2561
    move-wide/from16 v0, v23

    .line 2562
    .line 2563
    goto/16 :goto_57

    .line 2564
    .line 2565
    :cond_7b
    move/from16 v21, v5

    .line 2566
    .line 2567
    move/from16 v6, v49

    .line 2568
    .line 2569
    goto :goto_65

    .line 2570
    :cond_7c
    move/from16 v17, v2

    .line 2571
    .line 2572
    move/from16 v21, v5

    .line 2573
    .line 2574
    move-object/from16 v43, v6

    .line 2575
    .line 2576
    move/from16 v22, v12

    .line 2577
    .line 2578
    move/from16 v6, v49

    .line 2579
    .line 2580
    move-object/from16 v7, v41

    .line 2581
    .line 2582
    :goto_65
    if-eqz v54, :cond_7e

    .line 2583
    .line 2584
    invoke-static {v15}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v0

    .line 2588
    check-cast v0, Lg12;

    .line 2589
    .line 2590
    if-eqz v0, :cond_7d

    .line 2591
    .line 2592
    iget v0, v0, Lg12;->a:I

    .line 2593
    .line 2594
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v0

    .line 2598
    goto :goto_66

    .line 2599
    :cond_7d
    const/4 v0, 0x0

    .line 2600
    goto :goto_66

    .line 2601
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lvh;->g()Ljava/lang/Object;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v0

    .line 2605
    check-cast v0, Lg12;

    .line 2606
    .line 2607
    if-eqz v0, :cond_7d

    .line 2608
    .line 2609
    iget v0, v0, Lg12;->a:I

    .line 2610
    .line 2611
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v0

    .line 2615
    :goto_66
    if-eqz v54, :cond_80

    .line 2616
    .line 2617
    invoke-static {v15}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    move-result-object v1

    .line 2621
    check-cast v1, Lg12;

    .line 2622
    .line 2623
    if-eqz v1, :cond_7f

    .line 2624
    .line 2625
    iget v1, v1, Lg12;->a:I

    .line 2626
    .line 2627
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v1

    .line 2631
    :goto_67
    move/from16 v5, v50

    .line 2632
    .line 2633
    goto :goto_68

    .line 2634
    :cond_7f
    move/from16 v5, v50

    .line 2635
    .line 2636
    const/4 v1, 0x0

    .line 2637
    goto :goto_68

    .line 2638
    :cond_80
    invoke-virtual/range {p0 .. p0}, Lvh;->i()Ljava/lang/Object;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v1

    .line 2642
    check-cast v1, Lg12;

    .line 2643
    .line 2644
    if-eqz v1, :cond_7f

    .line 2645
    .line 2646
    iget v1, v1, Lg12;->a:I

    .line 2647
    .line 2648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v1

    .line 2652
    goto :goto_67

    .line 2653
    :goto_68
    if-lt v5, v10, :cond_82

    .line 2654
    .line 2655
    move/from16 v2, v17

    .line 2656
    .line 2657
    if-le v13, v2, :cond_81

    .line 2658
    .line 2659
    goto :goto_69

    .line 2660
    :cond_81
    const/16 v29, 0x0

    .line 2661
    .line 2662
    goto :goto_6a

    .line 2663
    :cond_82
    :goto_69
    const/16 v29, 0x1

    .line 2664
    .line 2665
    :goto_6a
    new-instance v2, Lmd;

    .line 2666
    .line 2667
    move/from16 v12, v22

    .line 2668
    .line 2669
    move-object/from16 v5, v47

    .line 2670
    .line 2671
    invoke-direct {v2, v5, v15, v7, v12}, Lmd;-><init>(Lpg2;Ljava/util/ArrayList;Ljava/util/List;Z)V

    .line 2672
    .line 2673
    .line 2674
    add-int v4, v4, v37

    .line 2675
    .line 2676
    move-wide/from16 v8, v45

    .line 2677
    .line 2678
    invoke-static {v4, v8, v9}, Lnf0;->f(IJ)I

    .line 2679
    .line 2680
    .line 2681
    move-result v4

    .line 2682
    add-int v3, v3, v31

    .line 2683
    .line 2684
    invoke-static {v3, v8, v9}, Lnf0;->e(IJ)I

    .line 2685
    .line 2686
    .line 2687
    move-result v3

    .line 2688
    move-object/from16 v8, v43

    .line 2689
    .line 2690
    move-object/from16 v5, v44

    .line 2691
    .line 2692
    invoke-interface {v5, v4, v3, v8, v2}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 2693
    .line 2694
    .line 2695
    move-result-object v16

    .line 2696
    if-eqz v0, :cond_83

    .line 2697
    .line 2698
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2699
    .line 2700
    .line 2701
    move-result v0

    .line 2702
    goto :goto_6b

    .line 2703
    :cond_83
    const/4 v0, 0x0

    .line 2704
    :goto_6b
    if-eqz v1, :cond_84

    .line 2705
    .line 2706
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2707
    .line 2708
    .line 2709
    move-result v1

    .line 2710
    goto :goto_6c

    .line 2711
    :cond_84
    const/4 v1, 0x0

    .line 2712
    :goto_6c
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2713
    .line 2714
    .line 2715
    move-result v2

    .line 2716
    if-eqz v2, :cond_85

    .line 2717
    .line 2718
    move-object/from16 v23, v41

    .line 2719
    .line 2720
    goto :goto_6e

    .line 2721
    :cond_85
    new-instance v2, Ljava/util/ArrayList;

    .line 2722
    .line 2723
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2724
    .line 2725
    .line 2726
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 2727
    .line 2728
    .line 2729
    move-result v3

    .line 2730
    const/4 v4, 0x0

    .line 2731
    :goto_6d
    if-ge v4, v3, :cond_87

    .line 2732
    .line 2733
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v7

    .line 2737
    check-cast v7, Lg12;

    .line 2738
    .line 2739
    iget v8, v7, Lg12;->a:I

    .line 2740
    .line 2741
    if-gt v0, v8, :cond_86

    .line 2742
    .line 2743
    if-gt v8, v1, :cond_86

    .line 2744
    .line 2745
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    .line 2747
    .line 2748
    :cond_86
    add-int/lit8 v4, v4, 0x1

    .line 2749
    .line 2750
    goto :goto_6d

    .line 2751
    :cond_87
    sget-object v0, Lc75;->e:Lyb;

    .line 2752
    .line 2753
    invoke-static {v2, v0}, Lr70;->c0(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2754
    .line 2755
    .line 2756
    move-object/from16 v23, v2

    .line 2757
    .line 2758
    :goto_6e
    if-eqz v21, :cond_88

    .line 2759
    .line 2760
    move-object/from16 v27, v34

    .line 2761
    .line 2762
    :cond_88
    new-instance v11, Lf12;

    .line 2763
    .line 2764
    iget-wide v0, v14, Ld12;->d:J

    .line 2765
    .line 2766
    move-wide/from16 v21, v0

    .line 2767
    .line 2768
    move/from16 v24, v6

    .line 2769
    .line 2770
    move/from16 v13, v20

    .line 2771
    .line 2772
    move/from16 v14, v29

    .line 2773
    .line 2774
    move-object/from16 v19, v38

    .line 2775
    .line 2776
    move/from16 v15, v39

    .line 2777
    .line 2778
    move/from16 v25, v48

    .line 2779
    .line 2780
    move/from16 v18, v51

    .line 2781
    .line 2782
    move/from16 v17, v53

    .line 2783
    .line 2784
    move-object/from16 v12, v55

    .line 2785
    .line 2786
    move-object/from16 v20, p2

    .line 2787
    .line 2788
    move/from16 v29, v26

    .line 2789
    .line 2790
    move/from16 v26, v10

    .line 2791
    .line 2792
    invoke-direct/range {v11 .. v29}, Lf12;-><init>(Lg12;IZFLeb2;FZLqi0;Las0;JLjava/util/List;IIILhr2;II)V

    .line 2793
    .line 2794
    .line 2795
    goto/16 :goto_20

    .line 2796
    .line 2797
    :goto_6f
    invoke-interface {v5}, Ljt1;->q()Z

    .line 2798
    .line 2799
    .line 2800
    move-result v1

    .line 2801
    move-object/from16 v5, v42

    .line 2802
    .line 2803
    const/4 v13, 0x0

    .line 2804
    invoke-virtual {v5, v0, v1, v13}, Ln12;->b(Lf12;ZZ)V

    .line 2805
    .line 2806
    .line 2807
    goto :goto_70

    .line 2808
    :catchall_0
    move-exception v0

    .line 2809
    invoke-static {v4, v12, v6}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 2810
    .line 2811
    .line 2812
    throw v0

    .line 2813
    :cond_89
    const-string v0, "null horizontalAlignment when isVertical == false"

    .line 2814
    .line 2815
    invoke-static {v0}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 2816
    .line 2817
    .line 2818
    invoke-static {}, Lp61;->q()V

    .line 2819
    .line 2820
    .line 2821
    goto/16 :goto_b

    .line 2822
    .line 2823
    :goto_70
    return-object v0

    .line 2824
    :pswitch_9
    check-cast v10, Lc02;

    .line 2825
    .line 2826
    check-cast v9, Lb02;

    .line 2827
    .line 2828
    iget-object v14, v9, Lb02;->a:Ljava/lang/Object;

    .line 2829
    .line 2830
    move-object/from16 v15, p1

    .line 2831
    .line 2832
    check-cast v15, Lag1;

    .line 2833
    .line 2834
    move-object v0, v1

    .line 2835
    check-cast v0, Ljava/lang/Integer;

    .line 2836
    .line 2837
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2838
    .line 2839
    .line 2840
    move-result v0

    .line 2841
    and-int/lit8 v1, v0, 0x3

    .line 2842
    .line 2843
    if-eq v1, v5, :cond_8a

    .line 2844
    .line 2845
    const/4 v1, 0x1

    .line 2846
    :goto_71
    const/16 v29, 0x1

    .line 2847
    .line 2848
    goto :goto_72

    .line 2849
    :cond_8a
    const/4 v1, 0x0

    .line 2850
    goto :goto_71

    .line 2851
    :goto_72
    and-int/lit8 v0, v0, 0x1

    .line 2852
    .line 2853
    invoke-virtual {v15, v0, v1}, Lag1;->N(IZ)Z

    .line 2854
    .line 2855
    .line 2856
    move-result v0

    .line 2857
    if-eqz v0, :cond_91

    .line 2858
    .line 2859
    iget-object v0, v10, Lc02;->b:Lf02;

    .line 2860
    .line 2861
    invoke-virtual {v0}, Lf02;->a()Ljava/lang/Object;

    .line 2862
    .line 2863
    .line 2864
    move-result-object v0

    .line 2865
    move-object v11, v0

    .line 2866
    check-cast v11, La12;

    .line 2867
    .line 2868
    iget v0, v9, Lb02;->c:I

    .line 2869
    .line 2870
    invoke-virtual {v11}, La12;->c()I

    .line 2871
    .line 2872
    .line 2873
    move-result v1

    .line 2874
    if-ge v0, v1, :cond_8d

    .line 2875
    .line 2876
    invoke-virtual {v11, v0}, La12;->d(I)Ljava/lang/Object;

    .line 2877
    .line 2878
    .line 2879
    move-result-object v1

    .line 2880
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2881
    .line 2882
    .line 2883
    move-result v1

    .line 2884
    if-nez v1, :cond_8b

    .line 2885
    .line 2886
    goto :goto_74

    .line 2887
    :cond_8b
    const/4 v1, -0x1

    .line 2888
    :cond_8c
    :goto_73
    move v13, v0

    .line 2889
    goto :goto_75

    .line 2890
    :cond_8d
    :goto_74
    iget-object v0, v11, La12;->d:Lhb;

    .line 2891
    .line 2892
    invoke-virtual {v0, v14}, Lhb;->d(Ljava/lang/Object;)I

    .line 2893
    .line 2894
    .line 2895
    move-result v0

    .line 2896
    const/4 v1, -0x1

    .line 2897
    if-eq v0, v1, :cond_8c

    .line 2898
    .line 2899
    iput v0, v9, Lb02;->c:I

    .line 2900
    .line 2901
    goto :goto_73

    .line 2902
    :goto_75
    if-eq v13, v1, :cond_8e

    .line 2903
    .line 2904
    const v0, -0x6339ef97

    .line 2905
    .line 2906
    .line 2907
    invoke-virtual {v15, v0}, Lag1;->W(I)V

    .line 2908
    .line 2909
    .line 2910
    iget-object v12, v10, Lc02;->a:Lfc3;

    .line 2911
    .line 2912
    const/16 v16, 0x0

    .line 2913
    .line 2914
    invoke-static/range {v11 .. v16}, Lqn0;->e(La12;Ljava/lang/Object;ILjava/lang/Object;Lag1;I)V

    .line 2915
    .line 2916
    .line 2917
    const/4 v13, 0x0

    .line 2918
    invoke-virtual {v15, v13}, Lag1;->p(Z)V

    .line 2919
    .line 2920
    .line 2921
    goto :goto_76

    .line 2922
    :cond_8e
    const/4 v13, 0x0

    .line 2923
    const v0, -0x633657e2

    .line 2924
    .line 2925
    .line 2926
    invoke-virtual {v15, v0}, Lag1;->W(I)V

    .line 2927
    .line 2928
    .line 2929
    invoke-virtual {v15, v13}, Lag1;->p(Z)V

    .line 2930
    .line 2931
    .line 2932
    :goto_76
    invoke-virtual {v15, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 2933
    .line 2934
    .line 2935
    move-result v0

    .line 2936
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 2937
    .line 2938
    .line 2939
    move-result-object v1

    .line 2940
    if-nez v0, :cond_8f

    .line 2941
    .line 2942
    sget-object v0, Lrb0;->a:Lbx3;

    .line 2943
    .line 2944
    if-ne v1, v0, :cond_90

    .line 2945
    .line 2946
    :cond_8f
    new-instance v1, Lv;

    .line 2947
    .line 2948
    const/16 v0, 0xc

    .line 2949
    .line 2950
    invoke-direct {v1, v0, v9}, Lv;-><init>(ILjava/lang/Object;)V

    .line 2951
    .line 2952
    .line 2953
    invoke-virtual {v15, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 2954
    .line 2955
    .line 2956
    :cond_90
    check-cast v1, Lpe1;

    .line 2957
    .line 2958
    invoke-static {v14, v1, v15}, Lzf5;->a(Ljava/lang/Object;Lpe1;Lag1;)V

    .line 2959
    .line 2960
    .line 2961
    goto :goto_77

    .line 2962
    :cond_91
    invoke-virtual {v15}, Lag1;->Q()V

    .line 2963
    .line 2964
    .line 2965
    :goto_77
    return-object v8

    .line 2966
    :pswitch_a
    check-cast v10, Ll53;

    .line 2967
    .line 2968
    check-cast v9, Lxn3;

    .line 2969
    .line 2970
    move-object/from16 v0, p1

    .line 2971
    .line 2972
    check-cast v0, Ljava/lang/Integer;

    .line 2973
    .line 2974
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2975
    .line 2976
    .line 2977
    move-result v0

    .line 2978
    instance-of v2, v1, Lya0;

    .line 2979
    .line 2980
    if-eqz v2, :cond_92

    .line 2981
    .line 2982
    move-object v0, v1

    .line 2983
    check-cast v0, Lya0;

    .line 2984
    .line 2985
    iget-object v1, v10, Ll53;->f:Lug2;

    .line 2986
    .line 2987
    invoke-virtual {v1, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 2988
    .line 2989
    .line 2990
    goto :goto_78

    .line 2991
    :cond_92
    instance-of v2, v1, Ln83;

    .line 2992
    .line 2993
    if-nez v2, :cond_94

    .line 2994
    .line 2995
    instance-of v2, v1, Leg1;

    .line 2996
    .line 2997
    if-eqz v2, :cond_93

    .line 2998
    .line 2999
    invoke-static {v9, v0, v1}, Lis0;->T(Lxn3;ILjava/lang/Object;)V

    .line 3000
    .line 3001
    .line 3002
    move-object v0, v1

    .line 3003
    check-cast v0, Leg1;

    .line 3004
    .line 3005
    invoke-virtual {v10, v0}, Ll53;->e(Leg1;)V

    .line 3006
    .line 3007
    .line 3008
    goto :goto_78

    .line 3009
    :cond_93
    instance-of v2, v1, Lc33;

    .line 3010
    .line 3011
    if-eqz v2, :cond_94

    .line 3012
    .line 3013
    invoke-static {v9, v0, v1}, Lis0;->T(Lxn3;ILjava/lang/Object;)V

    .line 3014
    .line 3015
    .line 3016
    move-object v0, v1

    .line 3017
    check-cast v0, Lc33;

    .line 3018
    .line 3019
    invoke-virtual {v0}, Lc33;->c()V

    .line 3020
    .line 3021
    .line 3022
    :cond_94
    :goto_78
    return-object v8

    .line 3023
    :pswitch_b
    check-cast v10, Ljava/util/List;

    .line 3024
    .line 3025
    check-cast v9, Ljava/util/Collection;

    .line 3026
    .line 3027
    move-object/from16 v0, p1

    .line 3028
    .line 3029
    check-cast v0, Lag1;

    .line 3030
    .line 3031
    check-cast v1, Ljava/lang/Integer;

    .line 3032
    .line 3033
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3034
    .line 3035
    .line 3036
    const/16 v29, 0x1

    .line 3037
    .line 3038
    invoke-static/range {v29 .. v29}, Lqj0;->f0(I)I

    .line 3039
    .line 3040
    .line 3041
    move-result v1

    .line 3042
    invoke-static {v10, v9, v0, v1}, Ldm0;->g(Ljava/util/List;Ljava/util/Collection;Lag1;I)V

    .line 3043
    .line 3044
    .line 3045
    return-object v8

    .line 3046
    :pswitch_c
    move/from16 v29, v7

    .line 3047
    .line 3048
    check-cast v10, Lgq0;

    .line 3049
    .line 3050
    check-cast v9, Lcn3;

    .line 3051
    .line 3052
    move-object/from16 v0, p1

    .line 3053
    .line 3054
    check-cast v0, Lag1;

    .line 3055
    .line 3056
    check-cast v1, Ljava/lang/Integer;

    .line 3057
    .line 3058
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3059
    .line 3060
    .line 3061
    invoke-static/range {v29 .. v29}, Lqj0;->f0(I)I

    .line 3062
    .line 3063
    .line 3064
    move-result v1

    .line 3065
    invoke-virtual {v10, v9, v0, v1}, Lgq0;->a(Lcn3;Lag1;I)V

    .line 3066
    .line 3067
    .line 3068
    return-object v8

    .line 3069
    :pswitch_d
    move/from16 v29, v7

    .line 3070
    .line 3071
    check-cast v10, Ltp0;

    .line 3072
    .line 3073
    check-cast v9, Lak2;

    .line 3074
    .line 3075
    move-object/from16 v0, p1

    .line 3076
    .line 3077
    check-cast v0, Lag1;

    .line 3078
    .line 3079
    check-cast v1, Ljava/lang/Integer;

    .line 3080
    .line 3081
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3082
    .line 3083
    .line 3084
    invoke-static/range {v29 .. v29}, Lqj0;->f0(I)I

    .line 3085
    .line 3086
    .line 3087
    move-result v1

    .line 3088
    invoke-virtual {v10, v9, v0, v1}, Ltp0;->a(Lak2;Lag1;I)V

    .line 3089
    .line 3090
    .line 3091
    return-object v8

    .line 3092
    :pswitch_e
    move/from16 v29, v7

    .line 3093
    .line 3094
    check-cast v10, Lbo0;

    .line 3095
    .line 3096
    check-cast v9, Lqd1;

    .line 3097
    .line 3098
    move-object/from16 v0, p1

    .line 3099
    .line 3100
    check-cast v0, Lag1;

    .line 3101
    .line 3102
    check-cast v1, Ljava/lang/Integer;

    .line 3103
    .line 3104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3105
    .line 3106
    .line 3107
    invoke-static/range {v29 .. v29}, Lqj0;->f0(I)I

    .line 3108
    .line 3109
    .line 3110
    move-result v1

    .line 3111
    invoke-virtual {v10, v9, v0, v1}, Lbo0;->a(Lqd1;Lag1;I)V

    .line 3112
    .line 3113
    .line 3114
    return-object v8

    .line 3115
    :pswitch_f
    check-cast v10, Ln8;

    .line 3116
    .line 3117
    check-cast v9, Lne1;

    .line 3118
    .line 3119
    move-object/from16 v0, p1

    .line 3120
    .line 3121
    check-cast v0, Lag1;

    .line 3122
    .line 3123
    check-cast v1, Ljava/lang/Integer;

    .line 3124
    .line 3125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3126
    .line 3127
    .line 3128
    const/16 v1, 0x9

    .line 3129
    .line 3130
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 3131
    .line 3132
    .line 3133
    move-result v1

    .line 3134
    invoke-static {v10, v9, v0, v1}, Ltv4;->d(Ln8;Lne1;Lag1;I)V

    .line 3135
    .line 3136
    .line 3137
    return-object v8

    .line 3138
    :pswitch_10
    check-cast v10, Lnd2;

    .line 3139
    .line 3140
    check-cast v9, Lpe1;

    .line 3141
    .line 3142
    move-object/from16 v0, p1

    .line 3143
    .line 3144
    check-cast v0, Lag1;

    .line 3145
    .line 3146
    check-cast v1, Ljava/lang/Integer;

    .line 3147
    .line 3148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3149
    .line 3150
    .line 3151
    const/16 v29, 0x1

    .line 3152
    .line 3153
    invoke-static/range {v29 .. v29}, Lqj0;->f0(I)I

    .line 3154
    .line 3155
    .line 3156
    move-result v1

    .line 3157
    invoke-static {v10, v9, v0, v1}, Ltv4;->b(Lnd2;Lpe1;Lag1;I)V

    .line 3158
    .line 3159
    .line 3160
    return-object v8

    .line 3161
    :pswitch_11
    check-cast v10, Lzr2;

    .line 3162
    .line 3163
    check-cast v9, Lka0;

    .line 3164
    .line 3165
    move-object/from16 v0, p1

    .line 3166
    .line 3167
    check-cast v0, Lag1;

    .line 3168
    .line 3169
    check-cast v1, Ljava/lang/Integer;

    .line 3170
    .line 3171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3172
    .line 3173
    .line 3174
    move-result v1

    .line 3175
    and-int/lit8 v2, v1, 0x3

    .line 3176
    .line 3177
    if-eq v2, v5, :cond_95

    .line 3178
    .line 3179
    const/4 v6, 0x1

    .line 3180
    :goto_79
    const/16 v29, 0x1

    .line 3181
    .line 3182
    goto :goto_7a

    .line 3183
    :cond_95
    const/4 v6, 0x0

    .line 3184
    goto :goto_79

    .line 3185
    :goto_7a
    and-int/lit8 v1, v1, 0x1

    .line 3186
    .line 3187
    invoke-virtual {v0, v1, v6}, Lag1;->N(IZ)Z

    .line 3188
    .line 3189
    .line 3190
    move-result v1

    .line 3191
    if-eqz v1, :cond_98

    .line 3192
    .line 3193
    sget v1, Llz;->c:F

    .line 3194
    .line 3195
    sget-object v2, Ldx2;->a:Lws2;

    .line 3196
    .line 3197
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 3198
    .line 3199
    .line 3200
    move-result-object v2

    .line 3201
    check-cast v2, Ljava/lang/Boolean;

    .line 3202
    .line 3203
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3204
    .line 3205
    .line 3206
    move-result v2

    .line 3207
    if-eqz v2, :cond_96

    .line 3208
    .line 3209
    const/high16 v2, 0x42100000    # 36.0f

    .line 3210
    .line 3211
    goto :goto_7b

    .line 3212
    :cond_96
    const/high16 v2, 0x42200000    # 40.0f

    .line 3213
    .line 3214
    :goto_7b
    invoke-static {v3, v1, v2}, Lon3;->a(Lnd2;FF)Lnd2;

    .line 3215
    .line 3216
    .line 3217
    move-result-object v1

    .line 3218
    invoke-static {v1, v10}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 3219
    .line 3220
    .line 3221
    move-result-object v1

    .line 3222
    sget-object v2, Lmj1;->y:Lbw;

    .line 3223
    .line 3224
    const/16 v3, 0x36

    .line 3225
    .line 3226
    sget-object v4, Lth;->d:Lqv3;

    .line 3227
    .line 3228
    invoke-static {v4, v2, v0, v3}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 3229
    .line 3230
    .line 3231
    move-result-object v2

    .line 3232
    iget-wide v3, v0, Lag1;->T:J

    .line 3233
    .line 3234
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 3235
    .line 3236
    .line 3237
    move-result v3

    .line 3238
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 3239
    .line 3240
    .line 3241
    move-result-object v4

    .line 3242
    invoke-static {v0, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 3243
    .line 3244
    .line 3245
    move-result-object v1

    .line 3246
    sget-object v5, Llb0;->c:Lkb0;

    .line 3247
    .line 3248
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3249
    .line 3250
    .line 3251
    sget-object v5, Lkb0;->b:Lic0;

    .line 3252
    .line 3253
    invoke-virtual {v0}, Lag1;->Z()V

    .line 3254
    .line 3255
    .line 3256
    iget-boolean v6, v0, Lag1;->S:Z

    .line 3257
    .line 3258
    if-eqz v6, :cond_97

    .line 3259
    .line 3260
    invoke-virtual {v0, v5}, Lag1;->k(Lne1;)V

    .line 3261
    .line 3262
    .line 3263
    goto :goto_7c

    .line 3264
    :cond_97
    invoke-virtual {v0}, Lag1;->j0()V

    .line 3265
    .line 3266
    .line 3267
    :goto_7c
    sget-object v5, Lkb0;->f:Lfd;

    .line 3268
    .line 3269
    invoke-static {v5, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3270
    .line 3271
    .line 3272
    sget-object v2, Lkb0;->e:Lfd;

    .line 3273
    .line 3274
    invoke-static {v2, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3275
    .line 3276
    .line 3277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3278
    .line 3279
    .line 3280
    move-result-object v2

    .line 3281
    sget-object v3, Lkb0;->g:Lfd;

    .line 3282
    .line 3283
    invoke-static {v3, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3284
    .line 3285
    .line 3286
    sget-object v2, Lkb0;->h:Ll9;

    .line 3287
    .line 3288
    invoke-static {v0, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 3289
    .line 3290
    .line 3291
    sget-object v2, Lkb0;->d:Lfd;

    .line 3292
    .line 3293
    invoke-static {v2, v0, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3294
    .line 3295
    .line 3296
    const/4 v1, 0x6

    .line 3297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3298
    .line 3299
    .line 3300
    move-result-object v1

    .line 3301
    sget-object v2, Leb3;->a:Leb3;

    .line 3302
    .line 3303
    invoke-virtual {v9, v2, v0, v1}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    .line 3305
    .line 3306
    const/4 v15, 0x1

    .line 3307
    invoke-virtual {v0, v15}, Lag1;->p(Z)V

    .line 3308
    .line 3309
    .line 3310
    goto :goto_7d

    .line 3311
    :cond_98
    invoke-virtual {v0}, Lag1;->Q()V

    .line 3312
    .line 3313
    .line 3314
    :goto_7d
    return-object v8

    .line 3315
    :pswitch_12
    check-cast v10, Ldf1;

    .line 3316
    .line 3317
    check-cast v9, Ldf1;

    .line 3318
    .line 3319
    move-object/from16 v0, p1

    .line 3320
    .line 3321
    check-cast v0, Lag1;

    .line 3322
    .line 3323
    check-cast v1, Ljava/lang/Integer;

    .line 3324
    .line 3325
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3326
    .line 3327
    .line 3328
    move-result v1

    .line 3329
    and-int/lit8 v2, v1, 0x3

    .line 3330
    .line 3331
    if-eq v2, v5, :cond_99

    .line 3332
    .line 3333
    const/4 v2, 0x1

    .line 3334
    :goto_7e
    const/16 v29, 0x1

    .line 3335
    .line 3336
    goto :goto_7f

    .line 3337
    :cond_99
    const/4 v2, 0x0

    .line 3338
    goto :goto_7e

    .line 3339
    :goto_7f
    and-int/lit8 v1, v1, 0x1

    .line 3340
    .line 3341
    invoke-virtual {v0, v1, v2}, Lag1;->N(IZ)Z

    .line 3342
    .line 3343
    .line 3344
    move-result v1

    .line 3345
    if-eqz v1, :cond_9c

    .line 3346
    .line 3347
    sget-object v1, Lx7;->b:Lds2;

    .line 3348
    .line 3349
    invoke-static {v3, v1}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 3350
    .line 3351
    .line 3352
    move-result-object v1

    .line 3353
    if-nez v10, :cond_9a

    .line 3354
    .line 3355
    sget-object v2, Lmj1;->z:Law;

    .line 3356
    .line 3357
    goto :goto_80

    .line 3358
    :cond_9a
    sget-object v2, Lmj1;->A:Law;

    .line 3359
    .line 3360
    :goto_80
    new-instance v3, Lak1;

    .line 3361
    .line 3362
    invoke-direct {v3, v2}, Lak1;-><init>(Law;)V

    .line 3363
    .line 3364
    .line 3365
    invoke-interface {v1, v3}, Lnd2;->c(Lnd2;)Lnd2;

    .line 3366
    .line 3367
    .line 3368
    move-result-object v1

    .line 3369
    sget-object v2, Lmj1;->o:Lcw;

    .line 3370
    .line 3371
    const/4 v13, 0x0

    .line 3372
    invoke-static {v2, v13}, Lqx;->d(Lcw;Z)Ldb2;

    .line 3373
    .line 3374
    .line 3375
    move-result-object v2

    .line 3376
    iget-wide v3, v0, Lag1;->T:J

    .line 3377
    .line 3378
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 3379
    .line 3380
    .line 3381
    move-result v3

    .line 3382
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 3383
    .line 3384
    .line 3385
    move-result-object v4

    .line 3386
    invoke-static {v0, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 3387
    .line 3388
    .line 3389
    move-result-object v1

    .line 3390
    sget-object v5, Llb0;->c:Lkb0;

    .line 3391
    .line 3392
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3393
    .line 3394
    .line 3395
    sget-object v5, Lkb0;->b:Lic0;

    .line 3396
    .line 3397
    invoke-virtual {v0}, Lag1;->Z()V

    .line 3398
    .line 3399
    .line 3400
    iget-boolean v6, v0, Lag1;->S:Z

    .line 3401
    .line 3402
    if-eqz v6, :cond_9b

    .line 3403
    .line 3404
    invoke-virtual {v0, v5}, Lag1;->k(Lne1;)V

    .line 3405
    .line 3406
    .line 3407
    goto :goto_81

    .line 3408
    :cond_9b
    invoke-virtual {v0}, Lag1;->j0()V

    .line 3409
    .line 3410
    .line 3411
    :goto_81
    sget-object v5, Lkb0;->f:Lfd;

    .line 3412
    .line 3413
    invoke-static {v5, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3414
    .line 3415
    .line 3416
    sget-object v2, Lkb0;->e:Lfd;

    .line 3417
    .line 3418
    invoke-static {v2, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3419
    .line 3420
    .line 3421
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3422
    .line 3423
    .line 3424
    move-result-object v2

    .line 3425
    sget-object v3, Lkb0;->g:Lfd;

    .line 3426
    .line 3427
    invoke-static {v3, v0, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3428
    .line 3429
    .line 3430
    sget-object v2, Lkb0;->h:Ll9;

    .line 3431
    .line 3432
    invoke-static {v0, v2}, Lht4;->y(Lag1;Lpe1;)V

    .line 3433
    .line 3434
    .line 3435
    sget-object v2, Lkb0;->d:Lfd;

    .line 3436
    .line 3437
    invoke-static {v2, v0, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 3438
    .line 3439
    .line 3440
    const/16 v30, 0x0

    .line 3441
    .line 3442
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3443
    .line 3444
    .line 3445
    move-result-object v1

    .line 3446
    invoke-interface {v9, v0, v1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    .line 3448
    .line 3449
    const/4 v15, 0x1

    .line 3450
    invoke-virtual {v0, v15}, Lag1;->p(Z)V

    .line 3451
    .line 3452
    .line 3453
    goto :goto_82

    .line 3454
    :cond_9c
    invoke-virtual {v0}, Lag1;->Q()V

    .line 3455
    .line 3456
    .line 3457
    :goto_82
    return-object v8

    .line 3458
    :pswitch_13
    check-cast v10, Ly3;

    .line 3459
    .line 3460
    check-cast v9, Lne1;

    .line 3461
    .line 3462
    move-object/from16 v15, p1

    .line 3463
    .line 3464
    check-cast v15, Lag1;

    .line 3465
    .line 3466
    move-object v0, v1

    .line 3467
    check-cast v0, Ljava/lang/Integer;

    .line 3468
    .line 3469
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 3470
    .line 3471
    .line 3472
    move-result v0

    .line 3473
    and-int/lit8 v1, v0, 0x3

    .line 3474
    .line 3475
    if-eq v1, v5, :cond_9d

    .line 3476
    .line 3477
    const/4 v1, 0x1

    .line 3478
    :goto_83
    const/16 v29, 0x1

    .line 3479
    .line 3480
    goto :goto_84

    .line 3481
    :cond_9d
    const/4 v1, 0x0

    .line 3482
    goto :goto_83

    .line 3483
    :goto_84
    and-int/lit8 v0, v0, 0x1

    .line 3484
    .line 3485
    invoke-virtual {v15, v0, v1}, Lag1;->N(IZ)Z

    .line 3486
    .line 3487
    .line 3488
    move-result v0

    .line 3489
    if-eqz v0, :cond_9e

    .line 3490
    .line 3491
    new-instance v0, Lsp0;

    .line 3492
    .line 3493
    invoke-direct {v0, v5, v10}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 3494
    .line 3495
    .line 3496
    const v1, 0x79f207ea

    .line 3497
    .line 3498
    .line 3499
    invoke-static {v1, v0, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 3500
    .line 3501
    .line 3502
    move-result-object v0

    .line 3503
    new-instance v1, Lo4;

    .line 3504
    .line 3505
    const/4 v13, 0x0

    .line 3506
    invoke-direct {v1, v13, v9}, Lo4;-><init>(ILne1;)V

    .line 3507
    .line 3508
    .line 3509
    const v2, 0x205a9228

    .line 3510
    .line 3511
    .line 3512
    invoke-static {v2, v1, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 3513
    .line 3514
    .line 3515
    move-result-object v1

    .line 3516
    sget-object v2, Ll04;->a:Lds2;

    .line 3517
    .line 3518
    sget-object v2, Lwa2;->a:Lis3;

    .line 3519
    .line 3520
    invoke-virtual {v15, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 3521
    .line 3522
    .line 3523
    move-result-object v3

    .line 3524
    check-cast v3, Lua2;

    .line 3525
    .line 3526
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 3527
    .line 3528
    iget-wide v11, v3, Ly70;->n:J

    .line 3529
    .line 3530
    invoke-virtual {v15, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 3531
    .line 3532
    .line 3533
    move-result-object v2

    .line 3534
    check-cast v2, Lua2;

    .line 3535
    .line 3536
    iget-object v2, v2, Lua2;->a:Ly70;

    .line 3537
    .line 3538
    iget-wide v13, v2, Ly70;->o:J

    .line 3539
    .line 3540
    const/16 v16, 0x36

    .line 3541
    .line 3542
    invoke-static/range {v11 .. v16}, Ll04;->a(JJLag1;I)Lk04;

    .line 3543
    .line 3544
    .line 3545
    move-result-object v17

    .line 3546
    const/16 v20, 0x186

    .line 3547
    .line 3548
    const/16 v21, 0x1ba

    .line 3549
    .line 3550
    const/4 v12, 0x0

    .line 3551
    const/4 v14, 0x0

    .line 3552
    move-object/from16 v19, v15

    .line 3553
    .line 3554
    const/4 v15, 0x0

    .line 3555
    const/16 v16, 0x0

    .line 3556
    .line 3557
    const/16 v18, 0x0

    .line 3558
    .line 3559
    move-object v11, v0

    .line 3560
    move-object v13, v1

    .line 3561
    invoke-static/range {v11 .. v21}, Leg;->b(Lka0;Lnd2;Ldf1;Lff1;FLhd4;Lk04;Lzr2;Lag1;II)V

    .line 3562
    .line 3563
    .line 3564
    goto :goto_85

    .line 3565
    :cond_9e
    invoke-virtual {v15}, Lag1;->Q()V

    .line 3566
    .line 3567
    .line 3568
    :goto_85
    return-object v8

    .line 3569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
