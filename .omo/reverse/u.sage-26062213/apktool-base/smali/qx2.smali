.class public final Lqx2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ldd1;

.field public final c:Lpe1;

.field public final d:Lqi0;

.field public final e:Ljava/lang/Object;

.field public volatile f:Lpx2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldd1;Lpe1;Lqi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqx2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lqx2;->b:Ldd1;

    .line 7
    .line 8
    iput-object p3, p0, Lqx2;->c:Lpe1;

    .line 9
    .line 10
    iput-object p4, p0, Lqx2;->d:Lqi0;

    .line 11
    .line 12
    new-instance p1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lqx2;->e:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkx1;)Lpx2;
    .locals 7

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lqx2;->f:Lpx2;

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, Lqx2;->e:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p2

    .line 16
    :try_start_0
    iget-object v0, p0, Lqx2;->f:Lpx2;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lqx2;->b:Ldd1;

    .line 25
    .line 26
    iget-object v1, p0, Lqx2;->c:Lpe1;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/List;

    .line 36
    .line 37
    iget-object v2, p0, Lqx2;->d:Lqi0;

    .line 38
    .line 39
    new-instance v3, Lh4;

    .line 40
    .line 41
    const/16 v4, 0x19

    .line 42
    .line 43
    invoke-direct {v3, v4, p1, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lk51;

    .line 50
    .line 51
    sget-object v4, Lmj1;->d0:Lmj1;

    .line 52
    .line 53
    new-instance v5, Lcc;

    .line 54
    .line 55
    const/16 v6, 0x18

    .line 56
    .line 57
    invoke-direct {v5, v6, v3}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Lt3;

    .line 61
    .line 62
    const/16 v6, 0x15

    .line 63
    .line 64
    invoke-direct {v3, v6}, Lt3;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v4, v3, v5}, Lk51;-><init>(Loi3;Lpe1;Lne1;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lpx2;

    .line 71
    .line 72
    const/16 v4, 0xf

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lqz0;

    .line 78
    .line 79
    invoke-direct {v0, v4}, Lqz0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    :goto_0
    new-instance v5, Ln;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-direct {v5, v1, v6, v4}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v4, Lfn0;

    .line 93
    .line 94
    invoke-direct {v4, p1, v1, v0, v2}, Lfn0;-><init>(Lk51;Ljava/util/List;Lyi0;Lqi0;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Lpx2;-><init>(Llm0;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lpx2;

    .line 101
    .line 102
    invoke-direct {p1, v3}, Lpx2;-><init>(Llm0;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lqx2;->f:Lpx2;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_1
    :goto_1
    iget-object p0, p0, Lqx2;->f:Lpx2;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    monitor-exit p2

    .line 116
    return-object p0

    .line 117
    :goto_2
    monitor-exit p2

    .line 118
    throw p0

    .line 119
    :cond_2
    return-object p2
.end method
