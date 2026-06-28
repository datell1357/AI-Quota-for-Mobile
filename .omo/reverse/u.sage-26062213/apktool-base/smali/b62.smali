.class public final Lb62;
.super Ljava/util/AbstractQueue;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:I

.field public final o:Ly52;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb62;->n:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lz52;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lz52;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p1, Lz52;->o:Lx33;

    .line 16
    .line 17
    iput-object p1, p1, Lz52;->p:Lx33;

    .line 18
    .line 19
    iput-object p1, p0, Lb62;->o:Ly52;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lz52;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-direct {p1, v0}, Lz52;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p1, Lz52;->o:Lx33;

    .line 32
    .line 33
    iput-object p1, p1, Lz52;->p:Lx33;

    .line 34
    .line 35
    iput-object p1, p0, Lb62;->o:Ly52;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    sget-object v1, Lh62;->n:Lh62;

    .line 4
    .line 5
    iget-object p0, p0, Lb62;->o:Ly52;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lz52;

    .line 11
    .line 12
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 13
    .line 14
    :goto_0
    if-eq v0, p0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lx33;->l()Lx33;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lv62;->F:Lw52;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lx33;->h(Lx33;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lx33;->g(Lx33;)V

    .line 26
    .line 27
    .line 28
    move-object v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object p0, p0, Lz52;->o:Lx33;

    .line 31
    .line 32
    iput-object p0, p0, Lz52;->p:Lx33;

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Lz52;

    .line 36
    .line 37
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 38
    .line 39
    :goto_1
    if-eq v0, p0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lx33;->e()Lx33;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v3, Lv62;->F:Lw52;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lx33;->i(Lx33;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Lx33;->j(Lx33;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iput-object p0, p0, Lz52;->o:Lx33;

    .line 56
    .line 57
    iput-object p0, p0, Lz52;->p:Lx33;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget p0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    sget-object v2, Lh62;->n:Lh62;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lx33;

    .line 11
    .line 12
    invoke-interface {p1}, Lx33;->l()Lx33;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eq p0, v2, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_0
    return v0

    .line 20
    :pswitch_0
    check-cast p1, Lx33;

    .line 21
    .line 22
    invoke-interface {p1}, Lx33;->e()Lx33;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eq p0, v2, :cond_1

    .line 27
    .line 28
    move v0, v1

    .line 29
    :cond_1
    return v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 3

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lb62;->o:Ly52;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lz52;

    .line 11
    .line 12
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 13
    .line 14
    if-ne v0, p0, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    :cond_0
    return v1

    .line 18
    :pswitch_0
    check-cast p0, Lz52;

    .line 19
    .line 20
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 21
    .line 22
    if-ne v0, p0, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_1
    return v1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb62;->o:Ly52;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, La62;

    .line 10
    .line 11
    check-cast v2, Lz52;

    .line 12
    .line 13
    iget-object v3, v2, Lz52;->o:Lx33;

    .line 14
    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v3

    .line 19
    :goto_0
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, p0, v1, v2}, La62;-><init>(Ljava/util/AbstractQueue;Lx33;I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, La62;

    .line 25
    .line 26
    check-cast v2, Lz52;

    .line 27
    .line 28
    iget-object v3, v2, Lz52;->o:Lx33;

    .line 29
    .line 30
    if-ne v3, v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v1, v3

    .line 34
    :goto_1
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, p0, v1, v2}, La62;-><init>(Ljava/util/AbstractQueue;Lx33;I)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lb62;->o:Ly52;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lx33;

    .line 10
    .line 11
    invoke-interface {p1}, Lx33;->k()Lx33;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1}, Lx33;->l()Lx33;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lv62;->F:Lw52;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lx33;->h(Lx33;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v0}, Lx33;->g(Lx33;)V

    .line 25
    .line 26
    .line 27
    check-cast p0, Lz52;

    .line 28
    .line 29
    iget-object v0, p0, Lz52;->p:Lx33;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lx33;->h(Lx33;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Lx33;->g(Lx33;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p0}, Lx33;->h(Lx33;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lz52;->p:Lx33;

    .line 41
    .line 42
    return v1

    .line 43
    :pswitch_0
    check-cast p1, Lx33;

    .line 44
    .line 45
    invoke-interface {p1}, Lx33;->b()Lx33;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p1}, Lx33;->e()Lx33;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Lv62;->F:Lw52;

    .line 54
    .line 55
    invoke-interface {v0, v2}, Lx33;->i(Lx33;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v0}, Lx33;->j(Lx33;)V

    .line 59
    .line 60
    .line 61
    check-cast p0, Lz52;

    .line 62
    .line 63
    iget-object v0, p0, Lz52;->p:Lx33;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Lx33;->i(Lx33;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lx33;->j(Lx33;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p0}, Lx33;->i(Lx33;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lz52;->p:Lx33;

    .line 75
    .line 76
    return v1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lb62;->o:Ly52;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lz52;

    .line 10
    .line 11
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 12
    .line 13
    if-ne v0, p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    return-object v1

    .line 18
    :pswitch_0
    check-cast p0, Lz52;

    .line 19
    .line 20
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 21
    .line 22
    if-ne v0, p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :goto_1
    return-object v1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb62;->o:Ly52;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lz52;

    .line 10
    .line 11
    iget-object v0, v2, Lz52;->o:Lx33;

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lb62;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-object v1, v0

    .line 20
    :goto_0
    return-object v1

    .line 21
    :pswitch_0
    check-cast v2, Lz52;

    .line 22
    .line 23
    iget-object v0, v2, Lz52;->o:Lx33;

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0, v0}, Lb62;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-object v1, v0

    .line 32
    :goto_1
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget p0, p0, Lb62;->n:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    sget-object v2, Lh62;->n:Lh62;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lx33;

    .line 11
    .line 12
    invoke-interface {p1}, Lx33;->k()Lx33;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1}, Lx33;->l()Lx33;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lv62;->F:Lw52;

    .line 21
    .line 22
    invoke-interface {p0, v3}, Lx33;->h(Lx33;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, p0}, Lx33;->g(Lx33;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v2}, Lx33;->h(Lx33;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v2}, Lx33;->g(Lx33;)V

    .line 32
    .line 33
    .line 34
    if-eq v3, v2, :cond_0

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_0
    return v0

    .line 38
    :pswitch_0
    check-cast p1, Lx33;

    .line 39
    .line 40
    invoke-interface {p1}, Lx33;->b()Lx33;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p1}, Lx33;->e()Lx33;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sget-object v4, Lv62;->F:Lw52;

    .line 49
    .line 50
    invoke-interface {p0, v3}, Lx33;->i(Lx33;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, p0}, Lx33;->j(Lx33;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v2}, Lx33;->i(Lx33;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v2}, Lx33;->j(Lx33;)V

    .line 60
    .line 61
    .line 62
    if-eq v3, v2, :cond_1

    .line 63
    .line 64
    move v0, v1

    .line 65
    :cond_1
    return v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 2

    .line 1
    iget v0, p0, Lb62;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lb62;->o:Ly52;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lz52;

    .line 10
    .line 11
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 12
    .line 13
    :goto_0
    if-eq v0, p0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-interface {v0}, Lx33;->l()Lx33;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1

    .line 23
    :pswitch_0
    check-cast p0, Lz52;

    .line 24
    .line 25
    iget-object v0, p0, Lz52;->o:Lx33;

    .line 26
    .line 27
    :goto_1
    if-eq v0, p0, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-interface {v0}, Lx33;->e()Lx33;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    return v1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
