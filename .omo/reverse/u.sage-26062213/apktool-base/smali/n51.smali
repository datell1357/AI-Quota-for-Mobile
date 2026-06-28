.class public final Ln51;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lr60;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Loi3;

.field public final c:Lvs1;

.field public final d:Lcc;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lhh2;


# direct methods
.method public constructor <init>(Ljava/io/File;Loi3;Lvs1;Lcc;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ln51;->a:Ljava/io/File;

    .line 11
    .line 12
    iput-object p2, p0, Ln51;->b:Loi3;

    .line 13
    .line 14
    iput-object p3, p0, Ln51;->c:Lvs1;

    .line 15
    .line 16
    iput-object p4, p0, Ln51;->d:Lcc;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ln51;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Lhh2;

    .line 27
    .line 28
    invoke-direct {p1}, Lhh2;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ln51;->f:Lhh2;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lsm0;Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Ll51;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ll51;

    .line 7
    .line 8
    iget v1, v0, Ll51;->u:I

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
    iput v1, v0, Ll51;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ll51;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ll51;-><init>(Ln51;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Ll51;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Ll51;->u:I

    .line 28
    .line 29
    iget-object v2, p0, Ln51;->f:Lhh2;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget-boolean p0, v0, Ll51;->q:Z

    .line 38
    .line 39
    iget-object p1, v0, Ll51;->r:Lj51;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Ln51;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_7

    .line 63
    .line 64
    invoke-virtual {v2}, Lhh2;->g()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    :try_start_1
    new-instance v1, Lj51;

    .line 69
    .line 70
    iget-object v5, p0, Ln51;->a:Ljava/io/File;

    .line 71
    .line 72
    iget-object p0, p0, Ln51;->b:Loi3;

    .line 73
    .line 74
    invoke-direct {v1, v5, p0}, Lj51;-><init>(Ljava/io/File;Loi3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iput-object v1, v0, Ll51;->r:Lj51;

    .line 82
    .line 83
    iput-boolean p2, v0, Ll51;->q:Z

    .line 84
    .line 85
    iput v3, v0, Ll51;->u:I

    .line 86
    .line 87
    invoke-virtual {p1, v1, p0, v0}, Lsm0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 91
    sget-object p1, Lri0;->n:Lri0;

    .line 92
    .line 93
    if-ne p0, p1, :cond_3

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_3
    move p1, p2

    .line 97
    move-object p2, p0

    .line 98
    move p0, p1

    .line 99
    move-object p1, v1

    .line 100
    :goto_1
    :try_start_3
    invoke-interface {p1}, Lr60;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .line 102
    .line 103
    move-object p1, v4

    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    :goto_2
    if-nez p1, :cond_5

    .line 107
    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Lhh2;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-object p2

    .line 114
    :cond_5
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 115
    :catchall_2
    move-exception p1

    .line 116
    move p2, p0

    .line 117
    goto :goto_5

    .line 118
    :catchall_3
    move-exception p0

    .line 119
    move p1, p2

    .line 120
    move-object p2, p0

    .line 121
    move p0, p1

    .line 122
    move-object p1, v1

    .line 123
    :goto_3
    :try_start_5
    invoke-interface {p1}, Lr60;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :catchall_4
    move-exception p1

    .line 128
    :try_start_6
    invoke-static {p2, p1}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 132
    :catchall_5
    move-exception p1

    .line 133
    :goto_5
    if-eqz p2, :cond_6

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Lhh2;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    throw p1

    .line 139
    :cond_7
    const-string p0, "StorageConnection has already been disposed."

    .line 140
    .line 141
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v4
.end method

.method public final b(Len0;Lfh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "Unable to rename "

    .line 2
    .line 3
    instance-of v1, p2, Lm51;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lm51;

    .line 9
    .line 10
    iget v2, v1, Lm51;->v:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lm51;->v:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lm51;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lm51;-><init>(Ln51;Lfh0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lm51;->t:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lm51;->v:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    iget-object v5, p0, Ln51;->a:Ljava/io/File;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    sget-object v7, Lri0;->n:Lri0;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p0, v1, Lm51;->s:Ls51;

    .line 45
    .line 46
    iget-object p1, v1, Lm51;->r:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Ljava/io/File;

    .line 49
    .line 50
    iget-object v1, v1, Lm51;->q:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lfh2;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :catchall_0
    move-exception p2

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :cond_2
    iget-object p1, v1, Lm51;->r:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lfh2;

    .line 71
    .line 72
    iget-object v2, v1, Lm51;->q:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Ldf1;

    .line 75
    .line 76
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p2, p1

    .line 80
    move-object p1, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Ln51;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_d

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    const-string p0, "Unable to create parent directories of "

    .line 114
    .line 115
    invoke-static {v5, p0}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v6

    .line 119
    :cond_5
    :goto_1
    iput-object p1, v1, Lm51;->q:Ljava/lang/Object;

    .line 120
    .line 121
    iget-object p2, p0, Ln51;->f:Lhh2;

    .line 122
    .line 123
    iput-object p2, v1, Lm51;->r:Ljava/lang/Object;

    .line 124
    .line 125
    iput v4, v1, Lm51;->v:I

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-ne v2, v7, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    :goto_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v8, ".tmp"

    .line 149
    .line 150
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 158
    .line 159
    .line 160
    :try_start_2
    new-instance v4, Ls51;

    .line 161
    .line 162
    iget-object p0, p0, Ln51;->b:Loi3;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-direct {v4, v2, p0}, Lj51;-><init>(Ljava/io/File;Loi3;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 168
    .line 169
    .line 170
    :try_start_3
    iput-object p2, v1, Lm51;->q:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v2, v1, Lm51;->r:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v4, v1, Lm51;->s:Ls51;

    .line 175
    .line 176
    iput v3, v1, Lm51;->v:I

    .line 177
    .line 178
    invoke-interface {p1, v4, v1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 182
    if-ne p0, v7, :cond_7

    .line 183
    .line 184
    :goto_3
    return-object v7

    .line 185
    :cond_7
    move-object v1, p2

    .line 186
    move-object p1, v2

    .line 187
    move-object p0, v4

    .line 188
    :goto_4
    :try_start_4
    invoke-interface {p0}, Lr60;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    .line 190
    .line 191
    move-object p0, v6

    .line 192
    goto :goto_5

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    :goto_5
    if-nez p0, :cond_b

    .line 195
    .line 196
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_a

    .line 201
    .line 202
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    const/16 p2, 0x1a

    .line 205
    .line 206
    if-lt p0, p2, :cond_8

    .line 207
    .line 208
    invoke-static {p1, v5}, Lsf;->i(Ljava/io/File;Ljava/io/File;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    goto :goto_6

    .line 213
    :cond_8
    invoke-virtual {p1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    :goto_6
    if-eqz p0, :cond_9

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_9
    new-instance p0, Ljava/io/IOException;

    .line 221
    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, " to "

    .line 231
    .line 232
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 239
    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 251
    :catchall_2
    move-exception p0

    .line 252
    move-object p2, v1

    .line 253
    goto :goto_b

    .line 254
    :catch_0
    move-exception p0

    .line 255
    move-object v2, p1

    .line 256
    move-object p2, v1

    .line 257
    goto :goto_a

    .line 258
    :cond_a
    :goto_7
    invoke-interface {v1, v6}, Lfh2;->b(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    sget-object p0, Lt64;->a:Lt64;

    .line 262
    .line 263
    return-object p0

    .line 264
    :cond_b
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 265
    :catchall_3
    move-exception p0

    .line 266
    move-object v1, p2

    .line 267
    move-object p1, v2

    .line 268
    move-object p2, p0

    .line 269
    move-object p0, v4

    .line 270
    :goto_8
    :try_start_7
    invoke-interface {p0}, Lr60;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 271
    .line 272
    .line 273
    goto :goto_9

    .line 274
    :catchall_4
    move-exception p0

    .line 275
    :try_start_8
    invoke-static {p2, p0}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    :goto_9
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 279
    :catchall_5
    move-exception p0

    .line 280
    goto :goto_b

    .line 281
    :catch_1
    move-exception p0

    .line 282
    :goto_a
    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_c

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 289
    .line 290
    .line 291
    :cond_c
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 292
    :goto_b
    invoke-interface {p2, v6}, Lfh2;->b(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    throw p0

    .line 296
    :cond_d
    const-string p0, "StorageConnection has already been disposed."

    .line 297
    .line 298
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object v6
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln51;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Ln51;->d:Lcc;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcc;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
