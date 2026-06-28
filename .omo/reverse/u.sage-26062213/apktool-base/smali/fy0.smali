.class public final Lfy0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final a:Lfy0;

.field public static final b:Lpy2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfy0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfy0;->a:Lfy0;

    .line 7
    .line 8
    new-instance v0, Lpy2;

    .line 9
    .line 10
    const-string v1, "kotlin.time.Duration"

    .line 11
    .line 12
    sget-object v2, Lny2;->X:Lny2;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lpy2;-><init>(Ljava/lang/String;Lny2;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lfy0;->b:Lpy2;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p0, Lcy0;->o:Lbx3;

    .line 2
    .line 3
    invoke-interface {p1}, Lvn0;->x()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Lc75;->N(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-wide v2, Lcy0;->r:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p0, Lcy0;

    .line 26
    .line 27
    invoke-direct {p0, v0, v1}, Lcy0;-><init>(J)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    :try_start_1
    const-string p1, "invariant failed"

    .line 32
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "Invalid ISO duration string format: \'"

    .line 43
    .line 44
    const-string v2, "\'."

    .line 45
    .line 46
    invoke-static {v1, p0, v2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p2, Lcy0;

    .line 2
    .line 3
    iget-wide v0, p2, Lcy0;->n:J

    .line 4
    .line 5
    sget-object p0, Lcy0;->o:Lbx3;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long p0, v0, v3

    .line 15
    .line 16
    if-gez p0, :cond_0

    .line 17
    .line 18
    const/16 p2, 0x2d

    .line 19
    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string p2, "PT"

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    if-gez p0, :cond_1

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcy0;->i(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-wide v5, v0

    .line 36
    :goto_0
    sget-object p0, Lgy0;->s:Lgy0;

    .line 37
    .line 38
    invoke-static {v5, v6, p0}, Lcy0;->h(JLgy0;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    invoke-static {v5, v6}, Lcy0;->f(J)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const-wide/16 v9, 0x3c

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    move p0, p2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object p0, Lgy0;->r:Lgy0;

    .line 54
    .line 55
    invoke-static {v5, v6, p0}, Lcy0;->h(JLgy0;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    rem-long/2addr v11, v9

    .line 60
    long-to-int p0, v11

    .line 61
    :goto_1
    invoke-static {v5, v6}, Lcy0;->f(J)Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_3

    .line 66
    .line 67
    move v9, p2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    sget-object v11, Lgy0;->q:Lgy0;

    .line 70
    .line 71
    invoke-static {v5, v6, v11}, Lcy0;->h(JLgy0;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    rem-long/2addr v11, v9

    .line 76
    long-to-int v9, v11

    .line 77
    :goto_2
    invoke-static {v5, v6}, Lcy0;->e(J)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v0, v1}, Lcy0;->f(J)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    const-wide v7, 0x9184e729fffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :cond_4
    cmp-long v0, v7, v3

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    move v0, v1

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move v0, p2

    .line 100
    :goto_3
    if-nez v9, :cond_7

    .line 101
    .line 102
    if-eqz v5, :cond_6

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    move v3, p2

    .line 106
    goto :goto_5

    .line 107
    :cond_7
    :goto_4
    move v3, v1

    .line 108
    :goto_5
    if-nez p0, :cond_8

    .line 109
    .line 110
    if-eqz v3, :cond_9

    .line 111
    .line 112
    if-eqz v0, :cond_9

    .line 113
    .line 114
    :cond_8
    move p2, v1

    .line 115
    :cond_9
    if-eqz v0, :cond_a

    .line 116
    .line 117
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x48

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_a
    if-eqz p2, :cond_b

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 p0, 0x4d

    .line 131
    .line 132
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_b
    if-nez v3, :cond_c

    .line 136
    .line 137
    if-nez v0, :cond_d

    .line 138
    .line 139
    if-nez p2, :cond_d

    .line 140
    .line 141
    :cond_c
    const-string v6, "S"

    .line 142
    .line 143
    const/4 v7, 0x1

    .line 144
    move v4, v5

    .line 145
    const/16 v5, 0x9

    .line 146
    .line 147
    move v3, v9

    .line 148
    invoke-static/range {v2 .. v7}, Lcy0;->b(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lfy0;->b:Lpy2;

    .line 2
    .line 3
    return-object p0
.end method
