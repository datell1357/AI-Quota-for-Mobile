.class public final synthetic Lej3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltg1;


# static fields
.field public static final a:Lej3;

.field private static final descriptor:Lgi3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lej3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lej3;->a:Lej3;

    .line 7
    .line 8
    new-instance v1, Ltv2;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.SessionData"

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ltv2;-><init>(Ljava/lang/String;Ltg1;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionDetails"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "backgroundTime"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "processDataMap"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lej3;->descriptor:Lgi3;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()[Llx1;
    .locals 5

    .line 1
    sget-object p0, Lgj3;->d:[Lqz1;

    .line 2
    .line 3
    sget-object v0, Lfz3;->a:Lfz3;

    .line 4
    .line 5
    invoke-static {v0}, Lix;->v(Llx1;)Llx1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    aget-object p0, p0, v1

    .line 11
    .line 12
    invoke-interface {p0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Llx1;

    .line 17
    .line 18
    invoke-static {p0}, Lix;->v(Llx1;)Llx1;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [Llx1;

    .line 24
    .line 25
    sget-object v3, Ljj3;->a:Ljj3;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    aput-object v0, v2, v3

    .line 32
    .line 33
    aput-object p0, v2, v1

    .line 34
    .line 35
    return-object v2
.end method

.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object p0, Lej3;->descriptor:Lgi3;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lvn0;->A(Lgi3;)Lxb0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lgj3;->d:[Lqz1;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v6, v1

    .line 13
    move v7, v2

    .line 14
    move-object v4, v3

    .line 15
    move-object v5, v4

    .line 16
    :goto_0
    if-eqz v6, :cond_4

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lxb0;->h(Lgi3;)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    const/4 v9, -0x1

    .line 23
    if-eq v8, v9, :cond_3

    .line 24
    .line 25
    if-eqz v8, :cond_2

    .line 26
    .line 27
    if-eq v8, v1, :cond_1

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    if-ne v8, v9, :cond_0

    .line 31
    .line 32
    aget-object v8, v0, v9

    .line 33
    .line 34
    invoke-interface {v8}, Lqz1;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Llx1;

    .line 39
    .line 40
    invoke-interface {p1, p0, v9, v8, v5}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/util/Map;

    .line 45
    .line 46
    or-int/lit8 v7, v7, 0x4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Lew1;

    .line 50
    .line 51
    invoke-direct {p0, v8}, Lew1;-><init>(I)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    sget-object v8, Lfz3;->a:Lfz3;

    .line 56
    .line 57
    invoke-interface {p1, p0, v1, v8, v4}, Lxb0;->g(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lhz3;

    .line 62
    .line 63
    or-int/lit8 v7, v7, 0x2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v8, Ljj3;->a:Ljj3;

    .line 67
    .line 68
    invoke-interface {p1, p0, v2, v8, v3}, Lxb0;->u(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Llj3;

    .line 73
    .line 74
    or-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v6, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-interface {p1, p0}, Lxb0;->p(Lgi3;)V

    .line 80
    .line 81
    .line 82
    new-instance p0, Lgj3;

    .line 83
    .line 84
    invoke-direct {p0, v7, v3, v4, v5}, Lgj3;-><init>(ILlj3;Lhz3;Ljava/util/Map;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lgj3;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lej3;->descriptor:Lgi3;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->a(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lgj3;->d:[Lqz1;

    .line 13
    .line 14
    sget-object v1, Ljj3;->a:Ljj3;

    .line 15
    .line 16
    iget-object v2, p2, Lgj3;->a:Llj3;

    .line 17
    .line 18
    iget-object v3, p2, Lgj3;->c:Ljava/util/Map;

    .line 19
    .line 20
    iget-object p2, p2, Lgj3;->b:Lhz3;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p1, p0, v4, v1, v2}, Lkotlinx/serialization/json/internal/b;->o(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->t(Lgi3;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    .line 35
    :goto_0
    sget-object v1, Lfz3;->a:Lfz3;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p1, p0, v2, v1, p2}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->t(Lgi3;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-eqz v3, :cond_3

    .line 49
    .line 50
    :goto_1
    const/4 p2, 0x2

    .line 51
    aget-object v0, v0, p2

    .line 52
    .line 53
    invoke-interface {v0}, Lqz1;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Llx1;

    .line 58
    .line 59
    invoke-virtual {p1, p0, p2, v0, v3}, Lkotlinx/serialization/json/internal/b;->n(Lgi3;ILlx1;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->s(Lgi3;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Lej3;->descriptor:Lgi3;

    .line 2
    .line 3
    return-object p0
.end method
