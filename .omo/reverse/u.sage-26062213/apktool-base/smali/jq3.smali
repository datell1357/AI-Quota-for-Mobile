.class public abstract Ljq3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:Lcx3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {v0}, Lon4;->D(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Ljq3;->a:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lon4;->D(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Ljq3;->b:J

    .line 15
    .line 16
    sget-wide v0, Lt70;->e:J

    .line 17
    .line 18
    sput-wide v0, Ljq3;->c:J

    .line 19
    .line 20
    sget-wide v0, Lt70;->b:J

    .line 21
    .line 22
    const-wide/16 v2, 0x10

    .line 23
    .line 24
    cmp-long v2, v0, v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Lg80;

    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Lg80;-><init>(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v2, Lbx3;->o:Lbx3;

    .line 35
    .line 36
    :goto_0
    sput-object v2, Ljq3;->d:Lcx3;

    .line 37
    .line 38
    return-void
.end method

.method public static final a(Liq3;JLzf5;FJLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;Ltv4;)Liq3;
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-object/from16 v4, p19

    .line 1
    sget-object v15, Lbx3;->o:Lbx3;

    .line 2
    sget-object v16, Lcy3;->b:[Ldy3;

    const-wide v16, 0xff00000000L

    and-long v18, v5, v16

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    const-wide/16 v22, 0x10

    if-nez v18, :cond_0

    move-object/from16 v19, v15

    goto :goto_0

    :cond_0
    move-object/from16 v19, v15

    .line 3
    iget-wide v14, v0, Liq3;->b:J

    .line 4
    invoke-static {v5, v6, v14, v15}, Lcy3;->a(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_0
    if-nez v3, :cond_5

    cmp-long v14, v1, v22

    if-eqz v14, :cond_5

    .line 5
    iget-object v14, v0, Liq3;->a:Lcx3;

    .line 6
    invoke-interface {v14}, Lcx3;->d()J

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Lt70;->c(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p14

    :cond_2
    move-wide/from16 v4, p17

    :cond_3
    move-object/from16 v6, p20

    :cond_4
    move-object/from16 v7, p21

    goto/16 :goto_7

    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    .line 7
    iget-object v14, v0, Liq3;->d:Lnb1;

    .line 8
    invoke-virtual {v8, v14}, Lnb1;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_6
    if-eqz v7, :cond_7

    .line 9
    iget-object v14, v0, Liq3;->c:Lpb1;

    .line 10
    invoke-virtual {v7, v14}, Lpb1;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_7
    if-eqz v10, :cond_8

    .line 11
    iget-object v14, v0, Liq3;->f:Lra1;

    if-ne v10, v14, :cond_1

    :cond_8
    and-long v14, v12, v16

    cmp-long v14, v14, v20

    if-nez v14, :cond_9

    goto :goto_2

    .line 12
    :cond_9
    iget-wide v14, v0, Liq3;->h:J

    .line 13
    invoke-static {v12, v13, v14, v15}, Lcy3;->a(JJ)Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_2
    if-eqz v4, :cond_a

    .line 14
    iget-object v14, v0, Liq3;->m:Lyw3;

    .line 15
    invoke-virtual {v4, v14}, Lyw3;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 16
    :cond_a
    iget-object v14, v0, Liq3;->a:Lcx3;

    .line 17
    invoke-interface {v14}, Lcx3;->g()Lzf5;

    move-result-object v14

    invoke-static {v3, v14}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v3, :cond_b

    .line 18
    iget-object v14, v0, Liq3;->a:Lcx3;

    .line 19
    invoke-interface {v14}, Lcx3;->c()F

    move-result v14

    cmpg-float v14, p4, v14

    if-nez v14, :cond_1

    :cond_b
    if-eqz v9, :cond_c

    .line 20
    iget-object v14, v0, Liq3;->e:Lob1;

    .line 21
    invoke-virtual {v9, v14}, Lob1;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_c
    if-eqz v11, :cond_d

    .line 22
    iget-object v14, v0, Liq3;->g:Ljava/lang/String;

    .line 23
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_d
    if-eqz p14, :cond_e

    .line 24
    iget-object v14, v0, Liq3;->i:Leu;

    move-object/from16 v15, p14

    .line 25
    invoke-virtual {v15, v14}, Leu;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_e
    move-object/from16 v15, p14

    :goto_3
    if-eqz p15, :cond_f

    .line 26
    iget-object v14, v0, Liq3;->j:Lfx3;

    move-object/from16 v4, p15

    .line 27
    invoke-virtual {v4, v14}, Lfx3;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_4

    :cond_f
    move-object/from16 v4, p15

    :goto_4
    if-eqz p16, :cond_10

    .line 28
    iget-object v14, v0, Liq3;->k:Le72;

    move-object/from16 v4, p16

    .line 29
    invoke-virtual {v4, v14}, Le72;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :goto_5
    move-wide/from16 v4, p17

    goto :goto_6

    :cond_10
    move-object/from16 v4, p16

    goto :goto_5

    :goto_6
    cmp-long v6, v4, v22

    if-eqz v6, :cond_11

    .line 30
    iget-wide v6, v0, Liq3;->l:J

    .line 31
    invoke-static {v4, v5, v6, v7}, Lt70;->c(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_11
    move-object/from16 v6, p20

    if-eqz v6, :cond_12

    .line 32
    iget-object v7, v0, Liq3;->n:Lhl3;

    .line 33
    invoke-virtual {v6, v7}, Lhl3;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_12
    move-object/from16 v7, p21

    if-eqz v7, :cond_13

    .line 34
    iget-object v14, v0, Liq3;->o:Ltv4;

    .line 35
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_7

    :cond_13
    return-object v0

    :goto_7
    if-eqz v3, :cond_17

    .line 36
    instance-of v1, v3, Lsp3;

    if-eqz v1, :cond_15

    move-object v1, v3

    check-cast v1, Lsp3;

    .line 37
    iget-wide v1, v1, Lsp3;->h:J

    move/from16 v14, p4

    .line 38
    invoke-static {v14, v1, v2}, Ln44;->y0(FJ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-eqz v3, :cond_14

    .line 39
    new-instance v3, Lg80;

    invoke-direct {v3, v1, v2}, Lg80;-><init>(J)V

    goto :goto_8

    :cond_14
    move-object/from16 v3, v19

    goto :goto_8

    :cond_15
    move/from16 v14, p4

    .line 40
    instance-of v1, v3, Lqy;

    if-eqz v1, :cond_16

    new-instance v1, Lry;

    move-object v2, v3

    check-cast v2, Lqy;

    invoke-direct {v1, v2, v14}, Lry;-><init>(Lqy;F)V

    move-object v3, v1

    goto :goto_8

    .line 41
    :cond_16
    invoke-static {}, Lp61;->x()V

    const/4 v0, 0x0

    return-object v0

    :cond_17
    cmp-long v3, v1, v22

    if-eqz v3, :cond_14

    .line 42
    new-instance v3, Lg80;

    invoke-direct {v3, v1, v2}, Lg80;-><init>(J)V

    .line 43
    :goto_8
    iget-object v1, v0, Liq3;->a:Lcx3;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    instance-of v2, v3, Lry;

    if-eqz v2, :cond_19

    instance-of v14, v1, Lry;

    if-eqz v14, :cond_19

    .line 46
    new-instance v2, Lry;

    check-cast v3, Lry;

    .line 47
    iget-object v14, v3, Lry;->n:Lqy;

    .line 48
    iget v3, v3, Lry;->o:F

    .line 49
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 50
    check-cast v1, Lry;

    .line 51
    iget v3, v1, Lry;->o:F

    .line 52
    :cond_18
    invoke-direct {v2, v14, v3}, Lry;-><init>(Lqy;F)V

    move-object v3, v2

    goto :goto_9

    :cond_19
    if-eqz v2, :cond_1a

    .line 53
    instance-of v14, v1, Lry;

    if-nez v14, :cond_1a

    goto :goto_9

    :cond_1a
    if-nez v2, :cond_1c

    .line 54
    instance-of v2, v1, Lry;

    if-eqz v2, :cond_1c

    :cond_1b
    move-object v3, v1

    goto :goto_9

    :cond_1c
    move-object/from16 v2, v19

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_9
    if-nez v10, :cond_1d

    .line 56
    iget-object v1, v0, Liq3;->f:Lra1;

    move-object v10, v1

    :cond_1d
    if-nez v18, :cond_1e

    .line 57
    iget-wide v1, v0, Liq3;->b:J

    goto :goto_a

    :cond_1e
    move-wide/from16 v1, p5

    :goto_a
    if-nez p7, :cond_1f

    .line 58
    iget-object v14, v0, Liq3;->c:Lpb1;

    goto :goto_b

    :cond_1f
    move-object/from16 v14, p7

    :goto_b
    if-nez v8, :cond_20

    .line 59
    iget-object v8, v0, Liq3;->d:Lnb1;

    :cond_20
    if-nez v9, :cond_21

    .line 60
    iget-object v9, v0, Liq3;->e:Lob1;

    :cond_21
    if-nez v11, :cond_22

    .line 61
    iget-object v11, v0, Liq3;->g:Ljava/lang/String;

    :cond_22
    and-long v16, v12, v16

    cmp-long v16, v16, v20

    if-nez v16, :cond_23

    .line 62
    iget-wide v12, v0, Liq3;->h:J

    :cond_23
    if-nez v15, :cond_24

    .line 63
    iget-object v15, v0, Liq3;->i:Leu;

    :cond_24
    move-wide/from16 p2, v1

    if-nez p15, :cond_25

    .line 64
    iget-object v1, v0, Liq3;->j:Lfx3;

    goto :goto_c

    :cond_25
    move-object/from16 v1, p15

    :goto_c
    if-nez p16, :cond_26

    .line 65
    iget-object v2, v0, Liq3;->k:Le72;

    goto :goto_d

    :cond_26
    move-object/from16 v2, p16

    :goto_d
    cmp-long v16, v4, v22

    if-eqz v16, :cond_27

    goto :goto_e

    .line 66
    :cond_27
    iget-wide v4, v0, Liq3;->l:J

    :goto_e
    move-object/from16 p12, v1

    if-nez p19, :cond_28

    .line 67
    iget-object v1, v0, Liq3;->m:Lyw3;

    goto :goto_f

    :cond_28
    move-object/from16 v1, p19

    :goto_f
    if-nez v6, :cond_29

    .line 68
    iget-object v6, v0, Liq3;->n:Lhl3;

    :cond_29
    if-nez v7, :cond_2a

    .line 69
    iget-object v0, v0, Liq3;->o:Ltv4;

    goto :goto_10

    :cond_2a
    move-object v0, v7

    .line 70
    :goto_10
    new-instance v7, Liq3;

    move-object/from16 p18, v0

    move-object/from16 p16, v1

    move-object/from16 p13, v2

    move-object/from16 p1, v3

    move-wide/from16 p14, v4

    move-object/from16 p17, v6

    move-object/from16 p0, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-wide/from16 p9, v12

    move-object/from16 p4, v14

    move-object/from16 p11, v15

    invoke-direct/range {p0 .. p18}, Liq3;-><init>(Lcx3;JLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;Ltv4;)V

    move-object/from16 v0, p0

    return-object v0
.end method
