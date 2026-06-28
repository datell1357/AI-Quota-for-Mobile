.class public Luy0;
.super Lzy0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public b(Lov3;Lov3;Landroid/view/Window;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p3, p0}, Lk75;->M(Landroid/view/Window;Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    iget p0, p1, Lov3;->b:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p0, p1, Lov3;->a:I

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    .line 26
    .line 27
    if-eqz p6, :cond_1

    .line 28
    .line 29
    iget p0, p2, Lov3;->b:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget p0, p2, Lov3;->a:I

    .line 33
    .line 34
    :goto_1
    invoke-virtual {p3, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 35
    .line 36
    .line 37
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 p1, 0x23

    .line 40
    .line 41
    if-lt p0, p1, :cond_2

    .line 42
    .line 43
    new-instance p0, Loe4;

    .line 44
    .line 45
    invoke-direct {p0, p3}, Lne4;-><init>(Landroid/view/Window;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 p1, 0x1e

    .line 50
    .line 51
    if-lt p0, p1, :cond_3

    .line 52
    .line 53
    new-instance p0, Lne4;

    .line 54
    .line 55
    invoke-direct {p0, p3}, Lne4;-><init>(Landroid/view/Window;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/16 p1, 0x1a

    .line 60
    .line 61
    if-lt p0, p1, :cond_4

    .line 62
    .line 63
    new-instance p0, Lme4;

    .line 64
    .line 65
    invoke-direct {p0, p3}, Lle4;-><init>(Landroid/view/Window;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    new-instance p0, Lle4;

    .line 70
    .line 71
    invoke-direct {p0, p3}, Lle4;-><init>(Landroid/view/Window;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    xor-int/lit8 p1, p5, 0x1

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lpe4;->b(Z)V

    .line 77
    .line 78
    .line 79
    xor-int/lit8 p1, p6, 0x1

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lpe4;->a(Z)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
