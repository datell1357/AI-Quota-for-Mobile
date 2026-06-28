.class public final Lax2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lql1;
.implements Ljava/io/Closeable;


# instance fields
.field public final n:Lorg/apache/commons/logging/Log;

.field public final o:Lzw2;

.field public final p:Lj00;

.field public final q:Lbp0;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ly43;Ljava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 1
    new-instance v0, Lbp0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lbp0;-><init>(Ly43;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class p1, Lax2;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 16
    .line 17
    new-instance p1, Lzw2;

    .line 18
    .line 19
    invoke-direct {p1}, Lzw2;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lax2;->o:Lzw2;

    .line 23
    .line 24
    new-instance v1, Lj00;

    .line 25
    .line 26
    new-instance v2, Lxh1;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, v2, Lxh1;->n:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object p1, Lw92;->i:Lw92;

    .line 34
    .line 35
    iput-object p1, v2, Lxh1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v1, v2, p2}, Lj00;-><init>(Lxh1;Ljava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lax2;->p:Lj00;

    .line 41
    .line 42
    const/16 p1, 0x7d0

    .line 43
    .line 44
    iput p1, v1, Ld0;->l:I

    .line 45
    .line 46
    iput-object v0, p0, Lax2;->q:Lbp0;

    .line 47
    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lax2;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    return-void
.end method

.method public static j(Lk00;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[id: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lmw2;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "][route: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lmw2;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lmw2;->g:Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string v2, "[state: "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public final A(Ll00;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 10

    .line 1
    const-string v0, "Connection released: "

    .line 2
    .line 3
    const-string v1, "Connection released: "

    .line 4
    .line 5
    const-string v2, "Connection "

    .line 6
    .line 7
    const-string v3, "for "

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    invoke-static {p1}, Ll00;->j(Ll00;)Ll00;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    iget-object v5, v4, Ll00;->n:Lk00;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    iput-object v6, v4, Ll00;->n:Lk00;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    iget-object v4, v5, Lmw2;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Lv92;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    :try_start_1
    invoke-interface {v4}, Lsl1;->isOpen()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_4

    .line 37
    .line 38
    if-eqz p5, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    :goto_0
    iput-object p2, v5, Lmw2;->g:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v5, p3, p4, p5}, Lmw2;->d(JLjava/util/concurrent/TimeUnit;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 49
    .line 50
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    const-wide/16 v8, 0x0

    .line 57
    .line 58
    cmp-long p2, p3, v8

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide p3

    .line 71
    long-to-double p3, p3

    .line 72
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    div-double/2addr p3, v8

    .line 78
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p3, " seconds"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception p2

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const-string p2, "indefinitely"

    .line 94
    .line 95
    :goto_1
    iget-object p3, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 96
    .line 97
    new-instance p4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Lax2;->j(Lk00;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p5

    .line 106
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p5, " can be kept alive "

    .line 110
    .line 111
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-interface {v4, v7}, Lsl1;->n(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    .line 127
    :cond_4
    :try_start_2
    iget-object p2, p0, Lax2;->p:Lj00;

    .line 128
    .line 129
    invoke-interface {v4}, Lsl1;->isOpen()Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-eqz p3, :cond_5

    .line 134
    .line 135
    iget-boolean p3, v5, Lk00;->i:Z

    .line 136
    .line 137
    if-eqz p3, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move v6, v7

    .line 141
    :goto_2
    invoke-virtual {p2, v5, v6}, Ld0;->c(Lmw2;Z)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 145
    .line 146
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    iget-object p2, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 153
    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v5}, Lax2;->j(Lk00;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object p4, v5, Lmw2;->b:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p4, Lym1;

    .line 169
    .line 170
    invoke-virtual {p0, p4}, Lax2;->r(Lym1;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-interface {p2, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    monitor-exit p1

    .line 185
    return-void

    .line 186
    :goto_3
    iget-object p3, p0, Lax2;->p:Lj00;

    .line 187
    .line 188
    invoke-interface {v4}, Lsl1;->isOpen()Z

    .line 189
    .line 190
    .line 191
    move-result p4

    .line 192
    if-eqz p4, :cond_7

    .line 193
    .line 194
    iget-boolean p4, v5, Lk00;->i:Z

    .line 195
    .line 196
    if-eqz p4, :cond_7

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_7
    move v6, v7

    .line 200
    :goto_4
    invoke-virtual {p3, v5, v6}, Ld0;->c(Lmw2;Z)V

    .line 201
    .line 202
    .line 203
    iget-object p3, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 204
    .line 205
    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    if-eqz p3, :cond_8

    .line 210
    .line 211
    iget-object p3, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 212
    .line 213
    new-instance p4, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v5}, Lax2;->j(Lk00;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p5

    .line 222
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object p5, v5, Lmw2;->b:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p5, Lym1;

    .line 228
    .line 229
    invoke-virtual {p0, p5}, Lax2;->r(Lym1;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-interface {p3, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    throw p2

    .line 244
    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    throw p0
.end method

.method public final B(Lym1;Ljava/lang/Object;)Lxw2;
    .locals 5

    .line 1
    const-string v0, "HTTP route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Connection request: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "[route: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "]"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const-string v4, "[state: "

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lax2;->r(Lym1;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lax2;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    xor-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    const-string v1, "Connection pool shut down"

    .line 81
    .line 82
    invoke-static {v1, v0}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lax2;->p:Lj00;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-boolean v2, v0, Ld0;->i:Z

    .line 91
    .line 92
    xor-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    invoke-static {v1, v2}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lc0;

    .line 98
    .line 99
    invoke-direct {v1, v0, p1, p2}, Lc0;-><init>(Ld0;Lym1;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Lxw2;

    .line 103
    .line 104
    invoke-direct {p2, p0, v1, p1}, Lxw2;-><init>(Lax2;Lc0;Lym1;)V

    .line 105
    .line 106
    .line 107
    return-object p2
.end method

.method public final F(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lax2;->p:Lj00;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Max per route value"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iput p1, p0, Ld0;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final K(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lax2;->p:Lj00;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Max value"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lw80;->N(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iput p1, p0, Ld0;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    iget-object p0, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final b(Ll00;Lym1;ILrl1;)V
    .locals 8

    .line 1
    const-string v0, "HTTP route"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-static {p1}, Ll00;->j(Ll00;)Ll00;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Ll00;->n:Lk00;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, v0, Lmw2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Lv92;

    .line 19
    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p2}, Lym1;->e()Lem1;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lym1;->e()Lem1;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    move-object v3, p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p2, Lym1;->n:Lem1;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object v1, p0, Lax2;->q:Lbp0;

    .line 37
    .line 38
    iget-object p1, p2, Lym1;->o:Ljava/net/InetAddress;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v0, p1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 47
    .line 48
    .line 49
    move-object v4, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    move-object v4, p2

    .line 52
    :goto_2
    iget-object p0, p0, Lax2;->o:Lzw2;

    .line 53
    .line 54
    iget-object p0, p0, Lzw2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lmp3;

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    move-object p2, p0

    .line 66
    :goto_3
    if-nez p2, :cond_3

    .line 67
    .line 68
    sget-object p2, Lmp3;->n:Lmp3;

    .line 69
    .line 70
    :cond_3
    move-object v6, p2

    .line 71
    move v5, p3

    .line 72
    move-object v7, p4

    .line 73
    invoke-virtual/range {v1 .. v7}, Lbp0;->a(Lv92;Lem1;Ljava/net/InetSocketAddress;ILmp3;Lrl1;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    :try_start_1
    new-instance p0, Lje0;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lax2;->shutdown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lax2;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final r(Lym1;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[total available: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lax2;->p:Lj00;

    .line 9
    .line 10
    iget-object v2, v1, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v2, v1, Ld0;->e:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v1, Ld0;->g:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    iget-object v3, v1, Ld0;->f:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget v4, v1, Ld0;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    iget-object v1, v1, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lax2;->p:Lj00;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v1, "Route"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p0, p1}, Ld0;->b(Ljava/lang/Object;)Lb0;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v6, v5, Lb0;->b:Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget-object v7, v5, Lb0;->d:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 67
    .line 68
    .line 69
    iget-object v5, v5, Lb0;->c:Ljava/util/LinkedList;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    iget-object v7, p0, Ld0;->h:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget p0, p0, Ld0;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, "; route allocated: "

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    add-int/2addr v6, v5

    .line 104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " of "

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p0, "; total allocated: "

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    add-int/2addr v2, v3

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p0, "]"

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    iget-object p1, v1, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final shutdown()V
    .locals 5

    .line 1
    iget-object v0, p0, Lax2;->p:Lj00;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lax2;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 14
    .line 15
    const-string v2, "Connection manager is shutting down"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v1, Lyw2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lyw2;-><init>(Lax2;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Ld0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object v3, v0, Ld0;->e:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lmw2;

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Lyw2;->a(Lmw2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ld0;->d()V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 64
    .line 65
    .line 66
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :goto_2
    iget-object v1, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 68
    .line 69
    const-string v2, "I/O exception shutting down connection manager"

    .line 70
    .line 71
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    iget-object p0, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 75
    .line 76
    const-string v0, "Connection manager shut down"

    .line 77
    .line 78
    invoke-interface {p0, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public final z(Lc0;J)Ll00;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string v1, "Connection leased: "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, p2, p3, v0}, Lc0;->b(JLjava/util/concurrent/TimeUnit;)Lmw2;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lk00;

    .line 10
    .line 11
    iget-object p1, p1, Lc0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p2, Lmw2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    const-string p3, "Pool entry with no connection"

    .line 27
    .line 28
    invoke-static {p3, p1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lax2;->n:Lorg/apache/commons/logging/Log;

    .line 40
    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lax2;->j(Lk00;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p2, Lmw2;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lym1;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lax2;->r(Lym1;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance p0, Ll00;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Ll00;->n:Lk00;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_2
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    .line 80
    .line 81
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 82
    .line 83
    const-string p2, "Operation cancelled"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :catch_0
    new-instance p0, Lge0;

    .line 93
    .line 94
    const-string p1, "Timeout waiting for connection from pool"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method
