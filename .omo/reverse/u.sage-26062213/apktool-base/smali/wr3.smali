.class public final Lwr3;
.super Ld2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;
.implements Lqf1;
.implements Lur3;
.implements Ltl3;
.implements Lb81;


# static fields
.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic t:J


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lwr3;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "_state$volatile"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Lwr3;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    sget-object v1, Lsa5;->a:Lsun/misc/Unsafe;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lwr3;->t:J

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwr3;->_state$volatile:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lhi0;ILvy;)La81;
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lvy;->o:Lvy;

    .line 11
    .line 12
    if-ne p3, v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lxl3;->c(Ltl3;Lhi0;ILvy;)La81;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_1
    return-object p0
.end method

.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lvr3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lvr3;

    .line 7
    .line 8
    iget v1, v0, Lvr3;->x:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lvr3;->x:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvr3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lvr3;-><init>(Lwr3;Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lvr3;->v:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lvr3;->x:I

    .line 28
    .line 29
    sget-object v2, Lri0;->n:Lri0;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v6, :cond_3

    .line 38
    .line 39
    if-eq v1, v5, :cond_2

    .line 40
    .line 41
    if-ne v1, v4, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lvr3;->u:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object p1, v0, Lvr3;->t:Ltu1;

    .line 46
    .line 47
    iget-object v1, v0, Lvr3;->s:Lyr3;

    .line 48
    .line 49
    iget-object v7, v0, Lvr3;->r:Lb81;

    .line 50
    .line 51
    iget-object v8, v0, Lvr3;->q:Lwr3;

    .line 52
    .line 53
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_2
    iget-object p0, v0, Lvr3;->u:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object p1, v0, Lvr3;->t:Ltu1;

    .line 69
    .line 70
    iget-object v1, v0, Lvr3;->s:Lyr3;

    .line 71
    .line 72
    iget-object v7, v0, Lvr3;->r:Lb81;

    .line 73
    .line 74
    iget-object v8, v0, Lvr3;->q:Lwr3;

    .line 75
    .line 76
    :try_start_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_3
    iget-object v1, v0, Lvr3;->s:Lyr3;

    .line 82
    .line 83
    iget-object p1, v0, Lvr3;->r:Lb81;

    .line 84
    .line 85
    iget-object p0, v0, Lvr3;->q:Lwr3;

    .line 86
    .line 87
    :try_start_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    move-object v8, p0

    .line 93
    move-object p0, p1

    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ld2;->c()Le2;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Lyr3;

    .line 104
    .line 105
    move-object v1, p2

    .line 106
    :goto_1
    :try_start_3
    iget-object p2, v0, Lfh0;->o:Lhi0;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    sget-object v7, Lmj1;->W:Lmj1;

    .line 112
    .line 113
    invoke-interface {p2, v7}, Lhi0;->K(Lgi0;)Lfi0;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Ltu1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .line 119
    move-object v8, p0

    .line 120
    move-object v7, p1

    .line 121
    move-object p1, p2

    .line 122
    move-object p0, v3

    .line 123
    :cond_5
    :goto_2
    :try_start_4
    sget-object p2, Lwr3;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 124
    .line 125
    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-interface {p1}, Ltu1;->b()Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    invoke-interface {p1}, Ltu1;->N()Ljava/util/concurrent/CancellationException;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    throw p0

    .line 143
    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    .line 144
    .line 145
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-nez v9, :cond_b

    .line 150
    .line 151
    :cond_8
    sget-object p0, Ljn2;->a:Lsg0;

    .line 152
    .line 153
    if-ne p2, p0, :cond_9

    .line 154
    .line 155
    move-object p0, v3

    .line 156
    goto :goto_4

    .line 157
    :cond_9
    move-object p0, p2

    .line 158
    :goto_4
    iput-object v8, v0, Lvr3;->q:Lwr3;

    .line 159
    .line 160
    iput-object v7, v0, Lvr3;->r:Lb81;

    .line 161
    .line 162
    iput-object v1, v0, Lvr3;->s:Lyr3;

    .line 163
    .line 164
    iput-object p1, v0, Lvr3;->t:Ltu1;

    .line 165
    .line 166
    iput-object p2, v0, Lvr3;->u:Ljava/lang/Object;

    .line 167
    .line 168
    iput v5, v0, Lvr3;->x:I

    .line 169
    .line 170
    invoke-interface {v7, p0, v0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-ne p0, v2, :cond_a

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_a
    move-object p0, p2

    .line 178
    :cond_b
    :goto_5
    iget-object p2, v1, Lyr3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 179
    .line 180
    sget-object v9, Lxr3;->a:Lsg0;

    .line 181
    .line 182
    invoke-virtual {p2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    sget-object v10, Lxr3;->b:Lsg0;

    .line 190
    .line 191
    if-ne p2, v10, :cond_c

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_c
    iput-object v8, v0, Lvr3;->q:Lwr3;

    .line 195
    .line 196
    iput-object v7, v0, Lvr3;->r:Lb81;

    .line 197
    .line 198
    iput-object v1, v0, Lvr3;->s:Lyr3;

    .line 199
    .line 200
    iput-object p1, v0, Lvr3;->t:Ltu1;

    .line 201
    .line 202
    iput-object p0, v0, Lvr3;->u:Ljava/lang/Object;

    .line 203
    .line 204
    iput v4, v0, Lvr3;->x:I

    .line 205
    .line 206
    sget-object p2, Lt64;->a:Lt64;

    .line 207
    .line 208
    new-instance v10, Lo20;

    .line 209
    .line 210
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-direct {v10, v6, v11}, Lo20;-><init>(ILdh0;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10}, Lo20;->x()V

    .line 218
    .line 219
    .line 220
    iget-object v11, v1, Lyr3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 221
    .line 222
    :cond_d
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-eqz v12, :cond_e

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_e
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    if-eq v12, v9, :cond_d

    .line 234
    .line 235
    invoke-virtual {v10, p2}, Lo20;->g(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :goto_6
    invoke-virtual {v10}, Lo20;->v()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    if-ne v9, v2, :cond_f

    .line 243
    .line 244
    move-object p2, v9

    .line 245
    :cond_f
    if-ne p2, v2, :cond_5

    .line 246
    .line 247
    :goto_7
    return-object v2

    .line 248
    :goto_8
    invoke-virtual {v8, v1}, Ld2;->f(Le2;)V

    .line 249
    .line 250
    .line 251
    throw p0
.end method

.method public final d()Le2;
    .locals 0

    .line 1
    new-instance p0, Lyr3;

    .line 2
    .line 3
    invoke-direct {p0}, Lyr3;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final e()[Le2;
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Lyr3;

    .line 3
    .line 4
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lwr3;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lsa5;->a:Lsun/misc/Unsafe;

    .line 7
    .line 8
    sget-wide v1, Lwr3;->t:J

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Ljn2;->a:Lsg0;

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    :cond_0
    return-object p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Ljn2;->a:Lsg0;

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lwr3;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {v1, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return v1

    .line 31
    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lwr3;->r:I

    .line 35
    .line 36
    and-int/lit8 p2, p1, 0x1

    .line 37
    .line 38
    if-nez p2, :cond_b

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iput p1, p0, Lwr3;->r:I

    .line 42
    .line 43
    iget-object p2, p0, Ld2;->n:[Le2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    :goto_0
    check-cast p2, [Lyr3;

    .line 47
    .line 48
    if-eqz p2, :cond_9

    .line 49
    .line 50
    array-length v0, p2

    .line 51
    move v3, v2

    .line 52
    :goto_1
    if-ge v3, v0, :cond_9

    .line 53
    .line 54
    aget-object v4, p2, v3

    .line 55
    .line 56
    if-eqz v4, :cond_8

    .line 57
    .line 58
    iget-object v4, v4, Lyr3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    sget-object v6, Lxr3;->b:Lsg0;

    .line 68
    .line 69
    if-ne v5, v6, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    sget-object v7, Lxr3;->a:Lsg0;

    .line 73
    .line 74
    if-ne v5, v7, :cond_6

    .line 75
    .line 76
    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    if-eq v7, v5, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    check-cast v5, Lo20;

    .line 97
    .line 98
    sget-object v4, Lt64;->a:Lt64;

    .line 99
    .line 100
    invoke-virtual {v5, v4}, Lo20;->g(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eq v6, v5, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_9
    monitor-enter p0

    .line 115
    :try_start_3
    iget p2, p0, Lwr3;->r:I

    .line 116
    .line 117
    if-ne p2, p1, :cond_a

    .line 118
    .line 119
    add-int/2addr p1, v1

    .line 120
    iput p1, p0, Lwr3;->r:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return v1

    .line 124
    :catchall_1
    move-exception p1

    .line 125
    goto :goto_4

    .line 126
    :cond_a
    :try_start_4
    iget-object p1, p0, Ld2;->n:[Le2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .line 128
    monitor-exit p0

    .line 129
    move v8, p2

    .line 130
    move-object p2, p1

    .line 131
    move p1, v8

    .line 132
    goto :goto_0

    .line 133
    :goto_4
    monitor-exit p0

    .line 134
    throw p1

    .line 135
    :cond_b
    add-int/lit8 p1, p1, 0x2

    .line 136
    .line 137
    :try_start_5
    iput p1, p0, Lwr3;->r:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    monitor-exit p0

    .line 140
    return v1

    .line 141
    :goto_5
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwr3;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lt64;->a:Lt64;

    .line 5
    .line 6
    return-object p0
.end method
