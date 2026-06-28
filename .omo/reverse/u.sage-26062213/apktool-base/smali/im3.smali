.class public final Lim3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lkm3;


# direct methods
.method public synthetic constructor <init>(Lkm3;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lim3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lim3;->t:Lkm3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lim3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lgj3;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lim3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lim3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lim3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lim3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lim3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lim3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Lim3;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lim3;->t:Lkm3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lim3;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lim3;-><init>(Lkm3;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, v0, Lim3;->s:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lim3;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p1, v1}, Lim3;-><init>(Lkm3;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, v0, Lim3;->s:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lim3;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lim3;->t:Lkm3;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lim3;->s:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lgj3;

    .line 15
    .line 16
    iget-object p1, v1, Lkm3;->f:Lyy2;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Lkm3;->e(Lgj3;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, p0, Lgj3;->c:Ljava/util/Map;

    .line 23
    .line 24
    const-string v4, "FirebaseSessions"

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v3, :cond_9

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-boolean v6, p1, Lyy2;->f:Z

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    iget-object v6, p1, Lyy2;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v6}, Lk30;->s(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v8, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    move v10, v7

    .line 55
    :cond_1
    :goto_0
    if-ge v10, v9, :cond_3

    .line 56
    .line 57
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    add-int/lit8 v10, v10, 0x1

    .line 62
    .line 63
    check-cast v11, Lzy2;

    .line 64
    .line 65
    iget-object v12, v11, Lzy2;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    check-cast v12, Lwy2;

    .line 72
    .line 73
    if-eqz v12, :cond_2

    .line 74
    .line 75
    new-instance v13, Ljs2;

    .line 76
    .line 77
    invoke-direct {v13, v11, v12}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v13, v2

    .line 82
    :goto_1
    if-eqz v13, :cond_1

    .line 83
    .line 84
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    :cond_4
    move v7, v5

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    move v9, v7

    .line 101
    :cond_6
    :goto_2
    if-ge v9, v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    add-int/lit8 v9, v9, 0x1

    .line 108
    .line 109
    check-cast v10, Ljs2;

    .line 110
    .line 111
    iget-object v11, v10, Ljs2;->n:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v11, Lzy2;

    .line 114
    .line 115
    iget-object v10, v10, Ljs2;->o:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v10, Lwy2;

    .line 118
    .line 119
    invoke-virtual {p1}, Lyy2;->a()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    iget-object v13, v11, Lzy2;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v12, v13}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    iget v11, v11, Lzy2;->b:I

    .line 130
    .line 131
    if-eqz v12, :cond_7

    .line 132
    .line 133
    iget v12, v10, Lwy2;->a:I

    .line 134
    .line 135
    if-ne v11, v12, :cond_6

    .line 136
    .line 137
    iget-object v11, p1, Lyy2;->d:Lnv3;

    .line 138
    .line 139
    invoke-virtual {v11}, Lnv3;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    check-cast v11, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v10, v10, Lwy2;->b:Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {v11, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_8

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    iget v10, v10, Lwy2;->a:I

    .line 155
    .line 156
    if-eq v11, v10, :cond_8

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    :goto_3
    if-eqz v7, :cond_a

    .line 160
    .line 161
    const-string v6, "Cold app start detected"

    .line 162
    .line 163
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    const-string v6, "No process data map"

    .line 168
    .line 169
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move v7, v5

    .line 173
    :cond_a
    :goto_4
    invoke-virtual {v1, p0}, Lkm3;->d(Lgj3;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v7, :cond_b

    .line 178
    .line 179
    sget-object v3, Lh01;->n:Lh01;

    .line 180
    .line 181
    invoke-virtual {p1, v3}, Lyy2;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    goto :goto_5

    .line 186
    :cond_b
    if-eqz v4, :cond_c

    .line 187
    .line 188
    invoke-virtual {p1, v3}, Lyy2;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    .line 193
    .line 194
    move-object v6, v2

    .line 195
    goto :goto_6

    .line 196
    :cond_d
    iget-object v6, p0, Lgj3;->a:Llj3;

    .line 197
    .line 198
    :goto_6
    const/4 v8, 0x3

    .line 199
    if-nez v0, :cond_f

    .line 200
    .line 201
    if-eqz v7, :cond_e

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_e
    if-eqz v4, :cond_10

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Lyy2;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p0, v2, v2, p1, v8}, Lgj3;->a(Lgj3;Llj3;Lhz3;Ljava/util/Map;I)Lgj3;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    goto :goto_8

    .line 215
    :cond_f
    :goto_7
    iget-object p0, v1, Lkm3;->b:Luj3;

    .line 216
    .line 217
    invoke-virtual {p0, v6}, Luj3;->a(Llj3;)Llj3;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    iget-object v0, v1, Lkm3;->c:Ltj3;

    .line 222
    .line 223
    iget-object v1, v0, Ltj3;->e:Lhi0;

    .line 224
    .line 225
    invoke-static {v1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    new-instance v4, Lrj3;

    .line 230
    .line 231
    invoke-direct {v4, v0, p0, v2}, Lrj3;-><init>(Ltj3;Llj3;Ldh0;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v2, v2, v4, v8}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 235
    .line 236
    .line 237
    iput-boolean v5, p1, Lyy2;->f:Z

    .line 238
    .line 239
    new-instance p1, Lgj3;

    .line 240
    .line 241
    invoke-direct {p1, p0, v2, v3}, Lgj3;-><init>(Llj3;Lhz3;Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    move-object p0, p1

    .line 245
    :cond_10
    :goto_8
    return-object p0

    .line 246
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    iget-object p0, p0, Lim3;->s:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p0, Lgj3;

    .line 252
    .line 253
    iget-object p1, v1, Lkm3;->d:Liz3;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {}, Liz3;->a()Lhz3;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const/4 v0, 0x5

    .line 263
    invoke-static {p0, v2, p1, v2, v0}, Lgj3;->a(Lgj3;Llj3;Lhz3;Ljava/util/Map;I)Lgj3;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
