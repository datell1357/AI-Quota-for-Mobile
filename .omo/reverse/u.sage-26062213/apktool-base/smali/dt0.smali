.class public final Ldt0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lus0;

.field public final synthetic u:Z


# direct methods
.method public synthetic constructor <init>(Lus0;ZLdh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Ldt0;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Ldt0;->t:Lus0;

    .line 4
    .line 5
    iput-boolean p2, p0, Ldt0;->u:Z

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
    iget v0, p0, Ldt0;->r:I

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
    invoke-virtual {p0, p2, p1}, Ldt0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ldt0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ldt0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Ldt0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ldt0;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ldt0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Ldt0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ldt0;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ldt0;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p2, p0, Ldt0;->r:I

    .line 2
    .line 3
    iget-boolean v0, p0, Ldt0;->u:Z

    .line 4
    .line 5
    iget-object p0, p0, Ldt0;->t:Lus0;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Ldt0;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Ldt0;-><init>(Lus0;ZLdh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Ldt0;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Ldt0;-><init>(Lus0;ZLdh0;I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :pswitch_1
    new-instance p2, Ldt0;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {p2, p0, v0, p1, v1}, Ldt0;-><init>(Lus0;ZLdh0;I)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ldt0;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Ldt0;->u:Z

    .line 5
    .line 6
    iget-object v3, p0, Ldt0;->t:Lus0;

    .line 7
    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lri0;->n:Lri0;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    sget-object v7, Lt64;->a:Lt64;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v0, p0, Ldt0;->s:I

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-ne v0, v6, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    move-object v5, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v5, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput v6, p0, Ldt0;->s:I

    .line 39
    .line 40
    sget-object p1, Lez3;->a:Lra3;

    .line 41
    .line 42
    new-array v0, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v3, Lus0;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lms;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-direct {v0, v2, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v5, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move-object p0, v7

    .line 70
    :goto_0
    if-ne p0, v5, :cond_0

    .line 71
    .line 72
    :goto_1
    return-object v5

    .line 73
    :pswitch_0
    iget v0, p0, Ldt0;->s:I

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    if-ne v0, v6, :cond_5

    .line 78
    .line 79
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    move-object v5, v7

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v5, v8

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput v6, p0, Ldt0;->s:I

    .line 93
    .line 94
    sget-object p1, Lez3;->a:Lra3;

    .line 95
    .line 96
    new-array v0, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v3, Lus0;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lms;

    .line 111
    .line 112
    const/4 v1, 0x5

    .line 113
    invoke-direct {v0, v2, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-ne p0, v5, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    move-object p0, v7

    .line 124
    :goto_2
    if-ne p0, v5, :cond_4

    .line 125
    .line 126
    :goto_3
    return-object v5

    .line 127
    :pswitch_1
    iget v0, p0, Ldt0;->s:I

    .line 128
    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    if-ne v0, v6, :cond_9

    .line 132
    .line 133
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    move-object v5, v7

    .line 137
    goto :goto_5

    .line 138
    :cond_9
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v5, v8

    .line 142
    goto :goto_5

    .line 143
    :cond_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput v6, p0, Ldt0;->s:I

    .line 147
    .line 148
    sget-object p1, Lez3;->a:Lra3;

    .line 149
    .line 150
    new-array v0, v1, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, v3, Lus0;->a:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {p1}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Lms;

    .line 165
    .line 166
    const/4 v1, 0x6

    .line 167
    invoke-direct {v0, v2, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-ne p0, v5, :cond_b

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_b
    move-object p0, v7

    .line 178
    :goto_4
    if-ne p0, v5, :cond_8

    .line 179
    .line 180
    :goto_5
    return-object v5

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
