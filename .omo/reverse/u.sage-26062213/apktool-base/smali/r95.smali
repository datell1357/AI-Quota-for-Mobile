.class public final Lr95;
.super Lab5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Ly25;

.field public final f:Ly25;

.field public final g:Ly25;

.field public final h:Ly25;

.field public final i:Ly25;

.field public final j:Ly25;


# direct methods
.method public constructor <init>(Lpb5;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lab5;-><init>(Lpb5;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lr95;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance p1, Ly25;

    .line 12
    .line 13
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lr45;

    .line 16
    .line 17
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 18
    .line 19
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "last_delete_stale"

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lr95;->e:Ly25;

    .line 30
    .line 31
    new-instance p1, Ly25;

    .line 32
    .line 33
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lr45;

    .line 36
    .line 37
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 38
    .line 39
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "last_delete_stale_batch"

    .line 43
    .line 44
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lr95;->f:Ly25;

    .line 48
    .line 49
    new-instance p1, Ly25;

    .line 50
    .line 51
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lr45;

    .line 54
    .line 55
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 56
    .line 57
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "backoff"

    .line 61
    .line 62
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lr95;->g:Ly25;

    .line 66
    .line 67
    new-instance p1, Ly25;

    .line 68
    .line 69
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lr45;

    .line 72
    .line 73
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 74
    .line 75
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "last_upload"

    .line 79
    .line 80
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lr95;->h:Ly25;

    .line 84
    .line 85
    new-instance p1, Ly25;

    .line 86
    .line 87
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lr45;

    .line 90
    .line 91
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 92
    .line 93
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "last_upload_attempt"

    .line 97
    .line 98
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lr95;->i:Ly25;

    .line 102
    .line 103
    new-instance p1, Ly25;

    .line 104
    .line 105
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lr45;

    .line 108
    .line 109
    iget-object v0, v0, Lr45;->e:Lf35;

    .line 110
    .line 111
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "midnight_offset"

    .line 115
    .line 116
    invoke-direct {p1, v0, v1, v2, v3}, Ly25;-><init>(Lf35;Ljava/lang/String;J)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lr95;->j:Ly25;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lib0;->v()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lr45;

    .line 9
    .line 10
    iget-object v2, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    iget-object v3, v1, Lr45;->d:Lds4;

    .line 13
    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    iget-object p0, p0, Lr95;->d:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lp95;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-wide v6, v2, Lp95;->c:J

    .line 29
    .line 30
    cmp-long v6, v4, v6

    .line 31
    .line 32
    if-ltz v6, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, v2, Lp95;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean p1, v2, Lp95;->b:Z

    .line 38
    .line 39
    new-instance v0, Landroid/util/Pair;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    :goto_0
    sget-object v6, Le05;->b:Ld05;

    .line 50
    .line 51
    invoke-virtual {v3, p1, v6}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    add-long/2addr v6, v4

    .line 56
    :try_start_0
    iget-object v8, v1, Lr45;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v8}, Lg7;->a(Landroid/content/Context;)Lf7;

    .line 59
    .line 60
    .line 61
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    goto :goto_2

    .line 65
    :catch_1
    const/4 v8, 0x0

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    :try_start_1
    iget-wide v9, v2, Lp95;->c:J

    .line 69
    .line 70
    sget-object v11, Le05;->c:Ld05;

    .line 71
    .line 72
    invoke-virtual {v3, p1, v11}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v11

    .line 76
    add-long/2addr v9, v11

    .line 77
    cmp-long v3, v4, v9

    .line 78
    .line 79
    if-gez v3, :cond_2

    .line 80
    .line 81
    new-instance v3, Landroid/util/Pair;

    .line 82
    .line 83
    iget-object v4, v2, Lp95;->a:Ljava/lang/String;

    .line 84
    .line 85
    iget-boolean v2, v2, Lp95;->b:Z

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_2
    move-object v2, v8

    .line 96
    :goto_1
    if-nez v2, :cond_3

    .line 97
    .line 98
    new-instance v2, Landroid/util/Pair;

    .line 99
    .line 100
    const-string v3, "00000000-0000-0000-0000-000000000000"

    .line 101
    .line 102
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_3
    iget-object v3, v2, Lf7;->c:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    new-instance v4, Lp95;

    .line 113
    .line 114
    iget-boolean v2, v2, Lf7;->b:Z

    .line 115
    .line 116
    invoke-direct {v4, v3, v6, v7, v2}, Lp95;-><init>(Ljava/lang/String;JZ)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    new-instance v4, Lp95;

    .line 121
    .line 122
    iget-boolean v2, v2, Lf7;->b:Z

    .line 123
    .line 124
    invoke-direct {v4, v0, v6, v7, v2}, Lp95;-><init>(Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :goto_2
    iget-object v1, v1, Lr45;->f:La25;

    .line 129
    .line 130
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v1, La25;->m:Lx15;

    .line 134
    .line 135
    const-string v3, "Unable to get advertising id"

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Lp95;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-direct {v4, v0, v6, v7, v1}, Lp95;-><init>(Ljava/lang/String;JZ)V

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {p0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    new-instance p0, Landroid/util/Pair;

    .line 150
    .line 151
    iget-boolean p1, v4, Lp95;->b:Z

    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v0, v4, Lp95;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object p0
.end method

.method public final B(Lvc5;Ly55;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lx55;->o:Lx55;

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ly55;->i(Lx55;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p1, Lvc5;->A:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lib0;->v()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lr95;->A(Ljava/lang/String;)Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lac5;->O()Ljava/security/MessageDigest;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    .line 40
    new-instance v0, Ljava/math/BigInteger;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 52
    .line 53
    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "%032X"

    .line 59
    .line 60
    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    :goto_0
    const-string p0, ""

    .line 66
    .line 67
    return-object p0
.end method

.method public final y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final z(Lvc5;Ly55;)Landroid/util/Pair;
    .locals 2

    .line 1
    iget-object v0, p1, Lvc5;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lx55;->o:Lx55;

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ly55;->i(Lx55;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p1, Lvc5;->A:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lr95;->A(Ljava/lang/String;)Landroid/util/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    new-instance p0, Landroid/util/Pair;

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method
