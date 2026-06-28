.class public final synthetic Lbj3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltg1;


# static fields
.field public static final a:Lbj3;

.field private static final descriptor:Lgi3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbj3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbj3;->a:Lbj3;

    .line 7
    .line 8
    new-instance v1, Ltv2;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.settings.SessionConfigs"

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ltv2;-><init>(Ljava/lang/String;Ltg1;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionsEnabled"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "sessionSamplingRate"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "sessionTimeoutSeconds"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "cacheDurationSeconds"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "cacheUpdatedTimeSeconds"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lbj3;->descriptor:Lgi3;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()[Llx1;
    .locals 6

    .line 1
    sget-object p0, Lyw;->a:Lyw;

    .line 2
    .line 3
    invoke-static {p0}, Lix;->v(Llx1;)Llx1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Law0;->a:Law0;

    .line 8
    .line 9
    invoke-static {v0}, Lix;->v(Llx1;)Llx1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lps1;->a:Lps1;

    .line 14
    .line 15
    invoke-static {v1}, Lix;->v(Llx1;)Llx1;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1}, Lix;->v(Llx1;)Llx1;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lc82;->a:Lc82;

    .line 24
    .line 25
    invoke-static {v3}, Lix;->v(Llx1;)Llx1;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x5

    .line 30
    new-array v4, v4, [Llx1;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object p0, v4, v5

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    aput-object v0, v4, p0

    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    aput-object v2, v4, p0

    .line 40
    .line 41
    const/4 p0, 0x3

    .line 42
    aput-object v1, v4, p0

    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    aput-object v3, v4, p0

    .line 46
    .line 47
    return-object v4
.end method

.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object p0, Lbj3;->descriptor:Lgi3;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lvn0;->A(Lgi3;)Lxb0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v4, v1

    .line 11
    move-object v5, v2

    .line 12
    move-object v6, v5

    .line 13
    move-object v7, v6

    .line 14
    move-object v8, v7

    .line 15
    move-object v9, v8

    .line 16
    move v2, v0

    .line 17
    :goto_0
    if-eqz v2, :cond_6

    .line 18
    .line 19
    invoke-interface {p1, p0}, Lxb0;->h(Lgi3;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v10, -0x1

    .line 24
    if-eq v3, v10, :cond_5

    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    if-eq v3, v0, :cond_3

    .line 29
    .line 30
    const/4 v10, 0x2

    .line 31
    if-eq v3, v10, :cond_2

    .line 32
    .line 33
    const/4 v10, 0x3

    .line 34
    if-eq v3, v10, :cond_1

    .line 35
    .line 36
    const/4 v10, 0x4

    .line 37
    if-ne v3, v10, :cond_0

    .line 38
    .line 39
    sget-object v3, Lc82;->a:Lc82;

    .line 40
    .line 41
    invoke-interface {p1, p0, v10, v3, v9}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v9, v3

    .line 46
    check-cast v9, Ljava/lang/Long;

    .line 47
    .line 48
    or-int/lit8 v4, v4, 0x10

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Lew1;

    .line 52
    .line 53
    invoke-direct {p0, v3}, Lew1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    sget-object v3, Lps1;->a:Lps1;

    .line 58
    .line 59
    invoke-interface {p1, p0, v10, v3, v8}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v8, v3

    .line 64
    check-cast v8, Ljava/lang/Integer;

    .line 65
    .line 66
    or-int/lit8 v4, v4, 0x8

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object v3, Lps1;->a:Lps1;

    .line 70
    .line 71
    invoke-interface {p1, p0, v10, v3, v7}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v7, v3

    .line 76
    check-cast v7, Ljava/lang/Integer;

    .line 77
    .line 78
    or-int/lit8 v4, v4, 0x4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v3, Law0;->a:Law0;

    .line 82
    .line 83
    invoke-interface {p1, p0, v0, v3, v6}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v6, v3

    .line 88
    check-cast v6, Ljava/lang/Double;

    .line 89
    .line 90
    or-int/lit8 v4, v4, 0x2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    sget-object v3, Lyw;->a:Lyw;

    .line 94
    .line 95
    invoke-interface {p1, p0, v1, v3, v5}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move-object v5, v3

    .line 100
    check-cast v5, Ljava/lang/Boolean;

    .line 101
    .line 102
    or-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    move v2, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    invoke-interface {p1, p0}, Lxb0;->p(Lgi3;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Ldj3;

    .line 111
    .line 112
    invoke-direct/range {v3 .. v9}, Ldj3;-><init>(ILjava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 113
    .line 114
    .line 115
    return-object v3
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ldj3;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lbj3;->descriptor:Lgi3;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->a(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lyw;->a:Lyw;

    .line 13
    .line 14
    iget-object v1, p2, Ldj3;->a:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Law0;->a:Law0;

    .line 21
    .line 22
    iget-object v1, p2, Ldj3;->b:Ljava/lang/Double;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lps1;->a:Lps1;

    .line 29
    .line 30
    iget-object v1, p2, Ldj3;->c:Ljava/lang/Integer;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {p1, p0, v2, v0, v1}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    iget-object v2, p2, Ldj3;->d:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v1, v0, v2}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lc82;->a:Lc82;

    .line 43
    .line 44
    iget-object p2, p2, Ldj3;->e:Ljava/lang/Long;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p1, p0, v1, v0, p2}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->s(Lgi3;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lbj3;->descriptor:Lgi3;

    .line 2
    .line 3
    return-object p0
.end method
