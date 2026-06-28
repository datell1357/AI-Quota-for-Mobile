.class public final Lm13;
.super Lk13;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 18

    .line 1
    new-instance v0, Lou;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lj13;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3}, Lj13;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lou;

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    invoke-direct {v4, v5}, Lou;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v6, Lou;

    .line 20
    .line 21
    const/4 v7, 0x6

    .line 22
    invoke-direct {v6, v7}, Lou;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v8, Llu;

    .line 26
    .line 27
    invoke-direct {v8, v3}, Llu;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v9, Llu;

    .line 31
    .line 32
    const/4 v10, 0x2

    .line 33
    invoke-direct {v9, v10}, Llu;-><init>(I)V

    .line 34
    .line 35
    .line 36
    new-instance v11, Llu;

    .line 37
    .line 38
    const/4 v12, 0x0

    .line 39
    invoke-direct {v11, v12}, Llu;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v13, Lpu;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    check-cast v14, [Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v14, Lk13;->c:[Ljava/lang/String;

    .line 54
    .line 55
    :goto_0
    invoke-direct {v13, v14}, Lpu;-><init>([Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v14, Lou;

    .line 59
    .line 60
    const/4 v15, 0x3

    .line 61
    invoke-direct {v14, v15}, Lou;-><init>(I)V

    .line 62
    .line 63
    .line 64
    move/from16 v16, v1

    .line 65
    .line 66
    new-instance v1, Lou;

    .line 67
    .line 68
    move/from16 v17, v3

    .line 69
    .line 70
    const/4 v3, 0x4

    .line 71
    invoke-direct {v1, v3}, Lou;-><init>(I)V

    .line 72
    .line 73
    .line 74
    move/from16 p1, v3

    .line 75
    .line 76
    const/16 v3, 0xa

    .line 77
    .line 78
    new-array v3, v3, [Lu80;

    .line 79
    .line 80
    aput-object v0, v3, v12

    .line 81
    .line 82
    aput-object v2, v3, v17

    .line 83
    .line 84
    aput-object v4, v3, v10

    .line 85
    .line 86
    aput-object v6, v3, v15

    .line 87
    .line 88
    aput-object v8, v3, p1

    .line 89
    .line 90
    aput-object v9, v3, v5

    .line 91
    .line 92
    aput-object v11, v3, v7

    .line 93
    .line 94
    aput-object v13, v3, v16

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    aput-object v14, v3, v0

    .line 99
    .line 100
    const/16 v0, 0x9

    .line 101
    .line 102
    aput-object v1, v3, v0

    .line 103
    .line 104
    move-object/from16 v0, p0

    .line 105
    .line 106
    move/from16 v1, p2

    .line 107
    .line 108
    invoke-direct {v0, v1, v3}, Lk13;-><init>(Z[Lu80;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static k(Ljh0;)Ljh0;
    .locals 4

    .line 1
    iget-object v0, p0, Ljh0;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x2e

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x3a

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-object p0

    .line 27
    :cond_2
    new-instance v1, Ljh0;

    .line 28
    .line 29
    const-string v2, ".local"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v2, p0, Ljh0;->b:I

    .line 36
    .line 37
    iget-object v3, p0, Ljh0;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-boolean p0, p0, Ljh0;->d:Z

    .line 40
    .line 41
    invoke-direct {v1, v0, v3, v2, p0}, Ljh0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method


# virtual methods
.method public final a(Lku;Ljh0;)V
    .locals 1

    .line 1
    const-string v0, "Cookie"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lm13;->k(Ljh0;)Ljh0;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-super {p0, p1, p2}, Lk13;->a(Lku;Ljh0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Lku;Ljh0;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lm13;->k(Ljh0;)Ljh0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-super {p0, p1, p2}, Loh0;->b(Lku;Ljh0;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final d()Lgj1;
    .locals 1

    .line 1
    new-instance p0, Lb40;

    .line 2
    .line 3
    const/16 v0, 0x28

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lb40;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "Cookie2"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, ": "

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "$Version="

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcz;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcz;-><init>(Lb40;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final e(Lgj1;Ljh0;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lsh2;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Set-Cookie2"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lgj1;->a()[Lru;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2}, Lm13;->k(Ljh0;)Ljh0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Lm13;->l([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p0, Lq92;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Unrecognized cookie header \'"

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, "\'"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final f()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final h([Lru;Ljh0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p2}, Lm13;->k(Ljh0;)Ljh0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lm13;->l([Lru;Ljh0;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final i(Lb40;Lku;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lk13;->i(Lb40;Lku;I)V

    .line 2
    .line 3
    .line 4
    instance-of p0, p2, Lku;

    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    const-string p0, "port"

    .line 9
    .line 10
    iget-object p3, p2, Lku;->o:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const-string p3, "; $Port"

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lb40;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p3, "=\""

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lb40;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Lku;->a()[I

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    array-length p2, p0

    .line 47
    const/4 p3, 0x0

    .line 48
    :goto_0
    if-ge p3, p2, :cond_1

    .line 49
    .line 50
    if-lez p3, :cond_0

    .line 51
    .line 52
    const-string v0, ","

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    aget v0, p0, p3

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 p3, p3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p0, "\""

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final l([Lru;Ljh0;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_4

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    iget-object v4, v3, Lru;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, v3, Lru;->o:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_3

    .line 24
    .line 25
    new-instance v6, Lju;

    .line 26
    .line 27
    invoke-direct {v6, v4, v5}, Lku;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Loh0;->g(Ljh0;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput-object v4, v6, Lku;->s:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, p2, Ljh0;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v6, v4}, Lku;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v4, p2, Ljh0;->b:I

    .line 42
    .line 43
    filled-new-array {v4}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v4, v6, Lju;->w:[I

    .line 48
    .line 49
    iget-object v3, v3, Lru;->p:[Lsh2;

    .line 50
    .line 51
    invoke-virtual {v3}, [Lsh2;->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, [Lsh2;

    .line 56
    .line 57
    new-instance v4, Ljava/util/HashMap;

    .line 58
    .line 59
    array-length v5, v3

    .line 60
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 61
    .line 62
    .line 63
    array-length v5, v3

    .line 64
    add-int/lit8 v5, v5, -0x1

    .line 65
    .line 66
    :goto_1
    if-ltz v5, :cond_0

    .line 67
    .line 68
    aget-object v7, v3, v5

    .line 69
    .line 70
    invoke-interface {v7}, Lsh2;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v5, -0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lsh2;

    .line 111
    .line 112
    invoke-interface {v4}, Lsh2;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 117
    .line 118
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v4}, Lsh2;->getValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    iget-object v8, v6, Lku;->o:Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    iget-object v7, p0, Loh0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lih0;

    .line 138
    .line 139
    if-eqz v5, :cond_1

    .line 140
    .line 141
    invoke-interface {v4}, Lsh2;->getValue()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-interface {v5, v6, v4}, Lih0;->c(Lku;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_3
    new-instance p0, Lq92;

    .line 157
    .line 158
    const-string p1, "Cookie name may not be empty"

    .line 159
    .line 160
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_4
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "rfc2965"

    .line 2
    .line 3
    return-object p0
.end method
