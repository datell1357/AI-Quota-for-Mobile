.class public final Lmq1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmq1;->a:I

    .line 10
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 11
    iput-object p1, p0, Lmq1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyl2;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lmq1;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lmq1;->b:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lmq1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lmq1;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lyl2;

    .line 16
    .line 17
    iget-object v0, v0, Lyl2;->f:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lt72;->g()Lt72;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Lxl2;->a:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Network blocked status changed: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lmq1;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lyl2;

    .line 55
    .line 56
    iget-object v0, p1, Lcf0;->d:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1}, Lyl2;->c()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_0
    check-cast v0, Lwl2;

    .line 65
    .line 66
    iget-object p1, p0, Lmq1;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lyl2;

    .line 69
    .line 70
    iget-object v1, p1, Lyl2;->g:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v2, p1, Lyl2;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    if-ne v2, p2, :cond_1

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    iput-boolean p2, p1, Lyl2;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    monitor-exit v1

    .line 82
    iget-object p0, p0, Lmq1;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lyl2;

    .line 85
    .line 86
    iget-boolean v2, v0, Lwl2;->a:Z

    .line 87
    .line 88
    iget-boolean v3, v0, Lwl2;->b:Z

    .line 89
    .line 90
    iget-boolean v4, v0, Lwl2;->c:Z

    .line 91
    .line 92
    iget-boolean v5, v0, Lwl2;->d:Z

    .line 93
    .line 94
    new-instance v1, Lwl2;

    .line 95
    .line 96
    move v6, p2

    .line 97
    invoke-direct/range {v1 .. v6}, Lwl2;-><init>(ZZZZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcf0;->d(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    monitor-exit v1

    .line 107
    throw p0

    .line 108
    :cond_2
    :goto_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    iget v0, p0, Lmq1;->a:I

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
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lt72;->g()Lt72;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lxl2;->a:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Network capabilities changed: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, v0, p2}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lmq1;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lyl2;

    .line 38
    .line 39
    iget-object p1, p0, Lyl2;->f:Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    iget-boolean p2, p0, Lyl2;->h:Z

    .line 42
    .line 43
    invoke-static {p1, p2}, Lxl2;->a(Landroid/net/ConnectivityManager;Z)Lwl2;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcf0;->d(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    invoke-static {}, Lt72;->g()Lt72;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object p2, Lsf4;->a:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lmq1;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lm;

    .line 65
    .line 66
    sget-object p1, Lqf0;->a:Lqf0;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lm;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 6

    .line 1
    iget v0, p0, Lmq1;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lmq1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lt72;->g()Lt72;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lxl2;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Network connection lost"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p0, Lyl2;

    .line 23
    .line 24
    new-instance v0, Lwl2;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct/range {v0 .. v5}, Lwl2;-><init>(ZZZZZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    invoke-static {}, Lt72;->g()Lt72;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object v0, Lsf4;->a:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "NetworkRequestConstraintController onLost callback"

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast p0, Lm;

    .line 50
    .line 51
    new-instance p1, Lrf0;

    .line 52
    .line 53
    const/4 v0, 0x7

    .line 54
    invoke-direct {p1, v0}, Lrf0;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lm;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
