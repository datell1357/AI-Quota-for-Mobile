.class public final synthetic Lhe5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lhe5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhe5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lhe5;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lhe5;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget v0, p0, Lhe5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lhe5;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lce5;

    .line 9
    .line 10
    iget-object v0, p0, Lhe5;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lic5;

    .line 13
    .line 14
    iget-object p0, p0, Lhe5;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iget-object p1, p1, Lce5;->c:Lbo;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Lbo;->k(Lic5;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lhe5;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lbo;

    .line 28
    .line 29
    iget-object v1, p0, Lhe5;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lh2;

    .line 32
    .line 33
    iget-object p0, p0, Lhe5;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lh2;

    .line 36
    .line 37
    invoke-static {v1}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {p0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {p1}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Lic5;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {p1, v1, v0, p0}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget v1, Lvf5;->a:I

    .line 63
    .line 64
    invoke-static {}, Lye5;->a()Lrf5;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lic5;

    .line 69
    .line 70
    const/4 v3, 0x4

    .line 71
    invoke-direct {v2, v3, v1, p1}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v0, Lbo;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lfi3;

    .line 77
    .line 78
    invoke-static {p0, v2, p1}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget-object p1, v0, Lbo;->i:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p1

    .line 85
    :try_start_0
    monitor-exit p1

    .line 86
    :goto_0
    return-object p0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
