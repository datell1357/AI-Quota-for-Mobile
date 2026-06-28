.class public interface abstract Lnd2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public abstract a(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract b(Lpe1;)Z
.end method

.method public c(Lnd2;)Lnd2;
    .locals 1

    .line 1
    sget-object v0, Lkd2;->b:Lkd2;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lt80;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lt80;-><init>(Lnd2;Lnd2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
