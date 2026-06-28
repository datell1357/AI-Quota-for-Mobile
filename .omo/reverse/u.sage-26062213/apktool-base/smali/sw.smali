.class public final Lsw;
.super Lg0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final s:Ljava/lang/Thread;

.field public final t:Ll21;


# direct methods
.method public constructor <init>(Lhi0;Ljava/lang/Thread;Ll21;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lg0;-><init>(Lhi0;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lsw;->s:Ljava/lang/Thread;

    .line 6
    .line 7
    iput-object p3, p0, Lsw;->t:Ll21;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lsw;->s:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-static {p1, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
