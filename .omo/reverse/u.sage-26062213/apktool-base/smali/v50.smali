.class public final Lv50;
.super Lpt;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final k:Ln8;

.field public final l:Ljava/lang/Class;

.field public final m:Ly84;

.field public final n:Ljf;

.field public final o:Lr50;

.field public final p:Lp50;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln8;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lpt;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lv50;->k:Ln8;

    .line 11
    .line 12
    const-class p2, Lu/sage/ClaudeUsageService;

    .line 13
    .line 14
    iput-object p2, p0, Lv50;->l:Ljava/lang/Class;

    .line 15
    .line 16
    sget-object p2, Ly84;->r:Ly84;

    .line 17
    .line 18
    iput-object p2, p0, Lv50;->m:Ly84;

    .line 19
    .line 20
    new-instance p2, Ljf;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p2, p1, v0}, Ljf;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lv50;->n:Ljf;

    .line 27
    .line 28
    new-instance p2, Lr50;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lr50;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lv50;->o:Lr50;

    .line 34
    .line 35
    new-instance p2, Lp50;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Lp50;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lv50;->p:Lp50;

    .line 41
    .line 42
    invoke-virtual {p0}, Lpt;->r()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lpt;->q()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lpt;->p()V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lpt;->f:Lbh0;

    .line 52
    .line 53
    new-instance v0, Ln;

    .line 54
    .line 55
    const/16 v1, 0xa

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v0, p0, p1, v2, v1}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x3

    .line 62
    invoke-static {p2, v2, v2, v0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lpt;->o()V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a(Lw3;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lw3;->l()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    return p0
.end method

.method public final b(Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lu50;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lu50;

    .line 7
    .line 8
    iget v1, v0, Lu50;->t:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lu50;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lu50;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lu50;-><init>(Lv50;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lu50;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lu50;->t:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    iget-object v5, p0, Lpt;->h:Lwr3;

    .line 33
    .line 34
    sget-object v6, Lri0;->n:Lri0;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Lu50;->q:Ld84;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_4

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_2
    :try_start_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :try_start_2
    new-instance p1, Lq50;

    .line 72
    .line 73
    iget-object v1, p0, Lpt;->a:Landroid/content/Context;

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-direct {p1, v1, v7}, Lq50;-><init>(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lu50;->t:I

    .line 80
    .line 81
    invoke-static {p1, v0}, Ln84;->a(Ln84;Lfh0;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v6, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    check-cast p1, Ld84;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget-object p0, p0, Lv50;->o:Lr50;

    .line 93
    .line 94
    iput-object p1, v0, Lu50;->q:Ld84;

    .line 95
    .line 96
    iput v2, v0, Lu50;->t:I

    .line 97
    .line 98
    invoke-virtual {p0, p1, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    if-ne p0, v6, :cond_5

    .line 103
    .line 104
    :goto_2
    return-object v6

    .line 105
    :cond_5
    move-object p0, p1

    .line 106
    :goto_3
    move-object p1, p0

    .line 107
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v4, p0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v4, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final c()Ln1;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->n:Ljf;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ln8;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->k:Ln8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Ld84;
    .locals 0

    .line 1
    sget p0, Lu/sage/ClaudeUsageService;->Z:I

    .line 2
    .line 3
    invoke-static {}, Lis0;->v()Ld84;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h()Lxr;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->p:Lp50;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->l:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Ly84;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->m:Ly84;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l()Lps;
    .locals 0

    .line 1
    iget-object p0, p0, Lv50;->o:Lr50;

    .line 2
    .line 3
    return-object p0
.end method
