.class public final synthetic Lq14;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq14;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lq14;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lq14;->p:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lq14;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lt64;->a:Lt64;

    .line 7
    .line 8
    iget-object v5, p0, Lq14;->p:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lq14;->o:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Ltg4;

    .line 16
    .line 17
    check-cast v5, Lsg4;

    .line 18
    .line 19
    check-cast p1, Ljb3;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Ltg4;->b:Lis0;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v5}, Lis0;->F(Ljb3;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :pswitch_0
    check-cast p0, Lqg4;

    .line 31
    .line 32
    check-cast v5, Log4;

    .line 33
    .line 34
    check-cast p1, Ljb3;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lqg4;->b:Lis0;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v5}, Lis0;->F(Ljb3;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v4

    .line 45
    :pswitch_1
    check-cast p0, Lzl0;

    .line 46
    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    check-cast p1, Ljb3;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    .line 55
    .line 56
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :try_start_0
    sget-object v0, Lzl0;->b:Lzl0;

    .line 61
    .line 62
    invoke-static {p0}, Lbi4;->L(Lzl0;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p1, v3, p0}, Lpb3;->k(I[B)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v2, v5}, Lpb3;->P(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Lpb3;->c0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 76
    .line 77
    .line 78
    return-object v4

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :pswitch_2
    check-cast p0, Lcg4;

    .line 85
    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    check-cast p1, Ljb3;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v0, "UPDATE workspec SET state=? WHERE id=?"

    .line 94
    .line 95
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :try_start_1
    invoke-static {p0}, Lug4;->i(Lcg4;)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    int-to-long v6, p0

    .line 104
    invoke-interface {v0, v3, v6, v7}, Lpb3;->h(IJ)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v2, v5}, Lpb3;->P(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Lpb3;->c0()Z

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lse0;->t(Ljb3;)I

    .line 114
    .line 115
    .line 116
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 118
    .line 119
    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :pswitch_3
    check-cast p0, Lig4;

    .line 131
    .line 132
    check-cast v5, Lhg4;

    .line 133
    .line 134
    check-cast p1, Ljb3;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lig4;->b:Lis0;

    .line 140
    .line 141
    invoke-virtual {p0, p1, v5}, Lis0;->F(Ljb3;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-object v4

    .line 145
    :pswitch_4
    check-cast p0, Lqe4;

    .line 146
    .line 147
    check-cast v5, Landroid/view/View;

    .line 148
    .line 149
    check-cast p1, Lhv0;

    .line 150
    .line 151
    iget-object p1, p0, Lqe4;->u:Lqr1;

    .line 152
    .line 153
    iget v0, p0, Lqe4;->t:I

    .line 154
    .line 155
    if-nez v0, :cond_1

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p1, Lqr1;->q:Z

    .line 159
    .line 160
    iput-boolean v0, p1, Lqr1;->r:Z

    .line 161
    .line 162
    iput-object v1, p1, Lqr1;->s:Lke4;

    .line 163
    .line 164
    sget-object v0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 165
    .line 166
    invoke-static {v5, p1}, Lfb4;->c(Landroid/view/View;Llo2;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/view/View;->requestApplyInsets()V

    .line 176
    .line 177
    .line 178
    :cond_0
    invoke-virtual {v5, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v5, p1}, Llb4;->g(Landroid/view/View;Lb70;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    iget p1, p0, Lqe4;->t:I

    .line 185
    .line 186
    add-int/2addr p1, v3

    .line 187
    iput p1, p0, Lqe4;->t:I

    .line 188
    .line 189
    new-instance p1, Laq;

    .line 190
    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    invoke-direct {p1, v0, p0, v5}, Laq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-object p1

    .line 197
    :pswitch_5
    check-cast p0, Lt74;

    .line 198
    .line 199
    check-cast v5, Lpe1;

    .line 200
    .line 201
    check-cast p1, Ljava/lang/Long;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    iget p1, p0, Lt74;->e:F

    .line 207
    .line 208
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lt74;->e:F

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-interface {v5, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    return-object v4

    .line 219
    :pswitch_6
    check-cast v5, Lqi0;

    .line 220
    .line 221
    check-cast p1, Lne1;

    .line 222
    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne p0, v0, :cond_2

    .line 228
    .line 229
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_2
    new-instance p0, Lh5;

    .line 234
    .line 235
    invoke-direct {p0, p1, v1, v3}, Lh5;-><init>(Lne1;Ldh0;I)V

    .line 236
    .line 237
    .line 238
    const/4 p1, 0x3

    .line 239
    invoke-static {v5, v1, v1, p0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 240
    .line 241
    .line 242
    :goto_0
    return-object v4

    .line 243
    :pswitch_7
    check-cast p0, Ln14;

    .line 244
    .line 245
    check-cast v5, Lj14;

    .line 246
    .line 247
    check-cast p1, Lhv0;

    .line 248
    .line 249
    new-instance p1, Laq;

    .line 250
    .line 251
    const/4 v0, 0x7

    .line 252
    invoke-direct {p1, v0, p0, v5}, Laq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    return-object p1

    .line 256
    :pswitch_8
    check-cast p0, Ln14;

    .line 257
    .line 258
    check-cast v5, Ln14;

    .line 259
    .line 260
    check-cast p1, Lhv0;

    .line 261
    .line 262
    iget-object p1, p0, Ln14;->k:Lgp3;

    .line 263
    .line 264
    invoke-virtual {p1, v5}, Lgp3;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance p1, Laq;

    .line 268
    .line 269
    const/4 v0, 0x6

    .line 270
    invoke-direct {p1, v0, p0, v5}, Laq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    return-object p1

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
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
