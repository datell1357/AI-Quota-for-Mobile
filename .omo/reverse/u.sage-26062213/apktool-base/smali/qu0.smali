.class public final Lqu0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final E:Lw43;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public final D:Lpu0;

.field public final n:Lbt2;

.field public final o:J

.field public final p:Lbt2;

.field public final q:Lbt2;

.field public final r:Lbt2;

.field public final s:Ljava/util/LinkedHashMap;

.field public final t:Lbh0;

.field public final u:Ljava/lang/Object;

.field public v:J

.field public w:I

.field public x:Lc23;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw43;

    .line 2
    .line 3
    const-string v1, "[a-z0-9_-]{1,120}"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lw43;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lqu0;->E:Lw43;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(JLr51;Lbt2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lqu0;->n:Lbt2;

    .line 5
    .line 6
    iput-wide p1, p0, Lqu0;->o:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long p1, p1, v0

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "journal"

    .line 15
    .line 16
    invoke-virtual {p4, p1}, Lbt2;->e(Ljava/lang/String;)Lbt2;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lqu0;->p:Lbt2;

    .line 21
    .line 22
    const-string p1, "journal.tmp"

    .line 23
    .line 24
    invoke-virtual {p4, p1}, Lbt2;->e(Ljava/lang/String;)Lbt2;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lqu0;->q:Lbt2;

    .line 29
    .line 30
    const-string p1, "journal.bkp"

    .line 31
    .line 32
    invoke-virtual {p4, p1}, Lbt2;->e(Ljava/lang/String;)Lbt2;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lqu0;->r:Lbt2;

    .line 37
    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    const/high16 p4, 0x3f400000    # 0.75f

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p1, p2, p4, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-static {}, Lk30;->f()Lbu3;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object p2, Lji0;->o:Lii0;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p2, Lzu0;->a:Lzp0;

    .line 59
    .line 60
    sget-object p2, Llp0;->p:Llp0;

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lji0;->q0(I)Lji0;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p2}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lqu0;->t:Lbh0;

    .line 75
    .line 76
    new-instance p1, Ljava/lang/Object;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lqu0;->u:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance p1, Lpu0;

    .line 84
    .line 85
    invoke-direct {p1, p3}, Lpu0;-><init>(Lr51;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lqu0;->D:Lpu0;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    const-string p0, "maxSize <= 0"

    .line 92
    .line 93
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    throw p0
.end method

.method public static V(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lqu0;->E:Lw43;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lw43;->c(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 11
    .line 12
    const-string v1, "\""

    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final b(Lqu0;Lmu0;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lmu0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lnu0;

    .line 7
    .line 8
    iget-object v2, v1, Lnu0;->g:Lmu0;

    .line 9
    .line 10
    invoke-static {v2, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_d

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz p2, :cond_4

    .line 19
    .line 20
    iget-boolean v4, v1, Lnu0;->f:Z

    .line 21
    .line 22
    if-nez v4, :cond_4

    .line 23
    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_1

    .line 26
    .line 27
    iget-object v5, p1, Lmu0;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, [Z

    .line 30
    .line 31
    aget-boolean v5, v5, v4

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    iget-object v5, p0, Lqu0;->D:Lpu0;

    .line 36
    .line 37
    iget-object v6, v1, Lnu0;->d:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lbt2;

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Lr51;->B(Lbt2;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lmu0;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p1, v3

    .line 63
    :goto_1
    if-ge p1, v2, :cond_5

    .line 64
    .line 65
    :try_start_1
    iget-object v4, v1, Lnu0;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lbt2;

    .line 72
    .line 73
    iget-object v5, v1, Lnu0;->c:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lbt2;

    .line 80
    .line 81
    iget-object v6, p0, Lqu0;->D:Lpu0;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Lr51;->B(Lbt2;)Z

    .line 84
    .line 85
    .line 86
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iget-object v7, p0, Lqu0;->D:Lpu0;

    .line 88
    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v7, v4, v5}, Lpu0;->j(Lbt2;Lbt2;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v4, v1, Lnu0;->c:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lbt2;

    .line 102
    .line 103
    invoke-static {v7, v4}, Lw80;->q(Lr51;Lbt2;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    iget-object v4, v1, Lnu0;->b:[J

    .line 107
    .line 108
    aget-wide v6, v4, p1

    .line 109
    .line 110
    iget-object v4, p0, Lqu0;->D:Lpu0;

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Lr51;->K(Lbt2;)Li51;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v4, v4, Li51;->d:Ljava/lang/Long;

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v4

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    const-wide/16 v4, 0x0

    .line 126
    .line 127
    :goto_3
    iget-object v8, v1, Lnu0;->b:[J

    .line 128
    .line 129
    aput-wide v4, v8, p1

    .line 130
    .line 131
    iget-wide v8, p0, Lqu0;->v:J

    .line 132
    .line 133
    sub-long/2addr v8, v6

    .line 134
    add-long/2addr v8, v4

    .line 135
    iput-wide v8, p0, Lqu0;->v:J

    .line 136
    .line 137
    add-int/lit8 p1, p1, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move p1, v3

    .line 141
    :goto_4
    if-ge p1, v2, :cond_5

    .line 142
    .line 143
    iget-object v4, p0, Lqu0;->D:Lpu0;

    .line 144
    .line 145
    iget-object v5, v1, Lnu0;->d:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    check-cast v5, Lbt2;

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Lr51;->A(Lbt2;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 p1, p1, 0x1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_5
    const/4 p1, 0x0

    .line 160
    iput-object p1, v1, Lnu0;->g:Lmu0;

    .line 161
    .line 162
    iget-boolean p1, v1, Lnu0;->f:Z

    .line 163
    .line 164
    if-eqz p1, :cond_6

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lqu0;->N(Lnu0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 171
    :cond_6
    :try_start_3
    iget p1, p0, Lqu0;->w:I

    .line 172
    .line 173
    const/4 v2, 0x1

    .line 174
    add-int/2addr p1, v2

    .line 175
    iput p1, p0, Lqu0;->w:I

    .line 176
    .line 177
    iget-object p1, p0, Lqu0;->x:Lc23;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const/16 v4, 0xa

    .line 183
    .line 184
    const/16 v5, 0x20

    .line 185
    .line 186
    if-nez p2, :cond_8

    .line 187
    .line 188
    iget-boolean p2, v1, Lnu0;->e:Z

    .line 189
    .line 190
    if-eqz p2, :cond_7

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    iget-object p2, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 194
    .line 195
    iget-object v6, v1, Lnu0;->a:Ljava/lang/String;

    .line 196
    .line 197
    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-string p2, "REMOVE"

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v5}, Lc23;->writeByte(I)Lez;

    .line 206
    .line 207
    .line 208
    iget-object p2, v1, Lnu0;->a:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v4}, Lc23;->writeByte(I)Lez;

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_8
    :goto_5
    iput-boolean v2, v1, Lnu0;->e:Z

    .line 218
    .line 219
    const-string p2, "CLEAN"

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v5}, Lc23;->writeByte(I)Lez;

    .line 225
    .line 226
    .line 227
    iget-object p2, v1, Lnu0;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 230
    .line 231
    .line 232
    iget-object p2, v1, Lnu0;->b:[J

    .line 233
    .line 234
    array-length v1, p2

    .line 235
    move v6, v3

    .line 236
    :goto_6
    if-ge v6, v1, :cond_9

    .line 237
    .line 238
    aget-wide v7, p2, v6

    .line 239
    .line 240
    invoke-virtual {p1, v5}, Lc23;->writeByte(I)Lez;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v7, v8}, Lc23;->j(J)Lez;

    .line 244
    .line 245
    .line 246
    add-int/lit8 v6, v6, 0x1

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    invoke-virtual {p1, v4}, Lc23;->writeByte(I)Lez;

    .line 250
    .line 251
    .line 252
    :goto_7
    invoke-virtual {p1}, Lc23;->flush()V

    .line 253
    .line 254
    .line 255
    iget-wide p1, p0, Lqu0;->v:J

    .line 256
    .line 257
    iget-wide v4, p0, Lqu0;->o:J

    .line 258
    .line 259
    cmp-long p1, p1, v4

    .line 260
    .line 261
    if-gtz p1, :cond_b

    .line 262
    .line 263
    iget p1, p0, Lqu0;->w:I

    .line 264
    .line 265
    const/16 p2, 0x7d0

    .line 266
    .line 267
    if-lt p1, p2, :cond_a

    .line 268
    .line 269
    move v3, v2

    .line 270
    :cond_a
    if-eqz v3, :cond_c

    .line 271
    .line 272
    :cond_b
    invoke-virtual {p0}, Lqu0;->A()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    .line 274
    .line 275
    :cond_c
    monitor-exit v0

    .line 276
    return-void

    .line 277
    :cond_d
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string p1, "Check failed."

    .line 280
    .line 281
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    :goto_8
    monitor-exit v0

    .line 286
    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    new-instance v0, Lx4;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v2, v1}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    iget-object p0, p0, Lqu0;->t:Lbh0;

    .line 10
    .line 11
    invoke-static {p0, v2, v2, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final B()Lc23;
    .locals 4

    .line 1
    iget-object v0, p0, Lqu0;->D:Lpu0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lqu0;->p:Lbt2;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lpu0;->p:Lr51;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lr51;->b(Lbt2;)Lkn3;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lt41;

    .line 18
    .line 19
    new-instance v2, Lv;

    .line 20
    .line 21
    const/4 v3, 0x6

    .line 22
    invoke-direct {v2, v3, p0}, Lv;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Lt41;-><init>(Lkn3;Lv;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lc23;

    .line 29
    .line 30
    invoke-direct {p0, v1}, Lc23;-><init>(Lkn3;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final F()V
    .locals 9

    .line 1
    iget-object v0, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lnu0;

    .line 24
    .line 25
    iget-object v4, v3, Lnu0;->g:Lmu0;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    :goto_1
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    iget-object v4, v3, Lnu0;->b:[J

    .line 34
    .line 35
    aget-wide v7, v4, v6

    .line 36
    .line 37
    add-long/2addr v1, v7

    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    iput-object v4, v3, Lnu0;->g:Lmu0;

    .line 43
    .line 44
    :goto_2
    if-ge v6, v5, :cond_2

    .line 45
    .line 46
    iget-object v4, v3, Lnu0;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lbt2;

    .line 53
    .line 54
    iget-object v7, p0, Lqu0;->D:Lpu0;

    .line 55
    .line 56
    invoke-virtual {v7, v4}, Lr51;->A(Lbt2;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v3, Lnu0;->d:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lbt2;

    .line 66
    .line 67
    invoke-virtual {v7, v4}, Lr51;->A(Lbt2;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iput-wide v1, p0, Lqu0;->v:J

    .line 78
    .line 79
    return-void
.end method

.method public final K()V
    .locals 11

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, "unexpected journal header: ["

    .line 4
    .line 5
    iget-object v2, p0, Lqu0;->D:Lpu0;

    .line 6
    .line 7
    iget-object v3, p0, Lqu0;->p:Lbt2;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lpu0;->V(Lbt2;)Lyp3;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v3, Ld23;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Ld23;-><init>(Lyp3;)V

    .line 19
    .line 20
    .line 21
    const-wide v4, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string v10, "libcore.io.DiskLruCache"

    .line 47
    .line 48
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_1

    .line 53
    .line 54
    const-string v10, "1"

    .line 55
    .line 56
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_1

    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-static {v10, v7}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    const/4 v10, 0x2

    .line 74
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-static {v10, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_1

    .line 83
    .line 84
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-gtz v10, :cond_1

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    :try_start_1
    invoke-virtual {v3, v4, v5}, Ld23;->Q(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Lqu0;->L(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    :try_start_2
    iget-object v1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    sub-int/2addr v0, v1

    .line 110
    iput v0, p0, Lqu0;->w:I

    .line 111
    .line 112
    invoke-virtual {v3}, Ld23;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    .line 118
    invoke-virtual {p0}, Lqu0;->Y()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lqu0;->B()Lc23;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lqu0;->x:Lc23;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ld23;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    goto :goto_3

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_3

    .line 135
    :cond_1
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    .line 136
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, "]"

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ld23;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_2
    move-exception v0

    .line 187
    invoke-static {p0, v0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    if-nez p0, :cond_2

    .line 191
    .line 192
    return-void

    .line 193
    :cond_2
    throw p0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-static {p1, v0, v1, v2}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, "unexpected journal line: "

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v3, v5, :cond_8

    .line 13
    .line 14
    add-int/lit8 v6, v3, 0x1

    .line 15
    .line 16
    const/4 v7, 0x4

    .line 17
    invoke-static {p1, v0, v6, v7}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v9, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    if-ne v8, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-ne v3, v2, :cond_1

    .line 30
    .line 31
    const-string v2, "REMOVE"

    .line 32
    .line 33
    invoke-static {p1, v2, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    new-instance v2, Lnu0;

    .line 54
    .line 55
    invoke-direct {v2, p0, v6}, Lnu0;-><init>(Lqu0;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    check-cast v2, Lnu0;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    if-eq v8, v5, :cond_4

    .line 65
    .line 66
    if-ne v3, v6, :cond_4

    .line 67
    .line 68
    const-string v9, "CLEAN"

    .line 69
    .line 70
    invoke-static {p1, v9, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    add-int/2addr v8, p0

    .line 78
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-array v3, p0, [C

    .line 83
    .line 84
    aput-char v0, v3, v1

    .line 85
    .line 86
    invoke-static {p1, v3}, Lzs3;->R0(Ljava/lang/String;[C)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-boolean p0, v2, Lnu0;->e:Z

    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    iput-object p0, v2, Lnu0;->g:Lmu0;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    const/4 v0, 0x2

    .line 100
    if-ne p0, v0, :cond_3

    .line 101
    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    :goto_0
    if-ge v1, p0, :cond_6

    .line 107
    .line 108
    iget-object v0, v2, Lnu0;->b:[J

    .line 109
    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    aput-wide v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    invoke-static {p1, v4}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-static {p1, v4}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    if-ne v8, v5, :cond_5

    .line 134
    .line 135
    if-ne v3, v6, :cond_5

    .line 136
    .line 137
    const-string v0, "DIRTY"

    .line 138
    .line 139
    invoke-static {p1, v0, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    new-instance p1, Lmu0;

    .line 146
    .line 147
    invoke-direct {p1, p0, v2}, Lmu0;-><init>(Lqu0;Lnu0;)V

    .line 148
    .line 149
    .line 150
    iput-object p1, v2, Lnu0;->g:Lmu0;

    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    if-ne v8, v5, :cond_7

    .line 154
    .line 155
    if-ne v3, v7, :cond_7

    .line 156
    .line 157
    const-string p0, "READ"

    .line 158
    .line 159
    invoke-static {p1, p0, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_7

    .line 164
    .line 165
    :cond_6
    return-void

    .line 166
    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final N(Lnu0;)V
    .locals 10

    .line 1
    iget v0, p1, Lnu0;->h:I

    .line 2
    .line 3
    iget-object v1, p1, Lnu0;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/16 v3, 0x20

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lqu0;->x:Lc23;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v4, "DIRTY"

    .line 16
    .line 17
    invoke-virtual {v0, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lc23;->writeByte(I)Lez;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lc23;->writeByte(I)Lez;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lc23;->flush()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v0, p1, Lnu0;->h:I

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-gtz v0, :cond_5

    .line 36
    .line 37
    iget-object v0, p1, Lnu0;->g:Lmu0;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    const/4 v5, 0x2

    .line 44
    if-ge v0, v5, :cond_2

    .line 45
    .line 46
    iget-object v5, p1, Lnu0;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lbt2;

    .line 53
    .line 54
    iget-object v6, p0, Lqu0;->D:Lpu0;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Lr51;->A(Lbt2;)V

    .line 57
    .line 58
    .line 59
    iget-wide v5, p0, Lqu0;->v:J

    .line 60
    .line 61
    iget-object v7, p1, Lnu0;->b:[J

    .line 62
    .line 63
    aget-wide v8, v7, v0

    .line 64
    .line 65
    sub-long/2addr v5, v8

    .line 66
    iput-wide v5, p0, Lqu0;->v:J

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    aput-wide v5, v7, v0

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget p1, p0, Lqu0;->w:I

    .line 76
    .line 77
    add-int/2addr p1, v4

    .line 78
    iput p1, p0, Lqu0;->w:I

    .line 79
    .line 80
    iget-object p1, p0, Lqu0;->x:Lc23;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    const-string v0, "REMOVE"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lc23;->writeByte(I)Lez;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lc23;->writeByte(I)Lez;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lc23;->flush()V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lqu0;->w:I

    .line 107
    .line 108
    const/16 v0, 0x7d0

    .line 109
    .line 110
    if-lt p1, v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0}, Lqu0;->A()V

    .line 113
    .line 114
    .line 115
    :cond_4
    return-void

    .line 116
    :cond_5
    :goto_1
    iput-boolean v4, p1, Lnu0;->f:Z

    .line 117
    .line 118
    return-void
.end method

.method public final R()V
    .locals 4

    .line 1
    :goto_0
    iget-wide v0, p0, Lqu0;->v:J

    .line 2
    .line 3
    iget-wide v2, p0, Lqu0;->o:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lnu0;

    .line 30
    .line 31
    iget-boolean v2, v1, Lnu0;->f:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lqu0;->N(Lnu0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lqu0;->B:Z

    .line 42
    .line 43
    return-void
.end method

.method public final Y()V
    .locals 11

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lqu0;->x:Lc23;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lc23;->close()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    :goto_0
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 16
    .line 17
    iget-object v2, p0, Lqu0;->q:Lbt2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Lpu0;->R(Lbt2;Z)Lkn3;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lc23;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lc23;-><init>(Lkn3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 40
    .line 41
    .line 42
    const-string v4, "1"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 48
    .line 49
    .line 50
    const-wide/16 v4, 0x3

    .line 51
    .line 52
    invoke-virtual {v2, v4, v5}, Lc23;->j(J)Lez;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 56
    .line 57
    .line 58
    const-wide/16 v4, 0x2

    .line 59
    .line 60
    invoke-virtual {v2, v4, v5}, Lc23;->j(J)Lez;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lnu0;

    .line 90
    .line 91
    iget-object v6, v5, Lnu0;->g:Lmu0;

    .line 92
    .line 93
    const/16 v7, 0x20

    .line 94
    .line 95
    if-eqz v6, :cond_1

    .line 96
    .line 97
    const-string v6, "DIRTY"

    .line 98
    .line 99
    invoke-virtual {v2, v6}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v7}, Lc23;->writeByte(I)Lez;

    .line 103
    .line 104
    .line 105
    iget-object v5, v5, Lnu0;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v5}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception v1

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    const-string v6, "CLEAN"

    .line 117
    .line 118
    invoke-virtual {v2, v6}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v7}, Lc23;->writeByte(I)Lez;

    .line 122
    .line 123
    .line 124
    iget-object v6, v5, Lnu0;->a:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v6}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 127
    .line 128
    .line 129
    iget-object v5, v5, Lnu0;->b:[J

    .line 130
    .line 131
    array-length v6, v5

    .line 132
    move v8, v3

    .line 133
    :goto_2
    if-ge v8, v6, :cond_2

    .line 134
    .line 135
    aget-wide v9, v5, v8

    .line 136
    .line 137
    invoke-virtual {v2, v7}, Lc23;->writeByte(I)Lez;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v9, v10}, Lc23;->j(J)Lez;

    .line 141
    .line 142
    .line 143
    add-int/lit8 v8, v8, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v2, v1}, Lc23;->writeByte(I)Lez;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lc23;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    goto :goto_4

    .line 155
    :catchall_2
    move-exception v1

    .line 156
    goto :goto_4

    .line 157
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Lc23;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_3
    move-exception v2

    .line 162
    :try_start_4
    invoke-static {v1, v2}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    if-nez v1, :cond_5

    .line 166
    .line 167
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 168
    .line 169
    iget-object v2, p0, Lqu0;->p:Lbt2;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lr51;->B(Lbt2;)Z

    .line 172
    .line 173
    .line 174
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    iget-object v2, p0, Lqu0;->D:Lpu0;

    .line 176
    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    :try_start_5
    iget-object v1, p0, Lqu0;->p:Lbt2;

    .line 180
    .line 181
    iget-object v4, p0, Lqu0;->r:Lbt2;

    .line 182
    .line 183
    invoke-virtual {v2, v1, v4}, Lpu0;->j(Lbt2;Lbt2;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 187
    .line 188
    iget-object v2, p0, Lqu0;->q:Lbt2;

    .line 189
    .line 190
    iget-object v4, p0, Lqu0;->p:Lbt2;

    .line 191
    .line 192
    invoke-virtual {v1, v2, v4}, Lpu0;->j(Lbt2;Lbt2;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 196
    .line 197
    iget-object v2, p0, Lqu0;->r:Lbt2;

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Lr51;->A(Lbt2;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_4
    iget-object v1, p0, Lqu0;->q:Lbt2;

    .line 204
    .line 205
    iget-object v4, p0, Lqu0;->p:Lbt2;

    .line 206
    .line 207
    invoke-virtual {v2, v1, v4}, Lpu0;->j(Lbt2;Lbt2;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-virtual {p0}, Lqu0;->B()Lc23;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iput-object v1, p0, Lqu0;->x:Lc23;

    .line 215
    .line 216
    iput v3, p0, Lqu0;->w:I

    .line 217
    .line 218
    iput-boolean v3, p0, Lqu0;->y:Z

    .line 219
    .line 220
    iput-boolean v3, p0, Lqu0;->C:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 224
    :cond_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 225
    :goto_6
    monitor-exit v0

    .line 226
    throw p0
.end method

.method public final close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lqu0;->z:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p0, Lqu0;->A:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    new-array v4, v3, [Lnu0;

    .line 22
    .line 23
    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Lnu0;

    .line 28
    .line 29
    array-length v4, v1

    .line 30
    :goto_0
    if-ge v3, v4, :cond_2

    .line 31
    .line 32
    aget-object v5, v1, v3

    .line 33
    .line 34
    iget-object v5, v5, Lnu0;->g:Lmu0;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    iget-object v6, v5, Lmu0;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, Lnu0;

    .line 41
    .line 42
    iget-object v7, v6, Lnu0;->g:Lmu0;

    .line 43
    .line 44
    invoke-static {v7, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    iput-boolean v2, v6, Lnu0;->f:Z

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0}, Lqu0;->R()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lqu0;->t:Lbh0;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v1, v3}, Ldm0;->o(Lqi0;Lqd2;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lqu0;->x:Lc23;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lc23;->close()V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lqu0;->x:Lc23;

    .line 75
    .line 76
    iput-boolean v2, p0, Lqu0;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v2, p0, Lqu0;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_2
    monitor-exit v0

    .line 85
    throw p0
.end method

.method public final j(Ljava/lang/String;)Lmu0;
    .locals 5

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lqu0;->A:Z

    .line 5
    .line 6
    if-nez v1, :cond_7

    .line 7
    .line 8
    invoke-static {p1}, Lqu0;->V(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lqu0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lnu0;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v3, v1, Lnu0;->g:Lmu0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    move-object v3, v2

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v2

    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :try_start_1
    iget v3, v1, Lnu0;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v2

    .line 43
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lqu0;->B:Z

    .line 44
    .line 45
    if-nez v3, :cond_6

    .line 46
    .line 47
    iget-boolean v3, p0, Lqu0;->C:Z

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object v3, p0, Lqu0;->x:Lc23;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v4, "DIRTY"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lc23;->writeByte(I)Lez;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 68
    .line 69
    .line 70
    const/16 v4, 0xa

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lc23;->writeByte(I)Lez;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lc23;->flush()V

    .line 76
    .line 77
    .line 78
    iget-boolean v3, p0, Lqu0;->y:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object v2

    .line 84
    :cond_4
    if-nez v1, :cond_5

    .line 85
    .line 86
    :try_start_3
    new-instance v1, Lnu0;

    .line 87
    .line 88
    invoke-direct {v1, p0, p1}, Lnu0;-><init>(Lqu0;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 92
    .line 93
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_5
    new-instance p1, Lmu0;

    .line 97
    .line 98
    invoke-direct {p1, p0, v1}, Lmu0;-><init>(Lqu0;Lnu0;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, v1, Lnu0;->g:Lmu0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return-object p1

    .line 105
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lqu0;->A()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-object v2

    .line 110
    :cond_7
    :try_start_5
    const-string p0, "cache is closed"

    .line 111
    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :goto_2
    monitor-exit v0

    .line 119
    throw p0
.end method

.method public final r(Ljava/lang/String;)Lou0;
    .locals 5

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lqu0;->A:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lqu0;->V(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lqu0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lqu0;->s:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lnu0;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v1}, Lnu0;->a()Lou0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    iget v2, p0, Lqu0;->w:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    add-int/2addr v2, v3

    .line 35
    iput v2, p0, Lqu0;->w:I

    .line 36
    .line 37
    iget-object v2, p0, Lqu0;->x:Lc23;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v4, "READ"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 45
    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lc23;->writeByte(I)Lez;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lc23;->e0(Ljava/lang/String;)Lez;

    .line 53
    .line 54
    .line 55
    const/16 p1, 0xa

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lc23;->writeByte(I)Lez;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lc23;->flush()V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Lqu0;->w:I

    .line 64
    .line 65
    const/16 v2, 0x7d0

    .line 66
    .line 67
    if-lt p1, v2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    :goto_0
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Lqu0;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    :goto_1
    monitor-exit v0

    .line 80
    return-object v1

    .line 81
    :cond_3
    :goto_2
    monitor-exit v0

    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :cond_4
    :try_start_1
    const-string p0, "cache is closed"

    .line 85
    .line 86
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_3
    monitor-exit v0

    .line 93
    throw p0
.end method

.method public final z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqu0;->u:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lqu0;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 11
    .line 12
    iget-object v2, p0, Lqu0;->q:Lbt2;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lr51;->A(Lbt2;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 18
    .line 19
    iget-object v2, p0, Lqu0;->r:Lbt2;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lr51;->B(Lbt2;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 28
    .line 29
    iget-object v2, p0, Lqu0;->p:Lbt2;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lr51;->B(Lbt2;)Z

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iget-object v2, p0, Lqu0;->D:Lpu0;

    .line 36
    .line 37
    iget-object v3, p0, Lqu0;->r:Lbt2;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v2, v3}, Lr51;->A(Lbt2;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object v1, p0, Lqu0;->p:Lbt2;

    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Lpu0;->j(Lbt2;Lbt2;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v1, p0, Lqu0;->D:Lpu0;

    .line 53
    .line 54
    iget-object v2, p0, Lqu0;->p:Lbt2;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lr51;->B(Lbt2;)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :try_start_3
    invoke-virtual {p0}, Lqu0;->K()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lqu0;->F()V

    .line 67
    .line 68
    .line 69
    iput-boolean v2, p0, Lqu0;->z:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catch_0
    const/4 v1, 0x0

    .line 74
    :try_start_4
    invoke-virtual {p0}, Lqu0;->close()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lqu0;->D:Lpu0;

    .line 78
    .line 79
    iget-object v4, p0, Lqu0;->n:Lbt2;

    .line 80
    .line 81
    invoke-static {v3, v4}, Lw80;->r(Lr51;Lbt2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    .line 83
    .line 84
    :try_start_5
    iput-boolean v1, p0, Lqu0;->A:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception v2

    .line 88
    iput-boolean v1, p0, Lqu0;->A:Z

    .line 89
    .line 90
    throw v2

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lqu0;->Y()V

    .line 92
    .line 93
    .line 94
    iput-boolean v2, p0, Lqu0;->z:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v0

    .line 99
    throw p0
.end method
