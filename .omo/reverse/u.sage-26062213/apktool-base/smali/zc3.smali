.class public final Lzc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzb4;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lyb4;

.field public final c:Landroid/os/Bundle;

.field public final d:Lh22;

.field public final e:Luc3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lyb4;

    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1}, Lyb4;-><init>(Landroid/app/Application;)V

    .line 51
    iput-object v0, p0, Lzc3;->b:Lyb4;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lyc3;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lyc3;->getSavedStateRegistry()Luc3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lzc3;->e:Luc3;

    .line 9
    .line 10
    invoke-interface {p2}, Lp22;->getLifecycle()Lh22;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lzc3;->d:Lh22;

    .line 15
    .line 16
    iput-object p3, p0, Lzc3;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Lzc3;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p2, Lyb4;->c:Lyb4;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Lyb4;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lyb4;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Lyb4;->c:Lyb4;

    .line 32
    .line 33
    :cond_0
    sget-object p1, Lyb4;->c:Lyb4;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lyb4;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Lyb4;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Lzc3;->b:Lyb4;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lvb4;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lzc3;->d(Ljava/lang/String;Ljava/lang/Class;)Lvb4;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 13
    .line 14
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final b(Ljava/lang/Class;Lof2;)Lvb4;
    .locals 4

    .line 1
    sget-object v0, Lwu4;->q:Lls3;

    .line 2
    .line 3
    iget-object v1, p2, Lvk0;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    sget-object v3, Lpc3;->a:Lb21;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    sget-object v3, Lpc3;->b:Lqz0;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    sget-object v0, Lyb4;->d:Lls3;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/app/Application;

    .line 37
    .line 38
    const-class v1, Ldd;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    sget-object v2, Lad3;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {p1, v2}, Lad3;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v2, Lad3;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {p1, v2}, Lad3;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    if-nez v2, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lzc3;->b:Lyb4;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lyb4;->b(Ljava/lang/Class;Lof2;)Lvb4;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {p2}, Lpc3;->a(Lvk0;)Lmc3;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p1, v2, p0}, Lad3;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lvb4;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    invoke-static {p2}, Lpc3;->a(Lvk0;)Lmc3;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p1, v2, p0}, Lad3;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lvb4;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_3
    iget-object p2, p0, Lzc3;->d:Lh22;

    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v0, p1}, Lzc3;->d(Ljava/lang/String;Ljava/lang/Class;)Lvb4;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_4
    const-string p0, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 110
    .line 111
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_5
    const-string p0, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 116
    .line 117
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v2
.end method

.method public final c(Li50;Lof2;)Lvb4;
    .locals 0

    .line 1
    invoke-static {p1}, Lon4;->x(Li50;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lzc3;->b(Ljava/lang/Class;Lof2;)Lvb4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Lvb4;
    .locals 9

    .line 1
    iget-object v0, p0, Lzc3;->d:Lh22;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    const-class v1, Ldd;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lzc3;->a:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Lad3;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p2, v2}, Lad3;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lad3;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p2, v2}, Lad3;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lzc3;->a:Landroid/app/Application;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lzc3;->b:Lyb4;

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lyb4;->a(Ljava/lang/Class;)Lvb4;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lac4;->a:Lac4;

    .line 44
    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    new-instance p0, Lac4;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object p0, Lac4;->a:Lac4;

    .line 53
    .line 54
    :cond_2
    sget-object p0, Lac4;->a:Lac4;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lht4;->n(Ljava/lang/Class;)Lvb4;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3
    iget-object v3, p0, Lzc3;->e:Luc3;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lzc3;->c:Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Luc3;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object v4, v5

    .line 79
    :goto_1
    if-nez v4, :cond_5

    .line 80
    .line 81
    new-instance v4, Lmc3;

    .line 82
    .line 83
    invoke-direct {v4}, Lmc3;-><init>()V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const-class v5, Lmc3;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/os/BaseBundle;->size()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    new-instance v6, Lca2;

    .line 104
    .line 105
    invoke-direct {v6, v5}, Lca2;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_6

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v6, v7, v8}, Lca2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    invoke-virtual {v6}, Lca2;->b()Lca2;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    new-instance v5, Lmc3;

    .line 144
    .line 145
    invoke-direct {v5, v4}, Lmc3;-><init>(Lca2;)V

    .line 146
    .line 147
    .line 148
    move-object v4, v5

    .line 149
    :goto_3
    new-instance v5, Lnc3;

    .line 150
    .line 151
    invoke-direct {v5, p1, v4}, Lnc3;-><init>(Ljava/lang/String;Lmc3;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v0, v3}, Lnc3;->b(Lh22;Luc3;)V

    .line 155
    .line 156
    .line 157
    move-object p1, v0

    .line 158
    check-cast p1, Lr22;

    .line 159
    .line 160
    iget-object p1, p1, Lr22;->d:Lg22;

    .line 161
    .line 162
    sget-object v6, Lg22;->o:Lg22;

    .line 163
    .line 164
    if-eq p1, v6, :cond_8

    .line 165
    .line 166
    sget-object v6, Lg22;->q:Lg22;

    .line 167
    .line 168
    invoke-virtual {p1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-ltz p1, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    new-instance p1, Lqp0;

    .line 176
    .line 177
    invoke-direct {p1, v0, v3}, Lqp0;-><init>(Lh22;Luc3;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1}, Lh22;->a(Lo22;)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    :goto_4
    invoke-virtual {v3}, Luc3;->d()V

    .line 185
    .line 186
    .line 187
    :goto_5
    if-eqz v1, :cond_9

    .line 188
    .line 189
    iget-object p0, p0, Lzc3;->a:Landroid/app/Application;

    .line 190
    .line 191
    if-eqz p0, :cond_9

    .line 192
    .line 193
    filled-new-array {p0, v4}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p2, v2, p0}, Lad3;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lvb4;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {p2, v2, p0}, Lad3;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lvb4;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    :goto_6
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object p2, p0, Lvb4;->a:Lwb4;

    .line 216
    .line 217
    if-eqz p2, :cond_b

    .line 218
    .line 219
    iget-boolean v0, p2, Lwb4;->d:Z

    .line 220
    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    invoke-static {v5}, Lwb4;->a(Ljava/lang/AutoCloseable;)V

    .line 224
    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_a
    iget-object v0, p2, Lwb4;->a:Lls3;

    .line 228
    .line 229
    monitor-enter v0

    .line 230
    :try_start_0
    iget-object p2, p2, Lwb4;->b:Ljava/util/LinkedHashMap;

    .line 231
    .line 232
    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .line 238
    monitor-exit v0

    .line 239
    invoke-static {p1}, Lwb4;->a(Ljava/lang/AutoCloseable;)V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :catchall_0
    move-exception p0

    .line 244
    monitor-exit v0

    .line 245
    throw p0

    .line 246
    :cond_b
    return-object p0

    .line 247
    :cond_c
    const-string p0, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 248
    .line 249
    invoke-static {p0}, Lp61;->s(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/4 p0, 0x0

    .line 253
    return-object p0
.end method
