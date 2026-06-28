.class public final Let1;
.super Ls60;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lld0;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:Lj60;

.field public final p:Lql1;

.field public final q:Lzm1;

.field public final r:Ly43;

.field public final s:Ly43;

.field public final t:Lmu;

.field public final u:Lzk0;

.field public final v:Lv63;

.field public final w:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lj60;Lql1;Lzm1;Ly43;Ly43;Lmu;Lzk0;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls60;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Let1;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Let1;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Let1;->o:Lj60;

    .line 13
    .line 14
    iput-object p2, p0, Let1;->p:Lql1;

    .line 15
    .line 16
    iput-object p3, p0, Let1;->q:Lzm1;

    .line 17
    .line 18
    iput-object p4, p0, Let1;->r:Ly43;

    .line 19
    .line 20
    iput-object p5, p0, Let1;->s:Ly43;

    .line 21
    .line 22
    iput-object p6, p0, Let1;->t:Lmu;

    .line 23
    .line 24
    iput-object p7, p0, Let1;->u:Lzk0;

    .line 25
    .line 26
    sget-object p1, Lv63;->D:Lv63;

    .line 27
    .line 28
    iput-object p1, p0, Let1;->v:Lv63;

    .line 29
    .line 30
    iput-object p8, p0, Let1;->w:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Let1;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    check-cast v3, Ljava/io/Closeable;

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v3

    .line 25
    iget-object v4, p0, Let1;->n:Lorg/apache/commons/logging/Log;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final doExecute(Lem1;Lom1;Lul1;)Lt60;
    .locals 5

    .line 1
    const-string v0, "HTTP request"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lj0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p2

    .line 12
    check-cast v0, Lj0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    :try_start_0
    instance-of v2, p2, Lzl1;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Ltm1;

    .line 21
    .line 22
    move-object v3, p2

    .line 23
    check-cast v3, Lzl1;

    .line 24
    .line 25
    invoke-direct {v2, p1, v3}, Lum1;-><init>(Lem1;Lom1;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Lzl1;->getEntity()Lxl1;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iput-object v3, v2, Ltm1;->t:Lxl1;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    new-instance v2, Lum1;

    .line 36
    .line 37
    invoke-direct {v2, p1, p2}, Lum1;-><init>(Lem1;Lom1;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    if-eqz p3, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    new-instance p3, Lvu;

    .line 44
    .line 45
    invoke-direct {p3}, Lvu;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-static {p3}, Lrl1;->c(Lul1;)Lrl1;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    instance-of v3, p2, Lld0;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    move-object v1, p2

    .line 57
    check-cast v1, Lld0;

    .line 58
    .line 59
    invoke-interface {v1}, Lld0;->getConfig()Lv63;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    if-nez v1, :cond_5

    .line 64
    .line 65
    invoke-interface {p2}, Lim1;->getParams()Lkm1;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    instance-of v3, p2, Lf1;
    :try_end_0
    .catch Lcm1; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    iget-object v4, p0, Let1;->v:Lv63;

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    :try_start_1
    move-object v3, p2

    .line 76
    check-cast v3, Lf1;

    .line 77
    .line 78
    invoke-virtual {v3}, Lf1;->f()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    invoke-static {p2, v4}, Ldm0;->x(Lkm1;Lv63;)Lv63;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-static {p2, v4}, Ldm0;->x(Lkm1;Lv63;)Lv63;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 98
    .line 99
    const-string p2, "http.request-config"

    .line 100
    .line 101
    invoke-virtual {p3, v1, p2}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {p0, p3}, Let1;->j(Lrl1;)V

    .line 105
    .line 106
    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2}, Lum1;->getParams()Lkm1;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "http.default-host"

    .line 114
    .line 115
    invoke-interface {p1, p2}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lem1;

    .line 120
    .line 121
    :cond_7
    iget-object p2, p0, Let1;->q:Lzm1;

    .line 122
    .line 123
    invoke-interface {p2, p1, v2, p3}, Lzm1;->f(Lem1;Lom1;Lul1;)Lym1;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p0, p0, Let1;->o:Lj60;

    .line 128
    .line 129
    invoke-interface {p0, p1, v2, p3, v0}, Lj60;->a(Lym1;Lum1;Lrl1;Lj0;)Lt60;

    .line 130
    .line 131
    .line 132
    move-result-object p0
    :try_end_1
    .catch Lcm1; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    return-object p0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    new-instance p1, Lo60;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Lo60;-><init>(Lcm1;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public final getConfig()Lv63;
    .locals 0

    .line 1
    iget-object p0, p0, Let1;->v:Lv63;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getConnectionManager()Lg60;
    .locals 1

    .line 1
    new-instance v0, Ldh1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getParams()Lkm1;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final j(Lrl1;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lvl1;->n:Lul1;

    .line 2
    .line 3
    const-string v1, "http.auth.target-scope"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ltj;

    .line 12
    .line 13
    invoke-direct {v2}, Ltj;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string v1, "http.auth.proxy-scope"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Ltj;

    .line 28
    .line 29
    invoke-direct {v2}, Ltj;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const-string v1, "http.authscheme-registry"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Let1;->s:Ly43;

    .line 44
    .line 45
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    const-string v1, "http.cookiespec-registry"

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Let1;->r:Ly43;

    .line 57
    .line 58
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    const-string v1, "http.cookie-store"

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v2, p0, Let1;->t:Lmu;

    .line 70
    .line 71
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    const-string v1, "http.auth.credentials-provider"

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget-object v2, p0, Let1;->u:Lzk0;

    .line 83
    .line 84
    invoke-virtual {p1, v2, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_5
    const-string v1, "http.request-config"

    .line 88
    .line 89
    invoke-interface {v0, v1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    iget-object p0, p0, Let1;->v:Lv63;

    .line 96
    .line 97
    invoke-virtual {p1, p0, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    return-void
.end method
