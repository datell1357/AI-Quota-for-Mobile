.class public final Ljl1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljp3;


# instance fields
.field public final n:I

.field public final o:Lcl1;

.field public final p:Led4;

.field public q:J

.field public r:J

.field public final s:Ljava/util/ArrayDeque;

.field public t:Z

.field public final u:Lhl1;

.field public final v:Lgl1;

.field public final w:Lil1;

.field public final x:Lil1;

.field public y:Ld21;

.field public z:Ljava/io/IOException;


# direct methods
.method public constructor <init>(ILcl1;ZZLkj1;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Ljl1;->n:I

    .line 8
    .line 9
    iput-object p2, p0, Ljl1;->o:Lcl1;

    .line 10
    .line 11
    new-instance v0, Led4;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Led4;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ljl1;->p:Led4;

    .line 17
    .line 18
    iget-object p1, p2, Lcl1;->E:Llk3;

    .line 19
    .line 20
    invoke-virtual {p1}, Llk3;->a()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-long v0, p1

    .line 25
    iput-wide v0, p0, Ljl1;->r:J

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ljl1;->s:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    new-instance v0, Lhl1;

    .line 35
    .line 36
    iget-object p2, p2, Lcl1;->D:Llk3;

    .line 37
    .line 38
    invoke-virtual {p2}, Llk3;->a()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-long v1, p2

    .line 43
    invoke-direct {v0, p0, v1, v2, p4}, Lhl1;-><init>(Ljl1;JZ)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Ljl1;->u:Lhl1;

    .line 47
    .line 48
    new-instance p2, Lgl1;

    .line 49
    .line 50
    invoke-direct {p2, p0, p3}, Lgl1;-><init>(Ljl1;Z)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Ljl1;->v:Lgl1;

    .line 54
    .line 55
    new-instance p2, Lil1;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lil1;-><init>(Ljl1;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Ljl1;->w:Lil1;

    .line 61
    .line 62
    new-instance p2, Lil1;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lil1;-><init>(Ljl1;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Ljl1;->x:Lil1;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    if-eqz p5, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Ljl1;->i()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string p0, "locally-initiated streams shouldn\'t have headers yet"

    .line 83
    .line 84
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljl1;->i()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    const-string p0, "remotely-initiated streams should have headers"

    .line 96
    .line 97
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lhi4;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Ljl1;->u:Lhl1;

    .line 5
    .line 6
    iget-boolean v1, v0, Lhl1;->o:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lhl1;->r:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Ljl1;->v:Lgl1;

    .line 15
    .line 16
    iget-boolean v1, v0, Lgl1;->n:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Lgl1;->p:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    invoke-virtual {p0}, Ljl1;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Ld21;->u:Ld21;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Ljl1;->c(Ld21;Ljava/io/IOException;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    if-nez v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Ljl1;->o:Lcl1;

    .line 47
    .line 48
    iget p0, p0, Ljl1;->n:I

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lcl1;->r(I)Ljl1;

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl1;->v:Lgl1;

    .line 2
    .line 3
    iget-boolean v1, v0, Lgl1;->p:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-boolean v0, v0, Lgl1;->n:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljl1;->h()Ld21;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Ljl1;->z:Ljava/io/IOException;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lss3;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljl1;->h()Ld21;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lss3;-><init>(Ld21;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    throw v0

    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    const-string p0, "stream finished"

    .line 37
    .line 38
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const-string p0, "stream closed"

    .line 43
    .line 44
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final c(Ld21;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljl1;->d(Ld21;Ljava/io/IOException;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Ljl1;->o:Lcl1;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p2, p2, Lcl1;->J:Lkl1;

    .line 14
    .line 15
    iget p0, p0, Ljl1;->n:I

    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Lkl1;->F(ILd21;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(Ld21;Ljava/io/IOException;)Z
    .locals 2

    .line 1
    sget-object v0, Lhi4;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljl1;->h()Ld21;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    iput-object p1, p0, Ljl1;->y:Ld21;

    .line 14
    .line 15
    iput-object p2, p0, Ljl1;->z:Ljava/io/IOException;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ljl1;->u:Lhl1;

    .line 21
    .line 22
    iget-boolean p1, p1, Lhl1;->o:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Ljl1;->v:Lgl1;

    .line 27
    .line 28
    iget-boolean p1, p1, Lgl1;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return v1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    iget-object p1, p0, Ljl1;->o:Lcl1;

    .line 38
    .line 39
    iget p0, p0, Ljl1;->n:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcl1;->r(I)Ljl1;

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :goto_0
    monitor-exit p0

    .line 47
    throw p1
.end method

.method public final e(Ld21;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ljl1;->d(Ld21;Ljava/io/IOException;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Ljl1;->o:Lcl1;

    .line 10
    .line 11
    iget p0, p0, Ljl1;->n:I

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lcl1;->F(ILd21;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f()Lkn3;
    .locals 0

    .line 1
    iget-object p0, p0, Ljl1;->v:Lgl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()Lyp3;
    .locals 0

    .line 1
    iget-object p0, p0, Ljl1;->u:Lhl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ld21;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ljl1;->y:Ld21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    iget v0, p0, Ljl1;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object p0, p0, Ljl1;->o:Lcl1;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-ne v1, v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    return v2
.end method

.method public final j()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljl1;->h()Ld21;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljl1;->u:Lhl1;

    .line 12
    .line 13
    iget-boolean v2, v0, Lhl1;->o:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Lhl1;->r:Z

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Ljl1;->v:Lgl1;

    .line 25
    .line 26
    iget-boolean v2, v0, Lgl1;->n:Z

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v0, Lgl1;->p:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    :cond_2
    iget-boolean v0, p0, Ljl1;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :cond_3
    monitor-exit p0

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final k(Lkj1;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lhi4;->a:Ljava/util/TimeZone;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Ljl1;->t:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, ":status"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ":method"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lkj1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Ljl1;->u:Lhl1;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    iput-boolean v1, p0, Ljl1;->t:Z

    .line 38
    .line 39
    iget-object v0, p0, Ljl1;->s:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Ljl1;->u:Lhl1;

    .line 47
    .line 48
    iput-boolean v1, p1, Lhl1;->o:Z

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Ljl1;->j()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Ljl1;->o:Lcl1;

    .line 61
    .line 62
    iget p0, p0, Ljl1;->n:I

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lcl1;->r(I)Ljl1;

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void

    .line 68
    :goto_2
    monitor-exit p0

    .line 69
    throw p1
.end method
