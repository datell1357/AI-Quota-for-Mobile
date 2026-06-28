.class public final Lxn0;
.super Lbm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Lgr0;

.field public p:Lsz1;


# direct methods
.method public constructor <init>(Lxl1;Lgr0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbm1;-><init>(Lxl1;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lxn0;->o:Lgr0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Lbm1;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {v0}, Lxl1;->isStreaming()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lxn0;->o:Lgr0;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lxn0;->p:Lsz1;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lsz1;

    .line 20
    .line 21
    invoke-direct {v1, v0, v2}, Lsz1;-><init>(Ljava/io/InputStream;Lgr0;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lxn0;->p:Lsz1;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lxn0;->p:Lsz1;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-interface {v0}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v0, Lsz1;

    .line 34
    .line 35
    invoke-direct {v0, p0, v2}, Lsz1;-><init>(Ljava/io/InputStream;Lgr0;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final getContentEncoding()Lgj1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getContentLength()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lxn0;->getContent()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x800

    .line 6
    .line 7
    :try_start_0
    new-array v0, v0, [B

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
