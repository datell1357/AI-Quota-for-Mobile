.class public final Laz3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;

.field public synthetic u:F


# direct methods
.method public synthetic constructor <init>(Lbz3;FLdh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Laz3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Laz3;->t:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Laz3;->u:F

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

.method public constructor <init>(Lfb0;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Laz3;->r:I

    .line 12
    iput-object p1, p0, Laz3;->t:Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Laz3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    check-cast p2, Ldh0;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p2, p1}, Laz3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Laz3;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Laz3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p1, Lqi0;

    .line 32
    .line 33
    check-cast p2, Ldh0;

    .line 34
    .line 35
    invoke-virtual {p0, p2, p1}, Laz3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Laz3;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Laz3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_1
    check-cast p1, Lqi0;

    .line 47
    .line 48
    check-cast p2, Ldh0;

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Laz3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Laz3;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Laz3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Laz3;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Laz3;->t:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Laz3;

    .line 9
    .line 10
    check-cast v1, Lfb0;

    .line 11
    .line 12
    invoke-direct {p0, v1, p1}, Laz3;-><init>(Lfb0;Ldh0;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Laz3;->u:F

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    new-instance p2, Laz3;

    .line 25
    .line 26
    check-cast v1, Lbz3;

    .line 27
    .line 28
    iget p0, p0, Laz3;->u:F

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {p2, v1, p0, p1, v0}, Laz3;-><init>(Lbz3;FLdh0;I)V

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :pswitch_1
    new-instance p2, Laz3;

    .line 36
    .line 37
    check-cast v1, Lbz3;

    .line 38
    .line 39
    iget p0, p0, Laz3;->u:F

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p2, v1, p0, p1, v0}, Laz3;-><init>(Lbz3;FLdh0;I)V

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
    .locals 11

    .line 1
    iget v0, p0, Laz3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lri0;->n:Lri0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Laz3;->t:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Lfb0;

    .line 17
    .line 18
    iget v0, p0, Laz3;->s:I

    .line 19
    .line 20
    const-wide v7, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-ne v0, v4, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v3, v6

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Laz3;->u:F

    .line 42
    .line 43
    iget-object v0, v5, Lfb0;->a:Lgh3;

    .line 44
    .line 45
    iget-object v0, v0, Lgh3;->d:Lbh3;

    .line 46
    .line 47
    sget-object v1, Lah3;->e:Loh3;

    .line 48
    .line 49
    iget-object v0, v0, Lbh3;->n:Lkg2;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object v6, v0

    .line 59
    :goto_0
    check-cast v6, Ldf1;

    .line 60
    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    iget-object v0, v5, Lfb0;->a:Lgh3;

    .line 64
    .line 65
    iget-object v0, v0, Lgh3;->d:Lbh3;

    .line 66
    .line 67
    sget-object v1, Llh3;->w:Loh3;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lbh3;->e(Loh3;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lye3;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-long v0, v0

    .line 81
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    int-to-long v9, p1

    .line 86
    const/16 p1, 0x20

    .line 87
    .line 88
    shl-long/2addr v0, p1

    .line 89
    and-long/2addr v9, v7

    .line 90
    or-long/2addr v0, v9

    .line 91
    new-instance p1, Lgo2;

    .line 92
    .line 93
    invoke-direct {p1, v0, v1}, Lgo2;-><init>(J)V

    .line 94
    .line 95
    .line 96
    iput v4, p0, Laz3;->s:I

    .line 97
    .line 98
    invoke-interface {v6, p1, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v3, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    check-cast p1, Lgo2;

    .line 106
    .line 107
    iget-wide p0, p1, Lgo2;->a:J

    .line 108
    .line 109
    and-long/2addr p0, v7

    .line 110
    long-to-int p0, p0

    .line 111
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    new-instance v3, Ljava/lang/Float;

    .line 116
    .line 117
    invoke-direct {v3, p0}, Ljava/lang/Float;-><init>(F)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-object v3

    .line 121
    :cond_4
    const-string p0, "Required value was null."

    .line 122
    .line 123
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    throw p0

    .line 128
    :pswitch_0
    check-cast v5, Lbz3;

    .line 129
    .line 130
    iget v0, p0, Laz3;->s:I

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    if-ne v0, v4, :cond_5

    .line 135
    .line 136
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object v1, v6

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, v5, Lbz3;->F:Lpd;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    iget v0, p0, Laz3;->u:F

    .line 153
    .line 154
    new-instance v2, Ljava/lang/Float;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    .line 157
    .line 158
    .line 159
    iget-boolean v0, v5, Lbz3;->E:Z

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    sget-object v0, Ljv3;->f:Loo3;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    iget-object v0, v5, Lbz3;->D:Lyq3;

    .line 167
    .line 168
    :goto_3
    iput v4, p0, Laz3;->s:I

    .line 169
    .line 170
    invoke-static {p1, v2, v0, p0}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-ne p1, v3, :cond_8

    .line 175
    .line 176
    move-object v1, v3

    .line 177
    goto :goto_5

    .line 178
    :cond_8
    :goto_4
    check-cast p1, Lte;

    .line 179
    .line 180
    :cond_9
    :goto_5
    return-object v1

    .line 181
    :pswitch_1
    check-cast v5, Lbz3;

    .line 182
    .line 183
    iget v0, p0, Laz3;->s:I

    .line 184
    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    if-ne v0, v4, :cond_a

    .line 188
    .line 189
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move-object v1, v6

    .line 197
    goto :goto_8

    .line 198
    :cond_b
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, v5, Lbz3;->G:Lpd;

    .line 202
    .line 203
    if-eqz p1, :cond_e

    .line 204
    .line 205
    iget v0, p0, Laz3;->u:F

    .line 206
    .line 207
    new-instance v2, Ljava/lang/Float;

    .line 208
    .line 209
    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    .line 210
    .line 211
    .line 212
    iget-boolean v0, v5, Lbz3;->E:Z

    .line 213
    .line 214
    if-eqz v0, :cond_c

    .line 215
    .line 216
    sget-object v0, Ljv3;->f:Loo3;

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_c
    iget-object v0, v5, Lbz3;->D:Lyq3;

    .line 220
    .line 221
    :goto_6
    iput v4, p0, Laz3;->s:I

    .line 222
    .line 223
    invoke-static {p1, v2, v0, p0}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-ne p1, v3, :cond_d

    .line 228
    .line 229
    move-object v1, v3

    .line 230
    goto :goto_8

    .line 231
    :cond_d
    :goto_7
    check-cast p1, Lte;

    .line 232
    .line 233
    :cond_e
    :goto_8
    return-object v1

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
