.class public final Lcl3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lm10;

.field public final synthetic u:Lwh1;


# direct methods
.method public synthetic constructor <init>(Lm10;Lwh1;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcl3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lcl3;->t:Lm10;

    .line 4
    .line 5
    iput-object p2, p0, Lcl3;->u:Lwh1;

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
    iget v0, p0, Lcl3;->r:I

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
    invoke-virtual {p0, p2, p1}, Lcl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcl3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lcl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcl3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p2, p0, Lcl3;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lcl3;->u:Lwh1;

    .line 4
    .line 5
    iget-object p0, p0, Lcl3;->t:Lm10;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcl3;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Lcl3;-><init>(Lm10;Lwh1;Ldh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lcl3;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Lcl3;-><init>(Lm10;Lwh1;Ldh0;I)V

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
    .locals 11

    .line 1
    iget v0, p0, Lcl3;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcl3;->t:Lm10;

    .line 5
    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x3

    .line 12
    iget-object v7, p0, Lcl3;->u:Lwh1;

    .line 13
    .line 14
    sget-object v8, Lt64;->a:Lt64;

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcl3;->s:I

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    if-eq v0, v9, :cond_2

    .line 26
    .line 27
    if-eq v0, v5, :cond_1

    .line 28
    .line 29
    if-ne v0, v6, :cond_0

    .line 30
    .line 31
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v4, v10

    .line 39
    goto :goto_5

    .line 40
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput v9, p0, Lcl3;->s:I

    .line 52
    .line 53
    invoke-virtual {v2, v1, p0}, Lm10;->e(ZLfh0;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v4, :cond_4

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_4
    :goto_0
    iput v5, p0, Lcl3;->s:I

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    sget-object p1, Lzu0;->a:Lzp0;

    .line 66
    .line 67
    sget-object p1, Llp0;->p:Llp0;

    .line 68
    .line 69
    new-instance v0, Lrh1;

    .line 70
    .line 71
    invoke-direct {v0, v7, v10}, Lrh1;-><init>(Lwh1;Ldh0;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v4, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move-object p1, v8

    .line 82
    :goto_1
    if-ne p1, v4, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    :goto_2
    iput v6, p0, Lcl3;->s:I

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object p1, Lzu0;->a:Lzp0;

    .line 91
    .line 92
    sget-object p1, Llp0;->p:Llp0;

    .line 93
    .line 94
    new-instance v0, Lqh1;

    .line 95
    .line 96
    invoke-direct {v0, v7, v10, v9}, Lqh1;-><init>(Lwh1;Ldh0;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v4, :cond_7

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    move-object p0, v8

    .line 107
    :goto_3
    if-ne p0, v4, :cond_8

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    :goto_4
    move-object v4, v8

    .line 111
    :goto_5
    return-object v4

    .line 112
    :pswitch_0
    iget v0, p0, Lcl3;->s:I

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    if-eq v0, v9, :cond_b

    .line 117
    .line 118
    if-eq v0, v5, :cond_a

    .line 119
    .line 120
    if-ne v0, v6, :cond_9

    .line 121
    .line 122
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_a

    .line 126
    :cond_9
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v4, v10

    .line 130
    goto :goto_b

    .line 131
    :cond_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_b
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_c
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iput v9, p0, Lcl3;->s:I

    .line 143
    .line 144
    invoke-virtual {v2, v1, p0}, Lm10;->e(ZLfh0;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v4, :cond_d

    .line 149
    .line 150
    goto :goto_b

    .line 151
    :cond_d
    :goto_6
    iput v5, p0, Lcl3;->s:I

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    sget-object p1, Lzu0;->a:Lzp0;

    .line 157
    .line 158
    sget-object p1, Llp0;->p:Llp0;

    .line 159
    .line 160
    new-instance v0, Lrh1;

    .line 161
    .line 162
    invoke-direct {v0, v7, v10}, Lrh1;-><init>(Lwh1;Ldh0;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-ne p1, v4, :cond_e

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_e
    move-object p1, v8

    .line 173
    :goto_7
    if-ne p1, v4, :cond_f

    .line 174
    .line 175
    goto :goto_b

    .line 176
    :cond_f
    :goto_8
    iput v6, p0, Lcl3;->s:I

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    sget-object p1, Lzu0;->a:Lzp0;

    .line 182
    .line 183
    sget-object p1, Llp0;->p:Llp0;

    .line 184
    .line 185
    new-instance v0, Lqh1;

    .line 186
    .line 187
    invoke-direct {v0, v7, v10, v9}, Lqh1;-><init>(Lwh1;Ldh0;I)V

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    if-ne p0, v4, :cond_10

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_10
    move-object p0, v8

    .line 198
    :goto_9
    if-ne p0, v4, :cond_11

    .line 199
    .line 200
    goto :goto_b

    .line 201
    :cond_11
    :goto_a
    move-object v4, v8

    .line 202
    :goto_b
    return-object v4

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
