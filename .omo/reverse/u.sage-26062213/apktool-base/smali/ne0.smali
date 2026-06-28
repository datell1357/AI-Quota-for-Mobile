.class public final Lne0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:Lne0;

.field public static final f:Lne0;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    sget-object v0, Ld50;->r:Ld50;

    .line 2
    .line 3
    sget-object v1, Ld50;->s:Ld50;

    .line 4
    .line 5
    sget-object v2, Ld50;->t:Ld50;

    .line 6
    .line 7
    sget-object v3, Ld50;->l:Ld50;

    .line 8
    .line 9
    sget-object v4, Ld50;->n:Ld50;

    .line 10
    .line 11
    sget-object v5, Ld50;->m:Ld50;

    .line 12
    .line 13
    sget-object v6, Ld50;->o:Ld50;

    .line 14
    .line 15
    sget-object v7, Ld50;->q:Ld50;

    .line 16
    .line 17
    sget-object v8, Ld50;->p:Ld50;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ld50;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-static {v9}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    sget-object v10, Ld50;->j:Ld50;

    .line 28
    .line 29
    sget-object v11, Ld50;->k:Ld50;

    .line 30
    .line 31
    sget-object v12, Ld50;->h:Ld50;

    .line 32
    .line 33
    sget-object v13, Ld50;->i:Ld50;

    .line 34
    .line 35
    sget-object v14, Ld50;->f:Ld50;

    .line 36
    .line 37
    sget-object v15, Ld50;->g:Ld50;

    .line 38
    .line 39
    sget-object v16, Ld50;->e:Ld50;

    .line 40
    .line 41
    move-object/from16 v17, v1

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    move-object v0, v9

    .line 45
    move-object v9, v8

    .line 46
    move-object v8, v7

    .line 47
    move-object v7, v6

    .line 48
    move-object v6, v5

    .line 49
    move-object v5, v4

    .line 50
    move-object v4, v3

    .line 51
    move-object v3, v2

    .line 52
    move-object/from16 v2, v17

    .line 53
    .line 54
    filled-new-array/range {v1 .. v16}, [Ld50;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lme0;

    .line 63
    .line 64
    invoke-direct {v2}, Lme0;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    new-array v4, v3, [Ld50;

    .line 69
    .line 70
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Ld50;

    .line 75
    .line 76
    array-length v4, v0

    .line 77
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, [Ld50;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lme0;->b([Ld50;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lsz3;->p:Lsz3;

    .line 87
    .line 88
    sget-object v4, Lsz3;->q:Lsz3;

    .line 89
    .line 90
    filled-new-array {v0, v4}, [Lsz3;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Lme0;->c([Lsz3;)V

    .line 95
    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    iput-boolean v5, v2, Lme0;->b:Z

    .line 99
    .line 100
    invoke-virtual {v2}, Lme0;->a()Lne0;

    .line 101
    .line 102
    .line 103
    new-instance v2, Lme0;

    .line 104
    .line 105
    invoke-direct {v2}, Lme0;-><init>()V

    .line 106
    .line 107
    .line 108
    new-array v6, v3, [Ld50;

    .line 109
    .line 110
    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, [Ld50;

    .line 115
    .line 116
    array-length v7, v6

    .line 117
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, [Ld50;

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Lme0;->b([Ld50;)V

    .line 124
    .line 125
    .line 126
    filled-new-array {v0, v4}, [Lsz3;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v2, v6}, Lme0;->c([Lsz3;)V

    .line 131
    .line 132
    .line 133
    iput-boolean v5, v2, Lme0;->b:Z

    .line 134
    .line 135
    invoke-virtual {v2}, Lme0;->a()Lne0;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    sput-object v2, Lne0;->e:Lne0;

    .line 140
    .line 141
    new-instance v2, Lme0;

    .line 142
    .line 143
    invoke-direct {v2}, Lme0;-><init>()V

    .line 144
    .line 145
    .line 146
    new-array v6, v3, [Ld50;

    .line 147
    .line 148
    invoke-interface {v1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, [Ld50;

    .line 153
    .line 154
    array-length v6, v1

    .line 155
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, [Ld50;

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Lme0;->b([Ld50;)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Lsz3;->r:Lsz3;

    .line 165
    .line 166
    sget-object v6, Lsz3;->s:Lsz3;

    .line 167
    .line 168
    filled-new-array {v0, v4, v1, v6}, [Lsz3;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v2, v0}, Lme0;->c([Lsz3;)V

    .line 173
    .line 174
    .line 175
    iput-boolean v5, v2, Lme0;->b:Z

    .line 176
    .line 177
    invoke-virtual {v2}, Lme0;->a()Lne0;

    .line 178
    .line 179
    .line 180
    new-instance v0, Lne0;

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-direct {v0, v3, v3, v1, v1}, Lne0;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lne0;->f:Lne0;

    .line 187
    .line 188
    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lne0;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lne0;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lne0;->c:[Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lne0;->d:[Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lne0;->c:[Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v2, Ld50;->c:Llh0;

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Lfi4;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lne0;->d:[Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-object v3, Luh2;->o:Luh2;

    .line 30
    .line 31
    invoke-static {v2, v1, v3}, Lfi4;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-object v3, Ld50;->c:Llh0;

    .line 48
    .line 49
    sget-object v4, Lfi4;->a:[B

    .line 50
    .line 51
    array-length v4, v2

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    const/4 v6, -0x1

    .line 54
    if-ge v5, v4, :cond_3

    .line 55
    .line 56
    aget-object v7, v2, v5

    .line 57
    .line 58
    const-string v8, "TLS_FALLBACK_SCSV"

    .line 59
    .line 60
    invoke-virtual {v3, v7, v8}, Llh0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v5, v6

    .line 71
    :goto_2
    if-eqz p2, :cond_4

    .line 72
    .line 73
    if-eq v5, v6, :cond_4

    .line 74
    .line 75
    aget-object p2, v2, v5

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    array-length v2, v0

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, [Ljava/lang/String;

    .line 91
    .line 92
    array-length v2, v0

    .line 93
    add-int/lit8 v2, v2, -0x1

    .line 94
    .line 95
    aput-object p2, v0, v2

    .line 96
    .line 97
    :cond_4
    array-length p2, v0

    .line 98
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, [Ljava/lang/String;

    .line 103
    .line 104
    iget-boolean v0, p0, Lne0;->a:Z

    .line 105
    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    array-length v2, p2

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    array-length v2, p2

    .line 112
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, [Ljava/lang/String;

    .line 117
    .line 118
    array-length v2, v1

    .line 119
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, [Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    array-length v2, v1

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    array-length v2, v1

    .line 131
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, [Ljava/lang/String;

    .line 136
    .line 137
    new-instance v2, Lne0;

    .line 138
    .line 139
    iget-boolean p0, p0, Lne0;->b:Z

    .line 140
    .line 141
    invoke-direct {v2, v0, p0, p2, v1}, Lne0;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lne0;->c()Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_5

    .line 149
    .line 150
    iget-object p0, v2, Lne0;->d:[Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v2}, Lne0;->b()Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-eqz p0, :cond_6

    .line 160
    .line 161
    iget-object p0, v2, Lne0;->c:[Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    return-void

    .line 167
    :cond_7
    const-string p0, "At least one TLS version is required"

    .line 168
    .line 169
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_8
    const-string p0, "no TLS versions for cleartext connections"

    .line 174
    .line 175
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_9
    const-string p0, "At least one cipher suite is required"

    .line 180
    .line 181
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_a
    const-string p0, "no cipher suites for cleartext connections"

    .line 186
    .line 187
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object p0, p0, Lne0;->c:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    sget-object v4, Ld50;->b:Lbx3;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Lbx3;->p(Ljava/lang/String;)Ld50;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object p0, p0, Lne0;->d:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    sget-object v4, Lsz3;->o:Lpr3;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lpr3;->h(Ljava/lang/String;)Lsz3;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lne0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lne0;

    .line 10
    .line 11
    iget-boolean v0, p1, Lne0;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Lne0;->a:Z

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    if-eqz v1, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lne0;->c:[Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lne0;->c:[Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lne0;->d:[Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p1, Lne0;->d:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-boolean p0, p0, Lne0;->b:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Lne0;->b:Z

    .line 45
    .line 46
    if-eq p0, p1, :cond_5

    .line 47
    .line 48
    :goto_0
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lne0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lne0;->c:[Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    const/16 v2, 0x20f

    .line 17
    .line 18
    add-int/2addr v2, v1

    .line 19
    mul-int/lit8 v2, v2, 0x1f

    .line 20
    .line 21
    iget-object v1, p0, Lne0;->d:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    add-int/2addr v2, v0

    .line 30
    mul-int/lit8 v2, v2, 0x1f

    .line 31
    .line 32
    iget-boolean p0, p0, Lne0;->b:Z

    .line 33
    .line 34
    xor-int/lit8 p0, p0, 0x1

    .line 35
    .line 36
    add-int/2addr v2, p0

    .line 37
    return v2

    .line 38
    :cond_2
    const/16 p0, 0x11

    .line 39
    .line 40
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lne0;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ConnectionSpec()"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "ConnectionSpec(cipherSuites="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lne0;->b()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "[all enabled]"

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", tlsVersions="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lne0;->c()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", supportsTlsExtensions="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lne0;->b:Z

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 p0, 0x29

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
