.class public final Lw21;
.super Lbc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:J

.field public final p:Z

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Z

.field public final synthetic u:Lmu0;


# direct methods
.method public constructor <init>(Lmu0;Lyp3;JZ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw21;->u:Lmu0;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lbc1;-><init>(Lyp3;)V

    .line 7
    .line 8
    .line 9
    iput-wide p3, p0, Lw21;->o:J

    .line 10
    .line 11
    iput-boolean p5, p0, Lw21;->p:Z

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lw21;->r:Z

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    cmp-long p1, p3, p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lw21;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lw21;->s:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lw21;->r:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lw21;->r:Z

    .line 17
    .line 18
    :cond_1
    iget-boolean v0, p0, Lw21;->p:Z

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    iget-object p0, p0, Lw21;->u:Lmu0;

    .line 23
    .line 24
    invoke-static {p0, v0, p1, v1}, Lmu0;->a(Lmu0;ZLjava/io/IOException;I)Ljava/io/IOException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lw21;->t:Z

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
    iput-boolean v0, p0, Lw21;->t:Z

    .line 8
    .line 9
    :try_start_0
    invoke-super {p0}, Lbc1;->close()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final l(JLsy;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lw21;->u:Lmu0;

    .line 2
    .line 3
    const-string v1, "expected "

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v2, p0, Lw21;->t:Z

    .line 9
    .line 10
    if-nez v2, :cond_5

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lbc1;->n:Lyp3;

    .line 13
    .line 14
    invoke-interface {v2, p1, p2, p3}, Lyp3;->l(JLsy;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-boolean p3, p0, Lw21;->r:Z

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    iput-boolean p3, p0, Lw21;->r:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long p3, p1, v2

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 36
    .line 37
    .line 38
    return-wide v2

    .line 39
    :cond_1
    iget-wide v5, p0, Lw21;->q:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    add-long/2addr v5, p1

    .line 42
    iget-wide v7, p0, Lw21;->o:J

    .line 43
    .line 44
    cmp-long p3, v7, v2

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    cmp-long p3, v5, v7

    .line 49
    .line 50
    if-gtz p3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, " bytes but received "

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    :goto_1
    iput-wide v5, p0, Lw21;->q:J

    .line 80
    .line 81
    iget-object p3, v0, Lmu0;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p3, Ly21;

    .line 84
    .line 85
    invoke-interface {p3}, Ly21;->j()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0, v4}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    :cond_4
    return-wide p1

    .line 95
    :goto_2
    invoke-virtual {p0, p1}, Lw21;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_5
    const-string p0, "closed"

    .line 104
    .line 105
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 p0, 0x0

    .line 109
    .line 110
    return-wide p0
.end method
