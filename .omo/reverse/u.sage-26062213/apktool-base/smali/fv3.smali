.class public final Lfv3;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldw2;
.implements Las0;
.implements Lcw2;


# instance fields
.field public B:Ljava/lang/Object;

.field public C:Ljava/lang/Object;

.field public D:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

.field public E:Lir3;

.field public F:Lvv2;

.field public final G:Lug2;

.field public final H:Lug2;

.field public final I:Lug2;

.field public J:Lvv2;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfv3;->B:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lfv3;->C:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lfv3;->D:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 9
    .line 10
    sget-object p1, Ldv3;->a:Lvv2;

    .line 11
    .line 12
    iput-object p1, p0, Lfv3;->F:Lvv2;

    .line 13
    .line 14
    new-instance p1, Lug2;

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    new-array p3, p2, [Lev3;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lfv3;->G:Lug2;

    .line 24
    .line 25
    iput-object p1, p0, Lfv3;->H:Lug2;

    .line 26
    .line 27
    new-instance p1, Lug2;

    .line 28
    .line 29
    new-array p2, p2, [Lev3;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lfv3;->I:Lug2;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final F(Lvv2;Lwv2;J)V
    .locals 3

    .line 1
    sget-object p3, Lwv2;->n:Lwv2;

    .line 2
    .line 3
    if-ne p2, p3, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lfv3;->F:Lvv2;

    .line 6
    .line 7
    :cond_0
    iget-object p3, p0, Lfv3;->E:Lir3;

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    new-instance v0, Lx50;

    .line 17
    .line 18
    const/16 v1, 0x13

    .line 19
    .line 20
    invoke-direct {v0, p0, p4, v1}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lti0;->q:Lti0;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {p3, p4, v1, v0, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    iput-object p3, p0, Lfv3;->E:Lir3;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, p1, p2}, Lfv3;->G0(Lvv2;Lwv2;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p1, Lvv2;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-ge v0, p3, :cond_3

    .line 43
    .line 44
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lzv2;

    .line 49
    .line 50
    invoke-static {v1}, Lse0;->f(Lzv2;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move-object p1, p4

    .line 61
    :goto_1
    iput-object p1, p0, Lfv3;->J:Lvv2;

    .line 62
    .line 63
    return-void
.end method

.method public final G0(Lvv2;Lwv2;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lfv3;->H:Lug2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lfv3;->I:Lug2;

    .line 5
    .line 6
    iget-object v2, p0, Lfv3;->G:Lug2;

    .line 7
    .line 8
    iget v3, v1, Lug2;->p:I

    .line 9
    .line 10
    invoke-virtual {v1, v3, v2}, Lug2;->d(ILug2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance p1, Lv00;

    .line 29
    .line 30
    const/4 p2, 0x7

    .line 31
    invoke-direct {p1, p2}, Lv00;-><init>(I)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget-object v0, p0, Lfv3;->I:Lug2;

    .line 38
    .line 39
    iget v3, v0, Lug2;->p:I

    .line 40
    .line 41
    sub-int/2addr v3, v2

    .line 42
    iget-object v0, v0, Lug2;->n:[Ljava/lang/Object;

    .line 43
    .line 44
    array-length v2, v0

    .line 45
    if-ge v3, v2, :cond_5

    .line 46
    .line 47
    :goto_0
    if-ltz v3, :cond_5

    .line 48
    .line 49
    aget-object v2, v0, v3

    .line 50
    .line 51
    check-cast v2, Lev3;

    .line 52
    .line 53
    iget-object v4, v2, Lev3;->q:Lwv2;

    .line 54
    .line 55
    if-ne p2, v4, :cond_2

    .line 56
    .line 57
    iget-object v4, v2, Lev3;->p:Lo20;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iput-object v1, v2, Lev3;->p:Lo20;

    .line 62
    .line 63
    invoke-virtual {v4, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lfv3;->I:Lug2;

    .line 70
    .line 71
    iget-object v2, v0, Lug2;->n:[Ljava/lang/Object;

    .line 72
    .line 73
    iget v0, v0, Lug2;->p:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_2
    if-ge v3, v0, :cond_5

    .line 77
    .line 78
    aget-object v4, v2, v3

    .line 79
    .line 80
    check-cast v4, Lev3;

    .line 81
    .line 82
    iget-object v5, v4, Lev3;->q:Lwv2;

    .line 83
    .line 84
    if-ne p2, v5, :cond_4

    .line 85
    .line 86
    iget-object v5, v4, Lev3;->p:Lo20;

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    iput-object v1, v4, Lev3;->p:Lo20;

    .line 91
    .line 92
    invoke-virtual {v5, p1}, Lo20;->g(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object p0, p0, Lfv3;->I:Lug2;

    .line 99
    .line 100
    invoke-virtual {p0}, Lug2;->h()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_3
    iget-object p0, p0, Lfv3;->I:Lug2;

    .line 105
    .line 106
    invoke-virtual {p0}, Lug2;->h()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    monitor-exit v0

    .line 112
    throw p0
.end method

.method public final H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfv3;->E:Lir3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lqd2;

    .line 6
    .line 7
    const-string v2, "Pointer input was reset"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-direct {v1, v2, v3}, Llv2;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lbv1;->u(Ljava/util/concurrent/CancellationException;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lfv3;->E:Lir3;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfv3;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfv3;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()F
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 6
    .line 7
    invoke-interface {p0}, Las0;->b()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final c0()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lfv3;->J:Lvv2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v1, Lvv2;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lzv2;

    .line 23
    .line 24
    iget-boolean v5, v5, Lzv2;->d:Z

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    :goto_1
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lzv2;

    .line 48
    .line 49
    iget-wide v7, v5, Lzv2;->a:J

    .line 50
    .line 51
    iget-wide v11, v5, Lzv2;->c:J

    .line 52
    .line 53
    iget-wide v9, v5, Lzv2;->b:J

    .line 54
    .line 55
    iget v14, v5, Lzv2;->e:F

    .line 56
    .line 57
    iget-boolean v6, v5, Lzv2;->d:Z

    .line 58
    .line 59
    iget v5, v5, Lzv2;->i:I

    .line 60
    .line 61
    move/from16 v19, v6

    .line 62
    .line 63
    new-instance v6, Lzv2;

    .line 64
    .line 65
    const/high16 v24, 0x3f800000    # 1.0f

    .line 66
    .line 67
    const-wide/16 v25, 0x0

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    const-wide/16 v22, 0x0

    .line 71
    .line 72
    move-wide v15, v9

    .line 73
    move-wide/from16 v17, v11

    .line 74
    .line 75
    move/from16 v20, v19

    .line 76
    .line 77
    move/from16 v21, v5

    .line 78
    .line 79
    invoke-direct/range {v6 .. v26}, Lzv2;-><init>(JJJZFJJZZIJFJ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v1, Lvv2;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-direct {v1, v2, v3}, Lvv2;-><init>(Ljava/util/List;Lft1;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, v0, Lfv3;->F:Lvv2;

    .line 95
    .line 96
    sget-object v2, Lwv2;->n:Lwv2;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lfv3;->G0(Lvv2;Lwv2;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lwv2;->o:Lwv2;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lfv3;->G0(Lvv2;Lwv2;)V

    .line 104
    .line 105
    .line 106
    sget-object v2, Lwv2;->p:Lwv2;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lfv3;->G0(Lvv2;Lwv2;)V

    .line 109
    .line 110
    .line 111
    iput-object v3, v0, Lfv3;->J:Lvv2;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    :goto_2
    return-void
.end method

.method public final k()F
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 6
    .line 7
    invoke-interface {p0}, Las0;->k()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final z0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfv3;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
