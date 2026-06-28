.class public final Lcy;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldy;Lmm2;Lj9;Lpp;Ldh0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcy;->r:I

    .line 18
    iput-object p1, p0, Lcy;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcy;->u:Ljava/lang/Object;

    iput-object p3, p0, Lcy;->v:Ljava/lang/Object;

    iput-object p4, p0, Lcy;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p7, p0, Lcy;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lcy;->s:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcy;->t:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcy;->u:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcy;->v:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcy;->w:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcy;->r:I

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
    invoke-virtual {p0, p2, p1}, Lcy;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcy;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcy;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lcy;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcy;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcy;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lcy;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcy;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcy;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 14

    .line 1
    iget v0, p0, Lcy;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lcy;->w:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcy;->v:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcy;->u:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcy;->t:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v5, Lcy;

    .line 15
    .line 16
    iget-object p0, p0, Lcy;->s:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, p0

    .line 19
    check-cast v6, Ly84;

    .line 20
    .line 21
    move-object v7, v4

    .line 22
    check-cast v7, Lpg2;

    .line 23
    .line 24
    move-object v8, v3

    .line 25
    check-cast v8, Lpg2;

    .line 26
    .line 27
    move-object v9, v2

    .line 28
    check-cast v9, Lpg2;

    .line 29
    .line 30
    move-object v10, v1

    .line 31
    check-cast v10, Lpg2;

    .line 32
    .line 33
    const/4 v12, 0x2

    .line 34
    move-object v11, p1

    .line 35
    invoke-direct/range {v5 .. v12}, Lcy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 36
    .line 37
    .line 38
    return-object v5

    .line 39
    :pswitch_0
    new-instance v6, Lcy;

    .line 40
    .line 41
    iget-object p0, p0, Lcy;->s:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v7, p0

    .line 44
    check-cast v7, Lqi2;

    .line 45
    .line 46
    move-object v8, v4

    .line 47
    check-cast v8, Ljava/util/List;

    .line 48
    .line 49
    move-object v9, v3

    .line 50
    check-cast v9, Ljava/util/List;

    .line 51
    .line 52
    move-object v10, v2

    .line 53
    check-cast v10, Lxi2;

    .line 54
    .line 55
    move-object v11, v1

    .line 56
    check-cast v11, Ljava/lang/String;

    .line 57
    .line 58
    const/4 v13, 0x1

    .line 59
    move-object v12, p1

    .line 60
    invoke-direct/range {v6 .. v13}, Lcy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 61
    .line 62
    .line 63
    return-object v6

    .line 64
    :pswitch_1
    new-instance v6, Lcy;

    .line 65
    .line 66
    move-object v7, v4

    .line 67
    check-cast v7, Ldy;

    .line 68
    .line 69
    move-object v8, v3

    .line 70
    check-cast v8, Lmm2;

    .line 71
    .line 72
    move-object v9, v2

    .line 73
    check-cast v9, Lj9;

    .line 74
    .line 75
    move-object v10, v1

    .line 76
    check-cast v10, Lpp;

    .line 77
    .line 78
    move-object v11, p1

    .line 79
    invoke-direct/range {v6 .. v11}, Lcy;-><init>(Ldy;Lmm2;Lj9;Lpp;Ldh0;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 p0, p2

    .line 83
    .line 84
    iput-object p0, v6, Lcy;->s:Ljava/lang/Object;

    .line 85
    .line 86
    return-object v6

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcy;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lcy;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcy;->v:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcy;->u:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lcy;->t:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lez3;->a:Lra3;

    .line 20
    .line 21
    iget-object p0, p0, Lcy;->s:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ly84;

    .line 24
    .line 25
    check-cast v5, Lpg2;

    .line 26
    .line 27
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    check-cast v4, Lpg2;

    .line 37
    .line 38
    invoke-interface {v4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    check-cast v3, Lpg2;

    .line 48
    .line 49
    invoke-interface {v3}, Ltr3;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    check-cast v2, Lpg2;

    .line 59
    .line 60
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ld84;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0}, Ld84;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    new-array p0, p0, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :pswitch_0
    check-cast v4, Ljava/util/List;

    .line 85
    .line 86
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcy;->s:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lqi2;

    .line 92
    .line 93
    if-eqz p0, :cond_1

    .line 94
    .line 95
    iget-object p0, p0, Lqi2;->o:Lgg;

    .line 96
    .line 97
    iget-object p0, p0, Lgg;->e:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 p0, 0x0

    .line 103
    :goto_0
    check-cast v5, Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ly84;

    .line 127
    .line 128
    invoke-static {v0}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ly84;

    .line 160
    .line 161
    invoke-static {v0}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    :goto_1
    invoke-static {v4}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Ly84;

    .line 177
    .line 178
    invoke-static {p0}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast v3, Lxi2;

    .line 183
    .line 184
    check-cast v2, Ljava/lang/String;

    .line 185
    .line 186
    new-instance p1, Lao0;

    .line 187
    .line 188
    const/16 v0, 0x8

    .line 189
    .line 190
    invoke-direct {p1, v2, v0}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p0, p1}, Lxi2;->a(Ljava/lang/String;Lpe1;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_2
    return-object v1

    .line 197
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcy;->s:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p0, Lqi0;

    .line 203
    .line 204
    new-instance v6, Lp;

    .line 205
    .line 206
    move-object v7, v5

    .line 207
    check-cast v7, Ldy;

    .line 208
    .line 209
    move-object v8, v4

    .line 210
    check-cast v8, Lmm2;

    .line 211
    .line 212
    move-object v9, v3

    .line 213
    check-cast v9, Lj9;

    .line 214
    .line 215
    const/4 v11, 0x6

    .line 216
    const/4 v10, 0x0

    .line 217
    invoke-direct/range {v6 .. v11}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 218
    .line 219
    .line 220
    const/4 p1, 0x3

    .line 221
    invoke-static {p0, v10, v10, v6, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 222
    .line 223
    .line 224
    new-instance v0, Ln;

    .line 225
    .line 226
    check-cast v2, Lpp;

    .line 227
    .line 228
    const/4 v1, 0x5

    .line 229
    invoke-direct {v0, v7, v2, v10, v1}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 230
    .line 231
    .line 232
    invoke-static {p0, v10, v10, v0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
