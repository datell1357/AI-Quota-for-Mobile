.class public final Ldz;
.super Lbm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lz11;


# instance fields
.field public final synthetic o:I

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp11;Lxl1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ldz;->o:I

    .line 48
    iput-object p1, p0, Ldz;->p:Ljava/lang/Object;

    .line 49
    invoke-direct {p0, p2}, Lbm1;-><init>(Lxl1;)V

    return-void
.end method

.method public constructor <init>(Lxl1;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldz;->o:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lbm1;-><init>(Lxl1;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lxl1;->isRepeatable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Lxl1;->getContentLength()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Ldz;->p:Ljava/lang/Object;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Ldz;->p:Ljava/lang/Object;

    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public constructor <init>(Lxl1;Lae0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ldz;->o:I

    .line 46
    invoke-direct {p0, p1}, Lbm1;-><init>(Lxl1;)V

    .line 47
    iput-object p2, p0, Ldz;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldz;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lae0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, v0, Lae0;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_5

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_4

    .line 30
    :catch_2
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lae0;->r()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_6

    .line 38
    :goto_2
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_6

    .line 41
    :cond_2
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ldz;->d()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :goto_4
    invoke-virtual {p0}, Ldz;->d()V

    .line 47
    .line 48
    .line 49
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :goto_5
    invoke-virtual {p0}, Ldz;->e()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_6
    invoke-virtual {p0}, Ldz;->e()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldz;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_3

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :catch_1
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :goto_0
    iget-object p1, p0, Ldz;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lae0;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lae0;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Ldz;->e()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ldz;->d()V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :goto_2
    invoke-virtual {p0}, Ldz;->d()V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :goto_3
    invoke-virtual {p0}, Ldz;->e()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public d()V
    .locals 0

    .line 1
    iget-object p0, p0, Ldz;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lae0;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lae0;->j()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object p0, p0, Ldz;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lae0;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lae0;->A(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 3

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    iget-object v1, p0, Ldz;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lbm1;->n:Lxl1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Ly11;

    .line 11
    .line 12
    invoke-interface {v2}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, p0}, Ly11;-><init>(Ljava/io/InputStream;Lz11;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    check-cast v1, Lp11;

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    iput-boolean p0, v1, Lp11;->t:Z

    .line 24
    .line 25
    invoke-interface {v2}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_1
    check-cast v1, [B

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v2}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lbm1;->getContentLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ldz;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    array-length p0, v0

    .line 18
    int-to-long v0, p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lbm1;->n:Lxl1;

    .line 21
    .line 22
    invoke-interface {p0}, Lxl1;->getContentLength()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :goto_0
    return-wide v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isChunked()Z
    .locals 1

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lbm1;->isChunked()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ldz;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lbm1;->n:Lxl1;

    .line 18
    .line 19
    invoke-interface {p0}, Lxl1;->isChunked()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isRepeatable()Z
    .locals 1

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Lbm1;->isRepeatable()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_1
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :pswitch_2
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isStreaming()Z
    .locals 1

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lbm1;->isStreaming()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ldz;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lbm1;->n:Lxl1;

    .line 18
    .line 19
    invoke-interface {p0}, Lxl1;->isStreaming()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ResponseEntityProxy{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lbm1;->n:Lxl1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget v0, p0, Ldz;->o:I

    .line 2
    .line 3
    iget-object v1, p0, Ldz;->p:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lbm1;->n:Lxl1;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 11
    .line 12
    .line 13
    check-cast v1, Lae0;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lae0;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ldz;->e()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ldz;->d()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :goto_1
    invoke-virtual {p0}, Ldz;->d()V

    .line 35
    .line 36
    .line 37
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_2
    invoke-virtual {p0}, Ldz;->e()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    check-cast v1, Lp11;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, v1, Lp11;->t:Z

    .line 46
    .line 47
    invoke-super {p0, p1}, Lbm1;->writeTo(Ljava/io/OutputStream;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    check-cast v1, [B

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    invoke-super {p0, p1}, Lbm1;->writeTo(Ljava/io/OutputStream;)V

    .line 60
    .line 61
    .line 62
    :goto_3
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
