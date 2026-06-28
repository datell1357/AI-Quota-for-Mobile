.class public final Lt30;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lw30;

.field public final synthetic v:Lb81;


# direct methods
.method public constructor <init>(Lw30;Lb81;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lt30;->r:I

    .line 15
    iput-object p1, p0, Lt30;->u:Lw30;

    iput-object p2, p0, Lt30;->v:Lb81;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lw30;Lb81;Ljava/lang/Object;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt30;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lt30;->u:Lw30;

    .line 5
    .line 6
    iput-object p2, p0, Lt30;->v:Lb81;

    .line 7
    .line 8
    iput-object p3, p0, Lt30;->t:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lt30;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lt30;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lt30;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lt30;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lt30;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lt30;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lt30;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 3

    .line 1
    iget v0, p0, Lt30;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lt30;->v:Lb81;

    .line 4
    .line 5
    iget-object v2, p0, Lt30;->u:Lw30;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lt30;

    .line 11
    .line 12
    invoke-direct {p0, v2, v1, p1}, Lt30;-><init>(Lw30;Lb81;Ldh0;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lt30;->t:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p2, Lt30;

    .line 19
    .line 20
    iget-object p0, p0, Lt30;->t:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {p2, v2, v1, p0, p1}, Lt30;-><init>(Lw30;Lb81;Ljava/lang/Object;Ldh0;)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lt30;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

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
    iget v0, p0, Lt30;->s:I

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
    move-object v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lt30;->t:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v9, p1

    .line 35
    check-cast v9, Lqi0;

    .line 36
    .line 37
    new-instance v8, Lw33;

    .line 38
    .line 39
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v10, p0, Lt30;->u:Lw30;

    .line 43
    .line 44
    iget-object p1, v10, Lr30;->q:La81;

    .line 45
    .line 46
    new-instance v6, Lv30;

    .line 47
    .line 48
    iget-object v11, p0, Lt30;->v:Lb81;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-direct/range {v6 .. v11}, Lv30;-><init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput v5, p0, Lt30;->s:I

    .line 55
    .line 56
    invoke-interface {p1, v6, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-ne p0, v4, :cond_2

    .line 61
    .line 62
    move-object v1, v4

    .line 63
    :cond_2
    :goto_0
    return-object v1

    .line 64
    :pswitch_0
    iget v0, p0, Lt30;->s:I

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    if-ne v0, v5, :cond_3

    .line 69
    .line 70
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v1, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lt30;->u:Lw30;

    .line 83
    .line 84
    iget-object p1, p1, Lw30;->r:Lff1;

    .line 85
    .line 86
    iget-object v0, p0, Lt30;->t:Ljava/lang/Object;

    .line 87
    .line 88
    iput v5, p0, Lt30;->s:I

    .line 89
    .line 90
    iget-object v2, p0, Lt30;->v:Lb81;

    .line 91
    .line 92
    invoke-interface {p1, v2, v0, p0}, Lff1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-ne p0, v4, :cond_5

    .line 97
    .line 98
    move-object v1, v4

    .line 99
    :cond_5
    :goto_1
    return-object v1

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
