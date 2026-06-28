.class public final Ly11;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhe0;


# instance fields
.field public n:Ljava/io/InputStream;

.field public o:Z

.field public final p:Lz11;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lz11;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Wrapped stream"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Ly11;->o:Z

    .line 13
    .line 14
    iput-object p2, p0, Ly11;->p:Lz11;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly11;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 6
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

    .line 13
    :cond_1
    const-string p0, "Attempted read on closed stream."

    .line 14
    .line 15
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final available()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly11;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Ly11;->b()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Ly11;->p:Lz11;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v2}, Lz11;->b()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object v1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 20
    .line 21
    return-void

    .line 22
    :goto_1
    iput-object v1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly11;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Ly11;->p:Lz11;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lz11;->a(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :goto_0
    iput-object v1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 23
    .line 24
    return-void

    .line 25
    :goto_1
    iput-object v1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly11;->o:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ly11;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly11;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Ly11;->z(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0}, Ly11;->b()V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 29
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ly11;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 1

    .line 24
    invoke-virtual {p0}, Ly11;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Ly11;->z(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p0}, Ly11;->b()V

    .line 28
    throw p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly11;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Ly11;->p:Lz11;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1, v0}, Lz11;->c(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :goto_0
    iput-object p1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 22
    .line 23
    return-void

    .line 24
    :goto_1
    iput-object p1, p0, Ly11;->n:Ljava/io/InputStream;

    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    return-void
.end method
