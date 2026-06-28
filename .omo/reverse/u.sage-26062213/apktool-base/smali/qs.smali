.class public final synthetic Lqs;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lpt;


# direct methods
.method public synthetic constructor <init>(Lpt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqs;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lqs;->o:Lpt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lqs;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide v2, 0x7fffffffffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide/16 v4, 0x1388

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x2

    .line 14
    iget-object p0, p0, Lqs;->o:Lpt;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lo43;->b:Lo43;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lpt;->n(Lv43;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lt64;->a:Lt64;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    invoke-virtual {p0}, Lpt;->h()Lxr;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lxr;->f:Lvq;

    .line 32
    .line 33
    invoke-virtual {p0}, Lpt;->c()Ln1;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ln1;->a()La81;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lsq;

    .line 42
    .line 43
    invoke-direct {v3, v7, p0}, Lsq;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v8, v3}, Ln44;->R(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    instance-of v4, v2, Lov0;

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    move-object v4, v2

    .line 54
    check-cast v4, Lov0;

    .line 55
    .line 56
    iget-object v5, v4, Lov0;->o:Ldf1;

    .line 57
    .line 58
    if-ne v5, v3, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Lov0;

    .line 62
    .line 63
    invoke-direct {v4, v2, v3}, Lov0;-><init>(La81;Ldf1;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p0, p0, Lpt;->b:Lnv3;

    .line 67
    .line 68
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lus0;

    .line 73
    .line 74
    iget-object p0, p0, Lus0;->d:Lb23;

    .line 75
    .line 76
    new-instance v2, Lxs;

    .line 77
    .line 78
    const/4 v3, 0x4

    .line 79
    invoke-direct {v2, v3, v1}, Lbv3;-><init>(ILdh0;)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    new-array v1, v1, [La81;

    .line 84
    .line 85
    aput-object v0, v1, v6

    .line 86
    .line 87
    aput-object v4, v1, v7

    .line 88
    .line 89
    aput-object p0, v1, v8

    .line 90
    .line 91
    new-instance p0, Lvq;

    .line 92
    .line 93
    const/4 v0, 0x5

    .line 94
    invoke-direct {p0, v0, v1, v2}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lqj0;->D(La81;)La81;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :pswitch_1
    invoke-virtual {p0}, Lpt;->l()Lps;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lps;->c()La81;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v7, p0, Lpt;->c:Lnv3;

    .line 111
    .line 112
    invoke-virtual {v7}, Lnv3;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lur3;

    .line 117
    .line 118
    new-instance v9, Lot;

    .line 119
    .line 120
    invoke-direct {v9, p0, v1}, Lot;-><init>(Lpt;Ldh0;)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Lc91;

    .line 124
    .line 125
    invoke-direct {v10, v0, v7, v9, v6}, Lc91;-><init>(La81;Ljava/lang/Object;Lef1;I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v10}, Lqj0;->D(La81;)La81;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v6, Lzr;

    .line 133
    .line 134
    invoke-direct {v6, v8, v1, v8}, Lzr;-><init>(ILdh0;I)V

    .line 135
    .line 136
    .line 137
    new-instance v7, Lk81;

    .line 138
    .line 139
    invoke-direct {v7, v0, v6, v8}, Lk81;-><init>(La81;Ldf1;I)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lpt;->f:Lbh0;

    .line 143
    .line 144
    new-instance v0, Lrr3;

    .line 145
    .line 146
    invoke-direct {v0, v4, v5, v2, v3}, Lrr3;-><init>(JJ)V

    .line 147
    .line 148
    .line 149
    invoke-static {v7, p0, v0, v1}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :pswitch_2
    invoke-virtual {p0}, Lpt;->c()Ln1;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ln1;->a()La81;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v1, Lvs;

    .line 163
    .line 164
    invoke-direct {v1, v0, p0, v7}, Lvs;-><init>(La81;Lpt;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Lqj0;->D(La81;)La81;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_3
    invoke-virtual {p0}, Lpt;->c()Ln1;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ln1;->a()La81;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Lyq;

    .line 181
    .line 182
    const/4 v6, 0x7

    .line 183
    invoke-direct {v1, v0, v6}, Lyq;-><init>(La81;I)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Lqj0;->D(La81;)La81;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object p0, p0, Lpt;->f:Lbh0;

    .line 191
    .line 192
    new-instance v1, Lrr3;

    .line 193
    .line 194
    invoke-direct {v1, v4, v5, v2, v3}, Lrr3;-><init>(JJ)V

    .line 195
    .line 196
    .line 197
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-static {v0, p0, v1, v2}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :pswitch_4
    invoke-virtual {p0}, Lpt;->c()Ln1;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ln1;->a()La81;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v1, Lvs;

    .line 213
    .line 214
    invoke-direct {v1, v0, p0, v6}, Lvs;-><init>(La81;Lpt;I)V

    .line 215
    .line 216
    .line 217
    invoke-static {v1}, Lqj0;->D(La81;)La81;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object p0, p0, Lpt;->f:Lbh0;

    .line 222
    .line 223
    new-instance v1, Lrr3;

    .line 224
    .line 225
    invoke-direct {v1, v4, v5, v2, v3}, Lrr3;-><init>(JJ)V

    .line 226
    .line 227
    .line 228
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-static {v0, p0, v1, v2}, Lqj0;->Y(La81;Lqi0;Lom3;Ljava/lang/Object;)Lb23;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :pswitch_5
    new-instance v0, Lus0;

    .line 236
    .line 237
    iget-object p0, p0, Lpt;->a:Landroid/content/Context;

    .line 238
    .line 239
    invoke-direct {v0, p0}, Lus0;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
