.class public abstract Lj52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static a(Lp22;)Lm52;
    .locals 2

    .line 1
    new-instance v0, Lm52;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Lcc4;

    .line 5
    .line 6
    invoke-interface {v1}, Lcc4;->getViewModelStore()Lbc4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lm52;-><init>(Lp22;Lbc4;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
