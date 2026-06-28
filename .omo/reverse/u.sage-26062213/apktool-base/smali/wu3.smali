.class public abstract Lwu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Llc0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lwu3;->a:Llc0;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V
    .locals 10

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, p11, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lk75;->d:Lfk1;

    .line 8
    .line 9
    :cond_0
    move-object v3, p1

    .line 10
    and-int/lit8 p1, p11, 0x8

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p2, p3, v0}, La80;->b(JLag1;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-wide v1, p4

    .line 20
    :goto_0
    and-int/lit8 p1, p11, 0x20

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    move v8, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move/from16 v8, p6

    .line 28
    .line 29
    :goto_1
    and-int/lit8 p1, p11, 0x40

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    move-object v7, p1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move-object/from16 v7, p7

    .line 37
    .line 38
    :goto_2
    sget-object p1, Lwu3;->a:Llc0;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcw0;

    .line 45
    .line 46
    iget v5, v5, Lcw0;->n:F

    .line 47
    .line 48
    add-float v6, v5, v4

    .line 49
    .line 50
    sget-object v4, Lbg0;->a:Llc0;

    .line 51
    .line 52
    new-instance v5, Lt70;

    .line 53
    .line 54
    invoke-direct {v5, v1, v2}, Lt70;-><init>(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Lcw0;

    .line 62
    .line 63
    invoke-direct {v2, v6}, Lcw0;-><init>(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {v1, p1}, [Lj03;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v1, Luu3;

    .line 75
    .line 76
    move-object v2, p0

    .line 77
    move-wide v4, p2

    .line 78
    move-object/from16 v9, p8

    .line 79
    .line 80
    invoke-direct/range {v1 .. v9}, Luu3;-><init>(Lnd2;Ljl3;JFLfx;FLka0;)V

    .line 81
    .line 82
    .line 83
    const p0, 0x1923bae6

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/16 p2, 0x38

    .line 91
    .line 92
    invoke-static {p1, p0, v0, p2}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static final b(Lne1;Lnd2;ZLjl3;JJFLfx;Lvf2;Lka0;Lag1;I)V
    .locals 15

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p10, :cond_1

    .line 5
    .line 6
    const v2, -0x656457d4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lag1;->W(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lrb0;->a:Lbx3;

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    new-instance v2, Lvf2;

    .line 21
    .line 22
    invoke-direct {v2}, Lvf2;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    check-cast v2, Lvf2;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 31
    .line 32
    .line 33
    move-object v5, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v2, 0x7899a80b

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lag1;->W(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v5, p10

    .line 45
    .line 46
    :goto_0
    sget-object v1, Lwu3;->a:Llc0;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcw0;

    .line 53
    .line 54
    iget v2, v2, Lcw0;->n:F

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    add-float v9, v2, v3

    .line 58
    .line 59
    sget-object v2, Lbg0;->a:Llc0;

    .line 60
    .line 61
    new-instance v3, Lt70;

    .line 62
    .line 63
    move-wide/from16 v6, p6

    .line 64
    .line 65
    invoke-direct {v3, v6, v7}, Lt70;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Lcw0;

    .line 73
    .line 74
    invoke-direct {v3, v9}, Lcw0;-><init>(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    filled-new-array {v2, v1}, [Lj03;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v3, Lvu3;

    .line 86
    .line 87
    move-object v12, p0

    .line 88
    move-object/from16 v4, p1

    .line 89
    .line 90
    move/from16 v11, p2

    .line 91
    .line 92
    move-object/from16 v6, p3

    .line 93
    .line 94
    move-wide/from16 v7, p4

    .line 95
    .line 96
    move/from16 v13, p8

    .line 97
    .line 98
    move-object/from16 v10, p9

    .line 99
    .line 100
    move-object/from16 v14, p11

    .line 101
    .line 102
    invoke-direct/range {v3 .. v14}, Lvu3;-><init>(Lnd2;Lvf2;Ljl3;JFLfx;ZLne1;FLka0;)V

    .line 103
    .line 104
    .line 105
    const p0, 0x329de4cf

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v3, v0}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const/16 v2, 0x38

    .line 113
    .line 114
    invoke-static {v1, p0, v0, v2}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static final c(Lnd2;Ljl3;JLfx;F)Lnd2;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p5, v0

    .line 3
    .line 4
    sget-object v1, Lkd2;->b:Lkd2;

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const v8, 0xfe7df

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v6, p1

    .line 16
    move v5, p5

    .line 17
    invoke-static/range {v1 .. v8}, Ln44;->r0(Lnd2;FFFFLjl3;ZI)Lnd2;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v6, p1

    .line 23
    move-object p1, v1

    .line 24
    :goto_0
    invoke-interface {p0, p1}, Lnd2;->c(Lnd2;)Lnd2;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    iget p1, p4, Lfx;->a:F

    .line 31
    .line 32
    iget-object p4, p4, Lfx;->b:Lsp3;

    .line 33
    .line 34
    new-instance v1, Lex;

    .line 35
    .line 36
    invoke-direct {v1, p1, p4, v6}, Lex;-><init>(FLsp3;Ljl3;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {p0, v1}, Lnd2;->c(Lnd2;)Lnd2;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p2, p3, v6}, Lbi4;->j(Lnd2;JLjl3;)Lnd2;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v6}, Ln44;->c0(Lnd2;Ljl3;)Lnd2;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static final d(JFLag1;)J
    .locals 4

    .line 1
    sget-object v0, Lwa2;->a:Lis3;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lua2;

    .line 8
    .line 9
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 10
    .line 11
    sget-object v1, La80;->a:Lis3;

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget-wide v1, v0, Ly70;->p:J

    .line 24
    .line 25
    invoke-static {p0, p1, v1, v2}, Lt70;->c(JJ)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-static {p2, p0}, Lcw0;->b(FF)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    return-wide v1

    .line 41
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    add-float/2addr p2, p0

    .line 44
    float-to-double p0, p2

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    double-to-float p0, p0

    .line 50
    const/high16 p1, 0x40900000    # 4.5f

    .line 51
    .line 52
    mul-float/2addr p0, p1

    .line 53
    const/high16 p1, 0x40000000    # 2.0f

    .line 54
    .line 55
    add-float/2addr p0, p1

    .line 56
    const/high16 p1, 0x42c80000    # 100.0f

    .line 57
    .line 58
    div-float/2addr p0, p1

    .line 59
    iget-wide p1, v0, Ly70;->t:J

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Lt70;->b(FJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    invoke-static {p0, p1, v1, v2}, Lc75;->q(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    :cond_1
    return-wide p0
.end method
