.class public final Ll00;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lv92;
.implements Lul1;


# instance fields
.field public volatile n:Lk00;


# direct methods
.method public static j(Ll00;)Ll00;
    .locals 2

    .line 1
    const-class v0, Ll00;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ll00;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Unexpected connection proxy class: "

    .line 17
    .line 18
    invoke-static {v0, p0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final C(Lvm1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lpl1;->C(Lvm1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final E()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lgm1;->E()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final M()Lvm1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lpl1;->M()Lvm1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final S(Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lv92;->S(Ljava/net/Socket;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final U(Lzl1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lpl1;->U(Lzl1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final X()Ljava/net/InetAddress;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lgm1;->X()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lul1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lul1;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final b0()Ljavax/net/ssl/SSLSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lv92;->b0()Ljavax/net/ssl/SSLSession;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lpl1;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final f()Ljava/net/Socket;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lv92;->f()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final flush()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lpl1;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lk00;->b()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    return v0
.end method

.method public final l0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lv92;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Lsl1;->l0()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final n(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lsl1;->n(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()Lv92;
    .locals 0

    .line 1
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lv92;

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lje0;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final shutdown()V
    .locals 0

    .line 1
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lpl1;

    .line 8
    .line 9
    invoke-interface {p0}, Lsl1;->shutdown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CPoolProxy{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ll00;->n:Lk00;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lmw2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lv92;

    .line 17
    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-string p0, "detached"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :goto_1
    const/16 p0, 0x7d

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final v(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lpl1;->v(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final x(Lom1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lpl1;->x(Lom1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll00;->r()Lv92;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lul1;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lul1;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
