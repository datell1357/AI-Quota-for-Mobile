.class public final Lp11;
.super Lg73;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzl1;


# instance fields
.field public s:Ldz;

.field public t:Z


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp11;->s:Ldz;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lbm1;->n:Lxl1;

    .line 6
    .line 7
    invoke-interface {v0}, Lxl1;->isRepeatable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p0, Lp11;->t:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final expectContinue()Z
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

.method public final getEntity()Lxl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lp11;->s:Ldz;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEntity(Lxl1;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ldz;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Ldz;-><init>(Lp11;Lxl1;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-object v0, p0, Lp11;->s:Ldz;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lp11;->t:Z

    .line 14
    .line 15
    return-void
.end method
