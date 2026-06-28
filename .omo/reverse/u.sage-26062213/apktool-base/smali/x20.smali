.class public final Lx20;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lkx0;


# instance fields
.field public final n:Lw20;

.field public final o:Leh;

.field public p:Llb;

.field public q:Llb;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw20;

    .line 5
    .line 6
    sget-object v1, Lc75;->d:Lds0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lw20;->a:Las0;

    .line 12
    .line 13
    sget-object v1, Lhy1;->n:Lhy1;

    .line 14
    .line 15
    iput-object v1, v0, Lw20;->b:Lhy1;

    .line 16
    .line 17
    sget-object v1, Lc01;->a:Lc01;

    .line 18
    .line 19
    iput-object v1, v0, Lw20;->c:Lv20;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, v0, Lw20;->d:J

    .line 24
    .line 25
    iput-object v0, p0, Lx20;->n:Lw20;

    .line 26
    .line 27
    new-instance v0, Leh;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Leh;-><init>(Lx20;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lx20;->o:Leh;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Lx20;JLtv4;I)Llb;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lx20;->e(Ltv4;)Llb;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p3, p0, Llb;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p3, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p0}, Llb;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1, p1, p2}, Lt70;->c(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Llb;->f(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Llb;->p:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/graphics/Shader;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Llb;->h(Landroid/graphics/Shader;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Llb;->q:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Low;

    .line 35
    .line 36
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Llb;->g(Low;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget p1, p0, Llb;->n:I

    .line 46
    .line 47
    if-ne p1, p4, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {p0, p4}, Llb;->e(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 p2, 0x1

    .line 58
    if-ne p1, p2, :cond_4

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 62
    .line 63
    .line 64
    return-object p0
.end method


# virtual methods
.method public final A(Lsb;Lzf5;FLtv4;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v0, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v7, 0x1

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v4, p3

    .line 10
    move-object v3, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v7}, Lx20;->c(Lzf5;Ltv4;FLow;II)Llb;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {v0, p1, p0}, Lv20;->g(Lsb;Llb;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final E(Lzf5;JJFLtv4;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v0, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p2, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-wide v4, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p2, v4

    .line 20
    long-to-int p2, p2

    .line 21
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    shr-long v6, p4, v1

    .line 30
    .line 31
    long-to-int v1, v6

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-float/2addr v1, v2

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    and-long/2addr v4, p4

    .line 42
    long-to-int v2, v4

    .line 43
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-float/2addr v2, p2

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v10, 0x1

    .line 50
    const/4 v9, 0x3

    .line 51
    move-object v4, p0

    .line 52
    move-object v5, p1

    .line 53
    move/from16 v7, p6

    .line 54
    .line 55
    move-object/from16 v6, p7

    .line 56
    .line 57
    invoke-virtual/range {v4 .. v10}, Lx20;->c(Lzf5;Ltv4;FLow;II)Llb;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    move-object/from16 p5, p0

    .line 62
    .line 63
    move p2, p3

    .line 64
    move-object p0, v0

    .line 65
    move p3, v1

    .line 66
    move p4, v2

    .line 67
    move p1, v3

    .line 68
    invoke-interface/range {p0 .. p5}, Lv20;->n(FFFFLlb;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final M(Lgb;JJJFLow;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v1, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lt51;->f:Lt51;

    .line 7
    .line 8
    const/4 v7, 0x3

    .line 9
    move-object v2, p0

    .line 10
    move/from16 v5, p8

    .line 11
    .line 12
    move-object/from16 v6, p9

    .line 13
    .line 14
    move/from16 v8, p10

    .line 15
    .line 16
    invoke-virtual/range {v2 .. v8}, Lx20;->c(Lzf5;Ltv4;FLow;II)Llb;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    move-object v2, p1

    .line 21
    move-wide v3, p2

    .line 22
    move-wide v5, p4

    .line 23
    move-wide/from16 v7, p6

    .line 24
    .line 25
    invoke-interface/range {v1 .. v9}, Lv20;->d(Lgb;JJJLlb;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object p0, p0, Lw20;->a:Las0;

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

.method public final b0(JJJF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v0, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    iget-object v1, p0, Lx20;->q:Llb;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lon4;->e()Llb;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v2}, Llb;->k(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lx20;->q:Llb;

    .line 18
    .line 19
    :cond_0
    iget-object p0, v1, Llb;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v1}, Llb;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4, p1, p2}, Lt70;->c(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Llb;->f(J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, v1, Llb;->p:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/graphics/Shader;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Llb;->h(Landroid/graphics/Shader;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, v1, Llb;->q:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Low;

    .line 49
    .line 50
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, p2}, Llb;->g(Low;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget p1, v1, Llb;->n:I

    .line 60
    .line 61
    const/4 p2, 0x3

    .line 62
    if-ne p1, p2, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {v1, p2}, Llb;->e(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    cmpg-float p1, p1, p7

    .line 73
    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {p0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/high16 p2, 0x40800000    # 4.0f

    .line 85
    .line 86
    cmpg-float p1, p1, p2

    .line 87
    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {v1}, Llb;->b()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/4 p2, 0x0

    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    invoke-virtual {v1, p2}, Llb;->i(I)V

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-virtual {v1}, Llb;->c()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_8
    invoke-virtual {v1, p2}, Llb;->j(I)V

    .line 113
    .line 114
    .line 115
    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v2, :cond_9

    .line 120
    .line 121
    :goto_5
    move-wide p1, p3

    .line 122
    move-wide p3, p5

    .line 123
    move-object p0, v0

    .line 124
    move-object p5, v1

    .line 125
    goto :goto_6

    .line 126
    :cond_9
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :goto_6
    invoke-interface/range {p0 .. p5}, Lv20;->k(JJLlb;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final c(Lzf5;Ltv4;FLow;II)Llb;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lx20;->e(Ltv4;)Llb;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p2, Llb;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lkx0;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p1, p3, v1, v2, p2}, Lzf5;->j(FJLlb;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p2, Llb;->p:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/graphics/Shader;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-virtual {p2, p0}, Llb;->h(Landroid/graphics/Shader;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2}, Llb;->a()J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    sget-wide v1, Lt70;->b:J

    .line 34
    .line 35
    invoke-static {p0, p1, v1, v2}, Lt70;->c(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, v1, v2}, Llb;->f(J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    int-to-float p0, p0

    .line 49
    const/high16 p1, 0x437f0000    # 255.0f

    .line 50
    .line 51
    div-float/2addr p0, p1

    .line 52
    cmpg-float p0, p0, p3

    .line 53
    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p2, p3}, Llb;->d(F)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p0, p2, Llb;->q:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Low;

    .line 63
    .line 64
    invoke-static {p0, p4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2, p4}, Llb;->g(Low;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget p0, p2, Llb;->n:I

    .line 74
    .line 75
    if-ne p0, p5, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p2, p5}, Llb;->e(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-ne p0, p6, :cond_6

    .line 86
    .line 87
    return-object p2

    .line 88
    :cond_6
    const/4 p0, 0x1

    .line 89
    if-nez p6, :cond_7

    .line 90
    .line 91
    move p1, p0

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    const/4 p1, 0x0

    .line 94
    :goto_2
    xor-int/2addr p0, p1

    .line 95
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 96
    .line 97
    .line 98
    return-object p2
.end method

.method public final e(Ltv4;)Llb;
    .locals 3

    .line 1
    sget-object v0, Lt51;->f:Lt51;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lx20;->p:Llb;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lon4;->e()Llb;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Llb;->k(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lx20;->p:Llb;

    .line 22
    .line 23
    :cond_0
    return-object p1

    .line 24
    :cond_1
    instance-of v0, p1, Lht3;

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    iget-object v0, p0, Lx20;->q:Llb;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lon4;->e()Llb;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Llb;->k(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lx20;->q:Llb;

    .line 41
    .line 42
    :cond_2
    iget-object p0, v0, Llb;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    check-cast p1, Lht3;

    .line 51
    .line 52
    iget v2, p1, Lht3;->f:F

    .line 53
    .line 54
    cmpg-float v1, v1, v2

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Llb;->b()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget v2, p1, Lht3;->h:I

    .line 67
    .line 68
    if-ne v1, v2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0, v2}, Llb;->i(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget v2, p1, Lht3;->g:F

    .line 79
    .line 80
    cmpg-float v1, v1, v2

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-virtual {v0}, Llb;->c()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    iget p1, p1, Lht3;->i:I

    .line 93
    .line 94
    if-ne p0, p1, :cond_6

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_6
    invoke-virtual {v0, p1}, Llb;->j(I)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    invoke-static {}, Lp61;->x()V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0
.end method

.method public final f(Lsb;JLtv4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v0, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {p0, p2, p3, p4, v1}, Lx20;->a(Lx20;JLtv4;I)Llb;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {v0, p1, p0}, Lv20;->g(Lsb;Llb;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object p0, p0, Lw20;->b:Lhy1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object p0, p0, Lw20;->a:Las0;

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

.method public final p(Lzf5;JJJFLtv4;)V
    .locals 14

    .line 1
    iget-object v1, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v7, v1, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p2, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    const-wide v3, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long v5, p2, v3

    .line 20
    .line 21
    long-to-int v5, v5

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    shr-long v10, p4, v1

    .line 31
    .line 32
    long-to-int v6, v10

    .line 33
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    add-float v10, v6, v2

    .line 38
    .line 39
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    and-long v5, p4, v3

    .line 44
    .line 45
    long-to-int v5, v5

    .line 46
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-float v11, v5, v2

    .line 51
    .line 52
    shr-long v1, p6, v1

    .line 53
    .line 54
    long-to-int v1, v1

    .line 55
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    and-long v1, p6, v3

    .line 60
    .line 61
    long-to-int v1, v1

    .line 62
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v6, 0x1

    .line 68
    const/4 v5, 0x3

    .line 69
    move-object v0, p0

    .line 70
    move-object v1, p1

    .line 71
    move/from16 v3, p8

    .line 72
    .line 73
    move-object/from16 v2, p9

    .line 74
    .line 75
    invoke-virtual/range {v0 .. v6}, Lx20;->c(Lzf5;Ltv4;FLow;II)Llb;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object/from16 p7, v0

    .line 80
    .line 81
    move-object p0, v7

    .line 82
    move p1, v8

    .line 83
    move/from16 p2, v9

    .line 84
    .line 85
    move/from16 p3, v10

    .line 86
    .line 87
    move/from16 p4, v11

    .line 88
    .line 89
    move/from16 p5, v12

    .line 90
    .line 91
    move/from16 p6, v13

    .line 92
    .line 93
    invoke-interface/range {p0 .. p7}, Lv20;->i(FFFFFFLlb;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final s0(JFFJJLtv4;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v1, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    shr-long v2, p5, v0

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    move v3, v2

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-wide v4, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long v6, p5, v4

    .line 21
    .line 22
    long-to-int v6, v6

    .line 23
    move v7, v3

    .line 24
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    shr-long v8, p7, v0

    .line 33
    .line 34
    long-to-int v0, v8

    .line 35
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-float/2addr v0, v7

    .line 40
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    and-long v4, p7, v4

    .line 45
    .line 46
    long-to-int v4, v4

    .line 47
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    add-float v5, v4, v6

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    move-object/from16 v6, p9

    .line 55
    .line 56
    invoke-static {p0, p1, p2, v6, v4}, Lx20;->a(Lx20;JLtv4;I)Llb;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    move v6, p3

    .line 61
    move v7, p4

    .line 62
    move v4, v0

    .line 63
    invoke-interface/range {v1 .. v8}, Lv20;->r(FFFFFFLlb;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final u(JJJLtv4;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lx20;->n:Lw20;

    .line 2
    .line 3
    iget-object v0, v0, Lw20;->c:Lv20;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p3, v1

    .line 8
    .line 9
    long-to-int v2, v2

    .line 10
    move-wide v3, p1

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-wide v5, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long p2, p3, v5

    .line 21
    .line 22
    long-to-int p2, p2

    .line 23
    move p3, p2

    .line 24
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    shr-long v1, p5, v1

    .line 33
    .line 34
    long-to-int v1, v1

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-float/2addr v1, p4

    .line 40
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    and-long p4, p5, v5

    .line 45
    .line 46
    long-to-int p4, p4

    .line 47
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    add-float/2addr p4, p3

    .line 52
    invoke-static {p0, v3, v4, p7, p8}, Lx20;->a(Lx20;JLtv4;I)Llb;

    .line 53
    .line 54
    .line 55
    move-result-object p5

    .line 56
    move-object p0, v0

    .line 57
    move p3, v1

    .line 58
    invoke-interface/range {p0 .. p5}, Lv20;->n(FFFFLlb;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final z()Leh;
    .locals 0

    .line 1
    iget-object p0, p0, Lx20;->o:Leh;

    .line 2
    .line 3
    return-object p0
.end method
