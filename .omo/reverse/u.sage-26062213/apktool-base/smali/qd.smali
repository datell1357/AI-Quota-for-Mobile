.class public final Lqd;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 19
    iput p5, p0, Lqd;->r:I

    iput-object p1, p0, Lqd;->u:Ljava/lang/Object;

    iput-object p2, p0, Lqd;->v:Ljava/lang/Object;

    iput-object p3, p0, Lqd;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 20
    iput p6, p0, Lqd;->r:I

    iput-object p1, p0, Lqd;->t:Ljava/lang/Object;

    iput-object p2, p0, Lqd;->u:Ljava/lang/Object;

    iput-object p3, p0, Lqd;->v:Ljava/lang/Object;

    iput-object p4, p0, Lqd;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lom3;La81;Lwr3;Ljava/lang/Object;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lqd;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lqd;->v:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lqd;->w:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lqd;->t:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lpg2;Lrq1;Ldh0;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lqd;->r:I

    .line 17
    iput-object p1, p0, Lqd;->v:Ljava/lang/Object;

    iput-object p2, p0, Lqd;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lz04;Ldh0;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lqd;->r:I

    .line 18
    iput-object p1, p0, Lqd;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lqd;->r:I

    .line 2
    .line 3
    sget-object v1, Lri0;->n:Lri0;

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lqi0;

    .line 11
    .line 12
    check-cast p2, Ldh0;

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lqd;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Lqi0;

    .line 26
    .line 27
    check-cast p2, Ldh0;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lqd;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    check-cast p1, Lb81;

    .line 41
    .line 42
    check-cast p2, Ldh0;

    .line 43
    .line 44
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lqd;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :pswitch_2
    check-cast p1, Lqi0;

    .line 55
    .line 56
    check-cast p2, Ldh0;

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lqd;

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_3
    check-cast p1, Lqi0;

    .line 70
    .line 71
    check-cast p2, Ldh0;

    .line 72
    .line 73
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lqd;

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_4
    check-cast p1, Lqi0;

    .line 85
    .line 86
    check-cast p2, Ldh0;

    .line 87
    .line 88
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lqd;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_5
    check-cast p1, Lqi0;

    .line 100
    .line 101
    check-cast p2, Ldh0;

    .line 102
    .line 103
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lqd;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_6
    check-cast p1, Lqi0;

    .line 115
    .line 116
    check-cast p2, Ldh0;

    .line 117
    .line 118
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lqd;

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_7
    check-cast p1, Lqi0;

    .line 130
    .line 131
    check-cast p2, Ldh0;

    .line 132
    .line 133
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lqd;

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :pswitch_8
    check-cast p1, Lqi0;

    .line 144
    .line 145
    check-cast p2, Ldh0;

    .line 146
    .line 147
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lqd;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lmm3;

    .line 159
    .line 160
    check-cast p2, Ldh0;

    .line 161
    .line 162
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lqd;

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p1, Lqi0;

    .line 174
    .line 175
    check-cast p2, Ldh0;

    .line 176
    .line 177
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lqd;

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_b
    check-cast p1, Lqi0;

    .line 189
    .line 190
    check-cast p2, Ldh0;

    .line 191
    .line 192
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lqd;

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_c
    check-cast p1, Lqi0;

    .line 204
    .line 205
    check-cast p2, Ldh0;

    .line 206
    .line 207
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lqd;

    .line 212
    .line 213
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_d
    check-cast p1, Lqi0;

    .line 219
    .line 220
    check-cast p2, Ldh0;

    .line 221
    .line 222
    invoke-virtual {p0, p2, p1}, Lqd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Lqd;

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Lqd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 10

    .line 1
    iget v0, p0, Lqd;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lqd;->w:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Lqd;

    .line 9
    .line 10
    iget-object p2, p0, Lqd;->t:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p2

    .line 13
    check-cast v3, Lv42;

    .line 14
    .line 15
    iget-object p2, p0, Lqd;->u:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, p2

    .line 18
    check-cast v4, Log4;

    .line 19
    .line 20
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, p0

    .line 23
    check-cast v5, Lag4;

    .line 24
    .line 25
    move-object v6, v1

    .line 26
    check-cast v6, Landroid/content/Context;

    .line 27
    .line 28
    const/16 v8, 0xe

    .line 29
    .line 30
    move-object v7, p1

    .line 31
    invoke-direct/range {v2 .. v8}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_0
    move-object v8, p1

    .line 36
    new-instance v3, Lqd;

    .line 37
    .line 38
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v4, p1

    .line 41
    check-cast v4, Lw33;

    .line 42
    .line 43
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v5, p1

    .line 46
    check-cast v5, Lh33;

    .line 47
    .line 48
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v6, p0

    .line 51
    check-cast v6, Lp22;

    .line 52
    .line 53
    move-object v7, v1

    .line 54
    check-cast v7, Lhf4;

    .line 55
    .line 56
    const/16 v9, 0xd

    .line 57
    .line 58
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :pswitch_1
    move-object v8, p1

    .line 63
    new-instance v3, Lqd;

    .line 64
    .line 65
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v4, p1

    .line 68
    check-cast v4, Lv24;

    .line 69
    .line 70
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v5, p0

    .line 73
    check-cast v5, [I

    .line 74
    .line 75
    move-object v6, v1

    .line 76
    check-cast v6, [Ljava/lang/String;

    .line 77
    .line 78
    move-object v7, v8

    .line 79
    const/16 v8, 0xc

    .line 80
    .line 81
    invoke-direct/range {v3 .. v8}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 82
    .line 83
    .line 84
    iput-object p2, v3, Lqd;->t:Ljava/lang/Object;

    .line 85
    .line 86
    return-object v3

    .line 87
    :pswitch_2
    move-object v8, p1

    .line 88
    new-instance p0, Lqd;

    .line 89
    .line 90
    check-cast v1, Lz04;

    .line 91
    .line 92
    invoke-direct {p0, v1, v8}, Lqd;-><init>(Lz04;Ldh0;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lqd;->t:Ljava/lang/Object;

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_3
    move-object v8, p1

    .line 99
    new-instance v3, Lqd;

    .line 100
    .line 101
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v4, p1

    .line 104
    check-cast v4, Lm10;

    .line 105
    .line 106
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v5, p1

    .line 109
    check-cast v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 110
    .line 111
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 112
    .line 113
    move-object v6, p0

    .line 114
    check-cast v6, Ln8;

    .line 115
    .line 116
    move-object v7, v1

    .line 117
    check-cast v7, Ly84;

    .line 118
    .line 119
    const/16 v9, 0xa

    .line 120
    .line 121
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 122
    .line 123
    .line 124
    return-object v3

    .line 125
    :pswitch_4
    move-object v8, p1

    .line 126
    new-instance v3, Lqd;

    .line 127
    .line 128
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v4, p1

    .line 131
    check-cast v4, Lx53;

    .line 132
    .line 133
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v5, p1

    .line 136
    check-cast v5, Ljava/util/Map;

    .line 137
    .line 138
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 139
    .line 140
    move-object v6, p0

    .line 141
    check-cast v6, Ln;

    .line 142
    .line 143
    move-object v7, v1

    .line 144
    check-cast v7, Lzr;

    .line 145
    .line 146
    const/16 v9, 0x9

    .line 147
    .line 148
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 149
    .line 150
    .line 151
    return-object v3

    .line 152
    :pswitch_5
    move-object v8, p1

    .line 153
    new-instance v3, Lqd;

    .line 154
    .line 155
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 156
    .line 157
    move-object v4, p1

    .line 158
    check-cast v4, Lpg3;

    .line 159
    .line 160
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v5, p0

    .line 163
    check-cast v5, Lyh2;

    .line 164
    .line 165
    move-object v6, v1

    .line 166
    check-cast v6, Ln14;

    .line 167
    .line 168
    move-object v7, v8

    .line 169
    const/16 v8, 0x8

    .line 170
    .line 171
    invoke-direct/range {v3 .. v8}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 172
    .line 173
    .line 174
    iput-object p2, v3, Lqd;->t:Ljava/lang/Object;

    .line 175
    .line 176
    return-object v3

    .line 177
    :pswitch_6
    move-object v8, p1

    .line 178
    new-instance v3, Lqd;

    .line 179
    .line 180
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 181
    .line 182
    move-object v4, p1

    .line 183
    check-cast v4, Ljava/lang/String;

    .line 184
    .line 185
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 186
    .line 187
    move-object v5, p1

    .line 188
    check-cast v5, Lu/sage/MainActivity;

    .line 189
    .line 190
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 191
    .line 192
    move-object v6, p0

    .line 193
    check-cast v6, Ljava/lang/String;

    .line 194
    .line 195
    move-object v7, v1

    .line 196
    check-cast v7, Lxi2;

    .line 197
    .line 198
    const/4 v9, 0x7

    .line 199
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 200
    .line 201
    .line 202
    return-object v3

    .line 203
    :pswitch_7
    move-object v8, p1

    .line 204
    new-instance p1, Lqd;

    .line 205
    .line 206
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p0, Lpg2;

    .line 209
    .line 210
    check-cast v1, Lrq1;

    .line 211
    .line 212
    invoke-direct {p1, p0, v1, v8}, Lqd;-><init>(Lpg2;Lrq1;Ldh0;)V

    .line 213
    .line 214
    .line 215
    iput-object p2, p1, Lqd;->t:Ljava/lang/Object;

    .line 216
    .line 217
    return-object p1

    .line 218
    :pswitch_8
    move-object v8, p1

    .line 219
    new-instance v3, Lqd;

    .line 220
    .line 221
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 222
    .line 223
    move-object v4, p1

    .line 224
    check-cast v4, Lom3;

    .line 225
    .line 226
    iget-object p1, p0, Lqd;->v:Ljava/lang/Object;

    .line 227
    .line 228
    move-object v5, p1

    .line 229
    check-cast v5, La81;

    .line 230
    .line 231
    move-object v6, v1

    .line 232
    check-cast v6, Lwr3;

    .line 233
    .line 234
    iget-object v7, p0, Lqd;->t:Ljava/lang/Object;

    .line 235
    .line 236
    invoke-direct/range {v3 .. v8}, Lqd;-><init>(Lom3;La81;Lwr3;Ljava/lang/Object;Ldh0;)V

    .line 237
    .line 238
    .line 239
    return-object v3

    .line 240
    :pswitch_9
    move-object v8, p1

    .line 241
    new-instance v3, Lqd;

    .line 242
    .line 243
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 244
    .line 245
    move-object v4, p1

    .line 246
    check-cast v4, La81;

    .line 247
    .line 248
    iget-object p1, p0, Lqd;->v:Ljava/lang/Object;

    .line 249
    .line 250
    move-object v5, p1

    .line 251
    check-cast v5, Lwr3;

    .line 252
    .line 253
    iget-object v6, p0, Lqd;->w:Ljava/lang/Object;

    .line 254
    .line 255
    move-object v7, v8

    .line 256
    const/4 v8, 0x4

    .line 257
    invoke-direct/range {v3 .. v8}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 258
    .line 259
    .line 260
    iput-object p2, v3, Lqd;->t:Ljava/lang/Object;

    .line 261
    .line 262
    return-object v3

    .line 263
    :pswitch_a
    move-object v8, p1

    .line 264
    new-instance v3, Lqd;

    .line 265
    .line 266
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v4, p1

    .line 269
    check-cast v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 270
    .line 271
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 272
    .line 273
    move-object v5, p1

    .line 274
    check-cast v5, Lv42;

    .line 275
    .line 276
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 277
    .line 278
    move-object v6, p0

    .line 279
    check-cast v6, Lct2;

    .line 280
    .line 281
    move-object v7, v1

    .line 282
    check-cast v7, Log4;

    .line 283
    .line 284
    const/4 v9, 0x3

    .line 285
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 286
    .line 287
    .line 288
    return-object v3

    .line 289
    :pswitch_b
    move-object v8, p1

    .line 290
    new-instance v3, Lqd;

    .line 291
    .line 292
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 293
    .line 294
    move-object v4, p1

    .line 295
    check-cast v4, Lct2;

    .line 296
    .line 297
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 298
    .line 299
    move-object v5, p1

    .line 300
    check-cast v5, Log4;

    .line 301
    .line 302
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 303
    .line 304
    move-object v6, p0

    .line 305
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 306
    .line 307
    move-object v7, v1

    .line 308
    check-cast v7, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 309
    .line 310
    const/4 v9, 0x2

    .line 311
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 312
    .line 313
    .line 314
    return-object v3

    .line 315
    :pswitch_c
    move-object v8, p1

    .line 316
    new-instance v3, Lqd;

    .line 317
    .line 318
    iget-object p1, p0, Lqd;->t:Ljava/lang/Object;

    .line 319
    .line 320
    move-object v4, p1

    .line 321
    check-cast v4, Lfb0;

    .line 322
    .line 323
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 324
    .line 325
    move-object v5, p1

    .line 326
    check-cast v5, Landroid/view/ScrollCaptureSession;

    .line 327
    .line 328
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 329
    .line 330
    move-object v6, p0

    .line 331
    check-cast v6, Landroid/graphics/Rect;

    .line 332
    .line 333
    move-object v7, v1

    .line 334
    check-cast v7, Ljava/util/function/Consumer;

    .line 335
    .line 336
    const/4 v9, 0x1

    .line 337
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 338
    .line 339
    .line 340
    return-object v3

    .line 341
    :pswitch_d
    move-object v8, p1

    .line 342
    new-instance v3, Lqd;

    .line 343
    .line 344
    iget-object v4, p0, Lqd;->t:Ljava/lang/Object;

    .line 345
    .line 346
    iget-object p1, p0, Lqd;->u:Ljava/lang/Object;

    .line 347
    .line 348
    move-object v5, p1

    .line 349
    check-cast v5, Lpd;

    .line 350
    .line 351
    iget-object p0, p0, Lqd;->v:Ljava/lang/Object;

    .line 352
    .line 353
    move-object v6, p0

    .line 354
    check-cast v6, Lpg2;

    .line 355
    .line 356
    move-object v7, v1

    .line 357
    check-cast v7, Lpg2;

    .line 358
    .line 359
    const/4 v9, 0x0

    .line 360
    invoke-direct/range {v3 .. v9}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 361
    .line 362
    .line 363
    return-object v3

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lqd;->r:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v5, 0x2

    .line 8
    sget-object v6, Lt64;->a:Lt64;

    .line 9
    .line 10
    iget-object v7, v4, Lqd;->w:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v8, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v9, Lri0;->n:Lri0;

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    const/4 v11, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Log4;

    .line 24
    .line 25
    iget-object v0, v0, Log4;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lv42;

    .line 30
    .line 31
    iget v2, v4, Lqd;->s:I

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eq v2, v10, :cond_1

    .line 36
    .line 37
    if-ne v2, v5, :cond_0

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v11, p1

    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_0
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v2, p1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lv42;->a()Le20;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput v10, v4, Lqd;->s:I

    .line 65
    .line 66
    invoke-static {v2, v1, v4}, Lih4;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lv42;Lbv3;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-ne v2, v9, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    move-object v15, v2

    .line 74
    check-cast v15, Lvb1;

    .line 75
    .line 76
    if-eqz v15, :cond_5

    .line 77
    .line 78
    sget-object v2, Lzf4;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {}, Lt72;->g()Lt72;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v8, "Updating notification for "

    .line 87
    .line 88
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v3, v2, v0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v13, v0

    .line 104
    check-cast v13, Lag4;

    .line 105
    .line 106
    move-object/from16 v16, v7

    .line 107
    .line 108
    check-cast v16, Landroid/content/Context;

    .line 109
    .line 110
    iget-object v0, v1, Lv42;->b:Landroidx/work/WorkerParameters;

    .line 111
    .line 112
    iget-object v14, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 113
    .line 114
    iget-object v0, v13, Lag4;->a:Lqd1;

    .line 115
    .line 116
    iget-object v0, v0, Lqd1;->o:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lji3;

    .line 119
    .line 120
    new-instance v12, Lj4;

    .line 121
    .line 122
    const/16 v17, 0x2

    .line 123
    .line 124
    invoke-direct/range {v12 .. v17}, Lj4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v1, Lrr;

    .line 131
    .line 132
    const/4 v2, 0x7

    .line 133
    invoke-direct {v1, v2, v0, v12}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Lon4;->w(Lc20;)Le20;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput v5, v4, Lqd;->s:I

    .line 141
    .line 142
    invoke-static {v0, v4}, Lca;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lbv3;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-ne v0, v9, :cond_4

    .line 147
    .line 148
    :goto_1
    move-object v11, v9

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move-object v11, v0

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const-string v1, "Worker was marked important ("

    .line 153
    .line 154
    const-string v2, ") but did not provide ForegroundInfo"

    .line 155
    .line 156
    invoke-static {v1, v0, v2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    return-object v11

    .line 164
    :pswitch_0
    check-cast v7, Lhf4;

    .line 165
    .line 166
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 167
    .line 168
    move-object v1, v0

    .line 169
    check-cast v1, Lp22;

    .line 170
    .line 171
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 172
    .line 173
    move-object v13, v0

    .line 174
    check-cast v13, Lh33;

    .line 175
    .line 176
    iget v0, v4, Lqd;->s:I

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    if-ne v0, v10, :cond_6

    .line 181
    .line 182
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    goto :goto_7

    .line 188
    :cond_6
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v6, v11

    .line 192
    goto :goto_6

    .line 193
    :cond_7
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lw33;

    .line 199
    .line 200
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v0, Lzd2;

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    iget-object v2, v13, Lh33;->x:Lhi0;

    .line 207
    .line 208
    invoke-static {v2}, Ldm0;->c(Lhi0;)Lbh0;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iput-object v2, v0, Lzd2;->o:Lbh0;

    .line 213
    .line 214
    :cond_8
    :try_start_1
    iput v10, v4, Lqd;->s:I

    .line 215
    .line 216
    new-instance v14, Lg33;

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    invoke-direct {v14, v13, v0}, Lg33;-><init>(Lh33;Ldh0;)V

    .line 220
    .line 221
    .line 222
    iget-object v2, v4, Lfh0;->o:Lhi0;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lc75;->E(Lhi0;)Lqc;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    iget-object v2, v13, Lh33;->a:Lqc;

    .line 232
    .line 233
    new-instance v12, Lr4;

    .line 234
    .line 235
    const/16 v17, 0x4

    .line 236
    .line 237
    move-object/from16 v16, v0

    .line 238
    .line 239
    invoke-direct/range {v12 .. v17}, Lr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 240
    .line 241
    .line 242
    invoke-static {v2, v12, v4}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    if-ne v0, v9, :cond_9

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_9
    move-object v0, v6

    .line 250
    :goto_3
    if-ne v0, v9, :cond_a

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_a
    move-object v0, v6

    .line 254
    :goto_4
    if-ne v0, v9, :cond_b

    .line 255
    .line 256
    move-object v6, v9

    .line 257
    goto :goto_6

    .line 258
    :cond_b
    :goto_5
    invoke-interface {v1}, Lp22;->getLifecycle()Lh22;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, v7}, Lh22;->b(Lo22;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    return-object v6

    .line 266
    :goto_7
    invoke-interface {v1}, Lp22;->getLifecycle()Lh22;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v1, v7}, Lh22;->b(Lo22;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :pswitch_1
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 275
    .line 276
    move-object v6, v0

    .line 277
    check-cast v6, [I

    .line 278
    .line 279
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 280
    .line 281
    move-object v12, v0

    .line 282
    check-cast v12, Lv24;

    .line 283
    .line 284
    iget v0, v4, Lqd;->s:I

    .line 285
    .line 286
    if-eqz v0, :cond_f

    .line 287
    .line 288
    if-eq v0, v10, :cond_e

    .line 289
    .line 290
    if-eq v0, v5, :cond_d

    .line 291
    .line 292
    if-eq v0, v3, :cond_c

    .line 293
    .line 294
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move-object v9, v11

    .line 298
    goto/16 :goto_c

    .line 299
    .line 300
    :cond_c
    :try_start_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    new-instance v0, Lv00;

    .line 304
    .line 305
    invoke-direct {v0, v1}, Lv00;-><init>(I)V

    .line 306
    .line 307
    .line 308
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    :catchall_1
    move-exception v0

    .line 310
    const-wide/16 v16, 0x1

    .line 311
    .line 312
    goto/16 :goto_d

    .line 313
    .line 314
    :cond_d
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v0, Lb81;

    .line 317
    .line 318
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    const-wide/16 v16, 0x1

    .line 322
    .line 323
    goto/16 :goto_b

    .line 324
    .line 325
    :cond_e
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Lb81;

    .line 328
    .line 329
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    move-object/from16 v1, p1

    .line 333
    .line 334
    const-wide/16 v16, 0x1

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_f
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Lb81;

    .line 343
    .line 344
    iget-object v1, v12, Lv24;->h:Lmu0;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget-object v8, v1, Lmu0;->b:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v8, Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .line 356
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 357
    .line 358
    .line 359
    :try_start_3
    array-length v15, v6

    .line 360
    const/4 v13, 0x0

    .line 361
    const/4 v14, 0x0

    .line 362
    const-wide/16 v16, 0x1

    .line 363
    .line 364
    :goto_8
    if-ge v13, v15, :cond_11

    .line 365
    .line 366
    aget v18, v6, v13

    .line 367
    .line 368
    iget-object v2, v1, Lmu0;->d:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v2, [J

    .line 371
    .line 372
    aget-wide v19, v2, v18

    .line 373
    .line 374
    add-long v21, v19, v16

    .line 375
    .line 376
    aput-wide v21, v2, v18

    .line 377
    .line 378
    const-wide/16 v21, 0x0

    .line 379
    .line 380
    cmp-long v2, v19, v21

    .line 381
    .line 382
    if-nez v2, :cond_10

    .line 383
    .line 384
    iput-boolean v10, v1, Lmu0;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 385
    .line 386
    move v14, v10

    .line 387
    goto :goto_9

    .line 388
    :catchall_2
    move-exception v0

    .line 389
    goto/16 :goto_11

    .line 390
    .line 391
    :cond_10
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_11
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 395
    .line 396
    .line 397
    if-eqz v14, :cond_13

    .line 398
    .line 399
    iget-object v1, v12, Lv24;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 400
    .line 401
    iput-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 402
    .line 403
    iput v10, v4, Lqd;->s:I

    .line 404
    .line 405
    invoke-static {v1, v4}, Lgg4;->D(Lga3;Lfh0;)Lhi0;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    if-ne v1, v9, :cond_12

    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_12
    :goto_a
    check-cast v1, Lhi0;

    .line 413
    .line 414
    new-instance v2, Lx50;

    .line 415
    .line 416
    const/16 v8, 0x15

    .line 417
    .line 418
    invoke-direct {v2, v12, v11, v8}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 419
    .line 420
    .line 421
    iput-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 422
    .line 423
    iput v5, v4, Lqd;->s:I

    .line 424
    .line 425
    invoke-static {v1, v2, v4}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-ne v1, v9, :cond_13

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_13
    :goto_b
    :try_start_4
    new-instance v1, Lw33;

    .line 433
    .line 434
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 435
    .line 436
    .line 437
    iget-object v2, v12, Lv24;->i:Ldh1;

    .line 438
    .line 439
    new-instance v5, Lv30;

    .line 440
    .line 441
    check-cast v7, [Ljava/lang/String;

    .line 442
    .line 443
    invoke-direct {v5, v1, v0, v7, v6}, Lv30;-><init>(Lw33;Lb81;[Ljava/lang/String;[I)V

    .line 444
    .line 445
    .line 446
    iput-object v11, v4, Lqd;->t:Ljava/lang/Object;

    .line 447
    .line 448
    iput v3, v4, Lqd;->s:I

    .line 449
    .line 450
    invoke-virtual {v2, v5, v4}, Ldh1;->n(Lv30;Lfh0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 451
    .line 452
    .line 453
    :goto_c
    return-object v9

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    :goto_d
    iget-object v1, v12, Lv24;->h:Lmu0;

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    iget-object v2, v1, Lmu0;->b:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    .line 469
    .line 470
    :try_start_5
    array-length v3, v6

    .line 471
    const/4 v4, 0x0

    .line 472
    :goto_e
    if-ge v4, v3, :cond_15

    .line 473
    .line 474
    aget v5, v6, v4

    .line 475
    .line 476
    iget-object v7, v1, Lmu0;->d:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v7, [J

    .line 479
    .line 480
    aget-wide v8, v7, v5

    .line 481
    .line 482
    sub-long v11, v8, v16

    .line 483
    .line 484
    aput-wide v11, v7, v5

    .line 485
    .line 486
    cmp-long v5, v8, v16

    .line 487
    .line 488
    if-nez v5, :cond_14

    .line 489
    .line 490
    iput-boolean v10, v1, Lmu0;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 491
    .line 492
    goto :goto_f

    .line 493
    :catchall_4
    move-exception v0

    .line 494
    goto :goto_10

    .line 495
    :cond_14
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 496
    .line 497
    goto :goto_e

    .line 498
    :cond_15
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    .line 500
    .line 501
    throw v0

    .line 502
    :goto_10
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :goto_11
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :pswitch_2
    check-cast v7, Lz04;

    .line 511
    .line 512
    iget v0, v4, Lqd;->s:I

    .line 513
    .line 514
    if-eqz v0, :cond_18

    .line 515
    .line 516
    if-eq v0, v10, :cond_17

    .line 517
    .line 518
    if-ne v0, v5, :cond_16

    .line 519
    .line 520
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lqi0;

    .line 523
    .line 524
    :try_start_6
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 525
    .line 526
    .line 527
    goto :goto_12

    .line 528
    :catchall_5
    move-exception v0

    .line 529
    goto :goto_16

    .line 530
    :cond_16
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    move-object v6, v11

    .line 534
    goto :goto_15

    .line 535
    :cond_17
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Ldg3;

    .line 538
    .line 539
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v1, Lz04;

    .line 542
    .line 543
    iget-object v2, v4, Lqd;->t:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast v2, Lqi0;

    .line 546
    .line 547
    :try_start_7
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 548
    .line 549
    .line 550
    move-object v3, v1

    .line 551
    move-object v1, v2

    .line 552
    move-object/from16 v2, p1

    .line 553
    .line 554
    goto :goto_13

    .line 555
    :cond_18
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v0, Lqi0;

    .line 561
    .line 562
    :goto_12
    :try_start_8
    invoke-interface {v0}, Lqi0;->d()Lhi0;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-static {v1}, Ln44;->t0(Lhi0;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_1b

    .line 571
    .line 572
    iget-object v1, v7, Lwm2;->a:Ldg3;

    .line 573
    .line 574
    iget-object v2, v7, Lz04;->f:Lzy;

    .line 575
    .line 576
    iput-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 577
    .line 578
    iput-object v7, v4, Lqd;->u:Ljava/lang/Object;

    .line 579
    .line 580
    iput-object v1, v4, Lqd;->v:Ljava/lang/Object;

    .line 581
    .line 582
    iput v10, v4, Lqd;->s:I

    .line 583
    .line 584
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v2, v4}, Lzy;->H(Lzy;Lbv3;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    if-ne v2, v9, :cond_19

    .line 592
    .line 593
    goto :goto_14

    .line 594
    :cond_19
    move-object v3, v1

    .line 595
    move-object v1, v0

    .line 596
    move-object v0, v3

    .line 597
    move-object v3, v7

    .line 598
    :goto_13
    check-cast v2, Lx04;

    .line 599
    .line 600
    iput-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 601
    .line 602
    iput-object v11, v4, Lqd;->u:Ljava/lang/Object;

    .line 603
    .line 604
    iput-object v11, v4, Lqd;->v:Ljava/lang/Object;

    .line 605
    .line 606
    iput v5, v4, Lqd;->s:I

    .line 607
    .line 608
    invoke-static {v3, v0, v2, v4}, Lz04;->c(Lz04;Ldg3;Lx04;Lfh0;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 612
    if-ne v0, v9, :cond_1a

    .line 613
    .line 614
    :goto_14
    move-object v6, v9

    .line 615
    goto :goto_15

    .line 616
    :cond_1a
    move-object v0, v1

    .line 617
    goto :goto_12

    .line 618
    :cond_1b
    iput-object v11, v7, Lz04;->g:Lir3;

    .line 619
    .line 620
    :goto_15
    return-object v6

    .line 621
    :goto_16
    iput-object v11, v7, Lz04;->g:Lir3;

    .line 622
    .line 623
    throw v0

    .line 624
    :pswitch_3
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 627
    .line 628
    iget-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v1, Lm10;

    .line 631
    .line 632
    iget v2, v4, Lqd;->s:I

    .line 633
    .line 634
    if-eqz v2, :cond_1e

    .line 635
    .line 636
    if-eq v2, v10, :cond_1d

    .line 637
    .line 638
    if-ne v2, v5, :cond_1c

    .line 639
    .line 640
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    goto :goto_19

    .line 644
    :cond_1c
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    move-object v6, v11

    .line 648
    goto :goto_1a

    .line 649
    :cond_1d
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    goto :goto_17

    .line 653
    :cond_1e
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    iput v10, v4, Lqd;->s:I

    .line 661
    .line 662
    invoke-virtual {v1, v2, v4}, Lm10;->d(Ljava/lang/String;Lbv3;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    if-ne v2, v9, :cond_1f

    .line 667
    .line 668
    goto :goto_18

    .line 669
    :cond_1f
    :goto_17
    iput v5, v4, Lqd;->s:I

    .line 670
    .line 671
    invoke-virtual {v1, v10, v4}, Lm10;->e(ZLfh0;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    if-ne v1, v9, :cond_20

    .line 676
    .line 677
    :goto_18
    move-object v6, v9

    .line 678
    goto :goto_1a

    .line 679
    :cond_20
    :goto_19
    sget-object v1, Lez3;->a:Lra3;

    .line 680
    .line 681
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    const/4 v2, 0x0

    .line 685
    new-array v0, v2, [Ljava/lang/Object;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v0, Ln8;

    .line 696
    .line 697
    check-cast v7, Ly84;

    .line 698
    .line 699
    const-string v1, "calendar_sync_enabled"

    .line 700
    .line 701
    const-string v2, "true"

    .line 702
    .line 703
    invoke-virtual {v0, v7, v1, v2}, Ln8;->i(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    :goto_1a
    return-object v6

    .line 707
    :pswitch_4
    check-cast v7, Lzr;

    .line 708
    .line 709
    iget v0, v4, Lqd;->s:I

    .line 710
    .line 711
    if-eqz v0, :cond_23

    .line 712
    .line 713
    if-eq v0, v10, :cond_22

    .line 714
    .line 715
    if-eq v0, v5, :cond_22

    .line 716
    .line 717
    if-ne v0, v3, :cond_21

    .line 718
    .line 719
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_1f

    .line 723
    .line 724
    :cond_21
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    move-object v6, v11

    .line 728
    goto/16 :goto_1f

    .line 729
    .line 730
    :cond_22
    :try_start_9
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 731
    .line 732
    .line 733
    goto/16 :goto_1f

    .line 734
    .line 735
    :catch_0
    move-exception v0

    .line 736
    goto/16 :goto_1d

    .line 737
    .line 738
    :cond_23
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    :try_start_a
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v0, Lx53;

    .line 744
    .line 745
    invoke-static {v0}, Lx53;->a(Lx53;)Ljava/net/URL;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 757
    .line 758
    const-string v1, "GET"

    .line 759
    .line 760
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const-string v1, "Accept"

    .line 764
    .line 765
    const-string v2, "application/json"

    .line 766
    .line 767
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v1, Ljava/util/Map;

    .line 773
    .line 774
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_24

    .line 787
    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    check-cast v2, Ljava/util/Map$Entry;

    .line 793
    .line 794
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    check-cast v8, Ljava/lang/String;

    .line 799
    .line 800
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    check-cast v2, Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {v0, v8, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    goto :goto_1b

    .line 810
    :cond_24
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    const/16 v2, 0xc8

    .line 815
    .line 816
    if-ne v1, v2, :cond_26

    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    new-instance v1, Ljava/io/BufferedReader;

    .line 823
    .line 824
    new-instance v2, Ljava/io/InputStreamReader;

    .line 825
    .line 826
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 827
    .line 828
    .line 829
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 830
    .line 831
    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .line 836
    .line 837
    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    if-eqz v5, :cond_25

    .line 842
    .line 843
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    goto :goto_1c

    .line 847
    :cond_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 851
    .line 852
    .line 853
    new-instance v0, Lorg/json/JSONObject;

    .line 854
    .line 855
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    iget-object v1, v4, Lqd;->v:Ljava/lang/Object;

    .line 863
    .line 864
    check-cast v1, Ln;

    .line 865
    .line 866
    iput v10, v4, Lqd;->s:I

    .line 867
    .line 868
    invoke-virtual {v1, v0, v4}, Ln;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-ne v0, v9, :cond_28

    .line 873
    .line 874
    goto :goto_1e

    .line 875
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 876
    .line 877
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .line 879
    .line 880
    const-string v2, "Bad response code: "

    .line 881
    .line 882
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    iput v5, v4, Lqd;->s:I

    .line 893
    .line 894
    invoke-virtual {v7, v0, v4}, Lzr;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 895
    .line 896
    .line 897
    if-ne v6, v9, :cond_28

    .line 898
    .line 899
    goto :goto_1e

    .line 900
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    if-nez v1, :cond_27

    .line 905
    .line 906
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    :cond_27
    iput v3, v4, Lqd;->s:I

    .line 911
    .line 912
    invoke-virtual {v7, v1, v4}, Lzr;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    if-ne v6, v9, :cond_28

    .line 916
    .line 917
    :goto_1e
    move-object v6, v9

    .line 918
    :cond_28
    :goto_1f
    return-object v6

    .line 919
    :pswitch_5
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 920
    .line 921
    move-object v14, v0

    .line 922
    check-cast v14, Lyh2;

    .line 923
    .line 924
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 925
    .line 926
    move-object v13, v0

    .line 927
    check-cast v13, Lpg3;

    .line 928
    .line 929
    iget v0, v4, Lqd;->s:I

    .line 930
    .line 931
    if-eqz v0, :cond_2b

    .line 932
    .line 933
    if-eq v0, v10, :cond_29

    .line 934
    .line 935
    if-ne v0, v5, :cond_2a

    .line 936
    .line 937
    :cond_29
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_23

    .line 941
    .line 942
    :cond_2a
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    move-object v6, v11

    .line 946
    goto :goto_23

    .line 947
    :cond_2b
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v0, Lqi0;

    .line 953
    .line 954
    iget-object v2, v13, Lpg3;->c:Lws2;

    .line 955
    .line 956
    iget-object v8, v13, Lpg3;->i:Lss2;

    .line 957
    .line 958
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    invoke-static {v2, v14}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 963
    .line 964
    .line 965
    move-result v2

    .line 966
    const/16 v16, 0x0

    .line 967
    .line 968
    if-nez v2, :cond_2e

    .line 969
    .line 970
    iput v10, v4, Lqd;->s:I

    .line 971
    .line 972
    iget-object v15, v13, Lpg3;->e:Ln14;

    .line 973
    .line 974
    if-nez v15, :cond_2c

    .line 975
    .line 976
    goto :goto_20

    .line 977
    :cond_2c
    iget-object v0, v13, Lpg3;->l:Leh2;

    .line 978
    .line 979
    new-instance v12, Ljg3;

    .line 980
    .line 981
    const/16 v17, 0x0

    .line 982
    .line 983
    invoke-direct/range {v12 .. v17}, Ljg3;-><init>(Lpg3;Ljava/lang/Object;Ln14;Ldh0;I)V

    .line 984
    .line 985
    .line 986
    invoke-static {v0, v12, v4}, Leh2;->a(Leh2;Lpe1;Ldh0;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    if-ne v0, v9, :cond_2d

    .line 991
    .line 992
    goto :goto_21

    .line 993
    :cond_2d
    :goto_20
    move-object v0, v6

    .line 994
    :goto_21
    if-ne v0, v9, :cond_2f

    .line 995
    .line 996
    goto :goto_22

    .line 997
    :cond_2e
    move-object/from16 v2, v16

    .line 998
    .line 999
    check-cast v7, Ln14;

    .line 1000
    .line 1001
    iget-object v7, v7, Ln14;->m:Los0;

    .line 1002
    .line 1003
    invoke-virtual {v7}, Los0;->getValue()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v7

    .line 1007
    check-cast v7, Ljava/lang/Number;

    .line 1008
    .line 1009
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 1010
    .line 1011
    .line 1012
    move-result-wide v10

    .line 1013
    const-wide/32 v15, 0xf4240

    .line 1014
    .line 1015
    .line 1016
    div-long/2addr v10, v15

    .line 1017
    invoke-virtual {v8}, Lss2;->g()F

    .line 1018
    .line 1019
    .line 1020
    move-result v7

    .line 1021
    invoke-virtual {v8}, Lss2;->g()F

    .line 1022
    .line 1023
    .line 1024
    move-result v8

    .line 1025
    long-to-float v10, v10

    .line 1026
    mul-float/2addr v8, v10

    .line 1027
    float-to-int v8, v8

    .line 1028
    invoke-static {v8, v1, v2}, Ltv4;->V(IILmy0;)Ld34;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    new-instance v1, Lbt0;

    .line 1033
    .line 1034
    invoke-direct {v1, v0, v13, v14, v3}, Lbt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1035
    .line 1036
    .line 1037
    iput v5, v4, Lqd;->s:I

    .line 1038
    .line 1039
    move-object v3, v1

    .line 1040
    const/4 v1, 0x0

    .line 1041
    const/4 v5, 0x4

    .line 1042
    move v0, v7

    .line 1043
    invoke-static/range {v0 .. v5}, Lk75;->g(FFLve;Ldf1;Lbv3;I)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    if-ne v0, v9, :cond_2f

    .line 1048
    .line 1049
    :goto_22
    move-object v6, v9

    .line 1050
    :cond_2f
    :goto_23
    return-object v6

    .line 1051
    :pswitch_6
    check-cast v7, Lxi2;

    .line 1052
    .line 1053
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v0, Ljava/lang/String;

    .line 1056
    .line 1057
    iget v2, v4, Lqd;->s:I

    .line 1058
    .line 1059
    if-eqz v2, :cond_31

    .line 1060
    .line 1061
    if-ne v2, v10, :cond_30

    .line 1062
    .line 1063
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_25

    .line 1067
    :cond_30
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    move-object v6, v11

    .line 1071
    goto :goto_25

    .line 1072
    :cond_31
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    iget-object v2, v4, Lqd;->t:Ljava/lang/Object;

    .line 1076
    .line 1077
    check-cast v2, Ljava/lang/String;

    .line 1078
    .line 1079
    if-eqz v2, :cond_32

    .line 1080
    .line 1081
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v3

    .line 1085
    if-nez v3, :cond_32

    .line 1086
    .line 1087
    :try_start_b
    new-instance v3, Lao0;

    .line 1088
    .line 1089
    invoke-direct {v3, v0, v1}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v7, v2, v3}, Lxi2;->a(Ljava/lang/String;Lpe1;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 1093
    .line 1094
    .line 1095
    goto :goto_24

    .line 1096
    :catch_1
    sget-object v1, Lez3;->a:Lra3;

    .line 1097
    .line 1098
    const-string v3, "Initial navigation failed for route: "

    .line 1099
    .line 1100
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    const/4 v2, 0x0

    .line 1104
    new-array v2, v2, [Ljava/lang/Object;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v2}, Lra3;->g([Ljava/lang/Object;)V

    .line 1110
    .line 1111
    .line 1112
    :cond_32
    :goto_24
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v1, Lu/sage/MainActivity;

    .line 1115
    .line 1116
    iget-object v2, v1, Lu/sage/MainActivity;->s:Lwl3;

    .line 1117
    .line 1118
    new-instance v3, Li92;

    .line 1119
    .line 1120
    invoke-direct {v3, v7, v1, v0, v11}, Li92;-><init>(Lxi2;Lu/sage/MainActivity;Ljava/lang/String;Ldh0;)V

    .line 1121
    .line 1122
    .line 1123
    iput v10, v4, Lqd;->s:I

    .line 1124
    .line 1125
    invoke-static {v2, v3, v4}, Lqj0;->A(La81;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    if-ne v0, v9, :cond_33

    .line 1130
    .line 1131
    move-object v6, v9

    .line 1132
    :cond_33
    :goto_25
    return-object v6

    .line 1133
    :pswitch_7
    iget v0, v4, Lqd;->s:I

    .line 1134
    .line 1135
    if-eqz v0, :cond_36

    .line 1136
    .line 1137
    if-eq v0, v10, :cond_35

    .line 1138
    .line 1139
    if-ne v0, v5, :cond_34

    .line 1140
    .line 1141
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 1142
    .line 1143
    check-cast v0, Lt33;

    .line 1144
    .line 1145
    iget-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast v1, Lqi0;

    .line 1148
    .line 1149
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1150
    .line 1151
    .line 1152
    move-object v14, v0

    .line 1153
    move-object/from16 v17, v1

    .line 1154
    .line 1155
    goto :goto_27

    .line 1156
    :cond_34
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    :goto_26
    move-object v9, v11

    .line 1160
    goto/16 :goto_29

    .line 1161
    .line 1162
    :cond_35
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 1163
    .line 1164
    check-cast v0, Lt33;

    .line 1165
    .line 1166
    iget-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 1167
    .line 1168
    check-cast v1, Lqi0;

    .line 1169
    .line 1170
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1171
    .line 1172
    .line 1173
    move-object v14, v0

    .line 1174
    move-object v0, v1

    .line 1175
    goto :goto_28

    .line 1176
    :cond_36
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1180
    .line 1181
    check-cast v0, Lqi0;

    .line 1182
    .line 1183
    new-instance v1, Lt33;

    .line 1184
    .line 1185
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1189
    .line 1190
    iput v2, v1, Lt33;->n:F

    .line 1191
    .line 1192
    move-object/from16 v17, v0

    .line 1193
    .line 1194
    move-object v14, v1

    .line 1195
    :goto_27
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 1196
    .line 1197
    move-object v15, v0

    .line 1198
    check-cast v15, Lpg2;

    .line 1199
    .line 1200
    move-object/from16 v16, v7

    .line 1201
    .line 1202
    check-cast v16, Lrq1;

    .line 1203
    .line 1204
    new-instance v12, Lk4;

    .line 1205
    .line 1206
    const/4 v13, 0x3

    .line 1207
    invoke-direct/range {v12 .. v17}, Lk4;-><init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1208
    .line 1209
    .line 1210
    move-object/from16 v0, v17

    .line 1211
    .line 1212
    iput-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1213
    .line 1214
    iput-object v14, v4, Lqd;->u:Ljava/lang/Object;

    .line 1215
    .line 1216
    iput v10, v4, Lqd;->s:I

    .line 1217
    .line 1218
    invoke-interface {v4}, Ldh0;->e()Lhi0;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    sget-object v2, Lw13;->F:Lw13;

    .line 1223
    .line 1224
    invoke-interface {v1, v2}, Lhi0;->K(Lgi0;)Lfi0;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    if-nez v1, :cond_39

    .line 1229
    .line 1230
    invoke-interface {v4}, Ldh0;->e()Lhi0;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    invoke-static {v1}, Lc75;->E(Lhi0;)Lqc;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v1

    .line 1238
    invoke-virtual {v1, v12, v4}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    if-ne v1, v9, :cond_37

    .line 1243
    .line 1244
    goto :goto_29

    .line 1245
    :cond_37
    :goto_28
    iget v1, v14, Lt33;->n:F

    .line 1246
    .line 1247
    const/4 v2, 0x0

    .line 1248
    cmpg-float v1, v1, v2

    .line 1249
    .line 1250
    if-nez v1, :cond_38

    .line 1251
    .line 1252
    new-instance v1, Lcc;

    .line 1253
    .line 1254
    const/16 v2, 0xe

    .line 1255
    .line 1256
    invoke-direct {v1, v2, v0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v2, Lr4;

    .line 1260
    .line 1261
    invoke-direct {v2, v1, v11}, Lr4;-><init>(Lne1;Ldh0;)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v1, Lmt;

    .line 1265
    .line 1266
    invoke-direct {v1, v3, v2}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 1267
    .line 1268
    .line 1269
    new-instance v2, Lqq1;

    .line 1270
    .line 1271
    invoke-direct {v2, v5, v11}, Lbv3;-><init>(ILdh0;)V

    .line 1272
    .line 1273
    .line 1274
    iput-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1275
    .line 1276
    iput-object v14, v4, Lqd;->u:Ljava/lang/Object;

    .line 1277
    .line 1278
    iput v5, v4, Lqd;->s:I

    .line 1279
    .line 1280
    invoke-static {v1, v2, v4}, Lqj0;->I(La81;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v1

    .line 1284
    if-ne v1, v9, :cond_38

    .line 1285
    .line 1286
    goto :goto_29

    .line 1287
    :cond_38
    move-object/from16 v17, v0

    .line 1288
    .line 1289
    goto :goto_27

    .line 1290
    :cond_39
    invoke-static {}, Lmk0;->b()V

    .line 1291
    .line 1292
    .line 1293
    goto/16 :goto_26

    .line 1294
    .line 1295
    :goto_29
    return-object v9

    .line 1296
    :pswitch_8
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 1297
    .line 1298
    move-object v13, v0

    .line 1299
    check-cast v13, La81;

    .line 1300
    .line 1301
    move-object v14, v7

    .line 1302
    check-cast v14, Lwr3;

    .line 1303
    .line 1304
    iget v0, v4, Lqd;->s:I

    .line 1305
    .line 1306
    const/4 v1, 0x4

    .line 1307
    if-eqz v0, :cond_3d

    .line 1308
    .line 1309
    if-eq v0, v10, :cond_3c

    .line 1310
    .line 1311
    if-eq v0, v5, :cond_3b

    .line 1312
    .line 1313
    if-eq v0, v3, :cond_3c

    .line 1314
    .line 1315
    if-ne v0, v1, :cond_3a

    .line 1316
    .line 1317
    goto :goto_2a

    .line 1318
    :cond_3a
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    move-object v6, v11

    .line 1322
    goto :goto_2d

    .line 1323
    :cond_3b
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_2b

    .line 1327
    :cond_3c
    :goto_2a
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_2d

    .line 1331
    :cond_3d
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1332
    .line 1333
    .line 1334
    iget-object v0, v4, Lqd;->u:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v0, Lom3;

    .line 1337
    .line 1338
    sget-object v2, Lnm3;->a:Lb21;

    .line 1339
    .line 1340
    if-ne v0, v2, :cond_3e

    .line 1341
    .line 1342
    iput v10, v4, Lqd;->s:I

    .line 1343
    .line 1344
    invoke-interface {v13, v14, v4}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    if-ne v0, v9, :cond_41

    .line 1349
    .line 1350
    goto :goto_2c

    .line 1351
    :cond_3e
    sget-object v2, Lnm3;->b:Lpr3;

    .line 1352
    .line 1353
    const/4 v7, 0x0

    .line 1354
    if-ne v0, v2, :cond_40

    .line 1355
    .line 1356
    invoke-virtual {v14}, Ld2;->g()Lvt3;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v0

    .line 1360
    new-instance v1, La91;

    .line 1361
    .line 1362
    invoke-direct {v1, v5, v7}, Lbv3;-><init>(ILdh0;)V

    .line 1363
    .line 1364
    .line 1365
    iput v5, v4, Lqd;->s:I

    .line 1366
    .line 1367
    invoke-static {v0, v1, v4}, Lqj0;->I(La81;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    if-ne v0, v9, :cond_3f

    .line 1372
    .line 1373
    goto :goto_2c

    .line 1374
    :cond_3f
    :goto_2b
    iput v3, v4, Lqd;->s:I

    .line 1375
    .line 1376
    invoke-interface {v13, v14, v4}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    if-ne v0, v9, :cond_41

    .line 1381
    .line 1382
    goto :goto_2c

    .line 1383
    :cond_40
    invoke-virtual {v14}, Ld2;->g()Lvt3;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    invoke-interface {v0, v2}, Lom3;->e(Lvt3;)La81;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    invoke-static {v0}, Lqj0;->D(La81;)La81;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    new-instance v12, Lqd;

    .line 1396
    .line 1397
    iget-object v15, v4, Lqd;->t:Ljava/lang/Object;

    .line 1398
    .line 1399
    const/16 v17, 0x4

    .line 1400
    .line 1401
    move-object/from16 v16, v7

    .line 1402
    .line 1403
    invoke-direct/range {v12 .. v17}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 1404
    .line 1405
    .line 1406
    iput v1, v4, Lqd;->s:I

    .line 1407
    .line 1408
    invoke-static {v0, v12, v4}, Lqj0;->A(La81;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    if-ne v0, v9, :cond_41

    .line 1413
    .line 1414
    :goto_2c
    move-object v6, v9

    .line 1415
    :cond_41
    :goto_2d
    return-object v6

    .line 1416
    :pswitch_9
    iget-object v0, v4, Lqd;->v:Ljava/lang/Object;

    .line 1417
    .line 1418
    check-cast v0, Lwr3;

    .line 1419
    .line 1420
    iget v1, v4, Lqd;->s:I

    .line 1421
    .line 1422
    if-eqz v1, :cond_43

    .line 1423
    .line 1424
    if-ne v1, v10, :cond_42

    .line 1425
    .line 1426
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1427
    .line 1428
    .line 1429
    goto :goto_2f

    .line 1430
    :cond_42
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    :goto_2e
    move-object v6, v11

    .line 1434
    goto :goto_2f

    .line 1435
    :cond_43
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v1, v4, Lqd;->t:Ljava/lang/Object;

    .line 1439
    .line 1440
    check-cast v1, Lmm3;

    .line 1441
    .line 1442
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1443
    .line 1444
    .line 1445
    move-result v1

    .line 1446
    if-eqz v1, :cond_46

    .line 1447
    .line 1448
    if-eq v1, v10, :cond_47

    .line 1449
    .line 1450
    if-ne v1, v5, :cond_45

    .line 1451
    .line 1452
    sget-object v1, Lxl3;->a:Lsg0;

    .line 1453
    .line 1454
    if-eq v7, v1, :cond_44

    .line 1455
    .line 1456
    invoke-virtual {v0, v7}, Lwr3;->h(Ljava/lang/Object;)V

    .line 1457
    .line 1458
    .line 1459
    goto :goto_2f

    .line 1460
    :cond_44
    const-string v0, "MutableStateFlow.resetReplayCache is not supported"

    .line 1461
    .line 1462
    invoke-static {v0}, Lp61;->s(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    goto :goto_2e

    .line 1466
    :cond_45
    invoke-static {}, Lp61;->x()V

    .line 1467
    .line 1468
    .line 1469
    goto :goto_2e

    .line 1470
    :cond_46
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1471
    .line 1472
    check-cast v1, La81;

    .line 1473
    .line 1474
    iput v10, v4, Lqd;->s:I

    .line 1475
    .line 1476
    invoke-interface {v1, v0, v4}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v0

    .line 1480
    if-ne v0, v9, :cond_47

    .line 1481
    .line 1482
    move-object v6, v9

    .line 1483
    :cond_47
    :goto_2f
    return-object v6

    .line 1484
    :pswitch_a
    iget v0, v4, Lqd;->s:I

    .line 1485
    .line 1486
    if-eqz v0, :cond_49

    .line 1487
    .line 1488
    if-ne v0, v10, :cond_48

    .line 1489
    .line 1490
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1491
    .line 1492
    .line 1493
    move-object/from16 v0, p1

    .line 1494
    .line 1495
    goto :goto_30

    .line 1496
    :cond_48
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    move-object v0, v11

    .line 1500
    goto :goto_30

    .line 1501
    :cond_49
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1505
    .line 1506
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 1507
    .line 1508
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1509
    .line 1510
    check-cast v1, Lv42;

    .line 1511
    .line 1512
    iget-object v2, v4, Lqd;->v:Ljava/lang/Object;

    .line 1513
    .line 1514
    check-cast v2, Lct2;

    .line 1515
    .line 1516
    check-cast v7, Log4;

    .line 1517
    .line 1518
    iput v10, v4, Lqd;->s:I

    .line 1519
    .line 1520
    invoke-static {v0, v1, v2, v7, v4}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lv42;Lct2;Log4;Lfh0;)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    if-ne v0, v9, :cond_4a

    .line 1525
    .line 1526
    move-object v0, v9

    .line 1527
    :cond_4a
    :goto_30
    return-object v0

    .line 1528
    :pswitch_b
    iget v0, v4, Lqd;->s:I

    .line 1529
    .line 1530
    if-eqz v0, :cond_4c

    .line 1531
    .line 1532
    if-ne v0, v10, :cond_4b

    .line 1533
    .line 1534
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1535
    .line 1536
    .line 1537
    move-object/from16 v0, p1

    .line 1538
    .line 1539
    goto :goto_31

    .line 1540
    :cond_4b
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    move-object v6, v11

    .line 1544
    goto :goto_32

    .line 1545
    :cond_4c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1546
    .line 1547
    .line 1548
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1549
    .line 1550
    check-cast v0, Lct2;

    .line 1551
    .line 1552
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1553
    .line 1554
    check-cast v1, Log4;

    .line 1555
    .line 1556
    iput v10, v4, Lqd;->s:I

    .line 1557
    .line 1558
    invoke-static {v0, v1, v4}, Ljf0;->a(Lct2;Log4;Lfh0;)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v0

    .line 1562
    if-ne v0, v9, :cond_4d

    .line 1563
    .line 1564
    move-object v6, v9

    .line 1565
    goto :goto_32

    .line 1566
    :cond_4d
    :goto_31
    check-cast v0, Ljava/lang/Number;

    .line 1567
    .line 1568
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    iget-object v1, v4, Lqd;->v:Ljava/lang/Object;

    .line 1573
    .line 1574
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1575
    .line 1576
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1577
    .line 1578
    .line 1579
    check-cast v7, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1580
    .line 1581
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1582
    .line 1583
    .line 1584
    :goto_32
    return-object v6

    .line 1585
    :pswitch_c
    iget v0, v4, Lqd;->s:I

    .line 1586
    .line 1587
    if-eqz v0, :cond_4f

    .line 1588
    .line 1589
    if-ne v0, v10, :cond_4e

    .line 1590
    .line 1591
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1592
    .line 1593
    .line 1594
    move-object/from16 v0, p1

    .line 1595
    .line 1596
    goto :goto_33

    .line 1597
    :cond_4e
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1598
    .line 1599
    .line 1600
    move-object v6, v11

    .line 1601
    goto :goto_34

    .line 1602
    :cond_4f
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1603
    .line 1604
    .line 1605
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1606
    .line 1607
    check-cast v0, Lfb0;

    .line 1608
    .line 1609
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1610
    .line 1611
    check-cast v1, Landroid/view/ScrollCaptureSession;

    .line 1612
    .line 1613
    iget-object v2, v4, Lqd;->v:Ljava/lang/Object;

    .line 1614
    .line 1615
    check-cast v2, Landroid/graphics/Rect;

    .line 1616
    .line 1617
    new-instance v3, Lns1;

    .line 1618
    .line 1619
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 1620
    .line 1621
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 1622
    .line 1623
    iget v11, v2, Landroid/graphics/Rect;->right:I

    .line 1624
    .line 1625
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1626
    .line 1627
    invoke-direct {v3, v5, v8, v11, v2}, Lns1;-><init>(IIII)V

    .line 1628
    .line 1629
    .line 1630
    iput v10, v4, Lqd;->s:I

    .line 1631
    .line 1632
    invoke-static {v0, v1, v3, v4}, Lfb0;->a(Lfb0;Landroid/view/ScrollCaptureSession;Lns1;Lfh0;)Ljava/lang/Object;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v0

    .line 1636
    if-ne v0, v9, :cond_50

    .line 1637
    .line 1638
    move-object v6, v9

    .line 1639
    goto :goto_34

    .line 1640
    :cond_50
    :goto_33
    check-cast v0, Lns1;

    .line 1641
    .line 1642
    check-cast v7, Ljava/util/function/Consumer;

    .line 1643
    .line 1644
    invoke-static {v0}, Ldm0;->M(Lns1;)Landroid/graphics/Rect;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    invoke-interface {v7, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1649
    .line 1650
    .line 1651
    :goto_34
    return-object v6

    .line 1652
    :pswitch_d
    iget-object v0, v4, Lqd;->t:Ljava/lang/Object;

    .line 1653
    .line 1654
    iget-object v1, v4, Lqd;->u:Ljava/lang/Object;

    .line 1655
    .line 1656
    check-cast v1, Lpd;

    .line 1657
    .line 1658
    iget v2, v4, Lqd;->s:I

    .line 1659
    .line 1660
    if-eqz v2, :cond_52

    .line 1661
    .line 1662
    if-ne v2, v10, :cond_51

    .line 1663
    .line 1664
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1665
    .line 1666
    .line 1667
    goto :goto_35

    .line 1668
    :cond_51
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    move-object v6, v11

    .line 1672
    goto :goto_36

    .line 1673
    :cond_52
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 1674
    .line 1675
    .line 1676
    iget-object v2, v1, Lpd;->e:Lws2;

    .line 1677
    .line 1678
    invoke-virtual {v2}, Lws2;->getValue()Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1683
    .line 1684
    .line 1685
    move-result v2

    .line 1686
    if-nez v2, :cond_54

    .line 1687
    .line 1688
    iget-object v2, v4, Lqd;->v:Ljava/lang/Object;

    .line 1689
    .line 1690
    check-cast v2, Lpg2;

    .line 1691
    .line 1692
    sget-object v3, Lsd;->a:Lyq3;

    .line 1693
    .line 1694
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    check-cast v2, Lve;

    .line 1699
    .line 1700
    iput v10, v4, Lqd;->s:I

    .line 1701
    .line 1702
    invoke-static {v1, v0, v2, v4}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v0

    .line 1706
    if-ne v0, v9, :cond_53

    .line 1707
    .line 1708
    move-object v6, v9

    .line 1709
    goto :goto_36

    .line 1710
    :cond_53
    :goto_35
    check-cast v7, Lpg2;

    .line 1711
    .line 1712
    sget-object v0, Lsd;->a:Lyq3;

    .line 1713
    .line 1714
    invoke-interface {v7}, Ltr3;->getValue()Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    check-cast v0, Lpe1;

    .line 1719
    .line 1720
    if-eqz v0, :cond_54

    .line 1721
    .line 1722
    invoke-virtual {v1}, Lpd;->d()Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    :cond_54
    :goto_36
    return-object v6

    .line 1730
    nop

    .line 1731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
