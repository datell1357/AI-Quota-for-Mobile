.class public final Lxt;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lu/sage/a;

.field public final synthetic u:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lxt;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lxt;->t:Lu/sage/a;

    .line 4
    .line 5
    iput-object p2, p0, Lxt;->u:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lxt;->r:I

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
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lxt;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lxt;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lxt;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lxt;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lxt;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p2, p1}, Lxt;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lxt;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lxt;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget p2, p0, Lxt;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lxt;->u:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lxt;->t:Lu/sage/a;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lxt;

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lxt;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :pswitch_1
    new-instance p2, Lxt;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :pswitch_2
    new-instance p2, Lxt;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 35
    .line 36
    .line 37
    return-object p2

    .line 38
    :pswitch_3
    new-instance p2, Lxt;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :pswitch_4
    new-instance p2, Lxt;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p2, p0, v0, p1, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lxt;->r:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lxt;->u:Ljava/lang/String;

    .line 6
    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v5, Lri0;->n:Lri0;

    .line 10
    .line 11
    iget-object v6, p0, Lxt;->t:Lu/sage/a;

    .line 12
    .line 13
    sget-object v7, Lt64;->a:Lt64;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lxt;->s:I

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-eq v0, v8, :cond_1

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v5, v9

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Lu/sage/a;->s()Lps;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lps;->d()La81;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v8, p0, Lxt;->s:I

    .line 54
    .line 55
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v5, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    sget-object v0, Lez3;->a:Lra3;

    .line 69
    .line 70
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    new-array v3, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    new-array p0, v2, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v8}, Landroid/app/Service;->stopForeground(I)V

    .line 92
    .line 93
    .line 94
    :goto_1
    move-object v5, v7

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {v6}, Lu/sage/a;->o()Lpt;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput v1, p0, Lxt;->s:I

    .line 101
    .line 102
    invoke-virtual {p1}, Lpt;->k()Lur3;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v5, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    check-cast p1, Ld84;

    .line 114
    .line 115
    const-string p0, "notification"

    .line 116
    .line 117
    invoke-virtual {v6, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    check-cast p0, Landroid/app/NotificationManager;

    .line 125
    .line 126
    sget-object v0, Lez3;->a:Lra3;

    .line 127
    .line 128
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    new-array v1, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Lu/sage/a;->m()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {v6, p1}, Lu/sage/a;->c(Ld84;)Landroid/app/Notification;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :goto_3
    return-object v5

    .line 152
    :pswitch_0
    iget v0, p0, Lxt;->s:I

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    if-ne v0, v8, :cond_6

    .line 157
    .line 158
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move-object v5, v9

    .line 166
    goto :goto_5

    .line 167
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iput v8, p0, Lxt;->s:I

    .line 171
    .line 172
    const-wide/16 v0, 0x32c8

    .line 173
    .line 174
    invoke-static {v0, v1, p0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-ne p0, v5, :cond_8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    :goto_4
    invoke-virtual {v6}, Lu/sage/a;->o()Lpt;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lpt;->g()Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_9

    .line 190
    .line 191
    iget-object p0, v6, Lu/sage/a;->s:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_9

    .line 198
    .line 199
    sget-object p0, Lez3;->a:Lra3;

    .line 200
    .line 201
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    iget-object p1, v6, Lu/sage/a;->y:Lwr3;

    .line 205
    .line 206
    invoke-virtual {p1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    new-array p1, v2, [Ljava/lang/Object;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Lra3;->f([Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const-string p0, "Timeout"

    .line 222
    .line 223
    invoke-virtual {v6, v3, p0}, Lu/sage/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    move-object v5, v7

    .line 227
    :goto_5
    return-object v5

    .line 228
    :pswitch_1
    iget v0, p0, Lxt;->s:I

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    if-ne v0, v8, :cond_a

    .line 233
    .line 234
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_a
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    move-object v5, v9

    .line 242
    goto :goto_8

    .line 243
    :cond_b
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iput v8, p0, Lxt;->s:I

    .line 247
    .line 248
    invoke-virtual {v6, p0}, Lu/sage/a;->y(Lfh0;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    if-ne p0, v5, :cond_c

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_c
    :goto_6
    iget-object p0, v6, Lu/sage/a;->s:Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {p0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-eqz p0, :cond_d

    .line 262
    .line 263
    invoke-virtual {v6}, Lu/sage/a;->o()Lpt;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lpt;->g()Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eqz p0, :cond_d

    .line 272
    .line 273
    sget-object p0, Lez3;->a:Lra3;

    .line 274
    .line 275
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    new-array p1, v2, [Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    iget-object p0, v6, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 287
    .line 288
    if-eqz p0, :cond_e

    .line 289
    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v0, "sage(4, \'"

    .line 293
    .line 294
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, "\');"

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p0, p1, v9}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_d
    sget-object p0, Lez3;->a:Lra3;

    .line 314
    .line 315
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    new-array p1, v2, [Ljava/lang/Object;

    .line 319
    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_7
    move-object v5, v7

    .line 327
    :goto_8
    return-object v5

    .line 328
    :pswitch_2
    iget v0, p0, Lxt;->s:I

    .line 329
    .line 330
    if-eqz v0, :cond_10

    .line 331
    .line 332
    if-ne v0, v8, :cond_f

    .line 333
    .line 334
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_f
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    move-object v5, v9

    .line 342
    goto :goto_a

    .line 343
    :cond_10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iput v8, p0, Lxt;->s:I

    .line 347
    .line 348
    invoke-virtual {v6, p0}, Lu/sage/a;->y(Lfh0;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    if-ne p0, v5, :cond_11

    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_11
    :goto_9
    iget-object p0, v6, Lu/sage/a;->n:Landroid/os/Handler;

    .line 356
    .line 357
    new-instance p1, Lst;

    .line 358
    .line 359
    const/4 v0, 0x3

    .line 360
    invoke-direct {p1, v6, v3, v0}, Lst;-><init>(Lu/sage/a;Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    .line 365
    .line 366
    move-object v5, v7

    .line 367
    :goto_a
    return-object v5

    .line 368
    :pswitch_3
    iget v0, p0, Lxt;->s:I

    .line 369
    .line 370
    if-eqz v0, :cond_13

    .line 371
    .line 372
    if-ne v0, v8, :cond_12

    .line 373
    .line 374
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_12
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    move-object v5, v9

    .line 382
    goto :goto_c

    .line 383
    :cond_13
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    iput v8, p0, Lxt;->s:I

    .line 387
    .line 388
    const-wide/16 v10, 0x199

    .line 389
    .line 390
    invoke-static {v10, v11, p0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    if-ne p0, v5, :cond_14

    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_14
    :goto_b
    iget-object p0, v6, Lu/sage/a;->v:Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {p0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p0

    .line 403
    if-eqz p0, :cond_15

    .line 404
    .line 405
    sget-object p0, Lez3;->a:Lra3;

    .line 406
    .line 407
    invoke-virtual {v6}, Lu/sage/a;->j()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    const-string v0, ": [ThrottleCheck] WebView timer timed out! Reporting FROZEN to JS."

    .line 412
    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    new-array p1, v2, [Ljava/lang/Object;

    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    invoke-static {p1}, Lra3;->m([Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    iput-object v9, v6, Lu/sage/a;->v:Ljava/lang/String;

    .line 425
    .line 426
    iget-object p0, v6, Lu/sage/a;->n:Landroid/os/Handler;

    .line 427
    .line 428
    new-instance p1, Lst;

    .line 429
    .line 430
    invoke-direct {p1, v6, v3, v1}, Lst;-><init>(Lu/sage/a;Ljava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    .line 435
    .line 436
    :cond_15
    move-object v5, v7

    .line 437
    :goto_c
    return-object v5

    .line 438
    :pswitch_4
    iget v0, p0, Lxt;->s:I

    .line 439
    .line 440
    if-eqz v0, :cond_17

    .line 441
    .line 442
    if-ne v0, v8, :cond_16

    .line 443
    .line 444
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_16
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    move-object v5, v9

    .line 452
    goto :goto_e

    .line 453
    :cond_17
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    iput v8, p0, Lxt;->s:I

    .line 457
    .line 458
    invoke-virtual {v6, p0}, Lu/sage/a;->y(Lfh0;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    if-ne p0, v5, :cond_18

    .line 463
    .line 464
    goto :goto_e

    .line 465
    :cond_18
    :goto_d
    iget-object p0, v6, Lu/sage/a;->n:Landroid/os/Handler;

    .line 466
    .line 467
    new-instance p1, Lst;

    .line 468
    .line 469
    invoke-direct {p1, v6, v3, v8}, Lst;-><init>(Lu/sage/a;Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    .line 474
    .line 475
    move-object v5, v7

    .line 476
    :goto_e
    return-object v5

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
