.class public final Lg11;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lzl3;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf14;Lo11;Ly31;Lzl3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg11;->o:I

    .line 17
    iput-object p1, p0, Lg11;->q:Ljava/lang/Object;

    iput-object p2, p0, Lg11;->r:Ljava/lang/Object;

    iput-object p3, p0, Lg11;->s:Ljava/lang/Object;

    iput-object p4, p0, Lg11;->p:Lzl3;

    invoke-direct {p0, v0}, Lxx1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lzl3;Li14;Li14;Li14;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg11;->o:I

    .line 3
    .line 4
    iput-object p1, p0, Lg11;->p:Lzl3;

    .line 5
    .line 6
    iput-object p2, p0, Lg11;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lg11;->r:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lg11;->s:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lg11;->o:I

    .line 2
    .line 3
    iget-object v1, p0, Lg11;->q:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lg11;->p:Lzl3;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lg11;->s:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lb11;

    .line 14
    .line 15
    check-cast v4, Ly31;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 p1, 0x0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    if-eq p0, v3, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    iget-object p0, v4, Ly31;->a:Lo14;

    .line 30
    .line 31
    iget-wide p0, v2, Lzl3;->h:J

    .line 32
    .line 33
    new-instance v0, Lf14;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lf14;-><init>(J)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    move-object p1, v1

    .line 45
    check-cast p1, Lf14;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, v4, Ly31;->a:Lo14;

    .line 49
    .line 50
    :goto_0
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-wide p0, p1, Lf14;->a:J

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget-wide p0, Lf14;->b:J

    .line 56
    .line 57
    :goto_1
    new-instance v0, Lf14;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1}, Lf14;-><init>(J)V

    .line 60
    .line 61
    .line 62
    move-object p1, v0

    .line 63
    :goto_2
    return-object p1

    .line 64
    :pswitch_0
    check-cast p1, Lo83;

    .line 65
    .line 66
    check-cast v1, Ltr3;

    .line 67
    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v1, v0

    .line 84
    :goto_3
    iget-object v5, v2, Lzl3;->c:Ldh;

    .line 85
    .line 86
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    iget-object v6, v5, Ldh;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Lws2;

    .line 95
    .line 96
    invoke-virtual {v6}, Lws2;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    iget-object v6, v5, Ldh;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v6, Lss2;

    .line 111
    .line 112
    invoke-virtual {v6}, Lss2;->g()F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    move v6, v0

    .line 118
    :goto_4
    mul-float/2addr v1, v6

    .line 119
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_6

    .line 124
    .line 125
    iput v1, v2, Lzl3;->f:F

    .line 126
    .line 127
    :cond_6
    invoke-virtual {p1, v1}, Lo83;->c(F)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lg11;->r:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Ltr3;

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    move p0, v0

    .line 148
    :goto_5
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/4 v6, 0x0

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    iget-object v1, v5, Ldh;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lws2;

    .line 158
    .line 159
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    move v3, v6

    .line 173
    :goto_6
    if-eqz v3, :cond_9

    .line 174
    .line 175
    iget-object v0, v5, Ldh;->d:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Lss2;

    .line 178
    .line 179
    invoke-virtual {v0}, Lss2;->g()F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    :cond_9
    mul-float/2addr p0, v0

    .line 184
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c

    .line 189
    .line 190
    iput p0, v2, Lzl3;->g:F

    .line 191
    .line 192
    if-eqz v3, :cond_c

    .line 193
    .line 194
    iget-object v0, v2, Lzl3;->j:Lta4;

    .line 195
    .line 196
    if-nez v0, :cond_a

    .line 197
    .line 198
    new-instance v0, Lta4;

    .line 199
    .line 200
    invoke-direct {v0, v6}, Lta4;-><init>(Z)V

    .line 201
    .line 202
    .line 203
    iput-object v0, v2, Lzl3;->j:Lta4;

    .line 204
    .line 205
    :cond_a
    iget-object v0, v2, Lzl3;->j:Lta4;

    .line 206
    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    iget-wide v6, v2, Lzl3;->d:J

    .line 210
    .line 211
    invoke-static {}, Lsd2;->a()J

    .line 212
    .line 213
    .line 214
    move-result-wide v8

    .line 215
    const-wide/16 v10, 0x1

    .line 216
    .line 217
    sub-long v12, v6, v10

    .line 218
    .line 219
    or-long/2addr v10, v12

    .line 220
    const-wide v12, 0x7fffffffffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    cmp-long v1, v10, v12

    .line 226
    .line 227
    if-nez v1, :cond_b

    .line 228
    .line 229
    invoke-static {v6, v7}, Ldm0;->z(J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v6

    .line 233
    invoke-static {v6, v7}, Lcy0;->i(J)J

    .line 234
    .line 235
    .line 236
    move-result-wide v6

    .line 237
    goto :goto_7

    .line 238
    :cond_b
    invoke-static {v8, v9, v6, v7}, Ldm0;->K(JJ)J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    :goto_7
    invoke-static {v6, v7}, Lcy0;->d(J)J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    invoke-virtual {v0, p0, v6, v7}, Lta4;->a(FJ)V

    .line 247
    .line 248
    .line 249
    :cond_c
    invoke-virtual {p1, p0}, Lo83;->e(F)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lo83;->g(F)V

    .line 253
    .line 254
    .line 255
    check-cast v4, Ltr3;

    .line 256
    .line 257
    if-eqz v4, :cond_d

    .line 258
    .line 259
    invoke-interface {v4}, Ltr3;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    check-cast p0, Lf14;

    .line 264
    .line 265
    iget-wide v0, p0, Lf14;->a:J

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_d
    sget-wide v0, Lf14;->b:J

    .line 269
    .line 270
    :goto_8
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    if-eqz p0, :cond_e

    .line 275
    .line 276
    iget-object p0, v5, Ldh;->e:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p0, Lws2;

    .line 279
    .line 280
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-eqz p0, :cond_e

    .line 291
    .line 292
    iget-object p0, v5, Ldh;->f:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p0, Lws2;

    .line 295
    .line 296
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    check-cast p0, Lf14;

    .line 301
    .line 302
    iget-wide v0, p0, Lf14;->a:J

    .line 303
    .line 304
    :cond_e
    invoke-virtual {v2}, Lzl3;->b()Z

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    if-eqz p0, :cond_f

    .line 309
    .line 310
    iput-wide v0, v2, Lzl3;->h:J

    .line 311
    .line 312
    :cond_f
    invoke-virtual {p1, v0, v1}, Lo83;->h(J)V

    .line 313
    .line 314
    .line 315
    sget-object p0, Lt64;->a:Lt64;

    .line 316
    .line 317
    return-object p0

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
