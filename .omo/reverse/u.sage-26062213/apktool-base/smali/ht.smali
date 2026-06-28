.class public final Lht;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lpt;


# direct methods
.method public synthetic constructor <init>(Lpt;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lht;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lht;->t:Lpt;

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
    iget v0, p0, Lht;->r:I

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
    invoke-virtual {p0, p2, p1}, Lht;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lht;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lht;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lht;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lht;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lht;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lht;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lht;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lht;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 1

    .line 1
    iget p2, p0, Lht;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lht;->t:Lpt;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lht;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p2, p0, p1, v0}, Lht;-><init>(Lpt;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Lht;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p2, p0, p1, v0}, Lht;-><init>(Lpt;Ldh0;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_1
    new-instance p2, Lht;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p2, p0, p1, v0}, Lht;-><init>(Lpt;Ldh0;I)V

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lht;->r:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    sget-object v3, Lt64;->a:Lt64;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lri0;->n:Lri0;

    .line 12
    .line 13
    iget-object v7, v0, Lht;->t:Lpt;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lht;->s:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    if-ne v1, v8, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v3, v4

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Lpt;->l()Lps;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lps;->c()La81;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lqj0;->D(La81;)La81;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v4, Lyq;

    .line 51
    .line 52
    const/16 v5, 0xa

    .line 53
    .line 54
    invoke-direct {v4, v1, v5}, Lyq;-><init>(La81;I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v7, Lpt;->i:Lb23;

    .line 58
    .line 59
    new-instance v5, Lyq;

    .line 60
    .line 61
    const/16 v9, 0x9

    .line 62
    .line 63
    invoke-direct {v5, v1, v9}, Lyq;-><init>(La81;I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lmt;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-direct {v1, v9, v5}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Lpt;->l()Lps;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iget-object v5, v5, Lps;->d:Lnv3;

    .line 77
    .line 78
    invoke-virtual {v5}, Lnv3;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, La81;

    .line 83
    .line 84
    invoke-static {v5}, Lqj0;->D(La81;)La81;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    new-instance v10, Lyq;

    .line 89
    .line 90
    const/16 v11, 0xb

    .line 91
    .line 92
    invoke-direct {v10, v5, v11}, Lyq;-><init>(La81;I)V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x3

    .line 96
    new-array v11, v5, [La81;

    .line 97
    .line 98
    aput-object v4, v11, v9

    .line 99
    .line 100
    aput-object v1, v11, v8

    .line 101
    .line 102
    aput-object v10, v11, v2

    .line 103
    .line 104
    sget v1, Lu81;->a:I

    .line 105
    .line 106
    array-length v1, v11

    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    sget-object v1, Lg01;->n:Lg01;

    .line 110
    .line 111
    :goto_0
    move-object v13, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance v1, Lii;

    .line 114
    .line 115
    invoke-direct {v1, v9, v11}, Lii;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_1
    new-instance v12, Lq30;

    .line 120
    .line 121
    sget-object v16, Lvy;->n:Lvy;

    .line 122
    .line 123
    const/16 v17, 0x1

    .line 124
    .line 125
    sget-object v14, Ld01;->n:Ld01;

    .line 126
    .line 127
    const/4 v15, -0x2

    .line 128
    invoke-direct/range {v12 .. v17}, Lq30;-><init>(Ljava/lang/Object;Lhi0;ILvy;I)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lct;

    .line 132
    .line 133
    invoke-direct {v1, v7, v5}, Lct;-><init>(Lpt;I)V

    .line 134
    .line 135
    .line 136
    iput v8, v0, Lht;->s:I

    .line 137
    .line 138
    invoke-virtual {v12, v1, v0}, Lp30;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-ne v0, v6, :cond_3

    .line 143
    .line 144
    move-object v3, v6

    .line 145
    :cond_3
    :goto_2
    return-object v3

    .line 146
    :pswitch_0
    iget v1, v0, Lht;->s:I

    .line 147
    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    if-ne v1, v8, :cond_4

    .line 151
    .line 152
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v3, v4

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7}, Lpt;->c()Ln1;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Ln1;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lnv3;

    .line 171
    .line 172
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, La81;

    .line 177
    .line 178
    new-instance v4, Lct;

    .line 179
    .line 180
    invoke-direct {v4, v7, v2}, Lct;-><init>(Lpt;I)V

    .line 181
    .line 182
    .line 183
    iput v8, v0, Lht;->s:I

    .line 184
    .line 185
    invoke-interface {v1, v4, v0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-ne v0, v6, :cond_6

    .line 190
    .line 191
    move-object v3, v6

    .line 192
    :cond_6
    :goto_3
    return-object v3

    .line 193
    :pswitch_1
    iget v1, v0, Lht;->s:I

    .line 194
    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    if-ne v1, v8, :cond_7

    .line 198
    .line 199
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v3, v4

    .line 207
    goto :goto_4

    .line 208
    :cond_8
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v7, Lpt;->j:Lnv3;

    .line 212
    .line 213
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, La81;

    .line 218
    .line 219
    new-instance v2, Lct;

    .line 220
    .line 221
    invoke-direct {v2, v7, v8}, Lct;-><init>(Lpt;I)V

    .line 222
    .line 223
    .line 224
    iput v8, v0, Lht;->s:I

    .line 225
    .line 226
    invoke-interface {v1, v2, v0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v6, :cond_9

    .line 231
    .line 232
    move-object v3, v6

    .line 233
    :cond_9
    :goto_4
    return-object v3

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
