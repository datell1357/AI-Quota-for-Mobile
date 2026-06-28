.class public final Lze2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lvs1;


# instance fields
.field public final a:Lhi0;

.field public final b:Ljava/io/File;

.field public final c:Lq30;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lhh2;

.field public final h:Lnv3;

.field public final i:Lnv3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lhi0;Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lze2;->a:Lhi0;

    .line 11
    .line 12
    iput-object p2, p0, Lze2;->b:Ljava/io/File;

    .line 13
    .line 14
    sget-object p1, Lgf2;->b:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v1, Lp;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    const/16 v0, 0x12

    .line 20
    .line 21
    invoke-direct {v1, p2, p1, v0}, Lp;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lq30;

    .line 25
    .line 26
    sget-object v4, Lvy;->n:Lvy;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    sget-object v2, Ld01;->n:Ld01;

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct/range {v0 .. v5}, Lq30;-><init>(Ljava/lang/Object;Lhi0;ILvy;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lze2;->c:Lq30;

    .line 36
    .line 37
    const-string p1, ".lock"

    .line 38
    .line 39
    iput-object p1, p0, Lze2;->d:Ljava/lang/String;

    .line 40
    .line 41
    const-string p1, ".version"

    .line 42
    .line 43
    iput-object p1, p0, Lze2;->e:Ljava/lang/String;

    .line 44
    .line 45
    const-string p1, "fcntl failed: EAGAIN"

    .line 46
    .line 47
    iput-object p1, p0, Lze2;->f:Ljava/lang/String;

    .line 48
    .line 49
    new-instance p1, Lhh2;

    .line 50
    .line 51
    invoke-direct {p1}, Lhh2;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lze2;->g:Lhh2;

    .line 55
    .line 56
    new-instance p1, Lue2;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p0, p2}, Lue2;-><init>(Lze2;I)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lnv3;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Lze2;->h:Lnv3;

    .line 68
    .line 69
    new-instance p1, Lue2;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-direct {p1, p0, p2}, Lue2;-><init>(Lze2;I)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lnv3;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lze2;->i:Lnv3;

    .line 81
    .line 82
    return-void
.end method

.method public static f(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "Unable to create parent directories of "

    .line 22
    .line 23
    invoke-static {p0, v0}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lpe1;Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lxe2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lxe2;

    .line 7
    .line 8
    iget v1, v0, Lxe2;->v:I

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
    iput v1, v0, Lxe2;->v:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lxe2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lxe2;-><init>(Lze2;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lxe2;->t:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lxe2;->v:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    sget-object v6, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v4, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lxe2;->s:Ljava/lang/AutoCloseable;

    .line 44
    .line 45
    check-cast p0, Ljava/nio/channels/FileLock;

    .line 46
    .line 47
    iget-object p1, v0, Lxe2;->r:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Ljava/io/Closeable;

    .line 50
    .line 51
    iget-object v0, v0, Lxe2;->q:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lfh2;

    .line 54
    .line 55
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :catchall_0
    move-exception p2

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v5

    .line 69
    :cond_2
    iget-object p0, v0, Lxe2;->s:Ljava/lang/AutoCloseable;

    .line 70
    .line 71
    move-object p1, p0

    .line 72
    check-cast p1, Ljava/io/Closeable;

    .line 73
    .line 74
    iget-object p0, v0, Lxe2;->r:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Lfh2;

    .line 77
    .line 78
    iget-object v1, v0, Lxe2;->q:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Lpe1;

    .line 81
    .line 82
    :try_start_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p2

    .line 87
    move-object v0, p0

    .line 88
    :goto_1
    move-object p0, v5

    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_3
    iget-object p1, v0, Lxe2;->r:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lfh2;

    .line 94
    .line 95
    iget-object v1, v0, Lxe2;->q:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Lpe1;

    .line 98
    .line 99
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object p2, p1

    .line 103
    move-object p1, v1

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Lxe2;->q:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object p2, p0, Lze2;->g:Lhh2;

    .line 111
    .line 112
    iput-object p2, v0, Lxe2;->r:Ljava/lang/Object;

    .line 113
    .line 114
    iput v4, v0, Lxe2;->v:I

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-ne v1, v6, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    :goto_2
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    .line 124
    .line 125
    iget-object p0, p0, Lze2;->h:Lnv3;

    .line 126
    .line 127
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 134
    .line 135
    .line 136
    :try_start_3
    iput-object p1, v0, Lxe2;->q:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object p2, v0, Lxe2;->r:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v1, v0, Lxe2;->s:Ljava/lang/AutoCloseable;

    .line 141
    .line 142
    iput v3, v0, Lxe2;->v:I

    .line 143
    .line 144
    invoke-static {v1, v0}, Lb21;->s(Ljava/io/FileOutputStream;Lfh0;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 148
    if-ne p0, v6, :cond_6

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    move-object v7, p2

    .line 152
    move-object p2, p0

    .line 153
    move-object p0, v7

    .line 154
    move-object v7, v1

    .line 155
    move-object v1, p1

    .line 156
    move-object p1, v7

    .line 157
    :goto_3
    :try_start_4
    check-cast p2, Ljava/nio/channels/FileLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    .line 159
    :try_start_5
    iput-object p0, v0, Lxe2;->q:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object p1, v0, Lxe2;->r:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object p2, v0, Lxe2;->s:Ljava/lang/AutoCloseable;

    .line 164
    .line 165
    iput v2, v0, Lxe2;->v:I

    .line 166
    .line 167
    invoke-interface {v1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 171
    if-ne v0, v6, :cond_7

    .line 172
    .line 173
    :goto_4
    return-object v6

    .line 174
    :cond_7
    move-object v7, v0

    .line 175
    move-object v0, p0

    .line 176
    move-object p0, p2

    .line 177
    move-object p2, v7

    .line 178
    :goto_5
    if-eqz p0, :cond_8

    .line 179
    .line 180
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :catchall_2
    move-exception p0

    .line 185
    move-object p2, v0

    .line 186
    goto :goto_8

    .line 187
    :cond_8
    :goto_6
    :try_start_7
    invoke-static {p1, v5}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v5}, Lfh2;->b(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-object p2

    .line 194
    :catchall_3
    move-exception p0

    .line 195
    move-object p2, v0

    .line 196
    goto :goto_9

    .line 197
    :catchall_4
    move-exception v0

    .line 198
    move-object v7, v0

    .line 199
    move-object v0, p0

    .line 200
    move-object p0, p2

    .line 201
    move-object p2, v7

    .line 202
    goto :goto_7

    .line 203
    :catchall_5
    move-exception p0

    .line 204
    move-object v0, p2

    .line 205
    move-object p1, v1

    .line 206
    move-object p2, p0

    .line 207
    goto :goto_1

    .line 208
    :goto_7
    if-eqz p0, :cond_9

    .line 209
    .line 210
    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 211
    .line 212
    .line 213
    :cond_9
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 214
    :goto_8
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 215
    :catchall_6
    move-exception v0

    .line 216
    :try_start_a
    invoke-static {p1, p0}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 220
    :catchall_7
    move-exception p0

    .line 221
    :goto_9
    invoke-interface {p2, v5}, Lfh2;->b(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    throw p0
.end method

.method public final b(Lfh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lze2;->i:Lnv3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnv3;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lrl3;

    .line 14
    .line 15
    check-cast p0, Lql3;

    .line 16
    .line 17
    iget-object p1, p0, Lql3;->b:Landroidx/datastore/core/NativeSharedCounter;

    .line 18
    .line 19
    iget-wide v0, p0, Lql3;->c:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/core/NativeSharedCounter;->nativeGetCounterValue(J)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lwe2;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, p0, v1, v2}, Lwe2;-><init>(Lze2;Ldh0;I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lze2;->a:Lhi0;

    .line 39
    .line 40
    invoke-static {p0, v0, p1}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final c(Len0;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lze2;->i:Lnv3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnv3;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lrl3;

    .line 14
    .line 15
    check-cast p0, Lql3;

    .line 16
    .line 17
    iget-object p1, p0, Lql3;->b:Landroidx/datastore/core/NativeSharedCounter;

    .line 18
    .line 19
    iget-wide v0, p0, Lql3;->c:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/core/NativeSharedCounter;->nativeIncrementAndGetCounterValue(J)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    new-instance p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance v0, Lwe2;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v1, v2}, Lwe2;-><init>(Lze2;Ldh0;I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lze2;->a:Lhi0;

    .line 39
    .line 40
    invoke-static {p0, v0, p1}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final d()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lze2;->c:Lq30;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    instance-of v3, v0, Lye2;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lye2;

    .line 13
    .line 14
    iget v4, v3, Lye2;->w:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lye2;->w:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lye2;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lye2;-><init>(Lze2;Lfh0;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lye2;->u:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lye2;->w:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v6, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    iget-boolean v1, v3, Lye2;->t:Z

    .line 45
    .line 46
    iget-object v2, v3, Lye2;->s:Ljava/nio/channels/FileLock;

    .line 47
    .line 48
    iget-object v4, v3, Lye2;->r:Ljava/io/FileInputStream;

    .line 49
    .line 50
    iget-object v3, v3, Lye2;->q:Lhh2;

    .line 51
    .line 52
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_a

    .line 59
    .line 60
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v7

    .line 66
    :cond_2
    iget-boolean v1, v3, Lye2;->t:Z

    .line 67
    .line 68
    iget-object v2, v3, Lye2;->q:Lhh2;

    .line 69
    .line 70
    :try_start_1
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    goto/16 :goto_c

    .line 76
    .line 77
    :cond_3
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lze2;->g:Lhh2;

    .line 81
    .line 82
    invoke-virtual {v4}, Lhh2;->g()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    sget-object v9, Lri0;->n:Lri0;

    .line 87
    .line 88
    if-nez v8, :cond_6

    .line 89
    .line 90
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    .line 92
    iput-object v4, v3, Lye2;->q:Lhh2;

    .line 93
    .line 94
    iput-boolean v8, v3, Lye2;->t:Z

    .line 95
    .line 96
    iput v6, v3, Lye2;->w:I

    .line 97
    .line 98
    invoke-interface {v2, v0, v3}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    if-ne v0, v9, :cond_4

    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_4
    move-object v2, v4

    .line 107
    move v1, v8

    .line 108
    :goto_1
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-interface {v2, v7}, Lfh2;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    return-object v0

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    move-object v2, v4

    .line 116
    move v1, v8

    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_6
    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    .line 120
    .line 121
    iget-object v0, v1, Lze2;->h:Lnv3;

    .line 122
    .line 123
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/io/File;

    .line 128
    .line 129
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    const-wide v15, 0x7fffffffffffffffL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    const/16 v17, 0x1

    .line 143
    .line 144
    const-wide/16 v13, 0x0

    .line 145
    .line 146
    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    .line 147
    .line 148
    .line 149
    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 150
    move-object v1, v0

    .line 151
    goto :goto_4

    .line 152
    :catchall_3
    move-exception v0

    .line 153
    move-object v3, v4

    .line 154
    move-object v2, v7

    .line 155
    :goto_2
    move v1, v8

    .line 156
    move-object v4, v10

    .line 157
    goto/16 :goto_a

    .line 158
    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    if-eqz v12, :cond_7

    .line 165
    .line 166
    iget-object v1, v1, Lze2;->f:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v12, v1, v11}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-ne v1, v6, :cond_7

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_c

    .line 180
    .line 181
    const-string v12, "Resource deadlock would occur"

    .line 182
    .line 183
    invoke-static {v1, v12, v11}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 187
    if-ne v1, v6, :cond_c

    .line 188
    .line 189
    :goto_3
    move-object v1, v7

    .line 190
    :goto_4
    if-eqz v1, :cond_8

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_8
    move v6, v11

    .line 194
    :goto_5
    :try_start_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput-object v4, v3, Lye2;->q:Lhh2;

    .line 199
    .line 200
    iput-object v10, v3, Lye2;->r:Ljava/io/FileInputStream;

    .line 201
    .line 202
    iput-object v1, v3, Lye2;->s:Ljava/nio/channels/FileLock;

    .line 203
    .line 204
    iput-boolean v8, v3, Lye2;->t:Z

    .line 205
    .line 206
    iput v5, v3, Lye2;->w:I

    .line 207
    .line 208
    invoke-interface {v2, v0, v3}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 212
    if-ne v0, v9, :cond_9

    .line 213
    .line 214
    :goto_6
    return-object v9

    .line 215
    :cond_9
    move-object v2, v1

    .line 216
    move-object v3, v4

    .line 217
    move v1, v8

    .line 218
    move-object v4, v10

    .line 219
    :goto_7
    if-eqz v2, :cond_a

    .line 220
    .line 221
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :catchall_4
    move-exception v0

    .line 226
    move v2, v1

    .line 227
    move-object v1, v0

    .line 228
    goto :goto_b

    .line 229
    :cond_a
    :goto_8
    :try_start_8
    invoke-static {v4, v7}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 230
    .line 231
    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    invoke-interface {v3, v7}, Lfh2;->b(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_b
    return-object v0

    .line 238
    :catchall_5
    move-exception v0

    .line 239
    :goto_9
    move-object v2, v3

    .line 240
    goto :goto_c

    .line 241
    :catchall_6
    move-exception v0

    .line 242
    move-object v2, v1

    .line 243
    move-object v3, v4

    .line 244
    goto :goto_2

    .line 245
    :cond_c
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 246
    :goto_a
    if-eqz v2, :cond_d

    .line 247
    .line 248
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 249
    .line 250
    .line 251
    :cond_d
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 252
    :goto_b
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 253
    :catchall_7
    move-exception v0

    .line 254
    :try_start_c
    invoke-static {v4, v1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 258
    :catchall_8
    move-exception v0

    .line 259
    move v1, v2

    .line 260
    goto :goto_9

    .line 261
    :goto_c
    if-eqz v1, :cond_e

    .line 262
    .line 263
    invoke-interface {v2, v7}, Lfh2;->b(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_e
    throw v0
.end method
