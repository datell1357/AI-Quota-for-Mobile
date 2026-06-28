.class public final Ll82;
.super Lcv2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic o:I

.field public final p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll82;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Ll82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Ll82;->o:I

    .line 2
    .line 3
    iget-object p0, p0, Ll82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lq9;

    .line 9
    .line 10
    invoke-virtual {p0}, Lq9;->getDensity()Las0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Las0;->b()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p0, Lk82;

    .line 20
    .line 21
    invoke-interface {p0}, Las0;->b()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lek1;)F
    .locals 8

    .line 1
    iget v0, p0, Ll82;->o:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcv2;->c(Lek1;)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p1, Lek1;->a:Ldf1;

    .line 12
    .line 13
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p0, p1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Ll82;->p:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lk82;

    .line 36
    .line 37
    iget-boolean v0, p0, Lk82;->B:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    new-instance v0, Lw33;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p0, v0, Lw33;->n:Ljava/lang/Object;

    .line 49
    .line 50
    :goto_0
    iget-object v2, v0, Lw33;->n:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lk82;

    .line 53
    .line 54
    iget-object v2, v2, Lk82;->D:Lgg;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-object v3, v2, Lgg;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, [Lek1;

    .line 61
    .line 62
    invoke-static {v3, p1}, Lji;->a0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-gez v3, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v2, v2, Lgg;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, [F

    .line 72
    .line 73
    aget v2, v2, v3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    :goto_1
    move v2, v1

    .line 77
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iget-object v4, v0, Lw33;->n:Ljava/lang/Object;

    .line 82
    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    check-cast v4, Lk82;

    .line 86
    .line 87
    invoke-virtual {p0}, Lk82;->u0()Lxy1;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v4, v1, p1}, Lk82;->j0(Lxy1;Lek1;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lk82;

    .line 97
    .line 98
    invoke-virtual {v0}, Lk82;->o0()Lgy1;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lk82;->o0()Lgy1;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p1, v2, v0, p0}, Lek1;->a(FLgy1;Lgy1;)F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_4
    check-cast v4, Lk82;

    .line 113
    .line 114
    iget-object v2, v4, Lk82;->u:Ldf1;

    .line 115
    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    iget-object v3, v4, Lk82;->v:Lpe1;

    .line 119
    .line 120
    if-eqz v3, :cond_a

    .line 121
    .line 122
    invoke-interface {v3, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    const/4 v4, 0x1

    .line 133
    if-ne v3, v4, :cond_a

    .line 134
    .line 135
    iget-object v3, v0, Lw33;->n:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Lk82;

    .line 138
    .line 139
    iget-object v4, v3, Lk82;->x:Lkg2;

    .line 140
    .line 141
    if-nez v4, :cond_5

    .line 142
    .line 143
    sget-object v4, Ltd3;->a:[J

    .line 144
    .line 145
    new-instance v4, Lkg2;

    .line 146
    .line 147
    invoke-direct {v4}, Lkg2;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v4, v3, Lk82;->x:Lkg2;

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v4, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    if-nez v5, :cond_6

    .line 157
    .line 158
    new-instance v5, Lfv2;

    .line 159
    .line 160
    invoke-virtual {v3}, Lk82;->v0()Leb2;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-direct {v5, v6, v3, p1}, Lfv2;-><init>(Leb2;Lk82;Lek1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, p1, v5}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    check-cast v5, Lfv2;

    .line 171
    .line 172
    invoke-virtual {v3}, Lk82;->v0()Leb2;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iput-object v3, v5, Lfv2;->n:Leb2;

    .line 177
    .line 178
    invoke-virtual {p0}, Lk82;->u0()Lxy1;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    iget-object v3, v3, Lxy1;->A:Lsr2;

    .line 183
    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    check-cast v3, Lq9;

    .line 187
    .line 188
    invoke-virtual {v3}, Lq9;->getSnapshotObserver()Lur2;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    if-eqz v3, :cond_7

    .line 193
    .line 194
    sget-object v4, Ll9;->Q:Ll9;

    .line 195
    .line 196
    new-instance v6, Lh82;

    .line 197
    .line 198
    const/4 v7, 0x0

    .line 199
    invoke-direct {v6, v2, v0, p1, v7}, Lh82;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    iget-object v2, v3, Lur2;->a:Lip3;

    .line 203
    .line 204
    invoke-virtual {v2, v5, v4, v6}, Lip3;->c(Ljava/lang/Object;Lpe1;Lne1;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iget-object v2, v0, Lw33;->n:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Lk82;

    .line 210
    .line 211
    invoke-virtual {p0}, Lk82;->u0()Lxy1;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2, v3, p1}, Lk82;->j0(Lxy1;Lek1;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Lw33;->n:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Lk82;

    .line 221
    .line 222
    iget-object v2, v2, Lk82;->D:Lgg;

    .line 223
    .line 224
    if-eqz v2, :cond_9

    .line 225
    .line 226
    iget-object v3, v2, Lgg;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v3, [Lek1;

    .line 229
    .line 230
    invoke-static {v3, p1}, Lji;->a0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-gez v3, :cond_8

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    iget-object v2, v2, Lgg;->c:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v2, [F

    .line 240
    .line 241
    aget v2, v2, v3

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_9
    :goto_3
    move v2, v1

    .line 245
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-nez v3, :cond_a

    .line 250
    .line 251
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lk82;

    .line 254
    .line 255
    invoke-virtual {v0}, Lk82;->o0()Lgy1;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lk82;->o0()Lgy1;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p1, v2, v0, p0}, Lek1;->a(FLgy1;Lgy1;)F

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    goto :goto_5

    .line 268
    :cond_a
    iget-object v2, v0, Lw33;->n:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v2, Lk82;

    .line 271
    .line 272
    invoke-virtual {v2}, Lk82;->w0()Lk82;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-nez v2, :cond_b

    .line 277
    .line 278
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lk82;

    .line 281
    .line 282
    invoke-virtual {p0}, Lk82;->u0()Lxy1;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {v0, p0, p1}, Lk82;->j0(Lxy1;Lek1;)V

    .line 287
    .line 288
    .line 289
    :goto_5
    return v1

    .line 290
    :cond_b
    iput-object v2, v0, Lw33;->n:Ljava/lang/Object;

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lhy1;
    .locals 1

    .line 1
    iget v0, p0, Ll82;->o:I

    .line 2
    .line 3
    iget-object p0, p0, Ll82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lq9;

    .line 9
    .line 10
    invoke-virtual {p0}, Lq9;->getLayoutDirection()Lhy1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Lk82;

    .line 16
    .line 17
    invoke-interface {p0}, Ljt1;->getLayoutDirection()Lhy1;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Ll82;->o:I

    .line 2
    .line 3
    iget-object p0, p0, Ll82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lq9;

    .line 9
    .line 10
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 15
    .line 16
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 17
    .line 18
    iget p0, p0, Ldv2;->n:I

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p0, Lk82;

    .line 22
    .line 23
    invoke-virtual {p0}, Ldv2;->a0()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()F
    .locals 1

    .line 1
    iget v0, p0, Ll82;->o:I

    .line 2
    .line 3
    iget-object p0, p0, Ll82;->p:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lq9;

    .line 9
    .line 10
    invoke-virtual {p0}, Lq9;->getDensity()Las0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Las0;->k()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p0, Lk82;

    .line 20
    .line 21
    invoke-interface {p0}, Las0;->k()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
