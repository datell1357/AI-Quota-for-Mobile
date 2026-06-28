.class public final Lmr1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyp3;


# instance fields
.field public final n:Ljava/io/InputStream;

.field public final o:Lmz3;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lmz3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmr1;->n:Ljava/io/InputStream;

    .line 8
    .line 9
    iput-object p2, p0, Lmr1;->o:Lmz3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmr1;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()Lmz3;
    .locals 0

    .line 1
    iget-object p0, p0, Lmr1;->o:Lmz3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(JLsy;)J
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    if-ltz v2, :cond_4

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lmr1;->o:Lmz3;

    .line 14
    .line 15
    invoke-virtual {v0}, Lmz3;->f()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p3, v0}, Lsy;->Z(I)Lqg3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, v0, Lqg3;->c:I

    .line 24
    .line 25
    rsub-int v1, v1, 0x2000

    .line 26
    .line 27
    int-to-long v1, v1

    .line 28
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    long-to-int p1, p1

    .line 33
    iget-object p0, p0, Lmr1;->n:Ljava/io/InputStream;

    .line 34
    .line 35
    iget-object p2, v0, Lqg3;->a:[B

    .line 36
    .line 37
    iget v1, v0, Lqg3;->c:I

    .line 38
    .line 39
    invoke-virtual {p0, p2, v1, p1}, Ljava/io/InputStream;->read([BII)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 p1, -0x1

    .line 44
    if-ne p0, p1, :cond_2

    .line 45
    .line 46
    iget p0, v0, Lqg3;->b:I

    .line 47
    .line 48
    iget p1, v0, Lqg3;->c:I

    .line 49
    .line 50
    if-ne p0, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lqg3;->a()Lqg3;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput-object p0, p3, Lsy;->n:Lqg3;

    .line 57
    .line 58
    invoke-static {v0}, Lsg3;->a(Lqg3;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const-wide/16 p0, -0x1

    .line 62
    .line 63
    return-wide p0

    .line 64
    :cond_2
    iget p1, v0, Lqg3;->c:I

    .line 65
    .line 66
    add-int/2addr p1, p0

    .line 67
    iput p1, v0, Lqg3;->c:I

    .line 68
    .line 69
    iget-wide p1, p3, Lsy;->o:J

    .line 70
    .line 71
    int-to-long v0, p0

    .line 72
    add-long/2addr p1, v0

    .line 73
    iput-wide p1, p3, Lsy;->o:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    return-wide v0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    invoke-static {p0}, Lei4;->a(Ljava/lang/AssertionError;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    new-instance p1, Ljava/io/IOException;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_3
    throw p0

    .line 90
    :cond_4
    const-string p0, "byteCount < 0: "

    .line 91
    .line 92
    invoke-static {p1, p2, p0}, Ldi0;->s(JLjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "source("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lmr1;->n:Ljava/io/InputStream;

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
