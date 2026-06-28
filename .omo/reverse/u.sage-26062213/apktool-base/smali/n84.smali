.class public abstract Ln84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lpi1;

.field public final c:Lnv3;

.field public final d:Lnv3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ln84;->a:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Lpi1;

    .line 10
    .line 11
    invoke-direct {p1}, Lpi1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ln84;->b:Lpi1;

    .line 15
    .line 16
    new-instance p1, Le84;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, v0}, Le84;-><init>(Ln84;I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lnv3;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ln84;->c:Lnv3;

    .line 28
    .line 29
    new-instance p1, Le84;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, v0}, Le84;-><init>(Ln84;I)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lnv3;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Ln84;->d:Lnv3;

    .line 41
    .line 42
    return-void
.end method

.method public static a(Ln84;Lfh0;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lf84;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lf84;

    .line 11
    .line 12
    iget v3, v2, Lf84;->u:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lf84;->u:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lf84;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lf84;-><init>(Ln84;Lfh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lf84;->s:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lf84;->u:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    sget-object v8, Lri0;->n:Lri0;

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    if-eq v3, v5, :cond_2

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    iget-object v0, v2, Lf84;->q:Ln84;

    .line 46
    .line 47
    :try_start_0
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v6

    .line 57
    :cond_2
    iget-wide v9, v2, Lf84;->r:J

    .line 58
    .line 59
    iget-object v0, v2, Lf84;->q:Ln84;

    .line 60
    .line 61
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    move-object v12, v0

    .line 65
    move-wide v14, v9

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    sget-object v1, Lez3;->a:Lra3;

    .line 75
    .line 76
    new-array v3, v7, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, v2, Lf84;->q:Ln84;

    .line 85
    .line 86
    iput-wide v9, v2, Lf84;->r:J

    .line 87
    .line 88
    iput v5, v2, Lf84;->u:I

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ln84;->h(Lfh0;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-ne v1, v8, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    move-object v13, v1

    .line 98
    check-cast v13, Ljava/lang/String;

    .line 99
    .line 100
    if-nez v13, :cond_5

    .line 101
    .line 102
    sget-object v0, Lez3;->a:Lra3;

    .line 103
    .line 104
    invoke-virtual {v12}, Ln84;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    new-array v1, v7, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-object v6

    .line 119
    :cond_5
    sget-object v0, Lez3;->a:Lra3;

    .line 120
    .line 121
    invoke-virtual {v12}, Ln84;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    new-array v1, v7, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :try_start_1
    sget-object v0, Lzu0;->a:Lzp0;

    .line 136
    .line 137
    sget-object v0, Ln92;->a:Lxi1;

    .line 138
    .line 139
    new-instance v11, Lg84;

    .line 140
    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    invoke-direct/range {v11 .. v16}, Lg84;-><init>(Ln84;Ljava/lang/String;JLdh0;)V

    .line 144
    .line 145
    .line 146
    iput-object v12, v2, Lf84;->q:Ln84;

    .line 147
    .line 148
    iput-wide v14, v2, Lf84;->r:J

    .line 149
    .line 150
    iput v4, v2, Lf84;->u:I

    .line 151
    .line 152
    invoke-static {v0, v11, v2}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    if-ne v1, v8, :cond_6

    .line 157
    .line 158
    :goto_2
    return-object v8

    .line 159
    :cond_6
    move-object v0, v12

    .line 160
    :goto_3
    :try_start_2
    check-cast v1, Ld84;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .line 162
    return-object v1

    .line 163
    :catch_0
    move-object v0, v12

    .line 164
    :catch_1
    sget-object v1, Lez3;->a:Lra3;

    .line 165
    .line 166
    invoke-virtual {v0}, Ln84;->c()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 170
    .line 171
    .line 172
    new-array v0, v7, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lra3;->g([Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-object v6
.end method


# virtual methods
.method public abstract b()Ln1;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lxr;
.end method

.method public abstract e()Ly84;
.end method

.method public abstract f()Lps;
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final h(Lfh0;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lm84;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lm84;

    .line 7
    .line 8
    iget v1, v0, Lm84;->w:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lm84;->w:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lm84;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lm84;-><init>(Ln84;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lm84;->u:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lm84;->w:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    sget-object v7, Lri0;->n:Lri0;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v5, :cond_3

    .line 39
    .line 40
    if-eq v1, v4, :cond_2

    .line 41
    .line 42
    if-ne v1, v3, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, Lm84;->t:Lw3;

    .line 45
    .line 46
    iget-object v0, v0, Lm84;->s:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :cond_2
    iget-wide v4, v0, Lm84;->r:J

    .line 60
    .line 61
    iget-wide v8, v0, Lm84;->q:J

    .line 62
    .line 63
    iget-object v1, v0, Lm84;->s:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-wide v8, v0, Lm84;->q:J

    .line 70
    .line 71
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    invoke-virtual {p0}, Ln84;->d()Lxr;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, Lxr;->f:Lvq;

    .line 87
    .line 88
    iput-wide v8, v0, Lm84;->q:J

    .line 89
    .line 90
    iput v5, v0, Lm84;->w:I

    .line 91
    .line 92
    invoke-static {p1, v0}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v7, :cond_5

    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    sget-object v1, Lez3;->a:Lra3;

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    new-array v5, v6, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_6

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v10

    .line 129
    invoke-virtual {p0}, Ln84;->b()Ln1;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object p1, v0, Lm84;->s:Ljava/lang/String;

    .line 134
    .line 135
    iput-wide v8, v0, Lm84;->q:J

    .line 136
    .line 137
    iput-wide v10, v0, Lm84;->r:J

    .line 138
    .line 139
    iput v4, v0, Lm84;->w:I

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-ne v1, v7, :cond_7

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    move-object v4, v1

    .line 149
    move-object v1, p1

    .line 150
    move-object p1, v4

    .line 151
    move-wide v4, v10

    .line 152
    :goto_2
    check-cast p1, Lw3;

    .line 153
    .line 154
    sget-object v10, Lez3;->a:Lra3;

    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-array v11, v6, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v11}, Lra3;->c([Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lw3;->l()Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_8

    .line 175
    .line 176
    new-array p0, v6, [Ljava/lang/Object;

    .line 177
    .line 178
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_8
    iget-object v2, p0, Ln84;->d:Lnv3;

    .line 183
    .line 184
    invoke-virtual {v2}, Lnv3;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Lus0;

    .line 189
    .line 190
    iput-object v1, v0, Lm84;->s:Ljava/lang/String;

    .line 191
    .line 192
    iput-object p1, v0, Lm84;->t:Lw3;

    .line 193
    .line 194
    iput-wide v8, v0, Lm84;->q:J

    .line 195
    .line 196
    iput-wide v4, v0, Lm84;->r:J

    .line 197
    .line 198
    iput v3, v0, Lm84;->w:I

    .line 199
    .line 200
    iget-object v2, v2, Lus0;->a:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {v2}, Lvs0;->a(Landroid/content/Context;)Llm0;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Lpx2;

    .line 207
    .line 208
    iget-object v2, v2, Lpx2;->a:Llm0;

    .line 209
    .line 210
    invoke-interface {v2}, Llm0;->b()La81;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    new-instance v3, Lyq;

    .line 215
    .line 216
    const/16 v4, 0x10

    .line 217
    .line 218
    invoke-direct {v3, v2, v4}, Lyq;-><init>(La81;I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-ne v0, v7, :cond_9

    .line 226
    .line 227
    :goto_3
    return-object v7

    .line 228
    :cond_9
    move-object v12, v1

    .line 229
    move-object v1, p1

    .line 230
    move-object p1, v0

    .line 231
    move-object v0, v12

    .line 232
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    sget-object v2, Lez3;->a:Lra3;

    .line 238
    .line 239
    new-array v3, v6, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 248
    .line 249
    .line 250
    sget-object v2, Lu/sage/a;->D:Lwr3;

    .line 251
    .line 252
    const-string v2, "SERVICE"

    .line 253
    .line 254
    iget-object p0, p0, Ln84;->b:Lpi1;

    .line 255
    .line 256
    invoke-static {v0, v2, v1, p1, p0}, Lqv3;->u(Ljava/lang/String;Ljava/lang/String;Lw3;Ljava/lang/Boolean;Lpi1;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 261
    .line 262
    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    .line 265
    .line 266
    new-array p1, v6, [Ljava/lang/Object;

    .line 267
    .line 268
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :cond_a
    :goto_5
    new-array p0, v6, [Ljava/lang/Object;

    .line 273
    .line 274
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    return-object v2
.end method
