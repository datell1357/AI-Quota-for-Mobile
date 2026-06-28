.class public final Lqw;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loy1;
.implements Leh3;


# instance fields
.field public B:Lpe1;


# virtual methods
.method public final a0(Lph3;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lw80;->P(Ljr0;I)Lmm2;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lmm2;->W:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-object v1, Ln44;->c:Lo83;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lo83;

    .line 15
    .line 16
    invoke-direct {v1}, Lo83;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ln44;->c:Lo83;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lo83;->a()V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object v1, Ln44;->c:Lo83;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lmm2;->F:Lxy1;

    .line 31
    .line 32
    iget-object v2, v2, Lxy1;->L:Las0;

    .line 33
    .line 34
    iput-object v2, v1, Lo83;->A:Las0;

    .line 35
    .line 36
    iget-wide v2, v0, Ldv2;->p:J

    .line 37
    .line 38
    invoke-static {v2, v3}, Lse0;->H(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iput-wide v2, v1, Lo83;->y:J

    .line 43
    .line 44
    invoke-static {}, Lk75;->x()Lpo3;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lpo3;->e()Lpe1;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 56
    :goto_1
    invoke-static {v0}, Lk75;->E(Lpo3;)Lpo3;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :try_start_0
    iget-object p0, p0, Lqw;->B:Lpe1;

    .line 61
    .line 62
    invoke-interface {p0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v3, v2}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, v1, Lo83;->w:Ljl3;

    .line 69
    .line 70
    iget-boolean v0, v1, Lo83;->x:Z

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-static {v0, v3, v2}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_2
    iget-object p0, v0, Lmm2;->U:Ljl3;

    .line 79
    .line 80
    iget-boolean v0, v0, Lmm2;->V:Z

    .line 81
    .line 82
    :goto_2
    if-nez v0, :cond_3

    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-static {p1, p0}, Lnh3;->d(Lph3;Ljl3;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 2

    .line 1
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget p3, p2, Ldv2;->n:I

    .line 6
    .line 7
    iget p4, p2, Ldv2;->o:I

    .line 8
    .line 9
    new-instance v0, Loc;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1, p2, p0}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lh01;->n:Lh01;

    .line 16
    .line 17
    invoke-interface {p1, p3, p4, p0, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lqw;->B:Lpe1;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "BlockGraphicsLayerModifier(block="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
