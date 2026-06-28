.class public final synthetic Lt75;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcu3;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lcu3;


# direct methods
.method public synthetic constructor <init>(Lcu3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt75;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lt75;->o:Lcu3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lt75;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lt75;->o:Lcu3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcu3;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lwd2;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lgy4;->c:Lgy4;

    .line 18
    .line 19
    new-instance v1, La34;

    .line 20
    .line 21
    invoke-direct {v1, v0}, La34;-><init>(Ljava/util/concurrent/Callable;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lwd2;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    const-wide/16 v2, 0x2710

    .line 27
    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-interface {p0, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Lud2;

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Lud2;-><init>(Ls0;Ljava/util/concurrent/ScheduledFuture;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lo75;->j:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p0}, Lcu3;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcr2;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcr2;->c()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Loc5;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
