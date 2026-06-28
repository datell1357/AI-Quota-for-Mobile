.class public final Lws4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lws4;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lws4;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public static c(Lqd1;Ljava/util/List;)Lis4;
    .locals 5

    .line 1
    sget-object v0, Lfu4;->o:Lfu4;

    .line 2
    .line 3
    const-string v0, "FN"

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1, p1}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lls4;

    .line 15
    .line 16
    iget-object v2, p0, Lqd1;->r:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lpc4;

    .line 19
    .line 20
    invoke-virtual {v2, p0, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lls4;

    .line 30
    .line 31
    iget-object v3, p0, Lqd1;->r:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lpc4;

    .line 34
    .line 35
    invoke-virtual {v3, p0, v2}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Lvn4;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    check-cast v2, Lvn4;

    .line 44
    .line 45
    invoke-virtual {v2}, Lvn4;->i()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-le v4, v1, :cond_0

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_0
    new-instance p1, Lis4;

    .line 69
    .line 70
    invoke-interface {v0}, Lls4;->zzc()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p1, v0, v2, v3, p0}, Lis4;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lqd1;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "FN requires an ArrayValue of parameter names found "

    .line 89
    .line 90
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public static d(Lls4;Lls4;)Z
    .locals 8

    .line 1
    instance-of v0, p0, Las4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lss4;

    .line 6
    .line 7
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_0
    instance-of v0, p1, Las4;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lss4;

    .line 20
    .line 21
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lss4;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :cond_1
    instance-of v0, p0, Lss4;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    instance-of v0, p1, Lss4;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Lss4;

    .line 41
    .line 42
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 43
    .line 44
    check-cast p1, Lss4;

    .line 45
    .line 46
    iget-object p1, p1, Lss4;->n:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-gez p0, :cond_3

    .line 53
    .line 54
    return v1

    .line 55
    :cond_3
    return v2

    .line 56
    :cond_4
    :goto_0
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_9

    .line 77
    .line 78
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const-wide/16 v5, 0x0

    .line 86
    .line 87
    cmpl-double v0, v3, v5

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    cmpl-double v7, p0, v5

    .line 92
    .line 93
    if-eqz v7, :cond_7

    .line 94
    .line 95
    :cond_6
    if-nez v0, :cond_8

    .line 96
    .line 97
    cmpl-double v0, p0, v5

    .line 98
    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    :cond_7
    return v2

    .line 102
    :cond_8
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-gez p0, :cond_9

    .line 107
    .line 108
    return v1

    .line 109
    :cond_9
    :goto_1
    return v2
.end method

.method public static e(Lut4;Lls4;Lls4;)Lls4;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1, p2}, Lws4;->g(Lut4;Ljava/util/Iterator;Lls4;)Lls4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "Non-iterable type in for...of loop."

    .line 17
    .line 18
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static f(Lls4;Lls4;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    instance-of v0, p0, Lvs4;

    .line 18
    .line 19
    if-nez v0, :cond_7

    .line 20
    .line 21
    instance-of v0, p0, Lfs4;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    instance-of v0, p0, Leq4;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    cmpl-double p0, v3, p0

    .line 76
    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    return v2

    .line 80
    :cond_2
    :goto_0
    return v1

    .line 81
    :cond_3
    instance-of v0, p0, Lss4;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :cond_4
    instance-of v0, p0, Loo4;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p1}, Lls4;->zze()Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    return p0

    .line 115
    :cond_5
    if-ne p0, p1, :cond_6

    .line 116
    .line 117
    return v2

    .line 118
    :cond_6
    return v1

    .line 119
    :cond_7
    :goto_1
    return v2

    .line 120
    :cond_8
    instance-of v0, p0, Lvs4;

    .line 121
    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    instance-of v0, p0, Lfs4;

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    :cond_9
    instance-of v0, p1, Lvs4;

    .line 129
    .line 130
    if-nez v0, :cond_13

    .line 131
    .line 132
    instance-of v0, p1, Lfs4;

    .line 133
    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_a
    instance-of v0, p0, Leq4;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    instance-of v2, p1, Lss4;

    .line 143
    .line 144
    if-eqz v2, :cond_b

    .line 145
    .line 146
    new-instance v0, Leq4;

    .line 147
    .line 148
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0, v0}, Lws4;->f(Lls4;Lls4;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    return p0

    .line 160
    :cond_b
    instance-of v2, p0, Lss4;

    .line 161
    .line 162
    if-eqz v2, :cond_c

    .line 163
    .line 164
    instance-of v3, p1, Leq4;

    .line 165
    .line 166
    if-eqz v3, :cond_c

    .line 167
    .line 168
    new-instance v0, Leq4;

    .line 169
    .line 170
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-direct {v0, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v0, p1}, Lws4;->f(Lls4;Lls4;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0

    .line 182
    :cond_c
    instance-of v3, p0, Loo4;

    .line 183
    .line 184
    if-eqz v3, :cond_d

    .line 185
    .line 186
    new-instance v0, Leq4;

    .line 187
    .line 188
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-direct {v0, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v0, p1}, Lws4;->f(Lls4;Lls4;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    return p0

    .line 200
    :cond_d
    instance-of v3, p1, Loo4;

    .line 201
    .line 202
    if-eqz v3, :cond_e

    .line 203
    .line 204
    new-instance v0, Leq4;

    .line 205
    .line 206
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {v0, p1}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 211
    .line 212
    .line 213
    invoke-static {p0, v0}, Lws4;->f(Lls4;Lls4;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0

    .line 218
    :cond_e
    if-nez v2, :cond_f

    .line 219
    .line 220
    if-eqz v0, :cond_10

    .line 221
    .line 222
    :cond_f
    instance-of v0, p1, Las4;

    .line 223
    .line 224
    if-eqz v0, :cond_10

    .line 225
    .line 226
    new-instance v0, Lss4;

    .line 227
    .line 228
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-direct {v0, p1}, Lss4;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {p0, v0}, Lws4;->f(Lls4;Lls4;)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    return p0

    .line 240
    :cond_10
    instance-of v0, p0, Las4;

    .line 241
    .line 242
    if-eqz v0, :cond_12

    .line 243
    .line 244
    instance-of v0, p1, Lss4;

    .line 245
    .line 246
    if-nez v0, :cond_11

    .line 247
    .line 248
    instance-of v0, p1, Leq4;

    .line 249
    .line 250
    if-eqz v0, :cond_12

    .line 251
    .line 252
    :cond_11
    new-instance v0, Lss4;

    .line 253
    .line 254
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-direct {v0, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v0, p1}, Lws4;->f(Lls4;Lls4;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    return p0

    .line 266
    :cond_12
    return v1

    .line 267
    :cond_13
    :goto_2
    return v2
.end method

.method public static g(Lut4;Ljava/util/Iterator;Lls4;)Lls4;
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lls4;

    .line 14
    .line 15
    iget v1, p0, Lut4;->a:I

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lut4;->b:Lqd1;

    .line 21
    .line 22
    iget-object v2, p0, Lut4;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_0
    iget-object v1, p0, Lut4;->b:Lqd1;

    .line 29
    .line 30
    invoke-virtual {v1}, Lqd1;->O()Lqd1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lut4;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v1, p0, Lut4;->b:Lqd1;

    .line 41
    .line 42
    invoke-virtual {v1}, Lqd1;->O()Lqd1;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lut4;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lqd1;->q:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/util/HashMap;

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :goto_0
    move-object v0, p2

    .line 61
    check-cast v0, Lvn4;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lqd1;->M(Lvn4;)Lls4;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v1, v0, Ljp4;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    check-cast v0, Ljp4;

    .line 72
    .line 73
    iget-object v1, v0, Ljp4;->o:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "break"

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object p0, Lls4;->f:Lvs4;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_1
    const-string v2, "return"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_2
    sget-object p0, Lls4;->f:Lvs4;

    .line 96
    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lls4;Lls4;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Las4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lss4;

    .line 6
    .line 7
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_0
    instance-of v0, p1, Las4;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lss4;

    .line 20
    .line 21
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lss4;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :cond_1
    instance-of v0, p0, Lss4;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    instance-of v0, p1, Lss4;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    :cond_2
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1, p0}, Lws4;->d(Lls4;Lls4;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;
    .locals 10

    .line 1
    iget v0, p0, Lws4;->b:I

    .line 2
    .line 3
    const-string v1, "break"

    .line 4
    .line 5
    const-string v2, "return"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lfu4;->o:Lfu4;

    .line 16
    .line 17
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eq v0, v3, :cond_22

    .line 26
    .line 27
    const/16 v1, 0xe

    .line 28
    .line 29
    if-eq v0, v1, :cond_1e

    .line 30
    .line 31
    const/16 v1, 0x18

    .line 32
    .line 33
    if-eq v0, v1, :cond_1c

    .line 34
    .line 35
    const/16 v1, 0x21

    .line 36
    .line 37
    if-eq v0, v1, :cond_1a

    .line 38
    .line 39
    const/16 v1, 0x31

    .line 40
    .line 41
    if-eq v0, v1, :cond_19

    .line 42
    .line 43
    const/16 v1, 0x3a

    .line 44
    .line 45
    if-eq v0, v1, :cond_15

    .line 46
    .line 47
    const/16 v1, 0x11

    .line 48
    .line 49
    if-eq v0, v1, :cond_12

    .line 50
    .line 51
    const/16 v1, 0x12

    .line 52
    .line 53
    if-eq v0, v1, :cond_d

    .line 54
    .line 55
    const/16 v1, 0x23

    .line 56
    .line 57
    if-eq v0, v1, :cond_8

    .line 58
    .line 59
    const/16 v1, 0x24

    .line 60
    .line 61
    if-eq v0, v1, :cond_8

    .line 62
    .line 63
    packed-switch v0, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v7

    .line 70
    :pswitch_0
    const-string p0, "VAR"

    .line 71
    .line 72
    invoke-static {p0, v4, p3}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    :goto_0
    if-ge v6, p0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    check-cast p1, Lls4;

    .line 88
    .line 89
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lpc4;

    .line 92
    .line 93
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    instance-of v0, p1, Lss4;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    check-cast p1, Lss4;

    .line 102
    .line 103
    iget-object p1, p1, Lss4;->n:Ljava/lang/String;

    .line 104
    .line 105
    sget-object v0, Lls4;->f:Lvs4;

    .line 106
    .line 107
    invoke-virtual {p2, p1, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string p1, "Expected string for var name. got "

    .line 120
    .line 121
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_7

    .line 129
    .line 130
    :cond_1
    sget-object v7, Lls4;->f:Lvs4;

    .line 131
    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :pswitch_1
    const-string p0, "UNDEFINED"

    .line 135
    .line 136
    invoke-static {p0, v6, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 137
    .line 138
    .line 139
    sget-object v7, Lls4;->f:Lvs4;

    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :pswitch_2
    const-string p0, "TYPEOF"

    .line 144
    .line 145
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lls4;

    .line 153
    .line 154
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Lpc4;

    .line 157
    .line 158
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    instance-of p1, p0, Lvs4;

    .line 163
    .line 164
    if-eqz p1, :cond_2

    .line 165
    .line 166
    const-string p0, "undefined"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    instance-of p1, p0, Loo4;

    .line 170
    .line 171
    if-eqz p1, :cond_3

    .line 172
    .line 173
    const-string p0, "boolean"

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    instance-of p1, p0, Leq4;

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    const-string p0, "number"

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    instance-of p1, p0, Lss4;

    .line 184
    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    const-string p0, "string"

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    instance-of p1, p0, Lis4;

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    const-string p0, "function"

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    instance-of p1, p0, Lns4;

    .line 198
    .line 199
    if-nez p1, :cond_7

    .line 200
    .line 201
    instance-of p1, p0, Ljp4;

    .line 202
    .line 203
    if-nez p1, :cond_7

    .line 204
    .line 205
    const-string p0, "object"

    .line 206
    .line 207
    :goto_1
    new-instance v7, Lss4;

    .line 208
    .line 209
    invoke-direct {v7, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-string p2, "Unsupported value type %s in typeof"

    .line 221
    .line 222
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1

    .line 230
    :cond_8
    const-string p0, "GET_PROPERTY"

    .line 231
    .line 232
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Lls4;

    .line 240
    .line 241
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p1, Lpc4;

    .line 244
    .line 245
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lls4;

    .line 254
    .line 255
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p3, Lpc4;

    .line 258
    .line 259
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    instance-of p2, p0, Lvn4;

    .line 264
    .line 265
    if-eqz p2, :cond_9

    .line 266
    .line 267
    invoke-static {p1}, Lai4;->j(Lls4;)Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_9

    .line 272
    .line 273
    check-cast p0, Lvn4;

    .line 274
    .line 275
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    invoke-virtual {p0, p1}, Lvn4;->m(I)Lls4;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    goto/16 :goto_7

    .line 288
    .line 289
    :cond_9
    instance-of p2, p0, Las4;

    .line 290
    .line 291
    if-eqz p2, :cond_a

    .line 292
    .line 293
    check-cast p0, Las4;

    .line 294
    .line 295
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-interface {p0, p1}, Las4;->d(Ljava/lang/String;)Lls4;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    goto/16 :goto_7

    .line 304
    .line 305
    :cond_a
    instance-of p2, p0, Lss4;

    .line 306
    .line 307
    if-eqz p2, :cond_c

    .line 308
    .line 309
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    const-string p3, "length"

    .line 314
    .line 315
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    if-eqz p2, :cond_b

    .line 320
    .line 321
    new-instance v7, Leq4;

    .line 322
    .line 323
    check-cast p0, Lss4;

    .line 324
    .line 325
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    int-to-double p0, p0

    .line 332
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-direct {v7, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :cond_b
    invoke-static {p1}, Lai4;->j(Lls4;)Z

    .line 342
    .line 343
    .line 344
    move-result p2

    .line 345
    if-eqz p2, :cond_c

    .line 346
    .line 347
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 352
    .line 353
    .line 354
    move-result-wide p2

    .line 355
    check-cast p0, Lss4;

    .line 356
    .line 357
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    int-to-double v0, v0

    .line 364
    cmpg-double p2, p2, v0

    .line 365
    .line 366
    if-gez p2, :cond_c

    .line 367
    .line 368
    new-instance v7, Lss4;

    .line 369
    .line 370
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 379
    .line 380
    .line 381
    move-result p0

    .line 382
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-direct {v7, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_7

    .line 390
    .line 391
    :cond_c
    sget-object v7, Lls4;->f:Lvs4;

    .line 392
    .line 393
    goto/16 :goto_7

    .line 394
    .line 395
    :cond_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    if-eqz p0, :cond_e

    .line 400
    .line 401
    new-instance v7, Lcs4;

    .line 402
    .line 403
    invoke-direct {v7}, Lcs4;-><init>()V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_7

    .line 407
    .line 408
    :cond_e
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result p0

    .line 412
    rem-int/2addr p0, v5

    .line 413
    if-nez p0, :cond_11

    .line 414
    .line 415
    new-instance p0, Lcs4;

    .line 416
    .line 417
    invoke-direct {p0}, Lcs4;-><init>()V

    .line 418
    .line 419
    .line 420
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    add-int/lit8 p1, p1, -0x1

    .line 425
    .line 426
    if-ge v6, p1, :cond_10

    .line 427
    .line 428
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Lls4;

    .line 433
    .line 434
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Lpc4;

    .line 437
    .line 438
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    add-int/lit8 v0, v6, 0x1

    .line 443
    .line 444
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Lls4;

    .line 449
    .line 450
    iget-object v1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v1, Lpc4;

    .line 453
    .line 454
    invoke-virtual {v1, p2, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    instance-of v1, p1, Ljp4;

    .line 459
    .line 460
    if-nez v1, :cond_f

    .line 461
    .line 462
    instance-of v1, v0, Ljp4;

    .line 463
    .line 464
    if-nez v1, :cond_f

    .line 465
    .line 466
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p0, p1, v0}, Lcs4;->f(Ljava/lang/String;Lls4;)V

    .line 471
    .line 472
    .line 473
    add-int/lit8 v6, v6, 0x2

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_f
    const-string p0, "Failed to evaluate map entry"

    .line 477
    .line 478
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :cond_10
    move-object v7, p0

    .line 484
    goto/16 :goto_7

    .line 485
    .line 486
    :cond_11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result p0

    .line 490
    const-string p1, "CREATE_OBJECT requires an even number of arguments, found "

    .line 491
    .line 492
    invoke-static {p0, p1}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p0

    .line 496
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_7

    .line 500
    .line 501
    :cond_12
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result p0

    .line 505
    if-eqz p0, :cond_13

    .line 506
    .line 507
    new-instance v7, Lvn4;

    .line 508
    .line 509
    invoke-direct {v7}, Lvn4;-><init>()V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_7

    .line 513
    .line 514
    :cond_13
    new-instance p0, Lvn4;

    .line 515
    .line 516
    invoke-direct {p0}, Lvn4;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    move v0, v6

    .line 524
    :goto_3
    if-ge v0, p1, :cond_10

    .line 525
    .line 526
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 531
    .line 532
    check-cast v1, Lls4;

    .line 533
    .line 534
    iget-object v2, p2, Lqd1;->r:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v2, Lpc4;

    .line 537
    .line 538
    invoke-virtual {v2, p2, v1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    instance-of v2, v1, Ljp4;

    .line 543
    .line 544
    if-nez v2, :cond_14

    .line 545
    .line 546
    add-int/lit8 v2, v6, 0x1

    .line 547
    .line 548
    invoke-virtual {p0, v6, v1}, Lvn4;->n(ILls4;)V

    .line 549
    .line 550
    .line 551
    move v6, v2

    .line 552
    goto :goto_3

    .line 553
    :cond_14
    const-string p0, "Failed to evaluate array element"

    .line 554
    .line 555
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_7

    .line 559
    .line 560
    :cond_15
    const-string p0, "SET_PROPERTY"

    .line 561
    .line 562
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    check-cast p0, Lls4;

    .line 570
    .line 571
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast p1, Lpc4;

    .line 574
    .line 575
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v0, Lpc4;

    .line 578
    .line 579
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 580
    .line 581
    .line 582
    move-result-object p0

    .line 583
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    check-cast p1, Lls4;

    .line 588
    .line 589
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object p3

    .line 597
    check-cast p3, Lls4;

    .line 598
    .line 599
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 600
    .line 601
    .line 602
    move-result-object p2

    .line 603
    sget-object p3, Lls4;->f:Lvs4;

    .line 604
    .line 605
    if-eq p0, p3, :cond_18

    .line 606
    .line 607
    sget-object p3, Lls4;->g:Lfs4;

    .line 608
    .line 609
    if-eq p0, p3, :cond_18

    .line 610
    .line 611
    instance-of p3, p0, Lvn4;

    .line 612
    .line 613
    if-eqz p3, :cond_16

    .line 614
    .line 615
    instance-of p3, p1, Leq4;

    .line 616
    .line 617
    if-eqz p3, :cond_16

    .line 618
    .line 619
    check-cast p0, Lvn4;

    .line 620
    .line 621
    check-cast p1, Leq4;

    .line 622
    .line 623
    iget-object p1, p1, Leq4;->n:Ljava/lang/Double;

    .line 624
    .line 625
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    invoke-virtual {p0, p1, p2}, Lvn4;->n(ILls4;)V

    .line 630
    .line 631
    .line 632
    :goto_4
    move-object v7, p2

    .line 633
    goto/16 :goto_7

    .line 634
    .line 635
    :cond_16
    instance-of p3, p0, Las4;

    .line 636
    .line 637
    if-nez p3, :cond_17

    .line 638
    .line 639
    goto :goto_4

    .line 640
    :cond_17
    check-cast p0, Las4;

    .line 641
    .line 642
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-interface {p0, p1, p2}, Las4;->f(Ljava/lang/String;Lls4;)V

    .line 647
    .line 648
    .line 649
    goto :goto_4

    .line 650
    :cond_18
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    const-string p2, "Can\'t set property "

    .line 659
    .line 660
    const-string p3, " of "

    .line 661
    .line 662
    invoke-static {p2, p1, p3, p0}, Lq73;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_7

    .line 666
    .line 667
    :cond_19
    const-string p0, "NULL"

    .line 668
    .line 669
    invoke-static {p0, v6, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 670
    .line 671
    .line 672
    sget-object v7, Lls4;->g:Lfs4;

    .line 673
    .line 674
    goto/16 :goto_7

    .line 675
    .line 676
    :cond_1a
    const-string p0, "GET"

    .line 677
    .line 678
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    check-cast p0, Lls4;

    .line 686
    .line 687
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast p1, Lpc4;

    .line 690
    .line 691
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 692
    .line 693
    .line 694
    move-result-object p0

    .line 695
    instance-of p1, p0, Lss4;

    .line 696
    .line 697
    if-eqz p1, :cond_1b

    .line 698
    .line 699
    check-cast p0, Lss4;

    .line 700
    .line 701
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {p2, p0}, Lqd1;->S(Ljava/lang/String;)Lls4;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    goto/16 :goto_7

    .line 708
    .line 709
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    .line 711
    .line 712
    move-result-object p0

    .line 713
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object p0

    .line 717
    const-string p1, "Expected string for get var. got "

    .line 718
    .line 719
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object p0

    .line 723
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_7

    .line 727
    .line 728
    :cond_1c
    const-string p0, "EXPRESSION_LIST"

    .line 729
    .line 730
    invoke-static {p0, v4, p3}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 731
    .line 732
    .line 733
    sget-object p0, Lls4;->f:Lvs4;

    .line 734
    .line 735
    :goto_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 736
    .line 737
    .line 738
    move-result p1

    .line 739
    if-ge v6, p1, :cond_10

    .line 740
    .line 741
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object p0

    .line 745
    check-cast p0, Lls4;

    .line 746
    .line 747
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast p1, Lpc4;

    .line 750
    .line 751
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 752
    .line 753
    .line 754
    move-result-object p0

    .line 755
    instance-of p1, p0, Ljp4;

    .line 756
    .line 757
    if-nez p1, :cond_1d

    .line 758
    .line 759
    add-int/lit8 v6, v6, 0x1

    .line 760
    .line 761
    goto :goto_5

    .line 762
    :cond_1d
    const-string p0, "ControlValue cannot be in an expression list"

    .line 763
    .line 764
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_7

    .line 768
    .line 769
    :cond_1e
    const-string p0, "CONST"

    .line 770
    .line 771
    invoke-static {p0, v5, p3}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 775
    .line 776
    .line 777
    move-result p0

    .line 778
    rem-int/2addr p0, v5

    .line 779
    if-nez p0, :cond_21

    .line 780
    .line 781
    :goto_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 782
    .line 783
    .line 784
    move-result p0

    .line 785
    add-int/lit8 p0, p0, -0x1

    .line 786
    .line 787
    if-ge v6, p0, :cond_20

    .line 788
    .line 789
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p0

    .line 793
    check-cast p0, Lls4;

    .line 794
    .line 795
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast p1, Lpc4;

    .line 798
    .line 799
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 800
    .line 801
    .line 802
    move-result-object p0

    .line 803
    instance-of p1, p0, Lss4;

    .line 804
    .line 805
    if-eqz p1, :cond_1f

    .line 806
    .line 807
    check-cast p0, Lss4;

    .line 808
    .line 809
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 810
    .line 811
    add-int/lit8 p1, v6, 0x1

    .line 812
    .line 813
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    check-cast p1, Lls4;

    .line 818
    .line 819
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 820
    .line 821
    check-cast v0, Lpc4;

    .line 822
    .line 823
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 824
    .line 825
    .line 826
    move-result-object p1

    .line 827
    invoke-virtual {p2, p0, p1}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 828
    .line 829
    .line 830
    iget-object p1, p2, Lqd1;->q:Ljava/lang/Object;

    .line 831
    .line 832
    check-cast p1, Ljava/util/HashMap;

    .line 833
    .line 834
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 835
    .line 836
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    add-int/lit8 v6, v6, 0x2

    .line 840
    .line 841
    goto :goto_6

    .line 842
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    move-result-object p0

    .line 846
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object p0

    .line 850
    const-string p1, "Expected string for const name. got "

    .line 851
    .line 852
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object p0

    .line 856
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto :goto_7

    .line 860
    :cond_20
    sget-object v7, Lls4;->f:Lvs4;

    .line 861
    .line 862
    goto :goto_7

    .line 863
    :cond_21
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 864
    .line 865
    .line 866
    move-result p0

    .line 867
    const-string p1, "CONST requires an even number of arguments, found "

    .line 868
    .line 869
    invoke-static {p0, p1}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object p0

    .line 873
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    goto :goto_7

    .line 877
    :cond_22
    const-string p0, "ASSIGN"

    .line 878
    .line 879
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object p0

    .line 886
    check-cast p0, Lls4;

    .line 887
    .line 888
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast p1, Lpc4;

    .line 891
    .line 892
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 893
    .line 894
    .line 895
    move-result-object p0

    .line 896
    instance-of p1, p0, Lss4;

    .line 897
    .line 898
    if-eqz p1, :cond_24

    .line 899
    .line 900
    check-cast p0, Lss4;

    .line 901
    .line 902
    iget-object p0, p0, Lss4;->n:Ljava/lang/String;

    .line 903
    .line 904
    invoke-virtual {p2, p0}, Lqd1;->P(Ljava/lang/String;)Z

    .line 905
    .line 906
    .line 907
    move-result p1

    .line 908
    if-eqz p1, :cond_23

    .line 909
    .line 910
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object p1

    .line 914
    check-cast p1, Lls4;

    .line 915
    .line 916
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 917
    .line 918
    check-cast p3, Lpc4;

    .line 919
    .line 920
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 921
    .line 922
    .line 923
    move-result-object v7

    .line 924
    invoke-virtual {p2, p0, v7}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 925
    .line 926
    .line 927
    goto :goto_7

    .line 928
    :cond_23
    const-string p1, "Attempting to assign undefined value "

    .line 929
    .line 930
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object p0

    .line 934
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    goto :goto_7

    .line 938
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    move-result-object p0

    .line 942
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object p0

    .line 946
    const-string p1, "Expected string for assign var. got "

    .line 947
    .line 948
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object p0

    .line 952
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    :goto_7
    return-object v7

    .line 956
    :pswitch_3
    if-eqz p1, :cond_26

    .line 957
    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 959
    .line 960
    .line 961
    move-result p0

    .line 962
    if-nez p0, :cond_26

    .line 963
    .line 964
    invoke-virtual {p2, p1}, Lqd1;->P(Ljava/lang/String;)Z

    .line 965
    .line 966
    .line 967
    move-result p0

    .line 968
    if-eqz p0, :cond_26

    .line 969
    .line 970
    invoke-virtual {p2, p1}, Lqd1;->S(Ljava/lang/String;)Lls4;

    .line 971
    .line 972
    .line 973
    move-result-object p0

    .line 974
    instance-of v0, p0, Lzq4;

    .line 975
    .line 976
    if-eqz v0, :cond_25

    .line 977
    .line 978
    check-cast p0, Lzq4;

    .line 979
    .line 980
    invoke-virtual {p0, p2, p3}, Lzq4;->b(Lqd1;Ljava/util/List;)Lls4;

    .line 981
    .line 982
    .line 983
    move-result-object v7

    .line 984
    goto :goto_8

    .line 985
    :cond_25
    const-string p0, "Function "

    .line 986
    .line 987
    const-string p2, " is not defined"

    .line 988
    .line 989
    invoke-static {p0, p1, p2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object p0

    .line 993
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    goto :goto_8

    .line 997
    :cond_26
    const-string p0, "Command not found: "

    .line 998
    .line 999
    invoke-static {p0, p1}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p0

    .line 1003
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    :goto_8
    return-object v7

    .line 1007
    :pswitch_4
    sget-object v0, Lfu4;->o:Lfu4;

    .line 1008
    .line 1009
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    if-eqz v0, :cond_2b

    .line 1018
    .line 1019
    const/16 v1, 0x15

    .line 1020
    .line 1021
    if-eq v0, v1, :cond_2a

    .line 1022
    .line 1023
    const/16 v1, 0x3b

    .line 1024
    .line 1025
    if-eq v0, v1, :cond_29

    .line 1026
    .line 1027
    const/16 v1, 0x34

    .line 1028
    .line 1029
    if-eq v0, v1, :cond_28

    .line 1030
    .line 1031
    const/16 v1, 0x35

    .line 1032
    .line 1033
    if-eq v0, v1, :cond_28

    .line 1034
    .line 1035
    const/16 v1, 0x37

    .line 1036
    .line 1037
    if-eq v0, v1, :cond_27

    .line 1038
    .line 1039
    const/16 v1, 0x38

    .line 1040
    .line 1041
    if-eq v0, v1, :cond_27

    .line 1042
    .line 1043
    packed-switch v0, :pswitch_data_2

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    throw v7

    .line 1050
    :pswitch_5
    const-string p0, "NEGATE"

    .line 1051
    .line 1052
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object p0

    .line 1059
    check-cast p0, Lls4;

    .line 1060
    .line 1061
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1062
    .line 1063
    check-cast p1, Lpc4;

    .line 1064
    .line 1065
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p0

    .line 1069
    new-instance p1, Leq4;

    .line 1070
    .line 1071
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1072
    .line 1073
    .line 1074
    move-result-object p0

    .line 1075
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1076
    .line 1077
    .line 1078
    move-result-wide p2

    .line 1079
    neg-double p2, p2

    .line 1080
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p0

    .line 1084
    invoke-direct {p1, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1085
    .line 1086
    .line 1087
    goto/16 :goto_b

    .line 1088
    .line 1089
    :pswitch_6
    const-string p0, "MULTIPLY"

    .line 1090
    .line 1091
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object p0

    .line 1098
    check-cast p0, Lls4;

    .line 1099
    .line 1100
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1101
    .line 1102
    check-cast p1, Lpc4;

    .line 1103
    .line 1104
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1105
    .line 1106
    .line 1107
    move-result-object p0

    .line 1108
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p0

    .line 1112
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1113
    .line 1114
    .line 1115
    move-result-wide p0

    .line 1116
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object p3

    .line 1120
    check-cast p3, Lls4;

    .line 1121
    .line 1122
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v0, Lpc4;

    .line 1125
    .line 1126
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1127
    .line 1128
    .line 1129
    move-result-object p2

    .line 1130
    invoke-interface {p2}, Lls4;->zzd()Ljava/lang/Double;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p2

    .line 1134
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 1135
    .line 1136
    .line 1137
    move-result-wide p2

    .line 1138
    mul-double/2addr p2, p0

    .line 1139
    new-instance p1, Leq4;

    .line 1140
    .line 1141
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1142
    .line 1143
    .line 1144
    move-result-object p0

    .line 1145
    invoke-direct {p1, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_b

    .line 1149
    .line 1150
    :pswitch_7
    const-string p0, "MODULUS"

    .line 1151
    .line 1152
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p0

    .line 1159
    check-cast p0, Lls4;

    .line 1160
    .line 1161
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast p1, Lpc4;

    .line 1164
    .line 1165
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1166
    .line 1167
    .line 1168
    move-result-object p0

    .line 1169
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1170
    .line 1171
    .line 1172
    move-result-object p0

    .line 1173
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1174
    .line 1175
    .line 1176
    move-result-wide p0

    .line 1177
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p3

    .line 1181
    check-cast p3, Lls4;

    .line 1182
    .line 1183
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1184
    .line 1185
    check-cast v0, Lpc4;

    .line 1186
    .line 1187
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1188
    .line 1189
    .line 1190
    move-result-object p2

    .line 1191
    invoke-interface {p2}, Lls4;->zzd()Ljava/lang/Double;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p2

    .line 1195
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 1196
    .line 1197
    .line 1198
    move-result-wide p2

    .line 1199
    rem-double/2addr p0, p2

    .line 1200
    new-instance p2, Leq4;

    .line 1201
    .line 1202
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1203
    .line 1204
    .line 1205
    move-result-object p0

    .line 1206
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1207
    .line 1208
    .line 1209
    :goto_9
    move-object p1, p2

    .line 1210
    goto/16 :goto_b

    .line 1211
    .line 1212
    :cond_27
    invoke-static {p1, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object p0

    .line 1219
    check-cast p0, Lls4;

    .line 1220
    .line 1221
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1222
    .line 1223
    check-cast p1, Lpc4;

    .line 1224
    .line 1225
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1226
    .line 1227
    .line 1228
    move-result-object p1

    .line 1229
    goto/16 :goto_b

    .line 1230
    .line 1231
    :cond_28
    invoke-static {p1, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p0

    .line 1238
    check-cast p0, Lls4;

    .line 1239
    .line 1240
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1241
    .line 1242
    check-cast p1, Lpc4;

    .line 1243
    .line 1244
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1245
    .line 1246
    .line 1247
    move-result-object p1

    .line 1248
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object p0

    .line 1252
    check-cast p0, Lls4;

    .line 1253
    .line 1254
    invoke-virtual {p2, p0}, Lqd1;->L(Lls4;)Lls4;

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_b

    .line 1258
    .line 1259
    :cond_29
    const-string p0, "SUBTRACT"

    .line 1260
    .line 1261
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object p0

    .line 1268
    check-cast p0, Lls4;

    .line 1269
    .line 1270
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1271
    .line 1272
    check-cast p1, Lpc4;

    .line 1273
    .line 1274
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1275
    .line 1276
    .line 1277
    move-result-object p0

    .line 1278
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object p1

    .line 1282
    check-cast p1, Lls4;

    .line 1283
    .line 1284
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast p3, Lpc4;

    .line 1287
    .line 1288
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1289
    .line 1290
    .line 1291
    move-result-object p1

    .line 1292
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 1293
    .line 1294
    .line 1295
    move-result-object p1

    .line 1296
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 1297
    .line 1298
    .line 1299
    move-result-wide p1

    .line 1300
    neg-double p1, p1

    .line 1301
    new-instance p3, Leq4;

    .line 1302
    .line 1303
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1304
    .line 1305
    .line 1306
    move-result-object p0

    .line 1307
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v0

    .line 1311
    add-double/2addr v0, p1

    .line 1312
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1313
    .line 1314
    .line 1315
    move-result-object p0

    .line 1316
    invoke-direct {p3, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1317
    .line 1318
    .line 1319
    move-object p1, p3

    .line 1320
    goto/16 :goto_b

    .line 1321
    .line 1322
    :cond_2a
    const-string p0, "DIVIDE"

    .line 1323
    .line 1324
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object p0

    .line 1331
    check-cast p0, Lls4;

    .line 1332
    .line 1333
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1334
    .line 1335
    check-cast p1, Lpc4;

    .line 1336
    .line 1337
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1338
    .line 1339
    .line 1340
    move-result-object p0

    .line 1341
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1342
    .line 1343
    .line 1344
    move-result-object p0

    .line 1345
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1346
    .line 1347
    .line 1348
    move-result-wide p0

    .line 1349
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1350
    .line 1351
    .line 1352
    move-result-object p3

    .line 1353
    check-cast p3, Lls4;

    .line 1354
    .line 1355
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v0, Lpc4;

    .line 1358
    .line 1359
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1360
    .line 1361
    .line 1362
    move-result-object p2

    .line 1363
    invoke-interface {p2}, Lls4;->zzd()Ljava/lang/Double;

    .line 1364
    .line 1365
    .line 1366
    move-result-object p2

    .line 1367
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 1368
    .line 1369
    .line 1370
    move-result-wide p2

    .line 1371
    div-double/2addr p0, p2

    .line 1372
    new-instance p2, Leq4;

    .line 1373
    .line 1374
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1375
    .line 1376
    .line 1377
    move-result-object p0

    .line 1378
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_9

    .line 1382
    .line 1383
    :cond_2b
    const-string p0, "ADD"

    .line 1384
    .line 1385
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object p0

    .line 1392
    check-cast p0, Lls4;

    .line 1393
    .line 1394
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1395
    .line 1396
    check-cast p1, Lpc4;

    .line 1397
    .line 1398
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1399
    .line 1400
    .line 1401
    move-result-object p0

    .line 1402
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    move-result-object p1

    .line 1406
    check-cast p1, Lls4;

    .line 1407
    .line 1408
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1409
    .line 1410
    check-cast p3, Lpc4;

    .line 1411
    .line 1412
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1413
    .line 1414
    .line 1415
    move-result-object p1

    .line 1416
    instance-of p2, p0, Las4;

    .line 1417
    .line 1418
    if-nez p2, :cond_2d

    .line 1419
    .line 1420
    instance-of p2, p0, Lss4;

    .line 1421
    .line 1422
    if-nez p2, :cond_2d

    .line 1423
    .line 1424
    instance-of p2, p1, Las4;

    .line 1425
    .line 1426
    if-nez p2, :cond_2d

    .line 1427
    .line 1428
    instance-of p2, p1, Lss4;

    .line 1429
    .line 1430
    if-eqz p2, :cond_2c

    .line 1431
    .line 1432
    goto :goto_a

    .line 1433
    :cond_2c
    new-instance p2, Leq4;

    .line 1434
    .line 1435
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 1436
    .line 1437
    .line 1438
    move-result-object p0

    .line 1439
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1440
    .line 1441
    .line 1442
    move-result-wide v0

    .line 1443
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 1444
    .line 1445
    .line 1446
    move-result-object p0

    .line 1447
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 1448
    .line 1449
    .line 1450
    move-result-wide p0

    .line 1451
    add-double/2addr p0, v0

    .line 1452
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1453
    .line 1454
    .line 1455
    move-result-object p0

    .line 1456
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 1457
    .line 1458
    .line 1459
    goto/16 :goto_9

    .line 1460
    .line 1461
    :cond_2d
    :goto_a
    new-instance p2, Lss4;

    .line 1462
    .line 1463
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object p0

    .line 1467
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object p1

    .line 1471
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object p0

    .line 1475
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object p1

    .line 1479
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object p0

    .line 1483
    invoke-direct {p2, p0}, Lss4;-><init>(Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    goto/16 :goto_9

    .line 1487
    .line 1488
    :goto_b
    return-object p1

    .line 1489
    :pswitch_8
    sget-object v0, Lfu4;->o:Lfu4;

    .line 1490
    .line 1491
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    const/16 v8, 0x41

    .line 1500
    .line 1501
    const/4 v9, 0x4

    .line 1502
    if-eq v0, v8, :cond_40

    .line 1503
    .line 1504
    packed-switch v0, :pswitch_data_3

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    throw v7

    .line 1511
    :pswitch_9
    const-string p0, "FOR_OF_LET"

    .line 1512
    .line 1513
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    move-result-object p0

    .line 1520
    instance-of p0, p0, Lss4;

    .line 1521
    .line 1522
    if-eqz p0, :cond_2e

    .line 1523
    .line 1524
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object p0

    .line 1528
    check-cast p0, Lls4;

    .line 1529
    .line 1530
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p0

    .line 1534
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object p1

    .line 1538
    check-cast p1, Lls4;

    .line 1539
    .line 1540
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1541
    .line 1542
    check-cast v0, Lpc4;

    .line 1543
    .line 1544
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1545
    .line 1546
    .line 1547
    move-result-object p1

    .line 1548
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object p3

    .line 1552
    check-cast p3, Lls4;

    .line 1553
    .line 1554
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1555
    .line 1556
    check-cast v0, Lpc4;

    .line 1557
    .line 1558
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1559
    .line 1560
    .line 1561
    move-result-object p3

    .line 1562
    new-instance v0, Lut4;

    .line 1563
    .line 1564
    invoke-direct {v0, p2, p0, v4}, Lut4;-><init>(Lqd1;Ljava/lang/String;I)V

    .line 1565
    .line 1566
    .line 1567
    invoke-static {v0, p1, p3}, Lws4;->e(Lut4;Lls4;Lls4;)Lls4;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v7

    .line 1571
    goto/16 :goto_12

    .line 1572
    .line 1573
    :cond_2e
    const-string p0, "Variable name in FOR_OF_LET must be a string"

    .line 1574
    .line 1575
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    goto/16 :goto_12

    .line 1579
    .line 1580
    :pswitch_a
    const-string p0, "FOR_OF_CONST"

    .line 1581
    .line 1582
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object p0

    .line 1589
    instance-of p0, p0, Lss4;

    .line 1590
    .line 1591
    if-eqz p0, :cond_2f

    .line 1592
    .line 1593
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    move-result-object p0

    .line 1597
    check-cast p0, Lls4;

    .line 1598
    .line 1599
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 1600
    .line 1601
    .line 1602
    move-result-object p0

    .line 1603
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object p1

    .line 1607
    check-cast p1, Lls4;

    .line 1608
    .line 1609
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1610
    .line 1611
    check-cast v0, Lpc4;

    .line 1612
    .line 1613
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1614
    .line 1615
    .line 1616
    move-result-object p1

    .line 1617
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object p3

    .line 1621
    check-cast p3, Lls4;

    .line 1622
    .line 1623
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1624
    .line 1625
    check-cast v0, Lpc4;

    .line 1626
    .line 1627
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1628
    .line 1629
    .line 1630
    move-result-object p3

    .line 1631
    new-instance v0, Lut4;

    .line 1632
    .line 1633
    invoke-direct {v0, p2, p0, v6}, Lut4;-><init>(Lqd1;Ljava/lang/String;I)V

    .line 1634
    .line 1635
    .line 1636
    invoke-static {v0, p1, p3}, Lws4;->e(Lut4;Lls4;Lls4;)Lls4;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v7

    .line 1640
    goto/16 :goto_12

    .line 1641
    .line 1642
    :cond_2f
    const-string p0, "Variable name in FOR_OF_CONST must be a string"

    .line 1643
    .line 1644
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_12

    .line 1648
    .line 1649
    :pswitch_b
    const-string p0, "FOR_OF"

    .line 1650
    .line 1651
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object p0

    .line 1658
    instance-of p0, p0, Lss4;

    .line 1659
    .line 1660
    if-eqz p0, :cond_30

    .line 1661
    .line 1662
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object p0

    .line 1666
    check-cast p0, Lls4;

    .line 1667
    .line 1668
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object p0

    .line 1672
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1673
    .line 1674
    .line 1675
    move-result-object p1

    .line 1676
    check-cast p1, Lls4;

    .line 1677
    .line 1678
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1679
    .line 1680
    check-cast v0, Lpc4;

    .line 1681
    .line 1682
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1683
    .line 1684
    .line 1685
    move-result-object p1

    .line 1686
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object p3

    .line 1690
    check-cast p3, Lls4;

    .line 1691
    .line 1692
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1693
    .line 1694
    check-cast v0, Lpc4;

    .line 1695
    .line 1696
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1697
    .line 1698
    .line 1699
    move-result-object p3

    .line 1700
    new-instance v0, Lut4;

    .line 1701
    .line 1702
    invoke-direct {v0, p2, p0, v5}, Lut4;-><init>(Lqd1;Ljava/lang/String;I)V

    .line 1703
    .line 1704
    .line 1705
    invoke-static {v0, p1, p3}, Lws4;->e(Lut4;Lls4;Lls4;)Lls4;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v7

    .line 1709
    goto/16 :goto_12

    .line 1710
    .line 1711
    :cond_30
    const-string p0, "Variable name in FOR_OF must be a string"

    .line 1712
    .line 1713
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_12

    .line 1717
    .line 1718
    :pswitch_c
    const-string p0, "FOR_LET"

    .line 1719
    .line 1720
    invoke-static {p0, v9, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object p0

    .line 1727
    check-cast p0, Lls4;

    .line 1728
    .line 1729
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1730
    .line 1731
    check-cast p1, Lpc4;

    .line 1732
    .line 1733
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1734
    .line 1735
    check-cast v0, Lpc4;

    .line 1736
    .line 1737
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1738
    .line 1739
    .line 1740
    move-result-object p0

    .line 1741
    instance-of p1, p0, Lvn4;

    .line 1742
    .line 1743
    if-eqz p1, :cond_36

    .line 1744
    .line 1745
    check-cast p0, Lvn4;

    .line 1746
    .line 1747
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object p1

    .line 1751
    check-cast p1, Lls4;

    .line 1752
    .line 1753
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v4

    .line 1757
    check-cast v4, Lls4;

    .line 1758
    .line 1759
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object p3

    .line 1763
    check-cast p3, Lls4;

    .line 1764
    .line 1765
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1766
    .line 1767
    .line 1768
    move-result-object p3

    .line 1769
    invoke-virtual {p2}, Lqd1;->O()Lqd1;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v3

    .line 1773
    move v5, v6

    .line 1774
    :goto_c
    invoke-virtual {p0}, Lvn4;->l()I

    .line 1775
    .line 1776
    .line 1777
    move-result v7

    .line 1778
    if-ge v5, v7, :cond_31

    .line 1779
    .line 1780
    invoke-virtual {p0, v5}, Lvn4;->m(I)Lls4;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v7

    .line 1784
    invoke-interface {v7}, Lls4;->zzc()Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v7

    .line 1788
    invoke-virtual {p2, v7}, Lqd1;->S(Ljava/lang/String;)Lls4;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v8

    .line 1792
    invoke-virtual {v3, v7, v8}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 1793
    .line 1794
    .line 1795
    add-int/lit8 v5, v5, 0x1

    .line 1796
    .line 1797
    goto :goto_c

    .line 1798
    :cond_31
    :goto_d
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v5

    .line 1802
    invoke-interface {v5}, Lls4;->zze()Ljava/lang/Boolean;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v5

    .line 1806
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1807
    .line 1808
    .line 1809
    move-result v5

    .line 1810
    if-eqz v5, :cond_35

    .line 1811
    .line 1812
    move-object v5, p3

    .line 1813
    check-cast v5, Lvn4;

    .line 1814
    .line 1815
    invoke-virtual {p2, v5}, Lqd1;->M(Lvn4;)Lls4;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v5

    .line 1819
    instance-of v7, v5, Ljp4;

    .line 1820
    .line 1821
    if-eqz v7, :cond_33

    .line 1822
    .line 1823
    move-object v7, v5

    .line 1824
    check-cast v7, Ljp4;

    .line 1825
    .line 1826
    iget-object v5, v7, Ljp4;->o:Ljava/lang/String;

    .line 1827
    .line 1828
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1829
    .line 1830
    .line 1831
    move-result v8

    .line 1832
    if-eqz v8, :cond_32

    .line 1833
    .line 1834
    sget-object v7, Lls4;->f:Lvs4;

    .line 1835
    .line 1836
    goto/16 :goto_12

    .line 1837
    .line 1838
    :cond_32
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1839
    .line 1840
    .line 1841
    move-result v5

    .line 1842
    if-eqz v5, :cond_33

    .line 1843
    .line 1844
    goto/16 :goto_12

    .line 1845
    .line 1846
    :cond_33
    invoke-virtual {p2}, Lqd1;->O()Lqd1;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v5

    .line 1850
    move v7, v6

    .line 1851
    :goto_e
    invoke-virtual {p0}, Lvn4;->l()I

    .line 1852
    .line 1853
    .line 1854
    move-result v8

    .line 1855
    if-ge v7, v8, :cond_34

    .line 1856
    .line 1857
    invoke-virtual {p0, v7}, Lvn4;->m(I)Lls4;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v8

    .line 1861
    invoke-interface {v8}, Lls4;->zzc()Ljava/lang/String;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v8

    .line 1865
    invoke-virtual {v3, v8}, Lqd1;->S(Ljava/lang/String;)Lls4;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v9

    .line 1869
    invoke-virtual {v5, v8, v9}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 1870
    .line 1871
    .line 1872
    add-int/lit8 v7, v7, 0x1

    .line 1873
    .line 1874
    goto :goto_e

    .line 1875
    :cond_34
    invoke-virtual {v5, v4}, Lqd1;->L(Lls4;)Lls4;

    .line 1876
    .line 1877
    .line 1878
    move-object v3, v5

    .line 1879
    goto :goto_d

    .line 1880
    :cond_35
    sget-object v7, Lls4;->f:Lvs4;

    .line 1881
    .line 1882
    goto/16 :goto_12

    .line 1883
    .line 1884
    :cond_36
    const-string p0, "Initializer variables in FOR_LET must be an ArrayList"

    .line 1885
    .line 1886
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 1887
    .line 1888
    .line 1889
    goto/16 :goto_12

    .line 1890
    .line 1891
    :pswitch_d
    const-string p0, "FOR_IN_LET"

    .line 1892
    .line 1893
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1897
    .line 1898
    .line 1899
    move-result-object p0

    .line 1900
    instance-of p0, p0, Lss4;

    .line 1901
    .line 1902
    if-eqz p0, :cond_3a

    .line 1903
    .line 1904
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1905
    .line 1906
    .line 1907
    move-result-object p0

    .line 1908
    check-cast p0, Lls4;

    .line 1909
    .line 1910
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 1911
    .line 1912
    .line 1913
    move-result-object p0

    .line 1914
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1915
    .line 1916
    .line 1917
    move-result-object p1

    .line 1918
    check-cast p1, Lls4;

    .line 1919
    .line 1920
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1921
    .line 1922
    check-cast v0, Lpc4;

    .line 1923
    .line 1924
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1925
    .line 1926
    .line 1927
    move-result-object p1

    .line 1928
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1929
    .line 1930
    .line 1931
    move-result-object p3

    .line 1932
    check-cast p3, Lls4;

    .line 1933
    .line 1934
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 1935
    .line 1936
    check-cast v0, Lpc4;

    .line 1937
    .line 1938
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 1939
    .line 1940
    .line 1941
    move-result-object p3

    .line 1942
    invoke-interface {p1}, Lls4;->a()Ljava/util/Iterator;

    .line 1943
    .line 1944
    .line 1945
    move-result-object p1

    .line 1946
    if-eqz p1, :cond_39

    .line 1947
    .line 1948
    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1949
    .line 1950
    .line 1951
    move-result v0

    .line 1952
    if-eqz v0, :cond_39

    .line 1953
    .line 1954
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v0

    .line 1958
    check-cast v0, Lls4;

    .line 1959
    .line 1960
    invoke-virtual {p2}, Lqd1;->O()Lqd1;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v3

    .line 1964
    invoke-virtual {v3, p0, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 1965
    .line 1966
    .line 1967
    move-object v0, p3

    .line 1968
    check-cast v0, Lvn4;

    .line 1969
    .line 1970
    invoke-virtual {v3, v0}, Lqd1;->M(Lvn4;)Lls4;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    instance-of v3, v0, Ljp4;

    .line 1975
    .line 1976
    if-eqz v3, :cond_37

    .line 1977
    .line 1978
    check-cast v0, Ljp4;

    .line 1979
    .line 1980
    iget-object v3, v0, Ljp4;->o:Ljava/lang/String;

    .line 1981
    .line 1982
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1983
    .line 1984
    .line 1985
    move-result v4

    .line 1986
    if-eqz v4, :cond_38

    .line 1987
    .line 1988
    sget-object p0, Lls4;->f:Lvs4;

    .line 1989
    .line 1990
    :goto_f
    move-object v7, p0

    .line 1991
    goto/16 :goto_12

    .line 1992
    .line 1993
    :cond_38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1994
    .line 1995
    .line 1996
    move-result v3

    .line 1997
    if-eqz v3, :cond_37

    .line 1998
    .line 1999
    :goto_10
    move-object v7, v0

    .line 2000
    goto/16 :goto_12

    .line 2001
    .line 2002
    :cond_39
    sget-object p0, Lls4;->f:Lvs4;

    .line 2003
    .line 2004
    goto :goto_f

    .line 2005
    :cond_3a
    const-string p0, "Variable name in FOR_IN_LET must be a string"

    .line 2006
    .line 2007
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    goto/16 :goto_12

    .line 2011
    .line 2012
    :pswitch_e
    const-string p0, "FOR_IN_CONST"

    .line 2013
    .line 2014
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2015
    .line 2016
    .line 2017
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object p0

    .line 2021
    instance-of p0, p0, Lss4;

    .line 2022
    .line 2023
    if-eqz p0, :cond_3b

    .line 2024
    .line 2025
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object p0

    .line 2029
    check-cast p0, Lls4;

    .line 2030
    .line 2031
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 2032
    .line 2033
    .line 2034
    move-result-object p0

    .line 2035
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2036
    .line 2037
    .line 2038
    move-result-object p1

    .line 2039
    check-cast p1, Lls4;

    .line 2040
    .line 2041
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2042
    .line 2043
    check-cast v0, Lpc4;

    .line 2044
    .line 2045
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2046
    .line 2047
    .line 2048
    move-result-object p1

    .line 2049
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2050
    .line 2051
    .line 2052
    move-result-object p3

    .line 2053
    check-cast p3, Lls4;

    .line 2054
    .line 2055
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2056
    .line 2057
    check-cast v0, Lpc4;

    .line 2058
    .line 2059
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2060
    .line 2061
    .line 2062
    move-result-object p3

    .line 2063
    new-instance v0, Lut4;

    .line 2064
    .line 2065
    invoke-direct {v0, p2, p0, v6}, Lut4;-><init>(Lqd1;Ljava/lang/String;I)V

    .line 2066
    .line 2067
    .line 2068
    invoke-interface {p1}, Lls4;->a()Ljava/util/Iterator;

    .line 2069
    .line 2070
    .line 2071
    move-result-object p0

    .line 2072
    invoke-static {v0, p0, p3}, Lws4;->g(Lut4;Ljava/util/Iterator;Lls4;)Lls4;

    .line 2073
    .line 2074
    .line 2075
    move-result-object v7

    .line 2076
    goto/16 :goto_12

    .line 2077
    .line 2078
    :cond_3b
    const-string p0, "Variable name in FOR_IN_CONST must be a string"

    .line 2079
    .line 2080
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 2081
    .line 2082
    .line 2083
    goto/16 :goto_12

    .line 2084
    .line 2085
    :pswitch_f
    const-string p0, "FOR_IN"

    .line 2086
    .line 2087
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2088
    .line 2089
    .line 2090
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2091
    .line 2092
    .line 2093
    move-result-object p0

    .line 2094
    instance-of p0, p0, Lss4;

    .line 2095
    .line 2096
    if-eqz p0, :cond_3f

    .line 2097
    .line 2098
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2099
    .line 2100
    .line 2101
    move-result-object p0

    .line 2102
    check-cast p0, Lls4;

    .line 2103
    .line 2104
    invoke-interface {p0}, Lls4;->zzc()Ljava/lang/String;

    .line 2105
    .line 2106
    .line 2107
    move-result-object p0

    .line 2108
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2109
    .line 2110
    .line 2111
    move-result-object p1

    .line 2112
    check-cast p1, Lls4;

    .line 2113
    .line 2114
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2115
    .line 2116
    check-cast v0, Lpc4;

    .line 2117
    .line 2118
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2119
    .line 2120
    .line 2121
    move-result-object p1

    .line 2122
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2123
    .line 2124
    .line 2125
    move-result-object p3

    .line 2126
    check-cast p3, Lls4;

    .line 2127
    .line 2128
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2129
    .line 2130
    check-cast v0, Lpc4;

    .line 2131
    .line 2132
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2133
    .line 2134
    .line 2135
    move-result-object p3

    .line 2136
    invoke-interface {p1}, Lls4;->a()Ljava/util/Iterator;

    .line 2137
    .line 2138
    .line 2139
    move-result-object p1

    .line 2140
    if-eqz p1, :cond_3e

    .line 2141
    .line 2142
    :cond_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2143
    .line 2144
    .line 2145
    move-result v0

    .line 2146
    if-eqz v0, :cond_3e

    .line 2147
    .line 2148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v0

    .line 2152
    check-cast v0, Lls4;

    .line 2153
    .line 2154
    invoke-virtual {p2, p0, v0}, Lqd1;->R(Ljava/lang/String;Lls4;)V

    .line 2155
    .line 2156
    .line 2157
    move-object v0, p3

    .line 2158
    check-cast v0, Lvn4;

    .line 2159
    .line 2160
    invoke-virtual {p2, v0}, Lqd1;->M(Lvn4;)Lls4;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v0

    .line 2164
    instance-of v3, v0, Ljp4;

    .line 2165
    .line 2166
    if-eqz v3, :cond_3c

    .line 2167
    .line 2168
    check-cast v0, Ljp4;

    .line 2169
    .line 2170
    iget-object v3, v0, Ljp4;->o:Ljava/lang/String;

    .line 2171
    .line 2172
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2173
    .line 2174
    .line 2175
    move-result v4

    .line 2176
    if-eqz v4, :cond_3d

    .line 2177
    .line 2178
    sget-object p0, Lls4;->f:Lvs4;

    .line 2179
    .line 2180
    goto/16 :goto_f

    .line 2181
    .line 2182
    :cond_3d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v3

    .line 2186
    if-eqz v3, :cond_3c

    .line 2187
    .line 2188
    goto/16 :goto_10

    .line 2189
    .line 2190
    :cond_3e
    sget-object p0, Lls4;->f:Lvs4;

    .line 2191
    .line 2192
    goto/16 :goto_f

    .line 2193
    .line 2194
    :cond_3f
    const-string p0, "Variable name in FOR_IN must be a string"

    .line 2195
    .line 2196
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 2197
    .line 2198
    .line 2199
    goto/16 :goto_12

    .line 2200
    .line 2201
    :cond_40
    const-string p0, "WHILE"

    .line 2202
    .line 2203
    invoke-static {p0, v9, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2204
    .line 2205
    .line 2206
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2207
    .line 2208
    .line 2209
    move-result-object p0

    .line 2210
    check-cast p0, Lls4;

    .line 2211
    .line 2212
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2213
    .line 2214
    .line 2215
    move-result-object p1

    .line 2216
    check-cast p1, Lls4;

    .line 2217
    .line 2218
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v0

    .line 2222
    check-cast v0, Lls4;

    .line 2223
    .line 2224
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2225
    .line 2226
    .line 2227
    move-result-object p3

    .line 2228
    check-cast p3, Lls4;

    .line 2229
    .line 2230
    iget-object v3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2231
    .line 2232
    check-cast v3, Lpc4;

    .line 2233
    .line 2234
    iget-object v4, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2235
    .line 2236
    check-cast v4, Lpc4;

    .line 2237
    .line 2238
    invoke-virtual {v3, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2239
    .line 2240
    .line 2241
    move-result-object p3

    .line 2242
    invoke-virtual {v4, p2, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v0

    .line 2246
    invoke-interface {v0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v0

    .line 2250
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2251
    .line 2252
    .line 2253
    move-result v0

    .line 2254
    if-nez v0, :cond_41

    .line 2255
    .line 2256
    goto :goto_11

    .line 2257
    :cond_41
    move-object v0, p3

    .line 2258
    check-cast v0, Lvn4;

    .line 2259
    .line 2260
    invoke-virtual {p2, v0}, Lqd1;->M(Lvn4;)Lls4;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v0

    .line 2264
    instance-of v3, v0, Ljp4;

    .line 2265
    .line 2266
    if-eqz v3, :cond_43

    .line 2267
    .line 2268
    move-object v7, v0

    .line 2269
    check-cast v7, Ljp4;

    .line 2270
    .line 2271
    iget-object v0, v7, Ljp4;->o:Ljava/lang/String;

    .line 2272
    .line 2273
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v3

    .line 2277
    if-eqz v3, :cond_42

    .line 2278
    .line 2279
    sget-object v7, Lls4;->f:Lvs4;

    .line 2280
    .line 2281
    goto :goto_12

    .line 2282
    :cond_42
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2283
    .line 2284
    .line 2285
    move-result v0

    .line 2286
    if-eqz v0, :cond_43

    .line 2287
    .line 2288
    goto :goto_12

    .line 2289
    :cond_43
    :goto_11
    invoke-virtual {v4, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v0

    .line 2293
    invoke-interface {v0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v0

    .line 2297
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2298
    .line 2299
    .line 2300
    move-result v0

    .line 2301
    if-eqz v0, :cond_46

    .line 2302
    .line 2303
    move-object v0, p3

    .line 2304
    check-cast v0, Lvn4;

    .line 2305
    .line 2306
    invoke-virtual {p2, v0}, Lqd1;->M(Lvn4;)Lls4;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0

    .line 2310
    instance-of v3, v0, Ljp4;

    .line 2311
    .line 2312
    if-eqz v3, :cond_45

    .line 2313
    .line 2314
    move-object v7, v0

    .line 2315
    check-cast v7, Ljp4;

    .line 2316
    .line 2317
    iget-object v0, v7, Ljp4;->o:Ljava/lang/String;

    .line 2318
    .line 2319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2320
    .line 2321
    .line 2322
    move-result v3

    .line 2323
    if-eqz v3, :cond_44

    .line 2324
    .line 2325
    sget-object v7, Lls4;->f:Lvs4;

    .line 2326
    .line 2327
    goto :goto_12

    .line 2328
    :cond_44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v0

    .line 2332
    if-eqz v0, :cond_45

    .line 2333
    .line 2334
    goto :goto_12

    .line 2335
    :cond_45
    invoke-virtual {p2, p1}, Lqd1;->L(Lls4;)Lls4;

    .line 2336
    .line 2337
    .line 2338
    goto :goto_11

    .line 2339
    :cond_46
    sget-object v7, Lls4;->f:Lvs4;

    .line 2340
    .line 2341
    :goto_12
    return-object v7

    .line 2342
    :pswitch_10
    sget-object v0, Lfu4;->o:Lfu4;

    .line 2343
    .line 2344
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v0

    .line 2348
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 2349
    .line 2350
    .line 2351
    move-result v0

    .line 2352
    if-eq v0, v4, :cond_49

    .line 2353
    .line 2354
    const/16 v1, 0x2f

    .line 2355
    .line 2356
    if-eq v0, v1, :cond_48

    .line 2357
    .line 2358
    const/16 v1, 0x32

    .line 2359
    .line 2360
    if-ne v0, v1, :cond_47

    .line 2361
    .line 2362
    const-string p0, "OR"

    .line 2363
    .line 2364
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2365
    .line 2366
    .line 2367
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object p0

    .line 2371
    check-cast p0, Lls4;

    .line 2372
    .line 2373
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2374
    .line 2375
    check-cast p1, Lpc4;

    .line 2376
    .line 2377
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2378
    .line 2379
    .line 2380
    move-result-object p0

    .line 2381
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2382
    .line 2383
    .line 2384
    move-result-object p1

    .line 2385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2386
    .line 2387
    .line 2388
    move-result p1

    .line 2389
    if-nez p1, :cond_4a

    .line 2390
    .line 2391
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2392
    .line 2393
    .line 2394
    move-result-object p0

    .line 2395
    check-cast p0, Lls4;

    .line 2396
    .line 2397
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2398
    .line 2399
    check-cast p1, Lpc4;

    .line 2400
    .line 2401
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2402
    .line 2403
    .line 2404
    move-result-object p0

    .line 2405
    goto :goto_13

    .line 2406
    :cond_47
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 2407
    .line 2408
    .line 2409
    throw v7

    .line 2410
    :cond_48
    const-string p0, "NOT"

    .line 2411
    .line 2412
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2413
    .line 2414
    .line 2415
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object p0

    .line 2419
    check-cast p0, Lls4;

    .line 2420
    .line 2421
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2422
    .line 2423
    check-cast p1, Lpc4;

    .line 2424
    .line 2425
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2426
    .line 2427
    .line 2428
    move-result-object p0

    .line 2429
    new-instance p1, Loo4;

    .line 2430
    .line 2431
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2432
    .line 2433
    .line 2434
    move-result-object p0

    .line 2435
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2436
    .line 2437
    .line 2438
    move-result p0

    .line 2439
    xor-int/2addr p0, v4

    .line 2440
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2441
    .line 2442
    .line 2443
    move-result-object p0

    .line 2444
    invoke-direct {p1, p0}, Loo4;-><init>(Ljava/lang/Boolean;)V

    .line 2445
    .line 2446
    .line 2447
    move-object p0, p1

    .line 2448
    goto :goto_13

    .line 2449
    :cond_49
    const-string p0, "AND"

    .line 2450
    .line 2451
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2452
    .line 2453
    .line 2454
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2455
    .line 2456
    .line 2457
    move-result-object p0

    .line 2458
    check-cast p0, Lls4;

    .line 2459
    .line 2460
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2461
    .line 2462
    check-cast p1, Lpc4;

    .line 2463
    .line 2464
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2465
    .line 2466
    .line 2467
    move-result-object p0

    .line 2468
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2469
    .line 2470
    .line 2471
    move-result-object p1

    .line 2472
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2473
    .line 2474
    .line 2475
    move-result p1

    .line 2476
    if-eqz p1, :cond_4a

    .line 2477
    .line 2478
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2479
    .line 2480
    .line 2481
    move-result-object p0

    .line 2482
    check-cast p0, Lls4;

    .line 2483
    .line 2484
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2485
    .line 2486
    check-cast p1, Lpc4;

    .line 2487
    .line 2488
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2489
    .line 2490
    .line 2491
    move-result-object p0

    .line 2492
    :cond_4a
    :goto_13
    return-object p0

    .line 2493
    :pswitch_11
    sget-object v0, Lfu4;->o:Lfu4;

    .line 2494
    .line 2495
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v0

    .line 2499
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 2500
    .line 2501
    .line 2502
    move-result v0

    .line 2503
    if-eq v0, v5, :cond_63

    .line 2504
    .line 2505
    const/16 v8, 0xf

    .line 2506
    .line 2507
    const-string v9, "BREAK"

    .line 2508
    .line 2509
    if-eq v0, v8, :cond_62

    .line 2510
    .line 2511
    const/16 v8, 0x19

    .line 2512
    .line 2513
    if-eq v0, v8, :cond_61

    .line 2514
    .line 2515
    const/16 v8, 0x29

    .line 2516
    .line 2517
    if-eq v0, v8, :cond_5d

    .line 2518
    .line 2519
    const/16 v8, 0x36

    .line 2520
    .line 2521
    if-eq v0, v8, :cond_5c

    .line 2522
    .line 2523
    const/16 v8, 0x39

    .line 2524
    .line 2525
    if-eq v0, v8, :cond_5a

    .line 2526
    .line 2527
    const/16 v8, 0x13

    .line 2528
    .line 2529
    if-eq v0, v8, :cond_57

    .line 2530
    .line 2531
    const/16 v8, 0x14

    .line 2532
    .line 2533
    if-eq v0, v8, :cond_55

    .line 2534
    .line 2535
    const/16 v8, 0x3c

    .line 2536
    .line 2537
    if-eq v0, v8, :cond_4d

    .line 2538
    .line 2539
    const/16 v1, 0x3d

    .line 2540
    .line 2541
    if-eq v0, v1, :cond_4b

    .line 2542
    .line 2543
    packed-switch v0, :pswitch_data_4

    .line 2544
    .line 2545
    .line 2546
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 2547
    .line 2548
    .line 2549
    throw v7

    .line 2550
    :pswitch_12
    invoke-static {v9, v6, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2551
    .line 2552
    .line 2553
    sget-object v7, Lls4;->i:Ljp4;

    .line 2554
    .line 2555
    goto/16 :goto_19

    .line 2556
    .line 2557
    :pswitch_13
    invoke-virtual {p2}, Lqd1;->O()Lqd1;

    .line 2558
    .line 2559
    .line 2560
    move-result-object p0

    .line 2561
    new-instance p1, Lvn4;

    .line 2562
    .line 2563
    invoke-direct {p1, p3}, Lvn4;-><init>(Ljava/util/List;)V

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {p0, p1}, Lqd1;->M(Lvn4;)Lls4;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v7

    .line 2570
    goto/16 :goto_19

    .line 2571
    .line 2572
    :cond_4b
    const-string p0, "TERNARY"

    .line 2573
    .line 2574
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2575
    .line 2576
    .line 2577
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2578
    .line 2579
    .line 2580
    move-result-object p0

    .line 2581
    check-cast p0, Lls4;

    .line 2582
    .line 2583
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2584
    .line 2585
    check-cast p1, Lpc4;

    .line 2586
    .line 2587
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2588
    .line 2589
    check-cast v0, Lpc4;

    .line 2590
    .line 2591
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2592
    .line 2593
    .line 2594
    move-result-object p0

    .line 2595
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2596
    .line 2597
    .line 2598
    move-result-object p0

    .line 2599
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2600
    .line 2601
    .line 2602
    move-result p0

    .line 2603
    if-eqz p0, :cond_4c

    .line 2604
    .line 2605
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2606
    .line 2607
    .line 2608
    move-result-object p0

    .line 2609
    check-cast p0, Lls4;

    .line 2610
    .line 2611
    invoke-virtual {v0, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v7

    .line 2615
    goto/16 :goto_19

    .line 2616
    .line 2617
    :cond_4c
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2618
    .line 2619
    .line 2620
    move-result-object p0

    .line 2621
    check-cast p0, Lls4;

    .line 2622
    .line 2623
    invoke-virtual {v0, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v7

    .line 2627
    goto/16 :goto_19

    .line 2628
    .line 2629
    :cond_4d
    const-string p0, "SWITCH"

    .line 2630
    .line 2631
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2632
    .line 2633
    .line 2634
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2635
    .line 2636
    .line 2637
    move-result-object p0

    .line 2638
    check-cast p0, Lls4;

    .line 2639
    .line 2640
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2641
    .line 2642
    check-cast p1, Lpc4;

    .line 2643
    .line 2644
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2645
    .line 2646
    check-cast v0, Lpc4;

    .line 2647
    .line 2648
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2649
    .line 2650
    .line 2651
    move-result-object p0

    .line 2652
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2653
    .line 2654
    .line 2655
    move-result-object p1

    .line 2656
    check-cast p1, Lls4;

    .line 2657
    .line 2658
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2659
    .line 2660
    .line 2661
    move-result-object p1

    .line 2662
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2663
    .line 2664
    .line 2665
    move-result-object p3

    .line 2666
    check-cast p3, Lls4;

    .line 2667
    .line 2668
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2669
    .line 2670
    .line 2671
    move-result-object p3

    .line 2672
    instance-of v3, p1, Lvn4;

    .line 2673
    .line 2674
    if-eqz v3, :cond_54

    .line 2675
    .line 2676
    instance-of v3, p3, Lvn4;

    .line 2677
    .line 2678
    if-eqz v3, :cond_53

    .line 2679
    .line 2680
    check-cast p1, Lvn4;

    .line 2681
    .line 2682
    check-cast p3, Lvn4;

    .line 2683
    .line 2684
    move v3, v6

    .line 2685
    move v5, v3

    .line 2686
    :goto_14
    invoke-virtual {p1}, Lvn4;->l()I

    .line 2687
    .line 2688
    .line 2689
    move-result v7

    .line 2690
    if-ge v3, v7, :cond_51

    .line 2691
    .line 2692
    if-nez v5, :cond_4f

    .line 2693
    .line 2694
    invoke-virtual {p1, v3}, Lvn4;->m(I)Lls4;

    .line 2695
    .line 2696
    .line 2697
    move-result-object v5

    .line 2698
    invoke-virtual {v0, p2, v5}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v5

    .line 2702
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2703
    .line 2704
    .line 2705
    move-result v5

    .line 2706
    if-eqz v5, :cond_4e

    .line 2707
    .line 2708
    goto :goto_15

    .line 2709
    :cond_4e
    move v5, v6

    .line 2710
    goto :goto_16

    .line 2711
    :cond_4f
    :goto_15
    invoke-virtual {p3, v3}, Lvn4;->m(I)Lls4;

    .line 2712
    .line 2713
    .line 2714
    move-result-object v5

    .line 2715
    invoke-virtual {v0, p2, v5}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v7

    .line 2719
    instance-of v5, v7, Ljp4;

    .line 2720
    .line 2721
    if-eqz v5, :cond_50

    .line 2722
    .line 2723
    move-object p0, v7

    .line 2724
    check-cast p0, Ljp4;

    .line 2725
    .line 2726
    iget-object p0, p0, Ljp4;->o:Ljava/lang/String;

    .line 2727
    .line 2728
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2729
    .line 2730
    .line 2731
    move-result p0

    .line 2732
    if-eqz p0, :cond_66

    .line 2733
    .line 2734
    sget-object v7, Lls4;->f:Lvs4;

    .line 2735
    .line 2736
    goto/16 :goto_19

    .line 2737
    .line 2738
    :cond_50
    move v5, v4

    .line 2739
    :goto_16
    add-int/lit8 v3, v3, 0x1

    .line 2740
    .line 2741
    goto :goto_14

    .line 2742
    :cond_51
    invoke-virtual {p1}, Lvn4;->l()I

    .line 2743
    .line 2744
    .line 2745
    move-result p0

    .line 2746
    add-int/2addr p0, v4

    .line 2747
    invoke-virtual {p3}, Lvn4;->l()I

    .line 2748
    .line 2749
    .line 2750
    move-result v1

    .line 2751
    if-ne p0, v1, :cond_52

    .line 2752
    .line 2753
    invoke-virtual {p1}, Lvn4;->l()I

    .line 2754
    .line 2755
    .line 2756
    move-result p0

    .line 2757
    invoke-virtual {p3, p0}, Lvn4;->m(I)Lls4;

    .line 2758
    .line 2759
    .line 2760
    move-result-object p0

    .line 2761
    invoke-virtual {v0, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2762
    .line 2763
    .line 2764
    move-result-object v7

    .line 2765
    instance-of p0, v7, Ljp4;

    .line 2766
    .line 2767
    if-eqz p0, :cond_52

    .line 2768
    .line 2769
    move-object p0, v7

    .line 2770
    check-cast p0, Ljp4;

    .line 2771
    .line 2772
    iget-object p0, p0, Ljp4;->o:Ljava/lang/String;

    .line 2773
    .line 2774
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2775
    .line 2776
    .line 2777
    move-result p1

    .line 2778
    if-nez p1, :cond_66

    .line 2779
    .line 2780
    const-string p1, "continue"

    .line 2781
    .line 2782
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2783
    .line 2784
    .line 2785
    move-result p0

    .line 2786
    if-nez p0, :cond_66

    .line 2787
    .line 2788
    :cond_52
    sget-object v7, Lls4;->f:Lvs4;

    .line 2789
    .line 2790
    goto/16 :goto_19

    .line 2791
    .line 2792
    :cond_53
    const-string p0, "Malformed SWITCH statement, case statements are not a list"

    .line 2793
    .line 2794
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 2795
    .line 2796
    .line 2797
    goto/16 :goto_19

    .line 2798
    .line 2799
    :cond_54
    const-string p0, "Malformed SWITCH statement, cases are not a list"

    .line 2800
    .line 2801
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 2802
    .line 2803
    .line 2804
    goto/16 :goto_19

    .line 2805
    .line 2806
    :cond_55
    const-string p0, "DEFINE_FUNCTION"

    .line 2807
    .line 2808
    invoke-static {p0, v5, p3}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 2809
    .line 2810
    .line 2811
    invoke-static {p2, p3}, Lws4;->c(Lqd1;Ljava/util/List;)Lis4;

    .line 2812
    .line 2813
    .line 2814
    move-result-object v7

    .line 2815
    iget-object p0, v7, Lzq4;->n:Ljava/lang/String;

    .line 2816
    .line 2817
    if-nez p0, :cond_56

    .line 2818
    .line 2819
    const-string p0, ""

    .line 2820
    .line 2821
    invoke-virtual {p2, p0, v7}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 2822
    .line 2823
    .line 2824
    goto/16 :goto_19

    .line 2825
    .line 2826
    :cond_56
    invoke-virtual {p2, p0, v7}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 2827
    .line 2828
    .line 2829
    goto/16 :goto_19

    .line 2830
    .line 2831
    :cond_57
    :pswitch_14
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2832
    .line 2833
    .line 2834
    move-result p0

    .line 2835
    if-eqz p0, :cond_58

    .line 2836
    .line 2837
    sget-object v7, Lls4;->f:Lvs4;

    .line 2838
    .line 2839
    goto/16 :goto_19

    .line 2840
    .line 2841
    :cond_58
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2842
    .line 2843
    .line 2844
    move-result-object p0

    .line 2845
    check-cast p0, Lls4;

    .line 2846
    .line 2847
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2848
    .line 2849
    check-cast p1, Lpc4;

    .line 2850
    .line 2851
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2852
    .line 2853
    .line 2854
    move-result-object p0

    .line 2855
    instance-of p1, p0, Lvn4;

    .line 2856
    .line 2857
    if-eqz p1, :cond_59

    .line 2858
    .line 2859
    check-cast p0, Lvn4;

    .line 2860
    .line 2861
    invoke-virtual {p2, p0}, Lqd1;->M(Lvn4;)Lls4;

    .line 2862
    .line 2863
    .line 2864
    move-result-object v7

    .line 2865
    goto/16 :goto_19

    .line 2866
    .line 2867
    :cond_59
    sget-object v7, Lls4;->f:Lvs4;

    .line 2868
    .line 2869
    goto/16 :goto_19

    .line 2870
    .line 2871
    :cond_5a
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2872
    .line 2873
    .line 2874
    move-result p0

    .line 2875
    if-eqz p0, :cond_5b

    .line 2876
    .line 2877
    sget-object v7, Lls4;->j:Ljp4;

    .line 2878
    .line 2879
    goto/16 :goto_19

    .line 2880
    .line 2881
    :cond_5b
    const-string p0, "RETURN"

    .line 2882
    .line 2883
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 2884
    .line 2885
    .line 2886
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2887
    .line 2888
    .line 2889
    move-result-object p0

    .line 2890
    check-cast p0, Lls4;

    .line 2891
    .line 2892
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2893
    .line 2894
    check-cast p1, Lpc4;

    .line 2895
    .line 2896
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2897
    .line 2898
    .line 2899
    move-result-object p0

    .line 2900
    new-instance v7, Ljp4;

    .line 2901
    .line 2902
    invoke-direct {v7, v2, p0}, Ljp4;-><init>(Ljava/lang/String;Lls4;)V

    .line 2903
    .line 2904
    .line 2905
    goto/16 :goto_19

    .line 2906
    .line 2907
    :cond_5c
    new-instance v7, Lvn4;

    .line 2908
    .line 2909
    invoke-direct {v7, p3}, Lvn4;-><init>(Ljava/util/List;)V

    .line 2910
    .line 2911
    .line 2912
    goto/16 :goto_19

    .line 2913
    .line 2914
    :cond_5d
    const-string p0, "IF"

    .line 2915
    .line 2916
    invoke-static {p0, v5, p3}, Lai4;->h(Ljava/lang/String;ILjava/util/List;)V

    .line 2917
    .line 2918
    .line 2919
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2920
    .line 2921
    .line 2922
    move-result-object p0

    .line 2923
    check-cast p0, Lls4;

    .line 2924
    .line 2925
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2926
    .line 2927
    check-cast p1, Lpc4;

    .line 2928
    .line 2929
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 2930
    .line 2931
    check-cast v0, Lpc4;

    .line 2932
    .line 2933
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2934
    .line 2935
    .line 2936
    move-result-object p0

    .line 2937
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2938
    .line 2939
    .line 2940
    move-result-object p1

    .line 2941
    check-cast p1, Lls4;

    .line 2942
    .line 2943
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2944
    .line 2945
    .line 2946
    move-result-object p1

    .line 2947
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 2948
    .line 2949
    .line 2950
    move-result v1

    .line 2951
    if-le v1, v5, :cond_5e

    .line 2952
    .line 2953
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2954
    .line 2955
    .line 2956
    move-result-object p3

    .line 2957
    check-cast p3, Lls4;

    .line 2958
    .line 2959
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 2960
    .line 2961
    .line 2962
    move-result-object v7

    .line 2963
    :cond_5e
    sget-object p3, Lls4;->f:Lvs4;

    .line 2964
    .line 2965
    invoke-interface {p0}, Lls4;->zze()Ljava/lang/Boolean;

    .line 2966
    .line 2967
    .line 2968
    move-result-object p0

    .line 2969
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2970
    .line 2971
    .line 2972
    move-result p0

    .line 2973
    if-eqz p0, :cond_5f

    .line 2974
    .line 2975
    check-cast p1, Lvn4;

    .line 2976
    .line 2977
    invoke-virtual {p2, p1}, Lqd1;->M(Lvn4;)Lls4;

    .line 2978
    .line 2979
    .line 2980
    move-result-object p0

    .line 2981
    :goto_17
    move-object v7, p0

    .line 2982
    goto :goto_18

    .line 2983
    :cond_5f
    if-eqz v7, :cond_60

    .line 2984
    .line 2985
    check-cast v7, Lvn4;

    .line 2986
    .line 2987
    invoke-virtual {p2, v7}, Lqd1;->M(Lvn4;)Lls4;

    .line 2988
    .line 2989
    .line 2990
    move-result-object p0

    .line 2991
    goto :goto_17

    .line 2992
    :cond_60
    move-object v7, p3

    .line 2993
    :goto_18
    instance-of p0, v7, Ljp4;

    .line 2994
    .line 2995
    if-eq v4, p0, :cond_66

    .line 2996
    .line 2997
    move-object v7, p3

    .line 2998
    goto :goto_19

    .line 2999
    :cond_61
    invoke-static {p2, p3}, Lws4;->c(Lqd1;Ljava/util/List;)Lis4;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v7

    .line 3003
    goto :goto_19

    .line 3004
    :cond_62
    invoke-static {v9, v6, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3005
    .line 3006
    .line 3007
    sget-object v7, Lls4;->h:Ljp4;

    .line 3008
    .line 3009
    goto :goto_19

    .line 3010
    :cond_63
    const-string p0, "APPLY"

    .line 3011
    .line 3012
    invoke-static {p0, v3, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3013
    .line 3014
    .line 3015
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3016
    .line 3017
    .line 3018
    move-result-object p0

    .line 3019
    check-cast p0, Lls4;

    .line 3020
    .line 3021
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3022
    .line 3023
    check-cast p1, Lpc4;

    .line 3024
    .line 3025
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3026
    .line 3027
    check-cast v0, Lpc4;

    .line 3028
    .line 3029
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3030
    .line 3031
    .line 3032
    move-result-object p0

    .line 3033
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3034
    .line 3035
    .line 3036
    move-result-object p1

    .line 3037
    check-cast p1, Lls4;

    .line 3038
    .line 3039
    invoke-virtual {v0, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3040
    .line 3041
    .line 3042
    move-result-object p1

    .line 3043
    invoke-interface {p1}, Lls4;->zzc()Ljava/lang/String;

    .line 3044
    .line 3045
    .line 3046
    move-result-object p1

    .line 3047
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3048
    .line 3049
    .line 3050
    move-result-object p3

    .line 3051
    check-cast p3, Lls4;

    .line 3052
    .line 3053
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3054
    .line 3055
    .line 3056
    move-result-object p3

    .line 3057
    instance-of v0, p3, Lvn4;

    .line 3058
    .line 3059
    if-eqz v0, :cond_65

    .line 3060
    .line 3061
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 3062
    .line 3063
    .line 3064
    move-result v0

    .line 3065
    if-nez v0, :cond_64

    .line 3066
    .line 3067
    check-cast p3, Lvn4;

    .line 3068
    .line 3069
    invoke-virtual {p3}, Lvn4;->i()Ljava/util/List;

    .line 3070
    .line 3071
    .line 3072
    move-result-object p3

    .line 3073
    check-cast p3, Ljava/util/ArrayList;

    .line 3074
    .line 3075
    invoke-interface {p0, p1, p2, p3}, Lls4;->c(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;

    .line 3076
    .line 3077
    .line 3078
    move-result-object v7

    .line 3079
    goto :goto_19

    .line 3080
    :cond_64
    const-string p0, "Function name for apply is undefined"

    .line 3081
    .line 3082
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 3083
    .line 3084
    .line 3085
    goto :goto_19

    .line 3086
    :cond_65
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3087
    .line 3088
    .line 3089
    move-result-object p0

    .line 3090
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 3091
    .line 3092
    .line 3093
    move-result-object p0

    .line 3094
    const-string p1, "Function arguments for Apply are not a list found "

    .line 3095
    .line 3096
    invoke-static {p1, p0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3097
    .line 3098
    .line 3099
    move-result-object p0

    .line 3100
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 3101
    .line 3102
    .line 3103
    :cond_66
    :goto_19
    return-object v7

    .line 3104
    :pswitch_15
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 3105
    .line 3106
    .line 3107
    move-result-object v0

    .line 3108
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v0

    .line 3112
    invoke-static {v0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3113
    .line 3114
    .line 3115
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3116
    .line 3117
    .line 3118
    move-result-object v0

    .line 3119
    check-cast v0, Lls4;

    .line 3120
    .line 3121
    iget-object v1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3122
    .line 3123
    check-cast v1, Lpc4;

    .line 3124
    .line 3125
    invoke-virtual {v1, p2, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3126
    .line 3127
    .line 3128
    move-result-object v0

    .line 3129
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3130
    .line 3131
    .line 3132
    move-result-object p3

    .line 3133
    check-cast p3, Lls4;

    .line 3134
    .line 3135
    iget-object v1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3136
    .line 3137
    check-cast v1, Lpc4;

    .line 3138
    .line 3139
    invoke-virtual {v1, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3140
    .line 3141
    .line 3142
    move-result-object p2

    .line 3143
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 3144
    .line 3145
    .line 3146
    move-result-object p3

    .line 3147
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 3148
    .line 3149
    .line 3150
    move-result p3

    .line 3151
    const/16 v1, 0x17

    .line 3152
    .line 3153
    if-eq p3, v1, :cond_6a

    .line 3154
    .line 3155
    const/16 v1, 0x30

    .line 3156
    .line 3157
    if-eq p3, v1, :cond_69

    .line 3158
    .line 3159
    const/16 v1, 0x2a

    .line 3160
    .line 3161
    if-eq p3, v1, :cond_68

    .line 3162
    .line 3163
    const/16 v1, 0x2b

    .line 3164
    .line 3165
    if-eq p3, v1, :cond_67

    .line 3166
    .line 3167
    packed-switch p3, :pswitch_data_5

    .line 3168
    .line 3169
    .line 3170
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 3171
    .line 3172
    .line 3173
    throw v7

    .line 3174
    :pswitch_16
    invoke-static {v0, p2}, Lai4;->l(Lls4;Lls4;)Z

    .line 3175
    .line 3176
    .line 3177
    move-result p0

    .line 3178
    :goto_1a
    xor-int/2addr p0, v4

    .line 3179
    goto :goto_1b

    .line 3180
    :pswitch_17
    invoke-static {v0, p2}, Lai4;->l(Lls4;Lls4;)Z

    .line 3181
    .line 3182
    .line 3183
    move-result p0

    .line 3184
    goto :goto_1b

    .line 3185
    :pswitch_18
    invoke-static {p2, v0}, Lws4;->h(Lls4;Lls4;)Z

    .line 3186
    .line 3187
    .line 3188
    move-result p0

    .line 3189
    goto :goto_1b

    .line 3190
    :pswitch_19
    invoke-static {p2, v0}, Lws4;->d(Lls4;Lls4;)Z

    .line 3191
    .line 3192
    .line 3193
    move-result p0

    .line 3194
    goto :goto_1b

    .line 3195
    :cond_67
    invoke-static {v0, p2}, Lws4;->h(Lls4;Lls4;)Z

    .line 3196
    .line 3197
    .line 3198
    move-result p0

    .line 3199
    goto :goto_1b

    .line 3200
    :cond_68
    invoke-static {v0, p2}, Lws4;->d(Lls4;Lls4;)Z

    .line 3201
    .line 3202
    .line 3203
    move-result p0

    .line 3204
    goto :goto_1b

    .line 3205
    :cond_69
    invoke-static {v0, p2}, Lws4;->f(Lls4;Lls4;)Z

    .line 3206
    .line 3207
    .line 3208
    move-result p0

    .line 3209
    goto :goto_1a

    .line 3210
    :cond_6a
    invoke-static {v0, p2}, Lws4;->f(Lls4;Lls4;)Z

    .line 3211
    .line 3212
    .line 3213
    move-result p0

    .line 3214
    :goto_1b
    if-eqz p0, :cond_6b

    .line 3215
    .line 3216
    sget-object p0, Lls4;->k:Loo4;

    .line 3217
    .line 3218
    goto :goto_1c

    .line 3219
    :cond_6b
    sget-object p0, Lls4;->l:Loo4;

    .line 3220
    .line 3221
    :goto_1c
    return-object p0

    .line 3222
    :pswitch_1a
    sget-object v0, Lfu4;->o:Lfu4;

    .line 3223
    .line 3224
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 3225
    .line 3226
    .line 3227
    move-result-object v0

    .line 3228
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 3229
    .line 3230
    .line 3231
    move-result v0

    .line 3232
    const-wide/16 v1, 0x1f

    .line 3233
    .line 3234
    packed-switch v0, :pswitch_data_6

    .line 3235
    .line 3236
    .line 3237
    invoke-virtual {p0, p1}, Lws4;->b(Ljava/lang/String;)V

    .line 3238
    .line 3239
    .line 3240
    throw v7

    .line 3241
    :pswitch_1b
    const-string p0, "BITWISE_XOR"

    .line 3242
    .line 3243
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3244
    .line 3245
    .line 3246
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3247
    .line 3248
    .line 3249
    move-result-object p0

    .line 3250
    check-cast p0, Lls4;

    .line 3251
    .line 3252
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3253
    .line 3254
    check-cast p1, Lpc4;

    .line 3255
    .line 3256
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3257
    .line 3258
    .line 3259
    move-result-object p0

    .line 3260
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3261
    .line 3262
    .line 3263
    move-result-object p0

    .line 3264
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3265
    .line 3266
    .line 3267
    move-result-wide p0

    .line 3268
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3269
    .line 3270
    .line 3271
    move-result p0

    .line 3272
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3273
    .line 3274
    .line 3275
    move-result-object p1

    .line 3276
    check-cast p1, Lls4;

    .line 3277
    .line 3278
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3279
    .line 3280
    check-cast p3, Lpc4;

    .line 3281
    .line 3282
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3283
    .line 3284
    .line 3285
    move-result-object p1

    .line 3286
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 3287
    .line 3288
    .line 3289
    move-result-object p1

    .line 3290
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 3291
    .line 3292
    .line 3293
    move-result-wide p1

    .line 3294
    invoke-static {p1, p2}, Lai4;->m(D)I

    .line 3295
    .line 3296
    .line 3297
    move-result p1

    .line 3298
    xor-int/2addr p0, p1

    .line 3299
    int-to-double p0, p0

    .line 3300
    new-instance p2, Leq4;

    .line 3301
    .line 3302
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3303
    .line 3304
    .line 3305
    move-result-object p0

    .line 3306
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3307
    .line 3308
    .line 3309
    goto/16 :goto_1d

    .line 3310
    .line 3311
    :pswitch_1c
    const-string p0, "BITWISE_UNSIGNED_RIGHT_SHIFT"

    .line 3312
    .line 3313
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3314
    .line 3315
    .line 3316
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3317
    .line 3318
    .line 3319
    move-result-object p0

    .line 3320
    check-cast p0, Lls4;

    .line 3321
    .line 3322
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3323
    .line 3324
    check-cast p1, Lpc4;

    .line 3325
    .line 3326
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3327
    .line 3328
    .line 3329
    move-result-object p0

    .line 3330
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3331
    .line 3332
    .line 3333
    move-result-object p0

    .line 3334
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3335
    .line 3336
    .line 3337
    move-result-wide p0

    .line 3338
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3339
    .line 3340
    .line 3341
    move-result p0

    .line 3342
    int-to-long p0, p0

    .line 3343
    const-wide v5, 0xffffffffL

    .line 3344
    .line 3345
    .line 3346
    .line 3347
    .line 3348
    and-long/2addr p0, v5

    .line 3349
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3350
    .line 3351
    .line 3352
    move-result-object p3

    .line 3353
    check-cast p3, Lls4;

    .line 3354
    .line 3355
    iget-object v0, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3356
    .line 3357
    check-cast v0, Lpc4;

    .line 3358
    .line 3359
    invoke-virtual {v0, p2, p3}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3360
    .line 3361
    .line 3362
    move-result-object p2

    .line 3363
    invoke-interface {p2}, Lls4;->zzd()Ljava/lang/Double;

    .line 3364
    .line 3365
    .line 3366
    move-result-object p2

    .line 3367
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 3368
    .line 3369
    .line 3370
    move-result-wide p2

    .line 3371
    invoke-static {p2, p3}, Lai4;->m(D)I

    .line 3372
    .line 3373
    .line 3374
    move-result p2

    .line 3375
    int-to-long p2, p2

    .line 3376
    and-long/2addr p2, v1

    .line 3377
    long-to-int p2, p2

    .line 3378
    ushr-long/2addr p0, p2

    .line 3379
    long-to-double p0, p0

    .line 3380
    new-instance p2, Leq4;

    .line 3381
    .line 3382
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3383
    .line 3384
    .line 3385
    move-result-object p0

    .line 3386
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3387
    .line 3388
    .line 3389
    goto/16 :goto_1d

    .line 3390
    .line 3391
    :pswitch_1d
    const-string p0, "BITWISE_RIGHT_SHIFT"

    .line 3392
    .line 3393
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3394
    .line 3395
    .line 3396
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3397
    .line 3398
    .line 3399
    move-result-object p0

    .line 3400
    check-cast p0, Lls4;

    .line 3401
    .line 3402
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3403
    .line 3404
    check-cast p1, Lpc4;

    .line 3405
    .line 3406
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3407
    .line 3408
    .line 3409
    move-result-object p0

    .line 3410
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3411
    .line 3412
    .line 3413
    move-result-object p0

    .line 3414
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3415
    .line 3416
    .line 3417
    move-result-wide p0

    .line 3418
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3419
    .line 3420
    .line 3421
    move-result p0

    .line 3422
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3423
    .line 3424
    .line 3425
    move-result-object p1

    .line 3426
    check-cast p1, Lls4;

    .line 3427
    .line 3428
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3429
    .line 3430
    check-cast p3, Lpc4;

    .line 3431
    .line 3432
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3433
    .line 3434
    .line 3435
    move-result-object p1

    .line 3436
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 3437
    .line 3438
    .line 3439
    move-result-object p1

    .line 3440
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 3441
    .line 3442
    .line 3443
    move-result-wide p1

    .line 3444
    invoke-static {p1, p2}, Lai4;->m(D)I

    .line 3445
    .line 3446
    .line 3447
    move-result p1

    .line 3448
    int-to-long p1, p1

    .line 3449
    and-long/2addr p1, v1

    .line 3450
    long-to-int p1, p1

    .line 3451
    shr-int/2addr p0, p1

    .line 3452
    int-to-double p0, p0

    .line 3453
    new-instance p2, Leq4;

    .line 3454
    .line 3455
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3456
    .line 3457
    .line 3458
    move-result-object p0

    .line 3459
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3460
    .line 3461
    .line 3462
    goto/16 :goto_1d

    .line 3463
    .line 3464
    :pswitch_1e
    const-string p0, "BITWISE_OR"

    .line 3465
    .line 3466
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3467
    .line 3468
    .line 3469
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3470
    .line 3471
    .line 3472
    move-result-object p0

    .line 3473
    check-cast p0, Lls4;

    .line 3474
    .line 3475
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3476
    .line 3477
    check-cast p1, Lpc4;

    .line 3478
    .line 3479
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3480
    .line 3481
    .line 3482
    move-result-object p0

    .line 3483
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3484
    .line 3485
    .line 3486
    move-result-object p0

    .line 3487
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3488
    .line 3489
    .line 3490
    move-result-wide p0

    .line 3491
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3492
    .line 3493
    .line 3494
    move-result p0

    .line 3495
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3496
    .line 3497
    .line 3498
    move-result-object p1

    .line 3499
    check-cast p1, Lls4;

    .line 3500
    .line 3501
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3502
    .line 3503
    check-cast p3, Lpc4;

    .line 3504
    .line 3505
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3506
    .line 3507
    .line 3508
    move-result-object p1

    .line 3509
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 3510
    .line 3511
    .line 3512
    move-result-object p1

    .line 3513
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 3514
    .line 3515
    .line 3516
    move-result-wide p1

    .line 3517
    invoke-static {p1, p2}, Lai4;->m(D)I

    .line 3518
    .line 3519
    .line 3520
    move-result p1

    .line 3521
    or-int/2addr p0, p1

    .line 3522
    int-to-double p0, p0

    .line 3523
    new-instance p2, Leq4;

    .line 3524
    .line 3525
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3526
    .line 3527
    .line 3528
    move-result-object p0

    .line 3529
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3530
    .line 3531
    .line 3532
    goto/16 :goto_1d

    .line 3533
    .line 3534
    :pswitch_1f
    const-string p0, "BITWISE_NOT"

    .line 3535
    .line 3536
    invoke-static {p0, v4, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3537
    .line 3538
    .line 3539
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3540
    .line 3541
    .line 3542
    move-result-object p0

    .line 3543
    check-cast p0, Lls4;

    .line 3544
    .line 3545
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3546
    .line 3547
    check-cast p1, Lpc4;

    .line 3548
    .line 3549
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3550
    .line 3551
    .line 3552
    move-result-object p0

    .line 3553
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3554
    .line 3555
    .line 3556
    move-result-object p0

    .line 3557
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3558
    .line 3559
    .line 3560
    move-result-wide p0

    .line 3561
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3562
    .line 3563
    .line 3564
    move-result p0

    .line 3565
    not-int p0, p0

    .line 3566
    int-to-double p0, p0

    .line 3567
    new-instance p2, Leq4;

    .line 3568
    .line 3569
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3570
    .line 3571
    .line 3572
    move-result-object p0

    .line 3573
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3574
    .line 3575
    .line 3576
    goto/16 :goto_1d

    .line 3577
    .line 3578
    :pswitch_20
    const-string p0, "BITWISE_LEFT_SHIFT"

    .line 3579
    .line 3580
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3581
    .line 3582
    .line 3583
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3584
    .line 3585
    .line 3586
    move-result-object p0

    .line 3587
    check-cast p0, Lls4;

    .line 3588
    .line 3589
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3590
    .line 3591
    check-cast p1, Lpc4;

    .line 3592
    .line 3593
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3594
    .line 3595
    .line 3596
    move-result-object p0

    .line 3597
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3598
    .line 3599
    .line 3600
    move-result-object p0

    .line 3601
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3602
    .line 3603
    .line 3604
    move-result-wide p0

    .line 3605
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3606
    .line 3607
    .line 3608
    move-result p0

    .line 3609
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3610
    .line 3611
    .line 3612
    move-result-object p1

    .line 3613
    check-cast p1, Lls4;

    .line 3614
    .line 3615
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3616
    .line 3617
    check-cast p3, Lpc4;

    .line 3618
    .line 3619
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3620
    .line 3621
    .line 3622
    move-result-object p1

    .line 3623
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 3624
    .line 3625
    .line 3626
    move-result-object p1

    .line 3627
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 3628
    .line 3629
    .line 3630
    move-result-wide p1

    .line 3631
    invoke-static {p1, p2}, Lai4;->m(D)I

    .line 3632
    .line 3633
    .line 3634
    move-result p1

    .line 3635
    int-to-long p1, p1

    .line 3636
    and-long/2addr p1, v1

    .line 3637
    long-to-int p1, p1

    .line 3638
    shl-int/2addr p0, p1

    .line 3639
    int-to-double p0, p0

    .line 3640
    new-instance p2, Leq4;

    .line 3641
    .line 3642
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3643
    .line 3644
    .line 3645
    move-result-object p0

    .line 3646
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3647
    .line 3648
    .line 3649
    goto :goto_1d

    .line 3650
    :pswitch_21
    const-string p0, "BITWISE_AND"

    .line 3651
    .line 3652
    invoke-static {p0, v5, p3}, Lai4;->g(Ljava/lang/String;ILjava/util/List;)V

    .line 3653
    .line 3654
    .line 3655
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3656
    .line 3657
    .line 3658
    move-result-object p0

    .line 3659
    check-cast p0, Lls4;

    .line 3660
    .line 3661
    iget-object p1, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3662
    .line 3663
    check-cast p1, Lpc4;

    .line 3664
    .line 3665
    invoke-virtual {p1, p2, p0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3666
    .line 3667
    .line 3668
    move-result-object p0

    .line 3669
    invoke-interface {p0}, Lls4;->zzd()Ljava/lang/Double;

    .line 3670
    .line 3671
    .line 3672
    move-result-object p0

    .line 3673
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 3674
    .line 3675
    .line 3676
    move-result-wide p0

    .line 3677
    invoke-static {p0, p1}, Lai4;->m(D)I

    .line 3678
    .line 3679
    .line 3680
    move-result p0

    .line 3681
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3682
    .line 3683
    .line 3684
    move-result-object p1

    .line 3685
    check-cast p1, Lls4;

    .line 3686
    .line 3687
    iget-object p3, p2, Lqd1;->r:Ljava/lang/Object;

    .line 3688
    .line 3689
    check-cast p3, Lpc4;

    .line 3690
    .line 3691
    invoke-virtual {p3, p2, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 3692
    .line 3693
    .line 3694
    move-result-object p1

    .line 3695
    invoke-interface {p1}, Lls4;->zzd()Ljava/lang/Double;

    .line 3696
    .line 3697
    .line 3698
    move-result-object p1

    .line 3699
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 3700
    .line 3701
    .line 3702
    move-result-wide p1

    .line 3703
    invoke-static {p1, p2}, Lai4;->m(D)I

    .line 3704
    .line 3705
    .line 3706
    move-result p1

    .line 3707
    and-int/2addr p0, p1

    .line 3708
    int-to-double p0, p0

    .line 3709
    new-instance p2, Leq4;

    .line 3710
    .line 3711
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 3712
    .line 3713
    .line 3714
    move-result-object p0

    .line 3715
    invoke-direct {p2, p0}, Leq4;-><init>(Ljava/lang/Double;)V

    .line 3716
    .line 3717
    .line 3718
    :goto_1d
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_15
        :pswitch_11
        :pswitch_10
        :pswitch_8
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_13
        :pswitch_12
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x25
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lws4;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Lai4;->k(Ljava/lang/String;)Lfu4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "Command not implemented: "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "Command not supported"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method
