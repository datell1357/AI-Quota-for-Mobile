.class public final Lrj3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:Lzr1;

.field public s:Ltj3;

.field public t:Lnj3;

.field public u:Le61;

.field public v:Llj3;

.field public w:Lgk3;

.field public x:I

.field public final synthetic y:Ltj3;

.field public final synthetic z:Llj3;


# direct methods
.method public constructor <init>(Ltj3;Llj3;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrj3;->y:Ltj3;

    .line 2
    .line 3
    iput-object p2, p0, Lrj3;->z:Llj3;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lrj3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lrj3;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lrj3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    new-instance p2, Lrj3;

    .line 2
    .line 3
    iget-object v0, p0, Lrj3;->y:Ltj3;

    .line 4
    .line 5
    iget-object p0, p0, Lrj3;->z:Llj3;

    .line 6
    .line 7
    invoke-direct {p2, v0, p0, p1}, Lrj3;-><init>(Ltj3;Llj3;Ldh0;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrj3;->x:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, v0, Lrj3;->y:Ltj3;

    .line 9
    .line 10
    sget-object v6, Lri0;->n:Lri0;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v4, :cond_2

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Lrj3;->w:Lgk3;

    .line 21
    .line 22
    iget-object v2, v0, Lrj3;->v:Llj3;

    .line 23
    .line 24
    iget-object v3, v0, Lrj3;->u:Le61;

    .line 25
    .line 26
    iget-object v4, v0, Lrj3;->t:Lnj3;

    .line 27
    .line 28
    iget-object v5, v0, Lrj3;->s:Ltj3;

    .line 29
    .line 30
    iget-object v0, v0, Lrj3;->r:Lzr1;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v7, v1

    .line 36
    move-object v1, v0

    .line 37
    move-object/from16 v0, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v1, p1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput v4, v0, Lrj3;->x:I

    .line 63
    .line 64
    invoke-static {v5, v0}, Ltj3;->a(Ltj3;Lfh0;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-ne v1, v6, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_b

    .line 78
    .line 79
    iget-object v1, v5, Ltj3;->b:Ln61;

    .line 80
    .line 81
    iput v3, v0, Lrj3;->x:I

    .line 82
    .line 83
    sget-object v3, Lzr1;->c:Lqz0;

    .line 84
    .line 85
    invoke-virtual {v3, v1, v0}, Lqz0;->i(Ln61;Lfh0;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-ne v1, v6, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :goto_1
    check-cast v1, Lzr1;

    .line 93
    .line 94
    sget-object v4, Lnj3;->a:Lnj3;

    .line 95
    .line 96
    iget-object v3, v5, Ltj3;->a:Le61;

    .line 97
    .line 98
    iget-object v7, v5, Ltj3;->c:Lgk3;

    .line 99
    .line 100
    sget-object v8, Lf71;->a:Lf71;

    .line 101
    .line 102
    iput-object v1, v0, Lrj3;->r:Lzr1;

    .line 103
    .line 104
    iput-object v5, v0, Lrj3;->s:Ltj3;

    .line 105
    .line 106
    iput-object v4, v0, Lrj3;->t:Lnj3;

    .line 107
    .line 108
    iput-object v3, v0, Lrj3;->u:Le61;

    .line 109
    .line 110
    iget-object v9, v0, Lrj3;->z:Llj3;

    .line 111
    .line 112
    iput-object v9, v0, Lrj3;->v:Llj3;

    .line 113
    .line 114
    iput-object v7, v0, Lrj3;->w:Lgk3;

    .line 115
    .line 116
    iput v2, v0, Lrj3;->x:I

    .line 117
    .line 118
    invoke-virtual {v8, v0}, Lf71;->b(Lfh0;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-ne v0, v6, :cond_6

    .line 123
    .line 124
    :goto_2
    return-object v6

    .line 125
    :cond_6
    move-object v2, v9

    .line 126
    :goto_3
    check-cast v0, Ljava/util/Map;

    .line 127
    .line 128
    iget-object v15, v1, Lzr1;->a:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v1, v1, Lzr1;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v4, Lmj3;

    .line 151
    .line 152
    new-instance v8, Lwj3;

    .line 153
    .line 154
    iget-object v9, v2, Llj3;->a:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v10, v2, Llj3;->b:Ljava/lang/String;

    .line 157
    .line 158
    iget v11, v2, Llj3;->c:I

    .line 159
    .line 160
    iget-wide v12, v2, Llj3;->d:J

    .line 161
    .line 162
    new-instance v14, Lfm0;

    .line 163
    .line 164
    sget-object v2, Lck3;->o:Lck3;

    .line 165
    .line 166
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Laj0;

    .line 171
    .line 172
    sget-object v6, Lem0;->q:Lem0;

    .line 173
    .line 174
    sget-object v16, Lem0;->p:Lem0;

    .line 175
    .line 176
    sget-object v17, Lem0;->o:Lem0;

    .line 177
    .line 178
    if-nez v2, :cond_7

    .line 179
    .line 180
    move-object/from16 p0, v1

    .line 181
    .line 182
    move-object/from16 v2, v17

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    iget-object v2, v2, Laj0;->a:Lbm0;

    .line 186
    .line 187
    invoke-virtual {v2}, Lbm0;->a()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    move-object/from16 p0, v1

    .line 194
    .line 195
    move-object/from16 v2, v16

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_8
    move-object/from16 p0, v1

    .line 199
    .line 200
    move-object v2, v6

    .line 201
    :goto_4
    sget-object v1, Lck3;->n:Lck3;

    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Laj0;

    .line 208
    .line 209
    if-nez v0, :cond_9

    .line 210
    .line 211
    move-object/from16 v6, v17

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_9
    iget-object v0, v0, Laj0;->a:Lbm0;

    .line 215
    .line 216
    invoke-virtual {v0}, Lbm0;->a()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    move-object/from16 v6, v16

    .line 223
    .line 224
    :cond_a
    :goto_5
    invoke-virtual {v7}, Lgk3;->a()D

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    invoke-direct {v14, v2, v6, v0, v1}, Lfm0;-><init>(Lem0;Lem0;D)V

    .line 229
    .line 230
    .line 231
    move-object/from16 v16, p0

    .line 232
    .line 233
    invoke-direct/range {v8 .. v16}, Lwj3;-><init>(Ljava/lang/String;Ljava/lang/String;IJLfm0;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Lnj3;->a(Le61;)Ljh;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v4, v8, v0}, Lmj3;-><init>(Lwj3;Ljh;)V

    .line 241
    .line 242
    .line 243
    sget v0, Ltj3;->g:I

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const-string v1, "FirebaseSessions"

    .line 249
    .line 250
    :try_start_0
    iget-object v0, v5, Ltj3;->d:Lh21;

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Lh21;->a(Lmj3;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "Successfully logged Session Start event."

    .line 256
    .line 257
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v2, "Error logging Session Start event to DataTransport: "

    .line 263
    .line 264
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .line 266
    .line 267
    :cond_b
    :goto_6
    sget-object v0, Lt64;->a:Lt64;

    .line 268
    .line 269
    return-object v0
.end method
