.class public final Lyl1;
.super Ljava/io/OutputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Ljava/security/MessageDigest;

.field public o:Z

.field public p:[B


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyl1;->n:Ljava/security/MessageDigest;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyl1;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lyl1;->o:Z

    .line 8
    .line 9
    iget-object v0, p0, Lyl1;->n:Ljava/security/MessageDigest;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lyl1;->p:[B

    .line 16
    .line 17
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyl1;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lyl1;->n:Ljava/security/MessageDigest;

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p0, "Stream has been already closed"

    .line 13
    .line 14
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lyl1;->o:Z

    if-nez v0, :cond_0

    .line 19
    iget-object p0, p0, Lyl1;->n:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    .line 20
    :cond_0
    const-string p0, "Stream has been already closed"

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    return-void
.end method
