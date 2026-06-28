.class public interface abstract Lw90;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract b(Lz03;)Ln03;
.end method

.method public d(Lz03;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lw90;->b(Lz03;)Ln03;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/Set;

    .line 10
    .line 11
    return-object p0
.end method

.method public g(Ljava/lang/Class;)Ln03;
    .locals 0

    .line 1
    invoke-static {p1}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lw90;->k(Lz03;)Ln03;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract h(Lz03;)Ldr2;
.end method

.method public abstract k(Lz03;)Ln03;
.end method

.method public l(Lz03;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lw90;->k(Lz03;)Ln03;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
