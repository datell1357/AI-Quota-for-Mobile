.class public final Ljl0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lpe1;


# direct methods
.method public synthetic constructor <init>(Ldh0;Lpe1;I)V
    .locals 0

    .line 1
    iput p3, p0, Ljl0;->r:I

    .line 2
    .line 3
    iput-object p2, p0, Ljl0;->t:Lpe1;

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-direct {p0, p2, p1}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lpe1;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ljl0;->r:I

    .line 10
    iput-object p1, p0, Ljl0;->t:Lpe1;

    invoke-direct {p0, v0, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ljl0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lhg2;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Ljl0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljl0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljl0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lpw2;

    .line 23
    .line 24
    check-cast p2, Ldh0;

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1}, Ljl0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljl0;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljl0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_1
    check-cast p1, Lpw2;

    .line 38
    .line 39
    check-cast p2, Ldh0;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Ljl0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljl0;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljl0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Ljl0;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Ljl0;->t:Lpe1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljl0;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Ljl0;-><init>(Lpe1;Ldh0;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, v0, Ljl0;->s:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Ljl0;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, p1, p0, v1}, Ljl0;-><init>(Ldh0;Lpe1;I)V

    .line 20
    .line 21
    .line 22
    iput-object p2, v0, Ljl0;->s:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    new-instance v0, Ljl0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p1, p0, v1}, Ljl0;-><init>(Ldh0;Lpe1;I)V

    .line 29
    .line 30
    .line 31
    iput-object p2, v0, Ljl0;->s:Ljava/lang/Object;

    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ljl0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Ljl0;->t:Lpe1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Ljl0;->s:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lhg2;

    .line 14
    .line 15
    invoke-interface {v1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lt64;->a:Lt64;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Ljl0;->s:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lpw2;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p0, Lu13;

    .line 32
    .line 33
    invoke-interface {p0}, Lu13;->b()Ljb3;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {v1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Ljl0;->s:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lpw2;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast p0, Lu13;

    .line 53
    .line 54
    invoke-interface {p0}, Lu13;->b()Ljb3;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {v1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
