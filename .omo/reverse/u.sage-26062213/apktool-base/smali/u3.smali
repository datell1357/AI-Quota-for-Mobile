.class public final Lu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgm0;


# instance fields
.field public final a:Lpi1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpi1;

    .line 5
    .line 6
    invoke-direct {v0}, Lpi1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu3;->a:Lpi1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object p0, Lez3;->a:Lra3;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Ljava/lang/Object;Lrd;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lhg2;

    .line 2
    .line 3
    sget-object p2, Lez3;->a:Lra3;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lhg2;

    .line 15
    .line 16
    invoke-virtual {p1}, Lhg2;->a()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v1, v0}, Lhg2;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lx12;->a:Lrx2;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, v0

    .line 44
    :goto_0
    sget-object v1, Lx12;->b:Lrx2;

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v1, v0

    .line 60
    :goto_1
    if-eqz p1, :cond_3

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string p1, "CLAUDE_FREE"

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const-string p1, "CLAUDE_PRO"

    .line 68
    .line 69
    :goto_2
    new-instance v1, Lw3;

    .line 70
    .line 71
    const/16 v2, 0x7ef

    .line 72
    .line 73
    invoke-direct {v1, p1, v2}, Lw3;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    sget-object v1, Lw3;->l:Lw3;

    .line 78
    .line 79
    :goto_3
    sget-object p1, Lx3;->a:Lrx2;

    .line 80
    .line 81
    iget-object p0, p0, Lu3;->a:Lpi1;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lpi1;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p2, p1, p0}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lx3;->b:Lrx2;

    .line 91
    .line 92
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p2, p0, p1}, Lhg2;->e(Lrx2;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lw3;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    new-array p0, v0, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method

.method public final c(Ldh0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lhg2;

    .line 2
    .line 3
    sget-object p0, Lx12;->a:Lrx2;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Lhg2;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object p1, Lx3;->b:Lrx2;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, p2

    .line 34
    :goto_0
    if-eqz p0, :cond_1

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p0, p2

    .line 41
    :goto_1
    sget-object p1, Lez3;->a:Lra3;

    .line 42
    .line 43
    new-array p2, p2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
