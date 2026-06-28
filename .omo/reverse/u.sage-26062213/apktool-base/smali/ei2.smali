.class public final Lei2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lpr3;

.field public final b:Lwr3;

.field public final c:Lwr3;

.field public d:Z

.field public final e:Lb23;

.field public final f:Lb23;

.field public final g:Llk2;

.field public final synthetic h:Lxi2;


# direct methods
.method public constructor <init>(Lxi2;Llk2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lei2;->h:Lxi2;

    .line 8
    .line 9
    new-instance p1, Lpr3;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p1, v0}, Lpr3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lei2;->a:Lpr3;

    .line 16
    .line 17
    sget-object p1, Lg01;->n:Lg01;

    .line 18
    .line 19
    invoke-static {p1}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lei2;->b:Lwr3;

    .line 24
    .line 25
    sget-object v0, Lk01;->n:Lk01;

    .line 26
    .line 27
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lei2;->c:Lwr3;

    .line 32
    .line 33
    new-instance v1, Lb23;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lb23;-><init>(Lwr3;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lei2;->e:Lb23;

    .line 39
    .line 40
    new-instance p1, Lb23;

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lb23;-><init>(Lwr3;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lei2;->f:Lb23;

    .line 46
    .line 47
    iput-object p2, p0, Lei2;->g:Llk2;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lyh2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lei2;->a:Lpr3;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lei2;->b:Lwr3;

    .line 8
    .line 9
    invoke-virtual {p0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-static {v1, p1}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    .line 27
    throw p0
.end method

.method public final b(Lqi2;Landroid/os/Bundle;)Lyh2;
    .locals 2

    .line 1
    iget-object p0, p0, Lei2;->h:Lxi2;

    .line 2
    .line 3
    iget-object p0, p0, Lxi2;->b:Lii2;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lii2;->a:Lxi2;

    .line 9
    .line 10
    iget-object v0, v0, Lxi2;->c:Ldi2;

    .line 11
    .line 12
    invoke-virtual {p0}, Lii2;->j()Lg22;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Lii2;->p:Lji2;

    .line 17
    .line 18
    invoke-static {v0, p1, p2, v1, p0}, Lb21;->v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final c(Lyh2;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lei2;->h:Lxi2;

    .line 5
    .line 6
    iget-object v0, v0, Lxi2;->b:Lii2;

    .line 7
    .line 8
    iget-object v1, v0, Lii2;->i:Lwr3;

    .line 9
    .line 10
    iget-object v2, p1, Lyh2;->s:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lii2;->x:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Lei2;->c:Lwr3;

    .line 25
    .line 26
    invoke-virtual {v5}, Lwr3;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8}, Loa2;->a0(I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 46
    .line 47
    .line 48
    check-cast v6, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const/4 v8, 0x0

    .line 55
    move v9, v8

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_2

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const/4 v11, 0x1

    .line 67
    if-nez v9, :cond_1

    .line 68
    .line 69
    invoke-static {v10, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_1

    .line 74
    .line 75
    move v9, v11

    .line 76
    move v11, v8

    .line 77
    :cond_1
    if-eqz v11, :cond_0

    .line 78
    .line 79
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v5, v6, v7}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lii2;->f:Lvh;

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Lvh;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_8

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lii2;->u(Lyh2;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p1, Lyh2;->u:Lai2;

    .line 102
    .line 103
    iget-object p0, p0, Lai2;->j:Lr22;

    .line 104
    .line 105
    iget-object p0, p0, Lr22;->d:Lg22;

    .line 106
    .line 107
    sget-object v5, Lg22;->p:Lg22;

    .line 108
    .line 109
    invoke-virtual {p0, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-ltz p0, :cond_3

    .line 114
    .line 115
    sget-object p0, Lg22;->n:Lg22;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lyh2;->a(Lg22;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v3}, Lvh;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lyh2;

    .line 142
    .line 143
    iget-object p1, p1, Lyh2;->s:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p1, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    :goto_1
    if-nez v4, :cond_7

    .line 153
    .line 154
    iget-object p0, v0, Lii2;->p:Lji2;

    .line 155
    .line 156
    if-eqz p0, :cond_7

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lji2;->b:Ljava/util/LinkedHashMap;

    .line 162
    .line 163
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lbc4;

    .line 168
    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    invoke-virtual {p0}, Lbc4;->a()V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lii2;->v()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Lii2;->s()Ljava/util/ArrayList;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6, p0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_8
    iget-boolean p0, p0, Lei2;->d:Z

    .line 189
    .line 190
    if-nez p0, :cond_9

    .line 191
    .line 192
    invoke-virtual {v0}, Lii2;->v()V

    .line 193
    .line 194
    .line 195
    iget-object p0, v0, Lii2;->g:Lwr3;

    .line 196
    .line 197
    new-instance p1, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v6, p1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lii2;->s()Ljava/util/ArrayList;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v6, p0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_9
    return-void
.end method

.method public final d(Lyh2;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lei2;->h:Lxi2;

    .line 5
    .line 6
    iget-object v0, v0, Lxi2;->b:Lii2;

    .line 7
    .line 8
    new-instance v1, Lh4;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lh4;-><init>(Lei2;Lyh2;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lii2;->t:Lmk2;

    .line 17
    .line 18
    iget-object v3, p1, Lyh2;->o:Lqi2;

    .line 19
    .line 20
    iget-object v3, v3, Lqi2;->n:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, v0, Lii2;->x:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lei2;->g:Llk2;

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    iget-object p0, v0, Lii2;->w:Lgi2;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lgi2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lh4;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object p0, v0, Lii2;->f:Lvh;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lvh;->indexOf(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-gez p2, :cond_1

    .line 61
    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string p2, "Ignoring pop of "

    .line 65
    .line 66
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " as it was not found on the current back stack"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string p1, "NavController"

    .line 82
    .line 83
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    const/4 v2, 0x1

    .line 88
    add-int/2addr p2, v2

    .line 89
    iget v3, p0, Lvh;->p:I

    .line 90
    .line 91
    if-eq p2, v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lvh;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lyh2;

    .line 98
    .line 99
    iget-object p0, p0, Lyh2;->o:Lqi2;

    .line 100
    .line 101
    iget-object p0, p0, Lqi2;->o:Lgg;

    .line 102
    .line 103
    iget p0, p0, Lgg;->a:I

    .line 104
    .line 105
    const/4 p2, 0x0

    .line 106
    invoke-virtual {v0, p0, v2, p2}, Lii2;->o(IZZ)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-static {v0, p1}, Lii2;->r(Lii2;Lyh2;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lh4;->a()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object p0, v0, Lii2;->b:Lf92;

    .line 116
    .line 117
    invoke-virtual {p0}, Lf92;->a()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lii2;->b()Z

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    iget-object p0, v0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p0, Lei2;

    .line 134
    .line 135
    invoke-virtual {p0, p1, p2}, Lei2;->d(Lyh2;Z)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final e(Lyh2;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lei2;->c:Lwr3;

    .line 5
    .line 6
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    instance-of v2, v1, Ljava/util/Collection;

    .line 13
    .line 14
    iget-object v3, p0, Lei2;->e:Lb23;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lyh2;

    .line 43
    .line 44
    if-ne v2, p1, :cond_1

    .line 45
    .line 46
    iget-object v1, v3, Lb23;->n:Lwr3;

    .line 47
    .line 48
    invoke-virtual {v1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Iterable;

    .line 53
    .line 54
    instance-of v2, v1, Ljava/util/Collection;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    move-object v2, v1

    .line 59
    check-cast v2, Ljava/util/Collection;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lyh2;

    .line 83
    .line 84
    if-ne v2, p1, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    :goto_0
    return-void

    .line 88
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/util/Set;

    .line 93
    .line 94
    invoke-static {v1, p1}, Lis0;->P(Ljava/util/Set;Lyh2;)Ljava/util/LinkedHashSet;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v1, v3, Lb23;->n:Lwr3;

    .line 103
    .line 104
    iget-object v3, v3, Lb23;->n:Lwr3;

    .line 105
    .line 106
    invoke-virtual {v1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    move-object v5, v4

    .line 131
    check-cast v5, Lyh2;

    .line 132
    .line 133
    invoke-static {v5, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_6

    .line 138
    .line 139
    invoke-virtual {v3}, Lwr3;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v6, v5}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-virtual {v3}, Lwr3;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v6, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-ge v5, v6, :cond_6

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_7
    move-object v4, v2

    .line 163
    :goto_2
    check-cast v4, Lyh2;

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/util/Set;

    .line 172
    .line 173
    invoke-static {v1, v4}, Lis0;->P(Ljava/util/Set;Lyh2;)Ljava/util/LinkedHashSet;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v2, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_8
    invoke-virtual {p0, p1, p2}, Lei2;->d(Lyh2;Z)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final f(Lyh2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lei2;->h:Lxi2;

    .line 5
    .line 6
    iget-object v0, v0, Lxi2;->b:Lii2;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lii2;->t:Lmk2;

    .line 12
    .line 13
    iget-object v2, p1, Lyh2;->o:Lqi2;

    .line 14
    .line 15
    iget-object v2, v2, Lqi2;->n:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lei2;->g:Llk2;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lii2;->v:Lpe1;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lei2;->a(Lyh2;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v0, "Ignoring add of destination "

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lyh2;->o:Lqi2;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " outside of the call to navigate(). "

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "NavController"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object p0, v0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    check-cast p0, Lei2;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lei2;->f(Lyh2;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "NavigatorBackStack for "

    .line 84
    .line 85
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lyh2;->o:Lqi2;

    .line 89
    .line 90
    iget-object p1, p1, Lqi2;->n:Ljava/lang/String;

    .line 91
    .line 92
    const-string v0, " should already be created"

    .line 93
    .line 94
    invoke-static {p0, p1, v0}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lp61;->e(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
