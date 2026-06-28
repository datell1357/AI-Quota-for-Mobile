.class public abstract Lkw4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static a(Lrf5;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lkw4;->c(Lrf5;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lte5;

    .line 9
    .line 10
    iget-object v0, v0, Lte5;->n:Lte5;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    check-cast v0, Lte5;

    .line 17
    .line 18
    iget-object v0, v0, Lte5;->n:Lte5;

    .line 19
    .line 20
    invoke-static {v0}, Lkw4;->a(Lrf5;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lkw4;->d(Lrf5;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    move-object v0, p0

    .line 28
    check-cast v0, Lte5;

    .line 29
    .line 30
    iget-object v0, v0, Lte5;->p:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lkw4;->d(Lrf5;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static b(Lrf5;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lkw4;->c(Lrf5;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lte5;

    .line 9
    .line 10
    iget-object v0, v0, Lte5;->n:Lte5;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 16
    .line 17
    .line 18
    check-cast p0, Lte5;

    .line 19
    .line 20
    iget-object p0, p0, Lte5;->n:Lte5;

    .line 21
    .line 22
    invoke-static {p0}, Lkw4;->b(Lrf5;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static c(Lrf5;)Z
    .locals 1

    .line 1
    check-cast p0, Lte5;

    .line 2
    .line 3
    iget-object p0, p0, Lte5;->r:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static d(Lrf5;)V
    .locals 2

    .line 1
    check-cast p0, Lte5;

    .line 2
    .line 3
    iget-object p0, p0, Lte5;->q:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x7f

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
