.class public final Lsb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public volatile a:Lva5;

.field public b:Lqb5;


# virtual methods
.method public final a(Lo75;)Lqb5;
    .locals 7

    .line 1
    iget-object v0, p0, Lsb5;->a:Lva5;

    .line 2
    .line 3
    sget-object v1, Lqb5;->j:Lva5;

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    sget-object v2, Lqb5;->i:Lps0;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Lep1;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iput-boolean v4, v3, Lep1;->n:Z

    .line 19
    .line 20
    iget-object v4, v2, Lps0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    iget-object v5, p1, Lo75;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Lva5;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-instance v6, Lmb5;

    .line 29
    .line 30
    invoke-direct {v6, p1, v0, v3}, Lmb5;-><init>(Lo75;Lva5;Lep1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lxa5;

    .line 38
    .line 39
    iget-boolean v3, v3, Lep1;->n:Z

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Lo75;->b:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v3, Lgt4;

    .line 46
    .line 47
    const/16 v4, 0xb

    .line 48
    .line 49
    invoke-direct {v3, v4, v2}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v2, Lnc5;->a:Lgt4;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    const-class v2, Lnc5;

    .line 57
    .line 58
    monitor-enter v2

    .line 59
    :try_start_0
    sget-object v4, Lnc5;->a:Lgt4;

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "com.google.android.gms"

    .line 68
    .line 69
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastT()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    new-instance v4, Lnc5;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v5, Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v6, "com.google.android.gms.phenotype.UPDATE"

    .line 89
    .line 90
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v4, v5}, Ldd4;->b(Landroid/content/Context;Lnc5;Landroid/content/IntentFilter;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    new-instance v4, Lnc5;

    .line 100
    .line 101
    invoke-direct {v4}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v5, Landroid/content/IntentFilter;

    .line 105
    .line 106
    const-string v6, "com.google.android.gms.phenotype.UPDATE"

    .line 107
    .line 108
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    sput-object v3, Lnc5;->a:Lgt4;

    .line 115
    .line 116
    :cond_2
    monitor-exit v2

    .line 117
    goto :goto_2

    .line 118
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0

    .line 120
    :cond_3
    :goto_2
    iget-object p1, v0, Lxa5;->a:Lqb5;

    .line 121
    .line 122
    iput-object p1, p0, Lsb5;->b:Lqb5;

    .line 123
    .line 124
    iput-object v1, p0, Lsb5;->a:Lva5;

    .line 125
    .line 126
    :cond_4
    iget-object p0, p0, Lsb5;->b:Lqb5;

    .line 127
    .line 128
    return-object p0
.end method
