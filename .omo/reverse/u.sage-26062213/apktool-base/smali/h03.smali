.class public abstract Lh03;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lw12;


# direct methods
.method public constructor <init>(Lne1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw12;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lw12;-><init>(Lne1;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh03;->a:Lw12;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lj03;
.end method

.method public b()Lx94;
    .locals 0

    .line 1
    iget-object p0, p0, Lh03;->a:Lw12;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lpe1;)Lj03;
    .locals 7

    .line 1
    new-instance v0, Lj03;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lj03;-><init>(Lh03;Ljava/lang/Object;ZLw13;Lpe1;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final d(Lj03;Lx94;)Lx94;
    .locals 5

    .line 1
    iget-object p0, p1, Lj03;->d:Lpe1;

    .line 2
    .line 3
    iget-object v0, p1, Lj03;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v1, p1, Lj03;->e:Z

    .line 6
    .line 7
    instance-of v2, p2, Lhy0;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    move-object v3, p2

    .line 15
    check-cast v3, Lhy0;

    .line 16
    .line 17
    iget-object p2, v3, Lhy0;->a:Lws2;

    .line 18
    .line 19
    invoke-virtual {p1}, Lj03;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2, v2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    instance-of v2, p2, Ljs3;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p1, Lj03;->b:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :cond_1
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lj03;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast p2, Ljs3;

    .line 44
    .line 45
    iget-object v4, p2, Ljs3;->a:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v2, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    :goto_0
    move-object v3, p2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    instance-of v2, p2, Lmc0;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    check-cast p2, Lmc0;

    .line 60
    .line 61
    iget-object v2, p2, Lmc0;->a:Lpe1;

    .line 62
    .line 63
    if-ne p0, v2, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    if-nez v3, :cond_7

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    new-instance p0, Lhy0;

    .line 71
    .line 72
    iget-object p1, p1, Lj03;->c:Lw13;

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    sget-object p1, Lw13;->S:Lw13;

    .line 77
    .line 78
    :cond_4
    new-instance p2, Lws2;

    .line 79
    .line 80
    invoke-direct {p2, v0, p1}, Lws2;-><init>(Ljava/lang/Object;Lw13;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p2}, Lhy0;-><init>(Lws2;)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_5
    if-eqz p0, :cond_6

    .line 88
    .line 89
    new-instance p1, Lmc0;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lmc0;-><init>(Lpe1;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_6
    new-instance p0, Ljs3;

    .line 96
    .line 97
    invoke-virtual {p1}, Lj03;->a()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Ljs3;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_7
    return-object v3
.end method
