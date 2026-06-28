.class public final Lc74;
.super Ly73;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyp3;


# instance fields
.field public final o:Lpb2;

.field public final p:J


# direct methods
.method public constructor <init>(Lpb2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc74;->o:Lpb2;

    .line 5
    .line 6
    iput-wide p2, p0, Lc74;->p:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a0()Lfz;
    .locals 1

    .line 1
    new-instance v0, Ld23;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ld23;-><init>(Lyp3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc74;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g()Lmz3;
    .locals 0

    .line 1
    sget-object p0, Lmz3;->d:Llz3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lpb2;
    .locals 0

    .line 1
    iget-object p0, p0, Lc74;->o:Lpb2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(JLsy;)J
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string p1, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
