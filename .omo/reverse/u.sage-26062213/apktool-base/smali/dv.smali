.class public final Ldv;
.super Lbm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhe0;
.implements Lz11;


# instance fields
.field public o:Lt92;

.field public final p:Z


# direct methods
.method public constructor <init>(Lxl1;Lt92;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbm1;-><init>(Lxl1;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "Connection"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ldv;->o:Lt92;

    .line 10
    .line 11
    iput-boolean p3, p0, Ldv;->p:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ldv;->o:Lt92;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Ldv;->p:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lsl1;->isOpen()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Ldv;->o:Lt92;

    .line 17
    .line 18
    invoke-interface {p1}, Lt92;->O()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_2
    throw p1

    .line 29
    :cond_1
    invoke-interface {v0}, Lt92;->g0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ldv;->d()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-virtual {p0}, Ldv;->d()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Ldv;->o:Lt92;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lhe0;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ldv;->o:Lt92;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Ldv;->p:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ldv;->o:Lt92;

    .line 13
    .line 14
    invoke-interface {p1}, Lt92;->O()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-interface {v0}, Lt92;->g0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldv;->d()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    invoke-virtual {p0}, Ldv;->d()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldv;->o:Lt92;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lhe0;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Ldv;->o:Lt92;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Ldv;->o:Lt92;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ly11;

    .line 2
    .line 3
    iget-object v1, p0, Lbm1;->n:Lxl1;

    .line 4
    .line 5
    invoke-interface {v1}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p0}, Ly11;-><init>(Ljava/io/InputStream;Lz11;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final isRepeatable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldv;->o:Lt92;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lhe0;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Ldv;->o:Lt92;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Ldv;->o:Lt92;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbm1;->writeTo(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ldv;->o:Lt92;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Ldv;->p:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lbm1;->n:Lxl1;

    .line 14
    .line 15
    invoke-static {p1}, Ln44;->f0(Lxl1;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ldv;->o:Lt92;

    .line 19
    .line 20
    invoke-interface {p1}, Lt92;->O()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {p1}, Lt92;->g0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Ldv;->d()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    invoke-virtual {p0}, Ldv;->d()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
