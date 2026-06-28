.class public final La52;
.super Lb52;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln22;


# instance fields
.field public final r:Lp22;

.field public final synthetic s:Lc52;


# direct methods
.method public constructor <init>(Lc52;Lp22;Lbo2;)V
    .locals 0

    .line 1
    iput-object p1, p0, La52;->s:Lc52;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Lb52;-><init>(Lc52;Lbo2;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, La52;->r:Lp22;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Lp22;Lf22;)V
    .locals 2

    .line 1
    iget-object p1, p0, La52;->r:Lp22;

    .line 2
    .line 3
    invoke-interface {p1}, Lp22;->getLifecycle()Lh22;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lr22;

    .line 8
    .line 9
    iget-object p2, p2, Lr22;->d:Lg22;

    .line 10
    .line 11
    sget-object v0, Lg22;->n:Lg22;

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, La52;->s:Lc52;

    .line 16
    .line 17
    iget-object p0, p0, Lb52;->n:Lbo2;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lc52;->g(Lbo2;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eq v0, p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, La52;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lb52;->a(Z)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lp22;->getLifecycle()Lh22;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lr22;

    .line 38
    .line 39
    iget-object v0, v0, Lr22;->d:Lg22;

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    move-object v0, p2

    .line 43
    move-object p2, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, La52;->r:Lp22;

    .line 2
    .line 3
    invoke-interface {v0}, Lp22;->getLifecycle()Lh22;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(Lp22;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La52;->r:Lp22;

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object p0, p0, La52;->r:Lp22;

    .line 2
    .line 3
    invoke-interface {p0}, Lp22;->getLifecycle()Lh22;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lr22;

    .line 8
    .line 9
    iget-object p0, p0, Lr22;->d:Lg22;

    .line 10
    .line 11
    sget-object v0, Lg22;->q:Lg22;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ltz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
