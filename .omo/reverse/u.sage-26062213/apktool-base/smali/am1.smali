.class public abstract Lam1;
.super Lpm1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzl1;


# instance fields
.field private entity:Lxl1;


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lj0;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lam1;

    .line 6
    .line 7
    iget-object p0, p0, Lam1;->entity:Lxl1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lgg4;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lxl1;

    .line 16
    .line 17
    iput-object p0, v0, Lam1;->entity:Lxl1;

    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 1

    .line 1
    const-string v0, "Expect"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Le1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string v0, "100-continue"

    .line 10
    .line 11
    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public getEntity()Lxl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lam1;->entity:Lxl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntity(Lxl1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lam1;->entity:Lxl1;

    .line 2
    .line 3
    return-void
.end method
