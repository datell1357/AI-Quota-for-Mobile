.class public final Ldt;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lpt;

.field public final synthetic u:Lm10;


# direct methods
.method public synthetic constructor <init>(Lpt;Lm10;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Ldt;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Ldt;->t:Lpt;

    .line 4
    .line 5
    iput-object p2, p0, Ldt;->u:Lm10;

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
    iget v0, p0, Ldt;->r:I

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
    invoke-virtual {p0, p2, p1}, Ldt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ldt;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ldt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Ldt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ldt;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ldt;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget p2, p0, Ldt;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Ldt;->u:Lm10;

    .line 4
    .line 5
    iget-object p0, p0, Ldt;->t:Lpt;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Ldt;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Ldt;-><init>(Lpt;Lm10;Ldh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Ldt;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Ldt;-><init>(Lpt;Lm10;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Ldt;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Ldt;->u:Lm10;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lri0;->n:Lri0;

    .line 10
    .line 11
    iget-object v5, p0, Ldt;->t:Lpt;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Ldt;->s:I

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
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lpt;->k()Lur3;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lyq;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-direct {v0, p1, v3}, Lyq;-><init>(La81;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Luq;

    .line 52
    .line 53
    invoke-direct {v0, v7, v2, v5}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput v7, p0, Ldt;->s:I

    .line 57
    .line 58
    invoke-interface {p1, v0, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-ne p0, v4, :cond_2

    .line 63
    .line 64
    move-object v1, v4

    .line 65
    :cond_2
    :goto_0
    return-object v1

    .line 66
    :pswitch_0
    iget v0, p0, Ldt;->s:I

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-ne v0, v7, :cond_3

    .line 71
    .line 72
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object v1, v6

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, v5, Lpt;->c:Lnv3;

    .line 85
    .line 86
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lur3;

    .line 91
    .line 92
    iget-object v0, v2, Lm10;->b:Lnv3;

    .line 93
    .line 94
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, La81;

    .line 99
    .line 100
    new-instance v2, Lbt;

    .line 101
    .line 102
    const/4 v3, 0x3

    .line 103
    const/4 v8, 0x0

    .line 104
    invoke-direct {v2, v3, v6, v8}, Lbt;-><init>(ILdh0;I)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Lct;

    .line 108
    .line 109
    invoke-direct {v3, v5, v8}, Lct;-><init>(Lpt;I)V

    .line 110
    .line 111
    .line 112
    iput v7, p0, Ldt;->s:I

    .line 113
    .line 114
    const/4 v5, 0x2

    .line 115
    new-array v9, v5, [La81;

    .line 116
    .line 117
    aput-object p1, v9, v8

    .line 118
    .line 119
    aput-object v0, v9, v7

    .line 120
    .line 121
    sget-object p1, Lag0;->p:Lag0;

    .line 122
    .line 123
    new-instance v0, Lt81;

    .line 124
    .line 125
    invoke-direct {v0, v2, v6, v5}, Lt81;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v3, p1, v0, v9}, Lw80;->o(Ldh0;Lb81;Lne1;Lff1;[La81;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-ne p0, v4, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move-object p0, v1

    .line 136
    :goto_1
    if-ne p0, v4, :cond_6

    .line 137
    .line 138
    move-object v1, v4

    .line 139
    :cond_6
    :goto_2
    return-object v1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
