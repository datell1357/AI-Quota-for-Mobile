.class public final Lu6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzb4;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lu6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lu6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Lof2;)Lvb4;
    .locals 6

    .line 1
    iget v0, p0, Lu6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lu6;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, [Lxb4;

    .line 14
    .line 15
    array-length v0, p0

    .line 16
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Lxb4;

    .line 21
    .line 22
    array-length v0, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    aget-object v3, p0, v2

    .line 27
    .line 28
    iget-object v4, v3, Lxb4;->a:Li50;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Li50;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v3, v1

    .line 41
    :goto_1
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object p0, v3, Lxb4;->b:Lpe1;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-interface {p0, p2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lvb4;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object p0, v1

    .line 55
    :goto_2
    if-eqz p0, :cond_3

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const-string p0, "No initializer set for given class "

    .line 60
    .line 61
    invoke-virtual {p1}, Li50;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, p0}, Lq73;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_3
    return-object v1

    .line 69
    :pswitch_0
    new-instance p0, Lk83;

    .line 70
    .line 71
    invoke-direct {p0}, Lk83;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lpc3;->a(Lvk0;)Lmc3;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lwl0;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    const-class v2, Lsj1;

    .line 83
    .line 84
    invoke-static {v0, v2}, Lbi4;->u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lsj1;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v3, Le53;->t:Le53;

    .line 94
    .line 95
    invoke-virtual {v3, p1}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lm03;

    .line 100
    .line 101
    sget-object v5, Ltj1;->c:Lb21;

    .line 102
    .line 103
    iget-object p2, p2, Lvk0;->a:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    invoke-virtual {p2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Lpe1;

    .line 110
    .line 111
    invoke-static {v0, v2}, Lbi4;->u(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lsj1;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, p1}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    if-nez p2, :cond_5

    .line 127
    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    invoke-interface {v4}, Lm03;->get()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lvb4;

    .line 135
    .line 136
    :goto_4
    move-object v1, p1

    .line 137
    goto :goto_5

    .line 138
    :cond_4
    const-string p0, "Expected the @HiltViewModel-annotated class "

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, " to be available in the multi-binding of @HiltViewModelMap but none was found."

    .line 145
    .line 146
    invoke-static {p1, p2, p0}, Lk21;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_5
    const-string p0, "Found creation callback but class "

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string p2, " does not have an assisted factory specified in @HiltViewModel."

    .line 157
    .line 158
    invoke-static {p1, p2, p0}, Lk21;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_6
    if-nez v4, :cond_a

    .line 163
    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    invoke-interface {p2, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Lvb4;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :goto_5
    new-instance p1, Lrj1;

    .line 174
    .line 175
    invoke-direct {p1, p0}, Lrj1;-><init>(Lk83;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object p0, v1, Lvb4;->a:Lwb4;

    .line 182
    .line 183
    if-eqz p0, :cond_9

    .line 184
    .line 185
    iget-boolean p2, p0, Lwb4;->d:Z

    .line 186
    .line 187
    if-eqz p2, :cond_7

    .line 188
    .line 189
    invoke-static {p1}, Lwb4;->a(Ljava/lang/AutoCloseable;)V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    iget-object p2, p0, Lwb4;->a:Lls3;

    .line 194
    .line 195
    monitor-enter p2

    .line 196
    :try_start_0
    iget-object p0, p0, Lwb4;->c:Ljava/util/LinkedHashSet;

    .line 197
    .line 198
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .line 200
    .line 201
    monitor-exit p2

    .line 202
    goto :goto_6

    .line 203
    :catchall_0
    move-exception p0

    .line 204
    monitor-exit p2

    .line 205
    throw p0

    .line 206
    :cond_8
    const-string p0, "Found @HiltViewModel-annotated class "

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string p2, " using @AssistedInject but no creation callback was provided in CreationExtras."

    .line 213
    .line 214
    invoke-static {p1, p2, p0}, Lk21;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    :goto_6
    return-object v1

    .line 218
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    .line 219
    .line 220
    const-string p2, "Found the @HiltViewModel-annotated class "

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string p1, " in both the multi-bindings of @HiltViewModelMap and @HiltViewModelAssistedMap."

    .line 235
    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    throw p0

    .line 247
    :pswitch_1
    new-instance p1, Lsb0;

    .line 248
    .line 249
    invoke-direct {p1, p2}, Lsb0;-><init>(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lu6;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p0, Lu/sage/MainActivity;

    .line 255
    .line 256
    const-class p2, Lv6;

    .line 257
    .line 258
    invoke-static {p0, p2}, Lgg4;->w(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Lv6;

    .line 263
    .line 264
    check-cast p0, Lvl0;

    .line 265
    .line 266
    iget-object p0, p0, Lvl0;->b:Lvl0;

    .line 267
    .line 268
    new-instance p2, Lsl0;

    .line 269
    .line 270
    invoke-direct {p2, p0}, Lsl0;-><init>(Lvl0;)V

    .line 271
    .line 272
    .line 273
    new-instance p0, Lw6;

    .line 274
    .line 275
    invoke-direct {p0, p2, p1}, Lw6;-><init>(Lsl0;Lsb0;)V

    .line 276
    .line 277
    .line 278
    return-object p0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
