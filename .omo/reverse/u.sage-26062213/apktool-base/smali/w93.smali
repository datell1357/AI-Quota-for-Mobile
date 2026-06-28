.class public final Lw93;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Lv50;

.field public r:Lwy;

.field public s:I

.field public final synthetic t:Lzy;

.field public final synthetic u:Ln8;

.field public final synthetic v:Lu/sage/worker/RollingWindowWorker;

.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:J

.field public final synthetic y:Z

.field public final synthetic z:I


# direct methods
.method public constructor <init>(Lzy;Ln8;Lu/sage/worker/RollingWindowWorker;Landroid/content/Context;JZILv50;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw93;->t:Lzy;

    .line 2
    .line 3
    iput-object p2, p0, Lw93;->u:Ln8;

    .line 4
    .line 5
    iput-object p3, p0, Lw93;->v:Lu/sage/worker/RollingWindowWorker;

    .line 6
    .line 7
    iput-object p4, p0, Lw93;->w:Landroid/content/Context;

    .line 8
    .line 9
    iput-wide p5, p0, Lw93;->x:J

    .line 10
    .line 11
    iput-boolean p7, p0, Lw93;->y:Z

    .line 12
    .line 13
    iput p8, p0, Lw93;->z:I

    .line 14
    .line 15
    iput-object p9, p0, Lw93;->A:Lv50;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p10}, Lbv3;-><init>(ILdh0;)V

    .line 19
    .line 20
    .line 21
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
    invoke-virtual {p0, p2, p1}, Lw93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lw93;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lw93;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Lw93;

    .line 2
    .line 3
    iget v8, p0, Lw93;->z:I

    .line 4
    .line 5
    iget-object v9, p0, Lw93;->A:Lv50;

    .line 6
    .line 7
    iget-object v1, p0, Lw93;->t:Lzy;

    .line 8
    .line 9
    iget-object v2, p0, Lw93;->u:Ln8;

    .line 10
    .line 11
    iget-object v3, p0, Lw93;->v:Lu/sage/worker/RollingWindowWorker;

    .line 12
    .line 13
    iget-object v4, p0, Lw93;->w:Landroid/content/Context;

    .line 14
    .line 15
    iget-wide v5, p0, Lw93;->x:J

    .line 16
    .line 17
    iget-boolean v7, p0, Lw93;->y:Z

    .line 18
    .line 19
    move-object v10, p1

    .line 20
    invoke-direct/range {v0 .. v10}, Lw93;-><init>(Lzy;Ln8;Lu/sage/worker/RollingWindowWorker;Landroid/content/Context;JZILv50;Ldh0;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lw93;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lw93;->r:Lwy;

    .line 9
    .line 10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lwy;

    .line 25
    .line 26
    iget-object v0, p0, Lw93;->t:Lzy;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lwy;-><init>(Lzy;)V

    .line 29
    .line 30
    .line 31
    move-object v0, p1

    .line 32
    :goto_0
    iput-object v0, p0, Lw93;->r:Lwy;

    .line 33
    .line 34
    iput v1, p0, Lw93;->s:I

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lwy;->b(Lfh0;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v2, Lri0;->n:Lri0;

    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_9

    .line 52
    .line 53
    invoke-virtual {v0}, Lwy;->c()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lw24;

    .line 58
    .line 59
    iget-object v2, p1, Lw24;->n:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-object v4, p1, Lw24;->o:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p1, Lw24;->p:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    sget-object v5, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v6, "execute: Result received. success="

    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, ", action="

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, ", message="

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5}, Lit0;->a(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v5, Lez3;->a:Lra3;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    new-array v7, v6, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v5, Ljs2;

    .line 122
    .line 123
    const-string v7, "success"

    .line 124
    .line 125
    invoke-direct {v5, v7, v2}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Ljs2;

    .line 129
    .line 130
    const-string v7, "action"

    .line 131
    .line 132
    invoke-direct {v2, v7, p1}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    if-nez v4, :cond_3

    .line 136
    .line 137
    const-string v7, "None"

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move-object v7, v4

    .line 141
    :goto_2
    new-instance v8, Ljs2;

    .line 142
    .line 143
    const-string v9, "message"

    .line 144
    .line 145
    invoke-direct {v8, v9, v7}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    filled-new-array {v5, v2, v8}, [Ljs2;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v2}, Loa2;->b0([Ljs2;)Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget-object v5, p0, Lw93;->u:Ln8;

    .line 157
    .line 158
    const-string v7, "rolling_window_result"

    .line 159
    .line 160
    invoke-virtual {v5, v7, v2}, Ln8;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    .line 162
    .line 163
    if-nez v3, :cond_4

    .line 164
    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v0, "execute: FAILED. message="

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Lit0;->a(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-array p1, v6, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {p1}, Lra3;->m([Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v4, p0, Lw93;->y:Z

    .line 188
    .line 189
    iget v5, p0, Lw93;->z:I

    .line 190
    .line 191
    iget-object v0, p0, Lw93;->w:Landroid/content/Context;

    .line 192
    .line 193
    iget-object v1, p0, Lw93;->u:Ln8;

    .line 194
    .line 195
    iget-wide v2, p0, Lw93;->x:J

    .line 196
    .line 197
    invoke-static/range {v0 .. v5}, Lu/sage/worker/RollingWindowWorker;->e(Landroid/content/Context;Ln8;JZI)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    sparse-switch v2, :sswitch_data_0

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :sswitch_0
    const-string v2, "COMPLETE"

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_5

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_5
    const-string p1, "execute: SUCCESS \u2014 automation complete. Refreshing usage data."

    .line 222
    .line 223
    invoke-static {p1}, Lit0;->a(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-array p1, v6, [Ljava/lang/Object;

    .line 227
    .line 228
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    iget-object p0, p0, Lw93;->A:Lv50;

    .line 232
    .line 233
    sget-object p1, Ls43;->b:Ls43;

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lpt;->n(Lv43;)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :sswitch_1
    const-string v2, "STATUS_UPDATE"

    .line 240
    .line 241
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_6

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_6
    new-array p1, v6, [Ljava/lang/Object;

    .line 250
    .line 251
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :sswitch_2
    const-string v2, "SKIPPED_ALREADY_STARTED"

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_7

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_7
    new-array p1, v6, [Ljava/lang/Object;

    .line 267
    .line 268
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    new-instance p1, Ljs2;

    .line 272
    .line 273
    const-string v0, "service"

    .line 274
    .line 275
    const-string v1, "Claude"

    .line 276
    .line 277
    invoke-direct {p1, v0, v1}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Ljs2;

    .line 281
    .line 282
    const-string v1, "reason"

    .line 283
    .line 284
    const-string v2, "already_started"

    .line 285
    .line 286
    invoke-direct {v0, v1, v2}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-wide v1, p0, Lw93;->x:J

    .line 290
    .line 291
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    new-instance v1, Ljs2;

    .line 296
    .line 297
    const-string v2, "trigger_timestamp"

    .line 298
    .line 299
    invoke-direct {v1, v2, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    filled-new-array {p1, v0, v1}, [Ljs2;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {p0}, Loa2;->b0([Ljs2;)Ljava/util/Map;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    const-string p1, "rolling_window_skipped"

    .line 311
    .line 312
    invoke-virtual {v5, p1, p0}, Ln8;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :sswitch_3
    const-string v2, "NAVIGATING"

    .line 317
    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-nez p1, :cond_8

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_8
    new-array p1, v6, [Ljava/lang/Object;

    .line 327
    .line 328
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_9
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 334
    .line 335
    return-object p0

    .line 336
    nop

    .line 337
    :sswitch_data_0
    .sparse-switch
        -0x74100a12 -> :sswitch_3
        -0x50afdfd5 -> :sswitch_2
        -0xf528e4a -> :sswitch_1
        0xaeb2139 -> :sswitch_0
    .end sparse-switch
.end method
