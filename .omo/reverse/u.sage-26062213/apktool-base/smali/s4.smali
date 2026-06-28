.class public final Ls4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Lpg2;

.field public final synthetic B:Lpg2;

.field public r:Ljava/lang/String;

.field public s:I

.field public final synthetic t:Z

.field public final synthetic u:Ly3;

.field public final synthetic v:Lio3;

.field public final synthetic w:Lqi0;

.field public final synthetic x:Lpg2;

.field public final synthetic y:Lpg2;

.field public final synthetic z:Lpg2;


# direct methods
.method public constructor <init>(ZLy3;Lio3;Lqi0;Lpg2;Lpg2;Lpg2;Lpg2;Lpg2;Ldh0;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls4;->t:Z

    .line 2
    .line 3
    iput-object p2, p0, Ls4;->u:Ly3;

    .line 4
    .line 5
    iput-object p3, p0, Ls4;->v:Lio3;

    .line 6
    .line 7
    iput-object p4, p0, Ls4;->w:Lqi0;

    .line 8
    .line 9
    iput-object p5, p0, Ls4;->x:Lpg2;

    .line 10
    .line 11
    iput-object p6, p0, Ls4;->y:Lpg2;

    .line 12
    .line 13
    iput-object p7, p0, Ls4;->z:Lpg2;

    .line 14
    .line 15
    iput-object p8, p0, Ls4;->A:Lpg2;

    .line 16
    .line 17
    iput-object p9, p0, Ls4;->B:Lpg2;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p10}, Lbv3;-><init>(ILdh0;)V

    .line 21
    .line 22
    .line 23
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
    invoke-virtual {p0, p2, p1}, Ls4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ls4;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ls4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 11

    .line 1
    new-instance v0, Ls4;

    .line 2
    .line 3
    iget-object v8, p0, Ls4;->A:Lpg2;

    .line 4
    .line 5
    iget-object v9, p0, Ls4;->B:Lpg2;

    .line 6
    .line 7
    iget-boolean v1, p0, Ls4;->t:Z

    .line 8
    .line 9
    iget-object v2, p0, Ls4;->u:Ly3;

    .line 10
    .line 11
    iget-object v3, p0, Ls4;->v:Lio3;

    .line 12
    .line 13
    iget-object v4, p0, Ls4;->w:Lqi0;

    .line 14
    .line 15
    iget-object v5, p0, Ls4;->x:Lpg2;

    .line 16
    .line 17
    iget-object v6, p0, Ls4;->y:Lpg2;

    .line 18
    .line 19
    iget-object v7, p0, Ls4;->z:Lpg2;

    .line 20
    .line 21
    move-object v10, p1

    .line 22
    invoke-direct/range {v0 .. v10}, Ls4;-><init>(ZLy3;Lio3;Lqi0;Lpg2;Lpg2;Lpg2;Lpg2;Lpg2;Ldh0;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Ls4;->s:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Ls4;->B:Lpg2;

    .line 7
    .line 8
    iget-object v4, p0, Ls4;->y:Lpg2;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Ls4;->r:Ljava/lang/String;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v6

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Ls4;->x:Lpg2;

    .line 39
    .line 40
    invoke-interface {p1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lx72;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_3
    iget-object v7, v0, Lx72;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const v9, -0x6f4abffd

    .line 57
    .line 58
    .line 59
    iget-object v10, p0, Ls4;->A:Lpg2;

    .line 60
    .line 61
    if-eq v8, v9, :cond_d

    .line 62
    .line 63
    const v9, 0x5c4d208

    .line 64
    .line 65
    .line 66
    iget-object v11, p0, Ls4;->v:Lio3;

    .line 67
    .line 68
    sget-object v12, Lri0;->n:Lri0;

    .line 69
    .line 70
    if-eq v8, v9, :cond_9

    .line 71
    .line 72
    const p1, 0x32f68ca5

    .line 73
    .line 74
    .line 75
    if-eq v8, p1, :cond_4

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_4
    const-string p1, "validation_required"

    .line 80
    .line 81
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_5
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 90
    .line 91
    iget-object v0, v0, Lx72;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "url"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v7, "account"

    .line 103
    .line 104
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Ltr3;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    check-cast v7, Landroid/webkit/WebView;

    .line 120
    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    const-string v0, "Account verification required."

    .line 127
    .line 128
    iput-object p1, p0, Ls4;->r:Ljava/lang/String;

    .line 129
    .line 130
    iput v2, p0, Ls4;->s:I

    .line 131
    .line 132
    invoke-static {v11, v0, p0}, Lio3;->b(Lio3;Ljava/lang/String;Ls4;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-ne v0, v12, :cond_7

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    move-object v0, p1

    .line 140
    :goto_0
    invoke-interface {v4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ltu1;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    invoke-interface {p1, v6}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    iget-object p0, p0, Ls4;->w:Lqi0;

    .line 152
    .line 153
    new-instance p1, Lp;

    .line 154
    .line 155
    invoke-direct {p1, v0, v3, v6, v5}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x3

    .line 159
    invoke-static {p0, v6, v6, p1, v0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {v4, p0}, Lpg2;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    new-array p1, p1, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_9
    const-string v0, "error"

    .line 180
    .line 181
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_a

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_a
    invoke-interface {v4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Ltu1;

    .line 193
    .line 194
    if-eqz v0, :cond_b

    .line 195
    .line 196
    invoke-interface {v0, v6}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-interface {v10, v0}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p1, v6}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v3}, Ltr3;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Landroid/webkit/WebView;

    .line 212
    .line 213
    if-eqz p1, :cond_c

    .line 214
    .line 215
    iget-object v0, p0, Ls4;->u:Ly3;

    .line 216
    .line 217
    iget-object v0, v0, Ly3;->c:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_c
    iput v5, p0, Ls4;->s:I

    .line 223
    .line 224
    const-string p1, "Login Failed. Please try again."

    .line 225
    .line 226
    invoke-static {v11, p1, p0}, Lio3;->b(Lio3;Ljava/lang/String;Ls4;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    if-ne p0, v12, :cond_e

    .line 231
    .line 232
    :goto_1
    return-object v12

    .line 233
    :cond_d
    const-string v0, "success"

    .line 234
    .line 235
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_f

    .line 240
    .line 241
    :cond_e
    :goto_2
    return-object v1

    .line 242
    :cond_f
    invoke-interface {v4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Ltu1;

    .line 247
    .line 248
    if-eqz v0, :cond_10

    .line 249
    .line 250
    invoke-interface {v0, v6}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 251
    .line 252
    .line 253
    :cond_10
    iget-boolean v0, p0, Ls4;->t:Z

    .line 254
    .line 255
    if-eqz v0, :cond_11

    .line 256
    .line 257
    iget-object p0, p0, Ls4;->z:Lpg2;

    .line 258
    .line 259
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    check-cast p0, Ljava/lang/Boolean;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_11

    .line 270
    .line 271
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-interface {v10, p0}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    return-object v1

    .line 277
    :cond_11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-interface {v10, p0}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1, v6}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    return-object v1
.end method
