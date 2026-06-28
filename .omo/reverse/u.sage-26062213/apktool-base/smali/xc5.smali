.class public final Lxc5;
.super Lf95;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lxc5;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Lxc5;->p:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Lf95;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lxc5;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lxc5;->p:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lff5;

    .line 11
    .line 12
    iget-object p0, p0, Lff5;->a:Ltf5;

    .line 13
    .line 14
    iget-object v0, p0, Ltf5;->b:Lsg0;

    .line 15
    .line 16
    const-string v3, "unlinkToDeath"

    .line 17
    .line 18
    new-array v4, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Ltf5;->m:Lbz4;

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v3, p0, Ltf5;->j:Ljb5;

    .line 30
    .line 31
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Ltf5;->m:Lbz4;

    .line 35
    .line 36
    iput-boolean v2, p0, Ltf5;->g:Z

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lxc5;->p:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ltf5;

    .line 42
    .line 43
    iget-object v0, v0, Ltf5;->f:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v3, p0, Lxc5;->p:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ltf5;

    .line 49
    .line 50
    iget-object v3, v3, Ltf5;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lxc5;->p:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Ltf5;

    .line 61
    .line 62
    iget-object v3, v3, Ltf5;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-gtz v3, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lxc5;->p:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ltf5;

    .line 74
    .line 75
    iget-object p0, p0, Ltf5;->b:Lsg0;

    .line 76
    .line 77
    const-string v1, "Leaving the connection open for other ongoing calls."

    .line 78
    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    :goto_0
    iget-object v3, p0, Lxc5;->p:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Ltf5;

    .line 91
    .line 92
    iget-object v4, v3, Ltf5;->m:Lbz4;

    .line 93
    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    iget-object v3, v3, Ltf5;->b:Lsg0;

    .line 97
    .line 98
    const-string v4, "Unbind from service."

    .line 99
    .line 100
    new-array v5, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {v3, v4, v5}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lxc5;->p:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Ltf5;

    .line 108
    .line 109
    iget-object v4, v3, Ltf5;->a:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v3, v3, Ltf5;->l:Lff5;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lxc5;->p:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, Ltf5;

    .line 119
    .line 120
    iput-boolean v2, v3, Ltf5;->g:Z

    .line 121
    .line 122
    iput-object v1, v3, Ltf5;->m:Lbz4;

    .line 123
    .line 124
    iput-object v1, v3, Ltf5;->l:Lff5;

    .line 125
    .line 126
    :cond_2
    iget-object p0, p0, Lxc5;->p:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Ltf5;

    .line 129
    .line 130
    invoke-virtual {p0}, Ltf5;->d()V

    .line 131
    .line 132
    .line 133
    monitor-exit v0

    .line 134
    :goto_1
    return-void

    .line 135
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
