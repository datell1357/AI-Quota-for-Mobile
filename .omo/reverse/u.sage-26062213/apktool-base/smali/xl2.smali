.class public abstract Lxl2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "NetworkStateTracker"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lxl2;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Landroid/net/ConnectivityManager;Z)Lwl2;
    .locals 9

    .line 1
    sget-object v1, Lxl2;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v5, v3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    move-object p0, v0

    .line 24
    move v7, p1

    .line 25
    goto :goto_6

    .line 26
    :cond_0
    move v5, v3

    .line 27
    move v3, v4

    .line 28
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    goto :goto_3

    .line 45
    :catch_1
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    move v0, v4

    .line 48
    goto :goto_3

    .line 49
    :goto_2
    :try_start_3
    invoke-static {}, Lt72;->g()Lt72;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "Unable to validate active network"

    .line 54
    .line 55
    invoke-virtual {v6, v1, v7, v0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 60
    .line 61
    .line 62
    move-result p0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    :try_start_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 66
    .line 67
    .line 68
    move-result v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    move v6, v5

    .line 72
    goto :goto_4

    .line 73
    :cond_2
    move v6, v4

    .line 74
    :goto_4
    :try_start_5
    new-instance v2, Lwl2;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 75
    .line 76
    move v5, p0

    .line 77
    move v7, p1

    .line 78
    move v4, v0

    .line 79
    :try_start_6
    invoke-direct/range {v2 .. v7}, Lwl2;-><init>(ZZZZZ)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :catch_2
    move-exception v0

    .line 84
    :goto_5
    move-object p0, v0

    .line 85
    goto :goto_6

    .line 86
    :catch_3
    move-exception v0

    .line 87
    move v7, p1

    .line 88
    goto :goto_5

    .line 89
    :goto_6
    invoke-static {}, Lt72;->g()Lt72;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v0, "Unable to get active network state"

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0, p0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lwl2;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    move v8, v7

    .line 102
    const/4 v7, 0x1

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-direct/range {v3 .. v8}, Lwl2;-><init>(ZZZZZ)V

    .line 106
    .line 107
    .line 108
    return-object v3
.end method
