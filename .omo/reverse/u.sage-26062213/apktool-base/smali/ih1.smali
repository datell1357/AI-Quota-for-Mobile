.class public final Lih1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lih1;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lih1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lih1;->p:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lih1;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    instance-of v0, p1, Lwg4;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lih1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lv42;

    .line 15
    .line 16
    check-cast p1, Lwg4;

    .line 17
    .line 18
    iget p1, p1, Lwg4;->n:I

    .line 19
    .line 20
    iget-object v0, v0, Lv42;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/16 v1, -0x100

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lih1;->p:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 33
    .line 34
    .line 35
    sget-object p0, Lt64;->a:Lt64;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lih1;->o:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljd3;

    .line 47
    .line 48
    iget-object p0, p0, Lih1;->p:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljd3;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 62
    .line 63
    iget-object p1, p0, Lih1;->o:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lmu0;

    .line 66
    .line 67
    iget-object v1, p1, Lmu0;->b:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object p0, p0, Lih1;->p:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lo20;

    .line 72
    .line 73
    monitor-enter v1

    .line 74
    :try_start_0
    iget-object p1, p1, Lmu0;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    monitor-exit v1

    .line 82
    sget-object p0, Lt64;->a:Lt64;

    .line 83
    .line 84
    return-object p0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object p0, v0

    .line 87
    monitor-exit v1

    .line 88
    throw p0

    .line 89
    :pswitch_2
    move-object v5, p1

    .line 90
    check-cast v5, Luo3;

    .line 91
    .line 92
    sget-object p1, Lwo3;->c:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p1

    .line 95
    :try_start_1
    sget-wide v3, Lwo3;->e:J

    .line 96
    .line 97
    const-wide/16 v0, 0x1

    .line 98
    .line 99
    add-long/2addr v0, v3

    .line 100
    sput-wide v0, Lwo3;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    monitor-exit p1

    .line 103
    iget-object p1, p0, Lih1;->o:Ljava/lang/Object;

    .line 104
    .line 105
    move-object v6, p1

    .line 106
    check-cast v6, Lpe1;

    .line 107
    .line 108
    iget-object p0, p0, Lih1;->p:Ljava/lang/Object;

    .line 109
    .line 110
    move-object v7, p0

    .line 111
    check-cast v7, Lpe1;

    .line 112
    .line 113
    new-instance v2, Log2;

    .line 114
    .line 115
    invoke-direct/range {v2 .. v7}, Log2;-><init>(JLuo3;Lpe1;Lpe1;)V

    .line 116
    .line 117
    .line 118
    return-object v2

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    move-object p0, v0

    .line 121
    monitor-exit p1

    .line 122
    throw p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
