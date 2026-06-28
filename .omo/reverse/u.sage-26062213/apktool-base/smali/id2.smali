.class public final Lid2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lid2;->a:I

    iput-object p2, p0, Lid2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo55;Lbu4;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    iput p2, p0, Lid2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lid2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lid2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lid2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lpc4;

    .line 10
    .line 11
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lce5;

    .line 14
    .line 15
    iget-object v0, v0, Lce5;->g:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iput-object v1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :pswitch_0
    iget-object p0, p0, Lid2;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lo55;

    .line 28
    .line 29
    iget-object v0, p0, Lo55;->c:Lpb5;

    .line 30
    .line 31
    invoke-virtual {v0}, Lpb5;->V()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lo55;->c:Lpb5;

    .line 35
    .line 36
    iget-object p0, p0, Lpb5;->h:Li25;

    .line 37
    .line 38
    invoke-static {p0}, Lpb5;->T(Lab5;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lib0;->v()V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "Unexpected call on client side"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :pswitch_1
    iget-object p0, p0, Lid2;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lw35;

    .line 55
    .line 56
    new-instance v0, Lp65;

    .line 57
    .line 58
    iget-object p0, p0, Lw35;->l:Lgt4;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lp65;-><init>(Lgt4;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_2
    iget-object p0, p0, Lid2;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lej;

    .line 67
    .line 68
    iget-object v0, p0, Lej;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    .line 73
    .line 74
    const/16 v0, 0xa

    .line 75
    .line 76
    :try_start_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lej;->s:Lfj;

    .line 80
    .line 81
    invoke-virtual {v0}, Lfj;->onLoadInBackground()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lej;->a(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    :try_start_2
    iget-object v3, p0, Lej;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    .line 97
    .line 98
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    :catchall_2
    move-exception v0

    .line 100
    invoke-virtual {p0, v1}, Lej;->a(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
