.class public final Lt10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lio2;


# direct methods
.method public synthetic constructor <init>(Lio2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt10;->a:Lio2;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lio2;Lsl2;Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Ls10;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Ls10;

    .line 7
    .line 8
    iget v1, v0, Ls10;->t:I

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
    iput v1, v0, Ls10;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ls10;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Ls10;->s:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lri0;->n:Lri0;

    .line 28
    .line 29
    iget v2, v0, Ls10;->t:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Ls10;->q:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/io/Closeable;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v6

    .line 61
    :cond_2
    iget-object p0, v0, Ls10;->q:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Ldf1;

    .line 64
    .line 65
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object p0, v0, Ls10;->r:Lio2;

    .line 70
    .line 71
    iget-object p1, v0, Ls10;->q:Ljava/lang/Object;

    .line 72
    .line 73
    move-object p2, p1

    .line 74
    check-cast p2, Ldf1;

    .line 75
    .line 76
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, v0, Ls10;->q:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p0, v0, Ls10;->r:Lio2;

    .line 86
    .line 87
    iput v5, v0, Ls10;->t:I

    .line 88
    .line 89
    invoke-static {p1, v0}, Lfl4;->h(Lsl2;Lfh0;)Lk63;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-ne p3, v1, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    :goto_1
    check-cast p3, Lk63;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance p1, Lh23;

    .line 105
    .line 106
    invoke-direct {p1, p0, p3}, Lh23;-><init>(Lio2;Lk63;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, v0, Ls10;->q:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v6, v0, Ls10;->r:Lio2;

    .line 112
    .line 113
    iput v4, v0, Ls10;->t:I

    .line 114
    .line 115
    new-instance p3, Lo20;

    .line 116
    .line 117
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-direct {p3, v5, v2}, Lo20;-><init>(ILdh0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Lo20;->x()V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lly;

    .line 128
    .line 129
    invoke-direct {v2, v5, p1}, Lly;-><init>(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v2}, Lo20;->z(Lpe1;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Ldh1;

    .line 136
    .line 137
    invoke-direct {v2, p3}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v4, p1, Lh23;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    invoke-virtual {v4, v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_8

    .line 148
    .line 149
    sget-object v4, Liv2;->a:Liv2;

    .line 150
    .line 151
    sget-object v4, Liv2;->a:Liv2;

    .line 152
    .line 153
    invoke-virtual {v4}, Liv2;->g()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iput-object v4, p1, Lh23;->s:Ljava/lang/Object;

    .line 158
    .line 159
    iget-object p0, p0, Lio2;->a:Lqd1;

    .line 160
    .line 161
    new-instance v4, Le23;

    .line 162
    .line 163
    invoke-direct {v4, p1, v2}, Le23;-><init>(Lh23;Ldh1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    const/4 p1, 0x6

    .line 170
    invoke-static {p0, v4, v6, p1}, Lqd1;->F(Lqd1;Le23;Le23;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Lo20;->v()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    if-ne p3, v1, :cond_6

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    move-object p0, p2

    .line 181
    :goto_2
    move-object p1, p3

    .line 182
    check-cast p1, Ljava/io/Closeable;

    .line 183
    .line 184
    :try_start_1
    move-object p2, p1

    .line 185
    check-cast p2, Lw73;

    .line 186
    .line 187
    invoke-static {p2}, Lfl4;->g(Lw73;)Lvl2;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iput-object p1, v0, Ls10;->q:Ljava/lang/Object;

    .line 192
    .line 193
    iput v3, v0, Ls10;->t:I

    .line 194
    .line 195
    invoke-interface {p0, p2, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    if-ne p3, v1, :cond_7

    .line 200
    .line 201
    :goto_3
    return-object v1

    .line 202
    :cond_7
    move-object p0, p1

    .line 203
    :goto_4
    invoke-static {p0, v6}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    return-object p3

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    move-object v8, p1

    .line 209
    move-object p1, p0

    .line 210
    move-object p0, v8

    .line 211
    :goto_5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    :catchall_2
    move-exception p2

    .line 213
    invoke-static {p0, p1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw p2

    .line 217
    :cond_8
    const-string p0, "Already Executed"

    .line 218
    .line 219
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object v6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lt10;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lt10;

    .line 8
    .line 9
    iget-object p1, p1, Lt10;->a:Lio2;

    .line 10
    .line 11
    iget-object p0, p0, Lt10;->a:Lio2;

    .line 12
    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lt10;->a:Lio2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CallFactoryNetworkClient(callFactory="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lt10;->a:Lio2;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
