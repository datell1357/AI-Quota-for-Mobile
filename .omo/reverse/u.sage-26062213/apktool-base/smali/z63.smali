.class public final Lz63;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxl1;


# instance fields
.field public final n:Lxl1;

.field public o:Z


# direct methods
.method public constructor <init>(Lxl1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lz63;->o:Z

    .line 6
    .line 7
    iput-object p1, p0, Lz63;->n:Lxl1;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lum1;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lzl1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lzl1;

    .line 6
    .line 7
    invoke-interface {p0}, Lzl1;->getEntity()Lxl1;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    instance-of v0, p0, Lz63;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    check-cast v0, Lz63;

    .line 19
    .line 20
    iget-boolean v0, v0, Lz63;->o:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0}, Lxl1;->isRepeatable()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getContentEncoding()Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->getContentEncoding()Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getContentLength()J
    .locals 2

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->getContentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getContentType()Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->getContentType()Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isChunked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->isChunked()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRepeatable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->isRepeatable()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isStreaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lxl1;->isStreaming()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RequestEntityProxy{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz63;->o:Z

    .line 3
    .line 4
    iget-object p0, p0, Lz63;->n:Lxl1;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
