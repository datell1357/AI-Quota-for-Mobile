.class public final Lnf3;
.super Lkr0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lfc0;
.implements Lco2;


# instance fields
.field public D:Lxf3;

.field public E:Lhr2;

.field public F:Z

.field public G:Lto0;

.field public H:Lvf2;

.field public I:Z

.field public J:Lwa;

.field public K:Lwf3;

.field public L:Ljr0;

.field public M:Lxa;

.field public N:Lwa;

.field public O:Z


# virtual methods
.method public final H()V
    .locals 10

    .line 1
    sget-object v0, Lqr2;->a:Llc0;

    .line 2
    .line 3
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxa;

    .line 8
    .line 9
    iget-object v1, p0, Lnf3;->M:Lxa;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iput-object v0, p0, Lnf3;->M:Lxa;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lnf3;->N:Lwa;

    .line 21
    .line 22
    iget-object v1, p0, Lnf3;->L:Ljr0;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lkr0;->H0(Ljr0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object v0, p0, Lnf3;->L:Ljr0;

    .line 30
    .line 31
    invoke-virtual {p0}, Lnf3;->J0()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lnf3;->K:Lwf3;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v7, p0, Lnf3;->D:Lxf3;

    .line 39
    .line 40
    iget-object v6, p0, Lnf3;->E:Lhr2;

    .line 41
    .line 42
    iget-boolean v0, p0, Lnf3;->I:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lnf3;->N:Lwa;

    .line 47
    .line 48
    :goto_0
    move-object v3, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lnf3;->J:Lwa;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    iget-boolean v8, p0, Lnf3;->F:Z

    .line 54
    .line 55
    iget-boolean v9, p0, Lnf3;->O:Z

    .line 56
    .line 57
    iget-object v4, p0, Lnf3;->G:Lto0;

    .line 58
    .line 59
    iget-object v5, p0, Lnf3;->H:Lvf2;

    .line 60
    .line 61
    invoke-virtual/range {v2 .. v9}, Lwf3;->Z0(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnf3;->L:Ljr0;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lnf3;->I:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lvc3;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lix;->H(Lmd2;Lne1;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lnf3;->I:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lnf3;->N:Lwa;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lnf3;->J:Lwa;

    .line 26
    .line 27
    :goto_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, v0, Lwa;->i:Lkr0;

    .line 30
    .line 31
    iget-object v1, v0, Lmd2;->n:Lmd2;

    .line 32
    .line 33
    iget-boolean v1, v1, Lmd2;->A:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lnf3;->L:Ljr0;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    move-object v1, v0

    .line 44
    check-cast v1, Lmd2;

    .line 45
    .line 46
    iget-object v1, v1, Lmd2;->n:Lmd2;

    .line 47
    .line 48
    iget-boolean v1, v1, Lmd2;->A:Z

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final K0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lxy1;->M:Lhy1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lhy1;->n:Lhy1;

    .line 13
    .line 14
    :goto_0
    iget-object p0, p0, Lnf3;->E:Lhr2;

    .line 15
    .line 16
    sget-object v1, Lhy1;->o:Lhy1;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lhr2;->n:Lhr2;

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final L0(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V
    .locals 8

    .line 1
    iput-object p5, p0, Lnf3;->D:Lxf3;

    .line 2
    .line 3
    iput-object p4, p0, Lnf3;->E:Lhr2;

    .line 4
    .line 5
    iget-boolean v0, p0, Lnf3;->I:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, p6, :cond_0

    .line 10
    .line 11
    iput-boolean p6, p0, Lnf3;->I:Z

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lnf3;->J:Lwa;

    .line 17
    .line 18
    invoke-static {v3, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lnf3;->J:Lwa;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    if-nez p6, :cond_4

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lnf3;->L:Ljr0;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lkr0;->H0(Ljr0;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lnf3;->L:Ljr0;

    .line 43
    .line 44
    invoke-virtual {p0}, Lnf3;->J0()V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-boolean p7, p0, Lnf3;->F:Z

    .line 48
    .line 49
    iput-object p2, p0, Lnf3;->G:Lto0;

    .line 50
    .line 51
    iput-object p3, p0, Lnf3;->H:Lvf2;

    .line 52
    .line 53
    invoke-virtual {p0}, Lnf3;->K0()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iput-boolean v7, p0, Lnf3;->O:Z

    .line 58
    .line 59
    iget-object v0, p0, Lnf3;->K:Lwf3;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    iget-boolean p1, p0, Lnf3;->I:Z

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object p0, p0, Lnf3;->N:Lwa;

    .line 68
    .line 69
    :goto_2
    move-object v1, p0

    .line 70
    move-object v2, p2

    .line 71
    move-object v3, p3

    .line 72
    move-object v4, p4

    .line 73
    move-object v5, p5

    .line 74
    move v6, p7

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    iget-object p0, p0, Lnf3;->J:Lwa;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_3
    invoke-virtual/range {v0 .. v7}, Lwf3;->Z0(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public final q0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lnf3;->K0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lnf3;->O:Z

    .line 6
    .line 7
    if-eq v1, v0, :cond_1

    .line 8
    .line 9
    iput-boolean v0, p0, Lnf3;->O:Z

    .line 10
    .line 11
    iget-object v7, p0, Lnf3;->D:Lxf3;

    .line 12
    .line 13
    iget-object v6, p0, Lnf3;->E:Lhr2;

    .line 14
    .line 15
    iget-boolean v8, p0, Lnf3;->I:Z

    .line 16
    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lnf3;->N:Lwa;

    .line 20
    .line 21
    :goto_0
    move-object v3, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lnf3;->J:Lwa;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-boolean v9, p0, Lnf3;->F:Z

    .line 27
    .line 28
    iget-object v4, p0, Lnf3;->G:Lto0;

    .line 29
    .line 30
    iget-object v5, p0, Lnf3;->H:Lvf2;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    invoke-virtual/range {v2 .. v9}, Lnf3;->L0(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final y0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lnf3;->K0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lnf3;->O:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lnf3;->J0()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnf3;->K:Lwf3;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lwf3;

    .line 15
    .line 16
    iget-object v6, p0, Lnf3;->D:Lxf3;

    .line 17
    .line 18
    iget-boolean v0, p0, Lnf3;->I:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lnf3;->N:Lwa;

    .line 23
    .line 24
    :goto_0
    move-object v2, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lnf3;->J:Lwa;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v3, p0, Lnf3;->G:Lto0;

    .line 30
    .line 31
    iget-object v5, p0, Lnf3;->E:Lhr2;

    .line 32
    .line 33
    iget-boolean v7, p0, Lnf3;->F:Z

    .line 34
    .line 35
    iget-boolean v8, p0, Lnf3;->O:Z

    .line 36
    .line 37
    iget-object v4, p0, Lnf3;->H:Lvf2;

    .line 38
    .line 39
    invoke-direct/range {v1 .. v8}, Lwf3;-><init>(Lwa;Lto0;Lvf2;Lhr2;Lxf3;ZZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lkr0;->G0(Ljr0;)Ljr0;

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lnf3;->K:Lwf3;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnf3;->L:Ljr0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkr0;->H0(Ljr0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
