.class public final Lda3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lin0;

.field public final d:Ldz0;

.field public final e:Ljava/util/List;

.field public final f:Lce0;

.field public g:Lee1;


# direct methods
.method public constructor <init>(Lin0;Ldz0;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lin0;->g:Lfa3;

    .line 2
    .line 3
    iget-object v1, p1, Lin0;->c:Llu3;

    .line 4
    .line 5
    iget-object v4, p1, Lin0;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lda3;->c:Lin0;

    .line 11
    .line 12
    iput-object p2, p0, Lda3;->d:Ldz0;

    .line 13
    .line 14
    iget-object v2, p1, Lin0;->e:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lg01;->n:Lg01;

    .line 19
    .line 20
    :cond_0
    iput-object v2, p0, Lda3;->e:Ljava/util/List;

    .line 21
    .line 22
    iget-object v2, p1, Lin0;->p:Lkb3;

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v3, p1, Lin0;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v5, Ld90;

    .line 35
    .line 36
    iget p1, p2, Ldz0;->a:I

    .line 37
    .line 38
    invoke-direct {v5, p0, p1}, Ld90;-><init>(Lda3;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lpv1;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-direct/range {v2 .. v7}, Lpv1;-><init>(Landroid/content/Context;Ljava/lang/String;Ld90;ZZ)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lku3;

    .line 49
    .line 50
    new-instance p2, Ldd1;

    .line 51
    .line 52
    invoke-interface {v1, v2}, Llu3;->p(Lpv1;)Lmu3;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {p2, v1}, Ldd1;-><init>(Lmu3;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Lku3;-><init>(Ldd1;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lda3;->f:Lce0;

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    const-string p0, "SQLiteManager was constructed with both null driver and open helper factory!"

    .line 67
    .line 68
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0

    .line 73
    :cond_2
    if-nez v4, :cond_3

    .line 74
    .line 75
    new-instance p1, Lgw4;

    .line 76
    .line 77
    invoke-direct {p1, p0, v2}, Lgw4;-><init>(Lda3;Lkb3;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Lfe0;

    .line 81
    .line 82
    invoke-direct {p2, p1}, Lfe0;-><init>(Lgw4;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    new-instance p1, Lgw4;

    .line 87
    .line 88
    invoke-direct {p1, p0, v2}, Lgw4;-><init>(Lda3;Lkb3;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    const/16 v1, 0x27

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    if-eq p2, v8, :cond_5

    .line 99
    .line 100
    if-ne p2, v2, :cond_4

    .line 101
    .line 102
    const/4 p2, 0x4

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p2, "Can\'t get max number of reader for journal mode \'"

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_5
    move p2, v8

    .line 132
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eq v3, v8, :cond_7

    .line 137
    .line 138
    if-ne v3, v2, :cond_6

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string p2, "Can\'t get max number of writers for journal mode \'"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_7
    :goto_1
    new-instance v1, Lfe0;

    .line 169
    .line 170
    invoke-direct {v1, p1, v4, p2}, Lfe0;-><init>(Lgw4;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    move-object p2, v1

    .line 174
    :goto_2
    iput-object p2, p0, Lda3;->f:Lce0;

    .line 175
    .line 176
    :goto_3
    sget-object p1, Lfa3;->p:Lfa3;

    .line 177
    .line 178
    if-ne v0, p1, :cond_8

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    const/4 v8, 0x0

    .line 182
    :goto_4
    invoke-virtual {p0}, Lda3;->c()Lmu3;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    if-eqz p0, :cond_9

    .line 187
    .line 188
    invoke-interface {p0, v8}, Lmu3;->setWriteAheadLoggingEnabled(Z)V

    .line 189
    .line 190
    .line 191
    :cond_9
    return-void
.end method

.method public constructor <init>(Lin0;Lz82;)V
    .locals 3

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lda3;->c:Lin0;

    .line 194
    new-instance p2, Lca3;

    const/4 v0, -0x1

    .line 195
    const-string v1, ""

    invoke-direct {p2, v1, v0, v1}, Ldz0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    iput-object p2, p0, Lda3;->d:Ldz0;

    .line 197
    iget-object p2, p1, Lin0;->e:Ljava/util/List;

    sget-object v0, Lg01;->n:Lg01;

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Lda3;->e:Ljava/util/List;

    .line 198
    new-instance v1, Lv;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p0}, Lv;-><init>(ILjava/lang/Object;)V

    if-nez p2, :cond_1

    move-object p2, v0

    .line 199
    :cond_1
    new-instance p0, Lz50;

    invoke-direct {p0, v1}, Lz50;-><init>(Lv;)V

    .line 200
    invoke-static {p2, p0}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 201
    iget-object p0, p1, Lin0;->a:Landroid/content/Context;

    .line 202
    iget-object p2, p1, Lin0;->d:Lvq1;

    .line 203
    iget-object v0, p1, Lin0;->h:Ljava/util/concurrent/Executor;

    .line 204
    iget-object v1, p1, Lin0;->i:Ljava/util/concurrent/Executor;

    .line 205
    iget-object v2, p1, Lin0;->m:Ljava/util/List;

    .line 206
    iget-object p1, p1, Lin0;->n:Ljava/util/List;

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    new-instance p0, Lan2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lan2;-><init>(I)V

    throw p0
.end method

.method public static final a(Lda3;Ljb3;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lda3;->d:Ldz0;

    .line 2
    .line 3
    const-string v1, "PRAGMA user_version = "

    .line 4
    .line 5
    iget-object v2, p0, Lda3;->c:Lin0;

    .line 6
    .line 7
    iget-object v3, v2, Lin0;->g:Lfa3;

    .line 8
    .line 9
    sget-object v4, Lfa3;->p:Lfa3;

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    const-string v3, "PRAGMA journal_mode = WAL"

    .line 14
    .line 15
    invoke-static {p1, v3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v3, "PRAGMA journal_mode = TRUNCATE"

    .line 20
    .line 21
    invoke-static {p1, v3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v2, v2, Lin0;->g:Lfa3;

    .line 25
    .line 26
    if-ne v2, v4, :cond_1

    .line 27
    .line 28
    const-string v2, "PRAGMA synchronous = NORMAL"

    .line 29
    .line 30
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v2, "PRAGMA synchronous = FULL"

    .line 35
    .line 36
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-static {p1}, Lda3;->b(Ljb3;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "PRAGMA user_version"

    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :try_start_0
    invoke-interface {v2}, Lpb3;->c0()Z

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-interface {v2, v3}, Lpb3;->getLong(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    long-to-int v3, v3

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static {v2, v4}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    iget v0, v0, Ldz0;->a:I

    .line 62
    .line 63
    if-eq v3, v0, :cond_5

    .line 64
    .line 65
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 66
    .line 67
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {p0, p1}, Lda3;->d(Ljb3;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Lda3;->e(Ljb3;II)V

    .line 79
    .line 80
    .line 81
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lt64;->a:Lt64;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :goto_3
    new-instance v1, Lf83;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    move-object v0, v1

    .line 105
    :goto_4
    nop

    .line 106
    instance-of v1, v0, Lf83;

    .line 107
    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    move-object v1, v0

    .line 111
    check-cast v1, Lt64;

    .line 112
    .line 113
    const-string v1, "END TRANSACTION"

    .line 114
    .line 115
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v0}, Lg83;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    .line 126
    .line 127
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, Lda3;->f(Ljb3;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 137
    :catchall_2
    move-exception p1

    .line 138
    invoke-static {v2, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public static b(Ljb3;)V
    .locals 5

    .line 1
    const-string v0, "PRAGMA busy_timeout"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Lpb3;->c0()Z

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lpb3;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0xbb8

    .line 20
    .line 21
    cmp-long v0, v1, v3

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "PRAGMA busy_timeout = 3000"

    .line 26
    .line 27
    invoke-static {p0, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    invoke-static {v0, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method


# virtual methods
.method public final c()Lmu3;
    .locals 2

    .line 1
    iget-object p0, p0, Lda3;->f:Lce0;

    .line 2
    .line 3
    instance-of v0, p0, Lku3;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lku3;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p0, v1

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lku3;->n:Ldd1;

    .line 15
    .line 16
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lmu3;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object v1
.end method

.method public final d(Ljb3;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-interface {v0}, Lpb3;->c0()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v2}, Lpb3;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lda3;->d:Ldz0;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ldz0;->a(Ljb3;)V

    .line 38
    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ldz0;->g(Ljb3;)Lf7;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-boolean v2, v1, Lf7;->b:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    iget-object p1, v1, Lf7;->c:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lda3;->g(Ljb3;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ldz0;->c(Ljb3;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lda3;->e:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lz50;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    instance-of v0, p1, Lju3;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    move-object v0, p1

    .line 109
    check-cast v0, Lju3;

    .line 110
    .line 111
    iget-object v0, v0, Lju3;->n:Lee1;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    return-void

    .line 118
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    invoke-static {v0, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method public final e(Ljb3;II)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lda3;->c:Lin0;

    .line 5
    .line 6
    iget-object v1, v0, Lin0;->d:Lvq1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    sget-object v1, Lg01;->n:Lg01;

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    if-le p3, p2, :cond_1

    .line 21
    .line 22
    move v5, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v5, v3

    .line 25
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    move v7, p2

    .line 31
    :cond_2
    if-eqz v5, :cond_3

    .line 32
    .line 33
    if-ge v7, p3, :cond_b

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    if-le v7, p3, :cond_b

    .line 37
    .line 38
    :goto_1
    iget-object v8, v1, Lvq1;->a:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    if-eqz v5, :cond_5

    .line 41
    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/util/TreeMap;

    .line 51
    .line 52
    if-nez v8, :cond_4

    .line 53
    .line 54
    :goto_2
    move-object v10, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {v8}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    new-instance v10, Ljs2;

    .line 61
    .line 62
    invoke-direct {v10, v8, v9}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Ljava/util/TreeMap;

    .line 75
    .line 76
    if-nez v8, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    invoke-virtual {v8}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    new-instance v10, Ljs2;

    .line 84
    .line 85
    invoke-direct {v10, v8, v9}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_3
    if-nez v10, :cond_7

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_7
    iget-object v8, v10, Ljs2;->n:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v8, Ljava/util/Map;

    .line 94
    .line 95
    iget-object v9, v10, Ljs2;->o:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Ljava/lang/Iterable;

    .line 98
    .line 99
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_a

    .line 108
    .line 109
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    check-cast v10, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v5, :cond_9

    .line 120
    .line 121
    add-int/lit8 v11, v7, 0x1

    .line 122
    .line 123
    if-gt v11, v10, :cond_8

    .line 124
    .line 125
    if-gt v10, p3, :cond_8

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_9
    if-gt p3, v10, :cond_8

    .line 129
    .line 130
    if-ge v10, v7, :cond_8

    .line 131
    .line 132
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move v8, v4

    .line 147
    move v7, v10

    .line 148
    goto :goto_5

    .line 149
    :cond_a
    move v8, v3

    .line 150
    :goto_5
    if-nez v8, :cond_2

    .line 151
    .line 152
    :goto_6
    move-object v1, v2

    .line 153
    goto :goto_7

    .line 154
    :cond_b
    move-object v1, v6

    .line 155
    :goto_7
    iget-object v5, p0, Lda3;->d:Ldz0;

    .line 156
    .line 157
    if-eqz v1, :cond_e

    .line 158
    .line 159
    invoke-virtual {v5, p1}, Ldz0;->f(Ljb3;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_c

    .line 171
    .line 172
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Lad2;

    .line 177
    .line 178
    invoke-virtual {p3, p1}, Lad2;->b(Ljb3;)V

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_c
    invoke-virtual {v5, p1}, Ldz0;->g(Ljb3;)Lf7;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget-boolean p3, p2, Lf7;->b:Z

    .line 187
    .line 188
    if-eqz p3, :cond_d

    .line 189
    .line 190
    invoke-virtual {v5, p1}, Ldz0;->e(Ljb3;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lda3;->g(Ljb3;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    iget-object p1, p2, Lf7;->c:Ljava/lang/String;

    .line 200
    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string p3, "Migration didn\'t properly handle: "

    .line 204
    .line 205
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p0

    .line 223
    :cond_e
    invoke-static {v0, p2, p3}, Lkt4;->S(Lin0;II)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_17

    .line 228
    .line 229
    iget-boolean p2, v0, Lin0;->o:Z

    .line 230
    .line 231
    if-eqz p2, :cond_13

    .line 232
    .line 233
    const-string p2, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    .line 234
    .line 235
    invoke-interface {p1, p2}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    :try_start_0
    invoke-static {}, Ltv4;->p()La42;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    :cond_f
    :goto_9
    invoke-interface {p2}, Lpb3;->c0()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_11

    .line 248
    .line 249
    invoke-interface {p2, v3}, Lpb3;->o(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const-string v1, "sqlite_"

    .line 254
    .line 255
    invoke-static {v0, v1, v3}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_f

    .line 260
    .line 261
    const-string v1, "android_metadata"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_10
    invoke-interface {p2, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    const-string v6, "view"

    .line 275
    .line 276
    invoke-static {v1, v6}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    new-instance v6, Ljs2;

    .line 285
    .line 286
    invoke-direct {v6, v0, v1}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, v6}, La42;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_9

    .line 293
    :catchall_0
    move-exception p0

    .line 294
    goto :goto_b

    .line 295
    :cond_11
    invoke-static {p3}, Ltv4;->l(La42;)La42;

    .line 296
    .line 297
    .line 298
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-static {p2, v2}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3, v3}, La42;->listIterator(I)Ljava/util/ListIterator;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    :goto_a
    move-object p3, p2

    .line 307
    check-cast p3, Lxj1;

    .line 308
    .line 309
    invoke-virtual {p3}, Lxj1;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_14

    .line 314
    .line 315
    invoke-virtual {p3}, Lxj1;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p3

    .line 319
    check-cast p3, Ljs2;

    .line 320
    .line 321
    iget-object v0, p3, Ljs2;->n:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Ljava/lang/String;

    .line 324
    .line 325
    iget-object p3, p3, Ljs2;->o:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p3, Ljava/lang/Boolean;

    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    .line 331
    .line 332
    move-result p3

    .line 333
    if-eqz p3, :cond_12

    .line 334
    .line 335
    new-instance p3, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v1, "DROP VIEW IF EXISTS "

    .line 338
    .line 339
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    invoke-static {p1, p3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v1, "DROP TABLE IF EXISTS "

    .line 356
    .line 357
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p3

    .line 367
    invoke-static {p1, p3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_a

    .line 371
    :goto_b
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    :catchall_1
    move-exception p1

    .line 373
    invoke-static {p2, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    throw p1

    .line 377
    :cond_13
    invoke-virtual {v5, p1}, Ldz0;->b(Ljb3;)V

    .line 378
    .line 379
    .line 380
    :cond_14
    iget-object p0, p0, Lda3;->e:Ljava/util/List;

    .line 381
    .line 382
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    :cond_15
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    if-eqz p2, :cond_16

    .line 391
    .line 392
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    check-cast p2, Lz50;

    .line 397
    .line 398
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    instance-of p2, p1, Lju3;

    .line 402
    .line 403
    if-eqz p2, :cond_15

    .line 404
    .line 405
    move-object p2, p1

    .line 406
    check-cast p2, Lju3;

    .line 407
    .line 408
    iget-object p2, p2, Lju3;->n:Lee1;

    .line 409
    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_16
    invoke-virtual {v5, p1}, Ldz0;->a(Ljb3;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 419
    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string v0, "A migration from "

    .line 423
    .line 424
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p2, " to "

    .line 431
    .line 432
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    .line 439
    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw p0
.end method

.method public final f(Ljb3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Pre-packaged database has an invalid schema: "

    .line 5
    .line 6
    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :try_start_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v4}, Lpb3;->getLong(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v2, v5, v7

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    move v2, v4

    .line 36
    :goto_0
    const/4 v5, 0x0

    .line 37
    invoke-static {v1, v5}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lda3;->d:Ldz0;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_1
    invoke-interface {v0}, Lpb3;->c0()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0, v4}, Lpb3;->o(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move-object v2, v5

    .line 64
    :goto_1
    invoke-static {v0, v5}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Ldz0;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-object v0, v1, Ldz0;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    iget-object p1, v1, Ldz0;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ", found: "

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    :catchall_2
    move-exception p1

    .line 126
    invoke-static {v0, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_3
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 131
    .line 132
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :try_start_3
    invoke-virtual {v1, p1}, Ldz0;->g(Ljb3;)Lf7;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-boolean v4, v2, Lf7;->b:Z

    .line 140
    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ldz0;->e(Ljb3;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lda3;->g(Ljb3;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lt64;->a:Lt64;

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_3
    move-exception v0

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v2, Lf7;->c:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    :goto_3
    new-instance v2, Lf83;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    move-object v0, v2

    .line 184
    :goto_4
    nop

    .line 185
    instance-of v2, v0, Lf83;

    .line 186
    .line 187
    if-nez v2, :cond_5

    .line 188
    .line 189
    move-object v2, v0

    .line 190
    check-cast v2, Lt64;

    .line 191
    .line 192
    const-string v2, "END TRANSACTION"

    .line 193
    .line 194
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    invoke-static {v0}, Lg83;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    :cond_6
    :goto_5
    invoke-virtual {v1, p1}, Ldz0;->d(Ljb3;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lda3;->e:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lz50;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    instance-of v2, p1, Lju3;

    .line 228
    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    move-object v2, p1

    .line 232
    check-cast v2, Lju3;

    .line 233
    .line 234
    iget-object v2, v2, Lju3;->n:Lee1;

    .line 235
    .line 236
    iget v4, v1, Lz50;->a:I

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    packed-switch v4, :pswitch_data_0

    .line 242
    .line 243
    .line 244
    iget-object v1, v1, Lz50;->b:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Lv;

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Lv;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :pswitch_0
    invoke-virtual {v2}, Lee1;->b()V

    .line 253
    .line 254
    .line 255
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v5, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    .line 258
    .line 259
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v1, Lz50;->b:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v1, Lpr3;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    .line 271
    .line 272
    move-result-wide v5

    .line 273
    const-wide/32 v7, 0x5265c00

    .line 274
    .line 275
    .line 276
    sub-long/2addr v5, v7

    .line 277
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    .line 281
    .line 282
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v2, v1}, Lee1;->A(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Lee1;->K()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Lee1;->z()V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :catchall_4
    move-exception p0

    .line 300
    invoke-virtual {v2}, Lee1;->z()V

    .line 301
    .line 302
    .line 303
    throw p0

    .line 304
    :cond_8
    iput-boolean v3, p0, Lda3;->a:Z

    .line 305
    .line 306
    return-void

    .line 307
    :cond_9
    const-string p0, "ROLLBACK TRANSACTION"

    .line 308
    .line 309
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :goto_7
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 314
    :catchall_5
    move-exception p1

    .line 315
    invoke-static {v1, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    throw p1

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljb3;)V
    .locals 2

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lda3;->d:Ldz0;

    .line 7
    .line 8
    iget-object p0, p0, Ldz0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "\')"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
