.class public final Lwd;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ln14;

.field public final synthetic q:Ldu2;

.field public final synthetic r:Lpe1;

.field public final synthetic s:Lhe;

.field public final synthetic t:Lgp3;

.field public final synthetic u:Lka0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln14;Ldu2;Lpe1;Lhe;Lgp3;Lka0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd;->o:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lwd;->p:Ln14;

    .line 4
    .line 5
    iput-object p3, p0, Lwd;->q:Ldu2;

    .line 6
    .line 7
    iput-object p4, p0, Lwd;->r:Lpe1;

    .line 8
    .line 9
    iput-object p5, p0, Lwd;->s:Lhe;

    .line 10
    .line 11
    iput-object p6, p0, Lwd;->t:Lgp3;

    .line 12
    .line 13
    iput-object p7, p0, Lwd;->u:Lka0;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p2, p1, 0x3

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    move p2, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v1

    .line 20
    :goto_0
    and-int/2addr p1, v2

    .line 21
    invoke-virtual {v7, p1, p2}, Lag1;->N(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_f

    .line 26
    .line 27
    iget-object p1, p0, Lwd;->p:Ln14;

    .line 28
    .line 29
    iget-object p2, p1, Ln14;->e:Lws2;

    .line 30
    .line 31
    iget-object v0, p1, Ln14;->d:Lws2;

    .line 32
    .line 33
    invoke-virtual {p2}, Lws2;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lwd;->o:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v4, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v7, v3}, Lag1;->g(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, p0, Lwd;->r:Lpe1;

    .line 52
    .line 53
    sget-object v8, Lrb0;->a:Lbx3;

    .line 54
    .line 55
    iget-object v9, p0, Lwd;->s:Lhe;

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    if-ne v5, v8, :cond_3

    .line 60
    .line 61
    :cond_1
    invoke-virtual {p2}, Lws2;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v4, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object v3, p0, Lwd;->q:Ldu2;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-interface {v6, v3}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lng0;

    .line 80
    .line 81
    :goto_1
    move-object v5, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-interface {v6, v9}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lng0;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_2
    invoke-virtual {v7, v5}, Lag1;->g0(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    check-cast v5, Lng0;

    .line 94
    .line 95
    invoke-virtual {p1}, Ln14;->f()Lk14;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v3}, Lk14;->c()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v7, v3}, Lag1;->g(Z)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    if-ne v10, v8, :cond_6

    .line 118
    .line 119
    :cond_4
    invoke-virtual {p1}, Ln14;->f()Lk14;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v3}, Lk14;->c()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    sget-object v3, Ly31;->b:Ly31;

    .line 134
    .line 135
    :goto_3
    move-object v10, v3

    .line 136
    goto :goto_4

    .line 137
    :cond_5
    invoke-interface {v6, v9}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lng0;

    .line 142
    .line 143
    iget-object v3, v3, Lng0;->b:Ly31;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    invoke-virtual {v7, v10}, Lag1;->g0(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    check-cast v10, Ly31;

    .line 150
    .line 151
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-ne v3, v8, :cond_7

    .line 156
    .line 157
    new-instance v3, Lce;

    .line 158
    .line 159
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-static {v4, v6}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-direct {v3, v6}, Lce;-><init>(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    check-cast v3, Lce;

    .line 174
    .line 175
    move-object v6, v3

    .line 176
    iget-object v3, v5, Lng0;->a:Lo11;

    .line 177
    .line 178
    invoke-virtual {v7, v5}, Lag1;->h(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    if-nez v11, :cond_8

    .line 187
    .line 188
    if-ne v12, v8, :cond_9

    .line 189
    .line 190
    :cond_8
    new-instance v12, Lud;

    .line 191
    .line 192
    invoke-direct {v12, v5}, Lud;-><init>(Lng0;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    check-cast v12, Lff1;

    .line 199
    .line 200
    invoke-static {v12}, Lkt4;->T(Lff1;)Lnd2;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-static {v4, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    iget-object v12, v6, Lce;->b:Lws2;

    .line 213
    .line 214
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-virtual {v12, v11}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lws2;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-static {v4, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-eqz p2, :cond_a

    .line 230
    .line 231
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-static {v4, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-nez p2, :cond_a

    .line 240
    .line 241
    iget-object p1, p1, Ln14;->a:Lib0;

    .line 242
    .line 243
    invoke-virtual {p1}, Lib0;->l()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v4, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_a

    .line 252
    .line 253
    move v1, v2

    .line 254
    :cond_a
    iget-object p1, v6, Lce;->c:Lws2;

    .line 255
    .line 256
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p1, p2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v5, v6}, Lnd2;->c(Lnd2;)Lnd2;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v7, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    if-nez p1, :cond_b

    .line 276
    .line 277
    if-ne p2, v8, :cond_c

    .line 278
    .line 279
    :cond_b
    new-instance p2, Lc8;

    .line 280
    .line 281
    const/4 p1, 0x6

    .line 282
    invoke-direct {p2, p1, v4}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, p2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_c
    move-object v1, p2

    .line 289
    check-cast v1, Lpe1;

    .line 290
    .line 291
    invoke-virtual {v7, v10}, Lag1;->f(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    if-nez p1, :cond_d

    .line 300
    .line 301
    if-ne p2, v8, :cond_e

    .line 302
    .line 303
    :cond_d
    new-instance p2, Lz;

    .line 304
    .line 305
    const/4 p1, 0x3

    .line 306
    invoke-direct {p2, p1, v10}, Lz;-><init>(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, p2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_e
    move-object v5, p2

    .line 313
    check-cast v5, Ldf1;

    .line 314
    .line 315
    new-instance p1, Lvd;

    .line 316
    .line 317
    iget-object p2, p0, Lwd;->t:Lgp3;

    .line 318
    .line 319
    iget-object v0, p0, Lwd;->u:Lka0;

    .line 320
    .line 321
    invoke-direct {p1, p2, v4, v9, v0}, Lvd;-><init>(Lgp3;Ljava/lang/Object;Lhe;Lka0;)V

    .line 322
    .line 323
    .line 324
    const p2, 0x6d31f397

    .line 325
    .line 326
    .line 327
    invoke-static {p2, p1, v7}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    const/high16 v8, 0x6000000

    .line 332
    .line 333
    iget-object v0, p0, Lwd;->p:Ln14;

    .line 334
    .line 335
    move-object v4, v10

    .line 336
    invoke-static/range {v0 .. v8}, Lmt1;->a(Ln14;Lpe1;Lnd2;Lo11;Ly31;Ldf1;Lka0;Lag1;I)V

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_f
    invoke-virtual {v7}, Lag1;->Q()V

    .line 341
    .line 342
    .line 343
    :goto_5
    sget-object p0, Lt64;->a:Lt64;

    .line 344
    .line 345
    return-object p0
.end method
