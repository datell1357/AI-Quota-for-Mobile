.class public final Ls22;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lx63;
.implements Lop0;


# instance fields
.field public final n:Lh22;

.field public final o:Ltu1;


# direct methods
.method public constructor <init>(Lh22;Ltu1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls22;->n:Lh22;

    .line 5
    .line 6
    iput-object p2, p0, Ls22;->o:Ltu1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ln23;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ls22;->n:Lh22;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lk30;->j(Lh22;Lfh0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lri0;->n:Lri0;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls22;->n:Lh22;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls22;->n:Lh22;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lh22;->a(Lo22;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z(Lp22;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ls22;->o:Ltu1;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
