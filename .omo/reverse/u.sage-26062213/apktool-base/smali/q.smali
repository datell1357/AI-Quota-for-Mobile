.class public final Lq;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:J

.field public u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;Ldh0;I)V
    .locals 0

    .line 16
    iput p6, p0, Lq;->r:I

    iput-object p1, p0, Lq;->v:Ljava/lang/Object;

    iput-wide p2, p0, Lq;->t:J

    iput-object p4, p0, Lq;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ln84;JLqi0;Ljava/lang/String;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lq;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lq;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p2, p0, Lq;->t:J

    .line 7
    .line 8
    iput-object p4, p0, Lq;->v:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Lq;->w:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p0, v0, p6}, Lbv3;-><init>(ILdh0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final t(JLs33;Lu33;Lu33;Lu33;Ln84;Landroid/os/Handler;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p2, Ls33;->n:Z

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lez3;->a:Lra3;

    .line 7
    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    iput-boolean p0, p2, Ls33;->n:Z

    .line 19
    .line 20
    sget-object p0, Lez3;->a:Lra3;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lo9;

    .line 34
    .line 35
    const/16 p1, 0xd

    .line 36
    .line 37
    invoke-direct {p0, p1, p8}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p7, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lqi0;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lq;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lq;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lqi0;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lq;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lq;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lbg3;

    .line 39
    .line 40
    check-cast p2, Ldh0;

    .line 41
    .line 42
    invoke-virtual {p0, p2, p1}, Lq;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lq;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lqi0;

    .line 54
    .line 55
    check-cast p2, Ldh0;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Lq;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lq;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 11

    .line 1
    iget v0, p0, Lq;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lq;->w:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lq;->v:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lq;

    .line 11
    .line 12
    move-object v4, v2

    .line 13
    check-cast v4, Ln84;

    .line 14
    .line 15
    move-object v7, v1

    .line 16
    check-cast v7, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v9, 0x3

    .line 19
    iget-wide v5, p0, Lq;->t:J

    .line 20
    .line 21
    move-object v8, p1

    .line 22
    invoke-direct/range {v3 .. v9}, Lq;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ldh0;I)V

    .line 23
    .line 24
    .line 25
    iput-object p2, v3, Lq;->u:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v3

    .line 28
    :pswitch_0
    move-object v9, p1

    .line 29
    new-instance v4, Lq;

    .line 30
    .line 31
    iget-object p1, p0, Lq;->u:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v5, p1

    .line 34
    check-cast v5, Ln84;

    .line 35
    .line 36
    move-object v8, v2

    .line 37
    check-cast v8, Lqi0;

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    iget-wide v6, p0, Lq;->t:J

    .line 42
    .line 43
    move-object v10, v9

    .line 44
    move-object v9, v1

    .line 45
    invoke-direct/range {v4 .. v10}, Lq;-><init>(Ln84;JLqi0;Ljava/lang/String;Ldh0;)V

    .line 46
    .line 47
    .line 48
    return-object v4

    .line 49
    :pswitch_1
    move-object v9, p1

    .line 50
    new-instance v4, Lq;

    .line 51
    .line 52
    move-object v5, v2

    .line 53
    check-cast v5, Ldg3;

    .line 54
    .line 55
    move-object v8, v1

    .line 56
    check-cast v8, Lt33;

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    iget-wide v6, p0, Lq;->t:J

    .line 60
    .line 61
    invoke-direct/range {v4 .. v10}, Lq;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ldh0;I)V

    .line 62
    .line 63
    .line 64
    iput-object p2, v4, Lq;->u:Ljava/lang/Object;

    .line 65
    .line 66
    return-object v4

    .line 67
    :pswitch_2
    move-object v9, p1

    .line 68
    new-instance v4, Lq;

    .line 69
    .line 70
    move-object v5, v2

    .line 71
    check-cast v5, Ltu1;

    .line 72
    .line 73
    move-object v8, v1

    .line 74
    check-cast v8, Lvf2;

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    iget-wide v6, p0, Lq;->t:J

    .line 78
    .line 79
    invoke-direct/range {v4 .. v10}, Lq;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ldh0;I)V

    .line 80
    .line 81
    .line 82
    return-object v4

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lq;->r:I

    .line 4
    .line 5
    sget-object v6, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-wide v1, v4, Lq;->t:J

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v5, v4, Lq;->w:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v4, Lq;->v:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v8, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    sget-object v9, Lri0;->n:Lri0;

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    iget-object v0, v4, Lq;->u:Ljava/lang/Object;

    .line 24
    .line 25
    move-object/from16 v16, v0

    .line 26
    .line 27
    check-cast v16, Lqi0;

    .line 28
    .line 29
    iget v0, v4, Lq;->s:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-ne v0, v10, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnz3; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    move-object v9, v11

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :try_start_1
    new-instance v12, Lq;

    .line 50
    .line 51
    move-object v13, v7

    .line 52
    check-cast v13, Ln84;

    .line 53
    .line 54
    iget-wide v14, v4, Lq;->t:J

    .line 55
    .line 56
    move-object/from16 v17, v5

    .line 57
    .line 58
    check-cast v17, Ljava/lang/String;

    .line 59
    .line 60
    const/16 v18, 0x0

    .line 61
    .line 62
    invoke-direct/range {v12 .. v18}, Lq;-><init>(Ln84;JLqi0;Ljava/lang/String;Ldh0;)V

    .line 63
    .line 64
    .line 65
    iput-object v11, v4, Lq;->u:Ljava/lang/Object;

    .line 66
    .line 67
    iput v10, v4, Lq;->s:I

    .line 68
    .line 69
    const-wide/16 v0, 0x3a98

    .line 70
    .line 71
    invoke-static {v0, v1, v12, v4}, Lw80;->Y(JLdf1;Lfh0;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-ne v0, v9, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_1
    move-object v9, v0

    .line 79
    check-cast v9, Ld84;
    :try_end_1
    .catch Lnz3; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_0
    sget-object v0, Lez3;->a:Lra3;

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    new-array v1, v3, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_2
    return-object v9

    .line 97
    :pswitch_0
    iget-object v0, v4, Lq;->u:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v14, v0

    .line 100
    check-cast v14, Ln84;

    .line 101
    .line 102
    iget-object v0, v14, Ln84;->a:Landroid/content/Context;

    .line 103
    .line 104
    iget v1, v4, Lq;->s:I

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    if-ne v1, v10, :cond_3

    .line 109
    .line 110
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v0, p1

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_3
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v0, v11

    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lez3;->a:Lra3;

    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    new-array v2, v3, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    check-cast v7, Lqi0;

    .line 140
    .line 141
    move-object/from16 v25, v5

    .line 142
    .line 143
    check-cast v25, Ljava/lang/String;

    .line 144
    .line 145
    iput v10, v4, Lq;->s:I

    .line 146
    .line 147
    new-instance v1, Lo20;

    .line 148
    .line 149
    invoke-static {v4}, Ldm0;->A(Ldh0;)Ldh0;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-direct {v1, v10, v2}, Lo20;-><init>(ILdh0;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lo20;->x()V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    new-instance v2, Landroid/webkit/WebView;

    .line 163
    .line 164
    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    new-instance v5, Landroid/os/Handler;

    .line 168
    .line 169
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    new-array v6, v3, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v2}, Lk30;->h(Landroid/webkit/WebView;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14}, Ln84;->g()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    if-eqz v6, :cond_5

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v8, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    invoke-virtual {v14}, Ln84;->c()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance v8, Lbd4;

    .line 208
    .line 209
    invoke-direct {v8, v6}, Lbd4;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    const/16 v8, 0x8

    .line 227
    .line 228
    invoke-static {v8, v6}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    new-instance v13, Lu33;

    .line 241
    .line 242
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    new-instance v17, Lu33;

    .line 246
    .line 247
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v18, Lu33;

    .line 251
    .line 252
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 253
    .line 254
    .line 255
    new-instance v22, Ls33;

    .line 256
    .line 257
    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    new-array v6, v3, [Ljava/lang/Object;

    .line 268
    .line 269
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v6, Lsc4;

    .line 273
    .line 274
    new-instance v12, Ll84;

    .line 275
    .line 276
    iget-wide v3, v4, Lq;->t:J

    .line 277
    .line 278
    move-object/from16 v19, v16

    .line 279
    .line 280
    move-object/from16 v16, v13

    .line 281
    .line 282
    move-object v13, v14

    .line 283
    move-object v14, v15

    .line 284
    move-object/from16 v15, v19

    .line 285
    .line 286
    move-object/from16 v21, v1

    .line 287
    .line 288
    move-object/from16 v24, v2

    .line 289
    .line 290
    move-wide/from16 v19, v3

    .line 291
    .line 292
    move-object/from16 v23, v5

    .line 293
    .line 294
    invoke-direct/range {v12 .. v24}, Ll84;-><init>(Ln84;Ljava/lang/String;Ljava/lang/String;Lu33;Lu33;Lu33;JLo20;Ls33;Landroid/os/Handler;Landroid/webkit/WebView;)V

    .line 295
    .line 296
    .line 297
    move-object v4, v14

    .line 298
    move-object v5, v15

    .line 299
    move-object/from16 v8, v17

    .line 300
    .line 301
    move-wide/from16 v27, v19

    .line 302
    .line 303
    move-object/from16 v26, v22

    .line 304
    .line 305
    move-object/from16 v3, v23

    .line 306
    .line 307
    move-object v15, v12

    .line 308
    move-object v14, v13

    .line 309
    move-object/from16 v13, v16

    .line 310
    .line 311
    move-object/from16 v12, v18

    .line 312
    .line 313
    invoke-direct {v6, v0, v10, v15}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6}, Lsc4;->a()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v2, v6, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v15, v14, Ln84;->a:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {v14}, Ln84;->b()Ln1;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    invoke-virtual {v14}, Ln84;->f()Lps;

    .line 330
    .line 331
    .line 332
    move-result-object v17

    .line 333
    invoke-virtual {v14}, Ln84;->c()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v19

    .line 337
    iget-object v0, v14, Ln84;->c:Lnv3;

    .line 338
    .line 339
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    move-object/from16 v20, v0

    .line 344
    .line 345
    check-cast v20, Ln8;

    .line 346
    .line 347
    invoke-virtual {v14}, Ln84;->e()Ly84;

    .line 348
    .line 349
    .line 350
    move-result-object v21

    .line 351
    sget-object v0, Lxc4;->a:Lpi1;

    .line 352
    .line 353
    new-instance v0, Lvc4;

    .line 354
    .line 355
    invoke-direct {v0, v10, v11}, Lbv3;-><init>(ILdh0;)V

    .line 356
    .line 357
    .line 358
    sget-object v22, Lpj3;->b:Lpj3;

    .line 359
    .line 360
    const/16 v23, 0x1

    .line 361
    .line 362
    move-object/from16 v24, v0

    .line 363
    .line 364
    move-object/from16 v18, v7

    .line 365
    .line 366
    invoke-static/range {v15 .. v24}, Lxc4;->c(Landroid/content/Context;Ln1;Lps;Lqi0;Ljava/lang/String;Ln8;Ly84;Lv43;ZLpe1;)Lsc4;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lsc4;->a()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-virtual {v2, v0, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 378
    .line 379
    .line 380
    move-result-wide v20

    .line 381
    move-object/from16 v18, v12

    .line 382
    .line 383
    new-instance v12, Lj84;

    .line 384
    .line 385
    move-object/from16 v17, v1

    .line 386
    .line 387
    move-object/from16 v24, v2

    .line 388
    .line 389
    move-object v15, v4

    .line 390
    move-object/from16 v16, v5

    .line 391
    .line 392
    move-object/from16 v19, v18

    .line 393
    .line 394
    move-wide/from16 v22, v27

    .line 395
    .line 396
    move-object/from16 v18, v8

    .line 397
    .line 398
    invoke-direct/range {v12 .. v25}, Lj84;-><init>(Lu33;Ln84;Ljava/lang/String;Ljava/lang/String;Lo20;Lu33;Lu33;JJLandroid/webkit/WebView;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    move-object/from16 v17, v18

    .line 402
    .line 403
    move-object/from16 v18, v19

    .line 404
    .line 405
    move-wide/from16 v19, v22

    .line 406
    .line 407
    invoke-virtual {v2, v12}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 411
    .line 412
    .line 413
    const/4 v0, 0x0

    .line 414
    new-array v0, v0, [Ljava/lang/Object;

    .line 415
    .line 416
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    const-string v0, "about:blank"

    .line 420
    .line 421
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    new-instance v12, Lk84;

    .line 425
    .line 426
    move-object/from16 v21, v2

    .line 427
    .line 428
    move-object/from16 v22, v15

    .line 429
    .line 430
    move-object/from16 v23, v16

    .line 431
    .line 432
    move-object/from16 v15, v26

    .line 433
    .line 434
    move-object/from16 v16, v13

    .line 435
    .line 436
    move-wide/from16 v29, v19

    .line 437
    .line 438
    move-object/from16 v20, v3

    .line 439
    .line 440
    move-object/from16 v19, v14

    .line 441
    .line 442
    move-wide/from16 v13, v29

    .line 443
    .line 444
    invoke-direct/range {v12 .. v23}, Lk84;-><init>(JLs33;Lu33;Lu33;Lu33;Ln84;Landroid/os/Handler;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v12}, Lo20;->z(Lpe1;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Lo20;->v()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    if-ne v0, v9, :cond_6

    .line 455
    .line 456
    move-object v0, v9

    .line 457
    :cond_6
    :goto_3
    return-object v0

    .line 458
    :pswitch_1
    check-cast v7, Ldg3;

    .line 459
    .line 460
    iget v0, v4, Lq;->s:I

    .line 461
    .line 462
    if-eqz v0, :cond_8

    .line 463
    .line 464
    if-ne v0, v10, :cond_7

    .line 465
    .line 466
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_7
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    move-object v6, v11

    .line 474
    goto :goto_4

    .line 475
    :cond_8
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    iget-object v0, v4, Lq;->u:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lbg3;

    .line 481
    .line 482
    invoke-virtual {v7, v1, v2}, Ldg3;->h(J)F

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    check-cast v5, Lt33;

    .line 487
    .line 488
    new-instance v3, Lbt0;

    .line 489
    .line 490
    const/4 v2, 0x4

    .line 491
    invoke-direct {v3, v5, v7, v0, v2}, Lbt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 492
    .line 493
    .line 494
    iput v10, v4, Lq;->s:I

    .line 495
    .line 496
    const/4 v0, 0x0

    .line 497
    const/4 v2, 0x0

    .line 498
    const/16 v5, 0xc

    .line 499
    .line 500
    invoke-static/range {v0 .. v5}, Lk75;->g(FFLve;Ldf1;Lbv3;I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    if-ne v0, v9, :cond_9

    .line 505
    .line 506
    move-object v6, v9

    .line 507
    :cond_9
    :goto_4
    return-object v6

    .line 508
    :pswitch_2
    check-cast v5, Lvf2;

    .line 509
    .line 510
    iget v0, v4, Lq;->s:I

    .line 511
    .line 512
    const/4 v3, 0x3

    .line 513
    const/4 v12, 0x2

    .line 514
    if-eqz v0, :cond_d

    .line 515
    .line 516
    if-eq v0, v10, :cond_c

    .line 517
    .line 518
    if-eq v0, v12, :cond_b

    .line 519
    .line 520
    if-ne v0, v3, :cond_a

    .line 521
    .line 522
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_a
    invoke-static {v8}, Lk21;->n(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    move-object v6, v11

    .line 530
    goto :goto_8

    .line 531
    :cond_b
    iget-object v0, v4, Lq;->u:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v0, Liy2;

    .line 534
    .line 535
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 540
    .line 541
    .line 542
    goto :goto_5

    .line 543
    :cond_d
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    check-cast v7, Ltu1;

    .line 547
    .line 548
    iput v10, v4, Lq;->s:I

    .line 549
    .line 550
    invoke-interface {v7, v4}, Ltu1;->i0(Lfh0;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    if-ne v0, v9, :cond_e

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_e
    :goto_5
    new-instance v0, Lhy2;

    .line 558
    .line 559
    invoke-direct {v0, v1, v2}, Lhy2;-><init>(J)V

    .line 560
    .line 561
    .line 562
    new-instance v1, Liy2;

    .line 563
    .line 564
    invoke-direct {v1, v0}, Liy2;-><init>(Lhy2;)V

    .line 565
    .line 566
    .line 567
    iput-object v1, v4, Lq;->u:Ljava/lang/Object;

    .line 568
    .line 569
    iput v12, v4, Lq;->s:I

    .line 570
    .line 571
    invoke-virtual {v5, v0, v4}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-ne v0, v9, :cond_f

    .line 576
    .line 577
    goto :goto_7

    .line 578
    :cond_f
    move-object v0, v1

    .line 579
    :goto_6
    iput-object v11, v4, Lq;->u:Ljava/lang/Object;

    .line 580
    .line 581
    iput v3, v4, Lq;->s:I

    .line 582
    .line 583
    invoke-virtual {v5, v0, v4}, Lvf2;->b(Lws1;Ldh0;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    if-ne v0, v9, :cond_10

    .line 588
    .line 589
    :goto_7
    move-object v6, v9

    .line 590
    :cond_10
    :goto_8
    return-object v6

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
