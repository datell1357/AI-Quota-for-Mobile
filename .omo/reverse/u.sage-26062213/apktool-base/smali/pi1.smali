.class public final Lpi1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lgw4;

.field public final d:Liv1;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Lyb1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lqi1;->q:Lqi1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lpi1;->a:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lpi1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    iget-object v1, v0, Lqi1;->a:Lc31;

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v2, v0, Lqi1;->b:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, v0, Lqi1;->g:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lpi1;->f:Z

    .line 32
    .line 33
    iget-object v1, v0, Lqi1;->h:Lyb1;

    .line 34
    .line 35
    iput-object v1, p0, Lpi1;->g:Lyb1;

    .line 36
    .line 37
    iget-object v1, v0, Lqi1;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v1}, Lqi1;->a(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lqi1;->d:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v1}, Lqi1;->a(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lqi1;->i:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-static {v0}, Lqi1;->a(Ljava/util/AbstractCollection;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lqi1;->o:Lgw4;

    .line 53
    .line 54
    iput-object v0, p0, Lpi1;->c:Lgw4;

    .line 55
    .line 56
    sget-object v0, Lqi1;->p:Liv1;

    .line 57
    .line 58
    iput-object v0, p0, Lpi1;->d:Liv1;

    .line 59
    .line 60
    sget-object v0, Lqi1;->r:Ljava/util/List;

    .line 61
    .line 62
    iput-object v0, p0, Lpi1;->e:Ljava/util/List;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Lq44;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lww1;

    .line 16
    .line 17
    invoke-direct {p1, v1}, Lww1;-><init>(Ljava/io/Reader;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, p1, Lww1;->B:I

    .line 22
    .line 23
    const-string v2, "AssertionError (GSON 2.14.0): "

    .line 24
    .line 25
    const-string v3, "Type adapter \'"

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    iput v4, p1, Lww1;->B:I

    .line 29
    .line 30
    const/4 v5, 0x5

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lww1;->s0()I

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lpi1;->b(Lq44;)Lg34;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v0, v0, Lq44;->a:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lg34;->b(Lww1;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v0}, Lkt4;->j0(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v7, Ljava/lang/ClassCastException;

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p0, "\' returned wrong type; requested "

    .line 69
    .line 70
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, " but got instance of "

    .line 77
    .line 78
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, "\nVerify that the adapter was registered for the correct type."

    .line 89
    .line 90
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v7, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v7
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_9

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :catch_1
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :catch_2
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :catch_3
    move-exception p0

    .line 110
    goto :goto_4

    .line 111
    :cond_2
    :goto_0
    iput v1, p1, Lww1;->B:I

    .line 112
    .line 113
    move-object p2, v6

    .line 114
    goto :goto_5

    .line 115
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p2, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw p2

    .line 137
    :goto_2
    new-instance p2, Lfw1;

    .line 138
    .line 139
    invoke-direct {p2, p0, v5}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 140
    .line 141
    .line 142
    throw p2

    .line 143
    :goto_3
    new-instance p2, Lfw1;

    .line 144
    .line 145
    invoke-direct {p2, p0, v5}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 146
    .line 147
    .line 148
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_4
    if-eqz v4, :cond_5

    .line 150
    .line 151
    iput v1, p1, Lww1;->B:I

    .line 152
    .line 153
    :goto_5
    if-eqz p2, :cond_4

    .line 154
    .line 155
    :try_start_2
    invoke-virtual {p1}, Lww1;->s0()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    const/16 p1, 0xa

    .line 160
    .line 161
    if-ne p0, p1, :cond_3

    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_3
    new-instance p0, Lfw1;

    .line 165
    .line 166
    const-string p1, "JSON document was not fully consumed."

    .line 167
    .line 168
    invoke-direct {p0, p1, v5}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    throw p0
    :try_end_2
    .catch Lr92; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 172
    :catch_4
    move-exception p0

    .line 173
    goto :goto_6

    .line 174
    :catch_5
    move-exception p0

    .line 175
    goto :goto_7

    .line 176
    :goto_6
    new-instance p1, Lfw1;

    .line 177
    .line 178
    invoke-direct {p1, p0, v5}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :goto_7
    new-instance p1, Lfw1;

    .line 183
    .line 184
    invoke-direct {p1, p0, v5}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_4
    :goto_8
    return-object p2

    .line 189
    :cond_5
    :try_start_3
    new-instance p2, Lfw1;

    .line 190
    .line 191
    invoke-direct {p2, p0, v5}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 192
    .line 193
    .line 194
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :goto_9
    iput v1, p1, Lww1;->B:I

    .line 196
    .line 197
    throw p0
.end method

.method public final b(Lq44;)Lg34;
    .locals 9

    .line 1
    iget-object v0, p0, Lpi1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lg34;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v1, p0, Lpi1;->a:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Map;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lg34;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_2
    const/4 v3, 0x0

    .line 42
    :goto_0
    :try_start_0
    new-instance v4, Loi1;

    .line 43
    .line 44
    invoke-direct {v4}, Loi1;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lpi1;->e:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v7, v6

    .line 58
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_5

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lh34;

    .line 69
    .line 70
    invoke-interface {v7, p0, p1}, Lh34;->a(Lpi1;Lq44;)Lg34;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    iget-object p0, v4, Loi1;->a:Lg34;

    .line 77
    .line 78
    if-nez p0, :cond_4

    .line 79
    .line 80
    iput-object v7, v4, Loi1;->a:Lg34;

    .line 81
    .line 82
    invoke-interface {v2, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    .line 89
    .line 90
    const-string p1, "Delegate is already set"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 99
    .line 100
    .line 101
    :cond_6
    if-eqz v7, :cond_8

    .line 102
    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    return-object v7

    .line 109
    :cond_8
    const-string p0, "GSON (2.14.0) cannot handle "

    .line 110
    .line 111
    invoke-static {p1, p0}, Lp61;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v6

    .line 115
    :goto_2
    if-eqz v3, :cond_9

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 118
    .line 119
    .line 120
    :cond_9
    throw p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-boolean v3, p0, Lpi1;->f:Z

    .line 5
    .line 6
    iget-object v4, p0, Lpi1;->g:Lyb1;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance v5, Ls72;

    .line 16
    .line 17
    invoke-direct {v5, p1}, Ls72;-><init>(Ljava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    new-instance v6, Lbx1;

    .line 21
    .line 22
    invoke-direct {v6, v5}, Lbx1;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v4}, Lbx1;->R(Lyb1;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, v6, Lbx1;->v:Z

    .line 29
    .line 30
    invoke-virtual {v6, v2}, Lbx1;->V(I)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, v6, Lbx1;->x:Z

    .line 34
    .line 35
    invoke-virtual {p0, v6}, Lpi1;->d(Lbx1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Lfw1;

    .line 45
    .line 46
    invoke-direct {p1, p0, v0}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    :try_start_1
    new-instance v7, Ls72;

    .line 60
    .line 61
    invoke-direct {v7, v6}, Ls72;-><init>(Ljava/lang/StringBuilder;)V

    .line 62
    .line 63
    .line 64
    new-instance v8, Lbx1;

    .line 65
    .line 66
    invoke-direct {v8, v7}, Lbx1;-><init>(Ljava/io/Writer;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v4}, Lbx1;->R(Lyb1;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, v8, Lbx1;->v:Z

    .line 73
    .line 74
    invoke-virtual {v8, v2}, Lbx1;->V(I)V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, v8, Lbx1;->x:Z

    .line 78
    .line 79
    invoke-virtual {p0, p1, v5, v8}, Lpi1;->e(Ljava/lang/Object;Ljava/lang/Class;Lbx1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :catch_1
    move-exception p0

    .line 88
    new-instance p1, Lfw1;

    .line 89
    .line 90
    invoke-direct {p1, p0, v0}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final d(Lbx1;)V
    .locals 6

    .line 1
    sget-object v0, Llw1;->n:Llw1;

    .line 2
    .line 3
    const-string v1, "AssertionError (GSON 2.14.0): "

    .line 4
    .line 5
    iget v2, p1, Lbx1;->u:I

    .line 6
    .line 7
    iget-boolean v3, p1, Lbx1;->v:Z

    .line 8
    .line 9
    iget-boolean v4, p1, Lbx1;->x:Z

    .line 10
    .line 11
    iget-boolean p0, p0, Lpi1;->f:Z

    .line 12
    .line 13
    iput-boolean p0, p1, Lbx1;->v:Z

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    iput-boolean p0, p1, Lbx1;->x:Z

    .line 17
    .line 18
    const/4 p0, 0x2

    .line 19
    if-ne v2, p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    iput p0, p1, Lbx1;->u:I

    .line 23
    .line 24
    :cond_0
    :try_start_0
    sget-object p0, Ldw1;->a:Ldw1;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Ldw1;->e(Lbx1;Lyv1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lbx1;->V(I)V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, p1, Lbx1;->v:Z

    .line 36
    .line 37
    iput-boolean v4, p1, Lbx1;->x:Z

    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p0

    .line 66
    new-instance v0, Lfw1;

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    invoke-direct {v0, p0, v1}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 70
    .line 71
    .line 72
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    invoke-virtual {p1, v2}, Lbx1;->V(I)V

    .line 74
    .line 75
    .line 76
    iput-boolean v3, p1, Lbx1;->v:Z

    .line 77
    .line 78
    iput-boolean v4, p1, Lbx1;->x:Z

    .line 79
    .line 80
    throw p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Class;Lbx1;)V
    .locals 4

    .line 1
    const-string v0, "AssertionError (GSON 2.14.0): "

    .line 2
    .line 3
    new-instance v1, Lq44;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lpi1;->b(Lq44;)Lg34;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget v1, p3, Lbx1;->u:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput v2, p3, Lbx1;->u:I

    .line 19
    .line 20
    :cond_0
    iget-boolean v2, p3, Lbx1;->v:Z

    .line 21
    .line 22
    iget-boolean v3, p3, Lbx1;->x:Z

    .line 23
    .line 24
    iget-boolean p0, p0, Lpi1;->f:Z

    .line 25
    .line 26
    iput-boolean p0, p3, Lbx1;->v:Z

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    iput-boolean p0, p3, Lbx1;->x:Z

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lg34;->c(Lbx1;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v1}, Lbx1;->V(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v2, p3, Lbx1;->v:Z

    .line 38
    .line 39
    iput-boolean v3, p3, Lbx1;->x:Z

    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    new-instance p1, Lfw1;

    .line 69
    .line 70
    const/4 p2, 0x5

    .line 71
    invoke-direct {p1, p0, p2}, Lv00;-><init>(Ljava/lang/Throwable;I)V

    .line 72
    .line 73
    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    invoke-virtual {p3, v1}, Lbx1;->V(I)V

    .line 76
    .line 77
    .line 78
    iput-boolean v2, p3, Lbx1;->v:Z

    .line 79
    .line 80
    iput-boolean v3, p3, Lbx1;->x:Z

    .line 81
    .line 82
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:false,factories:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lpi1;->e:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",instanceCreators:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lpi1;->c:Lgw4;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "}"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
