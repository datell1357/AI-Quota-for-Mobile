.class public final Lm35;
.super Ls82;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic g:Lw35;


# direct methods
.method public constructor <init>(Lw35;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm35;->g:Lw35;

    .line 2
    .line 3
    const/16 p1, 0x14

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ls82;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lm35;->g:Lw35;

    .line 7
    .line 8
    invoke-virtual {p0}, Lab5;->w()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lta5;->b:Lpb5;

    .line 15
    .line 16
    iget-object v0, v0, Lpb5;->c:Lat4;

    .line 17
    .line 18
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lat4;->D0(Ljava/lang/String;)Lui3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lr45;

    .line 32
    .line 33
    iget-object v1, v1, Lr45;->f:La25;

    .line 34
    .line 35
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, La25;->n:Lx15;

    .line 39
    .line 40
    const-string v2, "Populate EES config from database on cache miss. appId"

    .line 41
    .line 42
    invoke-virtual {v1, p1, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lui3;->o:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, [B

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lw35;->E(Ljava/lang/String;[B)Ln15;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, p1, v0}, Lw35;->D(Ljava/lang/String;Ln15;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lw35;->k:Lm35;

    .line 57
    .line 58
    iget-object v0, p0, Ls82;->c:Lqz0;

    .line 59
    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    iget-object v2, p0, Ls82;->b:Lyl0;

    .line 64
    .line 65
    iget-object v2, v2, Lyl0;->a:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Ls82;->b:Lyl0;

    .line 82
    .line 83
    iget-object p0, p0, Lyl0;->a:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast p0, Ljava/lang/Iterable;

    .line 93
    .line 94
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    monitor-exit v0

    .line 125
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lmv4;

    .line 130
    .line 131
    return-object p0

    .line 132
    :goto_1
    monitor-exit v0

    .line 133
    throw p0
.end method
