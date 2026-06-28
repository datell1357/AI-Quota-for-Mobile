.class public final Lb50;
.super Ljava/io/InputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lxj3;

.field public final o:Lb40;

.field public final p:Lnc2;

.field public q:I

.field public r:J

.field public s:J

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>(Lxj3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb50;->t:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lb50;->u:Z

    .line 8
    .line 9
    const-string v0, "Session input buffer"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb50;->n:Lxj3;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lb50;->s:J

    .line 19
    .line 20
    new-instance p1, Lb40;

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lb40;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lb50;->o:Lb40;

    .line 28
    .line 29
    sget-object p1, Lnc2;->p:Lnc2;

    .line 30
    .line 31
    iput-object p1, p0, Lb50;->p:Lnc2;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lb50;->q:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 6

    .line 1
    iget-object v0, p0, Lb50;->n:Lxj3;

    .line 2
    .line 3
    instance-of v1, v0, Lty;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lty;

    .line 8
    .line 9
    invoke-interface {v0}, Lty;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    iget-wide v2, p0, Lb50;->r:J

    .line 15
    .line 16
    iget-wide v4, p0, Lb50;->s:J

    .line 17
    .line 18
    sub-long/2addr v2, v4

    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    long-to-int p0, v0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final b()J
    .locals 7

    .line 1
    iget v0, p0, Lb50;->q:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, p0, Lb50;->n:Lxj3;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lb50;->o:Lb40;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-eq v0, v5, :cond_3

    .line 11
    .line 12
    const/4 v6, 0x3

    .line 13
    if-ne v0, v6, :cond_2

    .line 14
    .line 15
    iput v3, v4, Lb40;->o:I

    .line 16
    .line 17
    invoke-interface {v2, v4}, Lxj3;->d(Lb40;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4}, Lb40;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iput v5, p0, Lb50;->q:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Lp92;

    .line 33
    .line 34
    const-string v0, "Unexpected content at the end of chunk"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    new-instance p0, Lp92;

    .line 41
    .line 42
    const-string v0, "CRLF expected at end of chunk"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    const-string p0, "Inconsistent codec state"

    .line 49
    .line 50
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    return-wide v0

    .line 56
    :cond_3
    :goto_0
    iput v3, v4, Lb40;->o:I

    .line 57
    .line 58
    invoke-interface {v2, v4}, Lxj3;->d(Lb40;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eq p0, v1, :cond_5

    .line 63
    .line 64
    const/16 p0, 0x3b

    .line 65
    .line 66
    iget v0, v4, Lb40;->o:I

    .line 67
    .line 68
    invoke-virtual {v4, p0, v3, v0}, Lb40;->g(III)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-gez p0, :cond_4

    .line 73
    .line 74
    iget p0, v4, Lb40;->o:I

    .line 75
    .line 76
    :cond_4
    invoke-virtual {v4, v3, p0}, Lb40;->i(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const/16 v0, 0x10

    .line 81
    .line 82
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-wide v0

    .line 87
    :catch_0
    new-instance v0, Lp92;

    .line 88
    .line 89
    const-string v1, "Bad chunk header: "

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_5
    new-instance p0, Lc70;

    .line 100
    .line 101
    const-string v0, "Premature end of chunk coded message body: closing chunk expected"

    .line 102
    .line 103
    invoke-static {v0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb50;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lb50;->t:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lb50;->q:I

    .line 11
    .line 12
    const v2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x800

    .line 18
    .line 19
    new-array v2, v1, [B

    .line 20
    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v2, v3, v1}, Lb50;->read([BII)I

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-ltz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iput-boolean v0, p0, Lb50;->t:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lb50;->u:Z

    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    iput-boolean v0, p0, Lb50;->t:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lb50;->u:Z

    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget v0, p0, Lb50;->q:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lb50;->b()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lb50;->r:J

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-ltz v0, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    iput v2, p0, Lb50;->q:I

    .line 22
    .line 23
    iput-wide v4, p0, Lb50;->s:J

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lb50;->t:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lb50;->r()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lp92;

    .line 38
    .line 39
    const-string v2, "Negative chunk size"

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
    :try_end_0
    .catch Lp92; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iput v1, p0, Lb50;->q:I

    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance p0, Lp92;

    .line 49
    .line 50
    const-string v0, "Corrupt data stream"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final r()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lb50;->n:Lxj3;

    .line 2
    .line 3
    iget-object p0, p0, Lb50;->p:Lnc2;

    .line 4
    .line 5
    iget v1, p0, Lnc2;->o:I

    .line 6
    .line 7
    iget p0, p0, Lnc2;->n:I

    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lbv;->b:Lbv;

    .line 15
    .line 16
    invoke-static {v0, v1, p0, v3, v2}, Lm1;->c(Lxj3;IILbv;Ljava/util/ArrayList;)[Lgj1;
    :try_end_0
    .catch Lcm1; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lp92;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Invalid footer: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final read()I
    .locals 5

    .line 101
    iget-boolean v0, p0, Lb50;->u:Z

    if-nez v0, :cond_3

    .line 102
    iget-boolean v0, p0, Lb50;->t:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget v0, p0, Lb50;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lb50;->j()V

    .line 105
    iget-boolean v0, p0, Lb50;->t:Z

    if-eqz v0, :cond_1

    :goto_0
    return v1

    .line 106
    :cond_1
    iget-object v0, p0, Lb50;->n:Lxj3;

    invoke-interface {v0}, Lxj3;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 107
    iget-wide v1, p0, Lb50;->s:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lb50;->s:J

    .line 108
    iget-wide v3, p0, Lb50;->r:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    const/4 v1, 0x3

    .line 109
    iput v1, p0, Lb50;->q:I

    :cond_2
    return v0

    .line 110
    :cond_3
    const-string p0, "Attempted read from closed stream."

    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    .line 111
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb50;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lb50;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lb50;->t:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lb50;->q:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lb50;->j()V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lb50;->t:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    return v1

    .line 24
    :cond_1
    int-to-long v2, p3

    .line 25
    iget-wide v4, p0, Lb50;->r:J

    .line 26
    .line 27
    iget-wide v6, p0, Lb50;->s:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    long-to-int p3, v2

    .line 35
    iget-object v0, p0, Lb50;->n:Lxj3;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2, p3}, Lxj3;->read([BII)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eq p1, v1, :cond_3

    .line 42
    .line 43
    iget-wide p2, p0, Lb50;->s:J

    .line 44
    .line 45
    int-to-long v0, p1

    .line 46
    add-long/2addr p2, v0

    .line 47
    iput-wide p2, p0, Lb50;->s:J

    .line 48
    .line 49
    iget-wide v0, p0, Lb50;->r:J

    .line 50
    .line 51
    cmp-long p2, p2, v0

    .line 52
    .line 53
    if-ltz p2, :cond_2

    .line 54
    .line 55
    const/4 p2, 0x3

    .line 56
    iput p2, p0, Lb50;->q:I

    .line 57
    .line 58
    :cond_2
    return p1

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lb50;->t:Z

    .line 61
    .line 62
    new-instance p1, Lx24;

    .line 63
    .line 64
    iget-wide p2, p0, Lb50;->r:J

    .line 65
    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-wide v0, p0, Lb50;->s:J

    .line 71
    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p2, "Truncated chunk (expected size: %,d; actual size: %,d)"

    .line 81
    .line 82
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_4
    const-string p0, "Attempted read from closed stream."

    .line 95
    .line 96
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x0

    .line 100
    return p0
.end method
