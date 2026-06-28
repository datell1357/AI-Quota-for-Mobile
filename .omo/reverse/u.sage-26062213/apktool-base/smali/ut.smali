.class public final Lut;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:I

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILdh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lut;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lut;->u:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lut;->t:I

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
    iget v0, p0, Lut;->r:I

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
    invoke-virtual {p0, p2, p1}, Lut;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lut;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lut;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lut;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lut;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lut;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p2, p0, Lut;->r:I

    .line 2
    .line 3
    iget v0, p0, Lut;->t:I

    .line 4
    .line 5
    iget-object p0, p0, Lut;->u:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lut;

    .line 11
    .line 12
    check-cast p0, Lw02;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {p2, p0, v0, p1, v1}, Lut;-><init>(Ljava/lang/Object;ILdh0;I)V

    .line 16
    .line 17
    .line 18
    return-object p2

    .line 19
    :pswitch_0
    new-instance p2, Lut;

    .line 20
    .line 21
    check-cast p0, Lu/sage/a;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p2, p0, v0, p1, v1}, Lut;-><init>(Ljava/lang/Object;ILdh0;I)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lut;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lut;->u:Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lri0;->n:Lri0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Lt64;->a:Lt64;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lut;->s:I

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-ne v0, v4, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    move-object v3, v5

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v3, v6

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    check-cast v1, Lw02;

    .line 36
    .line 37
    iget-object p1, v1, Lw02;->C:Ls02;

    .line 38
    .line 39
    iput v4, p0, Lut;->s:I

    .line 40
    .line 41
    iget-object p1, p1, Ls02;->b:Ln12;

    .line 42
    .line 43
    sget-object v0, Ln12;->y:Lxh1;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lx50;

    .line 49
    .line 50
    iget v1, p0, Lut;->t:I

    .line 51
    .line 52
    invoke-direct {v0, p1, v1, v6}, Lx50;-><init>(Ln12;ILdh0;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lxg2;->n:Lxg2;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0, p0}, Ln12;->f(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-ne p0, v3, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object p0, v5

    .line 65
    :goto_0
    if-ne p0, v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move-object p0, v5

    .line 69
    :goto_1
    if-ne p0, v3, :cond_0

    .line 70
    .line 71
    :goto_2
    return-object v3

    .line 72
    :pswitch_0
    check-cast v1, Lu/sage/a;

    .line 73
    .line 74
    iget v0, p0, Lut;->s:I

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    if-ne v0, v4, :cond_5

    .line 79
    .line 80
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v3, v6

    .line 88
    goto :goto_6

    .line 89
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lu/sage/a;->o()Lpt;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lpt;->j:Lnv3;

    .line 97
    .line 98
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, La81;

    .line 103
    .line 104
    iput v4, p0, Lut;->s:I

    .line 105
    .line 106
    invoke-static {p1, p0}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v3, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    :goto_3
    check-cast p1, Ljava/lang/String;

    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    sget-object v0, Lez3;->a:Lra3;

    .line 126
    .line 127
    invoke-virtual {v1}, Lu/sage/a;->j()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    new-array p0, p0, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1}, Lu/sage/a;->e(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_9
    :goto_4
    sget-object p1, Lez3;->a:Lra3;

    .line 143
    .line 144
    invoke-virtual {v1}, Lu/sage/a;->j()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    new-array p0, p0, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :goto_5
    move-object v3, v5

    .line 156
    :goto_6
    return-object v3

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
