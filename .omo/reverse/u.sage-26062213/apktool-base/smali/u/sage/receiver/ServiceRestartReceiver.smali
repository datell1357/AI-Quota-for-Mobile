.class public final Lu/sage/receiver/ServiceRestartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Object;

.field public c:Lv50;

.field public d:Lyh0;

.field public e:Lpf;

.field public f:Ljg1;

.field public g:Li70;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lu/sage/receiver/ServiceRestartReceiver;->a:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lu/sage/receiver/ServiceRestartReceiver;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lu/sage/receiver/ServiceRestartReceiver;->a:Z

    .line 2
    .line 3
    if-nez p2, :cond_2

    .line 4
    .line 5
    iget-object p2, p0, Lu/sage/receiver/ServiceRestartReceiver;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lu/sage/receiver/ServiceRestartReceiver;->a:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lk30;->t(Landroid/content/Context;)Landroid/app/Application;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v0, p1, Log1;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Log1;

    .line 29
    .line 30
    invoke-interface {p1}, Log1;->a()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lxi3;

    .line 35
    .line 36
    check-cast p1, Lvl0;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lvl0;->a(Lu/sage/receiver/ServiceRestartReceiver;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lu/sage/receiver/ServiceRestartReceiver;->a:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Hilt BroadcastReceiver must be attached to an @HiltAndroidApp Application. Found: "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_1
    :goto_0
    monitor-exit p2

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_2
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Lu/sage/receiver/ServiceRestartReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 23
    .line 24
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget-object v0, Lez3;->a:Lra3;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lf61;->a()Lf61;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "ServiceRestartReceiver triggered by "

    .line 47
    .line 48
    invoke-static {v1, p2}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object v0, v0, Lf61;->a:Lij0;

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iget-wide v3, v0, Lij0;->d:J

    .line 59
    .line 60
    sub-long/2addr v1, v3

    .line 61
    iget-object v3, v0, Lij0;->o:Leh;

    .line 62
    .line 63
    iget-object v3, v3, Leh;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Lqk0;

    .line 66
    .line 67
    new-instance v4, Lfj0;

    .line 68
    .line 69
    invoke-direct {v4, v0, v1, v2, p2}, Lfj0;-><init>(Lij0;JLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lqk0;->b(Ljava/util/concurrent/Callable;)Lef5;

    .line 73
    .line 74
    .line 75
    sget-object p2, Lzu0;->a:Lzp0;

    .line 76
    .line 77
    sget-object p2, Llp0;->p:Llp0;

    .line 78
    .line 79
    invoke-static {}, Lk30;->f()Lbu3;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {p2, v0}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lp10;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-direct {v1, p1, v2}, Lp10;-><init>(Landroid/content/Context;Ldh0;)V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    invoke-static {v0, v2, v2, v1, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Lk30;->f()Lbu3;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p2}, Ldm0;->c(Lhi0;)Lbh0;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    new-instance v1, Lwi3;

    .line 124
    .line 125
    invoke-direct {v1, v0, p0, p1, v2}, Lwi3;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Lu/sage/receiver/ServiceRestartReceiver;Landroid/content/Context;Ldh0;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p2, v2, v2, v1, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 129
    .line 130
    .line 131
    return-void
.end method
