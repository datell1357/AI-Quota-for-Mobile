.class public final Lx23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lia4;


# instance fields
.field public n:J

.field public o:J

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lia5;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx23;->q:Ljava/lang/Object;

    new-instance v0, Lea5;

    iget-object p1, p1, Lib0;->a:Ljava/lang/Object;

    check-cast p1, Lr45;

    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, p1, v1}, Lea5;-><init>(Ljava/lang/Object;Ls55;I)V

    iput-object v0, p0, Lx23;->p:Ljava/lang/Object;

    .line 35
    iget-object p1, p1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lx23;->n:J

    iput-wide v0, p0, Lx23;->o:J

    return-void
.end method

.method public constructor <init>(Lka4;Ld63;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lx23;->p:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lx23;->q:Ljava/lang/Object;

    .line 40
    invoke-interface {p1}, Lka4;->k()I

    move-result p2

    invoke-interface {p1}, Lka4;->o()I

    move-result p1

    add-int/2addr p1, p2

    int-to-long p1, p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lx23;->n:J

    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Lx23;->o:J

    return-void
.end method

.method public constructor <init>(Lt82;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx23;->q:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/high16 v1, 0x3f400000    # 0.75f

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lx23;->p:Ljava/lang/Object;

    .line 16
    .line 17
    iput-wide p2, p0, Lx23;->n:J

    .line 18
    .line 19
    const-wide/16 p0, 0x0

    .line 20
    .line 21
    cmp-long p0, p2, p0

    .line 22
    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "maxSize <= 0"

    .line 27
    .line 28
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Lw23;)V
    .locals 6

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Lqb2;

    .line 3
    .line 4
    check-cast p2, Lw23;

    .line 5
    .line 6
    iget-object p0, p0, Lx23;->q:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lt82;

    .line 9
    .line 10
    iget-object p0, p0, Lt82;->b:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Ld90;

    .line 14
    .line 15
    iget-object v2, p2, Lw23;->a:Lao1;

    .line 16
    .line 17
    iget-object v3, p2, Lw23;->b:Ljava/util/Map;

    .line 18
    .line 19
    iget-wide v4, p2, Lw23;->c:J

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Ld90;->p(Lqb2;Lao1;Ljava/util/Map;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public c(Lbf;Lbf;Lbf;)J
    .locals 0

    .line 1
    const-wide p0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide p0
.end method

.method public d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lx23;->o:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lx23;->p:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p0, v4, v3}, Lx23;->g(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    add-long/2addr v1, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-wide v1, p0, Lx23;->o:J

    .line 52
    .line 53
    :cond_1
    iget-wide v0, p0, Lx23;->o:J

    .line 54
    .line 55
    return-wide v0
.end method

.method public e(J)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lx23;->o:J

    .line 2
    .line 3
    add-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    return-wide v4

    .line 12
    :cond_0
    add-long/2addr p1, v0

    .line 13
    iget-wide v0, p0, Lx23;->n:J

    .line 14
    .line 15
    div-long v2, p1, v0

    .line 16
    .line 17
    iget-object p0, p0, Lx23;->q:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ld63;

    .line 20
    .line 21
    sget-object v6, Ld63;->n:Ld63;

    .line 22
    .line 23
    if-eq p0, v6, :cond_2

    .line 24
    .line 25
    const-wide/16 v6, 0x2

    .line 26
    .line 27
    rem-long v6, v2, v6

    .line 28
    .line 29
    cmp-long p0, v6, v4

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    mul-long/2addr v2, v0

    .line 38
    sub-long/2addr v2, p1

    .line 39
    return-wide v2

    .line 40
    :cond_2
    :goto_0
    mul-long/2addr v2, v0

    .line 41
    sub-long/2addr p1, v2

    .line 42
    return-wide p1
.end method

.method public f(JLbf;Lbf;Lbf;)Lbf;
    .locals 10

    .line 1
    iget-wide v0, p0, Lx23;->o:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-wide v2, p0, Lx23;->n:J

    .line 5
    .line 6
    cmp-long p1, p1, v2

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lx23;->p:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v4, p0

    .line 13
    check-cast v4, Lka4;

    .line 14
    .line 15
    sub-long v5, v2, v0

    .line 16
    .line 17
    move-object v7, p3

    .line 18
    move-object v9, p4

    .line 19
    move-object v8, p5

    .line 20
    invoke-interface/range {v4 .. v9}, Lia4;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    move-object v9, p4

    .line 26
    return-object v9
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 5

    .line 1
    const-string v0, "sizeOf("

    .line 2
    .line 3
    :try_start_0
    move-object v1, p1

    .line 4
    check-cast v1, Lqb2;

    .line 5
    .line 6
    move-object v1, p2

    .line 7
    check-cast v1, Lw23;

    .line 8
    .line 9
    iget-wide v1, v1, Lw23;->c:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, v1, v3

    .line 14
    .line 15
    if-ltz v3, :cond_0

    .line 16
    .line 17
    return-wide v1

    .line 18
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", "

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ") returned a negative value: "

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const-wide/16 v0, -0x1

    .line 58
    .line 59
    iput-wide v0, p0, Lx23;->o:J

    .line 60
    .line 61
    throw p1
.end method

.method public h(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lx23;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Lx23;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    cmp-long v1, v1, p1

    .line 10
    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lx23;->d()J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long p0, p0, v0

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string p0, "sizeOf() is returning inconsistent values"

    .line 31
    .line 32
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-static {v1}, Lo70;->g0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lx23;->d()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-virtual {p0, v2, v1}, Lx23;->g(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    sub-long/2addr v3, v5

    .line 68
    iput-wide v3, p0, Lx23;->o:J

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, v2, v1, v3}, Lx23;->b(Ljava/lang/Object;Ljava/lang/Object;Lw23;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public i(ZZJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lx23;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lia5;

    .line 4
    .line 5
    invoke-virtual {v0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lj05;->w()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lr45;

    .line 14
    .line 15
    invoke-virtual {v0}, Lr45;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lr45;->f:La25;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 24
    .line 25
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lf35;->p:Ly25;

    .line 29
    .line 30
    iget-object v3, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 31
    .line 32
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v1, v3, v4}, Ly25;->b(J)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-wide v3, p0, Lx23;->n:J

    .line 40
    .line 41
    sub-long v3, p3, v3

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    cmp-long p1, v3, v5

    .line 48
    .line 49
    if-ltz p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v2, La25;->n:Lx15;

    .line 56
    .line 57
    const-string p1, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 58
    .line 59
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, p2, p1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 69
    .line 70
    iget-wide v3, p0, Lx23;->o:J

    .line 71
    .line 72
    sub-long v3, p3, v3

    .line 73
    .line 74
    iput-wide p3, p0, Lx23;->o:J

    .line 75
    .line 76
    :cond_3
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v2, La25;->n:Lx15;

    .line 80
    .line 81
    const-string v1, "Recording user engagement, ms"

    .line 82
    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "_et"

    .line 96
    .line 97
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 101
    .line 102
    invoke-virtual {v1}, Lds4;->K()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x1

    .line 107
    xor-int/2addr v1, v2

    .line 108
    iget-object v3, v0, Lr45;->l:Lf85;

    .line 109
    .line 110
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Lf85;->z(Z)Lw75;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1, p1, v2}, Lac5;->q0(Lw75;Landroid/os/Bundle;Z)V

    .line 118
    .line 119
    .line 120
    if-nez p2, :cond_4

    .line 121
    .line 122
    iget-object p2, v0, Lr45;->m:Lm75;

    .line 123
    .line 124
    invoke-static {p2}, Lr45;->k(Lj05;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "auto"

    .line 128
    .line 129
    const-string v1, "_e"

    .line 130
    .line 131
    invoke-virtual {p2, v0, v1, p1}, Lm75;->C(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    iput-wide p3, p0, Lx23;->n:J

    .line 135
    .line 136
    iget-object p0, p0, Lx23;->p:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lea5;

    .line 139
    .line 140
    invoke-virtual {p0}, Let4;->c()V

    .line 141
    .line 142
    .line 143
    sget-object p1, Le05;->p0:Ld05;

    .line 144
    .line 145
    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Long;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide p1

    .line 156
    invoke-virtual {p0, p1, p2}, Let4;->b(J)V

    .line 157
    .line 158
    .line 159
    return v2
.end method

.method public m(JLbf;Lbf;Lbf;)Lbf;
    .locals 7

    .line 1
    iget-object v0, p0, Lx23;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka4;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-virtual {p0, v2, v3}, Lx23;->e(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p3

    .line 12
    move-object v6, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lx23;->f(JLbf;Lbf;Lbf;)Lbf;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    move-object p0, v0

    .line 19
    invoke-interface/range {p0 .. p5}, Lia4;->m(JLbf;Lbf;Lbf;)Lbf;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public p(JLbf;Lbf;Lbf;)Lbf;
    .locals 7

    .line 1
    iget-object v0, p0, Lx23;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka4;

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-virtual {p0, v2, v3}, Lx23;->e(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p3

    .line 12
    move-object v6, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lx23;->f(JLbf;Lbf;Lbf;)Lbf;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    move-object p0, v0

    .line 19
    invoke-interface/range {p0 .. p5}, Lia4;->p(JLbf;Lbf;Lbf;)Lbf;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
