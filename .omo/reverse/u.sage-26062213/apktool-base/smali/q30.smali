.class public Lq30;
.super Lp30;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic q:I

.field public final r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lhi0;ILvy;I)V
    .locals 0

    .line 1
    iput p5, p0, Lq30;->q:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lp30;-><init>(Lhi0;ILvy;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lq30;->r:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public d(Lhz2;Ldh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lq30;->q:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lq30;->r:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lzh3;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lzh3;-><init>(Lhz2;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, La81;

    .line 32
    .line 33
    new-instance v2, Ln;

    .line 34
    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v2, v0, p2, v4, v3}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-static {p1, v4, v4, v2, v0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v1

    .line 47
    :pswitch_0
    check-cast p0, Ldf1;

    .line 48
    .line 49
    invoke-interface {p0, p1, p2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object p1, Lri0;->n:Lri0;

    .line 54
    .line 55
    if-ne p0, p1, :cond_1

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lhi0;ILvy;)Lp30;
    .locals 8

    .line 1
    iget v0, p0, Lq30;->q:I

    .line 2
    .line 3
    iget-object p0, p0, Lq30;->r:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lq30;

    .line 9
    .line 10
    move-object v2, p0

    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    move-object v3, p1

    .line 15
    move v4, p2

    .line 16
    move-object v5, p3

    .line 17
    invoke-direct/range {v1 .. v6}, Lq30;-><init>(Ljava/lang/Object;Lhi0;ILvy;I)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    move-object v3, p1

    .line 22
    move v4, p2

    .line 23
    move-object v5, p3

    .line 24
    new-instance v2, Lq30;

    .line 25
    .line 26
    check-cast p0, Ldf1;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v6, v5

    .line 30
    move v5, v4

    .line 31
    move-object v4, v3

    .line 32
    move-object v3, p0

    .line 33
    invoke-direct/range {v2 .. v7}, Lq30;-><init>(Ljava/lang/Object;Lhi0;ILvy;I)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lqi0;)Ln30;
    .locals 4

    .line 1
    iget v0, p0, Lq30;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lp30;->g(Lqi0;)Ln30;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ln;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v0, p0, v1, v2}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    iget v2, p0, Lp30;->o:I

    .line 20
    .line 21
    sget-object v3, Lvy;->n:Lvy;

    .line 22
    .line 23
    invoke-static {v2, v1, v3}, Lix;->c(IILvy;)Lzy;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p0, p0, Lp30;->n:Lhi0;

    .line 28
    .line 29
    invoke-static {p1, p0}, Lix;->F(Lqi0;Lhi0;)Lhi0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lhz2;

    .line 34
    .line 35
    invoke-direct {p1, p0, v1}, Lhz2;-><init>(Lhi0;Lzy;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lti0;->n:Lti0;

    .line 39
    .line 40
    invoke-virtual {p1, p0, p1, v0}, Lg0;->s0(Lti0;Lg0;Ldf1;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lq30;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lp30;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "block["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lq30;->r:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ldf1;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "] -> "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Lp30;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
