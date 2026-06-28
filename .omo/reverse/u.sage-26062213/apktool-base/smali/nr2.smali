.class public final Lnr2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lkn3;


# instance fields
.field public final n:Ljava/io/FileOutputStream;

.field public final o:Lmz3;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Lmz3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnr2;->n:Ljava/io/FileOutputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lnr2;->o:Lmz3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final J(JLsy;)V
    .locals 7

    .line 1
    iget-wide v0, p3, Lsy;->o:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    move-wide v4, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lis0;->q(JJJ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lnr2;->o:Lmz3;

    .line 16
    .line 17
    invoke-virtual {v0}, Lmz3;->f()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p3, Lsy;->n:Lqg3;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget v1, v0, Lqg3;->c:I

    .line 26
    .line 27
    iget v2, v0, Lqg3;->b:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-long v1, v1

    .line 31
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    long-to-int v1, v1

    .line 36
    iget-object v2, v0, Lqg3;->a:[B

    .line 37
    .line 38
    iget v3, v0, Lqg3;->b:I

    .line 39
    .line 40
    iget-object v4, p0, Lnr2;->n:Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Lqg3;->b:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, v0, Lqg3;->b:I

    .line 49
    .line 50
    int-to-long v3, v1

    .line 51
    sub-long/2addr p1, v3

    .line 52
    iget-wide v5, p3, Lsy;->o:J

    .line 53
    .line 54
    sub-long/2addr v5, v3

    .line 55
    iput-wide v5, p3, Lsy;->o:J

    .line 56
    .line 57
    iget v1, v0, Lqg3;->c:I

    .line 58
    .line 59
    if-ne v2, v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lqg3;->a()Lqg3;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p3, Lsy;->n:Lqg3;

    .line 66
    .line 67
    invoke-static {v0}, Lsg3;->a(Lqg3;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lnr2;->n:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lnr2;->n:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Lmz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lnr2;->o:Lmz3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sink("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnr2;->n:Ljava/io/FileOutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

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
