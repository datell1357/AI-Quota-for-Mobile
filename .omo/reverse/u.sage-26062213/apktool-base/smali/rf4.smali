.class public final Lrf4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public r:I

.field public synthetic s:Lb81;

.field public synthetic t:[Ljava/lang/Object;


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lb81;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p3, Ldh0;

    .line 6
    .line 7
    new-instance p0, Lrf4;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-direct {p0, v0, p3}, Lbv3;-><init>(ILdh0;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lrf4;->s:Lb81;

    .line 14
    .line 15
    iput-object p2, p0, Lrf4;->t:[Ljava/lang/Object;

    .line 16
    .line 17
    sget-object p1, Lt64;->a:Lt64;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lrf4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lrf4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lrf4;->s:Lb81;

    .line 23
    .line 24
    iget-object v0, p0, Lrf4;->t:[Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, [Lsf0;

    .line 27
    .line 28
    array-length v3, v0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    sget-object v5, Lqf0;->a:Lqf0;

    .line 31
    .line 32
    if-ge v4, v3, :cond_3

    .line 33
    .line 34
    aget-object v6, v0, v4

    .line 35
    .line 36
    invoke-static {v6, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    move-object v1, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move-object v5, v1

    .line 51
    :goto_2
    iput v2, p0, Lrf4;->r:I

    .line 52
    .line 53
    invoke-interface {p1, v5, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object p1, Lri0;->n:Lri0;

    .line 58
    .line 59
    if-ne p0, p1, :cond_5

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_5
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 63
    .line 64
    return-object p0
.end method
