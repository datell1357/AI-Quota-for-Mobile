.class public abstract Lxe5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxe5;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lxe5;->b:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 13

    .line 1
    sget-object v0, Lxe5;->b:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    move-object v1, p0

    .line 5
    :goto_0
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v3, v2

    .line 27
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_2
    sget-object v1, Lxe5;->a:Ljava/util/WeakHashMap;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    move-object v0, p0

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_3
    if-nez v0, :cond_4

    .line 60
    .line 61
    monitor-exit v1

    .line 62
    const/4 v0, 0x0

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lue5;

    .line 69
    .line 70
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    new-instance v0, Lky4;

    .line 75
    .line 76
    const/16 v1, 0x1c

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lky4;-><init>(I)V

    .line 79
    .line 80
    .line 81
    :goto_3
    if-nez v0, :cond_e

    .line 82
    .line 83
    invoke-static {}, Lye5;->c()Lqf5;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lqf5;->b:Lrf5;

    .line 88
    .line 89
    if-eqz v0, :cond_e

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_4
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    check-cast v0, Lte5;

    .line 102
    .line 103
    iget-object v0, v0, Lte5;->n:Lte5;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lrf5;

    .line 111
    .line 112
    check-cast v0, Lte5;

    .line 113
    .line 114
    iget-object v0, v0, Lte5;->o:Ljava/util/UUID;

    .line 115
    .line 116
    if-eqz v0, :cond_d

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Lrf5;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    sget-object v4, Llp1;->o:Lhp1;

    .line 132
    .line 133
    const-string v4, "expectedSize"

    .line 134
    .line 135
    invoke-static {v3, v4}, Lht4;->i(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v4, "initialCapacity"

    .line 139
    .line 140
    invoke-static {v3, v4}, Lht4;->i(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    const-string v5, "expectedSize"

    .line 150
    .line 151
    invoke-static {v4, v5}, Lht4;->i(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v5, "initialCapacity"

    .line 155
    .line 156
    invoke-static {v4, v5}, Lht4;->i(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-array v4, v4, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v1}, Lix;->O(Ljava/util/List;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    move v5, v2

    .line 170
    move v6, v5

    .line 171
    move v7, v6

    .line 172
    move v8, v7

    .line 173
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_a

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    check-cast v9, Lrf5;

    .line 184
    .line 185
    move-object v10, v9

    .line 186
    check-cast v10, Lte5;

    .line 187
    .line 188
    iget-object v10, v10, Lte5;->q:Ljava/lang/String;

    .line 189
    .line 190
    array-length v11, v4

    .line 191
    add-int/lit8 v12, v7, 0x1

    .line 192
    .line 193
    invoke-static {v11, v12}, Lcp1;->b(II)I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    array-length v12, v4

    .line 198
    if-gt v11, v12, :cond_6

    .line 199
    .line 200
    if-eqz v8, :cond_7

    .line 201
    .line 202
    :cond_6
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    move v8, v2

    .line 207
    :cond_7
    add-int/lit8 v11, v7, 0x1

    .line 208
    .line 209
    aput-object v10, v4, v7

    .line 210
    .line 211
    invoke-interface {v9}, Lrf5;->d()Lnf5;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    array-length v9, v3

    .line 219
    add-int/lit8 v10, v5, 0x1

    .line 220
    .line 221
    invoke-static {v9, v10}, Lcp1;->b(II)I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    array-length v10, v3

    .line 226
    if-gt v9, v10, :cond_8

    .line 227
    .line 228
    if-eqz v6, :cond_9

    .line 229
    .line 230
    :cond_8
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    move v6, v2

    .line 235
    :cond_9
    add-int/lit8 v9, v5, 0x1

    .line 236
    .line 237
    aput-object v7, v3, v5

    .line 238
    .line 239
    move v5, v9

    .line 240
    move v7, v11

    .line 241
    goto :goto_5

    .line 242
    :cond_a
    sget-object v1, Lxe5;->a:Ljava/util/WeakHashMap;

    .line 243
    .line 244
    monitor-enter v1

    .line 245
    :try_start_2
    invoke-static {v7, v4}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-eqz v2, :cond_c

    .line 250
    .line 251
    invoke-static {v5, v3}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    new-instance v4, Lue5;

    .line 258
    .line 259
    invoke-direct {v4, v2, v3, v0}, Lue5;-><init>(Lz43;Lz43;Ljava/util/UUID;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 267
    :catchall_2
    move-exception p0

    .line 268
    goto :goto_6

    .line 269
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 270
    .line 271
    const-string v0, "Null extras"

    .line 272
    .line 273
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    .line 278
    .line 279
    const-string v0, "Null spansNames"

    .line 280
    .line 281
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 286
    throw p0

    .line 287
    :cond_d
    const-string p0, "Null rootTraceId"

    .line 288
    .line 289
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    :cond_e
    :goto_7
    return-void

    .line 293
    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 294
    throw p0

    .line 295
    :goto_9
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    throw p0
.end method
