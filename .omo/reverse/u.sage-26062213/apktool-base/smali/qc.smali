.class public final Lqc;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lfi0;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Lnc;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqc;->n:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lqc;->o:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lqc;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld33;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lqc;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lqc;->o:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance p1, Lrp;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lrp;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lqc;->p:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lqc;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lqc;->n:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc;->o:Ljava/lang/Object;

    .line 19
    new-instance p1, Lmu0;

    invoke-direct {p1}, Lmu0;-><init>()V

    iput-object p1, p0, Lqc;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final F(Lhi0;)Lhi0;
    .locals 1

    .line 1
    iget v0, p0, Lqc;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K(Lgi0;)Lfi0;
    .locals 1

    .line 1
    iget v0, p0, Lqc;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lqc;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Y(Lgi0;)Lhi0;
    .locals 1

    .line 1
    iget v0, p0, Lqc;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lpe1;Ldh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lqc;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    instance-of v0, p2, Lyt2;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    check-cast v0, Lyt2;

    .line 14
    .line 15
    iget v1, v0, Lyt2;->t:I

    .line 16
    .line 17
    const/high16 v3, -0x80000000

    .line 18
    .line 19
    and-int v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    iput v1, v0, Lyt2;->t:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lyt2;

    .line 28
    .line 29
    invoke-direct {v0, p0, p2}, Lyt2;-><init>(Lqc;Ldh0;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p2, v0, Lyt2;->r:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v1, Lri0;->n:Lri0;

    .line 35
    .line 36
    iget v3, v0, Lyt2;->t:I

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x2

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    if-eq v3, v2, :cond_2

    .line 43
    .line 44
    if-ne v3, v5, :cond_1

    .line 45
    .line 46
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object p2, v4

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    iget-object p1, v0, Lyt2;->q:Lpe1;

    .line 58
    .line 59
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lqc;->p:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p2, Lmu0;

    .line 69
    .line 70
    iput-object p1, v0, Lyt2;->q:Lpe1;

    .line 71
    .line 72
    iput v2, v0, Lyt2;->t:I

    .line 73
    .line 74
    iget-object v3, p2, Lmu0;->b:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v3

    .line 77
    :try_start_0
    iget-boolean v6, p2, Lmu0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    .line 79
    monitor-exit v3

    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    sget-object p2, Lt64;->a:Lt64;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    new-instance v3, Lo20;

    .line 86
    .line 87
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-direct {v3, v2, v6}, Lo20;-><init>(ILdh0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lo20;->x()V

    .line 95
    .line 96
    .line 97
    iget-object v6, p2, Lmu0;->b:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter v6

    .line 100
    :try_start_1
    iget-object v7, p2, Lmu0;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    monitor-exit v6

    .line 108
    new-instance v6, Lih1;

    .line 109
    .line 110
    invoke-direct {v6, v2, p2, v3}, Lih1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6}, Lo20;->z(Lpe1;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lo20;->v()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-ne p2, v1, :cond_5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    sget-object p2, Lt64;->a:Lt64;

    .line 124
    .line 125
    :goto_1
    if-ne p2, v1, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    :goto_2
    iget-object p0, p0, Lqc;->o:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Lqc;

    .line 131
    .line 132
    iput-object v4, v0, Lyt2;->q:Lpe1;

    .line 133
    .line 134
    iput v5, v0, Lyt2;->t:I

    .line 135
    .line 136
    invoke-virtual {p0, p1, v0}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    if-ne p2, v1, :cond_7

    .line 141
    .line 142
    :goto_3
    move-object p2, v1

    .line 143
    :cond_7
    :goto_4
    return-object p2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v6

    .line 146
    throw p0

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    monitor-exit v3

    .line 149
    throw p0

    .line 150
    :pswitch_0
    new-instance v0, Lo20;

    .line 151
    .line 152
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-direct {v0, v2, p2}, Lo20;-><init>(ILdh0;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lo20;->x()V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lqc;->p:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p2, Lrp;

    .line 165
    .line 166
    new-instance v2, Lky;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v0, v2, Lky;->a:Lo20;

    .line 172
    .line 173
    iput-object p1, v2, Lky;->b:Lpe1;

    .line 174
    .line 175
    iget-object p0, p0, Lqc;->o:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Ld33;

    .line 178
    .line 179
    invoke-virtual {p2, v2, p0}, Lrp;->f(Lqp;Lne1;)Lq20;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    new-instance p1, Lly;

    .line 184
    .line 185
    invoke-direct {p1, v1, p0}, Lly;-><init>(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1}, Lo20;->z(Lpe1;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lqc;->p:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lnc;

    .line 199
    .line 200
    new-instance v3, Lo20;

    .line 201
    .line 202
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-direct {v3, v2, p2}, Lo20;-><init>(ILdh0;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lo20;->x()V

    .line 210
    .line 211
    .line 212
    new-instance p2, Lpc;

    .line 213
    .line 214
    invoke-direct {p2, v3, p0, p1}, Lpc;-><init>(Lo20;Lqc;Lpe1;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v0, Lnc;->p:Landroid/view/Choreographer;

    .line 218
    .line 219
    iget-object v4, p0, Lqc;->o:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v4, Landroid/view/Choreographer;

    .line 222
    .line 223
    invoke-static {p1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_9

    .line 228
    .line 229
    iget-object p0, v0, Lnc;->r:Ljava/lang/Object;

    .line 230
    .line 231
    monitor-enter p0

    .line 232
    :try_start_2
    iget-object p1, v0, Lnc;->t:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    iget-boolean p1, v0, Lnc;->w:Z

    .line 238
    .line 239
    if-nez p1, :cond_8

    .line 240
    .line 241
    iput-boolean v2, v0, Lnc;->w:Z

    .line 242
    .line 243
    iget-object p1, v0, Lnc;->p:Landroid/view/Choreographer;

    .line 244
    .line 245
    iget-object v2, v0, Lnc;->x:Lmc;

    .line 246
    .line 247
    invoke-virtual {p1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :catchall_2
    move-exception p1

    .line 252
    goto :goto_6

    .line 253
    :cond_8
    :goto_5
    monitor-exit p0

    .line 254
    new-instance p0, Loc;

    .line 255
    .line 256
    invoke-direct {p0, v1, v0, p2}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, p0}, Lo20;->z(Lpe1;)V

    .line 260
    .line 261
    .line 262
    goto :goto_7

    .line 263
    :goto_6
    monitor-exit p0

    .line 264
    throw p1

    .line 265
    :cond_9
    iget-object p1, p0, Lqc;->o:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p1, Landroid/view/Choreographer;

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Loc;

    .line 273
    .line 274
    invoke-direct {p1, v2, p0, p2}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, p1}, Lo20;->z(Lpe1;)V

    .line 278
    .line 279
    .line 280
    :goto_7
    invoke-virtual {v3}, Lo20;->v()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    return-object p0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKey()Lgi0;
    .locals 0

    .line 1
    sget-object p0, Lmj1;->Y:Lmj1;

    .line 2
    .line 3
    return-object p0
.end method
