.class public final synthetic Lr61;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lwt3;
.implements Leh0;


# instance fields
.field public final synthetic n:Ls61;


# direct methods
.method public synthetic constructor <init>(Ls61;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr61;->n:Ls61;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public then(Low3;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lr61;->n:Ls61;

    .line 2
    .line 3
    invoke-virtual {p1}, Low3;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Ls61;->c:Lyc0;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {v1}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lyc0;->c:Lef5;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    iget-object v1, v0, Lyc0;->b:Lkd0;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_1
    iget-object v0, v1, Lkd0;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, v1, Lkd0;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v1

    .line 31
    invoke-virtual {p1}, Low3;->g()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lad0;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object v1, p1, Lad0;->d:Lorg/json/JSONArray;

    .line 41
    .line 42
    const-string v2, "FirebaseRemoteConfig"

    .line 43
    .line 44
    iget-object v3, p0, Ls61;->a:La61;

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    :try_start_2
    invoke-static {v1}, Ls61;->f(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, La61;->c(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lm2; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    const-string v3, "Could not update ABT experiments."

    .line 62
    .line 63
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    const-string v3, "Could not parse ABT experiments from the JSON response."

    .line 68
    .line 69
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_2
    iget-object p0, p0, Ls61;->j:Lqd1;

    .line 73
    .line 74
    :try_start_3
    iget-object v1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lxh1;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lxh1;->o(Lad0;)Lxo;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Ljava/util/Set;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lkj0;

    .line 101
    .line 102
    iget-object v3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 105
    .line 106
    new-instance v4, Lba3;

    .line 107
    .line 108
    invoke-direct {v4, v2, p1, v0}, Lba3;-><init>(Lkj0;Lxo;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lu61; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_2
    move-exception p0

    .line 116
    const-string p1, "FirebaseRemoteConfig"

    .line 117
    .line 118
    const-string v1, "Exception publishing RolloutsState to subscribers. Continuing to listen for changes."

    .line 119
    .line 120
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_1
    const-string p0, "FirebaseRemoteConfig"

    .line 125
    .line 126
    const-string p1, "Activated configs written to disk are null."

    .line 127
    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    throw p0

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    throw p0

    .line 138
    :cond_2
    const/4 v0, 0x0

    .line 139
    :cond_3
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method public then(Ljava/lang/Object;)Low3;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    .line 144
    iget-object p0, p0, Lr61;->n:Ls61;

    invoke-virtual {p0}, Ls61;->a()Lef5;

    move-result-object p0

    return-object p0
.end method
