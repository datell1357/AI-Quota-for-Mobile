.class public final Lqd1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljp3;
.implements Lr20;
.implements Lxj3;
.implements Lx11;
.implements Lla4;
.implements Lpi;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lqd1;->n:I

    sparse-switch p1, :sswitch_data_0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 240
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 241
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    return-void

    .line 242
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lpc4;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lpc4;-><init>(I)V

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    new-instance v0, Lqd1;

    const/4 v1, 0x0

    .line 243
    invoke-direct {v0, v1, p1}, Lqd1;-><init>(Lqd1;Lpc4;)V

    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 244
    invoke-virtual {v0}, Lqd1;->O()Lqd1;

    move-result-object p1

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    new-instance p1, Lra3;

    const/16 v1, 0x12

    .line 245
    invoke-direct {p1, v1}, Lra3;-><init>(I)V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    new-instance p0, Ldf5;

    .line 246
    invoke-direct {p0, p1}, Ldf5;-><init>(Lra3;)V

    const-string v1, "require"

    invoke-virtual {v0, v1, p0}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    sget-object p0, Lgy4;->b:Lgy4;

    .line 247
    iget-object p1, p1, Lra3;->o:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "internal.platform"

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance p0, Leq4;

    const-wide/16 v1, 0x0

    .line 249
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Leq4;-><init>(Ljava/lang/Double;)V

    const-string p1, "runtime.counter"

    invoke-virtual {v0, p1, p0}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    return-void

    .line 250
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 252
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 253
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 278
    iput p1, p0, Lqd1;->n:I

    iput-object p2, p0, Lqd1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 219
    iput p1, p0, Lqd1;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lyc2;)V
    .locals 7

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Lqd1;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lqd1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p1, Lzc2;

    .line 13
    .line 14
    const/16 v0, 0x400

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lzc2;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x6

    .line 22
    invoke-virtual {p2, p1}, Lba2;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v2, p2, Lba2;->n:I

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    iget-object v2, p2, Lba2;->q:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    iget-object v0, p2, Lba2;->q:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v1

    .line 51
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 52
    .line 53
    new-array v0, v0, [C

    .line 54
    .line 55
    iput-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lba2;->b(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget v0, p2, Lba2;->n:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iget-object v0, p2, Lba2;->q:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v0, p1

    .line 75
    iget-object p1, p2, Lba2;->q:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move p1, v1

    .line 85
    :goto_1
    move p2, v1

    .line 86
    :goto_2
    if-ge p2, p1, :cond_7

    .line 87
    .line 88
    new-instance v0, Lz44;

    .line 89
    .line 90
    invoke-direct {v0, p0, p2}, Lz44;-><init>(Lqd1;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lz44;->b()Lxc2;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x4

    .line 98
    invoke-virtual {v2, v3}, Lba2;->b(I)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_2

    .line 103
    .line 104
    iget-object v4, v2, Lba2;->q:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    iget v2, v2, Lba2;->n:I

    .line 109
    .line 110
    add-int/2addr v3, v2

    .line 111
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    goto :goto_3

    .line 116
    :cond_2
    move v2, v1

    .line 117
    :goto_3
    iget-object v3, p0, Lqd1;->p:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, [C

    .line 120
    .line 121
    mul-int/lit8 v4, p2, 0x2

    .line 122
    .line 123
    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lz44;->b()Lxc2;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const/16 v3, 0x10

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Lba2;->b(I)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    iget v5, v2, Lba2;->n:I

    .line 139
    .line 140
    add-int/2addr v4, v5

    .line 141
    iget-object v5, v2, Lba2;->q:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    add-int/2addr v5, v4

    .line 150
    iget-object v2, v2, Lba2;->q:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    goto :goto_4

    .line 159
    :cond_3
    move v2, v1

    .line 160
    :goto_4
    const/4 v4, 0x1

    .line 161
    if-lez v2, :cond_4

    .line 162
    .line 163
    move v2, v4

    .line 164
    goto :goto_5

    .line 165
    :cond_4
    move v2, v1

    .line 166
    :goto_5
    if-eqz v2, :cond_6

    .line 167
    .line 168
    iget-object v2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Lzc2;

    .line 171
    .line 172
    invoke-virtual {v0}, Lz44;->b()Lxc2;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5, v3}, Lba2;->b(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    iget v6, v5, Lba2;->n:I

    .line 183
    .line 184
    add-int/2addr v3, v6

    .line 185
    iget-object v6, v5, Lba2;->q:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    add-int/2addr v6, v3

    .line 194
    iget-object v3, v5, Lba2;->q:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    goto :goto_6

    .line 203
    :cond_5
    move v3, v1

    .line 204
    :goto_6
    sub-int/2addr v3, v4

    .line 205
    invoke-virtual {v2, v0, v1, v3}, Lzc2;->a(Lz44;II)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 p2, p2, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    const-string p0, "invalid metadata codepoint length"

    .line 212
    .line 213
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const/4 p0, 0x0

    .line 217
    throw p0

    .line 218
    :cond_7
    return-void
.end method

.method public constructor <init>(Lbc4;Lzb4;Lvk0;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lqd1;->n:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 256
    iput-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 257
    iput-object p3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 258
    new-instance p1, Lls3;

    const/4 p2, 0x1

    .line 259
    invoke-direct {p1, p2}, Lls3;-><init>(I)V

    .line 260
    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf35;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lqd1;->n:I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 230
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lqd1;->o:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    .line 231
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfn0;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lqd1;->n:I

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 284
    new-instance p1, Lhh2;

    invoke-direct {p1}, Lhh2;-><init>()V

    .line 285
    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 286
    invoke-static {}, Lix;->d()Lz80;

    move-result-object p1

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 287
    invoke-static {p2}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfw2;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lqd1;->n:I

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 267
    sget-object p1, Lew2;->n:Lew2;

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 220
    iput p5, p0, Lqd1;->n:I

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    iput-object p3, p0, Lqd1;->q:Ljava/lang/Object;

    iput-object p4, p0, Lqd1;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lqd1;->n:I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 262
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 263
    new-instance p1, Liq0;

    invoke-direct {p1, p0}, Liq0;-><init>(Lqd1;)V

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 264
    new-instance p1, Lhq0;

    invoke-direct {p1, p0}, Lhq0;-><init>(Lqd1;)V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const/16 v0, 0x14

    iput v0, p0, Lqd1;->n:I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 270
    new-instance v0, Lc73;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lc73;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 271
    new-instance v0, Lji3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lji3;-><init>(Ljava/util/concurrent/Executor;I)V

    iput-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 272
    invoke-static {v0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    move-result-object p1

    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lqd1;->n:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 281
    new-instance p1, Lra2;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lra2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpp3;Lkf4;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lqd1;->n:I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 275
    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 276
    iput-object p2, p0, Lqd1;->q:Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    sget-object p1, Luf0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lqd1;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqd1;Lpc4;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lqd1;->n:I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 228
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lqd1;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqi0;Lv;Lei0;Ln;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Lqd1;->n:I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 234
    iput-object p4, p0, Lqd1;->p:Ljava/lang/Object;

    const/4 p4, 0x0

    const/4 v0, 0x6

    const v1, 0x7fffffff

    .line 235
    invoke-static {v1, v0, p4}, Lix;->c(IILvy;)Lzy;

    move-result-object p4

    iput-object p4, p0, Lqd1;->q:Ljava/lang/Object;

    .line 236
    new-instance p4, Ljj;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljj;-><init>(I)V

    iput-object p4, p0, Lqd1;->r:Ljava/lang/Object;

    .line 237
    invoke-interface {p1}, Lqi0;->d()Lhi0;

    move-result-object p1

    sget-object p4, Lmj1;->W:Lmj1;

    invoke-interface {p1, p4}, Lhi0;->K(Lgi0;)Lfi0;

    move-result-object p1

    check-cast p1, Ltu1;

    if-eqz p1, :cond_0

    new-instance p4, Lmd;

    const/16 v0, 0x9

    invoke-direct {p4, p2, p0, p3, v0}, Lmd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, p4}, Ltu1;->V(Lpe1;)Ljv0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ls71;)V
    .locals 3

    const/16 v0, 0x10

    iput v0, p0, Lqd1;->n:I

    .line 288
    new-instance v1, Lra3;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p1}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 289
    invoke-direct {p0, v0, v1}, Lqd1;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lsd0;Lsb0;Lym1;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lqd1;->n:I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    iput-object p2, p0, Lqd1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lqd1;->p:Ljava/lang/Object;

    iput-object p4, p0, Lqd1;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwu4;Lpc4;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lqd1;->n:I

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 224
    iput-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 225
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 226
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lqd1;->r:Ljava/lang/Object;

    return-void
.end method

.method public static F(Lqd1;Le23;Le23;I)V
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object p3, Lhi4;->a:Ljava/util/TimeZone;

    .line 16
    .line 17
    invoke-virtual {p0}, Lqd1;->r()Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    monitor-enter p0

    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    :try_start_0
    iget-object v0, p2, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p1, "Call wasn\'t in-flight!"

    .line 47
    .line 48
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p1, Le23;->p:Lh23;

    .line 67
    .line 68
    iget-object v0, v0, Lh23;->o:Lk63;

    .line 69
    .line 70
    iget-object v0, v0, Lk63;->a:Lcn1;

    .line 71
    .line 72
    iget-object v0, v0, Lcn1;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lqd1;->t(Ljava/lang/String;)Le23;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, v0, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    iput-object v0, p1, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    .line 84
    :cond_4
    if-eqz p2, :cond_6

    .line 85
    .line 86
    if-nez p3, :cond_5

    .line 87
    .line 88
    iget-object p2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p2, Ljava/util/ArrayDeque;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_6

    .line 97
    .line 98
    :cond_5
    iget-object p2, p0, Lqd1;->r:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Ljava/util/ArrayDeque;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    :cond_6
    if-eqz p3, :cond_7

    .line 106
    .line 107
    iget-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p2, Ljava/util/ArrayDeque;

    .line 110
    .line 111
    invoke-static {p2}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Ljava/util/ArrayDeque;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lwu0;

    .line 123
    .line 124
    invoke-direct {v0, p2}, Lwu0;-><init>(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Ljava/util/ArrayDeque;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Le23;

    .line 155
    .line 156
    iget-object v3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v3, Ljava/util/ArrayDeque;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/16 v4, 0x40

    .line 165
    .line 166
    if-ge v3, v4, :cond_9

    .line 167
    .line 168
    iget-object v3, v2, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    const/4 v4, 0x5

    .line 175
    if-ge v3, v4, :cond_8

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 178
    .line 179
    .line 180
    iget-object v3, v2, Le23;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Ljava/util/ArrayDeque;

    .line 191
    .line 192
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_9
    new-instance v0, Lwu0;

    .line 197
    .line 198
    invoke-direct {v0, p2}, Lwu0;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .line 200
    .line 201
    :goto_2
    monitor-exit p0

    .line 202
    iget-object p2, v0, Lwu0;->n:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    const/4 v2, 0x0

    .line 209
    :goto_3
    if-ge v2, p2, :cond_c

    .line 210
    .line 211
    iget-object v3, v0, Lwu0;->n:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Le23;

    .line 218
    .line 219
    if-ne v3, p1, :cond_a

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_a
    iget-object v4, v3, Le23;->p:Lh23;

    .line 223
    .line 224
    :goto_4
    if-eqz p3, :cond_b

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v4, Ljava/io/InterruptedIOException;

    .line 230
    .line 231
    const-string v5, "executor rejected"

    .line 232
    .line 233
    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 237
    .line 238
    .line 239
    iget-object v5, v3, Le23;->p:Lh23;

    .line 240
    .line 241
    invoke-virtual {v5, v4}, Lh23;->h(Ljava/io/IOException;)Ljava/io/IOException;

    .line 242
    .line 243
    .line 244
    iget-object v3, v3, Le23;->n:Ldh1;

    .line 245
    .line 246
    iget-object v3, v3, Ldh1;->n:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v3, Lo20;

    .line 249
    .line 250
    new-instance v5, Lf83;

    .line 251
    .line 252
    invoke-direct {v5, v4}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v5}, Lo20;->g(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_b
    invoke-virtual {p0}, Lqd1;->r()Ljava/util/concurrent/ExecutorService;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    iget-object v5, v3, Le23;->p:Lh23;

    .line 267
    .line 268
    iget-object v6, v5, Lh23;->n:Lio2;

    .line 269
    .line 270
    iget-object v6, v6, Lio2;->a:Lqd1;

    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    const/4 v6, 0x3

    .line 276
    :try_start_1
    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 277
    .line 278
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :catchall_1
    move-exception p0

    .line 283
    goto :goto_6

    .line 284
    :catch_0
    move-exception v4

    .line 285
    :try_start_2
    new-instance v7, Ljava/io/InterruptedIOException;

    .line 286
    .line 287
    const-string v8, "executor rejected"

    .line 288
    .line 289
    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 293
    .line 294
    .line 295
    iget-object v4, v3, Le23;->p:Lh23;

    .line 296
    .line 297
    invoke-virtual {v4, v7}, Lh23;->h(Ljava/io/IOException;)Ljava/io/IOException;

    .line 298
    .line 299
    .line 300
    iget-object v4, v3, Le23;->n:Ldh1;

    .line 301
    .line 302
    iget-object v4, v4, Ldh1;->n:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v4, Lo20;

    .line 305
    .line 306
    new-instance v8, Lf83;

    .line 307
    .line 308
    invoke-direct {v8, v7}, Lf83;-><init>(Ljava/lang/Throwable;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v8}, Lo20;->g(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    .line 313
    .line 314
    iget-object v4, v5, Lh23;->n:Lio2;

    .line 315
    .line 316
    iget-object v4, v4, Lio2;->a:Lqd1;

    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {v4, v1, v3, v6}, Lqd1;->F(Lqd1;Le23;Le23;I)V

    .line 322
    .line 323
    .line 324
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :goto_6
    iget-object p1, v5, Lh23;->n:Lio2;

    .line 328
    .line 329
    iget-object p1, p1, Lio2;->a:Lqd1;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v1, v3, v6}, Lqd1;->F(Lqd1;Le23;Le23;I)V

    .line 335
    .line 336
    .line 337
    throw p0

    .line 338
    :cond_c
    return-void

    .line 339
    :goto_7
    monitor-exit p0

    .line 340
    throw p1
.end method


# virtual methods
.method public A(JLbf;Lbf;)Lbf;
    .locals 14

    .line 1
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbf;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lbf;->c()Lbf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lbf;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "velocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Lbf;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lqd1;->q:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lbf;

    .line 30
    .line 31
    if-ge v3, v0, :cond_3

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    iget-object v5, p0, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Ldd1;

    .line 38
    .line 39
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-object/from16 v6, p4

    .line 43
    .line 44
    invoke-virtual {v6, v3}, Lbf;->a(I)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-wide/32 v8, 0xf4240

    .line 49
    .line 50
    .line 51
    div-long v8, p1, v8

    .line 52
    .line 53
    iget-object v5, v5, Ldd1;->o:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lld;

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Lld;->a(F)Lo71;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-wide v10, v5, Lo71;->c:J

    .line 62
    .line 63
    const-wide/16 v12, 0x0

    .line 64
    .line 65
    cmp-long v7, v10, v12

    .line 66
    .line 67
    if-lez v7, :cond_1

    .line 68
    .line 69
    long-to-float v7, v8

    .line 70
    long-to-float v8, v10

    .line 71
    div-float/2addr v7, v8

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 74
    .line 75
    :goto_1
    invoke-static {v7}, Lbb;->a(F)Lab;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget v7, v7, Lab;->b:F

    .line 80
    .line 81
    iget v8, v5, Lo71;->a:F

    .line 82
    .line 83
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    mul-float/2addr v8, v7

    .line 88
    iget v5, v5, Lo71;->b:F

    .line 89
    .line 90
    mul-float/2addr v8, v5

    .line 91
    long-to-float v5, v10

    .line 92
    div-float/2addr v8, v5

    .line 93
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 94
    .line 95
    mul-float/2addr v8, v5

    .line 96
    invoke-virtual {v4, v3, v8}, Lbf;->e(IF)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_3
    if-eqz v4, :cond_4

    .line 107
    .line 108
    return-object v4

    .line 109
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :cond_5
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1
.end method

.method public B(Li50;Ljava/lang/String;)Lvb4;
    .locals 4

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lls3;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lbc4;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, v1, Lbc4;->a:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lvb4;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Li50;->d(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lzb4;

    .line 30
    .line 31
    instance-of p1, p0, Lzc3;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    check-cast p0, Lzc3;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lzc3;->d:Lh22;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lzc3;->e:Luc3;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p0, p1}, Lon4;->l(Lvb4;Luc3;Lh22;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_4

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    new-instance v1, Lof2;

    .line 60
    .line 61
    iget-object v2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lvk0;

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lof2;-><init>(Lvk0;)V

    .line 66
    .line 67
    .line 68
    sget-object v2, Lwu4;->q:Lls3;

    .line 69
    .line 70
    iget-object v3, v1, Lvk0;->a:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lzb4;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-interface {v2, p1, v1}, Lzb4;->c(Li50;Lof2;)Lvb4;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_1
    move-object v1, p1

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    :try_start_2
    invoke-static {p1}, Lon4;->x(Li50;)Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v2, v3, v1}, Lzb4;->b(Ljava/lang/Class;Lof2;)Lvb4;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    :try_start_3
    invoke-static {p1}, Lon4;->x(Li50;)Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {v2, p1}, Lzb4;->a(Ljava/lang/Class;)Lvb4;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_1

    .line 106
    :goto_2
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Lbc4;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lbc4;->a:Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Lvb4;

    .line 123
    .line 124
    if-eqz p0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Lvb4;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_3
    monitor-exit v0

    .line 130
    return-object v1

    .line 131
    :goto_4
    monitor-exit v0

    .line 132
    throw p0
.end method

.method public C(Lpd1;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lpd1;->c:Llc1;

    .line 2
    .line 3
    iget-object v1, v0, Llc1;->mWho:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Llc1;->mWho:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-boolean p1, v0, Llc1;->mRetainInstanceChangedWhileDetached:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-boolean p1, v0, Llc1;->mRetainInstance:Z

    .line 26
    .line 27
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lld1;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lld1;->c(Llc1;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v0}, Lld1;->f(Llc1;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p0, 0x0

    .line 41
    iput-boolean p0, v0, Llc1;->mRetainInstanceChangedWhileDetached:Z

    .line 42
    .line 43
    :cond_2
    const/4 p0, 0x2

    .line 44
    invoke-static {p0}, Lhd1;->G(I)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "Added fragment to active set "

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "FragmentManager"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public D(Lpd1;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lpd1;->c:Llc1;

    .line 2
    .line 3
    iget-boolean v0, p1, Llc1;->mRetainInstance:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lld1;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lld1;->f(Llc1;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v0, p1, Llc1;->mWho:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lpd1;

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x2

    .line 31
    invoke-static {p0}, Lhd1;->G(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Removed fragment from active set "

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "FragmentManager"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public E()Lqd1;
    .locals 4

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/regex/Matcher;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    add-int/2addr v1, v2

    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gt v1, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v0}, Lis0;->h(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lqd1;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public G(Lfh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz80;

    .line 4
    .line 5
    instance-of v1, p1, Lgb3;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lgb3;

    .line 11
    .line 12
    iget v2, v1, Lgb3;->t:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lgb3;->t:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lgb3;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lgb3;-><init>(Lqd1;Lfh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, v1, Lgb3;->r:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lgb3;->t:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    sget-object v5, Lt64;->a:Lt64;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    sget-object v7, Lri0;->n:Lri0;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    iget-object p0, v1, Lgb3;->q:Lfh2;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_4

    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v6

    .line 60
    :cond_2
    iget-object v2, v1, Lgb3;->q:Lfh2;

    .line 61
    .line 62
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object p1, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lbv1;->M()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    instance-of p1, p1, Lrp1;

    .line 75
    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    return-object v5

    .line 79
    :cond_4
    iget-object p1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Lhh2;

    .line 82
    .line 83
    iput-object p1, v1, Lgb3;->q:Lfh2;

    .line 84
    .line 85
    iput v4, v1, Lgb3;->t:I

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-ne v2, v7, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lbv1;->M()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    instance-of v2, v2, Lrp1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    invoke-interface {p1, v6}, Lfh2;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_6
    :try_start_2
    iput-object p1, v1, Lgb3;->q:Lfh2;

    .line 107
    .line 108
    iput v3, v1, Lgb3;->t:I

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lqd1;->n(Lfh0;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    if-ne p0, v7, :cond_7

    .line 115
    .line 116
    :goto_2
    return-object v7

    .line 117
    :cond_7
    move-object p0, p1

    .line 118
    :goto_3
    :try_start_3
    invoke-virtual {v0, v5}, Lbv1;->U(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-interface {p0, v6}, Lfh2;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v5

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    move-object v8, p1

    .line 127
    move-object p1, p0

    .line 128
    move-object p0, v8

    .line 129
    :goto_4
    invoke-interface {p0, v6}, Lfh2;->b(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public H(Lvv2;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lew2;

    .line 4
    .line 5
    sget-object v1, Lew2;->o:Lew2;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lgy1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Lgy1;->J(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Lc8;

    .line 22
    .line 23
    iget-object v3, p0, Lqd1;->r:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lfw2;

    .line 26
    .line 27
    const/16 v4, 0x13

    .line 28
    .line 29
    invoke-direct {v2, v4, v3}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {p1, v0, v1, v2, v3}, Ldm0;->N(Lvv2;JLpe1;Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "layoutCoordinates not set"

    .line 38
    .line 39
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    sget-object p1, Lew2;->p:Lew2;

    .line 44
    .line 45
    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 46
    .line 47
    return-void
.end method

.method public I(Lnr3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh7;

    .line 5
    .line 6
    const/16 v1, 0x12

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lqd1;->r:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lwu4;

    .line 28
    .line 29
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Landroid/os/Handler;

    .line 32
    .line 33
    const-wide/32 v1, 0x5265c0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v1

    .line 42
    throw p0
.end method

.method public J()Landroid/os/Bundle;
    .locals 13

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf35;

    .line 4
    .line 5
    iget-object v1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lr45;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_b

    .line 31
    .line 32
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    move v5, v1

    .line 44
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 45
    .line 46
    .line 47
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    if-ge v5, v6, :cond_a

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "n"

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v8, "t"

    .line 61
    .line 62
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    const/16 v10, 0x64

    .line 71
    .line 72
    const-string v11, "v"

    .line 73
    .line 74
    if-eq v9, v10, :cond_7

    .line 75
    .line 76
    const/16 v10, 0x6c

    .line 77
    .line 78
    if-eq v9, v10, :cond_6

    .line 79
    .line 80
    const/16 v10, 0x73

    .line 81
    .line 82
    if-eq v9, v10, :cond_5

    .line 83
    .line 84
    const/16 v10, 0xd18

    .line 85
    .line 86
    if-eq v9, v10, :cond_3

    .line 87
    .line 88
    const/16 v10, 0xd75

    .line 89
    .line 90
    if-eq v9, v10, :cond_1

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_1
    const-string v9, "la"

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_8

    .line 101
    .line 102
    :try_start_2
    invoke-static {}, Ler4;->a()V

    .line 103
    .line 104
    .line 105
    iget-object v8, v0, Lr45;->d:Lds4;

    .line 106
    .line 107
    sget-object v9, Le05;->P0:Ld05;

    .line 108
    .line 109
    invoke-virtual {v8, v3, v9}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_9

    .line 114
    .line 115
    new-instance v8, Lorg/json/JSONArray;

    .line 116
    .line 117
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    new-array v9, v6, [J

    .line 129
    .line 130
    move v10, v1

    .line 131
    :goto_1
    if-ge v10, v6, :cond_2

    .line 132
    .line 133
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    aput-wide v11, v9, v10

    .line 138
    .line 139
    add-int/lit8 v10, v10, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_3
    const-string v9, "ia"

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_8

    .line 154
    .line 155
    :try_start_3
    invoke-static {}, Ler4;->a()V

    .line 156
    .line 157
    .line 158
    iget-object v8, v0, Lr45;->d:Lds4;

    .line 159
    .line 160
    sget-object v9, Le05;->P0:Ld05;

    .line 161
    .line 162
    invoke-virtual {v8, v3, v9}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_9

    .line 167
    .line 168
    new-instance v8, Lorg/json/JSONArray;

    .line 169
    .line 170
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    new-array v9, v6, [I

    .line 182
    .line 183
    move v10, v1

    .line 184
    :goto_2
    if-ge v10, v6, :cond_4

    .line 185
    .line 186
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optInt(I)I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    aput v11, v9, v10

    .line 191
    .line 192
    add-int/lit8 v10, v10, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_5
    const-string v9, "s"

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_8

    .line 206
    .line 207
    :try_start_4
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    const-string v9, "l"

    .line 216
    .line 217
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_8

    .line 222
    .line 223
    :try_start_5
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 228
    .line 229
    .line 230
    move-result-wide v8

    .line 231
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_7
    const-string v9, "d"

    .line 236
    .line 237
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_8

    .line 242
    .line 243
    :try_start_6
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 248
    .line 249
    .line 250
    move-result-wide v8

    .line 251
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_8
    :goto_3
    iget-object v6, v0, Lr45;->f:La25;

    .line 256
    .line 257
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v6, La25;->f:Lx15;

    .line 261
    .line 262
    const-string v7, "Unrecognized persisted bundle type. Type"

    .line 263
    .line 264
    invoke-virtual {v6, v8, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catch_0
    :try_start_7
    iget-object v6, v0, Lr45;->f:La25;

    .line 269
    .line 270
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 271
    .line 272
    .line 273
    iget-object v6, v6, La25;->f:Lx15;

    .line 274
    .line 275
    const-string v7, "Error reading value from SharedPreferences. Value dropped"

    .line 276
    .line 277
    invoke-virtual {v6, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_a
    iput-object v2, p0, Lqd1;->q:Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :catch_1
    iget-object v0, v0, Lr45;->f:La25;

    .line 288
    .line 289
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v0, La25;->f:Lx15;

    .line 293
    .line 294
    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_b
    :goto_5
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Landroid/os/Bundle;

    .line 302
    .line 303
    if-nez v0, :cond_c

    .line 304
    .line 305
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Landroid/os/Bundle;

    .line 308
    .line 309
    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 310
    .line 311
    :cond_c
    :goto_6
    new-instance v0, Landroid/os/Bundle;

    .line 312
    .line 313
    iget-object p0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p0, Landroid/os/Bundle;

    .line 316
    .line 317
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    check-cast p0, Landroid/os/Bundle;

    .line 322
    .line 323
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 324
    .line 325
    .line 326
    return-object v0
.end method

.method public varargs K(Lqd1;[Lp55;)Lls4;
    .locals 4

    .line 1
    sget-object v0, Lls4;->f:Lvs4;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v0, p2, v2

    .line 8
    .line 9
    invoke-static {v0}, Lvj4;->d(Lp55;)Lls4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lqd1;

    .line 16
    .line 17
    invoke-static {v3}, Lai4;->q(Lqd1;)V

    .line 18
    .line 19
    .line 20
    instance-of v3, v0, Lns4;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    instance-of v3, v0, Lis4;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-object v3, p0, Lqd1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lpc4;

    .line 31
    .line 32
    invoke-virtual {v3, p1, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0
.end method

.method public L(Lls4;)Lls4;
    .locals 1

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpc4;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public M(Lvn4;)Lls4;
    .locals 3

    .line 1
    sget-object v0, Lls4;->f:Lvs4;

    .line 2
    .line 3
    invoke-virtual {p1}, Lvn4;->k()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lqd1;->r:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lpc4;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lvn4;->m(I)Lls4;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, p0, v0}, Lpc4;->h(Lqd1;Lls4;)Lls4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v2, v0, Ljp4;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    :cond_1
    return-object v0
.end method

.method public N(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf35;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    move-object p1, v1

    .line 19
    :goto_0
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lr45;

    .line 26
    .line 27
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    .line 47
    .line 48
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_c

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v8, "n"

    .line 83
    .line 84
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ler4;->a()V

    .line 88
    .line 89
    .line 90
    iget-object v5, v0, Lr45;->d:Lds4;

    .line 91
    .line 92
    sget-object v8, Le05;->P0:Ld05;

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    invoke-virtual {v5, v9, v8}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 96
    .line 97
    .line 98
    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const-string v8, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 100
    .line 101
    const-string v9, "d"

    .line 102
    .line 103
    const-string v10, "l"

    .line 104
    .line 105
    const-string v11, "s"

    .line 106
    .line 107
    const-string v12, "v"

    .line 108
    .line 109
    const-string v13, "t"

    .line 110
    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    :try_start_1
    instance-of v5, v6, Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v5, :cond_3

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :catch_0
    move-exception v5

    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_3
    instance-of v5, v6, Ljava/lang/Long;

    .line 133
    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    instance-of v5, v6, [I

    .line 148
    .line 149
    if-eqz v5, :cond_5

    .line 150
    .line 151
    check-cast v6, [I

    .line 152
    .line 153
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    const-string v5, "ia"

    .line 161
    .line 162
    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    instance-of v5, v6, [J

    .line 167
    .line 168
    if-eqz v5, :cond_6

    .line 169
    .line 170
    check-cast v6, [J

    .line 171
    .line 172
    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string v5, "la"

    .line 180
    .line 181
    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    instance-of v5, v6, Ljava/lang/Double;

    .line 186
    .line 187
    if-eqz v5, :cond_7

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    iget-object v5, v0, Lr45;->f:La25;

    .line 201
    .line 202
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 203
    .line 204
    .line 205
    iget-object v5, v5, La25;->f:Lx15;

    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v5, v6, v8}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    instance-of v5, v6, Ljava/lang/String;

    .line 224
    .line 225
    if-eqz v5, :cond_9

    .line 226
    .line 227
    invoke-virtual {v7, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_9
    instance-of v5, v6, Ljava/lang/Long;

    .line 232
    .line 233
    if-eqz v5, :cond_a

    .line 234
    .line 235
    invoke-virtual {v7, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_a
    instance-of v5, v6, Ljava/lang/Double;

    .line 240
    .line 241
    if-eqz v5, :cond_b

    .line 242
    .line 243
    invoke-virtual {v7, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    :goto_2
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 247
    .line 248
    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_b
    iget-object v5, v0, Lr45;->f:La25;

    .line 252
    .line 253
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 254
    .line 255
    .line 256
    iget-object v5, v5, La25;->f:Lx15;

    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5, v6, v8}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :goto_3
    iget-object v6, v0, Lr45;->f:La25;

    .line 268
    .line 269
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 270
    .line 271
    .line 272
    iget-object v6, v6, La25;->f:Lx15;

    .line 273
    .line 274
    const-string v7, "Cannot serialize bundle value to SharedPreferences"

    .line 275
    .line 276
    invoke-virtual {v6, v5, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    .line 287
    .line 288
    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    .line 290
    .line 291
    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 292
    .line 293
    return-void
.end method

.method public O()Lqd1;
    .locals 2

    .line 1
    new-instance v0, Lqd1;

    .line 2
    .line 3
    iget-object v1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lpc4;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lqd1;-><init>(Lqd1;Lpc4;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public P(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lqd1;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lqd1;->P(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public Q(Ljava/lang/String;Lls4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lqd1;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lqd1;->P(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Lqd1;->Q(Ljava/lang/String;Lls4;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    if-nez p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public R(Ljava/lang/String;Lls4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public S(Ljava/lang/String;)Lls4;
    .locals 2

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lls4;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lqd1;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lqd1;->S(Ljava/lang/String;)Lls4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " is not defined"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public b()Lqz0;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpp3;

    .line 4
    .line 5
    iget-object p0, p0, Lpp3;->u:Lqz0;

    .line 6
    .line 7
    return-object p0
.end method

.method public c(Lbf;Lbf;Lbf;)J
    .locals 8

    .line 1
    invoke-virtual {p1}, Lbf;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Lqd1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lcf;

    .line 13
    .line 14
    invoke-interface {v4, v3}, Lcf;->get(I)Ls71;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1, v3}, Lbf;->a(I)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p2, v3}, Lbf;->a(I)F

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {p3, v3}, Lbf;->a(I)F

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-interface {v4, v5, v6, v7}, Ls71;->d(FFF)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-wide v1
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    iget v0, p0, Lqd1;->n:I

    .line 2
    .line 3
    sget-object v1, Lfu0;->n:Lfu0;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lhe5;

    .line 10
    .line 11
    iget-object v3, p0, Lqd1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lce5;

    .line 14
    .line 15
    iget-object v4, p0, Lqd1;->q:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Lic5;

    .line 18
    .line 19
    iget-object v5, p0, Lqd1;->r:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v5, v6}, Lhe5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    sget v3, Lvf5;->a:I

    .line 28
    .line 29
    invoke-static {}, Lye5;->a()Lrf5;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lic5;

    .line 34
    .line 35
    invoke-direct {v4, v2, v3, v0}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ls0;

    .line 41
    .line 42
    invoke-static {p0, v4, v1}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_0
    new-instance v0, Lge5;

    .line 48
    .line 49
    iget-object v3, p0, Lqd1;->o:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Lbo;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v0, v3, v4}, Lge5;-><init>(Lbo;I)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lqd1;->p:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v5, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 60
    .line 61
    invoke-static {v5, v0, v1}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v5, p0, Lqd1;->q:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lic5;

    .line 68
    .line 69
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    invoke-static {v0, v5, p0}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v5, Lhe5;

    .line 78
    .line 79
    invoke-direct {v5, v3, v0, p0, v4}, Lhe5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    sget v0, Lvf5;->a:I

    .line 83
    .line 84
    invoke-static {}, Lye5;->a()Lrf5;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v3, Lic5;

    .line 89
    .line 90
    invoke-direct {v3, v2, v0, v5}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v3, v1}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lb40;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpp3;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lpp3;->d(Lb40;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lkf4;

    .line 12
    .line 13
    invoke-virtual {v1}, Lkf4;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    iget v2, p1, Lb40;->o:I

    .line 22
    .line 23
    sub-int/2addr v2, v0

    .line 24
    new-instance v3, Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lb40;->n:[C

    .line 27
    .line 28
    invoke-direct {v3, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 29
    .line 30
    .line 31
    const-string p1, "\r\n"

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "Input"

    .line 46
    .line 47
    invoke-static {p0, p1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 53
    .line 54
    .line 55
    const-string p0, "<< "

    .line 56
    .line 57
    invoke-virtual {v1, p0, p1}, Lkf4;->e(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return v0
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lx11;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lx11;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public f()Lkn3;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lhq0;

    .line 4
    .line 5
    return-object p0
.end method

.method public g()Lyp3;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Liq0;

    .line 4
    .line 5
    return-object p0
.end method

.method public h(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpp3;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lpp3;->h(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public i(Llc1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 p0, 0x1

    .line 25
    iput-boolean p0, p1, Llc1;->mAdded:Z

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_0
    const-string p0, "Fragment already added: "

    .line 32
    .line 33
    invoke-static {p1, p0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public j(Lnr3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lwu4;

    .line 23
    .line 24
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public l(Lvv2;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfw2;

    .line 4
    .line 5
    iget-object v1, p1, Lvv2;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lzv2;

    .line 20
    .line 21
    invoke-virtual {v5}, Lzv2;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lqd1;->H(Lvv2;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lqd1;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lgy1;

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    invoke-interface {v2, v4, v5}, Lgy1;->J(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    new-instance v2, Loc;

    .line 47
    .line 48
    const/4 v6, 0x6

    .line 49
    invoke-direct {v2, v6, p0, v0}, Loc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v4, v5, v2, v3}, Ldm0;->N(Lvv2;JLpe1;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lew2;

    .line 58
    .line 59
    sget-object v2, Lew2;->o:Lew2;

    .line 60
    .line 61
    if-ne p0, v2, :cond_3

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :goto_1
    if-ge v3, p0, :cond_2

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lzv2;

    .line 76
    .line 77
    invoke-virtual {p2}, Lzv2;->a()V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object p0, p1, Lvv2;->b:Lft1;

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    iget-boolean p1, v0, Lfw2;->d:Z

    .line 88
    .line 89
    xor-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    iput-boolean p1, p0, Lft1;->o:Z

    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    const-string p0, "layoutCoordinates not set"

    .line 95
    .line 96
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public m(JLbf;Lbf;Lbf;)Lbf;
    .locals 14

    .line 1
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbf;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p5 .. p5}, Lbf;->c()Lbf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lbf;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "velocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lbf;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lqd1;->q:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lbf;

    .line 30
    .line 31
    if-ge v3, v0, :cond_2

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lcf;

    .line 38
    .line 39
    invoke-interface {v5, v3}, Lcf;->get(I)Ls71;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Lbf;->a(I)F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    move-object/from16 v12, p4

    .line 50
    .line 51
    invoke-virtual {v12, v3}, Lbf;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    move-object/from16 v13, p5

    .line 56
    .line 57
    invoke-virtual {v13, v3}, Lbf;->a(I)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    move-wide v7, p1

    .line 62
    invoke-interface/range {v6 .. v11}, Ls71;->c(JFFF)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v4, v3, v6}, Lbf;->e(IF)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    if-eqz v4, :cond_3

    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_3
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1
.end method

.method public n(Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lfn0;

    .line 4
    .line 5
    instance-of v1, p1, Lnm0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lnm0;

    .line 11
    .line 12
    iget v2, v1, Lnm0;->s:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lnm0;->s:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lnm0;

    .line 25
    .line 26
    invoke-direct {v1, p0, p1}, Lnm0;-><init>(Lqd1;Lfh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, v1, Lnm0;->q:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v1, Lnm0;->s:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Ljava/util/List;

    .line 62
    .line 63
    sget-object v2, Lri0;->n:Lri0;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v0}, Lfn0;->i()Lvs1;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v5, Lqm0;

    .line 79
    .line 80
    invoke-direct {v5, v0, p0, v3}, Lqm0;-><init>(Lfn0;Lqd1;Ldh0;)V

    .line 81
    .line 82
    .line 83
    iput v4, v1, Lnm0;->s:I

    .line 84
    .line 85
    invoke-interface {p1, v5, v1}, Lvs1;->a(Lpe1;Lfh0;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v2, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    :goto_1
    check-cast p1, Lam0;

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    :goto_2
    iput v5, v1, Lnm0;->s:I

    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    invoke-static {v0, p0, v1}, Lfn0;->h(Lfn0;ZLfh0;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v2, :cond_7

    .line 103
    .line 104
    :goto_3
    return-object v2

    .line 105
    :cond_7
    :goto_4
    check-cast p1, Lam0;

    .line 106
    .line 107
    :goto_5
    iget-object p0, v0, Lfn0;->h:Lwu4;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lwu4;->v(Lsr3;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lt64;->a:Lt64;

    .line 113
    .line 114
    return-object p0
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lmq0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lnq0;->a()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Animation from operation "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lpq3;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, " has been cancelled."

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "FragmentManager"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public p(JLbf;Lbf;Lbf;)Lbf;
    .locals 14

    .line 1
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbf;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lbf;->c()Lbf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lbf;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "valueVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lbf;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lqd1;->p:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lbf;

    .line 30
    .line 31
    if-ge v3, v0, :cond_2

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lcf;

    .line 38
    .line 39
    invoke-interface {v5, v3}, Lcf;->get(I)Ls71;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Lbf;->a(I)F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    move-object/from16 v12, p4

    .line 50
    .line 51
    invoke-virtual {v12, v3}, Lbf;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    move-object/from16 v13, p5

    .line 56
    .line 57
    invoke-virtual {v13, v3}, Lbf;->a(I)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    move-wide v7, p1

    .line 62
    invoke-interface/range {v6 .. v11}, Ls71;->b(JFFF)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v4, v3, v6}, Lbf;->e(IF)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    if-eqz v4, :cond_3

    .line 77
    .line 78
    return-object v4

    .line 79
    :cond_3
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1
.end method

.method public q(Lbf;Lbf;Lbf;)Lbf;
    .locals 9

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbf;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lbf;->c()Lbf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lbf;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "endVelocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lbf;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    iget-object v4, p0, Lqd1;->r:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lbf;

    .line 30
    .line 31
    if-ge v3, v0, :cond_2

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lcf;

    .line 38
    .line 39
    invoke-interface {v5, v3}, Lcf;->get(I)Ls71;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1, v3}, Lbf;->a(I)F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p2, v3}, Lbf;->a(I)F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {p3, v3}, Lbf;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-interface {v5, v6, v7, v8}, Ls71;->e(FFF)F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v4, v3, v5}, Lbf;->e(IF)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    if-eqz v4, :cond_3

    .line 70
    .line 71
    return-object v4

    .line 72
    :cond_3
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1
.end method

.method public declared-synchronized r()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lhi4;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " Dispatcher"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v8, Lgi4;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v8, v0, v2}, Lgi4;-><init>(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const v3, 0x7fffffff

    .line 44
    .line 45
    .line 46
    const-wide/16 v4, 0x3c

    .line 47
    .line 48
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lqd1;->o:Ljava/lang/Object;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-object v0

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw v0
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpp3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lpp3;->read()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkf4;

    .line 12
    .line 13
    invoke-virtual {p0}, Lkf4;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    int-to-byte v1, v0

    .line 23
    const/4 v2, 0x1

    .line 24
    new-array v2, v2, [B

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-byte v1, v2, v3

    .line 28
    .line 29
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    const-string v2, "<< "

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Lkf4;->e(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 40
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    check-cast v0, Lpp3;

    invoke-virtual {v0, p1, p2, p3}, Lpp3;->read([BII)I

    move-result p3

    .line 41
    iget-object p0, p0, Lqd1;->q:Ljava/lang/Object;

    check-cast p0, Lkf4;

    invoke-virtual {p0}, Lkf4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 42
    const-string v0, "Input"

    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string p1, "<< "

    invoke-virtual {p0, p1, v0}, Lkf4;->e(Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V

    :cond_0
    return p3
.end method

.method public s(Ljava/lang/String;)Llc1;
    .locals 0

    .line 1
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpd1;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lpd1;->c:Llc1;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public t(Ljava/lang/String;)Le23;
    .locals 3

    .line 1
    iget-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Le23;

    .line 23
    .line 24
    iget-object v2, v1, Le23;->p:Lh23;

    .line 25
    .line 26
    iget-object v2, v2, Lh23;->o:Lk63;

    .line 27
    .line 28
    iget-object v2, v2, Lk63;->a:Lcn1;

    .line 29
    .line 30
    iget-object v2, v2, Lcn1;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Le23;

    .line 61
    .line 62
    iget-object v1, v0, Le23;->p:Lh23;

    .line 63
    .line 64
    iget-object v1, v1, Lh23;->o:Lk63;

    .line 65
    .line 66
    iget-object v1, v1, Lk63;->a:Lcn1;

    .line 67
    .line 68
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lqd1;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/net/Socket;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public u(Ljava/lang/String;)Llc1;
    .locals 1

    .line 1
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lpd1;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lpd1;->c:Llc1;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Llc1;->findFragmentByWho(Ljava/lang/String;)Llc1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lpd1;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public w()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lpd1;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v1, Lpd1;->c:Llc1;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public y()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lqa2;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lqa2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lqa2;-><init>(Lqd1;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lqa2;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public z()Lms1;
    .locals 1

    .line 1
    iget-object p0, p0, Lqd1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/regex/Matcher;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p0}, Lix;->a0(II)Lms1;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
