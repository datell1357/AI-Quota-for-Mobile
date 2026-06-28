.class public final Lrm0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lfn0;


# direct methods
.method public synthetic constructor <init>(Lfn0;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lrm0;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lrm0;->t:Lfn0;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lrm0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lqi0;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lrm0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lrm0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lrm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lqi0;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lrm0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lrm0;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lrm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lb81;

    .line 39
    .line 40
    check-cast p2, Ldh0;

    .line 41
    .line 42
    invoke-virtual {p0, p2, p1}, Lrm0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lrm0;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lrm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    iget p2, p0, Lrm0;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lrm0;->t:Lfn0;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lrm0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p2, p0, p1, v0}, Lrm0;-><init>(Lfn0;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Lrm0;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p2, p0, p1, v0}, Lrm0;-><init>(Lfn0;Ldh0;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_1
    new-instance p2, Lrm0;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p2, p0, p1, v0}, Lrm0;-><init>(Lfn0;Ldh0;I)V

    .line 26
    .line 27
    .line 28
    return-object p2

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lrm0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v5, Lri0;->n:Lri0;

    .line 10
    .line 11
    iget-object v6, p0, Lrm0;->t:Lfn0;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x2

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v6, Lfn0;->h:Lwu4;

    .line 19
    .line 20
    iget v1, p0, Lrm0;->s:I

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eq v1, v7, :cond_1

    .line 25
    .line 26
    if-ne v1, v8, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lwu4;->m()Lsr3;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    instance-of p1, p1, Ly51;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lwu4;->m()Lsr3;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_4

    .line 58
    :cond_3
    :try_start_1
    iput v7, p0, Lrm0;->s:I

    .line 59
    .line 60
    invoke-static {v6, p0}, Lfn0;->f(Lfn0;Lfh0;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-ne p1, v5, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    iput v8, p0, Lrm0;->s:I

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-static {v6, p1, p0}, Lfn0;->g(Lfn0;ZLdh0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v5, :cond_5

    .line 75
    .line 76
    :goto_1
    move-object v3, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    :goto_2
    move-object v3, p1

    .line 79
    check-cast v3, Lsr3;

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :goto_3
    new-instance v3, Lx13;

    .line 83
    .line 84
    invoke-direct {v3, p0, v2}, Lx13;-><init>(Ljava/lang/Throwable;I)V

    .line 85
    .line 86
    .line 87
    :goto_4
    return-object v3

    .line 88
    :pswitch_0
    iget v0, p0, Lrm0;->s:I

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    if-eq v0, v7, :cond_7

    .line 93
    .line 94
    if-ne v0, v8, :cond_6

    .line 95
    .line 96
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_6
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v1, v3

    .line 104
    goto :goto_8

    .line 105
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, v6, Lfn0;->i:Lqd1;

    .line 113
    .line 114
    iput v7, p0, Lrm0;->s:I

    .line 115
    .line 116
    iget-object p1, p1, Lqd1;->p:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lz80;

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Lbv1;->s(Lfh0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v5, :cond_9

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_9
    move-object p1, v1

    .line 128
    :goto_5
    if-ne p1, v5, :cond_a

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_a
    :goto_6
    invoke-virtual {v6}, Lfn0;->i()Lvs1;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Lvs1;->d()La81;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, v2}, Lqj0;->u(La81;I)La81;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance v0, Lt50;

    .line 144
    .line 145
    invoke-direct {v0, v8, v6}, Lt50;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iput v8, p0, Lrm0;->s:I

    .line 149
    .line 150
    invoke-interface {p1, v0, p0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    if-ne p0, v5, :cond_b

    .line 155
    .line 156
    :goto_7
    move-object v1, v5

    .line 157
    :cond_b
    :goto_8
    return-object v1

    .line 158
    :pswitch_1
    iget v0, p0, Lrm0;->s:I

    .line 159
    .line 160
    if-eqz v0, :cond_d

    .line 161
    .line 162
    if-ne v0, v7, :cond_c

    .line 163
    .line 164
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_c
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object v1, v3

    .line 172
    goto :goto_9

    .line 173
    :cond_d
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iput v7, p0, Lrm0;->s:I

    .line 177
    .line 178
    invoke-static {v6, p0}, Lfn0;->e(Lfn0;Lfh0;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    if-ne p0, v5, :cond_e

    .line 183
    .line 184
    move-object v1, v5

    .line 185
    :cond_e
    :goto_9
    return-object v1

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
