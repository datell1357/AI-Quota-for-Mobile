.class public final Lhc1;
.super Ljc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lwu4;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lg6;

.field public final synthetic d:Lf6;

.field public final synthetic e:Llc1;


# direct methods
.method public constructor <init>(Llc1;Lwu4;Ljava/util/concurrent/atomic/AtomicReference;Lg6;Lf6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhc1;->e:Llc1;

    .line 5
    .line 6
    iput-object p2, p0, Lhc1;->a:Lwu4;

    .line 7
    .line 8
    iput-object p3, p0, Lhc1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lhc1;->c:Lg6;

    .line 11
    .line 12
    iput-object p5, p0, Lhc1;->d:Lf6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhc1;->e:Llc1;

    .line 2
    .line 3
    invoke-virtual {v0}, Llc1;->generateActivityResultKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lhc1;->a:Lwu4;

    .line 8
    .line 9
    iget v3, v2, Lwu4;->n:I

    .line 10
    .line 11
    packed-switch v3, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v2, v2, Lwu4;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lp6;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    iget-object v2, v2, Lwu4;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Llc1;

    .line 22
    .line 23
    iget-object v3, v2, Llc1;->mHost:Lvc1;

    .line 24
    .line 25
    instance-of v4, v3, Lt6;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    check-cast v3, Lt6;

    .line 30
    .line 31
    invoke-interface {v3}, Lt6;->getActivityResultRegistry()Lp6;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2}, Llc1;->requireActivity()Lqc1;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lu90;->getActivityResultRegistry()Lp6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    iget-object v3, p0, Lhc1;->c:Lg6;

    .line 45
    .line 46
    iget-object v4, p0, Lhc1;->d:Lf6;

    .line 47
    .line 48
    invoke-virtual {v2, v1, v0, v3, v4}, Lp6;->d(Ljava/lang/String;Lp22;Lg6;Lf6;)Lo6;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p0, p0, Lhc1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
