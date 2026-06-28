.class public final Lvc4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ldh0;

    .line 2
    .line 3
    new-instance p0, Lvc4;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0, p1}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lt64;->a:Lt64;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lvc4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
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
