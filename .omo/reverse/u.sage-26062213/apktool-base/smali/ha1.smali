.class public final synthetic Lha1;
.super Lof1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput p8, p0, Lha1;->u:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p7}, Lof1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lha1;->u:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lx10;->o:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lgi3;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p0, Law1;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Lgi3;->k(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p1, p2}, Lgi3;->j(I)Lgi3;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Lgi3;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    iput-boolean p1, p0, Law1;->b:Z

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_0
    check-cast p1, Lfa1;

    .line 54
    .line 55
    check-cast p2, Lfa1;

    .line 56
    .line 57
    check-cast p0, Lna1;

    .line 58
    .line 59
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p2}, Lfa1;->a()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1}, Lfa1;->a()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ne p2, p1, :cond_2

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    iget-object p1, p0, Lna1;->E:Lo;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lo;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    if-eqz p2, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Lx50;

    .line 95
    .line 96
    const/4 v3, 0x5

    .line 97
    invoke-direct {v0, p0, v2, v3}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    invoke-static {p1, v2, v2, v0, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 102
    .line 103
    .line 104
    new-instance p1, Lw33;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lh4;

    .line 110
    .line 111
    const/16 v3, 0xd

    .line 112
    .line 113
    invoke-direct {v0, v3, p1, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0, v0}, Lix;->H(Lmd2;Lne1;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lw33;->n:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Li02;

    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-virtual {p1}, Li02;->a()Li02;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    move-object p1, v2

    .line 130
    :goto_1
    iput-object p1, p0, Lna1;->G:Li02;

    .line 131
    .line 132
    iget-object p1, p0, Lna1;->H:Lmm2;

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    invoke-virtual {p1}, Lmm2;->O0()Lmd2;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-boolean p1, p1, Lmd2;->A:Z

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p0}, Lna1;->K0()V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    iget-object p1, p0, Lna1;->G:Li02;

    .line 149
    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {p1}, Li02;->b()V

    .line 153
    .line 154
    .line 155
    :cond_6
    iput-object v2, p0, Lna1;->G:Li02;

    .line 156
    .line 157
    invoke-virtual {p0}, Lna1;->K0()V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_2
    invoke-static {p0}, Lw80;->A(Leh3;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lna1;->D:Lvf2;

    .line 164
    .line 165
    if-eqz p1, :cond_a

    .line 166
    .line 167
    iget-object v0, p0, Lna1;->F:Lt91;

    .line 168
    .line 169
    if-eqz p2, :cond_9

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    new-instance p2, Lu91;

    .line 174
    .line 175
    invoke-direct {p2, v0}, Lu91;-><init>(Lt91;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1, p2}, Lna1;->J0(Lvf2;Lws1;)V

    .line 179
    .line 180
    .line 181
    iput-object v2, p0, Lna1;->F:Lt91;

    .line 182
    .line 183
    :cond_8
    new-instance p2, Lt91;

    .line 184
    .line 185
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1, p2}, Lna1;->J0(Lvf2;Lws1;)V

    .line 189
    .line 190
    .line 191
    iput-object p2, p0, Lna1;->F:Lt91;

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-eqz v0, :cond_a

    .line 195
    .line 196
    new-instance p2, Lu91;

    .line 197
    .line 198
    invoke-direct {p2, v0}, Lu91;-><init>(Lt91;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1, p2}, Lna1;->J0(Lvf2;Lws1;)V

    .line 202
    .line 203
    .line 204
    iput-object v2, p0, Lna1;->F:Lt91;

    .line 205
    .line 206
    :cond_a
    :goto_3
    return-object v1

    .line 207
    :pswitch_1
    check-cast p1, Lfa1;

    .line 208
    .line 209
    check-cast p2, Lfa1;

    .line 210
    .line 211
    check-cast p0, Lia1;

    .line 212
    .line 213
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 214
    .line 215
    if-nez v0, :cond_b

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    invoke-virtual {p2}, Lfa1;->a()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-virtual {p1}, Lfa1;->a()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-ne p2, p1, :cond_c

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_c
    if-eqz p2, :cond_e

    .line 230
    .line 231
    new-instance p1, Lw33;

    .line 232
    .line 233
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 234
    .line 235
    .line 236
    new-instance p2, Lj9;

    .line 237
    .line 238
    const/4 v0, 0x4

    .line 239
    invoke-direct {p2, v0, p1, p0}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p2}, Lix;->H(Lmd2;Lne1;)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p1, Lw33;->n:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p1, Li02;

    .line 248
    .line 249
    if-eqz p1, :cond_d

    .line 250
    .line 251
    invoke-virtual {p1}, Li02;->a()Li02;

    .line 252
    .line 253
    .line 254
    move-object v2, p1

    .line 255
    :cond_d
    iput-object v2, p0, Lia1;->E:Li02;

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_e
    iget-object p1, p0, Lia1;->E:Li02;

    .line 259
    .line 260
    if-eqz p1, :cond_f

    .line 261
    .line 262
    invoke-virtual {p1}, Li02;->b()V

    .line 263
    .line 264
    .line 265
    :cond_f
    iput-object v2, p0, Lia1;->E:Li02;

    .line 266
    .line 267
    :goto_4
    return-object v1

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
