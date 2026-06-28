.class public abstract Llx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Llc0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljx3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljx3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Llc0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Llc0;-><init>(Lne1;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Llx3;->a:Llc0;

    .line 13
    .line 14
    return-void
.end method

.method public static final a(Lay3;Lka0;Lag1;I)V
    .locals 3

    .line 1
    const v0, 0xe9e0ce

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v2, 0x12

    .line 32
    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 39
    .line 40
    invoke-virtual {p2, v2, v1}, Lag1;->N(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    sget-object v1, Llx3;->a:Llc0;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lay3;

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Lay3;->c(Lay3;)Lay3;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    and-int/lit8 v0, v0, 0x70

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    or-int/2addr v0, v2

    .line 67
    invoke-static {v1, p1, p2, v0}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p2}, Lag1;->Q()V

    .line 72
    .line 73
    .line 74
    :goto_3
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    new-instance v0, Ll4;

    .line 81
    .line 82
    const/16 v1, 0x13

    .line 83
    .line 84
    invoke-direct {v0, p3, v1, p0, p1}, Ll4;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public static final b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V
    .locals 34

    move-object/from16 v0, p18

    move/from16 v1, p19

    move/from16 v2, p20

    move/from16 v3, p21

    const v4, 0x6bda414b

    .line 1
    invoke-virtual {v0, v4}, Lag1;->X(I)Lag1;

    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v1

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    :cond_2
    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_2

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v7, v12

    :goto_3
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_5

    or-int/lit16 v7, v7, 0x180

    move-wide/from16 v5, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v15, v1, 0x180

    move-wide/from16 v5, p2

    if-nez v15, :cond_7

    invoke-virtual {v0, v5, v6}, Lag1;->e(J)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x100

    goto :goto_4

    :cond_6
    const/16 v17, 0x80

    :goto_4
    or-int v7, v7, v17

    :cond_7
    :goto_5
    or-int/lit16 v9, v7, 0xc00

    and-int/lit8 v18, v3, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_8

    or-int/lit16 v9, v7, 0x6c00

    move-wide/from16 v10, p4

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v1, 0x6000

    move-wide/from16 v10, p4

    if-nez v7, :cond_a

    invoke-virtual {v0, v10, v11}, Lag1;->e(J)Z

    move-result v21

    if-eqz v21, :cond_9

    move/from16 v21, v20

    goto :goto_6

    :cond_9
    move/from16 v21, v19

    :goto_6
    or-int v9, v9, v21

    :cond_a
    :goto_7
    const/high16 v21, 0x30000

    or-int v22, v9, v21

    and-int/lit8 v23, v3, 0x40

    const/high16 v24, 0x1b0000

    if-eqz v23, :cond_c

    or-int v22, v9, v24

    :cond_b
    move-object/from16 v9, p6

    goto :goto_9

    :cond_c
    const/high16 v9, 0x180000

    and-int/2addr v9, v1

    if-nez v9, :cond_b

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const/high16 v25, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v25, 0x80000

    :goto_8
    or-int v22, v22, v25

    :goto_9
    and-int/lit16 v7, v3, 0x80

    const/high16 v26, 0x400000

    const/high16 v27, 0x800000

    const/high16 v28, 0xc00000

    if-eqz v7, :cond_e

    or-int v22, v22, v28

    move-object/from16 v13, p7

    goto :goto_b

    :cond_e
    and-int v29, v1, v28

    move-object/from16 v13, p7

    if-nez v29, :cond_10

    invoke-virtual {v0, v13}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    move/from16 v30, v27

    goto :goto_a

    :cond_f
    move/from16 v30, v26

    :goto_a
    or-int v22, v22, v30

    :cond_10
    :goto_b
    const/high16 v30, 0x36000000

    or-int v22, v22, v30

    and-int/lit16 v14, v3, 0x400

    if-eqz v14, :cond_11

    or-int/lit8 v15, v2, 0x6

    move/from16 v16, v15

    move-object/from16 v15, p10

    goto :goto_d

    :cond_11
    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    const/16 v31, 0x4

    goto :goto_c

    :cond_12
    const/16 v31, 0x2

    :goto_c
    or-int v16, v2, v31

    :goto_d
    and-int/lit16 v1, v3, 0x800

    if-eqz v1, :cond_14

    or-int/lit8 v16, v16, 0x30

    move-wide/from16 v4, p11

    :cond_13
    :goto_e
    move/from16 v6, v16

    goto :goto_10

    :cond_14
    and-int/lit8 v31, v2, 0x30

    move-wide/from16 v4, p11

    if-nez v31, :cond_13

    invoke-virtual {v0, v4, v5}, Lag1;->e(J)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v17, 0x20

    goto :goto_f

    :cond_15
    const/16 v17, 0x10

    :goto_f
    or-int v16, v16, v17

    goto :goto_e

    :goto_10
    move/from16 v16, v1

    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_17

    or-int/lit16 v6, v6, 0x180

    move/from16 v17, v1

    :cond_16
    move/from16 v1, p13

    goto :goto_12

    :cond_17
    move/from16 v17, v1

    and-int/lit16 v1, v2, 0x180

    if-nez v1, :cond_16

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Lag1;->d(I)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v29, 0x100

    goto :goto_11

    :cond_18
    const/16 v29, 0x80

    :goto_11
    or-int v6, v6, v29

    :goto_12
    or-int/lit16 v1, v6, 0xc00

    move/from16 v25, v1

    and-int/lit16 v1, v3, 0x4000

    if-eqz v1, :cond_19

    or-int/lit16 v6, v6, 0x6c00

    move/from16 v19, v6

    move/from16 v6, p15

    goto :goto_13

    :cond_19
    and-int/lit16 v6, v2, 0x6000

    if-nez v6, :cond_1b

    move/from16 v6, p15

    invoke-virtual {v0, v6}, Lag1;->d(I)Z

    move-result v29

    if-eqz v29, :cond_1a

    move/from16 v19, v20

    :cond_1a
    or-int v19, v25, v19

    goto :goto_13

    :cond_1b
    move/from16 v6, p15

    move/from16 v19, v25

    :goto_13
    or-int v19, v19, v24

    const/high16 v20, 0x20000

    and-int v24, v3, v20

    if-nez v24, :cond_1c

    move/from16 v24, v1

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lag1;->f(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    move/from16 v26, v27

    goto :goto_14

    :cond_1c
    move/from16 v24, v1

    move-object/from16 v1, p17

    :cond_1d
    :goto_14
    or-int v19, v19, v26

    const v25, 0x12492493

    and-int v1, v22, v25

    const v2, 0x12492492

    const/4 v3, 0x0

    const/16 v25, 0x1

    if-ne v1, v2, :cond_1f

    const v1, 0x492493

    and-int v1, v19, v1

    const v2, 0x492492

    if-eq v1, v2, :cond_1e

    goto :goto_15

    :cond_1e
    move v1, v3

    goto :goto_16

    :cond_1f
    :goto_15
    move/from16 v1, v25

    :goto_16
    and-int/lit8 v2, v22, 0x1

    invoke-virtual {v0, v2, v1}, Lag1;->N(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lag1;->S()V

    and-int/lit8 v1, p19, 0x1

    const v2, -0x1c00001

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lag1;->x()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_17

    .line 2
    :cond_20
    invoke-virtual {v0}, Lag1;->Q()V

    and-int v1, p21, v20

    if-eqz v1, :cond_21

    and-int v19, v19, v2

    :cond_21
    move-object/from16 v1, p1

    move-wide/from16 v26, p2

    move-wide/from16 v29, p8

    move/from16 v7, p13

    move/from16 v25, p14

    move/from16 v2, p16

    move-object/from16 v8, p17

    goto :goto_1c

    :cond_22
    :goto_17
    if-eqz v8, :cond_23

    .line 3
    sget-object v1, Lkd2;->b:Lkd2;

    goto :goto_18

    :cond_23
    move-object/from16 v1, p1

    :goto_18
    if-eqz v12, :cond_24

    .line 4
    sget-wide v26, Lt70;->f:J

    goto :goto_19

    :cond_24
    move-wide/from16 v26, p2

    :goto_19
    if-eqz v18, :cond_25

    .line 5
    sget-wide v10, Lcy3;->c:J

    :cond_25
    const/4 v8, 0x0

    if-eqz v23, :cond_26

    move-object v9, v8

    :cond_26
    if-eqz v7, :cond_27

    move-object v13, v8

    .line 6
    :cond_27
    sget-wide v29, Lcy3;->c:J

    if-eqz v14, :cond_28

    move-object v15, v8

    :cond_28
    if-eqz v16, :cond_29

    move-wide/from16 v4, v29

    :cond_29
    if-eqz v17, :cond_2a

    move/from16 v7, v25

    goto :goto_1a

    :cond_2a
    move/from16 v7, p13

    :goto_1a
    if-eqz v24, :cond_2b

    const v6, 0x7fffffff

    :cond_2b
    and-int v8, p21, v20

    if-eqz v8, :cond_2c

    .line 7
    sget-object v8, Llx3;->a:Llc0;

    .line 8
    invoke-virtual {v0, v8}, Lag1;->j(Lh03;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lay3;

    and-int v19, v19, v2

    :goto_1b
    move/from16 v2, v25

    goto :goto_1c

    :cond_2c
    move-object/from16 v8, p17

    goto :goto_1b

    .line 9
    :goto_1c
    invoke-virtual {v0}, Lag1;->q()V

    const v12, -0x21b088d2

    .line 10
    invoke-virtual {v0, v12}, Lag1;->W(I)V

    const-wide/16 v16, 0x10

    cmp-long v12, v26, v16

    if-eqz v12, :cond_2d

    move-object/from16 p14, v1

    move/from16 p15, v2

    move-wide/from16 v23, v26

    goto :goto_1e

    :cond_2d
    const v12, -0x21b085cd

    invoke-virtual {v0, v12}, Lag1;->W(I)V

    invoke-virtual {v8}, Lay3;->b()J

    move-result-wide v23

    cmp-long v12, v23, v16

    if-eqz v12, :cond_2e

    move-object/from16 p14, v1

    move/from16 p15, v2

    goto :goto_1d

    .line 11
    :cond_2e
    sget-object v12, Lbg0;->a:Llc0;

    .line 12
    invoke-virtual {v0, v12}, Lag1;->j(Lh03;)Ljava/lang/Object;

    move-result-object v12

    .line 13
    check-cast v12, Lt70;

    move-object/from16 p14, v1

    move/from16 p15, v2

    .line 14
    iget-wide v1, v12, Lt70;->a:J

    move-wide/from16 v23, v1

    .line 15
    :goto_1d
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    :goto_1e
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    if-eqz v15, :cond_2f

    .line 16
    iget v3, v15, Lvw3;->a:I

    :cond_2f
    const v1, 0xfd6f50

    move/from16 p13, v1

    move/from16 p10, v3

    move-wide/from16 p11, v4

    move-object/from16 p1, v8

    move-object/from16 p6, v9

    move-wide/from16 p4, v10

    move-object/from16 p7, v13

    move-wide/from16 p2, v23

    move-wide/from16 p8, v29

    .line 17
    invoke-static/range {p1 .. p13}, Lay3;->d(Lay3;JJLpb1;Lra1;JIJI)Lay3;

    move-result-object v1

    and-int/lit8 v2, v22, 0x7e

    or-int/lit16 v2, v2, 0xc00

    shl-int/lit8 v3, v19, 0x6

    const v12, 0xe000

    and-int/2addr v12, v3

    or-int/2addr v2, v12

    or-int v2, v2, v21

    const/high16 v12, 0x380000

    and-int/2addr v3, v12

    or-int/2addr v2, v3

    or-int v2, v2, v28

    shl-int/lit8 v3, v22, 0x12

    const/high16 v12, 0x70000000

    and-int/2addr v3, v12

    or-int/2addr v2, v3

    move-object/from16 p1, p0

    move-object/from16 p2, p14

    move/from16 p7, p15

    move-object/from16 p8, v0

    move-object/from16 p3, v1

    move/from16 p9, v2

    move/from16 p6, v6

    move/from16 p4, v7

    move/from16 p5, v25

    .line 18
    invoke-static/range {p1 .. p9}, Lfl4;->a(Ljava/lang/String;Lnd2;Lay3;IZIILag1;I)V

    move-object/from16 v1, p2

    move/from16 v0, p7

    move/from16 v17, v0

    move-object v2, v1

    move/from16 v16, v6

    move v14, v7

    move-object/from16 v18, v8

    move-object v7, v9

    move-object v8, v13

    move-wide v12, v4

    move-wide v5, v10

    move-object v11, v15

    move/from16 v15, v25

    move-wide/from16 v3, v26

    move-wide/from16 v9, v29

    goto :goto_1f

    .line 19
    :cond_30
    invoke-virtual/range {p18 .. p18}, Lag1;->Q()V

    move-object/from16 v2, p1

    move/from16 v14, p13

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v16, v6

    move-object v7, v9

    move-object v8, v13

    move-wide v12, v4

    move-wide v5, v10

    move-object v11, v15

    move-wide/from16 v3, p2

    move-wide/from16 v9, p8

    move/from16 v15, p14

    .line 20
    :goto_1f
    invoke-virtual/range {p18 .. p18}, Lag1;->r()Lc33;

    move-result-object v0

    if-eqz v0, :cond_31

    move-object v1, v0

    new-instance v0, Lkx3;

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lkx3;-><init>(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;III)V

    move-object/from16 v1, v33

    .line 21
    iput-object v0, v1, Lc33;->d:Ldf1;

    :cond_31
    return-void
.end method
