.class public final Lc50;
.super Ljava/io/OutputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lzj3;

.field public final o:[B

.field public p:I

.field public q:Z

.field public r:Z


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
    iput v0, p0, Lc50;->p:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lc50;->q:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lc50;->r:Z

    .line 10
    .line 11
    const/16 v0, 0x800

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lc50;->o:[B

    .line 16
    .line 17
    iput-object p1, p0, Lc50;->n:Lzj3;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget v0, p0, Lc50;->p:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lc50;->n:Lzj3;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lzj3;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lc50;->o:[B

    .line 15
    .line 16
    iget v2, p0, Lc50;->p:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-interface {v1, v0, v3, v2}, Lzj3;->write([BII)V

    .line 20
    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lzj3;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput v3, p0, Lc50;->p:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc50;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lc50;->r:Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lc50;->q:Z

    .line 9
    .line 10
    iget-object v2, p0, Lc50;->n:Lzj3;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lc50;->b()V

    .line 15
    .line 16
    .line 17
    const-string v1, "0"

    .line 18
    .line 19
    invoke-interface {v2, v1}, Lzj3;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-interface {v2, v1}, Lzj3;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lc50;->q:Z

    .line 28
    .line 29
    :cond_0
    invoke-interface {v2}, Lzj3;->flush()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc50;->b()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lc50;->n:Lzj3;

    .line 5
    .line 6
    invoke-interface {p0}, Lzj3;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final write(I)V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lc50;->r:Z

    if-nez v0, :cond_1

    .line 57
    iget v0, p0, Lc50;->p:I

    int-to-byte p1, p1

    iget-object v1, p0, Lc50;->o:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 58
    iput v0, p0, Lc50;->p:I

    .line 59
    array-length p1, v1

    if-ne v0, p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lc50;->b()V

    :cond_0
    return-void

    .line 61
    :cond_1
    const-string p0, "Attempted write to closed stream."

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 55
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc50;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc50;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lc50;->o:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    iget v2, p0, Lc50;->p:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    if-lt p3, v1, :cond_0

    .line 12
    .line 13
    add-int/2addr v2, p3

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lc50;->n:Lzj3;

    .line 19
    .line 20
    invoke-interface {v2, v1}, Lzj3;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lc50;->p:I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-interface {v2, v0, v3, v1}, Lzj3;->write([BII)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p1, p2, p3}, Lzj3;->write([BII)V

    .line 30
    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    invoke-interface {v2, p1}, Lzj3;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput v3, p0, Lc50;->p:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lc50;->p:I

    .line 44
    .line 45
    add-int/2addr p1, p3

    .line 46
    iput p1, p0, Lc50;->p:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const-string p0, "Attempted write to closed stream."

    .line 50
    .line 51
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
