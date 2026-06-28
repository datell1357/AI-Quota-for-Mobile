.class public final Lc95;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ln05;

.field public final synthetic p:Lj95;


# direct methods
.method public synthetic constructor <init>(Lj95;Ln05;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc95;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lc95;->o:Ln05;

    .line 4
    .line 5
    iput-object p1, p0, Lc95;->p:Lj95;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lc95;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc95;->p:Lj95;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iput-boolean v1, v0, Lj95;->a:Z

    .line 11
    .line 12
    iget-object v1, v0, Lj95;->c:Lo95;

    .line 13
    .line 14
    invoke-virtual {v1}, Lo95;->M()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lr45;

    .line 23
    .line 24
    iget-object v2, v2, Lr45;->f:La25;

    .line 25
    .line 26
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v2, La25;->m:Lx15;

    .line 30
    .line 31
    const-string v3, "Connected to remote service"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lc95;->o:Ln05;

    .line 37
    .line 38
    invoke-virtual {v1}, Laz4;->v()V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lo95;->d:Ln05;

    .line 45
    .line 46
    invoke-virtual {v1}, Lo95;->I()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lo95;->K()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object p0, p0, Lc95;->p:Lj95;

    .line 57
    .line 58
    iget-object p0, p0, Lj95;->c:Lo95;

    .line 59
    .line 60
    iget-object v0, p0, Lo95;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lo95;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lc95;->p:Lj95;

    .line 74
    .line 75
    monitor-enter v0

    .line 76
    :try_start_2
    iput-boolean v1, v0, Lj95;->a:Z

    .line 77
    .line 78
    iget-object v1, v0, Lj95;->c:Lo95;

    .line 79
    .line 80
    invoke-virtual {v1}, Lo95;->M()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lr45;

    .line 89
    .line 90
    iget-object v2, v2, Lr45;->f:La25;

    .line 91
    .line 92
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v2, La25;->n:Lx15;

    .line 96
    .line 97
    const-string v3, "Connected to service"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lc95;->o:Ln05;

    .line 103
    .line 104
    invoke-virtual {v1}, Laz4;->v()V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iput-object p0, v1, Lo95;->d:Ln05;

    .line 111
    .line 112
    invoke-virtual {v1}, Lo95;->I()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lo95;->K()V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    :goto_2
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    throw p0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
