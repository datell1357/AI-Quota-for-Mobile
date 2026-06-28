.class public final Lu92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lt92;


# instance fields
.field public final n:Lg60;

.field public final o:Lh60;

.field public volatile p:Lmm1;

.field public volatile q:Z

.field public volatile r:J


# direct methods
.method public constructor <init>(Liu;Leo0;Lmm1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Connection manager"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Connection operator"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "HTTP pool entry"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lu92;->n:Lg60;

    .line 20
    .line 21
    iput-object p2, p0, Lu92;->o:Lh60;

    .line 22
    .line 23
    iput-object p3, p0, Lu92;->p:Lmm1;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lu92;->q:Z

    .line 27
    .line 28
    const-wide p1, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, Lu92;->r:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final C(Lvm1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lop3;->C(Lvm1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final D(Lkm1;)V
    .locals 4

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 12
    .line 13
    iget-object v0, v0, Lmm1;->i:Lya3;

    .line 14
    .line 15
    const-string v1, "Route tracker"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, v0, Lya3;->p:Z

    .line 21
    .line 22
    const-string v2, "Connection not open"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lya3;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    const-string v2, "Connection is already tunnelled"

    .line 34
    .line 35
    invoke-static {v2, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lya3;->n:Lem1;

    .line 39
    .line 40
    iget-object v1, p0, Lu92;->p:Lmm1;

    .line 41
    .line 42
    iget-object v1, v1, Lmw2;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lqp2;

    .line 45
    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    const/4 v2, 0x0

    .line 48
    check-cast v1, Ldo0;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v1, v2, v0, v3, p1}, Ldo0;->K(Ljava/net/Socket;Lem1;ZLkm1;)V

    .line 52
    .line 53
    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 60
    .line 61
    iget-object p1, p1, Lmm1;->i:Lya3;

    .line 62
    .line 63
    iget-boolean v0, p1, Lya3;->p:Z

    .line 64
    .line 65
    const-string v1, "No tunnel unless connected"

    .line 66
    .line 67
    invoke-static {v1, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Lya3;->q:[Lem1;

    .line 71
    .line 72
    const-string v1, "No tunnel without proxy"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lta3;->o:Lta3;

    .line 78
    .line 79
    iput-object v0, p1, Lya3;->r:Lta3;

    .line 80
    .line 81
    iput-boolean v3, p1, Lya3;->t:Z

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :try_start_2
    new-instance p1, Lje0;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    throw p1
.end method

.method public final E()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lop3;->E()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final M()Lvm1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ldo0;

    .line 6
    .line 7
    invoke-virtual {p0}, Ldo0;->M()Lvm1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final O()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu92;->q:Z

    .line 3
    .line 4
    return-void
.end method

.method public final S(Ljava/net/Socket;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final T(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lu92;->r:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/16 p1, -0x1

    .line 11
    .line 12
    iput-wide p1, p0, Lu92;->r:J

    .line 13
    .line 14
    return-void
.end method

.method public final U(Lzl1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lop3;->U(Lzl1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final X()Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lop3;->X()Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final b()Lqp2;
    .locals 0

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lqp2;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lje0;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public final b0()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ldo0;

    .line 6
    .line 7
    iget-object p0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 8
    .line 9
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lqp2;

    .line 8
    .line 9
    iget-object p0, p0, Lmm1;->i:Lya3;

    .line 10
    .line 11
    invoke-virtual {p0}, Lya3;->g()V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ldo0;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldo0;->close()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final f()Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ldo0;

    .line 6
    .line 7
    iget-object p0, p0, Ldo0;->A:Ljava/net/Socket;

    .line 8
    .line 9
    return-object p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lop3;->flush()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final g0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu92;->q:Z

    .line 3
    .line 4
    return-void
.end method

.method public final h0(Lul1;Lkm1;)V
    .locals 3

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 12
    .line 13
    iget-object v0, v0, Lmm1;->i:Lya3;

    .line 14
    .line 15
    const-string v1, "Route tracker"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, v0, Lya3;->p:Z

    .line 21
    .line 22
    const-string v2, "Connection not open"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lya3;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v2, "Protocol layering without a tunnel not supported"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lya3;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    xor-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    const-string v2, "Multiple protocol layering not supported"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lya3;->n:Lem1;

    .line 48
    .line 49
    iget-object v1, p0, Lu92;->p:Lmm1;

    .line 50
    .line 51
    iget-object v1, v1, Lmw2;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lqp2;

    .line 54
    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    iget-object v2, p0, Lu92;->o:Lh60;

    .line 57
    .line 58
    check-cast v2, Leo0;

    .line 59
    .line 60
    invoke-virtual {v2, v1, v0, p1, p2}, Leo0;->c(Lqp2;Lem1;Lul1;Lkm1;)V

    .line 61
    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 69
    .line 70
    iget-object p1, p1, Lmm1;->i:Lya3;

    .line 71
    .line 72
    check-cast v1, Ldo0;

    .line 73
    .line 74
    iget-boolean p2, v1, Ldo0;->B:Z

    .line 75
    .line 76
    iget-boolean v0, p1, Lya3;->p:Z

    .line 77
    .line 78
    const-string v1, "No layered protocol unless connected"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lsa3;->o:Lsa3;

    .line 84
    .line 85
    iput-object v0, p1, Lya3;->s:Lsa3;

    .line 86
    .line 87
    iput-boolean p2, p1, Lya3;->t:Z

    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p1

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :try_start_2
    new-instance p1, Lje0;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    throw p1
.end method

.method public final i()Lym1;
    .locals 0

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmm1;->i:Lya3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lya3;->h()Lym1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lje0;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lqp2;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lop3;

    .line 14
    .line 15
    iget-boolean p0, p0, Lop3;->v:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final j()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lu92;->q:Z

    .line 12
    .line 13
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 14
    .line 15
    iget-object v0, v0, Lmw2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lqp2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :try_start_1
    check-cast v0, Ldo0;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldo0;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :try_start_2
    iget-object v0, p0, Lu92;->n:Lg60;

    .line 25
    .line 26
    iget-wide v1, p0, Lu92;->r:J

    .line 27
    .line 28
    invoke-interface {v0, p0, v1, v2}, Lg60;->c(Lt92;J)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lu92;->p:Lmm1;

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v0
.end method

.method public final l0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lqp2;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lop3;

    .line 14
    .line 15
    invoke-virtual {p0}, Lop3;->l0()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lmw2;->g:Ljava/lang/Object;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Lje0;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final n(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lop3;->n(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lu92;->n:Lg60;

    .line 11
    .line 12
    iget-wide v1, p0, Lu92;->r:J

    .line 13
    .line 14
    invoke-interface {v0, p0, v1, v2}, Lg60;->c(Lt92;J)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lu92;->p:Lmm1;

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lu92;->p:Lmm1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lqp2;

    .line 8
    .line 9
    iget-object p0, p0, Lmm1;->i:Lya3;

    .line 10
    .line 11
    invoke-virtual {p0}, Lya3;->g()V

    .line 12
    .line 13
    .line 14
    check-cast v0, Ldo0;

    .line 15
    .line 16
    invoke-virtual {v0}, Ldo0;->shutdown()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final v(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lop3;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lop3;->v(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final w(Lym1;Lul1;Lkm1;)V
    .locals 8

    .line 1
    const-string v0, "Route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 17
    .line 18
    iget-object v0, v0, Lmm1;->i:Lya3;

    .line 19
    .line 20
    const-string v1, "Route tracker"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, v0, Lya3;->p:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    xor-int/2addr v0, v1

    .line 29
    const-string v2, "Connection already open"

    .line 30
    .line 31
    invoke-static {v2, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lu92;->p:Lmm1;

    .line 35
    .line 36
    iget-object v0, v0, Lmw2;->c:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Lqp2;

    .line 40
    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    invoke-virtual {p1}, Lym1;->e()Lem1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lu92;->o:Lh60;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    move-object v4, v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v4, p1, Lym1;->n:Lem1;

    .line 53
    .line 54
    :goto_0
    iget-object v5, p1, Lym1;->o:Ljava/net/InetAddress;

    .line 55
    .line 56
    check-cast v2, Leo0;

    .line 57
    .line 58
    move-object v6, p2

    .line 59
    move-object v7, p3

    .line 60
    invoke-virtual/range {v2 .. v7}, Leo0;->a(Lqp2;Lem1;Ljava/net/InetAddress;Lul1;Lkm1;)V

    .line 61
    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lu92;->p:Lmm1;

    .line 69
    .line 70
    iget-object p1, p1, Lmm1;->i:Lya3;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    check-cast v3, Ldo0;

    .line 75
    .line 76
    iget-boolean p2, v3, Ldo0;->B:Z

    .line 77
    .line 78
    iget-boolean p3, p1, Lya3;->p:Z

    .line 79
    .line 80
    xor-int/2addr p3, v1

    .line 81
    const-string v0, "Already connected"

    .line 82
    .line 83
    invoke-static {v0, p3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    iput-boolean v1, p1, Lya3;->p:Z

    .line 87
    .line 88
    iput-boolean p2, p1, Lya3;->t:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    check-cast v3, Ldo0;

    .line 92
    .line 93
    iget-boolean p2, v3, Ldo0;->B:Z

    .line 94
    .line 95
    iget-boolean p3, p1, Lya3;->p:Z

    .line 96
    .line 97
    xor-int/2addr p3, v1

    .line 98
    const-string v2, "Already connected"

    .line 99
    .line 100
    invoke-static {v2, p3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    iput-boolean v1, p1, Lya3;->p:Z

    .line 104
    .line 105
    filled-new-array {v0}, [Lem1;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    iput-object p3, p1, Lya3;->q:[Lem1;

    .line 110
    .line 111
    iput-boolean p2, p1, Lya3;->t:Z

    .line 112
    .line 113
    :goto_1
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p1, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p1

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    move-object p1, v0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    :try_start_2
    new-instance p1, Lje0;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    throw p1
.end method

.method public final x(Lom1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu92;->b()Lqp2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ldo0;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ldo0;->x(Lom1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
