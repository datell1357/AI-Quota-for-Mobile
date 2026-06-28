.class public abstract Lz54;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/util/EnumSet;

.field public static final b:Ljava/util/EnumSet;

.field public static final c:Ljava/util/EnumSet;

.field public static final d:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ly54;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lz54;->a:Ljava/util/EnumSet;

    .line 8
    .line 9
    sget-object v0, Ly54;->n:Ly54;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lz54;->b:Ljava/util/EnumSet;

    .line 16
    .line 17
    sget-object v1, Ly54;->o:Ly54;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lz54;->c:Ljava/util/EnumSet;

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lz54;->d:Ljava/util/EnumSet;

    .line 30
    .line 31
    return-void
.end method

.method public static a(Ljava/net/URI;)Lem1;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x40

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, -0x1

    .line 34
    if-eq v1, v3, :cond_1

    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v1, ":"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v1, v3, :cond_4

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    add-int/2addr v1, v2

    .line 59
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v2, v4

    .line 71
    :goto_0
    if-nez v2, :cond_3

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_3
    move-object v0, v5

    .line 78
    :cond_4
    :try_start_1
    new-instance v1, Lem1;

    .line 79
    .line 80
    invoke-direct {v1, v0, v3, p0}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_5
    new-instance v0, Lem1;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, v1, v2, p0}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :catch_0
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method

.method public static b(Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lx54;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lx54;-><init>(Ljava/net/URI;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lx54;->b()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Ljava/util/Stack;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    :cond_1
    :goto_0
    if-ge v3, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    const-string v5, "."

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v5, ".."

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_5

    .line 80
    .line 81
    const-string p0, ""

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v0, v1}, Lx54;->c(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, v0, Lx54;->a:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iput-object p0, v0, Lx54;->a:Ljava/lang/String;

    .line 100
    .line 101
    :cond_6
    iget-object p0, v0, Lx54;->f:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p0, :cond_7

    .line 104
    .line 105
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    iput-object p0, v0, Lx54;->f:Ljava/lang/String;

    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    iput-object p0, v0, Lx54;->b:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p0, v0, Lx54;->c:Ljava/lang/String;

    .line 117
    .line 118
    :cond_7
    new-instance p0, Ljava/net/URI;

    .line 119
    .line 120
    invoke-virtual {v0}, Lx54;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_1
    return-object p0
.end method

.method public static c(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "?"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/16 p1, 0x3f

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, -0x1

    .line 25
    if-le p1, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string p1, "#"

    .line 47
    .line 48
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/16 p1, 0x23

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    :try_start_0
    invoke-static {p0}, Lz54;->b(Ljava/net/URI;)Ljava/net/URI;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public static d(Ljava/net/URI;)Ljava/net/URI;
    .locals 5

    .line 1
    const-string v0, "URI"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lx54;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lx54;-><init>(Ljava/net/URI;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lx54;->d:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iput-object v1, v0, Lx54;->d:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lx54;->c:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, v0, Lx54;->e:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Lx54;->b()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const-string p0, ""

    .line 42
    .line 43
    filled-new-array {p0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iput-object p0, v0, Lx54;->i:Ljava/util/List;

    .line 52
    .line 53
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, v0, Lx54;->h:Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    iget-object p0, v0, Lx54;->i:Ljava/util/List;

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    move-object p0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lx54;->i:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/lang/String;

    .line 85
    .line 86
    const/16 v4, 0x2f

    .line 87
    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :goto_1
    if-nez p0, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_6

    .line 107
    .line 108
    :goto_2
    const-string p0, "/"

    .line 109
    .line 110
    invoke-static {p0}, La64;->d(Ljava/lang/String;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v0, p0}, Lx54;->c(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-object p0, v0, Lx54;->f:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iput-object p0, v0, Lx54;->f:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, v0, Lx54;->c:Ljava/lang/String;

    .line 132
    .line 133
    :cond_7
    iput-object v1, v0, Lx54;->m:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v1, v0, Lx54;->n:Ljava/lang/String;

    .line 136
    .line 137
    new-instance p0, Ljava/net/URI;

    .line 138
    .line 139
    invoke-virtual {v0}, Lx54;->a()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public static e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;
    .locals 3

    .line 1
    const-string v0, "URI"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "URI flags"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lx54;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lx54;-><init>(Ljava/net/URI;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object v2, p1, Lem1;->q:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v2, v0, Lx54;->a:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lem1;->n:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v0, Lx54;->f:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v1, v0, Lx54;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget p1, p1, Lem1;->p:I

    .line 40
    .line 41
    if-gez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p0, p1

    .line 45
    :goto_0
    iput p0, v0, Lx54;->g:I

    .line 46
    .line 47
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, v0, Lx54;->c:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iput-object v1, v0, Lx54;->a:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, v0, Lx54;->f:Ljava/lang/String;

    .line 55
    .line 56
    iput p0, v0, Lx54;->g:I

    .line 57
    .line 58
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, v0, Lx54;->c:Ljava/lang/String;

    .line 61
    .line 62
    :goto_1
    sget-object p0, Ly54;->n:Ly54;

    .line 63
    .line 64
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    iput-object v1, v0, Lx54;->m:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Lx54;->n:Ljava/lang/String;

    .line 73
    .line 74
    :cond_3
    sget-object p0, Ly54;->o:Ly54;

    .line 75
    .line 76
    invoke-virtual {p2, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0}, Lx54;->b()Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eq p2, p0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lx54;->c(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object p0, v0, Lx54;->i:Ljava/util/List;

    .line 137
    .line 138
    if-eqz p0, :cond_7

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-eqz p0, :cond_9

    .line 145
    .line 146
    :cond_7
    iget-object p0, v0, Lx54;->h:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p0, :cond_8

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_9

    .line 155
    .line 156
    :cond_8
    const-string p0, ""

    .line 157
    .line 158
    filled-new-array {p0}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iput-object p0, v0, Lx54;->i:Ljava/util/List;

    .line 167
    .line 168
    iput-object v1, v0, Lx54;->b:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v1, v0, Lx54;->h:Ljava/lang/String;

    .line 171
    .line 172
    :cond_9
    new-instance p0, Ljava/net/URI;

    .line 173
    .line 174
    invoke-virtual {v0}, Lx54;->a()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-object p0
.end method
