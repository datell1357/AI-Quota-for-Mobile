.class public final Lxe4;
.super Lb70;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;
.implements Llo2;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static final v:[Ljava/lang/Integer;


# instance fields
.field public p:Z

.field public q:I

.field public r:Lke4;

.field public final s:Lws2;

.field public final t:Ltf2;

.field public final u:Ltf2;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v0, 0x40

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/16 v0, 0x80

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/16 v0, 0x10

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lxe4;->v:[Ljava/lang/Integer;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lb70;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lxe4;->s:Lws2;

    .line 11
    .line 12
    new-instance v0, Ltf2;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ltf2;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lxe4;->t:Ltf2;

    .line 20
    .line 21
    new-instance v0, Ltf2;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ltf2;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lxe4;->u:Ltf2;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final M()Lke4;
    .locals 0

    .line 1
    iget-object p0, p0, Lxe4;->s:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lke4;

    .line 8
    .line 9
    return-object p0
.end method

.method public final N(I)Lpg2;
    .locals 1

    .line 1
    iget-object p0, p0, Lxe4;->t:Ltf2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpg2;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final O(I)Lpg2;
    .locals 1

    .line 1
    iget-object p0, p0, Lxe4;->u:Ltf2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpg2;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public final P(Lke4;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lxe4;->M()Lke4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lnr1;->e:Lnr1;

    .line 9
    .line 10
    sget-object v2, Lxe4;->v:[Ljava/lang/Integer;

    .line 11
    .line 12
    move v3, v1

    .line 13
    :goto_0
    const/16 v4, 0x8

    .line 14
    .line 15
    if-ge v3, v4, :cond_4

    .line 16
    .line 17
    aget-object v5, v2, v3

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ne v5, v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p1, Lke4;->a:Lhe4;

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lhe4;->i(I)Lnr1;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v4, p1, Lke4;->a:Lhe4;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lhe4;->j(I)Lnr1;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :goto_1
    invoke-static {v4, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_2
    iget-object p0, p0, Lxe4;->s:Lws2;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lwo3;->c:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    sget-object p1, Lwo3;->j:Ljh1;

    .line 57
    .line 58
    iget-object p1, p1, Log2;->h:Llg2;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Llg2;->h()Z

    .line 63
    .line 64
    .line 65
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 v0, 0x1

    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    move v1, v0

    .line 70
    :cond_3
    monitor-exit p0

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    invoke-static {}, Lwo3;->a()V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public final g(Landroid/view/View;Lke4;)Lke4;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxe4;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Lxe4;->r:Lke4;

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    iget p1, p0, Lxe4;->q:I

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lxe4;->P(Lke4;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p2
.end method

.method public final k(Lqd4;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxe4;->p:Z

    .line 3
    .line 4
    iget-object p1, p1, Lqd4;->a:Lpd4;

    .line 5
    .line 6
    invoke-virtual {p1}, Lpd4;->c()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lxe4;->N(I)Lpg2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lxe4;->O(I)Lpg2;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, v2}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lxe4;->q:I

    .line 26
    .line 27
    not-int p1, p1

    .line 28
    and-int/2addr p1, v1

    .line 29
    iput p1, p0, Lxe4;->q:I

    .line 30
    .line 31
    iput-object v2, p0, Lxe4;->r:Lke4;

    .line 32
    .line 33
    sget-object p0, Lwo3;->c:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    sget-object p1, Lwo3;->j:Ljh1;

    .line 37
    .line 38
    iget-object p1, p1, Log2;->h:Llg2;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Llg2;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x1

    .line 47
    if-ne p1, v1, :cond_0

    .line 48
    .line 49
    move v0, v1

    .line 50
    :cond_0
    monitor-exit p0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lwo3;->a()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public final l(Lqd4;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lxe4;->p:Z

    .line 3
    .line 4
    return-void
.end method

.method public final m(Lke4;Ljava/util/List;)Lke4;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lqd4;

    .line 13
    .line 14
    iget-object v3, v2, Lqd4;->a:Lpd4;

    .line 15
    .line 16
    invoke-virtual {v3}, Lpd4;->c()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, p0, Lxe4;->q:I

    .line 21
    .line 22
    and-int/2addr v4, v3

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lxe4;->N(I)Lpg2;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3, v2}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Lxe4;->P(Lke4;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final n(Lqd4;Lpc4;)Lpc4;
    .locals 7

    .line 1
    iget-object v0, p0, Lxe4;->r:Lke4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lxe4;->p:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lxe4;->r:Lke4;

    .line 8
    .line 9
    iget-object v3, p1, Lqd4;->a:Lpd4;

    .line 10
    .line 11
    invoke-virtual {v3}, Lpd4;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    cmp-long v3, v3, v5

    .line 18
    .line 19
    if-lez v3, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v3, p1, Lqd4;->a:Lpd4;

    .line 24
    .line 25
    invoke-virtual {v3}, Lpd4;->c()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Lxe4;->M()Lke4;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget-object v2, v4, Lke4;->a:Lhe4;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lhe4;->i(I)Lnr1;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_0
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lhe4;->i(I)Lnr1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget v4, p0, Lxe4;->q:I

    .line 56
    .line 57
    or-int/2addr v4, v3

    .line 58
    iput v4, p0, Lxe4;->q:I

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Lxe4;->N(I)Lpg2;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4, p1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lxe4;->O(I)Lpg2;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lwe4;

    .line 72
    .line 73
    invoke-direct {p1, v2, v0}, Lwe4;-><init>(Lnr1;Lnr1;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, p1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lwo3;->c:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    sget-object p1, Lwo3;->j:Ljh1;

    .line 83
    .line 84
    iget-object p1, p1, Log2;->h:Llg2;

    .line 85
    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Llg2;->h()Z

    .line 89
    .line 90
    .line 91
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v0, 0x1

    .line 93
    if-ne p1, v0, :cond_1

    .line 94
    .line 95
    move v1, v0

    .line 96
    :cond_1
    monitor-exit p0

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-static {}, Lwo3;->a()V

    .line 100
    .line 101
    .line 102
    return-object p2

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    monitor-exit p0

    .line 105
    throw p1

    .line 106
    :cond_2
    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object p1, v0

    .line 17
    :goto_1
    sget-object v0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-static {p1, p0}, Lfb4;->c(Landroid/view/View;Llo2;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p0}, Llb4;->g(Landroid/view/View;Lb70;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroid/view/View;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object p1, p0

    .line 18
    :goto_1
    sget-object p0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    invoke-static {p1, v1}, Lfb4;->c(Landroid/view/View;Llo2;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Llb4;->g(Landroid/view/View;Lb70;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lxe4;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lxe4;->q:I

    .line 7
    .line 8
    iput-boolean v0, p0, Lxe4;->p:Z

    .line 9
    .line 10
    iget-object v0, p0, Lxe4;->r:Lke4;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lxe4;->P(Lke4;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lxe4;->r:Lke4;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
