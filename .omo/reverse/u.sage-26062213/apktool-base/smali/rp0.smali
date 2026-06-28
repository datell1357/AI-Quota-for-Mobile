.class public abstract Lrp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lv92;
.implements Lul1;
.implements Lpl1;
.implements Lgm1;


# instance fields
.field public final n:Lyj3;

.field public final o:Lak3;

.field public final p:Lqz0;

.field public final q:Lmj1;

.field public final r:Lmj1;

.field public final s:Ljava/util/concurrent/atomic/AtomicReference;

.field public final t:Lm1;

.field public final u:Ldp0;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/util/concurrent/ConcurrentHashMap;

.field public volatile x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmj1;Lmj1;Lw13;Ljm1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p4, "Buffer size"

    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    invoke-static {v0, p4}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p4, Lqz0;

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    invoke-direct {p4, v0}, Lqz0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lqz0;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lqz0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lyj3;

    .line 23
    .line 24
    sget-object v2, Lnc2;->p:Lnc2;

    .line 25
    .line 26
    invoke-direct {v0, p4, v2}, Lyj3;-><init>(Lqz0;Lnc2;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lrp0;->n:Lyj3;

    .line 30
    .line 31
    new-instance p4, Lak3;

    .line 32
    .line 33
    invoke-direct {p4, v1}, Lak3;-><init>(Lqz0;)V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lrp0;->o:Lak3;

    .line 37
    .line 38
    new-instance p4, Lqz0;

    .line 39
    .line 40
    const/4 v0, 0x6

    .line 41
    invoke-direct {p4, v0}, Lqz0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p4, p0, Lrp0;->p:Lqz0;

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object p2, Lmj1;->X:Lmj1;

    .line 50
    .line 51
    :goto_0
    iput-object p2, p0, Lrp0;->q:Lmj1;

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget-object p3, Lmj1;->g0:Lmj1;

    .line 57
    .line 58
    :goto_1
    iput-object p3, p0, Lrp0;->r:Lmj1;

    .line 59
    .line 60
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    .line 67
    iget-object p2, p0, Lrp0;->o:Lak3;

    .line 68
    .line 69
    new-instance p3, Ldp0;

    .line 70
    .line 71
    const/4 p4, 0x0

    .line 72
    invoke-direct {p3, p2, p4}, Ldp0;-><init>(Lzj3;I)V

    .line 73
    .line 74
    .line 75
    iput-object p3, p0, Lrp0;->u:Ldp0;

    .line 76
    .line 77
    if-eqz p5, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget-object p5, Lhp0;->c:Lhp0;

    .line 81
    .line 82
    :goto_2
    iget-object p2, p0, Lrp0;->n:Lyj3;

    .line 83
    .line 84
    invoke-interface {p5, p2}, Ljm1;->a(Lxj3;)Lm1;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lrp0;->t:Lm1;

    .line 89
    .line 90
    iput-object p1, p0, Lrp0;->v:Ljava/lang/String;

    .line 91
    .line 92
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lrp0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public abstract A(Lom1;)V
.end method

.method public abstract B(Lvm1;)V
.end method

.method public final C(Lvm1;)V
    .locals 8

    .line 1
    const-string v0, "HTTP response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lrp0;->j()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lwu;

    .line 10
    .line 11
    invoke-direct {v0}, Lwu;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lrp0;->q:Lmj1;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lmj1;->o(Lim1;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-wide/16 v3, -0x2

    .line 21
    .line 22
    cmp-long v3, v1, v3

    .line 23
    .line 24
    const-wide/16 v4, -0x1

    .line 25
    .line 26
    iget-object p0, p0, Lrp0;->n:Lyj3;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v6, Lb50;

    .line 31
    .line 32
    invoke-direct {v6, p0}, Lb50;-><init>(Lxj3;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    cmp-long v6, v1, v4

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    new-instance v6, Ltn1;

    .line 41
    .line 42
    invoke-direct {v6, p0}, Ltn1;-><init>(Lxj3;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    cmp-long v6, v1, v6

    .line 49
    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    sget-object v6, Le01;->n:Le01;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v6, Lgg0;

    .line 56
    .line 57
    invoke-direct {v6, p0, v1, v2}, Lgg0;-><init>(Lxj3;J)V

    .line 58
    .line 59
    .line 60
    :goto_0
    if-nez v3, :cond_3

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    invoke-virtual {v0, p0}, Ld1;->setChunked(Z)V

    .line 64
    .line 65
    .line 66
    iput-wide v4, v0, Lwu;->o:J

    .line 67
    .line 68
    iput-object v6, v0, Lwu;->n:Ljava/io/InputStream;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    cmp-long p0, v1, v4

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ld1;->setChunked(Z)V

    .line 77
    .line 78
    .line 79
    iput-wide v4, v0, Lwu;->o:J

    .line 80
    .line 81
    iput-object v6, v0, Lwu;->n:Ljava/io/InputStream;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v0, v3}, Ld1;->setChunked(Z)V

    .line 85
    .line 86
    .line 87
    iput-wide v1, v0, Lwu;->o:J

    .line 88
    .line 89
    iput-object v6, v0, Lwu;->n:Ljava/io/InputStream;

    .line 90
    .line 91
    :goto_1
    const-string p0, "Content-Type"

    .line 92
    .line 93
    invoke-interface {p1, p0}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ld1;->setContentType(Lgj1;)V

    .line 100
    .line 101
    .line 102
    :cond_5
    const-string p0, "Content-Encoding"

    .line 103
    .line 104
    invoke-interface {p1, p0}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ld1;->setContentEncoding(Lgj1;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-interface {p1, v0}, Lvm1;->setEntity(Lxl1;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final E()I
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final M()Lvm1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lrp0;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrp0;->t:Lm1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm1;->a()Lim1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lvm1;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lrp0;->B(Lvm1;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lvm1;->b()Lkv;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Lkv;->o:I

    .line 20
    .line 21
    const/16 v2, 0xc8

    .line 22
    .line 23
    if-lt v1, v2, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lrp0;->p:Lqz0;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public final S(Ljava/net/Socket;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrp0;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Socket"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lrp0;->n:Lyj3;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lyj3;->s:Ljava/io/InputStream;

    .line 19
    .line 20
    iget-object p0, p0, Lrp0;->o:Lak3;

    .line 21
    .line 22
    iput-object v0, p0, Lak3;->q:Ljava/io/OutputStream;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 29
    .line 30
    const-string p1, "Connection already shutdown"

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final U(Lzl1;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lrp0;->j()V

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
    iget-object v1, p0, Lrp0;->r:Lmj1;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lmj1;->o(Lim1;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const-wide/16 v3, -0x2

    .line 18
    .line 19
    cmp-long p1, v1, v3

    .line 20
    .line 21
    iget-object p0, p0, Lrp0;->o:Lak3;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lc50;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lc50;-><init>(Lzj3;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    cmp-long p1, v1, v3

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lun1;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lun1;-><init>(Lzj3;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance p1, Lhg0;

    .line 44
    .line 45
    invoke-direct {p1, p0, v1, v2}, Lhg0;-><init>(Lzj3;J)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-interface {v0, p1}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final X()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b0()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/Socket;

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

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/net/Socket;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lrp0;->n:Lyj3;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, v1, Lyj3;->t:I

    .line 16
    .line 17
    iput v2, v1, Lyj3;->u:I

    .line 18
    .line 19
    iget-object p0, p0, Lrp0;->o:Lak3;

    .line 20
    .line 21
    invoke-virtual {p0}, Lak3;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    return-void
.end method

.method public final f()Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/Socket;

    .line 8
    .line 9
    return-object p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lrp0;->j()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lrp0;->o:Lak3;

    .line 5
    .line 6
    invoke-virtual {p0}, Lak3;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lrp0;->n:Lyj3;

    .line 12
    .line 13
    iget-object v2, v1, Lyj3;->s:Ljava/io/InputStream;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, p0

    .line 19
    check-cast v2, Lv72;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v2, v2, Lv72;->A:Lkf4;

    .line 26
    .line 27
    invoke-virtual {v2}, Lkf4;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    new-instance v4, Lu72;

    .line 34
    .line 35
    invoke-direct {v4, v3, v2}, Lu72;-><init>(Ljava/io/InputStream;Lkf4;)V

    .line 36
    .line 37
    .line 38
    move-object v3, v4

    .line 39
    :cond_1
    iput-object v3, v1, Lyj3;->s:Ljava/io/InputStream;

    .line 40
    .line 41
    :goto_0
    iget-object v1, p0, Lrp0;->o:Lak3;

    .line 42
    .line 43
    iget-object v2, v1, Lak3;->q:Ljava/io/OutputStream;

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    check-cast p0, Lv72;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object p0, p0, Lv72;->A:Lkf4;

    .line 55
    .line 56
    invoke-virtual {p0}, Lkf4;->a()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    new-instance v2, Lw72;

    .line 63
    .line 64
    invoke-direct {v2, v0, p0}, Lw72;-><init>(Ljava/io/OutputStream;Lkf4;)V

    .line 65
    .line 66
    .line 67
    move-object v0, v2

    .line 68
    :cond_3
    iput-object v0, v1, Lak3;->q:Ljava/io/OutputStream;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    new-instance p0, Lc70;

    .line 72
    .line 73
    const-string v0, "Connection is closed"

    .line 74
    .line 75
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final l0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrp0;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Lrp0;->r(I)I

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-gez p0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    return v0

    .line 18
    :catch_0
    return v1

    .line 19
    :catch_1
    return v0
.end method

.method public final r(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lrp0;->n:Lyj3;

    .line 17
    .line 18
    invoke-virtual {p0}, Lyj3;->a()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lrp0;->s:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-static {v0, p0}, Lk30;->r(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "<->"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lk30;->r(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    const-string p0, "[Not bound]"

    .line 45
    .line 46
    return-object p0
.end method

.method public final v(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrp0;->j()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lrp0;->n:Lyj3;

    .line 5
    .line 6
    invoke-virtual {v0}, Lyj3;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lrp0;->r(I)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lyj3;->c()Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final x(Lom1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrp0;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lrp0;->u:Ldp0;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Le1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ln1;->h(Le1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lrp0;->A(Lom1;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lrp0;->p:Lqz0;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lrp0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
