.class public final Lgh2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln20;
.implements Ljc4;


# instance fields
.field public final n:Lo20;

.field public final synthetic o:Lhh2;


# direct methods
.method public constructor <init>(Lhh2;Lo20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgh2;->o:Lhh2;

    .line 5
    .line 6
    iput-object p2, p0, Lgh2;->n:Lo20;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lrg3;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lo20;->a(Lrg3;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 2
    .line 3
    iget-object p0, p0, Lo20;->r:Lhi0;

    .line 4
    .line 5
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Ljava/lang/Object;Lff1;)V
    .locals 3

    .line 1
    check-cast p1, Lt64;

    .line 2
    .line 3
    sget-object p2, Lhh2;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lgh2;->o:Lhh2;

    .line 7
    .line 8
    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lv;

    .line 12
    .line 13
    const/16 v0, 0x12

    .line 14
    .line 15
    invoke-direct {p2, v0, v1, p0}, Lv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 19
    .line 20
    iget v0, p0, Lvu0;->p:I

    .line 21
    .line 22
    new-instance v1, Lmn0;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-direct {v1, v2, p2}, Lmn0;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lo20;->G(Ljava/lang/Object;ILff1;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final i(Ljava/lang/Object;Lff1;)Lsg0;
    .locals 1

    .line 1
    check-cast p1, Lt64;

    .line 2
    .line 3
    new-instance p2, Lmn0;

    .line 4
    .line 5
    iget-object v0, p0, Lgh2;->o:Lhh2;

    .line 6
    .line 7
    invoke-direct {p2, v0, p0}, Lmn0;-><init>(Lhh2;Lgh2;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lo20;->J(Ljava/lang/Object;Lff1;)Lsg0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lhh2;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p0
.end method

.method public final l(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo20;->l(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lgh2;->n:Lo20;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo20;->r(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
