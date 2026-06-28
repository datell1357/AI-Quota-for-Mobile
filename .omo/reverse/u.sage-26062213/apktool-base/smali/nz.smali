.class public final Lnz;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lxs1;

.field public final synthetic u:Lgp3;


# direct methods
.method public synthetic constructor <init>(Lxs1;Lgp3;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnz;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lnz;->t:Lxs1;

    .line 4
    .line 5
    iput-object p2, p0, Lnz;->u:Lgp3;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnz;->r:I

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
    invoke-virtual {p0, p2, p1}, Lnz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnz;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lnz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnz;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lnz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lnz;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lnz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget p2, p0, Lnz;->r:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p2, Lnz;

    .line 7
    .line 8
    iget-object v0, p0, Lnz;->u:Lgp3;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iget-object p0, p0, Lnz;->t:Lxs1;

    .line 12
    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Lnz;-><init>(Lxs1;Lgp3;Ldh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lnz;

    .line 18
    .line 19
    iget-object v0, p0, Lnz;->u:Lgp3;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object p0, p0, Lnz;->t:Lxs1;

    .line 23
    .line 24
    invoke-direct {p2, p0, v0, p1, v1}, Lnz;-><init>(Lxs1;Lgp3;Ldh0;I)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :pswitch_1
    new-instance p2, Lnz;

    .line 29
    .line 30
    iget-object v0, p0, Lnz;->u:Lgp3;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object p0, p0, Lnz;->t:Lxs1;

    .line 34
    .line 35
    invoke-direct {p2, p0, v0, p1, v1}, Lnz;-><init>(Lxs1;Lgp3;Ldh0;I)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnz;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lnz;->u:Lgp3;

    .line 6
    .line 7
    iget-object v3, p0, Lnz;->t:Lxs1;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lri0;->n:Lri0;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lnz;->s:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v7, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Lxs1;->a()La81;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lmz;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-direct {v0, v2, v3}, Lmz;-><init>(Lgp3;I)V

    .line 44
    .line 45
    .line 46
    iput v7, p0, Lnz;->s:I

    .line 47
    .line 48
    invoke-interface {p1, v0, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-ne p0, v6, :cond_2

    .line 53
    .line 54
    move-object v1, v6

    .line 55
    :cond_2
    :goto_0
    return-object v1

    .line 56
    :pswitch_0
    iget v0, p0, Lnz;->s:I

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    if-ne v0, v7, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move-object v1, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v3}, Lxs1;->a()La81;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lmz;

    .line 79
    .line 80
    invoke-direct {v0, v2, v7}, Lmz;-><init>(Lgp3;I)V

    .line 81
    .line 82
    .line 83
    iput v7, p0, Lnz;->s:I

    .line 84
    .line 85
    invoke-interface {p1, v0, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v6, :cond_5

    .line 90
    .line 91
    move-object v1, v6

    .line 92
    :cond_5
    :goto_1
    return-object v1

    .line 93
    :pswitch_1
    iget v0, p0, Lnz;->s:I

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    if-ne v0, v7, :cond_6

    .line 98
    .line 99
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v1, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Lxs1;->a()La81;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Lmz;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-direct {v0, v2, v3}, Lmz;-><init>(Lgp3;I)V

    .line 119
    .line 120
    .line 121
    iput v7, p0, Lnz;->s:I

    .line 122
    .line 123
    invoke-interface {p1, v0, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-ne p0, v6, :cond_8

    .line 128
    .line 129
    move-object v1, v6

    .line 130
    :cond_8
    :goto_2
    return-object v1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
