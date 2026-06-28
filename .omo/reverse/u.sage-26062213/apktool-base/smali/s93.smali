.class public final Ls93;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:Z

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lpd;ZLyq3;Lne1;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ls93;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Ls93;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Ls93;->t:Z

    .line 7
    .line 8
    iput-object p3, p0, Ls93;->v:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Ls93;->w:Ljava/lang/Object;

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

.method public constructor <init>(Lu/sage/worker/RollingWindowWorker;Ldh0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls93;->r:I

    .line 17
    iput-object p1, p0, Ls93;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ls93;->r:I

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
    invoke-virtual {p0, p2, p1}, Ls93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ls93;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ls93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Ls93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ls93;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ls93;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 7

    .line 1
    iget p2, p0, Ls93;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Ls93;->w:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Ls93;

    .line 9
    .line 10
    iget-object p2, p0, Ls93;->u:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v2, p2

    .line 13
    check-cast v2, Lpd;

    .line 14
    .line 15
    iget-boolean v3, p0, Ls93;->t:Z

    .line 16
    .line 17
    iget-object p0, p0, Ls93;->v:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v4, p0

    .line 20
    check-cast v4, Lyq3;

    .line 21
    .line 22
    move-object v5, v0

    .line 23
    check-cast v5, Lne1;

    .line 24
    .line 25
    move-object v6, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Ls93;-><init>(Lpd;ZLyq3;Lne1;Ldh0;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_0
    move-object v6, p1

    .line 31
    new-instance p0, Ls93;

    .line 32
    .line 33
    check-cast v0, Lu/sage/worker/RollingWindowWorker;

    .line 34
    .line 35
    invoke-direct {p0, v0, v6}, Ls93;-><init>(Lu/sage/worker/RollingWindowWorker;Ldh0;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Ls93;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Ls93;->w:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lri0;->n:Lri0;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Ls93;->s:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v6

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Ls93;->u:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lpd;

    .line 37
    .line 38
    iget-boolean v0, p0, Ls93;->t:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    :goto_0
    new-instance v3, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ls93;->v:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lyq3;

    .line 54
    .line 55
    iput v5, p0, Ls93;->s:I

    .line 56
    .line 57
    invoke-static {p1, v3, v0, p0}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-ne p0, v4, :cond_3

    .line 62
    .line 63
    move-object v1, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    check-cast v2, Lne1;

    .line 66
    .line 67
    invoke-interface {v2}, Lne1;->a()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :goto_2
    return-object v1

    .line 71
    :pswitch_0
    check-cast v2, Lu/sage/worker/RollingWindowWorker;

    .line 72
    .line 73
    iget-object v0, v2, Lv42;->a:Landroid/content/Context;

    .line 74
    .line 75
    iget v2, p0, Ls93;->s:I

    .line 76
    .line 77
    const/4 v7, 0x3

    .line 78
    const/4 v8, 0x2

    .line 79
    if-eqz v2, :cond_7

    .line 80
    .line 81
    if-eq v2, v5, :cond_6

    .line 82
    .line 83
    if-eq v2, v8, :cond_5

    .line 84
    .line 85
    if-ne v2, v7, :cond_4

    .line 86
    .line 87
    iget-boolean v2, p0, Ls93;->t:Z

    .line 88
    .line 89
    iget-object p0, p0, Ls93;->v:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Ld84;

    .line 92
    .line 93
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_4
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v1, v6

    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_5
    iget-boolean v2, p0, Ls93;->t:Z

    .line 105
    .line 106
    iget-object v3, p0, Ls93;->u:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Lr50;

    .line 109
    .line 110
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    iget-object v2, p0, Ls93;->u:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Lr50;

    .line 117
    .line 118
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    move-object v3, v2

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lr50;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1, v0}, Lr50;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, p1, Lps;->f:Lnv3;

    .line 135
    .line 136
    invoke-virtual {v2}, Lnv3;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, La81;

    .line 141
    .line 142
    iput-object p1, p0, Ls93;->u:Ljava/lang/Object;

    .line 143
    .line 144
    iput v5, p0, Ls93;->s:I

    .line 145
    .line 146
    invoke-static {v2, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-ne v2, v4, :cond_8

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    move-object v3, p1

    .line 154
    move-object p1, v2

    .line 155
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v3}, Lps;->c()La81;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iput-object v3, p0, Ls93;->u:Ljava/lang/Object;

    .line 166
    .line 167
    iput-boolean p1, p0, Ls93;->t:Z

    .line 168
    .line 169
    iput v8, p0, Ls93;->s:I

    .line 170
    .line 171
    invoke-static {v2, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-ne v2, v4, :cond_9

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_9
    move-object v9, v2

    .line 179
    move v2, p1

    .line 180
    move-object p1, v9

    .line 181
    :goto_4
    check-cast p1, Ld84;

    .line 182
    .line 183
    iget-object v3, v3, Lps;->g:Lnv3;

    .line 184
    .line 185
    invoke-virtual {v3}, Lnv3;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, La81;

    .line 190
    .line 191
    iput-object v6, p0, Ls93;->u:Ljava/lang/Object;

    .line 192
    .line 193
    iput-object p1, p0, Ls93;->v:Ljava/lang/Object;

    .line 194
    .line 195
    iput-boolean v2, p0, Ls93;->t:Z

    .line 196
    .line 197
    iput v7, p0, Ls93;->s:I

    .line 198
    .line 199
    invoke-static {v3, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    if-ne p0, v4, :cond_a

    .line 204
    .line 205
    :goto_5
    move-object v1, v4

    .line 206
    goto :goto_7

    .line 207
    :cond_a
    move-object v9, p1

    .line 208
    move-object p1, p0

    .line 209
    move-object p0, v9

    .line 210
    :goto_6
    check-cast p1, Ljava/lang/Number;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 213
    .line 214
    .line 215
    move-result-wide v3

    .line 216
    if-eqz v2, :cond_b

    .line 217
    .line 218
    if-eqz p0, :cond_b

    .line 219
    .line 220
    sget-object p1, Lu/sage/worker/RollingWindowWorker;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {v0, p0, v3, v4}, Ltv4;->P(Landroid/content/Context;Ld84;J)V

    .line 226
    .line 227
    .line 228
    :cond_b
    :goto_7
    return-object v1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
