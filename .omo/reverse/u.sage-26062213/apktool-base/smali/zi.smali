.class public final Lzi;
.super Lgs2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lm53;


# static fields
.field public static final H:Lt3;


# instance fields
.field public A:Lmg0;

.field public B:I

.field public C:Lcj;

.field public D:Lti;

.field public final E:Lwr3;

.field public final F:Lwr3;

.field public final G:Lb23;

.field public final s:Lws2;

.field public t:F

.field public u:Low;

.field public v:Z

.field public w:Ltu1;

.field public x:J

.field public y:Lqi0;

.field public z:Lpe1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt3;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lzi;->H:Lt3;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lti;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgs2;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lzi;->s:Lws2;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Lzi;->t:F

    .line 14
    .line 15
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Lzi;->x:J

    .line 21
    .line 22
    sget-object v0, Lzi;->H:Lt3;

    .line 23
    .line 24
    iput-object v0, p0, Lzi;->z:Lpe1;

    .line 25
    .line 26
    sget-object v0, Llg0;->a:Lqv3;

    .line 27
    .line 28
    iput-object v0, p0, Lzi;->A:Lmg0;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lzi;->B:I

    .line 32
    .line 33
    iput-object p1, p0, Lzi;->D:Lti;

    .line 34
    .line 35
    invoke-static {p1}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lzi;->E:Lwr3;

    .line 40
    .line 41
    sget-object p1, Lui;->a:Lui;

    .line 42
    .line 43
    invoke-static {p1}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lzi;->F:Lwr3;

    .line 48
    .line 49
    new-instance v0, Lb23;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lb23;-><init>(Lwr3;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lzi;->G:Lb23;

    .line 55
    .line 56
    return-void
.end method

.method public static final j(Lzi;Ljo1;Z)Ljo1;
    .locals 3

    .line 1
    invoke-static {p1}, Ljo1;->a(Ljo1;)Lgo1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lgw4;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, v2, p1, p0}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lgo1;->d:Ljw3;

    .line 12
    .line 13
    iget-object p1, p1, Ljo1;->s:Lio1;

    .line 14
    .line 15
    iget-object v1, p1, Lio1;->g:Lqn3;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lqn3;->a:Lv23;

    .line 20
    .line 21
    iput-object v1, v0, Lgo1;->l:Lqn3;

    .line 22
    .line 23
    :cond_0
    iget-object v1, p1, Lio1;->h:Lrd3;

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lzi;->A:Lmg0;

    .line 28
    .line 29
    sget v1, Lm94;->b:I

    .line 30
    .line 31
    sget-object v1, Llg0;->a:Lqv3;

    .line 32
    .line 33
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    sget-object v1, Llg0;->b:Lbx3;

    .line 40
    .line 41
    invoke-static {p0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p0, Lrd3;->n:Lrd3;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    sget-object p0, Lrd3;->o:Lrd3;

    .line 52
    .line 53
    :goto_1
    iput-object p0, v0, Lgo1;->m:Lrd3;

    .line 54
    .line 55
    :cond_3
    iget-object p0, p1, Lio1;->i:Lcx2;

    .line 56
    .line 57
    if-nez p0, :cond_4

    .line 58
    .line 59
    sget-object p0, Lcx2;->o:Lcx2;

    .line 60
    .line 61
    iput-object p0, v0, Lgo1;->n:Lcx2;

    .line 62
    .line 63
    :cond_4
    if-eqz p2, :cond_5

    .line 64
    .line 65
    sget-object p0, Ld01;->n:Ld01;

    .line 66
    .line 67
    iput-object p0, v0, Lgo1;->f:Lhi0;

    .line 68
    .line 69
    iput-object p0, v0, Lgo1;->g:Lhi0;

    .line 70
    .line 71
    iput-object p0, v0, Lgo1;->h:Lhi0;

    .line 72
    .line 73
    :cond_5
    invoke-virtual {v0}, Lgo1;->a()Ljo1;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static final k(Lzi;Lyi;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzi;->F:Lwr3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lyi;

    .line 8
    .line 9
    iget-object v2, p0, Lzi;->z:Lpe1;

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lyi;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lwr3;->h(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    instance-of v0, p1, Lxi;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lxi;

    .line 26
    .line 27
    iget-object v0, v0, Lxi;->b:Lxt3;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Lvi;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    check-cast v0, Lvi;

    .line 36
    .line 37
    iget-object v0, v0, Lvi;->b:Lf21;

    .line 38
    .line 39
    :goto_0
    invoke-interface {v0}, Loo1;->a()Ljo1;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Lno1;->a:Li3;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lk30;->w(Ljo1;Li3;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lxm2;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {p1}, Lyi;->a()Lgs2;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lzi;->s:Lws2;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Lyi;->a()Lgs2;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p1}, Lyi;->a()Lgs2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eq p0, v0, :cond_5

    .line 72
    .line 73
    invoke-interface {v1}, Lyi;->a()Lgs2;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    instance-of v0, p0, Lm53;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    check-cast p0, Lm53;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object p0, v1

    .line 86
    :goto_1
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-interface {p0}, Lm53;->e()V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-interface {p1}, Lyi;->a()Lgs2;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    instance-of p1, p0, Lm53;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    move-object v1, p0

    .line 100
    check-cast v1, Lm53;

    .line 101
    .line 102
    :cond_4
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-interface {v1}, Lm53;->a()V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const-string v0, "AsyncImagePainter.onRemembered"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lzi;->l()Lgs2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lm53;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lm53;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lm53;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lzi;->m()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lzi;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final b(F)Z
    .locals 0

    .line 1
    iput p1, p0, Lzi;->t:F

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzi;->w:Ltu1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lzi;->w:Ltu1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lzi;->l()Lgs2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v2, v0, Lm53;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lm53;

    .line 21
    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Lm53;->c()V

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lzi;->v:Z

    .line 29
    .line 30
    return-void
.end method

.method public final d(Low;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lzi;->u:Low;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzi;->w:Ltu1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lzi;->w:Ltu1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lzi;->l()Lgs2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v2, v0, Lm53;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lm53;

    .line 21
    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Lm53;->e()V

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lzi;->v:Z

    .line 29
    .line 30
    return-void
.end method

.method public final h()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzi;->l()Lgs2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lgs2;->h()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    return-wide v0
.end method

.method public final i(Lzy1;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {v0}, Lkx0;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lzi;->x:J

    .line 8
    .line 9
    invoke-static {v3, v4, v1, v2}, Lmn3;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iput-wide v1, p0, Lzi;->x:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lzi;->l()Lgs2;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lkx0;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget v8, p0, Lzi;->t:F

    .line 28
    .line 29
    iget-object v9, p0, Lzi;->u:Low;

    .line 30
    .line 31
    move-object v5, p1

    .line 32
    invoke-virtual/range {v4 .. v9}, Lgs2;->g(Lzy1;JFLow;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final l()Lgs2;
    .locals 0

    .line 1
    iget-object p0, p0, Lzi;->s:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgs2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final m()V
    .locals 6

    .line 1
    iget-object v0, p0, Lzi;->D:Lti;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lzi;->y:Lqi0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    new-instance v3, Lp;

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    invoke-direct {v3, p0, v0, v2, v4}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lqi0;->d()Lhi0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v4, Lm94;->b:I

    .line 22
    .line 23
    sget-object v4, Lji0;->o:Lii0;

    .line 24
    .line 25
    invoke-interface {v0, v4}, Lhi0;->K(Lgi0;)Lfi0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lji0;

    .line 30
    .line 31
    sget-object v4, Lti0;->q:Lti0;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v5, Lzu0;->b:Lm64;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v5, Lar0;

    .line 45
    .line 46
    invoke-interface {v1}, Lqi0;->d()Lhi0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v5, v1}, Lar0;-><init>(Lhi0;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, Ldm0;->c(Lhi0;)Lbh0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v5, Lbr0;

    .line 58
    .line 59
    invoke-direct {v5, v0}, Lbr0;-><init>(Lji0;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v5, v4, v3}, Lca;->x(Lqi0;Lhi0;Lti0;Ldf1;)Lir3;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    sget-object v0, Lzu0;->b:Lm64;

    .line 68
    .line 69
    invoke-static {v1, v0, v4, v3}, Lca;->x(Lqi0;Lhi0;Lti0;Ldf1;)Lir3;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    iget-object v1, p0, Lzi;->w:Ltu1;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {v1, v2}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iput-object v0, p0, Lzi;->w:Ltu1;

    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    const-string p0, "scope"

    .line 84
    .line 85
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2
.end method

.method public final n(Lti;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzi;->D:Lti;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lzi;->D:Lti;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lzi;->w:Ltu1;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v0, p0, Lzi;->w:Ltu1;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v1, p0, Lzi;->v:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lzi;->m()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lzi;->E:Lwr3;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method
