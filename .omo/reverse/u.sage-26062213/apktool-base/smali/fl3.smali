.class public final Lfl3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Laj3;

.field public final synthetic u:Z


# direct methods
.method public synthetic constructor <init>(Laj3;ZLdh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lfl3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lfl3;->t:Laj3;

    .line 4
    .line 5
    iput-boolean p2, p0, Lfl3;->u:Z

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
    iget v0, p0, Lfl3;->r:I

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
    invoke-virtual {p0, p2, p1}, Lfl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lfl3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lfl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lfl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lfl3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lfl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lfl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lfl3;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lfl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p2, p1}, Lfl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lfl3;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lfl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Lfl3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lfl3;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lfl3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget p2, p0, Lfl3;->r:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lfl3;->u:Z

    .line 4
    .line 5
    iget-object p0, p0, Lfl3;->t:Laj3;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lfl3;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lfl3;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :pswitch_1
    new-instance p2, Lfl3;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-direct {p2, p0, v0, p1, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :pswitch_2
    new-instance p2, Lfl3;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p2, p0, v0, p1, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 35
    .line 36
    .line 37
    return-object p2

    .line 38
    :pswitch_3
    new-instance p2, Lfl3;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p2, p0, v0, p1, v1}, Lfl3;-><init>(Laj3;ZLdh0;I)V

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lfl3;->r:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-boolean v2, p0, Lfl3;->u:Z

    .line 5
    .line 6
    iget-object v3, p0, Lfl3;->t:Laj3;

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
    iget v0, p0, Lfl3;->s:I

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
    iget-object p1, v3, Laj3;->b:Lps;

    .line 39
    .line 40
    iput v6, p0, Lfl3;->s:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lps;->a()Llm0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lms;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, v2, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-ne p0, v5, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object p0, v7

    .line 60
    :goto_0
    if-ne p0, v5, :cond_0

    .line 61
    .line 62
    :goto_1
    return-object v5

    .line 63
    :pswitch_0
    iget v0, p0, Lfl3;->s:I

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    if-ne v0, v6, :cond_4

    .line 68
    .line 69
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v5, v8

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v3, Laj3;->b:Lps;

    .line 82
    .line 83
    iput v6, p0, Lfl3;->s:I

    .line 84
    .line 85
    invoke-virtual {p1, v2, p0}, Lps;->i(ZLbv3;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v5, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    :goto_2
    move-object v5, v7

    .line 93
    :goto_3
    return-object v5

    .line 94
    :pswitch_1
    iget v0, p0, Lfl3;->s:I

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    if-ne v0, v6, :cond_7

    .line 99
    .line 100
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_7
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object v5, v8

    .line 108
    goto :goto_5

    .line 109
    :cond_8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, v3, Laj3;->b:Lps;

    .line 113
    .line 114
    iput v6, p0, Lfl3;->s:I

    .line 115
    .line 116
    invoke-virtual {p1, v2, p0}, Lps;->i(ZLbv3;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-ne p0, v5, :cond_9

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    :goto_4
    move-object v5, v7

    .line 124
    :goto_5
    return-object v5

    .line 125
    :pswitch_2
    iget v0, p0, Lfl3;->s:I

    .line 126
    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    if-ne v0, v6, :cond_a

    .line 130
    .line 131
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_a
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v5, v8

    .line 139
    goto :goto_9

    .line 140
    :cond_b
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, v3, Laj3;->b:Lps;

    .line 144
    .line 145
    instance-of v0, p1, Lr50;

    .line 146
    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    check-cast p1, Lr50;

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_c
    move-object p1, v8

    .line 153
    :goto_6
    if-eqz p1, :cond_e

    .line 154
    .line 155
    iput v6, p0, Lfl3;->s:I

    .line 156
    .line 157
    iget-object p1, p1, Lr50;->s:Llm0;

    .line 158
    .line 159
    new-instance v0, Lms;

    .line 160
    .line 161
    invoke-direct {v0, v2, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    if-ne p0, v5, :cond_d

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_d
    move-object p0, v7

    .line 172
    :goto_7
    if-ne p0, v5, :cond_e

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_e
    :goto_8
    move-object v5, v7

    .line 176
    :goto_9
    return-object v5

    .line 177
    :pswitch_3
    iget v0, p0, Lfl3;->s:I

    .line 178
    .line 179
    if-eqz v0, :cond_10

    .line 180
    .line 181
    if-ne v0, v6, :cond_f

    .line 182
    .line 183
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_c

    .line 187
    :cond_f
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object v5, v8

    .line 191
    goto :goto_d

    .line 192
    :cond_10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, v3, Laj3;->b:Lps;

    .line 196
    .line 197
    instance-of v0, p1, Lr50;

    .line 198
    .line 199
    if-eqz v0, :cond_11

    .line 200
    .line 201
    check-cast p1, Lr50;

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_11
    move-object p1, v8

    .line 205
    :goto_a
    if-eqz p1, :cond_13

    .line 206
    .line 207
    xor-int/lit8 v0, v2, 0x1

    .line 208
    .line 209
    iput v6, p0, Lfl3;->s:I

    .line 210
    .line 211
    iget-object p1, p1, Lr50;->s:Llm0;

    .line 212
    .line 213
    new-instance v2, Lms;

    .line 214
    .line 215
    invoke-direct {v2, v0, v8, v1}, Lms;-><init>(ZLdh0;I)V

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v2, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    if-ne p0, v5, :cond_12

    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_12
    move-object p0, v7

    .line 226
    :goto_b
    if-ne p0, v5, :cond_13

    .line 227
    .line 228
    goto :goto_d

    .line 229
    :cond_13
    :goto_c
    move-object v5, v7

    .line 230
    :goto_d
    return-object v5

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
