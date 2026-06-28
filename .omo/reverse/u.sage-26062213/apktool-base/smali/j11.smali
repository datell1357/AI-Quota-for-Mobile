.class public abstract Lj11;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Le34;

.field public static final b:Lyq3;

.field public static final c:Lyq3;

.field public static final d:Lyq3;

.field public static final e:Lyq3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ll9;->H:Ll9;

    .line 2
    .line 3
    sget-object v1, Ll9;->I:Ll9;

    .line 4
    .line 5
    new-instance v2, Le34;

    .line 6
    .line 7
    invoke-direct {v2, v0, v1}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 8
    .line 9
    .line 10
    sput-object v2, Lj11;->a:Le34;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/high16 v1, 0x43c80000    # 400.0f

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x5

    .line 17
    invoke-static {v0, v1, v2, v3}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sput-object v4, Lj11;->b:Lyq3;

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sput-object v2, Lj11;->c:Lyq3;

    .line 28
    .line 29
    sget-object v2, Lic4;->a:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v2, Ljs1;

    .line 32
    .line 33
    const-wide v3, 0x100000001L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v4}, Ljs1;-><init>(J)V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-static {v0, v1, v2, v5}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lj11;->d:Lyq3;

    .line 47
    .line 48
    new-instance v2, Lrs1;

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Lrs1;-><init>(J)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2, v5}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lj11;->e:Lyq3;

    .line 58
    .line 59
    return-void
.end method

.method public static final a(Ln14;Lne1;Lag1;I)V
    .locals 8

    .line 1
    const v0, -0x46bdf1a6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v2, 0x12

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eq v1, v2, :cond_2

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v1, v4

    .line 40
    :goto_2
    and-int/2addr v0, v3

    .line 41
    invoke-virtual {p2, v0, v1}, Lag1;->N(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_9

    .line 46
    .line 47
    iget-object v0, p0, Ln14;->e:Lws2;

    .line 48
    .line 49
    iget-object v1, p0, Ln14;->d:Lws2;

    .line 50
    .line 51
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move v0, v3

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v0, v4

    .line 60
    :goto_3
    iget-object v2, p0, Ln14;->a:Lib0;

    .line 61
    .line 62
    invoke-virtual {v2}, Lib0;->l()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v2, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v5, Lrb0;->a:Lbx3;

    .line 86
    .line 87
    if-ne v2, v5, :cond_5

    .line 88
    .line 89
    new-array v2, v3, [Z

    .line 90
    .line 91
    aput-boolean v0, v2, v4

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    check-cast v2, [Z

    .line 97
    .line 98
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-ne v6, v5, :cond_6

    .line 103
    .line 104
    new-array v6, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {p2, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    check-cast v6, [Ljava/lang/Object;

    .line 110
    .line 111
    aget-object v5, v6, v4

    .line 112
    .line 113
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v5, v7}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_8

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    aget-boolean v5, v2, v4

    .line 126
    .line 127
    if-nez v5, :cond_7

    .line 128
    .line 129
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    aput-object v1, v6, v4

    .line 137
    .line 138
    :cond_8
    aput-boolean v0, v2, v4

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    invoke-virtual {p2}, Lag1;->Q()V

    .line 142
    .line 143
    .line 144
    :goto_4
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    new-instance v0, Lga;

    .line 151
    .line 152
    invoke-direct {v0, p0, p1, p3, v3}, Lga;-><init>(Ljava/lang/Object;Lef1;II)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 156
    .line 157
    :cond_a
    return-void
.end method

.method public static b(Lyq3;Law;I)Lo11;
    .locals 8

    .line 1
    sget-object v0, Lmj1;->B:Law;

    .line 2
    .line 3
    and-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lic4;->a:Ljava/util/Map;

    .line 9
    .line 10
    new-instance p0, Lrs1;

    .line 11
    .line 12
    const-wide v3, 0x100000001L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, v4}, Lrs1;-><init>(J)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/high16 v3, 0x43c80000    # 400.0f

    .line 22
    .line 23
    invoke-static {v1, v3, p0, v2}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-object p1, v0

    .line 32
    :cond_1
    sget-object p2, Lmj1;->z:Law;

    .line 33
    .line 34
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    sget-object p1, Lmj1;->r:Lcw;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lmj1;->t:Lcw;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget-object p1, Lmj1;->s:Lcw;

    .line 53
    .line 54
    :goto_0
    new-instance p2, Ldo2;

    .line 55
    .line 56
    const/16 v0, 0xe

    .line 57
    .line 58
    invoke-direct {p2, v2, v0}, Ldo2;-><init>(II)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lo11;

    .line 62
    .line 63
    new-instance v1, Lo14;

    .line 64
    .line 65
    new-instance v4, Ll30;

    .line 66
    .line 67
    invoke-direct {v4, p1, p2, p0}, Ll30;-><init>(Lcw;Lpe1;Lz51;)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const/16 v7, 0x7b

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lo11;-><init>(Lo14;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static c(Lz51;I)Lo11;
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p0, 0x43c80000    # 400.0f

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p1}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    new-instance p1, Lo11;

    .line 15
    .line 16
    new-instance v0, Lo14;

    .line 17
    .line 18
    new-instance v1, Lk41;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lk41;-><init>(Lz51;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/16 v6, 0x7e

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct/range {v0 .. v6}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lo11;-><init>(Lo14;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public static d(Lz51;I)Ly31;
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p0, 0x43c80000    # 400.0f

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p1}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    new-instance p1, Ly31;

    .line 15
    .line 16
    new-instance v0, Lo14;

    .line 17
    .line 18
    new-instance v1, Lk41;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lk41;-><init>(Lz51;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/16 v6, 0x7e

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct/range {v0 .. v6}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Ly31;-><init>(Lo14;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public static e(Lyq3;Law;I)Ly31;
    .locals 8

    .line 1
    sget-object v0, Lmj1;->B:Law;

    .line 2
    .line 3
    and-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object p0, Lic4;->a:Ljava/util/Map;

    .line 9
    .line 10
    new-instance p0, Lrs1;

    .line 11
    .line 12
    const-wide v3, 0x100000001L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, v4}, Lrs1;-><init>(J)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/high16 v3, 0x43c80000    # 400.0f

    .line 22
    .line 23
    invoke-static {v1, v3, p0, v2}, Ltv4;->Q(FFLjava/lang/Object;I)Lyq3;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move-object p1, v0

    .line 32
    :cond_1
    sget-object p2, Lmj1;->z:Law;

    .line 33
    .line 34
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    sget-object p1, Lmj1;->r:Lcw;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lmj1;->t:Lcw;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget-object p1, Lmj1;->s:Lcw;

    .line 53
    .line 54
    :goto_0
    new-instance p2, Ldo2;

    .line 55
    .line 56
    const/16 v0, 0xf

    .line 57
    .line 58
    invoke-direct {p2, v2, v0}, Ldo2;-><init>(II)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ly31;

    .line 62
    .line 63
    new-instance v1, Lo14;

    .line 64
    .line 65
    new-instance v4, Ll30;

    .line 66
    .line 67
    invoke-direct {v4, p1, p2, p0}, Ll30;-><init>(Lcw;Lpe1;Lz51;)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const/16 v7, 0x7b

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-direct/range {v1 .. v7}, Lo14;-><init>(Lk41;Lsn3;Ll30;Lgg4;Ljava/util/LinkedHashMap;I)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Ly31;-><init>(Lo14;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method
