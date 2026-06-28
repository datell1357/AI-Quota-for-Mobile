.class public final Lga;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lga;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Lga;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lga;->q:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lef1;II)V
    .locals 0

    .line 12
    iput p4, p0, Lga;->o:I

    iput-object p1, p0, Lga;->p:Ljava/lang/Object;

    iput-object p2, p0, Lga;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lga;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v4, p0, Lga;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lga;->p:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lag1;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    check-cast p0, Lnd2;

    .line 22
    .line 23
    check-cast v4, Ldf1;

    .line 24
    .line 25
    invoke-static {v2}, Lqj0;->f0(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p0, v4, p1, p2}, Lmt3;->a(Lnd2;Ldf1;Lag1;I)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :pswitch_0
    check-cast p1, Lv20;

    .line 34
    .line 35
    check-cast p2, Lzh1;

    .line 36
    .line 37
    check-cast p0, Lmm2;

    .line 38
    .line 39
    iget-object v0, p0, Lmm2;->F:Lxy1;

    .line 40
    .line 41
    invoke-virtual {v0}, Lxy1;->I()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iput-object p1, p0, Lmm2;->Y:Lv20;

    .line 48
    .line 49
    iput-object p2, p0, Lmm2;->X:Lzh1;

    .line 50
    .line 51
    invoke-static {v0}, Laz1;->a(Lxy1;)Lsr2;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lq9;

    .line 56
    .line 57
    invoke-virtual {p1}, Lq9;->getSnapshotObserver()Lur2;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object p2, Lmm2;->d0:Lo83;

    .line 62
    .line 63
    sget-object p2, Ll9;->R:Ll9;

    .line 64
    .line 65
    check-cast v4, Llm2;

    .line 66
    .line 67
    iget-object p1, p1, Lur2;->a:Lip3;

    .line 68
    .line 69
    invoke-virtual {p1, p0, p2, v4}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v1, p0, Lmm2;->b0:Z

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iput-boolean v2, p0, Lmm2;->b0:Z

    .line 76
    .line 77
    :goto_0
    return-object v3

    .line 78
    :pswitch_1
    check-cast p1, Lag1;

    .line 79
    .line 80
    check-cast p2, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    and-int/lit8 v0, p2, 0x3

    .line 87
    .line 88
    const/4 v5, 0x2

    .line 89
    if-eq v0, v5, :cond_1

    .line 90
    .line 91
    move v0, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move v0, v1

    .line 94
    :goto_1
    and-int/2addr p2, v2

    .line 95
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_7

    .line 100
    .line 101
    check-cast p0, Ldz1;

    .line 102
    .line 103
    iget-object p0, p0, Ldz1;->g:Lws2;

    .line 104
    .line 105
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    check-cast v4, Ldf1;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lag1;->Y(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lag1;->g(Z)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p2, :cond_2

    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-interface {v4, p1, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_2
    iget p2, p1, Lag1;->l:I

    .line 135
    .line 136
    if-nez p2, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const-string p2, "No nodes can be emitted before calling deactivateToEndGroup"

    .line 140
    .line 141
    invoke-static {p2}, Lwb0;->a(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-boolean p2, p1, Lag1;->S:Z

    .line 145
    .line 146
    if-nez p2, :cond_5

    .line 147
    .line 148
    if-nez p0, :cond_4

    .line 149
    .line 150
    invoke-virtual {p1}, Lag1;->P()V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    iget-object p0, p1, Lag1;->G:Ltn3;

    .line 155
    .line 156
    iget p2, p0, Ltn3;->g:I

    .line 157
    .line 158
    iget p0, p0, Ltn3;->h:I

    .line 159
    .line 160
    iget-object v0, p1, Lag1;->M:Ltb0;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ltb0;->d(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Ltb0;->b:Lk30;

    .line 169
    .line 170
    iget-object v0, v0, Lk30;->a:Lbr2;

    .line 171
    .line 172
    sget-object v2, Lwp2;->c:Lwp2;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Lbr2;->S0(Lzq2;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p1, Lag1;->s:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-static {v0, p2, p0}, Lis0;->j(Ljava/util/List;II)V

    .line 180
    .line 181
    .line 182
    iget-object p0, p1, Lag1;->G:Ltn3;

    .line 183
    .line 184
    invoke-virtual {p0}, Ltn3;->t()V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_3
    iget-boolean p0, p1, Lag1;->y:Z

    .line 188
    .line 189
    if-eqz p0, :cond_6

    .line 190
    .line 191
    iget-object p0, p1, Lag1;->G:Ltn3;

    .line 192
    .line 193
    iget p0, p0, Ltn3;->i:I

    .line 194
    .line 195
    iget p2, p1, Lag1;->z:I

    .line 196
    .line 197
    if-ne p0, p2, :cond_6

    .line 198
    .line 199
    const/4 p0, -0x1

    .line 200
    iput p0, p1, Lag1;->z:I

    .line 201
    .line 202
    iput-boolean v1, p1, Lag1;->y:Z

    .line 203
    .line 204
    :cond_6
    invoke-virtual {p1, v1}, Lag1;->p(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    invoke-virtual {p1}, Lag1;->Q()V

    .line 209
    .line 210
    .line 211
    :goto_4
    return-object v3

    .line 212
    :pswitch_2
    check-cast p1, Lag1;

    .line 213
    .line 214
    check-cast p2, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    check-cast p0, Ln14;

    .line 220
    .line 221
    check-cast v4, Lne1;

    .line 222
    .line 223
    invoke-static {v2}, Lqj0;->f0(I)I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-static {p0, v4, p1, p2}, Lj11;->a(Ln14;Lne1;Lag1;I)V

    .line 228
    .line 229
    .line 230
    return-object v3

    .line 231
    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    check-cast p2, Lgh3;

    .line 238
    .line 239
    check-cast v4, Lha;

    .line 240
    .line 241
    check-cast p0, Lhh3;

    .line 242
    .line 243
    iget-object p0, p0, Lhh3;->b:Luf2;

    .line 244
    .line 245
    iget v0, p2, Lgh3;->f:I

    .line 246
    .line 247
    invoke-virtual {p0, v0}, Luf2;->b(I)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-nez p0, :cond_8

    .line 252
    .line 253
    invoke-virtual {v4, p1, p2}, Lha;->g(ILgh3;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Lha;->d()V

    .line 257
    .line 258
    .line 259
    :cond_8
    return-object v3

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
