.class public final synthetic Li8;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lux;
.implements Lk8;
.implements Lxq0;


# instance fields
.field public final synthetic n:Lj8;


# direct methods
.method public synthetic constructor <init>(Lj8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li8;->n:Lj8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ln03;)V
    .locals 8

    .line 1
    iget-object p0, p0, Li8;->n:Lj8;

    .line 2
    .line 3
    sget-object v0, Lw13;->H:Lw13;

    .line 4
    .line 5
    const-string v1, "AnalyticsConnector now available."

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lw13;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ln03;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lg8;

    .line 15
    .line 16
    new-instance v1, Ldh1;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lgw4;

    .line 22
    .line 23
    const/16 v3, 0xe

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct {v2, v3, v4}, Lgw4;-><init>(IZ)V

    .line 27
    .line 28
    .line 29
    const-string v3, "FirebaseCrashlytics"

    .line 30
    .line 31
    const-string v5, "clx"

    .line 32
    .line 33
    check-cast p1, Lh8;

    .line 34
    .line 35
    invoke-virtual {p1, v5, v2}, Lh8;->b(Ljava/lang/String;Lgw4;)Lqv3;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    const-string v5, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    invoke-static {v3, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string v5, "crash"

    .line 55
    .line 56
    invoke-virtual {p1, v5, v2}, Lh8;->b(Ljava/lang/String;Lgw4;)Lqv3;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 63
    .line 64
    invoke-static {v3, p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    if-eqz v5, :cond_3

    .line 68
    .line 69
    const-string p1, "Registered Firebase Analytics listener."

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lw13;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lwu4;

    .line 75
    .line 76
    const/16 v0, 0xb

    .line 77
    .line 78
    invoke-direct {p1, v0, v4}, Lwu4;-><init>(IZ)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Leh;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Leh;-><init>(Ldh1;)V

    .line 84
    .line 85
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v1, p0, Lj8;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    :goto_0
    if-ge v4, v3, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    check-cast v5, Lhj0;

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Lwu4;->c(Lhj0;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iput-object p1, v2, Lgw4;->p:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v0, v2, Lgw4;->o:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object p1, p0, Lj8;->c:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v0, p0, Lj8;->b:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 121
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p1

    .line 123
    :cond_3
    const-string p0, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 124
    .line 125
    invoke-virtual {v0, p0, v6}, Lw13;->n(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public c(Lhj0;)V
    .locals 1

    .line 1
    iget-object p0, p0, Li8;->n:Lj8;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lj8;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lux;

    .line 7
    .line 8
    instance-of v0, v0, Llu0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lj8;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lj8;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lux;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lux;->c(Lhj0;)V

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Li8;->n:Lj8;

    .line 2
    .line 3
    iget-object p0, p0, Lj8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lk8;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lk8;->j(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
