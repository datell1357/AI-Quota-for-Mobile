.class public final Lej2;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:F

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FLpg3;Lyh2;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lej2;->r:I

    .line 3
    .line 4
    iput p1, p0, Lej2;->t:F

    .line 5
    .line 6
    iput-object p2, p0, Lej2;->u:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lej2;->v:Ljava/lang/Object;

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

.method public constructor <init>(Ldc;FLve;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lej2;->r:I

    .line 15
    iput-object p1, p0, Lej2;->u:Ljava/lang/Object;

    iput p2, p0, Lej2;->t:F

    iput-object p3, p0, Lej2;->v:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ln14;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lej2;->r:I

    .line 16
    iput-object p1, p0, Lej2;->v:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lej2;->r:I

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
    invoke-virtual {p0, p2, p1}, Lej2;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lej2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lej2;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lej2;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lej2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lej2;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lej2;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lej2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lej2;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lej2;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lej2;->v:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lej2;

    .line 9
    .line 10
    check-cast v1, Ln14;

    .line 11
    .line 12
    invoke-direct {p0, v1, p1}, Lej2;-><init>(Ln14;Ldh0;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lej2;->u:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p2, Lej2;

    .line 19
    .line 20
    iget-object v0, p0, Lej2;->u:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ldc;

    .line 23
    .line 24
    iget p0, p0, Lej2;->t:F

    .line 25
    .line 26
    check-cast v1, Lve;

    .line 27
    .line 28
    invoke-direct {p2, v0, p0, v1, p1}, Lej2;-><init>(Ldc;FLve;Ldh0;)V

    .line 29
    .line 30
    .line 31
    return-object p2

    .line 32
    :pswitch_1
    new-instance p2, Lej2;

    .line 33
    .line 34
    iget v0, p0, Lej2;->t:F

    .line 35
    .line 36
    iget-object p0, p0, Lej2;->u:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lpg3;

    .line 39
    .line 40
    check-cast v1, Lyh2;

    .line 41
    .line 42
    invoke-direct {p2, v0, p0, v1, p1}, Lej2;-><init>(FLpg3;Lyh2;Ldh0;)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lej2;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lej2;->v:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    sget-object v5, Lri0;->n:Lri0;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lej2;->s:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lej2;->t:F

    .line 23
    .line 24
    iget-object v3, p0, Lej2;->u:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lqi0;

    .line 27
    .line 28
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lej2;->u:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lqi0;

    .line 43
    .line 44
    invoke-interface {p1}, Lqi0;->d()Lhi0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lk75;->y(Lhi0;)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    move-object v3, p1

    .line 53
    :cond_2
    :goto_0
    invoke-static {v3}, Ldm0;->B(Lqi0;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    move-object p1, v2

    .line 60
    check-cast p1, Ln14;

    .line 61
    .line 62
    new-instance v4, Lsw0;

    .line 63
    .line 64
    invoke-direct {v4, p1, v0}, Lsw0;-><init>(Ln14;F)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Lej2;->u:Ljava/lang/Object;

    .line 68
    .line 69
    iput v0, p0, Lej2;->t:F

    .line 70
    .line 71
    iput v6, p0, Lej2;->s:I

    .line 72
    .line 73
    iget-object p1, p0, Lfh0;->o:Lhi0;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lc75;->E(Lhi0;)Lqc;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v4, p0}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v5, :cond_2

    .line 87
    .line 88
    move-object v1, v5

    .line 89
    :cond_3
    :goto_1
    return-object v1

    .line 90
    :pswitch_0
    iget v0, p0, Lej2;->s:I

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    if-ne v0, v6, :cond_4

    .line 95
    .line 96
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v1, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lej2;->u:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Ldc;

    .line 111
    .line 112
    iget-object p1, p1, Ldc;->K:Lpd;

    .line 113
    .line 114
    iget v0, p0, Lej2;->t:F

    .line 115
    .line 116
    new-instance v3, Ljava/lang/Float;

    .line 117
    .line 118
    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    .line 119
    .line 120
    .line 121
    check-cast v2, Lve;

    .line 122
    .line 123
    iput v6, p0, Lej2;->s:I

    .line 124
    .line 125
    invoke-static {p1, v3, v2, p0}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-ne p0, v5, :cond_6

    .line 130
    .line 131
    move-object v1, v5

    .line 132
    :cond_6
    :goto_2
    return-object v1

    .line 133
    :pswitch_1
    iget-object v0, p0, Lej2;->u:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v8, v0

    .line 136
    check-cast v8, Lpg3;

    .line 137
    .line 138
    iget v0, p0, Lej2;->t:F

    .line 139
    .line 140
    iget v7, p0, Lej2;->s:I

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x2

    .line 144
    if-eqz v7, :cond_9

    .line 145
    .line 146
    if-eq v7, v6, :cond_8

    .line 147
    .line 148
    if-ne v7, v10, :cond_7

    .line 149
    .line 150
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_7
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v1, v3

    .line 158
    goto :goto_7

    .line 159
    :cond_8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    cmpl-float p1, v0, v9

    .line 167
    .line 168
    if-lez p1, :cond_a

    .line 169
    .line 170
    iput v6, p0, Lej2;->s:I

    .line 171
    .line 172
    iget-object p1, v8, Lpg3;->b:Lws2;

    .line 173
    .line 174
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v8, v0, p1, p0}, Lpg3;->D(FLjava/lang/Object;Lbv3;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, v5, :cond_a

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_a
    :goto_3
    cmpg-float p1, v0, v9

    .line 186
    .line 187
    if-nez p1, :cond_e

    .line 188
    .line 189
    move-object v9, v2

    .line 190
    check-cast v9, Lyh2;

    .line 191
    .line 192
    iput v10, p0, Lej2;->s:I

    .line 193
    .line 194
    iget-object v10, v8, Lpg3;->e:Ln14;

    .line 195
    .line 196
    if-nez v10, :cond_c

    .line 197
    .line 198
    :cond_b
    :goto_4
    move-object p0, v1

    .line 199
    goto :goto_5

    .line 200
    :cond_c
    iget-object p1, v8, Lpg3;->c:Lws2;

    .line 201
    .line 202
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_d

    .line 211
    .line 212
    iget-object p1, v8, Lpg3;->b:Lws2;

    .line 213
    .line 214
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p1, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_d

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_d
    iget-object p1, v8, Lpg3;->l:Leh2;

    .line 226
    .line 227
    new-instance v7, Ljg3;

    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    const/4 v12, 0x1

    .line 231
    invoke-direct/range {v7 .. v12}, Ljg3;-><init>(Lpg3;Ljava/lang/Object;Ln14;Ldh0;I)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1, v7, p0}, Leh2;->a(Leh2;Lpe1;Ldh0;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    if-ne p0, v5, :cond_b

    .line 239
    .line 240
    :goto_5
    if-ne p0, v5, :cond_e

    .line 241
    .line 242
    :goto_6
    move-object v1, v5

    .line 243
    :cond_e
    :goto_7
    return-object v1

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
