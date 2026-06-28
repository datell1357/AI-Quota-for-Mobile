.class public final Lv62;
.super Ljava/util/AbstractMap;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field public static final F:Lw52;

.field public static final G:Lx52;


# instance fields
.field public final A:I

.field public final B:Lx00;

.field public C:Ld62;

.field public D:Lp62;

.field public E:Ld62;

.field public final n:I

.field public final o:I

.field public final p:[Li62;

.field public final q:I

.field public final r:La21;

.field public final s:La21;

.field public final t:I

.field public final u:I

.field public final v:J

.field public final w:I

.field public final x:J

.field public final y:Lx52;

.field public final z:Ldz3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lv62;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lw52;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lv62;->F:Lw52;

    .line 16
    .line 17
    new-instance v0, Lx52;

    .line 18
    .line 19
    invoke-direct {v0}, Lx52;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lv62;->G:Lx52;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lo00;Lx00;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/high16 v1, 0x10000

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lv62;->q:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lv62;->t:I

    .line 15
    .line 16
    iput v0, p0, Lv62;->u:I

    .line 17
    .line 18
    sget-object v1, La21;->x:La21;

    .line 19
    .line 20
    iput-object v1, p0, Lv62;->r:La21;

    .line 21
    .line 22
    iput-object v1, p0, Lv62;->s:La21;

    .line 23
    .line 24
    iget-wide v1, p1, Lo00;->b:J

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long p1, v1, v3

    .line 29
    .line 30
    const-wide/16 v5, -0x1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    move-wide v7, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-wide v7, v3

    .line 37
    :goto_0
    iput-wide v7, p0, Lv62;->v:J

    .line 38
    .line 39
    iput v0, p0, Lv62;->w:I

    .line 40
    .line 41
    cmp-long p1, v1, v5

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    move-wide v1, v3

    .line 46
    :cond_1
    iput-wide v1, p0, Lv62;->x:J

    .line 47
    .line 48
    sget-object p1, Lv62;->G:Lx52;

    .line 49
    .line 50
    iput-object p1, p0, Lv62;->y:Lx52;

    .line 51
    .line 52
    invoke-virtual {p0}, Lv62;->b()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    sget-object p1, Lo00;->d:Ln00;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    sget-object p1, Ldz3;->a:Lcz3;

    .line 62
    .line 63
    :goto_1
    iput-object p1, p0, Lv62;->z:Ldz3;

    .line 64
    .line 65
    invoke-virtual {p0}, Lv62;->a()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Lv62;->b()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x0

    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Lv62;->b()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v1, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    move v1, v0

    .line 86
    :goto_3
    if-eqz v1, :cond_5

    .line 87
    .line 88
    const/4 v1, 0x2

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move v1, v2

    .line 91
    :goto_4
    or-int/2addr p1, v1

    .line 92
    sget-object v1, Ldi0;->n:[I

    .line 93
    .line 94
    aget p1, v1, p1

    .line 95
    .line 96
    iput p1, p0, Lv62;->A:I

    .line 97
    .line 98
    sget-object p1, Lo00;->c:Lfu3;

    .line 99
    .line 100
    iget-object v1, p1, Lfu3;->n:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lm00;

    .line 103
    .line 104
    iput-object p2, p0, Lv62;->B:Lx00;

    .line 105
    .line 106
    const/16 p2, 0x10

    .line 107
    .line 108
    const/high16 v1, 0x40000000    # 2.0f

    .line 109
    .line 110
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0}, Lv62;->a()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    int-to-long v3, p2

    .line 121
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    long-to-int p2, v3

    .line 126
    :cond_6
    move v1, v0

    .line 127
    move v3, v2

    .line 128
    :goto_5
    iget v4, p0, Lv62;->q:I

    .line 129
    .line 130
    if-ge v1, v4, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0}, Lv62;->a()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    int-to-long v4, v1

    .line 139
    const-wide/16 v6, 0x14

    .line 140
    .line 141
    mul-long/2addr v4, v6

    .line 142
    iget-wide v6, p0, Lv62;->v:J

    .line 143
    .line 144
    cmp-long v4, v4, v6

    .line 145
    .line 146
    if-gtz v4, :cond_8

    .line 147
    .line 148
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    shl-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    rsub-int/lit8 v3, v3, 0x20

    .line 154
    .line 155
    iput v3, p0, Lv62;->o:I

    .line 156
    .line 157
    add-int/lit8 v3, v1, -0x1

    .line 158
    .line 159
    iput v3, p0, Lv62;->n:I

    .line 160
    .line 161
    new-array v3, v1, [Li62;

    .line 162
    .line 163
    iput-object v3, p0, Lv62;->p:[Li62;

    .line 164
    .line 165
    div-int v3, p2, v1

    .line 166
    .line 167
    mul-int v4, v3, v1

    .line 168
    .line 169
    if-ge v4, p2, :cond_9

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    :cond_9
    move v6, v0

    .line 174
    :goto_6
    if-ge v6, v3, :cond_a

    .line 175
    .line 176
    shl-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_a
    invoke-virtual {p0}, Lv62;->a()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_c

    .line 184
    .line 185
    iget-wide v3, p0, Lv62;->v:J

    .line 186
    .line 187
    int-to-long v0, v1

    .line 188
    div-long v7, v3, v0

    .line 189
    .line 190
    const-wide/16 v10, 0x1

    .line 191
    .line 192
    add-long/2addr v7, v10

    .line 193
    rem-long v0, v3, v0

    .line 194
    .line 195
    :goto_7
    iget-object p2, p0, Lv62;->p:[Li62;

    .line 196
    .line 197
    array-length v3, p2

    .line 198
    if-ge v2, v3, :cond_d

    .line 199
    .line 200
    int-to-long v3, v2

    .line 201
    cmp-long v3, v3, v0

    .line 202
    .line 203
    if-nez v3, :cond_b

    .line 204
    .line 205
    sub-long/2addr v7, v10

    .line 206
    :cond_b
    iget-object v3, p1, Lfu3;->n:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v9, v3

    .line 209
    check-cast v9, Lm00;

    .line 210
    .line 211
    new-instance v4, Li62;

    .line 212
    .line 213
    move-object v5, p0

    .line 214
    invoke-direct/range {v4 .. v9}, Li62;-><init>(Lv62;IJLm00;)V

    .line 215
    .line 216
    .line 217
    aput-object v4, p2, v2

    .line 218
    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_c
    move-object v5, p0

    .line 223
    :goto_8
    iget-object p0, v5, Lv62;->p:[Li62;

    .line 224
    .line 225
    array-length p2, p0

    .line 226
    if-ge v2, p2, :cond_d

    .line 227
    .line 228
    iget-object p2, p1, Lfu3;->n:Ljava/lang/Object;

    .line 229
    .line 230
    move-object v9, p2

    .line 231
    check-cast v9, Lm00;

    .line 232
    .line 233
    new-instance v4, Li62;

    .line 234
    .line 235
    const-wide/16 v7, -0x1

    .line 236
    .line 237
    invoke-direct/range {v4 .. v9}, Li62;-><init>(Lv62;IJLm00;)V

    .line 238
    .line 239
    .line 240
    aput-object v4, p0, v2

    .line 241
    .line 242
    add-int/lit8 v2, v2, 0x1

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_d
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lv62;->v:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lv62;->x:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final clear()V
    .locals 12

    .line 1
    iget-object p0, p0, Lv62;->p:[Li62;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_b

    .line 7
    .line 8
    aget-object v3, p0, v2

    .line 9
    .line 10
    iget v4, v3, Li62;->o:I

    .line 11
    .line 12
    if-eqz v4, :cond_a

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v4, v3, Li62;->n:Lv62;

    .line 18
    .line 19
    iget-object v4, v4, Lv62;->z:Ldz3;

    .line 20
    .line 21
    invoke-virtual {v4}, Ldz3;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-virtual {v3, v4, v5}, Li62;->t(J)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v3, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 29
    .line 30
    move v5, v1

    .line 31
    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x1

    .line 36
    if-ge v5, v6, :cond_4

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lx33;

    .line 43
    .line 44
    :goto_2
    if-eqz v6, :cond_3

    .line 45
    .line 46
    invoke-interface {v6}, Lx33;->d()Lo62;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-interface {v8}, Lo62;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    invoke-interface {v6}, Lx33;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-interface {v6}, Lx33;->d()Lo62;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-interface {v9}, Lo62;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    if-nez v9, :cond_0

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_0
    move v10, v7

    .line 74
    goto :goto_4

    .line 75
    :cond_1
    :goto_3
    const/4 v10, 0x3

    .line 76
    :goto_4
    invoke-interface {v6}, Lx33;->n()I

    .line 77
    .line 78
    .line 79
    invoke-interface {v6}, Lx33;->d()Lo62;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-interface {v11}, Lo62;->g()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-virtual {v3, v11, v10, v8, v9}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_b

    .line 93
    :cond_2
    :goto_5
    invoke-interface {v6}, Lx33;->m()Lx33;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v5, v1

    .line 102
    :goto_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-ge v5, v6, :cond_5

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_5
    iget-object v4, v3, Li62;->n:Lv62;

    .line 116
    .line 117
    iget v5, v4, Lv62;->t:I

    .line 118
    .line 119
    if-eq v5, v7, :cond_6

    .line 120
    .line 121
    move v5, v7

    .line 122
    goto :goto_7

    .line 123
    :cond_6
    move v5, v1

    .line 124
    :goto_7
    if-eqz v5, :cond_7

    .line 125
    .line 126
    :goto_8
    iget-object v5, v3, Li62;->u:Ljava/lang/ref/ReferenceQueue;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_7

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_7
    iget v4, v4, Lv62;->u:I

    .line 136
    .line 137
    if-eq v4, v7, :cond_8

    .line 138
    .line 139
    move v4, v7

    .line 140
    goto :goto_9

    .line 141
    :cond_8
    move v4, v1

    .line 142
    :goto_9
    if-eqz v4, :cond_9

    .line 143
    .line 144
    :goto_a
    iget-object v4, v3, Li62;->v:Ljava/lang/ref/ReferenceQueue;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    goto :goto_a

    .line 153
    :cond_9
    iget-object v4, v3, Li62;->y:Ljava/util/AbstractQueue;

    .line 154
    .line 155
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object v4, v3, Li62;->z:Ljava/util/AbstractQueue;

    .line 159
    .line 160
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 161
    .line 162
    .line 163
    iget-object v4, v3, Li62;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    .line 165
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 166
    .line 167
    .line 168
    iget v4, v3, Li62;->q:I

    .line 169
    .line 170
    add-int/2addr v4, v7

    .line 171
    iput v4, v3, Li62;->q:I

    .line 172
    .line 173
    iput v1, v3, Li62;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Li62;->u()V

    .line 179
    .line 180
    .line 181
    goto :goto_c

    .line 182
    :goto_b
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Li62;->u()V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_a
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_b
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lv62;->f(I)Li62;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, p0, Li62;->o:I

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget-object v2, p0, Li62;->n:Lv62;

    .line 21
    .line 22
    iget-object v2, v2, Lv62;->z:Ldz3;

    .line 23
    .line 24
    invoke-virtual {v2}, Ldz3;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p0, v1, p1}, Li62;->i(ILjava/lang/Object;)Lx33;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v4, p0, Li62;->n:Lv62;

    .line 37
    .line 38
    invoke-virtual {v4, p1, v2, v3}, Lv62;->e(Lx33;J)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p0, v2, v3}, Li62;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    move-object p1, v1

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Li62;->l()V

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :cond_4
    :try_start_3
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lo62;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    :cond_5
    invoke-virtual {p0}, Li62;->l()V

    .line 81
    .line 82
    .line 83
    return v0

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {p0}, Li62;->l()V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :goto_2
    invoke-virtual {p0}, Li62;->l()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    :cond_0
    const/16 v16, 0x0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_1
    iget-object v3, v0, Lv62;->z:Ldz3;

    .line 12
    .line 13
    invoke-virtual {v3}, Ldz3;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-object v5, v0, Lv62;->p:[Li62;

    .line 18
    .line 19
    const-wide/16 v6, -0x1

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    :goto_0
    const/4 v9, 0x3

    .line 23
    if-ge v8, v9, :cond_0

    .line 24
    .line 25
    array-length v9, v5

    .line 26
    const-wide/16 v10, 0x0

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    :goto_1
    if-ge v12, v9, :cond_5

    .line 30
    .line 31
    aget-object v13, v5, v12

    .line 32
    .line 33
    iget v14, v13, Li62;->o:I

    .line 34
    .line 35
    iget-object v14, v13, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 36
    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v15, v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lx33;

    .line 51
    .line 52
    :goto_3
    if-eqz v2, :cond_3

    .line 53
    .line 54
    move-object/from16 v17, v5

    .line 55
    .line 56
    invoke-virtual {v13, v2, v3, v4}, Li62;->j(Lx33;J)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    move-object/from16 v18, v2

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    iget-object v2, v0, Lv62;->s:La21;

    .line 65
    .line 66
    invoke-virtual {v2, v1, v5}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    return v0

    .line 74
    :cond_2
    invoke-interface/range {v18 .. v18}, Lx33;->m()Lx33;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object/from16 v5, v17

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    move-object/from16 v17, v5

    .line 82
    .line 83
    add-int/lit8 v15, v15, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object/from16 v17, v5

    .line 87
    .line 88
    iget v2, v13, Li62;->q:I

    .line 89
    .line 90
    int-to-long v13, v2

    .line 91
    add-long/2addr v10, v13

    .line 92
    add-int/lit8 v12, v12, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move-object/from16 v17, v5

    .line 96
    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    cmp-long v2, v10, v6

    .line 100
    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    move-wide v6, v10

    .line 107
    move-object/from16 v5, v17

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_4
    return v16
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lv62;->r:La21;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    :goto_0
    shl-int/lit8 p1, p0, 0xf

    .line 18
    .line 19
    xor-int/lit16 p1, p1, -0x3283

    .line 20
    .line 21
    add-int/2addr p0, p1

    .line 22
    ushr-int/lit8 p1, p0, 0xa

    .line 23
    .line 24
    xor-int/2addr p0, p1

    .line 25
    shl-int/lit8 p1, p0, 0x3

    .line 26
    .line 27
    add-int/2addr p0, p1

    .line 28
    ushr-int/lit8 p1, p0, 0x6

    .line 29
    .line 30
    xor-int/2addr p0, p1

    .line 31
    shl-int/lit8 p1, p0, 0x2

    .line 32
    .line 33
    shl-int/lit8 v0, p0, 0xe

    .line 34
    .line 35
    add-int/2addr p1, v0

    .line 36
    add-int/2addr p1, p0

    .line 37
    ushr-int/lit8 p0, p1, 0x10

    .line 38
    .line 39
    xor-int/2addr p0, p1

    .line 40
    return p0
.end method

.method public final e(Lx33;J)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv62;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lx33;->f()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sub-long/2addr p2, v0

    .line 15
    iget-wide p0, p0, Lv62;->x:J

    .line 16
    .line 17
    cmp-long p0, p2, p0

    .line 18
    .line 19
    if-ltz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lv62;->E:Ld62;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ld62;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Ld62;-><init>(Lv62;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lv62;->E:Ld62;

    .line 13
    .line 14
    return-object v0
.end method

.method public final f(I)Li62;
    .locals 1

    .line 1
    iget v0, p0, Lv62;->o:I

    .line 2
    .line 3
    ushr-int/2addr p1, v0

    .line 4
    iget v0, p0, Lv62;->n:I

    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget-object p0, p0, Lv62;->p:[Li62;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lv62;->f(I)Li62;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, p0, Li62;->o:I

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget-object v2, p0, Li62;->n:Lv62;

    .line 21
    .line 22
    iget-object v2, v2, Lv62;->z:Ldz3;

    .line 23
    .line 24
    invoke-virtual {v2}, Ldz3;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p0, v1, p1}, Li62;->i(ILjava/lang/Object;)Lx33;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Li62;->n:Lv62;

    .line 36
    .line 37
    invoke-virtual {v1, p1, v2, v3}, Lv62;->e(Lx33;J)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {p0, v2, v3}, Li62;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    move-object p1, v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    .line 60
    .line 61
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Li62;->l()V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :try_start_3
    invoke-interface {p1}, Lx33;->d()Lo62;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Lo62;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0, p1, v2, v3}, Li62;->o(Lx33;J)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lx33;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Li62;->n:Lv62;

    .line 85
    .line 86
    iget-object v0, p1, Lv62;->B:Lx00;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Li62;->l()V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Li62;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0}, Li62;->l()V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :goto_2
    invoke-virtual {p0}, Li62;->l()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv62;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 10

    .line 1
    iget-object p0, p0, Lv62;->p:[Li62;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move-wide v5, v1

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v0, :cond_1

    .line 10
    .line 11
    aget-object v7, p0, v4

    .line 12
    .line 13
    iget v8, v7, Li62;->o:I

    .line 14
    .line 15
    if-eqz v8, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget v7, v7, Li62;->q:I

    .line 19
    .line 20
    int-to-long v7, v7

    .line 21
    add-long/2addr v5, v7

    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    cmp-long v0, v5, v1

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    array-length v0, p0

    .line 31
    move v7, v3

    .line 32
    :goto_1
    if-ge v7, v0, :cond_3

    .line 33
    .line 34
    aget-object v8, p0, v7

    .line 35
    .line 36
    iget v9, v8, Li62;->o:I

    .line 37
    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    return v3

    .line 41
    :cond_2
    iget v8, v8, Li62;->q:I

    .line 42
    .line 43
    int-to-long v8, v8

    .line 44
    sub-long/2addr v5, v8

    .line 45
    add-int/lit8 v7, v7, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    cmp-long p0, v5, v1

    .line 49
    .line 50
    if-nez p0, :cond_4

    .line 51
    .line 52
    return v4

    .line 53
    :cond_4
    return v3

    .line 54
    :cond_5
    return v4
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lv62;->C:Ld62;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ld62;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Ld62;-><init>(Lv62;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lv62;->C:Ld62;

    .line 13
    .line 14
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lv62;->f(I)Li62;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, p2, v1}, Li62;->m(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v1, v0}, Lv62;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lv62;->f(I)Li62;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, p1, p2, v1}, Li62;->m(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    move-result v1

    .line 145
    invoke-virtual {p0, v1}, Lv62;->f(I)Li62;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    :try_start_0
    iget-object p0, v2, Li62;->n:Lv62;

    iget-object p0, p0, Lv62;->z:Ldz3;

    invoke-virtual {p0}, Ldz3;->a()J

    move-result-wide v3

    .line 148
    invoke-virtual {v2, v3, v4}, Li62;->t(J)V

    .line 149
    iget-object p0, v2, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 150
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    and-int v10, v1, v3

    .line 151
    invoke-virtual {p0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx33;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 152
    invoke-interface {v4}, Lx33;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 153
    invoke-interface {v4}, Lx33;->n()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Li62;->n:Lv62;

    iget-object v6, v6, Lv62;->r:La21;

    .line 154
    invoke-virtual {v6, p1, v5}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    invoke-interface {v4}, Lx33;->d()Lo62;

    move-result-object v7

    .line 156
    invoke-interface {v7}, Lo62;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    move v8, v9

    goto :goto_1

    .line 157
    :cond_1
    invoke-interface {v7}, Lo62;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    move v8, p1

    .line 158
    :goto_1
    iget p1, v2, Li62;->q:I

    add-int/2addr p1, v9

    iput p1, v2, Li62;->q:I

    .line 159
    invoke-virtual/range {v2 .. v8}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    move-result-object p1

    .line 160
    iget v0, v2, Li62;->o:I

    sub-int/2addr v0, v9

    .line 161
    invoke-virtual {p0, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 162
    iput v0, v2, Li62;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    invoke-virtual {v2}, Li62;->u()V

    return-object v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 165
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    invoke-virtual {v2}, Li62;->u()V

    return-object v0

    .line 167
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lx33;->m()Lx33;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 169
    invoke-virtual {v2}, Li62;->u()V

    .line 170
    throw p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Lv62;->f(I)Li62;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object p0, v2, Li62;->n:Lv62;

    .line 20
    .line 21
    iget-object p0, p0, Lv62;->z:Ldz3;

    .line 22
    .line 23
    invoke-virtual {p0}, Ldz3;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Li62;->t(J)V

    .line 28
    .line 29
    .line 30
    iget-object p0, v2, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v9, 0x1

    .line 37
    sub-int/2addr v3, v9

    .line 38
    and-int v10, v1, v3

    .line 39
    .line 40
    invoke-virtual {p0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lx33;

    .line 45
    .line 46
    move-object v4, v3

    .line 47
    :goto_0
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Lx33;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v4}, Lx33;->n()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ne v6, v1, :cond_3

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    iget-object v6, v2, Li62;->n:Lv62;

    .line 62
    .line 63
    iget-object v6, v6, Lv62;->r:La21;

    .line 64
    .line 65
    invoke-virtual {v6, p1, v5}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v4}, Lx33;->d()Lo62;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v7}, Lo62;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-object p1, v2, Li62;->n:Lv62;

    .line 80
    .line 81
    iget-object p1, p1, Lv62;->s:La21;

    .line 82
    .line 83
    invoke-virtual {p1, p2, v6}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    move v8, v9

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-nez v6, :cond_2

    .line 92
    .line 93
    invoke-interface {v7}, Lo62;->b()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const/4 p1, 0x3

    .line 100
    move v8, p1

    .line 101
    :goto_1
    iget p1, v2, Li62;->q:I

    .line 102
    .line 103
    add-int/2addr p1, v9

    .line 104
    iput p1, v2, Li62;->q:I

    .line 105
    .line 106
    invoke-virtual/range {v2 .. v8}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget p2, v2, Li62;->o:I

    .line 111
    .line 112
    sub-int/2addr p2, v9

    .line 113
    invoke-virtual {p0, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iput p2, v2, Li62;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    if-ne v8, v9, :cond_2

    .line 119
    .line 120
    move v0, v9

    .line 121
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Li62;->u()V

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object p0, v0

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lx33;->m()Lx33;

    .line 132
    .line 133
    .line 134
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_0

    .line 136
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Li62;->u()V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_4
    :goto_3
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-virtual {p0, p1}, Lv62;->d(Ljava/lang/Object;)I

    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lv62;->f(I)Li62;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    iget-object p0, v1, Li62;->n:Lv62;

    iget-object p0, p0, Lv62;->z:Ldz3;

    invoke-virtual {p0}, Ldz3;->a()J

    move-result-wide v2

    .line 192
    invoke-virtual {v1, v2, v3}, Li62;->t(J)V

    .line 193
    iget-object p0, v1, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v8, v0, v4

    .line 195
    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx33;

    move-wide v5, v2

    move-object v3, v4

    :goto_0
    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    .line 196
    invoke-interface {v3}, Lx33;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 197
    invoke-interface {v3}, Lx33;->n()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v7, v1, Li62;->n:Lv62;

    iget-object v7, v7, Lv62;->r:La21;

    .line 198
    invoke-virtual {v7, p1, v4}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-wide v10, v5

    .line 199
    invoke-interface {v3}, Lx33;->d()Lo62;

    move-result-object v6

    .line 200
    invoke-interface {v6}, Lo62;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 201
    invoke-interface {v6}, Lo62;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget p1, v1, Li62;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Li62;->q:I

    const/4 v7, 0x3

    .line 203
    invoke-virtual/range {v1 .. v7}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    move-result-object p1

    .line 204
    iget p2, v1, Li62;->o:I

    add-int/lit8 p2, p2, -0x1

    .line 205
    invoke-virtual {p0, v8, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 206
    iput p2, v1, Li62;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 207
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    invoke-virtual {v1}, Li62;->u()V

    return-object v9

    .line 209
    :cond_1
    :try_start_1
    iget p0, v1, Li62;->q:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Li62;->q:I

    .line 210
    invoke-interface {v6}, Lo62;->g()I

    move-result p0

    const/4 v0, 0x2

    .line 211
    invoke-virtual {v1, p0, v0, p1, v5}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v1, v3, p2, v10, v11}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 213
    invoke-virtual {v1, v3}, Li62;->e(Lx33;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 215
    invoke-virtual {v1}, Li62;->u()V

    return-object v5

    :cond_2
    move-wide v10, v5

    .line 216
    :try_start_2
    invoke-interface {v3}, Lx33;->m()Lx33;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    move-wide v5, v10

    goto :goto_0

    .line 217
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    invoke-virtual {v1}, Li62;->u()V

    .line 219
    throw p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lv62;->d(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move-object/from16 v4, p0

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Lv62;->f(I)Li62;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v5, v4, Li62;->n:Lv62;

    .line 29
    .line 30
    iget-object v5, v5, Lv62;->z:Ldz3;

    .line 31
    .line 32
    invoke-virtual {v5}, Ldz3;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-virtual {v4, v5, v6}, Li62;->t(J)V

    .line 37
    .line 38
    .line 39
    iget-object v11, v4, Li62;->s:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 40
    .line 41
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v12, 0x1

    .line 46
    sub-int/2addr v7, v12

    .line 47
    and-int v13, v3, v7

    .line 48
    .line 49
    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lx33;

    .line 54
    .line 55
    move-wide v8, v5

    .line 56
    move-object v6, v7

    .line 57
    :goto_0
    if-eqz v6, :cond_1

    .line 58
    .line 59
    move-object v5, v7

    .line 60
    invoke-interface {v6}, Lx33;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-interface {v6}, Lx33;->n()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-ne v10, v3, :cond_4

    .line 69
    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    iget-object v10, v4, Li62;->n:Lv62;

    .line 73
    .line 74
    iget-object v10, v10, Lv62;->r:La21;

    .line 75
    .line 76
    invoke-virtual {v10, v0, v7}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_4

    .line 81
    .line 82
    move-wide v14, v8

    .line 83
    invoke-interface {v6}, Lx33;->d()Lo62;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-interface {v9}, Lo62;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    if-nez v8, :cond_2

    .line 92
    .line 93
    invoke-interface {v9}, Lo62;->b()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    iget v0, v4, Li62;->q:I

    .line 100
    .line 101
    add-int/2addr v0, v12

    .line 102
    iput v0, v4, Li62;->q:I

    .line 103
    .line 104
    const/4 v10, 0x3

    .line 105
    invoke-virtual/range {v4 .. v10}, Li62;->s(Lx33;Lx33;Ljava/lang/Object;Ljava/lang/Object;Lo62;I)Lx33;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget v1, v4, Li62;->o:I

    .line 110
    .line 111
    sub-int/2addr v1, v12

    .line 112
    invoke-virtual {v11, v13, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iput v1, v4, Li62;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Li62;->u()V

    .line 124
    .line 125
    .line 126
    return v2

    .line 127
    :cond_2
    :try_start_1
    iget-object v3, v4, Li62;->n:Lv62;

    .line 128
    .line 129
    iget-object v3, v3, Lv62;->s:La21;

    .line 130
    .line 131
    invoke-virtual {v3, v1, v8}, Lfl4;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    iget v1, v4, Li62;->q:I

    .line 138
    .line 139
    add-int/2addr v1, v12

    .line 140
    iput v1, v4, Li62;->q:I

    .line 141
    .line 142
    invoke-interface {v9}, Lo62;->g()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-virtual {v4, v1, v2, v0, v8}, Li62;->d(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v5, p3

    .line 151
    .line 152
    invoke-virtual {v4, v6, v5, v14, v15}, Li62;->v(Lx33;Ljava/lang/Object;J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v6}, Li62;->e(Lx33;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Li62;->u()V

    .line 162
    .line 163
    .line 164
    return v12

    .line 165
    :cond_3
    :try_start_2
    invoke-virtual {v4, v6, v14, v15}, Li62;->n(Lx33;J)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    move-object v7, v5

    .line 170
    move-wide v14, v8

    .line 171
    move-object/from16 v5, p3

    .line 172
    .line 173
    invoke-interface {v6}, Lx33;->m()Lx33;

    .line 174
    .line 175
    .line 176
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    move-wide v8, v14

    .line 178
    goto :goto_0

    .line 179
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Li62;->u()V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public final size()I
    .locals 7

    .line 1
    iget-object p0, p0, Lv62;->p:[Li62;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v0, :cond_0

    .line 9
    .line 10
    aget-object v5, p0, v4

    .line 11
    .line 12
    iget v5, v5, Li62;->o:I

    .line 13
    .line 14
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    int-to-long v5, v5

    .line 19
    add-long/2addr v1, v5

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1, v2}, Lqn0;->G(J)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lv62;->D:Lp62;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lp62;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lp62;-><init>(Lv62;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv62;->D:Lp62;

    .line 12
    .line 13
    return-object v0
.end method
