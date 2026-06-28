.class public final Li62;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final A:Lm00;

.field public final n:Lv62;

.field public volatile o:I

.field public p:J

.field public q:I

.field public r:I

.field public volatile s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final t:J

.field public final u:Ljava/lang/ref/ReferenceQueue;

.field public final v:Ljava/lang/ref/ReferenceQueue;

.field public final w:Ljava/util/AbstractQueue;

.field public final x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final y:Ljava/util/AbstractQueue;

.field public final z:Ljava/util/AbstractQueue;


# direct methods
.method public constructor <init>(Lv62;IJLm00;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li62;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    iput-object p1, p0, Li62;->n:Lv62;

    .line 12
    .line 13
    iput-wide p3, p0, Li62;->t:J

    .line 14
    .line 15
    iput-object p5, p0, Li62;->A:Lm00;

    .line 16
    .line 17
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    .line 19
    invoke-direct {p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    mul-int/lit8 p2, p2, 0x3

    .line 27
    .line 28
    div-int/lit8 p2, p2, 0x4

    .line 29
    .line 30
    iput p2, p0, Li62;->r:I

    .line 31
    .line 32
    iget v0, p1, Lv62;->w:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    int-to-long v2, p2

    .line 39
    cmp-long p3, v2, p3

    .line 40
    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    add-int/2addr p2, v1

    .line 44
    iput p2, p0, Li62;->r:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    iput-object p5, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 47
    .line 48
    iget p2, p1, Lv62;->t:I

    .line 49
    .line 50
    const/4 p3, 0x0

    .line 51
    if-eq p2, v1, :cond_2

    .line 52
    .line 53
    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object p2, p3

    .line 60
    :goto_1
    iput-object p2, p0, Li62;->u:Ljava/lang/ref/ReferenceQueue;

    .line 61
    .line 62
    iget p2, p1, Lv62;->u:I

    .line 63
    .line 64
    if-eq p2, v1, :cond_3

    .line 65
    .line 66
    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 69
    .line 70
    .line 71
    :cond_3
    iput-object p3, p0, Li62;->v:Ljava/lang/ref/ReferenceQueue;

    .line 72
    .line 73
    invoke-virtual {p1}, Lv62;->a()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    sget-object p2, Lv62;->G:Lx52;

    .line 86
    .line 87
    :goto_2
    iput-object p2, p0, Li62;->w:Ljava/util/AbstractQueue;

    .line 88
    .line 89
    invoke-virtual {p1}, Lv62;->b()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    new-instance p2, Lb62;

    .line 96
    .line 97
    invoke-direct {p2, v1}, Lb62;-><init>(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    sget-object p2, Lv62;->G:Lx52;

    .line 102
    .line 103
    :goto_3
    iput-object p2, p0, Li62;->y:Ljava/util/AbstractQueue;

    .line 104
    .line 105
    invoke-virtual {p1}, Lv62;->a()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    new-instance p1, Lb62;

    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    invoke-direct {p1, p2}, Lb62;-><init>(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    sget-object p1, Lv62;->G:Lx52;

    .line 119
    .line 120
    :goto_4
    iput-object p1, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public final a(Lx33;Lx33;)Lx33;
    .locals 4

    .line 1
    invoke-interface {p1}, Lx33;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lo62;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Lo62;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_1
    iget-object v3, p0, Li62;->n:Lv62;

    .line 27
    .line 28
    iget v3, v3, Lv62;->A:I

    .line 29
    .line 30
    invoke-interface {p1}, Lx33;->n()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {v3, p0, v0, p1, p2}, Ldi0;->a(ILi62;Ljava/lang/Object;ILx33;)Lx33;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Li62;->v:Ljava/lang/ref/ReferenceQueue;

    .line 39
    .line 40
    invoke-interface {v1, p0, v2, p1}, Lo62;->d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lx33;)Lo62;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p1, p0}, Lx33;->c(Lo62;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Li62;->w:Ljava/util/AbstractQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx33;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 14

    .line 1
    iget-object v0, p0, Li62;->n:Lv62;

    .line 2
    .line 3
    iget v0, v0, Lv62;->t:I

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const/4 v8, 0x3

    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    if-eq v0, v10, :cond_3

    .line 11
    .line 12
    move v0, v9

    .line 13
    :cond_0
    iget-object v2, p0, Li62;->u:Ljava/lang/ref/ReferenceQueue;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    check-cast v2, Lx33;

    .line 22
    .line 23
    iget-object v3, p0, Li62;->n:Lv62;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lx33;->n()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v3, v4}, Lv62;->f(I)Li62;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v11, v3, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 40
    .line 41
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-int/2addr v5, v10

    .line 46
    and-int v12, v4, v5

    .line 47
    .line 48
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lx33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    move-object v5, v2

    .line 55
    move-object v2, v3

    .line 56
    move-object v3, v4

    .line 57
    :goto_0
    if-eqz v4, :cond_1

    .line 58
    .line 59
    if-ne v4, v5, :cond_2

    .line 60
    .line 61
    :try_start_1
    iget v5, v2, Li62;->q:I

    .line 62
    .line 63
    add-int/2addr v5, v10

    .line 64
    iput v5, v2, Li62;->q:I

    .line 65
    .line 66
    invoke-interface {v4}, Lx33;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v4}, Lx33;->d()Lo62;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-interface {v6}, Lo62;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-interface {v4}, Lx33;->d()Lo62;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual/range {v2 .. v8}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget v4, v2, Li62;->o:I

    .line 87
    .line 88
    sub-int/2addr v4, v10

    .line 89
    invoke-virtual {v11, v12, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput v4, v2, Li62;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Li62;->u()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    :goto_1
    move-object p0, v0

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lx33;->m()Lx33;

    .line 105
    .line 106
    .line 107
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    goto :goto_0

    .line 109
    :goto_2
    add-int/2addr v0, v10

    .line 110
    if-ne v0, v1, :cond_0

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    move-object v2, v3

    .line 115
    goto :goto_1

    .line 116
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Li62;->u()V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_3
    :goto_4
    iget-object v0, p0, Li62;->n:Lv62;

    .line 124
    .line 125
    iget v0, v0, Lv62;->u:I

    .line 126
    .line 127
    if-eq v0, v10, :cond_a

    .line 128
    .line 129
    :cond_4
    iget-object v0, p0, Li62;->v:Ljava/lang/ref/ReferenceQueue;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    move-object v7, v0

    .line 138
    check-cast v7, Lo62;

    .line 139
    .line 140
    iget-object v0, p0, Li62;->n:Lv62;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {v7}, Lo62;->f()Lx33;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2}, Lx33;->n()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v0, v3}, Lv62;->f(I)Li62;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {v2}, Lx33;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    .line 163
    .line 164
    :try_start_3
    iget-object v11, v4, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 165
    .line 166
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    sub-int/2addr v2, v10

    .line 171
    and-int v12, v3, v2

    .line 172
    .line 173
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lx33;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    .line 179
    move v5, v3

    .line 180
    move-object v3, v2

    .line 181
    move-object v2, v4

    .line 182
    move-object v4, v3

    .line 183
    :goto_5
    if-eqz v4, :cond_7

    .line 184
    .line 185
    move v6, v5

    .line 186
    :try_start_4
    invoke-interface {v4}, Lx33;->getKey()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-interface {v4}, Lx33;->n()I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    if-ne v13, v6, :cond_6

    .line 195
    .line 196
    if-eqz v5, :cond_6

    .line 197
    .line 198
    iget-object v13, v2, Li62;->n:Lv62;

    .line 199
    .line 200
    iget-object v13, v13, Lv62;->r:La21;

    .line 201
    .line 202
    invoke-virtual {v13, v0, v5}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    if-eqz v13, :cond_6

    .line 207
    .line 208
    invoke-interface {v4}, Lx33;->d()Lo62;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-ne v0, v7, :cond_5

    .line 213
    .line 214
    iget v0, v2, Li62;->q:I

    .line 215
    .line 216
    add-int/2addr v0, v10

    .line 217
    iput v0, v2, Li62;->q:I

    .line 218
    .line 219
    invoke-interface {v7}, Lo62;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual/range {v2 .. v8}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget v3, v2, Li62;->o:I

    .line 228
    .line 229
    sub-int/2addr v3, v10

    .line 230
    invoke-virtual {v11, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iput v3, v2, Li62;->o:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_8

    .line 243
    .line 244
    :goto_6
    invoke-virtual {v2}, Li62;->u()V

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :catchall_2
    move-exception v0

    .line 249
    :goto_7
    move-object p0, v0

    .line 250
    goto :goto_9

    .line 251
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_8

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_6
    :try_start_5
    invoke-interface {v4}, Lx33;->m()Lx33;

    .line 262
    .line 263
    .line 264
    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 265
    move v5, v6

    .line 266
    goto :goto_5

    .line 267
    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_8

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_8
    :goto_8
    add-int/2addr v9, v10

    .line 278
    if-ne v9, v1, :cond_4

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :catchall_3
    move-exception v0

    .line 282
    move-object v2, v4

    .line 283
    goto :goto_7

    .line 284
    :goto_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_9

    .line 292
    .line 293
    invoke-virtual {v2}, Li62;->u()V

    .line 294
    .line 295
    .line 296
    :cond_9
    throw p0

    .line 297
    :cond_a
    :goto_a
    return-void
.end method

.method public final d(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Li62;->p:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Li62;->p:J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_0

    .line 13
    .line 14
    move p1, v0

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Li62;->A:Lm00;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p0, p0, Li62;->n:Lv62;

    .line 23
    .line 24
    iget-object p1, p0, Lv62;->y:Lx52;

    .line 25
    .line 26
    sget-object p2, Lv62;->G:Lx52;

    .line 27
    .line 28
    if-eq p1, p2, :cond_2

    .line 29
    .line 30
    new-instance p1, Lz53;

    .line 31
    .line 32
    invoke-direct {p1, p3, p4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lv62;->y:Lx52;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final e(Lx33;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv62;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Li62;->b()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lo62;->g()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-long v0, v0

    .line 22
    iget-wide v2, p0, Li62;->t:J

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Lx33;->n()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Li62;->q(Lx33;II)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_0
    iget-wide v4, p0, Li62;->p:J

    .line 47
    .line 48
    cmp-long p1, v4, v2

    .line 49
    .line 50
    if-lez p1, :cond_6

    .line 51
    .line 52
    iget-object p1, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lx33;

    .line 69
    .line 70
    invoke-interface {v0}, Lx33;->d()Lo62;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Lo62;->g()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-lez v4, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Lx33;->n()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Li62;->q(Lx33;II)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_6
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v2, p0, Li62;->o:I

    .line 13
    .line 14
    shl-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 17
    .line 18
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-int/lit8 v3, v3, 0x3

    .line 26
    .line 27
    div-int/lit8 v3, v3, 0x4

    .line 28
    .line 29
    iput v3, p0, Li62;->r:I

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v5, v1, :cond_6

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lx33;

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    invoke-interface {v6}, Lx33;->m()Lx33;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v6}, Lx33;->n()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    and-int/2addr v8, v3

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_1
    move-object v9, v6

    .line 64
    :goto_1
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-interface {v7}, Lx33;->n()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    and-int/2addr v10, v3

    .line 71
    if-eq v10, v8, :cond_2

    .line 72
    .line 73
    move-object v9, v7

    .line 74
    move v8, v10

    .line 75
    :cond_2
    invoke-interface {v7}, Lx33;->m()Lx33;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    if-eq v6, v9, :cond_5

    .line 84
    .line 85
    invoke-interface {v6}, Lx33;->n()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    and-int/2addr v7, v3

    .line 90
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Lx33;

    .line 95
    .line 96
    invoke-virtual {p0, v6, v8}, Li62;->a(Lx33;Lx33;)Lx33;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {p0, v6}, Li62;->p(Lx33;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    .line 111
    :goto_3
    invoke-interface {v6}, Lx33;->m()Lx33;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    iput-object v4, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .line 121
    iput v2, p0, Li62;->o:I

    .line 122
    .line 123
    return-void
.end method

.method public final g(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Li62;->b()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Li62;->y:Ljava/util/AbstractQueue;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lx33;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    iget-object v2, p0, Li62;->n:Lv62;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v0, p1, p2}, Lv62;->e(Lx33;J)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lx33;->n()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0, v0, v2, v1}, Li62;->q(Lx33;II)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lx33;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v2, v0, p1, p2}, Lv62;->e(Lx33;J)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Lx33;->n()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p0, v0, v3, v1}, Li62;->q(Lx33;II)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;ILf62;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Li62;->A:Lm00;

    .line 2
    .line 3
    const-string v1, "CacheLoader returned null for key "

    .line 4
    .line 5
    :try_start_0
    invoke-static {p4}, Lbi4;->y(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p3, Lf62;->c:Lps3;

    .line 12
    .line 13
    invoke-virtual {v1}, Lps3;->a()J

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Li62;->w(Ljava/lang/Object;ILf62;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p4

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lv00;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "."

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, v1, v3}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    const/4 p4, 0x0

    .line 51
    :goto_0
    if-nez p4, :cond_4

    .line 52
    .line 53
    iget-object p4, p3, Lf62;->c:Lps3;

    .line 54
    .line 55
    invoke-virtual {p4}, Lps3;->a()J

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    .line 63
    .line 64
    :try_start_2
    iget-object p4, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    and-int/2addr v0, p2

    .line 73
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lx33;

    .line 78
    .line 79
    move-object v3, v2

    .line 80
    :goto_1
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-interface {v3}, Lx33;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v3}, Lx33;->n()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ne v5, p2, :cond_3

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    iget-object v5, p0, Li62;->n:Lv62;

    .line 95
    .line 96
    iget-object v5, v5, Lv62;->r:La21;

    .line 97
    .line 98
    invoke-virtual {v5, p1, v4}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    invoke-interface {v3}, Lx33;->d()Lo62;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, p3, :cond_2

    .line 109
    .line 110
    iget-object p1, p3, Lf62;->a:Lo62;

    .line 111
    .line 112
    invoke-interface {p1}, Lo62;->b()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    iget-object p1, p3, Lf62;->a:Lo62;

    .line 119
    .line 120
    invoke-interface {v3, p1}, Lx33;->c(Lo62;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_2
    move-exception p1

    .line 125
    goto :goto_3

    .line 126
    :cond_1
    invoke-virtual {p0, v2, v3}, Li62;->r(Lx33;Lx33;)Lx33;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p4, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Li62;->u()V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lx33;->m()Lx33;

    .line 141
    .line 142
    .line 143
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 144
    goto :goto_1

    .line 145
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Li62;->u()V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_4
    :goto_4
    throw v1
.end method

.method public final i(ILjava/lang/Object;)Lx33;
    .locals 3

    .line 1
    iget-object v0, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    and-int/2addr v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lx33;

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Lx33;->n()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {v0}, Lx33;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Li62;->x()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Li62;->n:Lv62;

    .line 36
    .line 37
    iget-object v2, v2, Lv62;->r:La21;

    .line 38
    .line 39
    invoke-virtual {v2, p2, v1}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_1
    invoke-interface {v0}, Lx33;->m()Lx33;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public final j(Lx33;J)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Lx33;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Li62;->x()V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lo62;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Li62;->x()V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    iget-object v2, p0, Li62;->n:Lv62;

    .line 27
    .line 28
    invoke-virtual {v2, p1, p2, p3}, Lv62;->e(Lx33;J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p0, p2, p3}, Li62;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    return-object v1

    .line 53
    :cond_3
    return-object v0
.end method

.method public final k(Ljava/lang/Object;ILx00;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, v1, Li62;->n:Lv62;

    .line 11
    .line 12
    iget-object v3, v3, Lv62;->z:Ldz3;

    .line 13
    .line 14
    invoke-virtual {v3}, Ldz3;->a()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v1, v3, v4}, Li62;->t(J)V

    .line 19
    .line 20
    .line 21
    iget v5, v1, Li62;->o:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    sub-int/2addr v5, v6

    .line 25
    iget-object v7, v1, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sub-int/2addr v8, v6

    .line 32
    and-int/2addr v8, v2

    .line 33
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Lx33;

    .line 38
    .line 39
    move-object v10, v9

    .line 40
    :goto_0
    const/4 v11, 0x0

    .line 41
    if-eqz v10, :cond_4

    .line 42
    .line 43
    invoke-interface {v10}, Lx33;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-interface {v10}, Lx33;->n()I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    if-ne v13, v2, :cond_3

    .line 52
    .line 53
    if-eqz v12, :cond_3

    .line 54
    .line 55
    iget-object v13, v1, Li62;->n:Lv62;

    .line 56
    .line 57
    iget-object v13, v13, Lv62;->r:La21;

    .line 58
    .line 59
    invoke-virtual {v13, v0, v12}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    invoke-interface {v10}, Lx33;->d()Lo62;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-interface {v13}, Lo62;->a()Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_0

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    invoke-interface {v13}, Lo62;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    if-nez v14, :cond_1

    .line 82
    .line 83
    invoke-interface {v13}, Lo62;->g()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x3

    .line 88
    invoke-virtual {v1, v3, v4, v12, v14}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_1
    iget-object v15, v1, Li62;->n:Lv62;

    .line 96
    .line 97
    invoke-virtual {v15, v10, v3, v4}, Lv62;->e(Lx33;J)Z

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    if-eqz v15, :cond_2

    .line 102
    .line 103
    invoke-interface {v13}, Lo62;->g()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/4 v4, 0x4

    .line 108
    invoke-virtual {v1, v3, v4, v12, v14}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    iget-object v3, v1, Li62;->y:Ljava/util/AbstractQueue;

    .line 112
    .line 113
    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-object v3, v1, Li62;->z:Ljava/util/AbstractQueue;

    .line 117
    .line 118
    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iput v5, v1, Li62;->o:I

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v1, v10, v3, v4}, Li62;->n(Lx33;J)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Li62;->A:Lm00;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Li62;->u()V

    .line 136
    .line 137
    .line 138
    return-object v14

    .line 139
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lx33;->m()Lx33;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    move-object v13, v11

    .line 145
    :goto_2
    if-eqz v6, :cond_6

    .line 146
    .line 147
    new-instance v11, Lf62;

    .line 148
    .line 149
    invoke-direct {v11}, Lf62;-><init>()V

    .line 150
    .line 151
    .line 152
    if-nez v10, :cond_5

    .line 153
    .line 154
    iget-object v3, v1, Li62;->n:Lv62;

    .line 155
    .line 156
    iget v3, v3, Lv62;->A:I

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v1, v0, v2, v9}, Ldi0;->a(ILi62;Ljava/lang/Object;ILx33;)Lx33;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-interface {v10, v11}, Lx33;->c(Lo62;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    invoke-interface {v10, v11}, Lx33;->c(Lo62;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Li62;->u()V

    .line 179
    .line 180
    .line 181
    if-eqz v6, :cond_7

    .line 182
    .line 183
    :try_start_2
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 184
    move-object/from16 v3, p3

    .line 185
    .line 186
    :try_start_3
    invoke-virtual {v11, v0, v3}, Lf62;->h(Ljava/lang/Object;Lx00;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v0, v2, v11, v3}, Li62;->h(Ljava/lang/Object;ILf62;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    iget-object v1, v1, Li62;->A:Lm00;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    return-object v0

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 204
    :catchall_2
    move-exception v0

    .line 205
    iget-object v1, v1, Li62;->A:Lm00;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_7
    invoke-virtual {v1, v10, v0, v13}, Li62;->y(Lx33;Ljava/lang/Object;Lo62;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0

    .line 216
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Li62;->u()V

    .line 220
    .line 221
    .line 222
    throw v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Li62;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x3f

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Li62;->n:Lv62;

    .line 12
    .line 13
    iget-object v0, v0, Lv62;->z:Ldz3;

    .line 14
    .line 15
    invoke-virtual {v0}, Ldz3;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0, v0, v1}, Li62;->t(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Li62;->u()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final m(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Li62;->n:Lv62;

    .line 5
    .line 6
    iget-object v0, v0, Lv62;->z:Ldz3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldz3;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, v0, v1}, Li62;->t(J)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Li62;->o:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget v3, p0, Li62;->r:I

    .line 20
    .line 21
    if-le v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Li62;->f()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-object v2, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    and-int/2addr v3, p1

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lx33;

    .line 44
    .line 45
    move-object v5, v4

    .line 46
    :goto_1
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    invoke-interface {v5}, Lx33;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v5}, Lx33;->n()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, p1, :cond_4

    .line 58
    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    iget-object v8, p0, Li62;->n:Lv62;

    .line 62
    .line 63
    iget-object v8, v8, Lv62;->r:La21;

    .line 64
    .line 65
    invoke-virtual {v8, p2, v7}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    invoke-interface {v5}, Lx33;->d()Lo62;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Lo62;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget p4, p0, Li62;->q:I

    .line 82
    .line 83
    add-int/lit8 p4, p4, 0x1

    .line 84
    .line 85
    iput p4, p0, Li62;->q:I

    .line 86
    .line 87
    invoke-interface {p1}, Lo62;->b()Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-eqz p4, :cond_1

    .line 92
    .line 93
    invoke-interface {p1}, Lo62;->g()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/4 p4, 0x3

    .line 98
    invoke-virtual {p0, p1, p4, p2, v2}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v5, p3, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 102
    .line 103
    .line 104
    iget p1, p0, Li62;->o:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {p0, v5, p3, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 108
    .line 109
    .line 110
    iget p1, p0, Li62;->o:I

    .line 111
    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    .line 114
    :goto_2
    iput p1, p0, Li62;->o:I

    .line 115
    .line 116
    invoke-virtual {p0, v5}, Li62;->e(Lx33;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Li62;->u()V

    .line 123
    .line 124
    .line 125
    return-object v6

    .line 126
    :cond_2
    if-eqz p4, :cond_3

    .line 127
    .line 128
    :try_start_1
    invoke-virtual {p0, v5, v0, v1}, Li62;->n(Lx33;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Li62;->u()V

    .line 135
    .line 136
    .line 137
    return-object v2

    .line 138
    :cond_3
    :try_start_2
    iget p4, p0, Li62;->q:I

    .line 139
    .line 140
    add-int/lit8 p4, p4, 0x1

    .line 141
    .line 142
    iput p4, p0, Li62;->q:I

    .line 143
    .line 144
    invoke-interface {p1}, Lo62;->g()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const/4 p4, 0x2

    .line 149
    invoke-virtual {p0, p1, p4, p2, v2}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v5, p3, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v5}, Li62;->e(Lx33;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_4
    invoke-interface {v5}, Lx33;->m()Lx33;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    goto :goto_1

    .line 164
    :cond_5
    iget p4, p0, Li62;->q:I

    .line 165
    .line 166
    add-int/lit8 p4, p4, 0x1

    .line 167
    .line 168
    iput p4, p0, Li62;->q:I

    .line 169
    .line 170
    iget-object p4, p0, Li62;->n:Lv62;

    .line 171
    .line 172
    iget p4, p4, Lv62;->A:I

    .line 173
    .line 174
    invoke-static {p4, p0, p2, p1, v4}, Ldi0;->a(ILi62;Ljava/lang/Object;ILx33;)Lx33;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1, p3, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget p2, p0, Li62;->o:I

    .line 185
    .line 186
    add-int/lit8 p2, p2, 0x1

    .line 187
    .line 188
    iput p2, p0, Li62;->o:I

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Li62;->e(Lx33;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Li62;->u()V

    .line 198
    .line 199
    .line 200
    throw p1
.end method

.method public final n(Lx33;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Li62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o(Lx33;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Li62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Li62;->w:Ljava/util/AbstractQueue;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p(Lx33;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lx33;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lx33;->n()I

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lo62;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lo62;->g()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-virtual {p0, v2, v3, v0, v1}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Li62;->y:Ljava/util/AbstractQueue;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final q(Lx33;II)Z
    .locals 10

    .line 1
    iget-object v0, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    and-int/2addr p2, v1

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v4, v1

    .line 15
    check-cast v4, Lx33;

    .line 16
    .line 17
    move-object v5, v4

    .line 18
    :goto_0
    if-eqz v5, :cond_1

    .line 19
    .line 20
    if-ne v5, p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Li62;->q:I

    .line 23
    .line 24
    add-int/2addr p1, v2

    .line 25
    iput p1, p0, Li62;->q:I

    .line 26
    .line 27
    invoke-interface {v5}, Lx33;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v5}, Lx33;->d()Lo62;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lo62;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-interface {v5}, Lx33;->d()Lo62;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    move-object v3, p0

    .line 44
    move v9, p3

    .line 45
    invoke-virtual/range {v3 .. v9}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget p1, v3, Li62;->o:I

    .line 50
    .line 51
    sub-int/2addr p1, v2

    .line 52
    invoke-virtual {v0, p2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput p1, v3, Li62;->o:I

    .line 56
    .line 57
    return v2

    .line 58
    :cond_0
    move-object v3, p0

    .line 59
    move v9, p3

    .line 60
    invoke-interface {v5}, Lx33;->m()Lx33;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public final r(Lx33;Lx33;)Lx33;
    .locals 3

    .line 1
    iget v0, p0, Li62;->o:I

    .line 2
    .line 3
    invoke-interface {p2}, Lx33;->m()Lx33;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    if-eq p1, p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Li62;->a(Lx33;Lx33;)Lx33;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Li62;->p(Lx33;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    :goto_1
    invoke-interface {p1}, Lx33;->m()Lx33;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iput v0, p0, Li62;->o:I

    .line 28
    .line 29
    return-object v1
.end method

.method public final s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;
    .locals 1

    .line 1
    invoke-interface {p5}, Lo62;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p6, p3, p4}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Li62;->y:Ljava/util/AbstractQueue;

    .line 9
    .line 10
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 14
    .line 15
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {p5}, Lo62;->a()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-interface {p5, p0}, Lo62;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Li62;->r(Lx33;Lx33;)Lx33;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final t(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Li62;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Li62;->g(J)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Li62;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Li62;->n:Lv62;

    .line 8
    .line 9
    iget-object p0, p0, Lv62;->y:Lx52;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final v(Lx33;Ljava/lang/Object;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Li62;->n:Lv62;

    .line 6
    .line 7
    iget v2, v1, Lv62;->w:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    iget v2, v1, Lv62;->u:I

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lm62;

    .line 17
    .line 18
    invoke-direct {v2, p2}, Lm62;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lx33;->c(Lo62;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Li62;->b()V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Li62;->p:J

    .line 28
    .line 29
    const-wide/16 v4, 0x1

    .line 30
    .line 31
    add-long/2addr v2, v4

    .line 32
    iput-wide v2, p0, Li62;->p:J

    .line 33
    .line 34
    invoke-virtual {v1}, Lv62;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {p1, p3, p4}, Lx33;->a(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p3, p0, Li62;->z:Ljava/util/AbstractQueue;

    .line 44
    .line 45
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Li62;->y:Ljava/util/AbstractQueue;

    .line 49
    .line 50
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p2}, Lo62;->e(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    throw v3

    .line 58
    :cond_2
    throw v3
.end method

.method public final w(Ljava/lang/Object;ILf62;Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Li62;->n:Lv62;

    .line 5
    .line 6
    iget-object v0, v0, Lv62;->z:Ldz3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ldz3;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, v0, v1}, Li62;->t(J)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Li62;->o:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget v3, p0, Li62;->r:I

    .line 20
    .line 21
    if-le v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Li62;->f()V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Li62;->o:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object v3, p0, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    add-int/lit8 v4, v4, -0x1

    .line 41
    .line 42
    and-int/2addr v4, p2

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lx33;

    .line 48
    .line 49
    move-object v6, v5

    .line 50
    :goto_1
    if-eqz v6, :cond_6

    .line 51
    .line 52
    invoke-interface {v6}, Lx33;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v6}, Lx33;->n()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-ne v8, p2, :cond_5

    .line 61
    .line 62
    if-eqz v7, :cond_5

    .line 63
    .line 64
    iget-object v8, p0, Li62;->n:Lv62;

    .line 65
    .line 66
    iget-object v8, v8, Lv62;->r:La21;

    .line 67
    .line 68
    invoke-virtual {v8, p1, v7}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    invoke-interface {v6}, Lx33;->d()Lo62;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-interface {p2}, Lo62;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x2

    .line 83
    if-eq p3, p2, :cond_2

    .line 84
    .line 85
    if-nez v3, :cond_1

    .line 86
    .line 87
    sget-object v5, Lv62;->F:Lw52;

    .line 88
    .line 89
    if-eq p2, v5, :cond_1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_1
    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p2, v4, p1, p4}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Li62;->u()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    :goto_3
    :try_start_1
    iget p2, p0, Li62;->q:I

    .line 104
    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    .line 107
    iput p2, p0, Li62;->q:I

    .line 108
    .line 109
    iget-object p2, p3, Lf62;->a:Lo62;

    .line 110
    .line 111
    invoke-interface {p2}, Lo62;->b()Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    const/4 v4, 0x3

    .line 120
    :cond_3
    iget-object p2, p3, Lf62;->a:Lo62;

    .line 121
    .line 122
    invoke-interface {p2}, Lo62;->g()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {p0, p2, v4, p1, v3}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v2, v2, -0x1

    .line 130
    .line 131
    :cond_4
    invoke-virtual {p0, v6, p4, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 132
    .line 133
    .line 134
    iput v2, p0, Li62;->o:I

    .line 135
    .line 136
    invoke-virtual {p0, v6}, Li62;->e(Lx33;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-interface {v6}, Lx33;->m()Lx33;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    goto :goto_1

    .line 145
    :cond_6
    iget p3, p0, Li62;->q:I

    .line 146
    .line 147
    add-int/lit8 p3, p3, 0x1

    .line 148
    .line 149
    iput p3, p0, Li62;->q:I

    .line 150
    .line 151
    iget-object p3, p0, Li62;->n:Lv62;

    .line 152
    .line 153
    iget p3, p3, Lv62;->A:I

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {p3, p0, p1, p2, v5}, Ldi0;->a(ILi62;Ljava/lang/Object;ILx33;)Lx33;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1, p4, v0, v1}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iput v2, p0, Li62;->o:I

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Li62;->e(Lx33;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Li62;->u()V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Li62;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    return-void
.end method

.method public final y(Lx33;Ljava/lang/Object;Lo62;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Li62;->A:Lm00;

    .line 2
    .line 3
    const-string v1, "CacheLoader returned null for key "

    .line 4
    .line 5
    invoke-interface {p3}, Lo62;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-interface {p3}, Lo62;->c()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Li62;->n:Lv62;

    .line 24
    .line 25
    iget-object p2, p2, Lv62;->z:Ldz3;

    .line 26
    .line 27
    invoke-virtual {p2}, Ldz3;->a()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {p0, p1, v1, v2}, Li62;->o(Lx33;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lm00;->e()V

    .line 35
    .line 36
    .line 37
    return-object p3

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    new-instance p0, Lv00;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, "."

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    invoke-virtual {v0}, Lm00;->e()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "Recursive load of: %s"

    .line 73
    .line 74
    invoke-static {p1, p0}, Lht4;->w(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p0
.end method
