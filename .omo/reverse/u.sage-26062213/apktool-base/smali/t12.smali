.class public final Lt12;
.super Lir3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final s:Ldh0;


# direct methods
.method public constructor <init>(Lhi0;Ldf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lg0;-><init>(Lhi0;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p0, p2}, Ldm0;->s(Ldh0;Ldh0;Ldf1;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lt12;->s:Ldh0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt12;->s:Ldh0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lt64;->a:Lt64;

    .line 8
    .line 9
    invoke-static {v0, v1}, Ltu0;->a(Ldh0;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    instance-of v1, v0, Lru0;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lru0;

    .line 19
    .line 20
    iget-object v0, v0, Lru0;->n:Ljava/lang/Throwable;

    .line 21
    .line 22
    :cond_0
    invoke-static {v0}, Lgg4;->q(Ljava/lang/Throwable;)Lf83;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lg0;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
