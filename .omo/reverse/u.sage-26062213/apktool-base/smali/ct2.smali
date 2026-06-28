.class public final Lct2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcu3;


# instance fields
.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lct2;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct2;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lrp;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lsf4;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ltv;

    .line 7
    .line 8
    iget-object v1, p1, Lrp;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcf0;

    .line 11
    .line 12
    iget-object v2, p1, Lrp;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lyl2;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v3}, Ltv;-><init>(Lcf0;I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ltv;

    .line 21
    .line 22
    iget-object v4, p1, Lrp;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Luv;

    .line 25
    .line 26
    invoke-direct {v1, v4}, Ltv;-><init>(Luv;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ltv;

    .line 30
    .line 31
    iget-object v5, p1, Lrp;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lcf0;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    invoke-direct {v4, v5, v6}, Ltv;-><init>(Lcf0;I)V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    new-array v7, v5, [Lbf0;

    .line 41
    .line 42
    aput-object v0, v7, v3

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    aput-object v1, v7, v0

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    aput-object v4, v7, v1

    .line 49
    .line 50
    invoke-static {v7}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v8, 0x1c

    .line 57
    .line 58
    if-lt v7, v8, :cond_0

    .line 59
    .line 60
    iget-object p1, p1, Lrp;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v0, "connectivity"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 77
    .line 78
    new-instance v0, Lul2;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lul2;-><init>(Landroid/net/ConnectivityManager;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ltv;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, v2, v1}, Ltv;-><init>(Lyl2;I)V

    .line 93
    .line 94
    .line 95
    new-instance v7, Ltv;

    .line 96
    .line 97
    invoke-direct {v7, v2, v5}, Ltv;-><init>(Lyl2;I)V

    .line 98
    .line 99
    .line 100
    new-instance v8, Lrl2;

    .line 101
    .line 102
    invoke-direct {v8, v2}, Lrl2;-><init>(Lyl2;)V

    .line 103
    .line 104
    .line 105
    new-instance v9, Lql2;

    .line 106
    .line 107
    invoke-direct {v9, v2}, Lql2;-><init>(Lyl2;)V

    .line 108
    .line 109
    .line 110
    new-array v2, v6, [Lcr;

    .line 111
    .line 112
    aput-object p1, v2, v3

    .line 113
    .line 114
    aput-object v7, v2, v0

    .line 115
    .line 116
    aput-object v8, v2, v1

    .line 117
    .line 118
    aput-object v9, v2, v5

    .line 119
    .line 120
    invoke-static {v2}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v4, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    sget-object v0, Lft2;->c:Lft2;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(FFFFFF)V
    .locals 7

    .line 1
    new-instance v0, Lgt2;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lgt2;-><init>(FFFFFF)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(FFFFFF)V
    .locals 7

    .line 1
    new-instance v0, Lot2;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lot2;-><init>(FFFFFF)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    new-instance v0, Lht2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lht2;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    new-instance v0, Lpt2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lpt2;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(FF)V
    .locals 1

    .line 1
    new-instance v0, Lit2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lit2;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(FF)V
    .locals 1

    .line 1
    new-instance v0, Lqt2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lqt2;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v0, Lgd5;

    .line 4
    .line 5
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lgd5;-><init>(Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public h(FF)V
    .locals 1

    .line 1
    new-instance v0, Ljt2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ljt2;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Llt2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Llt2;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Ltt2;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Ltt2;-><init>(FFFF)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k(Log4;)La81;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    move-object v5, v4

    .line 26
    check-cast v5, Lbf0;

    .line 27
    .line 28
    invoke-interface {v5, p1}, Lbf0;->a(Log4;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v1, 0xa

    .line 41
    .line 42
    invoke-static {v0, v1}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    move v3, v2

    .line 54
    :goto_1
    if-ge v3, v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    check-cast v4, Lbf0;

    .line 63
    .line 64
    iget-object v5, p1, Log4;->j:Llf0;

    .line 65
    .line 66
    invoke-interface {v4, v5}, Lbf0;->c(Llf0;)La20;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {p0}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-array p1, v2, [La81;

    .line 79
    .line 80
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, [La81;

    .line 85
    .line 86
    new-instance p1, Lmt;

    .line 87
    .line 88
    const/4 v0, 0x4

    .line 89
    invoke-direct {p1, v0, p0}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lqj0;->D(La81;)La81;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public l(F)V
    .locals 1

    .line 1
    new-instance v0, Lwt2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lwt2;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    new-instance v0, Lvt2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lvt2;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lct2;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
