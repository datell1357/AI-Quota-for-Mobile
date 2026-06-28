.class public final Lf45;
.super Ljava/util/concurrent/FutureTask;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final n:J

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final synthetic q:Lj45;


# direct methods
.method public constructor <init>(Lj45;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    .line 49
    iput-object p1, p0, Lf45;->q:Lj45;

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 51
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p2, Lj45;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lf45;->n:J

    iput-object p4, p0, Lf45;->p:Ljava/lang/String;

    iput-boolean p3, p0, Lf45;->o:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p0, v0, p2

    if-nez p0, :cond_0

    iget-object p0, p1, Lib0;->a:Ljava/lang/Object;

    check-cast p0, Lr45;

    .line 54
    iget-object p0, p0, Lr45;->f:La25;

    .line 55
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 56
    iget-object p0, p0, La25;->f:Lx15;

    .line 57
    const-string p1, "Tasks index overflow"

    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lj45;Ljava/util/concurrent/Callable;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf45;->q:Lj45;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "Task exception on worker thread"

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lj45;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lf45;->n:J

    .line 18
    .line 19
    iput-object p2, p0, Lf45;->p:Ljava/lang/String;

    .line 20
    .line 21
    iput-boolean p3, p0, Lf45;->o:Z

    .line 22
    .line 23
    const-wide p2, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long p0, v0, p2

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    iget-object p0, p1, Lib0;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lr45;

    .line 35
    .line 36
    iget-object p0, p0, Lr45;->f:La25;

    .line 37
    .line 38
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, La25;->f:Lx15;

    .line 42
    .line 43
    const-string p1, "Tasks index overflow"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lf45;

    .line 2
    .line 3
    iget-boolean v0, p1, Lf45;->o:Z

    .line 4
    .line 5
    iget-boolean v1, p0, Lf45;->o:Z

    .line 6
    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p1, Lf45;->n:J

    .line 13
    .line 14
    iget-wide v2, p0, Lf45;->n:J

    .line 15
    .line 16
    cmp-long p1, v2, v0

    .line 17
    .line 18
    if-gez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_2
    if-lez p1, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_3
    iget-object p0, p0, Lf45;->q:Lj45;

    .line 27
    .line 28
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lr45;

    .line 31
    .line 32
    iget-object p0, p0, Lr45;->f:La25;

    .line 33
    .line 34
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, La25;->g:Lx15;

    .line 38
    .line 39
    const-string p1, "Two tasks share the same index. index"

    .line 40
    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf45;->q:Lj45;

    .line 2
    .line 3
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lr45;

    .line 6
    .line 7
    iget-object v0, v0, Lr45;->f:La25;

    .line 8
    .line 9
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, La25;->f:Lx15;

    .line 13
    .line 14
    iget-object v1, p0, Lf45;->p:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
