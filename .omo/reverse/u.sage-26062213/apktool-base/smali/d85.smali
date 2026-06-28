.class public final Ld85;
.super Lf95;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lpw3;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltf5;Lpw3;Lpw3;Ld85;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld85;->o:I

    .line 14
    iput-object p1, p0, Ld85;->r:Ljava/lang/Object;

    iput-object p3, p0, Ld85;->p:Lpw3;

    iput-object p4, p0, Ld85;->q:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lf95;-><init>(Lpw3;)V

    return-void
.end method

.method public constructor <init>(Lwc5;Lpw3;Ljava/lang/String;Lpw3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld85;->o:I

    .line 3
    .line 4
    iput-object p1, p0, Ld85;->r:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Ld85;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p4, p0, Ld85;->p:Lpw3;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lf95;-><init>(Lpw3;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Ld85;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld85;->r:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ltf5;

    .line 9
    .line 10
    iget-object v0, v0, Ltf5;->f:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Ld85;->r:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ltf5;

    .line 16
    .line 17
    iget-object v2, p0, Ld85;->p:Lpw3;

    .line 18
    .line 19
    iget-object v3, v1, Ltf5;->e:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Lpw3;->a:Lef5;

    .line 25
    .line 26
    new-instance v4, Lpc4;

    .line 27
    .line 28
    const/16 v5, 0x15

    .line 29
    .line 30
    invoke-direct {v4, v5, v1, v2}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lef5;->m(Lxo2;)Lef5;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Ld85;->r:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ltf5;

    .line 39
    .line 40
    iget-object v1, v1, Ltf5;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Ld85;->r:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ltf5;

    .line 51
    .line 52
    iget-object v1, v1, Ltf5;->b:Lsg0;

    .line 53
    .line 54
    const-string v2, "Already connected to the service."

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    new-array v3, v3, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Ld85;->r:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ltf5;

    .line 68
    .line 69
    iget-object p0, p0, Ld85;->q:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ld85;

    .line 72
    .line 73
    invoke-static {v1, p0}, Ltf5;->b(Ltf5;Ld85;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0

    .line 80
    :pswitch_0
    iget-object v0, p0, Ld85;->p:Lpw3;

    .line 81
    .line 82
    iget-object v1, p0, Ld85;->r:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lwc5;

    .line 85
    .line 86
    iget-object p0, p0, Ld85;->q:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Ljava/lang/String;

    .line 89
    .line 90
    :try_start_1
    iget-object v2, v1, Lwc5;->a:Ltf5;

    .line 91
    .line 92
    iget-object v2, v2, Ltf5;->m:Lbz4;

    .line 93
    .line 94
    iget-object v3, v1, Lwc5;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1, p0}, Lwc5;->a(Lwc5;Ljava/lang/String;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Lgc5;

    .line 101
    .line 102
    invoke-direct {v5, v1, v0, p0}, Lgc5;-><init>(Lwc5;Lpw3;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2, v3, v4, v5}, Lbz4;->f(Ljava/lang/String;Landroid/os/Bundle;Lgc5;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception v1

    .line 110
    sget-object v2, Lwc5;->e:Lsg0;

    .line 111
    .line 112
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string v3, "requestUpdateInfo(%s)"

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-string v4, "PlayCore"

    .line 122
    .line 123
    const/4 v5, 0x6

    .line 124
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_1

    .line 129
    .line 130
    iget-object v2, v2, Lsg0;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v2, v3, p0}, Lsg0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v4, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 140
    .line 141
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Lpw3;->c(Ljava/lang/Exception;)Z

    .line 145
    .line 146
    .line 147
    :goto_2
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
