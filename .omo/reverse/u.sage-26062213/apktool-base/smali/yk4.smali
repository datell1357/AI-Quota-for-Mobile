.class public final Lyk4;
.super Lm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lgn4;

.field public final i:Lrn4;


# direct methods
.method public synthetic constructor <init>(Lgn4;Ljava/lang/String;ILrn4;I)V
    .locals 0

    .line 1
    iput p5, p0, Lyk4;->g:I

    .line 2
    .line 3
    iput-object p1, p0, Lyk4;->h:Lgn4;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lm1;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Lyk4;->i:Lrn4;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lyk4;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lyk4;->i:Lrn4;

    .line 7
    .line 8
    check-cast p0, Luz4;

    .line 9
    .line 10
    invoke-virtual {p0}, Luz4;->u()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lyk4;->i:Lrn4;

    .line 16
    .line 17
    check-cast p0, Lkz4;

    .line 18
    .line 19
    invoke-virtual {p0}, Lkz4;->u()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget p0, p0, Lyk4;->g:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget v0, p0, Lyk4;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lyk4;->i:Lrn4;

    .line 9
    .line 10
    check-cast p0, Lkz4;

    .line 11
    .line 12
    invoke-virtual {p0}, Lkz4;->z()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/lang/Long;Ljava/lang/Long;Lu35;JLxt4;Z)Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lm1;->a:I

    invoke-static {}, Lpq4;->a()V

    iget-object v2, v0, Lyk4;->h:Lgn4;

    iget-object v3, v2, Lib0;->a:Ljava/lang/Object;

    check-cast v3, Lr45;

    .line 2
    iget-object v4, v3, Lr45;->d:Lds4;

    iget-object v5, v3, Lr45;->f:La25;

    iget-object v3, v3, Lr45;->j:Lp15;

    .line 3
    iget-object v6, v0, Lm1;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 4
    sget-object v7, Le05;->F0:Ld05;

    .line 5
    invoke-virtual {v4, v6, v7}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    move-result v4

    iget-object v7, v0, Lyk4;->i:Lrn4;

    check-cast v7, Lkz4;

    .line 6
    invoke-virtual {v7}, Lkz4;->E()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, p6

    iget-wide v8, v8, Lxt4;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p4

    .line 7
    :goto_0
    invoke-static {v5}, Lr45;->l(Lq55;)V

    iget-object v10, v5, La25;->n:Lx15;

    iget-object v11, v5, La25;->i:Lx15;

    .line 8
    invoke-virtual {v5}, La25;->F()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    const/16 v16, 0x0

    if-eqz v12, :cond_6

    .line 9
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 11
    invoke-virtual {v7}, Lkz4;->t()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v7}, Lkz4;->u()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_1

    :cond_1
    move-object/from16 v13, v16

    .line 12
    :goto_1
    invoke-virtual {v7}, Lkz4;->v()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v14, "Evaluating filter. audience, filter, event"

    .line 13
    invoke-virtual {v10, v14, v12, v13, v15}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 15
    iget-object v2, v2, Lta5;->b:Lpb5;

    .line 16
    iget-object v2, v2, Lpb5;->g:Lub5;

    .line 17
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 18
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\nevent_filter {\n"

    .line 19
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lkz4;->t()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v7}, Lkz4;->u()I

    move-result v13

    .line 20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "filter_id"

    const/4 v15, 0x0

    invoke-static {v12, v15, v14, v13}, Lub5;->Q(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    iget-object v13, v2, Lib0;->a:Ljava/lang/Object;

    check-cast v13, Lr45;

    .line 21
    iget-object v13, v13, Lr45;->j:Lp15;

    .line 22
    invoke-virtual {v7}, Lkz4;->v()Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual {v13, v14}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "event_name"

    .line 24
    invoke-static {v12, v15, v14, v13}, Lub5;->Q(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lkz4;->B()Z

    move-result v13

    invoke-virtual {v7}, Lkz4;->C()Z

    move-result v14

    invoke-virtual {v7}, Lkz4;->E()Z

    move-result v15

    .line 25
    invoke-static {v13, v14, v15}, Lub5;->M(ZZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "filter_type"

    const/4 v15, 0x0

    .line 26
    invoke-static {v12, v15, v14, v13}, Lub5;->Q(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v7}, Lkz4;->z()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 27
    invoke-virtual {v7}, Lkz4;->A()Lrz4;

    move-result-object v13

    const-string v14, "event_count_filter"

    const/4 v15, 0x1

    invoke-static {v12, v15, v14, v13}, Lub5;->R(Ljava/lang/StringBuilder;ILjava/lang/String;Lrz4;)V

    .line 28
    :cond_4
    invoke-virtual {v7}, Lkz4;->x()I

    move-result v13

    if-lez v13, :cond_5

    const-string v13, "  filters {\n"

    .line 29
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lkz4;->w()Ljava/util/List;

    move-result-object v13

    .line 30
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnz4;

    const/4 v15, 0x2

    .line 31
    invoke-virtual {v2, v12, v15, v14}, Lub5;->J(Ljava/lang/StringBuilder;ILnz4;)V

    goto :goto_3

    :cond_5
    const/4 v15, 0x1

    .line 32
    invoke-static {v12, v15}, Lub5;->K(Ljava/lang/StringBuilder;I)V

    const-string v2, "}\n}\n"

    .line 33
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string v12, "Filter definition"

    invoke-virtual {v10, v2, v12}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :cond_6
    invoke-virtual {v7}, Lkz4;->t()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v7}, Lkz4;->u()I

    move-result v2

    const/16 v12, 0x100

    if-le v2, v12, :cond_8

    :cond_7
    move-object/from16 v19, v5

    goto/16 :goto_17

    .line 36
    :cond_8
    invoke-virtual {v7}, Lkz4;->B()Z

    move-result v2

    .line 37
    invoke-virtual {v7}, Lkz4;->C()Z

    move-result v6

    .line 38
    invoke-virtual {v7}, Lkz4;->E()Z

    move-result v12

    if-nez v2, :cond_9

    if-nez v6, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz p7, :cond_c

    if-nez v2, :cond_c

    .line 39
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    invoke-virtual {v7}, Lkz4;->t()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v7}, Lkz4;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_b
    move-object/from16 v1, v16

    const-string v2, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 42
    invoke-virtual {v10, v0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lu35;->y()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v7}, Lkz4;->z()Z

    move-result v6

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_e

    .line 44
    invoke-virtual {v7}, Lkz4;->A()Lrz4;

    move-result-object v6

    .line 45
    :try_start_0
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v8, v9}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v14, v6, v12, v13}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-object/from16 v6, v16

    :goto_5
    if-nez v6, :cond_d

    :goto_6
    move/from16 v20, v4

    move-object/from16 v19, v5

    goto/16 :goto_11

    .line 46
    :cond_d
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_e

    .line 47
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_e
    new-instance v6, Ljava/util/HashSet;

    .line 48
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-virtual {v7}, Lkz4;->w()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz4;

    .line 50
    invoke-virtual {v9}, Lnz4;->A()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 51
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 52
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null or empty param name in filter. event"

    .line 53
    invoke-virtual {v11, v1, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 54
    :cond_f
    invoke-virtual {v9}, Lnz4;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 55
    :cond_10
    new-instance v8, Ldi;

    const/4 v15, 0x0

    .line 56
    invoke-direct {v8, v15}, Lwm3;-><init>(I)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Lu35;->v()Ljava/util/List;

    move-result-object v9

    .line 58
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc45;

    .line 59
    invoke-virtual {v14}, Lc45;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 60
    invoke-virtual {v14}, Lc45;->x()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 61
    invoke-virtual {v14}, Lc45;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lc45;->x()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v14}, Lc45;->y()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_9

    :cond_12
    move-object/from16 v14, v16

    :goto_9
    invoke-virtual {v8, v15, v14}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 62
    :cond_13
    invoke-virtual {v14}, Lc45;->B()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 63
    invoke-virtual {v14}, Lc45;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lc45;->B()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual {v14}, Lc45;->C()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_a

    :cond_14
    move-object/from16 v14, v16

    .line 64
    :goto_a
    invoke-virtual {v8, v15, v14}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 65
    :cond_15
    invoke-virtual {v14}, Lc45;->v()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 66
    invoke-virtual {v14}, Lc45;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lc45;->w()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v15, v14}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 67
    :cond_16
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 68
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v14}, Lc45;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Unknown value for param. event, param"

    .line 70
    invoke-virtual {v11, v1, v3, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 71
    :cond_17
    invoke-virtual {v7}, Lkz4;->w()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz4;

    .line 72
    invoke-virtual {v9}, Lnz4;->x()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v9}, Lnz4;->y()Z

    move-result v14

    if-eqz v14, :cond_18

    const/4 v14, 0x1

    goto :goto_c

    :cond_18
    const/4 v14, 0x0

    .line 73
    :goto_c
    invoke-virtual {v9}, Lnz4;->A()Ljava/lang/String;

    move-result-object v15

    .line 74
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 75
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 76
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Event has empty param name. event"

    .line 77
    invoke-virtual {v11, v1, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 78
    :cond_19
    invoke-virtual {v8, v15}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 79
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_1d

    .line 80
    invoke-virtual {v9}, Lnz4;->v()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 81
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 82
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "No number filter for long param. event, param"

    .line 84
    invoke-virtual {v11, v1, v3, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 85
    :cond_1a
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9}, Lnz4;->w()Lrz4;

    move-result-object v9

    .line 86
    :try_start_1
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v12, v13}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 v12, 0x0

    invoke-static {v15, v9, v12, v13}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-object/from16 v9, v16

    :goto_d
    if-nez v9, :cond_1b

    goto/16 :goto_6

    .line 87
    :cond_1b
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v14, :cond_1c

    .line 88
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_6

    :cond_1c
    const-wide/16 v12, 0x0

    goto :goto_b

    .line 89
    :cond_1d
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_20

    .line 90
    invoke-virtual {v9}, Lnz4;->v()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 91
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 92
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "No number filter for double param. event, param"

    .line 94
    invoke-virtual {v11, v1, v3, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 95
    :cond_1e
    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v9}, Lnz4;->w()Lrz4;

    move-result-object v9

    .line 96
    :try_start_2
    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v12, v13}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v12

    invoke-static {v15, v9, v12, v13}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    move-object/from16 v9, v16

    :goto_e
    if-nez v9, :cond_1f

    goto/16 :goto_6

    .line 97
    :cond_1f
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v14, :cond_1c

    .line 98
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 99
    :cond_20
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_27

    .line 100
    invoke-virtual {v9}, Lnz4;->t()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 101
    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9}, Lnz4;->u()Lwz4;

    move-result-object v9

    .line 102
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 103
    invoke-static {v12, v9, v5}, Lm1;->h(Ljava/lang/String;Lwz4;La25;)Ljava/lang/Boolean;

    move-result-object v9

    move/from16 v20, v4

    move-object/from16 v19, v5

    :goto_f
    const-wide/16 v4, 0x0

    goto :goto_10

    .line 104
    :cond_21
    invoke-virtual {v9}, Lnz4;->v()Z

    move-result v13

    if-eqz v13, :cond_26

    .line 105
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lub5;->Z(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 106
    invoke-virtual {v9}, Lnz4;->w()Lrz4;

    move-result-object v9

    .line 107
    invoke-static {v12}, Lub5;->Z(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_22

    move/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v9, v16

    goto :goto_f

    :cond_22
    :try_start_3
    new-instance v13, Ljava/math/BigDecimal;

    .line 108
    invoke-direct {v13, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v20, v4

    move-object/from16 v19, v5

    const-wide/16 v4, 0x0

    :try_start_4
    invoke-static {v13, v9, v4, v5}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_3
    move/from16 v20, v4

    move-object/from16 v19, v5

    const-wide/16 v4, 0x0

    :catch_4
    move-object/from16 v9, v16

    :goto_10
    if-nez v9, :cond_23

    goto/16 :goto_11

    .line 109
    :cond_23
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v14, :cond_24

    .line 110
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_24
    move-wide v12, v4

    move-object/from16 v5, v19

    move/from16 v4, v20

    goto/16 :goto_b

    :cond_25
    move/from16 v20, v4

    move-object/from16 v19, v5

    .line 111
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    .line 112
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid param value for number filter. event, param"

    .line 114
    invoke-virtual {v11, v1, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_26
    move/from16 v20, v4

    move-object/from16 v19, v5

    .line 115
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    .line 116
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "No filter for String param. event, param"

    .line 118
    invoke-virtual {v11, v1, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_27
    move/from16 v20, v4

    move-object/from16 v19, v5

    if-nez v12, :cond_28

    .line 119
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    .line 120
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Missing param for filter. event, param"

    .line 122
    invoke-virtual {v10, v1, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    .line 124
    :cond_28
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    .line 125
    invoke-virtual {v3, v1}, Lp15;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v3, v15}, Lp15;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unknown param type. event, param"

    .line 127
    invoke-virtual {v11, v1, v3, v4}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_29
    move/from16 v20, v4

    move-object/from16 v19, v5

    .line 128
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    :goto_11
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    if-nez v16, :cond_2a

    .line 130
    const-string v1, "null"

    goto :goto_12

    :cond_2a
    move-object/from16 v1, v16

    :goto_12
    const-string v3, "Event filter result"

    invoke-virtual {v10, v1, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v16, :cond_2b

    const/4 v15, 0x0

    return v15

    .line 131
    :cond_2b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lm1;->c:Ljava/lang/Object;

    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    :goto_13
    const/4 v15, 0x1

    goto :goto_16

    :cond_2d
    iput-object v1, v0, Lm1;->d:Ljava/io/Serializable;

    if-eqz v2, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lu35;->z()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lu35;->A()J

    move-result-wide v1

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 134
    invoke-virtual {v7}, Lkz4;->C()Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v20, :cond_2f

    .line 135
    invoke-virtual {v7}, Lkz4;->z()Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_14

    :cond_2e
    move-object/from16 v1, p1

    :cond_2f
    :goto_14
    iput-object v1, v0, Lm1;->f:Ljava/lang/Object;

    goto :goto_13

    :cond_30
    if-eqz v20, :cond_32

    .line 136
    invoke-virtual {v7}, Lkz4;->z()Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_15

    :cond_31
    move-object/from16 v1, p2

    :cond_32
    :goto_15
    iput-object v1, v0, Lm1;->e:Ljava/lang/Object;

    goto :goto_13

    :goto_16
    return v15

    .line 137
    :goto_17
    invoke-static/range {v19 .. v19}, Lr45;->l(Lq55;)V

    .line 138
    invoke-static {v6}, La25;->D(Ljava/lang/String;)Ly15;

    move-result-object v0

    .line 139
    invoke-virtual {v7}, Lkz4;->t()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v7}, Lkz4;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_33
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid event filter ID. appId, id"

    .line 140
    invoke-virtual {v11, v0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    return v15
.end method

.method public k(Ljava/lang/Long;Ljava/lang/Long;Lh55;Z)Z
    .locals 15

    .line 1
    invoke-static {}, Lpq4;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lyk4;->h:Lgn4;

    .line 5
    .line 6
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lr45;

    .line 9
    .line 10
    iget-object v2, v1, Lr45;->d:Lds4;

    .line 11
    .line 12
    iget-object v3, v1, Lr45;->j:Lp15;

    .line 13
    .line 14
    iget-object v1, v1, Lr45;->f:La25;

    .line 15
    .line 16
    iget-object v4, p0, Lm1;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v5, Le05;->D0:Ld05;

    .line 21
    .line 22
    invoke-virtual {v2, v4, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v4, p0, Lyk4;->i:Lrn4;

    .line 27
    .line 28
    check-cast v4, Luz4;

    .line 29
    .line 30
    invoke-virtual {v4}, Luz4;->x()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v4}, Luz4;->y()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual {v4}, Luz4;->A()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    :cond_0
    move v5, v9

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v5, v8

    .line 53
    :goto_0
    if-eqz p4, :cond_3

    .line 54
    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, La25;->n:Lx15;

    .line 61
    .line 62
    iget v0, p0, Lm1;->a:I

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v4}, Luz4;->t()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v4}, Luz4;->u()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    :goto_1
    const-string v2, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 85
    .line 86
    invoke-virtual {v1, v0, v6, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v9

    .line 90
    :cond_3
    invoke-virtual {v4}, Luz4;->w()Lnz4;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v10}, Lnz4;->y()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-virtual/range {p3 .. p3}, Lh55;->y()Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const-wide/16 v13, 0x0

    .line 103
    .line 104
    if-eqz v12, :cond_5

    .line 105
    .line 106
    invoke-virtual {v10}, Lnz4;->v()Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-nez v12, :cond_4

    .line 111
    .line 112
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 113
    .line 114
    .line 115
    iget-object v10, v1, La25;->i:Lx15;

    .line 116
    .line 117
    invoke-virtual/range {p3 .. p3}, Lh55;->v()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v3, v11}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v11, "No number filter for long property. property"

    .line 126
    .line 127
    invoke-virtual {v10, v3, v11}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move v12, v7

    .line 131
    :goto_2
    const/4 v6, 0x0

    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :cond_4
    move v12, v7

    .line 135
    invoke-virtual/range {p3 .. p3}, Lh55;->z()J

    .line 136
    .line 137
    .line 138
    move-result-wide v6

    .line 139
    invoke-virtual {v10}, Lnz4;->w()Lrz4;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    :try_start_0
    new-instance v10, Ljava/math/BigDecimal;

    .line 144
    .line 145
    invoke-direct {v10, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    .line 146
    .line 147
    .line 148
    invoke-static {v10, v3, v13, v14}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_3

    .line 153
    :catch_0
    const/4 v6, 0x0

    .line 154
    :goto_3
    invoke-static {v6, v11}, Lm1;->g(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_5
    move v12, v7

    .line 161
    invoke-virtual/range {p3 .. p3}, Lh55;->C()Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_7

    .line 166
    .line 167
    invoke-virtual {v10}, Lnz4;->v()Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_6

    .line 172
    .line 173
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 174
    .line 175
    .line 176
    iget-object v6, v1, La25;->i:Lx15;

    .line 177
    .line 178
    invoke-virtual/range {p3 .. p3}, Lh55;->v()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v3, v7}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    const-string v7, "No number filter for double property. property"

    .line 187
    .line 188
    invoke-virtual {v6, v3, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lh55;->D()D

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    invoke-virtual {v10}, Lnz4;->w()Lrz4;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    :try_start_1
    new-instance v10, Ljava/math/BigDecimal;

    .line 201
    .line 202
    invoke-direct {v10, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    .line 203
    .line 204
    .line 205
    invoke-static {v6, v7}, Ljava/lang/Math;->ulp(D)D

    .line 206
    .line 207
    .line 208
    move-result-wide v6

    .line 209
    invoke-static {v10, v3, v6, v7}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    goto :goto_4

    .line 214
    :catch_1
    const/4 v6, 0x0

    .line 215
    :goto_4
    invoke-static {v6, v11}, Lm1;->g(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    goto/16 :goto_6

    .line 220
    .line 221
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lh55;->w()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_c

    .line 226
    .line 227
    invoke-virtual {v10}, Lnz4;->t()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_b

    .line 232
    .line 233
    invoke-virtual {v10}, Lnz4;->v()Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-nez v6, :cond_8

    .line 238
    .line 239
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 240
    .line 241
    .line 242
    iget-object v6, v1, La25;->i:Lx15;

    .line 243
    .line 244
    invoke-virtual/range {p3 .. p3}, Lh55;->v()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v3, v7}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    const-string v7, "No string or number filter defined. property"

    .line 253
    .line 254
    invoke-virtual {v6, v3, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lh55;->x()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v6}, Lub5;->Z(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_a

    .line 267
    .line 268
    invoke-virtual/range {p3 .. p3}, Lh55;->x()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-virtual {v10}, Lnz4;->w()Lrz4;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-static {v3}, Lub5;->Z(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-nez v7, :cond_9

    .line 281
    .line 282
    :catch_2
    const/4 v6, 0x0

    .line 283
    goto :goto_5

    .line 284
    :cond_9
    :try_start_2
    new-instance v7, Ljava/math/BigDecimal;

    .line 285
    .line 286
    invoke-direct {v7, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v7, v6, v13, v14}, Lm1;->i(Ljava/math/BigDecimal;Lrz4;D)Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    :goto_5
    invoke-static {v6, v11}, Lm1;->g(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    goto :goto_6

    .line 298
    :cond_a
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 299
    .line 300
    .line 301
    iget-object v6, v1, La25;->i:Lx15;

    .line 302
    .line 303
    invoke-virtual/range {p3 .. p3}, Lh55;->v()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-virtual {v3, v7}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual/range {p3 .. p3}, Lh55;->x()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    const-string v10, "Invalid user property value for Numeric number filter. property, value"

    .line 316
    .line 317
    invoke-virtual {v6, v3, v7, v10}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lh55;->x()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v10}, Lnz4;->u()Lwz4;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v3, v6, v1}, Lm1;->h(Ljava/lang/String;Lwz4;La25;)Ljava/lang/Boolean;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-static {v3, v11}, Lm1;->g(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    goto :goto_6

    .line 342
    :cond_c
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 343
    .line 344
    .line 345
    iget-object v6, v1, La25;->i:Lx15;

    .line 346
    .line 347
    invoke-virtual/range {p3 .. p3}, Lh55;->v()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v3, v7}, Lp15;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    const-string v7, "User property has no value, property"

    .line 356
    .line 357
    invoke-virtual {v6, v3, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_2

    .line 361
    .line 362
    :goto_6
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v1, La25;->n:Lx15;

    .line 366
    .line 367
    if-nez v6, :cond_d

    .line 368
    .line 369
    const-string v3, "null"

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_d
    move-object v3, v6

    .line 373
    :goto_7
    const-string v7, "Property filter result"

    .line 374
    .line 375
    invoke-virtual {v1, v3, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    if-nez v6, :cond_e

    .line 379
    .line 380
    return v8

    .line 381
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 382
    .line 383
    iput-object v1, p0, Lm1;->c:Ljava/lang/Object;

    .line 384
    .line 385
    if-eqz v12, :cond_f

    .line 386
    .line 387
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-nez v1, :cond_f

    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_f
    if-eqz p4, :cond_10

    .line 395
    .line 396
    invoke-virtual {v4}, Luz4;->x()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_11

    .line 401
    .line 402
    :cond_10
    iput-object v6, p0, Lm1;->d:Ljava/io/Serializable;

    .line 403
    .line 404
    :cond_11
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_15

    .line 409
    .line 410
    if-eqz v5, :cond_15

    .line 411
    .line 412
    invoke-virtual/range {p3 .. p3}, Lh55;->t()Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_15

    .line 417
    .line 418
    invoke-virtual/range {p3 .. p3}, Lh55;->u()J

    .line 419
    .line 420
    .line 421
    move-result-wide v5

    .line 422
    if-eqz p1, :cond_12

    .line 423
    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    .line 425
    .line 426
    .line 427
    move-result-wide v5

    .line 428
    :cond_12
    if-eqz v2, :cond_13

    .line 429
    .line 430
    invoke-virtual {v4}, Luz4;->x()Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-eqz v1, :cond_13

    .line 435
    .line 436
    invoke-virtual {v4}, Luz4;->y()Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-nez v1, :cond_13

    .line 441
    .line 442
    if-eqz p2, :cond_13

    .line 443
    .line 444
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    :cond_13
    invoke-virtual {v4}, Luz4;->y()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_14

    .line 453
    .line 454
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iput-object v1, p0, Lm1;->f:Ljava/lang/Object;

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_14
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    iput-object v1, p0, Lm1;->e:Ljava/lang/Object;

    .line 466
    .line 467
    :cond_15
    :goto_8
    return v9
.end method
