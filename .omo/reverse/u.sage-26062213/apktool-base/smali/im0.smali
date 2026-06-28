.class public final Lim0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lim0;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lim0;->t:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lim0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lim0;->t:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lim0;

    .line 13
    .line 14
    check-cast p0, Lcn0;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v2}, Lim0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lim0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance v0, Lim0;

    .line 26
    .line 27
    check-cast p0, Lgm0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, p0, p1, v2}, Lim0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lim0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lim0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lim0;->t:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lim0;->s:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast v1, Lcn0;

    .line 33
    .line 34
    iput v5, p0, Lim0;->s:I

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcn0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-ne p1, v4, :cond_2

    .line 41
    .line 42
    move-object p1, v4

    .line 43
    :cond_2
    :goto_0
    return-object p1

    .line 44
    :pswitch_0
    iget v0, p0, Lim0;->s:I

    .line 45
    .line 46
    sget-object v6, Lt64;->a:Lt64;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    if-ne v0, v5, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast v1, Lgm0;

    .line 64
    .line 65
    iput v5, p0, Lim0;->s:I

    .line 66
    .line 67
    invoke-interface {v1}, Lgm0;->a()V

    .line 68
    .line 69
    .line 70
    if-ne v6, v4, :cond_5

    .line 71
    .line 72
    move-object v2, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    :goto_1
    move-object v2, v6

    .line 75
    :goto_2
    return-object v2

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
