.class public abstract Lop3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgm1;
.implements Lpl1;


# instance fields
.field public final n:Ldh1;

.field public final o:Lwu4;

.field public p:Lxj3;

.field public q:Lzj3;

.field public r:Lx11;

.field public s:Lgp0;

.field public t:Ldp0;

.field public u:Lqz0;

.field public volatile v:Z

.field public volatile w:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lop3;->p:Lxj3;

    .line 6
    .line 7
    iput-object v0, p0, Lop3;->q:Lzj3;

    .line 8
    .line 9
    iput-object v0, p0, Lop3;->r:Lx11;

    .line 10
    .line 11
    iput-object v0, p0, Lop3;->s:Lgp0;

    .line 12
    .line 13
    iput-object v0, p0, Lop3;->t:Ldp0;

    .line 14
    .line 15
    iput-object v0, p0, Lop3;->u:Lqz0;

    .line 16
    .line 17
    new-instance v1, Ldh1;

    .line 18
    .line 19
    new-instance v2, Lmj1;

    .line 20
    .line 21
    const/16 v3, 0x1d

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lmj1;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lop3;->n:Ldh1;

    .line 30
    .line 31
    new-instance v1, Lwu4;

    .line 32
    .line 33
    new-instance v2, Lmj1;

    .line 34
    .line 35
    const/16 v3, 0x14

    .line 36
    .line 37
    invoke-direct {v2, v3}, Lmj1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x1b

    .line 41
    .line 42
    invoke-direct {v1, v3, v2}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lop3;->o:Lwu4;

    .line 46
    .line 47
    iput-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 48
    .line 49
    return-void
.end method

.method public static F(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public abstract A(Ljava/net/Socket;ILkm1;)Lxj3;
.end method

.method public abstract B(Ljava/net/Socket;ILkm1;)Lzj3;
.end method

.method public final C(Lvm1;)V
    .locals 7

    .line 1
    const-string v0, "HTTP response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lop3;->j()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lop3;->p:Lxj3;

    .line 10
    .line 11
    iget-object p0, p0, Lop3;->o:Lwu4;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "Session input buffer"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lwu;

    .line 22
    .line 23
    invoke-direct {v1}, Lwu;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lmj1;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lmj1;->o(Lim1;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/16 v4, -0x2

    .line 35
    .line 36
    cmp-long p0, v2, v4

    .line 37
    .line 38
    const-wide/16 v4, -0x1

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    invoke-virtual {v1, p0}, Ld1;->setChunked(Z)V

    .line 44
    .line 45
    .line 46
    iput-wide v4, v1, Lwu;->o:J

    .line 47
    .line 48
    new-instance p0, Lb50;

    .line 49
    .line 50
    invoke-direct {p0, v0}, Lb50;-><init>(Lxj3;)V

    .line 51
    .line 52
    .line 53
    iput-object p0, v1, Lwu;->n:Ljava/io/InputStream;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    cmp-long p0, v2, v4

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Ld1;->setChunked(Z)V

    .line 62
    .line 63
    .line 64
    iput-wide v4, v1, Lwu;->o:J

    .line 65
    .line 66
    new-instance p0, Ltn1;

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ltn1;-><init>(Lxj3;)V

    .line 69
    .line 70
    .line 71
    iput-object p0, v1, Lwu;->n:Ljava/io/InputStream;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1, v6}, Ld1;->setChunked(Z)V

    .line 75
    .line 76
    .line 77
    iput-wide v2, v1, Lwu;->o:J

    .line 78
    .line 79
    new-instance p0, Lgg0;

    .line 80
    .line 81
    invoke-direct {p0, v0, v2, v3}, Lgg0;-><init>(Lxj3;J)V

    .line 82
    .line 83
    .line 84
    iput-object p0, v1, Lwu;->n:Ljava/io/InputStream;

    .line 85
    .line 86
    :goto_0
    const-string p0, "Content-Type"

    .line 87
    .line 88
    invoke-interface {p1, p0}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ld1;->setContentType(Lgj1;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string p0, "Content-Encoding"

    .line 98
    .line 99
    invoke-interface {p1, p0}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ld1;->setContentEncoding(Lgj1;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-interface {p1, v1}, Lvm1;->setEntity(Lxl1;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lop3;->w:Ljava/net/Socket;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final U(Lzl1;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lzl1;->getEntity()Lxl1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lop3;->q:Lzj3;

    .line 12
    .line 13
    invoke-interface {p1}, Lzl1;->getEntity()Lxl1;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lop3;->n:Ldh1;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "Session output buffer"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "HTTP entity"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lmj1;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lmj1;->o(Lim1;)J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    const-wide/16 v2, -0x2

    .line 41
    .line 42
    cmp-long v2, p0, v2

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    new-instance p0, Lc50;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lc50;-><init>(Lzj3;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-wide/16 v2, -0x1

    .line 53
    .line 54
    cmp-long v2, p0, v2

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    new-instance p0, Lun1;

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lun1;-><init>(Lzj3;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v2, Lhg0;

    .line 65
    .line 66
    invoke-direct {v2, v0, p0, p1}, Lhg0;-><init>(Lzj3;J)V

    .line 67
    .line 68
    .line 69
    move-object p0, v2

    .line 70
    :goto_0
    invoke-interface {v1, p0}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final X()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lop3;->w:Ljava/net/Socket;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lop3;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lop3;->v:Z

    .line 8
    .line 9
    iget-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lop3;->q:Lzj3;

    .line 12
    .line 13
    invoke-interface {p0}, Lzj3;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    .line 24
    .line 25
    :catch_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lop3;->q:Lzj3;

    .line 5
    .line 6
    invoke-interface {p0}, Lzj3;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lop3;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lop3;->v:Z

    .line 2
    .line 3
    const-string v0, "Connection is not open"

    .line 4
    .line 5
    invoke-static {v0, p0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l0()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lop3;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lop3;->r:Lx11;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Lx11;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v2, p0, Lop3;->p:Lxj3;

    .line 20
    .line 21
    invoke-interface {v2, v1}, Lxj3;->h(I)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lop3;->r:Lx11;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Lx11;->e()Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    return v0

    .line 36
    :catch_0
    :goto_0
    return v1

    .line 37
    :catch_1
    return v0
.end method

.method public final n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lop3;->w:Ljava/net/Socket;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final r(Ljava/net/Socket;Lkm1;)V
    .locals 3

    .line 1
    const-string v0, "Socket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lop3;->w:Ljava/net/Socket;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    move-object v1, p2

    .line 15
    check-cast v1, Lf1;

    .line 16
    .line 17
    const-string v2, "http.socket.buffer-size"

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lf1;->e(ILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0, p2}, Lop3;->A(Ljava/net/Socket;ILkm1;)Lxj3;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, p1, v0, p2}, Lop3;->B(Ljava/net/Socket;ILkm1;)Lzj3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object v1, p0, Lop3;->p:Lxj3;

    .line 32
    .line 33
    iput-object p1, p0, Lop3;->q:Lzj3;

    .line 34
    .line 35
    move-object v0, v1

    .line 36
    check-cast v0, Lx11;

    .line 37
    .line 38
    iput-object v0, p0, Lop3;->r:Lx11;

    .line 39
    .line 40
    sget-object v0, Lep0;->b:Lep0;

    .line 41
    .line 42
    new-instance v2, Lgp0;

    .line 43
    .line 44
    invoke-direct {v2, v1, v0, p2}, Lgp0;-><init>(Lxj3;Lep0;Lkm1;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lop3;->s:Lgp0;

    .line 48
    .line 49
    new-instance p2, Ldp0;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Ldp0;-><init>(Lzj3;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Lop3;->t:Ldp0;

    .line 55
    .line 56
    invoke-interface {v1}, Lxj3;->b()Lqz0;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lzj3;->b()Lqz0;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lqz0;

    .line 63
    .line 64
    const/4 p2, 0x6

    .line 65
    invoke-direct {p1, p2}, Lqz0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lop3;->u:Lqz0;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lop3;->v:Z

    .line 72
    .line 73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lop3;->w:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lop3;->w:Ljava/net/Socket;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Lop3;->w:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-static {v0, p0}, Lop3;->F(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "<->"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lop3;->F(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final v(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lop3;->j()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lop3;->p:Lxj3;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lxj3;->h(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
