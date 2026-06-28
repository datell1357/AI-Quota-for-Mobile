.class public abstract Lbm1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxl1;


# instance fields
.field public final n:Lxl1;


# direct methods
.method public constructor <init>(Lxl1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Wrapped entity"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lbm1;->n:Lxl1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getContentEncoding()Lgj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

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

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

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
    iget-object p0, p0, Lbm1;->n:Lxl1;

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

.method public isChunked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

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

.method public isRepeatable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

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

.method public isStreaming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

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

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lbm1;->n:Lxl1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lxl1;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
