.class public final Lhg0;
.super Ljava/io/OutputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lzj3;

.field public final o:J

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>(Lzj3;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Session output buffer"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lhg0;->n:Lzj3;

    .line 10
    .line 11
    invoke-static {p2, p3}, Lw80;->K(J)V

    .line 12
    .line 13
    .line 14
    iput-wide p2, p0, Lhg0;->o:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhg0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lhg0;->q:Z

    .line 7
    .line 8
    iget-object p0, p0, Lhg0;->n:Lzj3;

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
    iget-object p0, p0, Lhg0;->n:Lzj3;

    .line 2
    .line 3
    invoke-interface {p0}, Lzj3;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 4

    .line 39
    iget-boolean v0, p0, Lhg0;->q:Z

    if-nez v0, :cond_1

    .line 40
    iget-wide v0, p0, Lhg0;->p:J

    iget-wide v2, p0, Lhg0;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 41
    iget-object v0, p0, Lhg0;->n:Lzj3;

    invoke-interface {v0, p1}, Lzj3;->write(I)V

    .line 42
    iget-wide v0, p0, Lhg0;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lhg0;->p:J

    :cond_0
    return-void

    .line 43
    :cond_1
    const-string p0, "Attempted write to closed stream."

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 38
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lhg0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lhg0;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lhg0;->p:J

    .line 6
    .line 7
    iget-wide v2, p0, Lhg0;->o:J

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-gez v4, :cond_1

    .line 12
    .line 13
    sub-long/2addr v2, v0

    .line 14
    int-to-long v0, p3

    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    long-to-int p3, v2

    .line 20
    :cond_0
    iget-object v0, p0, Lhg0;->n:Lzj3;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3}, Lzj3;->write([BII)V

    .line 23
    .line 24
    .line 25
    iget-wide p1, p0, Lhg0;->p:J

    .line 26
    .line 27
    int-to-long v0, p3

    .line 28
    add-long/2addr p1, v0

    .line 29
    iput-wide p1, p0, Lhg0;->p:J

    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    const-string p0, "Attempted write to closed stream."

    .line 33
    .line 34
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
