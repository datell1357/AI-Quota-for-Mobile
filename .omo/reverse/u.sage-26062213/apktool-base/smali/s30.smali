.class public final Ls30;
.super Lr30;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final e(Lhi0;ILvy;)Lp30;
    .locals 1

    .line 1
    new-instance v0, Ls30;

    .line 2
    .line 3
    iget-object p0, p0, Lr30;->q:La81;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lr30;-><init>(La81;Lhi0;ILvy;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final f()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lr30;->q:La81;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lr30;->q:La81;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

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
