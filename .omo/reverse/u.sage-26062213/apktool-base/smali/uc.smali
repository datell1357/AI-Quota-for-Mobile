.class public final Luc;
.super Lb70;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic p:I

.field public final synthetic q:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p2, p0, Luc;->p:I

    .line 2
    .line 3
    iput-object p1, p0, Luc;->q:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lb70;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final m(Lke4;Ljava/util/List;)Lke4;
    .locals 5

    .line 1
    iget p2, p0, Luc;->p:I

    .line 2
    .line 3
    iget-object p0, p0, Luc;->q:Landroid/view/ViewGroup;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lst0;

    .line 9
    .line 10
    iget-boolean p2, p0, Lst0;->z:Z

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sub-int/2addr v3, v4

    .line 45
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sub-int/2addr p0, v0

    .line 58
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    if-nez p0, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p1, Lke4;->a:Lhe4;

    .line 72
    .line 73
    invoke-virtual {p1, v1, v2, v3, p0}, Lhe4;->r(IIII)Lke4;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_0
    return-object p1

    .line 78
    :pswitch_0
    check-cast p0, Lpb4;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lbd;->m(Lke4;)Lke4;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lqd4;Lpc4;)Lpc4;
    .locals 13

    .line 1
    iget p1, p0, Luc;->p:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Luc;->q:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lst0;

    .line 11
    .line 12
    iget-boolean p1, p0, Lst0;->z:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-int/2addr v4, v5

    .line 46
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sub-int/2addr p0, p1

    .line 59
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    if-nez p0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2, v3, v4, p0}, Lnr1;->b(IIII)Lnr1;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget p1, p0, Lnr1;->a:I

    .line 77
    .line 78
    new-instance v1, Lpc4;

    .line 79
    .line 80
    iget-object v2, p2, Lpc4;->o:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lnr1;

    .line 83
    .line 84
    iget v3, p0, Lnr1;->b:I

    .line 85
    .line 86
    iget v4, p0, Lnr1;->c:I

    .line 87
    .line 88
    iget p0, p0, Lnr1;->d:I

    .line 89
    .line 90
    invoke-static {v2, p1, v3, v4, p0}, Lke4;->a(Lnr1;IIII)Lnr1;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object p2, p2, Lpc4;->p:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Lnr1;

    .line 97
    .line 98
    invoke-static {p2, p1, v3, v4, p0}, Lke4;->a(Lnr1;IIII)Lnr1;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v1, v0, v2, p0}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object p2, v1

    .line 106
    :goto_0
    return-object p2

    .line 107
    :pswitch_0
    check-cast p0, Lpb4;

    .line 108
    .line 109
    iget-object p0, p0, Lbd;->M:Lxy1;

    .line 110
    .line 111
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 112
    .line 113
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lgr1;

    .line 116
    .line 117
    iget-object p1, p0, Lgr1;->h0:Lgw3;

    .line 118
    .line 119
    iget-boolean p1, p1, Lmd2;->A:Z

    .line 120
    .line 121
    if-nez p1, :cond_2

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    const-wide/16 v2, 0x0

    .line 126
    .line 127
    invoke-virtual {p0, v2, v3}, Lmm2;->J(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    invoke-static {v2, v3}, Lca;->G(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    const/16 p1, 0x20

    .line 136
    .line 137
    shr-long v4, v2, p1

    .line 138
    .line 139
    long-to-int v4, v4

    .line 140
    if-gez v4, :cond_3

    .line 141
    .line 142
    move v4, v1

    .line 143
    :cond_3
    const-wide v5, 0xffffffffL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    and-long/2addr v2, v5

    .line 149
    long-to-int v2, v2

    .line 150
    if-gez v2, :cond_4

    .line 151
    .line 152
    move v2, v1

    .line 153
    :cond_4
    invoke-static {p0}, Lzf5;->D(Lgy1;)Lgy1;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v3}, Lgy1;->I()J

    .line 158
    .line 159
    .line 160
    move-result-wide v7

    .line 161
    shr-long v9, v7, p1

    .line 162
    .line 163
    long-to-int v3, v9

    .line 164
    and-long/2addr v7, v5

    .line 165
    long-to-int v7, v7

    .line 166
    iget-wide v8, p0, Ldv2;->p:J

    .line 167
    .line 168
    shr-long v10, v8, p1

    .line 169
    .line 170
    long-to-int v10, v10

    .line 171
    and-long/2addr v8, v5

    .line 172
    long-to-int v8, v8

    .line 173
    int-to-float v9, v10

    .line 174
    int-to-float v8, v8

    .line 175
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    int-to-long v9, v9

    .line 180
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    int-to-long v11, v8

    .line 185
    shl-long v8, v9, p1

    .line 186
    .line 187
    and-long v10, v11, v5

    .line 188
    .line 189
    or-long/2addr v8, v10

    .line 190
    invoke-virtual {p0, v8, v9}, Lmm2;->J(J)J

    .line 191
    .line 192
    .line 193
    move-result-wide v8

    .line 194
    invoke-static {v8, v9}, Lca;->G(J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v8

    .line 198
    shr-long p0, v8, p1

    .line 199
    .line 200
    long-to-int p0, p0

    .line 201
    sub-int/2addr v3, p0

    .line 202
    if-gez v3, :cond_5

    .line 203
    .line 204
    move v3, v1

    .line 205
    :cond_5
    and-long p0, v8, v5

    .line 206
    .line 207
    long-to-int p0, p0

    .line 208
    sub-int/2addr v7, p0

    .line 209
    if-gez v7, :cond_6

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    move v1, v7

    .line 213
    :goto_1
    if-nez v4, :cond_7

    .line 214
    .line 215
    if-nez v2, :cond_7

    .line 216
    .line 217
    if-nez v3, :cond_7

    .line 218
    .line 219
    if-nez v1, :cond_7

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_7
    new-instance p0, Lpc4;

    .line 223
    .line 224
    iget-object p1, p2, Lpc4;->o:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Lnr1;

    .line 227
    .line 228
    invoke-static {p1, v4, v2, v3, v1}, Lbd;->l(Lnr1;IIII)Lnr1;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object p2, p2, Lpc4;->p:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p2, Lnr1;

    .line 235
    .line 236
    invoke-static {p2, v4, v2, v3, v1}, Lbd;->l(Lnr1;IIII)Lnr1;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-direct {p0, v0, p1, p2}, Lpc4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object p2, p0

    .line 244
    :goto_2
    return-object p2

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
