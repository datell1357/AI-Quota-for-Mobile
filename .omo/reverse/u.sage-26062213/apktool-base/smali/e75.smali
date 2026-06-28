.class public final Le75;
.super Lcs4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Lui3;


# direct methods
.method public constructor <init>(Lui3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcs4;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le75;->o:Lui3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Le75;->o:Lui3;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "setEventName"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_4

    .line 22
    .line 23
    invoke-static {v0, v2, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lls4;

    .line 31
    .line 32
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lpc4;

    .line 35
    .line 36
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lls4;->f:Lvs4;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lvs4;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    sget-object p1, Lls4;->g:Lfs4;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lfs4;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    iget-object p1, v3, Lui3;->p:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lxk4;

    .line 59
    .line 60
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p1, Lxk4;->a:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p1, Lss4;

    .line 67
    .line 68
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_0
    const-string p0, "Illegal event name"

    .line 77
    .line 78
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :sswitch_1
    const-string v0, "setParamValue"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const/4 p0, 0x2

    .line 91
    invoke-static {v0, p0, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lls4;

    .line 99
    .line 100
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Lpc4;

    .line 103
    .line 104
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lls4;

    .line 117
    .line 118
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p3, Lpc4;

    .line 121
    .line 122
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p2, v3, Lui3;->p:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p2, Lxk4;

    .line 129
    .line 130
    invoke-static {p1}, Lai4;->o(Lls4;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    iget-object p2, p2, Lxk4;->c:Ljava/util/HashMap;

    .line 135
    .line 136
    if-nez p3, :cond_1

    .line 137
    .line 138
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_1
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0, p3, p0}, Lxk4;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :sswitch_2
    const-string v0, "getParams"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    invoke-static {v0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, v3, Lui3;->p:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Lxk4;

    .line 168
    .line 169
    iget-object p0, p0, Lxk4;->c:Ljava/util/HashMap;

    .line 170
    .line 171
    new-instance p1, Lcs4;

    .line 172
    .line 173
    invoke-direct {p1}, Lcs4;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    if-eqz p3, :cond_2

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    check-cast p3, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lvj4;->c(Ljava/lang/Object;)Lls4;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, p3, v0}, Lcs4;->f(Ljava/lang/String;Lls4;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_2
    return-object p1

    .line 209
    :sswitch_3
    const-string v0, "getParamValue"

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_4

    .line 216
    .line 217
    invoke-static {v0, v2, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Lls4;

    .line 225
    .line 226
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lpc4;

    .line 229
    .line 230
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    iget-object p1, v3, Lui3;->p:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p1, Lxk4;

    .line 241
    .line 242
    iget-object p1, p1, Lxk4;->c:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_3

    .line 249
    .line 250
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    :cond_3
    invoke-static {v1}, Lvj4;->c(Ljava/lang/Object;)Lls4;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0

    .line 259
    :sswitch_4
    const-string v0, "getTimestamp"

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_4

    .line 266
    .line 267
    invoke-static {v0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 268
    .line 269
    .line 270
    iget-object p0, v3, Lui3;->p:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p0, Lxk4;

    .line 273
    .line 274
    new-instance p1, Leq4;

    .line 275
    .line 276
    iget-wide p2, p0, Lxk4;->b:J

    .line 277
    .line 278
    long-to-double p2, p2

    .line 279
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-direct {p1, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 284
    .line 285
    .line 286
    return-object p1

    .line 287
    :sswitch_5
    const-string v0, "getEventName"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_4

    .line 294
    .line 295
    invoke-static {v0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 296
    .line 297
    .line 298
    iget-object p0, v3, Lui3;->p:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p0, Lxk4;

    .line 301
    .line 302
    new-instance p1, Lss4;

    .line 303
    .line 304
    iget-object p0, p0, Lxk4;->a:Ljava/lang/String;

    .line 305
    .line 306
    invoke-direct {p1, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-object p1

    .line 310
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcs4;->c(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    return-object p0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
