.class public abstract Lwa2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lis3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt52;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ldm0;->D(Lne1;)Lnv3;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lt52;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lt52;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lis3;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lh03;-><init>(Lne1;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lwa2;->a:Lis3;

    .line 23
    .line 24
    return-void
.end method

.method public static final a(Ly70;Lee2;Lnl3;Le54;Lka0;Lag1;I)V
    .locals 9

    .line 1
    const v0, 0x35e9c094

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5, p0}, Lag1;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p6

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p6

    .line 23
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lag1;->f(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p5, p2}, Lag1;->f(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0xc00

    .line 56
    .line 57
    if-nez v1, :cond_7

    .line 58
    .line 59
    invoke-virtual {p5, p3}, Lag1;->f(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    const/16 v1, 0x800

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_6
    const/16 v1, 0x400

    .line 69
    .line 70
    :goto_4
    or-int/2addr v0, v1

    .line 71
    :cond_7
    and-int/lit16 v1, p6, 0x6000

    .line 72
    .line 73
    if-nez v1, :cond_9

    .line 74
    .line 75
    invoke-virtual {p5, p4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_8

    .line 80
    .line 81
    const/16 v1, 0x4000

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_8
    const/16 v1, 0x2000

    .line 85
    .line 86
    :goto_5
    or-int/2addr v0, v1

    .line 87
    :cond_9
    and-int/lit16 v1, v0, 0x2493

    .line 88
    .line 89
    const/16 v2, 0x2492

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x1

    .line 93
    if-eq v1, v2, :cond_a

    .line 94
    .line 95
    move v1, v4

    .line 96
    goto :goto_6

    .line 97
    :cond_a
    move v1, v3

    .line 98
    :goto_6
    and-int/2addr v0, v4

    .line 99
    invoke-virtual {p5, v0, v1}, Lag1;->N(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_f

    .line 104
    .line 105
    invoke-virtual {p5}, Lag1;->S()V

    .line 106
    .line 107
    .line 108
    and-int/lit8 v0, p6, 0x1

    .line 109
    .line 110
    if-eqz v0, :cond_c

    .line 111
    .line 112
    invoke-virtual {p5}, Lag1;->x()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_b
    invoke-virtual {p5}, Lag1;->Q()V

    .line 120
    .line 121
    .line 122
    :cond_c
    :goto_7
    invoke-virtual {p5}, Lag1;->q()V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lua2;

    .line 126
    .line 127
    invoke-direct {v0, p0, p3, p2, p1}, Lua2;-><init>(Ly70;Le54;Lnl3;Lee2;)V

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    const/16 v2, 0xff

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static {v4, v1, v2}, Lb93;->a(FLjl3;I)Ln93;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-wide v4, p0, Ly70;->a:J

    .line 139
    .line 140
    invoke-virtual {p5, v4, v5}, Lag1;->e(J)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {p5}, Lag1;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-nez v2, :cond_d

    .line 149
    .line 150
    sget-object v2, Lrb0;->a:Lbx3;

    .line 151
    .line 152
    if-ne v6, v2, :cond_e

    .line 153
    .line 154
    :cond_d
    new-instance v6, Lux3;

    .line 155
    .line 156
    const v2, 0x3ecccccd    # 0.4f

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v4, v5}, Lt70;->b(FJ)J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    invoke-direct {v6, v4, v5, v7, v8}, Lux3;-><init>(JJ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p5, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_e
    check-cast v6, Lux3;

    .line 170
    .line 171
    sget-object v2, Lwa2;->a:Lis3;

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sget-object v2, Lwp1;->a:Llc0;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Lvx3;->a:Llc0;

    .line 184
    .line 185
    invoke-virtual {v2, v6}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    filled-new-array {v0, v1, v2}, [Lj03;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Lva2;

    .line 194
    .line 195
    invoke-direct {v1, p3, p4, v3}, Lva2;-><init>(Le54;Lka0;I)V

    .line 196
    .line 197
    .line 198
    const v2, -0x68571c2c

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v1, p5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/16 v2, 0x38

    .line 206
    .line 207
    invoke-static {v0, v1, p5, v2}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_f
    invoke-virtual {p5}, Lag1;->Q()V

    .line 212
    .line 213
    .line 214
    :goto_8
    invoke-virtual {p5}, Lag1;->r()Lc33;

    .line 215
    .line 216
    .line 217
    move-result-object p5

    .line 218
    if-eqz p5, :cond_10

    .line 219
    .line 220
    new-instance v0, Lri;

    .line 221
    .line 222
    move-object v1, p0

    .line 223
    move-object v2, p1

    .line 224
    move-object v3, p2

    .line 225
    move-object v4, p3

    .line 226
    move-object v5, p4

    .line 227
    move v6, p6

    .line 228
    invoke-direct/range {v0 .. v6}, Lri;-><init>(Ly70;Lee2;Lnl3;Le54;Lka0;I)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p5, Lc33;->d:Ldf1;

    .line 232
    .line 233
    :cond_10
    return-void
.end method

.method public static final b(Ly70;Lnl3;Le54;Lka0;Lag1;I)V
    .locals 9

    .line 1
    const v0, -0x1ace2e0b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    :goto_0
    or-int/2addr v1, p5

    .line 17
    or-int/lit8 v1, v1, 0x10

    .line 18
    .line 19
    invoke-virtual {p4, p2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x100

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v2, 0x80

    .line 29
    .line 30
    :goto_1
    or-int/2addr v1, v2

    .line 31
    invoke-virtual {p4, p3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x800

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v2, 0x400

    .line 41
    .line 42
    :goto_2
    or-int/2addr v1, v2

    .line 43
    and-int/lit16 v2, v1, 0x493

    .line 44
    .line 45
    const/16 v6, 0x492

    .line 46
    .line 47
    if-eq v2, v6, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    :goto_3
    and-int/lit8 v6, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {p4, v6, v2}, Lag1;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    invoke-virtual {p4}, Lag1;->S()V

    .line 61
    .line 62
    .line 63
    and-int/lit8 v2, p5, 0x1

    .line 64
    .line 65
    sget-object v6, Lwa2;->a:Lis3;

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p4}, Lag1;->x()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    invoke-virtual {p4}, Lag1;->Q()V

    .line 77
    .line 78
    .line 79
    and-int/lit8 v1, v1, -0x71

    .line 80
    .line 81
    move-object v2, p1

    .line 82
    goto :goto_5

    .line 83
    :cond_5
    :goto_4
    invoke-virtual {p4, v6}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lua2;

    .line 88
    .line 89
    iget-object v2, v2, Lua2;->c:Lnl3;

    .line 90
    .line 91
    and-int/lit8 v1, v1, -0x71

    .line 92
    .line 93
    :goto_5
    invoke-virtual {p4}, Lag1;->q()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, v6}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lua2;

    .line 101
    .line 102
    iget-object v6, v6, Lua2;->d:Lee2;

    .line 103
    .line 104
    and-int/lit8 v7, v1, 0xe

    .line 105
    .line 106
    shl-int/lit8 v1, v1, 0x3

    .line 107
    .line 108
    and-int/lit16 v8, v1, 0x1c00

    .line 109
    .line 110
    or-int/2addr v7, v8

    .line 111
    const v8, 0xe000

    .line 112
    .line 113
    .line 114
    and-int/2addr v1, v8

    .line 115
    or-int/2addr v1, v7

    .line 116
    move-object v0, v6

    .line 117
    move v6, v1

    .line 118
    move-object v1, v0

    .line 119
    move-object v0, p0

    .line 120
    move-object v3, p2

    .line 121
    move-object v4, p3

    .line 122
    move-object v5, p4

    .line 123
    invoke-static/range {v0 .. v6}, Lwa2;->a(Ly70;Lee2;Lnl3;Le54;Lka0;Lag1;I)V

    .line 124
    .line 125
    .line 126
    move-object v3, v2

    .line 127
    goto :goto_6

    .line 128
    :cond_6
    invoke-virtual {p4}, Lag1;->Q()V

    .line 129
    .line 130
    .line 131
    move-object v3, p1

    .line 132
    :goto_6
    invoke-virtual {p4}, Lag1;->r()Lc33;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    new-instance v1, Lg4;

    .line 139
    .line 140
    const/4 v7, 0x6

    .line 141
    move-object v2, p0

    .line 142
    move-object v4, p2

    .line 143
    move-object v5, p3

    .line 144
    move v6, p5

    .line 145
    invoke-direct/range {v1 .. v7}, Lg4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lef1;II)V

    .line 146
    .line 147
    .line 148
    iput-object v1, v0, Lc33;->d:Ldf1;

    .line 149
    .line 150
    :cond_7
    return-void
.end method
