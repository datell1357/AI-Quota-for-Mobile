.class public abstract Lgk2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lck2;

.field public b:Z


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lgk2;->a:Lck2;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v1, p0, Lgk2;->b:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2}, Lck2;->e(Lgk2;Lbk2;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lck2;->d()V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, v0, Lck2;->b:Z

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, v0, Lck2;->c:Lhk2;

    .line 23
    .line 24
    iget-object v0, v0, Lck2;->a:Lr6;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v4, v1, Lhk2;->h:Lgk2;

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    iget v4, v1, Lhk2;->g:I

    .line 38
    .line 39
    const/4 v5, -0x1

    .line 40
    if-eq v5, v4, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v4, v1, Lhk2;->f:Lek2;

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Lhk2;->c(I)Lek2;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_3
    iput-object v2, v1, Lhk2;->f:Lek2;

    .line 52
    .line 53
    iput v3, v1, Lhk2;->g:I

    .line 54
    .line 55
    iput-object v2, v1, Lhk2;->h:Lgk2;

    .line 56
    .line 57
    if-nez v4, :cond_4

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget-object v0, v0, Lr6;->o:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Luo2;

    .line 64
    .line 65
    iget-object v0, v0, Luo2;->a:Ljava/lang/Runnable;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v4}, Lek2;->c()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_0
    iget-object v0, v1, Lhk2;->a:Lwr3;

    .line 75
    .line 76
    sget-object v1, Lik2;->z:Lik2;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lgk2;->b:Z

    .line 85
    .line 86
    return-void

    .line 87
    :cond_7
    const-string p0, "This input is not added to any dispatcher."

    .line 88
    .line 89
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    return-void
.end method
