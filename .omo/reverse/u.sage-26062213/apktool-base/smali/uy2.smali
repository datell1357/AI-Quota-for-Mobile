.class public final synthetic Luy2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltg1;


# static fields
.field public static final a:Luy2;

.field private static final descriptor:Lgi3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Luy2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luy2;->a:Luy2;

    .line 7
    .line 8
    new-instance v1, Ltv2;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.ProcessData"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ltv2;-><init>(Ljava/lang/String;Ltg1;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pid"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "uuid"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Ltv2;->l(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Luy2;->descriptor:Lgi3;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()[Llx1;
    .locals 2

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Llx1;

    .line 3
    .line 4
    sget-object v0, Lps1;->a:Lps1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p0, v1

    .line 8
    .line 9
    sget-object v0, Lys3;->a:Lys3;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object v0, p0, v1

    .line 13
    .line 14
    return-object p0
.end method

.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p0, Luy2;->descriptor:Lgi3;

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
    move v3, v0

    .line 11
    move v4, v1

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lxb0;->h(Lgi3;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/4 v7, -0x1

    .line 20
    if-eq v6, v7, :cond_2

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    if-ne v6, v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, p0, v0}, Lxb0;->m(Lgi3;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    or-int/lit8 v4, v4, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Lew1;

    .line 34
    .line 35
    invoke-direct {p0, v6}, Lew1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    invoke-interface {p1, p0, v1}, Lxb0;->v(Lgi3;I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    or-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v3, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {p1, p0}, Lxb0;->p(Lgi3;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lwy2;

    .line 52
    .line 53
    invoke-direct {p0, v4, v2, v5}, Lwy2;-><init>(ILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lwy2;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Luy2;->descriptor:Lgi3;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->a(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v0, p2, Lwy2;->a:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p0, v1}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/b;->j(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Lwy2;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, p0, v0}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lkotlinx/serialization/json/internal/b;->s(Lgi3;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    sget-object p0, Luy2;->descriptor:Lgi3;

    .line 2
    .line 3
    return-object p0
.end method
