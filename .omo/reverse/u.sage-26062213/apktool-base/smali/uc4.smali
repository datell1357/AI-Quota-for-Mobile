.class public final Luc4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Lw3;

.field public s:Z

.field public t:I

.field public final synthetic u:Lw3;

.field public final synthetic v:Ln1;

.field public final synthetic w:Ldf1;

.field public final synthetic x:Lgf1;

.field public final synthetic y:Lpe1;


# direct methods
.method public constructor <init>(Lw3;Ln1;Ldf1;Lgf1;Lpe1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luc4;->u:Lw3;

    .line 2
    .line 3
    iput-object p2, p0, Luc4;->v:Ln1;

    .line 4
    .line 5
    iput-object p3, p0, Luc4;->w:Ldf1;

    .line 6
    .line 7
    iput-object p4, p0, Luc4;->x:Lgf1;

    .line 8
    .line 9
    iput-object p5, p0, Luc4;->y:Lpe1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Luc4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Luc4;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Luc4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 7

    .line 1
    new-instance v0, Luc4;

    .line 2
    .line 3
    iget-object v4, p0, Luc4;->x:Lgf1;

    .line 4
    .line 5
    iget-object v5, p0, Luc4;->y:Lpe1;

    .line 6
    .line 7
    iget-object v1, p0, Luc4;->u:Lw3;

    .line 8
    .line 9
    iget-object v2, p0, Luc4;->v:Ln1;

    .line 10
    .line 11
    iget-object v3, p0, Luc4;->w:Ldf1;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    invoke-direct/range {v0 .. v6}, Luc4;-><init>(Lw3;Ln1;Ldf1;Lgf1;Lpe1;Ldh0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Luc4;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Luc4;->v:Ln1;

    .line 5
    .line 6
    iget-object v3, p0, Luc4;->u:Lw3;

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    iget-boolean v0, p0, Luc4;->s:Z

    .line 20
    .line 21
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :pswitch_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :pswitch_3
    iget-boolean v0, p0, Luc4;->s:Z

    .line 37
    .line 38
    iget-object v2, p0, Luc4;->r:Lw3;

    .line 39
    .line 40
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :pswitch_4
    iget-boolean v0, p0, Luc4;->s:Z

    .line 45
    .line 46
    iget-object v5, p0, Luc4;->r:Lw3;

    .line 47
    .line 48
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object p1, v5

    .line 52
    goto :goto_1

    .line 53
    :pswitch_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lw3;->l()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Ln1;->a()La81;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, 0x1

    .line 71
    iput v0, p0, Luc4;->t:I

    .line 72
    .line 73
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v4, :cond_0

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_0
    :goto_0
    check-cast p1, Lw3;

    .line 82
    .line 83
    invoke-virtual {p1}, Lw3;->l()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput-object p1, p0, Luc4;->r:Lw3;

    .line 88
    .line 89
    iput-boolean v0, p0, Luc4;->s:Z

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    iput v5, p0, Luc4;->t:I

    .line 93
    .line 94
    iget-object v5, p0, Luc4;->w:Ldf1;

    .line 95
    .line 96
    invoke-interface {v5, v3, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-ne v5, v4, :cond_1

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_1
    :goto_1
    iput-object p1, p0, Luc4;->r:Lw3;

    .line 104
    .line 105
    iput-boolean v0, p0, Luc4;->s:Z

    .line 106
    .line 107
    const/4 v5, 0x3

    .line 108
    iput v5, p0, Luc4;->t:I

    .line 109
    .line 110
    invoke-virtual {v2, v3, p0}, Ln1;->g(Lw3;Lfh0;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-ne v2, v4, :cond_2

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_2
    move-object v2, p1

    .line 118
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object v1, p0, Luc4;->r:Lw3;

    .line 123
    .line 124
    iput-boolean v0, p0, Luc4;->s:Z

    .line 125
    .line 126
    const/4 v0, 0x4

    .line 127
    iput v0, p0, Luc4;->t:I

    .line 128
    .line 129
    iget-object v0, p0, Luc4;->x:Lgf1;

    .line 130
    .line 131
    invoke-interface {v0, v3, v2, p1, p0}, Lgf1;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v4, :cond_6

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_3
    iget-object p1, v2, Ln1;->c:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lnv3;

    .line 141
    .line 142
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, La81;

    .line 147
    .line 148
    const/4 v0, 0x5

    .line 149
    iput v0, p0, Luc4;->t:I

    .line 150
    .line 151
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v4, :cond_4

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    iput-boolean v0, p0, Luc4;->s:Z

    .line 167
    .line 168
    const/4 p1, 0x6

    .line 169
    iput p1, p0, Luc4;->t:I

    .line 170
    .line 171
    invoke-virtual {v2, p0}, Ln1;->e(Lbv3;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-ne p1, v4, :cond_5

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_5
    :goto_4
    iput-boolean v0, p0, Luc4;->s:Z

    .line 179
    .line 180
    const/4 p1, 0x7

    .line 181
    iput p1, p0, Luc4;->t:I

    .line 182
    .line 183
    iget-object p1, p0, Luc4;->y:Lpe1;

    .line 184
    .line 185
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-ne p0, v4, :cond_6

    .line 190
    .line 191
    :goto_5
    return-object v4

    .line 192
    :cond_6
    :goto_6
    sget-object p0, Lt64;->a:Lt64;

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
