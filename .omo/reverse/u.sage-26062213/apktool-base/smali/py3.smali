.class public final Lpy3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Li60;


# instance fields
.field public final synthetic n:Lqd1;

.field public final synthetic o:Lym1;

.field public final synthetic p:Lqy3;


# direct methods
.method public constructor <init>(Lqy3;Lqd1;Lym1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpy3;->p:Lqy3;

    .line 5
    .line 6
    iput-object p2, p0, Lpy3;->n:Lqd1;

    .line 7
    .line 8
    iput-object p3, p0, Lpy3;->o:Lym1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(J)Lt92;
    .locals 8

    .line 1
    iget-object v0, p0, Lpy3;->o:Lym1;

    .line 2
    .line 3
    const-string v1, "Route"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lpy3;->p:Lqy3;

    .line 9
    .line 10
    iget-object v0, v0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lpy3;->p:Lqy3;

    .line 19
    .line 20
    iget-object v0, v0, Lqy3;->n:Lorg/apache/commons/logging/Log;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Get connection: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lpy3;->o:Lym1;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", timeout = "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lpy3;->n:Lqd1;

    .line 50
    .line 51
    iget-object v1, v0, Lqd1;->r:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lsd0;

    .line 55
    .line 56
    iget-object v1, v0, Lqd1;->p:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v3, v1

    .line 59
    check-cast v3, Lym1;

    .line 60
    .line 61
    iget-object v4, v0, Lqd1;->q:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object v0, v0, Lqd1;->o:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v7, v0

    .line 66
    check-cast v7, Lsb0;

    .line 67
    .line 68
    move-wide v5, p1

    .line 69
    invoke-virtual/range {v2 .. v7}, Lsd0;->e(Lym1;Ljava/lang/Object;JLsb0;)Lfv;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Lgv;

    .line 74
    .line 75
    iget-object p0, p0, Lpy3;->p:Lqy3;

    .line 76
    .line 77
    iget-object v0, p1, Lfv;->b:Ldo0;

    .line 78
    .line 79
    invoke-direct {p2, p0, v0}, Lgv;-><init>(Lg60;Lqp2;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p2, Lgv;->s:Lfv;

    .line 83
    .line 84
    const/4 p0, 0x1

    .line 85
    iput-boolean p0, p2, Lgv;->p:Z

    .line 86
    .line 87
    return-object p2
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object p0, p0, Lpy3;->n:Lqd1;

    .line 2
    .line 3
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lsd0;

    .line 6
    .line 7
    iget-object v0, v0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lsb0;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lsb0;->n:Z

    .line 18
    .line 19
    iget-object p0, p0, Lsb0;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Llc4;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iput-boolean v1, p0, Llc4;->c:Z

    .line 26
    .line 27
    iget-object p0, p0, Llc4;->a:Ljava/util/concurrent/locks/Condition;

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
