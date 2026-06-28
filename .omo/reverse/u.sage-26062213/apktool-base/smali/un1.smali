.class public final Lun1;
.super Ljava/io/OutputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lzj3;

.field public o:Z


# direct methods
.method public constructor <init>(Lzj3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lun1;->o:Z

    .line 6
    .line 7
    const-string v0, "Session output buffer"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lun1;->n:Lzj3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lun1;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lun1;->o:Z

    .line 7
    .line 8
    iget-object p0, p0, Lun1;->n:Lzj3;

    .line 9
    .line 10
    invoke-interface {p0}, Lzj3;->flush()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lun1;->n:Lzj3;

    .line 2
    .line 3
    invoke-interface {p0}, Lzj3;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lun1;->o:Z

    if-nez v0, :cond_0

    .line 19
    iget-object p0, p0, Lun1;->n:Lzj3;

    invoke-interface {p0, p1}, Lzj3;->write(I)V

    return-void

    .line 20
    :cond_0
    const-string p0, "Attempted write to closed stream."

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 17
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lun1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lun1;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lun1;->n:Lzj3;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Lzj3;->write([BII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "Attempted write to closed stream."

    .line 12
    .line 13
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
