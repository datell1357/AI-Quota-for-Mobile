.class public final Lro1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J

.field public final g:I

.field public final h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Lqo1;

.field public k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFJIZI)V
    .locals 11

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    and-int/lit8 v1, v0, 0x20

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-wide v1, Lt70;->f:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-wide/from16 v1, p6

    .line 17
    .line 18
    :goto_0
    and-int/lit8 v3, v0, 0x40

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x5

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move/from16 v3, p8

    .line 25
    .line 26
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    move/from16 v0, p9

    .line 33
    .line 34
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lro1;->a:Ljava/lang/String;

    .line 38
    .line 39
    iput p2, p0, Lro1;->b:F

    .line 40
    .line 41
    iput p3, p0, Lro1;->c:F

    .line 42
    .line 43
    iput p4, p0, Lro1;->d:F

    .line 44
    .line 45
    move/from16 p1, p5

    .line 46
    .line 47
    iput p1, p0, Lro1;->e:F

    .line 48
    .line 49
    iput-wide v1, p0, Lro1;->f:J

    .line 50
    .line 51
    iput v3, p0, Lro1;->g:I

    .line 52
    .line 53
    iput-boolean v0, p0, Lro1;->h:Z

    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lro1;->i:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v0, Lqo1;

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/16 v10, 0x3ff

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-direct/range {v0 .. v10}, Lqo1;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lro1;->j:Lqo1;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static a(Lro1;Ljava/util/ArrayList;Lsp3;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lro1;->k:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 8
    .line 9
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lro1;->i:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lqo1;

    .line 25
    .line 26
    iget-object v0, v0, Lqo1;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Lha4;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/high16 v8, 0x3f800000    # 1.0f

    .line 37
    .line 38
    const/high16 v9, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x2

    .line 42
    const/high16 v12, 0x3f800000    # 1.0f

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    const/high16 v14, 0x3f800000    # 1.0f

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    move-object/from16 v3, p1

    .line 49
    .line 50
    move-object/from16 v5, p2

    .line 51
    .line 52
    invoke-direct/range {v1 .. v15}, Lha4;-><init>(Ljava/lang/String;Ljava/util/List;ILzf5;FLzf5;FFIIFFFF)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final b()Lso1;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lro1;->k:Z

    .line 4
    .line 5
    const-string v2, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v1, v0, Lro1;->i:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-le v3, v4, :cond_2

    .line 20
    .line 21
    iget-boolean v3, v0, Lro1;->k:Z

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v4

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lqo1;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sub-int/2addr v5, v4

    .line 44
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lqo1;

    .line 49
    .line 50
    iget-object v1, v1, Lqo1;->j:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v4, Lda4;

    .line 53
    .line 54
    iget-object v5, v3, Lqo1;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget v6, v3, Lqo1;->b:F

    .line 57
    .line 58
    iget v7, v3, Lqo1;->c:F

    .line 59
    .line 60
    iget v8, v3, Lqo1;->d:F

    .line 61
    .line 62
    iget v9, v3, Lqo1;->e:F

    .line 63
    .line 64
    iget v10, v3, Lqo1;->f:F

    .line 65
    .line 66
    iget v11, v3, Lqo1;->g:F

    .line 67
    .line 68
    iget v12, v3, Lqo1;->h:F

    .line 69
    .line 70
    iget-object v13, v3, Lqo1;->i:Ljava/util/List;

    .line 71
    .line 72
    iget-object v14, v3, Lqo1;->j:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct/range {v4 .. v14}, Lda4;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v5, Lso1;

    .line 82
    .line 83
    new-instance v6, Lda4;

    .line 84
    .line 85
    iget-object v1, v0, Lro1;->j:Lqo1;

    .line 86
    .line 87
    iget-object v7, v1, Lqo1;->a:Ljava/lang/String;

    .line 88
    .line 89
    iget v8, v1, Lqo1;->b:F

    .line 90
    .line 91
    iget v9, v1, Lqo1;->c:F

    .line 92
    .line 93
    iget v10, v1, Lqo1;->d:F

    .line 94
    .line 95
    iget v11, v1, Lqo1;->e:F

    .line 96
    .line 97
    iget v12, v1, Lqo1;->f:F

    .line 98
    .line 99
    iget v13, v1, Lqo1;->g:F

    .line 100
    .line 101
    iget v14, v1, Lqo1;->h:F

    .line 102
    .line 103
    iget-object v15, v1, Lqo1;->i:Ljava/util/List;

    .line 104
    .line 105
    iget-object v1, v1, Lqo1;->j:Ljava/util/ArrayList;

    .line 106
    .line 107
    move-object/from16 v16, v1

    .line 108
    .line 109
    invoke-direct/range {v6 .. v16}, Lda4;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 110
    .line 111
    .line 112
    iget v14, v0, Lro1;->g:I

    .line 113
    .line 114
    iget-boolean v15, v0, Lro1;->h:Z

    .line 115
    .line 116
    move-object v11, v6

    .line 117
    iget-object v6, v0, Lro1;->a:Ljava/lang/String;

    .line 118
    .line 119
    iget v7, v0, Lro1;->b:F

    .line 120
    .line 121
    iget v8, v0, Lro1;->c:F

    .line 122
    .line 123
    iget v9, v0, Lro1;->d:F

    .line 124
    .line 125
    iget v10, v0, Lro1;->e:F

    .line 126
    .line 127
    iget-wide v12, v0, Lro1;->f:J

    .line 128
    .line 129
    invoke-direct/range {v5 .. v15}, Lso1;-><init>(Ljava/lang/String;FFFFLda4;JIZ)V

    .line 130
    .line 131
    .line 132
    iput-boolean v4, v0, Lro1;->k:Z

    .line 133
    .line 134
    return-object v5
.end method
