.class public final Lxm1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lt60;


# instance fields
.field public final n:Lvm1;

.field public final o:Lae0;


# direct methods
.method public constructor <init>(Lvm1;Lae0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxm1;->n:Lvm1;

    .line 5
    .line 6
    iput-object p2, p0, Lxm1;->o:Lae0;

    .line 7
    .line 8
    invoke-interface {p1}, Lvm1;->getEntity()Lxl1;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Lxl1;->isStreaming()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance v0, Ldz;

    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Ldz;-><init>(Lxl1;Lae0;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lvm1;->setEntity(Lxl1;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final addHeader(Lgj1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->addHeader(Lgj1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lxm1;->n:Lvm1;

    invoke-interface {p0, p1, p2}, Lim1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lkv;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lxm1;->o:Lae0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lae0;->A(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final containsHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->containsHeader(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getAllHeaders()[Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lim1;->getAllHeaders()[Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getEntity()Lxl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->getEntity()Lxl1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getFirstHeader(Ljava/lang/String;)Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHeaders(Ljava/lang/String;)[Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLastHeader(Ljava/lang/String;)Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->getLastHeader(Ljava/lang/String;)Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getParams()Lkm1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lim1;->getParams()Lkm1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getProtocolVersion()Lg03;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lim1;->getProtocolVersion()Lg03;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final headerIterator()Ljj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lim1;->headerIterator()Ljj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final headerIterator(Ljava/lang/String;)Ljj1;
    .locals 0

    .line 8
    iget-object p0, p0, Lxm1;->n:Lvm1;

    invoke-interface {p0, p1}, Lim1;->headerIterator(Ljava/lang/String;)Ljj1;

    move-result-object p0

    return-object p0
.end method

.method public final removeHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->removeHeaders(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setEntity(Lxl1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lvm1;->setEntity(Lxl1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lim1;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setHeaders([Lgj1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->setHeaders([Lgj1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setParams(Lkm1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxm1;->n:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->setParams(Lkm1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HttpResponseProxy{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lxm1;->n:Lvm1;

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
