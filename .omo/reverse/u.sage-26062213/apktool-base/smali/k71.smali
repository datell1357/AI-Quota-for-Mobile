.class public final Lk71;
.super Lbc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:J

.field public final p:Z

.field public q:J


# direct methods
.method public constructor <init>(Lyp3;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbc1;-><init>(Lyp3;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lk71;->o:J

    .line 5
    .line 6
    iput-boolean p4, p0, Lk71;->p:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l(JLsy;)J
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lk71;->q:J

    .line 5
    .line 6
    iget-wide v2, p0, Lk71;->o:J

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    const-wide/16 v5, -0x1

    .line 11
    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    move-wide p1, v7

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v4, p0, Lk71;->p:Z

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    sub-long v0, v2, v0

    .line 23
    .line 24
    cmp-long v4, v0, v7

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    return-wide v5

    .line 29
    :cond_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    :cond_2
    :goto_0
    iget-object v0, p0, Lbc1;->n:Lyp3;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3}, Lyp3;->l(JLsy;)J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    cmp-long v0, p1, v5

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-wide v4, p0, Lk71;->q:J

    .line 44
    .line 45
    add-long/2addr v4, p1

    .line 46
    iput-wide v4, p0, Lk71;->q:J

    .line 47
    .line 48
    :cond_3
    iget-wide v4, p0, Lk71;->q:J

    .line 49
    .line 50
    cmp-long v1, v4, v2

    .line 51
    .line 52
    if-gez v1, :cond_4

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    :cond_4
    if-lez v1, :cond_7

    .line 57
    .line 58
    :cond_5
    cmp-long p1, p1, v7

    .line 59
    .line 60
    if-lez p1, :cond_6

    .line 61
    .line 62
    if-lez v1, :cond_6

    .line 63
    .line 64
    iget-wide p1, p3, Lsy;->o:J

    .line 65
    .line 66
    sub-long/2addr v4, v2

    .line 67
    sub-long/2addr p1, v4

    .line 68
    new-instance v0, Lsy;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p3}, Lsy;->n0(Lyp3;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1, p2, v0}, Lsy;->J(JLsy;)V

    .line 77
    .line 78
    .line 79
    iget-wide p1, v0, Lsy;->o:J

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2}, Lsy;->skip(J)V

    .line 82
    .line 83
    .line 84
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 85
    .line 86
    iget-wide p2, p0, Lk71;->q:J

    .line 87
    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "expected "

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " bytes but got "

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_7
    return-wide p1
.end method
