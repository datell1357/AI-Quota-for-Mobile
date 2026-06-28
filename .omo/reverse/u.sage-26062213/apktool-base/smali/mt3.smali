.class public abstract Lmt3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lpr3;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpr3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lpr3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lmt3;->a:Lpr3;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lmt3;->b:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Lnd2;Ldf1;Lag1;I)V
    .locals 3

    .line 1
    const v0, -0x4d634bd0    # -1.824273E-8f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x10

    .line 19
    .line 20
    :goto_0
    or-int/2addr v0, v1

    .line 21
    and-int/lit8 v1, v0, 0x13

    .line 22
    .line 23
    const/16 v2, 0x12

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p2, v2, v1}, Lag1;->N(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v1, Lrb0;->a:Lbx3;

    .line 43
    .line 44
    if-ne p0, v1, :cond_2

    .line 45
    .line 46
    new-instance p0, Lpt3;

    .line 47
    .line 48
    sget-object v1, Lmj1;->b0:Lmj1;

    .line 49
    .line 50
    invoke-direct {p0, v1}, Lpt3;-><init>(Lst3;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    check-cast p0, Lpt3;

    .line 57
    .line 58
    shl-int/lit8 v0, v0, 0x3

    .line 59
    .line 60
    and-int/lit16 v0, v0, 0x3f0

    .line 61
    .line 62
    sget-object v1, Lkd2;->b:Lkd2;

    .line 63
    .line 64
    invoke-static {p0, v1, p1, p2, v0}, Lmt3;->b(Lpt3;Lnd2;Ldf1;Lag1;I)V

    .line 65
    .line 66
    .line 67
    move-object p0, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {p2}, Lag1;->Q()V

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {p2}, Lag1;->r()Lc33;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    new-instance v0, Lga;

    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    invoke-direct {v0, p0, p1, p3, v1}, Lga;-><init>(Ljava/lang/Object;Lef1;II)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p2, Lc33;->d:Ldf1;

    .line 85
    .line 86
    :cond_4
    return-void
.end method

.method public static final b(Lpt3;Lnd2;Ldf1;Lag1;I)V
    .locals 8

    .line 1
    const v0, -0x1e845847

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p4

    .line 23
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x100

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/16 v1, 0x80

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v1

    .line 55
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 56
    .line 57
    const/16 v2, 0x92

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    if-eq v1, v2, :cond_6

    .line 62
    .line 63
    move v1, v3

    .line 64
    goto :goto_4

    .line 65
    :cond_6
    move v1, v4

    .line 66
    :goto_4
    and-int/2addr v0, v3

    .line 67
    invoke-virtual {p3, v0, v1}, Lag1;->N(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_b

    .line 72
    .line 73
    iget-wide v0, p3, Lag1;->T:J

    .line 74
    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p3}, Ldm0;->J(Lag1;)Lyf1;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {p3, p1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p3}, Lag1;->l()Lhu2;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    sget-object v6, Lic0;->A:Lic0;

    .line 92
    .line 93
    invoke-virtual {p3}, Lag1;->Z()V

    .line 94
    .line 95
    .line 96
    iget-boolean v7, p3, Lag1;->S:Z

    .line 97
    .line 98
    if-eqz v7, :cond_7

    .line 99
    .line 100
    invoke-virtual {p3, v6}, Lag1;->k(Lne1;)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {p3}, Lag1;->j0()V

    .line 105
    .line 106
    .line 107
    :goto_5
    iget-object v6, p0, Lpt3;->c:Lot3;

    .line 108
    .line 109
    invoke-static {v6, p3, p0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lpt3;->d:Lot3;

    .line 113
    .line 114
    invoke-static {v6, p3, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lpt3;->e:Lot3;

    .line 118
    .line 119
    invoke-static {v1, p3, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Llb0;->c:Lkb0;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v1, Lkb0;->e:Lfd;

    .line 128
    .line 129
    invoke-static {v1, p3, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lkb0;->h:Ll9;

    .line 133
    .line 134
    invoke-static {p3, v1}, Lht4;->y(Lag1;Lpe1;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lkb0;->d:Lfd;

    .line 138
    .line 139
    invoke-static {v1, p3, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sget-object v1, Lkb0;->g:Lfd;

    .line 147
    .line 148
    invoke-static {v1, p3, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v3}, Lag1;->p(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Lag1;->z()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_a

    .line 159
    .line 160
    const v0, -0x4b0e9154

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v0}, Lag1;->W(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    sget-object v0, Lrb0;->a:Lbx3;

    .line 177
    .line 178
    if-ne v1, v0, :cond_9

    .line 179
    .line 180
    :cond_8
    new-instance v1, Lje;

    .line 181
    .line 182
    const/16 v0, 0xc

    .line 183
    .line 184
    invoke-direct {v1, v0, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    check-cast v1, Lne1;

    .line 191
    .line 192
    invoke-static {v1, p3}, Lzf5;->g(Lne1;Lag1;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3, v4}, Lag1;->p(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_a
    const v0, -0x4b0dac57

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, v0}, Lag1;->W(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, v4}, Lag1;->p(Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_b
    invoke-virtual {p3}, Lag1;->Q()V

    .line 210
    .line 211
    .line 212
    :goto_6
    invoke-virtual {p3}, Lag1;->r()Lc33;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    if-eqz p3, :cond_c

    .line 217
    .line 218
    new-instance v0, Llt3;

    .line 219
    .line 220
    invoke-direct {v0, p0, p1, p2, p4}, Llt3;-><init>(Lpt3;Lnd2;Ldf1;I)V

    .line 221
    .line 222
    .line 223
    iput-object v0, p3, Lc33;->d:Ldf1;

    .line 224
    .line 225
    :cond_c
    return-void
.end method
