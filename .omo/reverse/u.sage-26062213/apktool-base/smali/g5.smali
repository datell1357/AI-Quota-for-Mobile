.class public final Lg5;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic A:Le4;

.field public final synthetic B:Lne1;

.field public r:I

.field public synthetic s:Lw3;

.field public synthetic t:Lw3;

.field public synthetic u:Z

.field public final synthetic v:Ly3;

.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ls33;

.field public final synthetic y:Ln8;

.field public final synthetic z:Le4;


# direct methods
.method public constructor <init>(Ly3;Ljava/lang/String;Ls33;Ln8;Le4;Le4;Lne1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg5;->v:Ly3;

    .line 2
    .line 3
    iput-object p2, p0, Lg5;->w:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lg5;->x:Ls33;

    .line 6
    .line 7
    iput-object p4, p0, Lg5;->y:Ln8;

    .line 8
    .line 9
    iput-object p5, p0, Lg5;->z:Le4;

    .line 10
    .line 11
    iput-object p6, p0, Lg5;->A:Le4;

    .line 12
    .line 13
    iput-object p7, p0, Lg5;->B:Lne1;

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-direct {p0, p1, p8}, Lbv3;-><init>(ILdh0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lw3;

    .line 2
    .line 3
    check-cast p2, Lw3;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    move-object v8, p4

    .line 12
    check-cast v8, Ldh0;

    .line 13
    .line 14
    new-instance v0, Lg5;

    .line 15
    .line 16
    iget-object v6, p0, Lg5;->A:Le4;

    .line 17
    .line 18
    iget-object v7, p0, Lg5;->B:Lne1;

    .line 19
    .line 20
    iget-object v1, p0, Lg5;->v:Ly3;

    .line 21
    .line 22
    iget-object v2, p0, Lg5;->w:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lg5;->x:Ls33;

    .line 25
    .line 26
    iget-object v4, p0, Lg5;->y:Ln8;

    .line 27
    .line 28
    iget-object v5, p0, Lg5;->z:Le4;

    .line 29
    .line 30
    invoke-direct/range {v0 .. v8}, Lg5;-><init>(Ly3;Ljava/lang/String;Ls33;Ln8;Le4;Le4;Lne1;Ldh0;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v0, Lg5;->s:Lw3;

    .line 34
    .line 35
    iput-object p2, v0, Lg5;->t:Lw3;

    .line 36
    .line 37
    iput-boolean p3, v0, Lg5;->u:Z

    .line 38
    .line 39
    sget-object p0, Lt64;->a:Lt64;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lg5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v5, p0, Lg5;->v:Ly3;

    .line 2
    .line 3
    iget-object v0, v5, Ly3;->a:Ly84;

    .line 4
    .line 5
    iget-object v1, p0, Lg5;->s:Lw3;

    .line 6
    .line 7
    iget-object v2, p0, Lg5;->t:Lw3;

    .line 8
    .line 9
    iget-boolean v9, p0, Lg5;->u:Z

    .line 10
    .line 11
    iget v3, p0, Lg5;->r:I

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    sget-object v11, Lt64;->a:Lt64;

    .line 15
    .line 16
    const/4 v12, 0x1

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    if-ne v3, v12, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v11

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v10

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Ly84;->v:Ly84;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    if-ne v0, p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1}, Lw3;->i()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-static {p1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    :cond_2
    sget-object p1, Lez3;->a:Lra3;

    .line 52
    .line 53
    invoke-virtual {v1}, Lw3;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    new-array v4, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lra3;->f([Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    if-eqz v9, :cond_6

    .line 65
    .line 66
    invoke-static {v2, v0}, Lv3;->a(Lw3;Ly84;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, v0}, Lv3;->a(Lw3;Ly84;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz p1, :cond_6

    .line 75
    .line 76
    invoke-static {p1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-static {v2}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    move p1, v12

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    :goto_0
    move p1, v3

    .line 101
    :goto_1
    if-eqz v9, :cond_7

    .line 102
    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    sget-object p0, Lez3;->a:Lra3;

    .line 106
    .line 107
    invoke-virtual {v1}, Lw3;->c()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    new-array p1, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-object v11

    .line 119
    :cond_7
    iget-object p1, p0, Lg5;->y:Ln8;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    sget-object v2, Lez3;->a:Lra3;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    new-array v4, v3, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v4, "service_type"

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lw3;->f()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const-string v6, "unknown"

    .line 159
    .line 160
    if-nez v4, :cond_8

    .line 161
    .line 162
    move-object v4, v6

    .line 163
    :cond_8
    const-string v7, "account_plan"

    .line 164
    .line 165
    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lw3;->c()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-eqz v4, :cond_a

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_9

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    move v4, v3

    .line 182
    goto :goto_3

    .line 183
    :cond_a
    :goto_2
    move v4, v12

    .line 184
    :goto_3
    xor-int/2addr v4, v12

    .line 185
    const-string v7, "has_email"

    .line 186
    .line 187
    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lw3;->i()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    if-eqz v4, :cond_c

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_b

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_b
    move v4, v3

    .line 204
    goto :goto_5

    .line 205
    :cond_c
    :goto_4
    move v4, v12

    .line 206
    :goto_5
    xor-int/2addr v4, v12

    .line 207
    const-string v7, "has_username"

    .line 208
    .line 209
    invoke-virtual {v2, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    const-string v4, "login_success"

    .line 213
    .line 214
    invoke-virtual {p1, v4, v2}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v7, v4, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    .line 223
    .line 224
    new-instance v2, Landroid/os/Bundle;

    .line 225
    .line 226
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 234
    .line 235
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    const-string v8, "method"

    .line 243
    .line 244
    invoke-virtual {v2, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v4, "login"

    .line 248
    .line 249
    invoke-virtual {p1, v4, v2}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v8, v4, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    const-string v4, "_plan"

    .line 271
    .line 272
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v1}, Lw3;->f()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-nez v1, :cond_d

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_d
    move-object v6, v1

    .line 284
    :goto_6
    invoke-virtual {p1, v2, v6}, Ln8;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    new-array p1, v3, [Ljava/lang/Object;

    .line 291
    .line 292
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    sget-object p1, Lzu0;->a:Lzp0;

    .line 296
    .line 297
    sget-object p1, Ln92;->a:Lxi1;

    .line 298
    .line 299
    new-instance v0, Lf5;

    .line 300
    .line 301
    const/4 v7, 0x0

    .line 302
    const/4 v8, 0x0

    .line 303
    iget-object v1, p0, Lg5;->x:Ls33;

    .line 304
    .line 305
    iget-object v2, p0, Lg5;->z:Le4;

    .line 306
    .line 307
    iget-object v3, p0, Lg5;->A:Le4;

    .line 308
    .line 309
    iget-object v4, p0, Lg5;->w:Ljava/lang/String;

    .line 310
    .line 311
    iget-object v6, p0, Lg5;->B:Lne1;

    .line 312
    .line 313
    invoke-direct/range {v0 .. v8}, Lf5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 314
    .line 315
    .line 316
    iput-object v10, p0, Lg5;->s:Lw3;

    .line 317
    .line 318
    iput-object v10, p0, Lg5;->t:Lw3;

    .line 319
    .line 320
    iput-boolean v9, p0, Lg5;->u:Z

    .line 321
    .line 322
    iput v12, p0, Lg5;->r:I

    .line 323
    .line 324
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    sget-object p1, Lri0;->n:Lri0;

    .line 329
    .line 330
    if-ne p0, p1, :cond_e

    .line 331
    .line 332
    return-object p1

    .line 333
    :cond_e
    return-object v11
.end method
