.class public final Llz1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lya0;


# instance fields
.field public A:I

.field public B:I

.field public final C:Ljava/lang/String;

.field public final n:Lxy1;

.field public o:Lzb0;

.field public p:Lst3;

.field public q:I

.field public r:I

.field public final s:Lkg2;

.field public final t:Lkg2;

.field public final u:Lfz1;

.field public final v:Lcz1;

.field public final w:Lkg2;

.field public final x:Lrt3;

.field public final y:Lkg2;

.field public final z:Lug2;


# direct methods
.method public constructor <init>(Lxy1;Lst3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llz1;->n:Lxy1;

    .line 5
    .line 6
    iput-object p2, p0, Llz1;->p:Lst3;

    .line 7
    .line 8
    sget-object p1, Ltd3;->a:[J

    .line 9
    .line 10
    new-instance p1, Lkg2;

    .line 11
    .line 12
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Llz1;->s:Lkg2;

    .line 16
    .line 17
    new-instance p1, Lkg2;

    .line 18
    .line 19
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Llz1;->t:Lkg2;

    .line 23
    .line 24
    new-instance p1, Lfz1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lfz1;-><init>(Llz1;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Llz1;->u:Lfz1;

    .line 30
    .line 31
    new-instance p1, Lcz1;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcz1;-><init>(Llz1;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Llz1;->v:Lcz1;

    .line 37
    .line 38
    new-instance p1, Lkg2;

    .line 39
    .line 40
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Llz1;->w:Lkg2;

    .line 44
    .line 45
    new-instance p1, Lrt3;

    .line 46
    .line 47
    invoke-direct {p1}, Lrt3;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Llz1;->x:Lrt3;

    .line 51
    .line 52
    new-instance p1, Lkg2;

    .line 53
    .line 54
    invoke-direct {p1}, Lkg2;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Llz1;->y:Lkg2;

    .line 58
    .line 59
    new-instance p1, Lug2;

    .line 60
    .line 61
    const/16 p2, 0x10

    .line 62
    .line 63
    new-array p2, p2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {p1, p2}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Llz1;->z:Lug2;

    .line 69
    .line 70
    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    .line 71
    .line 72
    iput-object p1, p0, Llz1;->C:Ljava/lang/String;

    .line 73
    .line 74
    return-void
.end method

.method public static final a(Llz1;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Llz1;->n:Lxy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Llz1;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Llz1;->w:Lkg2;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lxy1;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget v3, p0, Llz1;->B:I

    .line 18
    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v3, "No pre-composed items to dispose"

    .line 23
    .line 24
    invoke-static {v3}, Lar1;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lrg2;

    .line 32
    .line 33
    iget-object v3, v3, Lrg2;->n:Lug2;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lug2;->j(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lrg2;

    .line 44
    .line 45
    iget-object v4, v4, Lrg2;->n:Lug2;

    .line 46
    .line 47
    iget v4, v4, Lug2;->p:I

    .line 48
    .line 49
    iget v5, p0, Llz1;->B:I

    .line 50
    .line 51
    sub-int/2addr v4, v5

    .line 52
    if-lt v3, v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v4, "Item is not in pre-composed item range"

    .line 56
    .line 57
    invoke-static {v4}, Lar1;->b(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget v4, p0, Llz1;->A:I

    .line 61
    .line 62
    add-int/2addr v4, v2

    .line 63
    iput v4, p0, Llz1;->A:I

    .line 64
    .line 65
    iget v4, p0, Llz1;->B:I

    .line 66
    .line 67
    add-int/lit8 v4, v4, -0x1

    .line 68
    .line 69
    iput v4, p0, Llz1;->B:I

    .line 70
    .line 71
    iget-object v4, p0, Llz1;->s:Lkg2;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ldz1;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {v1}, Llz1;->c(Ldz1;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lrg2;

    .line 89
    .line 90
    iget-object v1, v1, Lrg2;->n:Lug2;

    .line 91
    .line 92
    iget v1, v1, Lug2;->p:I

    .line 93
    .line 94
    iget v4, p0, Llz1;->B:I

    .line 95
    .line 96
    sub-int/2addr v1, v4

    .line 97
    iget v4, p0, Llz1;->A:I

    .line 98
    .line 99
    sub-int/2addr v1, v4

    .line 100
    invoke-virtual {p0, v3, v1}, Llz1;->j(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Llz1;->e(I)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p0, p0, Llz1;->z:Lug2;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lug2;->i(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    const/4 p0, 0x6

    .line 115
    invoke-static {v0, v2, p0}, Lxy1;->X(Lxy1;ZI)V

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void
.end method

.method public static c(Ldz1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ldz1;->f:Lzt2;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lzt2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    sget-object v2, Lbu2;->o:Lbu2;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lzt2;->k:Ll53;

    .line 13
    .line 14
    iget-object v2, v1, Ll53;->d:Llg2;

    .line 15
    .line 16
    invoke-virtual {v2}, Llg2;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v1, Ll53;->d:Llg2;

    .line 24
    .line 25
    sget-object v4, Lud3;->a:Llg2;

    .line 26
    .line 27
    new-instance v4, Llg2;

    .line 28
    .line 29
    invoke-direct {v4}, Llg2;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v1, Ll53;->d:Llg2;

    .line 33
    .line 34
    iget-object v4, v1, Ll53;->c:Lug2;

    .line 35
    .line 36
    invoke-virtual {v4}, Lug2;->h()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v2, v3

    .line 41
    :goto_0
    invoke-virtual {v1}, Ll53;->b()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lzt2;->a:Lec0;

    .line 45
    .line 46
    iput-object v3, v0, Lec0;->D:Lzt2;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Lec0;->H:Ll53;

    .line 51
    .line 52
    iput-object v2, v1, Ll53;->k:Llg2;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    iput v1, v0, Lec0;->J:I

    .line 56
    .line 57
    :cond_1
    iput-object v3, p0, Ldz1;->f:Lzt2;

    .line 58
    .line 59
    iget-object v0, p0, Ldz1;->c:Lec0;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lec0;->m()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iput-object v3, p0, Ldz1;->c:Lec0;

    .line 67
    .line 68
    :cond_3
    return-void
.end method


# virtual methods
.method public final b(Ldz1;Z)V
    .locals 6

    .line 1
    iget-object v0, p1, Ldz1;->f:Lzt2;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lk75;->x()Lpo3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lpo3;->e()Lpe1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v2

    .line 18
    :goto_0
    invoke-static {v1}, Lk75;->E(Lpo3;)Lpo3;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :try_start_0
    iget-object p0, p0, Llz1;->n:Lxy1;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    iput-boolean v5, p0, Lxy1;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lzt2;->c()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    new-instance p2, Lp61;

    .line 36
    .line 37
    const/16 v5, 0xf

    .line 38
    .line 39
    invoke-direct {p2, v5}, Lp61;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lzt2;->e(Lsm3;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v0}, Lzt2;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    iput-object v2, p1, Ldz1;->f:Lzt2;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lxy1;->D:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    invoke-static {v1, v4, v3}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :goto_3
    invoke-static {v1, v4, v3}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/Object;)Lnt3;
    .locals 1

    .line 1
    iget-object v0, p0, Llz1;->n:Lxy1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxy1;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Liz1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljz1;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Ljz1;-><init>(Llz1;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final e(I)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Llz1;->A:I

    .line 3
    .line 4
    iget-object v1, p0, Llz1;->n:Lxy1;

    .line 5
    .line 6
    invoke-virtual {v1}, Lxy1;->o()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lrg2;

    .line 12
    .line 13
    iget-object v3, v2, Lrg2;->n:Lug2;

    .line 14
    .line 15
    iget v3, v3, Lug2;->p:I

    .line 16
    .line 17
    iget v4, p0, Llz1;->B:I

    .line 18
    .line 19
    sub-int/2addr v3, v4

    .line 20
    const/4 v4, 0x1

    .line 21
    sub-int/2addr v3, v4

    .line 22
    if-gt p1, v3, :cond_7

    .line 23
    .line 24
    iget-object v5, p0, Llz1;->x:Lrt3;

    .line 25
    .line 26
    invoke-virtual {v5}, Lrt3;->clear()V

    .line 27
    .line 28
    .line 29
    if-gt p1, v3, :cond_0

    .line 30
    .line 31
    move v5, p1

    .line 32
    :goto_0
    invoke-virtual {v2, v5}, Lrg2;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lxy1;

    .line 37
    .line 38
    iget-object v7, p0, Llz1;->s:Lkg2;

    .line 39
    .line 40
    invoke-virtual {v7, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast v6, Ldz1;

    .line 48
    .line 49
    iget-object v6, v6, Ldz1;->a:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v7, p0, Llz1;->x:Lrt3;

    .line 52
    .line 53
    iget-object v7, v7, Lrt3;->o:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Leg2;

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Leg2;->a(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    if-eq v5, v3, :cond_0

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Llz1;->p:Lst3;

    .line 66
    .line 67
    iget-object v5, p0, Llz1;->x:Lrt3;

    .line 68
    .line 69
    invoke-interface {v2, v5}, Lst3;->e(Lrt3;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lk75;->x()Lpo3;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Lpo3;->e()Lpe1;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v5, 0x0

    .line 84
    :goto_1
    invoke-static {v2}, Lk75;->E(Lpo3;)Lpo3;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    move v7, v0

    .line 89
    :goto_2
    if-lt v3, p1, :cond_6

    .line 90
    .line 91
    :try_start_0
    move-object v8, v1

    .line 92
    check-cast v8, Lrg2;

    .line 93
    .line 94
    invoke-virtual {v8, v3}, Lrg2;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    check-cast v8, Lxy1;

    .line 99
    .line 100
    iget-object v9, p0, Llz1;->s:Lkg2;

    .line 101
    .line 102
    invoke-virtual {v9, v8}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast v9, Ldz1;

    .line 110
    .line 111
    iget-object v10, v9, Ldz1;->a:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v11, p0, Llz1;->x:Lrt3;

    .line 114
    .line 115
    iget-object v11, v11, Lrt3;->o:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v11, Leg2;

    .line 118
    .line 119
    invoke-virtual {v11, v10}, Leg2;->c(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_3

    .line 124
    .line 125
    iget v11, p0, Llz1;->A:I

    .line 126
    .line 127
    add-int/2addr v11, v4

    .line 128
    iput v11, p0, Llz1;->A:I

    .line 129
    .line 130
    iget-object v11, v9, Ldz1;->g:Lws2;

    .line 131
    .line 132
    invoke-virtual {v11}, Lws2;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_5

    .line 143
    .line 144
    iget-object v8, v8, Lxy1;->T:Lbz1;

    .line 145
    .line 146
    iget-object v11, v8, Lbz1;->p:Lcb2;

    .line 147
    .line 148
    sget-object v12, Lvy1;->p:Lvy1;

    .line 149
    .line 150
    iput-object v12, v11, Lcb2;->y:Lvy1;

    .line 151
    .line 152
    iget-object v8, v8, Lbz1;->q:Lq82;

    .line 153
    .line 154
    if-eqz v8, :cond_2

    .line 155
    .line 156
    iput-object v12, v8, Lq82;->w:Lvy1;

    .line 157
    .line 158
    :cond_2
    invoke-virtual {p0, v9, v0}, Llz1;->l(Ldz1;Z)V

    .line 159
    .line 160
    .line 161
    iget-boolean v8, v9, Ldz1;->h:Z

    .line 162
    .line 163
    if-eqz v8, :cond_5

    .line 164
    .line 165
    move v7, v4

    .line 166
    goto :goto_3

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto :goto_4

    .line 169
    :cond_3
    iget-object v11, p0, Llz1;->n:Lxy1;

    .line 170
    .line 171
    iput-boolean v4, v11, Lxy1;->D:Z

    .line 172
    .line 173
    iget-object v12, p0, Llz1;->s:Lkg2;

    .line 174
    .line 175
    invoke-virtual {v12, v8}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object v8, v9, Ldz1;->c:Lec0;

    .line 179
    .line 180
    if-eqz v8, :cond_4

    .line 181
    .line 182
    invoke-virtual {v8}, Lec0;->m()V

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object v8, p0, Llz1;->n:Lxy1;

    .line 186
    .line 187
    invoke-virtual {v8, v3, v4}, Lxy1;->S(II)V

    .line 188
    .line 189
    .line 190
    iput-boolean v0, v11, Lxy1;->D:Z

    .line 191
    .line 192
    :cond_5
    :goto_3
    iget-object v8, p0, Llz1;->t:Lkg2;

    .line 193
    .line 194
    invoke-virtual {v8, v10}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    add-int/lit8 v3, v3, -0x1

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :goto_4
    invoke-static {v2, v6, v5}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_6
    invoke-static {v2, v6, v5}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_7
    move v7, v0

    .line 209
    :goto_5
    if-eqz v7, :cond_9

    .line 210
    .line 211
    sget-object p1, Lwo3;->c:Ljava/lang/Object;

    .line 212
    .line 213
    monitor-enter p1

    .line 214
    :try_start_1
    sget-object v1, Lwo3;->j:Ljh1;

    .line 215
    .line 216
    iget-object v1, v1, Log2;->h:Llg2;

    .line 217
    .line 218
    if-eqz v1, :cond_8

    .line 219
    .line 220
    invoke-virtual {v1}, Llg2;->h()Z

    .line 221
    .line 222
    .line 223
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    if-ne v1, v4, :cond_8

    .line 225
    .line 226
    move v0, v4

    .line 227
    :cond_8
    monitor-exit p1

    .line 228
    if-eqz v0, :cond_9

    .line 229
    .line 230
    invoke-static {}, Lwo3;->a()V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catchall_1
    move-exception p0

    .line 235
    monitor-exit p1

    .line 236
    throw p0

    .line 237
    :cond_9
    :goto_6
    invoke-virtual {p0}, Llz1;->g()V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public final f()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Llz1;->n:Lxy1;

    .line 5
    .line 6
    iput-boolean v1, v2, Lxy1;->D:Z

    .line 7
    .line 8
    iget-object v1, v0, Llz1;->s:Lkg2;

    .line 9
    .line 10
    iget-object v3, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v4, v1, Lkg2;->a:[J

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    add-int/lit8 v5, v5, -0x2

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-ltz v5, :cond_3

    .line 19
    .line 20
    move v7, v6

    .line 21
    :goto_0
    aget-wide v8, v4, v7

    .line 22
    .line 23
    not-long v10, v8

    .line 24
    const/4 v12, 0x7

    .line 25
    shl-long/2addr v10, v12

    .line 26
    and-long/2addr v10, v8

    .line 27
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v10, v12

    .line 33
    cmp-long v10, v10, v12

    .line 34
    .line 35
    if-eqz v10, :cond_2

    .line 36
    .line 37
    sub-int v10, v7, v5

    .line 38
    .line 39
    not-int v10, v10

    .line 40
    ushr-int/lit8 v10, v10, 0x1f

    .line 41
    .line 42
    const/16 v11, 0x8

    .line 43
    .line 44
    rsub-int/lit8 v10, v10, 0x8

    .line 45
    .line 46
    move v12, v6

    .line 47
    :goto_1
    if-ge v12, v10, :cond_1

    .line 48
    .line 49
    const-wide/16 v13, 0xff

    .line 50
    .line 51
    and-long/2addr v13, v8

    .line 52
    const-wide/16 v15, 0x80

    .line 53
    .line 54
    cmp-long v13, v13, v15

    .line 55
    .line 56
    if-gez v13, :cond_0

    .line 57
    .line 58
    shl-int/lit8 v13, v7, 0x3

    .line 59
    .line 60
    add-int/2addr v13, v12

    .line 61
    aget-object v13, v3, v13

    .line 62
    .line 63
    check-cast v13, Ldz1;

    .line 64
    .line 65
    iget-object v13, v13, Ldz1;->c:Lec0;

    .line 66
    .line 67
    if-eqz v13, :cond_0

    .line 68
    .line 69
    invoke-virtual {v13}, Lec0;->m()V

    .line 70
    .line 71
    .line 72
    :cond_0
    shr-long/2addr v8, v11

    .line 73
    add-int/lit8 v12, v12, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-ne v10, v11, :cond_3

    .line 77
    .line 78
    :cond_2
    if-eq v7, v5, :cond_3

    .line 79
    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v2}, Lxy1;->R()V

    .line 84
    .line 85
    .line 86
    iput-boolean v6, v2, Lxy1;->D:Z

    .line 87
    .line 88
    invoke-virtual {v1}, Lkg2;->a()V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Llz1;->t:Lkg2;

    .line 92
    .line 93
    invoke-virtual {v1}, Lkg2;->a()V

    .line 94
    .line 95
    .line 96
    iput v6, v0, Llz1;->B:I

    .line 97
    .line 98
    iput v6, v0, Llz1;->A:I

    .line 99
    .line 100
    iget-object v1, v0, Llz1;->w:Lkg2;

    .line 101
    .line 102
    invoke-virtual {v1}, Lkg2;->a()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Llz1;->g()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Llz1;->n:Lxy1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lrg2;

    .line 8
    .line 9
    iget-object v0, v0, Lrg2;->n:Lug2;

    .line 10
    .line 11
    iget v0, v0, Lug2;->p:I

    .line 12
    .line 13
    iget-object v1, p0, Llz1;->s:Lkg2;

    .line 14
    .line 15
    iget v1, v1, Lkg2;->e:I

    .line 16
    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ") and the children count on the SubcomposeLayout ("

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lar1;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget v1, p0, Llz1;->A:I

    .line 51
    .line 52
    sub-int v2, v0, v1

    .line 53
    .line 54
    iget v3, p0, Llz1;->B:I

    .line 55
    .line 56
    sub-int/2addr v2, v3

    .line 57
    if-ltz v2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v2, ". Reusable children "

    .line 61
    .line 62
    const-string v4, ". Precomposed children "

    .line 63
    .line 64
    const-string v5, "Incorrect state. Total children "

    .line 65
    .line 66
    invoke-static {v5, v0, v2, v1, v4}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v0, p0, Llz1;->w:Lkg2;

    .line 81
    .line 82
    iget v0, v0, Lkg2;->e:I

    .line 83
    .line 84
    iget p0, p0, Llz1;->B:I

    .line 85
    .line 86
    if-ne v0, p0, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, "Incorrect state. Precomposed children "

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, ". Map size "

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lar1;->a(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Llz1;->i(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final i(Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Llz1;->B:I

    .line 3
    .line 4
    iget-object v1, p0, Llz1;->w:Lkg2;

    .line 5
    .line 6
    invoke-virtual {v1}, Lkg2;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Llz1;->n:Lxy1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lxy1;->o()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lrg2;

    .line 17
    .line 18
    iget-object v2, v2, Lrg2;->n:Lug2;

    .line 19
    .line 20
    iget v2, v2, Lug2;->p:I

    .line 21
    .line 22
    iget v3, p0, Llz1;->A:I

    .line 23
    .line 24
    if-eq v3, v2, :cond_4

    .line 25
    .line 26
    iput v2, p0, Llz1;->A:I

    .line 27
    .line 28
    invoke-static {}, Lk75;->x()Lpo3;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Lpo3;->e()Lpe1;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    :goto_0
    invoke-static {v3}, Lk75;->E(Lpo3;)Lpo3;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    :goto_1
    if-ge v0, v2, :cond_3

    .line 45
    .line 46
    :try_start_0
    move-object v6, v1

    .line 47
    check-cast v6, Lrg2;

    .line 48
    .line 49
    invoke-virtual {v6, v0}, Lrg2;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lxy1;

    .line 54
    .line 55
    iget-object v7, p0, Llz1;->s:Lkg2;

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Ldz1;

    .line 62
    .line 63
    if-eqz v7, :cond_2

    .line 64
    .line 65
    iget-object v8, v7, Ldz1;->g:Lws2;

    .line 66
    .line 67
    invoke-virtual {v8}, Lws2;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    iget-object v6, v6, Lxy1;->T:Lbz1;

    .line 80
    .line 81
    iget-object v8, v6, Lbz1;->p:Lcb2;

    .line 82
    .line 83
    sget-object v9, Lvy1;->p:Lvy1;

    .line 84
    .line 85
    iput-object v9, v8, Lcb2;->y:Lvy1;

    .line 86
    .line 87
    iget-object v6, v6, Lbz1;->q:Lq82;

    .line 88
    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    iput-object v9, v6, Lq82;->w:Lvy1;

    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0, v7, p1}, Llz1;->l(Ldz1;Z)V

    .line 94
    .line 95
    .line 96
    sget-object v6, Lmt3;->a:Lpr3;

    .line 97
    .line 98
    iput-object v6, v7, Ldz1;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_3
    invoke-static {v3, v5, v4}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_3
    invoke-static {v3, v5, v4}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Llz1;->t:Lkg2;

    .line 114
    .line 115
    invoke-virtual {p1}, Lkg2;->a()V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, Llz1;->g()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final j(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Llz1;->n:Lxy1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lxy1;->D:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lxy1;->L(III)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lxy1;->D:Z

    .line 11
    .line 12
    return-void
.end method

.method public final k(Ljava/lang/Object;Ldf1;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Llz1;->n:Lxy1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxy1;->H()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Llz1;->g()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Llz1;->t:Lkg2;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Llz1;->y:Lkg2;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Llz1;->w:Lkg2;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Llz1;->n(Ljava/lang/Object;)Lxy1;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lrg2;

    .line 46
    .line 47
    iget-object v4, v4, Lrg2;->n:Lug2;

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Lug2;->j(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lrg2;

    .line 58
    .line 59
    iget-object v0, v0, Lrg2;->n:Lug2;

    .line 60
    .line 61
    iget v0, v0, Lug2;->p:I

    .line 62
    .line 63
    invoke-virtual {p0, v4, v0}, Llz1;->j(II)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Llz1;->B:I

    .line 67
    .line 68
    add-int/2addr v0, v3

    .line 69
    iput v0, p0, Llz1;->B:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lrg2;

    .line 77
    .line 78
    iget-object v2, v2, Lrg2;->n:Lug2;

    .line 79
    .line 80
    iget v2, v2, Lug2;->p:I

    .line 81
    .line 82
    new-instance v4, Lxy1;

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    invoke-direct {v4, v5}, Lxy1;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-boolean v3, v0, Lxy1;->D:Z

    .line 89
    .line 90
    invoke-virtual {v0, v2, v4}, Lxy1;->B(ILxy1;)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    iput-boolean v2, v0, Lxy1;->D:Z

    .line 95
    .line 96
    iget v0, p0, Llz1;->B:I

    .line 97
    .line 98
    add-int/2addr v0, v3

    .line 99
    iput v0, p0, Llz1;->B:I

    .line 100
    .line 101
    move-object v2, v4

    .line 102
    :goto_0
    invoke-virtual {v1, p1, v2}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    check-cast v2, Lxy1;

    .line 106
    .line 107
    invoke-virtual {p0, v2, p1, p3, p2}, Llz1;->m(Lxy1;Ljava/lang/Object;ZLdf1;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void
.end method

.method public final l(Ldz1;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p1, Ldz1;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Ldz1;->g:Lws2;

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Ldz1;->g:Lws2;

    .line 22
    .line 23
    :goto_0
    iget-object v0, p1, Ldz1;->f:Lzt2;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Llz1;->c(Ldz1;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object p0, p1, Ldz1;->c:Lec0;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0}, Lec0;->l()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p0, p0, Llz1;->n:Lxy1;

    .line 42
    .line 43
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lq9;

    .line 48
    .line 49
    invoke-virtual {p0}, Lq9;->getOutOfFrameExecutor()Lir2;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    new-instance p2, Lje;

    .line 56
    .line 57
    const/4 v0, 0x7

    .line 58
    invoke-direct {p2, v0, p1}, Lje;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast p0, Lq9;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lq9;->H(Lne1;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-boolean p0, p1, Ldz1;->h:Z

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    iget-object p0, p1, Ldz1;->c:Lec0;

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lec0;->l()V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public final m(Lxy1;Ljava/lang/Object;ZLdf1;)V
    .locals 8

    .line 1
    iget-object v0, p0, Llz1;->s:Lkg2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ldz1;

    .line 11
    .line 12
    sget-object v3, Lpa0;->a:Lka0;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, v1, Ldz1;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v3, v1, Ldz1;->b:Ldf1;

    .line 20
    .line 21
    iput-object v2, v1, Ldz1;->c:Lec0;

    .line 22
    .line 23
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {p2}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, v1, Ldz1;->g:Lws2;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    check-cast v1, Ldz1;

    .line 35
    .line 36
    iget-object p2, v1, Ldz1;->b:Ldf1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq p2, p4, :cond_1

    .line 41
    .line 42
    move p2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p2, v0

    .line 45
    :goto_0
    iget-object v4, v1, Ldz1;->f:Lzt2;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Llz1;->c(Ldz1;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-eqz p3, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {p0, v1, v3}, Llz1;->b(Ldz1;Z)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    iget-object v4, v1, Ldz1;->c:Lec0;

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    iget-object v5, v4, Lec0;->q:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v5

    .line 68
    :try_start_0
    iget-object v4, v4, Lec0;->A:Lkg2;

    .line 69
    .line 70
    iget v4, v4, Lkg2;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    if-lez v4, :cond_5

    .line 73
    .line 74
    move v4, v3

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    move v4, v0

    .line 77
    :goto_2
    monitor-exit v5

    .line 78
    goto :goto_3

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v5

    .line 81
    throw p0

    .line 82
    :cond_6
    move v4, v3

    .line 83
    :goto_3
    if-nez p2, :cond_8

    .line 84
    .line 85
    if-nez v4, :cond_8

    .line 86
    .line 87
    iget-boolean p2, v1, Ldz1;->d:Z

    .line 88
    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    :goto_4
    return-void

    .line 93
    :cond_8
    :goto_5
    iput-object p4, v1, Ldz1;->b:Ldf1;

    .line 94
    .line 95
    iget-object p2, v1, Ldz1;->f:Lzt2;

    .line 96
    .line 97
    if-nez p2, :cond_9

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_9
    const-string p2, "new subcompose call while paused composition is still active"

    .line 101
    .line 102
    invoke-static {p2}, Lar1;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_6
    invoke-static {}, Lk75;->x()Lpo3;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-eqz p2, :cond_a

    .line 110
    .line 111
    invoke-virtual {p2}, Lpo3;->e()Lpe1;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_a
    invoke-static {p2}, Lk75;->E(Lpo3;)Lpo3;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    :try_start_1
    iget-object v4, p0, Llz1;->n:Lxy1;

    .line 120
    .line 121
    iput-boolean v3, v4, Lxy1;->D:Z

    .line 122
    .line 123
    iget-object v5, v1, Ldz1;->c:Lec0;

    .line 124
    .line 125
    iget-object v6, p0, Llz1;->o:Lzb0;

    .line 126
    .line 127
    if-eqz v6, :cond_13

    .line 128
    .line 129
    if-eqz v5, :cond_b

    .line 130
    .line 131
    invoke-virtual {v5}, Lec0;->v()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_d

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    goto/16 :goto_d

    .line 140
    .line 141
    :cond_b
    :goto_7
    if-eqz p3, :cond_c

    .line 142
    .line 143
    sget-object v5, Lph4;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    new-instance v5, Lg64;

    .line 146
    .line 147
    invoke-direct {v5, p1}, Lg64;-><init>(Lxy1;)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lec0;

    .line 151
    .line 152
    invoke-direct {p1, v6, v5}, Lec0;-><init>(Lzb0;Lg64;)V

    .line 153
    .line 154
    .line 155
    :goto_8
    move-object v5, p1

    .line 156
    goto :goto_9

    .line 157
    :cond_c
    sget-object v5, Lph4;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 158
    .line 159
    new-instance v5, Lg64;

    .line 160
    .line 161
    invoke-direct {v5, p1}, Lg64;-><init>(Lxy1;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Lec0;

    .line 165
    .line 166
    invoke-direct {p1, v6, v5}, Lec0;-><init>(Lzb0;Lg64;)V

    .line 167
    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_d
    :goto_9
    iput-object v5, v1, Ldz1;->c:Lec0;

    .line 171
    .line 172
    iget-object p1, v1, Ldz1;->b:Ldf1;

    .line 173
    .line 174
    iget-object p0, p0, Llz1;->n:Lxy1;

    .line 175
    .line 176
    invoke-static {p0}, Laz1;->a(Lxy1;)Lsr2;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Lq9;

    .line 181
    .line 182
    invoke-virtual {p0}, Lq9;->getOutOfFrameExecutor()Lir2;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    if-eqz p0, :cond_e

    .line 187
    .line 188
    iput-boolean v0, v1, Ldz1;->h:Z

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_e
    iput-boolean v3, v1, Ldz1;->h:Z

    .line 192
    .line 193
    new-instance p0, Lga;

    .line 194
    .line 195
    const/4 v6, 0x2

    .line 196
    invoke-direct {p0, v6, v1, p1}, Lga;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lka0;

    .line 200
    .line 201
    const v6, 0x5ad8c84e

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, v6, v3, p0}, Lka0;-><init>(IZLef1;)V

    .line 205
    .line 206
    .line 207
    :goto_a
    if-eqz p3, :cond_10

    .line 208
    .line 209
    iget-boolean p0, v1, Ldz1;->e:Z

    .line 210
    .line 211
    if-eqz p0, :cond_f

    .line 212
    .line 213
    invoke-virtual {v5}, Lec0;->i()Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Lec0;->q()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v3, p1}, Lec0;->k(ZLdf1;)Lzt2;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    iput-object p0, v1, Ldz1;->f:Lzt2;

    .line 224
    .line 225
    goto :goto_c

    .line 226
    :cond_f
    invoke-virtual {v5}, Lec0;->i()Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    invoke-virtual {v5, p0, p1}, Lec0;->k(ZLdf1;)Lzt2;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    iput-object p0, v1, Ldz1;->f:Lzt2;

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_10
    iget-boolean p0, v1, Ldz1;->e:Z

    .line 238
    .line 239
    if-eqz p0, :cond_12

    .line 240
    .line 241
    invoke-virtual {v5}, Lec0;->i()Z

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Lec0;->q()V

    .line 245
    .line 246
    .line 247
    iget-object p0, v5, Lec0;->I:Lag1;

    .line 248
    .line 249
    iput v0, p0, Lag1;->z:I

    .line 250
    .line 251
    iput-boolean v3, p0, Lag1;->y:Z

    .line 252
    .line 253
    iget-object p3, v5, Lec0;->n:Lzb0;

    .line 254
    .line 255
    invoke-virtual {p3, v5, p1}, Lzb0;->a(Lec0;Ldf1;)V

    .line 256
    .line 257
    .line 258
    iget-boolean p1, p0, Lag1;->F:Z

    .line 259
    .line 260
    if-nez p1, :cond_11

    .line 261
    .line 262
    iget p1, p0, Lag1;->z:I

    .line 263
    .line 264
    if-nez p1, :cond_11

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_11
    const-string p1, "Cannot disable reuse from root if it was caused by other groups"

    .line 268
    .line 269
    invoke-static {p1}, Lix2;->a(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_b
    const/4 p1, -0x1

    .line 273
    iput p1, p0, Lag1;->z:I

    .line 274
    .line 275
    iput-boolean v0, p0, Lag1;->y:Z

    .line 276
    .line 277
    goto :goto_c

    .line 278
    :cond_12
    invoke-virtual {v5, p1}, Lec0;->B(Ldf1;)V

    .line 279
    .line 280
    .line 281
    :goto_c
    iput-boolean v0, v1, Ldz1;->e:Z

    .line 282
    .line 283
    iput-boolean v0, v4, Lxy1;->D:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    .line 285
    invoke-static {p2, p4, v2}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 286
    .line 287
    .line 288
    iput-boolean v0, v1, Ldz1;->d:Z

    .line 289
    .line 290
    return-void

    .line 291
    :cond_13
    :try_start_2
    const-string p0, "parent composition reference not set"

    .line 292
    .line 293
    invoke-static {p0}, Lar1;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 294
    .line 295
    .line 296
    new-instance p0, Lv00;

    .line 297
    .line 298
    const/4 p1, 0x6

    .line 299
    invoke-direct {p0, p1}, Lv00;-><init>(I)V

    .line 300
    .line 301
    .line 302
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :goto_d
    invoke-static {p2, p4, v2}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 304
    .line 305
    .line 306
    throw p0
.end method

.method public final n(Ljava/lang/Object;)Lxy1;
    .locals 10

    .line 1
    iget v0, p0, Llz1;->A:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Llz1;->n:Lxy1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lxy1;->o()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lrg2;

    .line 14
    .line 15
    iget-object v1, v0, Lrg2;->n:Lug2;

    .line 16
    .line 17
    iget v1, v1, Lug2;->p:I

    .line 18
    .line 19
    iget v2, p0, Llz1;->B:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    iget v2, p0, Llz1;->A:I

    .line 23
    .line 24
    sub-int v2, v1, v2

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v1, v3

    .line 28
    move v4, v1

    .line 29
    :goto_0
    iget-object v5, p0, Llz1;->s:Lkg2;

    .line 30
    .line 31
    const/4 v6, -0x1

    .line 32
    if-lt v4, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Lrg2;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Lxy1;

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast v7, Ldz1;

    .line 48
    .line 49
    iget-object v7, v7, Ldz1;->a:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    move v7, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v7, v6

    .line 63
    :goto_1
    if-ne v7, v6, :cond_6

    .line 64
    .line 65
    :goto_2
    if-lt v1, v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lrg2;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lxy1;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    check-cast v4, Ldz1;

    .line 81
    .line 82
    iget-object v8, v4, Ldz1;->a:Ljava/lang/Object;

    .line 83
    .line 84
    sget-object v9, Lmt3;->a:Lpr3;

    .line 85
    .line 86
    if-eq v8, v9, :cond_4

    .line 87
    .line 88
    iget-object v9, p0, Llz1;->p:Lst3;

    .line 89
    .line 90
    invoke-interface {v9, p1, v8}, Lst3;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_3
    iput-object p1, v4, Ldz1;->a:Ljava/lang/Object;

    .line 101
    .line 102
    move v4, v1

    .line 103
    move v7, v4

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v4, v1

    .line 106
    :cond_6
    :goto_4
    if-ne v7, v6, :cond_7

    .line 107
    .line 108
    :goto_5
    const/4 p0, 0x0

    .line 109
    return-object p0

    .line 110
    :cond_7
    if-eq v4, v2, :cond_8

    .line 111
    .line 112
    invoke-virtual {p0, v4, v2}, Llz1;->j(II)V

    .line 113
    .line 114
    .line 115
    :cond_8
    iget p1, p0, Llz1;->A:I

    .line 116
    .line 117
    add-int/2addr p1, v6

    .line 118
    iput p1, p0, Llz1;->A:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lrg2;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Lxy1;

    .line 125
    .line 126
    invoke-virtual {v5, p0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p1, Ldz1;

    .line 134
    .line 135
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p1, Ldz1;->g:Lws2;

    .line 142
    .line 143
    iput-boolean v3, p1, Ldz1;->e:Z

    .line 144
    .line 145
    iput-boolean v3, p1, Ldz1;->d:Z

    .line 146
    .line 147
    return-object p0
.end method
