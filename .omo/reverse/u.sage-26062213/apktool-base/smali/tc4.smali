.class public final Ltc4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lw3;

    .line 2
    .line 3
    check-cast p2, Lw3;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p4, Ldh0;

    .line 11
    .line 12
    new-instance p0, Ltc4;

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lt64;->a:Lt64;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ltc4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lt64;->a:Lt64;

    .line 5
    .line 6
    return-object p0
.end method
