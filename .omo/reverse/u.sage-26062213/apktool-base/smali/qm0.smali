.class public final Lqm0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public r:Ljava/lang/Object;

.field public s:Ljava/io/Serializable;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/util/Iterator;

.field public w:I

.field public x:I

.field public final synthetic y:Lfn0;

.field public final synthetic z:Lqd1;


# direct methods
.method public constructor <init>(Lfn0;Lqd1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqm0;->y:Lfn0;

    .line 2
    .line 3
    iput-object p2, p0, Lqm0;->z:Lqd1;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ldh0;

    .line 2
    .line 3
    new-instance v0, Lqm0;

    .line 4
    .line 5
    iget-object v1, p0, Lqm0;->y:Lfn0;

    .line 6
    .line 7
    iget-object p0, p0, Lqm0;->z:Lqd1;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1}, Lqm0;-><init>(Lfn0;Lqd1;Ldh0;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lt64;->a:Lt64;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lqm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lqm0;->x:I

    .line 2
    .line 3
    iget-object v1, p0, Lqm0;->z:Lqd1;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, p0, Lqm0;->y:Lfn0;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    sget-object v8, Lri0;->n:Lri0;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    if-eq v0, v6, :cond_3

    .line 17
    .line 18
    if-eq v0, v4, :cond_2

    .line 19
    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lqm0;->w:I

    .line 25
    .line 26
    iget-object p0, p0, Lqm0;->r:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v7

    .line 39
    :cond_1
    iget-object v0, p0, Lqm0;->t:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lfh2;

    .line 42
    .line 43
    iget-object v1, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast v1, Lw33;

    .line 46
    .line 47
    iget-object v3, p0, Lqm0;->r:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Ls33;

    .line 50
    .line 51
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lqm0;->v:Ljava/util/Iterator;

    .line 57
    .line 58
    iget-object v9, p0, Lqm0;->u:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v9, Lpm0;

    .line 61
    .line 62
    iget-object v10, p0, Lqm0;->t:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v10, Lw33;

    .line 65
    .line 66
    iget-object v11, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v11, Ls33;

    .line 69
    .line 70
    iget-object v12, p0, Lqm0;->r:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v12, Lfh2;

    .line 73
    .line 74
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lqm0;->u:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lw33;

    .line 81
    .line 82
    iget-object v9, p0, Lqm0;->t:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v9, Lw33;

    .line 85
    .line 86
    iget-object v10, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 87
    .line 88
    check-cast v10, Ls33;

    .line 89
    .line 90
    iget-object v11, p0, Lqm0;->r:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v11, Lfh2;

    .line 93
    .line 94
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v11, Lhh2;

    .line 102
    .line 103
    invoke-direct {v11}, Lhh2;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v10, Ls33;

    .line 107
    .line 108
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lw33;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v11, p0, Lqm0;->r:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v10, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 119
    .line 120
    iput-object v0, p0, Lqm0;->t:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v0, p0, Lqm0;->u:Ljava/lang/Object;

    .line 123
    .line 124
    iput v6, p0, Lqm0;->x:I

    .line 125
    .line 126
    invoke-static {v5, v6, p0}, Lfn0;->h(Lfn0;ZLfh0;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v8, :cond_5

    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_5
    move-object v9, v0

    .line 135
    :goto_0
    check-cast p1, Lam0;

    .line 136
    .line 137
    iget-object p1, p1, Lam0;->b:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 140
    .line 141
    new-instance p1, Lpm0;

    .line 142
    .line 143
    invoke-direct {p1, v11, v10, v9, v5}, Lpm0;-><init>(Lfh2;Ls33;Lw33;Lfn0;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v1, Lqd1;->q:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Ljava/util/List;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v12, v11

    .line 157
    move-object v11, v10

    .line 158
    move-object v10, v9

    .line 159
    move-object v9, p1

    .line 160
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Ldf1;

    .line 171
    .line 172
    iput-object v12, p0, Lqm0;->r:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v11, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 175
    .line 176
    iput-object v10, p0, Lqm0;->t:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v9, p0, Lqm0;->u:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object v0, p0, Lqm0;->v:Ljava/util/Iterator;

    .line 181
    .line 182
    iput v4, p0, Lqm0;->x:I

    .line 183
    .line 184
    invoke-interface {p1, v9, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v8, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    move-object v9, v10

    .line 192
    move-object v10, v11

    .line 193
    move-object v0, v12

    .line 194
    goto :goto_2

    .line 195
    :cond_8
    move-object v0, v11

    .line 196
    :goto_2
    iput-object v7, v1, Lqd1;->q:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v10, p0, Lqm0;->r:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v9, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 201
    .line 202
    iput-object v0, p0, Lqm0;->t:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v7, p0, Lqm0;->u:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v7, p0, Lqm0;->v:Ljava/util/Iterator;

    .line 207
    .line 208
    iput v3, p0, Lqm0;->x:I

    .line 209
    .line 210
    invoke-interface {v0, p0}, Lfh2;->j(Lfh0;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-ne p1, v8, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    move-object v1, v9

    .line 218
    move-object v3, v10

    .line 219
    :goto_3
    :try_start_0
    iput-boolean v6, v3, Ls33;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .line 221
    invoke-interface {v0, v7}, Lfh2;->b(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, v1, Lw33;->n:Ljava/lang/Object;

    .line 225
    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    const/4 v0, 0x0

    .line 234
    :goto_4
    invoke-virtual {v5}, Lfn0;->i()Lvs1;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iput-object p1, p0, Lqm0;->r:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v7, p0, Lqm0;->s:Ljava/io/Serializable;

    .line 241
    .line 242
    iput-object v7, p0, Lqm0;->t:Ljava/lang/Object;

    .line 243
    .line 244
    iput v0, p0, Lqm0;->w:I

    .line 245
    .line 246
    iput v2, p0, Lqm0;->x:I

    .line 247
    .line 248
    invoke-interface {v1, p0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    if-ne p0, v8, :cond_b

    .line 253
    .line 254
    :goto_5
    return-object v8

    .line 255
    :cond_b
    move-object v13, p1

    .line 256
    move-object p1, p0

    .line 257
    move-object p0, v13

    .line 258
    :goto_6
    check-cast p1, Ljava/lang/Number;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    new-instance v1, Lam0;

    .line 265
    .line 266
    invoke-direct {v1, v0, p1, p0}, Lam0;-><init>(IILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    return-object v1

    .line 270
    :catchall_0
    move-exception p0

    .line 271
    invoke-interface {v0, v7}, Lfh2;->b(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    throw p0
.end method
