.class public final Lgv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lt92;
.implements Lul1;


# instance fields
.field public final n:Lg60;

.field public volatile o:Lqp2;

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:J

.field public volatile s:Lfv;


# direct methods
.method public constructor <init>(Lg60;Lqp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgv;->n:Lg60;

    .line 5
    .line 6
    iput-object p2, p0, Lgv;->o:Lqp2;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lgv;->p:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lgv;->q:Z

    .line 12
    .line 13
    const-wide p1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lgv;->r:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final A(Lfv;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lgv;->q:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

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

.method public final B(Lqp2;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lgv;->q:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

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

.method public final C(Lvm1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lgv;->p:Z

    .line 8
    .line 9
    check-cast v0, Lop3;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lop3;->C(Lvm1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final D(Lkm1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->A(Lfv;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 12
    .line 13
    const-string v1, "Route tracker"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 19
    .line 20
    iget-boolean p0, p0, Lya3;->p:Z

    .line 21
    .line 22
    const-string v1, "Connection not open"

    .line 23
    .line 24
    invoke-static {v1, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 28
    .line 29
    invoke-virtual {p0}, Lya3;->c()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    xor-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    const-string v1, "Connection is already tunnelled"

    .line 36
    .line 37
    invoke-static {v1, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, v0, Lfv;->b:Ldo0;

    .line 41
    .line 42
    iget-object v1, v0, Lfv;->e:Lya3;

    .line 43
    .line 44
    iget-object v1, v1, Lya3;->n:Lem1;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, v2, v1, v3, p1}, Ldo0;->K(Ljava/net/Socket;Lem1;ZLkm1;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 52
    .line 53
    iget-boolean p1, p0, Lya3;->p:Z

    .line 54
    .line 55
    const-string v0, "No tunnel unless connected"

    .line 56
    .line 57
    invoke-static {v0, p1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lya3;->q:[Lem1;

    .line 61
    .line 62
    const-string v0, "No tunnel without proxy"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lta3;->o:Lta3;

    .line 68
    .line 69
    iput-object p1, p0, Lya3;->r:Lta3;

    .line 70
    .line 71
    iput-boolean v3, p0, Lya3;->t:Z

    .line 72
    .line 73
    return-void
.end method

.method public final E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    check-cast v0, Lop3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lop3;->E()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final F()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lgv;->s:Lfv;

    .line 4
    .line 5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iput-object v0, p0, Lgv;->o:Lqp2;

    .line 7
    .line 8
    const-wide v0, 0x7fffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lgv;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :try_start_4
    throw v0

    .line 21
    :catchall_1
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 23
    throw v0
.end method

.method public final M()Lvm1;
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lgv;->p:Z

    .line 8
    .line 9
    check-cast v0, Ldo0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ldo0;->M()Lvm1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final O()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lgv;->p:Z

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
    iput-wide p1, p0, Lgv;->r:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-wide/16 p1, -0x1

    .line 11
    .line 12
    iput-wide p1, p0, Lgv;->r:J

    .line 13
    .line 14
    return-void
.end method

.method public final U(Lzl1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lgv;->p:Z

    .line 8
    .line 9
    check-cast v0, Lop3;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lop3;->U(Lzl1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final X()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    check-cast v0, Lop3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lop3;->X()Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    instance-of p0, v0, Lul1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    check-cast v0, Lul1;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final b0()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgv;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    check-cast v0, Ldo0;

    .line 15
    .line 16
    iget-object p0, v0, Ldo0;->A:Ljava/net/Socket;

    .line 17
    .line 18
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object v1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lfv;->e:Lya3;

    .line 7
    .line 8
    iput-object v1, v0, Lfv;->d:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lgv;->o:Lqp2;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    check-cast p0, Ldo0;

    .line 15
    .line 16
    invoke-virtual {p0}, Ldo0;->close()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final f()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgv;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast v0, Ldo0;

    .line 15
    .line 16
    iget-object p0, v0, Ldo0;->A:Ljava/net/Socket;

    .line 17
    .line 18
    return-object p0
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    check-cast v0, Lop3;

    .line 7
    .line 8
    invoke-virtual {v0}, Lop3;->flush()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lgv;->p:Z

    .line 3
    .line 4
    return-void
.end method

.method public final h0(Lul1;Lkm1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->A(Lfv;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p2, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 12
    .line 13
    const-string v1, "Route tracker"

    .line 14
    .line 15
    invoke-static {p0, v1}, Lmt1;->O(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 19
    .line 20
    iget-boolean p0, p0, Lya3;->p:Z

    .line 21
    .line 22
    const-string v1, "Connection not open"

    .line 23
    .line 24
    invoke-static {v1, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 28
    .line 29
    invoke-virtual {p0}, Lya3;->c()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-string v1, "Protocol layering without a tunnel not supported"

    .line 34
    .line 35
    invoke-static {v1, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 39
    .line 40
    invoke-virtual {p0}, Lya3;->f()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    xor-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    const-string v1, "Multiple protocol layering not supported"

    .line 47
    .line 48
    invoke-static {v1, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 52
    .line 53
    iget-object p0, p0, Lya3;->n:Lem1;

    .line 54
    .line 55
    iget-object v1, v0, Lfv;->a:Lh60;

    .line 56
    .line 57
    iget-object v2, v0, Lfv;->b:Ldo0;

    .line 58
    .line 59
    check-cast v1, Leo0;

    .line 60
    .line 61
    invoke-virtual {v1, v2, p0, p1, p2}, Leo0;->c(Lqp2;Lem1;Lul1;Lkm1;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 65
    .line 66
    iget-object p1, v0, Lfv;->b:Ldo0;

    .line 67
    .line 68
    iget-boolean p1, p1, Ldo0;->B:Z

    .line 69
    .line 70
    iget-boolean p2, p0, Lya3;->p:Z

    .line 71
    .line 72
    const-string v0, "No layered protocol unless connected"

    .line 73
    .line 74
    invoke-static {v0, p2}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    sget-object p2, Lsa3;->o:Lsa3;

    .line 78
    .line 79
    iput-object p2, p0, Lya3;->s:Lsa3;

    .line 80
    .line 81
    iput-boolean p1, p0, Lya3;->t:Z

    .line 82
    .line 83
    return-void
.end method

.method public final i()Lym1;
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->A(Lfv;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 13
    .line 14
    invoke-virtual {p0}, Lya3;->h()Lym1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p0, Lop3;

    .line 8
    .line 9
    iget-boolean p0, p0, Lop3;->v:Z

    .line 10
    .line 11
    return p0
.end method

.method public final declared-synchronized j()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lgv;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lgv;->q:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lgv;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    :try_start_2
    invoke-virtual {p0}, Lgv;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lgv;->n:Lg60;

    .line 21
    .line 22
    iget-wide v1, p0, Lgv;->r:J

    .line 23
    .line 24
    invoke-interface {v0, p0, v1, v2}, Lg60;->c(Lt92;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    throw v0
.end method

.method public final l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgv;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lgv;->o:Lqp2;

    .line 7
    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    :goto_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    check-cast p0, Lop3;

    .line 13
    .line 14
    invoke-virtual {p0}, Lop3;->l0()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->A(Lfv;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lfv;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    check-cast v0, Lop3;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lop3;->n(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized r()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lgv;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lgv;->q:Z

    .line 10
    .line 11
    iget-object v0, p0, Lgv;->n:Lg60;

    .line 12
    .line 13
    iget-wide v1, p0, Lgv;->r:J

    .line 14
    .line 15
    invoke-interface {v0, p0, v1, v2}, Lg60;->c(Lt92;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw v0
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lfv;->e:Lya3;

    .line 7
    .line 8
    iput-object v1, v0, Lfv;->d:Ljava/lang/Object;

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lgv;->o:Lqp2;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    check-cast p0, Ldo0;

    .line 15
    .line 16
    invoke-virtual {p0}, Ldo0;->shutdown()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final v(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    check-cast v0, Lop3;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lop3;->v(I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final w(Lym1;Lul1;Lkm1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lgv;->s:Lfv;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->A(Lfv;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "Route"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "HTTP parameters"

    .line 12
    .line 13
    invoke-static {p3, p0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, v0, Lfv;->e:Lya3;

    .line 22
    .line 23
    iget-boolean p0, p0, Lya3;->p:Z

    .line 24
    .line 25
    xor-int/2addr p0, v1

    .line 26
    const-string v2, "Connection already open"

    .line 27
    .line 28
    invoke-static {v2, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance p0, Lya3;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lya3;-><init>(Lym1;)V

    .line 34
    .line 35
    .line 36
    iput-object p0, v0, Lfv;->e:Lya3;

    .line 37
    .line 38
    invoke-virtual {p1}, Lym1;->e()Lem1;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object v2, v0, Lfv;->a:Lh60;

    .line 43
    .line 44
    iget-object v4, v0, Lfv;->b:Ldo0;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    move-object v5, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p1, Lym1;->n:Lem1;

    .line 51
    .line 52
    move-object v5, v3

    .line 53
    :goto_0
    iget-object v6, p1, Lym1;->o:Ljava/net/InetAddress;

    .line 54
    .line 55
    move-object v3, v2

    .line 56
    check-cast v3, Leo0;

    .line 57
    .line 58
    move-object v7, p2

    .line 59
    move-object v8, p3

    .line 60
    invoke-virtual/range {v3 .. v8}, Leo0;->a(Lqp2;Lem1;Ljava/net/InetAddress;Lul1;Lkm1;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lfv;->e:Lya3;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p2, v0, Lfv;->b:Ldo0;

    .line 68
    .line 69
    const-string p3, "Already connected"

    .line 70
    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    iget-boolean p0, p2, Ldo0;->B:Z

    .line 74
    .line 75
    iget-boolean p2, p1, Lya3;->p:Z

    .line 76
    .line 77
    xor-int/2addr p2, v1

    .line 78
    invoke-static {p3, p2}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iput-boolean v1, p1, Lya3;->p:Z

    .line 82
    .line 83
    iput-boolean p0, p1, Lya3;->t:Z

    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-boolean p2, p2, Ldo0;->B:Z

    .line 87
    .line 88
    iget-boolean v0, p1, Lya3;->p:Z

    .line 89
    .line 90
    xor-int/2addr v0, v1

    .line 91
    invoke-static {p3, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    iput-boolean v1, p1, Lya3;->p:Z

    .line 95
    .line 96
    filled-new-array {p0}, [Lem1;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, p1, Lya3;->q:[Lem1;

    .line 101
    .line 102
    iput-boolean p2, p1, Lya3;->t:Z

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 106
    .line 107
    const-string p1, "Request aborted"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public final x(Lom1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lgv;->p:Z

    .line 8
    .line 9
    check-cast v0, Ldo0;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ldo0;->x(Lom1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgv;->o:Lqp2;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lgv;->B(Lqp2;)V

    .line 4
    .line 5
    .line 6
    instance-of p0, v0, Lul1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    check-cast v0, Lul1;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
